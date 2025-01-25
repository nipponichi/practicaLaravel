-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: school_db
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_01_18_093633_create_students_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `students_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Mrs. Zoie Dickens','520.726.4471',NULL,'$2y$12$fWJrVzfA0U6sUSgUwXFF2eTQ6m8PIZ60dFlVr0GrziThtU.noQ6ui','reynold.emmerich@example.net','f'),(2,'Abigail Stark','1-541-713-1895',NULL,'$2y$12$0bzFeOmIrIB2RIwuhgGgl.GxogJU64pd5SSWNYNbHzMSYr/B6d.sC','kian.keebler@example.net','f'),(3,'Mr. Garrick Abbott','(385) 872-4914',52,'$2y$12$Abyu9qcNF.kxrL8uat4Sgeo0iq7vMm10UF/XTJi3.Vu/KPmpOBydy','hschmeler@example.org','f'),(4,'Augustus Friesen','+1-856-795-5577',NULL,'$2y$12$cJnluzXTJWaAGHKCH3ey2eTNIdbD/D0WnX0a6nWoe2CUK4FuApu4.','candice61@example.org','m'),(5,'Candace Pacocha','+19012598493',59,'$2y$12$rAVIUjeGQF3aGfE2il5eeeWAL4urNZnbuHKcn5eDb9Q/lc4Ma6iVm','briana.mann@example.net','f'),(6,'Lisa Trantow','+1 (220) 506-333',NULL,'$2y$12$B3tJ5ALj3ENvNX66HGiJA.P5qqsuLGwzyH/adEYd8V36clOqIt4Qa','omills@example.com','m'),(7,'Nelson Franecki','+1-409-884-1070',NULL,'$2y$12$pYqgYT6EAmzajJt.czKHx.dN47/5hrVi3BBQxbABNitt8Dc08hiYG','bogan.molly@example.org','m'),(8,'Mrs. Vesta Hodkiewicz Sr.','1-970-576-6276',42,'$2y$12$C7S3eVD463sexiY9/zPRmukxVV3EF1jVLGn//zpKSSL8aNoHwUxtq','trey.kohler@example.org','m'),(9,'Prof. Quentin Mills','516.629.9183',NULL,'$2y$12$jEHF3CxSJ4J1MoLzW8jLSOopUdMwYX.H6CvqEAu8ubxd8XXPX3uuS','jefferey.block@example.org','m'),(10,'Kendrick Lang','715-244-8689',NULL,'$2y$12$UW6MNpvB3GpWCwL5sPVkRuDskVGByRS23J5POKGyIGjq9BU/uQTY2','liza.hansen@example.org','f'),(11,'Corine Gislason','+1-559-490-0928',31,'$2y$12$ic2peXVYp7qzggFDPCNzTO1IHQqSuQjTpWyRLtQYqR3.ZDcyyHssG','ubahringer@example.org','f'),(12,'Bertrand Hahn','1-484-252-9619',30,'$2y$12$1WckglJHIosiuDeyVD6Na.tRoY/QYfWoQtWrzcL.R00LqcVDTWSlK','kade.jacobson@example.org','f'),(13,'Eldridge Abernathy','(202) 524-1446',NULL,'$2y$12$PYy.enDHpz93zq.VIiy4BOWrj87QHdJFCokqKTbiXgtYl4VpkpMi2','eliseo.morar@example.com','m'),(14,'Dr. Sedrick Rodriguez','1-260-241-4948',49,'$2y$12$hY/nGprLhZ.pEY9Nqq/M/.YMBypHaNJ6QL.1TQ1LLr9RDmMzcuT.2','sgulgowski@example.net','f'),(15,'Mac Dach','(929) 958-7453',NULL,'$2y$12$VcZzdNslT4cwpOyajXRtq.BzPNAtgdbwcKfXaZBQg3JFhY10iorSC','randy73@example.org','f'),(16,'Virginie McKenzie','1-539-665-2544',NULL,'$2y$12$a3B7sl9ofif0OiRHsLh4kut4XkzHovKOmydXUkIVygUeCgDYH92V2','urban42@example.com','f'),(17,'Libby Dach','(463) 369-3533',NULL,'$2y$12$QRTaE4NT5Zo/VuUrZmLZvuP41snRLfJdxJ6n6bGzEpGXu6xUq3z9q','wbradtke@example.com','m'),(18,'Wendy Treutel','1-224-891-7028',NULL,'$2y$12$oEABemcvoOs24.i8MitZm.ss8.09EcqupvG3o/Dt/1F0.FHIRY4q.','emiliano.steuber@example.net','f'),(19,'Alysa Zulauf','+1-334-619-2491',NULL,'$2y$12$7QOgr4P32KtwgTpzMCyTIurSbfgBIaR98YNIhC.NkYc9tDSl6Eg1y','sister.steuber@example.com','m'),(20,'Yvette Hansen DVM','+1 (361) 568-131',39,'$2y$12$NySKB7DIXvTfAB.K/MmDr.UsuxVOv5xrnJEtXiaIrEAzAsmeRDhci','oma.crist@example.com','m'),(21,'Macey Parker V','+1 (678) 553-084',NULL,'$2y$12$n.BkoZa/gjckkx/HF8ZgXuhAWcup4ERwRhQROvkQE3UVkdVJ5l.M.','tupton@example.org','f'),(22,'Dr. Alisa Moore I','661-644-6031',NULL,'$2y$12$dTmKqNB882pWObwye3cNSu1lUPMe7EuDSz2UwMZEIv.y2aLKykD6K','eloise.kulas@example.com','f'),(23,'Mina Zieme','+1-651-281-1605',59,'$2y$12$8KgDaIq4Aa64mrS.z1q3Dev1.rkk6MZ70w0uA.jy9/J51T05yVqeO','kenny43@example.org','m'),(24,'Dr. Viola Cassin DVM','1-531-566-0471',43,'$2y$12$0yEMspBDTNDBn20KmvxyvOruWMbEoNz/GRk8o9Vd/eK3ODhmtknWO','ppredovic@example.com','m'),(25,'Katarina Swift','801.934.9878',NULL,'$2y$12$IsDOKa0zojEWPUY5Uag/o.kSnJNOROzrrojIK3TQvHaBOk3pLkjPK','bergstrom.hazel@example.com','m'),(26,'Mr. Dane Jacobson IV','1-775-738-8054',NULL,'$2y$12$aMNBqyoL3E7m9e7CrZ3rhOkJsE3euEe6xxzk/0QFDIkwJTVti6H36','fwolff@example.org','f'),(27,'Prof. Dalton Kub','+1 (201) 284-945',34,'$2y$12$tA6rCwTPYcWHhGwqtuLJeOmHC3WSXy/Jb1OMkjiAlLhiJy07BhJGm','crooks.rocky@example.net','f'),(28,'Jesus Ferry III','1-240-260-6942',NULL,'$2y$12$/wFDXg0mdfrLvxEhSuDPROiXmNh95lUvPwRbr3WIeW6Z5tRhP9PWa','johnny05@example.org','f'),(29,'Frank Gislason','810-907-3799',NULL,'$2y$12$wLwL8p2YPnGrD.XJsCBUTeX/RJaQc.4DEcGAlWEqUUovU03fhubKa','femard@example.net','m'),(30,'Heloise Kemmer','973-913-8069',NULL,'$2y$12$KVvEpce3FK847kMeN9k5jeBbzSoUUgnhHgleiTUpgdEdtN8fGMM8a','domenick36@example.com','m'),(31,'Mrs. Izabella Pagac III','+1-406-869-4077',NULL,'$2y$12$YrVAD5xQxlvXDMu.3ZB6peW3B8c///2b0ptDrErPz5ynvLjJi/rwm','eichmann.omer@example.org','m'),(32,'Wilburn Nolan','+1.985.912.7861',23,'$2y$12$JD274XUWLPEpFSkGKf3tOuVBVnPQYxW3MwzVwXsNsPSHcIS6PDHaK','vanessa.price@example.net','m'),(33,'Myrna Abernathy','629-838-4669',NULL,'$2y$12$i56KlbFBaY2984g2TEkj1Ov6CnyjcYxuNTVKlyI1CB4.x9rgUF0Z.','willa.langworth@example.org','f'),(34,'Tamara Leffler','470-390-0818',NULL,'$2y$12$X18hXsfoRyGR9ilPSnNW7.77Z2Hs88a0KL1VAaDlsWtRHUr3S9mxK','estefania.ruecker@example.com','f'),(35,'Makenna Schaefer','1-347-375-6559',47,'$2y$12$z.3pljPrZae8NfrbWD27Q.eNsOUKIoIsMS073CxdoAkl2so0W/bb6','javier.larkin@example.net','f'),(36,'Kaley Flatley','+1-540-397-7572',NULL,'$2y$12$RFVnBBuYb2GEMd3uxatRauB84/3R0/bI1I95VebuEDlEKG89nhWFS','ottilie.zieme@example.net','f'),(37,'Prof. Jane Schinner I','1-986-230-7644',NULL,'$2y$12$SpIEr66WIF.vvUSY6KMYU.QOrhBwEPhG9nEjHl/G.YjTfLqh6xdWu','dereck.cassin@example.net','m'),(38,'Jamison Beer','(727) 885-7190',NULL,'$2y$12$CTQ.IfeQ.Q/558e7c8SP5eL8wnKXosvPHr9OW7KhEKPjE3BEt6b0q','cole.jace@example.com','f'),(39,'Danielle O\'Reilly','(208) 436-4106',NULL,'$2y$12$Nsrw09AN2ZKOjCoNoCkfWu.kDv1mvtiCTU1FfJCHyEvExOeo1ccoy','donnelly.tito@example.com','m'),(40,'Howard Sipes Sr.','+1 (318) 450-029',NULL,'$2y$12$OsnBezygJfy/oEvfis7b6O5TTvNEWiqLptuxXoMrr7lnVO1kuy3MW','ystracke@example.com','m'),(41,'Kelley Schmidt','1-720-998-3516',NULL,'$2y$12$qbXq5tFkIutLR8ZApYul7.Ep/jNpalM8N4WwVErcKOD39N3Qv4OH6','opal94@example.com','m'),(42,'Aniyah Tillman','+1-404-794-9354',NULL,'$2y$12$MyG66ZVFLk.WY.axOZjideWPZmHm6XJbO/pD1lfhorAUK41dnZ8KW','rpollich@example.com','f'),(43,'Dandre Kris DDS','+19069882288',32,'$2y$12$UcVVyeSwn6Q8X1NcUCNmAu3RoZlRqpD4i6lA6WNUJSg8zH6wbMqsi','kaylee46@example.com','m'),(44,'Etha Cremin','1-804-877-1497',NULL,'$2y$12$kD91NU8C.otOjSNIMGvLu.JAyrKjTd/K.bPImrdufXIriKkI1O13O','tcummerata@example.net','m'),(45,'Verna Terry','+1 (808) 417-439',NULL,'$2y$12$oIczFLVXM9yzcuBjQsXyW.yexstvgQTrBjiutb7X4a22VMv6MFx1m','botsford.ervin@example.org','m'),(46,'Miss Ana Robel','575-781-1953',40,'$2y$12$X4WA/Z8PgcJfW6VlOLZDAuUxyywSFJclszeHxgeNCXptdzwdSGfyq','casper.jayne@example.net','f'),(47,'Rosamond Raynor','+1-408-242-7143',56,'$2y$12$ENg7t.5AE3Fb89UfZXP6reSpgclOJnx7fROwD9qutr1K4DjLEZCD2','marvin.ethyl@example.net','f'),(48,'Celestino Koepp Sr.','854.498.6688',50,'$2y$12$jAJP5xaJe72KrhQ8LeVHle5Ekq.OZD9Pv31nj9xE3Zbo/XrLWa2Ny','qkris@example.com','m'),(49,'Eladio Hartmann','(616) 581-7785',39,'$2y$12$R1n/HYmBiHtRLENDHcQyN.j4avGOoPZdrH2utqCpk699oHmFj36Nm','hassan.terry@example.net','f'),(50,'Ms. Frederique Williamson','754-207-7574',NULL,'$2y$12$h2f9KCX29WlEJcN3ow9vseVqBtEM7uST3eac05yyRnP1ZUT7BPxny','shayne.hagenes@example.net','m');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2025-01-25  9:48:57
