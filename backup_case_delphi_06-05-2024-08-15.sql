-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: case_delphi
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `codcateg` int NOT NULL AUTO_INCREMENT,
  `descricaocateg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codcateg`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'ELETRÔNICOS'),(2,'VESTUÁRIO'),(3,'ALIMENTOS'),(4,'BEBIDAS'),(5,'ESPORTES'),(6,'BELEZA');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `codprod` int NOT NULL AUTO_INCREMENT,
  `nomeprod` varchar(100) DEFAULT NULL,
  `codcateg` int DEFAULT NULL,
  `preco` double DEFAULT '0',
  `ultpreco` double DEFAULT '0',
  `datacadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  `dataalteracao` datetime DEFAULT NULL,
  PRIMARY KEY (`codprod`),
  KEY `produto_categoria_fk` (`codcateg`),
  CONSTRAINT `produto_categoria_fk` FOREIGN KEY (`codcateg`) REFERENCES `categoria` (`codcateg`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'COMPUTADOR',1,2683.23,2605.08,'2024-05-04 16:50:42','2024-05-04 18:04:54'),(2,'NOTEBOOK',1,2522.51,2449.04,'2024-05-04 16:50:52','2024-05-04 18:04:54'),(3,'BLUSA',2,53.66,52.1,'2024-05-04 16:51:07','2024-05-04 18:04:54'),(4,'CAMISETA',2,25.49,24.75,'2024-05-04 16:51:17','2024-05-04 18:04:54'),(5,'SALGADO',3,5.95,5.95,'2024-05-04 16:51:32','2024-05-04 23:25:37'),(6,'REFRIGERANTE',4,7.79,7.56,'2024-05-04 16:51:45','2024-05-04 18:04:54'),(7,'REFRIGERANTE LATA',4,6.17,5.99,'2024-05-04 16:51:53','2024-05-04 18:04:54'),(8,'BOLA',5,46.09,44.75,'2024-05-04 16:52:31','2024-05-04 18:04:54'),(9,'CHUTEIRA',5,156.44,151.88,'2024-05-04 16:53:25','2024-05-04 18:04:54'),(10,'BERMUDA',2,102.76,99.77,'2024-05-04 16:53:50','2024-05-04 18:04:54'),(11,'MOUSE',1,37.84,36.74,'2024-05-04 16:54:34','2024-05-04 18:04:54'),(12,'BATOM',6,12.88,12.5,'2024-05-04 17:31:21','2024-05-04 18:04:54');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `coduser` int NOT NULL AUTO_INCREMENT,
  `nomeuser` varchar(100) NOT NULL,
  `senhauser` varchar(100) NOT NULL,
  `emailuser` varchar(255) NOT NULL,
  PRIMARY KEY (`coduser`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'VSM','1','vsm.joao.batista@gmail.com'),(2,'USUARIO','usuario','usuario@gmail.com'),(3,'TESTER','tester','tester@gmail.com'),(4,'DESENVOLVIMENTO','desenvolvimento','desenvolvimento@gmail.com');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-06  8:15:18
