-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 1lab
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `group_id` varchar(10) NOT NULL,
  `group_name` varchar(45) DEFAULT NULL,
  `students_number` int DEFAULT NULL,
  `speciality` varchar(45) DEFAULT NULL,
  `second_name_of_boss` varchar(45) DEFAULT NULL,
  `studentscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('10Г','Б-4',21,'Бухучет','Зязюткин',NULL),('12Г','М-6',16,'Международная экономика','Трубин',NULL),('17Г','С-14',29,'СД','Амросов',NULL),('3Г','АС-8',20,'АСОИ','Чижов',NULL),('4Г','АС-9',24,'АСОИ','Балабанов',NULL),('7Г','Э-15',22,'ЭВМ','Сеткин',NULL),('8Г','Э-12',18,'ЭВМ','Иванова',NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subject_id` varchar(10) NOT NULL,
  `subject_name` varchar(45) DEFAULT NULL,
  `hours` int DEFAULT NULL,
  `speciality` varchar(45) DEFAULT NULL,
  `semestr` int DEFAULT NULL,
  `subjectscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`subject_id`),
  UNIQUE KEY `subject_id_UNIQUE` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES ('12П','Мини эвм',36,'ЭВМ',1,NULL),('14П','пэвм',72,'ЭВМ',2,NULL),('17П','субдпк',48,'АСОИ',4,NULL),('18П','вксс',52,'АСОИ',6,NULL),('22П','аудит',24,'Бухучета',3,NULL),('34П','физика',30,'СД',6,NULL);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_id` varchar(10) NOT NULL,
  `second_name` varchar(45) DEFAULT NULL,
  `degree` varchar(45) DEFAULT NULL,
  `cafedra` varchar(45) DEFAULT NULL,
  `speciality` varchar(45) DEFAULT NULL,
  `tele_num` int DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('110Л','Петров','Ассистент','Экономики','Международная экономика',324),('221Л','Фролов','Доцент','ЭВМ','АСОИ, ЭВМ',487),('222Л','Костин','Доцент','ЭВМ','ЭВМ',543),('225Л','Бойко','Профессор','АСУ','АСОИ, ЭВМ',112),('430Л','Глазов','Ассистент','ТФ','СД',421);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_subjects_in_groups`
--

DROP TABLE IF EXISTS `teachers_subjects_in_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers_subjects_in_groups` (
  `group_id` varchar(10) DEFAULT NULL,
  `subject_id` varchar(45) DEFAULT NULL,
  `teacher_id` varchar(45) DEFAULT NULL,
  `room_number` int DEFAULT NULL,
  `record_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`record_id`),
  UNIQUE KEY `record_id_UNIQUE` (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_subjects_in_groups`
--

LOCK TABLES `teachers_subjects_in_groups` WRITE;
/*!40000 ALTER TABLE `teachers_subjects_in_groups` DISABLE KEYS */;
INSERT INTO `teachers_subjects_in_groups` VALUES ('8Г','12П','222Л',112,1),('8Г','14П','221Л',220,2),('8Г','17П','222Л',112,3),('7Г','14П','221Л',220,4),('7Г','17П','222Л',241,5),('7Г','18П','225Л',210,6),('4Г','12П','222Л',112,7),('4Г','18П','225Л',210,8),('3Г','12П','222Л',112,9),('3Г','17П','221Л',241,10),('3Г','18П','225Л',210,11),('17Г','12П','222Л',112,12),('17Г','22П','110Л',220,13),('17Г','34П','430Л',118,14),('12Г','12П','222Л',112,15),('12Г','22П','110Л',210,16),('10Г','12П','222Л',210,17),('10Г','22П','110Л',210,18);
/*!40000 ALTER TABLE `teachers_subjects_in_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-20 22:57:35
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lab1_part2
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `dealers`
--

DROP TABLE IF EXISTS `dealers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealers` (
  `dealer_id` varchar(45) NOT NULL,
  `dealer_name` varchar(45) DEFAULT NULL,
  `dealer_status` int DEFAULT NULL,
  `dealer_sity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dealer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealers`
--

LOCK TABLES `dealers` WRITE;
/*!40000 ALTER TABLE `dealers` DISABLE KEYS */;
INSERT INTO `dealers` VALUES ('П1','Петров',20,'Москва'),('П2','Синицин',10,'Таллинн'),('П3','Федоров',30,'Таллинн'),('П4','Чаянов',20,'Минск'),('П5','Крюков',30,'Киев');
/*!40000 ALTER TABLE `dealers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_number`
--

DROP TABLE IF EXISTS `item_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_number` (
  `item_number_id` int NOT NULL AUTO_INCREMENT,
  `dealer_id` varchar(45) DEFAULT NULL,
  `items_id` varchar(45) DEFAULT NULL,
  `projects_id` varchar(45) DEFAULT NULL,
  `item_count` int DEFAULT NULL,
  PRIMARY KEY (`item_number_id`),
  UNIQUE KEY `item_number_id_UNIQUE` (`item_number_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_number`
--

LOCK TABLES `item_number` WRITE;
/*!40000 ALTER TABLE `item_number` DISABLE KEYS */;
INSERT INTO `item_number` VALUES (1,'П1','Д1','ПР1',200),(2,'П1','Д1','ПР2',700),(3,'П2','Д3','ПР1',400),(4,'П2','Д2','ПР2',200),(5,'П2','Д3','ПР3',200),(6,'П2','Д3','ПР4',500),(7,'П2','Д3','ПР5',600),(8,'П2','Д3','ПР6',400),(9,'П2','Д3','ПР7',800),(10,'П2','Д5','ПР2',100),(11,'П3','Д3','ПР1',200),(12,'П3','Д4','ПР2',500),(13,'П4','Д6','ПР3',300),(14,'П4','Д6','ПР7',300),(15,'П5','Д2','ПР2',200),(16,'П5','Д2','ПР4',100),(17,'П5','Д5','ПР5',500),(18,'П5','Д5','ПР7',100),(19,'П5','Д6','ПР2',200),(20,'П5','Д1','ПР2',100),(21,'П5','Д3','ПР4',200),(22,'П5','Д4','ПР4',800),(23,'П5','Д5','ПР4',400),(24,'П5','Д6','ПР4',500);
/*!40000 ALTER TABLE `item_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `items_id` varchar(45) NOT NULL,
  `items_name` varchar(45) DEFAULT NULL,
  `item_color` varchar(45) DEFAULT NULL,
  `item_size` int DEFAULT NULL,
  `item_city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('Д1','Болт','Красный',12,'Москва'),('Д2','Гайка','Зеленая',17,'Минск'),('Д3','Диск','Черный',17,'Вильнюс'),('Д4','Диск','Черный',14,'Москва'),('Д5','Корпус','Красный',12,'Минск'),('Д6','Крышки','Красный',19,'Москва');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `project_id` varchar(45) NOT NULL,
  `project_name` varchar(45) DEFAULT NULL,
  `project_city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  UNIQUE KEY `project_id_UNIQUE` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES ('ПР1','ИПР1','Минск'),('ПР2','ИПР2','Таллинн'),('ПР3','ИПР3','Псков'),('ПР4','ИПР4','Псков'),('ПР5','ИПР4','Москва'),('ПР6','ИПР6','Саратов'),('ПР7','ИПР7','Москва');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-20 22:57:36
