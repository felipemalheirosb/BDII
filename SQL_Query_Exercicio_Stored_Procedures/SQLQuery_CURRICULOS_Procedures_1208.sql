
use Curriculos

------- Retornar nome e cpf --------
CREATE PROCEDURE retornar_nome_cpf

	@id_pessoa INT = NULL
	
AS
BEGIN
	Select Pessoas.nome,Pessoas.cpf FROM Pessoas WHERE Pessoas.id_pessoa = @id_pessoa
END
------- Retornar nome e cpf e telefone --------
CREATE PROCEDURE retornar_nome_cpf_telefone

	@id_pessoa INT = NULL
	
AS
BEGIN
	Select Pessoas.nome,Pessoas.cpf,Telefone.numero FROM Pessoas,Telefone WHERE Pessoas.id_pessoa = @id_pessoa AND Telefone.id_pessoa = @id_pessoa
END
------- Retornar nome e numero e profissao --------
CREATE PROCEDURE retornar_nome_numero_profissao

	@id_pessoa INT = NULL
	
AS
BEGIN
	Select Pessoas.nome,Telefone.numero,Pessoas.profissao FROM Pessoas,Telefone WHERE Pessoas.id_pessoa = @id_pessoa AND Telefone.id_pessoa = @id_pessoa
END

------- Incluir uma pessoa --------
CREATE PROCEDURE incluir_pessoa
	
	@nome VARCHAR(30) = NULL,
	@cpf VARCHAR(30) = NULL,
	@idade INT = NULL,
	@profissao VARCHAR(30) = NULL
	
AS
BEGIN
	INSERT INTO Pessoas(nome, cpf, idade, profissao)
	VALUES (@nome, @cpf, @idade, @profissao)
END

------- Incluir uma telefone --------
CREATE PROCEDURE incluir_telefone
	
	@id_pessoa INT = NULL,
	@numero VARCHAR(30) = NULL
	
AS
BEGIN
	INSERT INTO Telefone(id_pessoa, numero)
	VALUES (@id_pessoa, @numero) 
END

------- Incluir uma xp --------
CREATE PROCEDURE incluir_xp
	
	@id_pessoa INT = NULL,
	@titulo VARCHAR(30) = NULL,
	@descricao VARCHAR(30) = NULL,
	@tempo INT = NULL
AS
BEGIN
	INSERT INTO Experiencias(id_pessoa, titulo, descricao, tempo)
	VALUES (@id_pessoa, @titulo, @descricao, @tempo) 
END

------- Excluir pessoa --------
CREATE PROCEDURE excluir_pessoa
	
	@id_pessoa INT = NULL
	
AS
BEGIN
	
	DELETE FROM Telefone WHERE Telefone.id_pessoa = @id_pessoa
	DELETE FROM Experiencias WHERE Experiencias.id_pessoa = @id_pessoa
	DELETE FROM Pessoas WHERE Pessoas.id_pessoa = @id_pessoa

END

drop procedure excluir_pessoa