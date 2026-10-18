DELIMITER //

CREATE TRIGGER registrar_data_venda
BEFORE INSERT ON registros_vendas
FOR EACH ROW
BEGIN
    SET NEW.data_venda = NOW();
END //

DELIMITER ;