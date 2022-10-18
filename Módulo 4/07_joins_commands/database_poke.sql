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

INSERT INTO treinador (nomeTreinador, regiao, dataNascimento) VALUES
  ('Ash', 'Kanto', "1997-05-31"),
  ('Brock', 'Kanto', "1990-02-22"),
  ('Misty', 'Kanto', "1992-12-10"),
  ('Randomboy', 'Kanto', "1998-03-01");

INSERT INTO pokemon (nomePokemon, tipoPokemon) VALUES
  ('Bulbasaur', 'Planta/Veneno'),
  ('Ivysaur', 'Planta/Veneno'),
  ('Venusaur', 'Planta/Veneno'),
  ('Charmander', 'Fogo'),
  ('Charmeleon', 'Fogo'),
  ('Charizard', 'Fogo/Voador'),
  ('Squirtle', 'Água'),
  ('Wartortle', 'Água'),
  ('Blastoise', 'Água');

INSERT INTO ginasio (nomeGinasio, tipoGinasio, nomeLider) VALUES
  ('Ginasio Rochoso', 'Pedra', 'Brock'),
  ('Ginasio Aquático', 'Água', 'Misty'),
  ('Ginasio Elétrico', 'Elétrico', 'Lt.Surge'),
  ('Ginasio das Ervas', 'Planta', 'Erika'),
  ('Ginasio Tóxico', 'Veneno', 'Koga'),
  ('Ginasio Confuso', 'Psíquico', 'Sabrina'),
  ('Ginasio Quente', 'Fogo', 'Blaine'),
  ('Ginasio Malvediço', 'Terra', 'Giovanni');

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