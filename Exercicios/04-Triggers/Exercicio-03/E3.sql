-- CREATE TABLE historico_precos(
-- 	id_historico INT AUTO_INCREMENT PRIMARY KEY 
-- 		COMMENT 'Chave primária do registro de historico',
		
-- 	id_produto INT NOT NULL 
-- 		COMMENT 'Chave estrangeira que referencia o produto comprado',

-- 	preco_antigo FLOAT NOT NULL 
-- 		COMMENT 'Preco antes da atualização',
	
-- 	preco_novo FLOAT NOT NULL 
-- 		COMMENT 'Preco depois da atualização',
	
-- 	data_alteracao DATE NOT NULL 
-- 		COMMENT 'Data da atualização',
		
-- 	FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)		
	
-- );

DELIMITER //

CREATE TRIGGER registrar_alteracao_preco
AFTER UPDATE ON produtos
FOR EACH ROW
BEGIN
    IF NEW.preco <> OLD.preco THEN
       INSERT INTO historico_precos (id_produto, preco_antigo, preco_novo, data_alteracao)
       VALUES (NEW.id_produto, OLD.preco, NEW.preco, CURRENT_TIMESTAMP)
    END IF;
END //

DELIMITER ;