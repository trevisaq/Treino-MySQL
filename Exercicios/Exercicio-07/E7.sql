SELECT 
	p.id_produto,
	p.nome_produto,
	p.preco
FROM
	produtos p
	LEFT JOIN registros_vendas rv 
		ON rv.id_produto = p.id_produto
WHERE
	-- (Mesma lógica do exercicio anterior)
	rv.id_venda IS NULL
ORDER BY
	p.nome_produto