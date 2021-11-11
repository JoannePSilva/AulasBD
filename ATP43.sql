--Listar
---Categoria
select * from categoria;

--Produtos
select * from produtos;
 
--Listar os dados da tb Categoria, para linhas que possuem descrição preenchida
--primeiro precisei fazer inserção de descrição não preenchida
 insert into categoria (nome, descricao) values ('Maldivas', '');
 select * from categoria where descricao = ''; --não preenchida
 select * from categoria where descricao != ''; --preenchida
 
 --Liste os dados das colunas Id, nome e preco da tabela produtos, para as linhas que possuem nome iniciado com c
select * from produtos where nome like 'c%';

--join
select *from produtos join categoria on (preco > 0);

--Liste os dados das colunas com id  maior que 2
 select * from produtos where id > 2;
 
-- Liste os dados de todas as colunas da tabela Categoria e os dados da coluna nome tabela Produto, para as categorias que estão
-- sendo utilizadas por produtos
select p.nome, c.nome, c.descricao from produtos p join categoria c on (c.id = p.id);