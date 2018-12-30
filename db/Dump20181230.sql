-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	5.7.24-log

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
-- Table structure for table `favoritemusic`
--

DROP TABLE IF EXISTS `favoritemusic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favoritemusic` (
  `idfavoritemusic` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(245) DEFAULT NULL,
  `authorname` varchar(145) DEFAULT NULL,
  `avatar_url` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `idTrack` int(11) DEFAULT NULL,
  `idusers` int(11) NOT NULL,
  PRIMARY KEY (`idfavoritemusic`),
  KEY `idusers` (`idusers`),
  CONSTRAINT `favoritemusic_ibfk_1` FOREIGN KEY (`idusers`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoritemusic`
--

LOCK TABLES `favoritemusic` WRITE;
/*!40000 ALTER TABLE `favoritemusic` DISABLE KEYS */;
INSERT INTO `favoritemusic` VALUES (14,'Ghé Qua - Dick X Tofu X PC','DaRap RealestVietnamese','https://i1.sndcdn.com/avatars-000470058237-iurrje-large.jpg',366700526,1),(16,'1 Phút - Andiez','Andiez','https://i1.sndcdn.com/avatars-000455827428-jbso4t-large.jpg',339416501,1),(18,'Binz,Andree,Andiez- Kissing On My Tatts','Binz Da Poet','https://i1.sndcdn.com/avatars-000207099477-q5ydaq-large.jpg',179415869,1),(19,'Daniel Kim - Pop Danthology 2012 (Mashup)','Dj Andreecito','https://i1.sndcdn.com/avatars-000038766632-wb790n-large.jpg',71046408,1);
/*!40000 ALTER TABLE `favoritemusic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mymusic`
--

DROP TABLE IF EXISTS `mymusic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mymusic` (
  `idmusic` int(11) NOT NULL AUTO_INCREMENT,
  `musicname` varchar(145) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `url` varchar(145) DEFAULT NULL,
  `content` varchar(1045) DEFAULT NULL,
  `extendfile` varchar(45) DEFAULT NULL,
  `iduser` int(45) NOT NULL,
  PRIMARY KEY (`idmusic`,`iduser`),
  KEY `mymusic_ibfk_1` (`iduser`),
  CONSTRAINT `mymusic_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mymusic`
--

LOCK TABLES `mymusic` WRITE;
/*!40000 ALTER TABLE `mymusic` DISABLE KEYS */;
INSERT INTO `mymusic` VALUES (37,'TinhNhuLaBayXa-QuangVinh-2430553 (1).mp3','Unknow','C:\\Users\\lapi\\Downloads\\apache-tomcat-8.0.53\\tmpfiles\\TinhNhuLaBayXa-QuangVinh-2430553 (1).mp3','no lyric','mp3',1),(38,'Facebook.mp4','Unknow','C:\\Users\\lapi\\Downloads\\apache-tomcat-8.0.53\\tmpfiles\\Facebook.mp4','ddd','mp3',1),(39,'Facebook.mp4','Unknow','C:\\Users\\lapi\\Downloads\\apache-tomcat-8.0.53\\tmpfiles\\Facebook.mp4','hello </br> world','mp3',1);
/*!40000 ALTER TABLE `mymusic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `idusers` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusers`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'builam97','123'),(2,'lam1','1234'),(28,'',''),(29,'lambui123','123'),(30,'lambui1232','123'),(31,'123','123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-30 22:54:21
