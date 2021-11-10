create table Produtos(
id int primary key generated always as identity
,nome varchar(20) not null
,descricao varchar(50) not null
,codigo varchar(50) not null
,preco int not null
);

create table Categoria(
id int primary key generated always as identity
, nome varchar(50) not null
,descricao varchar(20) not null
,complemento varchar(150) null
);




select *from carro c 
alter table carro
add column chassi varchar(50) not null;
alter table carro
add column ano int not null;
