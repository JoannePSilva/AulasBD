-- Crie uma estrutura de transa��o para executar duas inser��es
--Utilize begin, transaction, commit e end para criar um bloco de instru��es
--dentro do bloco execute a inser��o de um produto e uma categoria novos
begin transaction;

insert into pais(nome, sigla) values ('Brasil', 'BR')
insert into estado(nome, sigla, id_pais) values ('Rio Grande do Sul', 'RS', 1)
insert into estado(nome, sigla, id_pais) values ('S�o Paulo', 'SP', 1)
insert into estado(nome, sigla, id_pais) values ('Santa Catarina', 'SC', 1)

insert into cidade(nome, id_estado) values ('Porto Alegre', 2)
insert into cidade(nome, id_estado) values ('Cotia', 1)
insert into cidade(nome, id_estado) values ('Florian�polis', 1)
insert into cidade(nome, id_estado) values ('S�o Jos�', 1)
insert into cidade(nome, id_estado) values ('Guaruj�', 'ST', 1)
insert into cidade(nome, id_estado) values ('Imbiuna', 'ST', 2)

commit;
end;

select 
c.id as "ProdutoId"
,c.nome
,e.id as "EstadoId"
,e.nome
,e.sigla
,p.id as "PaisId"
,p.nome
,p.sigla

from cidade as c
join estado as e on c.id_estado = e.id
join pais as p on e.id_pais = p.id