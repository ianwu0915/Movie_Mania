CREATE DATABASE  IF NOT EXISTS `movie_mania` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `movie_mania`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: movie_mania
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `actor_name` varchar(64) NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=649 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Tim Robbins'),(2,'Morgan Freeman'),(3,'Marlon Brando'),(4,'Al Pacino'),(5,'Robert De Niro'),(6,'Christian Bale'),(7,'Heath Ledger'),(8,'Henry Fonda'),(9,'Lee J. Cobb'),(10,'Liam Neeson'),(11,'Ralph Fiennes'),(12,'Elijah Wood'),(13,'Viggo Mortensen'),(14,'John Travolta'),(15,'Uma Thurman'),(16,'Clint Eastwood'),(17,'Eli Wallach'),(18,'Brad Pitt'),(19,'Edward Norton'),(20,'Joaquin Phoenix'),(21,'Ian McKellen'),(22,'Tom Hanks'),(23,'Robin Wright'),(24,'Leonardo DiCaprio'),(25,'Joseph Gordon-Levitt'),(26,'Mark Hamill'),(27,'Harrison Ford'),(28,'Keanu Reeves'),(29,'Laurence Fishburne'),(30,'Jack Nicholson'),(31,'Louise Fletcher'),(32,'Ray Liotta'),(33,'Toshirô Mifune'),(34,'Takashi Shimura'),(35,'Alexandre Rodrigues'),(36,'Leandro Firmino'),(37,'Roberto Benigni'),(38,'Nicoletta Braschi'),(39,'Jodie Foster'),(40,'Anthony Hopkins'),(41,'James Stewart'),(42,'Donna Reed'),(43,'Matt Damon'),(44,'Daveigh Chase'),(45,'Suzanne Pleshette'),(46,'Michael Clarke Duncan'),(47,'Jean Reno'),(48,'Gary Oldman'),(49,'Tatsuya Nakadai'),(50,'Akira Ishihama'),(51,'Matthew McConaughey'),(52,'Anne Hathaway'),(53,'Kevin Spacey'),(54,'Gabriel Byrne'),(55,'Matthew Broderick'),(56,'Jeremy Irons'),(57,'Edward Furlong'),(58,'Michael J. Fox'),(59,'Christopher Lloyd'),(60,'Adrien Brody'),(61,'Thomas Kretschmann'),(62,'Charles Chaplin'),(63,'Paulette Goddard'),(64,'Arnold Schwarzenegger'),(65,'Linda Hamilton'),(66,'François Cluzet'),(67,'Omar Sy'),(68,'Anthony Perkins'),(69,'Janet Leigh'),(70,'Russell Crowe'),(71,'Virginia Cherrill'),(72,'Miles Teller'),(73,'J.K. Simmons'),(74,'Charles Bronson'),(75,'Hugh Jackman'),(76,'Robert Downey Jr.'),(77,'Chris Evans'),(78,'Humphrey Bogart'),(79,'Ingrid Bergman'),(80,'Tsutomu Tatsumi'),(81,'Ayano Shiraishi'),(82,'Tim Robbins'),(83,'Morgan Freeman'),(84,'Marlon Brando'),(85,'Al Pacino'),(86,'Robert De Niro'),(87,'Christian Bale'),(88,'Heath Ledger'),(89,'Henry Fonda'),(90,'Lee J. Cobb'),(91,'Liam Neeson'),(92,'Ralph Fiennes'),(93,'Elijah Wood'),(94,'Viggo Mortensen'),(95,'John Travolta'),(96,'Uma Thurman'),(97,'Clint Eastwood'),(98,'Eli Wallach'),(99,'Brad Pitt'),(100,'Edward Norton'),(101,'Joaquin Phoenix'),(102,'Ian McKellen'),(103,'Tom Hanks'),(104,'Robin Wright'),(105,'Leonardo DiCaprio'),(106,'Joseph Gordon-Levitt'),(107,'Mark Hamill'),(108,'Harrison Ford'),(109,'Keanu Reeves'),(110,'Laurence Fishburne'),(111,'Jack Nicholson'),(112,'Louise Fletcher'),(113,'Ray Liotta'),(114,'Toshirô Mifune'),(115,'Takashi Shimura'),(116,'Alexandre Rodrigues'),(117,'Leandro Firmino'),(118,'Roberto Benigni'),(119,'Nicoletta Braschi'),(120,'Jodie Foster'),(121,'Anthony Hopkins'),(122,'James Stewart'),(123,'Donna Reed'),(124,'Matt Damon'),(125,'Daveigh Chase'),(126,'Suzanne Pleshette'),(127,'Michael Clarke Duncan'),(128,'Jean Reno'),(129,'Gary Oldman'),(130,'Tatsuya Nakadai'),(131,'Akira Ishihama'),(132,'Matthew McConaughey'),(133,'Anne Hathaway'),(134,'Kevin Spacey'),(135,'Gabriel Byrne'),(136,'Matthew Broderick'),(137,'Jeremy Irons'),(138,'Edward Furlong'),(139,'Michael J. Fox'),(140,'Christopher Lloyd'),(141,'Adrien Brody'),(142,'Thomas Kretschmann'),(143,'Charles Chaplin'),(144,'Paulette Goddard'),(145,'Arnold Schwarzenegger'),(146,'Linda Hamilton'),(147,'François Cluzet'),(148,'Omar Sy'),(149,'Anthony Perkins'),(150,'Janet Leigh'),(151,'Russell Crowe'),(152,'Virginia Cherrill'),(153,'Miles Teller'),(154,'J.K. Simmons'),(155,'Charles Bronson'),(156,'Hugh Jackman'),(157,'Robert Downey Jr.'),(158,'Chris Evans'),(159,'Humphrey Bogart'),(160,'Ingrid Bergman'),(161,'Tsutomu Tatsumi'),(162,'Ayano Shiraishi'),(163,'Tim Robbins'),(164,'Morgan Freeman'),(165,'Marlon Brando'),(166,'Al Pacino'),(167,'Robert De Niro'),(168,'Christian Bale'),(169,'Heath Ledger'),(170,'Henry Fonda'),(171,'Lee J. Cobb'),(172,'Liam Neeson'),(173,'Ralph Fiennes'),(174,'Elijah Wood'),(175,'Viggo Mortensen'),(176,'John Travolta'),(177,'Uma Thurman'),(178,'Clint Eastwood'),(179,'Eli Wallach'),(180,'Brad Pitt'),(181,'Edward Norton'),(182,'Joaquin Phoenix'),(183,'Ian McKellen'),(184,'Tom Hanks'),(185,'Robin Wright'),(186,'Leonardo DiCaprio'),(187,'Joseph Gordon-Levitt'),(188,'Mark Hamill'),(189,'Harrison Ford'),(190,'Keanu Reeves'),(191,'Laurence Fishburne'),(192,'Jack Nicholson'),(193,'Louise Fletcher'),(194,'Ray Liotta'),(195,'Toshirô Mifune'),(196,'Takashi Shimura'),(197,'Alexandre Rodrigues'),(198,'Leandro Firmino'),(199,'Roberto Benigni'),(200,'Nicoletta Braschi'),(201,'Jodie Foster'),(202,'Anthony Hopkins'),(203,'James Stewart'),(204,'Donna Reed'),(205,'Matt Damon'),(206,'Daveigh Chase'),(207,'Suzanne Pleshette'),(208,'Michael Clarke Duncan'),(209,'Jean Reno'),(210,'Gary Oldman'),(211,'Tatsuya Nakadai'),(212,'Akira Ishihama'),(213,'Matthew McConaughey'),(214,'Anne Hathaway'),(215,'Kevin Spacey'),(216,'Gabriel Byrne'),(217,'Matthew Broderick'),(218,'Jeremy Irons'),(219,'Edward Furlong'),(220,'Michael J. Fox'),(221,'Christopher Lloyd'),(222,'Adrien Brody'),(223,'Thomas Kretschmann'),(224,'Charles Chaplin'),(225,'Paulette Goddard'),(226,'Arnold Schwarzenegger'),(227,'Linda Hamilton'),(228,'François Cluzet'),(229,'Omar Sy'),(230,'Anthony Perkins'),(231,'Janet Leigh'),(232,'Russell Crowe'),(233,'Virginia Cherrill'),(234,'Miles Teller'),(235,'J.K. Simmons'),(236,'Charles Bronson'),(237,'Hugh Jackman'),(238,'Robert Downey Jr.'),(239,'Chris Evans'),(240,'Humphrey Bogart'),(241,'Ingrid Bergman'),(242,'Tsutomu Tatsumi'),(243,'Ayano Shiraishi'),(244,'Tim Robbins'),(245,'Morgan Freeman'),(246,'Marlon Brando'),(247,'Al Pacino'),(248,'Robert De Niro'),(249,'Christian Bale'),(250,'Heath Ledger'),(251,'Henry Fonda'),(252,'Lee J. Cobb'),(253,'Liam Neeson'),(254,'Ralph Fiennes'),(255,'Elijah Wood'),(256,'Viggo Mortensen'),(257,'John Travolta'),(258,'Uma Thurman'),(259,'Clint Eastwood'),(260,'Eli Wallach'),(261,'Brad Pitt'),(262,'Edward Norton'),(263,'Joaquin Phoenix'),(264,'Ian McKellen'),(265,'Tom Hanks'),(266,'Robin Wright'),(267,'Leonardo DiCaprio'),(268,'Joseph Gordon-Levitt'),(269,'Mark Hamill'),(270,'Harrison Ford'),(271,'Keanu Reeves'),(272,'Laurence Fishburne'),(273,'Jack Nicholson'),(274,'Louise Fletcher'),(275,'Ray Liotta'),(276,'Toshirô Mifune'),(277,'Takashi Shimura'),(278,'Alexandre Rodrigues'),(279,'Leandro Firmino'),(280,'Roberto Benigni'),(281,'Nicoletta Braschi'),(282,'Jodie Foster'),(283,'Anthony Hopkins'),(284,'James Stewart'),(285,'Donna Reed'),(286,'Matt Damon'),(287,'Daveigh Chase'),(288,'Suzanne Pleshette'),(289,'Michael Clarke Duncan'),(290,'Jean Reno'),(291,'Gary Oldman'),(292,'Tatsuya Nakadai'),(293,'Akira Ishihama'),(294,'Matthew McConaughey'),(295,'Anne Hathaway'),(296,'Kevin Spacey'),(297,'Gabriel Byrne'),(298,'Matthew Broderick'),(299,'Jeremy Irons'),(300,'Edward Furlong'),(301,'Michael J. Fox'),(302,'Christopher Lloyd'),(303,'Adrien Brody'),(304,'Thomas Kretschmann'),(305,'Charles Chaplin'),(306,'Paulette Goddard'),(307,'Arnold Schwarzenegger'),(308,'Linda Hamilton'),(309,'François Cluzet'),(310,'Omar Sy'),(311,'Anthony Perkins'),(312,'Janet Leigh'),(313,'Russell Crowe'),(314,'Virginia Cherrill'),(315,'Miles Teller'),(316,'J.K. Simmons'),(317,'Charles Bronson'),(318,'Hugh Jackman'),(319,'Robert Downey Jr.'),(320,'Chris Evans'),(321,'Humphrey Bogart'),(322,'Ingrid Bergman'),(323,'Tsutomu Tatsumi'),(324,'Ayano Shiraishi'),(325,'Tim Robbins'),(326,'Morgan Freeman'),(327,'Marlon Brando'),(328,'Al Pacino'),(329,'Robert De Niro'),(330,'Christian Bale'),(331,'Heath Ledger'),(332,'Henry Fonda'),(333,'Lee J. Cobb'),(334,'Liam Neeson'),(335,'Ralph Fiennes'),(336,'Elijah Wood'),(337,'Viggo Mortensen'),(338,'John Travolta'),(339,'Uma Thurman'),(340,'Clint Eastwood'),(341,'Eli Wallach'),(342,'Brad Pitt'),(343,'Edward Norton'),(344,'Joaquin Phoenix'),(345,'Ian McKellen'),(346,'Tom Hanks'),(347,'Robin Wright'),(348,'Leonardo DiCaprio'),(349,'Joseph Gordon-Levitt'),(350,'Mark Hamill'),(351,'Harrison Ford'),(352,'Keanu Reeves'),(353,'Laurence Fishburne'),(354,'Jack Nicholson'),(355,'Louise Fletcher'),(356,'Ray Liotta'),(357,'Toshirô Mifune'),(358,'Takashi Shimura'),(359,'Alexandre Rodrigues'),(360,'Leandro Firmino'),(361,'Roberto Benigni'),(362,'Nicoletta Braschi'),(363,'Jodie Foster'),(364,'Anthony Hopkins'),(365,'James Stewart'),(366,'Donna Reed'),(367,'Matt Damon'),(368,'Daveigh Chase'),(369,'Suzanne Pleshette'),(370,'Michael Clarke Duncan'),(371,'Jean Reno'),(372,'Gary Oldman'),(373,'Tatsuya Nakadai'),(374,'Akira Ishihama'),(375,'Matthew McConaughey'),(376,'Anne Hathaway'),(377,'Kevin Spacey'),(378,'Gabriel Byrne'),(379,'Matthew Broderick'),(380,'Jeremy Irons'),(381,'Edward Furlong'),(382,'Michael J. Fox'),(383,'Christopher Lloyd'),(384,'Adrien Brody'),(385,'Thomas Kretschmann'),(386,'Charles Chaplin'),(387,'Paulette Goddard'),(388,'Arnold Schwarzenegger'),(389,'Linda Hamilton'),(390,'François Cluzet'),(391,'Omar Sy'),(392,'Anthony Perkins'),(393,'Janet Leigh'),(394,'Russell Crowe'),(395,'Virginia Cherrill'),(396,'Miles Teller'),(397,'J.K. Simmons'),(398,'Charles Bronson'),(399,'Hugh Jackman'),(400,'Robert Downey Jr.'),(401,'Chris Evans'),(402,'Humphrey Bogart'),(403,'Ingrid Bergman'),(404,'Tsutomu Tatsumi'),(405,'Ayano Shiraishi'),(406,'Tim Robbins'),(407,'Morgan Freeman'),(408,'Marlon Brando'),(409,'Al Pacino'),(410,'Robert De Niro'),(411,'Christian Bale'),(412,'Heath Ledger'),(413,'Henry Fonda'),(414,'Lee J. Cobb'),(415,'Liam Neeson'),(416,'Ralph Fiennes'),(417,'Elijah Wood'),(418,'Viggo Mortensen'),(419,'John Travolta'),(420,'Uma Thurman'),(421,'Clint Eastwood'),(422,'Eli Wallach'),(423,'Brad Pitt'),(424,'Edward Norton'),(425,'Joaquin Phoenix'),(426,'Ian McKellen'),(427,'Tom Hanks'),(428,'Robin Wright'),(429,'Leonardo DiCaprio'),(430,'Joseph Gordon-Levitt'),(431,'Mark Hamill'),(432,'Harrison Ford'),(433,'Keanu Reeves'),(434,'Laurence Fishburne'),(435,'Jack Nicholson'),(436,'Louise Fletcher'),(437,'Ray Liotta'),(438,'Toshirô Mifune'),(439,'Takashi Shimura'),(440,'Alexandre Rodrigues'),(441,'Leandro Firmino'),(442,'Roberto Benigni'),(443,'Nicoletta Braschi'),(444,'Jodie Foster'),(445,'Anthony Hopkins'),(446,'James Stewart'),(447,'Donna Reed'),(448,'Matt Damon'),(449,'Daveigh Chase'),(450,'Suzanne Pleshette'),(451,'Michael Clarke Duncan'),(452,'Jean Reno'),(453,'Gary Oldman'),(454,'Tatsuya Nakadai'),(455,'Akira Ishihama'),(456,'Matthew McConaughey'),(457,'Anne Hathaway'),(458,'Kevin Spacey'),(459,'Gabriel Byrne'),(460,'Matthew Broderick'),(461,'Jeremy Irons'),(462,'Edward Furlong'),(463,'Michael J. Fox'),(464,'Christopher Lloyd'),(465,'Adrien Brody'),(466,'Thomas Kretschmann'),(467,'Charles Chaplin'),(468,'Paulette Goddard'),(469,'Arnold Schwarzenegger'),(470,'Linda Hamilton'),(471,'François Cluzet'),(472,'Omar Sy'),(473,'Anthony Perkins'),(474,'Janet Leigh'),(475,'Russell Crowe'),(476,'Virginia Cherrill'),(477,'Miles Teller'),(478,'J.K. Simmons'),(479,'Charles Bronson'),(480,'Hugh Jackman'),(481,'Robert Downey Jr.'),(482,'Chris Evans'),(483,'Humphrey Bogart'),(484,'Ingrid Bergman'),(485,'Tsutomu Tatsumi'),(486,'Ayano Shiraishi'),(487,'Tim Robbins'),(488,'Morgan Freeman'),(489,'Marlon Brando'),(490,'Al Pacino'),(491,'Robert De Niro'),(492,'Christian Bale'),(493,'Heath Ledger'),(494,'Henry Fonda'),(495,'Lee J. Cobb'),(496,'Liam Neeson'),(497,'Ralph Fiennes'),(498,'Elijah Wood'),(499,'Viggo Mortensen'),(500,'John Travolta'),(501,'Uma Thurman'),(502,'Clint Eastwood'),(503,'Eli Wallach'),(504,'Brad Pitt'),(505,'Edward Norton'),(506,'Joaquin Phoenix'),(507,'Ian McKellen'),(508,'Tom Hanks'),(509,'Robin Wright'),(510,'Leonardo DiCaprio'),(511,'Joseph Gordon-Levitt'),(512,'Mark Hamill'),(513,'Harrison Ford'),(514,'Keanu Reeves'),(515,'Laurence Fishburne'),(516,'Jack Nicholson'),(517,'Louise Fletcher'),(518,'Ray Liotta'),(519,'Toshirô Mifune'),(520,'Takashi Shimura'),(521,'Alexandre Rodrigues'),(522,'Leandro Firmino'),(523,'Roberto Benigni'),(524,'Nicoletta Braschi'),(525,'Jodie Foster'),(526,'Anthony Hopkins'),(527,'James Stewart'),(528,'Donna Reed'),(529,'Matt Damon'),(530,'Daveigh Chase'),(531,'Suzanne Pleshette'),(532,'Michael Clarke Duncan'),(533,'Jean Reno'),(534,'Gary Oldman'),(535,'Tatsuya Nakadai'),(536,'Akira Ishihama'),(537,'Matthew McConaughey'),(538,'Anne Hathaway'),(539,'Kevin Spacey'),(540,'Gabriel Byrne'),(541,'Matthew Broderick'),(542,'Jeremy Irons'),(543,'Edward Furlong'),(544,'Michael J. Fox'),(545,'Christopher Lloyd'),(546,'Adrien Brody'),(547,'Thomas Kretschmann'),(548,'Charles Chaplin'),(549,'Paulette Goddard'),(550,'Arnold Schwarzenegger'),(551,'Linda Hamilton'),(552,'François Cluzet'),(553,'Omar Sy'),(554,'Anthony Perkins'),(555,'Janet Leigh'),(556,'Russell Crowe'),(557,'Virginia Cherrill'),(558,'Miles Teller'),(559,'J.K. Simmons'),(560,'Charles Bronson'),(561,'Hugh Jackman'),(562,'Robert Downey Jr.'),(563,'Chris Evans'),(564,'Humphrey Bogart'),(565,'Ingrid Bergman'),(566,'Tsutomu Tatsumi'),(567,'Ayano Shiraishi'),(568,'Tim Robbins'),(569,'Morgan Freeman'),(570,'Marlon Brando'),(571,'Al Pacino'),(572,'Robert De Niro'),(573,'Christian Bale'),(574,'Heath Ledger'),(575,'Henry Fonda'),(576,'Lee J. Cobb'),(577,'Liam Neeson'),(578,'Ralph Fiennes'),(579,'Elijah Wood'),(580,'Viggo Mortensen'),(581,'John Travolta'),(582,'Uma Thurman'),(583,'Clint Eastwood'),(584,'Eli Wallach'),(585,'Brad Pitt'),(586,'Edward Norton'),(587,'Joaquin Phoenix'),(588,'Ian McKellen'),(589,'Tom Hanks'),(590,'Robin Wright'),(591,'Leonardo DiCaprio'),(592,'Joseph Gordon-Levitt'),(593,'Mark Hamill'),(594,'Harrison Ford'),(595,'Keanu Reeves'),(596,'Laurence Fishburne'),(597,'Jack Nicholson'),(598,'Louise Fletcher'),(599,'Ray Liotta'),(600,'Toshirô Mifune'),(601,'Takashi Shimura'),(602,'Alexandre Rodrigues'),(603,'Leandro Firmino'),(604,'Roberto Benigni'),(605,'Nicoletta Braschi'),(606,'Jodie Foster'),(607,'Anthony Hopkins'),(608,'James Stewart'),(609,'Donna Reed'),(610,'Matt Damon'),(611,'Daveigh Chase'),(612,'Suzanne Pleshette'),(613,'Michael Clarke Duncan'),(614,'Jean Reno'),(615,'Gary Oldman'),(616,'Tatsuya Nakadai'),(617,'Akira Ishihama'),(618,'Matthew McConaughey'),(619,'Anne Hathaway'),(620,'Kevin Spacey'),(621,'Gabriel Byrne'),(622,'Matthew Broderick'),(623,'Jeremy Irons'),(624,'Edward Furlong'),(625,'Michael J. Fox'),(626,'Christopher Lloyd'),(627,'Adrien Brody'),(628,'Thomas Kretschmann'),(629,'Charles Chaplin'),(630,'Paulette Goddard'),(631,'Arnold Schwarzenegger'),(632,'Linda Hamilton'),(633,'François Cluzet'),(634,'Omar Sy'),(635,'Anthony Perkins'),(636,'Janet Leigh'),(637,'Russell Crowe'),(638,'Virginia Cherrill'),(639,'Miles Teller'),(640,'J.K. Simmons'),(641,'Charles Bronson'),(642,'Hugh Jackman'),(643,'Robert Downey Jr.'),(644,'Chris Evans'),(645,'Humphrey Bogart'),(646,'Ingrid Bergman'),(647,'Tsutomu Tatsumi'),(648,'Ayano Shiraishi');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor_to_movie`
--

