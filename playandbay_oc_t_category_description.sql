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
-- Table structure for table `oc_t_category_description`
--

DROP TABLE IF EXISTS `oc_t_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_category_description` (
  `fk_i_category_id` int(10) unsigned NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_name` varchar(100) DEFAULT NULL,
  `s_description` text,
  `s_slug` varchar(100) NOT NULL,
  PRIMARY KEY (`fk_i_category_id`,`fk_c_locale_code`),
  KEY `fk_c_locale_code` (`fk_c_locale_code`),
  KEY `idx_s_slug` (`s_slug`),
  CONSTRAINT `oc_t_category_description_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`),
  CONSTRAINT `oc_t_category_description_ibfk_2` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oc_t_locale` (`pk_c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_t_category_description`
--

LOCK TABLES `oc_t_category_description` WRITE;
/*!40000 ALTER TABLE `oc_t_category_description` DISABLE KEYS */;
INSERT INTO `oc_t_category_description` VALUES (96,'en_US','Musical instruments','','musical-instruments'),(96,'ru_RU','Музыкальные инструменты','','музыкальные-инструменты'),(97,'en_US','Concert, studio, home','','concert-studio-home'),(97,'ru_RU','Концертное, студийное, домашнее','','концертное-студийное-домашнее'),(98,'en_US','Services','','services'),(98,'ru_RU','Услуги','','услуги'),(99,'en_US','Guitars','','guitars'),(99,'ru_RU','Гитары','','гитары'),(100,'en_US','Keyboards','','keyboards'),(100,'ru_RU','Клавишные','','клавишные'),(101,'en_US','Other stringed','','other-stringed'),(101,'ru_RU','Другие струнные','','другие-струнные'),(102,'en_US','Percussion','','percussion'),(102,'ru_RU','Ударные','','ударные'),(103,'en_US','Winds','','winds'),(103,'ru_RU','Духовые','','духовые'),(104,'en_US','Other','','other-instruments'),(104,'ru_RU','Другое','','другие-инструменты'),(105,'en_US','Amplifiers','','amplifiers'),(105,'ru_RU','Усилители','','усилители'),(106,'en_US','Microphones','','microphones'),(106,'ru_RU','Микрофоны','','микрофоны'),(107,'en_US','Loudspeakers','','loudspeakers'),(107,'ru_RU','Акустика','','акустика'),(108,'en_US','Headphones','','headphones'),(108,'ru_RU','Наушники','','наушники'),(109,'en_US','DJ equipment','','dj-equipment'),(109,'ru_RU','DJ оборудование','','dj-оборудование'),(110,'en_US','Audio interfaces, DACs','','audio-interfaces-dacs'),(110,'ru_RU','Аудиокарты, цапы','','аудиокарты-цапы'),(111,'en_US','Other','','other-equipment'),(111,'ru_RU','Другое','','другое-оборудование'),(112,'en_US','Musicans','','musicans'),(112,'ru_RU','Музыканты','','музыканты'),(113,'en_US','Writers, arrangers','','writers-arrangers'),(113,'ru_RU','Писатели, аранжировщики','','писатели-аранжировщики'),(114,'en_US','Engineer masters','','engineer-masters'),(114,'ru_RU','Мастера-инженеры','','мастера-инженеры'),(115,'en_US','Other','','other-services'),(115,'ru_RU','Другое','','другие-услуги'),(116,'en_US','Electric','','electric'),(116,'ru_RU','Электро','','электро'),(117,'en_US','Acoustic','','acoustic'),(117,'ru_RU','Акустические','','акустические'),(118,'en_US','Bass','','bass'),(118,'ru_RU','Бас','','бас'),(119,'en_US','Dynamic','','dynamic'),(119,'ru_RU','Динамические','','динамические'),(120,'en_US','Condenser','','condenser'),(120,'ru_RU','Конденсаторные','','конденсаторные'),(121,'en_US','Tube','','tube-mics'),(121,'ru_RU','Ламповые','','ламповые-микрофоны'),(122,'en_US','Ribbon','','ribbon'),(122,'ru_RU','Ленточные','','ленточные'),(123,'en_US','Tube','','tube-amps'),(123,'ru_RU','Ламповые','','ламповые-усилители'),(124,'en_US','Transistor','','transistor'),(124,'ru_RU','Транзисторные','','транзисторные'),(125,'en_US','Guitars','','electric-guitars'),(125,'ru_RU','Гитары','','электрогитары'),(126,'en_US','Effect pedals','','effect-pedals'),(126,'ru_RU','Педали эффектов','','педали-эффектов'),(127,'en_US','Amplifiers, cabinets, combos','','amplifiers-cabinets-combos'),(127,'ru_RU','Усилители, кабинеты, комбо','','усилители-кабинеты-комбо'),(128,'en_US','Parts and accessories','','parts-and-accessories'),(128,'ru_RU','Запчасти и комплектующие','','запчасти-и-комплектующие'),(129,'en_US','Passive','','passive'),(129,'ru_RU','Пассивная','','пассивная'),(130,'en_US','Active','','active'),(130,'ru_RU','Активная','','активная'),(131,'en_US','Subwoofers','','subwoofers'),(131,'ru_RU','Сабвуферы','','сабвуферы'),(132,'en_US','Radio systems','','radio-systems'),(132,'ru_RU','Радиосистемы','','радиосистемы'),(133,'en_US','Rehearsal studio','','rehearsal-studio'),(133,'ru_RU','Реп. базы и студии','','реп.-базы-и-студии');
/*!40000 ALTER TABLE `oc_t_category_description` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-09 11:24:28
