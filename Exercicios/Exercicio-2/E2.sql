SELECT
	c.nome,
	c.sobrenome,
	c.email 
FROM 
	clientes c
WHERE
	c.nome LIKE 'a%' -- Verifica o começo
	OR c.nome LIKE '%a' -- Verifica o fim 
ORDER BY 
	c.nome