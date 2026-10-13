DELIMITER //
CREATE PROCEDURE faturamento_produto(idInformado INT)
BEGIN
	SELECT 
		p.nome_produto AS 'NOME-PRODUTO',
		IFNULL(SUM(rv.quantidade), 'Sem vendas registradas.') AS 'QUANTIDADE-VENDIDA',
		IFNULL((SUM(rv.quantidade) * p.preco), 'Sem vendas registradas.') AS 'FATURAMENTO'
	FROM 
		produtos p
		LEFT JOIN registros_vendas rv ON rv.id_produto = p.id_produto
	WHERE 
		p.id_produto = idInformado
	GROUP BY
		p.id_produto;
END //
DELIMITER ;

-- CALL faturamento_produto(1);