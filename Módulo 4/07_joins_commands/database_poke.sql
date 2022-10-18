--> Criando e selecionando o Banco de Dados <--

CREATE DATABASE Poke;
USE Poke;

--> Criando Tabelas <--

CREATE TABLE Treinador (
  idTreinador INT NOT NULL AUTO_INCREMENT,
  nomeTreinador VARCHAR(45) NOT NULL,
  regiao VARCHAR(45) NOT NULL,
  dataNascimento DATE NOT NULL,
  PRIMARY KEY (idTreinador));
  
CREATE TABLE Pokemon (
  idPokemon INT NOT NULL AUTO_INCREMENT,
  nomePokemon VARCHAR(45) NOT NULL,
  tipoPokemon VARCHAR(45) NOT NULL,
  PRIMARY KEY (idPokemon));

CREATE TABLE Ginasio (
  idGinasio INT NOT NULL AUTO_INCREMENT,
  nomeGinasio VARCHAR(45) NOT NULL,
  tipoGinasio VARCHAR(45) NOT NULL,
  nomeLider VARCHAR(45) NOT NULL,
  PRIMARY KEY (idGinasio));
  
CREATE TABLE Ginasio_Treinador (
  idGinasio INT NOT NULL,
  idTreinador INT NOT NULL,
  diaDaLuta DATE NOT NULL,
  PRIMARY KEY (idGinasio, idTreinador),
  FOREIGN KEY (idGinasio) REFERENCES Ginasio (idGinasio),
  FOREIGN KEY (idTreinador) REFERENCES Treinador (idTreinador));

CREATE TABLE Ginasio_has_Pokemon (
  idGinasio INT NOT NULL,
  idPokemon INT NOT NULL,
  PRIMARY KEY (idGinasio, idPokemon),
  FOREIGN KEY (idGinasio) REFERENCES Ginasio (idGinasio),
  FOREIGN KEY (idPokemon) REFERENCES Pokemon (idPokemon));

CREATE TABLE Treinador_Pokemon (
  idTreinador INT NOT NULL,
  idPokemon INT NOT NULL,
  dataCaptura VARCHAR(45) NOT NULL,
  PRIMARY KEY (idTreinador, idPokemon),
  FOREIGN KEY (idTreinador) REFERENCES Treinador (idTreinador),
  FOREIGN KEY (idPokemon) REFERENCES Pokemon (idPokemon));

--> Inserindo dados nas tabelas <--
INSERT INTO treinador (nomeTreinador, regiao, dataNascimento) VALUES ('Ash', 'Kanto', "1997-05-31");
INSERT INTO treinador (nomeTreinador, regiao, dataNascimento) VALUES ('Brock', 'Kanto', "1990-02-22");
INSERT INTO treinador (nomeTreinador, regiao, dataNascimento) VALUES ('Misty', 'Kanto', "1992-12-10");
INSERT INTO treinador (nomeTreinador, regiao, dataNascimento) VALUES ('Randomboy', 'Kanto', "1998-03-01");

INSERT INTO pokemon (nomePokemon, tipoPokemon) VALUES ('Bulbasaur', 'Planta/Veneno');
INSERT INTO pokemon (nomePokemon, tipoPokemon) VALUES ('Ivysaur', 'Planta/Veneno');
INSERT INTO pokemon (nomePokemon, tipoPokemon) VALUES ('Venusaur', 'Planta/Veneno');
INSERT INTO pokemon (nomePokemon, tipoPokemon) VALUES ('Charmander', 'Fogo');
INSERT INTO pokemon (nomePokemon, tipoPokemon) VALUES ('Charmeleon', 'Fogo');
INSERT INTO pokemon (nomePokemon, tipoPokemon) VALUES ('Charizard', 'Fogo/Voador');
INSERT INTO pokemon (nomePokemon, tipoPokemon) VALUES ('Squirtle', 'Água');
INSERT INTO pokemon (nomePokemon, tipoPokemon) VALUES ('Wartortle', 'Água');
INSERT INTO pokemon (nomePokemon, tipoPokemon) VALUES ('Blastoise', 'Água');

INSERT INTO ginasio (nomeGinasio, tipoGinasio, nomeLider) VALUES ('Ginasio Rochoso', 'Pedra', 'Brock');
INSERT INTO ginasio (nomeGinasio, tipoGinasio, nomeLider) VALUES ('Ginasio Aquático', 'Água', 'Misty');
INSERT INTO ginasio (nomeGinasio, tipoGinasio, nomeLider) VALUES ('Ginasio Elétrico', 'Elétrico', 'Lt.Surge');
INSERT INTO ginasio (nomeGinasio, tipoGinasio, nomeLider) VALUES ('Ginasio das Ervas', 'Planta', 'Erika');
INSERT INTO ginasio (nomeGinasio, tipoGinasio, nomeLider) VALUES ('Ginasio Tóxico', 'Veneno', 'Koga');
INSERT INTO ginasio (nomeGinasio, tipoGinasio, nomeLider) VALUES ('Ginasio Confuso', 'Psíquico', 'Sabrina');
INSERT INTO ginasio (nomeGinasio, tipoGinasio, nomeLider) VALUES ('Ginasio Quente', 'Fogo', 'Blaine');
INSERT INTO ginasio (nomeGinasio, tipoGinasio, nomeLider) VALUES ('Ginasio Malvediço', 'Terra', 'Giovanni');

--> Joins Functions <--

--> INNER JOIN
SELECT a.nomeTreinador, b.nomeLider
FROM Treinador as A
INNER JOIN Ginasio as B
                on a.nomeTreinador = b.nomeLider;
                
--> LEFT JOIN
SELECT a.nomeTreinador, b.nomeLider
FROM Treinador as A
LEFT JOIN Ginasio as B
                on a.nomeTreinador = b.nomeLider;

--> RIGHT JOIN
SELECT a.nomeTreinador, b.nomeLider
FROM Treinador as A
RIGHT JOIN Ginasio as B
                on a.nomeTreinador = b.nomeLider;

--> FULL JOIN
SELECT a.nomeTreinador, b.nomeLider
FROM Treinador as A
LEFT JOIN Ginasio as B
                on a.nomeTreinador = b.nomeLider
UNION
SELECT a.nomeTreinador, b.nomeLider
FROM Ginasio as B
LEFT JOIN Treinador as A
                on a.nomeTreinador = b.nomeLider;