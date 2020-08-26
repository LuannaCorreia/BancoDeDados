/* Exercícios - ClinicaVeterinaria e Optus */
-- Optus

USE Optus;

SELECT * FROM Album;
SELECT * FROM Artista;
SELECT * FROM Estilo;
SELECT * FROM EstiloAlbum;
SELECT * FROM TipoPermissao;
SELECT * FROM Usuario;

INSERT INTO Album
VALUES	('O album mais escutado de 2020 no Spotify', 1);

INSERT INTO Artista
VALUES	('Harry Styles', 26);


INSERT INTO Estilo
VALUES	('Pop'),
		('Rock');


INSERT INTO EstiloAlbum
VALUES	(2, 1);		


INSERT INTO TipoPermissao
VALUES	('Premium');


INSERT INTO Usuario
VALUES	('Luanna', 'luanna.correia@gmail.com', '123456', 1);