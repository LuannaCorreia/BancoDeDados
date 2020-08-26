/* DDL - Nyous */
CREATE DATABASE Nyous;
USE Nyous;

CREATE TABLE Acesso(
	IdAcesso INT PRIMARY KEY IDENTITY NOT NULL,
	Tipo VARCHAR(50)
);

CREATE TABLE Categoria(
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(50)
);

CREATE TABLE Localizacao(
	IdLocalizacao INT PRIMARY KEY IDENTITY NOT NULL,
	Logradouro VARCHAR(100) NOT NULL,
	Numero VARCHAR(50),
	Complemento VARCHAR(50),
	Bairro VARCHAR(50) NOT NULL,
	Cidade VARCHAR(50) NOT NULL,
	UF CHAR(2),
	CEP VARCHAR(10)
);

CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Email VARCHAR(80) NOT NULL,
	Senha VARCHAR(150) NOT NULL,
	DataNascimento DATETIME NOT NULL,

	-- Colocar as chaves estrangeiras (FK)
	IdAcesso INT FOREIGN KEY REFERENCES Acesso(IdAcesso)
);

CREATE TABLE Evento(
	IdEvento INT PRIMARY KEY IDENTITY NOT NULL,
	DataEvento DATETIME NOT NULL,
	AcessoRestrito BINARY DEFAULT 0 NOT NULL,
	Capacidade INT NOT NULL,
	Descricao VARCHAR(255),

	-- Colocar as chaves estrangeiras (FK)
	IdLocalizacao INT FOREIGN KEY REFERENCES Localizacao(IdLocalizacao),
	IdCategoria INT FOREIGN KEY REFERENCES Categoria(IdCategoria),
);

CREATE TABLE Presenca(
	IdPresenca INT PRIMARY KEY IDENTITY NOT NULL,
	Confirmado BIT NOT NULL,

	-- Colocar as chaves estrangeiras (FK)
	IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario)
);


CREATE TABLE Convite(
	IdConvite INT PRIMARY KEY IDENTITY NOT NULL,
	Confirmado BIT DEFAULT NULL,

	-- Colocar as chaves estrangeiras (FK)
	IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento),
	IdUsuarioEmissor INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	IdUsuarioConvidado INT FOREIGN KEY REFERENCES Usuario(IdUsuario)
);



/* DML - Nyous */
INSERT INTO Acesso (Tipo) 
VALUES	('Administrador'),
		('Padrao');

INSERT INTO Categoria (Titulo) 
VALUES	('Meetup'),
		('Workshop'),
		('Hackathon'),
		('Live'),
		('Palestra');

INSERT INTO Localizacao (Logradouro, Numero, Bairro, Cidade, UF, CEP)
VALUES	('Alameda Barão de Limeira', 539, 'Santa Cecília', 'São Paulo', 'SP', '01202-001');

INSERT INTO Usuario (Nome, Email, Senha, DataNascimento, IdAcesso) 
VALUES	('Luanna Correia', 'luanna@gmail.com', '123456789', '2004-06-26T18:50:00', 1);

INSERT INTO Evento (DataEvento, Capacidade, AcessoRestrito, IdCategoria, IdLocalizacao) 
VALUES	('2020-10-15T22:00:00', 100, 0, 3, 1);



/* DQL - Nyous */
SELECT * FROM Categoria;

SELECT * FROM Localizacao;

SELECT Usuario.Nome, Usuario.Email, Acesso.Tipo AS PermissaoAcesso FROM Usuario
	INNER JOIN Acesso ON Usuario.IdAcesso = Acesso.IdAcesso;


SELECT * FROM Evento
	INNER JOIN Categoria ON Evento.IdCategoria = Categoria.IdCategoria
	INNER JOIN Localizacao ON Evento.IdLocalizacao = Localizacao.IdLocalizacao