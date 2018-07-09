USE CursoSQL
GO

DECLARE @Descricao VARCHAR (20) = 'TV'
DECLARE @IdPedido INT = 1
DECLARE @Valor FLOAT = 3000
DECLARE @Pago VARCHAR (3) = 'Não'

BEGIN

	IF NOT EXISTS (SELECT * FROM Pedido
					WHERE IdPedido = @IdPedido)
	BEGIN
		INSERT INTO Pedido (
						IdPedido,
						Descricao,
						Valor,
						Pago
							)
		VALUES			(
						@IdPedido,
						@Descricao,
						@Valor,
						@Pago
							)
	END
END