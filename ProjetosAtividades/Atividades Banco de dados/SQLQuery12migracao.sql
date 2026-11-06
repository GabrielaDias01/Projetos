CREATE DATABASE migracao
use migracao

CREATE TABLE tbl_endereco(
	id_endereco INT IDENTITY PRIMARY KEY,
	cep INT,
	logradouro VARCHAR(90),
	bairro VARCHAR(50),
	cidade VARCHAR(50),
	estado CHAR(2)
	)

	INSERT INTO tbl_endereco VALUES
	(01001000, 'Praça da Sé', 'Sé', 'São Paulo', 'SP'),
	(20040002, 'Rua da Quitanda', 'Centro', 'Rio de Janeiro', 'RJ'),
	(30130010, 'Avenida Afonso Pena', 'Centro', 'Belo Horizonte', 'MG'),
	(70040900, 'Esplanada dos Ministérios', 'Zona Cívico-Administrativa', 'Brasília', 'DF'),
	(80010000, 'Rua XV de Novembro', 'Centro', 'Curitiba', 'PR'),
	(88010001, 'Rua Felipe Schmidt', 'Centro', 'Florianópolis', 'SC'),
	(40020000, 'Avenida Sete de Setembro', 'Centro', 'Salvador', 'BA'),
	(59000000, 'Avenida Rio Branco', 'Cidade Alta', 'Natal', 'RN'),
	(64000000, 'Rua Álvaro Mendes', 'Centro', 'Teresina', 'PI'),
	(66000000, 'Avenida Nazaré', 'Nazaré', 'Belém', 'PA');
	


CREATE TABLE tbl_cliente(
	id_cliente INT IDENTITY PRIMARY KEY,
	nome_cliente VARCHAR(50),
	cpf VARCHAR(20),
	data_nasc DATE,
	id_endereco INT,
	numero VARCHAR(10),
	complemento VARCHAR(20),
	FOREIGN KEY(id_endereco) references tbl_endereco(id_endereco)
)

INSERT INTO tbl_cliente VALUES
('Ana Beatriz Silva', '123.456.789-00', '1990-03-15', 1, '123', 'Apto 101'),
('Carlos Henrique Souza', '234.567.890-11', '1985-06-20', 2, '456', 'Casa'),
('Juliana Mendes Oliveira', '345.678.901-22', '1992-09-10', 3, '789', 'Bloco B'),
('Marcos Paulo Lima', '456.789.012-33', '1988-12-05', 4, '321', 'Fundos'),
('Fernanda Costa Rocha', '567.890.123-44', '1995-04-25', 5, '654', 'Apto 202'),
('Rodrigo Alves Martins', '678.901.234-55', '1982-11-11', 6, '987', 'Casa 2'),
('Camila Ferreira Ramos', '789.012.345-66', '1993-07-30', 7, '111', 'Bloco C'),
('Bruno Vieira Pires', '890.123.456-77', '1991-01-19', 8, '222', 'Apto 303'),
('Letícia Duarte Lima', '901.234.567-88', '1996-05-07', 9, '333', 'Casa'),
('Thiago Gomes Freitas', '012.345.678-99', '1987-10-23', 10, '444', 'Sobrado');


UPDATE tbl_cliente
SET data_nasc = '1960-08-15' 
WHERE id_cliente = 3;

UPDATE tbl_cliente
SET data_nasc = '1967-05-23' 
WHERE id_cliente = 7;



CREATE TABLE tbl_pedido(
	id_pedido INT IDENTITY PRIMARY KEY,
	data_pedido DATE,
	data_entrega DATE,
	id_cliente INT,
	FOREIGN KEY(id_cliente) REFERENCES tbl_cliente(id_cliente)
)

INSERT INTO tbl_pedido (data_pedido, data_entrega, id_cliente)
VALUES
('2024-11-15', '2024-11-20', 1),
('2023-06-10', '2023-06-25', 2),
('2025-01-05', '2025-01-10', 3),
('2022-12-22', '2023-01-05', 4),
('2023-09-30', '2023-10-10', 5),
('2024-03-18', '2024-03-22', 6),
('2023-11-07', '2023-11-14', 7),
('2024-08-25', '2024-09-05', 8),
('2025-02-14', '2025-02-20', 9),
('2023-05-01', '2023-05-15', 10);


CREATE TABLE tbl_itempedido(
	qntd INT,
	id_cliente INT,
	id_pedido INT,
	i_valor DECIMAL(10,2),
	FOREIGN KEY(id_cliente) REFERENCES tbl_cliente(id_cliente),
	FOREIGN KEY(id_pedido) REFERENCES tbl_pedido (id_pedido)
	)


	INSERT INTO tbl_itempedido (qntd, id_cliente, id_pedido, i_valor) VALUES

(2, 1, 1, 24.90),
(1, 1, 1, 6.50),
(3, 1, 1, 9.80),
(1, 1, 1, 4.20),
(2, 1, 1, 7.50),


