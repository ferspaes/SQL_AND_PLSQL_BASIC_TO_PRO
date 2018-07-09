USE CursoSQL

	IF EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Gatilho_Limpa_Estoque]'))
	DROP TRIGGER [dbo].Gatilho_Limpa_Estoque
GO

CREATE TRIGGER Gatilho_Limpa_Estoque
	ON Estoque
	FOR INSERT
	AS
	BEGIN
		EXEC [dbo].[usp_Pedido_DeletarNaoPago]
	END