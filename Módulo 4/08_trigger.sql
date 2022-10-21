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

ALTER TABLE historicoProduto
ADD FOREIGN KEY (idProduto) REFERENCES produto(idProduto);


--> TRIGGERS <--

--> Criando um Trigger de inserção para tabela produto<--
DELIMITER //
CREATE TRIGGER trDesconto BEFORE INSERT ON produto FOR EACH ROW
BEGIN

	SET NEW.precoDesconto = (NEW.preconormal * 0.90); 
--> O último comando acima foi utilizado para configurar o preço com desconto para receber o novo preço com 10%, o NEW é utilizado para evitar conflitos no banco de dados já que o trigger está configurado para iniciar antes de existir linhas nesta tabela.
END//
DELIMITER ;

--> Criando um trigger de atualização para a tabela produto atualizar na tabela historico <--
DELIMITER //
CREATE TRIGGER trHistorico AFTER UPDATE ON produto FOR EACH ROW
BEGIN
	IF NEW.precoNormal <> OLD.precoNormal THEN
		INSERT INTO historicoProduto VALUES (NULL, NOW(), NEW.idProduto, OLD.precoNormal, NEW.precoNormal);
	END IF;
END//
DELIMITER ;
--> explicando o insert into, no primeiro campo foi null porque o id é autoincremento, o segundo é uma função para atualizar a data automaticamente, o terceiro é o id do produto que teve a alteração, o quarto é referente ao preço antigo, que recebe no paramentro o old para inserir o resultado da condição e o último faz respectivamente o mesmo, porém inserindo o novo valor. <--

--> Inserindo registros na tabela <--

INSERT INTO produto (nomeProduto, precoNormal) VALUES
('Laranja', 3.50), ('Pêra', 7.80), ('Maçã', 5.00), ('Melância', 2.00);

--> Alterando registros na tabela <--

UPDATE produto SET precoNormal = 4.00 WHERE idProduto = 1;
UPDATE produto SET precoNormal = 9.00 WHERE idProduto = 2;
UPDATE produto SET precoNormal = 6.00 WHERE idProduto = 3;
UPDATE produto SET precoNormal = 3.00 WHERE idProduto = 4;


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
+-----------+-------------+-------------+---------------+
| idProduto | nomeProduto | precoNormal | precoDesconto |
+-----------+-------------+-------------+---------------+
|         1 | Laranja     |        4.00 |          3.15 |
|         2 | Pêra        |        9.00 |          7.02 |
|         3 | Maçã        |        6.00 |          4.50 |
|         4 | Melância    |        3.00 |          1.80 |
+-----------+-------------+-------------+---------------+
*/