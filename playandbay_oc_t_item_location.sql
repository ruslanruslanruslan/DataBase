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
-- Table structure for table `oc_t_item_location`
--

DROP TABLE IF EXISTS `oc_t_item_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_item_location` (
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `fk_c_country_code` char(2) DEFAULT NULL,
  `s_country` varchar(40) DEFAULT NULL,
  `s_address` varchar(100) DEFAULT NULL,
  `s_zip` varchar(15) DEFAULT NULL,
  `fk_i_region_id` int(10) unsigned DEFAULT NULL,
  `s_region` varchar(100) DEFAULT NULL,
  `fk_i_city_id` int(10) unsigned DEFAULT NULL,
  `s_city` varchar(100) DEFAULT NULL,
  `fk_i_city_area_id` int(10) unsigned DEFAULT NULL,
  `s_city_area` varchar(200) DEFAULT NULL,
  `d_coord_lat` decimal(10,6) DEFAULT NULL,
  `d_coord_long` decimal(10,6) DEFAULT NULL,
  PRIMARY KEY (`fk_i_item_id`),
  KEY `fk_c_country_code` (`fk_c_country_code`),
  KEY `fk_i_region_id` (`fk_i_region_id`),
  KEY `fk_i_city_id` (`fk_i_city_id`),
  KEY `fk_i_city_area_id` (`fk_i_city_area_id`),
  CONSTRAINT `oc_t_item_location_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`),
  CONSTRAINT `oc_t_item_location_ibfk_2` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`),
  CONSTRAINT `oc_t_item_location_ibfk_3` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oc_t_region` (`pk_i_id`),
  CONSTRAINT `oc_t_item_location_ibfk_4` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`),
  CONSTRAINT `oc_t_item_location_ibfk_5` FOREIGN KEY (`fk_i_city_area_id`) REFERENCES `oc_t_city_area` (`pk_i_id`)
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

-- Dump completed on 2016-01-09 11:14:25
