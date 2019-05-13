-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2019 at 11:10 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharminder`
--

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `latitude` float(12,0) NOT NULL,
  `longitude` float(12,0) NOT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `notes` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `join_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`id`, `name`, `address`, `latitude`, `longitude`, `phone_number`, `notes`, `join_date`) VALUES
(2, 'al-nahdy', 'cairo', 38, 35, '01094568', '--', '2019-05-09 13:43:30'),
(3, 'alezaby', 'alex', 346, 576, '010498466', '--', '2019-05-12 09:23:27'),
(4, 'pharm1', 'pharm', 20, 20, '0124141443', 'dasfa', '2019-05-12 11:26:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
