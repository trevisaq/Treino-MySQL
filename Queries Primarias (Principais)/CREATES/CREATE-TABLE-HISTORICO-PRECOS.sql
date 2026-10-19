CREATE TABLE historico_precos(
	id_historico INT AUTO_INCREMENT PRIMARY KEY 
		COMMENT 'Chave primária do registro de historico',
		
	id_produto INT NOT NULL 
		COMMENT 'Chave estrangeira que referencia o produto comprado',

	preco_antigo FLOAT NOT NULL 
		COMMENT 'Preco antes da atualização',
	
	preco_novo FLOAT NOT NULL 
		COMMENT 'Preco depois da atualização',
	
	data_alteracao DATETIME NOT NULL 
		COMMENT 'Data da atualização',
		
	FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)		
	
);

-- Essa tabela só é utilizada no exercicio 03 de Triggers.
-- Portanto não é necessário cria-la antes disto.