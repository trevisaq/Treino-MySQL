CREATE VIEW view_detalhes_vendas AS
SELECT 
	rv.id_venda AS 'ID-VENDA',
	p.nome_produto AS 'NOME-PRODUTO',
	rv.quantidade AS 'QUANTIDADE',
	p.preco AS 'PRECO-UNITARIO',
	(p.preco * rv.quantidade) AS 'VALOR-TOTAL'
FROM 
	registros_vendas rv
	INNER JOIN produtos p ON p.id_produto = rv.id_produto
