SELECT
	-- 	rv.id_venda,
	c.id_cliente,
	c.nome
FROM
	clientes c
	LEFT JOIN registros_vendas rv 
		ON rv.id_cliente = c.id_cliente
WHERE 
	-- O ID da venda deve ser nulo visto que os clientes que realizaram compras
	-- Terão algum registro na tabela "rv", portanto terão algum ID de venda vinculado
	rv.id_venda IS NULL