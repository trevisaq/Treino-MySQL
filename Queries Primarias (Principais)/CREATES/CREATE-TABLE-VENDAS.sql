USE sistema_vendas;

CREATE TABLE registros_vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY 
        COMMENT 'Chave primária do registro para diferenciar as vendas',

    id_cliente INT NOT NULL 
        COMMENT 'Chave estrangeira referente ao cliente da compra',

    id_produto INT NOT NULL 
        COMMENT 'Chave estrangeira referente ao produto comprado',

    quantidade INT NOT NULL 
        COMMENT 'Quantidade do produto comprado',

    data_venda DATETIME NOT NULL 
        COMMENT 'Data em que a venda foi realizada',

    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);