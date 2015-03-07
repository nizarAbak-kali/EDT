-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 04 Mars 2015 à 18:44
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `upmc_info`
--

-- --------------------------------------------------------

--
-- Structure de la table `choix`
--

CREATE TABLE IF NOT EXISTS `choix` (
  `ID_etudiant` int(11) NOT NULL,
  `ID_ue` int(11) NOT NULL,
  `ID_cours` int(11) NOT NULL,
  `ID_td_tme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE IF NOT EXISTS `cours` (
  `ID_cours` int(11) NOT NULL AUTO_INCREMENT,
  `ID_ue` int(11) NOT NULL,
  `horaires` varchar(20) NOT NULL,
  `jour` varchar(15) NOT NULL,
  `salle` varchar(20) NOT NULL,
  `capacite` int(11) NOT NULL,
  PRIMARY KEY (`ID_cours`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE IF NOT EXISTS `enseignant` (
  `ID_enseignant` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `grade` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_enseignant`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `ID_etudiant` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mot_de_passe` varchar(100) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `ID_specialite` int(11) NOT NULL,
  `ID_parcours` int(11) NOT NULL,
  `semestre` varchar(2) NOT NULL,
  PRIMARY KEY (`ID_etudiant`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `parcours`
--

CREATE TABLE IF NOT EXISTS `parcours` (
  `ID_parcours` int(11) NOT NULL AUTO_INCREMENT,
  `ID_specialite` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `semestre` varchar(2) NOT NULL,
  `nb_ues_s1` int(11) DEFAULT NULL,
  `nb_ues_s2` int(11) DEFAULT NULL,
  `nb_ues_s3` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_parcours`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `parcours`
--

INSERT INTO `parcours` (`ID_parcours`, `ID_specialite`, `nom`, `description`, `semestre`, `nb_ues_s1`, `nb_ues_s2`, `nb_ues_s3`) VALUES
(1, 1, 'ANDROIDE-Classique', 'Parcours ANDROIDE Classique sur les deux années.', 'S1', 5, 5, 5),
(2, 2, 'BIM-Informatique', 'BIM Mention Informatique', 'S1', 5, 5, 5),
(3, 2, 'BIM-BMC', 'BIM Mention Biologie Moléculaire et Cellulaire (BMC)', 'S1', 5, 5, 5),
(4, 3, 'DAC-Proffessionnel', 'DAC parcours Professionnel', 'S2', 5, 5, 5),
(5, 3, 'DAC-Recherche', 'DAC parcours Recherche', 'S2', 5, 5, 5),
(6, 4, 'IMA-TAIM', 'IMA Agencement Traitement Avancé des IMages (TAIM)', 'S3', 5, 5, 5),
(7, 4, 'IMA-IMV', 'IMA Agencement IMagerie du Vivant (IMV)', 'S3', 5, 5, 5),
(8, 4, 'IMA-IMI', 'IMA Agencement IMagerie Industrielle (IMI)', 'S3', 5, 5, 5),
(9, 5, 'RES-Classique', 'RES Filière classique', 'S1', 5, 5, 5),
(10, 5, 'RES-Alternance', 'RES Filière en apprentissage et alternance avec ITESCIA (ex-ITIN)', 'S1', 5, 5, 5),
(11, 5, 'RES-PUF', 'RES filière PUF', 'S1', 5, 5, 5),
(12, 6, 'SAR-Classique', 'SAR parcours Classique', 'S1', 5, 5, 5),
(13, 7, 'SESI-Classique', 'SESI Parcours Classique', 'S1', 5, 5, 5),
(14, 8, 'SFPN-Classique', 'SFPN Formation Initiale (Parcours classique)', 'S1', 5, 5, 5),
(15, 8, 'SFPN-Alternance', 'SFPN Formation en Alternance (Entrée M1 ou Entrée M2)', 'S1', 5, 5, 5),
(16, 9, 'STL-Recherche', 'STL Parcours Algorithme et Programmation Recherche (dont MPRI) ', 'S3', 5, 5, 5),
(17, 9, 'STL-Professionnel', 'STL Parcours Algorithme et Programmation pour l''Ingénieur', 'S3', 5, 5, 5),
(18, 9, 'STL-Alternance', 'STL en Alternance par la voie de l''apprentissage (avec le CFA INSTA) ', 'S3', 5, 5, 5),
(19, 9, 'STL-Magistère', 'STL : Le diplôme d''excellence en informatique de l''UPMC (Magistère)', 'S1', 6, 6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `responsable`
--

CREATE TABLE IF NOT EXISTS `responsable` (
  `ID_enseignant` int(11) NOT NULL,
  `ID_ue` int(11) NOT NULL,
  `ID_specialite` int(11) NOT NULL,
  `ID_parcours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE IF NOT EXISTS `specialite` (
  `ID_specialite` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`ID_specialite`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `specialite`
--

INSERT INTO `specialite` (`ID_specialite`, `nom`, `description`) VALUES
(1, 'ANDROIDE', 'AgeNts Distribues, Robotique, Recherche Opétionnelle, Interaction, DEcision (ANDROIDE)'),
(2, 'BIM', 'Bio-Informatique et Modélisation (BIM)'),
(3, 'DAC', 'Données, Apprentissage et Connaissances (DAC)'),
(4, 'IMA', 'Imagerie (IMA)'),
(5, 'RES', 'Réseaux (RES)'),
(6, 'SAR', 'Systèmes et Applications Répartis (SAR)'),
(7, 'SESI', 'Systèmes Electroniques et Systèmes Informatiques (SESI, ex-ACSI'),
(8, 'SFPN', 'Sécurité, Fiabilité et Performance du Numérique (SFPN)'),
(9, 'STL', 'Science et Technologie du Logiciel (STL)');

-- --------------------------------------------------------

--
-- Structure de la table `td_tme`
--

CREATE TABLE IF NOT EXISTS `td_tme` (
  `ID_td_tme` int(11) NOT NULL AUTO_INCREMENT,
  `ID_ue` int(11) NOT NULL,
  `groupe` int(11) NOT NULL,
  `horaires` varchar(20) NOT NULL,
  `jour` varchar(15) NOT NULL,
  `semestre` int(2) NOT NULL,
  `salle` varchar(20) NOT NULL,
  `capacite` int(11) NOT NULL,
  PRIMARY KEY (`ID_td_tme`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ue`
--

CREATE TABLE IF NOT EXISTS `ue` (
  `ID_ue` int(11) NOT NULL AUTO_INCREMENT,
  `code_ue` varchar(10) DEFAULT NULL,
  `ID_specialite` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `semestre` varchar(2) NOT NULL,
  PRIMARY KEY (`ID_ue`),
  UNIQUE KEY `nom` (`nom`),
  UNIQUE KEY `nom_2` (`nom`),
  UNIQUE KEY `code_ue` (`code_ue`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=206 ;

--
-- Contenu de la table `ue`
--

INSERT INTO `ue` (`ID_ue`, `code_ue`, `ID_specialite`, `nom`, `description`, `semestre`) VALUES
(1, 'NW411', 1, 'MOGPL', 'Modèlisation, Optimisation, Graphes, et Programmation Linéaire', 'S1'),
(2, '4I800', 1, 'LRC', 'Logique et Représentations des Connaissances', 'S1'),
(3, '4I601', 3, 'MAPSI', 'Modèles et Algorithmes Probabilistes et Statistiques pour l''Informatique', 'S1'),
(4, '4I502', 9, 'IL', 'Ingénierie du Logiciel', 'S1'),
(5, '4I900', 8, 'COMPLEX', 'Complexité, Algorithmes Probabilistes et Approchés', 'S1'),
(6, '4I700', 2, 'AAGB', 'Introduction à la biologie et aux algorithmes sur les arbres et les graphes en bioinformatique', 'S1'),
(7, '4I801', 3, 'MLBDA', 'Modèles et Langages Bases de Données Avancées', 'S1'),
(8, '4I600', 4, 'BIMA', 'Bases du Traitement des Images', 'S1'),
(9, 'NW423', 1, 'PANDROIDE', 'Projet ANDROIDE', 'S2'),
(10, 'NW408', 1, 'RP', 'Résolution de Problèmes', 'S2'),
(11, 'NW407', 1, 'FoSyMa', 'Fondements des Systèmes Multiagents', 'S2'),
(12, 'NW409', 1, 'IHM', 'Interaction Homme-Machine', 'S2'),
(13, 'NW410', 1, 'DJ', 'Décision et Jeux', 'S2'),
(14, '4I806', 3, 'IAMSI', 'Intelligence Artificielle et Manipulation Symbolique de l''Information', 'S2'),
(15, '4I802', 3, 'ARF', 'Apprentissage et Reconnaissance des Formes', 'S2'),
(16, '4I808', 3, 'TAL', 'Traitement Automatique des Langues', 'S2'),
(17, 'NW413', 1, 'COCOMA', 'Coordination et Consensus Multiagents: Modèles, Algorithmes, Protocoles', 'S3'),
(18, 'NW414', 1, 'MAO', 'Modèles et Algorithmes d''Ordonnancement et Applications', 'S3'),
(19, 'NW415', 1, 'EVIJV', 'Environnements Virtuels Interactifs et Jeux Vidéos', 'S3'),
(20, 'NW416', 1, 'MADI', 'Modèles et Algorithmes pour la Décision dans l''Incertain', 'S3'),
(21, 'NW417', 1, 'MOSIMA', 'Modélisation et Simulation Multiagents', 'S3'),
(22, 'NW418', 1, 'OPTIM', 'Optimisation et applications industrielles', 'S3'),
(23, 'NW419', 1, 'MADMC', 'Modèles et Algorithmes pour la Décision Multicritères et Collective', 'S3'),
(24, 'NW420', 1, 'AOTJ', 'Algorithmique pour l''Optimisation et la Théorie des Jeux', 'S3'),
(25, 'NW421', 1, 'ISG', 'Ingénierie des Serious Games', 'S3'),
(26, 'NW422', 1, 'IAR', 'IA pour la Robotique', 'S3'),
(27, '4I901', 8, 'MODEL', 'Modélisation et algorithmes numériques et symboliques', 'S1'),
(43, '4I803', 3, 'BDR', 'Bases de Données Réparties', 'S2'),
(44, '4I804', 3, 'BI', 'Business Intelligence', 'S2'),
(45, '4I805', 3, 'FPR', 'Formation par la recherche', 'S2'),
(46, '4I807', 3, 'PLDAC', 'Projet Logiciel DAC', 'S2'),
(48, '5I850', 3, 'AS', 'Apprentissage Statistique', 'S3'),
(49, '5I851', 3, 'ASWS', 'Apprentissage Symbolique et Web Sémantique', 'S3'),
(50, '5I853', 3, 'FDMS', 'Fouille de Données et Médias Sociaux', 'S3'),
(51, '5I854', 3, 'MORACOI', 'Modélisation et raisonnement à base de connaissances imparfaites', 'S3'),
(52, '5I855', 3, 'RI', 'Recherche d''Information et Moteurs de Recherche', 'S3'),
(53, '5I852', 3, 'BDLE', 'Bases de Données Large-Echelle', 'S3'),
(54, '5I652', 4, 'RDFIA', 'Reconnaissance des formes pour l''analyse et l''interprétation d''images', 'S3'),
(58, NULL, 4, 'MOG', 'Modélisation par les graphes', 'S1'),
(59, NULL, 4, 'RFIDEC', 'Reconnaissance des formes et décision', 'S1'),
(60, NULL, 4, 'PROG', 'Mise à niveau en programmation', 'S1'),
(61, NULL, 4, 'AGM', 'Algorithmique graphique et modélisation', 'S2'),
(62, NULL, 4, 'pIMA', 'Projet imagerie', 'S2'),
(63, NULL, 0, 'Anglais', 'Anglais', 'S2'),
(64, NULL, 4, 'MOREC', 'Modélisation par objets et représentation des connaissances', 'S2'),
(65, NULL, 4, 'MQIA', 'Modèles quantitatifs en IA pour la recherche d''information sur le web', 'S2'),
(66, '4I001', 5, 'ARES', 'Architecture des réseaux', 'S1'),
(67, '4I002', 5, 'RTEL', 'Réseaux de télécommunications', 'S1'),
(68, '4I003', 5, 'EGP', 'Entreprise et gestion de projet', 'S1'),
(69, '4I004', 5, 'SRE', 'Système et réseau pour l''entreprise', 'S1'),
(70, '4I010', 5, 'OQR', 'Outils quantitatifs pour les réseaux', 'S1'),
(71, '4I011', 5, 'ALGORES', 'Algorithmique des réseaux', 'S2'),
(72, '4I012', 5, 'COMNUM', 'Communications numériques', 'S2'),
(73, '4I013', 5, 'MOB', 'Mobilité et sans fil', 'S2'),
(74, '4I014', 5, 'PROGRES', 'Programmation et réseaux', 'S2'),
(75, '4I015', 5, 'ROUT', 'Routage dans les réseaux', 'S2'),
(76, '4I016', 5, 'SEV', 'Simulation, émulation et virtualisation', 'S2'),
(77, '4I017', 5, 'CLOUD', 'Virtualisation et Cloud', 'S2'),
(78, '4I018', 5, 'SAE', 'Sécurisation des accès et des échanges', 'S2'),
(79, '5I050', 5, 'CELL', 'Réseaux cellulaires', 'S3'),
(80, '5I051', 5, 'CONT', 'Réseaux de contenus', 'S3'),
(81, '5I052', 5, 'IGOV', 'Gouvernance d''Internet', 'S3'),
(82, '5I053', 5, 'ITQOS', 'Ingénierie de trafic et qualité de service', 'S3'),
(83, '5I054', 5, 'MEPS', 'Modélisation et évaluation de performances des systèmes ', 'S3'),
(84, '5I064', 5, 'METHOD', 'Methodology for research in networking', 'S3'),
(85, '5I055', 5, 'METRO', 'Métrologie de l''Internet', 'S3'),
(86, '5I056', 5, 'REOP', 'Réseaux d''opérateurs et de data centers', 'S3'),
(87, '5I057', 5, 'RUBI', 'Réseaux autonomes et ubiquitaires', 'S3'),
(88, '5I058', 5, 'SDR', 'Structure et dynamique des réseaux', 'S3'),
(89, '5I059', 5, 'SECRES', 'Sécurité des réseaux', 'S3'),
(90, NULL, 5, 'SMS', 'Smart Mobility Systems', 'S3'),
(91, '5I060', 5, 'SPEC', 'Spécification et validation de protocoles et services', 'S3'),
(92, '5I061', 5, 'MOSR', 'Méthodes et outils pour la supervision des réseaux', 'S3'),
(93, '4I401', 6, 'Noyau', 'Architecture avancée des noyaux des systèmes d''exploitation', 'S1'),
(94, '4I400', 6, 'PR', 'Programmation répartie', 'S1'),
(95, '4I406', 6, 'ACII', 'Architecture des Clients Internet Interactifs', 'S2'),
(96, '4I403', 6, 'AR', 'Algorithmique Répartie', 'S2'),
(97, '4I402', 6, 'PNL', 'Programmation au coeur du noyau Linux', 'S2'),
(98, '4I408', 6, 'PSAR', 'Projet SAR', 'S2'),
(99, '4I405', 6, 'SAS', 'Sécurité et administration des systèmes', 'S2'),
(100, '4I407', 6, 'SPECIF', 'Spécification des systèmes', 'S2'),
(101, '4I404', 6, 'SRCS', 'Systèmes répartis et clients/serveurs', 'S2'),
(102, '5I450', 6, 'ARA', 'Algorithmique répartie avancée', 'S3'),
(103, '5I455', 6, 'ASTRE', 'Applications et systèmes temps-réels répartis embarqués', 'S3'),
(104, '5I451', 6, 'CODEL', 'Conception et développement d''applications d''entreprise à large échelle', 'S3'),
(105, '5I456', 6, 'IDM', 'Ingénierie dirigée par les modèles', 'S3'),
(106, '5I457', 6, 'IM', 'Informatique musicale', 'S3'),
(107, '5I453', 6, 'NMV', 'Noyaux multi-coeurs et virtualisation', 'S3'),
(108, '5I458', 6, 'PAM', 'Projets et applications musicales', 'S3'),
(109, '5I452', 6, 'PPM', 'Programmation sur plateformes mobiles', 'S3'),
(110, '5I454', 6, 'SF', 'Sécurité et fiabilité', 'S3'),
(111, '4I100', 7, 'ARCHI1', 'Architecture des processeurs RISC', 'S1'),
(112, '4I101', 7, 'VLSI1', 'Introduction à la conception VLSI de circuit numérique', 'S1'),
(113, '4I102', 7, 'ELECANA1', 'Electronique des circuits analogiques', 'S1'),
(114, '4I103', 7, 'MOBJ', 'Modélisation objet pour la conception de circuits', 'S1'),
(115, '4I104', 7, 'SIGNAL', 'Traitement du signal', 'S1'),
(116, '4I105', 7, 'ANUMDSP', 'Implantation matérielle et logicielle des algorithmes de traitement du signal', 'S2'),
(117, '4I106', 7, 'ARCHI2', 'Architecture des systèmes multiprocesseur', 'S2'),
(118, '4I107', 7, 'ELECANA2', 'Systèmes électroniques et fonctions analogiques', 'S2'),
(119, '4I108', 7, 'FPGA1', 'Systèmes programmables', 'S2'),
(120, '4I109', 7, 'PERI', 'Gestion des périphériques', 'S2'),
(121, '4I110', 7, 'PSESI', 'Projet SESI', 'S2'),
(122, '5I150', 7, 'MASSOC', 'Modélisation, analyse et simulation des systèmes embarqués sur puce', 'S3'),
(123, '5I151', 7, 'ARCHI3', 'Architectures hautes performances', 'S3'),
(124, '5I152', 7, 'ARCHI4', 'Architectures massivement multi-coeurs', 'S3'),
(125, '5I153', 7, 'CBIS', 'Consommation, bruit et intégrité du signal', 'S3'),
(126, '5I154', 7, 'CCN', 'Conception de circuit pour les communications numériques', 'S3'),
(127, '5I155', 7, 'ELECANA3', 'Circuits analogiques : méthodes de synthèse & outils', 'S3'),
(128, '5I156', 7, 'FPGA2', 'Platform-based design & high level synthesis', 'S3'),
(129, '5I157', 7, 'OSEM', 'OS et applications sur plateformes Embarquées et Multicoeurs', 'S3'),
(130, '5I158', 7, 'TASE', 'Technologies et Applications des Systèmes Embarqués', 'S3'),
(131, '5I159', 7, 'VLSI2', 'Conception de circuits numériques avancée', 'S3'),
(132, '4I931', 8, 'CEH', 'Ethical Hacking', 'S1'),
(133, '4I932', 8, 'MMA', 'Modélisation des Menaces et des Attaques', 'S1'),
(134, '4I904', 8, 'ISEC', 'Introduction à la sécurité', 'S2'),
(135, '4I933', 8, 'REVERSE', 'Reverse Engineering', 'S2'),
(136, '4I930', 8, 'AUDITDB', 'Audit et Sécurité des Bases de Données', 'S2'),
(137, '4I934', 8, 'PROJ', 'Projet École', 'S2'),
(138, '5I951', 8, 'CRYPTO', 'Cryptologie Avancée et Appliquée', 'S3'),
(139, '5I954', 8, 'SCA', 'Sécurité et Canaux Auxiliaires', 'S3'),
(140, '5I970', 8, 'CYBER', 'Cybersécurité', 'S3'),
(141, '5I971', 8, 'FOR', 'Forensic', 'S3'),
(142, '5I972', 8, 'SPM', 'Sécurité des Plates-formes Mobiles', 'S3'),
(143, NULL, 8, 'RSSI', 'Management des Systèmes d''Information', 'S3'),
(144, '4I500', 9, 'ALGAV', 'Algorithmique Avancée', 'S1'),
(145, '4I501', 9, 'DLP', 'Développement d''un Langage de Programmation', 'S1'),
(146, '4I508', 9, 'PSTL', 'Projet STL', 'S2'),
(147, '4I504', 9, 'CA', 'Compilation Avancée', 'S2'),
(148, '4I505', 9, 'CPA', 'Conception Pratique de l''Algorithmique', 'S2'),
(149, '4I506', 9, 'CPS ', 'Composants', 'S2'),
(150, '4I507', 9, 'PC2R', 'Programmation Concurrente, Réactive et Répartie\r\n', 'S2'),
(151, '5I550', 9, 'AGAA', 'Analyse d''Algorithmes et Génération Aléatoire', 'S3'),
(152, '5I551', 9, 'ALASCA', 'Architectures Logicielles Avancées pour les Systàmes Complexes auto-Adaptatifs', 'S3'),
(153, '5I552', 9, 'DAR', 'Développement d''Applications Réticulaires', 'S3'),
(154, '5I553', 9, 'PPC', 'Paradigmes de Programmation Concurrente', 'S3'),
(155, '5I554', 9, 'SVP', 'Spécification et Validation de Programmes', 'S3'),
(156, '5I555', 9, 'TAS', 'Typage et Analyse Statique', 'S3'),
(157, '5I560', 9, 'TPDEV', 'Techniques Professionnelles - Environnement de développement', 'S3'),
(158, '5I561', 9, 'TPGP', 'Techniques Professionnelles - Environnement de gestion de projets', 'S3'),
(159, '5I558', 9, 'GPSTL', 'Gestion de Projet STL ', 'S3'),
(160, '5I559', 9, 'PiSTL', 'Projet d''ingénierie STL ', 'S3'),
(161, '5I557', 9, 'GRP', 'Groupe de Recherche en Programmation', 'S3'),
(162, '5I556', 9, 'GRAL', 'Groupe de Recherche en Algorithmique', 'S3'),
(166, '5I952', 9, 'CHP', 'Calcul haute performance : programmation et algorithmique avancées', 'S3'),
(167, 'MM062', 2, 'MM062', 'Systèmes dynamiques discrets et continus en biologie et médecine', 'S1'),
(168, NULL, 2, 'Projet', 'Projet M1 BIM', 'S2'),
(169, NULL, 2, 'SBAS', 'Statistiques en bioinformatique et algorithmes sur les séquences', 'S2'),
(170, NULL, 2, 'MMCN', 'Modèles mathématiques et computationnels en neurosciences', 'S2'),
(171, '5I750', 2, 'EVOL', 'Génétique, génomes et évolution', 'S3'),
(172, '5I751', 2, 'PHYG', 'Phylogénie et génomique comparative : méthodes mathématiques et algorithmes', 'S3'),
(173, '5I752', 2, 'GPOP', 'Génétique des populations', 'S3'),
(174, '5I753', 2, 'SPLEX', 'Statistiques pour la classification et fouille de données en génomique', 'S3'),
(175, '5I754', 2, 'RESYS', 'Réseaux biologiques et biologie des systèmes', 'S3'),
(176, NULL, 2, 'BIOSYS', 'Biologie systémique : structure, dynamique et évolution des réseaux génétiques', 'S3'),
(177, '5I755', 2, 'STRUCT', 'Algorithmes en bioinformatique structurale: protéines et ARN', 'S3'),
(178, NULL, 2, 'GENOM', 'Des données de séquences à la génétique évolutive', 'S3'),
(179, NULL, 2, 'BIOPOL', 'Modélisation des biopolymères et de leurs interactions à différentes échelles', 'S3'),
(180, NULL, 9, 'ALA', 'Algèbre linéaire et applications', 'S2'),
(181, '5I654', 4, 'BIOMED', 'Imagerie biologique et médicale', 'S3'),
(182, '5I655', 4, 'MAPIMED', 'Méthodologie et applications en imagerie médicale', 'S3'),
(183, '5I656', 4, 'PRAT', 'Séminaires et pratique en image', 'S3'),
(184, '5I650', 4, 'TADI', 'Traitement avancé d''images', 'S3'),
(187, '5I653', 4, 'IG3DA', 'Informatique graphique 3D avancée', 'S3'),
(191, '5I651', 4, 'VISION', 'Techniques avancées en vision par ordinateur', 'S3'),
(192, 'MV405', 2, 'MV405', 'MV405 : Cours obligatoire BIM mention BMC\r\n(BMC-Biochimie)', 'S1'),
(193, 'MV407', 2, 'MV407', 'MV407 : Cours obligatoire BIM mention BMC\r\n(BMC-Génétique)', 'S1'),
(194, 'MV418', 2, 'MV418', 'MV418 (BMC-Biochimie)', 'S2'),
(195, 'MV448', 2, 'MV448', 'MV448 (Mention BMC)', 'S2'),
(196, 'NM484', 2, 'NM484', 'NM484', 'S3'),
(197, 'NM463', 2, 'NM463', 'NM463 (Math)', 'S3'),
(198, NULL, 5, 'PRES', 'PROJET RES', 'S2'),
(199, NULL, 8, 'PSFPN', 'Projet SFPN', 'S2'),
(200, '5I953', 8, 'PoSSo', 'Introduction a la résolution des systèmes polynomiaux', 'S3'),
(201, '4I903', 8, 'HPC', 'Calcul haute performance : notions de base', 'S2'),
(202, '4I905', 8, 'RNA', 'Représentation des Nombres et Algorithmes : application à la cryptographie', 'S2'),
(203, '4I902', 8, 'FLAG', 'Fondement de l''algorithmique algébrique', 'S2'),
(205, '5I950', 8, 'AFAE', 'Arithmétique Flottante et Analyse d''Erreurs', 'S3');

-- --------------------------------------------------------

--
-- Structure de la table `ue_conseillee`
--

CREATE TABLE IF NOT EXISTS `ue_conseillee` (
  `ID_ue_conseillee` int(11) NOT NULL AUTO_INCREMENT,
  `ID_parcours` int(11) NOT NULL,
  `nom_ue` varchar(20) NOT NULL,
  `semestre` varchar(2) NOT NULL,
  PRIMARY KEY (`ID_ue_conseillee`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `ue_conseillee`
--

INSERT INTO `ue_conseillee` (`ID_ue_conseillee`, `ID_parcours`, `nom_ue`, `semestre`) VALUES
(1, 1, 'AAGB', 'S1'),
(2, 1, 'MLBDA', 'S1'),
(3, 1, 'BIMA', 'S1'),
(4, 1, 'IAMSI', 'S2'),
(5, 1, 'ARF', 'S2'),
(6, 1, 'TAL', 'S2'),
(7, 2, 'MLBDIA', 'S1'),
(8, 2, 'ALGAV', 'S1'),
(9, 3, 'MOGPL', 'S1'),
(10, 3, 'BIMA', 'S1'),
(11, 2, 'IAMSI', 'S2'),
(12, 2, 'FLAG', 'S2'),
(13, 3, 'ARF', 'S2'),
(14, 3, 'SMA', 'S2'),
(15, 4, 'COMPLEX', 'S1'),
(16, 4, 'MODEL', 'S1'),
(17, 4, 'MOGPL', 'S1'),
(18, 4, 'BIMA', 'S1'),
(19, 5, 'COMPLEX', 'S1'),
(20, 5, 'MODEL', 'S1'),
(21, 5, 'MOGPL', 'S1'),
(22, 5, 'BIMA', 'S1'),
(23, 4, 'IAR', 'S3'),
(24, 4, 'RDFIA', 'S3'),
(25, 5, 'IAR', 'S3'),
(26, 5, 'RDFIA', 'S3'),
(27, 9, 'ACII', 'S2'),
(28, 9, 'BDR', 'S2'),
(29, 9, 'ISEC', 'S2'),
(30, 9, 'PERI', 'S2'),
(31, 9, 'SAS', 'S2'),
(32, 9, 'SRCS', 'S2');

-- --------------------------------------------------------

--
-- Structure de la table `ue_obligatoire`
--

CREATE TABLE IF NOT EXISTS `ue_obligatoire` (
  `ID_ue_obligatoire` int(11) NOT NULL AUTO_INCREMENT,
  `ID_parcours` int(11) NOT NULL,
  `nom_ue` varchar(20) NOT NULL,
  `semestre` varchar(2) NOT NULL,
  PRIMARY KEY (`ID_ue_obligatoire`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

--
-- Contenu de la table `ue_obligatoire`
--

INSERT INTO `ue_obligatoire` (`ID_ue_obligatoire`, `ID_parcours`, `nom_ue`, `semestre`) VALUES
(1, 1, 'MOGPL', 'S1'),
(2, 1, 'LRC', 'S1'),
(3, 1, 'PANDROIDE', 'S2'),
(4, 2, 'MAPSI', 'S1'),
(5, 2, 'MM062 ', 'S1'),
(6, 2, 'AAGB', 'S1'),
(7, 3, 'MAPSI', 'S1'),
(8, 3, 'MM062 ', 'S1'),
(9, 3, 'AAGB', 'S1'),
(10, 3, 'MV405', 'S1'),
(11, 3, 'MV407', 'S1'),
(12, 2, 'Projet', 'S2'),
(13, 2, 'SBAS', 'S2'),
(14, 2, 'MMCN', 'S2'),
(15, 2, 'MV418', 'S2'),
(16, 3, 'MV448', 'S2'),
(17, 3, 'SBAS', 'S2'),
(18, 3, 'MMCN', 'S2'),
(19, 3, 'MV418', 'S2'),
(20, 2, 'EVOL', 'S3'),
(21, 2, 'PHYG', 'S3'),
(22, 2, 'SPLEX', 'S3'),
(23, 2, 'STRUCT', 'S3'),
(24, 3, 'BIOSYS', 'S3'),
(25, 3, 'GENOM', 'S3'),
(26, 3, 'PHYG', 'S3'),
(27, 3, 'SPLEX', 'S3'),
(28, 3, 'STRUCT', 'S3'),
(29, 4, 'MLBDA', 'S1'),
(30, 4, 'LRC', 'S1'),
(31, 5, 'MLBDA', 'S1'),
(32, 5, 'LRC', 'S1'),
(33, 4, 'PLDAC', 'S2'),
(34, 5, 'FPR', 'S2'),
(35, 6, 'BIMA', 'S1'),
(36, 6, 'MOG', 'S1'),
(37, 6, 'RFIDEC', 'S1'),
(38, 7, 'BIMA', 'S1'),
(39, 7, 'MOG', 'S1'),
(40, 7, 'RFIDEC', 'S1'),
(41, 8, 'BIMA', 'S1'),
(42, 8, 'MOG', 'S1'),
(43, 8, 'RFIDEC', 'S1'),
(44, 6, 'AGM', 'S2'),
(45, 6, 'pIMA', 'S2'),
(46, 6, 'Anglais', 'S2'),
(47, 7, 'AGM', 'S2'),
(48, 7, 'pIMA', 'S2'),
(49, 7, 'Anglais', 'S2'),
(50, 8, 'AGM', 'S2'),
(51, 8, 'pIMA', 'S2'),
(52, 8, 'Anglais', 'S2'),
(53, 13, 'ARCHI1', 'S1'),
(54, 13, 'VLSI1', 'S1'),
(55, 13, 'MASSOC', 'S3'),
(56, 14, 'MODEL', 'S1'),
(57, 14, 'COMPLEX', 'S1'),
(58, 15, 'NOYAU', 'S1'),
(59, 15, 'ARES', 'S1'),
(60, 15, 'MLBDA', 'S1'),
(61, 15, 'MOB', 'S2'),
(62, 15, 'ISEC', 'S2'),
(63, 15, 'CRYPTO', 'S3'),
(64, 15, 'SCA', 'S3'),
(65, 16, 'ALGAV', 'S1'),
(66, 16, 'DLP', 'S1'),
(67, 17, 'ALGAV', 'S1'),
(68, 17, 'DLP', 'S1'),
(69, 18, 'ALGAV', 'S1'),
(70, 18, 'DLP', 'S1'),
(71, 19, 'ALGAV', 'S1'),
(72, 19, 'DLP', 'S1'),
(73, 16, 'PSTL', 'S2'),
(74, 17, 'PSTL', 'S2'),
(75, 18, 'PSTL', 'S2'),
(76, 19, 'PSTL', 'S2'),
(77, 9, 'ARES', 'S1'),
(78, 9, 'RTEL', 'S1'),
(79, 9, 'PRES', 'S2'),
(80, 10, 'ARES', 'S1'),
(81, 10, 'RTEL', 'S1'),
(82, 10, 'MOB', 'S2'),
(83, 10, 'ROUT', 'S2'),
(84, 10, 'SAE', 'S2'),
(85, 10, 'CLOUD', 'S2'),
(86, 10, 'PRES', 'S2'),
(87, 10, 'CONT', 'S3'),
(88, 10, 'ITQOS', 'S3'),
(89, 10, 'MOSR', 'S3'),
(90, 10, 'REOP', 'S3'),
(91, 10, 'SECRES', 'S3'),
(92, 11, 'ARES', 'S1'),
(93, 11, 'RTEL', 'S1'),
(94, 11, 'AA', 'S1'),
(95, 11, 'POO', 'S1'),
(96, 11, 'FRANÇAIS', 'S1'),
(97, 11, 'ING', 'S2'),
(98, 11, 'MOB', 'S2'),
(99, 11, 'COMP', 'S2'),
(100, 11, 'TL', 'S2'),
(101, 11, 'PRES', 'S2'),
(102, 12, 'NOYAU', 'S1'),
(103, 12, 'PR', 'S1'),
(128, 14, 'PSFPN', 'S2'),
(129, 10, 'EGP', 'S1'),
(130, 10, 'SRE', 'S1'),
(131, 10, 'OQR', 'S1'),
(132, 15, 'CEH', 'S1'),
(133, 15, 'MMA', 'S1'),
(134, 15, 'REVERSE', 'S2'),
(135, 15, 'AUDITDB', 'S2'),
(136, 15, 'PROJ', 'S2'),
(137, 15, 'CYBER', 'S3'),
(138, 15, 'FOR', 'S3'),
(139, 15, 'SPM', 'S3');

-- --------------------------------------------------------

--
-- Structure de la table `ue_recommandee`
--

CREATE TABLE IF NOT EXISTS `ue_recommandee` (
  `ID_ue_recommande` int(11) NOT NULL AUTO_INCREMENT,
  `ID_parcours` int(11) NOT NULL,
  `nom_ue` varchar(20) NOT NULL,
  `semestre` varchar(2) NOT NULL,
  PRIMARY KEY (`ID_ue_recommande`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=278 ;

--
-- Contenu de la table `ue_recommandee`
--

INSERT INTO `ue_recommandee` (`ID_ue_recommande`, `ID_parcours`, `nom_ue`, `semestre`) VALUES
(1, 1, 'MAPSI', 'S1'),
(2, 1, 'IL', 'S1'),
(3, 1, 'COMPLEX', 'S1'),
(4, 1, 'RP', 'S2'),
(5, 1, 'FoSyMa', 'S2'),
(6, 1, 'IHM', 'S2'),
(7, 1, 'DJ', 'S2'),
(8, 1, 'COCOMA', 'S3'),
(9, 1, 'MAO', 'S3'),
(10, 1, 'EVIJV', 'S3'),
(11, 1, 'MADI', 'S3'),
(12, 1, 'MOSIMA', 'S3'),
(13, 1, 'OPTIM', 'S3'),
(14, 1, 'MADMC', 'S3'),
(15, 1, 'AOTJ', 'S3'),
(16, 1, 'ISG', 'S3'),
(17, 1, 'IAR', 'S3'),
(18, 2, 'MOGPL', 'S1'),
(19, 2, 'LRC', 'S1'),
(20, 2, 'BIMA', 'S1'),
(21, 2, 'MODEL', 'S1'),
(22, 2, 'COMPLEX', 'S1'),
(23, 2, 'IL', 'S1'),
(24, 2, 'SMS', 'S2'),
(25, 2, 'ARF', 'S2'),
(26, 2, 'IG3DA', 'S2'),
(27, 3, 'Projet', 'S2'),
(28, 2, 'GENOM', 'S3'),
(29, 2, 'GPOP', 'S3'),
(30, 2, 'RESYS', 'S3'),
(31, 2, 'BIOPOL', 'S3'),
(32, 2, 'NM484', 'S3'),
(33, 2, 'NM463', 'S3'),
(34, 3, 'GENOM', 'S3'),
(35, 3, 'GPOP', 'S3'),
(36, 3, 'RESYS', 'S3'),
(37, 3, 'BIOPOL', 'S3'),
(38, 3, 'NM484', 'S3'),
(39, 3, 'NM463', 'S3'),
(40, 4, 'MAPSI', 'S1'),
(41, 4, 'IL', 'S1'),
(42, 5, 'MAPSI', 'S1'),
(43, 5, 'IL', 'S1'),
(44, 4, 'ARF', 'S2'),
(45, 4, 'BDR', 'S2'),
(46, 4, 'BI', 'S2'),
(47, 4, 'IAMSI', 'S2'),
(48, 4, 'TAL', 'S2'),
(49, 5, 'ARF', 'S2'),
(50, 5, 'BDR', 'S2'),
(51, 5, 'BI', 'S2'),
(52, 5, 'IAMSI', 'S2'),
(53, 5, 'TAL', 'S2'),
(54, 4, 'AS', 'S3'),
(55, 4, 'ASWS', 'S3'),
(56, 4, 'FDMS', 'S3'),
(57, 4, 'MORACOI', 'S3'),
(58, 4, 'RI', 'S3'),
(59, 4, 'BDLE', 'S3'),
(60, 5, 'AS', 'S3'),
(61, 5, 'ASWS', 'S3'),
(62, 5, 'FDMS', 'S3'),
(63, 5, 'MORACOI', 'S3'),
(64, 5, 'RI', 'S3'),
(65, 5, 'BDLE', 'S3'),
(66, 6, 'ALGAV', 'S1'),
(67, 6, 'IL', 'S1'),
(68, 6, 'MODEL', 'S1'),
(69, 6, 'PROG', 'S1'),
(70, 6, 'ALA', 'S2'),
(71, 6, 'MOREC', 'S2'),
(72, 6, 'MQIA', 'S2'),
(73, 6, 'RP', 'S2'),
(74, 7, 'ALGAV', 'S1'),
(75, 7, 'IL', 'S1'),
(76, 7, 'MODEL', 'S1'),
(77, 7, 'PROG', 'S1'),
(78, 7, 'ALA', 'S2'),
(79, 7, 'MOREC', 'S2'),
(80, 7, 'MQIA', 'S2'),
(81, 7, 'RP', 'S2'),
(82, 8, 'ALGAV', 'S1'),
(83, 8, 'IL', 'S1'),
(84, 8, 'MODEL', 'S1'),
(85, 8, 'PROG', 'S1'),
(86, 8, 'ALA', 'S2'),
(87, 8, 'MOREC', 'S2'),
(88, 8, 'MQIA', 'S2'),
(89, 8, 'RP', 'S2'),
(90, 9, 'SIGNAL', 'S1'),
(91, 9, 'ARCHI', 'S1'),
(92, 9, 'MOGPL', 'S1'),
(93, 9, 'NOYAU', 'S1'),
(94, 9, 'PR', 'S1'),
(95, 9, 'COMPLEX', 'S1'),
(96, 9, 'ALGORES', 'S2'),
(97, 9, 'COMNUM', 'S2'),
(98, 9, 'MOB', 'S2'),
(99, 9, 'ROUT', 'S2'),
(100, 9, 'PROGRES', 'S2'),
(101, 9, 'SEV', 'S2'),
(102, 9, 'CELL', 'S3'),
(103, 9, 'CONT', 'S3'),
(104, 9, 'IGOV', 'S3'),
(105, 9, 'ITQOS', 'S3'),
(106, 9, 'MEPS', 'S3'),
(107, 9, 'METHOD', 'S3'),
(108, 9, 'METRO', 'S3'),
(109, 9, 'REOP', 'S3'),
(110, 9, 'RUBI', 'S3'),
(111, 9, 'SDR', 'S3'),
(112, 9, 'SECRES', 'S3'),
(113, 9, 'SMS', 'S3'),
(114, 9, 'SPEC', 'S3'),
(120, 11, 'RCG', 'S3'),
(121, 11, 'ROUT', 'S3'),
(122, 11, 'SECUR', 'S3'),
(123, 11, 'TCONT', 'S3'),
(124, 11, 'COMNUM', 'S3'),
(125, 11, 'METHO', 'S3'),
(126, 11, 'MNSI', 'S3'),
(127, 11, 'IP', 'S3'),
(128, 11, 'MMIP', 'S3'),
(129, 11, 'MMQOS', 'S3'),
(130, 11, 'PTEL', 'S3'),
(131, 11, 'RAD', 'S3'),
(132, 11, 'GRI', 'S3'),
(133, 11, 'SECURA', 'S3'),
(134, 12, 'ACII', 'S2'),
(135, 12, 'AR', 'S2'),
(136, 12, 'PNL', 'S2'),
(137, 12, 'PSAR', 'S2'),
(138, 12, 'SAS', 'S2'),
(139, 12, 'SPECIF', 'S2'),
(140, 12, 'SRCS', 'S2'),
(141, 12, 'ARA', 'S3'),
(142, 12, 'ASTRE', 'S3'),
(143, 12, 'CODEL', 'S3'),
(144, 12, 'IDM', 'S3'),
(145, 12, 'IM', 'S3'),
(146, 12, 'NMV', 'S3'),
(147, 12, 'PAM', 'S3'),
(148, 12, 'PPM', 'S3'),
(149, 12, 'SF', 'S3'),
(150, 13, 'ELECANA1', 'S1'),
(151, 13, 'MOBJ', 'S1'),
(152, 13, 'SIGNAL', 'S1'),
(153, 13, 'ARES', 'S1'),
(154, 13, 'NOYAU', 'S1'),
(155, 13, 'PR', 'S1'),
(156, 13, 'ANUMDSP', 'S2'),
(157, 13, 'ARCHI2', 'S2'),
(158, 13, 'ELECANA2', 'S2'),
(159, 13, 'FPGA1', 'S2'),
(160, 13, 'PERI', 'S2'),
(161, 13, 'PSESI', 'S2'),
(162, 13, 'AR', 'S2'),
(163, 13, 'COMNUM', 'S2'),
(164, 13, 'PN', 'S2'),
(165, 13, 'SPECIF', 'S2'),
(166, 13, 'ARCHI3', 'S3'),
(167, 13, 'ARCHI4', 'S3'),
(168, 13, 'CBIS', 'S3'),
(169, 13, 'CCN', 'S3'),
(170, 13, 'ELECANA3', 'S3'),
(171, 13, 'FPGA2', 'S3'),
(172, 13, 'OSEM', 'S3'),
(173, 13, 'TASE', 'S3'),
(174, 13, 'VLSI2', 'S3'),
(175, 14, 'FLAG', 'S2'),
(176, 14, 'HPC', 'S2'),
(177, 14, 'RNA', 'S2'),
(178, 14, 'ISEC', 'S2'),
(179, 14, 'CHP', 'S3'),
(180, 14, 'PoSSo', 'S3'),
(181, 14, 'CRYPTO', 'S3'),
(182, 14, 'SCA', 'S3'),
(183, 14, 'AFAE', 'S3'),
(184, 16, 'IL', 'S1'),
(185, 16, 'LRC', 'S1'),
(186, 16, 'MLBDA', 'S1'),
(187, 16, 'NOYAU', 'S1'),
(188, 16, 'PR', 'S1'),
(189, 16, 'ARCHI', 'S1'),
(190, 16, 'COMPLEX', 'S1'),
(191, 16, 'MOGPL', 'S1'),
(192, 17, 'IL', 'S1'),
(193, 17, 'LRC', 'S1'),
(194, 17, 'MLBDA', 'S1'),
(195, 17, 'NOYAU', 'S1'),
(196, 17, 'PR', 'S1'),
(197, 17, 'ARCHI', 'S1'),
(198, 17, 'COMPLEX', 'S1'),
(199, 17, 'MOGPL', 'S1'),
(200, 18, 'IL', 'S1'),
(201, 18, 'LRC', 'S1'),
(202, 18, 'MLBDA', 'S1'),
(203, 18, 'NOYAU', 'S1'),
(204, 18, 'PR', 'S1'),
(205, 18, 'ARCHI', 'S1'),
(206, 18, 'COMPLEX', 'S1'),
(207, 18, 'MOGPL', 'S1'),
(208, 19, 'IL', 'S1'),
(209, 19, 'LRC', 'S1'),
(210, 19, 'MLBDA', 'S1'),
(211, 19, 'NOYAU', 'S1'),
(212, 19, 'PR', 'S1'),
(213, 19, 'ARCHI', 'S1'),
(214, 19, 'COMPLEX', 'S1'),
(215, 19, 'MOGPL', 'S1'),
(216, 16, 'APS', 'S2'),
(217, 16, 'CA', 'S2'),
(218, 16, 'CPA', 'S2'),
(219, 16, 'CPS', 'S2'),
(220, 16, 'PC2R', 'S2'),
(221, 17, 'APS', 'S2'),
(222, 17, 'CA', 'S2'),
(223, 17, 'CPA', 'S2'),
(224, 17, 'CPS', 'S2'),
(225, 17, 'PC2R', 'S2'),
(226, 18, 'APS', 'S2'),
(227, 18, 'CA', 'S2'),
(228, 18, 'CPA', 'S2'),
(229, 18, 'CPS', 'S2'),
(230, 18, 'PC2R', 'S2'),
(231, 19, 'APS', 'S2'),
(232, 19, 'CA', 'S2'),
(233, 19, 'CPA', 'S2'),
(234, 19, 'CPS', 'S2'),
(235, 19, 'PC2R', 'S2'),
(236, 17, 'TPDEV', 'S3'),
(237, 17, 'TPGP', 'S3'),
(238, 17, 'GPSTL', 'S3'),
(239, 17, 'PiSTL', 'S3'),
(240, 17, 'AAGA', 'S3'),
(241, 17, 'ALASCA', 'S3'),
(242, 17, 'DAR', 'S3'),
(243, 17, 'PPC', 'S3'),
(244, 17, 'SVP', 'S3'),
(245, 17, 'TAS', 'S3'),
(246, 16, 'TPDEV', 'S3'),
(247, 16, 'TPGP', 'S3'),
(248, 16, 'GPSTL', 'S3'),
(249, 16, 'PiSTL', 'S3'),
(250, 16, 'GRAL', 'S3'),
(251, 16, 'GRP', 'S3'),
(252, 16, 'AAGA', 'S3'),
(253, 16, 'ALASCA', 'S3'),
(254, 16, 'DAR', 'S3'),
(255, 16, 'PPC', 'S3'),
(256, 16, 'SVP', 'S3'),
(257, 16, 'TAS', 'S3'),
(258, 16, 'CODEL', 'S3'),
(259, 16, 'SF', 'S3'),
(260, 16, 'CHP', 'S3'),
(261, 16, 'PPM', 'S3'),
(262, 19, 'TPDEV', 'S3'),
(263, 19, 'TPGP', 'S3'),
(264, 19, 'GPSTL', 'S3'),
(265, 19, 'PiSTL', 'S3'),
(266, 19, 'AAGA', 'S3'),
(267, 19, 'ALASCA', 'S3'),
(268, 19, 'DAR', 'S3'),
(269, 19, 'PPC', 'S3'),
(270, 19, 'SVP', 'S3'),
(271, 19, 'TAS', 'S3'),
(272, 19, 'GRAL', 'S3'),
(273, 19, 'GRP', 'S3'),
(274, 19, 'CODEL', 'S3'),
(275, 19, 'SF', 'S3'),
(276, 19, 'CHP', 'S3'),
(277, 19, 'PPM', 'S3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
