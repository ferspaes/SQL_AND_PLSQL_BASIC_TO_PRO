USE CursoSQL
GO
IF EXISTS (SELECT  * FROM sys.objects
           WHERE object_id = OBJECT_ID(N'usp_Pedido_DeletarNaoPago')
           AND type IN ( N'P', N'PC' ))
BEGIN 
	DROP PROCEDURE usp_Pedido_DeletarNaoPago
END

GO
	CREATE PROCEDURE usp_Pedido_DeletarNaoPago
		AS
		BEGIN
			DELETE FROM Pedido
			WHERE Pago = 'Não'
		END