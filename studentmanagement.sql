-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 07:05 PM
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
-- Database: `studentmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `combined_data`
--

CREATE TABLE `combined_data` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL CHECK (`status` in ('Paid','Unpaid')),
  `total_fees` int(11) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `combined_data`
--

INSERT INTO `combined_data` (`id`, `username`, `status`, `total_fees`, `contact`) VALUES
(1, 'user1', 'Unpaid', 17500, 1234567890),
(2, 'user2', 'Paid', 20000, 987654321),
(3, 'user3', 'Unpaid', 9000, 1122334455),
(4, 'user4', 'Unpaid', 0, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'Admin', 'senz');

-- --------------------------------------------------------

--
-- Table structure for table `paysub`
--

CREATE TABLE `paysub` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `facility_fee` int(50) NOT NULL,
  `sports_fee` int(50) NOT NULL,
  `monthly_fee` int(50) NOT NULL,
  `annual_fee` int(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paysub`
--

INSERT INTO `paysub` (`id`, `name`, `month`, `facility_fee`, `sports_fee`, `monthly_fee`, `annual_fee`, `status`) VALUES
(12, 'dean', 'june', 3000, 5000, 4000, 6000, 'Unpaid'),
(34, 'Yan', 'May', 3600, 4000, 600, 10000, 'Unpaid'),
(45, 'hgg', 'jan', 545, 357, 3215, 6773, 'Unpaid'),
(74, 'sdf', 'gf', 4563, 1465, 7859, 5412, 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `math` int(50) NOT NULL,
  `eng` int(50) NOT NULL,
  `bio` int(50) NOT NULL,
  `grade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `name`, `class`, `math`, `eng`, `bio`, `grade`) VALUES
(34, 'fhj', 'shs', 53, 55, 36, 'D'),
(43, 'dfgh', 'ew', 45, 67, 56, 'C'),
(52, 'John', 'DES', 67, 82, 71, 'A'),
(56, 'willy', 'AA', 76, 89, 72, 'A'),
(66, 'jkyu', 'qq', 65, 36, 90, 'B'),
(342, 'erweg', 'AA', 56, 58, 23, 'D'),
(432, 'dfgh', 'ew', 45, 67, 24, 'D'),
(523, 'adsgdf', 'eqew', 41, 14, 67, 'D'),
(3425, 'xdfghjk', 'sdfg', 100, 34, 56, 'B'),
(34256, 'xdfghjk', 'sdfg', 34, 34, 56, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `stureg`
--

CREATE TABLE `stureg` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `contact` int(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paysub`
--
ALTER TABLE `paysub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stureg`
--
ALTER TABLE `stureg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `paysub`
--
ALTER TABLE `paysub`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34257;

--
-- AUTO_INCREMENT for table `stureg`
--
ALTER TABLE `stureg`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
