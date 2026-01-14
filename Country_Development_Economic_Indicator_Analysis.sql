-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: country
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `economies`
--

DROP TABLE IF EXISTS `economies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `economies` (
  `Country` varchar(60) NOT NULL,
  `Population` int NOT NULL,
  `GDPPerCapita` int DEFAULT NULL,
  `Country_Type` varchar(50) DEFAULT NULL,
  `Economy` varchar(50) DEFAULT NULL,
  `GDP_Growth` float DEFAULT NULL,
  `Inflation` float DEFAULT NULL,
  `Unemployment` float DEFAULT NULL,
  `Participation` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `economies`
--

LOCK TABLES `economies` WRITE;
/*!40000 ALTER TABLE `economies` DISABLE KEYS */;
INSERT INTO `economies` VALUES ('China',1424381924,13806,'Developing','Mixed',5,0.9,5.1,66),('India',1454606724,2818,'Developing','Mixed',6.2,4.4,5.2,55.8),('Japan',121960408,34713,'Highly Developed','Mixed',0.6,2,2.6,64.2),('South Africa',61020221,6667,'Developing','Mixed',1.2,3.6,31.9,60),('South Korea',51690479,35962,'Highly Developed','Mixed',1.8,1.9,2.5,71.8),('UAE',9665319,51348,'Developed','Mixed',5,2,2.2,81.4),('UK',68180606,56661,'Highly Developed','Mixed',1.3,2,4.7,79),('USA',343603404,89599,'Developed','Mixed',2.1,2.2,4.1,62.5);
/*!40000 ALTER TABLE `economies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gdp`
--

DROP TABLE IF EXISTS `gdp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gdp` (
  `Country` varchar(60) NOT NULL,
  `Population` int NOT NULL,
  `Total_GDP` int NOT NULL,
  `GDPperCapita` int DEFAULT NULL,
  `Country_Type` varchar(50) DEFAULT NULL,
  `GDP_Growth` float DEFAULT NULL,
  `Inflation` float DEFAULT NULL,
  `Unemployment` float DEFAULT NULL,
  `Economy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gdp`
--

LOCK TABLES `gdp` WRITE;
/*!40000 ALTER TABLE `gdp` DISABLE KEYS */;
INSERT INTO `gdp` VALUES ('China',1424381924,19398577,13806,'Developing',NULL,NULL,NULL,NULL),('India',1454606724,4125213,2818,'Developing',NULL,NULL,NULL,NULL),('Japan',121960408,4279828,34713,'Highly Developed',NULL,NULL,NULL,NULL),('South Africa',61020221,426383,6667,'Developing',NULL,NULL,NULL,NULL),('South Korea',51690479,1858572,35962,'Highly Developed',NULL,NULL,NULL,NULL),('UAE',9665319,569097,51348,'Developed',NULL,NULL,NULL,NULL),('UK',68180606,3958780,56661,'Highly Developed',NULL,NULL,NULL,NULL),('USA',343603404,30615743,89599,'Developed',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `gdp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labor_market`
--

DROP TABLE IF EXISTS `labor_market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labor_market` (
  `Country_id` int NOT NULL,
  `Country_name` varchar(60) DEFAULT NULL,
  `Population` int DEFAULT NULL,
  `Unemployment` float DEFAULT NULL,
  `Participation` float DEFAULT NULL,
  PRIMARY KEY (`Country_id`),
  KEY `Country_name` (`Country_name`),
  CONSTRAINT `labor_market_ibfk_1` FOREIGN KEY (`Country_name`) REFERENCES `gdp` (`Country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labor_market`
--

LOCK TABLES `labor_market` WRITE;
/*!40000 ALTER TABLE `labor_market` DISABLE KEYS */;
INSERT INTO `labor_market` VALUES (1,'India',1454606724,5.2,55.8),(2,'Japan',121960408,2.6,64.2),(3,'China',1424381924,5.1,66),(4,'South Korea',51690479,2.5,71.8),(5,'UK',68180606,4.7,79),(6,'USA',343603404,4.1,62.5),(7,'UAE',9665319,2.2,81.4),(8,'South Africa',61020221,31.9,60);
/*!40000 ALTER TABLE `labor_market` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-14 13:38:26
