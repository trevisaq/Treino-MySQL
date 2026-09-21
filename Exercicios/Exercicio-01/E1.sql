SELECT 
	p.nome_produto,
	p.preco
FROM 
	produtos p
WHERE 
	p.preco BETWEEN 100 AND 500 
   -- Função Between para filtrar os produtos com o preço entre 100 e 500  
   -- p.preco >= 100 and p.preco <= 500 -- (Outra forma de resolução)
ORDER BY
	p.preco DESC