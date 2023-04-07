-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2023 at 11:02 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Pid` varchar(500) NOT NULL,
  `Pname` varchar(500) NOT NULL,
  `Pgender` varchar(10) NOT NULL,
  `Image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Pid`, `Pname`, `Pgender`, `Image`) VALUES
('1705000000001', 'สมชาย รักเรียน', 'ชาย', 'lorem-face-4.jpg'),
('1705000000002', 'นาตยา สมหวัง', 'หญิง', 'lorem-face-1.jpg'),
('1705000000003', 'วรชาติ อยู่บุญ', 'ชาย', 'lorem-face-3.jpg'),
('1705000000004', 'กนกกร ดารา', 'หญิง', 'lorem-face-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `QDate` date NOT NULL,
  `QNumber` int(5) NOT NULL,
  `Pid` varchar(500) NOT NULL,
  `QStatus` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queue`
--

INSERT INTO `queue` (`QDate`, `QNumber`, `Pid`, `QStatus`) VALUES
('2023-04-03', 1, '1705000000001', 'รักษาเสร็จแล้ว'),
('2023-04-03', 2, '1705000000002', 'รักษาเสร็จแล้ว'),
('2023-04-04', 1, '1705000000003', 'รักษาเสร็จแล้ว'),
('2023-04-04', 2, '1705000000004', 'รักษาเสร็จแล้ว'),
('2023-04-05', 1, '1705000000001', 'รอเข้ารับการรักษา'),
('2023-04-06', 5, '1705000000001', 'รักษาเสร็จแล้ว');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`QDate`,`QNumber`),
  ADD KEY `Pid` (`Pid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `queue`
--
ALTER TABLE `queue`
  ADD CONSTRAINT `queue_ibfk_1` FOREIGN KEY (`Pid`) REFERENCES `patient` (`Pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
