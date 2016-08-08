-- phpMyAdmin SQL Dump+``-
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May, 2016
-- Server version: 5.5.33
-- PHP Version: 5.4.4-14+deb7u8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `CourseProject`
--

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--
CREATE TABLE IF NOT EXISTS `ContactUs` (
  `UserID` int(11) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Username` varchar(32) NOT NULL,
  `Comment_Date_Time` datetime NOT NULL,
  `Comment` text NOT NULL,
  PRIMARY KEY (`Comment_Date_Time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Confirm` varchar(50) NOT NULL,
  `Address` text NOT NULL,
  `Phone` varchar(16) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Remember` varchar(50) NOT NULL,
  PRIMARY KEY (`UserID`,`Username`,`Password`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
--Table stucture for `UsersOrders`
--

CREATE TABLE IF NOT EXISTS `UsersOrders` (
	`OrderID` int(16) NOT NULL AUTO_INCREMENT,
	`Order_Name` varchar(45) NOT NULL,
	`Amount` varchar(16) NOT NULL,
	`UserID` int (11) NOT NULL,
	PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for `OrderIterms`
--

CREATE TABLE IF NOT EXISTS `OrderIterms` (
	`OrderID` int(16) NOT NULL,
	`Order_Name` varchar(45) NOT NULL,
	`Order_qty` int (16) NOT NULL,
	PRIMARY KEY (`OrderID`)
)
