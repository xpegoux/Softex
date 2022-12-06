create database soap_softex;
use soap_softex;

create table cliente (
    id smallint auto_increment primary key,
    nome varchar(255) not null,
    sobrenome varchar(255) not null,
    cpf varchar(11) not null unique,
    telefone varchar(11) null,
    endereco varchar(255) not null
);

insert into cliente (nome, sobrenome, cpf, telefone, endereco) values 
    ('José', 'da Silva', '11188899900', '8199998888', 'rua das flores 80'),
    ('Hades', 'on Hell', '10088899900', '8199998899', 'rua machado 98'),
    ('Oliver', 'Tsubaza', '10888988900', '1199998899', 'rua um 1'),
    ('Cosmo', 'dos Santos', '20088899900', '8189998899', 'rua dois 2'),
    ('Damião', 'da Cunha', '30088899900', '8179998899', 'rua tres 3'),
    ('Dolores', 'das Dores', '40088899900', '8169998899', 'rua quatro 4'),
    ('Peixe', 'Peixoto', '50088899900', '8159998899', 'rua cinco 5'),
    ('Bronle', 'Nadroj', '60088899900', '8149998899', 'rua seis 6');
    

