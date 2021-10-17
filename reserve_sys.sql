-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: reserve_sys
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'コース名',
  `note` text COMMENT 'コース説明',
  `price` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL COMMENT '削除フラグ',
  `created_at` datetime DEFAULT NULL COMMENT '作成日',
  `updated_at` datetime DEFAULT NULL COMMENT '更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'大人（素泊まり）',NULL,4500,NULL,'2018-01-25 00:32:51','2018-01-25 21:37:16'),(2,'大人（朝食付き）',NULL,5500,NULL,'2018-01-25 00:33:15','2018-01-25 21:36:41'),(3,'大人（朝夕付き）',NULL,7000,NULL,'2018-01-25 00:33:32','2018-01-25 21:37:01'),(4,'小学生（素泊まり）',NULL,4500,NULL,'2018-01-25 21:37:50','2018-01-25 21:37:50'),(5,'小学生（朝食付き）',NULL,4500,NULL,'2018-01-25 21:38:08','2018-01-25 21:41:29'),(6,'小学生（朝夕付き）',NULL,5500,NULL,'2018-01-25 21:42:04','2018-01-25 21:42:04'),(7,'6歳未満（朝食付き）',NULL,500,NULL,'2018-01-25 21:42:52','2018-01-25 21:42:52'),(8,'6歳未満（朝夕付き）',NULL,1000,NULL,'2018-01-25 21:43:12','2018-01-25 21:43:12');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT '0',
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_kana` varchar(255) DEFAULT NULL,
  `first_kana` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `zip1` varchar(255) DEFAULT NULL,
  `zip2` varchar(255) DEFAULT NULL,
  `addr1` varchar(255) DEFAULT NULL,
  `addr2` varchar(255) DEFAULT NULL,
  `addr3` varchar(255) DEFAULT NULL,
  `tel1` varchar(255) DEFAULT NULL,
  `tel2` varchar(255) DEFAULT NULL,
  `tel3` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `note` text COMMENT '備考',
  `deleted_at` datetime DEFAULT NULL COMMENT '削除フラグ',
  `created_at` datetime DEFAULT NULL COMMENT '作成日',
  `updated_at` datetime DEFAULT NULL COMMENT '更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,0,'渡嘉敷','直也','トカシキ','ナオヤ','1','2018-01-25','','','','','','','','','','',NULL,'2018-01-25 00:34:50','2018-01-25 00:34:50'),(2,0,'山田','太郎','ヤマダ','タロウ',NULL,'2018-01-25','901','2214','','','','','','','','',NULL,'2018-01-25 20:11:44','2018-01-25 20:11:44'),(3,0,'井上','','','',NULL,'2018-02-10','','','','','','','','','','',NULL,'2018-02-10 19:19:44','2018-02-10 19:19:44');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `term` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `note` text,
  `deleted_at` datetime DEFAULT NULL COMMENT '削除フラグ',
  `created_at` datetime DEFAULT NULL COMMENT '作成日',
  `updated_at` datetime DEFAULT NULL COMMENT '更新日',
  PRIMARY KEY (`id`),
  KEY `idx_resource_id` (`resource_id`) USING BTREE,
  KEY `idx_customer_id` (`customer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entry_details`
--

DROP TABLE IF EXISTS `entry_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entry_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL COMMENT '人数',
  `charge` int(11) DEFAULT NULL COMMENT '金額',
  `note` text COMMENT 'コース説明',
  `deleted_at` datetime DEFAULT NULL COMMENT '削除フラグ',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_entry_id` (`entry_id`) USING BTREE,
  KEY `idx_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry_details`
--

LOCK TABLES `entry_details` WRITE;
/*!40000 ALTER TABLE `entry_details` DISABLE KEYS */;
INSERT INTO `entry_details` VALUES (1,12,1,2,NULL,NULL,NULL,'2018-01-26 00:56:02','2018-01-26 00:56:02'),(2,13,1,1,NULL,NULL,NULL,'2018-01-26 00:56:28','2018-01-26 00:56:28'),(3,14,1,1,NULL,NULL,NULL,'2018-01-27 00:28:25','2018-01-27 00:28:25'),(4,1,1,1,NULL,NULL,NULL,'2018-01-27 11:39:58','2018-01-27 11:39:58'),(5,2,1,1,NULL,NULL,NULL,'2018-02-01 19:44:07','2018-02-01 19:44:07'),(6,3,1,1,NULL,NULL,NULL,'2018-02-01 19:44:14','2018-02-01 19:44:14'),(7,4,1,20,NULL,NULL,NULL,'2018-02-03 17:35:05','2018-02-03 17:35:05'),(8,5,1,10,NULL,NULL,NULL,'2018-02-03 17:56:33','2018-02-03 17:56:33'),(9,5,2,20,NULL,NULL,NULL,'2018-02-03 17:56:33','2018-02-03 17:56:33'),(10,6,3,33,NULL,NULL,NULL,'2018-02-03 18:45:27','2018-02-03 18:45:27'),(11,6,4,44,NULL,NULL,NULL,'2018-02-03 18:45:27','2018-02-03 18:45:27'),(12,7,1,1,5000,NULL,NULL,'2018-02-03 20:52:04','2018-02-03 20:52:04'),(13,8,2,2,10000,NULL,NULL,'2018-02-03 20:53:11','2018-02-03 20:53:11'),(14,8,3,3,15000,NULL,NULL,'2018-02-03 20:53:11','2018-02-03 20:53:11'),(15,7,1,1,5000,NULL,NULL,'2018-02-03 23:07:50','2018-02-03 23:07:50'),(16,7,1,1,5000,NULL,NULL,'2018-02-03 23:08:16','2018-02-03 23:08:16'),(17,7,1,1,5000,NULL,NULL,'2018-02-03 23:08:16','2018-02-03 23:08:16'),(18,7,1,1,5000,NULL,NULL,'2018-02-03 23:11:23','2018-02-03 23:11:23'),(19,8,3,3,15000,NULL,NULL,'2018-02-03 23:52:33','2018-02-03 23:52:33'),(22,9,1,1,4500,NULL,NULL,'2018-02-04 21:15:28','2018-02-04 21:15:28'),(23,9,2,1,5000,NULL,NULL,'2018-02-04 21:15:28','2018-02-04 21:15:28'),(24,10,1,1,4500,NULL,NULL,'2018-02-04 21:17:33','2018-02-04 21:17:33'),(25,2,1,2,9000,NULL,NULL,'2018-02-09 19:56:18','2018-02-09 19:56:18'),(26,2,6,1,5500,NULL,NULL,'2018-02-09 19:56:18','2018-02-09 19:56:18'),(27,3,1,2,9000,NULL,NULL,'2018-02-09 21:13:43','2018-02-09 21:13:43'),(28,3,6,1,5500,NULL,NULL,'2018-02-09 21:13:43','2018-02-09 21:13:43'),(29,4,1,2,9000,NULL,NULL,'2018-02-09 22:40:17','2018-02-09 22:40:17'),(30,4,6,1,5500,NULL,NULL,'2018-02-09 22:40:17','2018-02-09 22:40:17'),(31,5,3,2,14000,NULL,NULL,'2018-02-09 22:56:05','2018-02-09 22:56:05'),(32,5,6,1,5500,NULL,NULL,'2018-02-09 22:56:05','2018-02-09 22:56:05'),(33,6,3,2,14000,NULL,NULL,'2018-02-09 22:59:24','2018-02-09 22:59:24'),(34,6,6,1,5500,NULL,NULL,'2018-02-09 22:59:24','2018-02-09 22:59:24'),(35,7,1,1,4500,NULL,NULL,'2018-02-09 23:00:57','2018-02-09 23:00:57'),(36,7,4,1,4500,NULL,NULL,'2018-02-09 23:00:57','2018-02-09 23:00:57'),(37,8,1,2,9000,NULL,NULL,'2018-02-09 23:02:00','2018-02-09 23:02:00'),(38,8,4,2,9000,NULL,NULL,'2018-02-09 23:02:00','2018-02-09 23:02:00'),(39,9,1,2,9000,NULL,NULL,'2018-02-09 23:03:04','2018-02-09 23:03:04'),(40,9,4,1,4500,NULL,NULL,'2018-02-09 23:03:04','2018-02-09 23:03:04'),(41,10,1,2,9000,NULL,NULL,'2018-02-09 23:04:15','2018-02-09 23:04:15'),(42,10,4,1,4500,NULL,NULL,'2018-02-09 23:04:15','2018-02-09 23:04:15'),(43,11,1,1,4500,NULL,NULL,'2018-02-09 23:05:17','2018-02-09 23:05:17'),(44,12,1,2,9000,NULL,NULL,'2018-02-09 23:06:23','2018-02-09 23:06:23'),(45,13,1,2,9000,NULL,NULL,'2018-02-09 23:09:12','2018-02-09 23:09:12'),(46,14,1,2,9000,NULL,NULL,'2018-02-09 23:10:18','2018-02-09 23:10:18'),(47,15,1,2,9000,NULL,NULL,'2018-02-09 23:14:24','2018-02-09 23:14:24'),(48,16,1,2,9000,NULL,NULL,'2018-02-09 23:16:24','2018-02-09 23:16:24'),(49,17,3,2,14000,NULL,NULL,'2018-02-09 23:17:26','2018-02-09 23:17:26'),(50,17,6,1,5500,NULL,NULL,'2018-02-09 23:17:26','2018-02-09 23:17:26');
/*!40000 ALTER TABLE `entry_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL COMMENT '背景色\nカレンダー表示時',
  `note` text,
  `deleted_at` datetime DEFAULT NULL COMMENT '削除フラグ',
  `created_at` datetime DEFAULT NULL COMMENT '作成日',
  `updated_at` datetime DEFAULT NULL COMMENT '更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
