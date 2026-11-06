CREATE DATABASE biblioteca
use biblioteca

CREATE TABLE tbl_livro(
	id_livro INT IDENTITY PRIMARY KEY,
	nome_livro VARCHAR(125),
	descricao TEXT,
	estoque INT,
	autor_livro VARCHAR(125)
)

CREATE TABLE tbl_usuário(
	id_usuário INT IDENTITY PRIMARY KEY,
	nome_usuário VARCHAR(125)
)

CREATE TABLE tbl_documento(
	id_documento INT IDENTITY PRIMARY KEY,
	rg VARCHAR(50),
	cpf VARCHAR(50)
	FOREIGN KEY (id_documento)REFERENCES tbl_usuário(id_usuário)
)

CREATE TABLE tbl_empréstimo(
	id_livro INT,
	id_usuário INT,
	descrição VARCHAR(100),
	empréstimo DATETIME DEFAULT GETDATE(),
	entrega DATETIME DEFAULT GETDATE(),
	PRIMARY KEY(id_livro, id_usuário),
	FOREIGN KEY (id_usuário)REFERENCES tbl_usuário(id_usuário)
)



