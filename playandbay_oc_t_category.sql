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
-- Table structure for table `oc_t_category`
--

DROP TABLE IF EXISTS `oc_t_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_category` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_i_parent_id` int(10) unsigned DEFAULT NULL,
  `i_expiration_days` int(3) unsigned NOT NULL DEFAULT '0',
  `i_position` int(2) unsigned NOT NULL DEFAULT '0',
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_price_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `s_icon` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_i_parent_id` (`fk_i_parent_id`),
  KEY `i_position` (`i_position`),
  KEY `fk_i_parent_id_2` (`fk_i_parent_id`),
  KEY `i_position_2` (`i_position`),
  KEY `fk_i_parent_id_3` (`fk_i_parent_id`),
  KEY `i_position_3` (`i_position`),
  CONSTRAINT `oc_t_category_ibfk_1` FOREIGN KEY (`fk_i_parent_id`) REFERENCES `oc_t_category` (`pk_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_t_category`
--

LOCK TABLES `oc_t_category` WRITE;
/*!40000 ALTER TABLE `oc_t_category` DISABLE KEYS */;
INSERT INTO `oc_t_category` VALUES (96,NULL,0,0,1,1,NULL),(97,NULL,0,1,1,1,NULL),(98,NULL,0,2,1,1,NULL),(99,96,0,0,1,1,NULL),(100,96,0,2,1,1,NULL),(101,96,0,1,1,1,NULL),(102,96,0,3,1,1,NULL),(103,96,0,4,1,1,NULL),(104,96,0,5,1,1,NULL),(105,97,0,1,1,1,NULL),(106,97,0,0,1,1,NULL),(107,97,0,2,1,1,NULL),(108,97,0,3,1,1,NULL),(109,97,0,5,1,1,NULL),(110,97,0,4,1,1,NULL),(111,97,0,6,1,1,NULL),(112,98,0,0,1,1,NULL),(113,98,0,1,1,1,NULL),(114,98,0,2,1,1,NULL),(115,98,0,4,1,1,NULL),(116,99,0,0,1,1,NULL),(117,99,0,1,1,1,NULL),(118,99,0,2,1,1,NULL),(119,106,0,0,1,1,NULL),(120,106,0,1,1,1,NULL),(121,106,0,2,1,1,NULL),(122,106,0,3,1,1,NULL),(123,105,0,0,1,1,NULL),(124,105,0,1,1,1,NULL),(125,116,0,0,1,1,NULL),(126,116,0,1,1,1,NULL),(127,116,0,2,1,1,NULL),(128,116,0,3,1,1,NULL),(129,107,0,0,1,1,NULL),(130,107,0,1,1,1,NULL),(131,107,0,2,1,1,NULL),(132,106,0,4,1,1,NULL),(133,98,0,3,1,1,NULL);
/*!40000 ALTER TABLE `oc_t_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-09 11:24:29
