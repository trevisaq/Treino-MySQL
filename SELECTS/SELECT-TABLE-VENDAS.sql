SELECT 
-- 	rv.id_cliente, 
-- 	rv.id_produto,
	c.nome AS 'Nome do cliente',
	p.nome_produto AS 'Nome do produto',
	p.classe,
	rv.quantidade
FROM 
	registros_vendas rv
	JOIN clientes c ON c.id_cliente = rv.id_cliente
	JOIN produtos p ON p.id_produto = rv.id_produto
ORDER BY 
	rv.quantidade DESC