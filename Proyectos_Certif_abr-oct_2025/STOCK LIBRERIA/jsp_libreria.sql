CREATE DATABASE  IF NOT EXISTS `jsp_libreria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jsp_libreria`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: jsp_libreria
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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `id_autor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `defuncion` date DEFAULT NULL,
  `FK_nacionalidad` int DEFAULT NULL,
  PRIMARY KEY (`id_autor`),
  KEY `constr_FK_nacionalidad_idx` (`FK_nacionalidad`),
  CONSTRAINT `constr_FK_nacionalidad` FOREIGN KEY (`FK_nacionalidad`) REFERENCES `nacionalidades` (`id_nacionalidad`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'George Orwell','1903-06-25','1950-01-21',1),(2,'Ernest Hemingway','1899-07-21','1961-07-02',2),(3,'Gabriel García Márquez','1927-03-06','2014-04-17',3),(4,'Haruki Murakami','1949-01-12',NULL,4),(5,'Isabel Allende','1942-08-02',NULL,7),(6,'J.K. Rowling','1965-07-31',NULL,1),(7,'Mario Vargas Llosa','1936-03-28',NULL,8),(8,'Jane Austen','1775-12-16','1817-07-18',1),(9,'Julio Cortázar','1914-08-26','1984-02-12',5),(10,'Margaret Atwood','1939-11-18',NULL,1),(11,'Carlos Ruiz Zafón','1964-09-25','2020-06-19',16),(12,'Toni Morrison','1931-02-18','2019-08-05',2),(13,'Khaled Hosseini','1965-03-04',NULL,25),(14,'Chimamanda Ngozi Adichie','1977-09-15',NULL,26),(15,'Harper Lee','1926-04-28','2016-02-19',2),(16,'Pablo Neruda','1904-07-12','1973-09-23',7),(17,'Paulo Coelho','1947-08-24',NULL,6),(18,'Kazuo Ishiguro','1954-11-08',NULL,1),(19,'Salman Rushdie','1947-06-19',NULL,22),(20,'J.R.R. Tolkien','1892-01-03','1973-09-02',1),(21,'Margaret Mitchell','1900-11-08','1949-08-16',2);
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(20) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'No ficción'),(2,'Ciencia ficción'),(3,'Realismo mágico'),(4,'Ficción'),(5,'Misterio'),(6,'Fantasía'),(7,'Romance'),(8,'Histórica'),(9,'Terror'),(10,'Biografía'),(11,'Poesía'),(12,'Aventura'),(13,'Ensayo');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id_libro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  `FK_categoria` int NOT NULL,
  `precio` double NOT NULL,
  `stock` int NOT NULL,
  `FK_autor` int NOT NULL,
  PRIMARY KEY (`id_libro`),
  UNIQUE KEY `ISBN_UNIQUE` (`ISBN`),
  KEY `constr_FK_categoria_idx` (`FK_categoria`),
  KEY `constr_FK_autor_idx` (`FK_autor`),
  CONSTRAINT `constr_FK_autor` FOREIGN KEY (`FK_autor`) REFERENCES `autores` (`id_autor`),
  CONSTRAINT `constr_FK_categoria` FOREIGN KEY (`FK_categoria`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'1984','9780451524935',2,15.99,47,1),(2,'Zafarrancho en el rancho','9780451526342',2,12.5,77,1),(3,'El viejo y el mar','9780684801223',4,14,29,2),(4,'España en el corazón','9780685075485',11,10,50,16),(5,'Cien años de soledad','9780307474728',3,18.99,55,3),(6,'El amor en los tiempos del cólera','9780307389732',3,16.99,74,3),(7,'Crónica de una muerte anunciada','9780307387745',3,11.5,31,3),(8,'Tokio Blues','9788483832011',4,13.99,90,4),(9,'Kafka en la orilla','9780307278920',4,19.25,14,4),(10,'1Q84','9780307957023',4,22,6,4),(11,'Crónica del pájaro que da cuerda al mundo','9788483835104',4,14.2,21,4),(12,'La casa de los espíritus','9780553384606',3,14,8,1),(13,'Harry Potter y la piedra filosofal','9780747532699',6,20,15,2),(14,'La ciudad y los perros','9788408150718',4,13.5,5,3),(15,'Orgullo y prejuicio','9780141439518',7,12,10,4),(16,'Rayuela','9788432202202',3,15,7,5),(18,'La sombra del viento','9788408163381',3,16.5,7,7),(19,'Beloved','9781400033416',4,14.99,12,8),(20,'Cometas en el cielo','9788483463684',12,13.5,6,9),(21,'Americanah','9780307455925',7,13,8,10),(22,'Matar a un ruiseñor','9780446310789',4,11.5,11,11),(23,'El alquimista','9780061122415',12,10.99,14,13),(24,'Nunca me abandones','9781400078779',6,16,9,14),(25,'Los versos satánicos','9780812976719',5,15.5,7,15),(26,'El Señor de los Anillos','9780618640157',6,22,10,16),(27,'Lo que el viento se llevó','9781416548942',4,17,5,17),(28,'El amor en los tiempos del cólera','9780307366032',7,12.5,7,1),(29,'Jane Eyre','9780142437209',7,13,10,4),(30,'Cien años de soledad','9780307770728',3,15.99,10,5),(31,'El dios de las pequeñas cosas','9788497592209',3,14,8,8),(32,'El perfume','9788497592204',5,10.5,10,7),(33,'La tregua','9788497592229',3,12.5,10,5),(34,'Ensayo sobre la ceguera','9788497592201',5,12.75,13,1),(35,'La cabaña del tío Tom','9788497592220',10,9.99,15,17),(36,'Drácula','9788491050076',9,10.5,8,4),(37,'El diario de Ana Frank','9780553296983',10,11,9,2),(38,'Cumbres borrascosas','9780141439556',7,14,7,4),(39,'El código Da Vinci','9780307474274',5,16,10,6),(40,'Siddhartha','9788499890946',7,11.99,13,10),(41,'El hombre invisible','9788491050083',9,9.5,8,3),(42,'La metamorfosis','9788491050090',5,8.99,14,4),(43,'Moby Dick','9788497592236',5,12,10,11),(44,'Crónica del pájaro que da cuerda al mundo','9788497938337',3,13.5,6,3),(45,'El principito','9780156012195',11,10,14,14),(46,'El guardián entre el centeno','9780316769488',4,14,8,16),(47,'La insoportable levedad del ser','9788491050078',3,14.5,7,5),(48,'El extranjero','9788491050014',4,11,14,7),(49,'La ladrona de libros','9780375842207',3,12,9,2),(50,'El jardín secreto','9788491050060',11,9.99,10,4),(51,'Frankenstein','9788491050053',9,9.5,7,1),(52,'La Biblia','9788491050046',10,0,20,17),(53,'El arte de la guerra','9788491050039',13,8.99,15,15),(139,'de tus muertos','3333333333333',1,10,29,1);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nacionalidades`
