## Exemplo de COMMIT:
  
-- Confirmando as alterações feitas em uma transação
COMMIT;


## Exemplo de ROLLBACK:

-- Desfazendo as alterações feitas em uma transação
ROLLBACK;


## Exemplo de SAVEPOINT:

-- Definindo um ponto de salvamento dentro de uma transação
SAVEPOINT antes_update;

-- Realizando operações dentro da transação

-- Desfazendo alterações até o ponto de salvamento
ROLLBACK TO antes_update;

-- Confirmando as alterações até o ponto de salvamento
COMMIT;
