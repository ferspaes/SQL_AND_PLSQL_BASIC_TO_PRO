USE CursoSQL
GO
BEGIN
	IF NOT EXISTS (SELECT * FROM sysobjects WHERE NAME = 'ContaBancaria' AND xtype='U')
	    CREATE TABLE ContaBancaria (
	        IdContaBancaria INT NOT NULL,
			Titular VARCHAR (20) NOT NULL,
			Saldo INT,
			PRIMARY KEY(IdContaBancaria)
	    ) 
END