--

DROP TABLE IF EXISTS `nacionalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nacionalidades` (
  `id_nacionalidad` int NOT NULL AUTO_INCREMENT,
  `nacionalidad` varchar(25) NOT NULL,
  PRIMARY KEY (`id_nacionalidad`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacionalidades`
--

LOCK TABLES `nacionalidades` WRITE;
/*!40000 ALTER TABLE `nacionalidades` DISABLE KEYS */;
INSERT INTO `nacionalidades` VALUES (1,'Británica'),(2,'Estadounidense'),(3,'Colombiana'),(4,'Japonesa'),(5,'Argentina'),(6,'Brasileña'),(7,'Chilena'),(8,'Peruana'),(9,'Mexicana'),(10,'Venezolana'),(11,'Uruguaya'),(12,'Paraguaya'),(13,'Ecuatoriana'),(14,'Boliviana'),(15,'Canadiense'),(16,'Española'),(17,'Francesa'),(18,'Alemana'),(19,'Italiana'),(20,'China'),(21,'Rusa'),(22,'India'),(23,'Australiana'),(24,'Egipcia'),(25,'Afgana'),(26,'Nigeriana');
/*!40000 ALTER TABLE `nacionalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_autores`
--

DROP TABLE IF EXISTS `v_autores`;
/*!50001 DROP VIEW IF EXISTS `v_autores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_autores` AS SELECT 
 1 AS `id_autor`,
 1 AS `nombre`,
 1 AS `nacimiento`,
 1 AS `defuncion`,
 1 AS `FK_nacionalidad`,
 1 AS `nacionalidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_categorias`
--

DROP TABLE IF EXISTS `v_categorias`;
/*!50001 DROP VIEW IF EXISTS `v_categorias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_categorias` AS SELECT 
 1 AS `id_categoria`,
 1 AS `categoria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_libros`
--

DROP TABLE IF EXISTS `v_libros`;
/*!50001 DROP VIEW IF EXISTS `v_libros`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_libros` AS SELECT 
 1 AS `id_libro`,
 1 AS `titulo`,
 1 AS `ISBN`,
 1 AS `FK_categoria`,
 1 AS `categoria`,
 1 AS `precio`,
 1 AS `stock`,
 1 AS `FK_autor`,
 1 AS `autor`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_autores`
--

/*!50001 DROP VIEW IF EXISTS `v_autores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_autores` AS select `a`.`id_autor` AS `id_autor`,`a`.`nombre` AS `nombre`,`a`.`nacimiento` AS `nacimiento`,`a`.`defuncion` AS `defuncion`,`a`.`FK_nacionalidad` AS `FK_nacionalidad`,`n`.`nacionalidad` AS `nacionalidad` from (`autores` `a` join `nacionalidades` `n` on((`n`.`id_nacionalidad` = `a`.`FK_nacionalidad`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_categorias`
--

/*!50001 DROP VIEW IF EXISTS `v_categorias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_categorias` AS select `c`.`id_categoria` AS `id_categoria`,`c`.`categoria` AS `categoria` from `categorias` `c` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_libros`
--

/*!50001 DROP VIEW IF EXISTS `v_libros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_libros` AS select `l`.`id_libro` AS `id_libro`,`l`.`titulo` AS `titulo`,`l`.`ISBN` AS `ISBN`,`l`.`FK_categoria` AS `FK_categoria`,`c`.`categoria` AS `categoria`,`l`.`precio` AS `precio`,`l`.`stock` AS `stock`,`l`.`FK_autor` AS `FK_autor`,`a`.`nombre` AS `autor` from ((`libros` `l` join `categorias` `c` on((`c`.`id_categoria` = `l`.`FK_categoria`))) join `autores` `a` on((`a`.`id_autor` = `l`.`FK_autor`))) */;
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

-- Dump completed on 2025-05-29 13:50:43
