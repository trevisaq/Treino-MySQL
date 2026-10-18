DELIMITER //

CREATE TRIGGER validar_quantidade_venda
BEFORE INSERT ON registros_vendas
FOR EACH ROW
BEGIN
    IF NEW.quantidade <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A quantidade deve ser maior que zero';
    END IF;
END //

DELIMITER ;