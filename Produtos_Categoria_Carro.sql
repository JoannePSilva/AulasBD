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

alter table Carro
add column chassi varchar(50) not null;
alter table Carro
add column ano int not null;

--remove a tabela código de Produto
alter table produtos drop codigo 

--adicione coluna na produtos
alter table produtos 
add column id_categoria int not null;
--adicione uma constraint com Foreing Key na produtos
alter table produtos 
add constraint fk_categoria foreign key (id_categoria) references categoria(id);