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
  `idCategoria` tinyint(4) NOT NULL,
  `numeroCategoria` tinyint(4) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaActualizacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (0,120,1,'2023-09-14 21:02:07',NULL),(1,100,1,'2023-09-14 19:17:18','2023-09-14 20:43:05');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (3,1,3);
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
INSERT INTO `detalle` VALUES (1,1,1,19.99),(2,1,1,19.99),(3,2,60,3120.00),(4,1,7,140.00);
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
INSERT INTO `empleado` VALUES (1,1,1,2),(2,2,2,2),(3,4,1,2);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `idMarca` tinyint(4) NOT NULL,
  `numeroTienda` varchar(10) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaActualizacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'C1-52',1,'2023-09-14 19:20:06','2023-09-14 20:12:55'),(2,'C2-999',1,'2023-09-14 19:20:06','2023-09-14 20:13:05'),(3,'ZX-920',1,'2023-09-14 19:20:06','2023-09-14 20:13:16');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Juan','Perez',NULL,NULL,'1234567',1,'2023-09-14 19:18:29',NULL),(2,'Maria','Gonzalez',NULL,NULL,'9876543',1,'2023-09-14 19:18:29',NULL),(3,'Pedro','Lopez',NULL,NULL,'4567890',1,'2023-09-14 19:18:29',NULL),(4,'MILIVOY','BRAVO','BRAVO','79958584','6965665',1,'2023-09-14 19:55:56','2023-09-14 20:03:16');
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
  `descripcion` varchar(100) NOT NULL,
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
  CONSTRAINT `fk_producto_marca1` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_tipo1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Design.png','aaaaa','A cool toy car',19.99,'TC001',293,1,'2023-09-14 19:20:43','2023-09-15 17:32:57',1,1),(2,'IMG_20230909_090850.jpg','MILIVOY','',52.00,'1233',180,1,'2023-09-14 21:02:35','2023-09-15 17:33:15',1,0),(3,'1product.jpg','MILIVOY','FIDEO LARGO',12.00,'DFAS',400,1,'2023-09-15 16:20:57',NULL,1,0),(4,'sinImagen.jpg','RODRIGO','SDFS',2.00,'DDD',250,1,'2023-09-15 16:25:26',NULL,1,0),(5,'sinImagen.jpg','NENA','FIEDO LARGO',50.00,'DFAS',250,1,'2023-09-15 17:33:40',NULL,1,0),(6,'IMG_20230909_090715.jpg','NENA','SDFS',50.00,'4213F',100,1,'2023-09-15 17:34:00',NULL,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'r.jpg','admin','21232f297a57a5a743894a0e4a801fc3','admin',1,'2023-09-14 19:49:37','2023-09-15 17:32:37',NULL,1),(2,'r.jpg','admin1','96abb4d80a8b263804a1cb05f3ed18ac','vendedor',1,'2023-09-14 19:49:37','2023-09-15 17:26:35',NULL,2),(3,'Design.png','freddy','21232f297a57a5a743894a0e4a801fc3','admin',1,'2023-09-14 20:06:54','2023-09-14 20:07:36',NULL,1),(9,'','MILIBOYMRBB','c162de19c4c3731ca3428769d0cd593d','admin',1,'2023-09-15 17:24:35',NULL,NULL,2),(10,'r.jpg','adminkk','7aa3262b9526ff30025c2f389263399e','admin',1,'2023-09-15 17:24:56','2023-09-15 17:25:23',NULL,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,3,1,1,'2023-09-14 20:19:32',NULL,19.99),(2,3,1,1,'2023-09-14 20:37:53',NULL,19.99),(3,3,1,1,'2023-09-14 21:03:20',NULL,3120.00),(4,3,1,1,'2023-09-15 20:29:08',NULL,139.93);
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

-- Dump completed on 2023-09-15 16:32:02
