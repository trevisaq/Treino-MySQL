CREATE VIEW view_faturamento_produtos AS 
SELECT 
	p.id_produto AS 'ID-PRODUTO',
	p.nome_produto AS 'NOME-PRODUTO', 
	SUM(rv.quantidade) AS 'QUANTIDADE-VENDIDA',
	SUM(rv.quantidade * p.preco) AS 'FATURAMENTO-TOTAL'
FROM 
	produtos p
	JOIN registros_vendas rv ON rv.id_produto = p.id_produto
GROUP BY 
	p.id_produto