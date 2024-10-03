# Criar banco de Dados
create database if not exists exemplo;
#create database exemplo;
use exemplo;

#criação de tabelas
create table if not exists fornecedor (
idFornecedor int not null,
nome varchar(45) not null,
endereco varchar(45),
telefone int,
cidade varchar(25),
email varchar(45),
primary key (idFornecedor));

#show tables; -- mostra todas as tabelas
#show databases; -- mostra os bancos de dados
desc fornecedor;

insert into fornecedor values
(1, 'papel', 'rua Brasil, 1000' , 40028922, 'Bragança Paulista', 'recicla@gmail.com');

select * from fornecedor;




#mostrar os dados da tabela
select * from fornecedor;
insert into fornecedor values
(11111, 'papel', 'rua Brasil, 1000' , 40028922, 'Bragança Paulista', 'recicla@gmail.com');

#tipo divergente 
insert into fornecedor values
('a', 'papel', 'rua Brasil, 1000' , 40028922, 'Bragança Paulista', 'recicla@gmail.com');

#quantidade de atributos divergentes
insert into fornecedor values
(222, 'papel', 'rua Brasil, 1000' , 40028922, 'Bragança Paulista', null);

insert into fornecedor values (4, 'Magazine Luiza', 'rua Pires Pimentel, 1000', 49312855, 'Bragança Paulista', 'luiza@gmail.com');

-- delete from fornecedor where idFornecedor = 4;
-- select * from fornecedor;

create table if not exists produtos (
idProduto int not null,
descricao varchar(45) not null,
preco decimal(7.2),
unidade varchar(10),
idFornecedor int not null,
primary key (idProduto),
foreign key (idFornecedor)
references fornecedor(idFornecedor));


#para excluir, utilizar o comando drop




