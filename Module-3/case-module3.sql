-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlykhachhang
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Áo'),(2,'Quần'),(3,'Phụ kiện');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL,
  `name` varchar(45) NOT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `idType` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`idType`),
  CONSTRAINT `type` FOREIGN KEY (`idType`) REFERENCES `customer_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (167630018,'Garth Valdez','2006-01-20','huehfihgoi','ava2.png',1),(167636040,'Hedley Haley','1972-07-02',NULL,'coffee.JPG',1),(167642445,'Germane Sanchez','1995-09-09',NULL,'ava2.png',2),(167642451,'Reuben Valencia','2020-10-17',NULL,'ava3.jpg',2),(167642458,'Armando Palmer','2023-01-20',NULL,'ava2.png',2),(167642475,'Nevada Roberson','1973-12-12','Eveniet','ava2.png',2),(167642547,'Larissa Vazquez','1978-06-18','Magni aperi','coffee.JPG',1),(167642617,'Imelda Payne','2017-05-07','Voluptatem ','ava2.png',1),(167642639,'Veda Ware','2002-06-19','Et labore','coffee.JPG',2),(167642677,'Macey Grimes','2002-11-03','Dolorem','ava3.jpg',1),(167644341,'Rina Bray','1977-02-20','Commodi','ava3.jpg',2);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_type`
--

DROP TABLE IF EXISTS `customer_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_type` (
  `id` bigint NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_type`
--

LOCK TABLES `customer_type` WRITE;
/*!40000 ALTER TABLE `customer_type` DISABLE KEYS */;
INSERT INTO `customer_type` VALUES (1,'VIP'),(2,'NORMAL');
/*!40000 ALTER TABLE `customer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` bigint NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'Thuy','76890','Vietnam',354),(2,'Thuy Dang','35467','Vietnam',789);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productId` bigint NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `create_at` varchar(45) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `fk_category_idx` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Áo Polo Dáng Lửng',200,4,'Áo Polo Dáng Lửng','2023-02-13',1,'p1.png'),(2,'Áo Thun Ngắn Tay',200,6,'Áo Thun Ngắn Tay','2023-02-13',1,'p2.png'),(3,'Áo Thun Gân Dáng Ngắn',230,8,'Áo Thun Gân Dáng Ngắn','2023-02-13',1,'p3.png'),(4,'Áo Kiểu Không Tay In Họa Tiết',250,4,'Áo Kiểu Không Tay In Họa Tiết','2019-09-11',1,'p4.png'),(5,'Áo Nỉ Có Mũ Dài Tay',400,5,'Áo Nỉ Có Mũ Dài Tay','1978-01-14',1,'p5.png'),(6,'Áo Nỉ Cổ Tròn',390,7,'Áo Nỉ Cổ Tròn','1988-12-13',1,'p6.png'),(7,'Áo Khoác Dáng Ngắn',450,5,'Áo Khoác Dáng Ngắn','2023-02-14',1,'p7.png'),(8,'Áo Blouson Cotton',450,5,'Áo Blouson Cotton','2023-01-01',1,'p8.png'),(9,'Quần Smart Pants',400,10,'Quần Smart Pants','2023-02-14',2,'p9.png'),(10,'Quần Xếp Li Ống Rộng',350,12,'Quần Xếp Li Ống Rộng','2023-02-02',2,'p10.png'),(11,'Quần Váy Vải Vải Linen',250,13,'Quần Váy Vải','2023-02-14',2,'p11.png'),(12,'Quần Jean Lửng ',500,7,'Quần Jean Lửng ','2023-02-02',2,'p12.png'),(13,'Quần Xếp Li Ống Rộng',270,8,'Quần Xếp Li Ống Rộng','2023-02-14',2,'p13.png'),(14,'Quần Váy',290,7,'Quần Váy','2023-02-01',2,'p14.png'),(15,'Mũ Chống UV',500,9,'Mũ Chống UV','2023-02-01',3,'p15.png'),(16,'Túi Tote Canvas',400,10,'Túi Tote Canvas','2023-01-10',3,'p16.png'),(17,'Thắt Lưng Da',500,5,'Thắt Lưng Da','2023-02-01',3,'p17.png'),(18,'Sandal ',450,8,'Sandal ','2023-01-15',3,'p18.png'),(19,'Kính Mát ',400,7,'Kính Mát ','2023-02-10',3,'p19.png'),(20,'Túi Đeo Vai',400,9,'Túi Đeo Vai','2023-02-10',3,'p20.png'),(167662499,'Nero Langley',149,18,'Cillum harum modi ex','1986-05-12',3,'coffee.JPG');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'quanlykhachhang'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-18 14:34:18
