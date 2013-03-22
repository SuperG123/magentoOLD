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
-- Table structure for table `dataflow_profile_history`
--

DROP TABLE IF EXISTS `dataflow_profile_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataflow_profile_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `action_code` varchar(64) DEFAULT NULL COMMENT 'Action Code',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `performed_at` timestamp NULL DEFAULT NULL COMMENT 'Performed At',
  PRIMARY KEY (`history_id`),
  KEY `IDX_DATAFLOW_PROFILE_HISTORY_PROFILE_ID` (`profile_id`),
  CONSTRAINT `FK_AEA06B0C500063D3CE6EA671AE776645` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile History';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataflow_profile_history`
--

LOCK TABLES `dataflow_profile_history` WRITE;
/*!40000 ALTER TABLE `dataflow_profile_history` DISABLE KEYS */;
INSERT INTO `dataflow_profile_history` VALUES (1,1,'run',0,'2012-03-21 03:20:03'),(2,3,'update',0,'2012-03-22 03:02:57'),(3,3,'run',0,'2012-03-22 03:03:19'),(4,3,'update',0,'2012-03-22 06:30:37'),(5,3,'update',0,'2012-03-22 06:31:39'),(6,3,'run',0,'2012-03-22 06:31:50'),(7,3,'update',0,'2012-03-27 03:18:53'),(8,3,'run',0,'2012-03-27 03:19:06'),(9,3,'update',0,'2012-03-27 03:33:10'),(10,3,'run',0,'2012-03-27 03:33:37'),(11,3,'update',0,'2012-03-27 03:46:28'),(12,3,'run',0,'2012-03-27 03:46:35'),(13,3,'update',0,'2012-03-27 03:53:27'),(15,8,'create',0,'2012-05-09 06:32:34'),(16,8,'update',0,'2012-05-09 06:33:24'),(17,8,'run',0,'2012-05-09 06:34:30'),(18,8,'update',0,'2012-05-09 06:43:25'),(19,8,'run',0,'2012-05-09 06:43:36'),(20,8,'update',0,'2012-05-09 06:45:13'),(21,8,'run',0,'2012-05-09 06:45:29'),(22,8,'update',0,'2012-05-09 23:01:26'),(23,8,'update',0,'2012-05-09 23:02:52'),(24,8,'run',0,'2012-05-09 23:02:59'),(25,9,'create',0,'2012-05-11 01:58:24'),(26,9,'run',0,'2012-05-11 01:58:43'),(27,9,'update',0,'2012-05-11 02:01:05'),(28,9,'update',0,'2012-05-11 02:01:05'),(29,9,'update',0,'2012-05-11 02:01:48'),(30,9,'run',0,'2012-05-11 02:01:55'),(31,9,'run',0,'2012-05-11 02:04:12'),(32,9,'update',0,'2012-05-11 02:06:30'),(33,3,'update',0,'2012-05-11 02:59:40'),(34,8,'update',0,'2012-05-11 03:01:16'),(35,8,'run',0,'2012-05-11 03:01:23'),(36,3,'run',0,'2012-05-11 03:04:17'),(37,9,'run',0,'2012-05-11 03:22:29'),(38,9,'run',0,'2012-05-11 03:33:32'),(39,9,'run',0,'2012-05-11 03:35:46'),(40,9,'run',0,'2012-05-11 03:40:32'),(41,9,'run',0,'2012-05-11 04:13:22'),(42,9,'run',0,'2012-05-11 04:15:38'),(43,9,'run',0,'2012-05-11 04:15:48'),(44,9,'run',0,'2012-05-11 04:18:26'),(45,9,'run',0,'2012-05-11 04:21:45'),(46,9,'run',0,'2012-05-11 04:24:18'),(47,8,'update',0,'2012-05-11 04:28:21'),(48,8,'run',0,'2012-05-11 04:28:39'),(49,8,'update',0,'2012-05-11 04:32:05'),(50,9,'run',0,'2012-05-11 04:32:23'),(51,9,'run',0,'2012-05-11 04:35:12'),(52,9,'run',0,'2012-05-11 05:05:45'),(53,8,'run',0,'2012-05-11 05:29:40'),(54,8,'run',0,'2012-05-12 07:07:21'),(55,8,'update',0,'2012-05-12 07:18:01'),(56,8,'run',0,'2012-05-12 07:18:10'),(57,9,'update',0,'2012-05-15 03:04:27'),(58,9,'run',0,'2012-05-15 03:05:18'),(59,9,'run',0,'2012-05-15 03:13:34'),(60,9,'run',0,'2012-05-15 03:17:23'),(61,9,'run',0,'2012-05-15 03:25:14'),(62,9,'run',0,'2012-05-15 08:56:48');
/*!40000 ALTER TABLE `dataflow_profile_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:01
