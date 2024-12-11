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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `CCode` int NOT NULL,
  `Credits` int NOT NULL,
  `CName` varchar(100) NOT NULL,
  `CLevel` varchar(20) NOT NULL,
  `CDesc` longtext NOT NULL,
  `course_offeredby` int DEFAULT NULL,
  PRIMARY KEY (`CCode`),
  KEY `Course_COfferedBy_id_175afb36` (`course_offeredby`),
  CONSTRAINT `Course_course_offeredby_255c4308_fk_Department_DeptCode` FOREIGN KEY (`course_offeredby`) REFERENCES `department` (`DeptCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (33111,4,'Intro to Comp Sci','100','Introduction course on coding, whole course uses Java.',88121212),(33112,4,'Intro to Data Structures','200','Introduction to data structures using Java.',88121212),(33113,3,'Computer Organization I','200','Emphasis on binary and related binary topics, will work on project with TinyCPU.',88121212),(33114,3,'Internet-based Computing','200','Internet programming languages JavaScript, HTML, CSS, and PHP are learned.',88121212),(33115,4,'Algorithms and Data Structures','300','More advanced data structore class with an emphasis on algorithms.',88121212),(33116,4,'SAG Introduction','100','Simulation, Animation, and Gaming are learned. Scratch will be used.',88292929),(33117,4,'Intro to Unity I','200','Gaming-centered class that uses Unity. End of semester showcase, attendance required.',88292929),(33118,1,'Yoga','100','Yoga class for a whole semester. The States of Mind will be taught in one of the sessions',88010101);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
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
