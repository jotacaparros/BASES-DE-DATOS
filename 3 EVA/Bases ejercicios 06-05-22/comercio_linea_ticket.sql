-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: comercio
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `linea_ticket`
--

DROP TABLE IF EXISTS `linea_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linea_ticket` (
  `ticket` int NOT NULL,
  `nlinea` int NOT NULL,
  `cant` int DEFAULT NULL,
  `precio` decimal(7,2) DEFAULT NULL,
  `dto` decimal(4,1) DEFAULT NULL,
  `articulo` char(8) DEFAULT NULL,
  PRIMARY KEY (`ticket`,`nlinea`),
  KEY `articulo` (`articulo`),
  CONSTRAINT `linea_ticket_ibfk_1` FOREIGN KEY (`ticket`) REFERENCES `ticket` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `linea_ticket_ibfk_2` FOREIGN KEY (`articulo`) REFERENCES `articulo` (`codigo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linea_ticket`
--

LOCK TABLES `linea_ticket` WRITE;
/*!40000 ALTER TABLE `linea_ticket` DISABLE KEYS */;
INSERT INTO `linea_ticket` VALUES (1,1,7,0.79,0.0,'TOR00002'),(1,2,5,1.20,0.0,'TOR00007'),(1,3,7,0.79,0.0,'TOR00002'),(2,1,4,2.10,0.0,'TOR00010'),(3,1,4,0.99,0.0,'TOR00004'),(3,2,2,45.15,3.0,'TEN00002'),(3,3,1,41.25,0.0,'ESC00004'),(4,1,7,0.79,0.0,'TOR00002'),(5,1,2,675.00,3.0,'SEG00002'),(5,2,4,8.75,0.0,'MAN00007'),(6,1,2,25.25,0.0,'CUB00007'),(7,1,5,2.25,0.0,'TOR00011'),(7,2,3,12.98,0.0,'MAN00002'),(7,3,3,3.09,0.0,'TOR00005'),(8,1,2,28.95,0.0,'ESC00001'),(8,2,2,41.25,0.0,'ESC00004'),(9,1,1,8.75,0.0,'MAN00007'),(10,1,6,3.90,0.0,'INF00001'),(11,1,1,975.00,0.0,'SEG00001'),(12,1,2,32.95,0.0,'CUB00006'),(12,2,4,8.75,0.0,'MAN00007'),(12,3,2,95.00,3.0,'CUB00002'),(12,4,7,1.75,3.0,'CUB00004'),(13,1,1,28.95,0.0,'ESC00001'),(14,1,7,2.10,0.0,'INF00007'),(15,1,1,675.00,3.0,'SEG00002'),(16,1,6,1.99,0.0,'TOR00006'),(17,1,7,0.79,0.0,'TOR00002'),(17,2,1,975.00,0.0,'SEG00001'),(17,3,1,49.95,0.0,'ESC00002'),(18,1,5,3.09,0.0,'TOR00005'),(18,2,1,975.00,0.0,'SEG00001'),(18,3,5,0.19,0.0,'TOR00003'),(18,4,2,95.00,3.0,'CUB00002'),(19,1,1,110.00,3.0,'SEG00005'),(20,1,2,102.95,0.0,'CAR00002'),(21,1,1,29.98,0.0,'CAR00001'),(22,1,1,23.50,0.0,'BUZ00001'),(23,1,2,41.98,0.0,'CAR00003'),(24,1,2,102.95,0.0,'CAR00002'),(25,1,2,8.20,0.0,'MAN00006'),(26,1,3,1.68,0.0,'INF00003'),(27,1,3,8.20,0.0,'MAN00006'),(27,2,3,13.50,0.0,'INF00006'),(28,1,1,31.75,0.0,'CUB00005'),(28,2,2,31.25,3.0,'ESC00005'),(29,1,4,2.10,0.0,'INF00007'),(30,1,1,23.50,0.0,'BUZ00001'),(30,2,2,196.00,10.0,'SEG00003'),(30,3,1,25.25,0.0,'CUB00007'),(31,1,5,1.99,0.0,'TOR00006'),(32,1,1,5.69,0.0,'MAN00004'),(33,1,6,2.10,0.0,'INF00007'),(34,1,2,124.55,0.0,'ESC00003'),(35,1,2,975.00,0.0,'SEG00001'),(35,2,7,3.19,0.0,'MAN00001'),(35,3,4,2.25,0.0,'TOR00001'),(35,4,4,0.99,0.0,'TOR00004'),(36,1,2,23.50,0.0,'BUZ00001'),(37,1,3,3.99,10.0,'INF00005'),(37,2,2,49.95,0.0,'MAN00005'),(37,3,1,28.95,0.0,'ESC00001'),(38,1,3,3.19,0.0,'MAN00001'),(39,1,1,975.00,0.0,'SEG00001'),(40,1,2,12.98,0.0,'TEN00004'),(41,1,1,975.00,0.0,'SEG00001'),(42,1,5,3.99,10.0,'INF00005'),(43,1,1,196.00,10.0,'SEG00003'),(43,2,2,9.20,3.0,'BUZ00003'),(44,1,1,18.65,10.0,'CUB00003'),(44,2,7,2.19,0.0,'TOR00008'),(45,1,3,5.69,0.0,'MAN00004'),(46,1,1,124.55,0.0,'ESC00003'),(46,2,2,32.95,0.0,'CUB00006'),(46,3,2,32.95,0.0,'CUB00006'),(46,4,4,13.50,0.0,'INF00006'),(47,1,7,1.75,3.0,'CUB00004'),(47,2,4,1.68,0.0,'INF00003'),(48,1,5,3.09,0.0,'TOR00005'),(49,1,1,49.95,0.0,'ESC00002'),(50,1,5,3.49,3.0,'BUZ00002'),(51,1,1,29.98,0.0,'CAR00001'),(52,1,5,3.19,0.0,'MAN00001'),(53,1,1,12.98,0.0,'MAN00002'),(54,1,4,18.65,10.0,'CUB00003'),(55,1,4,0.19,0.0,'TOR00003'),(55,2,2,41.25,0.0,'ESC00004'),(56,1,1,34.95,0.0,'TEN00003'),(57,1,1,29.98,0.0,'CAR00001'),(57,2,7,2.10,0.0,'TOR00010'),(57,3,7,2.09,0.0,'INF00002'),(58,1,2,41.98,0.0,'CAR00003'),(59,1,1,49.95,0.0,'MAN00005'),(60,1,2,18.90,0.0,'SEG00006'),(60,2,4,3.99,10.0,'INF00005'),(60,3,7,0.29,0.0,'TOR00009'),(60,4,2,18.90,0.0,'SEG00006'),(60,5,1,25.25,0.0,'CUB00007'),(60,6,5,3.09,0.0,'TOR00005'),(61,1,5,2.25,0.0,'TOR00011'),(61,2,1,132.00,0.0,'CUB00001'),(62,1,2,32.95,0.0,'CUB00006'),(62,2,3,1.99,0.0,'TOR00006'),(62,3,3,2.19,0.0,'TOR00008'),(63,1,1,34.95,0.0,'TEN00003'),(63,2,2,132.00,0.0,'CUB00001'),(63,3,2,29.98,0.0,'CAR00001'),(64,1,4,13.50,0.0,'INF00006'),(64,2,3,5.69,0.0,'MAN00004'),(64,3,6,1.99,0.0,'TOR00006'),(64,4,3,3.19,0.0,'MAN00001'),(64,5,4,12.10,0.0,'MAN00003'),(64,6,2,28.95,0.0,'ESC00001'),(64,7,7,1.75,3.0,'CUB00004'),(65,1,1,5.69,0.0,'MAN00004'),(66,1,2,102.95,0.0,'CAR00002'),(67,1,5,0.99,0.0,'TOR00004'),(68,1,2,102.95,0.0,'CAR00002'),(69,1,2,675.00,3.0,'SEG00002'),(70,1,1,196.00,10.0,'SEG00003'),(71,1,3,9.20,3.0,'BUZ00003'),(72,1,2,65.90,0.0,'TEN00001'),(73,1,2,13.50,0.0,'INF00006'),(74,1,1,12.98,0.0,'MAN00002'),(74,2,2,85.00,0.0,'SEG00004'),(74,3,3,9.20,3.0,'BUZ00003'),(74,4,2,29.98,0.0,'CAR00001'),(75,1,1,95.00,3.0,'CUB00002'),(76,1,7,0.29,0.0,'TOR00009'),(76,2,4,3.09,0.0,'TOR00005'),(77,1,2,975.00,0.0,'SEG00001'),(78,1,7,0.19,0.0,'TOR00003'),(79,1,4,3.99,10.0,'INF00005'),(80,1,1,675.00,3.0,'SEG00002'),(80,2,2,45.15,3.0,'TEN00002'),(81,1,2,41.98,0.0,'CAR00003'),(82,1,3,0.99,0.0,'TOR00004'),(83,1,1,196.00,10.0,'SEG00003'),(84,1,1,41.25,0.0,'ESC00004'),(84,2,6,2.09,0.0,'INF00002'),(85,1,3,3.90,0.0,'INF00001'),(86,1,3,5.69,0.0,'MAN00004'),(87,1,1,5.69,0.0,'MAN00004'),(87,2,5,0.79,0.0,'TOR00002'),(88,1,1,18.90,0.0,'SEG00006'),(89,1,1,31.25,3.0,'ESC00005'),(90,1,1,41.25,0.0,'ESC00004'),(90,2,4,12.98,0.0,'MAN00002'),(90,3,3,3.19,0.0,'MAN00001'),(90,4,1,32.95,0.0,'CUB00006'),(91,1,2,31.75,0.0,'CUB00005'),(91,2,1,41.98,0.0,'CAR00003'),(92,1,2,95.00,3.0,'CUB00002'),(93,1,1,34.95,0.0,'TEN00003'),(94,1,2,196.00,10.0,'SEG00003'),(94,2,2,41.25,0.0,'ESC00004'),(94,3,3,2.09,0.0,'INF00002'),(95,1,2,65.90,0.0,'TEN00001'),(96,1,2,28.95,0.0,'ESC00001'),(97,1,1,124.55,0.0,'ESC00003'),(98,1,3,2.10,0.0,'TOR00010'),(98,2,5,3.99,10.0,'INF00005'),(98,3,3,0.19,0.0,'TOR00003'),(98,4,4,1.75,3.0,'CUB00004'),(98,5,1,45.15,3.0,'TEN00002'),(98,6,1,31.75,0.0,'CUB00005'),(99,1,1,132.00,0.0,'CUB00001'),(100,1,2,85.00,0.0,'SEG00004'),(100,2,3,3.19,0.0,'MAN00001'),(101,1,1,32.95,0.0,'CUB00006'),(102,1,1,31.25,3.0,'ESC00005'),(103,1,1,49.95,0.0,'MAN00005'),(104,1,5,2.10,0.0,'INF00007'),(105,1,2,45.15,3.0,'TEN00002'),(106,1,2,132.00,0.0,'CUB00001'),(107,1,1,31.75,0.0,'CUB00005'),(108,1,1,45.15,3.0,'TEN00002'),(108,2,2,32.50,2.0,NULL);
/*!40000 ALTER TABLE `linea_ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04  9:18:19