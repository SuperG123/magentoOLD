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
-- Table structure for table `core_resource`
--

DROP TABLE IF EXISTS `core_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_resource` (
  `code` varchar(50) NOT NULL COMMENT 'Resource Code',
  `version` varchar(50) DEFAULT NULL COMMENT 'Resource Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resources';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_resource`
--

LOCK TABLES `core_resource` WRITE;
/*!40000 ALTER TABLE `core_resource` DISABLE KEYS */;
INSERT INTO `core_resource` VALUES ('adminnotification_setup','1.6.0.0','1.6.0.0'),('admin_setup','1.6.1.0','1.6.1.0'),('api2_setup','1.0.0.0','1.0.0.0'),('api_setup','1.6.0.0','1.6.0.0'),('backup_setup','1.6.0.0','1.6.0.0'),('bundle_setup','1.6.0.0.1','1.6.0.0.1'),('captcha_setup','1.7.0.0.0','1.7.0.0.0'),('catalogindex_setup','1.6.0.0','1.6.0.0'),('cataloginventory_setup','1.6.0.0.2','1.6.0.0.2'),('catalogrule_setup','1.6.0.3','1.6.0.3'),('catalogsearch_setup','1.6.0.0','1.6.0.0'),('catalog_setup','1.6.0.0.14','1.6.0.0.14'),('checkout_setup','1.6.0.0','1.6.0.0'),('chronopay_setup','0.1.0','0.1.0'),('cms_setup','1.6.0.0.1','1.6.0.0.1'),('compiler_setup','1.6.0.0','1.6.0.0'),('contacts_setup','1.6.0.0','1.6.0.0'),('core_setup','1.6.0.2','1.6.0.2'),('cron_setup','1.6.0.0','1.6.0.0'),('customer_setup','1.6.2.0.1','1.6.2.0.1'),('cybermut_setup','0.1.0','0.1.0'),('cybersource_setup','0.7.0','0.7.0'),('dataflow_setup','1.6.0.0','1.6.0.0'),('directory_setup','1.6.0.1','1.6.0.1'),('downloadable_setup','1.6.0.0.2','1.6.0.0.2'),('eav_setup','1.6.0.0','1.6.0.0'),('eway_setup','0.1.0','0.1.0'),('find_feed_setup','1.6.0.0','1.6.0.0'),('flo2cash_setup','0.1.1','0.1.1'),('giftmessage_setup','1.6.0.0','1.6.0.0'),('googleanalytics_setup','0.1.0','0.1.0'),('googlebase_setup','1.6.0.0','1.6.0.0'),('googlecheckout_setup','1.6.0.1','1.6.0.1'),('googleoptimizer_setup','1.6.0.0','1.6.0.0'),('ideal_setup','0.1.0','0.1.0'),('importexport_setup','1.6.0.2','1.6.0.2'),('index_setup','1.6.0.0','1.6.0.0'),('log_setup','1.6.0.0','1.6.0.0'),('moneybookers_setup','1.6.0.0','1.6.0.0'),('newsletter_setup','1.6.0.1','1.6.0.1'),('oauth_setup','1.0.0.0','1.0.0.0'),('oscommerce_setup','0.8.10','0.8.10'),('paybox_setup','0.1.3','0.1.3'),('paygate_setup','1.6.0.0','1.6.0.0'),('payment_setup','1.6.0.0','1.6.0.0'),('paypaluk_setup','1.6.0.0','1.6.0.0'),('paypal_setup','1.6.0.2','1.6.0.2'),('persistent_setup','1.0.0.0','1.0.0.0'),('poll_setup','1.6.0.0','1.6.0.0'),('productalert_setup','1.6.0.0','1.6.0.0'),('produp1_setup','0.1.0','0.1.0'),('protx_setup','0.1.0','0.1.0'),('rating_setup','1.6.0.0','1.6.0.0'),('reports_setup','1.6.0.0.1','1.6.0.0.1'),('review_setup','1.6.0.0','1.6.0.0'),('salesrule_setup','1.6.0.3','1.6.0.3'),('sales_setup','1.6.0.7','1.6.0.7'),('sendfriend_setup','1.6.0.0','1.6.0.0'),('shipping_setup','1.6.0.0','1.6.0.0'),('sitemap_setup','1.6.0.0','1.6.0.0'),('strikeiron_setup','0.9.1','0.9.1'),('tag_setup','1.6.0.0','1.6.0.0'),('tax_setup','1.6.0.3','1.6.0.3'),('usa_setup','1.6.0.1','1.6.0.1'),('weee_setup','1.6.0.0','1.6.0.0'),('widget_setup','1.6.0.0','1.6.0.0'),('wishlist_setup','1.6.0.0','1.6.0.0'),('xmlconnect_setup','1.6.0.0','1.6.0.0');
/*!40000 ALTER TABLE `core_resource` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:47
