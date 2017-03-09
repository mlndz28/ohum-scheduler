CREATE DATABASE  IF NOT EXISTS `ohumSchedule` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ohumSchedule`;
-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: ohumSchedule
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Temporary view structure for view `Availability`
--

DROP TABLE IF EXISTS `Availability`;
/*!50001 DROP VIEW IF EXISTS `Availability`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Availability` AS SELECT 
 1 AS `idMusician`,
 1 AS `Nombre`,
 1 AS `idDayXTime`,
 1 AS `Dia`,
 1 AS `Hora`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `DayXTime`
--

DROP TABLE IF EXISTS `DayXTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DayXTime` (
  `idDayXTime` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  PRIMARY KEY (`idDayXTime`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DayXTime`
--

LOCK TABLES `DayXTime` WRITE;
/*!40000 ALTER TABLE `DayXTime` DISABLE KEYS */;
INSERT INTO `DayXTime` VALUES (1,'Lunes','7:00'),(2,'Lunes','7:30'),(3,'Lunes','8:00'),(4,'Lunes','8:30'),(5,'Lunes','9:00'),(6,'Lunes','9:30'),(7,'Lunes','10:00'),(8,'Lunes','10:30'),(9,'Lunes','11:00'),(10,'Lunes','11:30'),(11,'Lunes','12:00'),(12,'Lunes','12:30'),(13,'Lunes','13:00'),(14,'Lunes','13:30'),(15,'Lunes','14:00'),(16,'Lunes','14:30'),(17,'Lunes','15:00'),(18,'Lunes','15:30'),(19,'Lunes','16:00'),(20,'Lunes','16:30'),(21,'Lunes','17:00'),(22,'Lunes','17:30'),(23,'Lunes','18:00'),(24,'Lunes','18:30'),(25,'Lunes','19:00'),(26,'Martes','7:00'),(27,'Martes','7:30'),(28,'Martes','8:00'),(29,'Martes','8:30'),(30,'Martes','9:00'),(31,'Martes','9:30'),(32,'Martes','10:00'),(33,'Martes','10:30'),(34,'Martes','11:00'),(35,'Martes','11:30'),(36,'Martes','12:00'),(37,'Martes','12:30'),(38,'Martes','13:00'),(39,'Martes','13:30'),(40,'Martes','14:00'),(41,'Martes','14:30'),(42,'Martes','15:00'),(43,'Martes','15:30'),(44,'Martes','16:00'),(45,'Martes','16:30'),(46,'Martes','17:00'),(47,'Martes','17:30'),(48,'Martes','18:00'),(49,'Martes','18:30'),(50,'Martes','19:00'),(51,'Miercoles','7:00'),(52,'Miercoles','7:30'),(53,'Miercoles','8:00'),(54,'Miercoles','8:30'),(55,'Miercoles','9:00'),(56,'Miercoles','9:30'),(57,'Miercoles','10:00'),(58,'Miercoles','10:30'),(59,'Miercoles','11:00'),(60,'Miercoles','11:30'),(61,'Miercoles','12:00'),(62,'Miercoles','12:30'),(63,'Miercoles','13:00'),(64,'Miercoles','13:30'),(65,'Miercoles','14:00'),(66,'Miercoles','14:30'),(67,'Miercoles','15:00'),(68,'Miercoles','15:30'),(69,'Miercoles','16:00'),(70,'Miercoles','16:30'),(71,'Miercoles','17:00'),(72,'Miercoles','17:30'),(73,'Miercoles','18:00'),(74,'Miercoles','18:30'),(75,'Miercoles','19:00'),(76,'Jueves','7:00'),(77,'Jueves','7:30'),(78,'Jueves','8:00'),(79,'Jueves','8:30'),(80,'Jueves','9:00'),(81,'Jueves','9:30'),(82,'Jueves','10:00'),(83,'Jueves','10:30'),(84,'Jueves','11:00'),(85,'Jueves','11:30'),(86,'Jueves','12:00'),(87,'Jueves','12:30'),(88,'Jueves','13:00'),(89,'Jueves','13:30'),(90,'Jueves','14:00'),(91,'Jueves','14:30'),(92,'Jueves','15:00'),(93,'Jueves','15:30'),(94,'Jueves','16:00'),(95,'Jueves','16:30'),(96,'Jueves','17:00'),(97,'Jueves','17:30'),(98,'Jueves','18:00'),(99,'Jueves','18:30'),(100,'Jueves','19:00'),(101,'Viernes','7:00'),(102,'Viernes','7:30'),(103,'Viernes','8:00'),(104,'Viernes','8:30'),(105,'Viernes','9:00'),(106,'Viernes','9:30'),(107,'Viernes','10:00'),(108,'Viernes','10:30'),(109,'Viernes','11:00'),(110,'Viernes','11:30'),(111,'Viernes','12:00'),(112,'Viernes','12:30'),(113,'Viernes','13:00'),(114,'Viernes','13:30'),(115,'Viernes','14:00'),(116,'Viernes','14:30'),(117,'Viernes','15:00'),(118,'Viernes','15:30'),(119,'Viernes','16:00'),(120,'Viernes','16:30'),(121,'Viernes','17:00'),(122,'Viernes','17:30'),(123,'Viernes','18:00'),(124,'Viernes','18:30'),(125,'Viernes','19:00');
/*!40000 ALTER TABLE `DayXTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Musician`
--

DROP TABLE IF EXISTS `Musician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Musician` (
  `idMusician` int(11) NOT NULL AUTO_INCREMENT COMMENT '	',
  `name` varchar(40) NOT NULL,
  `instrument` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMusician`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Musician`
--

LOCK TABLES `Musician` WRITE;
/*!40000 ALTER TABLE `Musician` DISABLE KEYS */;
INSERT INTO `Musician` VALUES (1,'Marcello','Trompeta'),(2,'Fabian','Cello'),(3,'Camila','Violin');
/*!40000 ALTER TABLE `Musician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TimeXMusician`
--

DROP TABLE IF EXISTS `TimeXMusician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TimeXMusician` (
  `idTimeXMusician` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `musician` int(11) NOT NULL,
  PRIMARY KEY (`idTimeXMusician`),
  KEY `fk_TimeXMusician_1_idx` (`musician`),
  KEY `fk_TimeXMusician_2_idx` (`time`),
  CONSTRAINT `fk_TimeXMusician_1` FOREIGN KEY (`musician`) REFERENCES `Musician` (`idMusician`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TimeXMusician_2` FOREIGN KEY (`time`) REFERENCES `DayXTime` (`idDayXTime`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TimeXMusician`
--

LOCK TABLES `TimeXMusician` WRITE;
/*!40000 ALTER TABLE `TimeXMusician` DISABLE KEYS */;
INSERT INTO `TimeXMusician` VALUES (2,120,1),(3,121,1),(4,122,1),(5,68,1),(6,69,1),(7,34,2),(8,35,2),(9,36,2),(10,75,3),(11,76,3);
/*!40000 ALTER TABLE `TimeXMusician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL COMMENT '	',
  `pwd` varchar(45) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ohumSchedule'
--
/*!50003 DROP FUNCTION IF EXISTS `getTimeId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getTimeId`(
	pDay VARCHAR(50),
    pTime VARCHAR(50)
) RETURNS int(11)
BEGIN
	declare result int;

	Select idDayXTime into result from DayXTime dt
    where dt.Day = pDay and dt.time = pTime;
RETURN result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `validUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `validUser`(
	pUser VARCHAR(50),
    pPwd VARCHAR(50)
) RETURNS int(11)
BEGIN
	declare correct int;

	select count(1) into correct from `user` u where pUser = u.`username` and pPwd = u.`pwd`;
RETURN correct;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkAvailability` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkAvailability`(
	IN pDay VARCHAR(50),
    IN pStartTime VARCHAR(50),
    IN pEndTime VARCHAR(50),
    IN pOnlyNames bit
)
BEGIN
	DECLARE startTime, endTime int;
    
    set startTime = `ohumSchedule`.getTimeId(pDay, pStartTime);
    set endTime = `ohumSchedule`.getTimeId(pDay, pEndTime);
    
    CASE  pOnlyNames
	   WHEN 1 THEN 
		   select Nombre from Availability
			 where dia = pDay 
			 and idDayXTime >= startTime
			 and idDayXTime < endTime
			 
			 group by Nombre;
	   else 
		   select * from Availability
			 where dia = pDay 
			 and idDayXTime >= startTime
			 and idDayXTime < endTime;
	END CASE;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `Availability`
--

/*!50001 DROP VIEW IF EXISTS `Availability`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Availability` AS select `m`.`idMusician` AS `idMusician`,`m`.`name` AS `Nombre`,`dt`.`idDayXTime` AS `idDayXTime`,`dt`.`day` AS `Dia`,`dt`.`time` AS `Hora` from ((`TimeXMusician` `tm` join `Musician` `m` on((`m`.`idMusician` = `tm`.`musician`))) join `DayXTime` `dt` on((`dt`.`idDayXTime` = `tm`.`time`))) */;
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

-- Dump completed on 2017-03-09  3:26:59
