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
-- Table structure for table `eav_attribute_group`
--

DROP TABLE IF EXISTS `eav_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) NOT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `IDX_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  CONSTRAINT `FK_EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=564 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eav_attribute_group`
--

LOCK TABLES `eav_attribute_group` WRITE;
/*!40000 ALTER TABLE `eav_attribute_group` DISABLE KEYS */;
INSERT INTO `eav_attribute_group` VALUES (1,1,'General',4,1),(2,2,'General',4,1),(3,3,'General',4,1),(4,9,'General',1,1),(7,12,'General Information',10,1),(9,9,'Prices',2,0),(12,9,'Meta Information',3,0),(15,9,'Images',4,0),(17,23,'General',3,1),(18,24,'General',3,1),(19,25,'General',3,1),(20,26,'General',3,1),(21,27,'General',3,1),(22,28,'General',3,1),(23,18,'General',2,1),(24,20,'General',2,1),(25,21,'General',2,1),(26,22,'General',2,1),(27,29,'General',3,1),(28,30,'General',3,1),(29,31,'General',3,1),(30,32,'General',3,1),(31,33,'General',3,1),(32,34,'General',3,1),(95,9,'Description',5,0),(118,9,'Design',6,0),(128,50,'General',1,1),(129,51,'General',1,1),(130,52,'General',1,1),(131,53,'General',1,1),(132,54,'General',1,1),(133,55,'General',1,1),(134,56,'General',1,1),(135,57,'General',1,1),(166,12,'Display Settings',20,0),(167,12,'Custom Design',30,0),(172,9,'Recurring Profile',7,0),(186,9,'Gift Options',8,0),(221,9,'Specs',9,0),(231,67,'Specifications',9,0),(232,67,'Gift Options',8,0),(233,67,'Recurring Profile',7,0),(234,67,'Design',6,0),(235,67,'Description',5,0),(236,67,'Images',4,0),(237,67,'Meta Information',3,0),(238,67,'Prices',2,0),(239,67,'General',1,1),(249,69,'Specifications',9,0),(250,69,'Gift Options',8,0),(251,69,'Recurring Profile',7,0),(252,69,'Design',6,0),(253,69,'Description',5,0),(254,69,'Images',4,0),(255,69,'Meta Information',3,0),(256,69,'Prices',2,0),(257,69,'General',1,1),(285,73,'Specs',9,0),(286,73,'Gift Options',8,0),(287,73,'Recurring Profile',7,0),(288,73,'Design',6,0),(289,73,'Description',5,0),(290,73,'Images',4,0),(291,73,'Meta Information',3,0),(292,73,'Prices',2,0),(293,73,'General',1,1),(294,74,'Specs',9,0),(295,74,'Gift Options',8,0),(296,74,'Recurring Profile',7,0),(297,74,'Design',6,0),(298,74,'Description',5,0),(299,74,'Images',4,0),(300,74,'Meta Information',3,0),(301,74,'Prices',2,0),(302,74,'General',1,1),(303,75,'Specs',9,0),(304,75,'Gift Options',8,0),(305,75,'Recurring Profile',7,0),(306,75,'Design',6,0),(307,75,'Description',5,0),(308,75,'Images',4,0),(309,75,'Meta Information',3,0),(310,75,'Prices',2,0),(311,75,'General',1,1),(312,76,'Specs',9,0),(313,76,'Gift Options',8,0),(314,76,'Recurring Profile',7,0),(315,76,'Design',6,0),(316,76,'Description',5,0),(317,76,'Images',4,0),(318,76,'Meta Information',3,0),(319,76,'Prices',2,0),(320,76,'General',1,1),(321,77,'Specs',9,0),(322,77,'Gift Options',8,0),(323,77,'Recurring Profile',7,0),(324,77,'Design',6,0),(325,77,'Description',5,0),(326,77,'Images',4,0),(327,77,'Meta Information',3,0),(328,77,'Prices',2,0),(329,77,'General',1,1),(330,78,'Specs',9,0),(331,78,'Gift Options',8,0),(332,78,'Recurring Profile',7,0),(333,78,'Design',6,0),(334,78,'Description',5,0),(335,78,'Images',4,0),(336,78,'Meta Information',3,0),(337,78,'Prices',2,0),(338,78,'General',1,1),(339,79,'Specs',9,0),(340,79,'Gift Options',8,0),(341,79,'Recurring Profile',7,0),(342,79,'Design',6,0),(343,79,'Description',5,0),(344,79,'Images',4,0),(345,79,'Meta Information',3,0),(346,79,'Prices',2,0),(347,79,'General',1,1),(357,81,'Specs',9,0),(358,81,'Gift Options',8,0),(359,81,'Recurring Profile',7,0),(360,81,'Design',6,0),(361,81,'Description',5,0),(362,81,'Images',4,0),(363,81,'Meta Information',3,0),(364,81,'Prices',2,0),(365,81,'General',1,1),(366,82,'Specs',9,0),(367,82,'Gift Options',8,0),(368,82,'Recurring Profile',7,0),(369,82,'Design',6,0),(370,82,'Description',5,0),(371,82,'Images',4,0),(372,82,'Meta Information',3,0),(373,82,'Prices',2,0),(374,82,'General',1,1),(375,83,'Specs',9,0),(376,83,'Gift Options',8,0),(377,83,'Recurring Profile',7,0),(378,83,'Design',6,0),(379,83,'Description',5,0),(380,83,'Images',4,0),(381,83,'Meta Information',3,0),(382,83,'Prices',2,0),(383,83,'General',1,1),(384,84,'Specs',9,0),(385,84,'Gift Options',8,0),(386,84,'Recurring Profile',7,0),(387,84,'Design',6,0),(388,84,'Description',5,0),(389,84,'Images',4,0),(390,84,'Meta Information',3,0),(391,84,'Prices',2,0),(392,84,'General',1,1),(393,85,'Specs',9,0),(394,85,'Gift Options',8,0),(395,85,'Recurring Profile',7,0),(396,85,'Design',6,0),(397,85,'Description',5,0),(398,85,'Images',4,0),(399,85,'Meta Information',3,0),(400,85,'Prices',2,0),(401,85,'General',1,1),(402,86,'Specs',9,0),(403,86,'Gift Options',8,0),(404,86,'Recurring Profile',7,0),(405,86,'Design',6,0),(406,86,'Description',5,0),(407,86,'Images',4,0),(408,86,'Meta Information',3,0),(409,86,'Prices',2,0),(410,86,'General',1,1),(411,87,'Specs',9,0),(412,87,'Gift Options',8,0),(413,87,'Recurring Profile',7,0),(414,87,'Design',6,0),(415,87,'Description',5,0),(416,87,'Images',4,0),(417,87,'Meta Information',3,0),(418,87,'Prices',2,0),(419,87,'General',1,1),(420,88,'Specs',9,0),(421,88,'Gift Options',8,0),(422,88,'Recurring Profile',7,0),(423,88,'Design',6,0),(424,88,'Description',5,0),(425,88,'Images',4,0),(426,88,'Meta Information',3,0),(427,88,'Prices',2,0),(428,88,'General',1,1),(429,89,'Specs',9,0),(430,89,'Gift Options',8,0),(431,89,'Recurring Profile',7,0),(432,89,'Design',6,0),(433,89,'Description',5,0),(434,89,'Images',4,0),(435,89,'Meta Information',3,0),(436,89,'Prices',2,0),(437,89,'General',1,1),(438,90,'Specs',9,0),(439,90,'Gift Options',8,0),(440,90,'Recurring Profile',7,0),(441,90,'Design',6,0),(442,90,'Description',5,0),(443,90,'Images',4,0),(444,90,'Meta Information',3,0),(445,90,'Prices',2,0),(446,90,'General',1,1),(447,91,'Specs',9,0),(448,91,'Gift Options',8,0),(449,91,'Recurring Profile',7,0),(450,91,'Design',6,0),(451,91,'Description',5,0),(452,91,'Images',4,0),(453,91,'Meta Information',3,0),(454,91,'Prices',2,0),(455,91,'General',1,1),(456,92,'Specs',9,0),(457,92,'Gift Options',8,0),(458,92,'Recurring Profile',7,0),(459,92,'Design',6,0),(460,92,'Description',5,0),(461,92,'Images',4,0),(462,92,'Meta Information',3,0),(463,92,'Prices',2,0),(464,92,'General',1,1),(474,94,'Specs',9,0),(475,94,'Gift Options',8,0),(476,94,'Recurring Profile',7,0),(477,94,'Design',6,0),(478,94,'Description',5,0),(479,94,'Images',4,0),(480,94,'Meta Information',3,0),(481,94,'Prices',2,0),(482,94,'General',1,1),(483,95,'Specs',9,0),(484,95,'Gift Options',8,0),(485,95,'Recurring Profile',7,0),(486,95,'Design',6,0),(487,95,'Description',5,0),(488,95,'Images',4,0),(489,95,'Meta Information',3,0),(490,95,'Prices',2,0),(491,95,'General',1,1),(492,96,'Specs',9,0),(493,96,'Gift Options',8,0),(494,96,'Recurring Profile',7,0),(495,96,'Design',6,0),(496,96,'Description',5,0),(497,96,'Images',4,0),(498,96,'Meta Information',3,0),(499,96,'Prices',2,0),(500,96,'General',1,1),(501,97,'Specs',9,0),(502,97,'Gift Options',8,0),(503,97,'Recurring Profile',7,0),(504,97,'Design',6,0),(505,97,'Description',5,0),(506,97,'Images',4,0),(507,97,'Meta Information',3,0),(508,97,'Prices',2,0),(509,97,'General',1,1),(510,98,'Specs',9,0),(511,98,'Gift Options',8,0),(512,98,'Recurring Profile',7,0),(513,98,'Design',6,0),(514,98,'Description',5,0),(515,98,'Images',4,0),(516,98,'Meta Information',3,0),(517,98,'Prices',2,0),(518,98,'General',1,1),(519,99,'Specs',9,0),(520,99,'Gift Options',8,0),(521,99,'Recurring Profile',7,0),(522,99,'Design',6,0),(523,99,'Description',5,0),(524,99,'Images',4,0),(525,99,'Meta Information',3,0),(526,99,'Prices',2,0),(527,99,'General',1,1),(528,100,'Specs',9,0),(529,100,'Gift Options',8,0),(530,100,'Recurring Profile',7,0),(531,100,'Design',6,0),(532,100,'Description',5,0),(533,100,'Images',4,0),(534,100,'Meta Information',3,0),(535,100,'Prices',2,0),(536,100,'General',1,1),(546,102,'Specs',9,0),(547,102,'Gift Options',8,0),(548,102,'Recurring Profile',7,0),(549,102,'Design',6,0),(550,102,'Description',5,0),(551,102,'Images',4,0),(552,102,'Meta Information',3,0),(553,102,'Prices',2,0),(554,102,'General',1,1),(555,103,'Specs',9,0),(556,103,'Gift Options',8,0),(557,103,'Recurring Profile',7,0),(558,103,'Design',6,0),(559,103,'Description',5,0),(560,103,'Images',4,0),(561,103,'Meta Information',3,0),(562,103,'Prices',2,0),(563,103,'General',1,1);
/*!40000 ALTER TABLE `eav_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:32
