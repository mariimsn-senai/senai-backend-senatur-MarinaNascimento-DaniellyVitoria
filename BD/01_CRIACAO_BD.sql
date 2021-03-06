CREATE DATABASE SENATUR_TARDE

USE SENATUR_TARDE

CREATE TABLE Pacotes(
	IdPacotes INT PRIMARY KEY IDENTITY
	,NomePacotes VARCHAR (2000) NOT NULL
	,Descricao VARCHAR (2000) NOT NULL
	,DataIda DATETIME NOT NULL
	,DataVolta DATETIME NOT NULL
	,Valor DECIMAL
	,Ativo BIT DEFAULT (1) NOT NULL
	,NomeCidade VARCHAR (2000) NOT NULL
);

CREATE TABLE TiposUsuarios(
	IdTiposUsuarios INT PRIMARY KEY IDENTITY
	,Titulo VARCHAR (255) NOT NULL
);

CREATE TABLE Usuarios(
	IdUsuarios INT PRIMARY KEY IDENTITY
	,Email VARCHAR (255) NOT NULL
	,Senha VARCHAR (255) NOT NULL
	,IdTiposUsuarios INT FOREIGN KEY REFERENCES TiposUsuarios (IdTiposUsuarios)
);