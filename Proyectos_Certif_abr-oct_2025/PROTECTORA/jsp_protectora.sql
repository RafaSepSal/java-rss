CREATE DATABASE  IF NOT EXISTS `jsp_protectora` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jsp_protectora`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: jsp_protectora
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
-- Table structure for table `animales`
--

DROP TABLE IF EXISTS `animales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animales` (
  `id_animal` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `peso` decimal(6,2) unsigned NOT NULL,
  `edad` int unsigned NOT NULL,
  `FK_especie` int NOT NULL,
  PRIMARY KEY (`id_animal`),
  KEY `constr_FK_especie_idx` (`FK_especie`),
  CONSTRAINT `constr_FK_especie` FOREIGN KEY (`FK_especie`) REFERENCES `especies` (`id_especie`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animales`
--

LOCK TABLES `animales` WRITE;
/*!40000 ALTER TABLE `animales` DISABLE KEYS */;
INSERT INTO `animales` VALUES (1,'Bunny','Conejo blanco con orejas largas',2.50,3,3),(2,'Miau','Gato negro muy juguetón',4.20,2,1),(3,'Tiny','Hamster dorado pequeño',0.15,1,5),(4,'Piolin','Pajaro canario amarillo',0.30,1,4),(5,'Firulais','Perro labrador amigable',25.00,5,2),(6,'Shelly','Tortuga de caparazón verde',3.00,10,6),(7,'Whiskers','Gato atigrado con ojos verdes',4.00,4,1),(8,'Luna','Gata blanca y negra',3.80,3,1),(9,'Simba','Gato naranja de tamaño mediano',4.50,5,1),(10,'Max','Perro pastor alemán',30.00,6,2),(11,'Rocky','Bulldog inglés robusto',24.00,4,2),(12,'Buddy','Golden retriever amigable',28.00,3,2),(13,'Zeus','Dálmata con manchas negras',26.50,5,2),(14,'Nibbles','Hámster ruso gris',0.18,1,5),(15,'Fuzzy','Hámster sirio marrón',0.20,2,5),(16,'Kiwi','Pájaro tropical colorido',0.35,3,4),(17,'Sunny','Canario amarillo brillante',0.25,2,4),(18,'Tank','Tortuga de tierra grande',4.50,15,6);
/*!40000 ALTER TABLE `animales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especies`
--

DROP TABLE IF EXISTS `especies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especies` (
  `id_especie` int NOT NULL AUTO_INCREMENT,
  `especie` varchar(45) NOT NULL,
  PRIMARY KEY (`id_especie`),
  UNIQUE KEY `especie_UNIQUE` (`especie`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especies`
--

LOCK TABLES `especies` WRITE;
/*!40000 ALTER TABLE `especies` DISABLE KEYS */;
INSERT INTO `especies` VALUES (3,'Conejo'),(1,'Gato'),(5,'Hamster'),(4,'Pajaro'),(2,'Perro'),(6,'Tortuga');
/*!40000 ALTER TABLE `especies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `contra` varchar(255) NOT NULL,
  `pimienta` varchar(45) NOT NULL DEFAULT 'pimienta',
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'alain','3489e1b029742f8943c0257e8e934d7380e1bc4ea352067fb814f6b9bdb3f9e5','pimienta');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_animales`
--

DROP TABLE IF EXISTS `v_animales`;
/*!50001 DROP VIEW IF EXISTS `v_animales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_animales` AS SELECT 
 1 AS `id_animal`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `peso`,
 1 AS `edad`,
 1 AS `FK_especie`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_animales`
--

/*!50001 DROP VIEW IF EXISTS `v_animales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_animales` AS select `animales`.`id_animal` AS `id_animal`,`animales`.`nombre` AS `nombre`,`animales`.`descripcion` AS `descripcion`,`animales`.`peso` AS `peso`,`animales`.`edad` AS `edad`,`animales`.`FK_especie` AS `FK_especie` from `animales` */;
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

-- Dump completed on 2025-06-12 13:42:32
