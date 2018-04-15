-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: stopgo
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `trayectos_publicados`
--

DROP TABLE IF EXISTS `trayectos_publicados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trayectos_publicados` (
  `trayectoPubID` int(11) NOT NULL,
  `usuarioID` int(11) NOT NULL,
  `lugarComienzo` point NOT NULL,
  `lugarFinal` point NOT NULL,
  `distanciaTotal` decimal(10,0) NOT NULL,
  `horaComienzo` timestamp NULL DEFAULT NULL,
  `horaFinal` time DEFAULT NULL,
  `tiempoTotal` time DEFAULT NULL,
  PRIMARY KEY (`trayectoPubID`),
  UNIQUE KEY `trayectoPubID` (`trayectoPubID`,`usuarioID`),
  KEY `usuarioID` (`usuarioID`),
  CONSTRAINT `FK_trayectos_publicados_usuarios_usuarioID` FOREIGN KEY (`usuarioID`) REFERENCES `usuarios` (`usuarioID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trayectos_publicados`
--

LOCK TABLES `trayectos_publicados` WRITE;
/*!40000 ALTER TABLE `trayectos_publicados` DISABLE KEYS */;
/*!40000 ALTER TABLE `trayectos_publicados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-13 18:52:59
