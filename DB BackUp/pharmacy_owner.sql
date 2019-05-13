-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2019 at 11:11 PM
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
-- Table structure for table `pharmacy_owner`
--

CREATE TABLE `pharmacy_owner` (
  `pharmacy_ownerID` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobil_number` varchar(45) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `join_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pharmacyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy_owner`
--

INSERT INTO `pharmacy_owner` (`pharmacy_ownerID`, `username`, `password`, `email`, `mobil_number`, `notes`, `join_date`, `pharmacyID`) VALUES
(2, '', '', '', '', '', '2019-05-12 10:34:54', 0),
(3, '', '', '', '', '', '2019-05-12 10:35:10', 0),
(4, '', '', '', '', '', '2019-05-12 11:10:20', 0),
(5, '', '', '', '', '', '2019-05-12 11:15:47', 0),
(6, '', '', '', '', '', '2019-05-12 11:16:11', 0),
(7, '', '', '', '', '', '2019-05-12 11:16:59', 0),
(8, '', '', '', '', '', '2019-05-12 11:17:49', 0),
(9, '', '', '', '', '', '2019-05-12 11:18:43', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pharmacy_owner`
--
ALTER TABLE `pharmacy_owner`
  ADD PRIMARY KEY (`pharmacy_ownerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pharmacy_owner`
--
ALTER TABLE `pharmacy_owner`
  MODIFY `pharmacy_ownerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
