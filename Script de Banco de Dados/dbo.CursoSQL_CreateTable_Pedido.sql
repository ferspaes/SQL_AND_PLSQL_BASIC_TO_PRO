USE CursoSQL
GO
BEGIN
	IF NOT EXISTS (SELECT * FROM sysobjects WHERE NAME = 'Pedido' AND xtype='U')
	    CREATE TABLE Pedido (
	        IdPedido INT NOT NULL,
			Descricao VARCHAR (20) NOT NULL,
			Valor FLOAT NOT NULL DEFAULT 0,
			Pago VARCHAR (3) NOT NULL DEFAULT 'Não'
			PRIMARY KEY(IdPedido)
	    ) 
END