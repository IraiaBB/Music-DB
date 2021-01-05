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
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'A day at the races',1976,1,20),(2,'News of the world',1977,1,20),(3,'Whitney Houston',1985,2,1),(4,'Whitney',1987,2,1),(5,'Thriller',1982,3,2),(6,'Bad',1987,3,2),(7,'Elvis Presley',1956,4,18),(8,'Elvis',1956,4,18),(9,'Nevermind',1991,5,23),(10,'In Utero',1993,5,23),(11,'1000 forms of fear',2014,4,4),(12,'This is acting',2016,4,4),(13,'Good girl gone bad',2007,6,5),(14,'Loud',2010,6,5),(15,'Talk that talk',2011,6,5),(16,'Servicio de lavandería / Laundry service',2001,3,6),(17,'Fijón oral vol. 1',2005,3,6),(18,'Loba / She wolf',2009,3,6),(19,'Sale el sol',2010,3,6),(20,'Christina Aguilera',1999,4,8),(21,'Stripped',2002,4,8),(22,'Back to basics',2006,4,8),(23,'...Baby one more time',1999,7,9),(24,'Oops!... I did it again',2000,7,9),(25,'Britney',2002,7,9),(26,'In the zone',2003,7,9),(27,'Más',1997,8,10),(28,'El alma al aire',2000,8,10),(29,'El tren de los momentos',2006,8,10),(30,'Paraíso express',2009,8,10),(31,'Corazón latino',2002,9,11),(32,'Sin mirar atrás',2009,9,11),(33,'Romanza',1997,10,12),(34,'The colour of my love',1993,11,13),(35,'Falling into you',1996,11,13),(36,'Let\'s talk about love',1997,11,13),(37,'The very best of Edith Piaf',2002,14,14),(38,'I never loved a man the way I love you',1967,12,15),(39,'Aretha now',1968,12,15);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Whitney Houston'),(2,'Michael Jackson'),(3,'Kurt Cobain'),(4,'Sia'),(5,'Rihanna'),(6,'Shakira'),(7,'Freddie Mercury'),(8,'Christina Aguilera'),(9,'Britney Spears'),(10,'Alejandro Sanz'),(11,'David Bisbal'),(12,'Andrea Bocelli'),(13,'Céline Dion'),(14,'Édith Piaf'),(15,'Aretha Franklin'),(16,'George Michael'),(17,'John Lennon'),(18,'Elvis Presley'),(19,'Amy Winehouse'),(20,'Queen'),(21,'The Rolling Stones'),(22,'Wham!'),(23,'Nirvana'),(24,'The Beatles'),(25,'Jackson Five'),(26,'Metallica'),(27,'Brian May'),(28,'John Deacon'),(29,'Roger Taylor'),(30,'Mike Grose'),(31,'Doug Bogie'),(32,'Barry Mitchell'),(33,'Mick Jagger'),(34,'Keith Richards'),(35,'Ron Wood'),(36,'Brian Jones'),(37,'Charlie Watts'),(38,'Bill Wyman'),(39,'Mick Taylor'),(40,'Aaron Buckhard'),(41,'Krist Novoselic'),(42,'Dave Grohl'),(43,'Chad Channing'),(44,'Andrew Ridgeley'),(45,'Shirlie Holliman'),(46,'Pepsi Demacque'),(47,'Paul McCartney'),(48,'George Harrison'),(49,'Ringo Starr'),(50,'Jermaine Jackson'),(51,'Jackie Jackson'),(52,'Tito Jackson'),(53,'Marlon Jackson'),(64,'Calvin Harris'),(65,'El Cata'),(66,'Redman'),(67,'Madonna'),(68,'Alicia Keys'),(69,'Jay-Z'),(70,'Giorgia'),(71,'Lil\' Kim');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `band`
--

