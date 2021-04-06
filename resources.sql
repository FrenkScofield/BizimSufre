-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2020 at 03:43 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sufredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `PageKey` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Key` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`Id`, `OrderBy`, `PageKey`, `Key`) VALUES
(1, NULL, 'Genel', 'dahacok'),
(2, NULL, 'About', 'numara'),
(3, NULL, 'Blogs', 'kesfet'),
(4, NULL, 'Blogs', 'paylas'),
(5, NULL, 'Blogs', 'diger'),
(6, NULL, 'genel', 'inputsearch'),
(7, NULL, 'Product', 'digermehsul'),
(8, NULL, 'Home', 'resep'),
(9, NULL, 'Recepts', 'ara'),
(10, NULL, 'Recepts', 'kat'),
(11, NULL, 'Recepts', 'resepdiger'),
(12, NULL, 'Genel', 'anasayfa'),
(13, NULL, 'Genel', 'hakkimizda'),
(14, NULL, 'Genel', 'kesfet'),
(15, NULL, 'Genel', 'Mahsullar'),
(16, NULL, 'Genel', 'resept');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
