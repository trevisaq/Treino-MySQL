USE sistema_vendas;

CREATE TABLE produtos(
	id_produto INT AUTO_INCREMENT PRIMARY KEY 
		COMMENT 'Chave primária do registro',
		
	nome_produto VARCHAR(100) NOT NULL 
		COMMENT 'Nome do produto',

	preco DECIMAL(10,2) NOT NULL
		COMMENT 'Preço do produto',

	classe VARCHAR(100) NOT NULL 
		COMMENT 'Classe que define o produto (ex: Shampoo = limpeza)',
	
	estoque INT DEFAULT 0 
		COMMENT 'Quantidade disponível no estoque'
)