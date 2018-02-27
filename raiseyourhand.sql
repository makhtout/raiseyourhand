-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 27 fév. 2018 à 10:57
-- Version du serveur :  10.1.30-MariaDB
-- Version de PHP :  7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `raiseyourhand`
--

-- --------------------------------------------------------

--
-- Structure de la table `messagepredefini`
--

CREATE TABLE `messagepredefini` (
  `idMessagePredefini` int(11) NOT NULL,
  `idSalleVirtuelle` int(11) NOT NULL,
  `libelleMessagePredefini` text CHARACTER SET latin1 NOT NULL,
  `couleurMessagePredefini` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `messagepredefini`
--

INSERT INTO `messagepredefini` (`idMessagePredefini`, `idSalleVirtuelle`, `libelleMessagePredefini`, `couleurMessagePredefini`) VALUES
(740, 171, 'Bravo', 'btn btn-success'),
(741, 171, 'Merci', 'btn btn-info'),
(742, 171, 'Parlez plus fort !', 'btn btn-warning'),
(743, 171, 'Pas compris !', 'btn btn-danger'),
(744, 171, 'Repeter	ce point !', 'btn btn-default'),
(745, 171, 'Diapo non visible', 'btn btn-warning'),
(746, 171, 'Jai tout compris\r', 'btn btn-default'),
(747, 172, 'Bravo', 'btn btn-success'),
(748, 172, 'Merci', 'btn btn-info'),
(749, 172, 'Parlez plus fort !', 'btn btn-warning'),
(750, 172, 'J\'ai rien compris\r', 'btn btn-default'),
(751, 173, 'Bravo', 'btn btn-success'),
(752, 173, 'Merci', 'btn btn-info'),
(753, 173, 'Parlez plus fort !', 'btn btn-warning'),
(754, 173, 'J\'ai rien compris\r', 'btn btn-default'),
(755, 174, 'Bravo', 'btn btn-success'),
(756, 174, 'Merci', 'btn btn-info'),
(757, 174, 'Parlez plus fort !', 'btn btn-warning'),
(758, 1, 'Bravo', 'btn btn-success'),
(759, 1, 'Merci', 'btn btn-info'),
(760, 1, 'Parlez plus fort !', 'btn btn-warning'),
(761, 2, 'Bravo', 'btn btn-success'),
(762, 2, 'Merci', 'btn btn-info'),
(763, 2, 'Parlez plus fort !', 'btn btn-warning'),
(764, 2, 'J\'ai rien compris\r', 'btn btn-default'),
(765, 2, 'J\'ai une question\r', 'btn btn-default'),
(766, 3, 'Bravo', 'btn btn-success'),
(767, 3, 'Merci', 'btn btn-info');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `idQuestion` int(11) NOT NULL,
  `idSalleVirtuelle` int(11) NOT NULL,
  `libelleQuestion` text CHARACTER SET latin1 NOT NULL,
  `ressourceGraphique` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`idQuestion`, `idSalleVirtuelle`, `libelleQuestion`, `ressourceGraphique`) VALUES
(227, 172, 'zzzzzzzzz?', ''),
(228, 172, 'tttt?', ''),
(231, 174, 'GGGG?', ''),
(232, 174, 'ooooooo?', ''),
(233, 1, 'Question 1???', ''),
(234, 2, 'Lesquelles de ces déclarations est correcte? ', ''),
(235, 2, 'ce vidéo permet l\'installation de ??', 'video.MP4'),
(236, 3, 'QSFD', '');

-- --------------------------------------------------------

--
-- Structure de la table `questionnairelancee`
--

