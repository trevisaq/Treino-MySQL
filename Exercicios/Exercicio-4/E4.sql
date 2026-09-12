SELECT 
	rv.id_venda,
	p.id_produto,
	rv.quantidade,
	p.preco AS 'Preço unitário',
	(p.preco * rv.quantidade) AS 'Valor total' -- Aqui crio o calculo do valor total da venda
FROM 
	registros_vendas rv
	INNER JOIN produtos p ON p.id_produto = rv.id_produto
WHERE
	(p.preco * rv.quantidade) > 500
ORDER BY
	(p.preco * rv.quantidade) DESC