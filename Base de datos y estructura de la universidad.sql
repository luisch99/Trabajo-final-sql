-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyecto1
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
-- Table structure for table `actualizadocente`
--

DROP TABLE IF EXISTS `actualizadocente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actualizadocente` (
  `idDocente` varchar(45) NOT NULL,
  `ApeDoc` varchar(45) NOT NULL,
  `NombreDoc` varchar(45) NOT NULL,
  `idFacultad` varchar(45) NOT NULL,
  `NuevaFacultad` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  PRIMARY KEY (`idDocente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actualizadocente`
--

LOCK TABLES `actualizadocente` WRITE;
/*!40000 ALTER TABLE `actualizadocente` DISABLE KEYS */;
INSERT INTO `actualizadocente` VALUES ('7','BONAPARTE','JOSÉ','1','2','root@localhost');
/*!40000 ALTER TABLE `actualizadocente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actualizaordencompra`
--

DROP TABLE IF EXISTS `actualizaordencompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actualizaordencompra` (
  `IdOrden` varchar(45) NOT NULL,
  `Cantidad` varchar(45) NOT NULL,
  `CostoTotal` varchar(45) NOT NULL,
  `CantidadNueva` varchar(45) NOT NULL,
  `CostoTotalNuevo` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `FechaRegistro` datetime NOT NULL,
  PRIMARY KEY (`IdOrden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actualizaordencompra`
--

LOCK TABLES `actualizaordencompra` WRITE;
/*!40000 ALTER TABLE `actualizaordencompra` DISABLE KEYS */;
INSERT INTO `actualizaordencompra` VALUES ('11','10','5000','8','4220','root@localhost','2022-03-09 21:18:47');
/*!40000 ALTER TABLE `actualizaordencompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `idAlumno` int NOT NULL AUTO_INCREMENT,
  `idCarreraAlum` int NOT NULL,
  `idPlanAlum` int NOT NULL,
  `FechIng` varchar(45) NOT NULL,
  `CorreoAlum` varchar(45) NOT NULL,
  `ApeAlum` varchar(45) NOT NULL,
  `DNIAlum` int NOT NULL,
  `EstadoAlum` varchar(45) NOT NULL,
  `NombreAlum` varchar(45) NOT NULL,
  PRIMARY KEY (`idAlumno`),
  UNIQUE KEY `idAlumno_UNIQUE` (`idAlumno`),
  KEY `idCarrera_idx` (`idCarreraAlum`),
  KEY `idPlan_idx` (`idPlanAlum`),
  CONSTRAINT `idCarreraAlum` FOREIGN KEY (`idCarreraAlum`) REFERENCES `carrera` (`idCarrera`),
  CONSTRAINT `idPlanAlum` FOREIGN KEY (`idPlanAlum`) REFERENCES `planestudio` (`idPlan`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,10,10,'25/03/2019','pozrodr@gmail.com','Pozo',87282560,'activo','Rodrigo'),(2,5,9,'25/07/2019','bermari@gmail.com','Bernaola',53910440,'no activo','Marisol'),(3,8,5,'25/03/2018','sanalic@gmail.com','Santamar',58507591,'activo','Alicia'),(4,9,8,'25/03/2022','parabri@gmail.com','Parra',91407441,'activo','Abril'),(5,7,4,'25/07/2017','benkari@gmail.com','Benavide',86018135,'activo','Karina'),(6,4,3,'25/03/2016','cisleti@gmail.com','Cisneros',77801317,'no activo','Leticia'),(7,2,2,'25/03/2021','núñraúl@gmail.com','Núñez',54007269,'no activo','Raúl'),(8,1,4,'25/07/2020','ningust@gmail.com','Ninaquis',85307718,'activo','Gustavo'),(9,4,7,'25/07/2021','sanalon@gmail.com','Sandoval',70859024,'activo','Alonso'),(10,3,1,'25/03/2017','almdian@gmail.com','Almeida',78600706,'no activo','Diana'),(11,10,1,'25/07/2018','solglor@gmail.com','Solis',61800147,'activo','Gloria'),(12,5,2,'25/07/2022','sanmanu@gmail.com','Sanabria',76024949,'no activo','Manuel'),(13,4,10,'25/03/2021','adrigo@gmail.com','Gomez',85319762,'activo','Adrian');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `alumuni`
--

DROP TABLE IF EXISTS `alumuni`;
/*!50001 DROP VIEW IF EXISTS `alumuni`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `alumuni` AS SELECT 
 1 AS `idMatricula`,
 1 AS `idAlumnoMatri`,
 1 AS `FechaMatricula`,
 1 AS `DesPago`,
 1 AS `NombreAlum`,
 1 AS `ApeAlum`,
 1 AS `CorreoAlum`,
 1 AS `DNIAlum`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ambiente`
--

DROP TABLE IF EXISTS `ambiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ambiente` (
  `idAula` int NOT NULL AUTO_INCREMENT,
  `EstadoAmb` varchar(45) NOT NULL,
  `DescAmb` varchar(45) NOT NULL,
  PRIMARY KEY (`idAula`),
  UNIQUE KEY `idAmbiente_UNIQUE` (`idAula`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ambiente`
--

LOCK TABLES `ambiente` WRITE;
/*!40000 ALTER TABLE `ambiente` DISABLE KEYS */;
INSERT INTO `ambiente` VALUES (1,'40','Aula A'),(2,'35','Laboratorio A'),(3,'35','Aula B'),(4,'30','Laboratorio B'),(5,'37','Aula C'),(6,'35','Laboratorio C'),(7,'40','Aula D'),(8,'38','Laboratorio D'),(9,'30','Aula E'),(10,'28','Laboratorio E'),(11,'41','Aula F'),(12,'40','Laboratorio F'),(13,'40','Aula G');
/*!40000 ALTER TABLE `ambiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera` (
  `idCarrera` int NOT NULL AUTO_INCREMENT,
  `DesCarrera` varchar(45) NOT NULL,
  PRIMARY KEY (`idCarrera`),
  UNIQUE KEY `idCarrera_UNIQUE` (`idCarrera`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Ingenieria de sistemas'),(2,'Ingenieria ambiental'),(3,'Ingenieria de sofware'),(4,'Ingenieria de industrial'),(5,'Ingenieria quimica'),(6,'Ingenieria de minas'),(7,'Ingenieria mecatronica'),(8,'Arquitectura'),(9,'Derecho'),(10,'Medicina');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idCursos` int NOT NULL AUTO_INCREMENT,
  `Creditos` int NOT NULL,
  `DesCurso` varchar(45) NOT NULL,
  PRIMARY KEY (`idCursos`),
  UNIQUE KEY `idCursos_UNIQUE` (`idCursos`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,5,'Calculo'),(2,4,'Precalculo'),(3,2,'Filosofia'),(4,3,'Fisica'),(5,6,'Economia'),(6,4,'Quimica '),(7,5,'Analisi multivariado'),(8,4,'Robotica'),(9,3,'Finanzas'),(10,4,'Investigacion operativa'),(11,2,'Estadistica inferencial'),(12,5,'Matematica discreta'),(13,3,'biologia');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cursouni`
--

DROP TABLE IF EXISTS `cursouni`;
/*!50001 DROP VIEW IF EXISTS `cursouni`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cursouni` AS SELECT 
 1 AS `idseccion`,
 1 AS `PeriodoSec`,
 1 AS `Creditos`,
 1 AS `DesCurso`,
 1 AS `estadoAmb`,
 1 AS `descamb`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dia`
--

DROP TABLE IF EXISTS `dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dia` (
  `idDia` int NOT NULL AUTO_INCREMENT,
  `Dia` varchar(45) NOT NULL,
  PRIMARY KEY (`idDia`),
  UNIQUE KEY `idDia_UNIQUE` (`idDia`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia`
--

LOCK TABLES `dia` WRITE;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
INSERT INTO `dia` VALUES (1,'lunes'),(2,'martes'),(3,'miercoles'),(4,'jueves'),(5,'viernes'),(6,'sabado '),(7,'domingo');
/*!40000 ALTER TABLE `dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disponibilidad`
--

DROP TABLE IF EXISTS `disponibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disponibilidad` (
  `idDisponibilidad` int NOT NULL AUTO_INCREMENT,
  `idDocente` int NOT NULL,
  `idDia` int NOT NULL,
  `idHora` int NOT NULL,
  `PeriodoDisp` varchar(45) NOT NULL,
  `EstadoDisp` varchar(45) NOT NULL,
  PRIMARY KEY (`idDisponibilidad`),
  UNIQUE KEY `idDisponibilidad_UNIQUE` (`idDisponibilidad`),
  KEY `idDocente_idx` (`idDocente`),
  KEY `idDia_idx` (`idDia`),
  KEY `idHora_idx` (`idHora`),
  CONSTRAINT `idDia` FOREIGN KEY (`idDia`) REFERENCES `dia` (`idDia`),
  CONSTRAINT `idDocente` FOREIGN KEY (`idDocente`) REFERENCES `docente` (`idDocente`),
  CONSTRAINT `idHora` FOREIGN KEY (`idHora`) REFERENCES `hora` (`idHora`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disponibilidad`
--

LOCK TABLES `disponibilidad` WRITE;
/*!40000 ALTER TABLE `disponibilidad` DISABLE KEYS */;
INSERT INTO `disponibilidad` VALUES (1,1,1,3,'mañana','activo'),(2,5,5,4,'tarde','no activo'),(3,6,6,6,'noche','activo'),(4,7,3,8,'noche','activo'),(5,9,4,2,'mañana','activo'),(6,10,2,1,'tarde','activo'),(7,3,6,6,'tarde','activo'),(8,2,1,4,'noche','activo'),(9,4,2,7,'mañana','no activo');
/*!40000 ALTER TABLE `disponibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dispouni`
--

DROP TABLE IF EXISTS `dispouni`;
/*!50001 DROP VIEW IF EXISTS `dispouni`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dispouni` AS SELECT 
 1 AS `idDisponibilidad`,
 1 AS `idDocente`,
 1 AS `idDia`,
 1 AS `idHora`,
 1 AS `PeriodoDisp`,
 1 AS `EstadoDisp`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `idDocente` int NOT NULL AUTO_INCREMENT,
  `CorreoDoc` varchar(45) NOT NULL,
  `FechaNac` varchar(45) NOT NULL,
  `ApeDoc` varchar(45) NOT NULL,
  `NombreDoc` varchar(45) NOT NULL,
  `DNIDoc` int NOT NULL,
  `idFacultad` int NOT NULL,
  PRIMARY KEY (`idDocente`),
  UNIQUE KEY `idDocente_UNIQUE` (`idDocente`),
  KEY `idFacultad_idx` (`idFacultad`),
  CONSTRAINT `idFacultad` FOREIGN KEY (`idFacultad`) REFERENCES `facultad` (`idFacultad`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'crismart@ue.edu.pe','3/11/1970','MARTÍNEZ','CRISTINA',7690941,1),(2,'jorgrico@ue.edu.pe','29/06/1975','RICO','JORGE',6227819,3),(3,'luisguer@ue.edu.pe','29/01/1978','GUERRERO','LUIS',7627093,4),(4,'oscacort@ue.edu.pe','18/07/1982','CORTINA','OSCAR',7439869,2),(5,'lourmeri@ue.edu.pe','5/08/1986','MERINO','LOURDES',7807100,4),(6,'jaimsánc@ue.edu.pe','21/04/1970','SÁNCHEZ','JAIME',8137592,3),(7,'josébona@ue.edu.pe','23/07/1983','BONAPARTE','JOSÉ',7621567,2),(8,'evaeste@ue.edu.pe','28/03/1990','ESTEVE','EVA',8752555,2),(9,'fedegarc@ue.edu.pe','7/07/1979','GARCÍA','FEDERICO',8347456,3),(10,'merctorr@ue.edu.pe','24/08/1986','TORRES','MERCHE',7924315,2),(11,'elizcast@ue.edu.pe','24/08/1986','Castro','Elizabeth',7894236,4);
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `doceplan`
--

DROP TABLE IF EXISTS `doceplan`;
/*!50001 DROP VIEW IF EXISTS `doceplan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `doceplan` AS SELECT 
 1 AS `idPlan`,
 1 AS `idDocentePlan`,
 1 AS `idEvaluacionPlan`,
 1 AS `idCursoPlan`,
 1 AS `FechaIni`,
 1 AS `FechaFin`,
 1 AS `DesPlan`,
 1 AS `idDocente`,
 1 AS `CorreoDoc`,
 1 AS `FechaNac`,
 1 AS `ApeDoc`,
 1 AS `NombreDoc`,
 1 AS `DNIDoc`,
 1 AS `idFacultad`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `evaluacion`
--

DROP TABLE IF EXISTS `evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluacion` (
  `idEvaluacion` int NOT NULL AUTO_INCREMENT,
  `DesEva` varchar(45) NOT NULL,
  PRIMARY KEY (`idEvaluacion`),
  UNIQUE KEY `idEvaluacion_UNIQUE` (`idEvaluacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion`
--

LOCK TABLES `evaluacion` WRITE;
/*!40000 ALTER TABLE `evaluacion` DISABLE KEYS */;
INSERT INTO `evaluacion` VALUES (1,'Oral'),(2,'Escrita');
/*!40000 ALTER TABLE `evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultad`
--

DROP TABLE IF EXISTS `facultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facultad` (
  `idFacultad` int NOT NULL AUTO_INCREMENT,
  `DesFac` varchar(45) NOT NULL,
  PRIMARY KEY (`idFacultad`),
  UNIQUE KEY `idFacultad_UNIQUE` (`idFacultad`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultad`
--

LOCK TABLES `facultad` WRITE;
/*!40000 ALTER TABLE `facultad` DISABLE KEYS */;
INSERT INTO `facultad` VALUES (1,'Facultad de Ingenieria'),(2,'Facultad de Medicina'),(3,'Facultad de Derecho'),(4,'Facultad de Arquitectura');
/*!40000 ALTER TABLE `facultad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hora`
--

DROP TABLE IF EXISTS `hora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hora` (
  `idHora` int NOT NULL AUTO_INCREMENT,
  `HoraIni` varchar(45) NOT NULL,
  `HoraFin` varchar(45) NOT NULL,
  PRIMARY KEY (`idHora`),
  UNIQUE KEY `idHora_UNIQUE` (`idHora`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hora`
--

LOCK TABLES `hora` WRITE;
/*!40000 ALTER TABLE `hora` DISABLE KEYS */;
INSERT INTO `hora` VALUES (1,'07:00','09:00'),(2,'09:00','11:00'),(3,'11:00','13:00'),(4,'13:00','15:00'),(5,'15:00','17:00'),(6,'17:00','19:00'),(7,'19:00','21:00'),(8,'21:00','23:00');
/*!40000 ALTER TABLE `hora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `idLibros` int NOT NULL AUTO_INCREMENT,
  `DesLibros` varchar(45) NOT NULL,
  PRIMARY KEY (`idLibros`),
  UNIQUE KEY `idLibros_UNIQUE` (`idLibros`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'calculo avanzado'),(2,'Fundamentos de la EconomÃ­a'),(3,'Inteligencia matemÃ¡tica'),(4,'Apocalipsis matematico'),(5,'Aventuras matematicas'),(6,'Principios de la medicina'),(7,'Tratado de medicina interna '),(8,'Anatomia humana'),(9,'Fisiologia medica'),(10,'Critica de la razon'),(11,'Tao te ching'),(12,'El discurso del metodo'),(13,'Leviatan'),(14,'El proceso contencioso administrativo'),(15,'Teoria de la justicia'),(16,'Introduccion al derecho'),(17,'De los delitos y de la penas');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `idMatricula` int NOT NULL AUTO_INCREMENT,
  `idAlumnoMatri` int NOT NULL,
  `idMetodoPagoMatri` int NOT NULL,
  `EstadiMatricula` varchar(45) NOT NULL,
  `FechaMatricula` varchar(45) NOT NULL,
  `idServciosMatri` int NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idMatricula`),
  UNIQUE KEY `idMatricula_UNIQUE` (`idMatricula`),
  KEY `idAlumno_idx` (`idAlumnoMatri`),
  KEY `idMetodoPago_idx` (`idMetodoPagoMatri`),
  KEY `idServciosMatri_idx` (`idServciosMatri`),
  CONSTRAINT `idAlumnoMatri` FOREIGN KEY (`idAlumnoMatri`) REFERENCES `alumno` (`idAlumno`),
  CONSTRAINT `idMetodoPagoMatri` FOREIGN KEY (`idMetodoPagoMatri`) REFERENCES `metodopago` (`idMetodoPago`),
  CONSTRAINT `idServciosMatri` FOREIGN KEY (`idServciosMatri`) REFERENCES `servicioaca` (`idServicios`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (1,1,3,'no activo','2/02/2019',3,7000.00),(2,12,2,'activo','3/02/2022',2,6000.00),(3,10,1,'no activo','4/02/2019',10,8762.00),(4,9,2,'activo','2/06/2022',7,6522.00),(5,5,3,'activo','3/06/2022',6,5222.00),(6,7,1,'no activo','4/06/2020',8,5000.00),(7,4,1,'no activo','2/06/2019',9,6000.00),(8,3,2,'activo','6/06/2022',1,7416.00),(9,6,3,'no activo','3/02/2019',3,8621.00),(10,2,2,'activo','3/02/2022',2,7623.00);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `matriuni`
--

DROP TABLE IF EXISTS `matriuni`;
/*!50001 DROP VIEW IF EXISTS `matriuni`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `matriuni` AS SELECT 
 1 AS `idMatricula`,
 1 AS `idAlumnoMatri`,
 1 AS `FechaMatricula`,
 1 AS `DesPago`,
 1 AS `NombreAlum`,
 1 AS `ApeAlum`,
 1 AS `CorreoAlum`,
 1 AS `DNIAlum`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `metodopago`
--

DROP TABLE IF EXISTS `metodopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodopago` (
  `idMetodoPago` int NOT NULL AUTO_INCREMENT,
  `DesPago` varchar(45) NOT NULL,
  PRIMARY KEY (`idMetodoPago`),
  UNIQUE KEY `idMetodoPago_UNIQUE` (`idMetodoPago`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodopago`
--

LOCK TABLES `metodopago` WRITE;
/*!40000 ALTER TABLE `metodopago` DISABLE KEYS */;
INSERT INTO `metodopago` VALUES (1,'Debito'),(2,'Credito'),(3,'Efectivo');
/*!40000 ALTER TABLE `metodopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordencompra`
--

DROP TABLE IF EXISTS `ordencompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordencompra` (
  `idOrden` int NOT NULL AUTO_INCREMENT,
  `idProveedorOrden` int NOT NULL,
  `idLibroOrden` int NOT NULL,
  `idServiciosOrden` int NOT NULL,
  `Cantidad` int NOT NULL,
  `CostoTotal` decimal(10,0) NOT NULL,
  `EstadoCompra` varchar(45) NOT NULL,
  PRIMARY KEY (`idOrden`),
  UNIQUE KEY `idOrdenCompra_UNIQUE` (`idOrden`),
  KEY `idProveedor_idx` (`idProveedorOrden`),
  KEY `idLibro_idx` (`idLibroOrden`),
  KEY `idServicios_idx` (`idServiciosOrden`),
  CONSTRAINT `idLibroOrden` FOREIGN KEY (`idLibroOrden`) REFERENCES `libros` (`idLibros`),
  CONSTRAINT `idProveedorOrden` FOREIGN KEY (`idProveedorOrden`) REFERENCES `proveedor` (`idProveedor`),
  CONSTRAINT `idServiciosOrden` FOREIGN KEY (`idServiciosOrden`) REFERENCES `servicioaca` (`idServicios`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordencompra`
--

LOCK TABLES `ordencompra` WRITE;
/*!40000 ALTER TABLE `ordencompra` DISABLE KEYS */;
INSERT INTO `ordencompra` VALUES (1,13,16,3,3,1500,'activo'),(2,5,15,4,4,2000,'no activo'),(3,9,14,5,5,2555,'activo'),(4,7,13,9,3,1500,'activo'),(5,4,11,10,4,2000,'activo'),(6,12,10,5,5,2555,'activo'),(7,11,5,8,2,1000,'no activo'),(8,1,4,3,4,2000,'no activo'),(9,6,1,2,2,1000,'activo'),(10,2,3,1,3,1500,'no activo'),(11,2,4,8,8,4220,'activo');
/*!40000 ALTER TABLE `ordencompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planestudio`
--

DROP TABLE IF EXISTS `planestudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planestudio` (
  `idPlan` int NOT NULL AUTO_INCREMENT,
  `idDocentePlan` int NOT NULL,
  `idEvaluacionPlan` int NOT NULL,
  `idCursoPlan` int NOT NULL,
  `FechaIni` varchar(45) NOT NULL,
  `FechaFin` varchar(45) NOT NULL,
  `DesPlan` varchar(45) NOT NULL,
  PRIMARY KEY (`idPlan`),
  UNIQUE KEY `idPlan_UNIQUE` (`idPlan`),
  KEY `idDocente_idx` (`idDocentePlan`),
  KEY `idEvaluacion_idx` (`idEvaluacionPlan`),
  KEY `idCurso_idx` (`idCursoPlan`),
  CONSTRAINT `idCursosPlan` FOREIGN KEY (`idCursoPlan`) REFERENCES `cursos` (`idCursos`),
  CONSTRAINT `idDocentePlan` FOREIGN KEY (`idDocentePlan`) REFERENCES `docente` (`idDocente`),
  CONSTRAINT `idEvaluacionPlan` FOREIGN KEY (`idEvaluacionPlan`) REFERENCES `evaluacion` (`idEvaluacion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planestudio`
--

LOCK TABLES `planestudio` WRITE;
/*!40000 ALTER TABLE `planestudio` DISABLE KEYS */;
INSERT INTO `planestudio` VALUES (1,3,2,4,'24/03/2022','25/06/2022','Presencial'),(2,5,1,5,'24/03/2022','25/06/2022','virtual'),(3,6,2,8,'24/03/2022','25/06/2022','Presencial'),(4,8,2,9,'24/03/2022','25/06/2022','Presencial'),(5,9,2,12,'24/03/2022','25/06/2022','Presencial'),(6,10,1,11,'24/03/2022','25/06/2022','Presencial'),(7,4,1,10,'24/03/2022','25/06/2022','Presencial'),(8,6,2,6,'24/03/2022','25/06/2022','Presencial'),(9,8,2,4,'24/03/2022','25/06/2022','virtual'),(10,1,1,2,'24/03/2022','25/06/2022','virtual');
/*!40000 ALTER TABLE `planestudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idProveedor` int NOT NULL AUTO_INCREMENT,
  `NombrePro` varchar(45) NOT NULL,
  `ApellidoPro` varchar(45) NOT NULL,
  `CorreoPro` varchar(45) NOT NULL,
  `Tlf` int NOT NULL,
  PRIMARY KEY (`idProveedor`),
  UNIQUE KEY `idProveedor_UNIQUE` (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Monica','Suárez','suámón@gmail.com',317565334),(2,'Raul','Alvarez','alvraú@gmail.com',150040602),(3,'Gustavo','Santos','sangus@gmail.com',846179304),(4,'Alonso','Pérez','péralo@gmail.com',888234887),(5,'Diana','Espejo','espdia@gmail.com',482522442),(6,'Gloria','Guevara','gueglo@gmail.com',527259824),(7,'Manuel','Miranda','mirman@gmail.com',850002271),(8,'Alfonso','Guevara','guealf@gmail.com',980110349),(9,'Guillermo','Sáenz','sáegui@gmail.com',107556726),(10,'Fiorella','Morales','morfio@gmail.com',930795400),(11,'Paula','Sanabria','sanpau@gmail.com',192942270),(12,'Marcela','Juárez','juámar@gmail.com',421502897),(13,'Sarik','Fuentes','fuesar@gmail.com',380687324);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `proveuni`
--

DROP TABLE IF EXISTS `proveuni`;
/*!50001 DROP VIEW IF EXISTS `proveuni`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `proveuni` AS SELECT 
 1 AS `idproveedororden`,
 1 AS `NombrePro`,
 1 AS `ApellidoPro`,
 1 AS `CorreoPro`,
 1 AS `cantidad_de_libros`,
 1 AS `costototal`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `registrodocente`
--

DROP TABLE IF EXISTS `registrodocente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrodocente` (
  `idDocente` varchar(45) NOT NULL,
  `CorreoDoc` varchar(45) NOT NULL,
  `FechaNac` varchar(45) NOT NULL,
  `ApeDoc` varchar(45) NOT NULL,
  `NombreDoc` varchar(45) NOT NULL,
  `DNIDoc` varchar(45) NOT NULL,
  `idFacultad` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `FechaRegistro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idDocente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrodocente`
--

LOCK TABLES `registrodocente` WRITE;
/*!40000 ALTER TABLE `registrodocente` DISABLE KEYS */;
INSERT INTO `registrodocente` VALUES ('11','elizcast@ue.edu.pe','24/08/1986','Castro','Elizabeth','7894236','4','root@localhost','2022-03-09 19:55:24');
/*!40000 ALTER TABLE `registrodocente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registroordencompra`
--

DROP TABLE IF EXISTS `registroordencompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registroordencompra` (
  `idOrden` varchar(45) NOT NULL,
  `idProveedorOrden` varchar(45) NOT NULL,
  `idLibroOrden` varchar(45) NOT NULL,
  `idServiciosOrden` varchar(45) NOT NULL,
  `Cantidad` varchar(45) NOT NULL,
  `CostoTotal` varchar(45) NOT NULL,
  `EstadoCompra` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `RegistroFecha` datetime NOT NULL,
  PRIMARY KEY (`idOrden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registroordencompra`
--

LOCK TABLES `registroordencompra` WRITE;
/*!40000 ALTER TABLE `registroordencompra` DISABLE KEYS */;
INSERT INTO `registroordencompra` VALUES ('11','2','4','8','10','5000','activo','root@localhost','2022-03-09 21:05:22');
/*!40000 ALTER TABLE `registroordencompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seccion`
--

DROP TABLE IF EXISTS `seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seccion` (
  `idSeccion` int NOT NULL AUTO_INCREMENT,
  `idAulaSec` int NOT NULL,
  `idCursosSec` int NOT NULL,
  `PeriodoSec` varchar(45) NOT NULL,
  `EstadoSec` varchar(45) NOT NULL,
  PRIMARY KEY (`idSeccion`),
  UNIQUE KEY `idSeccion_UNIQUE` (`idSeccion`),
  KEY `idCurso_idx` (`idCursosSec`),
  KEY `idAulaSec` (`idAulaSec`),
  CONSTRAINT `idAulaSec` FOREIGN KEY (`idAulaSec`) REFERENCES `ambiente` (`idAula`),
  CONSTRAINT `idCursoSec` FOREIGN KEY (`idCursosSec`) REFERENCES `cursos` (`idCursos`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seccion`
--

LOCK TABLES `seccion` WRITE;
/*!40000 ALTER TABLE `seccion` DISABLE KEYS */;
INSERT INTO `seccion` VALUES (1,1,4,'Mañana ','activo'),(2,3,6,'Tarde','activo'),(3,4,8,'Noche','activo'),(4,8,3,'Mañana ','activo'),(5,10,4,'Noche','activo'),(6,12,10,'Tarde','activo'),(7,6,12,'Noche','activo'),(8,5,11,'Tarde','activo');
/*!40000 ALTER TABLE `seccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicioaca`
--

DROP TABLE IF EXISTS `servicioaca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicioaca` (
  `idServicios` int NOT NULL AUTO_INCREMENT,
  `Apellido` varchar(45) NOT NULL,
  `CorreoServi` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idServicios`),
  UNIQUE KEY `idServicioAca_UNIQUE` (`idServicios`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicioaca`
--

LOCK TABLES `servicioaca` WRITE;
/*!40000 ALTER TABLE `servicioaca` DISABLE KEYS */;
INSERT INTO `servicioaca` VALUES (1,'Lopez','antolope@service.pe','Antoni'),(2,'Cañari','marccaña@service.pe','Marcelo'),(3,'Carrera','giancarr@service.pe','Gianela'),(4,'Valentin','juanvale@service.pe','Juana'),(5,'Vilela','marivile@service.pe','Maria'),(6,'Vilca','valevilc@service.pe','Valeria'),(7,'Calixto','luiscali@service.pe','Luis'),(8,'Castro','jeancast@service.pe','Jean'),(9,'Gomez','eliagome@service.pe','Eliana'),(10,'Torres','eliotorr@service.pe','Elio');
/*!40000 ALTER TABLE `servicioaca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vwdocentefacu`
--

DROP TABLE IF EXISTS `vwdocentefacu`;
/*!50001 DROP VIEW IF EXISTS `vwdocentefacu`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwdocentefacu` AS SELECT 
 1 AS `ApeDoc`,
 1 AS `NombreDoc`,
 1 AS `DNIDoc`,
 1 AS `DesFac`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vwordencompralibro`
--

DROP TABLE IF EXISTS `vwordencompralibro`;
/*!50001 DROP VIEW IF EXISTS `vwordencompralibro`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwordencompralibro` AS SELECT 
 1 AS `costototal`,
 1 AS `estadocompra`,
 1 AS `cantidad`,
 1 AS `DesLibros`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `alumuni`
--

/*!50001 DROP VIEW IF EXISTS `alumuni`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alumuni` AS select `m`.`idMatricula` AS `idMatricula`,`m`.`idAlumnoMatri` AS `idAlumnoMatri`,`m`.`FechaMatricula` AS `FechaMatricula`,`p`.`DesPago` AS `DesPago`,`a`.`NombreAlum` AS `NombreAlum`,`a`.`ApeAlum` AS `ApeAlum`,`a`.`CorreoAlum` AS `CorreoAlum`,`a`.`DNIAlum` AS `DNIAlum` from ((`matricula` `m` join `metodopago` `p`) join `alumno` `a`) where ((`m`.`idMetodoPagoMatri` = `p`.`idMetodoPago`) and (`m`.`idAlumnoMatri` = `a`.`idAlumno`) and (`a`.`ApeAlum` like 'B%')) order by `m`.`idAlumnoMatri` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cursouni`
--

/*!50001 DROP VIEW IF EXISTS `cursouni`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cursouni` AS select `s`.`idSeccion` AS `idseccion`,`s`.`PeriodoSec` AS `PeriodoSec`,`c`.`Creditos` AS `Creditos`,`c`.`DesCurso` AS `DesCurso`,`a`.`EstadoAmb` AS `estadoAmb`,`a`.`DescAmb` AS `descamb` from ((`seccion` `s` join `cursos` `c`) join `ambiente` `a`) where ((`s`.`idCursosSec` = `c`.`idCursos`) and (`s`.`idAulaSec` = `a`.`idAula`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dispouni`
--

/*!50001 DROP VIEW IF EXISTS `dispouni`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dispouni` AS select `disponibilidad`.`idDisponibilidad` AS `idDisponibilidad`,`disponibilidad`.`idDocente` AS `idDocente`,`disponibilidad`.`idDia` AS `idDia`,`disponibilidad`.`idHora` AS `idHora`,`disponibilidad`.`PeriodoDisp` AS `PeriodoDisp`,`disponibilidad`.`EstadoDisp` AS `EstadoDisp` from `disponibilidad` where (`disponibilidad`.`idDocente` in (1,3,10)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `doceplan`
--

/*!50001 DROP VIEW IF EXISTS `doceplan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `doceplan` AS select `planestudio`.`idPlan` AS `idPlan`,`planestudio`.`idDocentePlan` AS `idDocentePlan`,`planestudio`.`idEvaluacionPlan` AS `idEvaluacionPlan`,`planestudio`.`idCursoPlan` AS `idCursoPlan`,`planestudio`.`FechaIni` AS `FechaIni`,`planestudio`.`FechaFin` AS `FechaFin`,`planestudio`.`DesPlan` AS `DesPlan`,`docente`.`idDocente` AS `idDocente`,`docente`.`CorreoDoc` AS `CorreoDoc`,`docente`.`FechaNac` AS `FechaNac`,`docente`.`ApeDoc` AS `ApeDoc`,`docente`.`NombreDoc` AS `NombreDoc`,`docente`.`DNIDoc` AS `DNIDoc`,`docente`.`idFacultad` AS `idFacultad` from (`planestudio` join `docente` on((`planestudio`.`idDocentePlan` = `docente`.`idDocente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `matriuni`
--

/*!50001 DROP VIEW IF EXISTS `matriuni`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `matriuni` AS select `m`.`idMatricula` AS `idMatricula`,`m`.`idAlumnoMatri` AS `idAlumnoMatri`,`m`.`FechaMatricula` AS `FechaMatricula`,`p`.`DesPago` AS `DesPago`,`a`.`NombreAlum` AS `NombreAlum`,`a`.`ApeAlum` AS `ApeAlum`,`a`.`CorreoAlum` AS `CorreoAlum`,`a`.`DNIAlum` AS `DNIAlum` from ((`matricula` `m` join `metodopago` `p`) join `alumno` `a`) where ((`m`.`idMetodoPagoMatri` = `p`.`idMetodoPago`) and (`m`.`idAlumnoMatri` = `a`.`idAlumno`) and (`p`.`DesPago` = 'efectivo')) order by `m`.`idAlumnoMatri` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `proveuni`
--

/*!50001 DROP VIEW IF EXISTS `proveuni`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `proveuni` AS select `ordencompra`.`idProveedorOrden` AS `idproveedororden`,`proveedor`.`NombrePro` AS `NombrePro`,`proveedor`.`ApellidoPro` AS `ApellidoPro`,`proveedor`.`CorreoPro` AS `CorreoPro`,`ordencompra`.`Cantidad` AS `cantidad_de_libros`,`ordencompra`.`CostoTotal` AS `costototal` from (`ordencompra` join `proveedor` on((`ordencompra`.`idProveedorOrden` = `proveedor`.`idProveedor`))) where (`ordencompra`.`Cantidad` > 3) order by `ordencompra`.`Cantidad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwdocentefacu`
--

/*!50001 DROP VIEW IF EXISTS `vwdocentefacu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwdocentefacu` AS select `docente`.`ApeDoc` AS `ApeDoc`,`docente`.`NombreDoc` AS `NombreDoc`,`docente`.`DNIDoc` AS `DNIDoc`,`facultad`.`DesFac` AS `DesFac` from (`docente` join `facultad` on((`docente`.`idFacultad` = `facultad`.`idFacultad`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwordencompralibro`
--

/*!50001 DROP VIEW IF EXISTS `vwordencompralibro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwordencompralibro` AS select `ordencompra`.`CostoTotal` AS `costototal`,`ordencompra`.`EstadoCompra` AS `estadocompra`,`ordencompra`.`Cantidad` AS `cantidad`,`libros`.`DesLibros` AS `DesLibros` from (`ordencompra` join `libros` on((`ordencompra`.`idLibroOrden` = `libros`.`idLibros`))) */;
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

-- Dump completed on 2022-04-03 17:04:43
