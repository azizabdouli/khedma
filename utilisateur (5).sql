-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 26 avr. 2023 à 03:23
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `collectitn`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `roles` enum('ROLE_ADMIN','ROLE_CLIENT','ROLE_PARTNER') NOT NULL COMMENT '(DC2Type:user_role_enum)',
  `telephone` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `datenaiss` date NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `roles`, `telephone`, `email`, `password`, `datenaiss`, `is_verified`) VALUES
(5, 'AZIZ', 'bourguiba', 'ROLE_ADMIN', 12345678, 'abourguiba510@gmail.com', '$2y$13$YS7QiG.HkIXFD5u1vYTNkOWvc63SaBQ..Y6Ym9zF6Muv3Mmr3ZmSa', '2018-01-01', 1),
(6, 'zzzz', 'zzzzz', 'ROLE_PARTNER', 12345678, 'abourguiba51@gmail.com', '$2y$13$cZdSK4l589uxOGsfPWvIFeGiSMn9GRyy1YUdsSmnRKAb8K521bpIm', '2018-01-01', 0),
(8, 'zzzz', 'ssss', 'ROLE_PARTNER', 12345678, 'raed.guebsi@esprit.tn', '$2y$13$XMjBMHpbeHlIqQ3OE0j5t.pGv/8juTxnpOue/EwlG1r3vSCJbdfSW', '2018-01-01', 0),
(9, 'zzzz', 'ssss', 'ROLE_ADMIN', 12345678, 'rezguiseifeddine@gmail.com', '$2y$13$nwdpUzDUvKFbA0lQtiZmxe8T9.hr.VMHuNHoc/R5LGZNgUh68AW9q', '2018-01-01', 0),
(10, 'zzzz', 'ssss', 'ROLE_PARTNER', 12345678, 'anisfarjallah0705@gmail.com', '$2y$13$egfTqgPAZUOJyupD8wNDeup5gDdYPuA8LjiH5odqmRcL05j.9jiwi', '2018-01-01', 0),
(11, 'AAAA', 'AAAA', 'ROLE_ADMIN', 12345678, 'AAAAAA@hhh', '$2y$13$cruDvyn1SboxKYBdrfdobeqUooPJPgwo0laLxgqEEScEGY7Sni54y', '2018-01-01', 1),
(12, 'AAAAA', 'DDDDDD', 'ROLE_PARTNER', 12345678, 'AAAAAA@HHHH.com', '$2y$13$rcE96OHcQvwQwEXT7VEMPuR.FWlzmXk2cvrFATP7.Kysf30oahAdK', '2018-01-01', 0),
(13, 'AAAA', 'AAAA', 'ROLE_CLIENT', 12345678, 'AAAAAA@hhhHH', '$2y$13$D4T2xPpgBiCyu.KPJr1op.SWhCAY37J59j.XJoWOVETC7zG0W6k1a', '2018-01-01', 1),
(14, 'aziz', 'abdouli', 'ROLE_CLIENT', 50123456, 'saber@saber', '$2y$13$NYECIO1l5ksDQKp235Ofr.ICGMKqCmFQHFDMrH2hJxZlDem8zPGxm', '2018-01-01', 1),
(15, 'abdouli', 'aziz', 'ROLE_ADMIN', 56464896, 'azizabdouli2314@gmail.fr', '$2y$13$ybZbrl.hNc8XZhHOBmHkDOvmNTG8EFxq3aTvhsUCH6H1l.1qyE/iG', '2018-01-01', 1),
(333, 'azizzz', 'abdoulii', 'ROLE_CLIENT', 50123456, 'aziz.abdouli@esprit.tn', '$2y$13$/ewzKnsSKyDdVAzHBJxLO.48z078J.pskw5aqFqzwhSMeX52ivmo6', '2023-04-20', 0),
(334, 'mayar', 'hmidi', 'ROLE_CLIENT', 52364789, 'mayar.hmidi@esprit.tn', '$2y$13$fatq5jfPxkkkwrKdeY3MEeyapDu6gPV48vM4R9iTHCh/hMEw8WS5m', '2018-01-01', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
