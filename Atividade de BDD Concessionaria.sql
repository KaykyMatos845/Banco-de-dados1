create database atividade;
use atividade;

create table if not exists concessionaria(
idCarro int not null,
nome varchar(45),
marca varchar(45),
odometro int,
ano int,
primary key (idCarro));

insert into concessionaria values 
(1, 'Virtus 200 tsi', 'volkswagen', '1000', 2024),
(2, 'renegade t270', 'jeep', '0', 2025),
(3, '911 turbo s', 'porsche', '0', 2024);



show tables;

select * from concessionaria;