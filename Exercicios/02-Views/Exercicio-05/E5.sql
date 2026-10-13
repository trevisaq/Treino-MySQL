CREATE VIEW view_relatorio_vendas AS
SELECT 
	rv.id_venda 'ID-VENDA',
	CONCAT_WS(' ', c.nome, c.sobrenome) AS 'NOME-CLIENTE',
	p.nome_produto AS 'NOME-PRODUTO',
	rv.quantidade AS 'QUANTIDADE',
	p.preco AS 'PRECO-UNITARIO',
	(rv.quantidade * p.preco) AS 'VALOR-TOTAL'
FROM 
	registros_vendas rv
	LEFT JOIN clientes c ON c.id_cliente = rv.id_cliente
	LEFT JOIN produtos p ON p.id_produto = rv.id_produto;


SELECT * FROM view_relatorio_vendas re 
WHERE re.`VALOR-TOTAL` > 500;