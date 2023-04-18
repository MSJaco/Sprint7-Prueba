-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: estructura
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `Carrito`
--

DROP TABLE IF EXISTS `Carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Carrito` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL,
  `cupon` decimal(10,0) NOT NULL,
  `producto_precio` decimal(10,0) NOT NULL,
  `precio_total` decimal(10,0) NOT NULL,
  `producto_id` int(10) unsigned DEFAULT NULL,
  `usuario_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario` (`id`),
  CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `Producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Carrito`
--

LOCK TABLES `Carrito` WRITE;
/*!40000 ALTER TABLE `Carrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `Carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producto`
--

DROP TABLE IF EXISTS `Producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Producto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estilo` text NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `talle` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `color` varchar(255) NOT NULL,
  `usuario_id` int(11) unsigned DEFAULT NULL,
  `imagenDelProducto` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_ibfk_1` (`usuario_id`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producto`
--

LOCK TABLES `Producto` WRITE;
/*!40000 ALTER TABLE `Producto` DISABLE KEYS */;
INSERT INTO `Producto` VALUES (20,'Deportivo','  Camiseta Títular Argentina 2022',22000,'L','Buzos','            Comprate la de messi \" ','Blanco',NULL,'1680137389673_img.jpeg');
/*!40000 ALTER TABLE `Producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imagen` varchar(8000) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefono` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `contrasena` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,'1680130134772_img.jpg','Matías Jacobowicz','msjacobowicz@gmail.com',1155142680,'Vendedor','$2a$10$EAFZOMtbw8zqcU.SZYjGl.le.24Uch46nF1wJ4PWWY2oz6O757/we'),(2,'1679963563672_img.jpg','Fulanito Gonzalez','fgonzalez@gmail.com',1147568324,'Cliente','$2a$10$s/OrInhFg3VXzCNyh.MAhubYxarjF/5Em/zSqrDiOAsFxMpvAosi6'),(3,'1680133121614_img.jpg','Matías Jaco','mjaco@gmail.com',1132465798,'Vendedor','$2a$10$49U3nNBf81sOeaz9aB.UfOxAaiR8PmoR6ws7s/3MBOgGgyLur6gAy'),(4,'1679964254283_img.jpg','Mati Jaco','msjaco@gmail.com',1132465795,'Vendedor','$2a$10$W9.lHrxW8vA6N80Xuytz/.k4QriO72f4rMJNW0tU.gvq1bR4DCJea'),(5,'1679964446880_img.jpg','jajajajajajaj','jajajaja@gmail.com',1130456078,'Cliente','$2a$10$Hb0tfrST0w0mpeojTzS2f.bouq9lZvwEREmNebLwyAjPcjKLz8.JG'),(6,'1679964614705_img.jpg','Matías Jacobowic','msjaco14@gmail.com',1132465798,'Vendedor','$2a$10$JGcztLfnhnUm/5JJGBTVoeuB6G4R8RmdKuhFYY8Wxf6cjo9NFRX8W'),(7,'1680128941602_img.jpg','Mati Jacobowicz','msjaco.14@gmail.com',1132465796,'Vendedor','$2a$10$rzvK/2mL4oEpsCAlUbf.J.e97iuIjSWlw/.0ZgglOfR3Fw3lOLU4O'),(8,'1680129102221_img.jpg','Matías S Jaco','msjacobowicz.14@gmail.com',1130456075,'Vendedor','$2a$10$Av2q8.IFKYd22nat/8IiGOwQ6w/pn.SJ79PnRW3tzvIVJTfDvnwh2'),(9,'1680133725010_img.jpg','MJacobowicz','mjacobowicz@gmail.com',1145027879,'Vendedor','$2a$10$Uofq.OlwBT1RSwYn.DMyzObqgWy8xFCsQOU0CDTC1.bGcuahbTTVK'),(10,'1681583992355_img.png','M. Jacobowicz','mjaco13@gmail.com',1147568321,'Vendedor','$2a$10$R31Cy7WCnEAgJ0pinAjXB.hJjCm/PQVo7i.Aen9Q1QMh9VHryN/Te');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-16 17:21:10
