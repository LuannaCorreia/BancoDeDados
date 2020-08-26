/* Exercícios - ClinicaVeterinaria e Optus */
-- ClinicaVeterinaria

USE ClinicaVeterinaria;
SELECT * FROM Dono;
SELECT * FROM Pet;
SELECT * FROM Raca;
SELECT * FROM TipoDePet;
SELECT * FROM Veterinario;

-- SUM - Soma
SELECT SUM(IdDono) FROM Dono AS SomaId;

SELECT SUM(IdPet) FROM Pet AS SomaId;

-- AVG - Média

SELECT AVG(IdRaca) FROM Raca AS SomaId;

SELECT AVG(IdTipoDePet) FROM TipoDePet AS SomaId;

SELECT AVG(IdVeterinario) FROM Veterinario AS SomaId;