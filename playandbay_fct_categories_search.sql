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
-- Table structure for table `fct_categories_search`
--

DROP TABLE IF EXISTS `fct_categories_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_categories_search` (
  `fk_i_category_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `search_url` varchar(255) DEFAULT NULL,
  `pk_i_id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fct_categories_search`
--

LOCK TABLES `fct_categories_search` WRITE;
/*!40000 ALTER TABLE `fct_categories_search` DISABLE KEYS */;
INSERT INTO `fct_categories_search` VALUES (109,'Концертное, студийное, домашнее | DJ оборудование | - | -','http://www.avito.ru/rossiya/muzykalnye_instrumenty/dlya_studii_i_kontsertov?q=dj+%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D0%BB%D0%B5%D1%80',1,4),(110,'Концертное, студийное, домашнее | Аудиокарты, цапы | - | -','http://www.avito.ru/rossiya/tovary_dlya_kompyutera/komplektuyuschie/zvukovye_karty?q=usb',3,5),(111,'Концертное, студийное, домашнее | Другое | - | -','',4,6),(119,'Концертное, студийное, домашнее | Микрофоны | Динамические | -','http://www.avito.ru/rossiya/audio_i_video/mikrofony?q=%D0%B4%D0%B8%D0%BD%D0%B0%D0%BC%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9',5,7),(120,'Концертное, студийное, домашнее | Микрофоны | Конденсаторные | -','http://www.avito.ru/rossiya/audio_i_video/mikrofony?q=%D0%BA%D0%BE%D0%BD%D0%B4%D0%B5%D0%BD%D1%81%D0%B0%D1%82%D0%BE%D1%80%D0%BD%D1%8B%D0%B9&s=1',6,8),(121,'Концертное, студийное, домашнее | Микрофоны | Ламповые | -','http://www.avito.ru/rossiya/audio_i_video/mikrofony?q=%D0%BB%D0%B0%D0%BC%D0%BF%D0%BE%D0%B2%D1%8B%D0%B9&s=1',7,9),(122,'Концертное, студийное, домашнее | Микрофоны | Ленточные | -','http://www.avito.ru/rossiya/audio_i_video/mikrofony?q=%D0%BB%D0%B5%D0%BD%D1%82%D0%BE%D1%87%D0%BD%D1%8B%D0%B9&s=1',8,10),(108,'Концертное, студийное, домашнее | Наушники | - | -','http://www.avito.ru/rossiya/audio_i_video/naushniki',9,11),(123,'Концертное, студийное, домашнее | Усилители | Ламповые | -','http://www.avito.ru/rossiya/audio_i_video/usiliteli_i_resivery?q=%D0%BB%D0%B0%D0%BC%D0%BF%D0%BE%D0%B2%D1%8B%D0%B9&s=1',10,12),(124,'Концертное, студийное, домашнее | Усилители | Транзисторные | -','http://www.avito.ru/rossiya/audio_i_video/usiliteli_i_resivery?q=%D1%82%D1%80%D0%B0%D0%BD%D0%B7%D0%B8%D1%81%D1%82%D0%BE%D1%80&s=1',11,13),(117,'Музыкальные инструменты | Гитары | Акустические | -','http://www.avito.ru/rossiya/muzykalnye_instrumenty/gitary_i_drugie_strunnye?q=%D0%B0%D0%BA%D1%83%D1%81%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B0%D1%8F',12,14),(118,'Музыкальные инструменты | Гитары | Бас | -','http://www.avito.ru/rossiya/muzykalnye_instrumenty/gitary_i_drugie_strunnye?q=%D0%B1%D0%B0%D1%81-%D0%B3%D0%B8%D1%82%D0%B0%D1%80%D0%B0',13,15),(125,'Музыкальные инструменты | Гитары | Электро | Гитары','http://www.avito.ru/rossiya/muzykalnye_instrumenty/gitary_i_drugie_strunnye?q=%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%B3%D0%B8%D1%82%D0%B0%D1%80%D0%B0',14,2),(128,'Музыкальные инструменты | Гитары | Электро | Запчасти и комплектующие','NULL',15,16),(126,'Музыкальные инструменты | Гитары | Электро | Педали эффектов','http://www.ebay.com/sch/Effects-Pedals-/181222/i.html?_from=R40&_nkw=',16,17),(127,'Музыкальные инструменты | Гитары | Электро | Усилители, кабинеты, комбо','NULL',17,18),(101,'Музыкальные инструменты | Другие струнные | - | -','http://www.avito.ru/rossiya/muzykalnye_instrumenty/gitary_i_drugie_strunnye?q=%D0%B1%D0%B0%D0%BB%D0%B0%D0%BB%D0%B0%D0%B9%D0%BA%D0%B0',18,19),(104,'Музыкальные инструменты | Другое | - | -','NULL',19,20),(103,'Музыкальные инструменты | Духовые | - | -','http://www.avito.ru/rossiya/muzykalnye_instrumenty/duhovye',20,21),(100,'Музыкальные инструменты | Клавишные | - | -','http://www.avito.ru/rossiya/muzykalnye_instrumenty/pianino_i_drugie_klavishnye',21,22),(102,'Музыкальные инструменты | Ударные | - | -','http://www.avito.ru/rossiya/muzykalnye_instrumenty/udarnye',22,23),(115,'Услуги | Другое | - | -','NULL',23,24),(114,'Услуги | Мастера-инженеры | - | -','NULL',24,25),(112,'Услуги | Музыканты | - | -','NULL',25,26),(113,'Услуги | Писатели, аранжировщики | - | -','NULL',26,27),(110,'Концертное, студийное, домашнее | Аудиокарты, цапы | - | -','http://www.avito.ru/rossiya/audio_i_video/aksessuary?q=%D1%86%D0%B0%D0%BF',27,28),(101,'Музыкальные инструменты | Другие струнные | - | -','http://www.avito.ru/rossiya/muzykalnye_instrumenty/skripki_i_drugie_smychkovye',28,29),(101,'Музыкальные инструменты | Другие струнные | - | -','http://www.avito.ru/rossiya/muzykalnye_instrumenty/gitary_i_drugie_strunnye?q=%D0%B4%D0%BE%D0%BC%D1%80%D0%B0',29,30),(130,'Концертное, студийное, домашнее | Акустика | Активная | -','http://www.avito.ru/rossiya/audio_i_video/akustika_kolonki_sabvufery?q=%D0%B0%D0%BA%D1%82%D0%B8%D0%B2%D0%BD%D1%8B%D0%B5+%D0%BA%D0%BE%D0%BB%D0%BE%D0%BD%D0%BA%D0%B8',30,31),(129,'Концертное, студийное, домашнее | Акустика | Пассивная | -','http://www.avito.ru/rossiya/audio_i_video/akustika_kolonki_sabvufery?q=%D0%BF%D0%B0%D1%81%D1%81%D0%B8%D0%B2%D0%BD%D1%8B%D0%B5+%D0%BA%D0%BE%D0%BB%D0%BE%D0%BD%D0%BA%D0%B8',31,32),(131,'Концертное, студийное, домашнее | Акустика | Сабвуферы | -','http://www.avito.ru/rossiya/audio_i_video/akustika_kolonki_sabvufery?q=%D1%81%D0%B0%D0%B1%D0%B2%D1%83%D1%84%D0%B5%D1%80',32,33),(132,'Концертное, студийное, домашнее | Микрофоны | Радиосистемы | -','http://www.avito.ru/rossiya/audio_i_video/mikrofony?q=%D1%80%D0%B0%D0%B4%D0%B8%D0%BE',33,34),(133,'Музыкальные инструменты | Гитары | Бас | -','http://www.avito.ru/rossiya/muzykalnye_instrumenty/aksessuary?p=2&q=%D0%B1%D0%B0%D1%81+%D0%B3%D0%B8%D1%82%D0%B0%D1%80',34,35),(126,'Музыкальные инструменты | Гитары | Электро | Педали эффектов','https://www.avito.ru/rossiya/muzykalnye_instrumenty/aksessuary?q=педаль',35,36),(126,'Музыкальные инструменты | Гитары | Электро | Педали эффектов','https://www.avito.ru/rossiya/muzykalnye_instrumenty/dlya_studii_i_kontsertov?q=примочка',37,37),(125,'Музыкальные инструменты | Гитары | Электро | Гитары','http://www.ebay.com/sch/i.html?_odkw=gibson&_osacat=33034&_from=R40&_trksid=p2045573.m570.l1313.TR11.TRC1.A0.H0.Xfender&_nkw=fender&_sacat=33034',38,1),(125,'Музыкальные инструменты | Гитары | Электро | Гитары','http://www.ebay.com/sch/i.html?_odkw=&_osacat=33034&_trksid=p2045573.m570.l1313.TR0.TRC0.H0.Xgibson&_nkw=gibson&_sacat=33034&_from=R40',39,3),(127,'Музыкальные инструменты | Гитары | Электро | Усилители, кабинеты, комбо','http://www.ebay.com/sch/i.html?_odkw=&_osacat=118983&_trksid=p2045573.m570.l1313.TR11.TRC1.A0.H0.Xfender&_nkw=fender&_sacat=118983&_from=R40',40,38),(127,'Музыкальные инструменты | Гитары | Электро | Усилители, кабинеты, комбо','http://www.ebay.com/sch/i.html?_odkw=&_osacat=10171&_trksid=p2045573.m570.l1313.TR0.TRC0.H0.Xmarshall&_nkw=marshall&_sacat=10171&_from=R40',41,39),(125,'Музыкальные инструменты | Гитары | Электро | Гитары','http://www.ebay.com/sch/Electric-/118985/i.html',42,40),(117,'Музыкальные инструменты | Гитары | Акустические | -','http://www.ebay.com/sch/Acoustic-/118979/i.html',43,41),(118,'Музыкальные инструменты | Гитары | Бас | -','http://www.ebay.com/sch/Bass-/118984/i.html',44,42),(125,'Музыкальные инструменты | Гитары | Электро | Гитары','https://www.avito.ru/rossiya/muzykalnye_instrumenty/gitary_i_drugie_strunnye?q=gibson+les+paul',45,43),(125,'Музыкальные инструменты | Гитары | Электро | Гитары','https://www.avito.ru/rossiya/muzykalnye_instrumenty/gitary_i_drugie_strunnye?q=gibson+sg',46,44),(125,'Музыкальные инструменты | Гитары | Электро | Гитары','https://www.avito.ru/rossiya/muzykalnye_instrumenty/gitary_i_drugie_strunnye?q=gibson+es',47,45),(125,'Музыкальные инструменты | Гитары | Электро | Гитары','https://www.avito.ru/rossiya/muzykalnye_instrumenty/gitary_i_drugie_strunnye?q=prs',48,46),(125,'Музыкальные инструменты | Гитары | Электро | Гитары','https://www.avito.ru/rossiya/muzykalnye_instrumenty/gitary_i_drugie_strunnye?q=fender+stratocaster',49,47),(125,'Музыкальные инструменты | Гитары | Электро | Гитары','https://www.avito.ru/rossiya/muzykalnye_instrumenty/gitary_i_drugie_strunnye?q=fender+telecaster',50,48),(125,'Музыкальные инструменты | Гитары | Электро | Гитары','https://www.avito.ru/rossiya/muzykalnye_instrumenty/gitary_i_drugie_strunnye?q=fender+jaguar',51,49);
/*!40000 ALTER TABLE `fct_categories_search` ENABLE KEYS */;
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
