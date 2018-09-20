CREATE DATABASE Curriculos

USE Curriculos

CREATE TABLE Pessoas (
	id_pessoa INT NOT NULL IDENTITY,
	nome VARCHAR(30) NOT NULL,
	cpf VARCHAR(13) NOT NULL,
	idade INT NOT NULL,
	profissao VARCHAR(30) NOT NULL,
	CONSTRAINT pessoa_PK PRIMARY KEY(id_pessoa)
);

CREATE TABLE Telefone (
	id_telefone INT NOT NULL IDENTITY,
	id_pessoa INT NOT NULL,
	numero VARCHAR(11) NOT NULL,
	CONSTRAINT telefone_PK PRIMARY KEY(id_telefone),
	CONSTRAINT telefone_pessoa_FK FOREIGN KEY (id_telefone) REFERENCES Pessoas(id_pessoa)
);

CREATE TABLE Experiencias (
	id_experiencia INT NOT NULL IDENTITY,
	id_pessoa INT NOT NULL,
	titulo VARCHAR(30) NOT NULL,
	descricao VARCHAR(30) NOT NULL,
	tempo INT NOT NULL,
	CONSTRAINT experiencia_PK PRIMARY KEY(id_experiencia),
	CONSTRAINT experiencia_pessoa_FK FOREIGN KEY (id_experiencia) REFERENCES Pessoas(id_pessoa)
);



select * from Pessoas
select * from Experiencias
select * from Telefone

INSERT INTO Pessoas(nome, cpf, idade, profissao) VALUES('Felipe Malheiros','1234567891234', 26, 'dev')
INSERT INTO Pessoas(nome, cpf, idade, profissao) VALUES('Victor Ranniery','1876667476588', 25, 'dev')

INSERT INTO Telefone(id_pessoa, numero) VALUES(1,'988522430')
INSERT INTO Telefone(id_pessoa, numero) VALUES(2,'959551234')

INSERT INTO Experiencias(id_pessoa, titulo, descricao, tempo) VALUES(1, 'Designer','developer', 3)
INSERT INTO Experiencias(id_pessoa, titulo, descricao, tempo) VALUES(2, 'Desenvolvedor','developer', 3)


EXEC retornar_nome_cpf 2
EXEC retornar_nome_cpf_telefone 3
EXEC retornar_nome_numero_profissao 3

EXEC incluir_pessoa 'Adriano', '1876667476288', 36, 'prof'
EXEC incluir_pessoa 'Hamurabi', '1876677476288', 120, 'coord'

EXEC incluir_telefone 3,'123456789'
EXEC incluir_telefone 4,'132456789'

EXEC incluir_xp 3, 'Professor', 'BIGDATA', 10

EXEC excluir_pessoa 1