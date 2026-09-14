SELECT
	p.nome_produto,
	p.preco
FROM
	produtos p
WHERE 
   -- Na linha de baixo faço uma subquery para retornar o preco médio de todos os produtos juntos
    p.preco > (SELECT AVG(p.preco) FROM produtos p)
ORDER BY 
    p.preco DESC