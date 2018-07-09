USE CursoSQL
GO
BEGIN
	SELECT f.Nome FROM Funcionario AS f (NOLOCK)
		WHERE f.Departamento IN 
			(
				SELECT f.Departamento FROM Funcionario AS f (ROWLOCK)
				GROUP BY f.Departamento
				HAVING AVG (f.Salario) > 2500
			)
END