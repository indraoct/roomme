-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: operation
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit` (
  `audit_id` int NOT NULL AUTO_INCREMENT,
  `audit_build_id` int DEFAULT NULL COMMENT 'foreign key ke table building',
  `audit_build_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audit_auditor_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audit_date` datetime DEFAULT NULL,
  `audit_create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audit_create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `audit_update_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audit_update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `audit_del_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 ada 1 hapus',
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` VALUES (31,524,'Gedung test operation','ricky','2020-03-21 17:00:00',NULL,'2020-03-21 10:00:00',NULL,'2020-03-21 10:00:00','0'),(32,524,'Gedung test operation','ricky','2020-03-29 17:00:00',NULL,'2020-03-29 10:00:00',NULL,'2020-03-29 10:00:00','0'),(34,524,'Gedung test operation','rickyarians','2020-03-21 17:00:00',NULL,'2020-03-21 10:00:00',NULL,'2020-03-21 10:00:00','0'),(35,524,'Gedung test operation','dearetta.ramadhani','2020-03-21 17:00:00',NULL,'2020-03-21 10:00:00',NULL,'2020-03-21 10:00:00','0'),(40,509,'Taman Lawang','Muhammad Rivaldy','2020-03-21 08:16:02',NULL,'2020-03-21 01:16:02',NULL,'2020-03-21 01:16:02','0'),(41,524,'Gedung test operation','if414004','2020-03-22 17:00:00',NULL,'2020-03-22 10:00:00',NULL,'2020-03-22 10:00:00','0'),(43,521,'test2 170320','ricky','2020-03-22 17:00:00',NULL,'2020-03-22 10:00:00',NULL,'2020-03-22 10:00:00','0'),(44,521,'test2 170320','ricky','2020-03-22 17:00:00',NULL,'2020-03-22 10:00:00',NULL,'2020-03-22 10:00:00','0'),(46,521,'test2 170320','ricky','2020-03-22 17:00:00',NULL,'2020-03-22 10:00:00',NULL,'2020-03-22 10:00:00','0'),(50,524,'Gedung test operation','if414004','2020-03-22 17:00:00',NULL,'2020-03-22 10:00:00',NULL,'2020-03-22 10:00:00','0'),(52,509,'Taman Lawang','Muhammad Rivaldy','2020-03-21 08:16:02',NULL,'2020-03-21 01:16:02',NULL,'2020-03-21 01:16:02','0'),(53,524,'Gedung test operation','if414004','2020-03-22 17:00:00',NULL,'2020-03-22 10:00:00',NULL,'2020-03-22 10:00:00','0'),(56,524,'Gedung test operation','ricky','2020-03-30 17:00:00',NULL,'2020-03-30 10:00:00',NULL,'2020-03-30 10:00:00','0'),(57,524,'Gedung test operation','if414004','2020-03-22 17:00:00',NULL,'2020-03-22 10:00:00',NULL,'2020-03-22 10:00:00','0'),(70,524,'Gedung test operation','if414004','2020-03-22 17:00:00',NULL,'2020-03-22 10:00:00',NULL,'2020-03-22 10:00:00','0'),(84,524,'Gedung test operation','if414004','2020-03-29 17:00:00',NULL,'2020-03-29 10:00:00',NULL,'2020-03-29 10:00:00','0'),(85,524,'Gedung test operation','if414004','2020-03-22 17:00:00',NULL,'2020-03-22 10:00:00',NULL,'2020-03-22 10:00:00','0'),(89,524,'Gedung test operation','if414004','2020-03-23 17:00:00',NULL,'2020-03-23 10:00:00',NULL,'2020-03-23 10:00:00','0'),(95,524,'Gedung test operation','rickyarians','2020-03-22 17:00:00',NULL,'2020-03-22 10:00:00',NULL,'2020-03-22 10:00:00','0'),(110,524,'Gedung test operation','rickyarians','2020-03-23 17:00:00',NULL,'2020-03-23 10:00:00',NULL,'2020-03-23 10:00:00','0'),(125,524,'Gedung test operation','junes','2020-03-25 17:00:00',NULL,'2020-03-25 10:00:00',NULL,'2020-03-25 10:00:00','0');
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `build_staff`
--

DROP TABLE IF EXISTS `build_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `build_staff` (
  `build_staff_id` int NOT NULL AUTO_INCREMENT,
  `build_staff_build_id` int DEFAULT NULL COMMENT 'foreign key dari building',
  `build_staff_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_staff_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_staff_nik` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'nomor kartu identitas',
  `build_staff_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_staff_gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_staff_dob` date DEFAULT NULL,
  `build_staff_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'user_name',
  `build_staff_pin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'user_pass',
  `build_staff_token` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_staff_create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_staff_create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `build_staff_update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_staff_update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `build_staff_del_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 ada 1 hapus',
  PRIMARY KEY (`build_staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `build_staff`
--

LOCK TABLES `build_staff` WRITE;
/*!40000 ALTER TABLE `build_staff` DISABLE KEYS */;
INSERT INTO `build_staff` VALUES (289,509,'udin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ricky','2020-03-17 19:42:48',NULL,NULL,'0'),(291,521,'andika',NULL,NULL,NULL,NULL,NULL,'0829839292392',NULL,NULL,'saritatest','2020-03-19 13:04:56',NULL,NULL,'0'),(294,524,'Bpk Lontong',NULL,NULL,NULL,NULL,NULL,'082310569056',NULL,NULL,'ricky','2020-03-22 08:03:10',NULL,NULL,'0');
/*!40000 ALTER TABLE `build_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `build_id` int NOT NULL AUTO_INCREMENT,
  `build_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_total_room` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_start_contract` date DEFAULT NULL,
  `build_end_contract` date DEFAULT NULL,
  `build_no_contract` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_descriptions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `build_address_rt` int DEFAULT NULL,
  `build_address_rw` int DEFAULT NULL,
  `build_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_kelurahan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_kecamatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_kabupaten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_provinsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_address_postal` int DEFAULT NULL,
  `build_longitude` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_latitude` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_google_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `build_nearby` json DEFAULT NULL,
  `build_prod_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_sub_prod` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_service` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_category_id` int DEFAULT NULL,
  `build_contract_id` int DEFAULT NULL,
  `build_grace_period_id` int DEFAULT NULL,
  `build_status_building` int DEFAULT NULL,
  `build_audit` int DEFAULT '0' COMMENT 'Belum audit = 0\nAudit ulang = 1\nAudit completed = 2',
  `build_photos` json DEFAULT NULL,
  `build_create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `build_update_by` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `build_del_status` enum('0','1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `build_rate_value` float DEFAULT NULL,
  `build_rate_count` int DEFAULT NULL,
  `build_recomendation` int DEFAULT NULL,
  PRIMARY KEY (`build_id`),
  KEY `build_name` (`build_name`) USING BTREE,
  KEY `build_address` (`build_address`) USING BTREE,
  KEY `build_longitude` (`build_longitude`) USING BTREE,
  KEY `build_latitude` (`build_latitude`) USING BTREE,
  KEY `build_create_date` (`build_create_date`) USING BTREE,
  KEY `build_del_status` (`build_del_status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (509,'Taman Lawang','73',NULL,NULL,NULL,'description test',5,7,'Jl.Tiang Bendera','PATUK','PATUK','KABUPATEN GUNUNG KIDUL','DI YOGYAKARTA',13023,NULL,NULL,NULL,'[\"Minimarket\", \"Stasiun\", \"Tempat Ibadah\", \"Perkantoran\", \"Jalur Muat 1\"]','Plus','Eco','Campur',NULL,NULL,NULL,NULL,0,NULL,'ricky','2020-03-17 19:42:48','rezkipradit','2020-03-30 11:56:50','1',NULL,NULL,0),(521,'test2 170320','60',NULL,NULL,NULL,'Contoh Deskripsi',8,2,'jalan coba coba','TANAH PATAH','RATU AGUNG','KOTA BENGKULU','BENGKULU',38228,NULL,NULL,NULL,'[\"Pinggir Jalan Besar\", \"Jalur Muat 1 Mobil\"]','Plus','Syariah','Campur',NULL,NULL,NULL,NULL,1,NULL,'saritatest','2020-03-19 13:04:56','ricky','2020-03-28 16:38:53','1',NULL,NULL,0),(524,'Gedung test operation','60',NULL,NULL,NULL,NULL,2,3,'jln lontong','ALUE BATEE','ARONGAN LAMBALEK','KABUPATEN ACEH BARAT','ACEH',13740,NULL,NULL,NULL,'[\"Mini Market\", \"Stasiun\", \"Dekat Kampus\", \"Pinggir Jalan Besar\", \"Halte Transjakarta\", \"Masuk Perumahan\", \"MRT\", \"Jalur Muat 1 Mobil\", \"Perkantoran\", \"Tempat Ibadah\"]','Plus','Syariah','Campur',NULL,NULL,NULL,NULL,2,NULL,'ricky','2020-03-22 08:03:10','ricky','2020-03-22 08:03:10','1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document` (
  `doc_id` int NOT NULL AUTO_INCREMENT,
  `doc_build_id` int DEFAULT NULL COMMENT 'foreign key table build',
  `doc_original_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_file_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_path` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'path file',
  `doc_create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `doc_update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `doc_del_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0 ada 1 hapus',
  PRIMARY KEY (`doc_id`),
  KEY `doc_build_id` (`doc_build_id`) USING BTREE,
  KEY `doc_path` (`doc_path`) USING BTREE,
  KEY `doc_del_status` (`doc_del_status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (356,509,'Document Contract','documents_2_2020-03-18_02-42-38_144-Article Text-298-2-10-20190510.pdf','/get/file/','ricky','2020-03-17 19:42:48',NULL,NULL,'0'),(357,509,'Handover Contract','handover_2_2020-03-18_02-42-45_0354423380Sep2019.pdf','/get/file/','ricky','2020-03-17 19:42:48',NULL,NULL,'0'),(360,521,'Document Contract','documents_655_2020-03-19_20-02-54_2017C_Abdulloh_Faliqul_Isbach.pdf','/get/file/','saritatest','2020-03-19 13:04:56',NULL,NULL,'0'),(361,521,'Handover Contract','handover_655_2020-03-19_20-04-05_2017C_Abdulloh_Faliqul_Isbach.pdf','/get/file/','saritatest','2020-03-19 13:04:56',NULL,NULL,'0'),(366,524,'Document Contract','documents_658_2020-03-22_15-02-55_66fb5da4-21b6-47cd-85dd-acf4f13f5d2c.pdf','/get/file/','ricky','2020-03-22 08:03:10',NULL,NULL,'0'),(367,524,'Handover Contract','handover_658_2020-03-22_15-03-07_5830-1-41936-1-10-20190808.pdf','/get/file/','ricky','2020-03-22 08:03:10',NULL,NULL,'0');
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner` (
  `owner_id` int NOT NULL AUTO_INCREMENT,
  `owner_building_id` int DEFAULT NULL COMMENT 'foreign key table building',
  `owner_name` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_firstname_bc` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_lastname_bc` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_nik` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'nomor kartu identitas',
  `owner_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_dob` date DEFAULT NULL,
  `owner_marital_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_pay_metode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_bank_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_rek_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_no_rek` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_price_contract` int DEFAULT NULL,
  `owner_create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `owner_del_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 adalah isi, 1 adalah soft delete',
  PRIMARY KEY (`owner_id`),
  KEY `owner_building_id` (`owner_building_id`) USING BTREE,
  KEY `owner_phone` (`owner_phone`) USING BTREE,
  KEY `owner_del_status` (`owner_del_status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2340 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (2255,509,'bedjo',NULL,NULL,NULL,'080980000',NULL,NULL,NULL,NULL,'Advance','BCA','Bedjo','2309393846',10000,'ricky','2020-03-17 19:42:48',NULL,NULL,'0'),(2257,521,'dwi',NULL,NULL,NULL,'0898398983902',NULL,NULL,NULL,NULL,'advance','BNI','rita','2354678989',200000000,'saritatest','2020-03-19 13:04:56',NULL,NULL,'0'),(2277,524,'Bapak Lontong',NULL,NULL,NULL,'0239029308',NULL,NULL,NULL,NULL,'advance','Andara','lontong','9090909090',1000000000,'ricky','2020-03-22 08:03:10',NULL,NULL,'0');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinsi`
--

DROP TABLE IF EXISTS `provinsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provinsi` (
  `prov_id` int NOT NULL,
  `prov_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prov_create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`prov_id`),
  KEY `prov_name` (`prov_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='dapet dari bps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinsi`
--

LOCK TABLES `provinsi` WRITE;
/*!40000 ALTER TABLE `provinsi` DISABLE KEYS */;
INSERT INTO `provinsi` VALUES (11,'ACEH','2020-01-28 10:04:42'),(12,'SUMATERA UTARA','2020-01-28 10:04:42'),(13,'SUMATERA BARAT','2020-01-28 10:04:42'),(14,'RIAU','2020-01-28 10:04:42'),(15,'JAMBI','2020-01-28 10:04:42'),(16,'SUMATERA SELATAN','2020-01-28 10:04:42'),(17,'BENGKULU','2020-01-28 10:04:42'),(18,'LAMPUNG','2020-01-28 10:04:42'),(19,'KEPULAUAN BANGKA BELITUNG','2020-01-28 10:04:42'),(21,'KEPULAUAN RIAU','2020-01-28 10:04:42'),(31,'DAERAH KHUSUS IBUKOTA JAKARTA','2020-01-28 10:04:42'),(32,'JAWA BARAT','2020-01-28 10:04:42'),(33,'JAWA TENGAH','2020-01-28 10:04:42'),(34,'DI YOGYAKARTA','2020-01-28 10:04:42'),(35,'JAWA TIMUR','2020-01-28 10:04:42'),(36,'BANTEN','2020-01-28 10:04:42'),(51,'BALI','2020-01-28 10:04:42'),(52,'NUSA TENGGARA BARAT','2020-01-28 10:04:42'),(53,'NUSA TENGGARA TIMUR','2020-01-28 10:04:42'),(61,'KALIMANTAN BARAT','2020-01-28 10:04:42'),(62,'KALIMANTAN TENGAH','2020-01-28 10:04:42'),(63,'KALIMANTAN SELATAN','2020-01-28 10:04:42'),(64,'KALIMANTAN TIMUR','2020-01-28 10:04:42'),(65,'KALIMANTAN UTARA','2020-01-28 10:04:42'),(71,'SULAWESI UTARA','2020-01-28 10:04:42'),(72,'SULAWESI TENGAH','2020-01-28 10:04:42'),(73,'SULAWESI SELATAN','2020-01-28 10:04:42'),(74,'SULAWESI TENGGARA','2020-01-28 10:04:42'),(75,'GORONTALO','2020-01-28 10:04:42'),(76,'SULAWESI BARAT','2020-01-28 10:04:42'),(81,'MALUKU','2020-01-28 10:04:42'),(82,'MALUKU UTARA','2020-01-28 10:04:42'),(91,'PAPUA BARAT','2020-01-28 10:04:42'),(94,'PAPUA','2020-01-28 10:04:42');
/*!40000 ALTER TABLE `provinsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_type` (
  `roomtype_id` int NOT NULL AUTO_INCREMENT,
  `roomtype_build_id` int DEFAULT NULL COMMENT 'foreign key table building',
  `roomtype_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roomtype_bed` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roomtype_size` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roomtype_isi` int DEFAULT NULL,
  `roomtype_kosong` int DEFAULT NULL,
  `roomtype_total` int DEFAULT NULL,
  `roomtype_km` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roomtype_km_total` int DEFAULT NULL,
  `roomtype_photos` json DEFAULT NULL,
  `roomtype_com_price` int DEFAULT NULL COMMENT 'price dari acqusition',
  `roomtype_price` int DEFAULT NULL COMMENT 'price normal',
  `roomtype_price_promo` int DEFAULT NULL COMMENT 'price dengan promo',
  `roomtype_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `roomtype_create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roomtype_create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `roomtype_update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roomtype_update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `roomtype_del_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 adalah isi, 1 adalah soft delete',
  `roomtype_rate_value` float DEFAULT NULL COMMENT 'nilai rating total',
  `roomtype_rate_count` int DEFAULT NULL COMMENT 'jumlah rating',
  `roomtype_promo_price` int DEFAULT NULL,
  PRIMARY KEY (`roomtype_id`),
  KEY `roomtype_build_id` (`roomtype_build_id`) USING BTREE,
  KEY `roomtype_name` (`roomtype_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (285,521,'Spacious','Double',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,4300000,NULL,NULL,NULL,'2020-03-20 10:45:33',NULL,NULL,'0',NULL,NULL,NULL),(286,524,'Comfort Double Bed',NULL,NULL,10,20,30,'Luar',30,NULL,1000000,NULL,NULL,NULL,'ricky','2020-03-22 08:03:10',NULL,'2020-03-22 19:26:57','0',NULL,NULL,NULL),(287,524,'Comfort King Bed',NULL,NULL,20,10,30,'Luar',30,NULL,2000000,NULL,NULL,NULL,'ricky','2020-03-22 08:03:10',NULL,'2020-03-22 19:26:57','0',NULL,NULL,NULL),(354,509,'Comfort Trundle Bed','','',16,8,24,'dalam',24,NULL,5000000,NULL,NULL,'','ricky','2020-03-17 19:42:48','','2020-03-22 19:17:16','0',NULL,NULL,NULL),(355,509,'Comfort Double Bed','','',16,8,24,'dalam',24,NULL,4500000,NULL,NULL,'','ricky','2020-03-17 19:42:48','','2020-03-22 20:10:00','0',NULL,NULL,NULL),(356,509,'3','','',20,5,25,'dalam',25,NULL,4000000,NULL,NULL,'','ricky','2020-03-17 19:42:48','','2020-03-22 10:40:50','0',NULL,NULL,NULL),(358,521,'1','','',20,10,30,'Dalam',30,NULL,2000000,NULL,NULL,'','saritatest','2020-03-19 13:04:56','','2020-03-22 10:40:50','0',NULL,NULL,NULL),(359,521,'2','','',10,20,30,'Dalam',30,NULL,3000000,NULL,NULL,'','saritatest','2020-03-19 13:04:56','','2020-03-22 10:40:50','0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomtype_ref`
--

DROP TABLE IF EXISTS `roomtype_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomtype_ref` (
  `roomtype_ref_id` int NOT NULL AUTO_INCREMENT,
  `roomtype_ref_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roomtype_ref_bed` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roomtype_ref_create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roomtype_ref_create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `roomtype_ref_update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roomtype_ref_update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `roomtype_ref_del_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 adalah isi,1 adalah soft delete',
  PRIMARY KEY (`roomtype_ref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtype_ref`
--

LOCK TABLES `roomtype_ref` WRITE;
/*!40000 ALTER TABLE `roomtype_ref` DISABLE KEYS */;
INSERT INTO `roomtype_ref` VALUES (1,'Comfort','Bunk Bed','System','2020-03-21 11:22:14','',NULL,'0'),(2,'Comfort','Double Bed','System','2020-03-21 11:22:14','',NULL,'0'),(3,'Comfort','King Bed','System','2020-03-21 11:22:14','',NULL,'0'),(4,'Comfort','Queen Bed','System','2020-03-21 11:22:14','',NULL,'0'),(5,'Comfort','Single Bed','System','2020-03-21 11:22:14','',NULL,'0'),(6,'Comfort','Trundle Bed','System','2020-03-21 11:22:14','',NULL,'0'),(7,'Comfort','Twin Bed','System','2020-03-21 11:22:14','',NULL,'0'),(8,'Cozy','Bunk Bed','System','2020-03-21 11:22:14','',NULL,'0'),(9,'Cozy','Double Bed','System','2020-03-21 11:22:14','',NULL,'0'),(10,'Cozy','King Bed','System','2020-03-21 11:22:14','',NULL,'0'),(11,'Cozy','Queen Bed','System','2020-03-21 11:22:14','',NULL,'0'),(12,'Cozy','Single Bed','System','2020-03-21 11:22:14','',NULL,'0'),(13,'Cozy','Trundle Bed','System','2020-03-21 11:22:14','',NULL,'0'),(14,'Cozy','Twin Bed','System','2020-03-21 11:22:14','',NULL,'0'),(15,'Spacious','Bunk Bed','System','2020-03-21 11:22:14','',NULL,'0'),(16,'Spacious','Double Bed','System','2020-03-21 11:22:14','',NULL,'0'),(17,'Spacious','King Bed','System','2020-03-21 11:22:14','',NULL,'0'),(18,'Spacious','Queen Bed','System','2020-03-21 11:22:14','',NULL,'0'),(19,'Spacious','Single Bed','System','2020-03-21 11:22:14','',NULL,'0'),(20,'Spacious','Trundle Bed','System','2020-03-21 11:22:14','',NULL,'0'),(21,'Spacious','Twin Bed','System','2020-03-21 11:22:14','',NULL,'0');
/*!40000 ALTER TABLE `roomtype_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_firstname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_lastname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_cabang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'kantor cabang',
  `user_joindate` date DEFAULT NULL,
  `user_nik` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'nomor kartu identitas',
  `user_gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_login_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role_id` int DEFAULT NULL COMMENT 'foreign key table role',
  `user_dept_id` int DEFAULT NULL COMMENT 'foreign key table department',
  `user_hashkey` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_login_multidevice` int DEFAULT '0',
  `user_login_hashkey` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_login_hashpass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_del_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 adalah isi, 1 adalah soft delete',
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`) USING BTREE,
  KEY `user_password` (`user_password`) USING BTREE,
  KEY `user_login_id` (`user_login_id`) USING BTREE,
  KEY `user_email` (`user_email`) USING BTREE,
  KEY `user_del_status` (`user_del_status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (46,'Sarita','Testing',NULL,NULL,NULL,NULL,'saritatest','d2cb2b1af1012a97a943bccad670accd','putri@roomme.space','000','https://fruitkit.fi/wp-content/uploads/2019/09/dummy-avatar-300x300.jpg',NULL,1,NULL,NULL,0,NULL,NULL,'system','2020-02-07 04:25:28','if414004','2020-02-19 04:10:56','0'),(47,'Faldi','Testing',NULL,NULL,NULL,NULL,'falditest','55cdf8b7599d319ee22a95eb70c1580b','faldi@roomme.space','000','https://fruitkit.fi/wp-content/uploads/2019/09/dummy-avatar-300x300.jpg',NULL,1,NULL,NULL,0,NULL,NULL,'system','2020-02-07 04:28:14','if414004','2020-02-21 07:33:19','0'),(48,'John','Doe',NULL,NULL,NULL,NULL,'johndoe','bee1db28a2a40b61a90ae5a5ba6a1c71','wildan@roomme.space','0123456789','https://fruitkit.fi/wp-content/uploads/2019/09/dummy-avatar-300x300.jpg',NULL,1,NULL,NULL,0,NULL,NULL,'if414004','2019-06-30 21:08:46','if414004','2020-02-20 12:56:00','0'),(49,'Dearetta','Ramadhani',NULL,NULL,NULL,NULL,'dearetta.ramadhani','c1735294d759abf0fcb16dbb6cc3f367','dearetta.ramadhani@roomme.space','0123456789','https://fruitkit.fi/wp-content/uploads/2019/09/dummy-avatar-300x300.jpg',NULL,1,NULL,NULL,0,NULL,NULL,'if414004','2019-06-30 21:08:46','dearetta.ramadhani','2020-02-17 02:59:23','0'),(50,'David','YuhanLim',NULL,NULL,NULL,NULL,'davidlim','b22df12f87922d63ff7abf2bb2b35eaa','david@roomme.space',NULL,'https://fruitkit.fi/wp-content/uploads/2019/09/dummy-avatar-300x300.jpg',NULL,1,NULL,NULL,0,NULL,NULL,'system','2020-02-12 07:34:09','if414004','2020-02-17 14:08:50','1'),(51,'Junes','Milano',NULL,NULL,NULL,NULL,'junes','a7c5c3553ab13bc7e358587d57ab2bf2','junes@roomme.space','0888888888','https://fruitkit.fi/wp-content/uploads/2019/09/dummy-avatar-300x300.jpg',NULL,1,NULL,NULL,0,NULL,NULL,'system','2020-02-13 03:45:30','if414004','2020-02-17 14:09:27','1'),(52,'Ricky','Ariansyah',NULL,NULL,NULL,NULL,'ricky','b22df12f87922d63ff7abf2bb2b35eaa','ricky@roomme.space','0888888888','https://fruitkit.fi/wp-content/uploads/2019/09/dummy-avatar-300x300.jpg',NULL,1,NULL,NULL,0,NULL,NULL,'system','2020-02-14 04:24:37',NULL,'2020-02-19 07:29:15','0'),(53,'Tapir','Gurun','Jakarta','1973-02-23','u90u09u','hampir laki','tapirgurun','b51234486a66b79c766e0f41ca9bbe91','asdasd@asdasd.co','08888888888',NULL,NULL,2,1,NULL,0,NULL,NULL,'rezkipradit','2020-02-14 14:45:19',NULL,NULL,'0'),(54,'ricky','ariansayh','Jakarta','2020-02-01','1313','Laki - Laki','rickyarians','2d26518e67e073665d39b167ec7bd36d','rickyarians@outlook.com','1238928435345365',NULL,NULL,1,1,NULL,0,NULL,NULL,'rezkipradit','2020-02-19 02:39:52','ricky','2020-03-01 12:38:40','1'),(55,'ricky doang','lontong','Jakarta','2020-02-01','123123','Laki - Laki','rickyarianss','2d26518e67e073665d39b167ec7bd36d','rickyariansbro@bro.com','23137347236462',NULL,NULL,1,1,NULL,0,NULL,NULL,'rezkipradit','2020-02-19 02:42:18','ricky','2020-03-04 11:47:53','1'),(56,'ricky test','lontong','Jakarta','2020-02-01','23132','Laki - Laki','rickyaaa','2d26518e67e073665d39b167ec7bd36d','lontongin@lontong.com','31728372197',NULL,NULL,1,1,NULL,0,NULL,NULL,'rezkipradit','2020-02-19 02:43:27','ricky','2020-03-01 12:37:23','1'),(57,'ricky lontong','lontongin','Jakarta','2020-02-01','23123','Laki - Laki','rickyaraians','2d26518e67e073665d39b167ec7bd36d','rickylontong@lontong.com','288372394723',NULL,NULL,1,1,NULL,0,NULL,NULL,'rezkipradit','2020-02-19 02:45:08','ricky','2020-03-01 12:36:59','1'),(58,'test','coba daftar','Jakarta','2020-02-01','2343','Laki - Laki','rickyaaaaa','2d26518e67e073665d39b167ec7bd36d','rickylontong@gmail.com','31231245454',NULL,NULL,1,1,NULL,0,NULL,NULL,'rezkipradit','2020-02-19 02:48:00','ricky','2020-03-01 12:38:44','1'),(59,'fdofisd','sdafidosufoisdui','Jakarta','2020-02-01','3232343','Laki - Laki','lontong','2d26518e67e073665d39b167ec7bd36d','rickuariansad@loldks.com','27427483748937',NULL,NULL,1,1,NULL,0,NULL,NULL,'rezkipradit','2020-02-19 03:02:25','ricky','2020-03-01 12:37:03','1'),(60,'ricky','ariandjahjdh','Jakarta','2020-02-01','236726','Laki - Laki','rickasyud','2d26518e67e073665d39b167ec7bd36d','rickydklasjdsk@gmail.com','362786354646456',NULL,NULL,1,1,NULL,0,NULL,NULL,'rezkipradit','2020-02-19 03:32:08','rezkipradit','2020-02-19 04:10:53','1'),(61,'ricky','ariasnjda','Jakarta','2020-02-01','2131','Laki - Laki','rickydsds','2d26518e67e073665d39b167ec7bd36d','rickaysdas@djska.com','1231231245454',NULL,NULL,1,1,NULL,0,NULL,NULL,'rezkipradit','2020-02-19 04:24:10','ricky','2020-03-01 12:37:13','1'),(62,'Tapir','Gurun','Jakarta','2020-02-01','u90u09u','hampir laki','tapirgurunlagi','b51234486a66b79c766e0f41ca9bbe91','asdasdasdasd@asdasd.co','08888888888',NULL,NULL,2,1,NULL,0,NULL,NULL,'rezkipradit','2020-02-19 11:18:25',NULL,NULL,'0'),(63,'Devi','Septiani','Jakarta','2020-02-10','12345','Perempuan','deviiiiiiii','ff487154be8a01355290925321127b81','deviseptiani@roomme.space','081288025567',NULL,NULL,1,5,NULL,0,NULL,NULL,'saritatest','2020-02-20 04:39:14',NULL,NULL,'0'),(64,'me','lala','Jakarta','2020-02-04','143','Perempuan','melala','bb0edfbd1788d372ef4b3a2c65760a4d','dxew@FER.NY','9976969867493',NULL,NULL,1,142,NULL,0,NULL,NULL,'rezkipradit','2020-02-20 04:52:22','rezkipradit','2020-02-20 04:52:31','1'),(65,'Vera','Wati','Jakarta','2020-01-01','123','Perempuan','verawati','7af01531719812b1347fb4f4b4829a28','vera@roomme.space','081267893333',NULL,NULL,1,5,NULL,0,NULL,NULL,'saritatest','2020-02-28 04:47:04','verawati','2020-03-02 06:58:12','0'),(66,'Junesly','Milano','Jakarta','2020-01-29','123123123','Laki - Laki','junes@roomme.space','66bcdbf87b14df2df9778c7811e1e326','junes@roomme.space','1231312313123',NULL,NULL,1,1,NULL,0,NULL,NULL,'johndoe','2020-03-01 08:21:00','junes@roomme.space','2020-03-24 08:37:19','0'),(67,'Test1','test1','Jakarta','2020-01-01','1234567','Laki – Laki','test1','2d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(68,'Test2','test2','Jakarta','2020-01-01','1234568','Laki – Laki','test2','2d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(69,'Test3','test3','Jakarta','2020-01-02','1234569','Laki – Laki','test3','3d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(70,'Test4','test4','Jakarta','2020-01-02','1234570','Laki – Laki','test4','3d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(71,'Test5','test5','Jakarta','2020-01-03','1234571','Laki – Laki','test5','4d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(72,'Test6','test6','Jakarta','2020-01-03','1234572','Laki – Laki','test6','4d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(73,'Test7','test7','Jakarta','2020-01-04','1234573','Laki – Laki','test7','5d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(74,'Test8','test8','Jakarta','2020-01-04','1234574','Laki – Laki','test8','5d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(75,'Test9','test9','Jakarta','2020-01-05','1234575','Laki – Laki','test9','6d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(76,'Test10','test10','Jakarta','2020-01-05','1234576','Laki – Laki','test10','6d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(77,'Test11','test11','Jakarta','2020-01-06','1234577','Laki – Laki','test11','7d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(78,'Test12','test12','Jakarta','2020-01-06','1234578','Laki – Laki','test12','7d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(79,'Test13','test13','Jakarta','2020-01-07','1234579','Laki – Laki','test13','8d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(80,'Test14','test14','Jakarta','2020-01-07','1234580','Laki – Laki','test14','8d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(81,'Test15','test15','Jakarta','2020-01-08','1234581','Laki – Laki','test15','9d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(82,'Test16','test16','Jakarta','2020-01-08','1234582','Laki – Laki','test16','9d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(83,'Test17','test17','Jakarta','2020-01-09','1234583','Laki – Laki','test17','10d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(84,'Test18','test18','Jakarta','2020-01-09','1234584','Laki – Laki','test18','10d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(85,'Test19','test19','Jakarta','2020-01-10','1234585','Laki – Laki','test19','11d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(86,'Test20','test20','Jakarta','2020-01-10','1234586','Laki – Laki','test20','11d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(87,'Test21','test21','Jakarta','2020-01-11','1234587','Laki – Laki','test21','12d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(88,'Test22','test22','Jakarta','2020-01-11','1234588','Laki – Laki','test22','12d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(89,'Test23','test23','Jakarta','2020-01-12','1234589','Laki – Laki','test23','13d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(90,'Test24','test24','Jakarta','2020-01-12','1234590','Laki – Laki','test24','13d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(91,'Test25','test25','Jakarta','2020-01-13','1234591','Laki – Laki','test25','14d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(92,'Test26','test26','Jakarta','2020-01-13','1234592','Laki – Laki','test26','14d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(93,'Test27','test27','Jakarta','2020-01-14','1234593','Laki – Laki','test27','15d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(94,'Test28','test28','Jakarta','2020-01-14','1234594','Laki – Laki','test28','15d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(95,'Test29','test29','Jakarta','2020-01-15','1234595','Laki – Laki','test29','16d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(96,'Test30','test30','Jakarta','2020-01-15','1234596','Laki – Laki','test30','16d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(97,'Test31','test31','Jakarta','2020-01-16','1234597','Laki – Laki','test31','17d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(98,'Test32','test32','Jakarta','2020-01-16','1234598','Laki – Laki','test32','17d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(99,'Test33','test33','Jakarta','2020-01-17','1234599','Laki – Laki','test33','18d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(100,'Test34','test34','Jakarta','2020-01-17','1234600','Laki – Laki','test34','18d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(101,'Test35','test35','Jakarta','2020-01-18','1234601','Laki – Laki','test35','19d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(102,'Test36','test36','Jakarta','2020-01-18','1234602','Laki – Laki','test36','19d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(103,'Test37','test37','Jakarta','2020-01-19','1234603','Laki – Laki','test37','20d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(104,'Test38','test38','Jakarta','2020-01-19','1234604','Laki – Laki','test38','20d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(105,'Test39','test39','Jakarta','2020-01-20','1234605','Laki – Laki','test39','21d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(106,'Test40','test40','Jakarta','2020-01-20','1234606','Laki – Laki','test40','21d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(107,'Test41','test41','Jakarta','2020-01-21','1234607','Laki – Laki','test41','22d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(108,'Test42','test42','Jakarta','2020-01-21','1234608','Laki – Laki','test42','22d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(109,'Test43','test43','Jakarta','2020-01-22','1234609','Laki – Laki','test43','23d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(110,'Test44','test44','Jakarta','2020-01-22','1234610','Laki – Laki','test44','23d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(111,'Test45','test45','Jakarta','2020-01-23','1234611','Laki – Laki','test45','24d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(112,'Test46','test46','Jakarta','2020-01-23','1234612','Laki – Laki','test46','24d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(113,'Test47','test47','Jakarta','2020-01-24','1234613','Laki – Laki','test47','25d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(114,'Test48','test48','Jakarta','2020-01-24','1234614','Laki – Laki','test48','25d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(115,'Test49','test49','Jakarta','2020-01-25','1234615','Laki – Laki','test49','26d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(116,'Test50','test50','Jakarta','2020-01-25','1234616','Laki – Laki','test50','26d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(117,'Test51','test51','Jakarta','2020-01-26','1234617','Laki – Laki','test51','27d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(118,'Test52','test52','Jakarta','2020-01-26','1234618','Laki – Laki','test52','27d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(119,'Test53','test53','Jakarta','2020-01-27','1234619','Laki – Laki','test53','28d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(120,'Test54','test54','Jakarta','2020-01-27','1234620','Laki – Laki','test54','28d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(121,'Test55','test55','Jakarta','2020-01-28','1234621','Laki – Laki','test55','29d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(122,'Test56','test56','Jakarta','2020-01-28','1234622','Laki – Laki','test56','29d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(123,'Test57','test57','Jakarta','2020-01-29','1234623','Laki – Laki','test57','30d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(124,'Test58','test58','Jakarta','2020-01-29','1234624','Laki – Laki','test58','30d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(125,'Test59','test59','Jakarta','2020-01-30','1234625','Laki – Laki','test59','31d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(126,'Test60','test60','Jakarta','2020-01-30','1234626','Laki – Laki','test60','31d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(127,'Test61','test61','Jakarta','2020-01-31','1234627','Laki – Laki','test61','32d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(128,'Test62','test62','Jakarta','2020-01-31','1234628','Laki – Laki','test62','32d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:02:01',NULL,NULL,'0'),(129,'Test63','test63','Jakarta','2020-01-01','1234629','Laki – Laki','test63','33d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(130,'Test64','test64','Jakarta','2020-01-01','1234630','Laki – Laki','test64','33d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(131,'Test65','test65','Jakarta','2020-01-02','1234631','Laki – Laki','test65','34d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(132,'Test66','test66','Jakarta','2020-01-02','1234632','Laki – Laki','test66','34d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(133,'Test67','test67','Jakarta','2020-01-03','1234633','Laki – Laki','test67','35d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(134,'Test68','test68','Jakarta','2020-01-03','1234634','Laki – Laki','test68','35d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(135,'Test69','test69','Jakarta','2020-01-04','1234635','Laki – Laki','test69','36d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(136,'Test70','test70','Jakarta','2020-01-04','1234636','Laki – Laki','test70','36d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(137,'Test71','test71','Jakarta','2020-01-05','1234637','Laki – Laki','test71','37d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(138,'Test72','test72','Jakarta','2020-01-05','1234638','Laki – Laki','test72','37d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(139,'Test73','test73','Jakarta','2020-01-06','1234639','Laki – Laki','test73','38d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(140,'Test74','test74','Jakarta','2020-01-06','1234640','Laki – Laki','test74','38d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(141,'Test75','test75','Jakarta','2020-01-07','1234641','Laki – Laki','test75','39d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(142,'Test76','test76','Jakarta','2020-01-07','1234642','Laki – Laki','test76','39d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(143,'Test77','test77','Jakarta','2020-01-08','1234643','Laki – Laki','test77','40d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(144,'Test78','test78','Jakarta','2020-01-08','1234644','Laki – Laki','test78','40d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(145,'Test79','test79','Jakarta','2020-01-09','1234645','Laki – Laki','test79','41d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(146,'Test80','test80','Jakarta','2020-01-09','1234646','Laki – Laki','test80','41d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(147,'Test81','test81','Jakarta','2020-01-10','1234647','Laki – Laki','test81','42d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(148,'Test82','test82','Jakarta','2020-01-10','1234648','Laki – Laki','test82','42d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(149,'Test83','test83','Jakarta','2020-01-11','1234649','Laki – Laki','test83','43d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(150,'Test84','test84','Jakarta','2020-01-11','1234650','Laki – Laki','test84','43d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(151,'Test85','test85','Jakarta','2020-01-12','1234651','Laki – Laki','test85','44d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(152,'Test86','test86','Jakarta','2020-01-12','1234652','Laki – Laki','test86','44d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(153,'Test87','test87','Jakarta','2020-01-13','1234653','Laki – Laki','test87','45d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(154,'Test88','test88','Jakarta','2020-01-13','1234654','Laki – Laki','test88','45d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(155,'Test89','test89','Jakarta','2020-01-14','1234655','Laki – Laki','test89','46d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(156,'Test90','test90','Jakarta','2020-01-14','1234656','Laki – Laki','test90','46d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(157,'Test91','test91','Jakarta','2020-01-15','1234657','Laki – Laki','test91','47d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(158,'Test92','test92','Jakarta','2020-01-15','1234658','Laki – Laki','test92','47d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(159,'Test93','test93','Jakarta','2020-01-16','1234659','Laki – Laki','test93','48d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(160,'Test94','test94','Jakarta','2020-01-16','1234660','Laki – Laki','test94','48d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(161,'Test95','test95','Jakarta','2020-01-17','1234661','Laki – Laki','test95','49d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(162,'Test96','test96','Jakarta','2020-01-17','1234662','Laki – Laki','test96','49d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(163,'Test97','test97','Jakarta','2020-01-18','1234663','Laki – Laki','test97','50d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(164,'Test98','test98','Jakarta','2020-01-18','1234664','Laki – Laki','test98','50d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(165,'Test99','test99','Jakarta','2020-01-19','1234665','Laki – Laki','test99','51d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(166,'Test100','test100','Jakarta','2020-01-19','1234666','Laki – Laki','test100','51d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(167,'Test101','test101','Jakarta','2020-01-20','1234667','Laki – Laki','test101','52d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(168,'Test102','test102','Jakarta','2020-01-20','1234668','Laki – Laki','test102','52d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(169,'Test103','test103','Jakarta','2020-01-21','1234669','Laki – Laki','test103','53d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(170,'Test104','test104','Jakarta','2020-01-21','1234670','Laki – Laki','test104','53d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(171,'Test105','test105','Jakarta','2020-01-22','1234671','Laki – Laki','test105','54d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(172,'Test106','test106','Jakarta','2020-01-22','1234672','Laki – Laki','test106','54d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(173,'Test107','test107','Jakarta','2020-01-23','1234673','Laki – Laki','test107','55d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(174,'Test108','test108','Jakarta','2020-01-23','1234674','Laki – Laki','test108','55d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(175,'Test109','test109','Jakarta','2020-01-24','1234675','Laki – Laki','test109','56d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(176,'Test110','test110','Jakarta','2020-01-24','1234676','Laki – Laki','test110','56d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(177,'Test111','test111','Jakarta','2020-01-25','1234677','Laki – Laki','test111','57d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(178,'Test112','test112','Jakarta','2020-01-25','1234678','Laki – Laki','test112','57d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(179,'Test113','test113','Jakarta','2020-01-26','1234679','Laki – Laki','test113','58d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(180,'Test114','test114','Jakarta','2020-01-26','1234680','Laki – Laki','test114','58d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31','saritatest','2020-03-03 05:27:56','1'),(181,'Test115','test115','Jakarta','2020-01-27','1234681','Laki – Laki','test115','59d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(182,'Test116','test116','Jakarta','2020-01-27','1234682','Laki – Laki','test116','59d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31','ricky','2020-03-04 12:54:34','1'),(183,'Test117','test117','Jakarta','2020-01-28','1234683','Laki – Laki','test117','60d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(184,'Test118','test118','Jakarta','2020-01-28','1234684','Laki – Laki','test118','60d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(185,'Test119','test119','Jakarta','2020-01-29','1234685','Laki – Laki','test119','61d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(186,'Test120','test120','Jakarta','2020-01-27','1234686','Laki – Laki','test120','61d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(187,'Test121','test121','Jakarta','2020-01-27','1234687','Laki – Laki','test121','62d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31','if414004','2020-03-03 07:45:03','1'),(188,'Test122','test122','Jakarta','2020-01-28','1234688','Laki – Laki','test122','62d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(189,'Test123','test123','Jakarta','2020-01-28','1234689','Laki – Laki','test123','63d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31',NULL,NULL,'0'),(190,'Test124','test124','Jakarta','2020-01-29','1234690','Laki – Laki','test124','63d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31','ricky','2020-03-04 11:50:23','1'),(191,'Test125','test125','Jakarta','2020-01-27','1234691','Laki – Laki','test125','64d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31','ricky','2020-03-04 11:48:27','1'),(192,'Test126','test126','Jakarta','2020-01-27','1234692','Laki – Laki','test126','64d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31','ricky','2020-03-04 11:00:08','1'),(193,'Test127','test127','Jakarta','2020-01-28','1234693','Laki – Laki','test127','65d26518e67e073665d39b167ec7bd36d','testing@roomme.space','82937485573','','',1,1,'',0,'','','System','2020-03-03 05:04:31','ricky','2020-03-04 11:00:06','1'),(194,'Testing','Aja','Jakarta','2017-03-01','0100001','Laki - Laki','testing','2d26518e67e073665d39b167ec7bd36d','testing123@roomme.space','000000000000',NULL,NULL,1,5,NULL,0,NULL,NULL,'if414004','2020-03-03 07:37:52','if414004','2020-03-03 07:45:31','1'),(195,'Bangun','Sudjatmiko','Jakarta','2020-02-21','2346','Laki - Laki','bangunmiko','52f2186ebcff3d2cf89bd593ff06d6c9','bangun@roomme.space','08123345667',NULL,NULL,1,1,NULL,0,NULL,NULL,'saritatest','2020-03-04 10:01:49',NULL,NULL,'0'),(196,'Test1','coba','Jakarta','2020-02-01','u90u09u','wanita','testingcoy','9510a1b0622b90e8b5540d46eff82c76','test@coba.id','08888888888',NULL,NULL,2,1,NULL,0,NULL,NULL,'saritatest','2020-03-16 06:50:40',NULL,NULL,'0'),(197,'Mas Mas ','audit 1','Jakarta','2020-03-20','1239894','Laki - Laki','audit','2d26518e67e073665d39b167ec7bd36d','masmasaudit@roomme.space','0823104950',NULL,NULL,2,147,NULL,0,NULL,NULL,'ricky','2020-03-20 12:32:17',NULL,NULL,'0'),(198,'mas mas','audit 2','Jakarta','2020-03-19','12930920','Laki - Laki','masaudit','2d26518e67e073665d39b167ec7bd36d','masmasaudit3@roomme.space','23892839832434',NULL,NULL,2,147,NULL,0,NULL,NULL,'ricky','2020-03-20 12:34:56',NULL,NULL,'0'),(199,'David','Yuhan Lim','Jakarta','2019-11-01','1111111111','Laki - Laki','David','97fb218257ca479fd8f16af2955eebb9','david@roomme.space','11111111111',NULL,NULL,1,5,NULL,0,NULL,NULL,'junes@roomme.space','2020-03-22 10:13:37',NULL,NULL,'0'),(200,'Sales','Test','Jakarta','2020-03-24','1111111111','Wanita','Sales Test','66bcdbf87b14df2df9778c7811e1e326','dara@roomme.space','12345678',NULL,NULL,1,4,NULL,0,NULL,NULL,'rudisantoso','2020-03-24 08:52:04',NULL,'2020-03-24 09:15:07','0'),(201,'Business','Strategy Test','Jakarta','2020-03-24','1111111111','Laki - Laki','Business Test','66bcdbf87b14df2df9778c7811e1e326','anthony@roomme.space','123456789',NULL,NULL,1,149,NULL,0,NULL,NULL,'rudisantoso','2020-03-24 08:55:26','anthony','2020-03-30 03:36:25','0'),(202,'rudi','santoso','Jakarta','2020-03-24','123456789','Laki -Laki','rsantoso','66bcdbf87b14df2df9778c7811e1e326','rudi.santoso@roomme.space','123456789',NULL,NULL,1,1,NULL,0,NULL,NULL,'rudisantoso','2020-03-24 08:58:09',NULL,'2020-03-24 09:15:14','0'),(203,'test lontong','lontong','Jakarta','2020-03-01','3232','Perempuan','rickyaaaa','a861049b7351b68f0739776ae3a3f6d8','ricky@lontong.com','93029039203',NULL,NULL,1,134,NULL,0,NULL,NULL,'ricky','2020-03-24 10:56:08',NULL,NULL,'0'),(204,'test','coba','Jakarta','2020-03-02','123456767','Laki - Laki','testing12','4bef2406a210906331a8e68ba3fba81e','putri@roomme.id','081234567778',NULL,NULL,1,1,NULL,0,NULL,NULL,'saritatest','2020-03-26 05:19:05',NULL,NULL,'0'),(205,'putri','test','Jakarta','2020-03-15','1234566789','Perempuan','putritest','4bef2406a210906331a8e68ba3fba81e','putritstng@gmail.com','081234567890',NULL,NULL,1,1,NULL,0,NULL,NULL,'saritatest','2020-03-26 05:36:19',NULL,NULL,'0'),(206,'Miko','Jabir','Jakarta','2020-03-26','400420','Laki - Laki','Mikojabir','cd80cb0586e01a874127fd0e029efecb','mik18jabir@gmail.com','1234567890123',NULL,NULL,2,1,NULL,0,NULL,NULL,'bangunmiko','2020-03-26 09:42:15',NULL,NULL,'0'),(207,'seno',NULL,'Jakarta','2020-03-26','1234567','Laki - Laki','seno','66bcdbf87b14df2df9778c7811e1e326','radhito.seno@roomme.space','123456785672345',NULL,NULL,1,149,NULL,0,NULL,NULL,'systemadmin','2020-03-30 03:18:41',NULL,'2020-03-30 03:20:13','0'),(210,'Testing ','Eki New','Jakarta','2020-02-01','97043829084','Laki - Laki','wadidawuwaw','b22df12f87922d63ff7abf2bb2b35eaa','m.rezky13@gmail.com','08888888888',NULL,NULL,1,1,NULL,0,NULL,NULL,'rezkipradit','2020-03-31 11:07:48',NULL,NULL,'0'),(211,'Ricky','Test email','Jakarta','2020-04-02','93903','Laki - Laki','lontonginaja','c3ef4a051bdc2caa591f653f639858a0','rickyarians@outlook.com','3293092090',NULL,NULL,112,146,NULL,0,NULL,NULL,'ricky','2020-03-31 18:36:09',NULL,NULL,'0'),(212,'ricky','test email','Jakarta','2020-04-01','2323','Laki - Laki','lontogin','c3ef4a051bdc2caa591f653f639858a0','rickysayshusky@gmail.com','8239829383434',NULL,NULL,121,148,NULL,0,NULL,NULL,'ricky','2020-03-31 18:41:21',NULL,NULL,'0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'operation'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-01 11:00:11
