use EmprestimoDeLivro


CREATE TABLE Livros (
 id_livro INT IDENTITY NOT NULL,
 nome VARCHAR(30) NOT NULL,
 emprestado BIT NOT NULL,
 CONSTRAINT livro_PK PRIMARY KEY (id_livro)
);


INSERT INTO Livros(nome,emprestado)
VALUES
 ('HP: Preludi', 1)
,('HP: Volume One', 1)
,('HP: Volume Two', 0)
,('HP: Volume Three', 1)
,('HP: Volume Four', 0)
,('HP: Volume Five', 1)
,('HP: Volume Six', 1)
,('HP: Volume Seven', 0)
,('HP: Volume Eight', 1)
,('HP: Volume Nine', 1);

CREATE TABLE Pessoas (
 id_pessoa INT IDENTITY NOT NULL,
 nome VARCHAR(30) NOT NULL,
 matricula VARCHAR(10) NOT NULL,
 CONSTRAINT pessoa_PK PRIMARY KEY (id_pessoa)
);

INSERT INTO Pessoas(nome,matricula)
VALUES
('Harry Potter', '0001'),
('Lord Voldemort', '0002'),
('Alvo Dumbledore', '0003'),
('Ron Wesley', '0004'),
('Hermione Granger', '0005'),
('Ton Riddle', '0007'),
('Severos Snake', '0008'),
('Rubio Hegred', '0009'),
('Felipe Malheiros', '0010'),
('Bitao Sonserina', '0011');

CREATE TABLE Emprestimos (
 id_emprestimo INT IDENTITY NOT NULL,
 id_livro INT NOT NULL,
 id_pessoa INT NOT NULL,
 data_emprestimo DATETIME NOT NULL,
 CONSTRAINT emprestimo_PK PRIMARY KEY (id_emprestimo),
 CONSTRAINT emprestimo_livro_FK FOREIGN KEY (id_livro) REFERENCES Livros(id_livro),
 CONSTRAINT emprestimo_pessoa_FK FOREIGN KEY (id_pessoa) REFERENCES Pessoas(id_pessoa)
);


INSERT INTO Emprestimos(id_livro, id_pessoa, data_emprestimo)
VALUES
(1, 1, '2018-08-10'),
(2, 2, '2018-08-09'),
(3, 3, '2018-08-08'),
(4, 4, '2018-08-07'),
(5, 5, '2018-08-06'),
(6, 6, '2018-08-05'),
(7, 7, '2018-08-04'),
(8, 8, '2018-08-03'),
(9, 9, '2018-08-02'),
(10, 10, '2018-08-01');

select * from Livros
select * from Pessoas
select * from Emprestimos