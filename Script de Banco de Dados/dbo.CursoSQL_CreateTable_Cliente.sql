USE CursoSQL
GO
BEGIN
	IF NOT EXISTS (SELECT * FROM sysobjects WHERE NAME = 'Cliente' AND xtype='U')
	    CREATE TABLE Cliente (
	        IdCliente INT NOT NULL,
			Nome VARCHAR (20) NOT NULL,
			QuemIndicou INT,
			PRIMARY KEY(IdCliente),
			CONSTRAINT fk_Cliente FOREIGN KEY (QuemIndicou) REFERENCES Cliente (IdCliente)
	    ) 
END