CREATE DATABASE  IF NOT EXISTS `playandbay` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `playandbay`;
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
-- Table structure for table `ass_grabber_avito_resource_list`
--

DROP TABLE IF EXISTS `ass_grabber_avito_resource_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ass_grabber_avito_resource_list` (
  `id_resource_list` int(11) DEFAULT NULL,
  `id_resource` int(11) NOT NULL,
  PRIMARY KEY (`id_resource`),
  KEY `id_resource_list` (`id_resource_list`),
  CONSTRAINT `ass_grabber_avito_resource_list_ibfk_1` FOREIGN KEY (`id_resource_list`) REFERENCES `fct_grabber_avito` (`id_resource_list`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ass_grabber_ebay_resource_list`
--

DROP TABLE IF EXISTS `ass_grabber_ebay_resource_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ass_grabber_ebay_resource_list` (
  `id_resource_list` int(11) DEFAULT NULL,
  `id_resource` int(11) NOT NULL,
  PRIMARY KEY (`id_resource`),
  KEY `id_resource_list` (`id_resource_list`),
  CONSTRAINT `ass_grabber_ebay_resource_list_ibfk_1` FOREIGN KEY (`id_resource_list`) REFERENCES `fct_grabber_ebay` (`id_resource_list`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!50001 DROP VIEW IF EXISTS `categories`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `categories` (
  `s_name` tinyint NOT NULL,
  `pk_i_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `fct_categories_avito_search`
--

DROP TABLE IF EXISTS `fct_categories_avito_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_categories_avito_search` (
  `fk_i_category_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `search_url` varchar(255) DEFAULT NULL,
  `pk_i_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pk_i_id`),
  UNIQUE KEY `search_url_UNIQUE` (`search_url`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_filter`
--

DROP TABLE IF EXISTS `fct_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_filter` (
  `pk_i_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_i_category_id` int(11) DEFAULT NULL,
  `title_filter` varchar(255) DEFAULT NULL,
  `description_filter` varchar(255) DEFAULT NULL,
  `min_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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

--
-- Table structure for table `fct_grabber_avito2`
--

DROP TABLE IF EXISTS `fct_grabber_avito2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_grabber_avito2` (
  `id_resource_list` int(11) NOT NULL,
  `avito_id` bigint(20) DEFAULT NULL,
  `url` mediumtext,
  `title` varchar(100) DEFAULT NULL,
  `tel_num` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `avito_section` varchar(100) DEFAULT NULL,
  `user_section` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `dt_open` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `transformated` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_grabber_ebay`
--

DROP TABLE IF EXISTS `fct_grabber_ebay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_grabber_ebay` (
  `id_resource_list` int(11) NOT NULL,
  `is_auction` bit(1) DEFAULT b'0',
  `ebay_id` bigint(20) DEFAULT NULL,
  `url` mediumtext,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `bid` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `curr_code` varchar(5) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `ebay_section` varchar(100) DEFAULT NULL,
  `user_section` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `dt_open` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `transformated` smallint(6) DEFAULT '0',
  `item_id` int(11) DEFAULT NULL,
  `photo_cnt` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_resource_list`),
  UNIQUE KEY `ebay_id_UNIQUE` (`ebay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_smsspamer`
--

DROP TABLE IF EXISTS `fct_smsspamer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_smsspamer` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource_list` int(11) DEFAULT NULL,
  `tel_num` char(20) DEFAULT NULL,
  `message` char(255) DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `sent_date` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=576 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_smsspamer2`
--

DROP TABLE IF EXISTS `fct_smsspamer2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_smsspamer2` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource_list` int(11) DEFAULT NULL,
  `tel_num` char(20) DEFAULT NULL,
  `message` char(255) DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_admin`
--

DROP TABLE IF EXISTS `oc_t_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_admin` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_name` varchar(100) NOT NULL,
  `s_username` varchar(40) NOT NULL,
  `s_password` char(60) NOT NULL,
  `s_email` varchar(100) DEFAULT NULL,
  `s_secret` varchar(40) DEFAULT NULL,
  `b_moderator` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pk_i_id`),
  UNIQUE KEY `s_username` (`s_username`),
  UNIQUE KEY `s_email` (`s_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_alerts`
--

DROP TABLE IF EXISTS `oc_t_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_alerts` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_email` varchar(100) DEFAULT NULL,
  `fk_i_user_id` int(10) unsigned DEFAULT NULL,
  `s_search` longtext,
  `s_secret` varchar(40) DEFAULT NULL,
  `b_active` tinyint(1) NOT NULL DEFAULT '0',
  `e_type` enum('INSTANT','HOURLY','DAILY','WEEKLY','CUSTOM') NOT NULL,
  `dt_date` datetime DEFAULT NULL,
  `dt_unsub_date` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_alerts_sent`
--

DROP TABLE IF EXISTS `oc_t_alerts_sent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_alerts_sent` (
  `d_date` date NOT NULL,
  `i_num_alerts_sent` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`d_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_ban_rule`
--

DROP TABLE IF EXISTS `oc_t_ban_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_ban_rule` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_name` varchar(250) NOT NULL DEFAULT '',
  `s_ip` varchar(50) NOT NULL DEFAULT '',
  `s_email` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oc_t_category_stats`
--

DROP TABLE IF EXISTS `oc_t_category_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_category_stats` (
  `fk_i_category_id` int(10) unsigned NOT NULL,
  `i_num_items` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fk_i_category_id`),
  CONSTRAINT `oc_t_category_stats_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_city`
--

DROP TABLE IF EXISTS `oc_t_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_city` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_i_region_id` int(10) unsigned NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `fk_c_country_code` char(2) DEFAULT NULL,
  `b_active` tinyint(1) NOT NULL DEFAULT '1',
  `s_slug` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_i_region_id` (`fk_i_region_id`),
  KEY `idx_s_name` (`s_name`),
  KEY `fk_c_country_code` (`fk_c_country_code`),
  KEY `fk_i_region_id_2` (`fk_i_region_id`),
  KEY `idx_s_slug` (`s_slug`),
  KEY `fk_i_region_id_3` (`fk_i_region_id`),
  CONSTRAINT `oc_t_city_ibfk_1` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oc_t_region` (`pk_i_id`),
  CONSTRAINT `oc_t_city_ibfk_2` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`)
) ENGINE=InnoDB AUTO_INCREMENT=451829 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_city_area`
--

DROP TABLE IF EXISTS `oc_t_city_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_city_area` (
  `pk_i_id` int(10) unsigned NOT NULL,
  `fk_i_city_id` int(10) unsigned NOT NULL,
  `s_name` varchar(255) NOT NULL,
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_i_city_id` (`fk_i_city_id`),
  KEY `idx_s_name` (`s_name`),
  KEY `fk_i_city_id_2` (`fk_i_city_id`),
  KEY `fk_i_city_id_3` (`fk_i_city_id`),
  CONSTRAINT `oc_t_city_area_ibfk_1` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_city_stats`
--

DROP TABLE IF EXISTS `oc_t_city_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_city_stats` (
  `fk_i_city_id` int(10) unsigned NOT NULL,
  `i_num_items` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fk_i_city_id`),
  KEY `idx_num_items` (`i_num_items`),
  CONSTRAINT `oc_t_city_stats_ibfk_1` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_country`
--

DROP TABLE IF EXISTS `oc_t_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_country` (
  `pk_c_code` char(2) NOT NULL,
  `s_name` varchar(80) NOT NULL,
  `s_slug` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`pk_c_code`),
  KEY `idx_s_name` (`s_name`),
  KEY `idx_s_slug` (`s_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_country_stats`
--

DROP TABLE IF EXISTS `oc_t_country_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_country_stats` (
  `fk_c_country_code` char(2) NOT NULL,
  `i_num_items` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fk_c_country_code`),
  KEY `idx_num_items` (`i_num_items`),
  CONSTRAINT `oc_t_country_stats_ibfk_1` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_cron`
--

DROP TABLE IF EXISTS `oc_t_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_cron` (
  `e_type` enum('INSTANT','HOURLY','DAILY','WEEKLY','CUSTOM') NOT NULL,
  `d_last_exec` datetime NOT NULL,
  `d_next_exec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_currency`
--

DROP TABLE IF EXISTS `oc_t_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_currency` (
  `pk_c_code` char(3) NOT NULL,
  `s_name` varchar(40) NOT NULL,
  `s_description` varchar(80) DEFAULT NULL,
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pk_c_code`),
  UNIQUE KEY `s_name` (`s_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_facebook_connect`
--

DROP TABLE IF EXISTS `oc_t_facebook_connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_facebook_connect` (
  `fk_i_user_id` int(10) unsigned NOT NULL,
  `i_facebook_uid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`fk_i_user_id`),
  CONSTRAINT `oc_t_facebook_connect_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=83614 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_item_comment`
--

DROP TABLE IF EXISTS `oc_t_item_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_item_comment` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `dt_pub_date` datetime NOT NULL,
  `s_title` varchar(200) NOT NULL,
  `s_author_name` varchar(100) NOT NULL,
  `s_author_email` varchar(100) NOT NULL,
  `s_body` text NOT NULL,
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_active` tinyint(1) NOT NULL DEFAULT '0',
  `b_spam` tinyint(1) NOT NULL DEFAULT '0',
  `fk_i_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_i_item_id` (`fk_i_item_id`),
  KEY `fk_i_user_id` (`fk_i_user_id`),
  KEY `fk_i_item_id_2` (`fk_i_item_id`),
  KEY `fk_i_item_id_3` (`fk_i_item_id`),
  CONSTRAINT `oc_t_item_comment_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`),
  CONSTRAINT `oc_t_item_comment_ibfk_2` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_item_description`
--

DROP TABLE IF EXISTS `oc_t_item_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_item_description` (
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_title` varchar(100) NOT NULL,
  `s_description` mediumtext NOT NULL,
  PRIMARY KEY (`fk_i_item_id`,`fk_c_locale_code`),
  FULLTEXT KEY `s_description` (`s_description`,`s_title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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

--
-- Table structure for table `oc_t_item_meta`
--

DROP TABLE IF EXISTS `oc_t_item_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_item_meta` (
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `fk_i_field_id` int(10) unsigned NOT NULL,
  `s_value` text,
  `s_multi` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`fk_i_item_id`,`fk_i_field_id`,`s_multi`),
  KEY `s_value` (`s_value`(255)),
  KEY `fk_i_field_id` (`fk_i_field_id`),
  CONSTRAINT `oc_t_item_meta_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`),
  CONSTRAINT `oc_t_item_meta_ibfk_2` FOREIGN KEY (`fk_i_field_id`) REFERENCES `oc_t_meta_fields` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_item_resource`
--

DROP TABLE IF EXISTS `oc_t_item_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_item_resource` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `s_name` varchar(60) DEFAULT NULL,
  `s_extension` varchar(10) DEFAULT NULL,
  `s_content_type` varchar(40) DEFAULT NULL,
  `s_path` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_i_item_id` (`fk_i_item_id`),
  KEY `idx_s_content_type` (`pk_i_id`,`s_content_type`(10)),
  KEY `fk_i_item_id_2` (`fk_i_item_id`),
  KEY `fk_i_item_id_3` (`fk_i_item_id`),
  CONSTRAINT `oc_t_item_resource_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=264582 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_item_stats`
--

DROP TABLE IF EXISTS `oc_t_item_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_item_stats` (
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `i_num_views` int(10) unsigned NOT NULL DEFAULT '0',
  `i_num_spam` int(10) unsigned NOT NULL DEFAULT '0',
  `i_num_repeated` int(10) unsigned NOT NULL DEFAULT '0',
  `i_num_bad_classified` int(10) unsigned NOT NULL DEFAULT '0',
  `i_num_offensive` int(10) unsigned NOT NULL DEFAULT '0',
  `i_num_expired` int(10) unsigned NOT NULL DEFAULT '0',
  `i_num_premium_views` int(10) unsigned NOT NULL DEFAULT '0',
  `dt_date` date NOT NULL,
  PRIMARY KEY (`fk_i_item_id`,`dt_date`),
  KEY `dt_date` (`dt_date`,`fk_i_item_id`),
  KEY `dt_date_2` (`dt_date`,`fk_i_item_id`),
  KEY `dt_date_3` (`dt_date`,`fk_i_item_id`),
  CONSTRAINT `oc_t_item_stats_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_item_watchlist`
--

DROP TABLE IF EXISTS `oc_t_item_watchlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_item_watchlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_i_item_id` int(10) unsigned DEFAULT NULL,
  `fk_i_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_item_youtube`
--

DROP TABLE IF EXISTS `oc_t_item_youtube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_item_youtube` (
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `s_youtube` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fk_i_item_id`),
  CONSTRAINT `oc_t_item_youtube_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_keywords`
--

DROP TABLE IF EXISTS `oc_t_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_keywords` (
  `s_md5` varchar(32) NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_original_text` varchar(255) NOT NULL,
  `s_anchor_text` varchar(255) NOT NULL,
  `s_normalized_text` varchar(255) NOT NULL,
  `fk_i_category_id` int(10) unsigned DEFAULT NULL,
  `fk_i_city_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`s_md5`,`fk_c_locale_code`),
  KEY `fk_i_category_id` (`fk_i_category_id`),
  KEY `fk_i_city_id` (`fk_i_city_id`),
  KEY `fk_c_locale_code` (`fk_c_locale_code`),
  KEY `fk_i_category_id_2` (`fk_i_category_id`),
  KEY `fk_i_city_id_2` (`fk_i_city_id`),
  KEY `fk_i_category_id_3` (`fk_i_category_id`),
  KEY `fk_i_city_id_3` (`fk_i_city_id`),
  CONSTRAINT `oc_t_keywords_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`),
  CONSTRAINT `oc_t_keywords_ibfk_2` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`),
  CONSTRAINT `oc_t_keywords_ibfk_3` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oc_t_locale` (`pk_c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_latest_searches`
--

DROP TABLE IF EXISTS `oc_t_latest_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_latest_searches` (
  `d_date` datetime NOT NULL,
  `s_search` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_locale`
--

DROP TABLE IF EXISTS `oc_t_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_locale` (
  `pk_c_code` char(5) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_short_name` varchar(40) NOT NULL,
  `s_description` varchar(100) NOT NULL,
  `s_version` varchar(20) NOT NULL,
  `s_author_name` varchar(100) NOT NULL,
  `s_author_url` varchar(100) NOT NULL,
  `s_currency_format` varchar(50) NOT NULL,
  `s_dec_point` varchar(2) DEFAULT '.',
  `s_thousands_sep` varchar(2) DEFAULT '',
  `i_num_dec` tinyint(4) DEFAULT '2',
  `s_date_format` varchar(20) NOT NULL,
  `s_stop_words` text,
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_enabled_bo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pk_c_code`),
  UNIQUE KEY `s_short_name` (`s_short_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_locations_tmp`
--

DROP TABLE IF EXISTS `oc_t_locations_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_locations_tmp` (
  `id_location` varchar(10) NOT NULL,
  `e_type` enum('COUNTRY','REGION','CITY') NOT NULL,
  PRIMARY KEY (`id_location`,`e_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_log`
--

DROP TABLE IF EXISTS `oc_t_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_log` (
  `dt_date` datetime NOT NULL,
  `s_section` varchar(50) NOT NULL,
  `s_action` varchar(50) NOT NULL,
  `fk_i_id` int(10) unsigned NOT NULL,
  `s_data` varchar(250) NOT NULL,
  `s_ip` varchar(50) NOT NULL,
  `s_who` varchar(50) NOT NULL,
  `fk_i_who_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_meta_categories`
--

DROP TABLE IF EXISTS `oc_t_meta_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_meta_categories` (
  `fk_i_category_id` int(10) unsigned NOT NULL,
  `fk_i_field_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fk_i_category_id`,`fk_i_field_id`),
  KEY `fk_i_field_id` (`fk_i_field_id`),
  CONSTRAINT `oc_t_meta_categories_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`),
  CONSTRAINT `oc_t_meta_categories_ibfk_2` FOREIGN KEY (`fk_i_field_id`) REFERENCES `oc_t_meta_fields` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_meta_fields`
--

DROP TABLE IF EXISTS `oc_t_meta_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_meta_fields` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_name` varchar(255) NOT NULL,
  `s_slug` varchar(255) NOT NULL,
  `e_type` enum('TEXT','TEXTAREA','DROPDOWN','RADIO','CHECKBOX','URL','DATE','DATEINTERVAL') NOT NULL DEFAULT 'TEXT',
  `s_options` varchar(255) DEFAULT NULL,
  `b_required` tinyint(1) NOT NULL DEFAULT '0',
  `b_searchable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pk_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_multicurrency`
--

DROP TABLE IF EXISTS `oc_t_multicurrency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_multicurrency` (
  `s_from` varchar(3) NOT NULL,
  `s_to` varchar(3) NOT NULL,
  `f_rate` float DEFAULT '1',
  `dt_date` datetime NOT NULL,
  PRIMARY KEY (`s_from`,`s_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_pages`
--

DROP TABLE IF EXISTS `oc_t_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_pages` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_internal_name` varchar(50) DEFAULT NULL,
  `b_indelible` tinyint(1) NOT NULL DEFAULT '0',
  `b_link` tinyint(1) NOT NULL DEFAULT '1',
  `dt_pub_date` datetime NOT NULL,
  `dt_mod_date` datetime DEFAULT NULL,
  `i_order` int(3) NOT NULL DEFAULT '0',
  `s_meta` text,
  PRIMARY KEY (`pk_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_pages_description`
--

DROP TABLE IF EXISTS `oc_t_pages_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_pages_description` (
  `fk_i_pages_id` int(10) unsigned NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_title` varchar(255) NOT NULL,
  `s_text` text,
  PRIMARY KEY (`fk_i_pages_id`,`fk_c_locale_code`),
  KEY `fk_c_locale_code` (`fk_c_locale_code`),
  CONSTRAINT `oc_t_pages_description_ibfk_1` FOREIGN KEY (`fk_i_pages_id`) REFERENCES `oc_t_pages` (`pk_i_id`),
  CONSTRAINT `oc_t_pages_description_ibfk_2` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oc_t_locale` (`pk_c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_payments_log`
--

DROP TABLE IF EXISTS `oc_t_payments_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_payments_log` (
  `pk_i_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_concept` varchar(200) NOT NULL,
  `dt_date` datetime NOT NULL,
  `s_code` varchar(255) NOT NULL,
  `f_amount` float NOT NULL,
  `i_amount` bigint(20) DEFAULT NULL,
  `s_currency_code` varchar(3) DEFAULT NULL,
  `s_email` varchar(200) DEFAULT NULL,
  `fk_i_user_id` int(11) DEFAULT NULL,
  `fk_i_item_id` int(11) DEFAULT NULL,
  `s_source` varchar(10) NOT NULL,
  `i_product_type` varchar(15) NOT NULL,
  PRIMARY KEY (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_payments_premium`
--

DROP TABLE IF EXISTS `oc_t_payments_premium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_payments_premium` (
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `dt_date` datetime NOT NULL,
  `s_keyword` varchar(250) DEFAULT NULL,
  `fk_i_payment_id` int(11) NOT NULL,
  PRIMARY KEY (`fk_i_item_id`),
  KEY `fk_i_payment_id` (`fk_i_payment_id`),
  CONSTRAINT `oc_t_payments_premium_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`),
  CONSTRAINT `oc_t_payments_premium_ibfk_2` FOREIGN KEY (`fk_i_payment_id`) REFERENCES `oc_t_payments_log` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_payments_prices`
--

DROP TABLE IF EXISTS `oc_t_payments_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_payments_prices` (
  `fk_i_category_id` int(10) unsigned NOT NULL,
  `f_publish_cost` float DEFAULT NULL,
  `f_premium_cost` float DEFAULT NULL,
  PRIMARY KEY (`fk_i_category_id`),
  CONSTRAINT `oc_t_payments_prices_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_payments_publish`
--

DROP TABLE IF EXISTS `oc_t_payments_publish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_payments_publish` (
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `dt_date` datetime NOT NULL,
  `b_paid` tinyint(1) NOT NULL DEFAULT '0',
  `s_keyword` varchar(250) DEFAULT NULL,
  `fk_i_payment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fk_i_item_id`),
  CONSTRAINT `oc_t_payments_publish_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_payments_wallet`
--

DROP TABLE IF EXISTS `oc_t_payments_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_payments_wallet` (
  `fk_i_user_id` int(10) unsigned NOT NULL,
  `i_amount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fk_i_user_id`),
  CONSTRAINT `oc_t_payments_wallet_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_plugin_category`
--

DROP TABLE IF EXISTS `oc_t_plugin_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_plugin_category` (
  `s_plugin_name` varchar(40) NOT NULL,
  `fk_i_category_id` int(10) unsigned NOT NULL,
  KEY `fk_i_category_id` (`fk_i_category_id`),
  KEY `fk_i_category_id_2` (`fk_i_category_id`),
  KEY `fk_i_category_id_3` (`fk_i_category_id`),
  CONSTRAINT `oc_t_plugin_category_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_pm_drafts`
--

DROP TABLE IF EXISTS `oc_t_pm_drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_pm_drafts` (
  `pm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) DEFAULT NULL,
  `recip_id` int(10) DEFAULT NULL,
  `pm_subject` varchar(128) DEFAULT NULL,
  `pm_message` text,
  `message_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `senderDelete` int(1) DEFAULT '0',
  `recipDelete` int(1) DEFAULT '0',
  `recipNew` int(1) DEFAULT '1',
  PRIMARY KEY (`pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_pm_messages`
--

DROP TABLE IF EXISTS `oc_t_pm_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_pm_messages` (
  `pm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) DEFAULT NULL,
  `recip_id` int(10) DEFAULT NULL,
  `pm_subject` varchar(128) DEFAULT NULL,
  `pm_message` text,
  `message_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `senderDelete` int(1) DEFAULT '0',
  `recipDelete` int(1) DEFAULT '0',
  `recipNew` int(1) DEFAULT '1',
  PRIMARY KEY (`pm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_pm_settings`
--

DROP TABLE IF EXISTS `oc_t_pm_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_pm_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fk_i_user_id` int(11) DEFAULT NULL,
  `send_email` enum('1','0') DEFAULT NULL,
  `flash_alert` enum('1','0') DEFAULT NULL,
  `save_sent` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2616 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_preference`
--

DROP TABLE IF EXISTS `oc_t_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_preference` (
  `s_section` varchar(40) NOT NULL,
  `s_name` varchar(40) NOT NULL,
  `s_value` longtext NOT NULL,
  `e_type` enum('STRING','INTEGER','BOOLEAN') NOT NULL,
  UNIQUE KEY `s_section` (`s_section`,`s_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_region`
--

DROP TABLE IF EXISTS `oc_t_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_region` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_c_country_code` char(2) NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `b_active` tinyint(1) NOT NULL DEFAULT '1',
  `s_slug` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_c_country_code` (`fk_c_country_code`),
  KEY `idx_s_name` (`s_name`),
  KEY `fk_c_country_code_2` (`fk_c_country_code`),
  KEY `idx_s_slug` (`s_slug`),
  KEY `fk_c_country_code_3` (`fk_c_country_code`),
  CONSTRAINT `oc_t_region_ibfk_1` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`)
) ENGINE=InnoDB AUTO_INCREMENT=782093 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_region_stats`
--

DROP TABLE IF EXISTS `oc_t_region_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_region_stats` (
  `fk_i_region_id` int(10) unsigned NOT NULL,
  `i_num_items` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fk_i_region_id`),
  KEY `idx_num_items` (`i_num_items`),
  CONSTRAINT `oc_t_region_stats_ibfk_1` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oc_t_region` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_user`
--

DROP TABLE IF EXISTS `oc_t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_user` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dt_reg_date` datetime NOT NULL,
  `dt_mod_date` datetime DEFAULT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_username` varchar(100) NOT NULL,
  `s_password` char(60) NOT NULL,
  `s_secret` varchar(40) DEFAULT NULL,
  `s_email` varchar(100) DEFAULT NULL,
  `s_website` varchar(100) DEFAULT NULL,
  `s_phone_land` varchar(45) DEFAULT NULL,
  `s_phone_mobile` varchar(45) DEFAULT NULL,
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_active` tinyint(1) NOT NULL DEFAULT '0',
  `s_pass_code` varchar(100) DEFAULT NULL,
  `s_pass_date` datetime DEFAULT NULL,
  `s_pass_ip` varchar(15) DEFAULT NULL,
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
  `b_company` tinyint(1) NOT NULL DEFAULT '0',
  `i_items` int(10) unsigned DEFAULT '0',
  `i_comments` int(10) unsigned DEFAULT '0',
  `dt_access_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `s_access_ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`pk_i_id`),
  UNIQUE KEY `s_email` (`s_email`),
  KEY `idx_s_name` (`s_name`(6)),
  KEY `fk_c_country_code` (`fk_c_country_code`),
  KEY `fk_i_region_id` (`fk_i_region_id`),
  KEY `fk_i_city_id` (`fk_i_city_id`),
  KEY `fk_i_city_area_id` (`fk_i_city_area_id`),
  KEY `idx_s_username` (`s_username`),
  CONSTRAINT `oc_t_user_ibfk_1` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`),
  CONSTRAINT `oc_t_user_ibfk_2` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oc_t_region` (`pk_i_id`),
  CONSTRAINT `oc_t_user_ibfk_3` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`),
  CONSTRAINT `oc_t_user_ibfk_4` FOREIGN KEY (`fk_i_city_area_id`) REFERENCES `oc_t_city_area` (`pk_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2458 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `oc_t_user_AINS` AFTER INSERT ON `oc_t_user` 
FOR EACH ROW BEGIN
 INSERT INTO oc_t_pm_settings SET fk_i_user_id = NEW.pk_i_id, send_email = 1, flash_alert = 1, save_sent = 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `oc_t_user_ADEL` AFTER delete ON `oc_t_user` 
FOR EACH ROW BEGIN
 DELETE from oc_t_pm_settings where k_i_user_id = old.pk_i_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `oc_t_user_description`
--

DROP TABLE IF EXISTS `oc_t_user_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_user_description` (
  `fk_i_user_id` int(10) unsigned NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_info` text,
  PRIMARY KEY (`fk_i_user_id`,`fk_c_locale_code`),
  KEY `fk_c_locale_code` (`fk_c_locale_code`),
  CONSTRAINT `oc_t_user_description_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`),
  CONSTRAINT `oc_t_user_description_ibfk_2` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oc_t_locale` (`pk_c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_user_email_tmp`
--

DROP TABLE IF EXISTS `oc_t_user_email_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_user_email_tmp` (
  `fk_i_user_id` int(10) unsigned NOT NULL,
  `s_new_email` varchar(100) NOT NULL,
  `dt_date` datetime NOT NULL,
  PRIMARY KEY (`fk_i_user_id`),
  CONSTRAINT `oc_t_user_email_tmp_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_voting_item`
--

DROP TABLE IF EXISTS `oc_t_voting_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_voting_item` (
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `fk_i_user_id` int(10) unsigned DEFAULT NULL,
  `i_vote` int(10) unsigned NOT NULL,
  `s_hash` varchar(255) DEFAULT NULL,
  KEY `fk_i_item_id` (`fk_i_item_id`),
  CONSTRAINT `oc_t_voting_item_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_voting_user`
--

DROP TABLE IF EXISTS `oc_t_voting_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_voting_user` (
  `i_user_voted` int(10) unsigned NOT NULL,
  `i_user_voter` int(10) unsigned NOT NULL,
  `i_vote` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oc_t_widget`
--

DROP TABLE IF EXISTS `oc_t_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_t_widget` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_description` varchar(40) NOT NULL,
  `s_location` varchar(40) NOT NULL,
  `e_kind` enum('TEXT','HTML') NOT NULL,
  `s_content` mediumtext NOT NULL,
  PRIMARY KEY (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `v_categories`
--

DROP TABLE IF EXISTS `v_categories`;
/*!50001 DROP VIEW IF EXISTS `v_categories`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_categories` (
  `s_name` tinyint NOT NULL,
  `pk_i_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'playandbay'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_check_avito_IsBadMaped` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_check_avito_IsBadMaped`(p_pk_i_id int) RETURNS tinyint(1)
begin
	if 
		(
		exists
			(
			select 
				1
			from 
				oc_t_item i
			join 
				oc_t_item_description d 
					on i.pk_i_id = d.fk_i_item_id
			join 
				oc_t_item_location l 
					on i.pk_i_id = l.fk_i_item_id
			join 
				oc_t_item_resource r 
					on i.pk_i_id = r.fk_i_item_id
			join 
				oc_t_item_meta m 
					on i.pk_i_id = m.fk_i_item_id
			where 
				i.pk_i_id = p_pk_i_id
			)
		)
	then 
		return 1;
	else 
		return 0;
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_check_avito_IsRLFiltered` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_check_avito_IsRLFiltered`(p_id_resource_list bigint) RETURNS tinyint(1)
begin
	if 
		(
		exists
			(
			select 
				1
			from 
				fct_grabber_avito fga
			where exists 
				(
				select 
					*
				from 
					fct_filter ff
				join 
					v_categories t 
						on ff.fk_i_category_id=t.pk_i_id
				where 
					ff.fk_i_category_id = t.pk_i_id 
					and fga.user_section = t.s_name
					and (
						(cast(greatest(fga.price, bid) as UNSIGNED) < ff.min_price or ff.min_price is null)
						and (upper(fga.title) regexp ff.title_filter or ff.title_filter is null)
						and (upper(fga.description) regexp ff.description_filter or ff.description_filter is null)
						)
				)
				and id_resource_list = p_id_resource_list
			)
		)
	then 
		return 1;
	else 
		return 0;
	end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_check_avito_IsRLTransformated` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_check_avito_IsRLTransformated`(p_id_resource_list bigint) RETURNS tinyint(1)
begin
	if 
		(
		exists
			(
			select 
				1
			from 
				fct_grabber_avito fga
			where
				transformated in (1, 2)
				and id_resource_list = p_id_resource_list
			)
		)
	then 
		return 1;
	else 
		return 0;
	end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_check_avito_IsValidForSMSSpam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_check_avito_IsValidForSMSSpam`(p_id_resource_list bigint) RETURNS tinyint(1)
begin
	if 
		(
		exists
			(
			select 
				1
			from 
				(
				select 
					city,
					concat(7, right(replace(replace(replace(replace(tel_num, ' ', ''), '-', ''), '(', ''), ')', ''), 10)) tel_num
				from
					fct_grabber_avito 
				where id_resource_list = p_id_resource_list
				) sq
			where 
				(
					sq.city = 'Москва' 
					or left(sq.city, instr(sq.city, ",") - 1) = 'Москва' 
					or right(sq.city, char_length(sq.city) - instr(sq.city, ",") - 1) = 'Москва' 
				)
				and 
					(
					sq.tel_num like '7901_______'
					or sq.tel_num like '7903_______'
					or sq.tel_num like '7905_______'
					or sq.tel_num like '7906_______'
					or sq.tel_num like '7909_______'
					or sq.tel_num like '7910_______'
					or sq.tel_num like '7915_______'
					or sq.tel_num like '7916_______'
					or sq.tel_num like '7917_______'
					or sq.tel_num like '7919_______'
					or sq.tel_num like '7925_______'
					or sq.tel_num like '7926_______'
					or sq.tel_num like '7929_______'
					or sq.tel_num like '7936_______'
					or sq.tel_num like '7958_______'
					or sq.tel_num like '7962_______'
					or sq.tel_num like '7963_______'
					or sq.tel_num like '7964_______'
					or sq.tel_num like '7965_______'
					or sq.tel_num like '7966_______'
					or sq.tel_num like '7967_______'
					or sq.tel_num like '7977_______'
					or sq.tel_num like '7985_______'
					or sq.tel_num like '7999_______'
					)
				and sq.tel_num not in 
					(
					select 
						tel_num 
					from 
						fct_smsspamer 
					where 
						sent_date > date_add(CURRENT_TIMESTAMP, INTERVAL -30 DAY)
					)
			)
		)
	then 
		return 1;
	else 
		return 0;
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_check_ebay_IsBadMaped` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_check_ebay_IsBadMaped`(p_pk_i_id int) RETURNS tinyint(1)
begin
	if 
		(
		exists
			(
			select 
				1
			from 
				oc_t_item i
			join 
				oc_t_item_description d 
					on i.pk_i_id = d.fk_i_item_id
			join 
				oc_t_item_location l 
					on i.pk_i_id = l.fk_i_item_id
			join 
				oc_t_item_resource r 
					on i.pk_i_id = r.fk_i_item_id
			join 
				oc_t_item_meta m 
					on i.pk_i_id = m.fk_i_item_id
			where 
				i.pk_i_id = p_pk_i_id
			)
		)
	then 
		return 1;
	else 
		return 0;
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_check_ebay_IsRLFiltered` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_check_ebay_IsRLFiltered`(p_id_resource_list bigint) RETURNS tinyint(1)
begin
	if 
		(
		exists
			(
				select 1
				from fct_grabber_ebay fga
				where exists 
								(
								select *
								from playandbay.fct_filter ff
								join playandbay.categories t on ff.fk_i_category_id=t.pk_i_id
								join oc_t_multicurrency c on c.s_to = 'RUB'
								where 
									fga.curr_code = c.s_from 
									and ff.fk_i_category_id = t.pk_i_id 
									and fga.user_section = t.s_name
									and 
										(
											(fga.price * f_rate < ff.min_price or ff.min_price is null)
											 and (upper(fga.title) regexp ff.title_filter or ff.title_filter is null)
											 and (upper(fga.description) regexp ff.description_filter or ff.description_filter is null)
										)
								)
				and id_resource_list = p_id_resource_list
			)
		)
	then 
		return 1;
	else 
		return 0;
	end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_check_ebay_IsRLTransformated` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_check_ebay_IsRLTransformated`(p_id_resource_list bigint) RETURNS tinyint(1)
begin
	if 
		(
		exists
			(
			select 
				1
			from 
				fct_grabber_ebay fga
			where
				transformated in (1, 2)
				and id_resource_list = p_id_resource_list
			)
		)
	then 
		return 1;
	else 
		return 0;
	end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_NextItemId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_NextItemId`() RETURNS int(11)
begin
return (SELECT ifnull(max(pk_i_id),0)+1 FROM oc_t_item);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_NextResourceId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_NextResourceId`() RETURNS bigint(20)
begin
return (SELECT ifnull(max(pk_i_id),0)+1 FROM oc_t_item_resource);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_check_avito_IsNewAd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_check_avito_IsNewAd`(p_avito_id bigint)
begin
SELECT 0 FROM fct_grabber_avito where avito_id = p_avito_id
union all 
select 1
limit 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_check_ebay_IsNewAd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_check_ebay_IsNewAd`(p_ebay_id bigint)
begin
SELECT 0 FROM playandbay.fct_grabber_ebay where ebay_id=p_ebay_id
union all 
select 1
limit 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fill_avito_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fill_avito_data`(id_rl int, id_i int)
t_root:begin

#SET SQL_SAFE_UPDATES=0;

DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
BEGIN
SELECT "SQLEXCEPTION";
    ROLLBACK;
END;

start transaction;

	begin

		insert into playandbay.oc_t_item (pk_i_id, fk_i_category_id, dt_pub_date, i_price, fk_c_currency_code, b_enabled, b_active)
		select id_i, t.pk_i_id, now(), m.price*1000000, "RUB", 1, 1
		from playandbay.fct_grabber_avito m
		join v_categories t on m.user_section=t.s_name
		where m.id_resource_list=id_rl;

		insert into playandbay.oc_t_item_description (fk_i_item_id, fk_c_locale_code, s_title, s_description)
		select id_i, "ru_RU", title, description#concat(description,"
		#","Телефон для связи: ", tel_num)
		from playandbay.fct_grabber_avito
		where id_resource_list=id_rl;

		insert into playandbay.oc_t_item_location (fk_i_item_id, fk_c_country_code, s_country, fk_i_region_id, s_region, fk_i_city_id, s_city)
		select id_i, "RU", "Russia", r.pk_i_id, r.s_name, c.pk_i_id, c.s_name
		from playandbay.fct_grabber_avito a
		join playandbay.oc_t_city c on c.s_name=left(a.city, instr(a.city, ",") - 1) 
									   or c.s_name=right(a.city, char_length(a.city) - instr(a.city, ",") - 1)
									   or c.s_name=a.city
		join playandbay.oc_t_region r on c.fk_i_region_id=r.pk_i_id
		where a.id_resource_list=id_rl
		limit 1;

		update playandbay.oc_t_item_resource r
		set r.fk_i_item_id=id_i
		where pk_i_id in (select id_resource 
						  from playandbay.ass_grabber_avito_resource_list
						  where id_resource_list=id_rl);

		update playandbay.oc_t_city_stats t
		set i_num_items = i_num_items + 1
		where t.fk_i_city_id = (select fk_i_city_id 
								from playandbay.oc_t_item_location
								where fk_i_item_id = id_i);

		update playandbay.oc_t_country_stats
		set i_num_items = i_num_items + 1
		where fk_c_country_code = (select fk_c_country_code 
								   from playandbay.oc_t_item_location
								   where fk_i_item_id = id_i);


		update playandbay.oc_t_region_stats
		set i_num_items = i_num_items + 1
		where fk_i_region_id = (select fk_i_region_id 
								from playandbay.oc_t_item_location
								where fk_i_item_id = id_i);

		update playandbay.oc_t_category_stats
		set i_num_items = i_num_items + 1
		where fk_i_category_id in 
		(
		select fk_i_category_id 
		from playandbay.oc_t_item
		where pk_i_id = id_i
		union
		select fk_i_parent_id
		from playandbay.oc_t_category
		where pk_i_id = (select fk_i_category_id 
						 from playandbay.oc_t_item
						 where pk_i_id = id_i)
		union
		select fk_i_parent_id
		from playandbay.oc_t_category
		where pk_i_id = (select fk_i_parent_id
						 from playandbay.oc_t_category
						 where pk_i_id = (select fk_i_category_id 
										  from playandbay.oc_t_item
										  where pk_i_id = id_i))
		union
		select fk_i_parent_id
		from playandbay.oc_t_category
		where pk_i_id = (select fk_i_parent_id
						from playandbay.oc_t_category
						where pk_i_id = (select fk_i_parent_id
										 from playandbay.oc_t_category
										 where pk_i_id = (select fk_i_category_id 
														  from playandbay.oc_t_item
														  where pk_i_id = id_i)))
		);

		insert into  playandbay.oc_t_item_meta
		select id_i, 1, 'продам', ''; 
			
	end;

commit;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fill_ebay_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fill_ebay_data`(id_rl int, id_i int)
t_root:begin

#SET SQL_SAFE_UPDATES=0;

DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
BEGIN
SELECT "SQLEXCEPTION";
    ROLLBACK;
END;

start transaction;

	begin

		insert into oc_t_item (pk_i_id, fk_i_category_id, dt_pub_date, i_price, fk_c_currency_code, b_enabled, b_active)
		select id_i, t.pk_i_id, now(), m.price*1000000, m.curr_code, 1, 1
		from fct_grabber_ebay m
		join categories t on m.user_section=t.s_name
		join oc_t_currency c on c.pk_c_code = m.curr_code
		where m.id_resource_list = id_rl;

		insert into oc_t_item_description (fk_i_item_id, fk_c_locale_code, s_title, s_description)
		select id_i, "en_US", title, description
		from fct_grabber_ebay
		where id_resource_list = id_rl;

		insert into oc_t_item_location (fk_i_item_id, fk_c_country_code, s_country, fk_i_region_id, s_region, fk_i_city_id, s_city)
		select id_i, a.country, c.s_name, r.pk_i_id, r.s_name, c.pk_i_id, c.s_name
		from fct_grabber_ebay a
		join oc_t_country co on a.country = co.pk_c_code
		left join oc_t_city c on c.s_name=left(a.city, locate(",", a.city) - 1)
		left join oc_t_region r on r.s_name= right(a.city, length(a.city) - locate(",", a.city) - 1)
		where a.id_resource_list=id_rl
		limit 1;

		update oc_t_item_resource r
		set r.fk_i_item_id=id_i
		where pk_i_id in (select id_resource 
						  from ass_grabber_ebay_resource_list
						  where id_resource_list=id_rl);

		update oc_t_city_stats t
		set i_num_items = i_num_items + 1
		where t.fk_i_city_id = (select fk_i_city_id 
								from oc_t_item_location
								where fk_i_item_id = id_i);

		update oc_t_country_stats
		set i_num_items = i_num_items + 1
		where fk_c_country_code = (select fk_c_country_code 
								   from oc_t_item_location
								   where fk_i_item_id = id_i);


		update oc_t_region_stats
		set i_num_items = i_num_items + 1
		where fk_i_region_id = (select fk_i_region_id 
								from oc_t_item_location
								where fk_i_item_id = id_i);

		update oc_t_category_stats
		set i_num_items = i_num_items + 1
		where fk_i_category_id in 
		(
		select fk_i_category_id 
		from oc_t_item
		where pk_i_id = id_i
		union
		select fk_i_parent_id
		from oc_t_category
		where pk_i_id = (select fk_i_category_id 
						 from oc_t_item
						 where pk_i_id = id_i)
		union
		select fk_i_parent_id
		from oc_t_category
		where pk_i_id = (select fk_i_parent_id
						 from oc_t_category
						 where pk_i_id = (select fk_i_category_id 
										  from oc_t_item
										  where pk_i_id = id_i))
		union
		select fk_i_parent_id
		from oc_t_category
		where pk_i_id = (select fk_i_parent_id
						from oc_t_category
						where pk_i_id = (select fk_i_parent_id
										 from oc_t_category
										 where pk_i_id = (select fk_i_category_id 
														  from oc_t_item
														  where pk_i_id = id_i)))
		);

		insert into  oc_t_item_meta
		select id_i, 1, 'продам', ''
		from oc_t_item
		where pk_i_id = id_i;
			
	end;

commit;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fill_smsspamer_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fill_smsspamer_data`(p_id_resource_list int)
begin 

insert into playandbay.fct_smsspamer 
(
	id_resource_list, 
	tel_num, 
	message
)
select 
	id_resource_list, 
	concat(7, right(replace(replace(replace(replace(tel_num, ' ', ''), '-', ''), '(', ''), ')', ''), 10)) tel_num, 
	#concat(author, ', в городе ', left(city, instr(city, ",") - 1) , ' проще продать "', title, '" на профильном ресурсе playandbay.com' ) message 
	concat(author, ', попробуйте продать на playandbay.com' ) message 
from playandbay.fct_grabber_avito 
where 
	id_resource_list = p_id_resource_list;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_avito_NextItemId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_avito_NextItemId`()
begin
select max(ifnull(v,0))+1 
from 
	(
	select max(pk_i_id) v 
	from playandbay.oc_t_item 
	union 
	select max(id_resource_list) 
	from playandbay.fct_grabber_avito 
	#where transformated <> 0
	) t;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_CategoriesList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_CategoriesList`()
begin
SELECT s_name, pk_i_id FROM playandbay.v_categories;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_ebay_AuctionsListForCheck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_ebay_AuctionsListForCheck`()
begin
select ebay_id 
from playandbay.fct_grabber_ebay 
where is_auction=1 
and price is null;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_NextItemId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_NextItemId`()
begin
SELECT ifnull(max(pk_i_id),0)+1 FROM playandbay.oc_t_item;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_SearchUrlsList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_SearchUrlsList`()
begin
SELECT search_url, category_name 
FROM playandbay.fct_categories_search 
where search_url is not null 
order by ordering;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_SMS_NextID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_SMS_NextID`()
begin
select pk_id
from playandbay.fct_smsspamer
where sent_date is null
limit 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_map_grabber_avito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_map_grabber_avito`(id_rl int)
t_root:begin

#SET SQL_SAFE_UPDATES=0;

DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
BEGIN
SELECT "SQLEXCEPTION";
    ROLLBACK;
END;

start transaction;

	if 
		(select fn_check_avito_IsRLTransformated(id_rl))
		or id_rl is null 
	then
		leave t_root;
	end if;

	set @id_i = (select fn_get_NextItemId());

	if 
		(select fn_check_avito_IsRLFiltered(id_rl))
		or
		(
		select 
			1
		from 
			fct_grabber_avito
		where 
			id_resource_list = id_rl
			and 
				(
				length(description) < 255
				or city is null
				or photo_cnt = 0
				or photo_cnt is null
				or author regexp '[a-z]'
				)
		limit 1
		)
	then
		update 
			fct_grabber_avito 
		set 
			transformated = 2
		where 
			id_resource_list = id_rl;
		select "FILTERED";
		leave t_root;
	end if;
	
	if
		(select fn_check_avito_IsValidForSMSSpam(id_rl))
	then
		call sp_fill_smsspamer_data(id_rl);
		update 
			fct_grabber_avito 
		set 
			transformated = 4
		where 
			id_resource_list = id_rl;
		select "SPAMED";
		leave t_root;
	end if;

	begin

		call sp_fill_avito_data (id_rl, @id_i);

		update 
			fct_grabber_avito 
		set 
			transformated = 1, #mark transformated
			item_id = @id_i 
		where 
			id_resource_list = id_rl;

		if 
			(select fn_check_avito_IsBadMaped(@id_i))
		then
			update 
				fct_grabber_avito 
			set 
				transformated = 3
			where 
				id_resource_list = p_id_resource_list;
			select "BAD MAPED";
		end if;
	end;

commit;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_map_grabber_ebay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_map_grabber_ebay`(id_rl int)
t_root:begin

#SET SQL_SAFE_UPDATES=0;

DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
BEGIN
SELECT "SQLEXCEPTION";
    ROLLBACK;
END;

start transaction;

	if 
		(select fn_check_ebay_IsRLTransformated(id_rl))
		or id_rl is null 
	then
		leave t_root;
	end if;

	set @id_i = (select fn_get_NextItemId());

	if 
		(select fn_check_ebay_IsRLFiltered(id_rl))
		or
		(
		select 
			1
		from 
			fct_grabber_ebay
		where 
			id_resource_list = id_rl
			and 
				(
				length(description) < 255
				or city is null
				or photo_cnt = 0
				or photo_cnt is null
				)
		limit 1
		)
	then
		update 
			fct_grabber_ebay
		set 
			transformated = 2
		where 
			id_resource_list = id_rl;
		select "FILTERED";
		leave t_root;
	end if;

	begin

		call sp_fill_ebay_data (id_rl, @id_i);

		update 
			fct_grabber_ebay
		set 
			transformated = 1, #mark transformated
			item_id = @id_i 
		where 
			id_resource_list = id_rl;

		if 
			(select fn_check_ebay_IsBadMaped(@id_i))
		then
			begin
				update 
					fct_grabber_ebay
				set 
					transformated = 3
				where 
					id_resource_list = p_id_resource_list;
				select "BAD MAPED";
			end;
		end if;
	end;

commit;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_map_grabber_ebay_old` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_map_grabber_ebay_old`(id_rl int#, out p int
)
t_root:begin

#SET SQL_SAFE_UPDATES=0;

DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
BEGIN
SELECT "SQLEXCEPTION";
    ROLLBACK;
END;

start transaction;

#while (select min(transformated) from playandbay.fct_grabber_ebay)<>1
#do

if id_rl = -11 then
set id_rl=(select max(id_resource_list) 
                       from playandbay.fct_grabber_ebay 
                       where price is not null and transformated in (0, 4));
end if;

if exists 
(select 1 from playandbay.fct_grabber_ebay where (transformated = 1 or price is null) and id_resource_list=id_rl) 
then
	leave t_root;
end if;

set @id_i=(select max(pk_i_id)+1 from playandbay.oc_t_item);

#select @id_i into p;

if id_rl is not null and not exists 
(
select 1
from playandbay.fct_grabber_ebay fga
where exists (select *
              from playandbay.fct_filter ff
              join playandbay.categories t on ff.fk_i_category_id=t.pk_i_id
		  	  join oc_t_multicurrency c on c.s_to = 'RUB'
			  where fga.curr_code = c.s_from and ff.fk_i_category_id = t.pk_i_id and fga.user_section = t.s_name
                    and ((fga.price * f_rate < ff.min_price or ff.min_price is null)
                         and (upper(fga.title) regexp ff.title_filter or ff.title_filter is null)
						 and (upper(fga.description) regexp ff.description_filter) or ff.description_filter is null)
               )

and id_resource_list=id_rl
) then

begin

insert into playandbay.oc_t_item (pk_i_id, fk_i_category_id, dt_pub_date, i_price, fk_c_currency_code, b_enabled, b_active)
select @id_i, t.pk_i_id, now(), m.price*1000000, m.curr_code, 1, 1
from playandbay.fct_grabber_ebay m
join categories t on m.user_section=t.s_name
join playandbay.oc_t_currency c on c.pk_c_code = m.curr_code
where m.id_resource_list=id_rl;

insert into playandbay.oc_t_item_description (fk_i_item_id, fk_c_locale_code, s_title, s_description)
select @id_i, "en_US", title, description
from playandbay.fct_grabber_ebay
where id_resource_list=id_rl;

insert into playandbay.oc_t_item_location (fk_i_item_id, fk_c_country_code, s_country, fk_i_region_id, s_region, fk_i_city_id, s_city)
select @id_i, a.country, c.s_name, r.pk_i_id, r.s_name, c.pk_i_id, c.s_name
from playandbay.fct_grabber_ebay a
join playandbay.oc_t_country co on a.country = co.pk_c_code
left join playandbay.oc_t_city c on c.s_name=left(a.city, locate(",", a.city) - 1)
left join playandbay.oc_t_region r on r.s_name= right(a.city, length(a.city) - locate(",", a.city) - 1)
where a.id_resource_list=id_rl
limit 1;

update playandbay.oc_t_item_resource r
set r.fk_i_item_id=@id_i
where pk_i_id in (select id_resource 
                  from playandbay.ass_grabber_ebay_resource_list
                  where id_resource_list=id_rl);

update playandbay.oc_t_city_stats t
set i_num_items = i_num_items + 1
where t.fk_i_city_id = (select fk_i_city_id 
                        from playandbay.oc_t_item_location
					    where fk_i_item_id = @id_i);

update playandbay.oc_t_country_stats
set i_num_items = i_num_items + 1
where fk_c_country_code = (select fk_c_country_code 
                           from playandbay.oc_t_item_location
					       where fk_i_item_id = @id_i);


update playandbay.oc_t_region_stats
set i_num_items = i_num_items + 1
where fk_i_region_id = (select fk_i_region_id 
				        from playandbay.oc_t_item_location
						where fk_i_item_id = @id_i);

update playandbay.oc_t_category_stats
set i_num_items = i_num_items + 1
where fk_i_category_id in 
(
select fk_i_category_id 
from playandbay.oc_t_item
where pk_i_id = @id_i
union
select fk_i_parent_id
from playandbay.oc_t_category
where pk_i_id = (select fk_i_category_id 
                 from playandbay.oc_t_item
                 where pk_i_id = @id_i)
union
select fk_i_parent_id
from playandbay.oc_t_category
where pk_i_id = (select fk_i_parent_id
                 from playandbay.oc_t_category
                 where pk_i_id = (select fk_i_category_id 
                                  from playandbay.oc_t_item
                                  where pk_i_id = @id_i))
union
select fk_i_parent_id
from playandbay.oc_t_category
where pk_i_id = (select fk_i_parent_id
				from playandbay.oc_t_category
				where pk_i_id = (select fk_i_parent_id
                				 from playandbay.oc_t_category
      				             where pk_i_id = (select fk_i_category_id 
											  	  from playandbay.oc_t_item
          				                          where pk_i_id = @id_i)))
);

insert into  playandbay.oc_t_item_meta
select @id_i, 1, 'продам', ''
from playandbay.oc_t_item
where pk_i_id = @id_i;

update playandbay.fct_grabber_ebay 
set transformated=1, item_id=@id_i #transformated
where id_resource_list=id_rl;

#mark bad parsed
if not exists 
(
select 1
from playandbay.oc_t_item i
join playandbay.oc_t_item_description d on i.pk_i_id = d.fk_i_item_id
join playandbay.oc_t_item_location l on i.pk_i_id = l.fk_i_item_id
join playandbay.oc_t_item_resource r on i.pk_i_id = r.fk_i_item_id
join playandbay.oc_t_item_meta m on i.pk_i_id = m.fk_i_item_id
where i.pk_i_id = @id_i
) then
begin
update playandbay.fct_grabber_ebay 
set transformated = 3 #bad attrs
where id_resource_list=id_rl;
end;
end if;

end;

else 
update playandbay.fct_grabber_ebay 
set transformated = 2 #filtered
where id_resource_list=id_rl;

end if;

#end while;
commit;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_prepare_avito_environment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_prepare_avito_environment`()
begin

	delete from ass_grabber_avito_resource_list 
	where 
		id_resource_list in 
			(
			select id_resource_list 
			from fct_grabber_avito 
			where transformated = 0
			);

	delete from fct_grabber_avito 
	where 
		transformated = 0;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_SMS_sent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_set_SMS_sent`(p_pk_id int)
begin
update playandbay.fct_smsspamer 
set sent_date = sysdate()
where pk_id = p_pk_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `categories`
--

/*!50001 DROP TABLE IF EXISTS `categories`*/;
/*!50001 DROP VIEW IF EXISTS `categories`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `categories` AS select concat(`d1`.`s_name`,' | ',coalesce(`d2`.`s_name`,'-'),' | ',coalesce(`d3`.`s_name`,'-'),' | ',coalesce(`d4`.`s_name`,'-')) AS `s_name`,coalesce(`c4`.`pk_i_id`,`c3`.`pk_i_id`,`c2`.`pk_i_id`,`c1`.`pk_i_id`) AS `pk_i_id` from (((((((`oc_t_category` `c1` left join `oc_t_category` `c2` on((`c1`.`pk_i_id` = `c2`.`fk_i_parent_id`))) left join `oc_t_category` `c3` on((`c2`.`pk_i_id` = `c3`.`fk_i_parent_id`))) left join `oc_t_category` `c4` on((`c3`.`pk_i_id` = `c4`.`fk_i_parent_id`))) left join `oc_t_category_description` `d1` on((`c1`.`pk_i_id` = `d1`.`fk_i_category_id`))) left join `oc_t_category_description` `d2` on((`c2`.`pk_i_id` = `d2`.`fk_i_category_id`))) left join `oc_t_category_description` `d3` on((`c3`.`pk_i_id` = `d3`.`fk_i_category_id`))) left join `oc_t_category_description` `d4` on((`c4`.`pk_i_id` = `d4`.`fk_i_category_id`))) where ((`d1`.`fk_c_locale_code` = 'ru_RU') and ((`d2`.`fk_c_locale_code` = 'ru_RU') or isnull(`d2`.`fk_c_locale_code`)) and ((`d3`.`fk_c_locale_code` = 'ru_RU') or isnull(`d3`.`fk_c_locale_code`)) and ((`d4`.`fk_c_locale_code` = 'ru_RU') or isnull(`d4`.`fk_c_locale_code`)) and isnull(`c1`.`fk_i_parent_id`)) order by `d1`.`s_name`,`d2`.`s_name`,`d3`.`s_name`,`d4`.`s_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_categories`
--

/*!50001 DROP TABLE IF EXISTS `v_categories`*/;
/*!50001 DROP VIEW IF EXISTS `v_categories`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_categories` AS select concat(`d1`.`s_name`,' | ',coalesce(`d2`.`s_name`,'-'),' | ',coalesce(`d3`.`s_name`,'-'),' | ',coalesce(`d4`.`s_name`,'-')) AS `s_name`,coalesce(`c4`.`pk_i_id`,`c3`.`pk_i_id`,`c2`.`pk_i_id`,`c1`.`pk_i_id`) AS `pk_i_id` from (((((((`oc_t_category` `c1` left join `oc_t_category` `c2` on((`c1`.`pk_i_id` = `c2`.`fk_i_parent_id`))) left join `oc_t_category` `c3` on((`c2`.`pk_i_id` = `c3`.`fk_i_parent_id`))) left join `oc_t_category` `c4` on((`c3`.`pk_i_id` = `c4`.`fk_i_parent_id`))) left join `oc_t_category_description` `d1` on((`c1`.`pk_i_id` = `d1`.`fk_i_category_id`))) left join `oc_t_category_description` `d2` on((`c2`.`pk_i_id` = `d2`.`fk_i_category_id`))) left join `oc_t_category_description` `d3` on((`c3`.`pk_i_id` = `d3`.`fk_i_category_id`))) left join `oc_t_category_description` `d4` on((`c4`.`pk_i_id` = `d4`.`fk_i_category_id`))) where ((`d1`.`fk_c_locale_code` = 'ru_RU') and ((`d2`.`fk_c_locale_code` = 'ru_RU') or isnull(`d2`.`fk_c_locale_code`)) and ((`d3`.`fk_c_locale_code` = 'ru_RU') or isnull(`d3`.`fk_c_locale_code`)) and ((`d4`.`fk_c_locale_code` = 'ru_RU') or isnull(`d4`.`fk_c_locale_code`)) and isnull(`c1`.`fk_i_parent_id`)) order by `d1`.`s_name`,`d2`.`s_name`,`d3`.`s_name`,`d4`.`s_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-06 12:37:02