(1, 2, 2, 24.90),
(4, 2, 2, 3.70),
(2, 2, 2, 10.90),
(1, 2, 2, 5.50),
(3, 2, 2, 6.50),


(5, 3, 3, 2.10),
(2, 3, 3, 4.90),
(1, 3, 3, 24.90),
(3, 3, 3, 9.80),
(1, 3, 3, 7.50),


(3, 4, 4, 6.50),
(2, 4, 4, 4.20),
(1, 4, 4, 5.50),
(1, 4, 4, 10.90),
(2, 4, 4, 3.70),


(2, 5, 5, 24.90),
(1, 5, 5, 6.50),
(4, 5, 5, 7.50),
(3, 5, 5, 9.80),
(1, 5, 5, 2.10),


(1, 6, 6, 4.90),
(3, 6, 6, 5.50),
(2, 6, 6, 24.90),
(1, 6, 6, 10.90),
(4, 6, 6, 6.50),


(2, 7, 7, 7.50),
(3, 7, 7, 3.70),
(1, 7, 7, 9.80),
(1, 7, 7, 6.50),
(2, 7, 7, 24.90),


(4, 8, 8, 5.50),
(1, 8, 8, 10.90),
(2, 8, 8, 6.50),
(3, 8, 8, 24.90),
(1, 8, 8, 4.20),


(1, 9, 9, 9.80),
(2, 9, 9, 7.50),
(4, 9, 9, 6.50),
(1, 9, 9, 5.50),
(3, 9, 9, 24.90),

(2, 10, 10, 3.70),
(1, 10, 10, 4.20),
(3, 10, 10, 9.80),
(1, 10, 10, 6.50),
(2, 10, 10, 24.90);


CREATE TABLE tbl_produto(
	id_produto INT IDENTITY PRIMARY KEY,
	nome_produto VARCHAR(100),
	desc_produto VARCHAR(100),
	unidade_medida VARCHAR(2),
	estoque_atual INT,
	estoque_min INT,
	estoque_max INT,
	valor DECIMAL(10,2)
)

INSERT INTO tbl_produto (nome_produto, desc_produto, unidade_medida, estoque_atual, estoque_min, estoque_max, valor)
VALUES
('Arroz Tipo 1', 'Arroz branco tipo 1 - pacote 5kg', 'KG', 150, 50, 300, 24.90),
('Feijão Carioca', 'Feijão carioca selecionado - pacote 1kg', 'KG', 100, 30, 200, 9.80),
('Óleo de Soja', 'Óleo de soja refinado 900ml', 'LT', 200, 50, 400, 6.50),
('Açúcar Cristal', 'Açúcar cristal - pacote 1kg', 'KG', 120, 40, 250, 4.20),
('Sal Refinado', 'Sal refinado iodado - pacote 1kg', 'KG', 80, 20, 150, 2.10),
('Leite Integral', 'Leite integral longa vida - 1L', 'LT', 180, 60, 300, 4.90),
('Farinha de Trigo', 'Farinha de trigo especial - 1kg', 'KG', 90, 30, 180, 5.50),
('Macarrão Espaguete', 'Macarrão espaguete - pacote 500g', 'KG', 70, 25, 150, 3.70),
('Café Torrado e Moído', 'Café torrado e moído - pacote 500g', 'KG', 60, 20, 100, 10.90),
('Refrigerante Cola 2L', 'Refrigerante sabor cola - garrafa 2L', 'LT', 130, 40, 250, 7.50);


SELECT * FROM tbl_cliente
SELECT * FROM tbl_endereco
SELECT * FROM tbl_itempedido
SELECT * FROM tbl_pedido
SELECT * FROM tbl_produto

--3ª
SELECT * FROM tbl_cliente
WHERE data_nasc BETWEEN '1960' AND '1990';

--4ª
SELECT TOP 1
    MONTH(data_nasc) AS mes,
    COUNT(*) AS qnd
FROM 
    tbl_cliente 
GROUP BY 
    MONTH(data_nasc)
ORDER BY 
    2 DESC;

SELECT TOP 1
	MONTH(data_pedido) AS mes,
	COUNT(*) AS pedidos
FROM tbl_pedido
GROUP BY 
    MONTH(data_pedido)
ORDER BY 
    2 DESC;


--6ª
	SELECT MIN(i_valor) FROM tbl_itempedido

--7
	SELECT TOP 1
    p.id_produto,
    p.nome_produto,
    SUM(id_produto) AS total_vendido
FROM 
    tbl_produto p
GROUP BY 
    p.id_produto, p.nome_produto
ORDER BY 
    total_vendido DESC;


--8ª
SELECT SUM(estoque_atual) FROM tbl_produto

--9ª
SELECT AVG(estoque_atual) FROM tbl_produto

--10ª
SELECT 
    SUM(estoque_atual * valor) AS valor_total_estoque
FROM 
    tbl_produto;
