-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gostitelj: localhost
-- Čas nastanka: 29. okt 2021 ob 11.53
-- Različica strežnika: 10.4.20-MariaDB
-- Različica PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Zbirka podatkov: `social_network`
--
CREATE DATABASE IF NOT EXISTS `social_network` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `social_network`;

-- --------------------------------------------------------

--
-- Struktura tabele `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `likes` int(11) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `likes`, `created_time`) VALUES
(1, 14, 'Danes je lep dan!\r\n(test)', 0, '2021-10-29 11:50:46'),
(2, 15, 'test test test', 1, '2021-10-29 11:52:21');

-- --------------------------------------------------------

--
-- Struktura tabele `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `profile_image` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `profile_image`, `email`, `password`) VALUES
(14, 'Žiga', 'Nikolić', 'ziganikolic', 'uploads/default.jpg', 'ziganikolic@gmail.com', '$2y$10$rDp7LF/TvLbHCJ2fnaEbaeUDbrIiJMJBGwerKQEHvhEw9jBOruzEC'),
(15, 'Janez', 'Novak', 'janeznovak', 'uploads/default.jpg', 'janez.novak@gmail.com', '$2y$10$IpCycdAcMxbVnV7szHdpbeku9w9oR8EfooF3/vHb4ZqsWar9SshGK');

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksi tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
