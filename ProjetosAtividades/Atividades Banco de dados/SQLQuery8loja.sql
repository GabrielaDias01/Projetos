CREATE DATABASE lojaa
USE lojaa

CREATE TABLE tbl_vendas(
id INT IDENTITY PRIMARY KEY,
Nome_Cliente VARCHAR(100),
Nome_Produto VARCHAR(100),
Quantidade INT,
Preco_Total DECIMAL(10,2),
Data_Venda DATE
)

INSERT INTO tbl_vendas VALUES
('Robson', 'Tênis', 1, '130.90', '2025-05-02'),
('Raissa', 'Calça', 3, '450.65', '2025-05-03'),
('Romeo', 'jogos ps5', 3, '750.00', '2025-05-02'),
('Alice', 'Calça Moletom', 3, '600.50', '2025-05-05'),
('Richarlisson', 'Camiseta', 5, '250.25', '2025-05-06'),
('Richard', 'Short', 3, '240.50', '2025-05-07'),
('Raquel', 'Saia', 5, '400.69', '2025-05-07'),
('Rafael', 'Meia', 10, '200.00', '2025-05-08'),
('Rafaela', 'Tênis', 3, '670.99', '2025-05-08'),
('Carlos', 'Notebook', 2, '3500.50', '2025-05-09')

SELECT * FROM tbl_vendas
WHERE Nome_Produto
in ('Tênis', 'Calça')

SELECT * FROM tbl_vendas
WHERE Quantidade
BETWEEN 2 AND 3

SELECT * FROM tbl_vendas
WHERE Nome_Cliente = 'Alice'
OR Nome_Produto = 'Tênis'

SELECT * FROM tbl_vendas
WHERE Nome_Cliente = 'Carlos'
AND Nome_Produto = 'Notebook'