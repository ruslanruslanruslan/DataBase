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
-- Table structure for table `oc_t_item`
--

DROP TABLE IF EXISTS `oc_t_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_item` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_i_user_id` int(10) unsigned DEFAULT NULL,
  `fk_i_category_id` int(10) unsigned NOT NULL,
  `dt_pub_date` datetime NOT NULL,
  `dt_mod_date` datetime DEFAULT NULL,
  `f_price` float DEFAULT NULL,
  `i_price` bigint(20) DEFAULT NULL,
  `fk_c_currency_code` char(3) DEFAULT NULL,
  `s_contact_name` varchar(100) DEFAULT NULL,
  `s_contact_email` varchar(140) DEFAULT NULL,
  `s_ip` varchar(64) NOT NULL DEFAULT '',
  `b_premium` tinyint(1) NOT NULL DEFAULT '0',
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_active` tinyint(1) NOT NULL DEFAULT '0',
  `b_spam` tinyint(1) NOT NULL DEFAULT '0',
  `s_secret` varchar(40) DEFAULT NULL,
  `b_show_email` tinyint(1) DEFAULT NULL,
  `dt_expiration` datetime NOT NULL DEFAULT '9999-12-31 23:59:59',
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_i_user_id` (`fk_i_user_id`),
  KEY `idx_s_contact_email` (`s_contact_email`(10)),
  KEY `fk_i_category_id` (`fk_i_category_id`),
  KEY `fk_c_currency_code` (`fk_c_currency_code`),
  KEY `idx_pub_date` (`dt_pub_date`),
  KEY `idx_price` (`i_price`),
  KEY `fk_i_user_id_2` (`fk_i_user_id`),
  KEY `fk_i_category_id_2` (`fk_i_category_id`),
  KEY `fk_c_currency_code_2` (`fk_c_currency_code`),
  KEY `fk_i_user_id_3` (`fk_i_user_id`),
  KEY `fk_i_category_id_3` (`fk_i_category_id`),
  KEY `fk_c_currency_code_3` (`fk_c_currency_code`),
  CONSTRAINT `oc_t_item_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`),
  CONSTRAINT `oc_t_item_ibfk_2` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`),
  CONSTRAINT `oc_t_item_ibfk_3` FOREIGN KEY (`fk_c_currency_code`) REFERENCES `oc_t_currency` (`pk_c_code`)
) ENGINE=InnoDB AUTO_INCREMENT=98003 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-09 11:14:22
