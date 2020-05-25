-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 16 mai 2020 à 14:54
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `crud`
--

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

DROP TABLE IF EXISTS `chauffeur`;
CREATE TABLE IF NOT EXISTS `chauffeur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `cin` varchar(20) NOT NULL,
  `numtel` varchar(20) NOT NULL,
  `disponibilite` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chauffeur`
--

INSERT INTO `chauffeur` (`id`, `nom`, `prenom`, `cin`, `numtel`, `disponibilite`) VALUES
(29, 'aze', 'aze', 'aze', 'azeaze', 'dispo'),
(34, 'aaaa', 'aze', 'aze', 'aze', 'nn dispo'),
(33, 'aze', 'azeeee', 'eeeeeeeee', 'eeeeeeee', 'dispo'),
(36, 'aziz', 'mohamed habib', '09628726', '999999999', 'dispo');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `client` int(20) DEFAULT NULL,
  `voiture` int(20) DEFAULT NULL,
  `depart` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `retour` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `livraison` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `chauffeur` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `etat` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en cours',
  `prix` float NOT NULL,
  `paiement` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_achat` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `client`, `voiture`, `depart`, `retour`, `livraison`, `chauffeur`, `etat`, `prix`, `paiement`, `date_achat`) VALUES
(66, 98, 7, '2020/05/15 01:48', '2020/05/28 01:48', 'AÃ©roport', 'Avec chauffeur', 'en cours', 1330, 'agence', '2020-05-08 01:49:51'),
(65, 98, 9, '2020/05/08 01:44', '2020/05/20 01:44', 'AÃ©roport', 'Avec chauffeur', 'en cours', 1230, 'carte', '2020-05-08 01:45:06'),
(64, 98, 8, '2020/05/16 01:41', '2020/05/22 01:41', 'AÃ©roport', 'Avec chauffeur', 'en cours', 630, '0', '2020-05-08 01:42:13'),
(58, 98, 7, '2020/05/08 00:49', '2020/05/23 00:49', 'AÃ©roport', 'Avec chauffeur', 'en cours', 1530, '', '2020-05-08 00:50:24'),
(59, 98, 8, '2020/05/09 00:49', '2020/05/30 00:49', 'Agence', 'Avec chauffeur', 'en cours', 2130, '', '2020-05-08 00:50:24'),
(68, 100, 7, '2020/05/11 02:31', '2020/05/14 02:31', 'AÃ©roport', 'Sans chauffeur', 'en cours', 180, 'carte', '2020-05-11 02:32:30'),
(69, 100, 8, '2020/05/12 02:33', '2020/05/21 02:33', 'Agence', 'Sans chauffeur', 'en cours', 1200, 'agence', '2020-05-11 02:33:27');

-- --------------------------------------------------------

--
-- Structure de la table `conge`
--

DROP TABLE IF EXISTS `conge`;
CREATE TABLE IF NOT EXISTS `conge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cin` varchar(250) NOT NULL,
  `debut` varchar(250) NOT NULL,
  `fin` varchar(250) NOT NULL,
  `motif` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `conge`
--

INSERT INTO `conge` (`id`, `cin`, `debut`, `fin`, `motif`) VALUES
(20, '44444444', '2020-04-03', '2020-04-10', '3344'),
(21, '44444444', '2020-04-11', '2020-04-02', '33'),
(23, '44444444', '2020-04-03', '2020-04-03', '33'),
(24, '44444444', '2020-04-10', '2020-04-03', '44444'),
(36, '22222333', '2020-04-10', '2020-04-03', '111'),
(26, '33333333', '2020-04-09', '2020-04-03', '222'),
(27, '66666666', '2020-04-10', '2020-04-10', 'aaaa'),
(28, '44444444', '2020-04-17', '2020-04-17', '44444444444'),
(29, '44444444', '2020-04-10', '2020-04-10', '4444'),
(30, '44444444', '2020-04-11', '2020-04-10', '33'),
(31, '44444444', '2020-04-10', '2020-04-10', '1111111111'),
(32, '44444444', '2020-04-10', '2020-04-03', '222'),
(33, '44444444', '2020-04-11', '2020-04-03', '22'),
(38, '44444444', '2020-04-09', '2020-04-02', 'aaaa');

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE IF NOT EXISTS `promotion` (
  `codepromo` int(11) NOT NULL,
  `dated` date NOT NULL,
  `datef` date NOT NULL,
  `prixp` float NOT NULL,
  `marquep` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codepromo`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `promotion`
--

INSERT INTO `promotion` (`codepromo`, `dated`, `datef`, `prixp`, `marquep`) VALUES
(44, '2020-05-16', '2020-05-24', 20, 'yaris'),
(88, '2020-05-01', '2020-05-03', 15, 'polo'),
(7, '2020-05-20', '2020-05-16', 15, 'clio');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `client` int(20) DEFAULT NULL,
  `voiture` int(20) DEFAULT NULL,
  `depart` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `retour` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `livraison` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `chauffeur` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `etat` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en cours',
  `prix` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `client`, `voiture`, `depart`, `retour`, `livraison`, `chauffeur`, `etat`, `prix`) VALUES
