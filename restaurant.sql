-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2024 at 02:38 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `cook`
--

DROP TABLE IF EXISTS `cook`;
CREATE TABLE IF NOT EXISTS `cook` (
  `cookID` int NOT NULL,
  `cookName` varchar(100) NOT NULL,
  `experienceLevel` varchar(100) NOT NULL,
  `specialties` varchar(100) NOT NULL,
  PRIMARY KEY (`cookID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customerID` int NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `telephone` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `foodID` int NOT NULL,
  `foodName` varchar(100) NOT NULL,
  `foodCategories` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`foodID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `itemID` int NOT NULL,
  `orderID` int NOT NULL,
  `itemName` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`itemID`),
  KEY `orderID` (`orderID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderID` int NOT NULL,
  `customerID` int NOT NULL,
  `itemOrderd` varchar(100) NOT NULL,
  `totalAmount` decimal(10,2) NOT NULL,
  `orderTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `customerID` (`customerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `paymentID` int NOT NULL,
  `orderID` int NOT NULL,
  `state` varchar(10) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payTime` time DEFAULT NULL,
  PRIMARY KEY (`paymentID`),
  KEY `orderID` (`orderID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
