-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 02:39 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `cardpayID` int(10) NOT NULL,
  `holderName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ctype` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `cardNo` varchar(17) COLLATE utf8_unicode_ci NOT NULL,
  `cvv` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `expMonth` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `expYear` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `payDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`cardpayID`, `holderName`, `ctype`, `cardNo`, `cvv`, `expMonth`, `expYear`, `total`, `payDate`) VALUES
(2, 'rexsan', 'MasterCard', '4767898765432345', '745', '03', '2023', '52000', '2021-05-12'),
(3, 'rexsan', 'VISA', '4767898785432345', '524', '02', '2025', '50000', '2021-05-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`cardpayID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `cardpayID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
