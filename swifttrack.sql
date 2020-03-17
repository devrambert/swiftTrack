-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 06, 2020 at 06:09 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swifttrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `ADMIN_INFO`
--

CREATE TABLE `ADMIN_INFO` (
  `USERNAME` varchar(10) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ADMIN_INFO`
--

INSERT INTO `ADMIN_INFO` (`USERNAME`, `PASSWORD`) VALUES
('admin', 'admin101');

-- --------------------------------------------------------

--
-- Table structure for table `AWARD_CATEGORY`
--

CREATE TABLE `AWARD_CATEGORY` (
  `AWARD_CATEGORY_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) NOT NULL,
  `HOURS_REQUIRED` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AWARD_CATEGORY`
--

INSERT INTO `AWARD_CATEGORY` (`AWARD_CATEGORY_ID`, `DESCRIPTION`, `HOURS_REQUIRED`) VALUES
(1, 'Brower youth Award', 25),
(2, 'Davidson Fellowship Award', 50),
(3, 'Ford Scholars Award', 75),
(4, 'Newman Civic Fellows Award', 100);

-- --------------------------------------------------------

--
-- Table structure for table `AWARD_TOTALS`
--

CREATE TABLE `AWARD_TOTALS` (
  `STUDENT_ID` int(11) NOT NULL,
  `AWARD_CATEGORY_ID` int(11) NOT NULL,
  `TOTAL_HOURS` int(11) NOT NULL,
  `AWARD_ACHEIVED` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AWARD_TOTALS`
--

INSERT INTO `AWARD_TOTALS` (`STUDENT_ID`, `AWARD_CATEGORY_ID`, `TOTAL_HOURS`, `AWARD_ACHEIVED`) VALUES
(1000001, 1, 32, 'Y'),
(1000002, 2, 56, 'Y'),
(1000003, 3, 80, 'Y'),
(1000004, 4, 104, 'Y'),
(1000005, 2, 24, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_INFO`
--

CREATE TABLE `STUDENT_INFO` (
  `STUDENT_ID` int(11) NOT NULL,
  `FIRSTNAME` varchar(45) NOT NULL,
  `LASTNAME` varchar(45) NOT NULL,
  `GRADE` int(11) NOT NULL,
  `AWARD_CATEGORY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STUDENT_INFO`
--

INSERT INTO `STUDENT_INFO` (`STUDENT_ID`, `FIRSTNAME`, `LASTNAME`, `GRADE`, `AWARD_CATEGORY_ID`) VALUES
(1000001, 'SHRUTHI', 'SOLAIAPPAN', 11, 1),
(1000002, 'SARAH', 'LEE', 10, 2),
(1000003, 'EVAN', 'GRANT', 9, 3),
(1000004, 'JOHN', 'DOE', 10, 4),
(1000005, 'JAMES', 'SMITH', 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_LOG`
--

CREATE TABLE `STUDENT_LOG` (
  `STUDENT_ID` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `HOUR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STUDENT_LOG`
--

INSERT INTO `STUDENT_LOG` (`STUDENT_ID`, `DATE`, `HOUR`) VALUES
(1000001, '2020-01-01', 8),
(1000001, '2020-01-05', 8),
(1000001, '2020-02-01', 8),
(1000001, '2020-02-20', 8),
(1000001, '2020-03-01', 8),
(1000001, '2020-01-06', 8),
(1000001, '2020-02-15', 8),
(1000001, '2020-01-01', 8),
(1000001, '2020-01-05', 8),
(1000001, '2020-02-01', 8),
(1000001, '2020-02-20', 8),
(1000001, '2020-03-01', 8),
(1000001, '2020-01-06', 8),
(1000001, '2020-02-15', 8),
(1000002, '2020-01-01', 8),
(1000002, '2020-01-05', 8),
(1000002, '2020-02-01', 8),
(1000002, '2020-02-20', 8),
(1000002, '2020-03-01', 8),
(1000002, '2020-03-02', 8),
(1000002, '2020-03-03', 8),
(1000002, '2020-03-04', 8),
(1000002, '2020-03-05', 8),
(1000002, '2020-02-02', 8),
(1000002, '2020-02-03', 8),
(1000002, '2020-02-04', 8),
(1000002, '2020-02-05', 8),
(1000003, '2020-01-01', 8),
(1000003, '2020-01-06', 8),
(1000003, '2020-01-07', 8),
(1000003, '2020-01-08', 8),
(1000004, '2020-02-15', 8),
(1000004, '2020-02-16', 8),
(1000004, '2020-02-17', 8),
(1000004, '2020-02-18', 8),
(1000004, '2020-02-19', 8),
(1000004, '2020-02-20', 8),
(1000004, '2020-02-21', 8),
(1000004, '2020-02-22', 8),
(1000004, '2020-02-23', 8),
(1000004, '2020-02-24', 8),
(1000005, '2020-01-18', 8),
(1000005, '2020-01-19', 8),
(1000005, '2020-01-20', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADMIN_INFO`
--
ALTER TABLE `ADMIN_INFO`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `AWARD_CATEGORY`
--
ALTER TABLE `AWARD_CATEGORY`
  ADD PRIMARY KEY (`AWARD_CATEGORY_ID`),
  ADD UNIQUE KEY `DESCRIPTION_UNIQUE` (`DESCRIPTION`);

--
-- Indexes for table `AWARD_TOTALS`
--
ALTER TABLE `AWARD_TOTALS`
  ADD PRIMARY KEY (`STUDENT_ID`),
  ADD KEY `FK_AWARDCATEGORYID_AWARD_idx` (`AWARD_CATEGORY_ID`);

--
-- Indexes for table `STUDENT_INFO`
--
ALTER TABLE `STUDENT_INFO`
  ADD PRIMARY KEY (`STUDENT_ID`),
  ADD UNIQUE KEY `STUDENT_ID_UNIQUE` (`STUDENT_ID`),
  ADD KEY `FK_AWARDCATEGORYID_STUDENT_idx` (`AWARD_CATEGORY_ID`);

--
-- Indexes for table `STUDENT_LOG`
--
ALTER TABLE `STUDENT_LOG`
  ADD KEY `FK_STUDENT_ID_LOG_idx` (`STUDENT_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AWARD_TOTALS`
--
ALTER TABLE `AWARD_TOTALS`
  ADD CONSTRAINT `FK_AWARDCATEGORYID_AWARD` FOREIGN KEY (`AWARD_CATEGORY_ID`) REFERENCES `AWARD_CATEGORY` (`AWARD_CATEGORY_ID`),
  ADD CONSTRAINT `FK_STUDENT_ID_AWARD` FOREIGN KEY (`STUDENT_ID`) REFERENCES `STUDENT_INFO` (`STUDENT_ID`);

--
-- Constraints for table `STUDENT_INFO`
--
ALTER TABLE `STUDENT_INFO`
  ADD CONSTRAINT `FK_AWARDCATEGORYID_STUDENT` FOREIGN KEY (`AWARD_CATEGORY_ID`) REFERENCES `AWARD_CATEGORY` (`AWARD_CATEGORY_ID`);

--
-- Constraints for table `STUDENT_LOG`
--
ALTER TABLE `STUDENT_LOG`
  ADD CONSTRAINT `FK_STUDENT_ID_LOG` FOREIGN KEY (`STUDENT_ID`) REFERENCES `STUDENT_INFO` (`STUDENT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
