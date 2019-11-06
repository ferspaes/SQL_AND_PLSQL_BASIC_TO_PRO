
	-- COMANDOS CITADOS
	
	BETWEEN
	
	UPDATE
	
	NOT
	
	IN
	
	DELETE
	
	-- EXERCÍCIOS
	
		-- 1
	
	UPDATE
		COMPRAS
	SET 
		OBSERVACAO = 'compras do dia dos namorados'
	WHERE
		DATA = '12-JUN-2010';
		
		-- 2
		
	UPDATE
		COMPRAS
	SET
		VALOR = VALOR + 10
	WHERE
		DATA < '01-JUN-2009';
		
		-- 3
		
	UPDATE
		COMPRAS
	SET
		OBSERVACAO = 'entregue antes de 2011',
		RECEBIDO = '1'
	WHERE
		DATA BETWEEN 
			'01-JUL-2009' 
		AND
			'01-JUL-2010';
			
		-- 4
		
	DELETE
		COMPRAS
	WHERE
		DATA BETWEEN
			'05-MAR-2009'
		AND
			'20-MAR-2009'
			
		-- 5
		
	SELECT
		*
	FROM
		COMPRAS
	WHERE
		NOT VALOR = 108
		
		-- 6
	
	