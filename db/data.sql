-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: database-1.crgo06co68lw.us-east-1.rds.amazonaws.com    Database: registration
-- ------------------------------------------------------
-- Server version	8.0.35

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `EventLogs`
--

DROP TABLE IF EXISTS `EventLogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EventLogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `metodo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `tipo` enum('API','FORM') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventLogs`
--

LOCK TABLES `EventLogs` WRITE;
/*!40000 ALTER TABLE `EventLogs` DISABLE KEYS */;
INSERT INTO `EventLogs` VALUES (1,'2024-04-17 10:49:07','POST','/register','API'),(2,'2024-04-17 13:23:29','POST','/login','API'),(3,'2024-04-17 13:23:39','POST','/login','API'),(4,'2024-04-17 13:25:22','POST','/register','API'),(5,'2024-04-17 08:24:00',NULL,'prueba envio form','FORM'),(6,'2024-04-17 13:25:50','GET','/consult?fechaFin=&fechaInicio=&tipo=','API'),(7,'2024-04-17 13:59:04','GET','/consult?fechaFin=&fechaInicio=&tipo=','API'),(8,'2024-04-17 13:59:31','GET','/consult?fechaFin=&fechaInicio=&tipo=','API'),(9,'2024-04-17 13:59:47','GET','/consult?fechaFin=&fechaInicio=&tipo=','API'),(10,'2024-04-17 14:13:24','GET','/consult?fechaFin=&fechaInicio=&tipo=','API'),(11,'2024-04-17 14:16:06','POST','/login','API'),(12,'2024-04-17 15:29:39','POST','/login','API'),(13,'2024-04-17 15:29:56','POST','/login','API');
/*!40000 ALTER TABLE `EventLogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Nombre Apellido','1990-01-01','correo@example.com','$2a$08$bbQT9ZIKSOurWnE/LQqzA.LMpkd9.1OXc2RdOCWHir1ZAmdsGWlPi');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-17 10:52:48
