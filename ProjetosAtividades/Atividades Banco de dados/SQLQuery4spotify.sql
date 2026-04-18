CREATE DATABASE spotify 
USE spotify

CREATE TABLE tbl_musica(
id INT IDENTITY PRIMARY KEY,
gênero VARCHAR(50),
nome VARCHAR(100),
cantor VARCHAR (100),
tempo VARCHAR (100)
)

SELECT * FROM tbl_musica

INSERT INTO tbl_musica VALUES
('Rock', 'November Rain','Guns N`Roses','9:17' ),
('Alternative Indie', 'Come Back To Eden','Sleep Token','5:20' ),
('Metal alternativo', 'B.Y.O.B','System Of a Down','4:17' ),
('Rock', 'Something in The Way','Nirvana','5:30' ),
('Rock', 'Lithium','Nirvana','4:17' ),
('Rock', 'The Devil in I','Slipknot','6:17' )

SELECT * FROM tbl_musica
WHERE gênero = 'Rock'

--ATIVIDADE 1
CREATE TABLE tbl_playlist(
id INT IDENTITY PRIMARY KEY,
criador VARCHAR(50),
nome VARCHAR(100),
duração VARCHAR (100),
qnt_msc INT
)


INSERT INTO tbl_playlist VALUES
('Jullya', 'funk', '01:30:30', 10),
('Pamella', 'kpop', '03:30:30', 100),
('Antonio', 'Sertanejo', '01:30:30', 16),
('Beatriz', 'funk', '02:15:30', 12),
('Geovanna', 'Metal', '01:30:20', 14),
('Kauany', 'Alternativo', '30:30', 2),
('Luisa', 'forró', '01:30:30', 10),
('Maria', 'eletronica', '03:15:30', 30),
('Laura', 'samba', '01:10:30', 15),
('Gabi', 'MPB', '01:15:30', 10)

SELECT * FROM tbl_playlist
ORDER BY nome

SELECT * FROM tbl_playlist
WHERE nome LIKE 'f%'


--ATIVIDADE 2
CREATE TABLE tbl_albuns(
id INT IDENTITY PRIMARY KEY,
nome VARCHAR(100),
anoLanc VARCHAR(50),
qnt_msc INT,
criador VARCHAR(50),
genero VARCHAR (100)
)



SELECT * FROM tbl_albuns

INSERT INTO tbl_albuns VALUES
('born to die the paradise edition', '2012','23','Lana Del Rey','pop alternativo'),
('Toxicity', '2001','14','System of a Down','metal alternativo '),
('Nevermind', '1991','12','Nirvana','grunge / rock alternativo'),
('Admirável Chip Novo', '2003','11','Pitty','hard rock / rock alternativo'),
('Fruto Proibido', '1975','9','Rita Lee (com Tutti Frutti)','glam rock, blues rock'),
('Honeymoon', '2015','14','Lana Del Rey','dream pop, baroque pop, pop alternativo'),
('Coisas Naturais', '2025','13','Marina Sena','pop urbano com referências a funk, bossa nova, reggaeton, piseiro e MPB'),
('De Primeira', '2021','10','Marina Sena','pop com influências de MPB e brasilidade marcante, destaque ao hit “Por Supuesto”'),
('3001', '2000','12','Rita Lee','rock com eletrônica e psicodelia, mistura própria de pop/rock experimental'),
('Anacrônico', '2005','13',' Pitty','rock')

SELECT * FROM tbl_albuns
ORDER BY  anoLanc DESC

SELECT * FROM tbl_albuns
WHERE genero = 'rock'

SELECT nome, criador, SUM(qnt_msc) AS total_musicas
FROM tbl_albuns
GROUP BY nome, criador
HAVING SUM(qnt_msc) > 12
