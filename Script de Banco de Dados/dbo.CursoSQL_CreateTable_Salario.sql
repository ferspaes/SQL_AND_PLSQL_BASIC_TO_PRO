USE CursoSQL
GO
BEGIN
	IF NOT EXISTS (SELECT * FROM sysobjects WHERE NAME = 'Salario' AND xtype='U')
	    CREATE TABLE Salario (
								Faixa VARCHAR (45) NOT NULL,
								Inicio FLOAT NOT NULL,
								Fim FLOAT NOT NULL,
								PRIMARY KEY (Faixa)
								 ); 
END