### AULA 7 - Manipulando linhas/registros/tuplas

use cadastro;
show tables;
desc cursos;
select * from cursos;
desc gafanhotos;
select * from gafanhotos;

insert into cursos values
  ('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
  ('2', 'Algoritmos', 'Lógica de programação', '20', '15', '2014'),
  ('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
  ('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
  ('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
  ('6', 'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'),
  ('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
  ('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
  ('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
  ('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

# Corrigindo valores
update cursos
  set nome = 'HTML5'
  where idcurso = '1';

update cursos
  set nome = 'PHP', ano = '2015'
  where idcurso = 4;

update cursos
  set nome = 'Java', carga = '40', ano = '2015'
  where idcurso = 5
  limit 1;

update cursos
  set carga = '800', ano = '2050'
  where ano = 2018;

update cursos
  set carga = '0', ano = '2018'
  where ano = 2050
  limit 1;

# removendo linhas
delete from cursos
  where idcurso=8;

delete from cursos
  where ano = 2050
  limit 2;

# apagar todas as linhas
truncate table cursos;
