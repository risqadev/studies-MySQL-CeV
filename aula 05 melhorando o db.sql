CREATE DATABASE cadastro
  default character set utf8
  default collate utf8_general_ci;

USE cadastro;

CREATE table pessoas (
  id int not null auto_increment,
  nome varchar(30),
  nascimento date,
  sexo enum('M', 'F'),
  peso decimal(5,1),
  altura decimal(3,2),
  nacionalidade varchar(20) default 'Brasil',
  primary key (id)
) DEFAULT charset = utf8 ;

DESCRIBE pessoas;

INSERT INTO pessoas
  (id, nome, nascimento, sexo, peso, altura, nacionalidade)
  values
  (default, 'Godofredo', '1982-01-02', 'M', '68.5', '1.82', default),
  (default, 'Etelvina', '1965-08-15', 'F', '59', '1,57', 'Portugal'),
  (default, 'Ricardildo', '2007-12-19', 'M', '63', '1.5', 'Brasil'),
  (default, 'Frida', , 'F', , , 'Espanha'),
  (default, 'Girôndola', '1938-12-26', 'F', '51', '1,52', 'Itália');

SELECT * FROM pessoas;
