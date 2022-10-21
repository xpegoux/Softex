--> Criando tabela produto, a ideia do trigger com esta tabela é: sempre que um novo registro for criado, o trigger irá automaticamente calcular um preco de desconto para o registro criado em produto.

CREATE TABLE produto (
	idProduto INT NOT NULL AUTO_INCREMENT,
	nomeProduto VARCHAR(45) NOT NULL,
	precoNormal DECIMAL(10,2) NOT NULL,
	precoDesconto DECIMAL(10,2) NULL,
	PRIMARY KEY (idProduto));

--> Criando o Trigger <--

CREATE TRIGGER trDesconto BEFORE INSERT --> O trigger é executado antes da operação INSERT ser disparada.
ON produto --> nome da tabela onde o trigger será executado.
FOR EACH ROW --> para cada linha inserida no insert.
SET NEW.precoDesconto = (NEW.preconormal * 0.90); --> configurando o preço com desconto para receber o preço com 10%, o NEW é utilizado para evitar conflitos no banco de dados já que o trigger está configurado para iniciar antes de existir linhas nesta tabela.

--> Inserindo registros na tabela

INSERT INTO produto (nomeProduto, precoNormal) VALUES
('Laranja', 3.50), ('Pêra', 7.80), ('Maçã', 5.00), ('Melância', 2.00);


--> apresentando resultado de todos os registros da tabela produto
SELECT * FROM produto;
/*
Resultado:
+-----------+-------------+-------------+---------------+
| idProduto | nomeProduto | precoNormal | precoDesconto |
+-----------+-------------+-------------+---------------+
|         1 | Laranja     |        3.50 |          3.15 |
|         2 | Pêra        |        7.80 |          7.02 |
|         3 | Maçã        |        5.00 |          4.50 |
|         4 | Melância    |        2.00 |          1.80 |
+-----------+-------------+-------------+---------------+
*/