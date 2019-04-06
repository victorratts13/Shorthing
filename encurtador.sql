-- phpMyAdmin SQL Dump
-- version 4.7.0 
-- https://www.phpmyadmin.net/
-- By Victor Ratts
-- Host: localhost
-- Generation Time: 06-Nov-2017 às 21:20
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `encurtador`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `url`
--

CREATE TABLE `url` (
  `id` int(11) NOT NULL,
  `url` varchar(300) DEFAULT NULL,
  `encurtado` varchar(100) DEFAULT NULL,
  `acessos` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `url`
--

INSERT INTO `url` (`id`, `url`, `encurtado`, `acessos`) VALUES
(44, 'http://www.google.com', 'wwWXHL3L', '1'),
(45, 'http://www.facebook.com', '0un67SPJ', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `url`
--
ALTER TABLE `url`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `url`
--
ALTER TABLE `url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
