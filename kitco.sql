-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 12, 2024 at 04:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kitco`
--

-- --------------------------------------------------------

--
-- Table structure for table `gold_price`
--

CREATE TABLE `gold_price` (
  `id` int(11) NOT NULL,
  `bid` float DEFAULT NULL,
  `ask` float DEFAULT NULL,
  `high` float DEFAULT NULL,
  `low` float DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gold_price`
--

INSERT INTO `gold_price` (`id`, `bid`, `ask`, `high`, `low`, `datetime`) VALUES
(1, 2026.6, 2027.6, 2033.9, 2021.2, '2024-05-11 10:30:06'),
(2, 2028.9, 2029.9, 2033.9, 2021.2, '2024-05-11 11:00:06'),
(3, 2036.7, 2037.7, 2039.1, 2021.2, '2024-05-11 11:30:06'),
(4, 2036.8, 2037.8, 2040.1, 2021.2, '2024-05-11 12:00:06'),
(5, 2033.6, 2034.6, 2040.1, 2021.2, '2024-05-11 12:30:16'),
(6, 2037.6, 2038.6, 2041.4, 2021.2, '2024-05-11 13:00:07'),
(7, 2028, 2029, 2041.4, 2021.2, '2024-05-11 13:30:06'),
(8, 2010.7, 2011.7, 2041.4, 2010.5, '2024-05-11 14:00:07'),
(9, 2015.6, 2016.6, 2041.4, 2010.5, '2024-05-11 14:30:08'),
(10, 2020.7, 2021.7, 2041.4, 2010.5, '2024-05-11 15:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `palladium_price`
--

CREATE TABLE `palladium_price` (
  `id` int(11) NOT NULL,
  `bid` float DEFAULT NULL,
  `ask` float DEFAULT NULL,
  `high` float DEFAULT NULL,
  `low` float DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `palladium_price`
--

INSERT INTO `palladium_price` (`id`, `bid`, `ask`, `high`, `low`, `datetime`) VALUES
(1, 1514, 1664, 1686, 1496, '2024-05-11 10:30:06'),
(2, 1518, 1668, 1686, 1496, '2024-05-11 11:00:06'),
(3, 1525, 1675, 1686, 1496, '2024-05-11 11:30:06'),
(4, 1516, 1666, 1686, 1496, '2024-05-11 12:00:06'),
(5, 1540, 1690, 1690, 1496, '2024-05-11 12:30:16'),
(6, 1550, 1700, 1707, 1496, '2024-05-11 13:00:07'),
(7, 1536, 1686, 1707, 1496, '2024-05-11 13:30:06'),
(8, 1508, 1658, 1707, 1496, '2024-05-11 14:00:07'),
(9, 1503, 1653, 1707, 1496, '2024-05-11 14:30:08'),
(10, 1504, 1654, 1707, 1496, '2024-05-11 15:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `platinum_price`
--

CREATE TABLE `platinum_price` (
  `id` int(11) NOT NULL,
  `bid` float DEFAULT NULL,
  `ask` float DEFAULT NULL,
  `high` float DEFAULT NULL,
  `low` float DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `platinum_price`
--

INSERT INTO `platinum_price` (`id`, `bid`, `ask`, `high`, `low`, `datetime`) VALUES
(1, 1098, 1108, 1126, 1094, '2024-05-11 10:30:06'),
(2, 1097, 1107, 1126, 1094, '2024-05-11 11:00:06'),
(3, 1102, 1112, 1126, 1094, '2024-05-11 11:30:06'),
(4, 1099, 1109, 1126, 1094, '2024-05-11 12:00:06'),
(5, 1105, 1115, 1126, 1094, '2024-05-11 12:30:16'),
(6, 1115, 1125, 1126, 1094, '2024-05-11 13:00:07'),
(7, 1106, 1116, 1128, 1094, '2024-05-11 13:30:06'),
(8, 1090, 1100, 1128, 1089, '2024-05-11 14:00:07'),
(9, 1092, 1102, 1128, 1085, '2024-05-11 14:30:08'),
(10, 1095, 1105, 1128, 1085, '2024-05-11 15:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `silver_price`
--

CREATE TABLE `silver_price` (
  `id` int(11) NOT NULL,
  `bid` float DEFAULT NULL,
  `ask` float DEFAULT NULL,
  `high` float DEFAULT NULL,
  `low` float DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `silver_price`
--

INSERT INTO `silver_price` (`id`, `bid`, `ask`, `high`, `low`, `datetime`) VALUES
(1, 24.91, 25.01, 25.44, 24.83, '2024-05-11 10:30:06'),
(2, 24.88, 24.98, 25.44, 24.83, '2024-05-11 11:00:06'),
(3, 25.02, 25.12, 25.44, 24.83, '2024-05-11 11:30:06'),
(4, 24.97, 25.07, 25.44, 24.83, '2024-05-11 12:00:06'),
(5, 24.84, 24.94, 25.44, 24.81, '2024-05-11 12:30:16'),
(6, 24.87, 24.97, 25.44, 24.81, '2024-05-11 13:00:07'),
(7, 24.57, 24.67, 25.44, 24.48, '2024-05-11 13:30:06'),
(8, 24.25, 24.35, 25.44, 24.2, '2024-05-11 14:00:07'),
(9, 24.23, 24.33, 25.44, 24.18, '2024-05-11 14:30:08'),
(10, 24.37, 24.47, 25.44, 24.18, '2024-05-11 15:00:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gold_price`
--
ALTER TABLE `gold_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `palladium_price`
--
ALTER TABLE `palladium_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platinum_price`
--
ALTER TABLE `platinum_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `silver_price`
--
ALTER TABLE `silver_price`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gold_price`
--
ALTER TABLE `gold_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `palladium_price`
--
ALTER TABLE `palladium_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `platinum_price`
--
ALTER TABLE `platinum_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `silver_price`
--
ALTER TABLE `silver_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
