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
-- Table structure for table `sales_flat_quote_item_option`
--

DROP TABLE IF EXISTS `sales_flat_quote_item_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_flat_quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`),
  CONSTRAINT `FK_5F20E478CA64B6891EA8A9D6C2735739` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_flat_quote_item_option`
--

LOCK TABLES `sales_flat_quote_item_option` WRITE;
/*!40000 ALTER TABLE `sales_flat_quote_item_option` DISABLE KEYS */;
INSERT INTO `sales_flat_quote_item_option` VALUES (1,1,3411,'info_buyRequest','a:3:{s:4:\"uenc\";s:68:\"aHR0cDovLzY1LjYwLjk3LjY4L2NhdGFsb2dzZWFyY2gvcmVzdWx0Lz9xPW1ha2l0YQ,,\";s:7:\"product\";s:4:\"3411\";s:3:\"qty\";i:1;}'),(2,2,3676,'info_buyRequest','a:3:{s:4:\"uenc\";s:68:\"aHR0cDovLzY1LjYwLjk3LjY4L2NhdGFsb2dzZWFyY2gvcmVzdWx0Lz9xPW1ha2l0YQ,,\";s:7:\"product\";s:4:\"3676\";s:3:\"qty\";i:1;}'),(3,3,3885,'info_buyRequest','a:4:{s:4:\"uenc\";s:156:\"aHR0cDovLzY1LjYwLjk3LjY4L2NvcmRsZXNzLXRvb2xzL2Rld2FsdC0xLTQtNm1tLTctMnYtY29yZGxlc3MtdHdvLXBvc2l0aW9uLXNjcmV3ZHJpdmVyLWtpdC1tZGFzaC1tb2RlbC1kdzkyMGstMi5odG1s\";s:7:\"product\";s:4:\"3885\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"0\";}'),(4,4,6175,'info_buyRequest','a:3:{s:4:\"uenc\";s:52:\"aHR0cDovLzY1LjYwLjk3LjY4L2NvcmRsZXNzLXRvb2xzLmh0bWw,\";s:7:\"product\";s:4:\"6175\";s:3:\"qty\";i:1;}'),(5,5,3885,'info_buyRequest','a:3:{s:4:\"uenc\";s:52:\"aHR0cDovLzY1LjYwLjk3LjY4L2NvcmRsZXNzLXRvb2xzLmh0bWw,\";s:7:\"product\";s:4:\"3885\";s:3:\"qty\";i:1;}'),(6,6,6202,'info_buyRequest','a:3:{s:4:\"uenc\";s:52:\"aHR0cDovLzY1LjYwLjk3LjY4L2NvcmRsZXNzLXRvb2xzLmh0bWw,\";s:7:\"product\";s:4:\"6202\";s:3:\"qty\";i:1;}'),(7,7,6176,'info_buyRequest','a:3:{s:4:\"uenc\";s:52:\"aHR0cDovLzY1LjYwLjk3LjY4L2NvcmRsZXNzLXRvb2xzLmh0bWw,\";s:7:\"product\";s:4:\"6176\";s:3:\"qty\";i:1;}'),(8,8,6220,'info_buyRequest','a:3:{s:4:\"uenc\";s:64:\"aHR0cDovLzY1LjYwLjk3LjY4L2NhdGVnb3JpZXMtcG93ZXItdG9vbHMuaHRtbA,,\";s:7:\"product\";s:4:\"6220\";s:3:\"qty\";i:1;}'),(9,9,6300,'info_buyRequest','a:3:{s:4:\"uenc\";s:64:\"aHR0cDovLzY1LjYwLjk3LjY4L2NhdGVnb3JpZXMtcG93ZXItdG9vbHMuaHRtbA,,\";s:7:\"product\";s:4:\"6300\";s:3:\"qty\";i:1;}'),(10,10,6215,'info_buyRequest','a:3:{s:4:\"uenc\";s:64:\"aHR0cDovLzY1LjYwLjk3LjY4L2NhdGVnb3JpZXMtcG93ZXItdG9vbHMuaHRtbA,,\";s:7:\"product\";s:4:\"6215\";s:3:\"qty\";i:1;}'),(11,11,6303,'info_buyRequest','a:3:{s:4:\"uenc\";s:64:\"aHR0cDovLzY1LjYwLjk3LjY4L2NhdGVnb3JpZXMtcG93ZXItdG9vbHMuaHRtbA,,\";s:7:\"product\";s:4:\"6303\";s:3:\"qty\";i:1;}'),(12,12,6220,'info_buyRequest','a:3:{s:4:\"uenc\";s:64:\"aHR0cDovLzY1LjYwLjk3LjY4L2NhdGVnb3JpZXMtcG93ZXItdG9vbHMuaHRtbA,,\";s:7:\"product\";s:4:\"6220\";s:3:\"qty\";i:1;}'),(13,13,5429,'info_buyRequest','a:4:{s:4:\"uenc\";s:92:\"aHR0cDovLzY1LjYwLjk3LjY4L21pbHdhdWtlZS1icnVzaGxlc3MtaW1wYWN0LWRyaXZlci0yNjUzLTIyY3QuaHRtbA,,\";s:7:\"product\";s:4:\"5429\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"0\";}'),(15,15,5429,'info_buyRequest','a:4:{s:4:\"uenc\";s:112:\"aHR0cDovLzY1LjYwLjk3LjY4L2NvcmRsZXNzLXRvb2xzL21pbHdhdWtlZS1icnVzaGxlc3MtaW1wYWN0LWRyaXZlci0yNjUzLTIyY3QuaHRtbA,,\";s:7:\"product\";s:4:\"5429\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"0\";}'),(16,16,5118,'info_buyRequest','a:3:{s:4:\"uenc\";s:76:\"aHR0cDovLzY1LjYwLjk3LjY4L2NhdGVnb3JpZXMtcG93ZXItdG9vbHMvY2hvcC1zYXdzLmh0bWw,\";s:7:\"product\";s:4:\"5118\";s:3:\"qty\";i:1;}');
/*!40000 ALTER TABLE `sales_flat_quote_item_option` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:27:58
