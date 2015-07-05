-- phpMyAdmin SQL Dump
-- version 3.4.3.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2015 at 07:06 PM
-- Server version: 5.5.15
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `universite`
--

-- --------------------------------------------------------

--
-- Table structure for table `assiduitee`
--

CREATE TABLE IF NOT EXISTS `assiduitee` (
  `etudiant` int(11) NOT NULL,
  `module` varchar(40) NOT NULL,
  `statut` varchar(40) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assiduitee`
--

INSERT INTO `assiduitee` (`etudiant`, `module`, `statut`, `date`) VALUES
(1, 'Projet tutoré', 'Abscence', '2015-06-02'),
(1, 'Réseaux mobiles', 'Retard', '2015-06-09'),
(4, 'PDH/SDH', 'Retard', '2015-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `echeances`
--

CREATE TABLE IF NOT EXISTS `echeances` (
  `libele` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `cycle` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `echeances`
--

INSERT INTO `echeances` (`libele`, `date`, `cycle`) VALUES
('Business plan', '2015-06-18', 'LP3'),
('Projet Android', '2015-06-20', 'LP3'),
('Projet Services réseaux', '2015-06-22', 'LP3'),
('Projet Projet tutoré', '2015-07-09', 'LP3'),
('Projet Sécurité', '2015-06-27', 'LP3'),
('Examen 2', '2015-06-17', 'LP1'),
('Examen 2', '2015-06-17', 'LP2'),
('Examen 2', '2015-06-17', 'MP1'),
('Examen 2', '2015-06-17', 'MP2'),
('Examen 2', '2015-06-17', 'MS');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `genre` varchar(40) NOT NULL,
  `diplome` varchar(40) NOT NULL,
  `formation` varchar(40) NOT NULL,
  `login` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`,`password`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `prenom`, `genre`, `diplome`, `formation`, `login`, `password`) VALUES
(1, 'BAKO', 'Apollinaire', 'HOMME', 'BAC LICENCE', '', 'apo', '1234'),
(3, '', '', 'HOMME', 'null', '', '', ''),
(4, 'Traore', 'Sy', 'HOMME', 'null MASTER', '', 'sy', '0000'),
(5, 'KEBE', 'Rokhaya', 'HOMME', 'null%20MASTER MASTER', 'administration', 'rhaya', 'bako'),
(6, 'nom', 'prenom', 'genre', 'diplome', 'formation', 'logininscr', 'passwordinscr');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `module` varchar(40) NOT NULL,
  `note` float NOT NULL,
  `etudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`module`, `note`, `etudiant`) VALUES
('anglais', 18, 1),
('java', 16, 1),
('android', 19, 1),
('MPLS', 14, 4),
('NGN', 17, 4),
('ANGLAIS', 17, 4),
('ANDROID', 16, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `login` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`,`password`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `login`, `password`) VALUES
(3, '', ''),
(1, 'apo', '1234'),
(6, 'logininscr', 'passwordinscr'),
(5, 'rhaya', 'bako'),
(4, 'sy', '0000');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
