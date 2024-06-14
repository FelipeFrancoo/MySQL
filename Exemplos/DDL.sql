## Exemplos de CREATE:

-- Criando uma nova tabela para armazenar pedidos
CREATE TABLE pedidos (
    numero_pedido INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    data_pedido DATE NOT NULL,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Criando um novo índice na tabela de produtos
CREATE INDEX idx_nome_produto ON produtos(nome);


## Exemplo de ALTER:
  
-- Adicionando uma nova coluna à tabela de clientes
ALTER TABLE clientes ADD cidade VARCHAR(50);

-- Alterando o tipo de dado de uma coluna na tabela de pedidos
ALTER TABLE pedidos MODIFY total DECIMAL(12, 2);


## Exemplo de DROP:
  
-- Excluindo a tabela de logs
DROP TABLE logs;

-- Removendo um índice da tabela de produtos
DROP INDEX idx_nome_produto ON produtos;


## Exemplo de RENAME:
  
-- Renomeando a tabela de funcionarios para colaboradores
RENAME TABLE funcionarios TO colaboradores;


## Exemplo de TRUNCATE:
  
-- Removendo todos os registros da tabela de transações
TRUNCATE TABLE transacoes;



