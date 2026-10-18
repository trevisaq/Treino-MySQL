DELIMITER //

CREATE TRIGGER atualizar_estoque_produto
BEFORE INSERT ON registros_vendas
FOR EACH ROW
BEGIN
    DECLARE estoque_atual INT;

    SELECT estoque INTO estoque_atual
    FROM produtos
    WHERE id_produto = NEW.id_produto;

    IF estoque_atual < NEW.quantidade THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A quantidade vendida excede o estoque disponível';
    END IF;

    UPDATE produtos
    SET estoque = estoque - NEW.quantidade
    WHERE id_produto = NEW.id_produto;
END //

DELIMITER ;