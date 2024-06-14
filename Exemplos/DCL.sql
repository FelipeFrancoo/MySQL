## Exemplo de GRANT:
  
-- Concedendo permissões para SELECT e INSERT em uma tabela específica
GRANT SELECT, INSERT ON produtos TO 'usuario'@'localhost';

-- Concedendo todas as permissões para um usuário específico
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'senha';


## Exemplo de REVOKE:

-- Revogando permissões de DELETE em uma tabela específica
REVOKE DELETE ON clientes FROM 'usuario'@'localhost';

-- Revogando todas as permissões de um usuário específico
REVOKE ALL PRIVILEGES ON *.* FROM 'admin'@'localhost';

