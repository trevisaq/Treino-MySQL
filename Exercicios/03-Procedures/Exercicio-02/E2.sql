DELIMITER //
CREATE PROCEDURE cadastrar_cliente(nomeInformado VARCHAR(100), sobrenomeInformado VARCHAR(100), emailInformado VARCHAR(255))
BEGIN
	INSERT INTO clientes (nome, sobrenome, email)
	VALUES (nomeInformado, sobrenomeInformado, emailInformado);
END //
DELIMITER ;

-- CALL cadastrar_cliente('Maicon', 'Duster', 'Dmas13@outlook.com')