INSERT INTO `resources` VALUES (1,'くろき','','+500円',NULL,'2018-01-25 00:32:10','2018-01-27 11:38:57'),(2,'よもぎ','','',NULL,'2018-01-25 00:32:20','2018-01-27 11:37:58'),(3,'さくな','','',NULL,'2018-01-25 00:32:28','2018-01-27 11:38:19');
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems`
--

DROP TABLE IF EXISTS `systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entry_unit` int(11) DEFAULT '1' COMMENT '予約単位\n1:日単位 2:時間単位',
  `member_management_flag` tinyint(1) DEFAULT '0' COMMENT '会員管理フラグ',
  `site_url` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL COMMENT '削除フラグ',
  `created_at` datetime DEFAULT NULL COMMENT '作成日',
  `updated_at` datetime DEFAULT NULL COMMENT '更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems`
--

LOCK TABLES `systems` WRITE;
/*!40000 ALTER TABLE `systems` DISABLE KEYS */;
INSERT INTO `systems` VALUES (1,'民宿よんな～',1,0,'http://www.yonna-okinawa.com/',NULL,'2018-01-25 00:37:40','2018-02-09 18:23:30');
/*!40000 ALTER TABLE `systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL COMMENT '削除フラグ',
  `created_at` datetime DEFAULT NULL COMMENT '作成日',
  `updated_at` datetime DEFAULT NULL COMMENT '更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-08 17:19:59
