-- phpMyAdmin SQL Dump
-- version 4.9.1deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 12/02/2020 às 10:51
-- Versão do servidor: 8.0.19-0ubuntu0.19.10.3
-- Versão do PHP: 7.3.11-0ubuntu0.19.10.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `idcurso` int NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int UNSIGNED DEFAULT NULL,
  `totaulas` int DEFAULT NULL,
  `ano` year DEFAULT '2016'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nome`, `descricao`, `carga`, `totaulas`, `ano`) VALUES
(1, 'HTML5', 'Curso de HTML5', 40, 37, 2014),
(2, 'Algoritmos', 'Lógica de programação', 20, 15, 2014),
(3, 'Photoshop', 'Dicas de Photoshop CC', 10, 8, 2014),
(4, 'PHP', 'Curso de PHP para iniciantes', 40, 20, 2015),
(5, 'Java', 'Introdução à Linguagem Java', 40, 29, 2015),
(6, 'MySQL', 'Bancos de Dados MySQL', 30, 15, 2016),
(7, 'Word', 'Curso completo de Word', 40, 30, 2016);

-- --------------------------------------------------------

--
-- Estrutura para tabela `gafanhotos`
--

CREATE TABLE `gafanhotos` (
  `id` int NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `prof` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,1) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `gafanhotos`
--

INSERT INTO `gafanhotos` (`id`, `nome`, `prof`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES
(1, 'Godofredo', 'Chef', '1982-01-02', 'M', '68.5', '1.82', 'Brasil'),
(2, 'Etelvina', NULL, '1965-08-15', 'F', '59.0', '1.57', 'Portugal'),
(3, 'Ricardildo', 'Estudante', '2007-12-19', 'M', '63.0', '1.50', 'Brasil'),
(4, 'Frida', NULL, '2007-12-19', 'F', '46.0', '1.43', 'Espanha'),
(5, 'Girôndola', NULL, '1938-12-26', 'F', '51.0', '1.52', 'Itália'),
(6, 'Astrogildo', 'Advogado', NULL, 'M', NULL, NULL, 'Argentina');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcurso`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `gafanhotos`
--
ALTER TABLE `gafanhotos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `gafanhotos`
--
ALTER TABLE `gafanhotos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
