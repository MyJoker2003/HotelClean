-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: hotelclean
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
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades` (
  `id_actividad` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(130) NOT NULL,
  PRIMARY KEY (`id_actividad`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` VALUES (1,'Aspirado y barrido'),(2,'Reposición de suministros:(jabon,champu,papel,toallas)'),(3,'Limpieza de ventanas y espejos'),(4,'Recoleccion de basura'),(5,'Limpieza de muebles y/o decoraciones'),(6,'Limpieza de alfombras'),(7,'Limpieza de sistemas de aire acondicionado'),(8,'Desinfección de equipos electrónicos'),(9,'Limpieza de baños'),(10,'Limpieza de Ducha'),(11,'Cambio de ropa de cama'),(12,'Hacer la cama');
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacen`
--

DROP TABLE IF EXISTS `almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen` (
  `id_almacen` varchar(6) NOT NULL,
  `ubicacion` varchar(120) NOT NULL,
  `capacidad` int NOT NULL,
  PRIMARY KEY (`id_almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen`
--

LOCK TABLES `almacen` WRITE;
/*!40000 ALTER TABLE `almacen` DISABLE KEYS */;
INSERT INTO `almacen` VALUES ('ALMA01','Ubicacion #1',90),('ALMA02','Ubicacion #2',40),('ALMA03','Ubicacion #3',60),('ALMA04','Ubicacion #4',90);
/*!40000 ALTER TABLE `almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areacomun`
--

DROP TABLE IF EXISTS `areacomun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areacomun` (
  `id_area` varchar(6) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  PRIMARY KEY (`id_area`),
  CONSTRAINT `areacomun_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `areas` (`id_area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areacomun`
--

LOCK TABLES `areacomun` WRITE;
/*!40000 ALTER TABLE `areacomun` DISABLE KEYS */;
INSERT INTO `areacomun` VALUES ('BAR005','Bar'),('CONF04','Salón de conferencias'),('GAM007','Sala de juegos'),('GYM003','Gimnasio'),('PISC01','Piscina'),('RECEP1','Recepción'),('REST02','Restaurante'),('SPA006','Spa');
/*!40000 ALTER TABLE `areacomun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `areahabitacion`
--

DROP TABLE IF EXISTS `areahabitacion`;
/*!50001 DROP VIEW IF EXISTS `areahabitacion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `areahabitacion` AS SELECT 
 1 AS `id_area`,
 1 AS `piso`,
 1 AS `area_habitacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `areahabitacion2`
--

DROP TABLE IF EXISTS `areahabitacion2`;
/*!50001 DROP VIEW IF EXISTS `areahabitacion2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `areahabitacion2` AS SELECT 
 1 AS `id_area`,
 1 AS `piso`,
 1 AS `area_habitacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas` (
  `id_area` varchar(6) NOT NULL,
  `piso` int NOT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES ('BAR005',1),('CONF04',4),('GAM007',3),('GYM003',3),('HAB101',1),('HAB102',1),('HAB103',1),('HAB201',2),('HAB202',2),('HAB203',2),('HAB301',3),('HAB302',3),('HAB303',3),('HAB401',4),('HAB402',4),('HAB403',4),('HAB501',5),('HAB502',5),('HAB503',5),('PISC01',1),('RECEP1',1),('REST02',2),('SPA006',2);
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conserjes`
--

DROP TABLE IF EXISTS `conserjes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conserjes` (
  `id_empleado` varchar(6) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  CONSTRAINT `conserjes_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conserjes`
--

LOCK TABLES `conserjes` WRITE;
/*!40000 ALTER TABLE `conserjes` DISABLE KEYS */;
INSERT INTO `conserjes` VALUES ('EMP002'),('EMP005'),('EMP008'),('EMP011'),('EMP014'),('EMP017'),('EMP020');
/*!40000 ALTER TABLE `conserjes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumibles`
--

DROP TABLE IF EXISTS `consumibles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumibles` (
  `id_utensilio` varchar(8) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_utensilio`),
  CONSTRAINT `consumibles_ibfk_1` FOREIGN KEY (`id_utensilio`) REFERENCES `utensilios` (`id_utensilio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumibles`
--

LOCK TABLES `consumibles` WRITE;
/*!40000 ALTER TABLE `consumibles` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumibles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumiblesolicitud`
--

DROP TABLE IF EXISTS `consumiblesolicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumiblesolicitud` (
  `id_solicitud` int NOT NULL,
  `id_utensilio` varchar(8) NOT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id_solicitud`,`id_utensilio`),
  KEY `id_utensilio` (`id_utensilio`),
  CONSTRAINT `consumiblesolicitud_ibfk_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud` (`id_solicitud`),
  CONSTRAINT `consumiblesolicitud_ibfk_2` FOREIGN KEY (`id_utensilio`) REFERENCES `utensilios` (`id_utensilio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumiblesolicitud`
--

LOCK TABLES `consumiblesolicitud` WRITE;
/*!40000 ALTER TABLE `consumiblesolicitud` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumiblesolicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejemplo`
--

DROP TABLE IF EXISTS `ejemplo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejemplo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejemplo`
--

LOCK TABLES `ejemplo` WRITE;
/*!40000 ALTER TABLE `ejemplo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ejemplo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id_empleado` varchar(6) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido_paterno` varchar(40) NOT NULL,
  `apellido_materno` varchar(40) DEFAULT NULL,
  `edad` int NOT NULL,
  `sexo` enum('H','M') DEFAULT NULL,
  `puesto` varchar(30) NOT NULL,
  `thepassword` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES ('EMP001','Juan','González','López',35,'H','Recepcionista','empleado'),('EMP002','María','Martínez','Hernández',28,'M','Conserje','empleado'),('EMP003','Pedro','Díaz','García',40,'H','Jefe de Conserjeria','empleado'),('EMP004','Laura','Hernández','Ruiz',32,'M','Recepcionista','empleado'),('EMP005','Carlos','Gómez','Sánchez',45,'H','Conserje','empleado'),('EMP006','Ana','Pérez','López',27,'M','Jefe de Conserjeria','empleado'),('EMP007','Javier','López','Martínez',38,'H','Recepcionista','empleado'),('EMP008','Elena','Fernández','García',33,'M','Conserje','empleado'),('EMP009','Luis','Ruiz','González',42,'H','Jefe de Conserjeria','empleado'),('EMP010','Carmen','Sánchez','Pérez',30,'M','Recepcionista','empleado'),('EMP011','Alberto','Martínez','Fernández',39,'H','Conserje','empleado'),('EMP012','Marta','García','Hernández',29,'M','Jefe de Conserjeria','empleado'),('EMP013','Daniel','Pérez','Gómez',36,'H','Recepcionista','empleado'),('EMP014','Sofía','López','Ruiz',31,'M','Conserje','empleado'),('EMP015','Marcos','Fernández','Sánchez',43,'H','Jefe de Conserjeria','empleado'),('EMP016','Laura','González','Pérez',28,'M','Recepcionista','empleado'),('EMP017','Antonio','Martínez','García',37,'H','Conserje','empleado'),('EMP018','Paula','Sánchez','López',34,'M','Jefe de Conserjeria','empleado'),('EMP019','José','Fernández','Ruiz',41,'H','Recepcionista','empleado'),('EMP020','Marina','Gómez','Martínez',26,'M','Conserje','empleado');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitacion`
--

DROP TABLE IF EXISTS `habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitacion` (
  `id_area` varchar(6) NOT NULL,
  `numero` int NOT NULL,
  PRIMARY KEY (`id_area`),
  CONSTRAINT `habitacion_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `areas` (`id_area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion`
--

LOCK TABLES `habitacion` WRITE;
/*!40000 ALTER TABLE `habitacion` DISABLE KEYS */;
INSERT INTO `habitacion` VALUES ('HAB101',101),('HAB102',102),('HAB103',103),('HAB201',201),('HAB202',202),('HAB203',203),('HAB301',301),('HAB302',302),('HAB303',303),('HAB401',401),('HAB402',402),('HAB403',403),('HAB501',501),('HAB502',502),('HAB503',503);
/*!40000 ALTER TABLE `habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jefeconsergeria`
--

DROP TABLE IF EXISTS `jefeconsergeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jefeconsergeria` (
  `id_empleado` varchar(6) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  CONSTRAINT `jefeconsergeria_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jefeconsergeria`
--

LOCK TABLES `jefeconsergeria` WRITE;
/*!40000 ALTER TABLE `jefeconsergeria` DISABLE KEYS */;
/*!40000 ALTER TABLE `jefeconsergeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noconsumibles`
--

DROP TABLE IF EXISTS `noconsumibles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noconsumibles` (
  `id_utensilio` varchar(8) NOT NULL,
  `numero` int NOT NULL,
  PRIMARY KEY (`id_utensilio`),
  CONSTRAINT `noconsumibles_ibfk_1` FOREIGN KEY (`id_utensilio`) REFERENCES `utensilios` (`id_utensilio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noconsumibles`
--

LOCK TABLES `noconsumibles` WRITE;
/*!40000 ALTER TABLE `noconsumibles` DISABLE KEYS */;
/*!40000 ALTER TABLE `noconsumibles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noconsumiblesolicitud`
--

DROP TABLE IF EXISTS `noconsumiblesolicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noconsumiblesolicitud` (
  `id_solicitud` int NOT NULL,
  `id_utensilio` varchar(8) NOT NULL,
  PRIMARY KEY (`id_solicitud`,`id_utensilio`),
  KEY `id_utensilio` (`id_utensilio`),
  CONSTRAINT `noconsumiblesolicitud_ibfk_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud` (`id_solicitud`),
  CONSTRAINT `noconsumiblesolicitud_ibfk_2` FOREIGN KEY (`id_utensilio`) REFERENCES `utensilios` (`id_utensilio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noconsumiblesolicitud`
--

LOCK TABLES `noconsumiblesolicitud` WRITE;
/*!40000 ALTER TABLE `noconsumiblesolicitud` DISABLE KEYS */;
/*!40000 ALTER TABLE `noconsumiblesolicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nombrecompleto`
--

DROP TABLE IF EXISTS `nombrecompleto`;
/*!50001 DROP VIEW IF EXISTS `nombrecompleto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nombrecompleto` AS SELECT 
 1 AS `id_empleado`,
 1 AS `nomcompleto`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `recepcionistas`
--

DROP TABLE IF EXISTS `recepcionistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recepcionistas` (
  `id_empleado` varchar(6) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  CONSTRAINT `recepcionistas_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recepcionistas`
--

LOCK TABLES `recepcionistas` WRITE;
/*!40000 ALTER TABLE `recepcionistas` DISABLE KEYS */;
INSERT INTO `recepcionistas` VALUES ('EMP001'),('EMP004'),('EMP007'),('EMP010'),('EMP013'),('EMP016'),('EMP019');
/*!40000 ALTER TABLE `recepcionistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte`
--

DROP TABLE IF EXISTS `reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporte` (
  `id_reporte` int NOT NULL AUTO_INCREMENT,
  `id_area` varchar(6) NOT NULL,
  `id_conserje` varchar(6) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(5) NOT NULL,
  `detalles` text NOT NULL,
  PRIMARY KEY (`id_reporte`),
  KEY `id_area` (`id_area`),
  KEY `id_conserje` (`id_conserje`),
  CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `areas` (`id_area`),
  CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`id_conserje`) REFERENCES `conserjes` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte`
--

LOCK TABLES `reporte` WRITE;
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
INSERT INTO `reporte` VALUES (2,'BAR005','EMP005','2024-04-28','01:24:00','Daño','xyz');
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud` (
  `id_solicitud` int NOT NULL,
  `id_area` varchar(6) NOT NULL,
  `prioridad` varchar(10) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `instrucciones` text,
  PRIMARY KEY (`id_solicitud`),
  KEY `id_area` (`id_area`),
  CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `areas` (`id_area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
INSERT INTO `solicitud` VALUES (1,'BAR005','Alta','pendiente','2024-04-25','11:00:00','Instrucciones 1'),(2,'HAB501','Estandar','pendiente','2024-04-26','08:30:00','Instrucciones 2');
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudactividades`
--

DROP TABLE IF EXISTS `solicitudactividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudactividades` (
  `id_solicitud` int NOT NULL,
  `id_actividad` int NOT NULL,
  KEY `id_solicitud` (`id_solicitud`),
  KEY `id_actividad` (`id_actividad`),
  CONSTRAINT `solicitudactividades_ibfk_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud` (`id_solicitud`),
  CONSTRAINT `solicitudactividades_ibfk_2` FOREIGN KEY (`id_actividad`) REFERENCES `actividades` (`id_actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudactividades`
--

LOCK TABLES `solicitudactividades` WRITE;
/*!40000 ALTER TABLE `solicitudactividades` DISABLE KEYS */;
INSERT INTO `solicitudactividades` VALUES (1,1),(1,4),(1,6),(1,5),(2,11),(2,12);
/*!40000 ALTER TABLE `solicitudactividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudconserje`
--

DROP TABLE IF EXISTS `solicitudconserje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudconserje` (
  `id_solicitud` int NOT NULL,
  `id_conserje` varchar(6) NOT NULL,
  PRIMARY KEY (`id_solicitud`,`id_conserje`),
  KEY `id_conserje` (`id_conserje`),
  CONSTRAINT `solicitudconserje_ibfk_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud` (`id_solicitud`),
  CONSTRAINT `solicitudconserje_ibfk_2` FOREIGN KEY (`id_conserje`) REFERENCES `conserjes` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudconserje`
--

LOCK TABLES `solicitudconserje` WRITE;
/*!40000 ALTER TABLE `solicitudconserje` DISABLE KEYS */;
INSERT INTO `solicitudconserje` VALUES (1,'EMP005'),(1,'EMP008');
/*!40000 ALTER TABLE `solicitudconserje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudutensilio`
--

DROP TABLE IF EXISTS `solicitudutensilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudutensilio` (
  `id_solicitud` int NOT NULL,
  `id_utensilio` varchar(8) NOT NULL,
  PRIMARY KEY (`id_solicitud`,`id_utensilio`),
  KEY `id_utensilio` (`id_utensilio`),
  CONSTRAINT `solicitudutensilio_ibfk_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud` (`id_solicitud`),
  CONSTRAINT `solicitudutensilio_ibfk_2` FOREIGN KEY (`id_utensilio`) REFERENCES `utensilios` (`id_utensilio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudutensilio`
--

LOCK TABLES `solicitudutensilio` WRITE;
/*!40000 ALTER TABLE `solicitudutensilio` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudutensilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_solicitudes`
--

DROP TABLE IF EXISTS `tabla_solicitudes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_solicitudes` (
  `id_solicitud` int NOT NULL,
  `id_area` varchar(6) DEFAULT NULL,
  `prioridad` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `instrucciones` text,
  PRIMARY KEY (`id_solicitud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_solicitudes`
--

LOCK TABLES `tabla_solicitudes` WRITE;
/*!40000 ALTER TABLE `tabla_solicitudes` DISABLE KEYS */;
INSERT INTO `tabla_solicitudes` VALUES (1,'1','Baja','pendiente','2024-04-23','17:21:00','RRRR'),(2,'1','Baja','pendiente','2024-04-24','09:50:00','None'),(3,'4','Estandar','pendiente','2024-04-24','12:00:00','Ninguna'),(4,'6','Baja','pendiente','2024-04-23','23:00:00','xxx');
/*!40000 ALTER TABLE `tabla_solicitudes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utensilios`
--

DROP TABLE IF EXISTS `utensilios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utensilios` (
  `id_utensilio` varchar(8) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `tipo` enum('Consumibles','NoConsumbibles') DEFAULT NULL,
  `id_almacen` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id_utensilio`),
  KEY `id_almacen` (`id_almacen`),
  CONSTRAINT `utensilios_ibfk_1` FOREIGN KEY (`id_almacen`) REFERENCES `almacen` (`id_almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utensilios`
--

LOCK TABLES `utensilios` WRITE;
/*!40000 ALTER TABLE `utensilios` DISABLE KEYS */;
INSERT INTO `utensilios` VALUES ('UTN-001','Guantes desechables','Consumibles','ALMA01'),('UTN-002','Esponja abrasiva','Consumibles','ALMA01'),('UTN-003','Bolsas de basura','Consumibles','ALMA01'),('UTN-004','Pastillas descalcificadoras','Consumibles','ALMA01'),('UTN-005','Rollos de papel higiénico Recambios de filtro para aspiradora','Consumibles','ALMA01'),('UTN-006','Recambios de filtro para aspiradora','Consumibles','ALMA01'),('UTN-007','Tabletas desodorizantes','Consumibles','ALMA01'),('UTN-008','Cleaning Cloth','Consumibles','ALMA01'),('UTN-009','Toallitas Desinfectantes','Consumibles','ALMA01'),('UTN-010','Botella de Limpiador de Vidrios','Consumibles','ALMA01'),('UTN-011','Jabon de Barra','Consumibles','ALMA01'),('UTN-012','Botella de Shampoo','Consumibles','ALMA01'),('UTN-013','Escoba de cerdas duras','NoConsumbibles','ALMA02'),('UTN-014','Aspiradora de mano','NoConsumbibles','ALMA02'),('UTN-015','Trapeador de microfibra','NoConsumbibles','ALMA02'),('UTN-016','Cubo de limpieza','NoConsumbibles','ALMA02'),('UTN-017','Escoba de cerdas duras','NoConsumbibles','ALMA02'),('UTN-018','Aspiradora de mano','NoConsumbibles','ALMA02'),('UTN-019','Trapeador de microfibra','NoConsumbibles','ALMA02'),('UTN-020','Cubo de limpieza','NoConsumbibles','ALMA02');
/*!40000 ALTER TABLE `utensilios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `areahabitacion`
--

/*!50001 DROP VIEW IF EXISTS `areahabitacion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `areahabitacion` AS select `areas`.`id_area` AS `id_area`,`areas`.`piso` AS `piso`,concat(coalesce(`areacomun`.`nombre`,''),' ',coalesce(concat('Habitacion: ',`habitacion`.`numero`),'')) AS `area_habitacion` from ((`areas` left join `areacomun` on((`areas`.`id_area` = `areacomun`.`id_area`))) left join `habitacion` on((`areas`.`id_area` = `habitacion`.`id_area`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `areahabitacion2`
--

/*!50001 DROP VIEW IF EXISTS `areahabitacion2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `areahabitacion2` AS select `areas`.`id_area` AS `id_area`,`areas`.`piso` AS `piso`,concat(coalesce(`areacomun`.`nombre`,''),coalesce(`habitacion`.`numero`,'')) AS `area_habitacion` from ((`areas` left join `areacomun` on((`areas`.`id_area` = `areacomun`.`id_area`))) left join `habitacion` on((`areas`.`id_area` = `habitacion`.`id_area`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nombrecompleto`
--

/*!50001 DROP VIEW IF EXISTS `nombrecompleto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nombrecompleto` AS select `empleado`.`id_empleado` AS `id_empleado`,concat(`empleado`.`nombre`,' ',`empleado`.`apellido_paterno`,' ',`empleado`.`apellido_materno`) AS `nomcompleto` from `empleado` */;
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

-- Dump completed on 2024-04-28 12:08:03
