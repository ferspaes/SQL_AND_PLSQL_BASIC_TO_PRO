USE CursoSQL
GO
IF NOT EXISTS (SELECT * FROM sys.indexes 
			   WHERE NAME = 'departamentos' 
			   AND object_id = OBJECT_ID('Funcionario'))

    BEGIN
        CREATE INDEX departamentos 
		ON Funcionario (Departamento)
    END