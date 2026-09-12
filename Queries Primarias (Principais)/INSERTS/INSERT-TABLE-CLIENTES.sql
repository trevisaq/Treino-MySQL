USE sistema_vendas;

INSERT INTO 
	clientes (nome, sobrenome, email, ativo, data_create)
VALUES 
	('Andersson', 'Felipino', 'Andf569@gmail.com', TRUE, CURRENT_TIME),
	('Marcia', 'Oconnors', 'mama343jovem@gmail.com', TRUE, CURRENT_TIME),
	('Gabriel', 'Castor', NULL, TRUE, CURRENT_TIME),
	('Antonio', 'Carlos', 'antoniocTre32@gmail.com', FALSE, CURRENT_TIME);