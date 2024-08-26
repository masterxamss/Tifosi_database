-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: tifosi
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `achete`
--

DROP TABLE IF EXISTS `achete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achete` (
  `id_achete` int NOT NULL AUTO_INCREMENT,
  `id_client` int NOT NULL,
  `id_focaccia` int NOT NULL,
  `jour` date NOT NULL,
  PRIMARY KEY (`id_achete`),
  KEY `id_client` (`id_client`),
  KEY `id_focaccia` (`id_focaccia`),
  CONSTRAINT `achete_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  CONSTRAINT `achete_ibfk_2` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achete`
--

LOCK TABLES `achete` WRITE;
/*!40000 ALTER TABLE `achete` DISABLE KEYS */;
/*!40000 ALTER TABLE `achete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appartient`
--

DROP TABLE IF EXISTS `appartient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appartient` (
  `id_appartient` int NOT NULL AUTO_INCREMENT,
  `id_boisson` int NOT NULL,
  `id_marque` int NOT NULL,
  PRIMARY KEY (`id_appartient`),
  KEY `id_boisson` (`id_boisson`),
  KEY `id_marque` (`id_marque`),
  CONSTRAINT `appartient_ibfk_1` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`),
  CONSTRAINT `appartient_ibfk_2` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartient`
--

LOCK TABLES `appartient` WRITE;
/*!40000 ALTER TABLE `appartient` DISABLE KEYS */;
INSERT INTO `appartient` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,2),(8,8,2),(9,9,2),(10,10,3),(11,11,3),(12,12,4);
/*!40000 ALTER TABLE `appartient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boisson` (
  `id_boisson` int NOT NULL AUTO_INCREMENT,
  `nom_boisson` varchar(45) NOT NULL,
  PRIMARY KEY (`id_boisson`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boisson`
--

LOCK TABLES `boisson` WRITE;
/*!40000 ALTER TABLE `boisson` DISABLE KEYS */;
INSERT INTO `boisson` VALUES (1,'Coca-cola zéro'),(2,'Coca-cola original'),(3,'Fanta citron'),(4,'Fanta orange'),(5,'Capri-sun'),(6,'Pepsi'),(7,'Pepsi Max Zéro'),(8,'Lipton zéro citron'),(9,'Lipton Peach'),(10,'Monster energy ultra gold'),(11,'Monster energy ultra blue'),(12,'Eau de source ');
/*!40000 ALTER TABLE `boisson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `cp_client` int NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprend`
--

DROP TABLE IF EXISTS `comprend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprend` (
  `id_comprend` int NOT NULL AUTO_INCREMENT,
  `id_focaccia` int NOT NULL,
  `id_ingredient` int NOT NULL,
  PRIMARY KEY (`id_comprend`),
  KEY `id_focaccia` (`id_focaccia`),
  KEY `id_ingredient` (`id_ingredient`),
  CONSTRAINT `comprend_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`),
  CONSTRAINT `comprend_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprend`
--

LOCK TABLES `comprend` WRITE;
/*!40000 ALTER TABLE `comprend` DISABLE KEYS */;
INSERT INTO `comprend` VALUES (1,1,5),(2,1,25),(3,1,9),(4,1,13),(5,1,1),(6,1,3),(7,1,7),(8,1,18),(9,1,20),(10,1,16),(11,2,5),(12,2,11),(13,2,9),(14,2,1),(15,2,7),(16,2,18),(17,2,20),(18,3,5),(19,3,22),(20,3,9),(21,3,1),(22,3,7),(23,3,18),(24,3,20),(25,4,6),(26,4,10),(27,4,9),(28,4,7),(29,4,18),(30,4,20),(31,4,15),(32,5,5),(33,5,25),(34,5,9),(35,5,12),(36,5,7),(37,5,18),(38,5,20),(39,5,16),(40,5,17),(41,6,5),(42,6,25),(43,6,9),(44,6,4),(45,6,2),(46,6,19),(47,6,18),(48,6,20),(49,6,16),(50,7,5),(51,7,25),(52,7,9),(53,7,4),(54,7,21),(55,7,18),(56,7,20),(57,7,16),(58,8,6),(59,8,8),(60,8,9),(61,8,21),(62,8,13),(63,8,1),(64,8,3),(65,8,7),(66,8,18),(67,8,20),(68,8,16),(69,8,14);
/*!40000 ALTER TABLE `comprend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contient`
--

DROP TABLE IF EXISTS `contient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contient` (
  `id_contient` int NOT NULL AUTO_INCREMENT,
  `id_menu` int NOT NULL,
  `id_boisson` int NOT NULL,
  PRIMARY KEY (`id_contient`),
  KEY `id_menu` (`id_menu`),
  KEY `id_boisson` (`id_boisson`),
  CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contient`
--

LOCK TABLES `contient` WRITE;
/*!40000 ALTER TABLE `contient` DISABLE KEYS */;
/*!40000 ALTER TABLE `contient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `est_constitue`
--

DROP TABLE IF EXISTS `est_constitue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `est_constitue` (
  `id_constitue` int NOT NULL AUTO_INCREMENT,
  `id_focaccia` int NOT NULL,
  `id_menu` int NOT NULL,
  PRIMARY KEY (`id_constitue`),
  KEY `id_focaccia` (`id_focaccia`),
  KEY `id_menu` (`id_menu`),
  CONSTRAINT `est_constitue_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`),
  CONSTRAINT `est_constitue_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `est_constitue`
--

LOCK TABLES `est_constitue` WRITE;
/*!40000 ALTER TABLE `est_constitue` DISABLE KEYS */;
/*!40000 ALTER TABLE `est_constitue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focaccia`
--

DROP TABLE IF EXISTS `focaccia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `focaccia` (
  `id_focaccia` int NOT NULL AUTO_INCREMENT,
  `nom_focaccia` varchar(45) NOT NULL,
  `prix` float NOT NULL,
  PRIMARY KEY (`id_focaccia`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focaccia`
--

LOCK TABLES `focaccia` WRITE;
/*!40000 ALTER TABLE `focaccia` DISABLE KEYS */;
INSERT INTO `focaccia` VALUES (1,'Mozaccia',9.8),(2,'Gorgonzollaccia',10.8),(3,'Raclaccia',8.9),(4,'Emmentalaccia',9.8),(5,'Tradizione',8.9),(6,'Hawaienne',11.2),(7,'Américaine',10.8),(8,'Paysanne',12.8);
/*!40000 ALTER TABLE `focaccia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `id_ingredient` int NOT NULL AUTO_INCREMENT,
  `nom_ingredient` varchar(45) NOT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'Ail'),(2,'Ananas'),(3,'Artichaut'),(4,'Bacon'),(5,'Base Tomate'),(6,'Base crème'),(7,'Champignon'),(8,'Chevre'),(9,'Cresson'),(10,'Emmental'),(11,'Gorgonzola'),(12,'Jambon cuit'),(13,'Jambon fumé'),(14,'Oeuf'),(15,'Oignon'),(16,'Olive noire'),(17,'Olive verte'),(18,'Parmesan'),(19,'Piment'),(20,'Poivre'),(21,'Pomme de terre'),(22,'Raclette'),(23,'Salami'),(24,'Tomate cerise'),(25,'Mozzarella');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marque`
--

DROP TABLE IF EXISTS `marque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marque` (
  `id_marque` int NOT NULL AUTO_INCREMENT,
  `nom_marque` varchar(45) NOT NULL,
  PRIMARY KEY (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marque`
--

LOCK TABLES `marque` WRITE;
/*!40000 ALTER TABLE `marque` DISABLE KEYS */;
INSERT INTO `marque` VALUES (1,'Coca-cola'),(2,'Pepsico'),(3,'Monster'),(4,'Cristaline');
/*!40000 ALTER TABLE `marque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id_menu` int NOT NULL AUTO_INCREMENT,
  `nome_menu` varchar(45) NOT NULL,
  `prix_menu` float NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paye`
--

DROP TABLE IF EXISTS `paye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paye` (
  `id_paye` int NOT NULL AUTO_INCREMENT,
  `jour` date NOT NULL,
  `id_client` int NOT NULL,
  `id_menu` int NOT NULL,
  PRIMARY KEY (`id_paye`),
  KEY `id_client` (`id_client`),
  KEY `id_menu` (`id_menu`),
  CONSTRAINT `paye_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  CONSTRAINT `paye_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paye`
--

LOCK TABLES `paye` WRITE;
/*!40000 ALTER TABLE `paye` DISABLE KEYS */;
/*!40000 ALTER TABLE `paye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_boisson_marque`
--

DROP TABLE IF EXISTS `view_boisson_marque`;
/*!50001 DROP VIEW IF EXISTS `view_boisson_marque`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_boisson_marque` AS SELECT 
 1 AS `Boisson`,
 1 AS `Marque`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_focaccia_ingredients`
--

DROP TABLE IF EXISTS `view_focaccia_ingredients`;
/*!50001 DROP VIEW IF EXISTS `view_focaccia_ingredients`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_focaccia_ingredients` AS SELECT 
 1 AS `Focaccia`,
 1 AS `Prix`,
 1 AS `Ingredients`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_boisson_marque`
--

/*!50001 DROP VIEW IF EXISTS `view_boisson_marque`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tiago`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_boisson_marque` AS select `b`.`nom_boisson` AS `Boisson`,`m`.`nom_marque` AS `Marque` from ((`boisson` `b` join `appartient` `a` on((`b`.`id_boisson` = `a`.`id_boisson`))) join `marque` `m` on((`a`.`id_marque` = `m`.`id_marque`))) order by `m`.`nom_marque`,`b`.`nom_boisson` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_focaccia_ingredients`
--

/*!50001 DROP VIEW IF EXISTS `view_focaccia_ingredients`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tiago`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_focaccia_ingredients` AS select `f`.`nom_focaccia` AS `Focaccia`,`f`.`prix` AS `Prix`,group_concat(`i`.`nom_ingredient` order by `i`.`nom_ingredient` ASC separator ', ') AS `Ingredients` from ((`focaccia` `f` join `comprend` `c` on((`f`.`id_focaccia` = `c`.`id_focaccia`))) join `ingredient` `i` on((`c`.`id_ingredient` = `i`.`id_ingredient`))) group by `f`.`nom_focaccia`,`f`.`prix` */;
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

-- Dump completed on 2024-08-26  3:16:31
