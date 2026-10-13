CREATE VIEW view_clientes AS 
SELECT 
	c.id_cliente AS 'ID-CLIENTE',
	CONCAT(c.nome, ' ', c.sobrenome) AS 'NOME-COMPLETO',
	c.email AS 'EMAIL'
FROM clientes c

-- A view, após ser criada, funciona como uma tabela salva no banco.
-- Mas diferente de uma tabela, ela salva o registro do select. 
-- Ou seja, caso a tabela que a view está olhando atualize, a view 
-- mostra atualizado corretamente.