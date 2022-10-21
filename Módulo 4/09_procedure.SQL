CREATE DATABASE mercadinho;
USE mercadinho;

CREATE TABLE produto (
	idProduto INT NOT NULL AUTO_INCREMENT,
	nomeProduto VARCHAR(45) NOT NULL,
	precoNormal DECIMAL(10,2) NOT NULL,
	precoDesconto DECIMAL(10,2) NULL,
	PRIMARY KEY (idProduto));

CREATE TABLE historicoProduto (
	id INT NOT NULL AUTO_INCREMENT,
	data DATETIME default NULL,
	idProduto INT default NULL,
	valorAnterior DECIMAL(10,2) default NULL,
	valorNovo DECIMAL(10,2) default NULL,
	PRIMARY KEY(id));

create table historicoEstoque (
	id INT NOT NULL AUTO_INCREMENT,
	data DATE NOT NULL,
    idProduto INT NOT NULL,
    nomeProduto VARCHAR(45) NOT NULL,
    estoqueAntigo FLOAT,
    estoqueAtual FLOAT,
    qtdAlteradaEstoque FLOAT,
	PRIMARY KEY (id));

ALTER TABLE historicoProduto
ADD FOREIGN KEY (idProduto) REFERENCES produto(idProduto);
ALTER TABLE historicoEstoque
ADD FOREIGN KEY (idProduto) REFERENCES produto(idProduto);

--> TRIGGERS <--

DELIMITER //
CREATE TRIGGER trDesconto BEFORE INSERT ON produto FOR EACH ROW
BEGIN
	SET NEW.precoDesconto = (NEW.precoNormal * 0.90); 
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trHistorico AFTER UPDATE ON produto FOR EACH ROW
BEGIN
	IF NEW.precoNormal <> OLD.precoNormal THEN
		INSERT INTO historicoProduto VALUES (NULL, NOW(), NEW.idProduto, OLD.precoNormal, NEW.precoNormal);
	END IF;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trEstoque AFTER UPDATE ON produto FOR EACH ROW
BEGIN
	 IF NEW.estoque > 0 THEN
        SET @diferencaEstoque = (NEW.estoque - OLD.estoque);
		INSERT INTO historicoEstoque VALUES (NULL, NOW(), NEW.idProduto, NEW.nomeProduto,OLD.estoque, NEW.estoque, @diferencaEstoque);
	END IF;
END //
DELIMITER ;

--> PROCEDURE <--

DELIMITER //
CREATE PROCEDURE compraDiaria (datacompra DATE)
BEGIN
	SELECT CONCAT (data,' Foram comprados: ', qtdAlteradaEstoque, ' ', nomeProduto) AS 'Histórico de Compras Diárias'
	FROM historicoestoque
	WHERE data = datacompra;
END //
DELIMITER ;

INSERT INTO produto (nomeProduto, precoNormal) VALUES
('Laranja', 3.50), ('Pêra', 7.80), ('Maçã', 5.00), ('Melância', 2.00);

--> Alterando registros na tabela <--

UPDATE produto SET precoNormal = 4.00 WHERE idProduto = 1;
UPDATE produto SET precoNormal = 9.00 WHERE idProduto = 2;
UPDATE produto SET precoNormal = 6.00 WHERE idProduto = 3;
UPDATE produto SET precoNormal = 3.00 WHERE idProduto = 4;

ALTER TABLE produto ADD COLUMN estoque FLOAT NOT NULL;
UPDATE produto set estoque = 10.5 WHERE idproduto = 1;
UPDATE produto set estoque = 13.2 WHERE idproduto = 3;
UPDATE produto set estoque = 8.5 WHERE idproduto = 2;
UPDATE produto set estoque = 9.3 WHERE idproduto = 4;

--> USANDO PROCEDURE <--

UPDATE produto SET estoque = 20.5 WHERE idProduto = 1;
UPDATE produto SET estoque = 30.8 WHERE idProduto = 2;
UPDATE produto SET estoque = 40.2 WHERE idProduto = 3;
UPDATE produto SET estoque = 90.99 WHERE idProduto = 4;

call compraDiaria('2022/10/21');

/*
Resultado PROCEDURE:
+--------------------------------------------+
| Histórico de Compras Diárias               |
+--------------------------------------------+
| 2022-10-21 Foram comprados: 10 Laranja     |
| 2022-10-21 Foram comprados: 22.3 Pêra      |
| 2022-10-21 Foram comprados: 27 Maçã        |
| 2022-10-21 Foram comprados: 81.69 Melância |
+--------------------------------------------+
*/

SELECT * FROM historicoProduto;
/*
Resultado TABELA de historicoProduto:
+----+---------------------+-----------+---------------+-----------+
| id | data                | idProduto | valorAnterior | valorNovo |
+----+---------------------+-----------+---------------+-----------+
|  1 | 2022-10-20 23:42:09 |         1 |          3.50 |      4.00 |
|  2 | 2022-10-20 23:44:43 |         2 |          7.80 |      9.00 |
|  3 | 2022-10-20 23:44:43 |         3 |          5.00 |      6.00 |
|  4 | 2022-10-20 23:44:43 |         4 |          2.00 |      3.00 |
+----+---------------------+-----------+---------------+-----------+
*/

SELECT * FROM produto;
/*
Resultado TABELA produto:
+-----------+-------------+-------------+---------------+---------+
| idProduto | nomeProduto | precoNormal | precoDesconto | estoque |
+-----------+-------------+-------------+---------------+---------+
|         1 | Laranja     |        4.00 |          3.15 |    20.5 |
|         2 | Pêra        |        9.00 |          7.02 |    30.8 |
|         3 | Maçã        |        6.00 |          4.50 |    40.2 |
|         4 | Melância    |        3.00 |          1.80 |   90.99 |
+-----------+-------------+-------------+---------------+---------+
*/

SELECT * FROM historicoEstoque;
/*
Resultado TABELA historicoEstoque:
+----+------------+-----------+-------------+---------------+--------------+--------------------+
| id | data       | idProduto | nomeProduto | estoqueAntigo | estoqueAtual | qtdAlteradaEstoque |
+----+------------+-----------+-------------+---------------+--------------+--------------------+
|  1 | 2022-10-21 |         1 | Laranja     |          10.5 |         20.5 |                 10 |
|  2 | 2022-10-21 |         2 | Pêra        |           8.5 |         30.8 |               22.3 |
|  3 | 2022-10-21 |         3 | Maçã        |          13.2 |         40.2 |                 27 |
|  4 | 2022-10-21 |         4 | Melância    |           9.3 |        90.99 |              81.69 |
+----+------------+-----------+-------------+---------------+--------------+--------------------+
*/