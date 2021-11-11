--DTL
--Savepoint e Rollback
--declare quantidade int
begin transaction;

insert into roupas (tamanho, quantidade_pecas) values ('m', 3);
savepoint inserindo_roupas;

insert into roupas (tamanho, quantidade_pecas) values ('g', 5);
--set quantidade = select count(id) from pessoa;
--if quantidade >4 then
rollback to inserindo_roupas;
commit;
end;