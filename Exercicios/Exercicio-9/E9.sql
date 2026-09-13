SELECT
	SUM(rv.quantidade) AS 'Soma total de produtos vendidos',
	COUNT(rv.id_venda) AS 'Contagem total de vendas registradas',
	ROUND(AVG(rv.quantidade), 0) AS 'Média (arredondada) da quantidade por venda',
	MAX(rv.quantidade) AS 'Número máximo de produtos já vendidos em uma única venda',
	MIN(rv.quantidade) AS 'Número mínimo de produtos já vendidos em uma única venda'
FROM 
	registros_vendas rv
	LEFT JOIN produtos p 
		ON p.id_produto = rv.id_produto