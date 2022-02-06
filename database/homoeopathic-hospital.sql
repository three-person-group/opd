-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2022 at 07:08 AM
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
-- Database: `homoeopathic-hospital`
--

CREATE DATABASE homoeopathic_hospital

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
(1, 'REGISTRATION CHARGE ', 20);
COMMIT;


-- --------------------------------------------------------

--
-- Table structure for table `dressing charges`
--

CREATE TABLE `dispensary charges` (
  `SR NO` int(3) NOT NULL,
  `PERTICULAR` varchar(100) NOT NULL,
  `CHARGES` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dressing charges`
--

INSERT INTO `dispensary charges` (`SR NO`, `PERTICULAR`, `CHARGES`) VALUES
(2, '1 WEEK DISPENSARY CHARGES ', 30),
(3, '2 WEEK DISPENSARY CHARGES ', 60),
(4, 'BIO CHEMIC 1 WEEK', 50),
(5, 'BIO CHEMIC 2 WEEK', 100),
(6, 'MOTHER TINCHER 1 WEEK', 50),
(7, 'MOTHER TINCHER 2 WEEK', 100);


-- --------------------------------------------------------

--
-- Table structure for table `dispensary charges`
--

CREATE TABLE `dressing charges` (
  `SR NO` int(3) NOT NULL,
  `PERTICULAR` varchar(100) NOT NULL,
  `CHARGES` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dispensary charges`
--

INSERT INTO `dressing charges` (`SR NO`, `PERTICULAR`, `CHARGES`) VALUES
(8, 'MINOR DRESSING', 50),
(9, 'MAJOR DRESSING ( DEPAND ON DRESSING )', 0),
(10, 'STICHES ( 1ST STITCH )', 150),
(11, 'OTHER STICH', 50),
(12, 'INJECTION CHARGES ', 30),
(13, 'ECG', 150);




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
