-- DDL

-- Criação da tabela Project
CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    department_id INT,
    project_name VARCHAR(30),
    project_location VARCHAR(30), -- Corrigido o nome da coluna para project_location
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Adicionando uma coluna na tabela WORK_IN
ALTER TABLE WORK_IN
ADD COLUMN hours_in_week INT; -- Corrigido a sintaxe para adicionar uma coluna

-- DML

-- INSERÇÃO DE DADOS
INSERT INTO Project VALUES (
  1, -- project_id
  123456789, -- department_id
  'Project X', -- project_name
  'Location Y' -- project_location
);

-- ATUALIZAÇÃO DE DADOS
UPDATE Project SET department_id = 5 WHERE project_id = 1; -- Corrigido o uso da coluna correta para a condição WHERE

-- EXCLUSÃO DE DADOS
DELETE FROM Project WHERE project_id = 1;

-- SELEÇÃO DE DADOS
SELECT * FROM Project;

-- TIPOS DE JOIN

-- CROSS JOIN
-- Retorna o produto cartesiano de duas tabelas
-- Exemplo:
SELECT * FROM Table1 CROSS JOIN Table2;

-- INNER JOIN
-- Retorna apenas os registros que possuem correspondência em ambas as tabelas
-- Exemplo:
SELECT * FROM Table1 INNER JOIN Table2 ON Table1.column_name = Table2.column_name;

-- LEFT OUTER JOIN
-- Retorna todos os registros da tabela à esquerda e os registros correspondentes da tabela à direita
-- Exemplo:
SELECT * FROM Table1 LEFT OUTER JOIN Table2 ON Table1.column_name = Table2.column_name;

-- RIGHT OUTER JOIN
-- Retorna todos os registros da tabela à direita e os registros correspondentes da tabela à esquerda
-- Exemplo:
SELECT * FROM Table1 RIGHT OUTER JOIN Table2 ON Table1.column_name = Table2.column_name;

-- FULL OUTER JOIN
-- Retorna todos os registros quando há uma correspondência em uma das tabelas
-- Exemplo:
SELECT * FROM Table1 FULL OUTER JOIN Table2 ON Table1.column_name = Table2.column_name;
