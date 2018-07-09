USE CursoSQL
GO
BEGIN
	IF NOT EXISTS (SELECT * FROM sysobjects WHERE NAME = 'Estoque' AND xtype='U')
	    CREATE TABLE Estoque (
	        IdEstoque INT NOT NULL,
			Descricao VARCHAR (50) NOT NULL,
			Quantidade INT NOT NULL,
			PRIMARY KEY(IdEstoque)
	    ) 
END