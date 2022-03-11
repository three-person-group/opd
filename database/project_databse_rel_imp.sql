-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2022 at 02:36 AM
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
-- Table structure for table `ayurvadic`
--

CREATE TABLE `ayurvadic` (
  `SRNO` int(3) NOT NULL,
  `PERTICULAR` varchar(100) NOT NULL,
  `CHARGES` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ayurvadic`
--

INSERT INTO `ayurvadic` (`SRNO`, `PERTICULAR`, `CHARGES`) VALUES
(1, 'REGISTRATION CHARGES ', 20),
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
(101, 'jay ', 22, 'm', 'nvs', 'nvs', 987645321, 'jhj@jkjk.aa'),
(102, 'karan', 20, 'm', 'nvs', 'nvs', 1234567890, 'hghj@jhjk.hhgjh');

-- --------------------------------------------------------

--
-- Table structure for table `homoeopathic`
--

CREATE TABLE `homoeopathic` (
  `SRNO` int(3) NOT NULL,
  `PERTICULAR` varchar(100) NOT NULL,
  `CHARGES` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homoeopathic`
--

INSERT INTO `homoeopathic` (`SRNO`, `PERTICULAR`, `CHARGES`) VALUES
(1, 'REGISTRATION CHARGE ', 20),
(2, '1 WEEK DISPENSARY CHARGES ', 30),
(3, '2 WEEK DISPENSARY CHARGES ', 60),
(4, 'BIO CHEMIC 1 WEEK', 50),
(5, 'BIO CHEMIC 2 WEEK', 100),
(6, 'MOTHER TINCHER 1 WEEK', 50),
(7, 'MOTHER TINCHER 2 WEEK', 100),
(8, 'MINOR DRESSING', 50),
(9, 'MAJOR DRESSING ( DEPAND ON DRESSING )', 0),
(10, 'STICHES ( 1ST STITCH )', 150),
(11, 'OTHER STICH', 50),
(12, 'INJECTIONCHARGES ', 30),
(13, 'ECG', 150);

-- --------------------------------------------------------

--
-- Table structure for table `homoeopathic_bill`
--

CREATE TABLE `homoeopathic_bill` (
  `billno` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `opdno` int(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `reg_charge` int(255) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `medicine_qty` int(100) NOT NULL,
  `medicine_charges` int(100) NOT NULL,
  `medicine_total` int(100) NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `test_qty` int(100) NOT NULL,
  `test_charges` int(100) NOT NULL,
  `test_total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `inventory_homoeopathic`
--

CREATE TABLE `inventory_homoeopathic` (
  `DATE` varchar(100) NOT NULL,
  `opdno` int(255) NOT NULL,
  `1 WEEK DISPENSARY CHARGES` int(15) DEFAULT NULL,
  `2 WEEK DISPENSARY CHARGES` int(15) DEFAULT NULL,
  `BIO CHEMIC 1 WEEK` int(15) DEFAULT NULL,
  `BIO CHEMIC WEEK` int(15) DEFAULT NULL,
  `MOTHER TINCHER 1 WEEK` int(15) DEFAULT NULL,
  `MOTHER TINCHER 2 WEEK` int(15) DEFAULT NULL,
  `MINOR DRESSING` int(15) DEFAULT NULL,
  `MAJOR DRESSING(DEPENDS ON DRESSING)` int(15) DEFAULT NULL,
  `STICHES(1ST STITCH)` int(15) DEFAULT NULL,
  `OTHER STITCH` int(15) DEFAULT NULL,
  `INJECTION CHARGES` int(15) DEFAULT NULL,
  `ECG` int(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_homoeopathic`
--

INSERT INTO `inventory_homoeopathic` (`DATE`, `opdno`, `1 WEEK DISPENSARY CHARGES`, `2 WEEK DISPENSARY CHARGES`, `BIO CHEMIC 1 WEEK`, `BIO CHEMIC WEEK`, `MOTHER TINCHER 1 WEEK`, `MOTHER TINCHER 2 WEEK`, `MINOR DRESSING`, `MAJOR DRESSING(DEPENDS ON DRESSING)`, `STICHES(1ST STITCH)`, `OTHER STITCH`, `INJECTION CHARGES`, `ECG`) VALUES
('', 101, 3, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2022-3-3', 102, 3, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10),
('2022-2-2', 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_homoeopathic_lab`
--

CREATE TABLE `inventory_homoeopathic_lab` (
  `DATE` varchar(100) NOT NULL,
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

INSERT INTO `inventory_homoeopathic_lab` (`DATE`, `opdno`, `CBC`, `E.S.R`, `MALARIAL PARASITES - MP`, `BLEEDING AND CLOTTING TIME`, `BLOOD GROUP`, `UREA`, `S.CREATININE`, `S.BILIRUBIN`, `TOTAL PROTEIN`, `ALBUMIN`, `S.CALCIUM`, `S.CHOLESTEROL`, `TRIGLYCERIDES`, `HDL CHOLESTEROL`, `S.G.P.T`, `S.G.O.T`, `URIC ACID`, `BLOOD SUGAR RANDOM - RBS`, `FASTING SUGAR - FBS`, `PP2BS`, `LIPID PROFILE`, `C REACTIVE PROTEIN`, `RA`, `WIDAL`, `V.D.R.L`, `DENGUE IGG IGM`, `CHIKUNGUNYA IGM`, `URINE ROUTINE`, `PREGNANCY TEST`, `25 VITAMIN D`, `VITAMIN B12`, `HBA1C`, `T3 T4 TSH`, `TSH`, `FT3`, `FT4`, `HB ELECTROPHORESIS`, `ANA`, `HCG`, `FSH LH PROLACTINE`, `LIPID PROFILE 2`, `LUTEINIZING HORMONE SERUM`, `TORCH IGG IGM ABS - PARAMETER 8`, `FERRITIN`, `HOMOCYSTEINE`, `ANTI CCP`, `CA 125`, `ALIPOPROTEINS`, `CRP`, `PT`, `ELECTROLYTES`, `G6PD`, `CKP TOTAL SERUM`, `LDH`, `CKMB`, `LIPASE SERUM`, `IRON`, `TIBC`, `C3`, `CA 125 2`, `PSA TOTAL PROSTATE SPECIFIC ANTIGEN`, `AMYLASE ENZYMATIC SERUM`, `PHOSPHORUS INORGANIC SERUM`, `CALCIUM TOTAL SERUM`, `ALKALINE PHOSPHATATE ENZYMATIC`, `DENGUE IGG ANTIBODY`, `DENGUE IGM ANTIBODY`, `DENGUE NS1 ANTIGEN`, `TYPHI DOT IGG AND IGM`, `AMMONIA BIOCHEMICAL PLASMA`, `RA RHEUMATOID ARTHRITIS SERUM`, `THYROID ANTIBODIES TPO AND ATG`, `ABSOLUTE EOSINOPHILE COUNT`, `SEMEN ANALYSIS`, `ROUTINE EXAMINATION STOOL`, `HIV`, `HBSAG`, `D DIMER`, `HCV`) VALUES
('2022-33', 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-1-1', 101, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-3-1', 105, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_medicine_ayurvedic`
--

CREATE TABLE `inventory_medicine_ayurvedic` (
  `OPD/ID` int(20) NOT NULL,
  `1 Week Dispensary Charges` int(15) DEFAULT NULL,
  `2 Week Dispensary Charges` int(15) DEFAULT NULL,
  `Chayvanpras` int(15) DEFAULT NULL,
  `Oil` int(15) DEFAULT NULL,
  `Panchkarma` int(15) DEFAULT NULL,
  `Basti` int(15) DEFAULT NULL,
  `Vaman` int(15) DEFAULT NULL,
  `Virechana` int(15) DEFAULT NULL,
  `Navya` int(15) DEFAULT NULL,
  `Shirodhara` int(15) DEFAULT NULL,
  `Jalokavacharna` int(15) DEFAULT NULL,
  `Agnikarma` int(15) DEFAULT NULL,
  `Abhganga` int(15) DEFAULT NULL,
  `Local Basti` int(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `opd_member`
--

CREATE TABLE `opd_member` (
  `OPD/ID` int(15) NOT NULL,
  `Type (LAB/HOM/AYUR)` varchar(10) DEFAULT NULL,
  `Username` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Confirm Password` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `opd_member_register`
--

CREATE TABLE `opd_member_register` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_medicine`
--

CREATE TABLE `patient_medicine` (
  `opdno` int(11) NOT NULL,
  `medicine` varchar(30) NOT NULL,
  `charges` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_process`
--

CREATE TABLE `patient_process` (
  `OPD/ID` int(15) NOT NULL,
  `Reg. Charge` int(10) DEFAULT NULL,
  `Consulting` int(10) DEFAULT NULL,
  `Medicine` int(10) DEFAULT NULL,
  `Lab` int(10) DEFAULT NULL,
  `Bill` int(10) DEFAULT NULL,
  `Status (Done T/F)` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_register`
--

CREATE TABLE `patient_register` (
  `patientno` int(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `opdno` int(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `reg_charge` int(255) NOT NULL,
  `in_progress(waiting/done)` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_register`
--

INSERT INTO `patient_register` (`patientno`, `date`, `opdno`, `pname`, `reg_charge`, `in_progress(waiting/done)`) VALUES
(1, '2022-3-4', 101, 'jay', 20, 'waiting'),
(2, '2022-3-4', 101, 'jay', 20, 'done');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `existing_patients`
--
ALTER TABLE `existing_patients`
  ADD PRIMARY KEY (`opdno`);

--
-- Indexes for table `homoeopathic`
--
ALTER TABLE `homoeopathic`
  ADD PRIMARY KEY (`SRNO`);

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
-- Indexes for table `inventory_homoeopathic`
--
ALTER TABLE `inventory_homoeopathic`
  ADD KEY `opdno` (`opdno`);

--
-- Indexes for table `inventory_homoeopathic_lab`
--
ALTER TABLE `inventory_homoeopathic_lab`
  ADD KEY `opdno` (`opdno`);

--
-- Indexes for table `inventory_medicine_ayurvedic`
--
ALTER TABLE `inventory_medicine_ayurvedic`
  ADD PRIMARY KEY (`OPD/ID`);

--
-- Indexes for table `opd_member`
--
ALTER TABLE `opd_member`
  ADD PRIMARY KEY (`OPD/ID`);

--
-- Indexes for table `opd_member_register`
--
ALTER TABLE `opd_member_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_medicine`
--
ALTER TABLE `patient_medicine`
  ADD PRIMARY KEY (`opdno`);

--
-- Indexes for table `patient_process`
--
ALTER TABLE `patient_process`
  ADD PRIMARY KEY (`OPD/ID`);

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
  MODIFY `opdno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `homoeopathic_bill`
--
ALTER TABLE `homoeopathic_bill`
  MODIFY `billno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opd_member_register`
--
ALTER TABLE `opd_member_register`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_register`
--
ALTER TABLE `patient_register`
  MODIFY `patientno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `homoeopathic_bill`
--
ALTER TABLE `homoeopathic_bill`
  ADD CONSTRAINT `homoeopathic_bill_ibfk_1` FOREIGN KEY (`opdno`) REFERENCES `existing_patients` (`opdno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--imp without space

INSERT INTO `homoeopathic` (`SRNO`, `PERTICULAR`, `CHARGES`) VALUES
(1, 'REGISTRATION CHARGE ', 20),
(2, '1 WEEK DISPENSARY CHARGES', 30),
(3, '2 WEEK DISPENSARY CHARGES', 60),
(4, 'BIO CHEMIC 1 WEEK', 50),
(5, 'BIO CHEMIC 2 WEEK', 100),
(6, 'MOTHER TINCHER 1 WEEK', 50),
(7, 'MOTHER TINCHER 2 WEEK', 100),
(8, 'MINOR DRESSING', 50),
(9, 'MAJOR DRESSING(DEPENDS ON DRESSING)', 0),
(10, 'STICHES(1ST STITCH)', 150),
(11, 'OTHER STITCH', 50),
(12, 'INJECTION', 30),
(13, 'ECG', 150);
