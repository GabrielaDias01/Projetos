create database db_joins
use db_joins
 
create table tbl_clientes
(	
	id_cliente int identity primary key,
	nome varchar (100)
)
 
insert into tbl_clientes values
('Ana'),
('Bruno'),
('Carlos'),
('Diana')
 
create table tbl_pedidos
(	
	id int identity primary key,
	cliente_id int,
	produto varchar (100),
	foreign key (cliente_id) references tbl_clientes(id_cliente)
)
 
insert into tbl_pedidos values
(1, 'Camiseta'),
(1, 'Vestido'),
(2, 'Calça'),
(4, 'Sapato')
 
--left join
select c.nome, p.produto from tbl_clientes c 
left join tbl_pedidos p
on c.id_cliente = p.cliente_id
 
 
--right join
select c.nome, p.produto from tbl_clientes c
right join tbl_pedidos p 
on c.id_cliente = p.cliente_id
 
--inner join
select c.nome, p.produto from tbl_clientes c
inner join tbl_pedidos p 
on c.id_cliente = p.cliente_id
 
--full join
select c.nome, p.produto from tbl_clientes c
full join tbl_pedidos p
on c.id_cliente = p.cliente_id

select * from tbl_clientes
select * from tbl_pedidos