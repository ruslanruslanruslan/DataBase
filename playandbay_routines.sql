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
		return false;
	else 
		return true;
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
						(cast(fga.price as UNSIGNED) < ff.min_price or ff.min_price is null)
						and (upper(fga.title) regexp ff.title_filter or ff.title_filter is null)
						and (upper(fga.description) regexp ff.description_filter or ff.description_filter is null)
						)
				)
				and id_resource_list = p_id_resource_list
			)
		)
	then 
		return true;
	else 
		return false;
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
		return true;
	else 
		return false;
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
						sent_date > date_add(CURRENT_TIMESTAMP, INTERVAL -60 DAY)
						or sent_date is null
					)
			)
		)
	then 
		return true;
	else 
		return false;
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
		return false;
	else 
		return true;
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
		return true;
	else 
		return false;
	end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_check_sms_IsAllowedForSending` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_check_sms_IsAllowedForSending`(pk_id INT) RETURNS varchar(255) CHARSET utf8
begin

	SET @last_day_cnt = 
		(
			SELECT 
				COUNT(*) 
			FROM 
				fct_smsspamer
			WHERE 
				#sent_date > DATE_ADD(CURRENT_TIMESTAMP, INTERVAL -1 DAY)
				sent_date > DATE(CURRENT_TIMESTAMP)
		);

	SET @sms_left =105 - @last_day_cnt;

	RETURN @sms_left;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_avito_NextItemId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_avito_NextItemId`() RETURNS int(11)
begin
return 
	(
	SELECT 
		MAX(id_resource_list) + 1 
	FROM 
		fct_grabber_avito 
	);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_ebay_NextItemId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_ebay_NextItemId`() RETURNS int(11)
begin
return 
	(
	SELECT 
		MAX(id_resource_list)  + 1
	FROM 
		fct_grabber_ebay
	);
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
SELECT 
	ebay_id 
FROM 
	fct_grabber_ebay 
WHERE 
	is_auction=1 
	AND price IS NULL
	AND transformated <> 2;
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
SELECT 
	search_url
	, category_name 
FROM 
	fct_categories_search 
WHERE 
	search_url is not null 
ORDER BY 
	ordering;
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
		(
		select 
			1
		from 
			fct_grabber_avito
		where 
			id_resource_list = id_rl
			and 
				(
				length(description) < 25
				or city is null
				or photo_cnt = 0
				or photo_cnt is null
				or price < 4000
				or price is null
				or upper(author) regexp '[a-z]'
				or upper(author) regexp 'ЛИЦО'
				#or upper(author) regexp '.'
				or upper(author) regexp '[0-9]'
				or upper(author) regexp 'МАГАЗИН'
				or upper(author) regexp 'ПАНИЯ'
				or upper(description) regexp 'НОВЫЙ|НОВАЯ|НОВОЕ'
				or upper(title) regexp 'НОВЫЙ|НОВАЯ|НОВОЕ'
				)
		limit 1
		)
	then
		update 
			fct_grabber_avito 
		set 
			transformated = 21
		where 
			id_resource_list = id_rl;
		select "FILTERED1";
		leave t_root;
	end if;
	
	/*if
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
	end if;*/

	if 
		(select fn_check_avito_IsRLFiltered(id_rl))
	then
		update 
			fct_grabber_avito 
		set 
			transformated = 2
		where 
			id_resource_list = id_rl;
		select "FILTERED2";
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-09 11:14:27
