SELECT 
    -- Na linha abaixo utilizo a função RANK() para criar um ranking baseado no valor dentro do OVER
    -- (que no caso seria a ordenação do valor total gasto por cliente de forma decrescente)
	RANK() OVER(ORDER BY SUM(p.preco * rv.quantidade) DESC) AS 'Posição no ranking',
	c.nome,
	SUM(rv.quantidade) AS 'Quantidade total de produtos comprados',
	SUM(p.preco * rv.quantidade) AS 'Valor total gasto'
FROM
	clientes c
	INNER JOIN registros_vendas rv ON rv.id_cliente = c.id_cliente  
	INNER JOIN produtos p ON p.id_produto = rv.id_produto
GROUP BY c.nome