-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 01 avr. 2020 à 15:49
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `autocompletion`
--
CREATE DATABASE IF NOT EXISTS `autocompletion` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `autocompletion`;

-- --------------------------------------------------------

--
-- Structure de la table `artistes`
--

DROP TABLE IF EXISTS `artistes`;
CREATE TABLE IF NOT EXISTS `artistes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `nationalite` varchar(255) NOT NULL,
  `style_musicale` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `dernier_album` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `artistes`
--

INSERT INTO `artistes` (`id`, `nom`, `nationalite`, `style_musicale`, `avatar`, `dernier_album`) VALUES
(1, 'The Beatles', 'Anglaise', 'Rock', 'img/beatles.jpg', 'Let It Be'),
(2, 'Dre', 'Americaine', 'Rap', 'img/dre.jpg', 'Compton'),
(3, 'Tina Turner', 'Americaine / Suisse', 'Rock / RNB / soul', 'img/tina_turner.jpg', 'Love Within Beyong'),
(4, 'Frank Zappa', 'Americaine', 'Rock / Jazz / Classique', 'img/Frank_Zappa.jpg', 'Meat Light'),
(5, 'Bob Marley', 'Jamaïcaine', 'Reggae', 'img/bob_marley.jpg', 'Confrontation'),
(6, 'Stevie Wonder', 'Americaine', 'Funk / soul / Jazz', 'img/stevie_wonder.jpg', 'A time to love'),
(7, 'Jacques Brel', 'Française', 'Chanson française', 'img/jacques_brel.jpg', 'Brel'),
(8, 'Edith Piaf', 'Française', 'Chanson française', 'img/edith_piaf.jpg', 'De l\'accordéoniste à Milord'),
(9, 'Elton John', 'Anglaise', 'Pop / Rock', 'img/elton_john.jpg', 'Wonderful Crazy Night'),
(10, 'Pink Floyd', 'Anglaise', 'Rock', 'img/pink_floyd.jpg', 'The Endless River'),
(11, 'Bob Dylan', 'Americaine', 'Folk / Rock / Country', 'img/bob_dylan.jpg', 'Triplicate'),
(12, 'Elvis Presley', 'Americaine', 'Rock / Blues / Country / Pop', 'img/elvis_presley.jpg', 'Moody Blue'),
(13, 'Aretha Franklin', 'Americaine', 'Soul / Jazz', 'img/aretha_franklin.jpg', 'A Brand New Me'),
(14, 'Celine Dion', 'Canadienne', 'Variete francaise / Pop / Rock ', 'img/celine_dion.jpg', 'Courage'),
(15, 'Stromae', 'Belge', 'Pop / Dance / House', 'img/stromae.jpg', 'Racine Carree'),
(16, 'Nekfeu', 'Francaise', 'Rap / Hip-hop', 'img/nekfeu.jpg', 'Les etoiles vagabondes'),
(17, 'U2', 'Irlandaise', 'Rock', 'img/U2.jpg', 'Songs of Experience'),
(18, 'Prince', 'Americaine', 'Pop / Funk / RnB / Rock / Soul / Jazz', 'img/prince.jpg', 'Hitnrun Phase Two'),
(19, 'Christine and the Queens', 'Francaise', 'Pop', 'img/christine_queens.jpg', 'Chris'),
(20, 'Madonna', 'Americaine', 'Dance-pop / Electro / Jazz', 'img/madonna.jpg', 'Madame X'),
(21, 'Johnny Hallyday', 'Francaise', 'Rock / Chanson francaise / Soul / Country', 'img/johnny_hallyday.jpg', 'Mon pays c\'est l\'amour'),
(22, 'Angèle', 'Belge', 'Pop / Chanson francaise', 'img/angele.jpg', 'Brol la suite'),
(23, 'Rihanna', 'Americaine / Barbadienne', 'Pop / RNB / Hip-Hop / Dance / Reggae', 'img/rihanna.jpg', 'Anti'),
(24, 'David Guetta', 'Francaise', 'Electro / House / Dance', 'img/david_guetta.jpg', '7'),
(25, 'Ed Sheeran', 'Anglais', 'Pop / Folk / Rock', 'img/ed_sheeran.jpg', 'I Don\'t Care'),
(26, 'Lana Del Rey', 'Americaine', 'Pop / Rock', 'img/lana_del_rey.jpg', 'Norman Fucking Rockwell '),
(27, 'Louane', 'Francaise', 'Variete francaise / Pop', 'img/louane.jpg', 'Louane'),
(28, 'Francis Cabrel', 'Francaise', 'Chanson francaise / Pop / Rock / Blues', 'img/francis_cabrel.jpg', 'In extremis'),
(29, 'The Weeknd', 'Canadienne', 'Rnb / Pop / Electro', 'img/the_weeknd.jpg', 'After Hours'),
(30, 'Jimi Hendrix', 'Americaines', 'Rock / Blues / Hardrock  / Jazz', 'img/jimi_hendrix.jpg', 'Band of Gypsys'),
(31, 'Matthieu Chedid', 'Francaise', 'Rock', 'img/matthieu_chedid.jpg', 'Lettre infinie'),
(32, 'Jean Louis Aubert', 'Francaise', 'Rock / Pop', 'img/jean_louis_aubert.jpg', 'Refuge'),
(33, 'Tryo', 'Francaise', 'Reggae / Chanson francaise', 'img/tryo.jpg', 'XXV'),
(34, 'Therapie taxi', 'Francaise ', 'Rock / Pop / Hip-Hop', 'img/therapie_taxi.jpg', 'Cadavre exquis'),
(35, 'Romeo Elvis', 'Belge', 'Rap / Hip-hop', 'img/romeo_elvis.jpg', 'Chocolat'),
(36, 'Mozart', 'Autrichienne', 'Classique', 'img/mozart.jpg', 'Requiem en ré mineur'),
(37, 'Bach', 'Allemande', 'Baroque', 'img/bach.jpg', 'Oratio de Noel'),
(38, 'Antonio Vivaldi', 'Italienne', 'Baroque', 'img/vivaldi.jpg', 'Les quatres saisons'),
(39, 'Beethoven', 'Autrichienne', 'Classique', 'img/beethoven.jpg', 'Fidelio'),
(40, 'Chopin', 'Polonaise', 'Romantique', 'img/chopin.jpg', 'Sonate pour piano n°3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
