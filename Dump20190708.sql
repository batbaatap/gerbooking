CREATE DATABASE  IF NOT EXISTS `atien_booking` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `atien_booking`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: atien_booking
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking` (
  `customer_customer_id` int(11) NOT NULL,
  `room_room_id` int(11) NOT NULL,
  `booking_from` datetime DEFAULT NULL,
  `booking_to` datetime DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `cancel_time` int(20) DEFAULT NULL,
  `requist` text,
  PRIMARY KEY (`customer_customer_id`,`room_room_id`),
  KEY `fk_customer_has_room_room1_idx` (`room_room_id`),
  KEY `fk_customer_has_room_customer_idx` (`customer_customer_id`),
  CONSTRAINT `fk_customer_has_room_customer` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_has_room_room1` FOREIGN KEY (`room_room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,1,'2019-07-02 00:00:00','2019-07-03 00:00:00',1,'pre_order',2,NULL),(1,2,'2019-07-03 00:00:00','2019-07-06 00:00:00',2,'confirm',3,NULL),(2,1,'2019-07-24 00:00:00','2019-07-27 00:00:00',4,'pre_order',2,NULL),(2,4,'2019-07-01 00:00:00','2019-07-14 00:00:00',1,'pre_order',2,NULL),(3,5,'2019-07-02 00:00:00','2019-07-24 00:00:00',1,'pre_order',3,NULL);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_manager`
--

DROP TABLE IF EXISTS `booking_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking_manager` (
  `Booking_manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `room_room_id` int(11) NOT NULL,
  PRIMARY KEY (`Booking_manager_id`,`room_room_id`),
  KEY `fk_Booking_manager_room1_idx` (`room_room_id`),
  CONSTRAINT `fk_Booking_manager_room1` FOREIGN KEY (`room_room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_manager`
--

LOCK TABLES `booking_manager` WRITE;
/*!40000 ALTER TABLE `booking_manager` DISABLE KEYS */;
INSERT INTO `booking_manager` VALUES (1,'Murun','Bold','muugii','muugii@gmail.com','123',1),(2,'Murun','Bold','muugii','muugii@gmail.com','123',2);
/*!40000 ALTER TABLE `booking_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` int(25) DEFAULT NULL,
  `address` text,
  `password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Хөргөлт Сервис ХХК','info@gmail.com','Mongolia',89898989,'Street addresses: 445 Mount Eden Road, Mount Eden, Auckland. Rural addresses: 21 Greens Road RD 2 Ruawai 0592. Partial addresses: Main Highway Otaki; 32 Wilson Street. Postcodes: 5022.','123'),(2,'xxk','ifo@gmail.com','Mongolia',11111111,'Street addresses: 445 Mount Eden Road, Mount Eden, Auckland. Rural addresses: 21 Greens Road RD 2 Ruawai 0592. Partial addresses: Main Highway Otaki; 32 Wilson Street. Postcodes: 5022.','123'),(3,'daatgal xxk','daatgal@gmail.con','Mongolia',34343434,'Street addresses: 445 Mount Eden Road, Mount Eden, Auckland. Rural addresses: 21 Greens Road RD 2 Ruawai 0592. Partial addresses: Main Highway Otaki; 32 Wilson Street. Postcodes: 5022.','123'),(4,'hogjil xxk','hogjil@gmail.com','Mongolia',454545,'Street addresses: 445 Mount Eden Road, Mount Eden, Auckland. Rural addresses: 21 Greens Road RD 2 Ruawai 0592. Partial addresses: Main Highway Otaki; 32 Wilson Street. Postcodes: 5022.','123');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_number` int(20) DEFAULT NULL,
  `room_type_room_type_id` int(11) NOT NULL,
  PRIMARY KEY (`room_id`,`room_type_room_type_id`),
  KEY `fk_room_room_type1_idx` (`room_type_room_type_id`),
  CONSTRAINT `fk_room_room_type1` FOREIGN KEY (`room_type_room_type_id`) REFERENCES `room_type` (`room_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1001,1),(2,1002,2),(3,1003,1),(4,1004,1),(5,1005,2);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type_name` varchar(45) DEFAULT NULL,
  `room_attribute` varchar(45) DEFAULT NULL,
  `add_explanation` text,
  `room_image` varchar(45) DEFAULT NULL,
  `bed_count` int(20) DEFAULT NULL,
  `desk_count` int(20) DEFAULT NULL,
  `chair_count` int(20) DEFAULT NULL,
  `room_rate` int(20) DEFAULT NULL,
  `room_size` int(30) DEFAULT NULL,
  PRIMARY KEY (`room_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,'дүнзэн байшин','4 нарийн ортой','1 ортой кабин нь зуны улиралд ажилладаг. \r\nӨрөөний үнийн дүнд өглөөний цай багтсан. ',NULL,5,1,NULL,45000,100),(2,'гэр','3 нарийн ортой','1 ортой кабин нь зуны улиралд ажилладаг. \r\nӨрөөний үнийн дүнд өглөөний цай багтсан. ',NULL,8,2,NULL,100000,150),(3,'Том гэр','12 нарийн ортой','1 ортой кабин нь зуны улиралд ажилладаг. \r\nӨрөөний үнийн дүнд өглөөний цай багтсан. ',NULL,12,25,NULL,120000,NULL),(4,'гэр','1 нарийн ортой гэр','1 ортой кабин нь зуны улиралд ажилладаг. \r\nӨрөөний үнийн дүнд өглөөний цай багтсан. ',NULL,NULL,NULL,NULL,100000,NULL);
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-08 14:58:52
