-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: scit_std_jobs
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `advertiser`
--

DROP TABLE IF EXISTS `advertiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertiser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professional_field` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `years_of_incorporation` int(11) DEFAULT 1,
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertiser`
--

LOCK TABLES `advertiser` WRITE;
/*!40000 ALTER TABLE `advertiser` DISABLE KEYS */;
INSERT INTO `advertiser` (`id`, `name`, `phone`, `email`, `password`, `website`, `description`, `address`, `professional_field`, `years_of_incorporation`, `status`) VALUES (1,'bb','0356985632','op@gmail.com','$2y$10$d.9/ooCPl8G9OU2BSM8wZ.FGBzjCLPdMr0.WPqNxcT2drckDeCWNq','ww','ee','ee','ww',5,1),(2,'bb','0356985632','ok@gmail.com','$2y$10$ZAcCBINDziNtNWXuKudTtO0KKlczzTFXs20Um4TJpOoF5HgXXbdR2','ww','ee','ee','ww',5,1),(3,'bb','0356985632','okl@gmail.com','$2y$10$2YV0DHRZapGEm3CdgvShGOenRbi/dFh.K7iAIeQKhGaIE597hfjVK','ww','ee','ee','ww',5,1),(4,'mm','0989098890','adv@gmail.com','$2y$10$lFOWvW2WkvV3vEZ7W00DDOTkWHq8.TggHzPnkbofjbP1TnbAzs3TW','jj','mm','mm','mm',8,1),(5,'bb','0356985632','okll@gmail.com','$2y$10$5RQFXqABa9KpkDtZRYhFJOV4UKW9kqBC6reiXJm545U4E5P9y.MvC','ww','ee','ee','ww',5,1),(6,'mmm','0989098890','m@gmail.com','$2y$10$oBWGunRd1rRroAkS1iwCgOROeggifQgvruZQsxEuzheMcNA.BuKx.','m','kk','mm','0pp',8,1),(7,'mm','0989098890','ad@gmail.com','$2y$10$667.p5uksuBWXFVP0toPguVC.kDpYEjz/7MPJqZG9tXHQqu9PEe/K','mm','m','mm','mm',8,1),(8,'mn','0989098098','ads@gmail.com','$2y$10$8n8YKdjj/h4AsREPmBwEoOAM6zaQDNtUR915c2TZJ6lB8MxxgpXfK','nn','mm','mm','mm',6,1),(9,'bb','0356985632','oklp@gmail.com','$2y$10$B2Epgpm2LZ1fPYAE1DihfOeypIN0t2/nVPXGo5t7sdqlk3fmUxd1G','ww','ee','ee','ww',5,1),(10,'bb','0356985632','add@gmail.com','$2y$10$UssLHlo54PRqzYNids2T.eKT0D6NBBGgBAzUihszOfkrw7LoUtBEO','w','ee','ee','w',5,1),(11,'nn','09890980','oka@gmail.com','$2y$10$eLdPIlKRT/SGyQGusVF9XuK4lR48DwWrocPnrenW7ybBZREY9BFsO','mmm','mmm','mm','mm',9,1),(12,'new','098909890','okad@gmail.com','$2y$10$vtu04f3/kakzlcYdLo2NyuWSjM8OisJGJ2EVOuMO8aF.5kWm/GfMm','mmm','lll','mm','ll',5,1),(13,'bb','0356985632','add1@gmail.com','$2y$10$I16V0.uyz6qe0U/VNatOguBiajeU6HDSavQviIBfs/Ar2lso4kGL6','ww','ee','ee','ww',5,1),(14,'bb','0356985632','advertiser@gmail.com','$2y$10$//lxsNljF1IRGjwzZ/xSguIx925cfXQa8D9UWFtTNuGW6r5mYXcya','ww','ee','ee','ww',5,1),(15,'bb','0356985632','oday@gmail.com','$2y$10$eiFJqIZfBB5KQ5bpwBSPseimkMBphVLu8/Xsh5Iu7feFsSyoW5z1y','ww','ee','ee','ww',5,1),(16,'bb','0356985632','oday1@gmail.com','$2y$10$XZL/jo3eUVrJXCXKY3mHHuXo41aL5SRDeXgQ6zHhcmAO20/PxKRwa','ww','ee','ee','ww',5,836839),(20,'bb','0356985632','oday.krayem.997@gmail.com','$2y$10$1uEHKo23Rj.x/LJIPG.cP.5QJI1SVkBbbQ2WvJr11.70emAE061PK','ww','ee','ee','ww',5,533023);
/*!40000 ALTER TABLE `advertiser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertiser_bills`
--

DROP TABLE IF EXISTS `advertiser_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertiser_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advertiser_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `is_paid` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertiser_bills`
--

LOCK TABLES `advertiser_bills` WRITE;
/*!40000 ALTER TABLE `advertiser_bills` DISABLE KEYS */;
INSERT INTO `advertiser_bills` (`id`, `advertiser_id`, `amount`, `is_paid`, `created_at`) VALUES (1,15,200,0,'2022-04-10 17:54:42'),(2,19,200,1,'2022-04-16 19:22:23'),(3,19,300,1,'2022-04-16 19:33:10');
/*!40000 ALTER TABLE `advertiser_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','voyager::seeders.data_rows.roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','text','Id',1,0,0,0,0,0,'{}',1),(23,4,'user_name','text','User Name',0,1,1,1,1,1,'{}',2),(24,4,'name','text','Name',0,1,1,1,1,1,'{}',3),(25,4,'nick_name','text','Nick Name',0,1,1,1,1,1,'{}',4),(26,4,'phone','text','Phone',0,1,1,1,1,1,'{}',5),(27,4,'email','text','Email',0,1,1,1,1,1,'{}',6),(28,4,'password','password','Password',0,0,1,1,1,1,'{}',7),(29,4,'birth_date','text','Birth Date',0,1,1,1,1,1,'{}',8),(30,4,'gender','text','Gender',0,1,1,1,1,1,'{}',9),(31,4,'study_type','text','Study Type',0,1,1,1,1,1,'{}',10),(32,4,'study_place','text','Study Place',0,1,1,1,1,1,'{}',11),(33,4,'study_start_date','text','Study Start Date',0,1,1,1,1,1,'{}',12),(34,4,'study_end_date','text','Study End Date',0,1,1,1,1,1,'{}',13),(35,4,'cv_url','file','Cv Url',0,1,1,1,1,1,'{}',14),(36,4,'status','text','Status',0,1,1,1,1,1,'{}',15),(37,5,'id','text','Id',1,0,0,0,0,0,'{}',1),(38,5,'name','text','Name',0,1,1,1,1,1,'{}',2),(39,5,'phone','text','Phone',0,1,1,1,1,1,'{}',3),(40,5,'email','text','Email',0,1,1,1,1,1,'{}',4),(41,5,'password','password','Password',0,0,1,1,1,1,'{}',5),(42,5,'website','text','Website',0,1,1,1,1,1,'{}',6),(43,5,'description','text','Description',0,1,1,1,1,1,'{}',7),(44,5,'address','text','Address',0,1,1,1,1,1,'{}',8),(45,5,'professional_field','text','Professional Field',0,1,1,1,1,1,'{}',9),(46,5,'years_of_incorporation','text','Years Of Incorporation',0,1,1,1,1,1,'{}',10),(47,5,'status','text','Status',0,1,1,1,1,1,'{}',11),(48,6,'id','text','Id',1,0,0,0,0,0,'{}',1),(49,6,'advertiser_id','text','Advertiser Id',0,1,1,1,1,1,'{}',2),(50,6,'title','text','Title',0,1,1,1,1,1,'{}',3),(51,6,'company_name','text','Company Name',0,1,1,1,1,1,'{}',4),(52,6,'job_location','text','Job Location',0,1,1,1,1,1,'{}',5),(53,6,'position','text','Position',0,1,1,1,1,1,'{}',6),(54,6,'required_skills','text','Required Skills',0,1,1,1,1,1,'{}',7),(55,6,'details','text','Details',0,1,1,1,1,1,'{}',8),(56,6,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',9),(57,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(58,7,'job_id','text','Job Id',0,1,1,1,1,1,'{}',2),(59,7,'student_id','text','Student Id',0,1,1,1,1,1,'{}',3),(60,7,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(61,7,'status','text','Status',0,1,1,1,1,1,'{}',5),(62,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(63,8,'student_id','text','Student Id',0,1,1,1,1,1,'{}',2),(64,8,'course_name','text','Course Name',0,1,1,1,1,1,'{}',3),(65,8,'institution','text','Institution',0,1,1,1,1,1,'{}',4),(66,8,'start_date','text','Start Date',0,1,1,1,1,1,'{}',5),(67,8,'end_date','text','End Date',0,1,1,1,1,1,'{}',6),(68,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(69,9,'user_id','text','User Id',0,1,1,1,1,1,'{}',2),(70,9,'interest_name','text','Interest Name',0,1,1,1,1,1,'{}',3),(71,10,'id','text','Id',1,0,0,0,0,0,'{}',1),(72,10,'student_id','text','Student Id',0,1,1,1,1,1,'{}',2),(73,10,'amount','text','Amount',0,1,1,1,1,1,'{}',3),(74,10,'is_paid','text','Is Paid',0,1,1,1,1,1,'{}',4),(75,10,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(76,11,'id','text','Id',1,0,0,0,0,0,'{}',1),(77,11,'advertiser_id','text','Advertiser Id',0,1,1,1,1,1,'{}',2),(78,11,'amount','text','Amount',0,1,1,1,1,1,'{}',3),(79,11,'is_paid','text','Is Paid',0,1,1,1,1,1,'{}',4),(80,11,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(81,8,'student_course_belongsto_student_relationship','relationship','Student',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Student\",\"table\":\"students\",\"type\":\"belongsTo\",\"column\":\"student_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"advertiser\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),(82,9,'student_interest_belongsto_student_relationship','relationship','Student',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Student\",\"table\":\"students\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"advertiser\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(84,11,'advertiser_bill_belongsto_advertiser_relationship','relationship','Advertiser',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Advertiser\",\"table\":\"advertiser\",\"type\":\"belongsTo\",\"column\":\"advertiser_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"advertiser\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(83,10,'student_bill_belongsto_student_relationship','relationship','Student',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Student\",\"table\":\"students\",\"type\":\"belongsTo\",\"column\":\"student_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"advertiser\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(85,6,'job_opportunity_belongsto_advertiser_relationship','relationship','Advertiser',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Advertiser\",\"table\":\"advertiser\",\"type\":\"belongsTo\",\"column\":\"advertiser_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"advertiser\",\"pivot\":\"0\",\"taggable\":\"0\"}',10),(86,7,'job_request_belongsto_job_opportunity_relationship','relationship','Job Opportunity',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\JobOpportunity\",\"table\":\"job_opportunities\",\"type\":\"belongsTo\",\"column\":\"job_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"advertiser\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(87,7,'job_request_belongsto_student_relationship','relationship','Student',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Student\",\"table\":\"students\",\"type\":\"belongsTo\",\"column\":\"student_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"advertiser\",\"pivot\":\"0\",\"taggable\":\"0\"}',7);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2022-04-17 08:48:43','2022-04-17 08:48:43'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2022-04-17 08:48:43','2022-04-17 08:48:43'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2022-04-17 08:48:43','2022-04-17 08:48:43'),(4,'students','students','Student','Students','voyager-person','App\\Models\\Student',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-04-17 08:56:18','2022-04-17 09:09:36'),(5,'advertiser','advertiser','Advertiser','Advertisers','voyager-person','App\\Models\\Advertiser',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-04-17 08:56:30','2022-04-17 09:09:27'),(6,'job_opportunities','job-opportunities','Job Opportunity','Job Opportunities','voyager-double-right','App\\Models\\JobOpportunity',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-04-17 08:56:49','2022-04-17 09:04:01'),(7,'job_requests','job-requests','Job Request','Job Requests','voyager-double-right','App\\Models\\JobRequest',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-04-17 08:57:02','2022-04-17 09:05:34'),(8,'student_courses','student-courses','Student Course','Student Courses','voyager-double-right','App\\Models\\StudentCourse',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-04-17 08:57:38','2022-04-17 09:06:02'),(9,'student_interests','student-interests','Student Interest','Student Interests',NULL,'App\\Models\\StudentInterest',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-04-17 08:57:52','2022-04-17 09:06:07'),(10,'student_bills','student-bills','Student Bill','Student Bills','voyager-double-right','App\\Models\\StudentBill',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-04-17 08:58:24','2022-04-17 09:05:56'),(11,'advertiser_bills','advertiser-bills','Advertiser Bill','Advertiser Bills','voyager-double-right','App\\Models\\AdvertiserBill',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-04-17 08:58:40','2022-04-17 09:03:40');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_opportunities`
--

DROP TABLE IF EXISTS `job_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_opportunities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advertiser_id` int(11) DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_location` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required_skills` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_opportunities`
--

LOCK TABLES `job_opportunities` WRITE;
/*!40000 ALTER TABLE `job_opportunities` DISABLE KEYS */;
INSERT INTO `job_opportunities` (`id`, `advertiser_id`, `title`, `company_name`, `job_location`, `position`, `required_skills`, `details`, `created_at`) VALUES (1,2,'jj','mmm','nn','lll','lll',';lll','2022-04-06 10:53:50'),(2,2,'o','o','l@gmail.com','00000000','0909890890','2022-02-02','2022-04-06 12:04:47'),(3,2,'o','o','l@gmail.com','00000000','0909890890','2022-02-02','2022-04-06 21:25:33'),(4,2,'jj','mmm','nn','lll','lll',';lll','2022-04-06 21:54:03'),(6,7,'new','new','new','new','new','new','2022-04-07 14:42:42'),(7,8,'new','new','n','m','mm','mm','2022-04-07 16:35:37'),(8,2,'o','o','l@gmail.com','00000000','0909890890','2022-02-02','2022-04-07 16:44:32'),(9,10,'new','new','nn','nn','nn','mm','2022-04-08 02:02:57'),(10,11,'job','job','location','mm','mm','mm','2022-04-09 00:37:12'),(11,11,'jobb','jobb','n','mn','mm','.mm','2022-04-09 23:01:23'),(12,14,'job','mmm','nn','lll','lll',';lll','2022-04-10 09:01:18'),(13,14,'o','o','mmm','00000000','0909890890','2022-02-02','2022-04-10 09:14:41'),(14,14,'job','mmm','nn','lll','lll',';lll','2022-04-10 09:15:59'),(15,15,'o','o','mmm','00000000','0909890890','2022-02-02','2022-04-10 09:18:43'),(17,15,'o','o','mmm','00000000','0909890890','2022-02-02','2022-04-10 09:38:00'),(18,15,'newjob','newjob','mm','mm','mm','mmm','2022-04-10 17:52:16');
/*!40000 ALTER TABLE `job_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_requests`
--

DROP TABLE IF EXISTS `job_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_requests`
--

LOCK TABLES `job_requests` WRITE;
/*!40000 ALTER TABLE `job_requests` DISABLE KEYS */;
INSERT INTO `job_requests` (`id`, `job_id`, `student_id`, `created_at`, `status`) VALUES (1,10,2,'2022-04-06 21:43:55',0),(3,4,2,'2022-04-07 16:44:28',0),(4,1,14,'2022-04-07 23:24:28',0),(5,2,14,'2022-04-07 23:24:47',0),(6,4,16,'2022-04-07 23:25:50',0),(7,1,14,'2022-04-07 23:26:58',0),(8,2,14,'2022-04-07 23:27:05',0),(9,4,16,'2022-04-07 23:38:56',0),(10,1,14,'2022-04-07 23:52:35',1),(11,9,17,'2022-04-08 02:17:36',1),(12,1,19,'2022-04-09 00:25:09',1),(13,10,18,'2022-04-09 00:37:32',0),(14,11,16,'2022-04-09 23:02:13',0),(15,12,18,'2022-04-10 09:01:55',0),(16,12,18,'2022-04-10 09:07:04',1),(17,12,18,'2022-04-10 09:11:20',0),(18,13,18,'2022-04-10 09:14:53',0),(19,14,18,'2022-04-10 09:16:47',0),(20,16,20,'2022-04-10 09:20:39',1),(21,17,20,'2022-04-10 09:38:18',-1),(22,12,18,'2022-04-10 17:10:28',0),(23,12,18,'2022-04-10 17:14:05',0),(24,12,18,'2022-04-10 17:15:53',0),(25,1,20,'2022-04-10 17:24:44',0),(26,1,20,'2022-04-10 17:43:21',0),(27,18,20,'2022-04-10 17:52:46',1),(28,1,27,'2022-04-16 22:19:28',0),(29,1,27,'2022-04-16 22:32:10',0),(30,1,25,'2022-04-18 18:29:47',0),(31,12,33,'2022-04-18 18:43:37',0),(32,4,33,'2022-04-18 18:46:13',0),(33,1,33,'2022-04-18 18:47:12',0),(34,6,33,'2022-04-18 18:47:17',0),(35,18,33,'2022-04-18 18:47:24',0),(36,1,33,'2022-04-18 18:47:31',0),(37,1,33,'2022-04-18 19:06:57',0),(38,6,33,'2022-04-18 19:07:36',0),(39,18,33,'2022-04-18 19:07:55',0),(40,3,33,'2022-04-18 19:39:11',0);
/*!40000 ALTER TABLE `job_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2022-04-17 08:48:43','2022-04-17 08:48:43','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2022-04-17 08:48:43','2022-04-17 09:00:02','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2022-04-17 08:48:43','2022-04-17 08:48:43','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2022-04-17 08:48:43','2022-04-17 08:48:43','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,5,'2022-04-17 08:48:43','2022-04-17 09:00:02',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2022-04-17 08:48:43','2022-04-17 09:00:02','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2022-04-17 08:48:43','2022-04-17 09:00:02','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2022-04-17 08:48:43','2022-04-17 09:00:02','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2022-04-17 08:48:43','2022-04-17 09:00:02','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,6,'2022-04-17 08:48:43','2022-04-17 09:00:02','voyager.settings.index',NULL),(11,1,'Students','','_self','voyager-person',NULL,NULL,7,'2022-04-17 08:56:18','2022-04-17 09:00:02','voyager.students.index',NULL),(12,1,'Advertisers','','_self','voyager-person',NULL,NULL,11,'2022-04-17 08:56:30','2022-04-17 09:00:07','voyager.advertiser.index',NULL),(13,1,'Job Opportunities','','_self','voyager-double-right',NULL,NULL,13,'2022-04-17 08:56:49','2022-04-17 09:00:11','voyager.job-opportunities.index',NULL),(14,1,'Job Requests','','_self','voyager-double-right',NULL,NULL,14,'2022-04-17 08:57:02','2022-04-17 09:00:11','voyager.job-requests.index',NULL),(15,1,'Student Courses','','_self','voyager-double-right',NULL,NULL,8,'2022-04-17 08:57:38','2022-04-17 09:00:02','voyager.student-courses.index',NULL),(16,1,'Student Interests','','_self','voyager-double-right','#000000',NULL,9,'2022-04-17 08:57:52','2022-04-17 09:00:04','voyager.student-interests.index','null'),(17,1,'Student Bills','','_self','voyager-double-right',NULL,NULL,10,'2022-04-17 08:58:24','2022-04-17 09:00:07','voyager.student-bills.index',NULL),(18,1,'Advertiser Bills','','_self','voyager-double-right',NULL,NULL,12,'2022-04-17 08:58:41','2022-04-17 09:00:11','voyager.advertiser-bills.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES (1,'admin','2022-04-17 08:48:43','2022-04-17 08:48:43');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (1,1),(1,2),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(26,2),(27,1),(27,2),(28,1),(28,2),(29,1),(29,2),(30,1),(30,2),(31,1),(31,2),(32,1),(32,2),(33,1),(33,2),(34,1),(34,2),(35,1),(35,2),(36,1),(36,2),(37,1),(37,2),(38,1),(38,2),(39,1),(39,2),(40,1),(40,2),(41,1),(41,2),(42,1),(42,2),(43,1),(43,2),(44,1),(44,2),(45,1),(45,2),(46,1),(46,2),(47,1),(47,2),(48,1),(48,2),(49,1),(49,2),(50,1),(50,2),(51,1),(51,2),(52,1),(52,2),(53,1),(53,2),(54,1),(54,2),(55,1),(55,2),(56,1),(56,2),(57,1),(57,2),(58,1),(58,2),(59,1),(59,2),(60,1),(60,2),(61,1),(61,2),(62,1),(62,2),(63,1),(63,2),(64,1),(64,2),(65,1),(65,2);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (1,'browse_admin',NULL,'2022-04-17 08:48:43','2022-04-17 08:48:43'),(2,'browse_bread',NULL,'2022-04-17 08:48:43','2022-04-17 08:48:43'),(3,'browse_database',NULL,'2022-04-17 08:48:43','2022-04-17 08:48:43'),(4,'browse_media',NULL,'2022-04-17 08:48:43','2022-04-17 08:48:43'),(5,'browse_compass',NULL,'2022-04-17 08:48:43','2022-04-17 08:48:43'),(6,'browse_menus','menus','2022-04-17 08:48:43','2022-04-17 08:48:43'),(7,'read_menus','menus','2022-04-17 08:48:43','2022-04-17 08:48:43'),(8,'edit_menus','menus','2022-04-17 08:48:43','2022-04-17 08:48:43'),(9,'add_menus','menus','2022-04-17 08:48:43','2022-04-17 08:48:43'),(10,'delete_menus','menus','2022-04-17 08:48:43','2022-04-17 08:48:43'),(11,'browse_roles','roles','2022-04-17 08:48:43','2022-04-17 08:48:43'),(12,'read_roles','roles','2022-04-17 08:48:43','2022-04-17 08:48:43'),(13,'edit_roles','roles','2022-04-17 08:48:43','2022-04-17 08:48:43'),(14,'add_roles','roles','2022-04-17 08:48:43','2022-04-17 08:48:43'),(15,'delete_roles','roles','2022-04-17 08:48:43','2022-04-17 08:48:43'),(16,'browse_users','users','2022-04-17 08:48:43','2022-04-17 08:48:43'),(17,'read_users','users','2022-04-17 08:48:43','2022-04-17 08:48:43'),(18,'edit_users','users','2022-04-17 08:48:43','2022-04-17 08:48:43'),(19,'add_users','users','2022-04-17 08:48:43','2022-04-17 08:48:43'),(20,'delete_users','users','2022-04-17 08:48:43','2022-04-17 08:48:43'),(21,'browse_settings','settings','2022-04-17 08:48:43','2022-04-17 08:48:43'),(22,'read_settings','settings','2022-04-17 08:48:43','2022-04-17 08:48:43'),(23,'edit_settings','settings','2022-04-17 08:48:43','2022-04-17 08:48:43'),(24,'add_settings','settings','2022-04-17 08:48:43','2022-04-17 08:48:43'),(25,'delete_settings','settings','2022-04-17 08:48:43','2022-04-17 08:48:43'),(26,'browse_students','students','2022-04-17 08:56:18','2022-04-17 08:56:18'),(27,'read_students','students','2022-04-17 08:56:18','2022-04-17 08:56:18'),(28,'edit_students','students','2022-04-17 08:56:18','2022-04-17 08:56:18'),(29,'add_students','students','2022-04-17 08:56:18','2022-04-17 08:56:18'),(30,'delete_students','students','2022-04-17 08:56:18','2022-04-17 08:56:18'),(31,'browse_advertiser','advertiser','2022-04-17 08:56:30','2022-04-17 08:56:30'),(32,'read_advertiser','advertiser','2022-04-17 08:56:30','2022-04-17 08:56:30'),(33,'edit_advertiser','advertiser','2022-04-17 08:56:30','2022-04-17 08:56:30'),(34,'add_advertiser','advertiser','2022-04-17 08:56:30','2022-04-17 08:56:30'),(35,'delete_advertiser','advertiser','2022-04-17 08:56:30','2022-04-17 08:56:30'),(36,'browse_job_opportunities','job_opportunities','2022-04-17 08:56:49','2022-04-17 08:56:49'),(37,'read_job_opportunities','job_opportunities','2022-04-17 08:56:49','2022-04-17 08:56:49'),(38,'edit_job_opportunities','job_opportunities','2022-04-17 08:56:49','2022-04-17 08:56:49'),(39,'add_job_opportunities','job_opportunities','2022-04-17 08:56:49','2022-04-17 08:56:49'),(40,'delete_job_opportunities','job_opportunities','2022-04-17 08:56:49','2022-04-17 08:56:49'),(41,'browse_job_requests','job_requests','2022-04-17 08:57:02','2022-04-17 08:57:02'),(42,'read_job_requests','job_requests','2022-04-17 08:57:02','2022-04-17 08:57:02'),(43,'edit_job_requests','job_requests','2022-04-17 08:57:02','2022-04-17 08:57:02'),(44,'add_job_requests','job_requests','2022-04-17 08:57:02','2022-04-17 08:57:02'),(45,'delete_job_requests','job_requests','2022-04-17 08:57:02','2022-04-17 08:57:02'),(46,'browse_student_courses','student_courses','2022-04-17 08:57:38','2022-04-17 08:57:38'),(47,'read_student_courses','student_courses','2022-04-17 08:57:38','2022-04-17 08:57:38'),(48,'edit_student_courses','student_courses','2022-04-17 08:57:38','2022-04-17 08:57:38'),(49,'add_student_courses','student_courses','2022-04-17 08:57:38','2022-04-17 08:57:38'),(50,'delete_student_courses','student_courses','2022-04-17 08:57:38','2022-04-17 08:57:38'),(51,'browse_student_interests','student_interests','2022-04-17 08:57:52','2022-04-17 08:57:52'),(52,'read_student_interests','student_interests','2022-04-17 08:57:52','2022-04-17 08:57:52'),(53,'edit_student_interests','student_interests','2022-04-17 08:57:52','2022-04-17 08:57:52'),(54,'add_student_interests','student_interests','2022-04-17 08:57:52','2022-04-17 08:57:52'),(55,'delete_student_interests','student_interests','2022-04-17 08:57:52','2022-04-17 08:57:52'),(56,'browse_student_bills','student_bills','2022-04-17 08:58:24','2022-04-17 08:58:24'),(57,'read_student_bills','student_bills','2022-04-17 08:58:24','2022-04-17 08:58:24'),(58,'edit_student_bills','student_bills','2022-04-17 08:58:24','2022-04-17 08:58:24'),(59,'add_student_bills','student_bills','2022-04-17 08:58:24','2022-04-17 08:58:24'),(60,'delete_student_bills','student_bills','2022-04-17 08:58:24','2022-04-17 08:58:24'),(61,'browse_advertiser_bills','advertiser_bills','2022-04-17 08:58:40','2022-04-17 08:58:40'),(62,'read_advertiser_bills','advertiser_bills','2022-04-17 08:58:40','2022-04-17 08:58:40'),(63,'edit_advertiser_bills','advertiser_bills','2022-04-17 08:58:41','2022-04-17 08:58:41'),(64,'add_advertiser_bills','advertiser_bills','2022-04-17 08:58:41','2022-04-17 08:58:41'),(65,'delete_advertiser_bills','advertiser_bills','2022-04-17 08:58:41','2022-04-17 08:58:41');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES (1,'admin','Administrator','2022-04-17 08:48:43','2022-04-17 08:48:43'),(2,'manager','Manager','2022-04-17 08:48:43','2022-04-17 08:59:41');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES (1,'site.title','Site Title','Student Jobs','','text',1,'Site'),(2,'site.description','Site Description','Student Jobs','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','settings\\April2022\\56mxAgLTToCQE7PHdVWH.jpg','','image',5,'Admin'),(6,'admin.title','Admin Title','Student Jobs','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Student Jobs','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','settings\\April2022\\W1e9qBkgY1h58S2827HJ.png','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_bills`
--

DROP TABLE IF EXISTS `student_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `is_paid` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_bills`
--

LOCK TABLES `student_bills` WRITE;
/*!40000 ALTER TABLE `student_bills` DISABLE KEYS */;
INSERT INTO `student_bills` (`id`, `student_id`, `amount`, `is_paid`, `created_at`) VALUES (1,20,200,1,'2022-04-10 17:00:21'),(2,20,200,1,'2022-04-10 17:24:56');
/*!40000 ALTER TABLE `student_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_courses`
--

DROP TABLE IF EXISTS `student_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `course_name` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `institution` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_courses`
--

LOCK TABLES `student_courses` WRITE;
/*!40000 ALTER TABLE `student_courses` DISABLE KEYS */;
INSERT INTO `student_courses` (`id`, `student_id`, `course_name`, `institution`, `start_date`, `end_date`) VALUES (1,16,'l@gmail.com','o','1970-01-01','1998-11-01'),(2,16,'l@gmail.com','o','1970-01-01','1998-11-01'),(3,17,'mm','mm','2022-03-08','2022-03-21'),(4,18,'mm','mm','2022-03-18','2022-03-19'),(5,33,'course','company','2022-03-11','2022-03-18');
/*!40000 ALTER TABLE `student_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_interests`
--

DROP TABLE IF EXISTS `student_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `interest_name` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_interests`
--

LOCK TABLES `student_interests` WRITE;
/*!40000 ALTER TABLE `student_interests` DISABLE KEYS */;
INSERT INTO `student_interests` (`id`, `user_id`, `interest_name`) VALUES (1,17,'mmm'),(2,16,'o'),(3,33,'programming');
/*!40000 ALTER TABLE `student_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nick_name` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` int(11) DEFAULT 1,
  `study_type` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `study_place` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `study_start_date` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `study_end_date` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`id`, `user_name`, `name`, `nick_name`, `phone`, `email`, `password`, `birth_date`, `gender`, `study_type`, `study_place`, `study_start_date`, `study_end_date`, `cv_url`, `status`) VALUES (27,'o',NULL,'o','0909890890','oday.97.krayem@gmail.com','$2y$10$Pe8ap6Zlz50n83Hpq9tSJOx1bDBN3zWL42ROC3lhCFdJFCNKjSlTW','2022-02-02',1,'1','mmm','2022-02-02',NULL,'upload/65c1bca4d6c955d2d03ac49993dd72b0.pdf',890701),(24,'o',NULL,'o','0909890890','l@gmail.com','$2y$10$PK/9B1xezyTFjfEc4uLydOMedY59vh7v9GqB7F9d2RtW31e0Jxady','2022-02-02',1,'1','mmm','2022-02-02',NULL,'upload/bde2decc398e37716c75718b52810515.pdf',224366),(26,'o',NULL,'o','0909890890','oday.krayem.997@gmail.com','$2y$10$037X5EF4yqB8t0DoM/WhF.u4E0Ughx6TCE1OuCLfs2M9Zfj7Mf3He','2022-02-02',1,'1','mmm','2022-02-02',NULL,'upload/038b9910e208af88b43a61e349801953.pdf',237008),(17,'mm',NULL,'j j','0989098890','stu@gmail.com','$2y$10$.jsJUNnAj4vn8GFt7JJvBuD2tsmSkbgMVvDfZN8uZEfYer8yF1ife','2022-03-08',1,'oo','oo','2022-03-08','2022-03-13','upload/c18d03cba3e98d5147e9b8fd050b0269.pdf',1),(18,'o',NULL,'o','0909890890','ok@gmail.com','$2y$10$62BpAiRiouFp7ZeRuvfO6Ocbff0Y9tNMPFQn9djUQ2EkasJnXL4dy','2022-02-02',1,'ff','ggg','2022-02-02','2022-02-02','upload/05fbc26f2d991f6df991a6568bc8cb0d.pdf',1),(19,'mm',NULL,'mm mm','0989789098','os@gmail.com','$2y$10$.zIb5NAy74GQlCuBEr/YB.XvyqJINT2gdvxkoQ/Mb.nMNN.vAtEg6','2022-03-09',0,'mm','nm','2022-03-22','2022-03-21','upload/4ef24f9e53cdfbf6ea61880a5179ce5c.pdf',1),(29,'admin@upcoming.ae','admin',NULL,NULL,'admin@demo.com','$2y$10$i8Np/x2wsNMbXBrjbG8ZZeof7pVxWSP0ubrC.OYdpNRvhB6lcWBCy',NULL,1,NULL,NULL,NULL,NULL,'[{\"download_link\":\"students\\\\April2022\\\\2EI45ZySxH3EG4vWUx68.sql\",\"original_name\":\"scit_std_jobs.sql\"}]',1),(32,'fqwfwq',NULL,'fwqwf','32132131','t@t.com','$2y$10$tGD8uUNMB8XnPl9Mf3a3d.Xs9pGktCQxL.e19JxiLStrste0lq91C','2020-05-05',1,'1','1','2020-05-05',NULL,'[{\"download_link\":\"upload\\\\bd910d65b48813405950a420ecf4b3bb.sql\",\"original_name\":\"bd910d65b48813405950a420ecf4b3bb.sql\"}]',974070);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES (1,1,'Admin','admin@demo.com','users/default.png',NULL,'$2y$10$mft5aUYnwqaD0IfF2AoUoOcIlQHUeJynxqApCulydVWE6e6lnIyrO',NULL,NULL,NULL,NULL),(2,2,'Manager','man@demo.com','users/default.png',NULL,'$2y$10$MzPg69kClHzZ8HDNI6XIgeNLr7IZhyotMx4RzttxXmJKbLl4TeMDO','gHaedi5oAV6Bp4hhygSAN2yimEgtKHNh9InQDBa8rXLe0Ck2bMoflrKIHToG','{\"locale\":\"en\"}','2022-04-17 08:59:13','2022-04-17 08:59:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'scit_std_jobs'
--

--
-- Dumping routines for database 'scit_std_jobs'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-25 16:46:22
