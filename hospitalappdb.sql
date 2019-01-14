-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 10, 2018 at 08:42 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalappdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `allergies`
--

DROP TABLE IF EXISTS `allergies`;
CREATE TABLE IF NOT EXISTS `allergies` (
  `patientID` int(10) NOT NULL,
  `allergy` varchar(50) COLLATE utf8_bin NOT NULL,
  `allergyID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`allergyID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `allergies`
--

INSERT INTO `allergies` (`patientID`, `allergy`, `allergyID`) VALUES
(1, 'Commitment', 0),
(2, 'Laws of Physics', 1),
(1, 'Stuipidity', 2),
(2, 'Being Contained', 3),
(2, 'Humility', 4);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Age` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `Name`, `Age`) VALUES
(1, 'Geralt', 85),
(2, 'Ciri', 22);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE IF NOT EXISTS `tests` (
  `patientID` int(10) NOT NULL,
  `testID` int(10) UNSIGNED NOT NULL,
  `testName` varchar(50) COLLATE utf8_bin NOT NULL,
  `testResults` varchar(150) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`testID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`patientID`, `testID`, `testName`, `testResults`) VALUES
(1, 0, 'Trial of Grasses', 'Success, the subject will adopt the attributes of a witcher. Subject\'s hair turned white, unprecedented. More research needed.'),
(1, 1, 'An Unexpected Gift', 'Subject has failed the test and returned the unexpected gift to the family. Worrisome for the perpetuation of witchers.'),
(2, 2, 'Pendulums', 'Subject was competent, but overzealous and overconfident. Overconfidence is a slow and insidious killer. '),
(2, 3, 'Magic 101', 'The subject shows extreme potential but lacks the discipline and focus to harness it.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
