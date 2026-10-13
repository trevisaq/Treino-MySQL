DELIMITER //
CREATE PROCEDURE produtos_acima_preco(precoInformado INT)
BEGIN
	SELECT * FROM produtos p 
	WHERE p.preco > precoInformado;
END //
DELIMITER ;

-- CALL produtos_acima_preco(150);