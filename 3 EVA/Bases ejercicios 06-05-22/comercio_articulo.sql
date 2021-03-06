-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: comercio
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `codigo` char(8) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `precio` decimal(7,2) DEFAULT NULL,
  `dto` decimal(4,1) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `stock_min` int DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  CONSTRAINT `articulo_chk_1` CHECK ((`dto` >= _utf8mb4'0.0')),
  CONSTRAINT `articulo_chk_2` CHECK ((`stock` >= `stock_min`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES ('BUZ00001','Buzón chapa acero',23.50,0.0,25,15),('BUZ00002','Cerradura de buzón (lengüeta recta)',3.49,3.0,22,20),('BUZ00003','Kit cerradura buzon',9.20,3.0,21,14),('CAR00001','Carretilla de transporte plegable',29.98,0.0,26,13),('CAR00002','Carro de transporte ts 850',102.95,0.0,16,9),('CAR00003','Carretilla plegable 90 kg',41.98,0.0,14,11),('CUB00001','Armario metal para reciclaje basura',132.00,0.0,21,14),('CUB00002','Armario metal 2 compartimentos blanco',95.00,3.0,12,9),('CUB00003','Barreño industrial',18.65,10.0,23,14),('CUB00004','Bolsas de basura con cierra fácil',1.75,3.0,50,36),('CUB00005','Contenedor selectivo c/ruedas',31.75,0.0,14,11),('CUB00006','Cubo decobin 40l cofee',32.95,0.0,15,14),('CUB00007','Cubo metalizado',25.25,0.0,19,15),('ESC00001','Escalera aluminio 4 peldaños',28.95,0.0,17,11),('ESC00002','Escalera articulada multifunción acero',49.95,0.0,22,13),('ESC00003','Escalera industrial 2x10 aluminio',124.55,0.0,28,15),('ESC00004','Taburete aluminio. 2 p',41.25,0.0,22,14),('ESC00005','Taburete aluminio 2 peldaños',31.25,3.0,18,9),('INF00001','Antideslizantes bañera',3.90,0.0,32,20),('INF00002','Cierre armarios, gancho',2.09,0.0,27,23),('INF00003','Cierre flexible pequeño',1.68,0.0,40,36),('INF00004','Esquinas de mueble',2.38,0.0,41,34),('INF00005','Protector ángulos marrón',3.99,10.0,44,26),('INF00006','Protector esquinas infantil',13.50,0.0,11,9),('INF00007','Seguridad en enchufes, movil',2.10,0.0,36,31),('MAN00001','Aldaba',3.19,0.0,46,30),('MAN00002','Juego manilla con placa inox',12.98,0.0,27,14),('MAN00003','Juego manilla con roseta niquel mate',12.10,0.0,27,15),('MAN00004','Mirilla',5.69,0.0,18,15),('MAN00005','Mirilla Digital LCD 2,6\' (6,60 cm)',49.95,0.0,17,9),('MAN00006','Tirador especial placa forja',8.20,0.0,16,13),('MAN00007','Tirador salomonico placa forja',8.75,0.0,15,11),('SEG00001','Armero Athenas Arma Corta Alta ',975.00,0.0,5,3),('SEG00002','Armero Gredos 100-7 Arma Larga',675.00,3.0,4,4),('SEG00003','Caja Fuerte Camuflada Box-In 22100-S1',196.00,10.0,23,15),('SEG00004','Caja Fuerte Camuflada GRID 13000W-S0',85.00,0.0,15,10),('SEG00005','Caja Fuerte Camuflada GRID 13000-WS1',110.00,3.0,16,11),('SEG00006','Caja Fuerte Camuflada Libro',18.90,0.0,24,13),('TEN00001','Tendedero extensible plastf. bco. 120C',65.90,0.0,17,10),('TEN00002','Tendedero extensible aluminio 160c',45.15,3.0,20,13),('TEN00003','Tendedero con alas pegasus 120',34.95,0.0,10,8),('TEN00004','Tendedero automatico',12.98,0.0,15,10),('TEN00005','Pinza ropa / tendedero (x25)',5.95,3.0,12,9),('TOR00001','Alcayata galvanizada',2.25,0.0,49,26),('TOR00002','Ángulo zincado',0.79,0.0,24,24),('TOR00003','Ángulo zincado canto cuadrado',0.19,0.0,58,35),('TOR00004','Atado 2 ángulos zincados',0.99,0.0,48,27),('TOR00005','Atado 2 ángulos zincados',3.09,0.0,43,33),('TOR00006','Atado 4 ángulos',1.99,0.0,55,29),('TOR00007','Atado 4 escuadras',1.20,0.0,40,22),('TOR00008','Atado 4 placas',2.19,0.0,60,33),('TOR00009','Escuadra zincada canto cuadrado',0.29,0.0,36,34),('TOR00010','Hembrilla abierta galvanizada',2.10,0.0,46,34),('TOR00011','Hembrilla abierta galvanizada',2.25,0.0,75,39);
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04  9:18:19
