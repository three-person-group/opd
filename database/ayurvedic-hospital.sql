-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2022 at 07:18 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayurvedic-hospital`
--

CREATE DATABASE ayurvedic_hospital


-- --------------------------------------------------------

--
-- Table structure for table `registration charges`
--

CREATE TABLE `registration charges` (
  `SR NO` int(3) NOT NULL,
  `PERTICULAR` varchar(100) NOT NULL,
  `CHARGES` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration charges`
--

INSERT INTO `registration charges` (`SR NO`, `PERTICULAR`, `CHARGES`) VALUES
(1, 'REGISTRATION CHARGES ', 20);
COMMIT;


-- --------------------------------------------------------

--
-- Table structure for table `dispensary charges`
--

CREATE TABLE `dispensary charges` (
  `SR NO` int(3) NOT NULL,
  `PERTICULAR` varchar(100) NOT NULL,
  `CHARGES` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Dumping data for table `dressing charges`
--

INSERT INTO `dispensary charges` (`SR NO`, `PERTICULAR`, `CHARGES`) VALUES
(2, '1 WEEK DISPENSARY CHARGES ', 100),
(3, '2 WEEK DISPENSARY CHARGES ', 200),
(4, 'CHAYVANPRAS', 135),
(5, 'OIL', 0),
(6, 'PANCHKARMA', 0),
(7, 'BASTI', 0),
(8, 'VAMAN', 0),
(9, 'VIRECHANA', 0),
(10, 'NAVYA', 0),
(11, 'SHIRODHARA', 0),
(12, 'JALOKAVACHARNA', 0),
(13, 'AGNIKARMA', 0),
(14, 'ABHGANGA', 0),
(15, 'LOCAL BASTI', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
