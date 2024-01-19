-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2024 at 12:18 PM
-- Server version: 5.7.24
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hashing`
--

-- --------------------------------------------------------

--
-- Table structure for table `gebruiker`
--

CREATE TABLE `gebruiker` (
  `ID` int(11) NOT NULL,
  `Gebruikersnaam` varchar(50) NOT NULL,
  `Salting` varchar(50) NOT NULL,
  `Hash_wachtwoord` varchar(50) NOT NULL,
  `Aantal_logins` int(11) DEFAULT NULL,
  `Laatste_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gebruiker_uitgebreid`
--

CREATE TABLE `gebruiker_uitgebreid` (
  `ID` int(11) NOT NULL,
  `Naam` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Salting` varchar(80) NOT NULL,
  `Hash_wachtwoord` varchar(80) NOT NULL,
  `Aantal_logins` int(11) DEFAULT NULL,
  `Laatste_login` timestamp NULL DEFAULT NULL,
  `Blocked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gebruiker_uitgebreid`
--

INSERT INTO `gebruiker_uitgebreid` (`ID`, `Naam`, `Email`, `Salting`, `Hash_wachtwoord`, `Aantal_logins`, `Laatste_login`, `Blocked`) VALUES
(1, 'rens', 'r.kooijman05@gmail.com', '$2y$10$iZ.gNHG4D1pYWckP48F6YOKKGkTW386TtfdcsNKefH.BQBkUMDCZK', '$2y$10$hUBucWccSzZiVM1tu7wLL.Bl1.uZ89I7rGKK28/Rh10ixfs7Tse8.', NULL, NULL, 0),
(2, 'rens kooijman', 'r.kooijman6005@gmail.com', '$2y$10$EHVr6Vrqz/NO.qMFqY5UNebTtqwtVTG0sbqGuZkrChikbT4THf33O', '$2y$10$KnhWkrWDril2oAVn3SM4yeTg7nCm8.0eZBJpBGv3R1Uz1X6fOk/pS', NULL, NULL, 0),
(3, 'rens kooijman', 'r.kooijman6005@gmail.com', '$2y$10$BJF0Kir9xAV44Z46aT3Sz.NDM.hNNzklm3PN/SYZc2gsDPg8.ul/y', '$2y$10$//ZDsh45ewMgoVjGMSR2jeXszrlZwVBK7E80njzWF9ZUldc.zv/SS', NULL, NULL, 0),
(4, 'test one', '40195606@rocwb.nl', '$2y$10$JNQCVAC55PhR3oBDGQw3W.6lHXzggB5AAEgzSnuX6PkOxCJa.YWfu', '$2y$10$8jIQ3.KYJdOOSwOXMR4JIeFLRN3E5vvzUKuro5yW4a3Ykgi8APBo.', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gebruiker`
--
ALTER TABLE `gebruiker`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gebruiker_uitgebreid`
--
ALTER TABLE `gebruiker_uitgebreid`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gebruiker_uitgebreid`
--
ALTER TABLE `gebruiker_uitgebreid`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
