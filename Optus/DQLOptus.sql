/* Exercícios - ClinicaVeterinaria e Optus */
-- Optus

USE Optus;
SELECT * FROM Album;
SELECT * FROM Artista;
SELECT * FROM Estilo;
SELECT * FROM EstiloAlbum;
SELECT * FROM TipoPermissao;
SELECT * FROM Usuario;

SELECT Nome, Email, Senha FROM Usuario
ORDER BY Email;

SELECT Nome, Idade FROM Artista
ORDER BY Idade;