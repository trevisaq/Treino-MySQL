SELECT 
	p.nome_produto,
	p.preco,
    -- Nessa query utilizo a função "ROUND" para arredondar o valor do preço com desconto em duas casas decimais.
	ROUND(p.preco - (p.preco * 10 / 100), 2) AS 'preco_desconto',
	p.classe,
	p.estoque
FROM 
	produtos p
WHERE
	p.preco > 200