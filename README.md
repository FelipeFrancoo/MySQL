# Comandos DDL no MySQL

![nuka_cola-removebg-preview (2)](https://github.com/FelipeFrancoo/POO/assets/163058758/2d8c706f-63e8-4cc8-9221-2d8507b86e05) Este repositório contém exemplos de comandos DDL no MySQL. Abaixo está a descrição de cada tipo de comandos.

## CREATE
| Comando          | Descrição                               | Exemplo                                                                                       |
|------------------|-----------------------------------------|-----------------------------------------------------------------------------------------------|
| **CREATE DATABASE** | Cria um novo banco de dados.          | ```sql CREATE DATABASE nome_do_banco_de_dados; ```                                            |
| **CREATE TABLE**    | Cria uma nova tabela.                  | ```sql CREATE TABLE nome_da_tabela ( coluna1 tipo_de_dado [constraints], coluna2 tipo_de_dado [constraints], ... ); ``` |
| **CREATE INDEX**    | Cria um índice em uma tabela.          | ```sql CREATE INDEX nome_do_indice ON nome_da_tabela (coluna1, coluna2, ...); ```             |
| **CREATE VIEW**     | Cria uma visão (view) do banco de dados. | ```sql CREATE VIEW nome_da_view AS SELECT coluna1, coluna2, ... FROM nome_da_tabela WHERE condição; ``` |

## ALTER
| Comando            | Descrição                                 | Exemplo                                                                                       |
|--------------------|-------------------------------------------|-----------------------------------------------------------------------------------------------|
| **ALTER DATABASE** | Altera a definição de um banco de dados.  | ```sql ALTER DATABASE nome_do_banco_de_dados [alterações]; ```                                |
| **ALTER TABLE**    | Altera a definição de uma tabela.         | ```sql ALTER TABLE nome_da_tabela ADD coluna tipo_de_dado [constraints]; ```                  |
|                    |                                           | ```sql ALTER TABLE nome_da_tabela DROP coluna; ```                                            |
|                    |                                           | ```sql ALTER TABLE nome_da_tabela MODIFY coluna tipo_de_dado [constraints]; ```               |

## DROP
| Comando          | Descrição                               | Exemplo                                                                                       |
|------------------|-----------------------------------------|-----------------------------------------------------------------------------------------------|
| **DROP DATABASE** | Exclui um banco de dados.                | ```sql DROP DATABASE nome_do_banco_de_dados; ```                                              |
| **DROP TABLE**    | Exclui uma tabela.                       | ```sql DROP TABLE nome_da_tabela; ```                                                         |
| **DROP INDEX**    | Exclui um índice de uma tabela.          | ```sql DROP INDEX nome_do_indice ON nome_da_tabela; ```                                       |
| **DROP VIEW**     | Exclui uma visão do banco de dados.      | ```sql DROP VIEW nome_da_view; ```                                                            |

## RENAME
| Comando          | Descrição                               | Exemplo                                                                                       |
|------------------|-----------------------------------------|-----------------------------------------------------------------------------------------------|
| **RENAME TABLE** | Renomeia uma tabela.                     | ```sql RENAME TABLE nome_da_tabela_antiga TO nome_da_tabela_nova; ```                         |

## TRUNCATE
| Comando          | Descrição                               | Exemplo                                                                                       |
|------------------|-----------------------------------------|-----------------------------------------------------------------------------------------------|
| **TRUNCATE**     | Remove todos os registros de uma tabela, mas mantém a estrutura da tabela. | ```sql TRUNCATE TABLE nome_da_tabela; ```                                                    |

# Comandos DML no MySQL

![nuka_cola-removebg-preview (2)](https://github.com/FelipeFrancoo/POO/assets/163058758/2d8c706f-63e8-4cc8-9221-2d8507b86e05) Este repositório contém exemplos de comandos DML no MySQL. Abaixo está a descrição de cada tipo de comando.

## INSERT
| Comando         | Descrição                                                                                               | Exemplo                                                                                                         |
|-----------------|---------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| **INSERT INTO** | Insere novos registros em uma tabela.                                                                   | ```sql INSERT INTO nome_da_tabela (coluna1, coluna2, ...) VALUES (valor1, valor2, ...); ```                    |

## UPDATE
| Comando         | Descrição                                                                                               | Exemplo                                                                                                         |
|-----------------|---------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| **UPDATE**      | Atualiza registros existentes em uma tabela.                                                            | ```sql UPDATE nome_da_tabela SET coluna1 = valor1, coluna2 = valor2, ... WHERE condição; ```                   |

## DELETE
| Comando         | Descrição                                                                                               | Exemplo                                                                                                         |
|-----------------|---------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| **DELETE FROM** | Exclui registros de uma tabela.                                                                         | ```sql DELETE FROM nome_da_tabela WHERE condição; ```                                                          |

## SELECT
| Comando         | Descrição                                                                                               | Exemplo                                                                                                         |
|-----------------|---------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| **SELECT**      | Recupera dados de uma tabela.                                                                           | ```sql SELECT coluna1, coluna2, ... FROM nome_da_tabela WHERE condição ORDER BY coluna1, coluna2, ...; ```     |
| **SELECT DISTINCT** | Retorna registros distintos.                                                                       | ```sql SELECT DISTINCT coluna1, coluna2, ... FROM nome_da_tabela; ```                                          |

## JOINs
| Comando         | Descrição                                                                                               | Exemplo                                                                                                         |
|-----------------|---------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| **INNER JOIN**  | Seleciona registros que têm correspondência em ambas as tabelas.                                        | ```sql SELECT alunos.nome, cursos.nome_curso FROM alunos INNER JOIN cursos ON alunos.curso_id = cursos.id; ``` |
| **LEFT JOIN**   | Seleciona todos os registros da tabela da esquerda e os correspondentes da tabela da direita.           | ```sql SELECT alunos.nome, cursos.nome_curso FROM alunos LEFT JOIN cursos ON alunos.curso_id = cursos.id; ```  |
| **RIGHT JOIN**  | Seleciona todos os registros da tabela da direita e os correspondentes da tabela da esquerda.           | ```sql SELECT alunos.nome, cursos.nome_curso FROM alunos RIGHT JOIN cursos ON alunos.curso_id = cursos.id; ``` |
| **FULL OUTER JOIN (Simulado)** | Seleciona todos os registros quando há uma correspondência na tabela da esquerda ou da direita (simulado com UNION). | ```sql SELECT alunos.nome, cursos.nome_curso FROM alunos LEFT JOIN cursos ON alunos.curso_id = cursos.id UNION SELECT alunos.nome, cursos.nome_curso FROM alunos RIGHT JOIN cursos ON alunos.curso_id = cursos.id; ``` |

## Subconsultas
| Comando         | Descrição                                                                                               | Exemplo                                                                                                         |
|-----------------|---------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| **Subconsulta em SELECT** | Consultas dentro de outras consultas (SELECT).                                               | ```sql SELECT nome, matricula FROM alunos WHERE curso_id = (SELECT id FROM cursos WHERE nome_curso = 'Matemática'); ``` |
| **Subconsulta em FROM**   | Consultas dentro de outras consultas (FROM).                                                 | ```sql SELECT sub.nome, sub.total FROM (SELECT nome, COUNT(*) AS total FROM alunos GROUP BY nome) AS sub; ```  |

# Comandos DCL no MySQL

![nuka_cola-removebg-preview (2)](https://github.com/FelipeFrancoo/POO/assets/163058758/2d8c706f-63e8-4cc8-9221-2d8507b86e05) Este repositório contém exemplos de comandos DCL no MySQL. Abaixo está a descrição de cada tipo de comando.

## GRANT
| Comando         | Descrição                                                                                      | Exemplo                                                                                     |
|-----------------|------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| **GRANT**       | Concede permissões específicas a usuários ou papéis.                                            | ```sql GRANT SELECT, INSERT ON banco_de_dados.tabela TO 'usuario'@'localhost'; ```           |
| **REVOKE**      | Revoga permissões concedidas anteriormente.                                                      | ```sql REVOKE INSERT ON banco_de_dados.tabela FROM 'usuario'@'localhost'; ```               |

# Comandos DQL no MySQL

![nuka_cola-removebg-preview (2)](https://github.com/FelipeFrancoo/POO/assets/163058758/2d8c706f-63e8-4cc8-9221-2d8507b86e05) Este repositório contém exemplos de comandos DQL no MySQL. Abaixo está a descrição de cada tipo de comando.

## SELECT
| Comando         | Descrição                                                                                      | Exemplo                                                                                     |
|-----------------|------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| **SELECT**      | Recupera dados de uma tabela.                                                                   | ```sql SELECT coluna1, coluna2, ... FROM nome_da_tabela WHERE condição ORDER BY coluna1; ``` |
| **SELECT DISTINCT** | Retorna registros distintos.                                                               | ```sql SELECT DISTINCT coluna FROM nome_da_tabela; ```                                         |

# Comandos TCL no MySQL

![nuka_cola-removebg-preview (2)](https://github.com/FelipeFrancoo/POO/assets/163058758/2d8c706f-63e8-4cc8-9221-2d8507b86e05) Este repositório contém exemplos de comandos TCL no MySQL. Abaixo está a descrição de cada tipo de comando.

## COMMIT
| Comando         | Descrição                                                                                      | Exemplo                                                                                     |
|-----------------|------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| **COMMIT**      | Confirma a transação atual.                                                                     | ```sql COMMIT; ```                                                                           |

## ROLLBACK
| Comando         | Descrição                                                                                      | Exemplo                                                                                     |
|-----------------|------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| **ROLLBACK**    | Desfaz a transação atual.                                                                       | ```sql ROLLBACK; ```                                                                         |

## SAVEPOINT
| Comando         | Descrição                                                                                      | Exemplo                                                                                     |
|-----------------|------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| **SAVEPOINT**   | Define um ponto de salvamento dentro da transação.                                               | ```sql SAVEPOINT ponto_salvamento; ```                                                        |




