SELECT
	p.nome_produto,
	SUM(rv.quantidade) AS 'Quantidade total vendida' ,
	SUM(p.preco * rv.quantidade) AS 'Faturamento Total'
FROM 
	registros_vendas rv
	INNER JOIN produtos p ON p.id_produto = rv.id_produto
GROUP BY
	p.nome_produto
ORDER BY
	SUM(p.preco * rv.quantidade) DESC
LIMIT 1 -- Limito a apenas um registro para visualizar apenas o MAIS bem faturado