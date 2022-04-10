-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2022 at 04:17 PM
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
(1, 'abc', 44, 'female', 'na', 'na', 676767, 'abc@abc.xyz'),
(2, 'jay', 20, 'male', 'na', 'na', 78676876, 'jkhjh@gjh.ss'),
(3, 'karan', 20, 'male', 'nvs', 'nvs', 8978676, 'karan@gmail.xyz'),
(4, 'raj', 22, 'male', 'surat', 'surat', 8978675, 'raj@gamil.com'),
(5, 'patel ashish r.', 20, 'male', 'nvs', 'nvs', 6756764, 'ashish@gmail.xyz'),
(6, 'Gaurav ', 20, 'male', 'nvs', 'nvs', 1234565897, 'Gaurav@gmail.xyz'),
(7, 'manoj', 12, 'male', 'nvs', 'nvs', 1234567891, 'manoj@gmail.com');

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
(30, '2022-04-10', 1, 'abc', 20, '[\"1 WEEK DISPENSARY CHARGES\"]', '[\"1\"]', '[\"30\"]', 1, 1, 30, '[\"INJECTION\"]', '[\"1\"]', '[\"30\"]', 1, 1, 30, '[\"CBC\"]', '[\"1\"]', '[\"100\"]', 1, 1, 100, 4, 4, 180),
(31, '2022-04-10', 2, 'jay', 20, '', '', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', 0, 0, 0, 1, 1, 20),
(32, '2022-04-10', 3, 'karan', 20, '[\"1 WEEK DISPENSARY CHARGES\",\"2 WEEK DISPENSARY CHARGES\",\"BIO CHEMIC 1 WEEK\",\"BIO CHEMIC 2 WEEK\",\"MOTHER TINCHER 1 WEEK\",\"MOTHER TINCHER 2 WEEK\"]', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '[\"30\",\"60\",\"50\",\"100\",\"50\",\"100\"]', 6, 6, 390, '[\"MAJOR DRESSING(DEPENDS ON DRESSING)\",\"MINOR DRESSING\",\"INJECTION\",\"ECG\",\"STICHES(1ST STITCH)\",\"OTH', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '[\"0\",\"50\",\"30\",\"150\",\"150\",\"50\"]', 6, 6, 430, '[\"TRIGLYCERIDES\",\"CBC\",\"BLOOD GROUP\",\"HDL CHOLESTEROL\",\"E.S.R\",\"MALARIAL PARASITES - MP\"]', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '[\"80\",\"100\",\"50\",\"80\",\"60\",\"60\"]', 6, 6, 430, 19, 19, 1270),
(33, '2022-04-10', 4, 'raj', 0, '', '', '', 0, 0, 0, '[\"STICHES(1ST STITCH)\",\"INJECTION\",\"OTHER STITCH\"]', '[\"1\",\"1\",\"1\"]', '[\"150\",\"30\",\"50\"]', 3, 3, 230, '', '', '', 0, 0, 0, 3, 3, 230),
(34, '2022-04-10', 5, 'patel ashish r.', 20, '', '', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', 0, 0, 0, 1, 1, 20),
(35, '2022-04-10', 6, 'Gaurav ', 0, '', '', '', 0, 0, 0, '', '', '', 0, 0, 0, '[\"TRIGLYCERIDES\",\"CBC\",\"BLOOD GROUP\"]', '[\"1\",\"1\",\"1\"]', '[\"80\",\"100\",\"50\"]', 3, 3, 230, 3, 3, 230),
(36, '2022-04-10', 7, 'manoj', 0, '[\"1 WEEK DISPENSARY CHARGES\",\"BIO CHEMIC 2 WEEK\",\"MOTHER TINCHER 1 WEEK\"]', '[\"1\",\"1\",\"1\"]', '[\"30\",\"100\",\"50\"]', 3, 3, 180, '', '', '', 0, 0, 0, '', '', '', 0, 0, 0, 3, 3, 180);

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
(9, 'MAJOR DRESSING(DEPENDS ON DRESSING)', 0),
(8, 'MINOR DRESSING', 50),
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
('2022-04-10', 1, 1, 0, 0, 0, 0, 0, 1),
('2022-04-10', 3, 1, 1, 1, 1, 1, 1, 6),
('2022-04-10', 7, 1, 0, 0, 1, 1, 0, 3);

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
('2022-04-10', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-04-10', 3, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-04-10', 6, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
('2022-04-10', 1, 0, 0, 0, 0, 1, 0, 1),
('2022-04-10', 3, 1, 1, 1, 1, 1, 1, 6),
('2022-04-10', 4, 0, 0, 1, 1, 1, 0, 3);

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
('2022-04-10', 1, 20, 0),
('2022-04-10', 2, 20, 0),
('2022-04-10', 3, 20, 0),
('2022-04-10', 5, 20, 0);

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
(4, 'jay', 'j@gmail.com', '234567', 'medicinejay', '1234', 'medicine'),
(16, 'ram', 'ram123@gmail.com', '234567', 'lab_ram', '123', 'lab'),
(15, 'rameshbhai', 'ramesh@gmail.com', '34567', 'opd_rameshbhai', '123', 'opd'),
(14, 'gk', 'gk@gmail.com', '9999999999', 'medicine_gk', '123', 'medicine'),
(13, 'jaylapet', 'jay@gmail.com', '1122544135135', 'opd_jaylapet', '000', 'opd'),
(12, 'lll', 'l@gmail.com', '6454566551', 'opd.lll', '111', 'opd'),
(11, 'ram', 'ram@gmail.com', '5678', 'medicineram', '111', 'medicine'),
(5, 'jayLAPET', 'ja@gmail.com', '234567', 'labjayLAPET', '1234', 'lab'),
(3, 'karan', 'kw@gmail.com', '234567', 'karan', '1234', 'opd'),
(22, '', '', '', 'admin', 'admin123', 'admin'),
(2, 'karan', 'k@gmail.com', '234567', 'opd', '1234', 'opd'),
(21, 'max', 'jkhjh@gjh.ss', '6756757', 'medicine_max', '1234', 'medicine'),
(18, 'abhi', 'abhi@gmail.com', '645313', 'opd_abhi', '111', 'opd'),
(19, 'gaurav', 'gg@gmail.com', '2345678', 'medicine_gaurav', '111', 'medicine'),
(20, 'abc', 'a1', '111', 'ssd', '11', 'lab');

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
(1, '2022-04-10', 1, 'abc', 'pending'),
(2, '2022-04-10', 2, 'jay', 'pending'),
(3, '2022-04-10', 3, 'karan', 'pending'),
(4, '2022-04-10', 4, 'raj', 'pending'),
(5, '2022-04-10', 5, 'patel ashish r.', 'pending'),
(6, '2022-04-10', 6, 'Gaurav ', 'pending'),
(7, '2022-04-10', 7, 'manoj', 'pending');

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
  MODIFY `opdno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `homoeopathic_bill`
--
ALTER TABLE `homoeopathic_bill`
  MODIFY `billno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `member_register`
--
ALTER TABLE `member_register`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
