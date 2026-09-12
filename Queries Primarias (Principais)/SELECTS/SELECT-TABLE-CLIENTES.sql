SELECT 
	CONCAT(c.nome, ' ', c.sobrenome) AS 'Nome completo do cliente',
	c.email,
	c.data_create
FROM 
	clientes c
WHERE -- Descartando do select os clientes sem email cadastrado
	c.email IS NOT NULL 
	AND c.email != ''
ORDER BY 
	c.data_create ASC -- Ordenando pelos clientes "Mais antigos" (data de criação mais antiga)
