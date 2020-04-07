### AULA 6

USE cadastro;

desc pessoas;

SELECT * FROM pessoas;

# adicionando coluna
ALTER TABLE pessoas
  ADD COLUMN profissao varchar(10) ;
# ou
ALTER TABLE pessoas
  ADD COLUMN profissao varchar(10) AFTER nome ;
# ou
ALTER TABLE pessoas
  ADD COLUMN codigo int FIRST ;

# eliminando coluna
ALTER TABLE pessoas
  drop column profissao;

# modificando coluna (sem mudar o nome)
ALTER TABLE pessoas
  MODIFY COLUMN profissao varchar(20) [constraints] ;
# modificando coluna (inclusive o nome)
ALTER TABLE pessoas
  CHANGE COLUMN profissao prof varchar(20) [constraints];

# renomear tabela
ALTER TABLE pessoas
  RENAME TO gafanhotos;

SHOW TABLES;

desc gafanhotos;

# mais uma tabela
CREATE TABLE IF NOT EXISTS cursos (
  nome varchar(30) NOT NULL UNIQUE,
  descricao text,
  carga int UNSIGNED,
  totaulas int,
  ano year DEFAULT '2016'
) DEFAULT CHARSET = utf8 ;

show tables;

desc cursos;

# adicionar chave primária com a tabela já criada
alter table cursos
  add idcurso int first;
alter table cursos
  add primary key (idcurso);

# apagar a tabela
create table if not exists teste (
  id int,
  nome varchar(10),
  proc int
);

desc teste;

select * from teste;

insert into teste value
  ('1', 'Peão', '2244'),
  ('2', 'Torre', '32'),
  ('3', 'Bispo', '76');
  
DROP TABLE if exists alunos;

DROP TABLE if exists teste;
