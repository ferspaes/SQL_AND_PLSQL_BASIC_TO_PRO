USE CursoSQL
GO
BEGIN
	IF NOT EXISTS (SELECT * FROM sysobjects 
				   WHERE NAME = 'Veiculo' 
				   AND xtype='U')
	    CREATE TABLE Veiculo (
								IdVeiculo INT NOT NULL IDENTITY (1,1),
								IdFuncionario INT NOT NULL,
								Modelo VARCHAR	(45) NOT NULL DEFAULT '',
								Placa VARCHAR (10) DEFAULT '',
								PRIMARY KEY (IdVeiculo),
								CONSTRAINT fk_IdFuncionario FOREIGN KEY (IdFuncionario) REFERENCES Funcionario (IdFuncionario)
									); 
END