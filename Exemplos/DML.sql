## Exemplos de INSERT:

-- Inserindo um novo cliente na tabela
INSERT INTO clientes (nome, email, telefone) VALUES ('João Silva', 'joao.silva@example.com', '(11) 98765-4321');

-- Inserindo múltiplos produtos de uma vez
INSERT INTO produtos (nome, preco) VALUES ('Smartphone', 1500), ('Notebook', 3000), ('Tablet', 800);


## Exemplo de UPDATE:

-- Atualizando o preço de um produto específico
UPDATE produtos SET preco = 1600 WHERE nome = 'Smartphone';

-- Atualizando múltiplas colunas com condição
UPDATE clientes SET status = 'Inativo', data_ultimo_acesso = NOW() WHERE data_ultimo_acesso < '2023-01-01';


##Exemplo de DELETE:
  
-- Excluindo um cliente específico
DELETE FROM clientes WHERE id = 10;

-- Excluindo todos os registros de uma tabela
DELETE FROM logs;

