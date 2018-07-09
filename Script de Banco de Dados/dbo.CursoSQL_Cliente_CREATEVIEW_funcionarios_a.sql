USE CursoSQL
GO
IF OBJECT_ID('dbo.funcionarios_a', 'V') IS NOT NULL
BEGIN
    DROP VIEW dbo.funcionarios_a
END
GO
CREATE VIEW dbo.funcionarios_a
	AS
	SELECT * FROM Funcionario
	WHERE Salario >= 1700