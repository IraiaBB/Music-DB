-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: music
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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `id_album` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `releases` year NOT NULL DEFAULT '2100',
  `id_record_co` int DEFAULT NULL,
  `id_main_artist` int NOT NULL,
  PRIMARY KEY (`id_album`),
  KEY `fk_record` (`id_record_co`),
  KEY `fk_singer` (`id_main_artist`),
  CONSTRAINT `fk_record` FOREIGN KEY (`id_record_co`) REFERENCES `record_company` (`id_record`),
  CONSTRAINT `fk_singer` FOREIGN KEY (`id_main_artist`) REFERENCES `artist` (`id_artist`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `id_artist` int NOT NULL AUTO_INCREMENT,
  `public_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_artist`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `band`
--

DROP TABLE IF EXISTS `band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `band` (
  `id_artist` int NOT NULL,
  `creation` year DEFAULT NULL,
  `separation` year DEFAULT NULL,
  PRIMARY KEY (`id_artist`),
  CONSTRAINT `fk_band_artist1` FOREIGN KEY (`id_artist`) REFERENCES `artist` (`id_artist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `belongs`
--

DROP TABLE IF EXISTS `belongs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `belongs` (
  `id_song` int NOT NULL,
  `id_style` int NOT NULL,
  PRIMARY KEY (`id_song`,`id_style`),
  KEY `fk_style_belong` (`id_style`),
  CONSTRAINT `fk_song_belong` FOREIGN KEY (`id_song`) REFERENCES `song` (`id_song`),
  CONSTRAINT `fk_style_belong` FOREIGN KEY (`id_style`) REFERENCES `music_style` (`id_style`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id_country` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_country`),
  UNIQUE KEY `country_name` (`country_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feature`
--

DROP TABLE IF EXISTS `feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature` (
  `id_song` int NOT NULL,
  `id_artist` int NOT NULL,
  PRIMARY KEY (`id_song`,`id_artist`),
  KEY `fk_artist_feature` (`id_artist`),
  CONSTRAINT `fk_artist_feature` FOREIGN KEY (`id_artist`) REFERENCES `artist` (`id_artist`),
  CONSTRAINT `fk_song_feature` FOREIGN KEY (`id_song`) REFERENCES `song` (`id_song`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `individual`
--

DROP TABLE IF EXISTS `individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `individual` (
  `id_artist` int NOT NULL,
  `real_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `death` date DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `id_country` int DEFAULT '12',
  PRIMARY KEY (`id_artist`),
  KEY `fk_individual_country_idx` (`id_country`),
  CONSTRAINT `fk_individual_artist1` FOREIGN KEY (`id_artist`) REFERENCES `artist` (`id_artist`),
  CONSTRAINT `fk_individual_country` FOREIGN KEY (`id_country`) REFERENCES `country` (`id_country`),
  CONSTRAINT `chk_sex` CHECK (((`sex` = _utf8mb4'man') or (`sex` = _utf8mb4'woman') or (`sex` = _utf8mb4'non-binary')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joined`
--

DROP TABLE IF EXISTS `joined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `joined` (
  `id_singer` int NOT NULL,
  `id_band` int NOT NULL,
  `incorporation` year DEFAULT NULL,
  `leaves` year DEFAULT NULL,
  PRIMARY KEY (`id_singer`,`id_band`),
  KEY `fk_band_joined` (`id_band`),
  CONSTRAINT `fk_band_joined` FOREIGN KEY (`id_band`) REFERENCES `band` (`id_artist`),
  CONSTRAINT `fk_singer_joined` FOREIGN KEY (`id_singer`) REFERENCES `individual` (`id_artist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `music_style`
--

DROP TABLE IF EXISTS `music_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_style` (
  `id_style` int NOT NULL AUTO_INCREMENT,
  `style_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_style`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `record_company`
--

DROP TABLE IF EXISTS `record_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record_company` (
  `id_record` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `founder` varchar(200) DEFAULT '',
  `establishment` smallint NOT NULL DEFAULT '0',
  `id_country` int NOT NULL DEFAULT '12',
  PRIMARY KEY (`id_record`),
  UNIQUE KEY `company_name` (`company_name`),
  KEY `fk_country_company` (`id_country`),
  CONSTRAINT `fk_country_company` FOREIGN KEY (`id_country`) REFERENCES `country` (`id_country`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `id_album` int NOT NULL,
  `id_song` int NOT NULL AUTO_INCREMENT,
  `length` varchar(10) DEFAULT '',
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id_song`,`id_album`),
  KEY `fk_album_song` (`id_album`),
  CONSTRAINT `fk_album_song` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-05 19:59:52
