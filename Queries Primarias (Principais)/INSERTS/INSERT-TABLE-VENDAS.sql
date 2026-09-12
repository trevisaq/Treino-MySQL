USE sistema_vendas;

INSERT INTO
	registros_vendas (id_cliente, id_produto, quantidade, data_venda)
VALUES 
	(2, 5, 1, CURRENT_TIME), 
	(2, 8, 1, CURRENT_TIME), 
	(2, 9, 1, CURRENT_TIME), 
	(3, 9, 3, CURRENT_TIME), 
	(1, 9, 1, CURRENT_TIME), 
	(1, 2, 2, CURRENT_TIME), 
	(3, 2, 2, CURRENT_TIME);