USE CursoSQL
GO
BEGIN TRANSACTION
	UPDATE ContaBancaria
	SET Saldo = Saldo - 100
	WHERE IdContaBancaria = 1

	UPDATE ContaBancaria
	SET Saldo = Saldo + 100
	WHERE IdContaBancaria = 2

	IF @@ERROR = 0
COMMIT TRAN
ELSE
ROLLBACK