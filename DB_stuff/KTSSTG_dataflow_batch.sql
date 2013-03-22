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
-- Table structure for table `dataflow_batch`
--

DROP TABLE IF EXISTS `dataflow_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataflow_batch` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `adapter` varchar(128) DEFAULT NULL COMMENT 'Adapter',
  `params` text COMMENT 'Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`batch_id`),
  KEY `IDX_DATAFLOW_BATCH_PROFILE_ID` (`profile_id`),
  KEY `IDX_DATAFLOW_BATCH_STORE_ID` (`store_id`),
  KEY `IDX_DATAFLOW_BATCH_CREATED_AT` (`created_at`),
  CONSTRAINT `FK_DATAFLOW_BATCH_PROFILE_ID_DATAFLOW_PROFILE_PROFILE_ID` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_DATAFLOW_BATCH_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataflow_batch`
--

LOCK TABLES `dataflow_batch` WRITE;
/*!40000 ALTER TABLE `dataflow_batch` DISABLE KEYS */;
INSERT INTO `dataflow_batch` VALUES (2,3,0,'catalog/convert_adapter_product','a:8:{s:9:\"delimiter\";s:1:\",\";s:7:\"enclose\";s:1:\"\"\";s:10:\"fieldnames\";s:4:\"true\";s:5:\"store\";s:1:\"0\";s:17:\"number_of_records\";s:2:\"21\";s:17:\"decimal_separator\";s:1:\".\";s:7:\"adapter\";s:31:\"catalog/convert_adapter_product\";s:6:\"method\";s:5:\"parse\";}','2012-03-22 03:03:19'),(3,3,0,'catalog/convert_adapter_product','a:8:{s:9:\"delimiter\";s:1:\",\";s:7:\"enclose\";s:1:\"\"\";s:10:\"fieldnames\";s:4:\"true\";s:5:\"store\";s:1:\"0\";s:17:\"number_of_records\";s:2:\"21\";s:17:\"decimal_separator\";s:1:\".\";s:7:\"adapter\";s:31:\"catalog/convert_adapter_product\";s:6:\"method\";s:5:\"parse\";}','2012-03-22 06:31:50'),(4,3,0,'catalog/convert_adapter_product','a:8:{s:9:\"delimiter\";s:1:\",\";s:7:\"enclose\";s:1:\"\"\";s:10:\"fieldnames\";s:4:\"true\";s:5:\"store\";s:1:\"0\";s:17:\"number_of_records\";s:2:\"21\";s:17:\"decimal_separator\";s:1:\".\";s:7:\"adapter\";s:31:\"catalog/convert_adapter_product\";s:6:\"method\";s:5:\"parse\";}','2012-03-27 03:19:07'),(5,3,0,'catalog/convert_adapter_product','a:8:{s:9:\"delimiter\";s:1:\",\";s:7:\"enclose\";s:1:\"\"\";s:10:\"fieldnames\";s:4:\"true\";s:5:\"store\";s:1:\"0\";s:17:\"number_of_records\";s:3:\"124\";s:17:\"decimal_separator\";s:1:\".\";s:7:\"adapter\";s:31:\"catalog/convert_adapter_product\";s:6:\"method\";s:5:\"parse\";}','2012-03-27 03:33:37'),(6,3,0,'catalog/convert_adapter_product','a:8:{s:9:\"delimiter\";s:1:\",\";s:7:\"enclose\";s:1:\"\"\";s:10:\"fieldnames\";s:4:\"true\";s:5:\"store\";s:1:\"0\";s:17:\"number_of_records\";s:3:\"125\";s:17:\"decimal_separator\";s:1:\".\";s:7:\"adapter\";s:31:\"catalog/convert_adapter_product\";s:6:\"method\";s:5:\"parse\";}','2012-03-27 03:46:35'),(21,9,0,'catalog/convert_adapter_product','a:8:{s:9:\"delimiter\";s:1:\",\";s:7:\"enclose\";s:1:\"\"\";s:10:\"fieldnames\";s:4:\"true\";s:5:\"store\";s:1:\"0\";s:17:\"number_of_records\";s:1:\"1\";s:17:\"decimal_separator\";s:1:\".\";s:7:\"adapter\";s:31:\"catalog/convert_adapter_product\";s:6:\"method\";s:5:\"parse\";}','2012-05-11 04:15:38');
/*!40000 ALTER TABLE `dataflow_batch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:52
