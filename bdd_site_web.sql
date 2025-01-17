-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Lun 12 Décembre 2011 à 16:14
-- Version du serveur: 5.5.16
-- Version de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bdd_site_web`
--
CREATE DATABASE `Projet_insta` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Projet_insta`;
-- --------------------------------------------------------

--
-- Structure de la table `acteurs`
--

CREATE TABLE IF NOT EXISTS `acteurs` (
  `id_acteur` int(11) NOT NULL AUTO_INCREMENT,
  `nom_acteur` varchar(15) NOT NULL,
  `prenom_acteur` varchar(15) NOT NULL,
  PRIMARY KEY (`id_acteur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `acteurs`
--

INSERT INTO `acteurs` (`id_acteur`, `nom_acteur`, `prenom_acteur`) VALUES
(1, 'Khan', 'Sah Rukh'),
(2, 'Padokune', 'Deepika'),
(3, 'Hashmi', 'Emraan');

-- --------------------------------------------------------

--
-- Structure de la table `avoir_acteurs_favoris`
--

CREATE TABLE IF NOT EXISTS `avoir_acteurs_favoris` (
  `id_users` int(11) NOT NULL,
  `id_films` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `avoir_films_favoris`
--

CREATE TABLE IF NOT EXISTS `avoir_films_favoris` (
  `id_users` int(11) NOT NULL,
  `id_films` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `avoir_realisateur_favoris`
--

CREATE TABLE IF NOT EXISTS `avoir_realisateur_favoris` (
  `id_realisateur` int(11) NOT NULL,
  `id_films` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE IF NOT EXISTS `films` (
  `id_films` int(11) NOT NULL AUTO_INCREMENT,
  `titre_films` varchar(20) NOT NULL,
  `sinopsys_films` varchar(255) NOT NULL,
  PRIMARY KEY (`id_films`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `films`
--

INSERT INTO `films` (`id_films`, `titre_films`, `sinopsys_films`) VALUES
(1, 'Om Shanti Om', 'C''est l''histoire d''un homme qui se réincarne 20 ans plutard après avoir été tué ...'),
(2, 'Awarapan', 'C''est l''histoire d''un homme qui sauve la vie d''une femme esclave au péril de sa vie ....');

-- --------------------------------------------------------

--
-- Structure de la table `jouer`
--

CREATE TABLE IF NOT EXISTS `jouer` (
  `id_acteur` int(11) NOT NULL,
  `id_films` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `mot_de_passe`
--

CREATE TABLE IF NOT EXISTS `mot_de_passe` (
  `id_mdp` int(11) NOT NULL AUTO_INCREMENT,
  `mdp` varchar(20) NOT NULL,
  PRIMARY KEY (`id_mdp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `mot_de_passe`
--

INSERT INTO `mot_de_passe` (`id_mdp`, `mdp`) VALUES
(1, 'jfrancois'),
(2, 'jesuisbeau');

-- --------------------------------------------------------

--
-- Structure de la table `realisateurs`
--

CREATE TABLE IF NOT EXISTS `realisateurs` (
  `id_realisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom_realisateur` varchar(15) NOT NULL,
  `prenom_realisateur` varchar(15) NOT NULL,
  PRIMARY KEY (`id_realisateur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `realisateurs`
--

INSERT INTO `realisateurs` (`id_realisateur`, `nom_realisateur`, `prenom_realisateur`) VALUES
(1, 'Mukesh', 'Batt'),
(2, 'Khan', 'Farah');

-- --------------------------------------------------------

--
-- Structure de la table `realiser`
--

CREATE TABLE IF NOT EXISTS `realiser` (
  `id_realisateur` int(11) NOT NULL,
  `id_films` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sortie_films`
--

CREATE TABLE IF NOT EXISTS `sortie_films` (
  `type_sortie_films` varchar(15) NOT NULL,
  PRIMARY KEY (`type_sortie_films`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sortir`
--

CREATE TABLE IF NOT EXISTS `sortir` (
  `id_films` int(11) NOT NULL,
  `type_sortie_films` varchar(20) NOT NULL,
  `date_sortie` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sortir`
--

INSERT INTO `sortir` (`id_films`, `type_sortie_films`, `date_sortie`) VALUES
(1, 'Cinéma', '2008-11-08'),
(2, 'Cinéma', '2007-05-11');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo_users` varchar(15) NOT NULL,
  `email_users` varchar(30) NOT NULL,
  `nom_users` varchar(15) NOT NULL,
  `prenom_users` varchar(15) NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_users`, `pseudo_users`, `email_users`, `nom_users`, `prenom_users`, `date_naissance`) VALUES
(1, 'jfrancois', 'j.francois@yopmail.fr', 'Francois', 'Jean', '2011-12-05'),
(2, 'jesuisbeau', 'jesuisleplusbeau@yopmail.fr', 'Dupont', 'Frank', '2002-03-05');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
