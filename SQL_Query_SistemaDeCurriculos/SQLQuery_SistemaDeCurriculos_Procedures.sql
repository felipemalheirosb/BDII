use SistemaDeCurriculos

------- Cadastra Curriculo --------
CREATE PROCEDURE Cadastra_Curriculo
	
	@nome VARCHAR(30) = NULL,
	@cpf VARCHAR(13) = NULL,
	@email VARCHAR(15) = NULL,
	@descricao VARCHAR(30) = NULL,
	@data_cadastro DATE = NULL
	
AS
BEGIN
	
	INSERT INTO Curriculos(nome,cpf,email,descricao,data_cadastro)
	VALUES(@nome, @cpf, @email, @descricao, @data_cadastro)

END


------- Remove Curriculo --------
CREATE PROCEDURE Remove_Curriculo
	
	@id_curriculo INT = NULL

AS
BEGIN
	
	DELETE FROM Curriculos WHERE id_curriculo = @id_curriculo

END


------- salva_no_historico --------
CREATE trigger add_historico on Curriculos
FOR delete
as
BEGIN
	EXEC Remove_Curriculo
END