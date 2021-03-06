CREATE DATABASE  IF NOT EXISTS `playandbay_testXXX` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `playandbay_testXXX`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win64 (x86_64)
--
-- Host: localhost    Database: playandbay
-- ------------------------------------------------------
-- Server version	5.6.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fct_grabber_avito`
--

DROP TABLE IF EXISTS `fct_grabber_avito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_grabber_avito` (
  `id_resource_list` int(11) NOT NULL,
  `avito_id` bigint(20) DEFAULT NULL,
  `url` mediumtext,
  `title` varchar(100) DEFAULT NULL,
  `tel_num` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `avito_section` varchar(255) DEFAULT NULL,
  `user_section` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `dt_open` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `transformated` tinyint(4) DEFAULT '0',
  `item_id` int(11) DEFAULT NULL,
  `photo_cnt` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_resource_list`),
  UNIQUE KEY `avito_id_UNIQUE` (`avito_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-09 11:14:26
