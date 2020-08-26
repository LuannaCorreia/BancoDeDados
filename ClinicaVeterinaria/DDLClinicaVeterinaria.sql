/* Exercícios - ClinicaVeterinaria e Optus */
-- ClinicaVeterinaria

CREATE DATABASE ClinicaVeterinaria;

USE ClinicaVeterinaria;
CREATE TABLE TipoDePet (
	IdTipoDePet INT PRIMARY KEY IDENTITY NOT NULL,
	Tipo VARCHAR(50) UNIQUE NOT NULL -- UNIQUE : Não pode ter valores repitidos
);

USE ClinicaVeterinaria;
CREATE TABLE Veterinario (
	IdVeterinario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	crmv VARCHAR(20) UNIQUE NOT NULL
);

USE ClinicaVeterinaria;
CREATE TABLE Raca (
	IdRaca INT PRIMARY KEY IDENTITY NOT NULL,
	NomeRaca VARCHAR(20) UNIQUE NOT NULL
);

USE ClinicaVeterinaria;
CREATE TABLE Dono (
	IdDono INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL, 
	CPF VARCHAR(30) UNIQUE NOT NULL
);

USE ClinicaVeterinaria;
CREATE TABLE Pet (
	IdPet INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	DataNascimento DATETIME NOT NULL,

	-- Colocar as chaves estrangeiras (FK)
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono),
	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca),
	IdTipoDePet INT FOREIGN KEY REFERENCES TipoDePet(IdTipoDePet),
	IdVeterinario INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario)
);
