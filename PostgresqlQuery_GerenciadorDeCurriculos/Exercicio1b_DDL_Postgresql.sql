INSERT INTO Pessoas(nome, cpf) VALUES 
    ('Malheiros','1234567891234');
INSERT INTO Experiencias (titulo, data_inicio, data_conclusao, nomeLocal) VALUES 
    ('Design UX','2017-08-19','2018-08-18','UNIFACISA');
INSERT INTO Curriculos (id_experiencia, id_pessoa, data_atualizacao, idioma) VALUES 
    (1, 1, '2018-08-19', 'Inglês');
INSERT INTO Profissionais (id_experiencia) VALUES 
    (1);
INSERT INTO Academicas (id_experiencia) VALUES 
    (1);

select * from Pessoas;
select * from Curriculos;
select * from Experiencias;
select * from Profissionais;
select * from Academicas;