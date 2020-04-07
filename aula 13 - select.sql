# AULA 13 - SELECT (parte 3)

use cadastro;

select carga, count(nome) from cursos
group by carga;

select totaulas, count(*) from cursos
GROUP BY totaulas
order by totaulas;

select carga, totaulas, count(*) from cursos
where totaulas = 30
group by carga;

select carga, count(*) from cursos
group by carga;

select carga, count(*) from cursos
group by carga
having count(nome) > 3;

SELECT ano, count(*) from cursos
where totaulas > 30
group by ano
having count(*) >= 5 -- having não funciona com campos diferentes daquele que foi agrupado com GROUP BY
order by count(*) desc;

select avg(carga) from cursos;

select * from cursos
where carga > ( select avg(carga) from cursos );

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > ( select avg(carga) from cursos );

# EXERCÍCIOS PROPOSTOS

-- Lista de profissões e seus respectivos quantidativos.
select profissao, count(*) from gafanhotos
group by profissao
order by profissao;

-- Quantos homens e quantas mulheres nasceram após 1/jan/2005?
select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

-- Uma lista de alunos nascidos fora do Brasil, mostrando o país de origem e o total de pessoas nele nascidas. Mostrar somente os países com mais de 3 alunos.
SELECT nacionalidade, COUNT(*) FROM gafanhotos
WHERE nacionalidade != 'brasil'
GROUP BY nacionalidade
HAVING COUNT(*) > 3;

-- Lista agrupada pela altura mostrando quantas pessoas pesam mais de 100 kg e que estão acima da média de altura de todos os cadastrados.
SELECT altura, COUNT(*) FROM gafanhotos
WHERE peso > 100
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos);