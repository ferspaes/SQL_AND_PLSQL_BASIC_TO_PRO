USE CursoSQL
GO

DECLARE @CPF VARCHAR (14) = '555.555.555-55'
DECLARE @IdFuncionario INT = 5
BEGIN

	IF NOT EXISTS (SELECT * FROM CPF
					WHERE CPF = @CPF)
	BEGIN
		INSERT INTO CPF (
						IdFuncionario,
						CPF
							)
		VALUES			(
						@IdFuncionario,
						@CPF
							)
	END
END