USE sistema_vendas;

INSERT INTO
	registros_vendas (id_cliente, id_produto, quantidade, data_venda)
VALUES 
	(2, 5, 1, CURRENT_TIME), -- Cliente com ID 2 comprou produto de ID 5 (Marcia -> Shorts)
	(1, 2, 2, CURRENT_TIME), -- Cliente com ID 1 comprou produto de ID 2 (Andersson -> Tenis)
	(3, 2, 2, CURRENT_TIME); -- Cliente com ID 3 comprou produto de ID 8 (Gabriel -> Pregos)