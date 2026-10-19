CREATE TABLE log_clientes_excluidos(
	id_log INT AUTO_INCREMENT PRIMARY KEY 
		COMMENT 'Chave primária do registro de log',
		
	id_cliente INT NOT NULL 
		COMMENT 'Chave estrangeira que referencia o cliente removido / deletado',

	nome_cliente VARCHAR(255) NOT NULL 
		COMMENT 'Nome do cliente removido / deletado',
	
	email_cliente  VARCHAR(255)
		COMMENT 'Email do cliente removido / deletado',

	data_entrada DATETIME
		COMMENT 'Data que o cliente foi adicionado na sua tabela',

	data_exclusao DATETIME NOT NULL 
		COMMENT 'Data da remoção / exclusão'
);