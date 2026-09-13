SELECT
    -- A linha abaixo calcula o faturamento total baseado na soma do preço 
    -- de cada produto individual mutiplicado pelo seu respectivo numero de 
    -- vezes que foi comprado
	ROUND(SUM(p.preco * rv.quantidade), 2) AS 'Faturamento Total das vendas'
FROM 
	registros_vendas rv
	INNER JOIN produtos p
		ON p.id_produto = rv.id_produto