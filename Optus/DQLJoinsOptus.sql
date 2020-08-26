/* Exercícios - ClinicaVeterinaria e Optus */
-- Optus

USE Optus;
INSERT INTO Estilo VALUES ('Pop');

USE Optus;
INSERT INTO EstiloAlbum VALUES ('2');

USE Optus;
SELECT Album.descricao, Estilo.nomeEstilo 
FROM Album
	INNER JOIN EstiloAlbum 
	ON Album.idAlbum = EstiloAlbum.IdAlbum

	INNER JOIN Estilo
	ON Estilo.idEstilo = EstiloAlbum.IdEstilo;