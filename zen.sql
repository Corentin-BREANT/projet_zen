-- phpMyAdmin SQL Dump
-- version 3.5.6
-- http://www.phpmyadmin.net
--
-- Client: ibd51.in.ac-rouen.fr
-- Généré le: Lun 03 Janvier 2022 à 09:45
-- Version du serveur: 5.1.73-log
-- Version de PHP: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `zen`
--

-- --------------------------------------------------------

--
-- Structure de la table `couple_structure_rubrique`
--

CREATE TABLE IF NOT EXISTS `couple_structure_rubrique` (
  `Couple_SR_Structure` int(11) NOT NULL,
  `Couple_SR_Rubrique` int(11) NOT NULL,
  PRIMARY KEY (`Couple_SR_Structure`,`Couple_SR_Rubrique`),
  KEY `Couple_SR_Structure` (`Couple_SR_Structure`),
  KEY `Couple_SR_Rubrique` (`Couple_SR_Rubrique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `couple_structure_rubrique`
--

INSERT INTO `couple_structure_rubrique` (`Couple_SR_Structure`, `Couple_SR_Rubrique`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(3, 1),
(3, 2),
(3, 3),
(3, 7),
(3, 8),
(3, 11),
(4, 4),
(4, 5),
(4, 9),
(4, 10);

-- --------------------------------------------------------

--
-- Structure de la table `couple_structure_utilisateur`
--

CREATE TABLE IF NOT EXISTS `couple_structure_utilisateur` (
  `Couple_SU_Utilisateur` int(11) NOT NULL,
  `Couple_SU_Structure` int(11) NOT NULL,
  PRIMARY KEY (`Couple_SU_Utilisateur`,`Couple_SU_Structure`),
  KEY `Couple_SU_Utilisateur` (`Couple_SU_Utilisateur`),
  KEY `Couple_SU_Structure` (`Couple_SU_Structure`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `couple_structure_utilisateur`
--

INSERT INTO `couple_structure_utilisateur` (`Couple_SU_Utilisateur`, `Couple_SU_Structure`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 3),
(8, 4);

-- --------------------------------------------------------

--
-- Structure de la table `fichier`
--

CREATE TABLE IF NOT EXISTS `fichier` (
  `ID_Fichier` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Fichier` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Extension_Fichier` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `DateDebut_Fichier` date NOT NULL,
  `DateFin_Fichier` date NOT NULL,
  `ID_Depot_Structure` int(11) NOT NULL,
  `ID_Depot_Utilisateur` int(11) NOT NULL,
  `ID_Stocker_Rubrique` int(11) NOT NULL,
  PRIMARY KEY (`ID_Fichier`),
  KEY `ID_Depot_Structure` (`ID_Depot_Structure`),
  KEY `ID_Depot_Utilisateur` (`ID_Depot_Utilisateur`),
  KEY `FK_Coup_SU` (`ID_Depot_Structure`,`ID_Depot_Utilisateur`),
  KEY `ID_Stocker_Rubrique` (`ID_Stocker_Rubrique`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=97 ;

--
-- Contenu de la table `fichier`
--

INSERT INTO `fichier` (`ID_Fichier`, `Nom_Fichier`, `Extension_Fichier`, `DateDebut_Fichier`, `DateFin_Fichier`, `ID_Depot_Structure`, `ID_Depot_Utilisateur`, `ID_Stocker_Rubrique`) VALUES
(85, 'liste emma anniv', 'pdf', '2021-04-02', '2021-05-02', 1, 5, 1),
(86, 'liste emma anniv', 'pdf', '2021-04-02', '2021-05-02', 1, 5, 5),
(87, '0761801vconvoc', 'pdf', '2021-04-02', '2021-05-02', 1, 3, 10),
(88, '0761801vconvoc', 'pdf', '2021-04-02', '2021-05-02', 1, 3, 4),
(89, '0761801vconvoc', 'pdf', '2021-04-02', '2021-05-02', 1, 3, 9),
(90, '0761801vconvoc2', 'pdf', '2021-04-02', '2021-05-02', 1, 3, 4),
(91, '0760096sconvoc2', 'pdf', '2021-04-02', '2021-05-02', 1, 3, 4),
(92, '0761801vbordereaux2', 'pdf', '2021-04-02', '2021-05-02', 1, 3, 9),
(93, '0761801vbordereaux3', 'pdf', '2021-04-02', '2021-05-02', 1, 3, 10),
(94, '0762823F_Convocations', 'pdf', '2021-04-02', '2021-05-02', 1, 4, 3),
(95, '0762823F_Convocations', 'pdf', '2021-04-02', '2021-05-02', 1, 4, 2),
(96, '0762823F_Convocations', 'pdf', '2021-04-02', '2021-05-02', 1, 4, 7);

-- --------------------------------------------------------

--
-- Structure de la table `recuperer`
--

CREATE TABLE IF NOT EXISTS `recuperer` (
  `ID_Recup_Fichier` int(11) NOT NULL,
  `ID_Coup_SU_Recup_Structure` int(11) NOT NULL,
  `ID_Coup_SU_Recup_Utilisateur` int(11) NOT NULL,
  `DateTelechargement` datetime NOT NULL,
  PRIMARY KEY (`ID_Recup_Fichier`,`ID_Coup_SU_Recup_Structure`,`ID_Coup_SU_Recup_Utilisateur`,`DateTelechargement`),
  KEY `ID_Recup_Fichier` (`ID_Recup_Fichier`),
  KEY `ID_Coup_SU_Recup_Structure` (`ID_Coup_SU_Recup_Structure`),
  KEY `ID_Coup_SU_Recup_Utilisateur` (`ID_Coup_SU_Recup_Utilisateur`),
  KEY `FK_Coup_SU_Recup` (`ID_Coup_SU_Recup_Structure`,`ID_Coup_SU_Recup_Utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rubrique`
--

CREATE TABLE IF NOT EXISTS `rubrique` (
  `ID_Rubrique` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle_Rubrique` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AutorisationDepot_Rubrique` tinyint(1) NOT NULL DEFAULT '1',
  `Ecole_Rubrique` tinyint(1) NOT NULL DEFAULT '1',
  `College_Rubrique` tinyint(1) NOT NULL DEFAULT '1',
  `Lycee_Rubrique` tinyint(1) NOT NULL DEFAULT '1',
  `LyceePro_Rubrique` tinyint(1) NOT NULL DEFAULT '1',
  `Autre_Rubrique` tinyint(1) NOT NULL DEFAULT '1',
  `ID_Parent_Rubrique` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Rubrique`),
  KEY `ID_Parent_Rubrique` (`ID_Parent_Rubrique`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Contenu de la table `rubrique`
--

INSERT INTO `rubrique` (`ID_Rubrique`, `Libelle_Rubrique`, `AutorisationDepot_Rubrique`, `Ecole_Rubrique`, `College_Rubrique`, `Lycee_Rubrique`, `LyceePro_Rubrique`, `Autre_Rubrique`, `ID_Parent_Rubrique`) VALUES
(1, 'Examens/Concours - Bac Technologique', 0, 0, 0, 1, 1, 1, NULL),
(2, 'Examens/Concours - Bac Général', 0, 0, 0, 1, 1, 1, NULL),
(3, 'Examens/Concours - Épreuves Anticipées', 1, 0, 0, 1, 1, 1, NULL),
(4, 'Examens/Concours - Bac Professionnel', 0, 0, 0, 1, 1, 1, NULL),
(5, 'Examens/Concours - CAP', 1, 0, 1, 1, 1, 1, NULL),
(6, 'Affectations - Affelnet Lycée', 1, 0, 1, 1, 1, 1, NULL),
(7, 'Bordereaux de Notation BCG', 1, 0, 0, 1, 1, 1, 2),
(8, 'Bordereaux de Notation BTN', 1, 0, 0, 1, 1, 1, 1),
(9, 'Bordereaux de Notation BCP', 1, 0, 0, 1, 1, 1, 4),
(10, 'Bordereaux de Notation CAP', 1, 0, 1, 1, 1, 1, 5),
(11, 'Procès Verbaux BCG', 1, 0, 0, 1, 1, 1, 2),
(12, 'AGORA - Arrêté de Promotion', 1, 0, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `structure`
--

CREATE TABLE IF NOT EXISTS `structure` (
  `ID_Structure` int(11) NOT NULL AUTO_INCREMENT,
  `Code_Structure` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Libelle_Structure` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Structure`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Contenu de la table `structure`
--

INSERT INTO `structure` (`ID_Structure`, `Code_Structure`, `Libelle_Structure`) VALUES
(1, 'SCOLARITE_ROUEN', 'Equipe ADSI Scolarité Rouen'),
(2, 'SCOLARITE_CAEN', 'Equipe ADSI Scolarité Rouen'),
(3, 'DEC4_ROUEN', 'Bureau du BGT de la DEC'),
(4, 'DEC_PRO_ROUEN', 'Bureau des Examens Pro de la DEC'),
(5, '0762823F', 'École de Doudoune');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `ID_Utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Utilisateur` varchar(38) COLLATE utf8_unicode_ci NOT NULL,
  `Prenom_Utilisateur` varchar(38) COLLATE utf8_unicode_ci NOT NULL,
  `Login_Utilisateur` varchar(38) COLLATE utf8_unicode_ci NOT NULL,
  `DerniereCo_Retrait` date NOT NULL COMMENT 'AAAA/MM/JJ',
  `DerniereCo_Depot` date NOT NULL COMMENT 'AAAA/MM/JJ',
  `Email_Utilisateur` varchar(38) COLLATE utf8_unicode_ci NOT NULL,
  `Actif_Utilisateur` tinyint(1) NOT NULL DEFAULT '1',
  `Profil_Utilisateur` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_Utilisateur`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`ID_Utilisateur`, `Nom_Utilisateur`, `Prenom_Utilisateur`, `Login_Utilisateur`, `DerniereCo_Retrait`, `DerniereCo_Depot`, `Email_Utilisateur`, `Actif_Utilisateur`, `Profil_Utilisateur`) VALUES
(1, 'BEUZELIN', 'Denis', 'beuzelid', '2021-05-21', '2021-05-21', 'denis.beuzelin@ac-normandie.fr', 1, 'G'),
(2, 'LECLERC', 'Christopher', 'leclercc16', '2021-11-08', '2021-11-08', 'christopher.leclerc@ac-normandie.fr', 1, 'G'),
(3, 'SAINT JORE', 'Marc', 'saintjom', '0000-00-00', '2021-11-15', 'marc.saint-jore@ac-normandie.fr', 1, 'G'),
(4, 'HIPOLITO', 'Noël', 'hipolitn', '0000-00-00', '2021-04-02', 'noel.hipolito@ac-normandie.fr', 1, 'G'),
(5, 'BOURIAUD', 'David', 'bouriaud', '0000-00-00', '2021-04-02', 'david.bouriaud@ac-rouen.fr', 1, 'G'),
(6, 'FERRY', 'Jacques', 'jferry', '0000-00-00', '0000-00-00', 'jacques.ferry@ac-normandie.fr', 1, 'G'),
(7, 'DECAUX', 'Aurélien', 'decauxa03', '0000-00-00', '0000-00-00', 'aurelien.decaux@ac-normandie.fr', 1, 'G'),
(8, 'DEGREMONT', 'Audrey', 'degremoa', '0000-00-00', '0000-00-00', 'audrey.degremont@ac-normandie.fr', 1, 'G'),
(9, 'LEBLANC', 'Christine', 'leblancc', '2021-04-02', '2021-04-02', 'christine.leblanc@ac-normandie.fr', 1, 'E');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `couple_structure_rubrique`
--
ALTER TABLE `couple_structure_rubrique`
  ADD CONSTRAINT `FK_SR_Rubrique` FOREIGN KEY (`Couple_SR_Rubrique`) REFERENCES `rubrique` (`ID_Rubrique`),
  ADD CONSTRAINT `FK_SR_Structure` FOREIGN KEY (`Couple_SR_Structure`) REFERENCES `structure` (`ID_Structure`);

--
-- Contraintes pour la table `couple_structure_utilisateur`
--
ALTER TABLE `couple_structure_utilisateur`
  ADD CONSTRAINT `FK_SU_Structure` FOREIGN KEY (`Couple_SU_Structure`) REFERENCES `structure` (`ID_Structure`),
  ADD CONSTRAINT `FK_SU_Utilisateur` FOREIGN KEY (`Couple_SU_Utilisateur`) REFERENCES `utilisateur` (`ID_Utilisateur`);

--
-- Contraintes pour la table `fichier`
--
ALTER TABLE `fichier`
  ADD CONSTRAINT `FK_Coup_SU` FOREIGN KEY (`ID_Depot_Structure`, `ID_Depot_Utilisateur`) REFERENCES `couple_structure_utilisateur` (`Couple_SU_Structure`, `Couple_SU_Utilisateur`),
  ADD CONSTRAINT `FK_Stocker_Rubrique` FOREIGN KEY (`ID_Stocker_Rubrique`) REFERENCES `rubrique` (`ID_Rubrique`);

--
-- Contraintes pour la table `recuperer`
--
ALTER TABLE `recuperer`
  ADD CONSTRAINT `FK_Coup_SU_Recup` FOREIGN KEY (`ID_Coup_SU_Recup_Structure`, `ID_Coup_SU_Recup_Utilisateur`) REFERENCES `couple_structure_utilisateur` (`Couple_SU_Structure`, `Couple_SU_Utilisateur`),
  ADD CONSTRAINT `FK_Fichier` FOREIGN KEY (`ID_Recup_Fichier`) REFERENCES `fichier` (`ID_Fichier`);

--
-- Contraintes pour la table `rubrique`
--
ALTER TABLE `rubrique`
  ADD CONSTRAINT `FK_Rubrique` FOREIGN KEY (`ID_Parent_Rubrique`) REFERENCES `rubrique` (`ID_Rubrique`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
