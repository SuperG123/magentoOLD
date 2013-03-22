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
-- Table structure for table `catalog_category_entity_datetime`
--

DROP TABLE IF EXISTS `catalog_category_entity_datetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DTIME_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=797 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_category_entity_datetime`
--

LOCK TABLES `catalog_category_entity_datetime` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_datetime` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_datetime` VALUES (13,9,565,0,40,NULL),(14,9,566,0,40,NULL),(15,9,565,0,41,NULL),(16,9,566,0,41,NULL),(21,9,565,0,42,NULL),(22,9,566,0,42,NULL),(23,9,565,0,43,NULL),(24,9,566,0,43,NULL),(27,9,565,0,44,NULL),(28,9,566,0,44,NULL),(29,9,565,0,45,NULL),(30,9,566,0,45,NULL),(31,9,565,0,46,NULL),(32,9,566,0,46,NULL),(33,9,565,0,47,NULL),(34,9,566,0,47,NULL),(35,9,565,0,48,NULL),(36,9,566,0,48,NULL),(37,9,565,0,49,NULL),(38,9,566,0,49,NULL),(39,9,565,0,50,NULL),(40,9,566,0,50,NULL),(41,9,565,0,51,NULL),(42,9,566,0,51,NULL),(43,9,565,0,52,NULL),(44,9,566,0,52,NULL),(45,9,565,0,53,NULL),(46,9,566,0,53,NULL),(47,9,565,0,54,NULL),(48,9,566,0,54,NULL),(49,9,565,0,55,NULL),(50,9,566,0,55,NULL),(51,9,565,0,56,NULL),(52,9,566,0,56,NULL),(53,9,565,0,57,NULL),(54,9,566,0,57,NULL),(55,9,565,0,58,NULL),(56,9,566,0,58,NULL),(57,9,565,0,59,NULL),(58,9,566,0,59,NULL),(59,9,565,0,60,NULL),(60,9,566,0,60,NULL),(61,9,565,0,61,NULL),(62,9,566,0,61,NULL),(63,9,565,0,62,NULL),(64,9,566,0,62,NULL),(67,9,565,0,63,NULL),(68,9,566,0,63,NULL),(69,9,565,0,64,NULL),(70,9,566,0,64,NULL),(71,9,565,0,65,NULL),(72,9,566,0,65,NULL),(73,9,565,0,66,NULL),(74,9,566,0,66,NULL),(75,9,565,0,67,NULL),(76,9,566,0,67,NULL),(77,9,565,0,68,NULL),(78,9,566,0,68,NULL),(79,9,565,0,69,NULL),(80,9,566,0,69,NULL),(81,9,565,0,70,NULL),(82,9,566,0,70,NULL),(83,9,565,0,71,NULL),(84,9,566,0,71,NULL),(85,9,565,0,72,NULL),(86,9,566,0,72,NULL),(87,9,565,0,73,NULL),(88,9,566,0,73,NULL),(89,9,565,0,74,NULL),(90,9,566,0,74,NULL),(93,9,565,0,75,NULL),(94,9,566,0,75,NULL),(95,9,565,0,76,NULL),(96,9,566,0,76,NULL),(97,9,565,0,77,NULL),(98,9,566,0,77,NULL),(99,9,565,0,78,NULL),(100,9,566,0,78,NULL),(101,9,565,0,79,NULL),(102,9,566,0,79,NULL),(103,9,565,0,80,NULL),(104,9,566,0,80,NULL),(105,9,565,0,81,NULL),(106,9,566,0,81,NULL),(107,9,565,0,82,NULL),(108,9,566,0,82,NULL),(109,9,565,0,83,NULL),(110,9,566,0,83,NULL),(111,9,565,0,84,NULL),(112,9,566,0,84,NULL),(113,9,565,0,85,NULL),(114,9,566,0,85,NULL),(115,9,565,0,86,NULL),(116,9,566,0,86,NULL),(117,9,565,0,87,NULL),(118,9,566,0,87,NULL),(119,9,565,0,88,NULL),(120,9,566,0,88,NULL),(121,9,565,0,89,NULL),(122,9,566,0,89,NULL),(123,9,565,0,90,NULL),(124,9,566,0,90,NULL),(125,9,565,0,91,NULL),(126,9,566,0,91,NULL),(127,9,565,0,92,NULL),(128,9,566,0,92,NULL),(129,9,565,0,93,NULL),(130,9,566,0,93,NULL),(131,9,565,0,94,NULL),(132,9,566,0,94,NULL),(133,9,565,0,95,NULL),(134,9,566,0,95,NULL),(135,9,565,0,96,NULL),(136,9,566,0,96,NULL),(137,9,565,0,97,NULL),(138,9,566,0,97,NULL),(139,9,565,0,98,NULL),(140,9,566,0,98,NULL),(141,9,565,0,99,NULL),(142,9,566,0,99,NULL),(143,9,565,0,100,NULL),(144,9,566,0,100,NULL),(145,9,565,0,101,NULL),(146,9,566,0,101,NULL),(147,9,565,0,102,NULL),(148,9,566,0,102,NULL),(149,9,565,0,103,NULL),(150,9,566,0,103,NULL),(151,9,565,0,104,NULL),(152,9,566,0,104,NULL),(153,9,565,0,105,NULL),(154,9,566,0,105,NULL),(155,9,565,0,106,NULL),(156,9,566,0,106,NULL),(157,9,565,0,107,NULL),(158,9,566,0,107,NULL),(159,9,565,0,108,NULL),(160,9,566,0,108,NULL),(161,9,565,0,109,NULL),(162,9,566,0,109,NULL),(165,9,565,0,110,NULL),(166,9,566,0,110,NULL),(167,9,565,0,111,NULL),(168,9,566,0,111,NULL),(169,9,565,0,112,NULL),(170,9,566,0,112,NULL),(173,9,565,0,113,NULL),(174,9,566,0,113,NULL),(175,9,565,0,114,NULL),(176,9,566,0,114,NULL),(177,9,565,0,115,NULL),(178,9,566,0,115,NULL),(179,9,565,0,116,NULL),(180,9,566,0,116,NULL),(183,9,565,0,117,NULL),(184,9,566,0,117,NULL),(185,9,565,0,118,NULL),(186,9,566,0,118,NULL),(187,9,565,0,119,NULL),(188,9,566,0,119,NULL),(189,9,565,0,120,NULL),(190,9,566,0,120,NULL),(191,9,565,0,121,NULL),(192,9,566,0,121,NULL),(195,9,565,0,122,NULL),(196,9,566,0,122,NULL),(197,9,565,0,123,NULL),(198,9,566,0,123,NULL),(199,9,565,0,124,NULL),(200,9,566,0,124,NULL),(201,9,565,0,125,NULL),(202,9,566,0,125,NULL),(207,9,565,0,126,NULL),(208,9,566,0,126,NULL),(209,9,565,0,127,NULL),(210,9,566,0,127,NULL),(215,9,565,0,128,NULL),(216,9,566,0,128,NULL),(297,9,565,0,132,NULL),(298,9,566,0,132,NULL),(299,9,565,0,133,NULL),(300,9,566,0,133,NULL),(301,9,565,0,134,NULL),(302,9,566,0,134,NULL),(303,9,565,0,135,NULL),(304,9,566,0,135,NULL),(305,9,565,0,136,NULL),(306,9,566,0,136,NULL),(307,9,565,0,137,NULL),(308,9,566,0,137,NULL),(337,9,565,0,149,NULL),(338,9,566,0,149,NULL),(409,9,565,0,153,NULL),(410,9,566,0,153,NULL),(411,9,565,0,10,NULL),(412,9,566,0,10,NULL),(453,9,565,0,154,NULL),(454,9,566,0,154,NULL),(455,9,565,0,155,NULL),(456,9,566,0,155,NULL),(473,9,565,0,156,NULL),(474,9,566,0,156,NULL),(477,9,565,0,158,NULL),(478,9,566,0,158,NULL),(479,9,565,0,159,NULL),(480,9,566,0,159,NULL),(481,9,565,0,160,NULL),(482,9,566,0,160,NULL),(485,9,565,0,162,NULL),(486,9,566,0,162,NULL),(487,9,565,0,163,NULL),(488,9,566,0,163,NULL),(489,9,565,0,164,NULL),(490,9,566,0,164,NULL),(491,9,565,0,165,NULL),(492,9,566,0,165,NULL),(495,9,565,0,167,NULL),(496,9,566,0,167,NULL),(497,9,565,0,168,NULL),(498,9,566,0,168,NULL),(501,9,565,0,169,NULL),(502,9,566,0,169,NULL),(503,9,565,0,170,NULL),(504,9,566,0,170,NULL),(529,9,565,0,3,NULL),(530,9,566,0,3,NULL),(541,9,565,0,171,NULL),(542,9,566,0,171,NULL),(543,9,565,0,172,NULL),(544,9,566,0,172,NULL),(545,9,565,0,173,NULL),(546,9,566,0,173,NULL),(553,9,565,0,174,NULL),(554,9,566,0,174,NULL),(557,9,565,0,176,NULL),(558,9,566,0,176,NULL),(571,9,565,0,180,NULL),(572,9,566,0,180,NULL),(573,9,565,0,181,NULL),(574,9,566,0,181,NULL),(577,9,565,0,182,NULL),(578,9,566,0,182,NULL),(579,9,565,0,183,NULL),(580,9,566,0,183,NULL),(581,9,565,0,184,NULL),(582,9,566,0,184,NULL),(587,9,565,0,185,NULL),(588,9,566,0,185,NULL),(589,9,565,0,186,NULL),(590,9,566,0,186,NULL),(593,9,565,0,187,NULL),(594,9,566,0,187,NULL),(595,9,565,0,188,NULL),(596,9,566,0,188,NULL),(597,9,565,0,189,NULL),(598,9,566,0,189,NULL),(599,9,565,0,190,NULL),(600,9,566,0,190,NULL),(601,9,565,0,191,NULL),(602,9,566,0,191,NULL),(603,9,565,0,192,NULL),(604,9,566,0,192,NULL),(605,9,565,0,193,NULL),(606,9,566,0,193,NULL),(607,9,565,0,194,NULL),(608,9,566,0,194,NULL),(609,9,565,0,195,NULL),(610,9,566,0,195,NULL),(611,9,565,0,196,NULL),(612,9,566,0,196,NULL),(613,9,565,0,197,NULL),(614,9,566,0,197,NULL),(615,9,565,0,198,NULL),(616,9,566,0,198,NULL),(617,9,565,0,199,NULL),(618,9,566,0,199,NULL),(619,9,565,0,200,NULL),(620,9,566,0,200,NULL),(621,9,565,0,201,NULL),(622,9,566,0,201,NULL),(625,9,565,0,202,NULL),(626,9,566,0,202,NULL),(627,9,565,0,203,NULL),(628,9,566,0,203,NULL),(629,9,565,0,204,NULL),(630,9,566,0,204,NULL),(631,9,565,0,205,NULL),(632,9,566,0,205,NULL),(633,9,565,0,206,NULL),(634,9,566,0,206,NULL),(635,9,565,0,207,NULL),(636,9,566,0,207,NULL),(637,9,565,0,208,NULL),(638,9,566,0,208,NULL),(639,9,565,0,209,NULL),(640,9,566,0,209,NULL),(641,9,565,0,210,NULL),(642,9,566,0,210,NULL),(643,9,565,0,211,NULL),(644,9,566,0,211,NULL),(645,9,565,0,212,NULL),(646,9,566,0,212,NULL),(647,9,565,0,213,NULL),(648,9,566,0,213,NULL),(649,9,565,0,214,NULL),(650,9,566,0,214,NULL),(651,9,565,0,215,NULL),(652,9,566,0,215,NULL),(653,9,565,0,216,NULL),(654,9,566,0,216,NULL),(655,9,565,0,217,NULL),(656,9,566,0,217,NULL),(657,9,565,0,218,NULL),(658,9,566,0,218,NULL),(659,9,565,0,219,NULL),(660,9,566,0,219,NULL),(661,9,565,0,220,NULL),(662,9,566,0,220,NULL),(663,9,565,0,221,NULL),(664,9,566,0,221,NULL),(665,9,565,0,222,NULL),(666,9,566,0,222,NULL),(667,9,565,0,223,NULL),(668,9,566,0,223,NULL),(669,9,565,0,224,NULL),(670,9,566,0,224,NULL),(671,9,565,0,225,NULL),(672,9,566,0,225,NULL),(713,9,565,0,226,NULL),(714,9,566,0,226,NULL),(721,9,565,0,227,NULL),(722,9,566,0,227,NULL),(723,9,565,0,228,NULL),(724,9,566,0,228,NULL),(725,9,565,0,229,NULL),(726,9,566,0,229,NULL),(727,9,565,0,230,NULL),(728,9,566,0,230,NULL),(733,9,565,0,231,NULL),(734,9,566,0,231,NULL),(735,9,565,0,232,NULL),(736,9,566,0,232,NULL),(739,9,565,0,233,NULL),(740,9,566,0,233,NULL),(741,9,565,0,234,NULL),(742,9,566,0,234,NULL),(743,9,565,0,18,NULL),(744,9,566,0,18,NULL),(747,9,565,0,235,NULL),(748,9,566,0,235,NULL);
/*!40000 ALTER TABLE `catalog_category_entity_datetime` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:29:04
