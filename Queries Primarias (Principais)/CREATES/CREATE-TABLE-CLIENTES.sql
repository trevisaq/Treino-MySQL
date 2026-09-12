USE sistema_vendas;

CREATE TABLE clientes(
	id_cliente INT AUTO_INCREMENT PRIMARY KEY 
		COMMENT 'Chave primária do registro',
	
	nome VARCHAR(100) NOT NULL 
		COMMENT 'Nome do cliente',
	
	sobrenome VARCHAR(100) NOT NULL 
		COMMENT 'Sobrenome / segundo nome do cliente',
	
	email VARCHAR(255) UNIQUE 
		COMMENT 'Email pessoal e unico do cliente',
	
	ativo BOOLEAN DEFAULT TRUE
		COMMENT 'Status do cliente (ativo/inativo)',
	
	data_create DATETIME DEFAULT CURRENT_TIMESTAMP 
		COMMENT 'Data de criação do registro do cliente'	
)

