CREATE DATABASE SistemaDeCurriculos

use SistemaDeCurriculos


CREATE TABLE Curriculos (

	id_curriculo INT IDENTITY NOT NULL,
	nome VARCHAR(30) NOT NULL,
	cpf VARCHAR(13) NOT NULL,
	email VARCHAR(15) NOT NULL,
	descricao VARCHAR(30) NOT NULL,
	data_cadastro DATE NOT NULL,
	CONSTRAINT id_curriculo_PK PRIMARY KEY(id_curriculo)
);

SELECT * FROM CURRICULOS

CREATE TABLE historico (

	id_historico INT IDENTITY NOT NULL,
	id_curriculo INT NOT NULL,
	nome VARCHAR(30) NOT NULL,
	cpf VARCHAR(13) NOT NULL,
	email VARCHAR(15) NOT NULL,
	descricao VARCHAR(30) NOT NULL,
	data_cadastro DATE NOT NULL,
	data_insercao DATE NOT NULL,
	CONSTRAINT id_historico_PK PRIMARY KEY(id_historico),
	CONSTRAINT id_historico_curriculo_FK FOREIGN KEY (id_historico) REFERENCES Curriculos(id_curriculo)
);
