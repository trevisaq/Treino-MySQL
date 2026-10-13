DELIMITER //
CREATE PROCEDURE buscar_cliente(id_desejado INT)
BEGIN
    SELECT
        c.id_cliente,
        c.nome,
        c.sobrenome,
        c.email
    FROM clientes c
    WHERE c.id_cliente = id_desejado;
END //
DELIMITER ;

-- CALL buscar_cliente(2);