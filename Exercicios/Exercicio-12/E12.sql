SELECT 
	c.nome AS 'Nome do cliente',
	SUM(rv.quantidade) AS 'Quantidade de produtos comprados',
	SUM(p.preco * rv.quantidade) AS 'Valor total gasto'
FROM 
	registros_vendas rv
	INNER JOIN clientes c ON c.id_cliente = rv.id_cliente
	INNER JOIN produtos p ON p.id_produto = rv.id_produto
	
GROUP BY c.nome -- Agrupando pelo nome dos clientes
HAVING SUM(p.preco * rv.quantidade) > 1000 -- Utilizando o HAVING para filtrar pelos que gastaram acima de 1000

ORDER BY	
	-- Ordenando pelos que mais gastaram
	SUM(p.preco * rv.quantidade) DESC