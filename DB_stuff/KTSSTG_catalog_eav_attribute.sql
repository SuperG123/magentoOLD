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
-- Table structure for table `catalog_eav_attribute`
--

DROP TABLE IF EXISTS `catalog_eav_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `is_configurable` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Configurable',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  PRIMARY KEY (`attribute_id`),
  KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`),
  CONSTRAINT `FK_CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_eav_attribute`
--

LOCK TABLES `catalog_eav_attribute` WRITE;
/*!40000 ALTER TABLE `catalog_eav_attribute` DISABLE KEYS */;
INSERT INTO `catalog_eav_attribute` VALUES (96,NULL,0,1,1,0,0,0,0,1,0,1,1,1,'',1,1,0,1),(97,NULL,0,1,1,0,1,0,1,1,0,0,0,1,NULL,1,1,1,1),(98,NULL,1,1,1,0,1,0,0,1,0,0,0,1,'',1,1,0,1),(99,NULL,2,1,1,1,0,0,0,1,1,1,1,1,'simple,configurable,virtual,bundle,downloadable',1,0,0,1),(100,NULL,2,1,0,0,0,0,0,1,0,0,0,1,'simple,virtual,downloadable',0,1,0,1),(101,NULL,1,1,0,0,1,1,0,1,0,0,0,1,NULL,0,1,0,1),(102,NULL,1,1,1,1,1,0,0,1,1,0,0,1,'simple',0,1,0,1),(103,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(104,NULL,0,1,1,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(105,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(106,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(109,NULL,0,1,0,0,0,0,0,1,0,1,0,1,'',0,1,0,1),(110,NULL,1,0,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(111,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(112,NULL,0,1,0,0,0,0,1,1,0,0,0,1,'',0,1,1,1),(113,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(114,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(115,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(116,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(117,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(118,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(119,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(120,NULL,1,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(121,NULL,1,0,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(122,NULL,1,0,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(123,NULL,1,0,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(270,NULL,2,1,0,0,0,0,0,0,0,0,0,1,'simple,configurable,virtual,bundle,downloadable',0,1,0,0),(271,NULL,1,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(272,NULL,1,1,0,0,0,0,0,1,1,0,0,1,NULL,0,1,0,1),(273,NULL,2,1,1,0,0,0,0,1,0,1,0,1,'',0,1,0,1),(274,NULL,0,1,0,0,0,0,0,1,0,1,0,1,'simple,configurable,virtual,bundle,downloadable',0,1,0,1),(479,NULL,1,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(481,NULL,1,1,0,0,0,0,0,1,0,1,0,1,'',0,1,0,1),(492,NULL,0,1,1,0,1,1,1,1,0,0,0,1,'simple,grouped,configurable',0,1,1,1),(493,NULL,0,1,0,0,0,0,0,1,0,1,0,1,'',0,1,0,1),(503,NULL,0,0,0,0,0,0,0,1,0,0,0,1,'simple,configurable,virtual,bundle,downloadable',0,1,0,1),(506,NULL,0,1,1,0,1,0,1,1,0,1,0,1,NULL,0,1,1,1),(507,NULL,1,1,1,0,1,1,0,1,0,0,0,1,'simple,grouped,configurable',0,1,0,1),(514,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(526,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(530,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(531,NULL,1,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(533,NULL,0,0,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(562,'giftmessage/adminhtml_product_helper_form_config',1,1,0,0,0,0,0,1,0,0,0,0,'',0,1,0,1),(563,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(565,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(566,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(567,NULL,2,1,0,0,0,0,0,1,0,1,0,1,'simple,configurable,virtual,bundle,downloadable',0,1,0,1),(568,NULL,1,1,0,0,0,0,0,1,0,1,0,1,'simple,configurable,virtual,bundle,downloadable',0,1,0,1),(569,NULL,1,1,0,0,0,0,0,1,0,1,0,1,'simple,configurable,virtual,bundle,downloadable',0,1,0,1),(570,NULL,0,0,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(571,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(572,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(573,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(701,NULL,1,0,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(702,NULL,1,0,0,0,0,0,0,1,0,0,0,1,'',0,1,0,1),(703,NULL,1,1,0,0,0,0,0,1,0,0,0,1,NULL,0,1,0,1),(704,NULL,1,1,0,0,0,0,0,1,0,1,0,1,'',0,1,0,1),(705,NULL,1,1,0,0,0,0,0,1,0,1,0,1,'',0,1,0,1),(835,NULL,1,0,0,0,0,0,0,1,0,0,0,1,'',0,0,0,1),(836,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,0,0,1),(837,NULL,1,0,0,0,0,0,0,1,0,1,0,1,'',0,0,0,1),(838,NULL,1,0,0,0,0,0,0,1,0,0,0,1,'',0,0,0,1),(859,NULL,1,0,0,0,0,0,0,1,0,1,0,0,'bundle',0,0,0,1),(860,NULL,1,0,0,0,0,0,0,1,0,0,0,0,'bundle',0,0,0,1),(861,NULL,1,0,0,0,0,0,0,1,0,1,0,0,'bundle',0,0,0,1),(862,NULL,1,1,0,0,0,0,0,1,0,1,0,0,'bundle',0,0,0,1),(863,NULL,1,0,0,0,0,0,0,1,0,1,0,0,'bundle',0,0,0,1),(879,NULL,0,0,0,0,0,0,0,1,1,1,0,0,'',0,0,0,1),(880,NULL,0,0,0,0,0,0,0,1,1,1,0,0,'',0,0,0,1),(881,NULL,0,0,0,0,0,0,0,1,1,1,0,0,'',0,0,0,1),(903,NULL,1,1,0,0,0,0,0,1,0,0,0,0,NULL,0,0,0,1),(904,NULL,1,0,0,0,0,0,0,1,1,1,0,0,'downloadable',0,0,0,1),(905,NULL,0,0,0,0,0,0,0,1,1,0,0,0,'downloadable',0,0,0,1),(906,NULL,0,0,0,0,0,0,0,1,1,0,0,0,'downloadable',0,0,0,1),(927,'adminhtml/catalog_category_helper_sortby_available',0,1,0,0,0,0,0,1,0,0,0,1,'',0,0,0,1),(928,'adminhtml/catalog_category_helper_sortby_default',0,1,0,0,0,0,0,1,0,0,0,1,'',0,0,0,1),(929,NULL,0,1,0,0,0,0,0,1,0,0,0,1,'',0,0,0,1),(930,NULL,1,0,0,0,0,0,0,1,0,0,0,1,'',0,0,0,1),(931,NULL,1,0,0,0,0,0,0,1,0,0,0,1,'',0,0,0,1),(932,NULL,0,1,0,0,0,0,0,0,0,0,0,1,'',0,0,0,0),(933,NULL,1,1,0,0,0,0,0,0,0,0,0,0,'simple,virtual',0,0,0,0),(934,NULL,1,1,0,0,0,0,0,0,0,0,0,0,'simple,virtual',0,0,0,0),(935,NULL,0,1,0,0,0,0,0,0,0,0,0,1,'',0,0,0,0),(936,NULL,0,1,0,0,0,0,0,0,0,0,0,1,'',0,0,0,0),(937,'adminhtml/catalog_category_helper_pricestep',0,1,0,0,0,0,0,0,0,0,0,1,'',0,0,0,0),(938,NULL,2,1,0,0,0,0,0,0,0,0,0,0,'simple,configurable,bundle,grouped',0,0,0,0),(939,'adminhtml/catalog_product_helper_form_msrp_enabled',2,1,0,0,0,0,0,0,0,1,0,1,'simple,bundle,configurable,virtual,downloadable',0,0,0,0),(940,'adminhtml/catalog_product_helper_form_msrp_price',2,1,0,0,0,0,0,0,0,1,0,1,'simple,bundle,configurable,virtual,downloadable',0,0,0,0),(941,NULL,2,1,0,0,0,0,0,0,0,1,0,1,'simple,bundle,configurable,virtual,downloadable',0,0,0,0),(950,NULL,1,0,0,0,0,0,0,0,0,1,0,0,'downloadable',0,0,0,0),(951,NULL,0,1,0,0,0,0,0,0,0,0,0,1,NULL,0,0,0,0),(952,NULL,1,1,0,0,0,0,0,0,0,1,0,0,NULL,0,0,0,0),(953,NULL,0,1,0,0,0,0,1,0,0,0,0,0,NULL,0,0,0,0),(964,NULL,1,1,0,0,0,1,1,0,0,0,0,0,NULL,0,0,1,0),(965,NULL,1,1,0,0,0,1,1,0,0,0,0,0,NULL,0,0,0,0),(1003,NULL,2,1,0,0,0,0,0,0,0,0,0,1,'simple,configurable,virtual,bundle,downloadable',0,0,0,0),(1005,NULL,1,1,1,0,0,1,1,0,0,0,0,0,NULL,0,0,0,0),(1006,NULL,1,1,1,0,1,1,1,0,0,1,0,0,NULL,1,0,0,0),(1007,NULL,1,1,0,0,0,1,1,0,0,0,0,0,NULL,0,0,0,0),(1008,NULL,1,1,0,0,0,1,1,0,0,0,0,0,NULL,0,0,0,0),(1009,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1010,NULL,0,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1011,NULL,0,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1012,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1013,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1014,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1015,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1016,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1017,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1018,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1019,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1020,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1021,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1022,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1023,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1024,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1025,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1026,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1027,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1028,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,1,0,0,0),(1029,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1030,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1031,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1032,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1033,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1034,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1035,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1036,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1037,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1038,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1039,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1040,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1041,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1042,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1043,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1044,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1045,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1046,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1047,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1048,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1049,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1050,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1051,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1052,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1053,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1054,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1055,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1056,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1057,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1058,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1059,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1060,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1061,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1062,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1063,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1064,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1065,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1066,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1067,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1068,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1069,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1070,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1071,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1073,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1074,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1075,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1076,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1077,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1078,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1079,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1080,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1081,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1082,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1083,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1084,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1085,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1086,NULL,0,1,0,0,0,0,1,0,0,0,0,0,NULL,0,0,0,0),(1087,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1088,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1089,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1090,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1091,NULL,0,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,1,0),(1092,NULL,1,1,0,0,1,1,1,0,0,0,0,0,NULL,0,0,0,0),(1093,NULL,1,1,0,0,0,0,1,0,0,0,0,0,NULL,0,0,0,0),(1094,NULL,1,1,0,0,0,0,1,0,0,0,0,0,NULL,0,0,0,0),(1095,NULL,1,1,0,0,0,0,1,0,0,0,0,0,NULL,0,0,0,0),(1096,NULL,1,1,0,0,0,0,1,0,0,0,0,0,NULL,0,0,0,0),(1097,NULL,1,1,0,0,0,0,1,0,0,0,0,0,NULL,0,0,0,0),(1098,NULL,1,1,0,1,0,0,1,0,1,0,0,0,NULL,0,0,0,0);
/*!40000 ALTER TABLE `catalog_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:43
