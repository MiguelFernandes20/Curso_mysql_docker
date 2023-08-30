-- Principais comandos da linguagem SQL (Structured Query Language):

-- SELECT: Recupera dados de uma ou mais tabelas.
SELECT column1, column2

--  FROM: Especifica as tabelas das quais os dados serão recuperados.
SELECT column1, column2
FROM table_name;
WHERE: Filtra os registros com base em uma condição.
SELECT column1, column2
FROM table_name
WHERE condition;

-- GROUP BY: Agrupa os resultados com base em uma ou mais colunas.
SELECT column1, SUM(column2)
FROM table_name
GROUP BY column1;

-- HAVING: Filtra os grupos resultantes com base em uma condição.
SELECT column1, SUM(column2)
FROM table_name
GROUP BY column1
HAVING SUM(column2) > 100;

-- ORDER BY: Ordena os resultados com base em uma ou mais colunas.
SELECT column1, column2
FROM table_name
ORDER BY column1 ASC, column2 DESC;
LIMIT: Limita o número de resultados retornados por uma consulta.
SELECT column1, column2
FROM table_name
LIMIT 10;

-- Comandos de Manipulação de Dados:

-- INSERT INTO: Insere novos registros em uma tabela.
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);

-- UPDATE: Atualiza registros existentes em uma tabela.
UPDATE table_name
SET column1 = new_value1, column2 = new_value2
WHERE condition;

-- DELETE FROM: Remove registros de uma tabela.
DELETE FROM table_name
WHERE condition;

-- ALTER TABLE: Modifica a estrutura de uma tabela (adicionar, modificar ou excluir colunas).
ALTER TABLE table_name
ADD column_name datatype;
CREATE TABLE: Cria uma nova tabela com a estrutura especificada.
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    ...
);

-- DROP TABLE: Exclui uma tabela e seus dados permanentemente.
DROP TABLE table_name;

-- Comandos de Controle de Acesso:

-- GRANT: Concede privilégios a usuários ou papéis.
GRANT privilege_type
ON object_name
TO user_name;

-- REVOKE: Revoga privilégios concedidos anteriormente.
REVOKE privilege_type
ON object_name
FROM user_name;

-- DENY: Nega explicitamente certos privilégios a usuários.
DENY privilege_type
ON object_name
TO user_name;

-- Comandos de Transação:

BEGIN: Inicia uma transação.
COMMIT: Confirma uma transação, fazendo suas mudanças serem permanentes.
ROLLBACK: Desfaz uma transação não confirmada, revertendo as mudanças.

Comandos de Gerenciamento de Banco de Dados:

-- CREATE DATABASE: Cria um banco de dados.
CREATE DATABASE database_name;

-- USE: Seleciona um banco de dados específico para ser usado.
USE database_name;

-- SHOW DATABASES: Mostra uma lista de todos os bancos de dados disponíveis.
ALTER DATABASE: Modifica as propriedades de um banco de dados.
ALTER DATABASE database_name
SET property = value;

-- DROP DATABASE: Exclui um banco de dados e todos os seus objetos.
DROP DATABASE database_name;