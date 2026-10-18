-- CREATE TABLE log_clientes_excluidos(
-- 	id_log INT AUTO_INCREMENT PRIMARY KEY 
-- 		COMMENT 'Chave primária do registro de log',
		
-- 	id_cliente INT NOT NULL 
-- 		COMMENT 'Chave estrangeira que referencia o cliente removido / deletado',

-- 	nome_cliente VARCHAR(255) NOT NULL 
-- 		COMMENT 'Nome do cliente removido / deletado',
	
-- 	email_cliente  VARCHAR(255)
-- 		COMMENT 'Email do cliente removido / deletado',

-- 	data_entrada DATETIME
-- 		COMMENT 'Data que o cliente foi adicionado na sua tabela',

-- 	data_exclusao DATE NOT NULL 
-- 		COMMENT 'Data da remoção / exclusão'
-- );

DELIMITER //

CREATE TRIGGER registrar_remocao_cliente
BEFORE DELETE ON clientes 
FOR EACH ROW
BEGIN
   INSERT INTO log_clientes_excluidos (id_cliente, nome_cliente, email_cliente, data_entrada,  data_exclusao)
   VALUES (OLD.id_cliente, CONCAT_WS(' ', OLD.nome, OLD.sobrenome), OLD.email, OLD.data_create, CURRENT_TIMESTAMP);
END //

DELIMITER ;