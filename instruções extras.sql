/*Aula exclusão, atualização e seleção de dados */
/* criar banco de dados */
drop database if exists Exemplo1;

create database if not exists Exemplo1;
/* colocar em uso */
use Exemplo1;
/* mostrar os bancos existentes na minha máquina*/
show databases;
/*criar uma tabela*/
create table if not exists fornecedor (
idFornecedor int not null auto_increment,
nome varchar(45) not null,
endereco varchar(45),
telefone int,
cidade varchar(25),
email varchar(25),
primary key (idFornecedor)
) ENGINE=INNODB;
/*mostras as tabelas */
show tables;

create table if not exists produto(
idProduto int not null ,
descricao varchar(45),
preco decimal(7,2),
unidade varchar(10),
idFornecedor int not null,
primary key (idProduto),
foreign key (idFornecedor)  references fornecedor(idFornecedor)
on delete cascade 
on update cascade
) ENGINE=INNODB;

/* inserir dados */
insert into fornecedor values
(1,'papel reciclado','rua Brasil, 1000',444441212,'Bragança Paulista','reci@gmail.com');

/* exibir os dados da tabela*/
select * from fornecedor;
select * from produto;
insert into fornecedor values
(idFornecedor,'casas Bahia', 'Rua do mercado,1000',40338787,'Bragança Paulista','casasbahia@gmail.com'),
(idFornecedor,'Lojas Cem', 'Rua do Comercio,9000',40334455,'Bragança Paulista','lojasCem@gmail.com'),
(idFornecedor,'Magazine Luiza','Rua Pires Pimentel,500',40333333,'Bragança Paulista',
'luiza@gmail.com');

insert into produto values
(100,'Fogão',800.5,'pc',2);

INSERT INTO produto VALUES 
(110,'GELADEIRA',2000.70,'PC',2),
(150,'FOGAO COOKTOP',1330.40,'PC',3),
(160,'AR CONDICIONADO',1800,'PC',4);

#mostrar descricao e preco dos produtos
select descricao, preco from produto;

#mostrar descricao e preco dos produtos cujos valores sejam maiores q 1500

select descricao, preco from produto
where preco>1500;

#mostrar todos os dados dos produtos cujos
#preços sejam menores q 1300
select * from produto
where preco<1300;


#mostrar todos os produtos que pertencem ao fornecedor 4
select * from produto
where idFornecedor=4;

#mostrar os produtos por ordem crescente de descricao

select * from produto
order by descricao asc;
select * from produto
order by 2 asc;


#mostrar os produtos por ordem descendente
select * from produto
order by preco desc;

#exibir os fornecedores por ordem alfabetica considerando os cujos idFornecedor sejam maiores ou iguais a 3
select * from fornecedor
where idFornecedor>=3
order by nome;


#mostrar todos os fornecedores que iniciam com a letra l
Select * from fornecedor
where nome not like "%o";


#mostrar dados distintos
Select distinct(IDfornecedor) from produto;

#mostrar todas as ocorrencias
select all(idfornecedor) from produto;

#mostrar num intervalo
select * from produto
where preco between"1500" and "2000";

#pertence a uma lista
select * from produto
where preco in (1500, 1600, 1800);

#mostrar dados arredondados
select descricao, round(preco,1) from produto;

#atualizar dados
update fornecedor 
set cidade ="São Paulo"
where idFornecedor=1;

update fornecedor
set endereco="Rua nova, 90", telefone="1140028922"
where idfornecedor=1;

select * from fornecedor;


#atualizar a unidade para = "cx" para os produtos cujos identificadores sejam maiores q 150
update produto
set unidade="cx"
where idproduto>150;

select * from produto;

#excluir tuplas da tabela
delete from produto
where idproduto=100;

select * from produto;

#
desc fornecedor;

#alterar a estrutura da tabela
alter table fornecedor
add column cnpj int,
add column teste varchar(10);

desc fornecedor;

select * from forn
ecedor;

alter table fornecedor
drop column teste;

