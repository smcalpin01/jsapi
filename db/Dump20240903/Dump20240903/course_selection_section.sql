-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: course_selection
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `SecID` int NOT NULL,
  `Building` varchar(100) NOT NULL,
  `RoomNo` int NOT NULL,
  `Year` int NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `SecNo` int NOT NULL,
  `DayTimeMeet` varchar(50) NOT NULL,
  `section_of_course` int DEFAULT NULL,
  `section_taughtby` int DEFAULT NULL,
  PRIMARY KEY (`SecID`),
  KEY `Section_SecOf_id_cdf14b32` (`section_of_course`),
  KEY `Section_TaughtBy_id_a612e535` (`section_taughtby`),
  CONSTRAINT `Section_section_of_course_86eb9e8b_fk_Course_CCode` FOREIGN KEY (`section_of_course`) REFERENCES `course` (`CCode`),
  CONSTRAINT `Section_section_taughtby_c1e39044_fk_Instructor_InstID` FOREIGN KEY (`section_taughtby`) REFERENCES `instructor` (`InstID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'Pray-Harrold',520,2018,'Fall',9991,'MW 10:00AM-11:50AM',33111,12342345),(2,'Pray-Harrold',531,2018,'Fall',9992,'TH 2:00PM-3:50PM',33111,12341234),(3,'Pray-Harrold',508,2018,'Fall',9993,'MW 12:00PM-1:50PM',33112,12342345),(4,'Pray-Harrold',520,2018,'Fall',9994,'MW 12:00PM-1:50PM',33113,12341234),(5,'Pray-Harrold',509,2018,'Fall',9995,'M 11:00AM-2:50PM',33114,12340123),(6,'Science Complex Building',211,2018,'Fall',9996,'TH 9:00AM-10:50AM',33115,12344321),(7,'Pray-Harrold',430,2018,'Fall',9997,'TH 2:00PM-3:50PM',33115,12342345),(8,'Sill Hall',121,2018,'Fall',9998,'MW 3:00PM-4:50PM',33116,12345671),(9,'Sill Hall',223,2018,'Fall',9999,'MW 12:00PM-1:50PM',33117,12345432),(10,'Sill Hall',104,2018,'Fall',99910,'TW 11:30AM-1:20PM',33117,12343321),(11,'REC-IM Building',214,2018,'Fall',99911,'W 1:00PM-3:30PM',33118,12345558),(12,'REC-IM Building',102,2018,'Fall',99912,'Tu 10:00AM-12:50PM',33118,12345678),(13,'REC-IM Building',203,2018,'Fall',99913,'M 3:00PM-5:30PM',33118,12340987);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-03 21:06:55
