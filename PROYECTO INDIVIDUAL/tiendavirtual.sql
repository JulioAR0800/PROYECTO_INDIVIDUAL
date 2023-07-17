-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda_virtual
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `user_id` int DEFAULT NULL,
  `producto_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Central','Areguá'),(2,'Concepción','Concepción'),(3,'San Pedro','San Pedro de Ycuamandiyú'),(4,'Coordillera','Caacupé'),(5,'Guairá','Villarica'),(6,'Caaguazú','Coronel Oviedo'),(7,'Caazapá','Caazapá'),(8,'Itapúa','Encarnación'),(9,'Misiones','San Juan Bautista'),(10,'Paraguarí','Paraguarí'),(11,'Alto Paraná','Ciudad del Este'),(12,'Ñeembucú','Pilar'),(13,'Amambay','Pedro Juan Caballero'),(14,'Canindeyú','Salto del Guairá'),(15,'Presidente Hayes','Villa Hayes'),(16,'Boquerón','Filadelfia'),(17,'Alto Paraguay','Fuerte Olimpo');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(100) DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `precio` int DEFAULT NULL,
  `imagen` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'1001','Ron Cartavio','Ron Cartavio Black 700ml',27,'https://plazavea.vteximg.com.br/arquivos/ids/646684-512-512/1040164002.jpg'),(3,'1003','Tequila Don Julio','Tequila Don Julio Reposado',330,'https://elpozito.com.pe/tienda/surco/wp-content/uploads/2023/02/32-TEQUILA-DON-JULIO-REPOSADO.jpg'),(4,'1003','Vodka Smirnoff','Vodka Smirnoff Red 700ml',37,'https://plazavea.vteximg.com.br/arquivos/ids/342222-450-450/20190353.jpg?v=637280977619430000'),(6,'1006','Whisky Jhonnie Walker','Whisky Jhonnie Walker Blue Label 750ml',1450,'https://plazavea.vteximg.com.br/arquivos/ids/1087616-450-450/697569.jpg?v=637503823095930000'),(7,'1007','Whisky Jhonnie Walker','Whisky Jhonnie Walker Black Label 750ml',150,'https://vivanda.vtexassets.com/arquivos/ids/255454/164924.jpg?v=637503825163970000'),(8,'1007','Whisky Jack Daniels','Whisky Jack Daniels',105,'https://plazavea.vteximg.com.br/arquivos/ids/1102145-450-450/392174.jpg?v=637508094187400000'),(9,'1009','Pisco Puro Acholado','Pisco Puro acholado Cuatro Gallos',28,'https://plazavea.vteximg.com.br/arquivos/ids/529757-450-450/914718.jpg?v=637419661883800000'),(10,'1020','Pisco Porton','Pisco Porton Mosto Verde 750ml ',90,'https://elpozito.com.pe/tienda/corpac/wp-content/uploads/2020/07/316713.jpg'),(11,'1030','Vodka Smirnoff','Vodka Smirnoff Green 700ml',40,'https://plazavea.vteximg.com.br/arquivos/ids/1038047-512-512/20208868.jpg');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-16 22:05:29
