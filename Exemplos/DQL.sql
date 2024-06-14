## Exemplos de SELECT:

-- Selecionando todos os registros de uma tabela
SELECT * FROM produtos;

-- Selecionando registros específicos com condição
SELECT nome, preco FROM produtos WHERE categoria = 'Eletrônicos';

-- Utilizando funções agregadas para calcular valores
SELECT AVG(valor) AS media_valores FROM vendas WHERE data BETWEEN '2023-01-01' AND '2023-12-31';

-- Utilizando JOIN para combinar dados de múltiplas tabelas
SELECT clientes.nome, pedidos.numero_pedido FROM clientes INNER JOIN pedidos ON clientes.id = pedidos.cliente_id;


## Exemplo de SELECT DISTINCT:
  
-- Selecionando valores distintos de uma coluna
SELECT DISTINCT categoria FROM produtos;

-- Selecionando valores distintos com ORDER BY
SELECT DISTINCT cidade FROM clientes ORDER BY cidade;
