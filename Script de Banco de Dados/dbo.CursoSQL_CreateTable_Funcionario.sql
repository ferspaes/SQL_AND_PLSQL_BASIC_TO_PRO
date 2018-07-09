USE CursoSQL
GO
BEGIN
	IF NOT EXISTS (SELECT * FROM sysobjects WHERE NAME = 'Funcionario' AND xtype='U')
	    CREATE TABLE Funcionario (
									IdFuncionario INT NOT NULL IDENTITY(1,1),
									Nome VARCHAR (30) NOT NULL,
									Salario FLOAT NOT NULL DEFAULT 0,
									Departamento VARCHAR (30),
									PRIMARY KEY (IdFuncionario)
									);
END