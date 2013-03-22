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
-- Table structure for table `eav_entity_type`
--

DROP TABLE IF EXISTS `eav_entity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT '' COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT '' COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT '' COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eav_entity_type`
--

LOCK TABLES `eav_entity_type` WRITE;
/*!40000 ALTER TABLE `eav_entity_type` DISABLE KEYS */;
INSERT INTO `eav_entity_type` VALUES (1,'customer','customer/customer','customer/attribute','customer/entity','','',1,'default',1,'eav/entity_increment_numeric',0,8,'0','customer/eav_attribute','customer/attribute_collection'),(2,'customer_address','customer/address','customer/attribute','customer/address_entity','','',1,'default',2,'',0,8,'0','customer/eav_attribute','customer/address_attribute_collection'),(3,'customer_payment','','','customer/entity','','',1,'default',3,'',0,8,'0','',''),(4,'order','sales/order','','sales/order','','',1,'default',18,'eav/entity_increment_numeric',1,8,'0','',''),(5,'order_status','','','sales/order','','',1,'default',0,'',0,8,'0','',''),(6,'order_address','sales/order_address','','sales/order_entity','','',1,'default',20,'',0,8,'0','',''),(7,'order_item','sales/order_item','','sales/order_entity','','',1,'default',21,'',0,8,'0','',''),(8,'order_payment','sales/order_payment','','sales/order_entity','','',1,'default',22,'',0,8,'0','',''),(9,'catalog_category','catalog/category','catalog/resource_eav_attribute','catalog/category','','',0,'default',12,'',0,8,'0','catalog/eav_attribute','catalog/category_attribute_collection'),(10,'catalog_product','catalog/product','catalog/resource_eav_attribute','catalog/product','','',0,'default',9,'',0,8,'0','catalog/eav_attribute','catalog/product_attribute_collection'),(11,'quote','sales/quote','','sales/quote','','',1,'default',23,'',0,8,'0','',''),(12,'quote_address','sales/quote_address','','sales/quote_address','','',1,'default',24,'',0,8,'0','',''),(13,'quote_address_rate','sales/quote_address_rate','','sales/quote_entity','','',1,'default',25,'',0,8,'0','',''),(14,'quote_address_item','sales/quote_address_item','','sales/quote_entity','','',1,'default',26,'',0,8,'0','',''),(15,'quote_item','sales/quote_item','','sales/quote_item','','',1,'default',27,'',0,8,'0','',''),(16,'quote_payment','sales/quote_payment','','sales/quote_entity','','',1,'default',28,'',0,8,'0','',''),(17,'order_status_history','sales/order_status_history','','sales/order_entity','','',1,'default',29,'',0,8,'0','',''),(18,'invoice','sales/order_invoice','','sales/order_entity','','',1,'default',30,'eav/entity_increment_numeric',1,8,'0','',''),(20,'invoice_item','sales/order_invoice_item','','sales/order_entity','','',1,'default',32,'',0,8,'0','',''),(22,'invoice_shipment','','','sales/invoice','','',1,'default',34,'',0,8,'0','',''),(23,'invoice_comment','sales/order_invoice_comment','','sales/order_entity','','',1,'default',50,'',0,8,'0','',''),(24,'shipment','sales/order_shipment','','sales/order_entity','','',1,'default',51,'eav/entity_increment_numeric',1,8,'0','',''),(25,'shipment_item','sales/order_shipment_item','','sales/order_entity','','',1,'default',52,'',0,8,'0','',''),(26,'shipment_comment','sales/order_shipment_comment','','sales/order_entity','','',1,'default',53,'',0,8,'0','',''),(27,'shipment_track','sales/order_shipment_track','','sales/order_entity','','',1,'default',54,'',0,8,'0','',''),(28,'creditmemo','sales/order_creditmemo','','sales/order_entity','','',1,'default',55,'eav/entity_increment_numeric',1,8,'0','',''),(29,'creditmemo_item','sales/order_creditmemo_item','','sales/order_entity','','',1,'default',56,'',0,8,'0','',''),(30,'creditmemo_comment','sales/order_creditmemo_comment','','sales/order_entity','','',1,'default',57,'',0,8,'0','','');
/*!40000 ALTER TABLE `eav_entity_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:13
