CREATE DATABASE  IF NOT EXISTS `KTSRAY` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `KTSRAY`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: 65.60.97.68    Database: KTSRAY
-- ------------------------------------------------------
-- Server version	5.5.28

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
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(100) DEFAULT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNQ_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Admin User Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user`
--

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` VALUES (1,'Store','Owner','owner@example.com','admin','60c320903e22e3cdd29b614b126941d1:yC','2013-03-22 18:17:41','2012-11-20 09:05:14','2013-03-23 01:17:41',252,0,1,'a:1:{s:11:\"configState\";a:55:{s:7:\"web_url\";s:1:\"1\";s:7:\"web_seo\";s:1:\"1\";s:12:\"web_unsecure\";s:1:\"1\";s:10:\"web_secure\";s:1:\"1\";s:11:\"web_default\";s:1:\"1\";s:9:\"web_polls\";s:1:\"0\";s:10:\"web_cookie\";s:1:\"1\";s:11:\"web_session\";s:1:\"1\";s:24:\"web_browser_capabilities\";s:1:\"1\";s:19:\"custom_menu_general\";s:1:\"1\";s:19:\"custom_menu_columns\";s:1:\"1\";s:17:\"custom_menu_popup\";s:1:\"1\";s:14:\"design_package\";s:1:\"1\";s:12:\"design_theme\";s:1:\"1\";s:11:\"design_head\";s:1:\"1\";s:13:\"design_header\";s:1:\"1\";s:13:\"design_footer\";s:1:\"1\";s:16:\"design_watermark\";s:1:\"1\";s:17:\"design_pagination\";s:1:\"1\";s:12:\"admin_emails\";s:1:\"1\";s:13:\"admin_startup\";s:1:\"1\";s:9:\"admin_url\";s:1:\"1\";s:14:\"admin_security\";s:1:\"1\";s:15:\"admin_dashboard\";s:1:\"1\";s:25:\"ve_easyslide_ve_easyslide\";s:1:\"1\";s:12:\"dev_restrict\";s:1:\"1\";s:9:\"dev_debug\";s:1:\"1\";s:12:\"dev_template\";s:1:\"1\";s:20:\"dev_translate_inline\";s:1:\"1\";s:7:\"dev_log\";s:1:\"1\";s:6:\"dev_js\";s:1:\"1\";s:7:\"dev_css\";s:1:\"1\";s:31:\"advanced_modules_disable_output\";s:1:\"1\";s:15:\"general_country\";s:1:\"1\";s:14:\"general_region\";s:1:\"1\";s:14:\"general_locale\";s:1:\"1\";s:25:\"general_store_information\";s:1:\"1\";s:13:\"admin_captcha\";s:1:\"1\";s:24:\"cataloginventory_options\";s:1:\"1\";s:29:\"cataloginventory_item_options\";s:1:\"1\";s:12:\"design_email\";s:1:\"0\";s:16:\"catalog_frontend\";s:1:\"0\";s:15:\"catalog_sitemap\";s:1:\"0\";s:14:\"catalog_review\";s:1:\"0\";s:20:\"catalog_productalert\";s:1:\"0\";s:25:\"catalog_productalert_cron\";s:1:\"0\";s:19:\"catalog_placeholder\";s:1:\"0\";s:25:\"catalog_recently_products\";s:1:\"0\";s:13:\"catalog_price\";s:1:\"0\";s:26:\"catalog_layered_navigation\";s:1:\"1\";s:18:\"catalog_navigation\";s:1:\"0\";s:11:\"catalog_seo\";s:1:\"0\";s:14:\"catalog_search\";s:1:\"1\";s:20:\"catalog_downloadable\";s:1:\"0\";s:22:\"catalog_custom_options\";s:1:\"0\";}}',NULL,NULL),(2,'TRU','Admin','rwolfer1@yahoo.com','truadmin','d01e7891350419fb88f5021d8de75a2c:SC','2012-11-08 20:06:18','2013-02-09 03:03:21','2012-02-25 05:04:43',38,1,1,'N;','7e44f0144dd05b57100f7c3e716a2e97','2013-02-09 03:03:21'),(3,'Eric','Gould','eric.gould@etoolsrus.com','admin2','ae95d769ad90a69ae4a9b52f3c22c615:J9','2013-01-24 01:01:49','2012-11-16 00:48:17','2013-01-24 09:01:49',57,1,1,'a:1:{s:11:\"configState\";a:15:{s:31:\"advanced_modules_disable_output\";s:1:\"1\";s:12:\"dev_restrict\";s:1:\"1\";s:9:\"dev_debug\";s:1:\"1\";s:12:\"dev_template\";s:1:\"1\";s:20:\"dev_translate_inline\";s:1:\"1\";s:7:\"dev_log\";s:1:\"1\";s:6:\"dev_js\";s:1:\"1\";s:7:\"dev_css\";s:1:\"0\";s:13:\"debug_options\";s:1:\"1\";s:12:\"admin_emails\";s:1:\"0\";s:13:\"admin_startup\";s:1:\"0\";s:9:\"admin_url\";s:1:\"1\";s:14:\"admin_security\";s:1:\"1\";s:15:\"admin_dashboard\";s:1:\"0\";s:17:\"dev_dhmedia_devel\";s:1:\"0\";}}',NULL,NULL),(4,'Eric','Gould','supergis@me.com','superg','f78ffe469b454f38d3448649be3e5818:d4','2012-11-08 20:06:18','2012-11-07 06:19:29','2012-11-08 09:18:34',1,1,1,'N;',NULL,NULL),(5,'Eric1','Gould1','eric.gould1@etoolsrus.com','adminEG','01b05a5b8a1cafd8e5c6ed7b9545728c:q1','2012-11-19 21:35:41','2012-11-09 04:09:02','2012-11-09 05:15:57',8,1,1,'a:1:{s:11:\"configState\";a:10:{s:12:\"dev_restrict\";s:1:\"0\";s:9:\"dev_debug\";s:1:\"0\";s:12:\"dev_template\";s:1:\"0\";s:20:\"dev_translate_inline\";s:1:\"0\";s:7:\"dev_log\";s:1:\"0\";s:6:\"dev_js\";s:1:\"1\";s:7:\"dev_css\";s:1:\"1\";s:19:\"custom_menu_general\";s:1:\"1\";s:19:\"custom_menu_columns\";s:1:\"1\";s:17:\"custom_menu_popup\";s:1:\"1\";}}',NULL,NULL),(6,'Eric','Gould','eric@example.com','eric11','b30d561721cf12b36d9fc3bfd398288b:3N','2012-11-19 21:35:41','2012-11-17 06:44:24',NULL,0,1,1,'N;',NULL,NULL),(7,'Tiffany','Elder','tiffany.elder@etoolsrus.com','tiffany','e1305b412e17c64eae230a9dc9cd8e8b:wM','2013-01-16 19:14:35','2013-01-03 05:10:02','2013-01-17 03:14:35',4,0,1,'N;',NULL,NULL),(8,'sarah','Lindensmith','sarah.lindensmith@yahoo.com','sarah','2a4a8929b8a293dc8feea39ac48771dc:DN','2013-01-28 21:06:41','2012-12-28 03:43:19','2013-01-29 05:06:41',7,0,1,'N;',NULL,NULL),(9,'Ray','Martinez','raymmrtnz@gmail.com','raymmrtnz','d26d06af01c201a62b119bb02b3a9001:Sk','2013-03-20 02:47:54','2012-12-28 06:24:09','2013-03-20 09:47:54',41,0,1,'a:1:{s:11:\"configState\";a:103:{s:16:\"catalog_frontend\";s:1:\"1\";s:15:\"catalog_sitemap\";s:1:\"1\";s:14:\"catalog_review\";s:1:\"1\";s:20:\"catalog_productalert\";s:1:\"1\";s:25:\"catalog_productalert_cron\";s:1:\"1\";s:19:\"catalog_placeholder\";s:1:\"1\";s:25:\"catalog_recently_products\";s:1:\"1\";s:13:\"catalog_price\";s:1:\"1\";s:26:\"catalog_layered_navigation\";s:1:\"1\";s:18:\"catalog_navigation\";s:1:\"1\";s:11:\"catalog_seo\";s:1:\"1\";s:14:\"catalog_search\";s:1:\"1\";s:20:\"catalog_downloadable\";s:1:\"1\";s:22:\"catalog_custom_options\";s:1:\"1\";s:25:\"ve_easyslide_ve_easyslide\";s:1:\"1\";s:14:\"design_package\";s:1:\"0\";s:12:\"design_theme\";s:1:\"0\";s:11:\"design_head\";s:1:\"1\";s:13:\"design_header\";s:1:\"1\";s:13:\"design_footer\";s:1:\"1\";s:16:\"design_watermark\";s:1:\"0\";s:17:\"design_pagination\";s:1:\"0\";s:12:\"design_email\";s:1:\"1\";s:13:\"sales_general\";s:1:\"0\";s:17:\"sales_totals_sort\";s:1:\"0\";s:13:\"sales_reorder\";s:1:\"0\";s:14:\"sales_identity\";s:1:\"1\";s:19:\"sales_minimum_order\";s:1:\"0\";s:15:\"sales_dashboard\";s:1:\"0\";s:18:\"sales_gift_options\";s:1:\"0\";s:10:\"sales_msrp\";s:1:\"0\";s:15:\"payment_account\";s:1:\"1\";s:31:\"payment_paypal_group_all_in_one\";s:1:\"1\";s:24:\"payment_payflow_advanced\";s:1:\"0\";s:25:\"payment_required_settings\";s:1:\"1\";s:25:\"payment_payments_advanced\";s:1:\"1\";s:15:\"payment_express\";s:1:\"1\";s:34:\"payment_settings_payments_advanced\";s:1:\"1\";s:43:\"payment_settings_payments_advanced_advanced\";s:1:\"0\";s:25:\"payment_billing_agreement\";s:1:\"0\";s:25:\"payment_settlement_report\";s:1:\"0\";s:16:\"payment_frontend\";s:1:\"0\";s:33:\"payment_settings_express_checkout\";s:1:\"1\";s:42:\"payment_settings_express_checkout_advanced\";s:1:\"0\";s:11:\"payment_wpp\";s:1:\"0\";s:29:\"payment_wpp_required_settings\";s:1:\"1\";s:32:\"payment_wpp_and_express_checkout\";s:1:\"1\";s:20:\"payment_wpp_settings\";s:1:\"1\";s:29:\"payment_wpp_settings_advanced\";s:1:\"0\";s:29:\"payment_wpp_billing_agreement\";s:1:\"0\";s:29:\"payment_wpp_settlement_report\";s:1:\"0\";s:20:\"payment_wpp_frontend\";s:1:\"0\";s:37:\"payment_wpp_settings_express_checkout\";s:1:\"1\";s:46:\"payment_wpp_settings_express_checkout_advanced\";s:1:\"0\";s:11:\"payment_wps\";s:1:\"0\";s:29:\"payment_wps_required_settings\";s:1:\"1\";s:34:\"payment_settings_payments_standart\";s:1:\"1\";s:43:\"payment_settings_payments_standart_advanced\";s:1:\"0\";s:31:\"payment_paypal_payment_gateways\";s:1:\"0\";s:45:\"payment_paypal_verisign_with_express_checkout\";s:1:\"0\";s:31:\"payment_paypal_payflow_required\";s:1:\"1\";s:35:\"payment_paypal_payflow_api_settings\";s:1:\"1\";s:31:\"payment_settings_paypal_payflow\";s:1:\"1\";s:40:\"payment_settings_paypal_payflow_advanced\";s:1:\"0\";s:40:\"payment_paypal_payflow_settlement_report\";s:1:\"0\";s:31:\"payment_paypal_payflow_frontend\";s:1:\"0\";s:39:\"payment_paypal_payflow_express_checkout\";s:1:\"1\";s:48:\"payment_paypal_payflow_express_checkout_advanced\";s:1:\"0\";s:20:\"payment_payflow_link\";s:1:\"0\";s:29:\"payment_payflow_link_required\";s:1:\"1\";s:33:\"payment_payflow_link_payflow_link\";s:1:\"1\";s:37:\"payment_payflow_link_express_checkout\";s:1:\"1\";s:29:\"payment_settings_payflow_link\";s:1:\"1\";s:38:\"payment_settings_payflow_link_advanced\";s:1:\"0\";s:38:\"payment_payflow_link_settlement_report\";s:1:\"0\";s:29:\"payment_payflow_link_frontend\";s:1:\"0\";s:46:\"payment_settings_payflow_link_express_checkout\";s:1:\"1\";s:55:\"payment_settings_payflow_link_express_checkout_advanced\";s:1:\"0\";s:38:\"payment_payflow_link_billing_agreement\";s:1:\"0\";s:42:\"payment_paypal_alternative_payment_methods\";s:1:\"1\";s:24:\"payment_express_checkout\";s:1:\"0\";s:33:\"payment_express_checkout_required\";s:1:\"1\";s:50:\"payment_express_checkout_required_express_checkout\";s:1:\"1\";s:19:\"payment_settings_ec\";s:1:\"1\";s:28:\"payment_settings_ec_advanced\";s:1:\"0\";s:42:\"payment_express_checkout_billing_agreement\";s:1:\"0\";s:42:\"payment_express_checkout_settlement_report\";s:1:\"0\";s:33:\"payment_express_checkout_frontend\";s:1:\"0\";s:14:\"payment_ccsave\";s:1:\"0\";s:15:\"payment_checkmo\";s:1:\"1\";s:12:\"payment_free\";s:1:\"0\";s:20:\"payment_banktransfer\";s:1:\"0\";s:22:\"payment_cashondelivery\";s:1:\"0\";s:21:\"payment_purchaseorder\";s:1:\"0\";s:31:\"payment_authorizenet_directpost\";s:1:\"0\";s:20:\"payment_authorizenet\";s:1:\"0\";s:17:\"contacts_contacts\";s:1:\"1\";s:14:\"contacts_email\";s:1:\"1\";s:25:\"trans_email_ident_general\";s:1:\"1\";s:23:\"trans_email_ident_sales\";s:1:\"1\";s:25:\"trans_email_ident_support\";s:1:\"1\";s:25:\"trans_email_ident_custom1\";s:1:\"1\";s:25:\"trans_email_ident_custom2\";s:1:\"1\";}}',NULL,NULL),(10,'Nick','Frazier','nick.frazier@etoolsrus.com','theNick','6499ab781f6b04a9de28b16b7c45466b:xo','2013-02-28 21:15:39','2013-01-26 04:23:25','2013-03-01 05:15:39',14,0,1,'N;',NULL,NULL),(11,'Ryan','McDivett','ryan.mcdivett@etoolsrus.com','ktsRyan','3ce2f8e7ad89af1a5a5c9cb627068c76:Ja','2013-01-25 20:33:01','2013-01-26 04:29:17','2013-01-26 04:33:01',1,0,1,'N;',NULL,NULL),(12,'Robert','Wolfer','robert.wolfer@ucr.edu','rwolfer','6cc14eecaeb32560b3077a5653ad0183:66','2013-02-08 21:50:59','2013-02-09 05:46:58','2013-02-09 05:47:27',1,0,1,'a:1:{s:11:\"configState\";a:4:{s:15:\"general_country\";s:1:\"0\";s:14:\"general_region\";s:1:\"0\";s:14:\"general_locale\";s:1:\"1\";s:25:\"general_store_information\";s:1:\"0\";}}',NULL,NULL),(13,'Adam','Martin','adam.martin@etoolsrus.com','a.martin','a4ac68c4b7d3c4d231848269fac7e5d3:r1','2013-02-08 21:54:18','2013-02-09 05:54:18',NULL,0,0,1,'N;',NULL,NULL);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:09
