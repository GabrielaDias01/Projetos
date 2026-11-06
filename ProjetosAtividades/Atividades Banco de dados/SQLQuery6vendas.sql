CREATE DATABASE vendas
USE vendas

CREATE TABLE tbl_cliente(
id INT IDENTITY PRIMARY KEY,
nome VARCHAR(50),
email VARCHAR(50)
)

--foreing key de 1/n
CREATE TABLE tbl_pedidos(
id_pedido INT IDENTITY PRIMARY KEY,
data_pedido DATE,
valor DECIMAL(10,2),
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id)
)

SELECT * FROM tbl_cliente

INSERT INTO tbl_cliente VALUES
('Laura Abuquerque','lauraalbuquerque@gmail.com'),
('Maria Luisa Dias', 'magazineluisa23@gmail.com')

INSERT INTO tbl_pedidos VALUES
('2025-06-13', '1025.35','1'),
('2025-05-12', '3589.25','1'),
('2025-06-27', '50.69','2'),
('2025-06-26', '200.80','2'),
('2025-06-27', '350.90','2')

--forengn key 1/1
CREATE TABLE tbl_funcionario(
idFunc INT IDENTITY PRIMARY KEY,
nome VARCHAR (100),
vaga VARCHAR(100)
)

INSERT INTO tbl_funcionario VALUES
('Rodrigo Alves','Gerente'),
('Cistina Dias','RH'),
('Joice','Cozinheira'),
('Pierre Santos','Faxineiro')


CREATE TABLE tbl_contato(
idCont INT PRIMARY KEY,
númeroContato VARCHAR(50),
email VARCHAR(100),
FOREIGN KEY (idCont) REFERENCES tbl_funcionario(idFunc)
)


INSERT INTO tbl_contato VALUES
(1,'11957095707','rodrigoFaro07@gmail.com'),
(2,'11871345678','cristinalobizoma123@gmail.com'),
(3,'11229876542','joicebola299@gmail.com'),
(4,'11293645272','pierreginaldo34@gmail.com')

SELECT * FROM tbl_contato




CREATE TABLE tbl_autor(
id INT IDENTITY PRIMARY KEY,
nome VARCHAR(50)
)


CREATE TABLE tbl_livro(
idLivro INT IDENTITY PRIMARY KEY,
dataLanc DATE,
valor DECIMAL(10,2),
genero VARCHAR(100),
id_autor INT,
FOREIGN KEY (id_autor) REFERENCES tbl_autor(id)
)

SELECT * FROM tbl_livro

INSERT INTO tbl_autor VALUES
('Laura Abuquerque'),
('Maria Luisa Dias')

INSERT INTO tbl_livro VALUES
('2016-04-24','78.99','romance',1),
('2015-03-07','75.99','romance',1),
('2018-04-13', '50.69','terror',2),
('2019-07-20', '200.80','suspense',2),
('2023-08-17', '350.90','fantasia',2)