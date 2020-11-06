-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2020 at 04:48 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cflms_bumberger_codereview_09`
--
CREATE DATABASE IF NOT EXISTS `cflms_bumberger_codereview_09` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cflms_bumberger_codereview_09`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `ID_E` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `surname` varchar(80) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`ID_E`, `name`, `surname`, `title`, `salary`) VALUES
(1, 'John', 'Doe', 'Manager', 55000),
(2, 'Max', 'Cruise', 'Driver', 25000),
(3, 'Anna', 'Richies', 'Sorter', 35000);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `ID_I` int(11) NOT NULL,
  `delivered` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`ID_I`, `delivered`) VALUES
(1, 0),
(2, 0),
(3, 1),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `ID_M` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `FK_ID_E` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`ID_M`, `address`, `FK_ID_E`) VALUES
(1, 'Times square 2', 1),
(2, 'Times square 2', 3),
(3, 'Ant road 3', 2);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `ID_P` int(11) NOT NULL,
  `POO` varchar(255) DEFAULT NULL,
  `POD` varchar(255) DEFAULT NULL,
  `Fk_ID_M` int(11) DEFAULT NULL,
  `FK_ID_S` int(11) DEFAULT NULL,
  `FK_ID_R` int(11) DEFAULT NULL,
  `FK_ID_I` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`ID_P`, `POO`, `POD`, `Fk_ID_M`, `FK_ID_S`, `FK_ID_R`, `FK_ID_I`) VALUES
(12, 'NY', 'Houston TX', 3, 4, 1, 1),
(13, 'NY', 'Houston TX', 3, 5, 2, 2),
(14, 'NY', 'Pennsylvania', 2, 6, 3, 3),
(15, 'Washington DC', 'Florida', 3, 7, 4, 4),
(16, 'Washington DC', 'Florida', 3, 8, 5, 5),
(17, 'Washington DC', 'Florida', 3, 9, 6, 6),
(18, 'NY', 'Toronto Ca', 2, 10, 7, 7),
(19, 'NY', 'Toronto Ca', 2, 11, 8, 8),
(20, 'Washington DC', 'NY', 2, 12, 9, 9),
(21, 'Dalas Tx', 'NYC', 1, 13, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `recipient`
--

CREATE TABLE `recipient` (
  `ID_R` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `surname` varchar(80) DEFAULT NULL,
  `FK_ID_I` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recipient`
--

INSERT INTO `recipient` (`ID_R`, `address`, `name`, `surname`, `FK_ID_I`) VALUES
(1, 'Why Now Street', 'Anton', 'Right', 1),
(2, 'Goerge W Bush Blv 7', 'Kathy', 'Smith', 2),
(3, 'Nixon Dixon road 99', 'Lisa', 'Roy', 3),
(4, 'Phenix rd 7', 'Tatiana', 'Pinto', 4),
(5, 'Phenix rd 7', 'Betina', 'Birne', 5),
(6, 'Phenix rd 7', 'Che', 'Zing', 6),
(7, 'Phenix rd 7', 'Gustavo', 'Alphonso', 7),
(8, 'Phenix rd 7', 'Tim', 'Burton', 8),
(9, 'Phenix rd 7', 'James', 'Smith', 9),
(10, 'Phenix rd 7', 'Ajeca', 'Polski', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sender`
--

CREATE TABLE `sender` (
  `ID_S` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `surname` varchar(80) DEFAULT NULL,
  `FK_ID_I` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sender`
--

INSERT INTO `sender` (`ID_S`, `address`, `name`, `surname`, `FK_ID_I`) VALUES
(4, 'Train road 3', 'Alex', 'Rider', 1),
(5, 'Albert road 45', 'Mia', 'Blue', 2),
(6, 'Joshef Memorial Road 71', 'Roberto', 'Castiliio', 3),
(7, 'Freedom Blv 66', 'Andrew', 'Reed', 4),
(8, 'Einstein Rd. 12', 'Frodo', 'Black', 5),
(9, 'Clem Av. 72', 'Claw', 'Ranger', 6),
(10, 'Green Rd. 98', 'Carl', 'Berger', 7),
(11, 'Prob Rd. 7993', 'Simona', 'Man', 8),
(12, 'Ave Av. 521a', 'Lila', 'Hempf', 9),
(13, 'Ceaser Point Rd. 6a', 'Diana', 'Ross', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ID_E`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`ID_I`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`ID_M`),
  ADD KEY `FK_ID_E` (`FK_ID_E`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`ID_P`),
  ADD KEY `Fk_ID_M` (`Fk_ID_M`),
  ADD KEY `FK_ID_S` (`FK_ID_S`),
  ADD KEY `FK_ID_R` (`FK_ID_R`),
  ADD KEY `FK_ID_I` (`FK_ID_I`);

--
-- Indexes for table `recipient`
--
ALTER TABLE `recipient`
  ADD PRIMARY KEY (`ID_R`),
  ADD KEY `FK_ID_I` (`FK_ID_I`);

--
-- Indexes for table `sender`
--
ALTER TABLE `sender`
  ADD PRIMARY KEY (`ID_S`),
  ADD KEY `FK_ID_I` (`FK_ID_I`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `ID_E` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `ID_I` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `ID_M` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `ID_P` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `recipient`
--
ALTER TABLE `recipient`
  MODIFY `ID_R` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sender`
--
ALTER TABLE `sender`
  MODIFY `ID_S` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `mail_ibfk_1` FOREIGN KEY (`FK_ID_E`) REFERENCES `employees` (`ID_E`);

--
-- Constraints for table `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `package_ibfk_1` FOREIGN KEY (`Fk_ID_M`) REFERENCES `mail` (`ID_M`),
  ADD CONSTRAINT `package_ibfk_2` FOREIGN KEY (`FK_ID_S`) REFERENCES `sender` (`ID_S`),
  ADD CONSTRAINT `package_ibfk_3` FOREIGN KEY (`FK_ID_R`) REFERENCES `recipient` (`ID_R`),
  ADD CONSTRAINT `package_ibfk_4` FOREIGN KEY (`FK_ID_I`) REFERENCES `info` (`ID_I`);

--
-- Constraints for table `recipient`
--
ALTER TABLE `recipient`
  ADD CONSTRAINT `recipient_ibfk_1` FOREIGN KEY (`FK_ID_I`) REFERENCES `info` (`ID_I`);

--
-- Constraints for table `sender`
--
ALTER TABLE `sender`
  ADD CONSTRAINT `sender_ibfk_1` FOREIGN KEY (`FK_ID_I`) REFERENCES `info` (`ID_I`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
