# AULAS 11 e 12 - SELECT

use cadastro;
show tables;
describe cursos;

SELECT * FROM cursos;

UPDATE cursos SET nome = 'Photoshop' WHERE idcurso = '3';

SELECT ano, nome, carga, totaulas FROM cursos
WHERE
-- ano > '2016'
-- ano BETWEEN '2014' AND '2016'
-- ano IN ('2010' , '2016' , '2020')
-- carga > '35' AND totaulas < '30'
-- carga > '35' OR totaulas < '30'
-- nome LIKE 'P%'
-- nome LIKE '%A'
-- nome LIKE '%A%'
-- nome NOT LIKE '%A%'
nome LIKE 'PH%P%'
-- nome LIKE 'PH%P_'
ORDER BY 
nome
-- ano DESC , nome ASC
;

INSERT INTO gafanhotos VALUE
(default, 'Aresilvao Cruz', 'Chef', '1975-03-29', 'M', '78.9', '1.81', 'Timor Leste');

SELECT * FROM gafanhotos
WHERE
-- nome LIKE '%SILVA%'
nome LIKE '%_SILVA%'
-- nome LIKE '%\ SILVA%'
-- nome LIKE 'SILVA%'
ORDER BY
nome
-- ano DESC , nome ASC
;

# Listas elementos distintos (não mostra repetições)

-- Temos cursos com quais cargas horárias?
SELECT DISTINCT carga FROM cursos
ORDER BY carga;

-- Temos alunos de quais países?
SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade;

# Funções de agregação

## Contagens de registros

-- Temos quantos cursos no total?
SELECT count(*) FROM cursos;
-- Quais são eles?
SELECT nome FROM cursos;

-- Quantos cursos tem mais de 40 horas?
SELECT count(*) FROM cursos
WHERE carga > 40;
-- Quais são eles?
SELECT nome FROM cursos
WHERE carga > 40;

-- Relacione os cursos por carga da maior para a menor.
SELECT nome, carga FROM cursos
ORDER BY carga DESC;
-- Qual é a maior carga?
SELECT max(carga) FROM cursos;

-- Dentre os cursos de 2016, qual o maior número de aulas aulas?
SELECT max(totaulas) FROM cursos
WHERE ano = '2016';

-- Dentre os cursos de 2016, qual o que teve o menor número de aulas e quantas foram?
-- NÃO FUNCIONOU:
SELECT nome, min(totaulas) FROM cursos
WHERE ano = '2016';
-- FUNCIONOU ASSIM:
SELECT nome, totaulas FROM cursos
WHERE ano = '2016' AND totaulas = (
				  SELECT min(totaulas) from cursos
				  WHERE ano = '2016'
				 );

-- Qual a soma do número de aulas de todos os cursos?
SELECT sum(totaulas) FROM cursos;

-- Quantas horas tem todos os cursos de 2016 juntos?
SELECT sum(carga) FROM cursos WHERE ano = '2016';

-- Qual a média de aulas dos cursos de 2016?
SELECT avg(totaulas) FROM cursos WHERE ano = '2016';

-- Qual a média de carga horária dos cursos de 2016?
SELECT avg(carga) FROM cursos WHERE ano = '2016';

