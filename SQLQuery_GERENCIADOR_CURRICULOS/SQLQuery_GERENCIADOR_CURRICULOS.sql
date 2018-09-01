USE GerenciadorDeCurriculos

CREATE TABLE Pessoas (

	id_pessoa INT NOT NULL IDENTITY,
	nome VARCHAR(30) NOT NULL,
	cpf VARCHAR(13) NOT NULL,
	CONSTRAINT pessoa_PK PRIMARY KEY(id_pessoa)
);

CREATE TABLE Experiencias (

	id_experiencia INT NOT NULL IDENTITY,
	titulo VARCHAR(30) NOT NULL,
	data_inicio DATE NOT NULL,
	data_conclusao DATE NOT NULL,
	nomeLocal VARCHAR(30) NOT NULL,
	CONSTRAINT experiencia_PK PRIMARY KEY(id_experiencia),
);

CREATE TABLE Curriculos (

	id_curriculo INT NOT NULL IDENTITY,
	id_experiencia INT NOT NULL,
	id_pessoa INT NOT NULL,
	data_atualizacao DATE NOT NULL,
	idioma VARCHAR(10) NOT NULL,
	CONSTRAINT curriculo_PK PRIMARY KEY(id_curriculo),
	CONSTRAINT curriculo_experiencia_FK FOREIGN KEY(id_experiencia) references Experiencias(id_experiencia),
	CONSTRAINT curriculo_pessoa_FK FOREIGN KEY(id_pessoa) references Pessoas(id_pessoa)
);

CREATE TABLE Profissionais (

	id_funcao INT NOT NULL IDENTITY,
	id_experiencia INT NOT NULL,
	CONSTRAINT funcao_PK PRIMARY KEY(id_funcao),
	CONSTRAINT experiencia_profissional_FK FOREIGN KEY(id_experiencia) references Experiencias(id_experiencia) 	
);

CREATE TABLE Academicas (

	id_grau_funcao INT NOT NULL IDENTITY,
	id_experiencia INT NOT NULL,
	CONSTRAINT grau_funcao_PK PRIMARY KEY(id_grau_funcao),
	CONSTRAINT experiencia_academica_FK FOREIGN KEY(id_experiencia) references Experiencias(id_experiencia) 	
);

select * from Pessoas
select * from Curriculos
select * from Experiencias
select * from Profissionais
select * from Academicas

INSERT INTO Pessoas(nome, cpf) VALUES('Felipe Malheiros','1234567891234')
INSERT INTO Curriculos(id_experiencia, id_pessoa, data_atualizacao, idioma) VALUES(1, 1, '2018-08-19', 'Inglês')
INSERT INTO Experiencias(titulo, data_inicio, data_conclusao, nomeLocal) VALUES('Designer','2017-08-19','2018-08-18','FACISA')
INSERT INTO Profissionais(id_experiencia) VALUES(1)
INSERT INTO Academicas(id_experiencia) VALUES(1)


EXEC cadastrar_pessoa 'Felipe Malheiros', '1234567891234'
EXEC casdastrar_curriculo 1, 1, '2018-08-19', 'Inglês'
EXEC buscar_pessoa_por_id 4