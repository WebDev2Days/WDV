CREATE DATABASE  IF NOT EXISTS `dbwebdev` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbwebdev`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dbwebdev
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblcart`
--

DROP TABLE IF EXISTS `tblcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcart` (
  `intCartID` int(11) NOT NULL AUTO_INCREMENT,
  `intCartAccNo` int(11) NOT NULL,
  `intCartProdID` int(11) NOT NULL,
  `intCartQuantity` int(11) NOT NULL,
  PRIMARY KEY (`intCartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcart`
--


--
-- Table structure for table `tblcategories`
--

DROP TABLE IF EXISTS `tblcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcategories` (
  `intCatID` int(11) NOT NULL AUTO_INCREMENT,
  `strCatName` varchar(45) NOT NULL,
  PRIMARY KEY (`intCatID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategories`
--

INSERT INTO `tblcategories` VALUES (1,'Food & Beverages'),(2,'Supplements'),(3,'Hygiene'),(4,'Cosmetics'),(5,'Statiionary');

--
-- Table structure for table `tblorder`
--

DROP TABLE IF EXISTS `tblorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorder` (
  `intOrderID` int(11) NOT NULL AUTO_INCREMENT,
  `intOrderAccNo` int(11) NOT NULL,
  `intOrderProdID` int(11) NOT NULL,
  `intOrderQuantity` int(11) NOT NULL,
  `intOrderStatus` int(11) NOT NULL,
  `intOrderPayment` int(11) NOT NULL,
  PRIMARY KEY (`intOrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorder`
--


--
-- Table structure for table `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproduct` (
  `intProdID` int(11) NOT NULL AUTO_INCREMENT,
  `intProdCatID` int(11) NOT NULL,
  `strProdName` varchar(100) NOT NULL,
  `fltProdPrice` float NOT NULL,
  `intProdStock` int(11) NOT NULL,
  `txtProdDesc` text NOT NULL,
  `strProdImg` varchar(45) NOT NULL,
  PRIMARY KEY (`intProdID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` VALUES (1,1,'Keto Loaf & Rolls',115,20,'Keto Loaf','img1.jpg'),(2,1,'Shahani\'s Gatas Kalabaw',150,15,'Milk','img2.jpg'),(3,2,'Raw Cordyceps',105,12,'Cordyceps','img3.jpg'),(4,3,'Kala Milk Soap',60,18,'Soap','img4.jpg');

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluser` (
  `intAccNo` int(11) NOT NULL AUTO_INCREMENT,
  `strUserName` varchar(45) NOT NULL,
  `strPassword` varchar(45) NOT NULL,
  `strFirstName` varchar(45) NOT NULL,
  `strMiddleName` varchar(45) NOT NULL,
  `strLastName` varchar(45) NOT NULL,
  `strEmail` varchar(45) NOT NULL,
  `strShipping` varchar(45) NOT NULL,
  `strBilling` varchar(45) NOT NULL,
  `intType` varchar(45) NOT NULL DEFAULT '2',
  PRIMARY KEY (`intAccNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` VALUES (1,'Jon-Ervin','Jon-Ervin','Jon ','B ','Balmaceda','balmacedajonervin@gmail.com','Manila','Manila','2');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
