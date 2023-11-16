-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: gitmingle_vam
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `f_name` varchar(75) DEFAULT NULL,
  `l_name` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `github_url` varchar(110) DEFAULT NULL,
  `position_title` varchar(75) DEFAULT NULL,
  `user_languages` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jihn','Doe','JihnDoe@x.com','https://github.com/JihnDoe','Full Stack Developer','JavaScript Python CSharp TypeScript Swift HTML5 Ruby','$2b$12$LpgeuIKB8JNs5Ph/jrPqrOhT69fEqSKwcl/dhOGdyojvvgG.uyIyS','2023-11-15 17:08:30','2023-11-16 06:33:58'),(2,'Ella','Doe','EllaDoe@x.com','https://github.com/EllaDoe','Mobile App Developer','Python PHP Swift Go R Perl Rust Groovy HTML5 CPlusPlus Ruby','$2b$12$w9mUEjitDFdibp/lqhRnZeNPBjRHtPrFp8pIMpJLh1zFVq820AYUK','2023-11-15 17:09:25','2023-11-16 06:38:40'),(3,'John','Doe','JohnDoe@x.com','https://github.com/JohnDoe','Back-end Developer','JavaScript Python HTML5 MySQL','$2b$12$ZaFzSNWDkuqbnJwqRGW60uI1NEyKYa/AZYBrgoHzJK4G72upZ513S','2023-11-13 11:40:46','2023-11-16 06:39:42'),(4,'Jane','Doe','JaneDoe@x.com','https://github.com/JaneDoe','Full Stack Developer','JavaScript Python Java PHP Swift','$2b$12$Owx.9SISNa4cIMIts5qUv.ME82cE4LSJuKc0f1/BwSAkvjcw01CuG','2023-11-13 13:31:54','2023-11-16 06:32:58'),(5,'Jim','Doe','JimDoe@x.com','https://github.com/JimDoe','Database Administrator','Java CSharp Swift Perl Ruby MySQL','$2b$12$x3xUxMY1gKBJ0rzYtNTzmOETkICzxe9EnbqniuEez5cw6fl3OTpS6','2023-11-13 13:46:45','2023-11-16 06:40:07'),(6,'Jean','Doe','JeanDoe@x.com','https://github.com/JeanDoe','DevOps Engineer','JavaScript CSharp PHP Go Kotlin Perl Rust MySQL','$2b$12$a8k1UM10Y4oNoRUqcLZVke0ddkWSLjuheLOA9afLeJeBXwfQyFmXi','2023-11-13 13:49:30','2023-11-16 06:37:46'),(7,'King','Doe','KingDoe@x.com','https://github.com/KingDoe','Back-end Developer','HTML5 CSS3 Bootstrap Python Flask MySQL','$2b$12$HWctKjgKb/OCVoPY8O5vXOWdjE/lzd1DRo9xZ.zOZpf/QdGM0X22a','2023-11-13 13:50:11','2023-11-16 06:48:08'),(8,'Paul','Doe','PaulDoe@x.com','https://github.com/PaulDoe','Full Stack Developer','HTML5 CSS3 Bootstrap Python Flask MySQL','$2b$12$.mZB02jEvUw5YQYtQz9x9eZPJRDaP3UfXRVlmf38YMjRXJedJfZhm','2023-11-13 19:46:19','2023-11-16 06:48:08'),(9,'Grace','Doe','GraceDoe@x.com','https://github.com/GraceDoe','Network Engineer','JavaScript CSharp Swift Kotlin MATLAB HTML5','$2b$12$GSCWYCrne/s71yxVpe5iauqYC.brkjEmiatiyrGRKeJguyK.pc7YK','2023-11-14 05:17:29','2023-11-16 06:37:06'),(10,'Lucy','Doe','LucyDoe@x.com','https://github.com/LucyDoe','Data Scientist','HTML5 CSS3 Bootstrap Python Flask MySQL','$2b$12$7OjlJKUdVEbyXUadEo9.u.tEvcY02j1PB0s5lvTT7m7HKZ2cEHTqS','2023-11-14 05:18:28','2023-11-16 06:48:08'),(11,'Max','Doe','MaxDoe@x.com','https://github.com/MaxDoe','Project Manager','HTML5 CSS3 Bootstrap Python Flask MySQL','$2b$12$6P83vNucdWXTau7Dvaj1AeRcw6yL8ZT4Lzknv14m1sknguW/jf3Kq','2023-11-14 05:19:16','2023-11-16 06:48:08'),(12,'Seth','Doe','SethDoe@x.com','https://github.com/SethDoe','Network Engineer','HTML5 CSS3 Bootstrap Python Flask MySQL','$2b$12$xgfRexsAxENL5QowhWJP9O0NWDVSBGV5W/V4pVRQilygsVnkcapPa','2023-11-14 05:20:11','2023-11-16 06:48:08'),(13,'Rosie','Doe','RosieDoe@x.com','https://github.com/RosieDoe','Database Administrator','HTML5 CSS3 Bootstrap Python Flask MySQL','$2b$12$JDFejDmlW8SziKNq2VWAmOT68Q/pH84tL/oz31/v8pA4zFlztqRq6','2023-11-14 05:21:09','2023-11-16 06:48:08'),(14,'Ryan','Doe','RyanDoe@x.com','https://github.com/RyanDoe','DevOps Engineer','HTML5 CSS3 Bootstrap Python Flask MySQL','$2b$12$Jkv0zi9kehuuAN6svm/WWeKC0AqXQqeCtChon1nEnV/Do6CM.YHuC','2023-11-14 05:21:59','2023-11-16 06:48:08'),(15,'Mia','Doe','MiaDoe@x.com','https://github.com/MiaDoe','Data Scientist','HTML5 CSS3 Bootstrap Python Flask MySQL','$2b$12$GPO12atXwZPiYYV801C8JuHD3CowZ61d.LNybe/9Zq1RxKlO9HBFm','2023-11-16 06:04:39','2023-11-16 06:48:08');
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

-- Dump completed on 2023-11-16 10:31:40
