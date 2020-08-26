/* Exercícios - ClinicaVeterinaria e Optus */
-- ClinicaVeterinaria

USE ClinicaVeterinaria;
SELECT 
	Pet.Nome,
	Veterinario.Nome

FROM Pet
	INNER JOIN Veterinario ON Pet.idVeterinario = Veterinario.idVeterinario;
