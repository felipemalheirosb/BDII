CREATE TABLE Pessoas (
   id_pessoa SERIAL NOT NULL,
   nome VARCHAR(30) NOT NULL,
   cpf VARCHAR(13) NOT NULL,
   CONSTRAINT pessoa_PK PRIMARY KEY(id_pessoa)
);

CREATE TABLE Experiencias (
   id_experiencia SERIAL NOT NULL,
   titulo VARCHAR(30) NOT NULL,
   data_inicio DATE NOT NULL,
   data_conclusao DATE NOT NULL,
   nomeLocal VARCHAR(30) NOT NULL,
   CONSTRAINT experiencia_PK PRIMARY KEY(id_experiencia)
);

CREATE TABLE Curriculos (
   id_curriculo SERIAL NOT NULL,
   id_experiencia INT NOT NULL,
   id_pessoa INT NOT NULL,
   data_atualizacao DATE NOT NULL,
   idioma VARCHAR(10) NOT NULL,
   CONSTRAINT curriculo_PK PRIMARY KEY(id_curriculo),
   CONSTRAINT curriculo_experiencia_FK FOREIGN KEY(id_experiencia) references Experiencias(id_experiencia),
   CONSTRAINT curriculo_pessoa_FK FOREIGN KEY(id_pessoa) references Pessoas(id_pessoa)
);

CREATE TABLE Profissionais (
   id_funcao SERIAL NOT NULL,
   id_experiencia INT NOT NULL,
   CONSTRAINT funcao_PK PRIMARY KEY(id_funcao),
   CONSTRAINT experiencia_profissional_FK FOREIGN KEY(id_experiencia) references Experiencias(id_experiencia) 
);

CREATE TABLE Academicas (
   id_grau_funcao SERIAL NOT NULL,
   id_experiencia INT NOT NULL,
   CONSTRAINT grau_funcao_PK PRIMARY KEY(id_grau_funcao),
   CONSTRAINT experiencia_academica_FK FOREIGN KEY(id_experiencia) references Experiencias(id_experiencia) 
);