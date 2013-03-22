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
-- Table structure for table `sales_flat_quote`
--

DROP TABLE IF EXISTS `sales_flat_quote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_flat_quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `IDX_SALES_FLAT_QUOTE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_FLAT_QUOTE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_flat_quote`
--

LOCK TABLES `sales_flat_quote` WRITE;
/*!40000 ALTER TABLE `sales_flat_quote` DISABLE KEYS */;
INSERT INTO `sales_flat_quote` VALUES (1,1,'2012-09-17 18:34:52','2011-09-24 05:40:11',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',710.0000,710.0000,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'10.168.1.31',NULL,NULL,NULL,NULL,710.0000,710.0000,710.0000,710.0000,NULL,1,0,NULL,NULL,0),(2,1,'2011-09-24 06:09:22','2011-09-24 06:09:22',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',0.0000,0.0000,NULL,2,3,1,'rwolfer1@yahoo.com',NULL,'Robert',NULL,'Wolfer',NULL,NULL,NULL,1,0,NULL,'10.168.1.187',NULL,NULL,NULL,NULL,0.0000,0.0000,0.0000,0.0000,NULL,1,0,NULL,NULL,0),(3,1,'2013-01-24 00:01:34','2011-10-06 07:06:43',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',2.9900,2.9900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'10.168.1.53',NULL,NULL,NULL,NULL,2.9900,2.9900,2.9900,2.9900,NULL,1,0,NULL,NULL,0),(4,1,'2013-01-24 00:01:34','2011-10-08 06:56:00',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',191.4500,191.4500,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'10.168.1.145',NULL,NULL,NULL,NULL,191.4500,191.4500,191.4500,191.4500,NULL,1,0,NULL,NULL,0),(5,1,'2013-01-24 00:01:29','2011-10-11 00:43:48',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',179.0000,179.0000,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'10.168.1.145',NULL,NULL,NULL,NULL,179.0000,179.0000,179.0000,179.0000,NULL,1,0,NULL,NULL,0),(6,1,'2011-10-18 05:44:05','2011-10-18 06:09:45',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',0.0000,0.0000,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'10.168.1.145',NULL,NULL,NULL,NULL,0.0000,0.0000,0.0000,0.0000,NULL,1,0,NULL,NULL,0),(7,1,'2013-01-24 00:01:33','2012-02-25 05:07:37',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',299.9900,299.9900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'192.168.8.115',NULL,NULL,NULL,NULL,299.9900,299.9900,299.9900,299.9900,NULL,1,0,NULL,NULL,0),(8,1,'2013-01-24 00:01:32','2012-03-02 07:05:29',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',189.9900,189.9900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'192.168.8.108',NULL,NULL,NULL,NULL,189.9900,189.9900,189.9900,189.9900,NULL,1,0,NULL,NULL,0),(9,1,'2012-03-27 05:26:42','2012-03-27 05:26:43',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',449.9900,449.9900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'192.168.8.108',NULL,NULL,NULL,NULL,449.9900,449.9900,449.9900,449.9900,NULL,1,0,NULL,NULL,0),(10,1,'2012-04-06 02:15:53','2012-04-06 02:16:27',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',0.0000,0.0000,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'192.168.8.224',NULL,NULL,NULL,NULL,0.0000,0.0000,0.0000,0.0000,NULL,1,0,NULL,NULL,0),(11,1,'2012-05-04 06:52:48','2012-05-04 06:52:50',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',299.0000,299.0000,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'192.168.8.224',NULL,NULL,NULL,NULL,299.0000,299.0000,299.0000,299.0000,NULL,1,0,NULL,NULL,0),(12,1,'2012-05-26 07:55:47','2012-05-26 07:55:54',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'192.168.8.231',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(13,1,'2013-01-24 00:01:33','2012-05-30 03:58:52',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',299.9900,299.9900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'192.168.8.231',NULL,NULL,NULL,NULL,299.9900,299.9900,299.9900,299.9900,NULL,1,0,NULL,NULL,0),(14,1,'2012-05-30 07:21:57','2012-05-30 07:22:45',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'192.168.8.231',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(15,1,'2012-05-30 07:25:00','2012-05-30 07:59:29',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'192.168.8.231',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(16,1,'2012-06-01 00:38:33','2012-06-01 01:34:57',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(17,1,'2012-06-01 01:39:00','2012-06-01 03:33:13',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(18,1,'2012-06-01 03:30:54','2012-06-01 03:36:20',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(19,1,'2012-06-01 06:10:49','2012-06-01 06:10:51',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(20,1,'2012-06-01 07:56:50','2012-06-01 07:58:50',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(21,1,'2012-06-02 03:17:48','2012-06-02 05:26:44',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(22,1,'2012-06-02 05:04:51','2012-06-02 05:53:33',NULL,1,0,0,3,3.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',2598.8800,2598.8800,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,2598.8800,2598.8800,2598.8800,2598.8800,NULL,1,0,NULL,NULL,0),(23,1,'2012-06-02 05:24:16','2012-06-02 05:24:17',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(24,1,'2012-06-02 07:15:11','2012-06-02 07:15:15',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',449.9900,449.9900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,449.9900,449.9900,449.9900,449.9900,NULL,1,0,NULL,NULL,0),(25,1,'2013-01-24 00:01:38','2012-06-02 07:58:43',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',499.9900,499.9900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,499.9900,499.9900,499.9900,499.9900,NULL,1,0,NULL,NULL,0),(26,1,'2012-06-04 23:46:51','2012-06-04 23:46:57',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(27,1,'2012-06-05 00:13:02','2012-06-05 00:13:04',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(28,1,'2012-06-26 05:10:53','2012-06-26 05:11:02',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(29,1,'2012-06-29 02:10:47','2012-06-29 02:10:47',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1699.8900,1699.8900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,1699.8900,1699.8900,1699.8900,1699.8900,NULL,1,0,NULL,NULL,0),(30,1,'2013-01-24 00:01:39','2012-11-03 01:31:09',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1.4900,1.4900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'127.0.0.1',NULL,NULL,NULL,NULL,1.4900,1.4900,1.4900,1.4900,NULL,1,1,NULL,NULL,0),(31,1,'2013-01-24 00:01:36','2012-12-27 07:56:31',NULL,0,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',26.6400,26.6400,'register',3,3,1,'robert.wolfer@etoolsrus.com',NULL,'Robert',NULL,'Wolfer',NULL,NULL,NULL,1,0,NULL,'64.134.231.74',NULL,'100000001','kuDykM9bjH8JesOzzv0bCA==',NULL,19.9900,19.9900,19.9900,19.9900,NULL,1,0,NULL,NULL,0),(32,1,'2013-01-29 01:41:42','2013-01-29 01:43:16',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',0.0000,0.0000,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'66.85.113.250',NULL,NULL,NULL,NULL,0.0000,0.0000,0.0000,0.0000,NULL,1,0,NULL,NULL,0),(33,1,'2013-02-09 02:26:05','2013-02-09 02:27:48',NULL,0,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',307.0200,307.0200,'guest',NULL,3,0,'rwolfer1@yahoo.com',NULL,'Robert',NULL,'Wolfer',NULL,NULL,NULL,1,1,NULL,'65.60.97.69',NULL,'100000002',NULL,NULL,279.0000,279.0000,279.0000,279.0000,NULL,1,0,NULL,NULL,0),(34,1,'2013-02-09 03:05:41','2013-02-09 03:07:17',NULL,0,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',133.8200,133.8200,NULL,4,3,1,'robert.wolfer@ucr.edu',NULL,'Robert',NULL,'Wolfer',NULL,NULL,NULL,1,0,NULL,'65.60.97.69',NULL,'100000003',NULL,NULL,119.0000,119.0000,119.0000,119.0000,NULL,1,0,NULL,NULL,0),(35,1,'2013-02-23 09:32:34','2013-02-23 13:53:30',NULL,1,0,0,6,6.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',1588.3900,1588.3900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'65.60.97.69',NULL,NULL,NULL,NULL,1588.3900,1588.3900,1588.3900,1588.3900,NULL,1,0,NULL,NULL,0),(36,1,'2013-02-23 09:38:42','2013-02-23 10:50:46',NULL,1,0,0,2,2.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',238.3900,238.3900,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'65.60.97.69',NULL,NULL,NULL,NULL,238.3900,238.3900,238.3900,238.3900,NULL,1,0,NULL,NULL,0),(37,1,'2013-02-23 10:47:40','2013-02-23 10:51:55',NULL,1,0,0,2,2.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',725.0000,725.0000,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'65.60.97.69',NULL,NULL,NULL,NULL,725.0000,725.0000,725.0000,725.0000,NULL,1,0,NULL,NULL,0),(38,1,'2013-02-26 13:20:22','2013-02-26 13:20:22',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',0.0000,0.0000,NULL,5,3,1,'raymmrtnz@gmail.com',NULL,'Ray',NULL,'Martinez',NULL,NULL,NULL,1,0,NULL,'65.60.97.69',NULL,NULL,NULL,NULL,0.0000,0.0000,0.0000,0.0000,NULL,1,0,NULL,NULL,0),(39,1,'2013-02-27 05:12:54','2013-02-27 05:13:32',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',229.0000,229.0000,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'65.60.97.69',NULL,NULL,NULL,NULL,229.0000,229.0000,229.0000,229.0000,NULL,1,0,NULL,NULL,0),(40,1,'2013-02-27 12:58:20','2013-02-27 13:22:32',NULL,1,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',229.0000,229.0000,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'65.60.97.69',NULL,NULL,NULL,NULL,229.0000,229.0000,229.0000,229.0000,NULL,1,0,NULL,NULL,0),(41,1,'2013-03-09 15:15:45','2013-03-09 15:19:39',NULL,0,0,0,1,1.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',495.3700,495.3700,'register',6,3,1,'raymond.martinez@etoolsrus.com',NULL,'Ray',NULL,'Martinez',NULL,NULL,NULL,1,0,NULL,'65.60.97.69',NULL,'100000004','NgSMdwF/9xQCyUskHh8W5A==',NULL,453.0000,453.0000,453.0000,453.0000,NULL,1,0,NULL,NULL,0),(42,1,'2013-03-12 00:13:04','2013-03-12 00:13:04',NULL,1,0,0,0,0.0000,0,1.0000,1.0000,1.0000,1.0000,'USD','USD','USD','USD',0.0000,0.0000,NULL,6,3,1,'raymond.martinez@etoolsrus.com',NULL,'Ray',NULL,'Martinez',NULL,NULL,NULL,1,0,NULL,'65.60.97.69',NULL,NULL,NULL,NULL,0.0000,0.0000,0.0000,0.0000,NULL,1,0,NULL,NULL,0);
/*!40000 ALTER TABLE `sales_flat_quote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:21
