
CREATE TABLE localizacao ( 
    codigolocal INTEGER,
    deptnumero INTEGER,
    nomelocal VARCHAR(30),
    PRIMARY KEY(codigolocal) 
    FOREIGN KEY (deptnumero)REFERENCES departamento (dnumero)
 );


INSERT INTO localizacao VALUES (1,5,'São Paulo'),(2,4,'Curitiba'),(3,1,'Belo Horizonte');

UPDATE departamento set gerentecpf = '1234555555' where dnumero = 1;

SELECT pnome, unome
FROM funcionario 
WHERE salario > 30000;

SELECT pnome
FROM funcionario as f
INNER JOIN departamento as d on f.numerodept = d.dnumero 
WHERE d.dnome = 'Pesquisa';

-- trabalhadas.
SELECT f.unome, t.horas
FROM funcionario as f
INNER JOIN trabalhaem as t on f.cpf = t.funcionariocpf
WHERE t.projetonumero = 3
ORDER BY t.horas DESC;

SELECT f.pnome, f.unome
FROM funcionario as f
INNER JOIN trabalhaem as t on f.cpf = t.funcionariocpf
INNER JOIN projeto as p on t.projetonumero = p.projnumero
WHERE p.projnome = 'Transmogrifador';

SELECT f.pnome,f.unome, s.pnome, s.unome
FROM funcionario as f
LEFT JOIN funcionario as s on f.supervisorcpf = s.cpf;

SELECT COUNT(*)
FROM projeto;

SELECT p.projnome as projeto , MIN(t.horas)as minimo, MAX(t.horas) as maximo, AVG(t.horas) as media
FROM trabalhaem as t
INNER JOIN projeto as p on t.projetonumero = p.projnumero
GROUP BY p.projnome;
