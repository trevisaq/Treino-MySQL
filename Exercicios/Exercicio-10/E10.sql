SELECT
	p.nome_produto, -- Coleto o nome dos produtos
	SUM(rv.quantidade) AS 'Quantidade total vendida' -- Somo toda as quantidades vendidas de cada produto
	SUM(p.preco * rv.quantidade) AS 'Faturamento Total' -- Calculo o faturamento total de cada produto
FROM 
	produtos p
	INNER JOIN registros_vendas rv -- Utilizo o INNER JOIN para trazer somente os produtos com registro de vendas
		ON rv.id_produto = p.id_produto
GROUP BY 
	p.nome_produto
ORDER BY
	SUM(p.preco * rv.quantidade) DESC