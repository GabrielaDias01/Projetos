CREATE DATABASE ecommerce
USE ecommerce


CREATE TABLE tbl_produtos(
	id_produto INT IDENTITY PRIMARY KEY,
	nome VARCHAR (50),
	qntd_estoque INT,
	descricao VARCHAR(100),
	preco DECIMAL(10,2)
)

CREATE TABLE tbl_clientes(
	email_cliente VARCHAR(100) PRIMARY KEY,
	nome VARCHAR (50),
	telefone VARCHAR(150),
	endereço VARCHAR(255),
	data_cadastro DATETIME
)


CREATE TABLE tbl_pedidos_clientes(
	email_cliente VARCHAR(100),
	id_produto INT,
	data_pedido DATETIME DEFAULT GETDATE(),
	valor_total DECIMAL(10,2),
	PRIMARY KEY(email_cliente, id_produto),
	FOREIGN KEY (email_cliente) REFERENCES tbl_clientes(email_cliente)
)