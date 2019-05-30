-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: 123
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `count`
--

DROP TABLE IF EXISTS `count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `count` (
  `idcount` int(11) NOT NULL,
  PRIMARY KEY (`idcount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `count`
--

LOCK TABLES `count` WRITE;
/*!40000 ALTER TABLE `count` DISABLE KEYS */;
/*!40000 ALTER TABLE `count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_shopping`
--

DROP TABLE IF EXISTS `list_shopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `list_shopping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `l_date` timestamp NOT NULL,
  `p_id` int(11) NOT NULL,
  `l_number` int(11) NOT NULL,
  `m_account` varchar(45) NOT NULL,
  `l_status` varchar(45) NOT NULL,
  `message` varchar(45) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `l_name` varchar(45) NOT NULL,
  `l_address` varchar(45) NOT NULL,
  `l_cellphone` varchar(45) NOT NULL,
  `delivery_time` varchar(45) NOT NULL,
  `l_idd` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_shopping`
--

LOCK TABLES `list_shopping` WRITE;
/*!40000 ALTER TABLE `list_shopping` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_shopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `m_account` int(11) NOT NULL,
  `m_password` varchar(45) NOT NULL,
  `m_name` varchar(45) NOT NULL,
  `m_address` varchar(45) NOT NULL,
  `m_Email` varchar(100) NOT NULL,
  `m_level` varchar(45) NOT NULL,
  `m_head` varchar(45) NOT NULL,
  `m_mobile` varchar(45) DEFAULT NULL,
  `m_tel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`m_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(45) NOT NULL,
  `p_category` varchar(45) NOT NULL,
  `p_stock` int(11) NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_picture` varchar(45) DEFAULT NULL,
  `p_text` varchar(45) NOT NULL,
  `p_long` varchar(45) NOT NULL,
  `p_hot` int(11) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1028 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1001,'濃郁的咖喱飯','dish',100,100,'0','0','0',0),(1002,'中華鮮肉餃子','dish',100,100,'0','0','0',0),(1003,'柴魚味增湯','dish',100,100,'0','0','0',0),(1004,'溫暖的關東煮','dish',100,100,'0','0','0',0),(1005,'溫暖的梅子粥','dish',100,100,'0','0','0',0),(1006,'茄汁蛋包飯','dish',100,100,'0','0','0',0),(1007,'三角玉飯糰','dish',100,100,'0','0','0',0),(1008,'細皮嫩肉棒','dish',100,100,'0','0','0',0),(1009,'霸王壽司','dish',100,100,'0','0','0',0),(1010,'濃郁起司披薩','dish',100,100,'0','0','0',0),(1011,'霸王豚骨拉麵','dish',100,100,'0','0','0',0),(1012,'巨屌飯糰','dish',100,100,'0','0','0',0),(1013,'冰玉涼麵','dish',100,100,'0','0','0',0),(1014,'紐西蘭鮮奶巧克力','desert',100,100,'0','0','0',0),(1015,'頂級巧克力餅乾','desert',100,100,'0','0','0',0),(1016,'黃金薑黃餅乾','desert',100,100,'0','0','0',0),(1017,'甜心甜甜圈','desert',100,100,'0','0','0',0),(1018,'蜂蜜鬆餅','desert',100,100,'0','0','0',0),(1019,'日式傳統麻糬','desert',100,100,'0','0','0',0),(1020,'好吃馬卡龍','desert',100,100,'0','0','0',0),(1021,'日式糰子','desert',100,100,'0','0','0',0),(1022,'日式仙貝','desert',100,100,'0','0','0',0),(1023,'少女聖代冰淇淋','desert',100,100,'0','0','0',0),(1024,'焦糖布丁','desert',100,100,'0','0','0',0),(1025,'極鮮水果蛋糕','desert',100,100,'0','0','0',0),(1026,'香草白冰淇淋','desert',100,100,'0','0','0',0),(1027,'日式紅豆鯛魚燒','desert',100,100,'0','0','0',0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shopping_cart` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(45) NOT NULL,
  `s_number` varchar(45) NOT NULL,
  `m_account` varchar(45) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-28 23:52:08
