/* Exercícios - ClinicaVeterinaria e Optus */
-- ClinicaVeterinaria

USE ClinicaVeterinaria;
SELECT * FROM Dono;
SELECT * FROM Pet;
SELECT * FROM Raca;
SELECT * FROM TipoDePet;
SELECT * FROM Veterinario;

INSERT INTO Dono 
VALUES ('Gabriel', '25478410236'),
	   ('Sophia', '65741032659');


INSERT INTO Raca
VALUES	('Spitz Alemão'),
		('Labrador');


INSERT INTO TipoDePet
VALUES	('Cachorro'),
		('Gato');


INSERT INTO Veterinario
VALUES	('Ana', '1234'),
		('Carolina', '5678');


INSERT INTO Pet
VALUES	('Crystal', '2010-05-19T15:10:00', '2', '2', '1', '1' ),
		('Snow', '2014-09-23T12:30:00', '1', '1', '2', '2');