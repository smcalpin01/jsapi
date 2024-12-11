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
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `InstID` int NOT NULL,
  `InstRank` varchar(50) NOT NULL,
  `InstName` varchar(100) NOT NULL,
  `InstOffice` varchar(100) NOT NULL,
  `InstPhone` int NOT NULL,
  `instructor_employedby` int DEFAULT NULL,
  PRIMARY KEY (`InstID`),
  KEY `Instructor_EmployedBy_id_f02d99b8` (`instructor_employedby`),
  CONSTRAINT `Instructor_instructor_employedby_d544c7e1_fk_Department_DeptCode` FOREIGN KEY (`instructor_employedby`) REFERENCES `department` (`DeptCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (12340123,'full','Elsa Poh','504L',7347,88121212),(12340987,'associate','Siyuan Jiang','504E',7349,88010101),(12341234,'full','Li Zhang','',734,88121212),(12342345,'full','Aby Tehranipour','504D',7348,88121212),(12343321,'full','Krish Narayanan','504A',7345,88292929),(12344321,'full','Sundrichan Maniccam','504I',7342,88121212),(12345432,'associate','Biswajit Panja','504G',7341,88292929),(12345558,'part','Zenia Bahorski','504C',7346,88010101),(12345671,'associate','Matthew Evett','504J',7344,88292929),(12345678,'part','Andre Kashliev','504B',7343,88010101);
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
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
