--DML
--inserir 3 categorias

--DML
--inserir 3 categorias

select * from produtos;

alter table produtos 
add column codigo varchar(50) null;

insert into categoria (nome, descricao) values ('Livros', 'Novos e usados');
insert into categoria (nome, descricao) values ('Filmes', 'Lancamentos');
insert into categoria (nome, descricao) values ('Turismo', 'Praia ou Serra');
--inserir 6 produtos --- ACRESCENTAR O ID DEPOIS DE GERADO
insert into produtos (nome, descricao ,codigo , preco, id_categoria) values ('Harry Potter', 'e o cálice', 'BDI', 12, 2);
insert into produtos (nome, descricao ,codigo , preco , id_categoria) values ('Eldest', 'o dragão', 'BBI', 13, 1);
insert into produtos (nome, descricao ,codigo , preco, id_categoria) values ('Apolo', 'provacões', 'BCI', 19, 1);
insert into produtos (nome, descricao ,codigo , preco, id_categoria) values ('Bidlle', 'e Bardo', 'DIB', 17, 3);
insert into produtos (nome, descricao ,codigo , preco, id_categoria) values ('Lord', 'of Rings', 'IBB', 15, 1);
insert into produtos(nome, descricao ,codigo , preco, id_categoria) values ('Sapiens', 'Via', 'CDI', 13,2);
--alterar a descri��o de dois produtos
update produtos set descricao = 'Muito bom' where id=1;
update produtos set descricao = 'Recomendo' where id=3;
update produtos set id_categoria = 2 where id=1;

--altere o pre�o -- COLOCAR O ID DE ACORCO COM O QUE FOI GERADO
update produtos set preco = 11 where id=1;
update produtos set preco = 12 where id=2;
update produtos set preco = 18 where id=3;
update produtos set preco = 16 where id=1;
update produtos set preco = 14 where id=2;
update produtos set preco = 12 where id=3;

----OU---
update produtos set preco = preco - 1 where preco > 0;

--deletar um produto e uma categoria--deletar um produto e uma categoria
alter from produtos where id = 2;
delete from produtos where id =3;
-- aletere uma categoria de um produto
update produtos set id_categoria = 1 where id = 4;



