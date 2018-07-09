USE CursoSQL
GO

DECLARE @Titular VARCHAR (20) = 'Carlos'
DECLARE @IdContaBancaria INT = 1
DECLARE @Saldo INT = 2000
BEGIN

	IF NOT EXISTS (SELECT * FROM ContaBancaria
					WHERE IdContaBancaria = @IdContaBancaria)
	BEGIN
		INSERT INTO ContaBancaria (
						IdContaBancaria,
						Titular,
						Saldo
							)
		VALUES			(
						@IdContaBancaria,
						@Titular,
						@Saldo
							)
	END
END