DROP TABLE IF EXISTS `actor_to_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor_to_movie` (
  `movie_id` int NOT NULL,
  `actor_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`actor_id`),
  KEY `actor_id` (`actor_id`),
  CONSTRAINT `actor_to_movie_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `actor_to_movie_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_to_movie`
--

LOCK TABLES `actor_to_movie` WRITE;
/*!40000 ALTER TABLE `actor_to_movie` DISABLE KEYS */;
INSERT INTO `actor_to_movie` VALUES (1,1),(1,2),(21,2),(2,3),(2,4),(3,4),(3,5),(11,5),(19,5),(4,6),(47,6),(4,7),(5,8),(46,8),(5,9),(6,10),(6,11),(7,12),(12,12),(16,12),(7,13),(8,14),(8,15),(9,16),(9,17),(10,18),(21,18),(10,19),(35,19),(11,20),(42,20),(12,21),(16,21),(13,22),(27,22),(13,23),(14,24),(44,24),(14,25),(15,26),(25,26),(15,27),(25,27),(17,28),(17,29),(18,30),(18,31),(19,32),(20,33),(20,34),(22,35),(22,36),(23,37),(23,38),(24,39),(24,40),(26,42),(26,43),(27,43),(44,43),(28,44),(28,45),(29,46),(29,47),(30,48),(30,49),(31,50),(31,51),(32,52),(32,53),(33,54),(33,55),(34,56),(34,57),(35,57),(36,58),(36,59),(37,60),(37,61),(38,62),(43,62),(38,63),(39,64),(39,65),(40,66),(40,67),(41,68),(41,69),(42,70),(43,71),(45,72),(45,73),(46,74),(47,75),(48,76),(48,77),(49,78),(49,79),(50,80),(50,81);
/*!40000 ALTER TABLE `actor_to_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `director_id` int NOT NULL AUTO_INCREMENT,
  `director_name` varchar(64) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Christopher Nolan'),(2,'Irvin Kershner'),(3,'Peter Jackson'),(4,'Lana Wachowski'),(5,'Lilly Wachowski'),(6,'Milos Forman'),(7,'Martin Scorsese'),(8,'Akira Kurosawa'),(9,'David Fincher'),(10,'Fernando Meirelles'),(11,'Kátia Lund'),(12,'Roberto Benigni'),(13,'Jonathan Demme'),(14,'George Lucas'),(15,'Frank Capra'),(16,'Steven Spielberg'),(17,'Hayao Miyazaki'),(18,'Frank Darabont'),(19,'Luc Besson'),(20,'Masaki Kobayashi'),(21,'Bryan Singer'),(22,'Roger Allers'),(23,'Rob Minkoff'),(24,'Tony Kaye'),(25,'Robert Zemeckis'),(26,'Roman Polanski'),(27,'Charles Chaplin'),(28,'James Cameron'),(29,'Olivier Nakache'),(30,'Éric Toledano'),(31,'Alfred Hitchcock'),(32,'Ridley Scott'),(33,'Damien Chazelle'),(34,'Sergio Leone'),(35,'Anthony Russo'),(36,'Joe Russo'),(37,'Michael Curtiz'),(38,'Isao Takahata'),(39,'Francis Ford Coppola'),(40,'Sidney Lumet'),(41,'Quentin Tarantino'),(42,'Todd Phillips'),(43,'Christopher Nolan'),(44,'Irvin Kershner'),(45,'Peter Jackson'),(46,'Lana Wachowski'),(47,'Lilly Wachowski'),(48,'Milos Forman'),(49,'Martin Scorsese'),(50,'Akira Kurosawa'),(51,'David Fincher'),(52,'Fernando Meirelles'),(53,'Kátia Lund'),(54,'Roberto Benigni'),(55,'Jonathan Demme'),(56,'George Lucas'),(57,'Frank Capra'),(58,'Steven Spielberg'),(59,'Hayao Miyazaki'),(60,'Frank Darabont'),(61,'Luc Besson'),(62,'Masaki Kobayashi'),(63,'Bryan Singer'),(64,'Roger Allers'),(65,'Rob Minkoff'),(66,'Tony Kaye'),(67,'Robert Zemeckis'),(68,'Roman Polanski'),(69,'Charles Chaplin'),(70,'James Cameron'),(71,'Olivier Nakache'),(72,'Éric Toledano'),(73,'Alfred Hitchcock'),(74,'Ridley Scott'),(75,'Damien Chazelle'),(76,'Sergio Leone'),(77,'Anthony Russo'),(78,'Joe Russo'),(79,'Michael Curtiz'),(80,'Isao Takahata'),(81,'Francis Ford Coppola'),(82,'Sidney Lumet'),(83,'Quentin Tarantino'),(84,'Todd Phillips'),(85,'Christopher Nolan'),(86,'Irvin Kershner'),(87,'Peter Jackson'),(88,'Lana Wachowski'),(89,'Lilly Wachowski'),(90,'Milos Forman'),(91,'Martin Scorsese'),(92,'Akira Kurosawa'),(93,'David Fincher'),(94,'Fernando Meirelles'),(95,'Kátia Lund'),(96,'Roberto Benigni'),(97,'Jonathan Demme'),(98,'George Lucas'),(99,'Frank Capra'),(100,'Steven Spielberg'),(101,'Hayao Miyazaki'),(102,'Frank Darabont'),(103,'Luc Besson'),(104,'Masaki Kobayashi'),(105,'Bryan Singer'),(106,'Roger Allers'),(107,'Rob Minkoff'),(108,'Tony Kaye'),(109,'Robert Zemeckis'),(110,'Roman Polanski'),(111,'Charles Chaplin'),(112,'James Cameron'),(113,'Olivier Nakache'),(114,'Éric Toledano'),(115,'Alfred Hitchcock'),(116,'Ridley Scott'),(117,'Damien Chazelle'),(118,'Sergio Leone'),(119,'Anthony Russo'),(120,'Joe Russo'),(121,'Michael Curtiz'),(122,'Isao Takahata'),(123,'Francis Ford Coppola'),(124,'Sidney Lumet'),(125,'Quentin Tarantino'),(126,'Todd Phillips'),(127,'Christopher Nolan'),(128,'Irvin Kershner'),(129,'Peter Jackson'),(130,'Lana Wachowski'),(131,'Lilly Wachowski'),(132,'Milos Forman'),(133,'Martin Scorsese'),(134,'Akira Kurosawa'),(135,'David Fincher'),(136,'Fernando Meirelles'),(137,'Kátia Lund'),(138,'Roberto Benigni'),(139,'Jonathan Demme'),(140,'George Lucas'),(141,'Frank Capra'),(142,'Steven Spielberg'),(143,'Hayao Miyazaki'),(144,'Frank Darabont'),(145,'Luc Besson'),(146,'Masaki Kobayashi'),(147,'Bryan Singer'),(148,'Roger Allers'),(149,'Rob Minkoff'),(150,'Tony Kaye'),(151,'Robert Zemeckis'),(152,'Roman Polanski'),(153,'Charles Chaplin'),(154,'James Cameron'),(155,'Olivier Nakache'),(156,'Éric Toledano'),(157,'Alfred Hitchcock'),(158,'Ridley Scott'),(159,'Damien Chazelle'),(160,'Sergio Leone'),(161,'Anthony Russo'),(162,'Joe Russo'),(163,'Michael Curtiz'),(164,'Isao Takahata'),(165,'Francis Ford Coppola'),(166,'Sidney Lumet'),(167,'Quentin Tarantino'),(168,'Todd Phillips'),(169,'Christopher Nolan'),(170,'Irvin Kershner'),(171,'Peter Jackson'),(172,'Lana Wachowski'),(173,'Lilly Wachowski'),(174,'Milos Forman'),(175,'Martin Scorsese'),(176,'Akira Kurosawa'),(177,'David Fincher'),(178,'Fernando Meirelles'),(179,'Kátia Lund'),(180,'Roberto Benigni'),(181,'Jonathan Demme'),(182,'George Lucas'),(183,'Frank Capra'),(184,'Steven Spielberg'),(185,'Hayao Miyazaki'),(186,'Frank Darabont'),(187,'Luc Besson'),(188,'Masaki Kobayashi'),(189,'Bryan Singer'),(190,'Roger Allers'),(191,'Rob Minkoff'),(192,'Tony Kaye'),(193,'Robert Zemeckis'),(194,'Roman Polanski'),(195,'Charles Chaplin'),(196,'James Cameron'),(197,'Olivier Nakache'),(198,'Éric Toledano'),(199,'Alfred Hitchcock'),(200,'Ridley Scott'),(201,'Damien Chazelle'),(202,'Sergio Leone'),(203,'Anthony Russo'),(204,'Joe Russo'),(205,'Michael Curtiz'),(206,'Isao Takahata'),(207,'Francis Ford Coppola'),(208,'Sidney Lumet'),(209,'Quentin Tarantino'),(210,'Todd Phillips'),(211,'Christopher Nolan'),(212,'Irvin Kershner'),(213,'Peter Jackson'),(214,'Lana Wachowski'),(215,'Lilly Wachowski'),(216,'Milos Forman'),(217,'Martin Scorsese'),(218,'Akira Kurosawa'),(219,'David Fincher'),(220,'Fernando Meirelles'),(221,'Kátia Lund'),(222,'Roberto Benigni'),(223,'Jonathan Demme'),(224,'George Lucas'),(225,'Frank Capra'),(226,'Steven Spielberg'),(227,'Hayao Miyazaki'),(228,'Frank Darabont'),(229,'Luc Besson'),(230,'Masaki Kobayashi'),(231,'Bryan Singer'),(232,'Roger Allers'),(233,'Rob Minkoff'),(234,'Tony Kaye'),(235,'Robert Zemeckis'),(236,'Roman Polanski'),(237,'Charles Chaplin'),(238,'James Cameron'),(239,'Olivier Nakache'),(240,'Éric Toledano'),(241,'Alfred Hitchcock'),(242,'Ridley Scott'),(243,'Damien Chazelle'),(244,'Sergio Leone'),(245,'Anthony Russo'),(246,'Joe Russo'),(247,'Michael Curtiz'),(248,'Isao Takahata'),(249,'Francis Ford Coppola'),(250,'Sidney Lumet'),(251,'Quentin Tarantino'),(252,'Todd Phillips'),(253,'Christopher Nolan'),(254,'Irvin Kershner'),(255,'Peter Jackson'),(256,'Lana Wachowski'),(257,'Lilly Wachowski'),(258,'Milos Forman'),(259,'Martin Scorsese'),(260,'Akira Kurosawa'),(261,'David Fincher'),(262,'Fernando Meirelles'),(263,'Kátia Lund'),(264,'Roberto Benigni'),(265,'Jonathan Demme'),(266,'George Lucas'),(267,'Frank Capra'),(268,'Steven Spielberg'),(269,'Hayao Miyazaki'),(270,'Frank Darabont'),(271,'Luc Besson'),(272,'Masaki Kobayashi'),(273,'Bryan Singer'),(274,'Roger Allers'),(275,'Rob Minkoff'),(276,'Tony Kaye'),(277,'Robert Zemeckis'),(278,'Roman Polanski'),(279,'Charles Chaplin'),(280,'James Cameron'),(281,'Olivier Nakache'),(282,'Éric Toledano'),(283,'Alfred Hitchcock'),(284,'Ridley Scott'),(285,'Damien Chazelle'),(286,'Sergio Leone'),(287,'Anthony Russo'),(288,'Joe Russo'),(289,'Michael Curtiz'),(290,'Isao Takahata'),(291,'Francis Ford Coppola'),(292,'Sidney Lumet'),(293,'Quentin Tarantino'),(294,'Todd Phillips'),(295,'Christopher Nolan'),(296,'Irvin Kershner'),(297,'Peter Jackson'),(298,'Lana Wachowski'),(299,'Lilly Wachowski'),(300,'Milos Forman'),(301,'Martin Scorsese'),(302,'Akira Kurosawa'),(303,'David Fincher'),(304,'Fernando Meirelles'),(305,'Kátia Lund'),(306,'Roberto Benigni'),(307,'Jonathan Demme'),(308,'George Lucas'),(309,'Frank Capra'),(310,'Steven Spielberg'),(311,'Hayao Miyazaki'),(312,'Frank Darabont'),(313,'Luc Besson'),(314,'Masaki Kobayashi'),(315,'Bryan Singer'),(316,'Roger Allers'),(317,'Rob Minkoff'),(318,'Tony Kaye'),(319,'Robert Zemeckis'),(320,'Roman Polanski'),(321,'Charles Chaplin'),(322,'James Cameron'),(323,'Olivier Nakache'),(324,'Éric Toledano'),(325,'Alfred Hitchcock'),(326,'Ridley Scott'),(327,'Damien Chazelle'),(328,'Sergio Leone'),(329,'Anthony Russo'),(330,'Joe Russo'),(331,'Michael Curtiz'),(332,'Isao Takahata'),(333,'Francis Ford Coppola'),(334,'Sidney Lumet'),(335,'Quentin Tarantino'),(336,'Todd Phillips');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_to_movie`
--

DROP TABLE IF EXISTS `director_to_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director_to_movie` (
  `movie_id` int NOT NULL,
  `director_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`director_id`),
  KEY `director_id` (`director_id`),
  CONSTRAINT `director_to_movie_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `director_to_movie_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `director` (`director_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_to_movie`
--

LOCK TABLES `director_to_movie` WRITE;
/*!40000 ALTER TABLE `director_to_movie` DISABLE KEYS */;
INSERT INTO `director_to_movie` VALUES (4,1),(14,1),(32,1),(47,1),(15,2),(7,3),(12,3),(16,3),(17,4),(18,6),(19,7),(44,7),(20,8),(10,9),(21,9),(22,10),(23,12),(24,13),(25,14),(26,15),(6,16),(27,16),(28,17),(1,18),(29,18),(30,19),(31,20),(33,21),(34,22),(35,24),(13,25),(36,25),(37,26),(38,27),(43,27),(39,28),(40,29),(41,31),(42,32),(45,33),(9,34),(46,34),(48,35),(48,36),(49,37),(50,38),(2,39),(3,39),(5,40),(8,41),(11,42);
/*!40000 ALTER TABLE `director_to_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(64) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Action'),(2,'Comedy'),(3,'Crime'),(4,'Sci-Fi'),(5,'Romance'),(6,'Drama'),(7,'Thriller'),(8,'Western'),(9,'Horror'),(10,'Fantasy'),(11,'Documentary'),(12,'Animation'),(13,'Musical'),(14,'Biography'),(15,'Mystery'),(16,'Adventure'),(17,'Family'),(18,'War'),(19,'History'),(20,'Music'),(21,'Action'),(22,'Comedy'),(23,'Crime'),(24,'Sci-Fi'),(25,'Romance'),(26,'Drama'),(27,'Thriller'),(28,'Western'),(29,'Horror'),(30,'Fantasy'),(31,'Documentary'),(32,'Animation'),(33,'Musical'),(34,'Biography'),(35,'Mystery'),(36,'Adventure'),(37,'Family'),(38,'War'),(39,'History'),(40,'Music'),(41,'Action'),(42,'Comedy'),(43,'Crime'),(44,'Sci-Fi'),(45,'Romance'),(46,'Drama'),(47,'Thriller'),(48,'Western'),(49,'Horror'),(50,'Fantasy'),(51,'Documentary'),(52,'Animation'),(53,'Musical'),(54,'Biography'),(55,'Mystery'),(56,'Adventure'),(57,'Family'),(58,'War'),(59,'History'),(60,'Music'),(61,'Action'),(62,'Comedy'),(63,'Crime'),(64,'Sci-Fi'),(65,'Romance'),(66,'Drama'),(67,'Thriller'),(68,'Western'),(69,'Horror'),(70,'Fantasy'),(71,'Documentary'),(72,'Animation'),(73,'Musical'),(74,'Biography'),(75,'Mystery'),(76,'Adventure'),(77,'Family'),(78,'War'),(79,'History'),(80,'Music'),(81,'Action'),(82,'Comedy'),(83,'Crime'),(84,'Sci-Fi'),(85,'Romance'),(86,'Drama'),(87,'Thriller'),(88,'Western'),(89,'Horror'),(90,'Fantasy'),(91,'Documentary'),(92,'Animation'),(93,'Musical'),(94,'Biography'),(95,'Mystery'),(96,'Adventure'),(97,'Family'),(98,'War'),(99,'History'),(100,'Music'),(101,'Action'),(102,'Comedy'),(103,'Crime'),(104,'Sci-Fi'),(105,'Romance'),(106,'Drama'),(107,'Thriller'),(108,'Western'),(109,'Horror'),(110,'Fantasy'),(111,'Documentary'),(112,'Animation'),(113,'Musical'),(114,'Biography'),(115,'Mystery'),(116,'Adventure'),(117,'Family'),(118,'War'),(119,'History'),(120,'Music'),(121,'Action'),(122,'Comedy'),(123,'Crime'),(124,'Sci-Fi'),(125,'Romance'),(126,'Drama'),(127,'Thriller'),(128,'Western'),(129,'Horror'),(130,'Fantasy'),(131,'Documentary'),(132,'Animation'),(133,'Musical'),(134,'Biography'),(135,'Mystery'),(136,'Adventure'),(137,'Family'),(138,'War'),(139,'History'),(140,'Music'),(141,'Action'),(142,'Comedy'),(143,'Crime'),(144,'Sci-Fi'),(145,'Romance'),(146,'Drama'),(147,'Thriller'),(148,'Western'),(149,'Horror'),(150,'Fantasy'),(151,'Documentary'),(152,'Animation'),(153,'Musical'),(154,'Biography'),(155,'Mystery'),(156,'Adventure'),(157,'Family'),(158,'War'),(159,'History'),(160,'Music');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_to_movie`
--

DROP TABLE IF EXISTS `genre_to_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre_to_movie` (
  `movie_id` int NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`genre_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `genre_to_movie_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `genre_to_movie_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_to_movie`
--

LOCK TABLES `genre_to_movie` WRITE;
/*!40000 ALTER TABLE `genre_to_movie` DISABLE KEYS */;
INSERT INTO `genre_to_movie` VALUES (4,1),(7,1),(12,1),(14,1),(15,1),(16,1),(17,1),(20,1),(25,1),(30,1),(31,1),(39,1),(42,1),(48,1),(23,2),(36,2),(38,2),(40,2),(43,2),(2,3),(3,3),(4,3),(5,3),(8,3),(11,3),(19,3),(21,3),(22,3),(24,3),(29,3),(30,3),(33,3),(35,3),(44,3),(14,4),(17,4),(32,4),(36,4),(39,4),(47,4),(13,5),(23,5),(38,5),(43,5),(49,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(10,6),(11,6),(12,6),(13,6),(16,6),(18,6),(19,6),(20,6),(21,6),(22,6),(23,6),(24,6),(26,6),(27,6),(29,6),(30,6),(31,6),(32,6),(33,6),(34,6),(35,6),(37,6),(38,6),(40,6),(42,6),(43,6),(44,6),(45,6),(47,6),(48,6),(49,6),(50,6),(11,7),(24,7),(41,7),(44,7),(9,8),(46,8),(41,9),(15,10),(25,10),(26,10),(29,10),(28,12),(34,12),(50,12),(37,13),(6,14),(19,14),(37,14),(40,14),(21,15),(31,15),(33,15),(41,15),(47,15),(7,16),(9,16),(12,16),(14,16),(15,16),(16,16),(25,16),(28,16),(32,16),(34,16),(36,16),(42,16),(48,16),(26,17),(28,17),(27,18),(49,18),(50,18),(6,19),(45,20);
/*!40000 ALTER TABLE `genre_to_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(64) NOT NULL,
  `release_year` int NOT NULL,
  `imdb_rating` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'The Shawshank Redemption',1994,9.3),(2,'The Godfather',1972,9.2),(3,'The Godfather Part II',1974,9.0),(4,'The Dark Knight',2008,9.0),(5,'12 Angry Men',1957,9.0),(6,'Schindler\'s List',1993,9.0),(7,'The Lord of the Rings: The Return of the King',2003,9.0),(8,'Pulp Fiction',1994,8.9),(9,'The Good, the Bad and the Ugly',1966,8.8),(10,'Fight Club',1999,8.8),(11,'Joker',2019,8.4),(12,'The Lord of the Rings: The Fellowship of Ring',2001,8.8),(13,'Forrest Gump',1994,8.8),(14,'Inception',2010,8.8),(15,'Star Wars: Episode V - The Empire Strikes Back',1980,8.7),(16,'The Lord of the Rings: The Two Towers',2002,8.8),(17,'The Matrix',1999,8.7),(18,'One Flew Over the Cuckoo\'s Nest',1975,8.7),(19,'Goodfellas',1990,8.7),(20,'Seven Samurai',1954,8.6),(21,'Se7en',1995,8.6),(22,'City of God',2002,8.6),(23,'Life Is Beautiful',1997,8.6),(24,'The Silence of the Lambs',1991,8.6),(25,'Star Wars: Episode IV - A New Hope',1977,8.6),(26,'It\'s a Wonderful Life',1946,8.6),(27,'Saving Private Ryan',1998,8.6),(28,'Spirited Away',2001,8.6),(29,'The Green Mile',1999,8.6),(30,'Leon: The Professional',1994,8.5),(31,'Harakiri',1962,8.6),(32,'Interstellar',2014,8.7),(33,'The Usual Suspects',1995,8.5),(34,'The Lion King',1994,8.5),(35,'American History X',1998,8.5),(36,'Back to the Future',1985,8.5),(37,'The Pianist',2002,8.5),(38,'Modern Times',1936,8.5),(39,'Terminator 2: Judgment Day',1991,8.6),(40,'The Intouchables',2011,8.5),(41,'Psycho',1960,8.5),(42,'Gladiator',2000,8.5),(43,'City Lights',1931,8.5),(44,'The Departed',2006,8.5),(45,'Whiplash',2014,8.5),(46,'Once Upon a Time in the West',1968,8.5),(47,'The Prestige',2006,8.5),(48,'Avengers: Endgame',2019,8.4),(49,'Casablanca',1942,8.5),(50,'Grave of the Fireflies',1988,9.5);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (20,'jazzcort','tao@gmail.com','12345678'),(21,'ianwu0915','ianwu0915@gmail.com','1234');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_list`
--

DROP TABLE IF EXISTS `user_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_list` (
  `list_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `list_name` varchar(64) NOT NULL,
  PRIMARY KEY (`list_id`),
  UNIQUE KEY `user_id` (`user_id`,`list_name`),
  CONSTRAINT `user_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_list`
--

LOCK TABLES `user_list` WRITE;
/*!40000 ALTER TABLE `user_list` DISABLE KEYS */;
INSERT INTO `user_list` VALUES (12,20,'My Movie List'),(14,21,'My List'),(15,21,'My Top Movies');
/*!40000 ALTER TABLE `user_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_list_to_movie`
--

DROP TABLE IF EXISTS `user_list_to_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_list_to_movie` (
  `list_id` int NOT NULL,
  `movie_id` int NOT NULL,
  PRIMARY KEY (`list_id`,`movie_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `user_list_to_movie_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `user_list` (`list_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_list_to_movie_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_list_to_movie`
--

LOCK TABLES `user_list_to_movie` WRITE;
/*!40000 ALTER TABLE `user_list_to_movie` DISABLE KEYS */;
INSERT INTO `user_list_to_movie` VALUES (14,1),(14,5),(15,6),(15,7),(15,8),(14,12),(12,20),(12,21),(12,22);
/*!40000 ALTER TABLE `user_list_to_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'movie_mania'
--
/*!50003 DROP FUNCTION IF EXISTS `get_list_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_list_id`(p_user_id INT, p_list_name VARCHAR(64)) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE listId INT DEFAULT NULL;
    SELECT list_id INTO listId FROM user_list 
        WHERE user_id = p_user_id AND list_name = p_list_name;
    IF listId IS NULL THEN
        -- Handle the case where no list is found. You can set a default value or raise an error.
        SET listId = -1; -- Example: set to -1 or some other indicator
    END IF;
    RETURN listId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_movie_to_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_movie_to_list`(IN p_list_id INT, IN p_movie_id INT)
BEGIN
	DECLARE movieExists INT DEFAULT 0;

    SELECT COUNT(*)
    INTO movieExists
    FROM user_list_to_movie
    WHERE list_id = p_list_id AND movie_id = p_movie_id;
	IF movieExists = 0 THEN
        -- If the movie is not in the list, insert it
        INSERT INTO user_list_to_movie (list_id, movie_id) VALUES (p_list_id, p_movie_id);
    ELSE
		SELECT 'This movie already exists!';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_default_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_default_list`(IN p_user_id INT)
BEGIN
	DECLARE defaultListName VARCHAR(64);
	SET defaultListName = 'My List';
	INSERT INTO user_list (user_id, list_name) VALUES (p_user_id, defaultListName);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_new_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_new_list`(IN p_user_id INT, IN newListName VARCHAR(64))
BEGIN
	DECLARE listExists INT;
	SELECT COUNT(*) INTO listExists FROM user_list 
             WHERE user_id = p_user_id AND list_name = newListName;
	IF listExists = 0 THEN
    	INSERT INTO user_list (user_id, list_name) VALUES (p_user_id, newListName);
	ELSE
    	SELECT 'The name of the list already exists.';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_user`(IN p_user_name VARCHAR(64), IN p_email VARCHAR(64), IN p_password VARCHAR(64))
BEGIN
	DECLARE user_id INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- You can customize this error message
        SELECT 'Error: The username already exists or other SQL error occurred.' AS ErrorMessage;
    END;
	INSERT INTO user (username, email, password) VALUES (p_user_name, p_email, p_password);
    
    SELECT u.user_id into user_id FROM user u WHERE u.username = p_user_name;
    
    CALL create_default_list(user_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_list_safely` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_list_safely`(IN p_user_id INT, IN p_list_id INT)
BEGIN
	DECLARE remainingLists INT;
	SELECT COUNT(*) INTO remainingLists FROM user_list WHERE user_id = p_user_id;
 
	IF remainingLists > 1 THEN
    	DELETE FROM user_list WHERE user_id = p_user_id AND list_id = p_list_id;
	ELSE
    	SELECT 'At least one list should remain. Deletion not allowed.';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_movie_from_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_movie_from_list`(IN p_list_id INT, IN p_movie_id INT)
BEGIN
    	DELETE FROM user_list_to_movie WHERE list_id = p_list_id AND movie_id = p_movie_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_genres_from_movie_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_genres_from_movie_id`(IN p_movie_id INT)
BEGIN
	SELECT GROUP_CONCAT(g.genre_name SEPARATOR ', ') AS genre_list
    FROM genre_to_movie gtm
    JOIN genre g ON gtm.genre_id =g.genre_id
    WHERE gtm.movie_id = p_movie_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_movies_from_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_movies_from_list`(IN p_list_id INT)
BEGIN
	SELECT * 
    FROM movie m
    JOIN user_list_to_movie ulm ON m.movie_id = ulm.movie_id 
    WHERE ulm.list_id = p_list_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_size_from_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_size_from_list`(IN p_list_id INT)
BEGIN
	SELECT COUNT(*) AS sizeOfList FROM user_list_to_movie WHERE list_id = p_list_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchMovies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchMovies`(
    IN p_title VARCHAR(64),
    IN p_genre_name VARCHAR(64),
    IN p_release_year int,
    IN p_actor_name VARCHAR(64),
    IN p_director_name VARCHAR(64)
)
BEGIN
     SELECT DISTINCT m.*
    FROM movie m
    LEFT JOIN genre_to_movie gm ON m.movie_id = gm.movie_id
	LEFT JOIN genre g ON gm.genre_id = g.genre_id
    LEFT JOIN actor_to_movie am ON m.movie_id = am.movie_id
    LEFT JOIN actor a ON am.actor_id = a.actor_id
    LEFT JOIN director_to_movie dm ON m.movie_id = dm.movie_id
    LEFT JOIN director d ON dm.director_id = d.director_id
    WHERE (p_title IS NULL OR m.movie_title LIKE CONCAT('%', p_title, '%'))
		AND (p_genre_name IS NULL OR g.genre_name LIKE CONCAT('%', p_genre_name, '%'))
       AND (p_release_year IS NULL OR m.release_year = p_release_year)
       AND (p_actor_name IS NULL OR a.actor_name LIKE CONCAT('%', p_actor_name, '%'))
      AND (p_director_name IS NULL OR d.director_name LIKE CONCAT('%', p_director_name, '%'));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_list_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_list_name`(IN p_list_id INT, IN newListName VARCHAR(64))
BEGIN
    UPDATE user_list SET list_name = newListName WHERE list_id = p_list_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07 22:07:02
