-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 08:18 AM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `ayurvedic_dispcharge`
--

CREATE TABLE `ayurvedic_dispcharge` (
  `SRNO` int(10) NOT NULL,
  `PERTICULAR` varchar(30) NOT NULL,
  `CHARGES` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ayurvedic_dispcharge`
--

INSERT INTO `ayurvedic_dispcharge` (`SRNO`, `PERTICULAR`, `CHARGES`) VALUES
(2, '1 WEEK DISPENSARY CHARGES', 100),
(3, '2 WEEK DISPENSARY CHARGES', 200);

-- --------------------------------------------------------

--
-- Table structure for table `ayurvedic_othercharge`
--

CREATE TABLE `ayurvedic_othercharge` (
  `SRNO` int(10) NOT NULL,
  `PERTICULAR` varchar(30) NOT NULL,
  `CHARGES` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ayurvedic_othercharge`
--

INSERT INTO `ayurvedic_othercharge` (`SRNO`, `PERTICULAR`, `CHARGES`) VALUES
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

-- --------------------------------------------------------

--
-- Table structure for table `ayurvedic_regcharge`
--

CREATE TABLE `ayurvedic_regcharge` (
  `SRNO` int(10) NOT NULL,
  `PERTICULAR` varchar(30) NOT NULL,
  `CHARGES` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ayurvedic_regcharge`
--

INSERT INTO `ayurvedic_regcharge` (`SRNO`, `PERTICULAR`, `CHARGES`) VALUES
(1, 'REGISTRATION CHARGES', 20);

-- --------------------------------------------------------

--
-- Table structure for table `existing_patients`
--

CREATE TABLE `existing_patients` (
  `opdno` int(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `mobileno` int(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `existing_patients`
--

INSERT INTO `existing_patients` (`opdno`, `pname`, `age`, `gender`, `address`, `city`, `mobileno`, `email`) VALUES
(101, 'jay', 20, 'm', 'nvs', 'nvs', 1234554321, NULL),
(103, 'raj', 10, 'm', 'na', 'na', 7867856, 'raj@gmail.com'),
(104, 'alan', 11, 'm', 'na', 'na', 1234554321, 'alan@jkkj.ds'),
(105, 'max', 21, 'm', 'na', 'na', 6756757, 'jkhjh@gjh.ss'),
(106, 'xyz', 33, 'f', 'na', 'na', 1234598760, 'xyz@xyz'),
(107, 'patel ashish r.', 20, 'm', 'nvs', 'nvs', 2147483647, 'ashish@gmail.xyz'),
(108, 'abc', 22, 'm', 'na', 'na', 1234565432, 'abc@abc.xyz'),
(109, 'alan', 10, 'm', 'na', 'na', 1234567890, 'alan@jkkj.ds'),
(110, 'max', 11, 'm', 'na', 'na', 23456765, 'majh@jhj.djh');

-- --------------------------------------------------------

--
-- Table structure for table `homoeopathic_bill`
--

CREATE TABLE `homoeopathic_bill` (
  `billno` int(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `opdno` int(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `reg_charge` int(255) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `medicine_qty` varchar(100) NOT NULL,
  `medicine_charges` varchar(100) NOT NULL,
  `no_of_medicine` int(100) NOT NULL,
  `qty_of_medicine` int(100) NOT NULL,
  `medicine_total` int(100) NOT NULL,
  `other_name` varchar(100) NOT NULL,
  `other_qty` varchar(100) NOT NULL,
  `other_charges` varchar(100) NOT NULL,
  `no_of_other` int(100) NOT NULL,
  `qty_of_other` int(100) NOT NULL,
  `other_total` int(100) NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `test_qty` varchar(100) NOT NULL,
  `test_charges` varchar(100) NOT NULL,
  `no_of_test` int(100) NOT NULL,
  `qty_of_test` int(100) NOT NULL,
  `test_total` int(100) NOT NULL,
  `total_no` int(100) NOT NULL,
  `total_qty` int(100) NOT NULL,
  `total_charges` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homoeopathic_bill`
--

INSERT INTO `homoeopathic_bill` (`billno`, `date`, `opdno`, `pname`, `reg_charge`, `medicine_name`, `medicine_qty`, `medicine_charges`, `no_of_medicine`, `qty_of_medicine`, `medicine_total`, `other_name`, `other_qty`, `other_charges`, `no_of_other`, `qty_of_other`, `other_total`, `test_name`, `test_qty`, `test_charges`, `no_of_test`, `qty_of_test`, `test_total`, `total_no`, `total_qty`, `total_charges`) VALUES
(1, '2022-03-24', 103, 'raj', 10, '', '', '', 0, 100, 0, '', '', '', 100, 0, 0, '', '', '', 0, 0, 0, 0, 0, 0),
(2, '2022-03-24', 104, 'alan', 0, '', '', '', 0, 100, 0, '', '', '', 100, 0, 0, '', '', '', 0, 0, 0, 0, 0, 0),
(3, '2022-03-24', 105, 'max', 10, '[\"1 WEEK DISPENSARY CHARGES\",\"BIO CHEMIC 1 WEEK\",\"MOTHER TINCHER 1 WEEK\"]', '[\"1\",\"1\",\"1\"]', '[\"20\",\"30\",\"40\"]', 0, 100, 90, '', '', '', 0, 0, 0, '', '', '', 0, 0, 0, 1, 101, 100),
(4, '2022-03-24', 106, 'xyz', 20, '[\"BIO CHEMIC 2 WEEK\",\"MOTHER TINCHER 1 WEEK\",\"2 WEEK DISPENSARY CHARGES\"]', '[\"1\",\"1\",\"1\"]', '[\"100\",\"50\",\"60\"]', 3, 3, 210, '[\"ECG\",\"MAJOR DRESSING(DEPENDS ON DRESSING)\",\"MINOR DRESSING\"]', '[\"1\",\"1\",\"1\"]', '[\"150\",\"0\",\"50\"]', 3, 3, 200, '[\"S.CREATININE\",\"BLEEDING AND CLOTTING TIME\",\"WIDAL\"]', '[\"1\",\"1\",\"1\"]', '[\"80\",\"80\",\"90\"]', 3, 3, 250, 10, 10, 680),
(5, '2022-03-25', 107, 'patel ashish r.', 0, '[\"BIO CHEMIC 1 WEEK\",\"MOTHER TINCHER 1 WEEK\"]', '[\"1\",\"1\"]', '[\"50\",\"50\"]', 2, 2, 100, '[\"MAJOR DRESSING(DEPENDS ON DRESSING)\",\"MINOR DRESSING\",\"INJECTION\"]', '[\"1\",\"1\",\"1\"]', '[\"80\",\"10\",\"20\"]', 0, 0, 110, '', '', '', 0, 0, 0, 2, 2, 210),
(6, '2022-03-27', 108, 'abc', 0, '[\"1 WEEK DISPENSARY CHARGES\",\"BIO CHEMIC 1 WEEK\",\"MOTHER TINCHER 1 WEEK\"]', '[\"1\",\"1\",\"1\"]', '[\"30\",\"50\",\"50\"]', 3, 3, 130, '', '', '', 0, 0, 0, '', '', '', 0, 0, 0, 3, 3, 130),
(7, '2022-03-28', 109, 'alan', 20, '[\"BIO CHEMIC 1 WEEK\",\"BIO CHEMIC 1 WEEK\",\"2 WEEK DISPENSARY CHARGES\"]', '[\"1\",\"1\",\"1\"]', '[\"50\",\"50\",\"60\"]', 3, 3, 160, '', '', '', 0, 0, 0, '[\"BLEEDING AND CLOTTING TIME\",\"WIDAL\",\"E.S.R\"]', '[\"1\",\"1\",\"1\"]', '[\"80\",\"90\",\"60\"]', 3, 3, 230, 7, 7, 410),
(8, '2022-03-28', 110, 'max', 0, '[\"BIO CHEMIC 1 WEEK\",\"BIO CHEMIC 2 WEEK\",\"1 WEEK DISPENSARY CHARGES\"]', '[\"1\",\"1\",\"1\"]', '[\"50\",\"100\",\"99\"]', 6, 6, 180, '[\"MINOR DRESSING\",\"STICHES(1ST STITCH)\"]', '[\"1\",\"1\"]', '[\"50\",\"150\"]', 2, 2, 200, '[\"MALARIAL PARASITES - MP\",\"CBC\",\"BLOOD GROUP\"]', '[\"1\",\"1\",\"1\"]', '[\"60\",\"100\",\"50\"]', 3, 3, 210, 11, 11, 590);

-- --------------------------------------------------------

--
-- Table structure for table `homoeopathic_dispcharge`
--

CREATE TABLE `homoeopathic_dispcharge` (
  `SRNO` int(10) NOT NULL,
  `PERTICULAR` varchar(30) NOT NULL,
  `CHARGES` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homoeopathic_dispcharge`
--

INSERT INTO `homoeopathic_dispcharge` (`SRNO`, `PERTICULAR`, `CHARGES`) VALUES
(2, '1 WEEK DISPENSARY CHARGES', 30),
(3, '2 WEEK DISPENSARY CHARGES', 60),
(4, 'BIO CHEMIC 1 WEEK', 50),
(5, 'BIO CHEMIC 2 WEEK', 100),
(6, 'MOTHER TINCHER 1 WEEK', 50),
(7, 'MOTHER TINCHER 2 WEEK', 100);

-- --------------------------------------------------------

--
-- Table structure for table `homoeopathic_lab`
--

CREATE TABLE `homoeopathic_lab` (
  `SRNO` int(255) NOT NULL,
  `TESTNAME` varchar(255) NOT NULL,
  `CHARGES` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homoeopathic_lab`
--

INSERT INTO `homoeopathic_lab` (`SRNO`, `TESTNAME`, `CHARGES`) VALUES
(1, 'CBC', 100),
(2, 'E.S.R', 60),
(3, 'MALARIAL PARASITES - MP', 60),
(4, 'BLEEDING AND CLOTTING TIME', 80),
(5, 'BLOOD GROUP', 50),
(6, 'UREA', 80),
(7, 'S.CREATININE', 80),
(8, 'S.BILIRUBIN', 80),
(9, 'TOTAL PROTEIN', 80),
(10, 'ALBUMIN', 80),
(11, 'S.CALCIUM', 80),
(12, 'S.CHOLESTEROL', 80),
(13, 'TRIGLYCERIDES', 80),
(14, 'HDL CHOLESTEROL', 80),
(15, 'S.G.P.T', 80),
(16, 'S.G.O.T', 80),
(17, 'URIC ACID', 80),
(18, 'BLOOD SUGAR RANDOM - RBS', 40),
(19, 'FASTING SUGAR - FBS', 40),
(20, 'PP2BS', 40),
(21, 'LIPID PROFILE', 350),
(22, 'C REACTIVE PROTEIN', 100),
(23, 'RA', 100),
(24, 'WIDAL', 90),
(25, 'V.D.R.L', 100),
(26, 'DENGUE IGG IGM', 700),
(27, 'CHIKUNGUNYA IGM', 400),
(28, 'URINE ROUTINE', 90),
(29, 'PREGNANCY TEST', 120),
(30, '25 VITAMIN D', 900),
(31, 'VITAMIN B12', 500),
(32, 'HBA1C', 350),
(33, 'T3 T4 TSH', 280),
(34, 'TSH', 150),
(35, 'FT3', 200),
(36, 'FT4', 200),
(37, 'HB ELECTROPHORESIS', 700),
(38, 'ANA', 700),
(39, 'HCG', 500),
(40, 'FSH LH PROLACTINE', 800),
(41, 'LIPID PROFILE 2', 600),
(42, 'LUTEINIZING HORMONE SERUM', 400),
(43, 'TORCH IGG IGM ABS - PARAMETER 8', 2100),
(44, 'FERRITIN', 600),
(45, 'HOMOCYSTEINE', 850),
(46, 'ANTI CCP', 1000),
(47, 'CA 125', 1450),
(48, 'ALIPOPROTEINS', 1300),
(49, 'CRP', 300),
(50, 'PT', 200),
(51, 'ELECTROLYTES', 450),
(52, 'G6PD', 380),
(53, 'CKP TOTAL SERUM', 360),
(54, 'LDH', 350),
(55, 'CKMB', 450),
(56, 'LIPASE SERUM', 450),
(57, 'IRON', 300),
(58, 'TIBC', 600),
(59, 'C3', 600),
(60, 'CA 125 2', 1450),
(61, 'PSA TOTAL PROSTATE SPECIFIC ANTIGEN', 750),
(62, 'AMYLASE ENZYMATIC SERUM', 400),
(63, 'PHOSPHORUS INORGANIC SERUM', 160),
(64, 'CALCIUM TOTAL SERUM', 200),
(65, 'ALKALINE PHOSPHATATE ENZYMATIC', 160),
(66, 'DENGUE IGG ANTIBODY', 550),
(67, 'DENGUE IGM ANTIBODY', 550),
(68, 'DENGUE NS1 ANTIGEN', 730),
(69, 'TYPHI DOT IGG AND IGM', 300),
(70, 'AMMONIA BIOCHEMICAL PLASMA', 530),
(71, 'RA RHEUMATOID ARTHRITIS SERUM', 300),
(72, 'THYROID ANTIBODIES TPO AND ATG', 1750),
(73, 'ABSOLUTE EOSINOPHILE COUNT', 180),
(74, 'SEMEN ANALYSIS', 300),
(75, 'ROUTINE EXAMINATION STOOL', 200),
(76, 'HIV', 500),
(77, 'HBSAG', 400),
(78, 'D DIMER', 1100),
(79, 'HCV', 600);

-- --------------------------------------------------------

--
-- Table structure for table `homoeopathic_othercharge`
--

CREATE TABLE `homoeopathic_othercharge` (
  `SRNO` int(10) NOT NULL,
  `PERTICULAR` varchar(50) NOT NULL,
  `CHARGES` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homoeopathic_othercharge`
--

INSERT INTO `homoeopathic_othercharge` (`SRNO`, `PERTICULAR`, `CHARGES`) VALUES
(8, 'MINOR DRESSING', 50),
(9, 'MAJOR DRESSING(DEPENDS ON DRESSING)', 0),
(10, 'STICHES(1ST STITCH)', 150),
(11, 'OTHER STITCH', 50),
(12, 'INJECTION', 30),
(13, 'ECG', 150);

-- --------------------------------------------------------

--
-- Table structure for table `homoeopathic_regcharge`
--

CREATE TABLE `homoeopathic_regcharge` (
  `SRNO` int(10) NOT NULL,
  `PERTICULAR` varchar(30) NOT NULL,
  `CHARGES` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homoeopathic_regcharge`
--

INSERT INTO `homoeopathic_regcharge` (`SRNO`, `PERTICULAR`, `CHARGES`) VALUES
(1, 'REGISTRATION CHARGE', 20);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_ayurvedic_dispcharge`
--

CREATE TABLE `inventory_ayurvedic_dispcharge` (
  `date` varchar(100) NOT NULL,
  `opdno` int(10) NOT NULL,
  `1 WEEK DISPENSARY CHARGES` int(10) NOT NULL DEFAULT 0,
  `2 WEEK DISPENSARY CHARGES` int(10) NOT NULL DEFAULT 0,
  `total` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_ayurvedic_othercharge`
--

CREATE TABLE `inventory_ayurvedic_othercharge` (
  `date` varchar(100) NOT NULL,
  `opdno` int(10) NOT NULL,
  `CHAYVANPRAS` int(10) NOT NULL DEFAULT 0,
  `OIL` int(10) NOT NULL DEFAULT 0,
  `PANCHKARMA` int(10) NOT NULL DEFAULT 0,
  `BASTI` int(10) NOT NULL DEFAULT 0,
  `VAMAN` int(10) NOT NULL DEFAULT 0,
  `VIRECHANA` int(10) NOT NULL DEFAULT 0,
  `NAVYA` int(10) NOT NULL DEFAULT 0,
  `SHIRODHARA` int(10) NOT NULL DEFAULT 0,
  `JALOKAVACHARNA` int(10) DEFAULT 0,
  `AGNIKARMA` int(10) NOT NULL DEFAULT 0,
  `ABHGANGA` int(10) NOT NULL DEFAULT 0,
  `LOCAL BASTI` int(10) NOT NULL DEFAULT 0,
  `total` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_ayurvedic_regcharge`
--

CREATE TABLE `inventory_ayurvedic_regcharge` (
  `date` varchar(100) NOT NULL,
  `opdno` int(10) NOT NULL,
  `REG_CHARGE` int(10) NOT NULL DEFAULT 20,
  `total` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_homoeopathic_dispcharge`
--

CREATE TABLE `inventory_homoeopathic_dispcharge` (
  `date` varchar(100) NOT NULL,
  `opdno` int(10) NOT NULL,
  `1 WEEK DISPENSARY CHARGES` int(10) NOT NULL DEFAULT 0,
  `2 WEEK DISPENSARY CHARGES` int(10) NOT NULL DEFAULT 0,
  `BIO CHEMIC 1 WEEK` int(10) NOT NULL DEFAULT 0,
  `BIO CHEMIC 2 WEEK` int(10) DEFAULT 0,
  `MOTHER TINCHER 1 WEEK` int(10) NOT NULL DEFAULT 0,
  `MOTHER TINCHER 2 WEEK` int(10) NOT NULL DEFAULT 0,
  `total` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_homoeopathic_dispcharge`
--

INSERT INTO `inventory_homoeopathic_dispcharge` (`date`, `opdno`, `1 WEEK DISPENSARY CHARGES`, `2 WEEK DISPENSARY CHARGES`, `BIO CHEMIC 1 WEEK`, `BIO CHEMIC 2 WEEK`, `MOTHER TINCHER 1 WEEK`, `MOTHER TINCHER 2 WEEK`, `total`) VALUES
('2022-03-24', 105, 1, 0, 1, 0, 1, 0, 0),
('2022-03-08', 111, 0, 0, 0, 0, 0, 0, 0),
('2022-03-08', 112, 0, 0, 0, 0, 0, 0, 0),
('2022-03-08', 113, 0, 1, 1, 1, 0, 0, 0),
('2022-03-09', 113, 0, 1, 1, 1, 0, 0, 0),
('2022-03-24', 106, 5, 1, 2, 1, 1, 1, 3),
('2022-03-25', 107, 4, 0, 1, 0, 1, 0, 2),
('2022-03-27', 108, 1, 0, 1, 0, 1, 0, 3),
('2022-03-28', 109, 0, 1, 1, 0, 0, 0, 3),
('2022-03-28', 110, 1, 0, 1, 1, 0, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_homoeopathic_lab`
--

CREATE TABLE `inventory_homoeopathic_lab` (
  `date` varchar(100) NOT NULL,
  `opdno` int(255) NOT NULL,
  `CBC` int(10) NOT NULL,
  `E.S.R` int(10) NOT NULL,
  `MALARIAL PARASITES - MP` int(10) NOT NULL,
  `BLEEDING AND CLOTTING TIME` int(10) NOT NULL,
  `BLOOD GROUP` int(10) NOT NULL,
  `UREA` int(10) NOT NULL,
  `S.CREATININE` int(10) NOT NULL,
  `S.BILIRUBIN` int(10) NOT NULL,
  `TOTAL PROTEIN` int(10) NOT NULL,
  `ALBUMIN` int(10) NOT NULL,
  `S.CALCIUM` int(10) NOT NULL,
  `S.CHOLESTEROL` int(10) NOT NULL,
  `TRIGLYCERIDES` int(10) NOT NULL,
  `HDL CHOLESTEROL` int(10) NOT NULL,
  `S.G.P.T` int(10) NOT NULL,
  `S.G.O.T` int(10) NOT NULL,
  `URIC ACID` int(10) NOT NULL,
  `BLOOD SUGAR RANDOM - RBS` int(10) NOT NULL,
  `FASTING SUGAR - FBS` int(10) NOT NULL,
  `PP2BS` int(10) NOT NULL,
  `LIPID PROFILE` int(10) NOT NULL,
  `C REACTIVE PROTEIN` int(10) NOT NULL,
  `RA` int(10) NOT NULL,
  `WIDAL` int(10) NOT NULL,
  `V.D.R.L` int(10) NOT NULL,
  `DENGUE IGG IGM` int(10) NOT NULL,
  `CHIKUNGUNYA IGM` int(10) NOT NULL,
  `URINE ROUTINE` int(10) NOT NULL,
  `PREGNANCY TEST` int(10) NOT NULL,
  `25 VITAMIN D` int(10) NOT NULL,
  `VITAMIN B12` int(10) NOT NULL,
  `HBA1C` int(10) NOT NULL,
  `T3 T4 TSH` int(10) NOT NULL,
  `TSH` int(10) NOT NULL,
  `FT3` int(10) NOT NULL,
  `FT4` int(10) NOT NULL,
  `HB ELECTROPHORESIS` int(10) NOT NULL,
  `ANA` int(10) NOT NULL,
  `HCG` int(10) NOT NULL,
  `FSH LH PROLACTINE` int(10) NOT NULL,
  `LIPID PROFILE 2` int(10) NOT NULL,
  `LUTEINIZING HORMONE SERUM` int(10) NOT NULL,
  `TORCH IGG IGM ABS - PARAMETER 8` int(10) NOT NULL,
  `FERRITIN` int(10) NOT NULL,
  `HOMOCYSTEINE` int(10) NOT NULL,
  `ANTI CCP` int(10) NOT NULL,
  `CA 125` int(10) NOT NULL,
  `ALIPOPROTEINS` int(10) NOT NULL,
  `CRP` int(10) NOT NULL,
  `PT` int(10) NOT NULL,
  `ELECTROLYTES` int(10) NOT NULL,
  `G6PD` int(10) NOT NULL,
  `CKP TOTAL SERUM` int(10) NOT NULL,
  `LDH` int(10) NOT NULL,
  `CKMB` int(10) NOT NULL,
  `LIPASE SERUM` int(10) NOT NULL,
  `IRON` int(10) NOT NULL,
  `TIBC` int(10) NOT NULL,
  `C3` int(10) NOT NULL,
  `CA 125 2` int(10) NOT NULL,
  `PSA TOTAL PROSTATE SPECIFIC ANTIGEN` int(10) NOT NULL,
  `AMYLASE ENZYMATIC SERUM` int(10) NOT NULL,
  `PHOSPHORUS INORGANIC SERUM` int(10) NOT NULL,
  `CALCIUM TOTAL SERUM` int(10) NOT NULL,
  `ALKALINE PHOSPHATATE ENZYMATIC` int(10) NOT NULL,
  `DENGUE IGG ANTIBODY` int(10) NOT NULL,
  `DENGUE IGM ANTIBODY` int(10) NOT NULL,
  `DENGUE NS1 ANTIGEN` int(10) NOT NULL,
  `TYPHI DOT IGG AND IGM` int(10) NOT NULL,
  `AMMONIA BIOCHEMICAL PLASMA` int(10) NOT NULL,
  `RA RHEUMATOID ARTHRITIS SERUM` int(10) NOT NULL,
  `THYROID ANTIBODIES TPO AND ATG` int(10) NOT NULL,
  `ABSOLUTE EOSINOPHILE COUNT` int(10) NOT NULL,
  `SEMEN ANALYSIS` int(10) NOT NULL,
  `ROUTINE EXAMINATION STOOL` int(10) NOT NULL,
  `HIV` int(10) NOT NULL,
  `HBSAG` int(10) NOT NULL,
  `D DIMER` int(10) NOT NULL,
  `HCV` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_homoeopathic_lab`
--

INSERT INTO `inventory_homoeopathic_lab` (`date`, `opdno`, `CBC`, `E.S.R`, `MALARIAL PARASITES - MP`, `BLEEDING AND CLOTTING TIME`, `BLOOD GROUP`, `UREA`, `S.CREATININE`, `S.BILIRUBIN`, `TOTAL PROTEIN`, `ALBUMIN`, `S.CALCIUM`, `S.CHOLESTEROL`, `TRIGLYCERIDES`, `HDL CHOLESTEROL`, `S.G.P.T`, `S.G.O.T`, `URIC ACID`, `BLOOD SUGAR RANDOM - RBS`, `FASTING SUGAR - FBS`, `PP2BS`, `LIPID PROFILE`, `C REACTIVE PROTEIN`, `RA`, `WIDAL`, `V.D.R.L`, `DENGUE IGG IGM`, `CHIKUNGUNYA IGM`, `URINE ROUTINE`, `PREGNANCY TEST`, `25 VITAMIN D`, `VITAMIN B12`, `HBA1C`, `T3 T4 TSH`, `TSH`, `FT3`, `FT4`, `HB ELECTROPHORESIS`, `ANA`, `HCG`, `FSH LH PROLACTINE`, `LIPID PROFILE 2`, `LUTEINIZING HORMONE SERUM`, `TORCH IGG IGM ABS - PARAMETER 8`, `FERRITIN`, `HOMOCYSTEINE`, `ANTI CCP`, `CA 125`, `ALIPOPROTEINS`, `CRP`, `PT`, `ELECTROLYTES`, `G6PD`, `CKP TOTAL SERUM`, `LDH`, `CKMB`, `LIPASE SERUM`, `IRON`, `TIBC`, `C3`, `CA 125 2`, `PSA TOTAL PROSTATE SPECIFIC ANTIGEN`, `AMYLASE ENZYMATIC SERUM`, `PHOSPHORUS INORGANIC SERUM`, `CALCIUM TOTAL SERUM`, `ALKALINE PHOSPHATATE ENZYMATIC`, `DENGUE IGG ANTIBODY`, `DENGUE IGM ANTIBODY`, `DENGUE NS1 ANTIGEN`, `TYPHI DOT IGG AND IGM`, `AMMONIA BIOCHEMICAL PLASMA`, `RA RHEUMATOID ARTHRITIS SERUM`, `THYROID ANTIBODIES TPO AND ATG`, `ABSOLUTE EOSINOPHILE COUNT`, `SEMEN ANALYSIS`, `ROUTINE EXAMINATION STOOL`, `HIV`, `HBSAG`, `D DIMER`, `HCV`) VALUES
('2022-03-28', 110, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_homoeopathic_othercharge`
--

CREATE TABLE `inventory_homoeopathic_othercharge` (
  `date` varchar(100) NOT NULL,
  `opdno` int(10) NOT NULL,
  `MINOR DRESSING` int(10) NOT NULL DEFAULT 0,
  `MAJOR DRESSING(DEPENDS ON DRESSING)` int(10) NOT NULL DEFAULT 0,
  `STICHES(1ST STITCH)` int(10) NOT NULL DEFAULT 0,
  `OTHER STITCH` int(10) NOT NULL DEFAULT 0,
  `INJECTION` int(10) NOT NULL DEFAULT 0,
  `ECG` int(10) NOT NULL DEFAULT 0,
  `total` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_homoeopathic_othercharge`
--

INSERT INTO `inventory_homoeopathic_othercharge` (`date`, `opdno`, `MINOR DRESSING`, `MAJOR DRESSING(DEPENDS ON DRESSING)`, `STICHES(1ST STITCH)`, `OTHER STITCH`, `INJECTION`, `ECG`, `total`) VALUES
('2022-03-24', 106, 1, 1, 0, 0, 1, 1, 3),
('2022-03-23', 101, 1, 0, 1, 0, 1, 0, 0),
('2022-03-25', 107, 1, 1, 0, 0, 1, 0, 0),
('2022-03-28', 110, 1, 0, 1, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_homoeopathic_regcharge`
--

CREATE TABLE `inventory_homoeopathic_regcharge` (
  `date` varchar(100) NOT NULL,
  `opdno` int(10) NOT NULL,
  `REG_CHARGE` int(10) NOT NULL DEFAULT 20,
  `total` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_homoeopathic_regcharge`
--

INSERT INTO `inventory_homoeopathic_regcharge` (`date`, `opdno`, `REG_CHARGE`, `total`) VALUES
('2022-03-24', 105, 10, 0),
('2022-03-24', 106, 20, 0),
('2022-03-23', 101, 30, 0),
('2022-03-28', 109, 20, 0),
('2022-03-24', 105, 0, 0),
('2022-03-24', 105, 20, 0),
('2022-03-24', 105, 20, 0),
('2022-03-24', 105, 20, 0),
('2022-03-24', 110, 20, 0),
('2022-03-24', 110, 20, 0),
('2022-03-24', 111, 20, 0),
('2022-03-24', 111, 20, 0),
('2022-03-24', 105, 20, 0),
('2022-03-24', 115, 20, 0),
('2022-03-25', 115, 20, 0),
('2022-03-08', 111, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `member_register`
--

CREATE TABLE `member_register` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_register`
--

INSERT INTO `member_register` (`id`, `name`, `email`, `mobileno`, `username`, `password`, `role`) VALUES
(1, 'gaurav', 'g@gmail.com', '234567', 'opdgaurav', '1234', 'opd'),
(2, 'karan', 'k@gmail.com', '234567', 'opd', '1234', 'opd'),
(3, 'karan', 'kw@gmail.com', '234567', 'karan', '1234', 'opd'),
(4, 'jay', 'j@gmail.com', '234567', 'medicinejay', '1234', 'medicine'),
(5, 'jayLAPET', 'ja@gmail.com', '234567', 'labjayLAPET', '1234', 'lab'),
(6, 'abc', 'a@gmail.com', '23456', '0', '123', 'medicine'),
(7, 'abc', 'ab@gmail.com', '23456', '1', '123', 'lab'),
(8, 'abc', 'abc@gmail.com', '23456', '1', '123', 'opd'),
(9, 'abc', 'abcd@gmail.com', '23456', '0', '123', 'medicine'),
(10, 'ram', 'r@gmail.com', '5678', '0', '111', 'medicine'),
(11, 'ram', 'ram@gmail.com', '5678', 'medicineram', '111', 'medicine'),
(12, 'lll', 'l@gmail.com', '6454566551', 'opd.lll', '111', 'opd'),
(13, 'jaylapet', 'jay@gmail.com', '1122544135135', 'opd_jaylapet', '000', 'opd'),
(14, 'gk', 'gk@gmail.com', '9999999999', 'medicine_gk', '123', 'medicine'),
(15, 'rameshbhai', 'ramesh@gmail.com', '34567', 'opd_rameshbhai', '123', 'opd'),
(16, 'ram', 'ram123@gmail.com', '234567', 'lab_ram', '123', 'lab'),
(17, 'ram', 'ram13@gmail.com', '234567', '_ram', '123', ''),
(18, 'abhi', 'abhi@gmail.com', '645313', 'opd_abhi', '111', 'opd'),
(19, 'gaurav', 'gg@gmail.com', '2345678', 'medicine_gaurav', '111', 'medicine'),
(20, 'gaurav', 'ggg@gmail.com', '23456787654', 'lab_gaurav', '111', 'lab');

-- --------------------------------------------------------

--
-- Table structure for table `patient_register`
--

CREATE TABLE `patient_register` (
  `patientno` int(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `opdno` int(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `in_progress(pending/done)` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_register`
--

INSERT INTO `patient_register` (`patientno`, `date`, `opdno`, `pname`, `in_progress(pending/done)`) VALUES
(1, '2022-03-23', 101, 'jay', 'pending'),
(2, '2022-03-24', 105, 'max', 'pending'),
(3, '2022-03-24', 106, 'xyz', 'pending'),
(4, '2022-03-25', 107, 'patel ashish r.', 'pending'),
(5, '2022-03-27', 108, 'abc', 'pending'),
(6, '2022-03-28', 109, 'alan', 'pending'),
(7, '2022-03-28', 110, 'max', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `existing_patients`
--
ALTER TABLE `existing_patients`
  ADD PRIMARY KEY (`opdno`);

--
-- Indexes for table `homoeopathic_bill`
--
ALTER TABLE `homoeopathic_bill`
  ADD PRIMARY KEY (`billno`),
  ADD KEY `opdno` (`opdno`);

--
-- Indexes for table `homoeopathic_lab`
--
ALTER TABLE `homoeopathic_lab`
  ADD PRIMARY KEY (`SRNO`);

--
-- Indexes for table `inventory_homoeopathic_dispcharge`
--
ALTER TABLE `inventory_homoeopathic_dispcharge`
  ADD KEY `opdno` (`opdno`);

--
-- Indexes for table `inventory_homoeopathic_lab`
--
ALTER TABLE `inventory_homoeopathic_lab`
  ADD KEY `opdno` (`opdno`);

--
-- Indexes for table `inventory_homoeopathic_othercharge`
--
ALTER TABLE `inventory_homoeopathic_othercharge`
  ADD KEY `opdno` (`opdno`);

--
-- Indexes for table `inventory_homoeopathic_regcharge`
--
ALTER TABLE `inventory_homoeopathic_regcharge`
  ADD KEY `opdno` (`opdno`);

--
-- Indexes for table `member_register`
--
ALTER TABLE `member_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_register`
--
ALTER TABLE `patient_register`
  ADD PRIMARY KEY (`patientno`),
  ADD KEY `opdno` (`opdno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `existing_patients`
--
ALTER TABLE `existing_patients`
  MODIFY `opdno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `homoeopathic_bill`
--
ALTER TABLE `homoeopathic_bill`
  MODIFY `billno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `member_register`
--
ALTER TABLE `member_register`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `patient_register`
--
ALTER TABLE `patient_register`
  MODIFY `patientno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `homoeopathic_bill`
--
ALTER TABLE `homoeopathic_bill`
  ADD CONSTRAINT `homoeopathic_bill_ibfk_1` FOREIGN KEY (`opdno`) REFERENCES `existing_patients` (`opdno`),
  ADD CONSTRAINT `homoeopathic_bill_ibfk_2` FOREIGN KEY (`opdno`) REFERENCES `existing_patients` (`opdno`),
  ADD CONSTRAINT `homoeopathic_bill_ibfk_3` FOREIGN KEY (`opdno`) REFERENCES `existing_patients` (`opdno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
