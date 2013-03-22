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
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status',
  `first_customer_id` int(10) unsigned DEFAULT NULL COMMENT 'First Customer Id',
  `first_store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'First Store Id',
  PRIMARY KEY (`tag_id`) USING BTREE,
  KEY `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`first_customer_id`),
  KEY `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` (`first_store_id`),
  CONSTRAINT `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`first_customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`first_store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'bed',1,1,1),(2,'trendy',1,1,1),(3,'wood',1,1,1),(4,'young',1,1,1),(5,'hip',1,1,1),(6,'Excellent',1,1,1),(7,'Furniture',1,1,1),(8,'modern',1,1,1),(9,'pocket',1,1,1),(10,'clean',1,1,1),(11,'apple',1,1,1),(12,'cool',1,1,1),(13,'universal',1,1,1),(14,'clogs',1,1,1),(15,'outdoor',1,1,1),(16,'green',1,1,1),(17,'bones',1,1,1),(18,'pda',1,1,1),(19,'slider',1,1,1),(20,'mobile',1,1,1),(21,'joe',1,1,1),(22,'laces',1,1,1),(23,'Camera',1,1,2),(24,'charger',1,1,2),(25,'Geil',1,1,2),(26,'crackberry',1,1,1),(27,'SEXY',1,1,1),(28,'tight',1,1,1),(29,'Test',1,1,1),(30,'red',1,1,1),(31,'sandals',1,1,1),(32,'design',1,1,1),(33,'ugly',1,1,1),(34,'rubber',1,1,1),(35,'light',1,1,1),(36,'monikas',1,1,1),(37,'t-shirt',1,1,1),(38,'test,',1,1,1),(39,'Sportsshoes',1,1,1),(40,'very',1,1,1),(41,'good',1,1,1),(42,'phone',1,1,1),(43,'favorite',1,1,1),(44,'shoe',1,1,1),(45,'shirt',1,1,1),(46,'monkeybutt',1,1,1),(47,'pizzamonkey',1,1,1),(48,'silver',1,1,1),(49,'black',1,1,1),(50,'sony',1,1,1),(51,'laptop',1,1,1),(52,'compact',1,1,1),(53,'small screen',1,1,1),(54,'tee-shirt',1,1,1),(55,'computer',1,1,1),(56,'shoes',1,1,1),(57,'sandale',1,1,1),(58,'tina',1,1,1),(59,'brown',1,1,1),(60,'lova',1,1,1),(61,'Tag',1,1,1),(62,'toes',-1,1,1),(63,'mniam',1,1,1),(64,'couch',1,1,1),(65,'chair',1,1,1),(66,'sandals,',1,1,1),(67,'blue,',1,1,1),(68,'shoes,',1,1,1),(69,'small',1,1,1),(70,'nice',1,1,1),(71,'badassness',1,1,1),(72,'cellotastic',1,1,1),(73,'macbook',1,1,1),(74,'mac',1,1,1),(75,'thongs',1,1,1),(76,'bla',1,1,3),(77,'notebook',1,1,2),(78,'phonex',1,1,1),(79,'süper',1,1,1),(80,'testing',1,1,1),(81,'awesome',1,1,1),(82,'holeys',1,1,1),(83,'Innovate',1,1,1),(84,'buenisimo',1,1,1),(85,'laptopik',1,1,1),(86,'rouge',1,1,1),(87,'modern,',1,1,1),(88,'moderne',1,1,1),(89,'blue',1,1,1),(90,'sandally',1,1,1),(91,'zoom',1,1,1),(92,'amazing',1,1,1),(93,'acer',1,1,1),(94,'portable',1,1,1),(95,'nippley',1,1,1),(96,'headless',1,1,1),(97,'prettyboy',1,1,1),(98,'grey',1,1,1),(99,'pouffe',1,1,1),(100,'teste',1,1,1),(101,'photography',1,1,1),(102,'handy',1,1,2),(103,'strange',1,1,2),(104,'skeleton',1,1,2),(105,'terry\'s',1,1,1),(106,'green,',1,1,1),(107,'sexy,',1,1,1),(108,'hi',1,1,1),(109,'Hohoho',1,1,2),(110,'Image',1,1,1),(111,'canape',1,1,1),(112,'chic',1,1,1),(113,'dresser',1,1,1),(114,'lens',1,1,1),(115,'schoen',1,1,1),(116,'golf',1,1,1),(117,'philip',1,1,1),(118,'coconut',1,1,1),(119,'mytag',1,1,1),(120,'mesas',1,1,1),(121,'hideous',1,1,1),(122,'mystuff',1,1,1),(123,'user',1,1,1),(124,'shittt',1,1,1),(125,'sex',1,1,1),(126,'sucks',1,1,1),(127,'whynot',1,1,3),(128,'camera-photo',1,1,3),(129,'wow',1,1,1),(130,'kzyhu',1,1,1),(131,'badminded',1,1,2),(132,'noerd',1,1,2),(133,'square',1,1,1),(134,'beach',1,1,1),(135,'Core Duo',1,1,1),(136,'spray',1,1,1),(137,'paint',1,1,1),(138,'tempos',1,1,1),(139,'teacher',1,1,1),(140,'ATT',1,1,1),(141,'BlackBerry',1,1,1),(142,'gadget',1,1,1),(143,'pas',1,1,3),(144,'mal',1,1,3),(145,'SMUKKE',1,1,1),(146,'kurti',1,1,1),(147,'larum',1,1,1),(148,'try',1,0,0),(149,'WAAAAAOOO',1,1,1),(150,'portatil',1,1,1),(151,'CRAPOTO',1,1,3),(152,'Kamera,',1,1,2),(153,'Camera,',1,1,2),(154,'Olympus',1,1,2),(155,'Nine',1,1,1),(156,'West',1,1,1),(157,'Women\'s',1,1,1),(158,'Lucero',1,1,1),(159,'Pump',1,1,1),(160,'Web',1,1,1),(161,'browser',1,1,1),(162,'content,',1,1,1),(163,'messaging',1,1,1),(164,'sessions,',1,1,1),(165,'and',-1,1,1),(166,'attachments.',1,1,1),(167,'Anashria',1,1,1),(168,'Womens',1,1,1),(169,'Premier',1,1,1),(170,'Leather',1,1,1),(171,'Sandal',1,1,1),(172,'arbeit',-1,1,2),(173,'crap',1,1,1),(174,'Walkman',1,1,1),(175,'gift',1,1,1),(176,'for',-1,1,1),(177,'her',1,1,1),(178,'Hupe',1,1,1),(179,'sleek',-1,1,1),(180,'samsung',1,1,1),(181,'footrest',1,1,1),(182,'shit',1,1,1),(183,'jogging',1,1,1),(184,'cool t-shirt',1,1,1),(185,'must get',1,1,1),(186,'bright',1,1,2),(187,'cellphone',1,1,1),(188,'comfort',1,1,3),(189,'ferrari',1,1,1),(190,'shiny',1,1,1),(191,'toll',1,1,1),(192,'warm',1,1,1),(193,'SOFA',1,1,1),(194,'fast',1,1,1),(195,'emo',1,1,1),(196,'smart',1,1,1),(197,'Canon',1,1,3),(198,'appletoys',1,1,1);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:26
