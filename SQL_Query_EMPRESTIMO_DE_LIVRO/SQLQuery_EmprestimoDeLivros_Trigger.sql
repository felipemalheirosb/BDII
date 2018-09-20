use EmprestimoDeLivro


CREATE TRIGGER Atualiza_emprestado
ON Livros
FOR UPDATE
AS
BEGIN
	DECLARE
		@nome VARCHAR(30) = NULL,
		@emprestado BIT = 1

	UPDATE Livros
	SET emprestado = @emprestado
	WHERE nome = @nome;
END

