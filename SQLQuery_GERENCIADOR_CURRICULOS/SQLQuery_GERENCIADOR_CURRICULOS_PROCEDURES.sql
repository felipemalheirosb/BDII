
use GerenciadorDeCurriculos

------- CADASTRAR PESSOA --------
CREATE PROCEDURE cadastrar_pessoa

	@nome VARCHAR(30) = NULL,
	@cpf VARCHAR(13) = NULL
AS
BEGIN
	INSERT INTO Pessoas(nome, cpf)
	VALUES(@nome, @cpf)
END

DROP PROCEDURE cadastrar_pessoa
------- CADASTRAR CURRICULO --------
CREATE PROCEDURE casdastrar_curriculo
	@id_experiencia INT = NULL,
	@id_pessoa INT = NULL,
	@data_atualizacao DATE = NULL,
	@idioma VARCHAR(10) = NULL
AS
BEGIN
	INSERT INTO Curriculos(id_experiencia, id_pessoa, data_atualizacao, idioma)
	VALUES(@id_experiencia, @id_pessoa, @data_atualizacao, @idioma)
END
------- BUSCAR PESSOA POR ID --------
CREATE PROCEDURE buscar_pessoa_por_id
	@id_pessoa INT = NULL

AS
BEGIN
	SELECT distinct Pessoas.nome,Curriculos.data_atualizacao,Experiencias.titulo,Experiencias.id_experiencia, id_funcao
	FROM Pessoas,Curriculos,Experiencias,Profissionais,Academicas WHERE Pessoas.id_pessoa = @id_pessoa
	
	and Experiencias.id_experiencia = Profissionais.id_funcao 
	
END

Drop procedure buscar_pessoa_por_id