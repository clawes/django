-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dj_backup
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.10.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(22,'Can add frequency',8,'add_frequency'),(23,'Can change frequency',8,'change_frequency'),(24,'Can delete frequency',8,'delete_frequency'),(25,'Can add location',9,'add_location'),(26,'Can change location',9,'change_location'),(27,'Can delete location',9,'delete_location'),(34,'Can add client',12,'add_client'),(35,'Can change client',12,'change_client'),(36,'Can delete client',12,'delete_client'),(37,'Can add migration history',13,'add_migrationhistory'),(38,'Can change migration history',13,'change_migrationhistory'),(39,'Can delete migration history',13,'delete_migrationhistory'),(40,'Can add method',14,'add_method'),(41,'Can change method',14,'change_method'),(42,'Can delete method',14,'delete_method'),(43,'Can add fileset',15,'add_fileset'),(44,'Can change fileset',15,'change_fileset'),(45,'Can delete fileset',15,'delete_fileset'),(46,'Can add pathname',16,'add_pathname'),(47,'Can change pathname',16,'change_pathname'),(48,'Can delete pathname',16,'delete_pathname');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$12000$WWo0x9n23rEd$NHRNk4S9x/RMQ0Ssx6zCmex6csRzYUTGFtiu9eRpd/Y=','2013-12-06 15:37:59',1,'admin','','','clawes@navtech.aero',1,1,'2013-12-05 20:50:35');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_client`
--

DROP TABLE IF EXISTS `backup_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `shortname` varchar(64) NOT NULL,
  `description` varchar(64) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `location_id` int(11) NOT NULL,
  `frequency_id` int(11) NOT NULL,
  `method_id` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `fileset_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `backup_client_afbb987d` (`location_id`),
  KEY `backup_client_80359b49` (`frequency_id`),
  KEY `backup_client_357939b5` (`method_id`),
  KEY `backup_client_f89d4928` (`fileset_id`),
  CONSTRAINT `fileset_id_refs_id_15bef812` FOREIGN KEY (`fileset_id`) REFERENCES `backup_fileset` (`id`),
  CONSTRAINT `frequency_id_refs_id_4b399275` FOREIGN KEY (`frequency_id`) REFERENCES `backup_frequency` (`id`),
  CONSTRAINT `location_id_refs_id_2a166f07` FOREIGN KEY (`location_id`) REFERENCES `backup_location` (`id`),
  CONSTRAINT `method_id_refs_id_4fbbc57e` FOREIGN KEY (`method_id`) REFERENCES `backup_method` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_client`
--

LOCK TABLES `backup_client` WRITE;
/*!40000 ALTER TABLE `backup_client` DISABLE KEYS */;
INSERT INTO `backup_client` VALUES (2,'hsnavykfarkeia.ykf.navtech.corp','hsnavykfarkeia','','10.12.5.12',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(3,'hsnavykffile1.ykf.navtech.corp','hsnavykffile1','','10.12.5.51',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(4,'hsnavykfdc1.ykf.navtech.corp','hsnavykfdc1','','10.12.5.10',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(5,'hsnavykfdc2.ykf.navtech.corp','hsnavykfdc2','','10.12.5.11',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(6,'hsnavykffa1.ykf.navtech.corp','hsnavykffa1','','10.12.5.93',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(7,'vmnavykfmsdb2.ykf.navtech.corp','vmnavykfmsdb2','','10.12.5.17',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(8,'vmnavykfmsdb1.ykf.navtech.corp','vmnavykfmsdb1','','10.12.5.64',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(9,'hsnavykfexch01.ykf.navtech.corp','hsnavykfexch01','','10.12.5.241',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(10,'hsnavykfwfs1.ykf.navtech.corp','hsnavykfwfs1','','10.12.5.46',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(11,'vmnavykfts3.ykf.navtech.corp','vmnavykfts3','','10.12.5.36',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(12,'hsnavykfts1.ykf.navtech.corp','hsnavykfts1','','10.12.5.41',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(13,'vmnavykfmks1.ykf.navtech.corp','vmnavykfmks1','','10.12.5.66',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(14,'vmnavykfroot3.navtech.corp','vmnavykfroot3','','10.12.5.44',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(15,'vmnavecharts.ykf.navtech.corp','vmnavecharts','','10.12.5.247',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(16,'pcnavykfbkup1.ykf.navtech.corp','pcnavykfbkup1','','10.12.12.242',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(17,'vmnavykfrads.ykf.navtech.corp','vmnavykfrads','','10.12.5.246',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(18,'pcnavykfops2.ykf.navtech.corp','pcnavykfops2','','10.12.12.76',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(19,'vmnavykfsophos.ykf.navtech.corp','vmnavykfsophos','','10.12.5.72',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(20,'hsnavstoedge01.sto.navtech.corp','hsnavstoedge01','','192.168.96.15',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(21,'pcccl2.ykf.navtech.corp','pcccl2','','10.12.12.41',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(22,'projects.navtech.aero','projects','','10.12.16.31',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(23,'hsnavykfsharepoint1.ykf.navtech.corp','hsnavykfsharepoint1','','10.12.5.25',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(24,'vmnavykfpmx.ykf.navtech.corp','vmnavykfpmx','','10.12.16.20',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(25,'pcnavykfops1.ykf.navtech.corp','pcnavykfops1','','10.12.12.130',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(26,'vmnavykfwds1.ykf.navtech.corp','vmnavykfwds1','','10.12.5.43',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(27,'lanavykfid.ykf.navtech.corp','lanavykfid','','10.12.12.21',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(28,'vmnavykfts5.ykf.navtech.corp','vmnavykfts5','','10.12.5.105',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',1),(29,'hsnavykfsecure.ykf.navtech.corp','hsnavykfsecure','','10.12.5.18',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',63),(30,'vmnavykfbes1.ykf.navtech.corp','vmnavykfbes1','','10.12.5.27',4,1,5,'','2013-12-06 15:04:19','2013-12-06 15:04:19',64);
/*!40000 ALTER TABLE `backup_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_fileset`
--

DROP TABLE IF EXISTS `backup_fileset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_fileset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileset_name` varchar(128) NOT NULL,
  `fileset_desc` varchar(128) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_fileset`
