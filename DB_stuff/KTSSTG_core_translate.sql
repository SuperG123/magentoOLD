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
-- Table structure for table `core_translate`
--

DROP TABLE IF EXISTS `core_translate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_translate` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `UNQ_CORE_TRANSLATE_STORE_ID_LOCALE_STRING` (`store_id`,`locale`,`string`),
  KEY `IDX_CORE_TRANSLATE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CORE_TRANSLATE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='Translations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_translate`
--

LOCK TABLES `core_translate` WRITE;
/*!40000 ALTER TABLE `core_translate` DISABLE KEYS */;
INSERT INTO `core_translate` VALUES (1,'Size',0,'Size','en_US'),(2,'Color',0,'Color','en_US'),(3,'Thumbnail Image',0,'Thumbnail Image','en_US'),(4,'Med image',0,'Med image','en_US'),(5,'Large Image',0,'Large Image','en_US'),(6,'Medium Image',0,'Medium Image','en_US'),(7,'Main Image',0,'Main Image','en_US'),(8,'In Depth',0,'In Depth','en_US'),(9,'Small Image',0,'Small Image','en_US'),(10,'Manufacturer',0,'Manufacturer','en_US'),(11,'Dimensions',0,'Dimensions','en_US'),(12,'Model',0,'Model','en_US'),(13,'Activation Information',0,'Activation Information','en_US'),(14,'Thumbnail',0,'Thumbnail','en_US'),(15,'Description',0,'Description','en_US'),(16,'Weight',0,'Weight','en_US'),(17,'Processor',0,'Processor','en_US'),(18,'Memory',0,'Memory','en_US'),(19,'Hardrive',0,'Hardrive','en_US'),(20,'Screensize',0,'Screensize','en_US'),(21,'Gender',0,'Gender','en_US'),(22,'Shoe Size',0,'Shoe Size','en_US'),(23,'Shoe Type',0,'Shoe Type','en_US'),(24,'shape',0,'shape','en_US'),(25,'Short Description',0,'Short Description','en_US'),(26,'Country of Origin',0,'Country of Origin','en_US'),(27,'Room',0,'Room','en_US'),(28,'Finish',0,'Finish','en_US'),(29,'Manufacturer1',0,'Manufacturer1','en_US'),(30,'color-roy',0,'color-roy','en_US'),(31,'Megapixels',0,'Megapixels','en_US'),(32,'Shirt Size',0,'Shirt Size','en_US'),(33,'Visibility',0,'Visibility','en_US'),(34,'Tax Class',0,'Tax Class','en_US'),(35,'Status',0,'Status','en_US'),(36,'Price',0,'Price','en_US'),(37,'Tier Price',0,'Tier Price','en_US'),(38,'Special Price',0,'Special Price','en_US'),(39,'Meta Keywords',0,'Meta Keywords','en_US'),(40,'Max Resolution',0,'Max Resolution','en_US'),(41,'RAM SIze',0,'RAM SIze','en_US'),(42,'Contrast Ratio',0,'Contrast Ratio','en_US'),(43,'Response Time',0,'Response Time','en_US'),(44,'CPU Speed',0,'CPU Speed','en_US'),(45,'Disk Speed',0,'Disk Speed','en_US'),(46,'Brand',0,'Brand','en_US');
/*!40000 ALTER TABLE `core_translate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:14
