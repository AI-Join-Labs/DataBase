-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: Gestion_Hospitales
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.23.10.2

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
-- Table structure for table `Citas`
--

DROP TABLE IF EXISTS `Citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Citas` (
  `ID_Cita` int NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `ID_Paciente` int DEFAULT NULL,
  `ID_Medico` int DEFAULT NULL,
  PRIMARY KEY (`ID_Cita`),
  KEY `ID_Paciente` (`ID_Paciente`),
  KEY `ID_Medico` (`ID_Medico`),
  CONSTRAINT `Citas_ibfk_1` FOREIGN KEY (`ID_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Citas_ibfk_2` FOREIGN KEY (`ID_Medico`) REFERENCES `Medicos` (`ID_Medico`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Citas`
--

LOCK TABLES `Citas` WRITE;
/*!40000 ALTER TABLE `Citas` DISABLE KEYS */;
INSERT INTO `Citas` VALUES (102,'2024-09-01','09:00:00',1,1),(103,'2024-09-01','10:00:00',2,1),(104,'2024-09-01','12:00:00',4,2),(105,'2024-09-02','09:00:00',5,2),(106,'2024-09-02','10:30:00',6,2),(107,'2024-09-02','11:30:00',7,3),(108,'2024-09-03','09:15:00',8,3),(109,'2024-09-03','10:00:00',9,4),(110,'2024-09-03','11:00:00',10,4),(111,'2024-09-04','09:30:00',11,5),(112,'2024-09-04','10:15:00',12,5),(113,'2024-09-04','11:30:00',13,2),(114,'2024-09-05','09:00:00',14,6),(115,'2024-09-05','10:00:00',15,7),(116,'2024-09-05','11:00:00',16,8),(117,'2024-09-06','09:30:00',17,9),(118,'2024-09-06','10:30:00',18,32),(119,'2024-09-06','11:30:00',19,10),(120,'2024-09-07','09:00:00',20,1),(121,'2024-09-07','10:00:00',21,2),(122,'2024-09-07','11:00:00',22,3),(123,'2024-09-08','09:30:00',23,4),(124,'2024-09-08','10:30:00',24,4),(125,'2024-09-08','11:30:00',25,5),(126,'2024-09-09','09:00:00',26,6),(127,'2024-09-09','10:00:00',27,6),(128,'2024-09-09','11:00:00',28,7),(129,'2024-09-10','09:30:00',29,8),(130,'2024-09-10','10:30:00',30,8),(131,'2024-09-10','11:30:00',31,1),(132,'2024-09-11','09:00:00',32,2),(133,'2024-09-11','10:00:00',33,3),(134,'2024-09-11','11:00:00',34,4),(135,'2024-09-12','09:30:00',35,5),(136,'2024-09-12','10:30:00',36,9),(137,'2024-09-12','11:30:00',37,10),(138,'2024-09-13','09:00:00',38,10),(139,'2024-09-13','10:00:00',39,1),(140,'2024-09-13','11:00:00',40,6),(141,'2024-09-14','09:30:00',41,7),(142,'2024-09-14','10:30:00',42,8),(143,'2024-09-14','11:30:00',43,2),(144,'2024-09-15','09:00:00',44,44),(145,'2024-09-15','10:00:00',45,5),(146,'2024-09-15','11:00:00',46,6),(147,'2024-09-16','09:30:00',47,10);
/*!40000 ALTER TABLE `Citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Historial_Medico`
--

DROP TABLE IF EXISTS `Historial_Medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Historial_Medico` (
  `ID_Historial` int NOT NULL AUTO_INCREMENT,
  `ID_Paciente` int DEFAULT NULL,
  `Alergias` varchar(50) DEFAULT NULL,
  `Enfermedades_Previas` varchar(50) DEFAULT NULL,
  `Notas` tinytext,
  PRIMARY KEY (`ID_Historial`),
  KEY `ID_Paciente` (`ID_Paciente`),
  CONSTRAINT `Historial_Medico_ibfk_1` FOREIGN KEY (`ID_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Historial_Medico`
--

LOCK TABLES `Historial_Medico` WRITE;
/*!40000 ALTER TABLE `Historial_Medico` DISABLE KEYS */;
INSERT INTO `Historial_Medico` VALUES (51,1,'Ninguna','Asma','Controlado con inhalador'),(52,2,'Polen','Ninguna','Revisar cada 6 meses'),(53,3,'Lactosa','Ninguna','Dietas especiales recomendadas'),(54,4,'Ninguna','Diabetes tipo 2','Control con dieta y ejercicio'),(55,5,'Penicilina','Hipertension','Controlado con medicamentos'),(56,6,'Ninguna','Ninguna','Salud general buena'),(57,7,'Gluten','Ninguna','Evitar productos que contengan gluten'),(58,8,'Ninguna','Ninguna','Sin antecedentes relevantes'),(59,9,'Ninguna','Asma','Uso ocasional de inhalador'),(60,10,'Ninguna','Ninguna','Sin problemas de salud conocidos'),(61,11,'Ninguna','Ninguna','Chequeos regulares recomendados'),(62,12,'Mariscos','Ninguna','Alergia leve'),(63,13,'Ninguna','Artritis','Control regular'),(64,14,'Cacahuetes','Ninguna','Reacción anafiláctica previa'),(65,15,'Ninguna','Ninguna','Vacunas al día'),(66,16,'Ninguna','Enfermedad cardíaca','Seguimiento trimestral necesario'),(67,17,'Ninguna','Ninguna','Sin historial familiar de enfermedades'),(68,18,'Ninguna','Ninguna','Mantener un estilo de vida saludable'),(69,19,'Lactosa','Ninguna','Tomar lactosa con precaución'),(70,20,'Ninguna','Ninguna','Sin antecedentes médicos relevantes'),(71,21,'Ninguna','Hipertension','Controlado con medicamentos'),(72,22,'Ninguna','Ninguna','Salud general buena'),(73,23,'Polen','Ninguna','Reacción estacional'),(74,24,'Ninguna','Ninguna','Revisiones anuales recomendadas'),(75,25,'Ninguna','Colesterol alto','Controlar la dieta'),(76,26,'Ninguna','Ninguna','Sin alergias conocidas'),(77,27,'Cacahuetes','Ninguna','Alergia confirmada'),(78,28,'Ninguna','Diabetes tipo 1','Control diario de glucosa'),(79,29,'Ninguna','Ninguna','Mantener una buena hidratación'),(80,30,'Ninguna','Ninguna','Sin problemas de salud conocidos'),(81,31,'Ninguna','Ninguna','Chequeos regulares recomendados'),(82,32,'Ninguna','Ninguna','Vacunas al día'),(83,33,'Mariscos','Ninguna','Alergia leve'),(84,34,'Ninguna','Ninguna','Seguimiento anual recomendado'),(85,35,'Polen','Ninguna','Revisión cada primavera'),(86,36,'Ninguna','Artritis','Control regular'),(87,37,'Ninguna','Ninguna','Salud general buena'),(88,38,'Cacahuetes','Ninguna','Reacción anafiláctica previa'),(89,39,'Ninguna','Ninguna','Mantener un estilo de vida saludable'),(90,40,'Ninguna','Enfermedad cardíaca','Revisar cada 6 meses'),(91,41,'Ninguna','Ninguna','Sin antecedentes familiares de enfermedades'),(92,42,'Ninguna','Ninguna','Chequeos regulares recomendados'),(93,43,'Ninguna','Hipertension','Controlado con dieta'),(94,44,'Lactosa','Ninguna','Tomar con precaución'),(95,45,'Ninguna','Ninguna','Sin problemas de salud conocidos'),(96,46,'Ninguna','Ninguna','Revisiones anuales recomendadas'),(97,47,'Mariscos','Ninguna','Alergia confirmada');
/*!40000 ALTER TABLE `Historial_Medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medicamentos`
--

DROP TABLE IF EXISTS `Medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medicamentos` (
  `ID_Medicamento` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Dosis` varchar(10) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Medicamento`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medicamentos`
--

LOCK TABLES `Medicamentos` WRITE;
/*!40000 ALTER TABLE `Medicamentos` DISABLE KEYS */;
INSERT INTO `Medicamentos` VALUES (1,'Paracetamol','500 mg','Analgesico'),(2,'Ibuprofeno','400 mg','Antiinflamatorio'),(3,'Amoxicilina','250 mg','Antibiotico'),(4,'Loratadina','10 mg','Antihistaminico'),(5,'Metformina','850 mg','Antidiabetico'),(6,'Amlodipino','5 mg','Antihipertensivo'),(7,'Simvastatina','20 mg','Hipolipemiante'),(8,'Omeprazol','20 mg','Inhibidor de la bomba de protones'),(9,'Clonazepam','0.5 mg','Ansiolitico'),(10,'Sertralina','50 mg','Antidepresivo'),(11,'Cetirizina','10 mg','Antihistaminico'),(12,'Acetaminofen','500 mg','Analgesico'),(13,'Hydroxizina','25 mg','Ansiolitico'),(14,'Salbutamol','100 mcg','Broncodilatador'),(15,'Atorvastatina','40 mg','Hipolipemiante'),(16,'Bupropion','150 mg','Antidepresivo'),(17,'Losartan','50 mg','Antihipertensivo'),(18,'Dexametasona','4 mg','Corticosteroide'),(19,'Fluoxetine','20 mg','Antidepresivo'),(20,'Metoprolol','50 mg','Antihipertensivo'),(21,'Esomeprazol','20 mg','Inhibidor de la bomba de protones'),(22,'Propranolol','40 mg','Antihipertensivo'),(23,'Venlafaxina','75 mg','Antidepresivo'),(24,'Montelukast','10 mg','Antiinflamatorio'),(25,'Ranitidina','150 mg','Antihistaminico'),(26,'Furosemida','40 mg','Diuretico'),(27,'Warfarina','2 mg','Anticoagulante'),(28,'Gliclazida','80 mg','Antidiabetico'),(29,'Ciprofloxacino','500 mg','Antibiotico'),(30,'Naproxeno','250 mg','Antiinflamatorio'),(31,'Lisinopril','20 mg','Antihipertensivo'),(32,'Rifampicina','300 mg','Antibiotico'),(33,'Citalopram','20 mg','Antidepresivo'),(34,'Atenolol','50 mg','Antihipertensivo'),(35,'Duloxetina','30 mg','Antidepresivo'),(36,'Nitroglicerina','0.4 mg','Vasodilatador'),(37,'Spironolactona','25 mg','Diuretico'),(38,'Tamsulosina','0.4 mg','Antagonista alfa'),(39,'Levotiroxina','100 mcg','Hormona tiroidea'),(40,'Lansoprazol','30 mg','Inhibidor de la bomba de protones'),(41,'Clopidogrel','75 mg','Anticoagulante'),(42,'Mupirocina','2%','Antibacteriano'),(43,'Sildenafil','50 mg','Vasodilatador'),(44,'Doxazosina','4 mg','Antagonista alfa'),(45,'Escitalopram','10 mg','Antidepresivo'),(46,'Paroxetina','20 mg','Antidepresivo'),(47,'Insulina','100 UI/ml','Antidiabetico'),(48,'Rizatriptán','10 mg','Antimigrañoso'),(49,'Betametasona','0.1%','Corticosteroide'),(50,'Ondansetron','8 mg','Antiemetico'),(51,'Loperamida','2 mg','Antidiarreico'),(52,'Tiroxina','100 mcg','Hormona tiroidea');
/*!40000 ALTER TABLE `Medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medicos`
--

DROP TABLE IF EXISTS `Medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medicos` (
  `ID_Medico` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Especialidad` varchar(50) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_Medico`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medicos`
--

LOCK TABLES `Medicos` WRITE;
/*!40000 ALTER TABLE `Medicos` DISABLE KEYS */;
INSERT INTO `Medicos` VALUES (1,'Carlos','Martinez','Cardiología','5551234567'),(2,'Elena','Fernandez','Pediatría','5552345678'),(3,'Luis','Ramirez','Dermatología','5553456789'),(4,'Sofía','Gómez','Oftalmología','5554567890'),(5,'Javier','Hernandez','Neurología','5555678901'),(6,'Ana','Sanchez','Endocrinología','5556789012'),(7,'Fernando','Pérez','Ginecología','5557890123'),(8,'Natalia','López','Psiquiatría','5558901234'),(9,'Diego','Torres','Traumatología','5559012345'),(10,'Valeria','Mendoza','Oncología','5550123456'),(11,'Andrés','Rojas','Urología','5551237890'),(12,'Claudia','Castillo','Reumatología','5552348901'),(13,'Gabriel','Cruz','Pediatría','5553459012'),(14,'Mariana','García','Neumología','5554560123'),(15,'Sebastián','Vargas','Cardiología','5555671234'),(16,'Gabriela','Bravo','Ginecología','5556782345'),(17,'Oscar','Morales','Endocrinología','5557893456'),(18,'Lucía','Cordero','Psiquiatría','5558904567'),(19,'Manuel','Silva','Oftalmología','5559015678'),(20,'Paola','Alvarez','Dermatología','5550126789'),(21,'Arturo','Núñez','Oncología','5551237891'),(22,'Carmen','Díaz','Traumatología','5552348902'),(23,'Victor','Peña','Neumología','5553459013'),(24,'Lina','Mora','Reumatología','5554560124'),(25,'Julio','Escobar','Cardiología','5555671235'),(26,'Emilia','Paredes','Pediatría','5556782346'),(27,'Hugo','Serrano','Urología','5557893457'),(28,'Fabiola','Jaramillo','Ginecología','5558904568'),(29,'Nicolas','Palacios','Dermatología','5559015679'),(30,'Cristian','Rivas','Neurología','5550126780'),(31,'Alicia','Cervantes','Oncología','5551237892'),(32,'Santiago','Rondón','Traumatología','5552348903'),(33,'Nadia','Cáceres','Endocrinología','5553459014'),(34,'Fernando','Bermudez','Neumología','5554560125'),(35,'Valentina','Salas','Reumatología','5555671236'),(36,'Salvador','Rojas','Psiquiatría','5556782347'),(37,'Melisa','Ponce','Oftalmología','5557893458'),(38,'Diego','Guzmán','Cardiología','5558904569'),(39,'Cecilia','Vazquez','Pediatría','5559015670'),(40,'Raúl','Hernandez','Ginecología','5550126781'),(41,'Jazmín','Rivas','Dermatología','5551237893'),(42,'Gabriel','Moreno','Neurología','5552348904'),(43,'Fernanda','Aldana','Oncología','5553459015'),(44,'Leonardo','Castillo','Traumatología','5554560126'),(45,'Alejandro','Mendoza','Endocrinología','5555671237'),(46,'Marisol','Valdés','Urología','5556782348'),(47,'Milagros','Martinez','Psiquiatría','5557893459'),(48,'Isabella','Pérez','Neumología','5558904560');
/*!40000 ALTER TABLE `Medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pacientes`
--

DROP TABLE IF EXISTS `Pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pacientes` (
  `ID_Paciente` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Genero` enum('F','M') NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_Paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pacientes`
--

LOCK TABLES `Pacientes` WRITE;
/*!40000 ALTER TABLE `Pacientes` DISABLE KEYS */;
INSERT INTO `Pacientes` VALUES (1,'Juan','Perez','1985-06-15','M','5551234567'),(2,'Maria','Gomez','1990-02-20','F','5559876543'),(3,'Ana','Sanchez','2000-11-30','F','5551112233'),(4,'Luis','Martinez','1978-05-12','M','5552223344'),(5,'Carmen','Fernandez','1982-07-24','F','5553334455'),(6,'Pedro','Garcia','1995-09-18','M','5554445566'),(7,'Sofia','Rodriguez','1988-01-01','F','5555556677'),(8,'Javier','Hernandez','1993-03-15','M','5556667788'),(9,'Lucia','Lopez','2001-10-10','F','5557778899'),(10,'Diego','Torres','1980-12-25','M','5558889900'),(11,'Valeria','Mendoza','1992-04-30','F','5559991001'),(12,'Andres','Rojas','1975-08-19','M','5551011121'),(13,'Claudia','Castillo','1986-06-06','F','5551213141'),(14,'Gabriel','Ramirez','1994-02-14','M','5551314151'),(15,'Natalia','Vargas','1989-11-29','F','5551416161'),(16,'Raul','Morales','1981-03-11','M','5551517171'),(17,'Mariana','Diaz','1996-07-04','F','5551618181'),(18,'Fernando','Silva','1983-09-07','M','5551719191'),(19,'Isabella','Cordero','2002-12-12','F','5551819202'),(20,'Manuel','Ponce','1979-05-21','M','5551920212'),(21,'Paola','Salas','1991-10-18','F','5552021222'),(22,'Sebastian','Paniagua','1987-01-30','M','5552122232'),(23,'Gabriela','Bravo','1993-04-22','F','5552223242'),(24,'Alejandro','Cruz','1984-11-05','M','5552324252'),(25,'Vanessa','Alvarez','1990-02-09','F','5552425262'),(26,'Arturo','Maldonado','1976-07-15','M','5552526272'),(27,'Luciana','Ochoa','1988-12-19','F','5552627282'),(28,'Oscar','Caceres','1994-08-08','M','5552728292'),(29,'Samantha','Paredes','1982-03-21','F','5552829302'),(30,'Julio','Escobar','1974-09-17','M','5552929313'),(31,'Emilia','Gutierrez','1995-05-03','F','5553031323'),(32,'Victor','Serrano','1980-01-22','M','5553132333'),(33,'Fernanda','Rosales','1997-06-11','F','5553234344'),(34,'Cristian','Pizarro','1981-10-16','M','5553345455'),(35,'Nadia','Valdes','1992-04-01','F','5553456566'),(36,'Hugo','Rivas','1977-03-03','M','5553567677'),(37,'Lina','Mora','1989-07-28','F','5553678788'),(38,'Salvador','Nunez','1994-09-23','M','5553789899'),(39,'Milagros','Villanueva','1983-11-11','F','5553899900'),(40,'Diego','Cervantes','1978-05-15','M','5554001010'),(41,'Alicia','Rondon','1990-06-18','F','5554112121'),(42,'Nicolas','Pena','1986-03-07','M','5554223232'),(43,'Karina','Palacios','1995-12-12','F','5554334343'),(44,'Gustavo','Cruz','1980-08-20','M','5554445454'),(45,'Fabiola','Maldonado','1993-09-25','F','5554556565'),(46,'Santiago','Martinez','1974-11-13','M','5554667676'),(47,'Cecilia','Jaramillo','1991-04-30','F','5554778787');
/*!40000 ALTER TABLE `Pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tratamientos`
--

DROP TABLE IF EXISTS `Tratamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tratamientos` (
  `ID_Tratamiento` int NOT NULL AUTO_INCREMENT,
  `Descripcion` tinytext NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `ID_Paciente` int DEFAULT NULL,
  PRIMARY KEY (`ID_Tratamiento`),
  KEY `ID_Paciente` (`ID_Paciente`),
  CONSTRAINT `Tratamientos_ibfk_1` FOREIGN KEY (`ID_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tratamientos`
--

LOCK TABLES `Tratamientos` WRITE;
/*!40000 ALTER TABLE `Tratamientos` DISABLE KEYS */;
INSERT INTO `Tratamientos` VALUES (101,'Consulta general',50.00,1),(102,'Revisión de salud',75.00,2),(103,'Examen de sangre',30.00,3),(104,'Radiografía',100.00,4),(105,'Consulta dermatológica',60.00,5),(106,'Consulta ginecológica',80.00,6),(107,'Control de diabetes',55.00,7),(108,'Examen de colesterol',40.00,8),(109,'Consulta pediátrica',65.00,9),(110,'Tratamiento de asma',90.00,10),(111,'Vacunación',25.00,11),(112,'Consulta de nutrición',50.00,12),(113,'Chequeo cardiovascular',70.00,13),(114,'Tratamiento de alergias',65.00,14),(115,'Consulta de salud mental',75.00,15),(116,'Control de hipertensión',60.00,16),(117,'Consulta de endocrinología',85.00,17),(118,'Tratamiento de artritis',95.00,18),(119,'Consulta de fisioterapia',70.00,19),(120,'Control prenatal',150.00,20),(121,'Consulta de oncología',120.00,21),(122,'Tratamiento de heridas',40.00,22),(123,'Consulta de urgencias',100.00,23),(124,'Rehabilitación física',200.00,24),(125,'Consulta geriátrica',80.00,25),(126,'Examen de orina',25.00,26),(127,'Consulta de salud sexual',70.00,27),(128,'Tratamiento de infecciones',50.00,28),(129,'Consulta de neurología',90.00,29),(130,'Control de obesidad',65.00,30),(131,'Consulta de ortopedia',75.00,31),(132,'Tratamiento para dejar de fumar',100.00,32),(133,'Consulta de rehabilitación',85.00,33),(134,'Tratamiento de migrañas',55.00,34),(135,'Chequeo de la vista',45.00,35),(136,'Consulta de medicina interna',75.00,36),(137,'Examen de la piel',50.00,37),(138,'Tratamiento de insomnio',60.00,38),(139,'Consulta de salud infantil',70.00,39),(140,'Control de la fertilidad',150.00,40),(141,'Consulta de dermatología pediátrica',65.00,41),(142,'Tratamiento de osteoporosis',80.00,42),(143,'Consulta de medicina deportiva',90.00,43),(144,'Chequeo de salud mental',75.00,44),(145,'Consulta de medicina familiar',55.00,45),(146,'Tratamiento de enfermedades respiratorias',70.00,46),(147,'Consulta de cardiología pediátrica',100.00,47);
/*!40000 ALTER TABLE `Tratamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tratamientos_Medicamentos`
--

DROP TABLE IF EXISTS `Tratamientos_Medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tratamientos_Medicamentos` (
  `ID_Tratamiento` int NOT NULL,
  `ID_Medicamento` int NOT NULL,
  PRIMARY KEY (`ID_Tratamiento`,`ID_Medicamento`),
  KEY `ID_Medicamento` (`ID_Medicamento`),
  CONSTRAINT `Tratamientos_Medicamentos_ibfk_1` FOREIGN KEY (`ID_Tratamiento`) REFERENCES `Tratamientos` (`ID_Tratamiento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Tratamientos_Medicamentos_ibfk_2` FOREIGN KEY (`ID_Medicamento`) REFERENCES `Medicamentos` (`ID_Medicamento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tratamientos_Medicamentos`
--

LOCK TABLES `Tratamientos_Medicamentos` WRITE;
/*!40000 ALTER TABLE `Tratamientos_Medicamentos` DISABLE KEYS */;
INSERT INTO `Tratamientos_Medicamentos` VALUES (101,1),(101,2),(102,3),(102,4),(103,5),(103,6),(104,7),(105,8),(105,9),(106,10),(106,11),(107,12),(108,13),(109,14),(109,15),(110,16),(111,17),(111,18),(112,19),(113,20),(114,21),(114,22),(115,23),(115,24),(116,25),(117,26),(118,27),(119,28),(120,29),(121,30),(122,31),(123,32),(124,33),(125,34),(126,35),(127,36),(128,37),(129,38),(130,39),(131,40),(132,41),(133,42),(134,43),(135,44),(136,45),(137,46),(138,47),(139,48),(140,49),(141,50),(142,51),(143,52);
/*!40000 ALTER TABLE `Tratamientos_Medicamentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-18 11:57:08