--

LOCK TABLES `backup_fileset` WRITE;
/*!40000 ALTER TABLE `backup_fileset` DISABLE KEYS */;
INSERT INTO `backup_fileset` VALUES (33,'Catalog','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(34,'Full Set','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(35,'Nearline','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(36,'XP_2K3-FileSet','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(37,'PassagePoint-FileSet','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(38,'MSDB2','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(39,'MSDB1-FileSet','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(40,'localhost','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(41,'WFS1-FileSet','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(42,'Exchange_FileSet','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(43,'GP-FileSet','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(44,'TS3-FileSet','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(45,'TS2-FileSet','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(46,'TS1-FileSet','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(47,'MKS-Fileset','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(48,'UsersShare-Fileset','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(49,'DeptsShare-Fileset','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(50,'eCharts-FileSet','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(51,'None','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(52,'File1-FileSet','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(53,'pcnavykfbkup1-fileset','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(54,'linux-fileset','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(55,'ldap-fileset','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(56,'Test_File1','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(57,'Ops-Fileset','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(58,'win2008-fileset','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(59,'redmine-fileset','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(60,'SharePoint-fileset','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(61,'mail-gw-fileset','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(62,'Test','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(63,'keyscan-backupset','','2013-12-06 15:04:30','2013-12-06 15:04:30'),(64,'BES-Backupset','','2013-12-06 15:04:30','2013-12-06 15:04:30');
/*!40000 ALTER TABLE `backup_fileset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_frequency`
--

DROP TABLE IF EXISTS `backup_frequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_frequency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frequency_name` varchar(32) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `frequency_desc` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_frequency`
--

LOCK TABLES `backup_frequency` WRITE;
/*!40000 ALTER TABLE `backup_frequency` DISABLE KEYS */;
INSERT INTO `backup_frequency` VALUES (1,'Once/Daily','2013-12-06 15:29:15','2013-12-06 15:29:15',''),(2,'Twice/Daily','2013-12-06 15:29:21','2013-12-06 15:29:21',''),(3,'Once/Weekly','2013-12-06 15:29:30','2013-12-06 15:29:30',''),(4,'Once/Monthly','2013-12-06 15:29:40','2013-12-06 15:29:40','');
/*!40000 ALTER TABLE `backup_frequency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_location`
--

DROP TABLE IF EXISTS `backup_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(20) NOT NULL,
  `location_desc` varchar(64) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_location`
--

LOCK TABLES `backup_location` WRITE;
/*!40000 ALTER TABLE `backup_location` DISABLE KEYS */;
INSERT INTO `backup_location` VALUES (1,'AMD','Ahmedabad, India','2013-12-06 15:26:26','2013-12-06 15:26:26'),(2,'LHR','Hersham, UK','2013-12-06 15:26:39','2013-12-06 15:26:39'),(3,'STO','Stockholm, Sweden','2013-12-06 15:26:51','2013-12-06 15:26:51'),(4,'YKF','Waterloo, Canada','2013-12-06 15:27:05','2013-12-06 15:27:05'),(5,'NAVYYZ','Toronto, Canada','2013-12-06 15:27:16','2013-12-06 15:27:16');
/*!40000 ALTER TABLE `backup_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_method`
--

DROP TABLE IF EXISTS `backup_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_name` varchar(32) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_method`
--

LOCK TABLES `backup_method` WRITE;
/*!40000 ALTER TABLE `backup_method` DISABLE KEYS */;
INSERT INTO `backup_method` VALUES (5,'Bacula','2013-12-06 15:28:25','2013-12-06 15:28:25'),(6,'Arkeia','2013-12-06 15:28:30','2013-12-06 15:28:30'),(7,'Rsync','2013-12-06 15:28:35','2013-12-06 15:28:35'),(8,'Mylvmbackup','2013-12-06 15:28:45','2013-12-06 15:28:45'),(9,'Mylvmbackup + Rsync','2013-12-06 15:28:58','2013-12-06 15:28:58');
/*!40000 ALTER TABLE `backup_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_pathname`
--

DROP TABLE IF EXISTS `backup_pathname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_pathname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(254) NOT NULL,
  `fileset_id` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `backup_pathname_f89d4928` (`fileset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_pathname`
--

LOCK TABLES `backup_pathname` WRITE;
/*!40000 ALTER TABLE `backup_pathname` DISABLE KEYS */;
INSERT INTO `backup_pathname` VALUES (86,'/opt/backup/bacula.sql',33,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(87,'/boot',34,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(88,'/root',34,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(89,'/etc',34,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(90,'/opt/bacula',34,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(91,'/nearline',35,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(92,'/etc',35,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(93,'/root',35,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(94,'C:/systemstate.bkf',36,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(95,'c:/scripts',36,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(96,'C:/systemstate.bkf',37,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(97,'C:/Documents and Settings',37,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(98,'C:/Program Files',37,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(99,'E:/mksdatabase',38,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(100,'C:/systemstate.bkf',39,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(101,'E:/backup',39,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(102,'/etc',40,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(103,'/boot',40,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(104,'/opt/backup',40,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(105,'/root',40,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(106,'E:/Users',41,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(107,'E:/Shares',41,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(108,'E:/SharePointBackup',41,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(109,'C:/',42,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(110,'E:/',42,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(111,'F:/',42,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(112,'C:/systemstate.bkf',43,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(113,'G:/DynacTools',43,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(114,'G:/GPShare',43,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(115,'G:/SQL Data/Backups',43,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(116,'C:/Users',44,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(117,'E:/',44,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(118,'C:/Documents and Settings',45,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(119,'C:/systemstate.bkf',45,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(120,'C:/Documents and Settings',46,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(121,'C:/Program Files/Microsoft Dynamics',46,'2013-12-06 14:27:10','2013-12-06 14:27:10'),(122,'C:/Program Files/Bacula',46,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(123,'C:/systemstate.bkf',46,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(124,'C:/scripts',46,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(125,'C:/DynacTools',46,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(126,'C:/',47,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(127,'E:/Users',48,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(128,'E:/Shares',49,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(129,'E:/SharePointBackup',49,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(130,'C:/systemstate.bkf',50,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(131,'D:/ECharts',50,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(132,'/coraid/rsync/servers',52,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(133,'/coraid/build_archive',52,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(134,'/root',52,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(135,'/etc',52,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(136,'/var/www',52,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(137,'/boot',52,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(138,'/etc',53,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(139,'/root',53,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(140,'/backup/nearline/HSNAVYKFEXCH01',53,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(141,'/boot',53,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(142,'/root',54,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(143,'/etc',54,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(144,'/var/www',54,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(145,'/boot',54,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(146,'/etc',55,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(147,'/usr/share/phpldapadmin',55,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(148,'/var/lib/ldap',55,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(149,'/var/www',55,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(150,'/root',55,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(151,'/etc',56,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(152,'/boot',56,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(153,'C:/Program Files',57,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(154,'C:/Users',57,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(155,'C:/Users',58,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(156,'/var/www',59,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(157,'/root',59,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(158,'/etc',59,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(159,'/opt/backup',59,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(160,'C:/systemstate.bkf',60,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(161,'c:/inetpub',60,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(162,'e:/backup',60,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(163,'/etc',61,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(164,'/opt/pmx6',61,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(165,'/var/www',61,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(166,'C:/Users/clawes_admin',62,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(167,'c:/systemstate.bkf',63,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(168,'c:/Program Files',63,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(169,'C:/systemstate.bkf',64,'2013-12-06 14:27:11','2013-12-06 14:27:11'),(170,'C:/Program Files/Research In Motion',64,'2013-12-06 14:27:11','2013-12-06 14:27:11');
/*!40000 ALTER TABLE `backup_pathname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-12-05 20:51:40',1,9,'1','Location object',1,''),(2,'2013-12-05 20:51:52',1,9,'2','Location object',1,''),(3,'2013-12-05 20:52:10',1,9,'3','Location object',1,''),(4,'2013-12-05 20:52:46',1,9,'4','Location object',1,''),(5,'2013-12-05 21:06:32',1,9,'4','Location object',2,'Changed location_desc.'),(6,'2013-12-05 21:06:54',1,9,'4','Location object',2,'Changed location_desc.'),(7,'2013-12-06 15:26:26',1,9,'1','AMD',1,''),(8,'2013-12-06 15:26:39',1,9,'2','LHR',1,''),(9,'2013-12-06 15:26:51',1,9,'3','STO',1,''),(10,'2013-12-06 15:27:05',1,9,'4','YKF',1,''),(11,'2013-12-06 15:27:16',1,9,'5','NAVYYZ',1,''),(12,'2013-12-06 15:27:32',1,14,'1','Once/Daily',1,''),(13,'2013-12-06 15:27:40',1,14,'2','Twice/Daily',1,''),(14,'2013-12-06 15:27:52',1,14,'3','Once/Weekly',1,''),(15,'2013-12-06 15:28:00',1,14,'4','Once/Monthly',1,''),(16,'2013-12-06 15:28:15',1,14,'4','Once/Monthly',3,''),(17,'2013-12-06 15:28:15',1,14,'3','Once/Weekly',3,''),(18,'2013-12-06 15:28:15',1,14,'2','Twice/Daily',3,''),(19,'2013-12-06 15:28:15',1,14,'1','Once/Daily',3,''),(20,'2013-12-06 15:28:25',1,14,'5','Bacula',1,''),(21,'2013-12-06 15:28:30',1,14,'6','Arkeia',1,''),(22,'2013-12-06 15:28:35',1,14,'7','Rsync',1,''),(23,'2013-12-06 15:28:45',1,14,'8','Mylvmbackup',1,''),(24,'2013-12-06 15:28:58',1,14,'9','Mylvmbackup + Rsync',1,''),(25,'2013-12-06 15:29:15',1,8,'1','Once/Daily',1,''),(26,'2013-12-06 15:29:21',1,8,'2','Twice/Daily',1,''),(27,'2013-12-06 15:29:30',1,8,'3','Once/Weekly',1,''),(28,'2013-12-06 15:29:40',1,8,'4','Once/Monthly',1,''),(29,'2013-12-06 15:30:54',1,12,'1','hsnavykfsecure',1,''),(30,'2013-12-06 15:38:28',1,12,'1','hsnavykfsecure',2,'Changed data.'),(31,'2013-12-06 15:38:42',1,12,'1','hsnavykfsecure',2,'No fields changed.'),(32,'2013-12-06 18:21:15',1,12,'1','hsnavykfsecure',3,''),(33,'2013-12-06 20:04:56',1,12,'30','vmnavykfbes1.ykf.navtech.corp',2,'Changed fileset.'),(34,'2013-12-06 20:05:10',1,12,'29','hsnavykfsecure.ykf.navtech.corp',2,'Changed fileset.'),(35,'2013-12-06 20:18:13',1,12,'30','vmnavykfbes1.ykf.navtech.corp',2,'No fields changed.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(8,'frequency','backup','frequency'),(9,'location','backup','location'),(12,'client','backup','client'),(13,'migration history','south','migrationhistory'),(14,'method','backup','method'),(15,'fileset','backup','fileset'),(16,'pathname','backup','pathname');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('issv4csc5pz2h3z55l32p15qvtjd2uvi','OTY4NTQ3MWU1NmQxNDhhZjJlODYyNGM1ZmQ1NzBjMjlmNTM0OGI1OTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2013-12-20 15:13:01'),('lc4lacaznli7rant3ip4i85e8m4r8h8o','OTY4NTQ3MWU1NmQxNDhhZjJlODYyNGM1ZmQ1NzBjMjlmNTM0OGI1OTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2013-12-19 20:51:26'),('xjg4wxe58s92o89147orpeswim9v0qe0','OTY4NTQ3MWU1NmQxNDhhZjJlODYyNGM1ZmQ1NzBjMjlmNTM0OGI1OTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2013-12-20 15:37:59');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'backup','0001_initial','2013-12-06 14:37:49'),(2,'backup','0002_auto__add_field_frequency_frequency_desc','2013-12-06 14:40:26'),(3,'backup','0003_auto__del_field_frequency_frequency_desc','2013-12-06 14:43:09'),(4,'backup','0004_auto__add_field_filesets_updated_on__add_field_filesets_created_on__ad','2013-12-06 15:08:24'),(5,'backup','0005_auto__del_methods__add_method__del_field_client_method_id__del_field_c','2013-12-06 15:21:19'),(6,'backup','0006_initial','2013-12-06 15:25:03'),(7,'backup','0007_auto__chg_field_client_data','2013-12-06 15:37:19'),(8,'backup','0008_auto__del_field_client_ip__del_field_client_os','2013-12-06 17:56:02'),(9,'backup','0009_auto__del_filesets__del_pathnames__add_fileset__add_pathname','2013-12-06 18:54:35'),(10,'backup','0010_auto__del_field_fileset_fileset_id__add_field_fileset_id','2013-12-06 19:12:09'),(11,'backup','0011_initial','2013-12-06 19:12:09'),(12,'backup','0012_initial','2013-12-06 19:12:09'),(13,'backup','0013_initial','2013-12-06 19:12:09'),(14,'backup','0014_initial','2013-12-06 19:12:58'),(15,'backup','0015_auto__add_field_fileset_fileset_desc','2013-12-06 19:14:04'),(16,'backup','0016_auto__add_field_frequency_frequency_desc','2013-12-06 19:16:34'),(17,'backup','0017_auto__add_field_client_fileset','2013-12-06 19:57:41'),(18,'backup','0018_auto__del_field_client_fileset','2013-12-06 19:57:41'),(19,'backup','0019_auto__add_field_client_fileset','2013-12-06 19:58:39'),(20,'backup','0020_auto__del_field_client_schedule','2013-12-06 20:18:39');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-06 16:20:20
