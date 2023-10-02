CREATE DATABASE  IF NOT EXISTS `bddjuguetes` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bddjuguetes`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bddjuguetes
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idCategoria` tinyint(4) NOT NULL AUTO_INCREMENT,
  `numeroCategoria` int(10) unsigned NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaActualizacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,150,1,'2023-10-01 19:22:34',NULL),(2,100,1,'2023-10-01 19:22:38',NULL),(3,120,1,'2023-10-01 19:22:42',NULL),(4,200,1,'2023-10-01 21:25:16',NULL),(5,60,1,'2023-10-01 21:25:24',NULL);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idCliente` smallint(6) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `idPersona` smallint(6) NOT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `fk_cliente_persona1_idx` (`idPersona`),
  CONSTRAINT `fk_cliente_persona1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (3,1,3),(4,1,5),(5,1,6),(6,1,7),(7,1,8),(8,1,9),(9,1,10),(10,1,11);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle`
--

DROP TABLE IF EXISTS `detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle` (
  `idVenta` smallint(6) NOT NULL,
  `idProducto` smallint(6) NOT NULL,
  `cantidad` smallint(6) NOT NULL,
  `precioTotal` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idVenta`,`idProducto`),
  KEY `fk_compraDetalle_fideo1_idx` (`idProducto`),
  CONSTRAINT `fk_compraDetalle_compra1` FOREIGN KEY (`idVenta`) REFERENCES `venta` (`idVenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_compraDetalle_fideo1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle`
--

LOCK TABLES `detalle` WRITE;
/*!40000 ALTER TABLE `detalle` DISABLE KEYS */;
INSERT INTO `detalle` VALUES (62,8,100,5000.00),(63,8,200,10000.00),(63,9,225,2700.00),(64,8,300,12000.00),(64,9,75,900.00),(82,8,400,14000.00),(83,10,100,2500.00);
/*!40000 ALTER TABLE `detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `idEmpleado` smallint(6) NOT NULL AUTO_INCREMENT,
  `idPersona` smallint(6) NOT NULL,
  `tipo` tinyint(4) NOT NULL DEFAULT '1',
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idEmpleado`),
  KEY `fk_empleado_persona1_idx` (`idPersona`),
  CONSTRAINT `fk_empleado_persona1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,1,1,1),(2,2,2,2),(3,4,1,2);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `idMarca` tinyint(4) NOT NULL AUTO_INCREMENT,
  `numeroTienda` varchar(10) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaActualizacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'A-25',1,'2023-10-01 19:22:59',NULL),(2,'A-26',1,'2023-10-01 19:23:04',NULL);
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idPersona` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `primerApellido` varchar(25) NOT NULL,
  `segundoApellido` varchar(25) DEFAULT NULL,
  `numeroCelular` varchar(12) DEFAULT NULL,
  `numeroCI` varchar(15) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaActualizacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'PEPITO1','1','','','1234567',1,'2023-09-14 19:18:29','2023-09-20 14:26:15'),(2,'VENDEDOR ','2','','','9876543',1,'2023-09-14 19:18:29','2023-09-20 14:02:23'),(3,'Pedro','Lopez',NULL,NULL,'4567890',1,'2023-09-14 19:18:29',NULL),(4,'SUPER USUARIO','BELEN','','','',1,'2023-09-14 19:55:56','2023-09-20 14:04:15'),(5,'MILIVOYÑ','BRAVO','BRAVO','79958584','6536415',1,'2023-09-28 22:52:47','2023-09-28 23:38:24'),(6,'ANA MARIA','MORATO','','','',1,'2023-09-28 23:40:58',NULL),(7,'AAA','MORATO','','','',1,'2023-09-28 23:44:42',NULL),(8,'MILIVOYAAA','PEREZ','BRAVO','79769996','8732535',1,'2023-09-28 23:46:40',NULL),(9,'AAA','SADASDASD','','','',1,'2023-09-28 23:46:55',NULL),(10,'MILIVOYAAA','MORATO','BRAVO','79769996','',1,'2023-09-28 23:47:27',NULL),(11,'RDRIGO','MAMANI','','79769996','99999999',1,'2023-10-01 21:06:19',NULL);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idProducto` smallint(6) NOT NULL AUTO_INCREMENT,
  `foto` varchar(200) DEFAULT 'sinImagen.jpg',
  `nombreProducto` varchar(40) NOT NULL,
  `descripcion` decimal(7,2) NOT NULL,
  `precio` decimal(7,2) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `stock` smallint(6) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaActualizacion` timestamp NULL DEFAULT NULL,
  `idMarca` tinyint(4) NOT NULL,
  `idCategoria` tinyint(4) NOT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `fk_producto_marca1_idx` (`idMarca`),
  KEY `fk_producto_tipo1_idx` (`idCategoria`),
  CONSTRAINT `fk_producto_marca1` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`),
  CONSTRAINT `fk_producto_tipo1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (8,'aaaaa.jpg','AVION  AAAAAAAAAAAAAAAAAAAAAAAAAAA',35.00,40.00,'4213Fa',0,1,'2023-10-01 19:23:27','2023-10-02 13:54:09',2,2),(9,'fghfh.jpeg','SOLDADO',10.00,15.00,'4213Fd',0,1,'2023-10-01 19:53:57','2023-10-02 13:46:41',1,1),(10,'sinImagen.jpg','SUBMARINO',25.00,50.00,'4213Ft',300,1,'2023-10-02 13:43:35',NULL,1,1),(11,'fghfh.jpeg','PERRITO',43.00,50.00,'DDD',400,1,'2023-10-02 13:58:26',NULL,1,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` tinyint(4) NOT NULL AUTO_INCREMENT,
  `foto` varchar(25) DEFAULT 'sinImagen.jpg',
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tipo` varchar(10) NOT NULL DEFAULT 'guest',
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaActualizacion` timestamp NULL DEFAULT NULL,
  `error` varchar(100) DEFAULT NULL,
  `idEmpleado` smallint(6) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fk_usuario_empleado1_idx` (`idEmpleado`),
  CONSTRAINT `idEmpleado` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'r.jpg','VENDEDOR1','21232f297a57a5a743894a0e4a801fc3','vendedor',1,'2023-09-14 19:49:37','2023-09-20 13:57:23',NULL,1),(11,'','VENDEDOR','0407e8c8285ab85509ac2884025dcf42','vendedor',1,'2023-09-20 13:58:11',NULL,NULL,2),(12,'','admin','21232f297a57a5a743894a0e4a801fc3','admin',1,'2023-09-20 14:00:03',NULL,NULL,3);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `idVenta` smallint(6) NOT NULL AUTO_INCREMENT,
  `idCliente` smallint(6) NOT NULL,
  `idUsuario` tinyint(4) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaAcutalizacion` timestamp NULL DEFAULT NULL,
  `total` double(8,2) NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `idCliente` (`idCliente`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `fk_compra_cliente1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_venta_usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,3,1,0,'2023-09-14 20:19:32',NULL,19.99),(2,3,1,1,'2023-09-14 20:37:53',NULL,19.99),(3,3,1,1,'2023-09-14 21:03:20',NULL,3120.00),(4,3,1,1,'2023-09-15 20:29:08',NULL,139.93),(7,3,1,1,'2023-09-15 21:51:10',NULL,36.00),(8,3,1,1,'2023-09-15 21:51:33',NULL,19.99),(9,3,1,1,'2023-09-15 22:15:37',NULL,19.99),(10,3,1,1,'2023-09-17 03:46:22',NULL,319.87),(11,3,1,0,'2023-09-17 03:54:21',NULL,59.97),(12,3,1,1,'2023-09-17 21:37:13',NULL,19.99),(13,3,1,1,'2023-09-17 22:32:40',NULL,69.99),(14,3,1,1,'2023-09-20 14:54:49',NULL,19.99),(15,3,12,1,'2023-09-21 00:23:51',NULL,1999.00),(16,3,11,1,'2023-09-21 00:42:33',NULL,150.00),(17,3,12,1,'2023-09-21 00:54:52',NULL,7999.00),(18,3,11,1,'2023-09-21 00:57:24',NULL,5000.00),(19,3,12,1,'2023-09-27 18:42:57',NULL,1999.00),(20,3,12,1,'2023-09-27 18:45:51',NULL,3840.00),(21,3,12,1,'2023-09-28 23:15:33',NULL,3120.00),(22,3,12,1,'2023-09-28 23:58:34',NULL,1999.00),(23,4,12,1,'2023-09-29 00:03:25',NULL,1999.00),(24,4,12,1,'2023-09-29 01:31:57',NULL,1999.00),(55,4,12,1,'2023-09-29 02:48:41',NULL,19.99),(56,4,12,1,'2023-09-29 02:49:01',NULL,1979.01),(57,4,12,1,'2023-09-29 02:54:52',NULL,1999.00),(58,4,12,1,'2023-09-29 02:55:22',NULL,1999.00),(59,3,12,1,'2023-09-29 02:55:53',NULL,999.50),(60,4,12,1,'2023-09-29 03:00:42',NULL,2600.00),(61,4,12,1,'2023-09-29 03:11:09',NULL,520.00),(62,4,12,1,'2023-10-01 19:23:54',NULL,5000.00),(63,3,12,1,'2023-10-01 19:54:36',NULL,12700.00),(64,4,12,1,'2023-10-01 21:09:40',NULL,12900.00),(82,4,12,1,'2023-10-02 14:40:30',NULL,14000.00),(83,3,12,1,'2023-10-02 14:47:02',NULL,2500.00);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-02 11:27:23
