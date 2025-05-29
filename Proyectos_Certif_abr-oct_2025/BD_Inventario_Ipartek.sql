CREATE DATABASE  IF NOT EXISTS `jsp_ordenadores_ipartek` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jsp_ordenadores_ipartek`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: jsp_ordenadores_ipartek
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `aulas`
--

DROP TABLE IF EXISTS `aulas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aulas` (
  `id_aula` int NOT NULL AUTO_INCREMENT,
  `nom_aula` varchar(12) NOT NULL,
  PRIMARY KEY (`id_aula`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aulas`
--

LOCK TABLES `aulas` WRITE;
/*!40000 ALTER TABLE `aulas` DISABLE KEYS */;
INSERT INTO `aulas` VALUES (1,'Isuntza'),(2,'Karraspio'),(3,'Gorbea'),(4,'Pagasarri'),(5,'Kolitza'),(6,'Galea');
/*!40000 ALTER TABLE `aulas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `nom_marca` varchar(10) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Lenovo'),(2,'HP'),(3,'Toshiba');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelos`
--

DROP TABLE IF EXISTS `modelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelos` (
  `id_modelo` int NOT NULL AUTO_INCREMENT,
  `nom_modelo` varchar(10) NOT NULL,
  `FK_marca_mod` int NOT NULL,
  PRIMARY KEY (`id_modelo`),
  KEY `FK_marca_idx` (`FK_marca_mod`),
  CONSTRAINT `constr_FK_marca_mod` FOREIGN KEY (`FK_marca_mod`) REFERENCES `marcas` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelos`
--

LOCK TABLES `modelos` WRITE;
/*!40000 ALTER TABLE `modelos` DISABLE KEYS */;
INSERT INTO `modelos` VALUES (1,'lnv1',1),(2,'bz1',3),(3,'tz2',3),(4,'GP 250g1',2),(5,'GP 250g2',2),(6,'GP 250g3',2);
/*!40000 ALTER TABLE `modelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenadores`
--

DROP TABLE IF EXISTS `ordenadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenadores` (
  `id_ordenador` int NOT NULL AUTO_INCREMENT,
  `num_serie` varchar(10) NOT NULL,
  `ram` int unsigned NOT NULL,
  `ssd` tinyint(1) NOT NULL,
  `FK_aula` int NOT NULL,
  `FK_modelo` int NOT NULL,
  PRIMARY KEY (`id_ordenador`),
  UNIQUE KEY `num_serie_UNIQUE` (`num_serie`),
  KEY `FK_aula_idx` (`FK_aula`),
  KEY `FK_modelo_idx` (`FK_modelo`),
  CONSTRAINT `constr_FK_aula` FOREIGN KEY (`FK_aula`) REFERENCES `aulas` (`id_aula`),
  CONSTRAINT `constr_FK_modelo` FOREIGN KEY (`FK_modelo`) REFERENCES `modelos` (`id_modelo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenadores`
--

LOCK TABLES `ordenadores` WRITE;
/*!40000 ALTER TABLE `ordenadores` DISABLE KEYS */;
INSERT INTO `ordenadores` VALUES (1,'L574821',128,0,1,1),(2,'T1328436',32,1,6,3),(3,'H994372',16,1,3,4),(4,'H23497235',64,0,5,4),(5,'H7658943',16,1,6,6),(6,'S564567898',12,0,4,1);
/*!40000 ALTER TABLE `ordenadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_ordenadores`
--

DROP TABLE IF EXISTS `vista_ordenadores`;
/*!50001 DROP VIEW IF EXISTS `vista_ordenadores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ordenadores` AS SELECT 
 1 AS `id_ordenador`,
 1 AS `num_serie`,
 1 AS `ram`,
 1 AS `ssd`,
 1 AS `FK_aula`,
 1 AS `FK_modelo`,
 1 AS `nom_aula`,
 1 AS `nom_modelo`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_ordenadores`
--

/*!50001 DROP VIEW IF EXISTS `vista_ordenadores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ordenadores` AS select `o`.`id_ordenador` AS `id_ordenador`,`o`.`num_serie` AS `num_serie`,`o`.`ram` AS `ram`,`o`.`ssd` AS `ssd`,`o`.`FK_aula` AS `FK_aula`,`o`.`FK_modelo` AS `FK_modelo`,`a`.`nom_aula` AS `nom_aula`,`m`.`nom_modelo` AS `nom_modelo` from ((`ordenadores` `o` join `aulas` `a`) join `modelos` `m`) where ((`a`.`id_aula` = `o`.`FK_aula`) and (`m`.`id_modelo` = `o`.`FK_modelo`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-27 10:43:01
