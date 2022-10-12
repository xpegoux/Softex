--> Criando e Usando o Banco de Dados <--

CREATE DATABASE BIBLIOTECA;
USE BIBLIOTECA;

--> Criando Tabelas <--

CREATE TABLE ALUNO 
(
    ID INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(30) NOT NULL,
    Matricula INT NOT NULL,
    Email VARCHAR(60) NOT NULL,
    Endereco VARCHAR(40) NOT NULL,
    Telefone INT,

    PRIMARY KEY (ID)
);

CREATE TABLE EMPRESTIMO
(
    Codigo INT NOT NULL AUTO_INCREMENT,
    Data_hora DATETIME,
    Matric_Aluno INT,
    Data_devolucao DATE,

    PRIMARY KEY (Codigo),

    CONSTRAINT FK_EMPRESTIMO_ALUNO FOREIGN KEY (Matric_Aluno) REFERENCES ALUNO(ID)        
);

CREATE TABLE SESSAO
(
    Codigo INT NOT NULL AUTO_INCREMENT,
    Descricao VARCHAR(50),
    Localizacao VARCHAR(50),

    PRIMARY KEY (Codigo)
);

CREATE TABLE LIVRO
(
    Cod_Livro INT NOT NULL AUTO_INCREMENT,
    Titulo VARCHAR(50) NOT NULL,
    Autor VARCHAR(50) NOT NULL,
    Cod_Sessao INT,

    PRIMARY KEY (Cod_Livro),

    CONSTRAINT FK_SESSAO_LIVRO FOREIGN KEY (Cod_Sessao) REFERENCES SESSAO(Codigo)
);

CREATE TABLE LIVRO_EMPRESTIMO
(
    Cod_livro INT,
    Cod_Emprestimo INT,

    CONSTRAINT FK_LIVRO_EMPRESTIMO FOREIGN KEY (Cod_livro) REFERENCES LIVRO(Cod_Livro),
    CONSTRAINT FK_EMPRESTIMO_LIVRO FOREIGN KEY (Cod_Emprestimo) REFERENCES EMPRESTIMO(Codigo) 
);

--> Inserindo registros nas tabelas <--

INSERT INTO ALUNO (Nome, Matricula, Email, Endereco, Telefone) VALUES ('João Carlos', 1234, 'Jcarlos@gmail.com', 'Rua 13 de maio', '(11)7825-4489');
INSERT INTO ALUNO (Nome, Matricula, Email, Endereco, Telefone) VALUES ('José Vitor', 2345, 'Jvitor@gmail.com', 'Rua da Saudade', '(11)7825-6589');
INSERT INTO ALUNO (Nome, Matricula, Email, Endereco, Telefone) VALUES ('Paulo André', 3456, 'Pandr@gmail.com', 'Rua do Sol', '(11)7825-4495');

INSERT INTO LIVRO (Titulo, Autor) VALUES ('Modelo Conceitual e Diagramas ER', 'Pressman, Roger S.');
INSERT INTO LIVRO (Titulo, Autor) VALUES ('Livro 2: Modelo Relacional e Álgebra Relacional', 'Heuser, Carlos Alberto');
INSERT INTO LIVRO (Titulo, Autor) VALUES ('Livro 3: Linguagem SQL', 'Beighley, Lynn');

INSERT INTO SESSAO (Descricao, Localizacao) VALUES ('Sessao1', 'Prateleira1');
INSERT INTO SESSAO (Descricao, Localizacao) VALUES ('Sessao2', 'Prateleira2');
INSERT INTO SESSAO (Descricao, Localizacao) VALUES ('Sessao3', 'Prateleira3');

--> 1. inclua a coluna DATA_NASCIMENTO na tabela ALUNO do tipo string e de tamanho 10 caracteres; <--
ALTER TABLE ALUNO ADD DATA_NASCIMENTO VARCHAR(10);

--> 2. altere a coluna TELEFONE para CONTATO e seu tipo de dado para string; <--
ALTER TABLE ALUNO CHANGE COLUMN TELEFONE CONTATO VARCHAR(13);

--> 3. inclua o campo ISBN na tabela LIVRO, com tamanho de 13 caracteres do tipo inteiro; <--
ALTER TABLE LIVRO ADD ISBN INT(13);
--> 4. e remova o campo ISBN da tabela LIVRO. <--
ALTER TABLE LIVRO DROP COLUMN ISBN;