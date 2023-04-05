-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: new_hospital_management
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

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
-- Table structure for table `hospital_employee`
--

DROP TABLE IF EXISTS `hospital_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_employee` (
  `employee_id` varchar(20) NOT NULL,
  `h_registration_no` varchar(20) NOT NULL,
  `employee_Name` varchar(20) NOT NULL,
  `employee_password` varchar(20) NOT NULL,
  `employee_DOB` date NOT NULL,
  `employee_DOJ` date NOT NULL,
  `employee_salary` varchar(20) NOT NULL,
  `employee_photos` varchar(50) DEFAULT NULL,
  `employee_aadhar_no` int(11) NOT NULL,
  `employee_experience` varchar(20) DEFAULT NULL,
  `employee_contact_no` char(10) DEFAULT NULL,
  `employee_email` varchar(20) NOT NULL,
  `employee_gender` varchar(10) DEFAULT NULL CHECK (`employee_gender` in ('Female','Male','other')),
  PRIMARY KEY (`employee_id`),
  KEY `h_registration_no` (`h_registration_no`),
  CONSTRAINT `hospital_employee_ibfk_1` FOREIGN KEY (`h_registration_no`) REFERENCES `hospital_registration` (`h_registration_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_employee`
--

LOCK TABLES `hospital_employee` WRITE;
/*!40000 ALTER TABLE `hospital_employee` DISABLE KEYS */;
INSERT INTO `hospital_employee` VALUES ('12','233','princy','12345','2002-04-02','2023-03-16','20000','no image',346765467,'','2147483647','anjali@gmail.com','female'),('2','243','Ankita','12345','2022-11-16','2023-04-11','25000','no image',27654873,'1year','2147483647','ankita@gmail.com','female'),('3','55','Ankita','12345','2022-11-16','2023-04-11','25000','no image',27654873,'1year','2147483647','ankita@gmail.com','female'),('4','55','Ankita','12345','2022-11-15','2023-04-10','25000','no image',27654873,'1year','2147483647','ankita@gmail.com','female'),('45','55','Ankita','98765','2002-04-02','2023-03-16','20000','no image',87698767,'','6263176974','anjali@gmail.com','female'),('5','233','Ankita','12345','2022-11-15','2023-04-10','25000','no image',27654873,'1year','2147483647','ankita@gmail.com','female'),('6','55','Ankita','12345','2022-11-14','2023-04-09','25000','no image',27654873,'1year','2147483647','ankita@gmail.com','female'),('6666','6666','xyz','12345','2002-04-02','2023-03-16','20000','no image',23456787,'','6263176974','xyz@gmail.com','female');
/*!40000 ALTER TABLE `hospital_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_lab_test_rate`
--

DROP TABLE IF EXISTS `hospital_lab_test_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_lab_test_rate` (
  `test_id` varchar(10) NOT NULL,
  `test_name` varchar(10) NOT NULL,
  `test_rate` varchar(10) NOT NULL,
  PRIMARY KEY (`test_id`),
  UNIQUE KEY `test_name` (`test_name`),
  CONSTRAINT `hospital_lab_test_rate_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `hospital_labs` (`lab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_lab_test_rate`
--

LOCK TABLES `hospital_lab_test_rate` WRITE;
/*!40000 ALTER TABLE `hospital_lab_test_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospital_lab_test_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_labs`
--

DROP TABLE IF EXISTS `hospital_labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_labs` (
  `lab_id` varchar(20) NOT NULL,
  `lab_name` varchar(20) NOT NULL,
  `lab_type` varchar(20) NOT NULL,
  `lab_test` varchar(20) NOT NULL,
  PRIMARY KEY (`lab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_labs`
--

LOCK TABLES `hospital_labs` WRITE;
/*!40000 ALTER TABLE `hospital_labs` DISABLE KEYS */;
INSERT INTO `hospital_labs` VALUES ('','','',''),('22','','all type','blood test'),('3','','all type','blood test'),('4','lal pathology','all type','blood test'),('5','lal pathology','all type','blood test');
/*!40000 ALTER TABLE `hospital_labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_owner`
--

DROP TABLE IF EXISTS `hospital_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_owner` (
  `h_owner_id` varchar(20) NOT NULL,
  `h_owner_name` varchar(50) NOT NULL,
  `h_owner_addhar` varchar(12) NOT NULL,
  `h_owner_password` varchar(100) NOT NULL,
  `status` varchar(8) DEFAULT NULL CHECK (`status` in ('Active','Inactive')),
  `registration` datetime DEFAULT NULL,
  PRIMARY KEY (`h_owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_owner`
--

LOCK TABLES `hospital_owner` WRITE;
/*!40000 ALTER TABLE `hospital_owner` DISABLE KEYS */;
INSERT INTO `hospital_owner` VALUES ('1','Rakesh','265478645824','123456','InActive','2022-11-01 18:30:00'),('2','gfghh','265475646546','161555','Active','2022-11-01 18:30:00'),('3','haresh','123564875645','1234567','active','0000-00-00 00:00:00'),('4','Suresh','265478645824','123456','Active','2022-11-06 00:00:00'),('5','dddmesh','265475646546','161555','Active','2022-11-01 18:30:00');
/*!40000 ALTER TABLE `hospital_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_registration`
--

DROP TABLE IF EXISTS `hospital_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_registration` (
  `h_owner_id` varchar(20) DEFAULT NULL,
  `h_registration_no` varchar(20) NOT NULL,
  `h_registration_name` varchar(20) NOT NULL,
  `h_registration_type` varchar(20) NOT NULL,
  `h_registration_establish_year` varchar(10) NOT NULL,
  `h_registaration_address` varchar(20) NOT NULL,
  `h_registration_state` varchar(10) NOT NULL,
  `h_registration_city` varchar(10) NOT NULL,
  `h_registrtaion_pincode` varchar(10) NOT NULL,
  `h_registration_landmark` varchar(10) NOT NULL,
  `h_registration_contact` char(10) DEFAULT NULL,
  `h_registration_status` varchar(20) DEFAULT 'Active',
  `h_registration_longtitude` varchar(10) DEFAULT NULL,
  `h_registration_latitude` varchar(10) DEFAULT NULL,
  `h_registration_country` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`h_registration_no`),
  KEY `h_owner_id` (`h_owner_id`),
  CONSTRAINT `hospital_registration_ibfk_1` FOREIGN KEY (`h_owner_id`) REFERENCES `hospital_owner` (`h_owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_registration`
--

LOCK TABLES `hospital_registration` WRITE;
/*!40000 ALTER TABLE `hospital_registration` DISABLE KEYS */;
INSERT INTO `hospital_registration` VALUES ('2','233','Daisy','All type','2022','121old ashoka gardee','Madhya Pra','delhi','','bhpal','2147483647','Active',NULL,NULL,NULL),('2','243','bellis','multi specilist','2023','121 old ashoka garde','MADHYA PRA','Select','','bhpal','2147483647','',NULL,NULL,NULL),('1','55','55ttt','55tt','5555','55tttt','55tt','55tt','','55tt','2147483647','Active',NULL,NULL,NULL),('1','6666','Anushka','multi specilist','2022-11-03','121old ashoka garden','MP','Bijawar','462023','bhpal','9174400258','Active','hii','bniuhi;u',NULL),('2','788','Ayushi','multi specilist','2022-11-03','121old ashoka garden','mp','Bhopal','','hiiiiiiiii','9174400258','Active','hii','hlw',NULL),('2','789','ankitaSharma','multi specilist','2022-11-03','121old ashoka gardee','MP','Bhopal','','bhpal','9174400258','Active','hiii','hlw',NULL),('1','999','Anku','multi specilist','2022-11-03','121old ashoka gardee','Madhya Pra','Bhopal','','bhpal','9174400258','Active','jnjknik','effef',NULL);
/*!40000 ALTER TABLE `hospital_registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-05 22:56:12
