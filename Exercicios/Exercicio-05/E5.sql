SELECT
	c.nome AS 'Nome do cliente',
	p.nome_produto,
	rv.quantidade,
	p.preco AS 'Preço unitário',
	(rv.quantidade * p.preco) AS 'Valor total'
FROM 
	registros_vendas rv
	INNER JOIN clientes c ON c.id_cliente = rv.id_cliente
	INNER JOIN produtos p ON p.id_produto = rv.id_produto
ORDER BY 
	(rv.quantidade * p.preco) DESC