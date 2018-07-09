USE CursoSQL
GO
BEGIN
	SELECT Departamento, AVG (Salario) 
	FROM Funcionario
	GROUP BY Departamento
END