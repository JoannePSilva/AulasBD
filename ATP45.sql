-- Crie uma estrutura de transação para executar duas inserções
--Utilize begin, transaction, commit e end para criar um bloco de instruções
--dentro do bloco execute a inserção de um produto e uma categoria novos
begin transaction;

insert into pais(nome, sigla) values ('Brasil', 'BR')
insert into estado(nome, sigla, id_pais) values ('Rio Grande do Sul', 'RS', 1)
insert into estado(nome, sigla, id_pais) values ('São Paulo', 'SP', 1)
insert into estado(nome, sigla, id_pais) values ('Santa Catarina', 'SC', 1)

insert into cidade(nome, id_estado) values ('Porto Alegre', 2)
insert into cidade(nome, id_estado) values ('Cotia', 1)
insert into cidade(nome, id_estado) values ('Florianópolis', 1)
insert into cidade(nome, id_estado) values ('São José', 1)
insert into cidade(nome, id_estado) values ('Guarujá', 'ST', 1)
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