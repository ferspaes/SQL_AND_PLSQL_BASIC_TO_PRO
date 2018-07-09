USE CursoSQL
GO

DECLARE @Descricao VARCHAR (50) = 'TV'
DECLARE @IdEstoque INT = 1
DECLARE @Quantidade INT = 5
BEGIN

	IF NOT EXISTS (SELECT * FROM Estoque
					WHERE IdEstoque = @IdEstoque)
	BEGIN
		INSERT INTO Estoque (
						IdEstoque,
						Descricao,
						Quantidade
							)
		VALUES			(
						@IdEstoque,
						@Descricao,
						@Quantidade
							)
	END
END