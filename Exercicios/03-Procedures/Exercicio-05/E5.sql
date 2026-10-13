DELIMITER //
CREATE PROCEDURE vendas_cliente(idClienteInformado INT)
BEGIN 
	SELECT 
		CONCAT_WS(' ',c.nome, c.sobrenome) AS 'NOME-CLIENTE',
		rv.id_venda AS 'ID-VENDA',
		p.nome_produto AS 'PRODUTO',
		rv.quantidade AS 'QUANTIDADE',
		p.preco AS 'PRECO-UNITARIO-PRODUTO',
		(p.preco * rv.quantidade) AS 'TOTAL-GASTO'
	FROM 
		clientes c
		LEFT JOIN registros_vendas rv ON rv.id_cliente = c.id_cliente
		LEFT JOIN produtos p ON p.id_produto = rv.id_produto
	WHERE 
		c.id_cliente = idClienteInformado
	ORDER BY 
		rv.id_venda ASC;
END //
DELIMITER ;