LOCK TABLES `band` WRITE;
/*!40000 ALTER TABLE `band` DISABLE KEYS */;
INSERT INTO `band` VALUES (20,1970,NULL),(21,1962,NULL),(22,1981,1986),(23,1987,1994),(24,1960,1970),(25,1964,1990),(26,1981,NULL);
/*!40000 ALTER TABLE `band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `belongs`
--

LOCK TABLES `belongs` WRITE;
/*!40000 ALTER TABLE `belongs` DISABLE KEYS */;
INSERT INTO `belongs` VALUES (1,1),(2,1),(3,1),(12,1),(13,1),(14,1),(15,1),(17,1),(18,1),(19,1),(20,1),(21,1),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(16,2),(22,2),(23,2),(24,2),(25,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),(41,2),(43,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),(51,2),(52,2),(53,2),(54,2),(55,2),(56,2),(57,2),(58,2),(59,2),(60,2),(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(27,3),(50,3),(26,4),(42,4),(44,4),(50,4),(26,6),(45,6),(71,6),(72,6),(73,6),(27,7),(30,7),(31,7),(29,8),(42,9),(44,9),(32,10),(33,10),(34,10),(35,10),(36,10),(52,10),(53,10),(54,10),(55,10),(56,10),(57,10),(58,10),(59,10),(60,10),(61,10),(62,10),(63,11),(68,11),(69,11),(70,11),(72,11),(73,11),(71,12);
/*!40000 ALTER TABLE `belongs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (10,'Australia'),(6,'Barbados'),(8,'Canada'),(4,'Colombia'),(13,'Dominican Republic'),(9,'France'),(11,'Germany'),(7,'Italy'),(12,'NR/DK'),(3,'Spain'),(5,'Tanzania'),(2,'UK'),(1,'USA');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `feature`
--

LOCK TABLES `feature` WRITE;
/*!40000 ALTER TABLE `feature` DISABLE KEYS */;
INSERT INTO `feature` VALUES (56,6),(30,64),(37,65),(42,66),(50,67),(58,68),(26,69),(63,70),(44,71);
/*!40000 ALTER TABLE `feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `individual`
--

LOCK TABLES `individual` WRITE;
/*!40000 ALTER TABLE `individual` DISABLE KEYS */;
INSERT INTO `individual` VALUES (1,'Whitney Elizabeth','Houston','1963-08-09','2012-02-11','woman',1),(2,'Michael Joseph','Jackson','1958-08-29','2009-08-25','man',1),(3,'Kurt Donald','Cobain','1967-02-20','1994-04-05','man',1),(4,'Sia Kate Isobelle','Furler','1975-12-18',NULL,'woman',10),(5,'Robyn Rihanna','Fenty','1988-02-20',NULL,'woman',6),(6,'Shakira Isabel','Mebarak Ripoll','1977-02-02',NULL,'woman',4),(7,'Farrokh','Bulsara','1946-09-05','1991-11-24','man',5),(8,'Christina Maria','Aguilera','1980-12-18',NULL,'woman',1),(9,'Britney Jean','Spears','1981-12-02',NULL,'woman',1),(10,'Alejandro','Sànchez Pizarro','1968-12-18',NULL,'man',3),(11,'David','Bisbal Ferre','1979-06-05',NULL,'man',3),(12,'Andrea','Bocelli','1958-09-22',NULL,'man',7),(13,'Céline Marie Claudette','Dion','1968-03-30',NULL,'woman',8),(14,'Édith Giovanna','Gassion','1915-12-19','1963-10-14','man',9),(15,'Aretha Louise','Frankiln','1942-03-25','2018-08-16','man',1),(16,'Georgios Kyriacos','Panayiotou','1963-06-25','2016-12-25','man',2),(17,'John Winston','Lennon','1940-10-09','1980-12-08','man',2),(18,'Elvis Aaron','Presley','1935-01-08','1977-08-16','man',1),(19,'Amy Jade','Winehouse','1983-09-14','2011-07-23','woman',2),(27,'Brian Harold','May','1947-07-19',NULL,'man',2),(28,'John Richard','Deacon','1951-08-19',NULL,'man',2),(29,NULL,NULL,NULL,NULL,NULL,NULL),(30,NULL,NULL,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL,NULL,NULL),(33,'Michael Philip','Jagger','1943-07-26',NULL,'man',2),(34,'Keith','Richards','1943-12-18',NULL,'man',2),(35,NULL,NULL,NULL,NULL,NULL,NULL),(36,NULL,NULL,NULL,NULL,NULL,NULL),(37,NULL,NULL,NULL,NULL,NULL,NULL),(38,NULL,NULL,NULL,NULL,NULL,NULL),(39,NULL,NULL,NULL,NULL,NULL,NULL),(40,NULL,NULL,NULL,NULL,NULL,NULL),(41,NULL,NULL,NULL,NULL,NULL,NULL),(42,NULL,NULL,NULL,NULL,NULL,NULL),(43,NULL,NULL,NULL,NULL,NULL,NULL),(44,NULL,NULL,NULL,NULL,NULL,NULL),(45,NULL,NULL,NULL,NULL,NULL,NULL),(46,NULL,NULL,NULL,NULL,NULL,NULL),(47,'James Paul','McCartney','1942-06-18',NULL,'man',2),(48,NULL,NULL,NULL,NULL,NULL,2),(49,NULL,NULL,NULL,NULL,NULL,NULL),(50,NULL,NULL,NULL,NULL,NULL,NULL),(51,NULL,NULL,NULL,NULL,NULL,NULL),(52,NULL,NULL,NULL,NULL,NULL,NULL),(53,NULL,NULL,NULL,NULL,NULL,NULL),(64,'Adam Richard','Wiles','1984-01-17',NULL,'man',1),(65,'Edward E.','Bello Pou',NULL,NULL,'man',13),(66,'Reginald','Noble','1970-04-17',NULL,'man',1),(67,'Madonna Louise Veronica','Ciccone','1958-08-16',NULL,'woman',1),(68,'Alicia','Augello Cook','1981-01-25',NULL,'woman',1),(69,'Shawn Corey','Carter','1969-12-04',NULL,'man',1),(70,'Giorgia','Todrani','1971-04-26',NULL,'woman',7),(71,'Kimberly Denise','Jones','1974-07-11',NULL,'woman',1);
/*!40000 ALTER TABLE `individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `joined`
--

LOCK TABLES `joined` WRITE;
/*!40000 ALTER TABLE `joined` DISABLE KEYS */;
INSERT INTO `joined` VALUES (2,25,1964,1984),(3,23,1987,1994),(7,20,1970,1991),(16,22,1981,1986),(17,24,1960,1969),(27,20,1970,NULL),(28,20,1971,1997),(29,20,1970,NULL),(30,20,1970,1971),(31,20,1971,1971),(32,20,1970,1971),(33,21,1962,NULL),(34,21,1962,NULL),(35,21,1975,NULL),(36,21,1962,1969),(37,21,1963,NULL),(38,21,1962,1993),(39,21,1969,1974),(40,23,1987,1994),(41,23,1987,1994),(42,23,1990,1994),(43,23,1988,1990),(44,22,1981,1986),(45,22,1981,1986),(46,22,1981,1986),(47,24,1960,1970),(48,24,1960,1970),(49,24,1962,1970),(50,25,1964,1990),(51,25,1964,1990),(52,25,1964,1990),(53,25,1964,1985);
/*!40000 ALTER TABLE `joined` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `music_style`
--

LOCK TABLES `music_style` WRITE;
/*!40000 ALTER TABLE `music_style` DISABLE KEYS */;
INSERT INTO `music_style` VALUES (1,'Rock'),(2,'Pop'),(3,'Dance'),(4,'Hip hop'),(5,'Funk'),(6,'R&B'),(7,'Tecno'),(8,'Reggae'),(9,'Rap'),(10,'Latin'),(11,'Classical'),(12,'Soul');
/*!40000 ALTER TABLE `music_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `record_company`
--

LOCK TABLES `record_company` WRITE;
/*!40000 ALTER TABLE `record_company` DISABLE KEYS */;
INSERT INTO `record_company` VALUES (1,'Parlophone Records Ltd.','Carl Lindström',1896,11),(2,'Arista Records','Clive Davis',1974,1),(3,'Epic Records','Columbia Records',1953,1),(4,'RCA Records','Eldridge R. Johnson, Emile Berliner',1900,1),(5,'DGC Records','David Geffen',1990,1),(6,'Def Jam Recordings','Rick Rubin, Russell Simmons',1984,1),(7,'Jive Records','Clive Calder, Ralph Simon',1981,1),(8,'Warner Music Group','Warner Bros',1958,1),(9,'Universal Music Group','Music Corporation of America',1934,1),(10,'Polydor Records','German Polyphon-Musikwerke AG',1913,11),(11,'Columbia Records','Edward D. Easton',1889,1),(12,'Atlantic Records','Ahmet Ertegun, Herb Abramson',1947,1),(14,'NR/DK','',0,12);
/*!40000 ALTER TABLE `record_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,1,'4:56','Somebody to love','https://www.youtube.com/watch?v=zj69iA_goIk'),(2,2,'2:02','We will rock you','https://www.youtube.com/watch?v=Wv0KwOEYKU4'),(2,3,'3:04','We are the champions','https://www.youtube.com/watch?v=O71fetlkCZo'),(4,4,'4:51','I Wanna Dance With Somebody (Who Loves Me)','https://www.youtube.com/watch?v=caTGU4jS5LM'),(3,5,'4:31','How will I know','https://www.youtube.com/watch?v=FqAGSKQn0VM'),(3,6,'4:58','Greatest love of all','https://www.youtube.com/watch?v=Pbp6W4N1N9s'),(5,7,'5:57','Thriller','https://www.youtube.com/watch?v=qJwxcYTa_VQ'),(5,8,'4:19','Beat it','https://www.youtube.com/watch?v=HSNKIdy5HJQ'),(5,9,'4:54','Billie Jean','https://www.youtube.com/watch?v=YrmIOu-kPYc'),(6,10,'5:19','Man in the mirror','https://www.youtube.com/watch?v=Zqe5NP86OCc'),(6,11,'4:17','Smooth Criminal','https://www.youtube.com/watch?v=CBrWNbjw3RA'),(7,12,'2:08','Heartbreak Hotel','https://www.youtube.com/watch?v=qb0-o4xMqKc'),(7,13,'1:58','Blue Suede Shoes','https://www.youtube.com/watch?v=bYMfsUgbhN4'),(8,14,'2:16','Hound Dog','https://www.youtube.com/watch?v=rcU4Ld5phTU'),(8,15,'2:02','Don*t be cruel','https://www.youtube.com/watch?v=jTcXAWDDwU4'),(8,16,'2:41','Love me tender','https://www.youtube.com/watch?v=-Y-bd3aDMGA'),(9,17,'5:01','Smells like teen spirit','https://www.youtube.com/watch?v=zYxkezUr8MQ'),(9,18,'4:17','Lithium','https://www.youtube.com/watch?v=LYfnBsaTVEo'),(9,19,'3:39','Come as you are','https://www.youtube.com/watch?v=zfJjcfAPCxo'),(10,20,'4:41','Heart-shaped box','https://www.youtube.com/watch?v=BJr-iFh1OZk'),(10,21,'3:51','All apologies','https://www.youtube.com/watch?v=PLJiZzoLRl4'),(11,22,'3:36','Chandelier','https://www.youtube.com/watch?v=Tm6-SEfRoBA'),(11,23,'4:01','Fire meet gasoline','https://www.youtube.com/watch?v=K8LkYw-GFK0'),(12,24,'3:39','Alive','https://www.youtube.com/watch?v=qQEo6OgJQzw'),(12,25,'4:23','Cheap thrills','https://www.youtube.com/watch?v=6mqbAnrtWHo'),(13,26,'4:35','Umbrella','https://www.youtube.com/watch?v=kJ8oGlXwJJQ'),(13,27,'4:27','Don*t stop the music','https://www.youtube.com/watch?v=dZJ9tx_zk4A'),(14,28,'4:11','California king bed','https://www.youtube.com/watch?v=urARKkLo6MY'),(14,29,'4:27','Man down','https://www.youtube.com/watch?v=yGYpMyDx5Es'),(15,30,'3:35','We found love','https://www.youtube.com/watch?v=NsvzFqrsnfA'),(15,31,'4:02','Where have you been','https://www.youtube.com/watch?v=SJc8lLP8geg'),(16,32,'4:44','Te aviso, te anuncio','https://www.youtube.com/watch?v=6gfkHtHEQaM'),(16,33,'4:16','Suerte','https://www.youtube.com/watch?v=WOClbDkLego'),(17,34,'3:40','Las de la intuición','https://www.youtube.com/watch?v=S8kycNdiuHI'),(18,35,'3:10','Loba','https://www.youtube.com/watch?v=CyHQfcSji9k'),(18,36,'3:18','Gypsy','https://www.youtube.com/watch?v=aQ27qR1GEwI'),(19,37,'3:05','Loca','https://www.youtube.com/watch?v=E6owpa5sYco'),(19,38,'3:07','Waka waka (Esto es África)','https://www.youtube.com/watch?v=_osmayoWCDA'),(20,39,'3:36','Genie in a bottle','https://www.youtube.com/watch?v=6bsSSjdGHHo'),(21,40,'4:05','Fighter','https://www.youtube.com/watch?v=RBOJpIwF47Y'),(21,41,'3:58','Beautiful','https://www.youtube.com/watch?v=aoYEQgG4-JY'),(21,42,'4:58','Dirrty','https://www.youtube.com/watch?v=n5qVJUhkr98'),(21,43,'5:04','The voice within','https://www.youtube.com/watch?v=U7qOsti5r2U'),(21,44,'4:15','Can*t hold us down','https://www.youtube.com/watch?v=Otg9yUuk1_g'),(22,45,'3:49','Ain*t no other man','https://www.youtube.com/watch?v=OstHzcY7DPE'),(23,46,'3:31','...Baby one more time','https://www.youtube.com/watch?v=4NJH75q0Syk'),(23,47,'3:18','(You drive me) Crazy ','https://www.youtube.com/watch?v=DtbVZhU6VlM'),(24,48,'3:31','Oops!... I did it again','https://www.youtube.com/watch?v=DEsqGOHo0nI'),(25,49,'3:23','I*m a slave 4 U','https://www.youtube.com/watch?v=NhY3xYvCXo8'),(26,50,'3:43','Me against the music','https://www.youtube.com/watch?v=YWUhAlm77dw'),(26,51,'3:18','Toxic','https://www.youtube.com/watch?v=uCRT8IItGpw'),(27,52,'5:22','Y, ¿si fuera ella?','https://www.youtube.com/watch?v=JK2tsqpGVdI'),(27,53,'5:46','Corazón partío','https://www.youtube.com/watch?v=eTFzzkBoyCw'),(28,54,'5:12','Cuando nadie me ve','https://www.youtube.com/watch?v=45-OfPe-ryk'),(29,55,'5:02','A la primera persona','https://www.youtube.com/watch?v=43_E65MMrGo'),(29,56,'4:33','Te lo agradezco, pero no','https://www.youtube.com/watch?v=-GTWnvMNJiM'),(30,57,'3:55','Desde cuándo','https://www.youtube.com/watch?v=h0aEK4dPJf0'),(30,58,'4:34','Looking for paradise','https://www.youtube.com/watch?v=qN0LhINPmb4'),(31,59,'3:31','Ave María','https://www.youtube.com/watch?v=Xq30q9ICRwQ'),(31,60,'4:24','Dígale','https://www.youtube.com/watch?v=t_NRAYGFpuE'),(32,61,'3:57','Esclavo de sus besos','https://www.youtube.com/watch?v=WKILECzXI2Y'),(32,62,'3:22','Mi princesa','https://www.youtube.com/watch?v=-2G72rdwLPI'),(33,63,'4:23','Vivo per lei','https://www.youtube.com/watch?v=aMwZ-IywmfE'),(34,64,'5:42','The power of love','https://www.youtube.com/watch?v=D5C4pSCRgOw'),(35,65,'7:37','It*s all coming back to me now','https://www.youtube.com/watch?v=bEdcp22WOps'),(35,66,'4:33','Because you loved me','https://www.youtube.com/watch?v=K_9QtL-L16o'),(36,67,'4:40','My heart will go on','https://www.youtube.com/watch?v=Qz9RTOKpLsM'),(37,68,'3:10','Non, je ne regrette rien','https://www.youtube.com/watch?v=IJvI0WNihyM'),(37,69,'4:27','Milord','https://www.youtube.com/watch?v=Yo9-M22-C2E'),(37,70,'3:07','La vie en rose','https://www.youtube.com/watch?v=0feNVUwQA8U'),(38,71,'2:29','Respect','https://www.youtube.com/watch?v=SAI_Nv3qWto'),(39,72,'2:19','Think','https://www.youtube.com/watch?v=lHhEx2j9qs8'),(39,73,'3:36','I say a little prayer','https://www.youtube.com/watch?v=JyLpE93lzLY');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-05 20:01:40
