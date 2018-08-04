-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2018 at 03:13 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Benjamin Orn', 'myah16@yahoo.com', '2018-08-03 12:48:45', '2018-08-03 12:48:45'),
(2, 'Brent Berge', 'lelah36@flatley.net', '2018-08-03 12:48:45', '2018-08-03 12:48:45'),
(3, 'Tanner Romaguera', 'fidel28@hotmail.com', '2018-08-03 12:48:45', '2018-08-03 12:48:45'),
(4, 'Ila Smitham', 'ghilpert@cummerata.info', '2018-08-03 12:48:45', '2018-08-03 12:48:45'),
(5, 'Jeanne Lockman', 'haag.isai@waters.com', '2018-08-03 12:48:45', '2018-08-03 12:48:45'),
(6, 'Santino Gleason I', 'troy.effertz@mcglynn.com', '2018-08-03 12:48:45', '2018-08-03 12:48:45'),
(7, 'Josianne Langosh', 'iking@gmail.com', '2018-08-03 12:48:45', '2018-08-03 12:48:45'),
(8, 'Doris Bailey', 'swaniawski.kali@koch.com', '2018-08-03 12:48:45', '2018-08-03 12:48:45'),
(9, 'Mrs. Freida Corwin DDS', 'mikayla78@marks.biz', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(10, 'Dr. Bo Pfannerstill II', 'don59@rippin.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(11, 'Gilberto Spencer', 'alphonso14@gmail.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(12, 'Agustina Hamill', 'jermain24@wunsch.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(13, 'Melody Schowalter', 'barney57@gmail.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(14, 'Jett Ernser', 'elody.mitchell@bradtke.net', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(15, 'Celia Stanton DVM', 'daija32@cronin.org', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(16, 'Modesta Harris', 'zemard@yahoo.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(17, 'Ardella Schroeder', 'yasmine99@yahoo.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(18, 'Mr. Christopher Bauch', 'mccullough.alta@ledner.biz', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(19, 'Leilani Predovic', 'orie35@gmail.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(20, 'Cassie Goldner', 'pfannerstill.jennie@yahoo.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(21, 'Mr. Albert Moen', 'herminia40@gmail.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(22, 'Penelope Boyer', 'romaguera.mckayla@mckenzie.biz', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(23, 'Talon Waters', 'west.bethel@powlowski.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(24, 'Terrill Hagenes', 'amos86@hotmail.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(25, 'Craig Schinner', 'gladys.veum@ruecker.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(26, 'Liliana Denesik', 'hwalker@hotmail.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(27, 'Mr. Jayce Bechtelar', 'mina87@lueilwitz.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(28, 'Dr. Santa Fadel MD', 'morris58@yahoo.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(29, 'Mertie Frami Jr.', 'roreilly@goldner.biz', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(30, 'Cora Beahan', 'eferry@lowe.net', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(31, 'Hattie Halvorson', 'wschmitt@shields.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(32, 'Prof. Monte Nader', 'bernadette.toy@hotmail.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(33, 'Jaylan Rempel III', 'uschimmel@turcotte.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(34, 'Justina Morissette', 'dedrick84@gmail.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(35, 'Andre Barrows PhD', 'equitzon@gmail.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(36, 'Gladys Botsford', 'maude49@hotmail.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(37, 'Aurelie Gottlieb', 'dean.jacobi@gmail.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(38, 'Prof. Marcel Cassin II', 'elmer72@fritsch.com', '2018-08-03 12:48:46', '2018-08-03 12:48:46'),
(39, 'Miss Emely Nikolaus PhD', 'emory.white@hirthe.com', '2018-08-03 12:48:47', '2018-08-03 12:48:47'),
(40, 'Meta Turner', 'germaine.abernathy@krajcik.org', '2018-08-03 12:48:47', '2018-08-03 12:48:47'),
(41, 'Jeffry Olson', 'mya.brekke@yahoo.com', '2018-08-03 12:48:47', '2018-08-03 12:48:47'),
(42, 'Rosario Corwin', 'ybaumbach@yahoo.com', '2018-08-03 12:48:47', '2018-08-03 12:48:47'),
(43, 'Dr. Emie Dare IV', 'jazlyn.kshlerin@boehm.com', '2018-08-03 12:48:47', '2018-08-03 12:48:47'),
(44, 'Jonathon Bashirian', 'oberbrunner.erick@marvin.org', '2018-08-03 12:48:47', '2018-08-03 12:48:47'),
(45, 'Prof. Shyann Kilback DVM', 'jaskolski.aniya@jones.com', '2018-08-03 12:48:47', '2018-08-03 12:48:47'),
(46, 'Boris Prosacco Jr.', 'mkuhn@lemke.biz', '2018-08-03 12:48:47', '2018-08-03 12:48:47'),
(47, 'Thomas Hahn', 'murray.katelynn@ledner.net', '2018-08-03 12:48:47', '2018-08-03 12:48:47'),
(48, 'Rebeka Douglas', 'maye.rice@hotmail.com', '2018-08-03 12:48:47', '2018-08-03 12:48:47'),
(49, 'Isaac Stroman II', 'allie.adams@hotmail.com', '2018-08-03 12:48:47', '2018-08-03 12:48:47'),
(50, 'Darlene Quitzon', 'fbarrows@bogan.com', '2018-08-03 12:48:47', '2018-08-03 12:48:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_03_043616_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
