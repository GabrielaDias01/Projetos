CREATE DATABASE operadores
USE operadores

SELECT GETDATE()

CREATE TABLE tbl_endereco(
id INT IDENTITY PRIMARY KEY,
pais VARCHAR(50),
estado CHAR(2),
cidade VARCHAR(50),
bairro VARCHAR(50)
)

INSERT INTO tbl_endereco VALUES
('Brasil', 'SP', 'Taboão da Serra', 'Jardim América'),
('Brasil', 'SP', 'Taboão da Serra', 'Cidade Intercap'),
('Brasil', 'SP', 'São Paulo', 'Horto do Ype')

--o and indica que as duas coisas devem ser verdadeiras
SELECT * FROM tbl_endereco
WHERE estado = 'SP'
AND cidade = 'Taboão da Serra'

--o or serve como uma opção entre um OU outro
SELECT * FROM tbl_endereco
WHERE estado = 'SP'
OR cidade = 'Taboão da Serra'

--o in serve para fazer varias pesquisas de uma vez, diferente do OR o IN recebe varias infos de um campo só e o OR pesquisa vários campos
SELECT * FROM tbl_endereco
WHERE bairro
in ('Jardim América', 'Cidade Intercap')

SELECT * FROM tbl_endereco
WHERE bairro
NOT IN ('Jardim América', 'Cidade Intercap')

CREATE TABLE tbl_produto(
id INT IDENTITY PRIMARY KEY,
nome VARCHAR (100),
qnt_estoque INT)

INSERT INTO tbl_produto VALUES
('CAMISETA', 1),
('CALÇA JEANS', 50),
('BLUSA MOLETOM', 101)

SELECT * FROM tbl_produto
WHERE qnt_estoque
BETWEEN 10 AND 100

SELECT * FROM tbl_produto
WHERE qnt_estoque
NOT BETWEEN 10 AND 100
