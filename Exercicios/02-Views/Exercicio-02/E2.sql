CREATE VIEW view_produtos AS
SELECT
	p.id_produto,
	p.nome_produto,
	p.preco
FROM produtos p
ORDER BY p.preco DESC