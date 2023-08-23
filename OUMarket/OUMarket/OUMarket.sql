-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: oumarket
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `chinhanh`
--

DROP TABLE IF EXISTS `chinhanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chinhanh` (
  `id` int NOT NULL,
  `tenchinhanh` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `diachi` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chinhanh`
--

LOCK TABLES `chinhanh` WRITE;
/*!40000 ALTER TABLE `chinhanh` DISABLE KEYS */;
INSERT INTO `chinhanh` VALUES (1,'azzzzz','axxxxx'),(2,'Q5','Q3');
/*!40000 ALTER TABLE `chinhanh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitiet_hoadon`
--

DROP TABLE IF EXISTS `chitiet_hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiet_hoadon` (
  `soluong` float NOT NULL,
  `dongia` int NOT NULL,
  `hanghoa_id` int NOT NULL,
  `hoadon_id` int NOT NULL,
  PRIMARY KEY (`hanghoa_id`,`hoadon_id`),
  KEY `hoadon_id_idx` (`hoadon_id`),
  CONSTRAINT `hanghoa_id` FOREIGN KEY (`hanghoa_id`) REFERENCES `hanghoa` (`id`),
  CONSTRAINT `hoadon_id` FOREIGN KEY (`hoadon_id`) REFERENCES `hoadon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiet_hoadon`
--

LOCK TABLES `chitiet_hoadon` WRITE;
/*!40000 ALTER TABLE `chitiet_hoadon` DISABLE KEYS */;
INSERT INTO `chitiet_hoadon` VALUES (25,50000,1,1),(1,50000,1,2),(2,30000,2,3),(2,30000,2,4);
/*!40000 ALTER TABLE `chitiet_hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chucvu`
--

DROP TABLE IF EXISTS `chucvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chucvu` (
  `id` int NOT NULL,
  `tenchucvu` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chucvu`
--

LOCK TABLES `chucvu` WRITE;
/*!40000 ALTER TABLE `chucvu` DISABLE KEYS */;
INSERT INTO `chucvu` VALUES (1,'Quản lý'),(2,'Nhân viên');
/*!40000 ALTER TABLE `chucvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hanghoa`
--

DROP TABLE IF EXISTS `hanghoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hanghoa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenhanghoa` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `xuatxu` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dongia` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hanghoa`
--

LOCK TABLES `hanghoa` WRITE;
/*!40000 ALTER TABLE `hanghoa` DISABLE KEYS */;
INSERT INTO `hanghoa` VALUES (1,'Trà lipton','Nghệ An',50000),(2,'Trà lipton','Hà Tĩnh',53000),(3,'Milo','VN',25000);
/*!40000 ALTER TABLE `hanghoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hanghoa_thuoc_chinhanh`
--

DROP TABLE IF EXISTS `hanghoa_thuoc_chinhanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hanghoa_thuoc_chinhanh` (
  `hanghoa_id` int NOT NULL,
  `chinhanh_id` int NOT NULL,
  `soluong` float DEFAULT NULL,
  PRIMARY KEY (`hanghoa_id`,`chinhanh_id`),
  KEY `idchinhanh_idx` (`chinhanh_id`),
  CONSTRAINT `idchinhanh` FOREIGN KEY (`chinhanh_id`) REFERENCES `chinhanh` (`id`),
  CONSTRAINT `idhanghoa` FOREIGN KEY (`hanghoa_id`) REFERENCES `hanghoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hanghoa_thuoc_chinhanh`
--

LOCK TABLES `hanghoa_thuoc_chinhanh` WRITE;
/*!40000 ALTER TABLE `hanghoa_thuoc_chinhanh` DISABLE KEYS */;
/*!40000 ALTER TABLE `hanghoa_thuoc_chinhanh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `id` int NOT NULL,
  `ngayxuat` datetime DEFAULT NULL,
  `nhanvien_id` int DEFAULT NULL,
  `khachhang_id` int DEFAULT NULL,
  `chinhanh_id` int DEFAULT NULL,
  `tiennhan` int DEFAULT NULL,
  `giatricuoi` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `khachhang_id_idx` (`khachhang_id`),
  KEY `fk_chinhanh_idx` (`chinhanh_id`),
  KEY `nhanvien_ID_idx` (`nhanvien_id`),
  CONSTRAINT `fk_chinhanh` FOREIGN KEY (`chinhanh_id`) REFERENCES `chinhanh` (`id`),
  CONSTRAINT `khachhang_id` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`),
  CONSTRAINT `nhanvien_ID` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (1,'2022-04-25 00:00:00',3,3,1,1500000,1125000),(2,'2022-04-25 00:00:00',3,1,1,100000,50000),(3,'2022-04-25 00:00:00',3,2,2,100000,60000),(4,'2022-04-25 00:00:00',3,2,2,100000,60000);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `id` int NOT NULL,
  `tenkhachhang` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ngaythamgia` datetime NOT NULL,
  `sodienthoai` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cmnd` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'An','2022-04-22 00:00:00','333','331','2001-01-01'),(2,'Ly','2022-04-21 00:00:00','023','021','2001-04-27'),(3,'Huy','2022-04-21 00:00:00','112','100','2001-04-25');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khuyenmai`
--

DROP TABLE IF EXISTS `khuyenmai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khuyenmai` (
  `hanghoa_id` int NOT NULL,
  `ngaybatdau` datetime NOT NULL,
  `ngayketthuc` datetime DEFAULT NULL,
  `giakhuyenmai` int DEFAULT NULL,
  PRIMARY KEY (`hanghoa_id`,`ngaybatdau`),
  CONSTRAINT `` FOREIGN KEY (`hanghoa_id`) REFERENCES `hanghoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khuyenmai`
--

LOCK TABLES `khuyenmai` WRITE;
/*!40000 ALTER TABLE `khuyenmai` DISABLE KEYS */;
INSERT INTO `khuyenmai` VALUES (2,'2022-03-29 00:00:00','2022-04-02 00:00:00',30000);
/*!40000 ALTER TABLE `khuyenmai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginuser`
--

DROP TABLE IF EXISTS `loginuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginuser` (
  `id` int NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pass` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginuser`
--

LOCK TABLES `loginuser` WRITE;
/*!40000 ALTER TABLE `loginuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `id` int NOT NULL,
  `hoten` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL,
  `sodienthoai` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cmnd` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `chucvu_id` int NOT NULL,
  `chinhanh_id` int NOT NULL,
  `tienluong` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chinhanh_id_idx` (`chinhanh_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `chucvu_id_idx` (`chucvu_id`),
  CONSTRAINT `chinhanh_id` FOREIGN KEY (`chinhanh_id`) REFERENCES `chinhanh` (`id`),
  CONSTRAINT `chucvu_id` FOREIGN KEY (`chucvu_id`) REFERENCES `chucvu` (`id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'An','2022-04-22','2022-04-22','11121','1112',1,1,222333,1),(2,'Tú','2022-04-22','2022-04-22','331','647',1,1,433,2),(3,'Ly','2022-03-28','2022-04-22','223','6934',1,1,221,3),(4,'Bảo','2022-03-27','2022-04-02','331','225',1,1,222,1),(5,'hòa','2022-03-27','2022-04-02','331','225',1,1,222,1),(6,'Vỹ','2022-03-27','2022-04-02','331','225',1,1,222,1);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `userrole_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userrole_id_idx` (`userrole_id`),
  CONSTRAINT `userrole_id` FOREIGN KEY (`userrole_id`) REFERENCES `chucvu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin1','admin123',1),(2,'seller1','seller123',2),(3,'1','1',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-25 22:19:56
