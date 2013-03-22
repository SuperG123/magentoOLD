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
-- Table structure for table `catalogrule`
--

DROP TABLE IF EXISTS `catalogrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From Date',
  `to_date` date DEFAULT NULL COMMENT 'To Date',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `sub_is_enable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Rule Enable For Subitems',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='CatalogRule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogrule`
--

LOCK TABLES `catalogrule` WRITE;
/*!40000 ALTER TABLE `catalogrule` DISABLE KEYS */;
INSERT INTO `catalogrule` VALUES (1,'Sony Sale','20% discount on all Sony products.','2008-08-25','2009-01-31',1,'a:7:{s:4:\"type\";s:34:\"catalogrule/rule_condition_combine\";s:9:\"attribute\";N;s:8:\"operator\";N;s:5:\"value\";s:1:\"1\";s:18:\"is_value_processed\";N;s:10:\"aggregator\";s:3:\"all\";s:10:\"conditions\";a:2:{i:0;a:5:{s:4:\"type\";s:34:\"catalogrule/rule_condition_product\";s:9:\"attribute\";s:12:\"manufacturer\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";s:18:\"is_value_processed\";b:0;}i:1;a:5:{s:4:\"type\";s:34:\"catalogrule/rule_condition_product\";s:9:\"attribute\";s:5:\"price\";s:8:\"operator\";s:2:\"<=\";s:5:\"value\";d:100;s:18:\"is_value_processed\";b:0;}}}','a:4:{s:4:\"type\";s:34:\"catalogrule/rule_action_collection\";s:9:\"attribute\";N;s:8:\"operator\";s:1:\"=\";s:5:\"value\";N;}',1,0,'by_percent',0.0000,0,NULL,0.0000),(3,'CODEDEMOSTORE','10% off all Toshiba laptops','2008-08-06','2009-08-23',1,'a:7:{s:4:\"type\";s:34:\"catalogrule/rule_condition_combine\";s:9:\"attribute\";N;s:8:\"operator\";N;s:5:\"value\";s:1:\"1\";s:18:\"is_value_processed\";N;s:10:\"aggregator\";s:3:\"all\";s:10:\"conditions\";a:1:{i:0;a:5:{s:4:\"type\";s:34:\"catalogrule/rule_condition_product\";s:9:\"attribute\";s:12:\"manufacturer\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";s:18:\"is_value_processed\";b:0;}}}','a:4:{s:4:\"type\";s:34:\"catalogrule/rule_action_collection\";s:9:\"attribute\";N;s:8:\"operator\";s:1:\"=\";s:5:\"value\";N;}',0,0,'by_percent',0.0000,0,NULL,0.0000),(4,'Anashria 20 percent Off','','2008-08-27','2009-08-28',1,'a:7:{s:4:\"type\";s:34:\"catalogrule/rule_condition_combine\";s:9:\"attribute\";N;s:8:\"operator\";N;s:5:\"value\";s:1:\"1\";s:18:\"is_value_processed\";N;s:10:\"aggregator\";s:3:\"all\";s:10:\"conditions\";a:1:{i:0;a:5:{s:4:\"type\";s:34:\"catalogrule/rule_condition_product\";s:9:\"attribute\";s:3:\"sku\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"ana\";s:18:\"is_value_processed\";b:0;}}}','a:4:{s:4:\"type\";s:34:\"catalogrule/rule_action_collection\";s:9:\"attribute\";N;s:8:\"operator\";s:1:\"=\";s:5:\"value\";N;}',1,0,'by_percent',0.0000,0,NULL,0.0000),(5,'20 percent off selected Furniture','','2008-08-24','2009-09-28',1,'a:7:{s:4:\"type\";s:34:\"catalogrule/rule_condition_combine\";s:9:\"attribute\";N;s:8:\"operator\";N;s:5:\"value\";s:1:\"1\";s:18:\"is_value_processed\";N;s:10:\"aggregator\";s:3:\"any\";s:10:\"conditions\";a:3:{i:0;a:5:{s:4:\"type\";s:34:\"catalogrule/rule_condition_product\";s:9:\"attribute\";s:3:\"sku\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"384822\";s:18:\"is_value_processed\";b:0;}i:1;a:5:{s:4:\"type\";s:34:\"catalogrule/rule_condition_product\";s:9:\"attribute\";s:3:\"sku\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"349838\";s:18:\"is_value_processed\";b:0;}i:2;a:5:{s:4:\"type\";s:34:\"catalogrule/rule_condition_product\";s:9:\"attribute\";s:3:\"sku\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"1112\";s:18:\"is_value_processed\";b:0;}}}','a:4:{s:4:\"type\";s:34:\"catalogrule/rule_action_collection\";s:9:\"attribute\";N;s:8:\"operator\";s:1:\"=\";s:5:\"value\";N;}',1,0,'by_percent',0.0000,0,NULL,0.0000),(6,'20 percent off T shirts','','2008-08-28','2009-10-30',1,'a:7:{s:4:\"type\";s:34:\"catalogrule/rule_condition_combine\";s:9:\"attribute\";N;s:8:\"operator\";N;s:5:\"value\";s:1:\"1\";s:18:\"is_value_processed\";N;s:10:\"aggregator\";s:3:\"all\";s:10:\"conditions\";a:1:{i:0;a:5:{s:4:\"type\";s:34:\"catalogrule/rule_condition_product\";s:9:\"attribute\";s:16:\"attribute_set_id\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"41\";s:18:\"is_value_processed\";b:0;}}}','a:4:{s:4:\"type\";s:34:\"catalogrule/rule_action_collection\";s:9:\"attribute\";N;s:8:\"operator\";s:1:\"=\";s:5:\"value\";N;}',0,0,'by_percent',0.0000,0,NULL,0.0000),(7,'Christmas Rule','','2008-12-21','2009-01-24',0,'a:6:{s:4:\"type\";s:34:\"catalogrule/rule_condition_combine\";s:9:\"attribute\";N;s:8:\"operator\";N;s:5:\"value\";s:1:\"1\";s:18:\"is_value_processed\";N;s:10:\"aggregator\";s:3:\"all\";}','a:4:{s:4:\"type\";s:34:\"catalogrule/rule_action_collection\";s:9:\"attribute\";N;s:8:\"operator\";s:1:\"=\";s:5:\"value\";N;}',0,0,'by_percent',10.0000,0,NULL,0.0000);
/*!40000 ALTER TABLE `catalogrule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:18
