-- Crie uma estrutura de transação para executar duas inserções
--Utilize begin, transaction, commit e end para criar um bloco de instruções
--dentro do bloco execute a inserção de um produto e uma categoria novos
begin transaction;

insert into categoria (nome, descricao) values ('Jogos', 'tabuleiro');
insert into produtos (nome, descricao, preco, id_categoria) values ('Terra Forms', 'Mars', 10, 4)

commit;
end;

--------------------------------------------------------------------
begin transaction;
create table pais(
id int primary key generated always as identity
,nome varchar(50) not null
,sigla varchar(50) not null
);

create table estado(
id int primary key generated always as identity
,nome varchar(50) not null
,sigla varchar(50) not null
,id_pais in not null
,constraint fk_pais foreign key(id_pais) references pais(id)
);

create table cidade(
id int primary key generated always as identity
,nome varchar(50) not null
,sigla varchar(50) not null
,id_estado int not null
,constraint fk_estado foreign key(id_estado) references estado(id)

);


insert into pais(nome, sigla) values ('Brasil', 'BR')
insert into estado(nome, sigla, id_pais) values ('Rio Grande do Sul', 'RS', 1)
insert into cidade(nome, sigla, id_estado) values ('Porto Alegre', 'POA', 1)

commit;
end;
