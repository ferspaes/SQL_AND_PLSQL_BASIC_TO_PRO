USE CursoSQL
GO

DECLARE @Nome VARCHAR (20) = 'André'
DECLARE @IdCliente INT = 4
DECLARE @QuemIndicou INT = 1
BEGIN

	IF NOT EXISTS (SELECT * FROM Cliente
					WHERE IdCliente = @IdCliente)
	BEGIN
		INSERT INTO Cliente (
						IdCliente,
						Nome,
						QuemIndicou
							)
		VALUES			(
						@IdCliente,
						@Nome,
						@QuemIndicou
							)
	END
END