CREATE TABLE `questionnairelancee` (
  `idQuestionnaireLancee` int(11) NOT NULL,
  `idSalleVirtuelle` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `questionnairelancee`
--

INSERT INTO `questionnairelancee` (`idQuestionnaireLancee`, `idSalleVirtuelle`, `idQuestion`) VALUES
(213, 174, 231),
(214, 2, 234),
(215, 2, 235),
(216, 3, 236);

-- --------------------------------------------------------

--
-- Structure de la table `reponseauditoire`
--

CREATE TABLE `reponseauditoire` (
  `idReponseAuditoire` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL,
  `reponseQuestion` text COLLATE utf8_bin NOT NULL,
  `codeSalleVirtuelle` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `reponseauditoire`
--

INSERT INTO `reponseauditoire` (`idReponseAuditoire`, `idQuestion`, `reponseQuestion`, `codeSalleVirtuelle`) VALUES
(32, 226, 'Oui\r', 'rpxeh'),
(33, 229, '1\r', 'kskkj'),
(34, 236, 'AAA\r', 'ajacz');

-- --------------------------------------------------------

--
-- Structure de la table `reponsejuste`
--

CREATE TABLE `reponsejuste` (
  `idReponseJuste` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL,
  `libelleReponseJuste` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `reponsejuste`
--

INSERT INTO `reponsejuste` (`idReponseJuste`, `idQuestion`, `libelleReponseJuste`) VALUES
(89, 226, 'Oui\r\n'),
(90, 227, 'z1\r\n'),
(91, 228, 't2\r\n'),
(92, 229, '1\r\n'),
(93, 229, '2\r\n'),
(94, 230, '3\r\n'),
(95, 230, '4\r\n'),
(96, 231, 'g1\r\n'),
(97, 232, 'o2\r\n'),
(98, 233, '1\r\n'),
(99, 234, 'boolean b = TRUE;\r\n'),
(100, 234, 'String s = ?null?;\r\n'),
(101, 235, 'JDK\r\n'),
(102, 236, 'AAA\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `reponseproposer`
--

CREATE TABLE `reponseproposer` (
  `idReponseProposer` int(11) NOT NULL,
  `libelleQuestion` text COLLATE utf8_bin NOT NULL,
  `libelleReponseProposer` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `reponseproposer`
--

INSERT INTO `reponseproposer` (`idReponseProposer`, `libelleQuestion`, `libelleReponseProposer`) VALUES
(435, 'Question Oui Non?', 'Oui\r'),
(436, 'Question Oui Non?', 'Non\r'),
(437, 'zzzzzzzzz?', 'z1\r'),
(438, 'zzzzzzzzz?', 'z2\r'),
(439, 'tttt?', 't1\r'),
(440, 'tttt?', 't2\r'),
(441, 'qy?', '1\r'),
(442, 'qy?', '2\r'),
(443, 'opN?', '3\r'),
(444, 'opN?', '4\r'),
(445, 'GGGG?', 'g1\r'),
(446, 'GGGG?', 'g2\r'),
(447, 'ooooooo?', 'o1\r'),
(448, 'ooooooo?', 'o2\r'),
(449, 'Question 1???', '1\r'),
(450, 'Question 1???', '2\r'),
(451, 'Lesquelles de ces déclarations est correcte? ', 'boolean b = TRUE;\r'),
(452, 'Lesquelles de ces déclarations est correcte? ', 'byte b = 255;\r'),
(453, 'Lesquelles de ces déclarations est correcte? ', 'String s = ?null?;\r'),
(454, 'ce vidéo permet l\'installation de ??', 'JDK\r'),
(455, 'ce vidéo permet l\'installation de ??', 'JRE\r'),
(456, 'QSFD', 'AAA\r'),
(457, 'QSFD', 'ZZZ\r');

-- --------------------------------------------------------

--
-- Structure de la table `sallevirtuelle`
--

CREATE TABLE `sallevirtuelle` (
  `idSalleVirtuelle` int(11) NOT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `nomSalle` text CHARACTER SET latin1 NOT NULL,
  `cleAccees` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `sallevirtuelle`
--

INSERT INTO `sallevirtuelle` (`idSalleVirtuelle`, `idUtilisateur`, `nomSalle`, `cleAccees`) VALUES
(1, 12, 'aaaa', 'qnknk'),
(2, 12, 'Salle java débutant', 'ndple'),
(3, 12, 'Exemple', 'ajacz');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `civiliteUtilisateur` text CHARACTER SET latin1 NOT NULL,
  `pseudoUtilisateur` text CHARACTER SET latin1 NOT NULL,
  `nomUtilisateur` text CHARACTER SET latin1 NOT NULL,
  `prenomUtilisateur` text CHARACTER SET latin1 NOT NULL,
  `mailUtilisateur` text CHARACTER SET latin1 NOT NULL,
  `mdpUtilisateur` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `civiliteUtilisateur`, `pseudoUtilisateur`, `nomUtilisateur`, `prenomUtilisateur`, `mailUtilisateur`, `mdpUtilisateur`) VALUES
(12, 'Mr', 'ayou', 'aaaaa', 'aaa', 'aaa@gmail.com', '6eb77d55f6c6ebb5eddf310eab6aa724'),
(13, 'Mr', 'aaaa', 'BB', 'AA', 'zz@gg.ss', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `messagepredefini`
--
ALTER TABLE `messagepredefini`
  ADD PRIMARY KEY (`idMessagePredefini`),
  ADD KEY `idSalleVirtuelle` (`idSalleVirtuelle`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`idQuestion`);

--
-- Index pour la table `questionnairelancee`
--
ALTER TABLE `questionnairelancee`
  ADD PRIMARY KEY (`idQuestionnaireLancee`);

--
-- Index pour la table `reponseauditoire`
--
ALTER TABLE `reponseauditoire`
  ADD PRIMARY KEY (`idReponseAuditoire`);

--
-- Index pour la table `reponsejuste`
--
ALTER TABLE `reponsejuste`
  ADD PRIMARY KEY (`idReponseJuste`),
  ADD KEY `idQuestion` (`idQuestion`);

--
-- Index pour la table `reponseproposer`
--
ALTER TABLE `reponseproposer`
  ADD PRIMARY KEY (`idReponseProposer`);

--
-- Index pour la table `sallevirtuelle`
--
ALTER TABLE `sallevirtuelle`
  ADD PRIMARY KEY (`idSalleVirtuelle`),
  ADD KEY `idUtilisateur` (`idUtilisateur`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messagepredefini`
--
ALTER TABLE `messagepredefini`
  MODIFY `idMessagePredefini` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=768;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT pour la table `questionnairelancee`
--
ALTER TABLE `questionnairelancee`
  MODIFY `idQuestionnaireLancee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT pour la table `reponseauditoire`
--
ALTER TABLE `reponseauditoire`
  MODIFY `idReponseAuditoire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `reponsejuste`
--
ALTER TABLE `reponsejuste`
  MODIFY `idReponseJuste` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT pour la table `reponseproposer`
--
ALTER TABLE `reponseproposer`
  MODIFY `idReponseProposer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT pour la table `sallevirtuelle`
--
ALTER TABLE `sallevirtuelle`
  MODIFY `idSalleVirtuelle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
