CREATE TABLE cliente (
	cpf VARCHAR(11) NOT NULL,
    nome VARCHAR(45) NOT NULL,
    sobrenome VARCHAR(45) NOT NULL,
    dataNascimento DATE NOT NULL,
    PRIMARY KEY (cpf));

CREATE TABLE historicoCliente (
	id INT NOT NULL AUTO_INCREMENT,
    cpfCliente VARCHAR(11) DEFAULT NULL,
    dataCadastro DATE DEFAULT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (cpfCliente) REFERENCES cliente(cpf));

DELIMITER //
CREATE TRIGGER trDataCliente AFTER INSERT ON cliente FOR EACH ROW
BEGIN
	INSERT INTO historicoCliente VALUES (NULL, NEW.cpf, NOW()); 
END //
DELIMITER ;

INSERT INTO cliente (cpf, nome, sobrenome, dataNascimento) VALUES 
('18298565710','José','Silva','2000-10-25'), 
('10495236574','Antônio','Cunha','1985-01-01'), 
('12525125235','Roberto','Mendes','1999-02-28'), 
('12525125236','Roberta','Mendes','1999-02-28');

/*
mysql> select * from cliente;
+-------------+---------+-----------+----------------+
| cpf         | nome    | sobrenome | dataNascimento |
+-------------+---------+-----------+----------------+
| 10495236574 | Antônio | Cunha     | 1985-01-01     |
| 12525125235 | Roberto | Mendes    | 1999-02-28     |
| 12525125236 | Roberta | Mendes    | 1999-02-28     |
| 18298565710 | José    | Silva     | 2000-10-25     |
+-------------+---------+-----------+----------------+
*/

--> Function <--

CREATE FUNCTION fnClientesCadastrados (data DATE)
RETURNS INT DETERMINISTIC
RETURN 
(SELECT COUNT(*) 
FROM historicoCliente
WHERE dataCadastro = data);


SELECT fnClientesCadastrados('2022-10-26');
/*
mysql> SELECT fnClientesCadastrados('2022-10-26');
+-------------------------------------+
| fnClientesCadastrados('2022-10-26') |
+-------------------------------------+
|                                   4 |
+-------------------------------------+
*/