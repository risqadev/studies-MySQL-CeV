# EXERCÍCIOS PROPOSTOS

-- Listar as gafanhotas
SELECT nome FROM gafanhotos
WHERE sexo = 'F'
ORDER BY nome;

-- Listar todos os que nasceram entre 1/jan/2000 e 31/dez/2015
SELECT nome, nascimento from gafanhotos
WHERE nascimento BETWEEN '2000-01-01' and '2015-12-31';

-- Lista dos homens que trabalham como programadores
SELECT nome, profissao from gafanhotos
where sexo = 'M' and profissao = 'programador';

-- Lista com todos os dados das mulheres que nasceram no Brasil e que tem nome começando com 'J'
SELECT * from gafanhotos
where sexo = 'F' and nacionalidade = 'brasil' and nome like 'J%';

-- Nome e a nacionalidade dos homens que tem Silva no nome, não nasceram no Brasil e pesam menos de 100 kg
select nome, nacionalidade from gafanhotos
where sexo = 'm' 
and nacionalidade != 'brasil' 
and peso > '100';

-- Qual é a maior altura entre os homens do Brasil?
select max(altura) from gafanhotos
where sexo = 'm'
and nacionalidade = 'brasil';

-- Qual é a média de peso dos alunos cadastrados?
select avg(peso) from gafanhotos;

-- Qual a média de peso entre as mulheres nascidas fora do Brasil entre 1/jan/1990 e 31/dez/2000?
SELECT avg(peso) from gafanhotos
where sexo = 'f' 
and nacionalidade != 'brasil' 
and nascimento 
BETWEEN '1990-01-01' and '2000-12-31';

-- Quantas mulheres tem mais de 1,90 m de altura?
select count(nome) from gafanhotos
where sexo = 'f' and altura > '1.9';
