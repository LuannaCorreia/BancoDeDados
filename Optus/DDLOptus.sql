/* Exercícios - ClinicaVeterinaria e Optus */
-- Optus

CREATE DATABASE Optus;

USE Optus;
CREATE TABLE Artista (
	IdArtista INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Idade INT NOT NULL
);

USE Optus;
CREATE TABLE Album (
	IdAlbum INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao TEXT NOT NULL,

	-- Colocar as chaves estrangeiras (FK)
	IdArtista INT FOREIGN KEY REFERENCES Artista(IdArtista)
);

USE Optus;
CREATE TABLE Estilo (
	IdEstilo INT PRIMARY KEY IDENTITY NOT NULL,
	NomeEstilo VARCHAR(50) UNIQUE NOT NULL
);

USE Optus;
CREATE TABLE EstiloAlbum (
	IdEstiloAlbum INT PRIMARY KEY IDENTITY NOT NULL,

	-- Colocar as chaves estrangeiras (FK)
	IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum),
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo)
);

USE Optus;
CREATE TABLE TipoPermissao (
	IdTipoPermissao INT PRIMARY KEY IDENTITY NOT NULL,
	Tipo VARCHAR(20) UNIQUE NOT NULL 
);

USE Optus;
CREATE TABLE Usuario (
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(100) NOT NULL,

	-- Colocar as chaves estrangeiras (FK)
	IdTipoPermissao INT FOREIGN KEY REFERENCES TipoPermissao(IdTipoPermissao)
);