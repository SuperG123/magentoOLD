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
-- Table structure for table `eav_attribute_label`
--

DROP TABLE IF EXISTS `eav_attribute_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`),
  CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1397 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eav_attribute_label`
--

LOCK TABLES `eav_attribute_label` WRITE;
/*!40000 ALTER TABLE `eav_attribute_label` DISABLE KEYS */;
INSERT INTO `eav_attribute_label` VALUES (1218,1038,1,'Stroke Length'),(1232,1054,1,'spec_vibration_measurment'),(1249,953,1,'Brand'),(1250,1084,1,'Cord Length'),(1294,1053,1,'Noice Level (dB)'),(1297,1087,1,'Tool Length'),(1307,965,1,'UPC'),(1308,1005,1,'Model#'),(1310,1007,1,'Battery'),(1311,1008,1,'Max. Watts Output'),(1312,1009,1,'Amperage'),(1313,1010,1,'Max. Motor HP'),(1314,1011,1,'Charge Time'),(1315,1012,1,'LED Light'),(1317,1014,1,'Base Diameter'),(1318,1015,1,'Orbit Diameter'),(1319,1016,1,'Pad Size'),(1320,1017,1,'Clutch'),(1321,1018,1,'Chuck Size'),(1322,1019,1,'Clutch Settings'),(1323,1020,1,'Chuck Type'),(1324,1021,1,'Speed Settings'),(1325,1022,1,'Drive Type'),(1326,1023,1,'Drive Size'),(1327,1024,1,'Spindle Thread'),(1328,1025,1,'Spindle Lock'),(1329,1026,1,'Collet Capacity'),(1330,1027,1,'Wire Cup Brush Size'),(1332,1029,1,'Blade Size'),(1333,1030,1,'Blade Side '),(1334,1031,1,'Arbor Size'),(1335,1032,1,'Max. Bevel Capacity'),(1336,1033,1,'Capacity at 45°'),(1337,1034,1,'Capacity at 50°'),(1338,1035,1,'Capacity at 90°'),(1339,1036,1,'Table Size'),(1340,1037,1,'Base Opening'),(1341,1039,1,'Miter Detents'),(1342,1040,1,'Oscillating Angle'),(1343,1041,1,'Soft Start'),(1344,1042,1,'No Load Speed'),(1345,1043,1,'Torque (lbs.)'),(1346,1044,1,'Blows/Min'),(1347,1045,1,'Impact Energy (ft-lbs)'),(1348,1046,1,'Chipping'),(1349,1047,1,'Switch'),(1350,1048,1,'Depth Adjustment Range'),(1351,1049,1,'Plunge Depth'),(1352,1050,1,'Vacuum Suction Pressure'),(1353,1051,1,'Air Volume (cfm)'),(1354,1052,1,'Air Temperature'),(1355,1055,1,'Vibration Control'),(1356,1056,1,'Max. Concrete Drilling Capacity'),(1357,1057,1,'Max. Masonry Drilling Capacity'),(1358,1058,1,'Max. Steel Drilling Capacity'),(1359,1059,1,'Max. Wood Drilling Capacity'),(1360,1060,1,'Max. Wood Spade Bit Capacity'),(1361,1061,1,'Max. Wood Hole Saw Capacity '),(1362,1062,1,'Max. Wood Self-Feed Capacity'),(1363,1063,1,'Max. Wood Auger Bit Capacity'),(1364,1064,1,'Max. Steel Auger Bit Capacity'),(1365,1065,1,'Max. Steel Twist Bit Capacity'),(1366,1066,1,'Max. Cutting Capacity'),(1367,1067,1,'Max. Wood Cutting Capacity'),(1368,1068,1,'Max. Aluminum Cutting Capacity'),(1369,1069,1,'Max. Mild Steel Cutting Capacity'),(1370,1070,1,'Max. Stainless Steel Cutting Capacity'),(1371,1071,1,'Max. Metal Cutting Capacity'),(1372,1073,1,'Capacity'),(1373,1074,1,'Material'),(1374,1075,1,'Accuracy'),(1375,1076,1,'Accuracy'),(1376,1077,1,'Laser Diode'),(1377,1078,1,'Leveling Type, Range'),(1378,1079,1,'Mount Threading'),(1379,1080,1,'Operating Temperature'),(1380,1081,1,'Planing Width'),(1381,1082,1,'Planing Depth'),(1382,1083,1,'Cord Type'),(1383,1085,1,'Compatible with'),(1384,1086,1,'Dimensions'),(1385,1088,1,'Tool Height'),(1386,1089,1,'Tool Weight (lbs.)'),(1387,1090,1,'shipping weight (lbs.)'),(1388,1091,1,'Bevel/Miter Capacity'),(1389,1092,1,'Diameter'),(1390,101,1,'Weight (lbs.)'),(1391,1028,1,'Wheel/Disc Size'),(1394,1098,1,'Wheel Size'),(1395,1013,1,'Paper Size/Type'),(1396,1006,1,'Voltage');
/*!40000 ALTER TABLE `eav_attribute_label` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:58