(67, 98, 7, '2020/05/11 00:38', '2020/05/20 00:38', 'AÃ©roport', 'Avec chauffeur', 'en cours', 950),
(71, 100, 7, '2020/05/12 02:44', '2020/05/14 02:44', 'AÃ©roport', 'Avec chauffeur', 'en cours', 285),
(72, 100, 13, '2020/05/13 02:02', '2020/05/15 02:02', 'AÃ©roport', 'Avec chauffeur', 'en cours', 750),
(73, 100, 7, '2020/05/13 02:12', '2020/05/15 02:12', 'AÃ©roport', 'Avec chauffeur', 'en cours', 285),
(74, 100, 8, '2020/05/13 02:23', '2020/05/15 02:23', 'AÃ©roport', 'Avec chauffeur', 'en cours', 441.6),
(75, 100, 8, '2020/05/13 02:30', '2020/05/15 02:30', 'AÃ©roport', 'Avec chauffeur', 'en cours', 441.6),
(76, 100, 8, '2020/05/13 02:30', '2020/05/15 02:30', 'AÃ©roport', 'Avec chauffeur', 'en cours', 441.6),
(77, 100, 8, '2020/05/13 02:31', '2020/05/15 02:31', 'AÃ©roport', 'Avec chauffeur', 'en cours', 441.6),
(78, 100, 8, '2020/05/16 03:27', '2020/05/20 03:27', 'AÃ©roport', 'Avec chauffeur', 'en cours', 643.66),
(79, 100, 8, '2020/05/14 03:28', '2020/05/28 03:28', 'AÃ©roport', 'Avec chauffeur', 'en cours', 1930.98),
(80, 100, 8, '2020/05/14 03:29', '2020/05/19 03:29', 'AÃ©roport', 'Avec chauffeur', 'en cours', 772.392),
(81, 100, 8, '2020/05/16 03:30', '2020/05/26 03:30', 'AÃ©roport', 'Avec chauffeur', 'en cours', 1416.05),
(82, 100, 8, '2020/05/16 12:34', '2020/05/17 12:34', 'AÃ©roport', 'Sans chauffeur', 'en cours', 56.16),
(83, 100, 7, '2020/05/16 15:16', '2020/05/18 15:16', 'AÃ©roport', 'Sans chauffeur', 'en cours', 255);

-- --------------------------------------------------------

--
-- Structure de la table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `codepromo` int(11) NOT NULL AUTO_INCREMENT,
  `dated` varchar(255) NOT NULL,
  `datef` varchar(255) DEFAULT NULL,
  `prix` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`codepromo`)
) ENGINE=MyISAM AUTO_INCREMENT=7778 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `task`
--

INSERT INTO `task` (`codepromo`, `dated`, `datef`, `prix`, `created_at`) VALUES
(5, 'aa7', 'aa8', 22.55, '2020-04-22 11:06:25'),
(44, '17-20-2020', '17-20-2020', 3, '2020-05-05 10:00:14'),
(7777, '02-04-2020', '02-04-2020', 4, '2020-05-05 10:01:24'),
(4, '77', '77', 2, '2020-05-05 10:06:24');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `cin` int(11) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `numdetel` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mdp` varchar(50) DEFAULT NULL,
  `rolee` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cin` (`cin`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `cin`, `adresse`, `numdetel`, `email`, `mdp`, `rolee`) VALUES
(5, 'a', 'a', 123, 'aaa', 32, 'rim.douss@esprit.tn', '123', 'admin'),
(8, 'a', 'b', 11111111, 'a', 11111111, 'ahmedoun199@gmail.com', '123456789', 'client'),
(7, 'aziz', 'mohamed habib', 96287279, 'megrne', 99999999, 'ahmedoun199@gmail.com', 'azerty123', 'admin'),
(20, '1', 'd', 44444443, 'asd', 44444444, 'fourat113@live.fr', '123456', 'agent'),
(16, '1', 'd', 44444445, 'asd', 44444444, 'fourat.anane@esprit.tn', '5555555555', 'agent'),
(22, '1', 'd', 22222222, 'asd', 33333333, 'fourat8@hotmail.com', '123456', 'agent'),
(98, 'jguirim', 'eskander', 9628726, 'nasr ', 29473912, 'eskanderjguirim@yahoo.fr', '123456', 'client'),
(99, 'a', 'a', 12345678, 'sds', 12345678, 'aa@a.fr', '123456', 'client'),
(100, 'skan', 'jgui', 14768321, 'ennasr', 29388080, 'eskander.jguirim@esprit.tn', 'skan123', 'client');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
CREATE TABLE IF NOT EXISTS `voiture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `immatriculation` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `marque` varchar(255) NOT NULL,
  `modele` varchar(255) NOT NULL,
  `kilometrage` float NOT NULL,
  `etat` varchar(30) NOT NULL,
  `pic` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `prixfixe` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`id`, `immatriculation`, `prix`, `marque`, `modele`, `kilometrage`, `etat`, `pic`, `created_at`, `prixfixe`) VALUES
(7, '78', 85, 'volswagen', 'polo', 1123, 'disponible', 'polo7.png', '2020-05-05 23:44:32', 100),
(8, '1123', 59.5, 'Renault', 'Clio', 2, 'disponible', 'clio4.png', '2020-05-06 00:07:44', 70),
(9, '22', 90, 'Toyota', 'Yaris', 78, 'non disponible', 'toyotayaris.png', '2020-05-06 00:09:02', 90),
(12, '123', 120, 'Porshe', 'carrera gt', 78, 'disponible', 'suzikiswift.png', '2020-05-06 22:31:26', 120),
(11, '78', 150, 'Kia', 'picanto', 45, 'disponible', 'kiapicanto.png', '2020-05-06 00:56:27', 150),
(13, '98', 200, 'mercedes', 'c200', 120, 'disponible', 'kiario.png', '2020-05-11 23:34:45', 200),
(121, '555', 250, 'porshe', 'cayene', 7777, 'disponible', 'bmw3.png', '2020-05-16 13:49:47', 250);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
