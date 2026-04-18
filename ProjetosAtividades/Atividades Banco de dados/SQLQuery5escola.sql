
Use escola

CREATE TABLE tbl_aluno(
id INT IDENTITY,
nome VARCHAR(50),
curso VARCHAR(50)
)

SELECT * FROM tbl_aluno

INSERT INTO tbl_aluno VALUES
('Marcos', 'ADS'),
('Bianca','Engenharia'),
('Camila', 'Direito'),
('Carlos', 'Ciênciad da Computação'),
('Marcos', 'Biologia'),
('Camila', 'Medicina')


--esse é para nome e curso na ordem crescente
SELECT * FROM tbl_aluno ORDER BY nome, curso ASC


--esse é para o nome ficar crescente e o curso decrescente
SELECT * FROM tbl_aluno ORDER BY nome ASC, curso DESC

SELECT * FROM tbl_aluno ORDER BY id ASC


CREATE TABLE tbl_vendas(
id INT IDENTITY,
produto VARCHAR(20),
qnt INT,
preco DECIMAL(10,2)
)

INSERT INTO tbl_vendas VALUES
('Lápis', 10, '1.50'),
('Caderno', 5, '10.00'),
('Lápis', 7, '1.50'),
('Caneta', 3, '2.00'),
('Caderno', 2, '10.00')

SELECT * FROM tbl_vendas

--soma e agrupa produtos iguais, ex: lápis =17
SELECT produto, SUM (qnt) AS soma
from tbl_vendas
GROUP BY produto


--serve para ver o preço final das vendas
SELECT produto, SUM (qnt)* preco AS preco_total
from tbl_vendas
GROUP BY produto, preco

-- o having serve como uma condição, neste exemplo ele quer apenas os produtos que tiveram mais de 5 vendas
SELECT produto, SUM (qnt)* preco AS preco_total
from tbl_vendas
GROUP BY produto, preco
HAVING SUM(qnt) >5


SELECT * FROM tbl_vendas
WHERE produto LIKE '%a%'


CREATE TABLE tbl_professor(
id_professor INT PRIMARY KEY,
nome_professor VARCHAR(50),
disciplina VARCHAR(50),
email VARCHAR(100)
)

INSERT INTO tbl_professor VALUES
(1, 'Isabella', 'DS', 'isabellaad@gmail.com'),
(2, 'Marcos', 'DS', 'marcosad@gmail.com'),
(3, 'Aline', 'DS', 'alinead@gmail.com')

SELECT * FROM tbl_professor
