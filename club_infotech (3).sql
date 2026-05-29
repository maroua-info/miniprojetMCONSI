-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 30 mai 2026 à 00:57
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `club_infotech`
--

-- --------------------------------------------------------

--
-- Structure de la table `contests`
--

CREATE TABLE `contests` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date_concours` date DEFAULT NULL,
  `lieu` varchar(255) DEFAULT NULL,
  `coefficient` float NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contests`
--

INSERT INTO `contests` (`id`, `titre`, `description`, `date_concours`, `lieu`, `coefficient`) VALUES
(3, 'hachathon web', 'développment ', '2026-06-20', 'université de skikda', 1),
(4, 'IA challenge', 'reso', '2026-07-15', 'univer skikda', 1),
(5, 'CYBER security', 'testes', '2026-08-10', 'bloc info', 1),
(6, 'code master', 'compétition', '2026-07-10', 'SKIKDA', 1);

-- --------------------------------------------------------

--
-- Structure de la table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `contest_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `registrations`
--

INSERT INTO `registrations` (`id`, `user_id`, `contest_id`) VALUES
(1, 10, 1),
(2, 19, 3),
(3, 22, 5),
(4, 25, 6);

-- --------------------------------------------------------

--
-- Structure de la table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `participant` varchar(100) DEFAULT NULL,
  `contest` varchar(100) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `complexity` int(11) DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `scores`
--

INSERT INTO `scores` (`id`, `participant`, `contest`, `score`, `complexity`, `execution_time`) VALUES
(2, 'test2', 'lsfhvs', 50, 5, 10),
(3, 'farida', 'IA challenge', 25, 5, 5),
(4, 'test2', 'IA challenge', 20, 4, 5),
(5, 'farida', 'CYBER security', 80, 8, 10);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(10, 'test2', 'test2@gmail.com', '$2y$10$k/7uRGVfLcn60CtqCYp9ye5pa8MguavlN9MJJSzt074SNG9lXUKfK', 'participant'),
(11, 'ritadje', 'ritadje@gmail.com', '$2y$10$cL8EeokctuyW1EQL3QOyvOre4poIWP3cjVGKK8.08qKlFDazzfnQu', 'organisateur'),
(12, 'fahd', 'fahd@gmail.com', '$2y$10$3L7pMgOZeB7PfmlESZESyOcuK2VWV/VgHKsutokMeKEngtW0GbRmK', 'organisateur'),
(13, 'admin2', 'admin2@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin'),
(14, 'rahma_org', 'org@gmail.com', '$2y$10$Bhbcyp8f9qhimAj/AN.k6.SrpbNPwr81FRgDFzi21f70Caync0Vpu', 'organisateur'),
(17, 'farida', 'farida@gmail.com', '$2y$10$XkaPrIpUfQxTe/YoDrKKWuo0Ha3aBaSakSPhy5pCtAl4pkmDmxiiy', 'participant'),
(19, 'MERIEM', 'meriem@gmail.com', '$2y$10$Dg66hWxf5TO1x.9jkYi6PepDwa./lf2YWdyU2cNhBijy/DhZkVCq6', 'participant'),
(22, 'ahmed', 'ahmed@gmail.com', '$2y$10$A0Dl4NGjhurETo7aR9u5tuy0eglU2ZyGQcwWxQjcxLEHFb2.pVJaK', 'participant'),
(24, 'aya', 'aya@gmail.com', '$2y$10$3hCpp2oKbX9m1i/YD81Ko.wBNQWzeqjf8740Z0sjve0lQPZf6C/YK', 'organisateur'),
(25, 'yacine', 'yacine@gmail.com', '$2y$10$CqJqv08mJqmp880joeSQlOVgmjrGdKu1M4favKhUz27VJryvBlrF.', 'participant');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contests`
--
ALTER TABLE `contests`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contests`
--
ALTER TABLE `contests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
