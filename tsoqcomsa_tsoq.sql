-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: tsoqcomsa_tsoq
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES (1,'الاطعمه','[\"التموينات\", \"القهوة ومستلزماتها\", \"الشاي ومستلزماته\", \"العسل\", \"التمور\", \"الاسماك واللحوم\", \"الخضار والفواكة\", \"المكسرات والعطارة\", \"الحلويات\", \"المياة ومرطبات\", \"المنتجات الصحية و العضوية\", \"الزعفران وملحقاته\", \"اشتراكات الوجبات\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(2,'العطورات','[\"عطور\", \"عود و بخور\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(3,'أزياء ومجوهرات','[\"ملابس وأحذية و حقائب\", \"مجوهرات واكسسورات\", \"ساعات\", \"نظارات\", \"عبايات\", \"مفارش صلاة\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(4,'عناية وتجميل','[\"مستحضرات التجميل\", \"منتجات العناية الشخصية\", \"العدسات اللاصقة\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(5,'إلكترونيات','[\"الهواتف الذكية و ملحقاتها\", \"أجهزة محمولة و ملحقاتها\", \"أجهزة كهربائية و ملحقاتها\", \"الكاميرات ومستلزمات و التصوير\", \"كاميرات المراقبة\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(6,'هدايا وحفلات','[\"هدايا وحفلات\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(7,'مستلزمات مكتبية وقرطاسية','[\"مستلزمات مكتبية وقرطاسية\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(8,'الصحة والعلاج','[\"الصيدلية\", \"المكملات الغذائية\", \"مستلزمات الصحة والرياضة\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(9,'احتياجات المنزل و الحدائق','[\"مستلزمات النوم\", \"مستلزمات المطبخ\", \"مسلتزمات التنظيف\", \"الأثاث\", \"مستلزمات الزراعة والمشاتل\", \"مستلزمات السباكة والكهرباء\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(10,'الرياضة والألعاب والتخييم','[\"المستلزمات الرياضية\", \"الألعاب\", \"مستلزمات الرحلات والتخييم\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(11,'مستلزمات حيوانات اليفة','[\"مستلزمات حيوانات اليفة\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(12,'المركبات','[\"السيارات ومستلزماتها\", \"الدراجات النارية ومستلزماتها\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(13,'ثقافة و فنون','[\"الكتب\", \"اللوحات\", \"الأدوات الموسيقية\", \"حياكة وحرف يدوية\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(14,'الخدمات','[\"خدمات عامة\", \"جمعيات خيرية و أوقاف\", \"جمعيات خيريه - مبادرة تبرع\", \"خدمات و منتجات رقمية\", \"خدمات استشارية و تدريب\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(15,'الأندية الرياضية','[\"الأندية الرياضية\"]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(16,'اخرى',NULL,'2024-08-01 21:42:14','2024-08-01 21:42:14');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_plan_features`
--

DROP TABLE IF EXISTS `additional_plan_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `additional_plan_features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` date NOT NULL,
  `end_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_plan_features`
--

LOCK TABLES `additional_plan_features` WRITE;
/*!40000 ALTER TABLE `additional_plan_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_plan_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES (1,1,'{\"ar\":\"الرياض\",\"en\":\"Reyadg\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(2,1,'{\"ar\":\"جدة\",\"en\":\"Jeddah\"}','2024-08-01 21:42:14','2024-08-01 21:42:14');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_system_histories`
--

DROP TABLE IF EXISTS `coin_system_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coin_system_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `number_of_coins` int NOT NULL,
  `tenant_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `currency` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_system_histories`
--

LOCK TABLES `coin_system_histories` WRITE;
/*!40000 ALTER TABLE `coin_system_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_system_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_systems`
--

DROP TABLE IF EXISTS `coin_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coin_systems` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `every_point_equal_in_sar` double(8,2) NOT NULL DEFAULT '0.20',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_systems`
--

LOCK TABLES `coin_systems` WRITE;
/*!40000 ALTER TABLE `coin_systems` DISABLE KEYS */;
INSERT INTO `coin_systems` (`id`, `every_point_equal_in_sar`, `created_at`, `updated_at`) VALUES (1,0.20,'2024-08-01 21:42:14','2024-08-01 21:42:14');
/*!40000 ALTER TABLE `coin_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (1,'{\"ar\":\"السعودية\",\"en\":\"Saudi Arabia\"}','2024-08-01 21:42:14','2024-08-01 21:42:14');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domains`
--

DROP TABLE IF EXISTS `domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domains` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domains_domain_unique` (`domain`),
  KEY `domains_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `domains_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domains`
--

LOCK TABLES `domains` WRITE;
/*!40000 ALTER TABLE `domains` DISABLE KEYS */;
INSERT INTO `domains` (`id`, `domain`, `tenant_id`, `created_at`, `updated_at`) VALUES (1,'dev','dev','2024-08-01 21:42:15','2024-08-01 21:42:15'),(2,'tsoq','tsoq','2024-08-05 17:01:24','2024-08-05 17:01:24');
/*!40000 ALTER TABLE `domains` ENABLE KEYS */;
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
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  KEY `media_order_column_index` (`order_column`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (1,'App\\Models\\Plugin',1,'108edd14-f94a-40bf-a54b-542d3532d55f','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(2,'App\\Models\\Plugin',1,'ca0e24e3-9907-4eae-991e-fbb1dd3483d4','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(3,'App\\Models\\Plugin',1,'8a9a867e-77ee-475b-932d-c70ae642c8c5','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(4,'App\\Models\\Plugin',2,'31b58d86-b09b-47db-9f79-c8c7ba2d93a2','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(5,'App\\Models\\Plugin',2,'88615120-a056-44e7-9b71-f6e0d5173b10','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(6,'App\\Models\\Plugin',2,'67c6b875-2ab4-4bbc-99b9-714f15b73108','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(7,'App\\Models\\Plugin',3,'27971ec2-915f-4930-a845-c9e1bc9ff5b5','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(8,'App\\Models\\Plugin',3,'56ce9ba7-b9ec-46ab-9d24-3938c11b7893','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(9,'App\\Models\\Plugin',3,'4ab82c9d-d81e-427f-8400-4a2b8975c70f','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(10,'App\\Models\\Plugin',4,'a0d4fdce-2b6c-4c2b-8e2a-f26716712c1d','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(11,'App\\Models\\Plugin',4,'06b43f05-6c8d-45ce-8f9d-852c751f3ed6','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(12,'App\\Models\\Plugin',4,'f059f061-9512-490a-b3c5-d5884880dcae','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(13,'App\\Models\\Plugin',5,'c815998a-a87a-4a55-9e8d-057c62d2dd3d','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(14,'App\\Models\\Plugin',5,'9d778505-912d-4fab-9ec7-c6bcc90c8c22','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(15,'App\\Models\\Plugin',5,'061899a6-cf46-48a6-87df-3c677dcf306a','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(16,'App\\Models\\Plugin',6,'ec91cc66-3a54-472e-aca2-ac46338eac82','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(17,'App\\Models\\Plugin',6,'a714e3e0-cdde-4b02-9d92-acd1cd299ee7','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(18,'App\\Models\\Plugin',6,'b8d710f8-3020-4ea2-b926-bd1cd42dedbd','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(19,'App\\Models\\Plugin',7,'970f4af8-4ed5-4f96-b9ba-bc793bf64cf4','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(20,'App\\Models\\Plugin',7,'59765171-896f-44e4-99bd-4d71cdda6efd','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(21,'App\\Models\\Plugin',7,'142e8fa9-73a9-425e-b747-47922aec4e18','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(22,'App\\Models\\Plugin',8,'ec237c21-313a-40d8-b548-34ed72ba9d88','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(23,'App\\Models\\Plugin',8,'4a553b2e-980f-4adc-bcea-ca337ec33801','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(24,'App\\Models\\Plugin',8,'d3a252a1-a4a6-4ed5-b039-c80db3af80c4','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(25,'App\\Models\\Plugin',9,'7a8ee4a7-ff8c-4609-ade2-793d662f02b2','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(26,'App\\Models\\Plugin',9,'b4b60262-cf04-4a03-bb6b-983fcdcf78d4','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(27,'App\\Models\\Plugin',9,'99e6df9a-58ee-4bda-9a0b-6c6af9c4ef94','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(28,'App\\Models\\Plugin',10,'242737ae-49df-40e8-a31c-61bf3ba3b758','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(29,'App\\Models\\Plugin',10,'657337dc-6a98-499f-a239-e43fe7ecad31','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(30,'App\\Models\\Plugin',10,'ebe05c24-16d8-4f44-b6fd-971e0a1e667a','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(31,'App\\Models\\Plugin',11,'ae1cb6d9-74e3-400d-a038-559ea64d9c66','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(32,'App\\Models\\Plugin',11,'b509d702-f849-4155-ad56-a7173ee0233d','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(33,'App\\Models\\Plugin',11,'bf9d5c4c-d104-456a-b779-087b984e3aa0','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(34,'App\\Models\\Plugin',12,'549e4716-8124-4e39-a82e-863e7b836a71','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(35,'App\\Models\\Plugin',12,'86eb5d23-3c11-49e8-972f-1429b6dfb156','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(36,'App\\Models\\Plugin',12,'2c778539-4710-46f4-a2bb-6c925b8b51da','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(37,'App\\Models\\Plugin',13,'195b1959-42c7-402e-a857-064f9e0da0e9','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(38,'App\\Models\\Plugin',13,'3dcefa53-1d8d-44f4-8016-a63a778f0401','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(39,'App\\Models\\Plugin',13,'786c2242-36ad-4984-93be-26b9288e32d7','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(40,'App\\Models\\Plugin',14,'0ecd4fcd-f775-4a7c-a754-ecfb5b80b751','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(41,'App\\Models\\Plugin',14,'3067685f-16f1-4a40-a998-168cfd3cd3ac','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(42,'App\\Models\\Plugin',14,'20524795-d6ec-4ed6-a168-93b31a40d68c','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(43,'App\\Models\\Plugin',15,'14549a6f-345d-4c62-9962-0ce6819692fb','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(44,'App\\Models\\Plugin',15,'be160e86-9ac2-488b-bb2b-985957707ea2','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(45,'App\\Models\\Plugin',15,'882a70a3-7748-429e-b1bd-9e590f47fc9b','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(46,'App\\Models\\Plugin',16,'246ed3ef-e773-4633-87d9-062a51c1e9c2','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(47,'App\\Models\\Plugin',16,'3094f40b-2212-435c-a655-04f2fe3a2786','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(48,'App\\Models\\Plugin',16,'a32c81ad-c251-4770-9187-70767d79e78d','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(49,'App\\Models\\Plugin',17,'7920883c-d8ad-4010-88ff-93b54ecf9aed','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(50,'App\\Models\\Plugin',17,'1e403386-16d1-4e92-a5f0-457eb9302e8b','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(51,'App\\Models\\Plugin',17,'b998f883-afa8-4204-8b66-215bbff4a5fa','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(52,'App\\Models\\Plugin',18,'0c139c1e-348d-4fda-81ac-e9ab1d851f09','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(53,'App\\Models\\Plugin',18,'15060058-1ecc-4fed-ba39-5a3094d7336d','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(54,'App\\Models\\Plugin',18,'1cb1d9bd-e4bc-4c09-8b8e-928a9eb2ccf8','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(55,'App\\Models\\Plugin',19,'cfc667bf-6e27-4c28-ace4-834a932da488','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(56,'App\\Models\\Plugin',19,'ad03a89b-7504-485f-80eb-f3d60e2e07c0','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(57,'App\\Models\\Plugin',19,'d8c1b65d-2426-4ee2-92a7-31c3b4fb2709','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(58,'App\\Models\\Plugin',20,'6cd6c8c1-aab0-490c-b2c2-ac0d26b6c15b','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(59,'App\\Models\\Plugin',20,'bd80ab98-8c3f-49ba-99b2-a540f35cb1f7','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(60,'App\\Models\\Plugin',20,'ab7fe64c-6f75-4033-af3d-f785323b1c91','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(61,'App\\Models\\Plugin',21,'951434c1-9811-42bf-917b-300d040ebe9b','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(62,'App\\Models\\Plugin',21,'26fc2c4b-df6b-4ab1-8032-c7f96c7f3644','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(63,'App\\Models\\Plugin',21,'e44bf317-b30e-4b0c-8be2-cf1547b443c4','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(64,'App\\Models\\Plugin',22,'e9744cfa-2d30-4ab9-b178-4f074f20f2e6','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(65,'App\\Models\\Plugin',22,'71cc1b10-e76c-4029-bb31-52fb555ac502','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(66,'App\\Models\\Plugin',22,'2827ef7d-fc4d-40aa-b50a-a1ac78175cca','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(67,'App\\Models\\Plugin',23,'1f6adc02-321d-4483-95d4-20f1ad00507b','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(68,'App\\Models\\Plugin',23,'afbd10bd-6a67-4694-a250-96b07dce6334','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(69,'App\\Models\\Plugin',23,'2b1ee6ad-1077-40fd-9a6f-9b98147452a0','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(70,'App\\Models\\Plugin',24,'95cb6e60-9f3b-48df-a076-83a920e78c8c','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(71,'App\\Models\\Plugin',24,'ba3c4150-402e-4274-96bc-6e5b51c194bc','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(72,'App\\Models\\Plugin',24,'c6297c2e-9c80-4ce3-9ed2-aa4c0e8aa6a9','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(73,'App\\Models\\Plugin',25,'6b36498f-7eb4-4c7e-aa9e-cea23009b8ba','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(74,'App\\Models\\Plugin',25,'80b60e1f-c0e2-4613-a3ed-7f40ef65ee45','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(75,'App\\Models\\Plugin',25,'3d8cca0e-ff9c-42a9-bfd2-bb5f2f880129','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(76,'App\\Models\\Plugin',26,'17da1c29-9c51-435d-af3f-a06861007a71','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(77,'App\\Models\\Plugin',26,'7e6771d9-4f5a-467a-bad5-bb1774ca4368','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(78,'App\\Models\\Plugin',26,'58f37a2b-382a-4dd8-82fd-39b2fc60253d','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(79,'App\\Models\\Plugin',27,'fb9c2001-b75f-4c8e-b450-26a490a0aae5','image','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(80,'App\\Models\\Plugin',27,'f5f5ae39-b855-408e-92a4-b249a9c1bf4c','cover','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(81,'App\\Models\\Plugin',27,'3cb8cf85-fffb-42fe-9ed7-84a5012c343c','sliders','download','download.jfif','image/jpeg','public','public',3190,'[]','[]','[]','[]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_09_15_000010_create_tenants_table',1),(5,'2019_09_15_000020_create_domains_table',1),(6,'2019_12_14_000001_create_personal_access_tokens_table',1),(7,'2024_04_01_214051_create_media_table',1),(8,'2024_04_02_004540_create_store_owners_table',1),(9,'2024_06_21_144431_create_countries_table',1),(10,'2024_06_21_144437_create_cities_table',1),(11,'2024_06_24_213041_create_socialite_new_tenant_data_table',1),(12,'2024_06_29_215951_create_plugin_categories_table',1),(13,'2024_06_30_215935_create_plugins_table',1),(14,'2024_06_30_220022_create_plugin_prices_table',1),(15,'2024_06_30_220055_create_reviews_table',1),(16,'2024_06_30_220109_create_plugin_faqs_table',1),(17,'2024_07_07_211559_create_activities_table',1),(18,'2024_07_10_212129_create_plans_table',1),(19,'2024_07_10_212613_create_plan_feature_categories_table',1),(20,'2024_07_10_212914_create_plan_features_table',1),(21,'2024_07_10_213621_create_additional_plan_features_table',1),(22,'2024_07_10_213855_create_plan_subscriptions_table',1),(23,'2024_07_10_214049_create_coin_systems_table',1),(24,'2024_07_10_214213_create_plan_coins_table',1),(25,'2024_07_10_214321_create_plan_subscription_histories_table',1),(26,'2024_07_10_214619_create_coin_system_histories_table',1);
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_coins`
--

DROP TABLE IF EXISTS `plan_coins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_coins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `number_of_coins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `currency` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_coins`
--

LOCK TABLES `plan_coins` WRITE;
/*!40000 ALTER TABLE `plan_coins` DISABLE KEYS */;
INSERT INTO `plan_coins` (`id`, `number_of_coins`, `price`, `currency`, `created_at`, `updated_at`) VALUES (1,'250',50.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(2,'500',100.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(3,'750',150.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(4,'1000',200.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(5,'5000',1000.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(6,'10000',2000.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(7,'50000',10000.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}','2024-08-01 21:42:14','2024-08-01 21:42:14');
/*!40000 ALTER TABLE `plan_coins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_feature_categories`
--

DROP TABLE IF EXISTS `plan_feature_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_feature_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_feature_categories`
--

LOCK TABLES `plan_feature_categories` WRITE;
/*!40000 ALTER TABLE `plan_feature_categories` DISABLE KEYS */;
INSERT INTO `plan_feature_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES (1,'{\"ar\":\"إدارة المنتجات والطلبات\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(2,'{\"ar\":\"ادارة المتجر\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(3,'{\"ar\":\"طرق الدفع\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(4,'{\"ar\":\"الشحن والتوصيل\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(5,'{\"ar\":\"إدارة التسويق\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(6,'{\"ar\":\"متجر الثيمات\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(7,'{\"ar\":\"سوق التطبيقات\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(8,'{\"ar\":\"التحليلات\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(9,'{\"ar\":\"الذكاء الاصطناعي\"}','2024-08-01 21:42:14','2024-08-01 21:42:14'),(10,'{\"ar\":\"pos\"}','2024-08-01 21:42:14','2024-08-01 21:42:14');
/*!40000 ALTER TABLE `plan_feature_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_features`
--

DROP TABLE IF EXISTS `plan_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_ids` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_features`
--

LOCK TABLES `plan_features` WRITE;
/*!40000 ALTER TABLE `plan_features` DISABLE KEYS */;
INSERT INTO `plan_features` (`id`, `name`, `category_id`, `slug`, `plan_ids`, `created_at`, `updated_at`) VALUES (1,'{\"ar\":\"عدد لامحدود من المنتجات\"}',1,'infinite_products','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(2,'{\"ar\":\"عدد لامحدود من الطلبات\"}',1,'infinite_orders','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(3,'{\"ar\":\"إرسال تحديثات لحالة الطلب\"}',1,'updated_status_order','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(4,'{\"ar\":\"إصدار فواتير الطلبات\"}',1,'invoices','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(5,'{\"ar\":\"عدد لامحدود من العملاء\"}',1,'infinite_customers','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(6,'{\"ar\":\"تصنيف العملاء إلى مجموعات\"}',1,'customers_groups','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(7,'{\"ar\":\"استيراد المنتجات / استيراد العملاء\"}',1,'import_products_and_customers','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(8,'{\"ar\":\"تصدير المنتجات /تصدير الطلبات / تصدير العملاء\"}',1,'export_products_orders_customers','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(9,'{\"ar\":\"فلتر المنتجات / فلتر الطلبات / فلتر العملاء\"}',1,'filter_products_orders_customers','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(10,'{\"ar\":\"جرد المنتجات\"}',1,'products_inventory','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(11,'{\"ar\":\"عدد المستخدمين\"}',2,'number_of_admins','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(12,'{\"ar\":\"عدد الفروع والمستودعات لاستلام الطلب منها\"}',2,'number_of_branches','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(13,'{\"ar\":\"التقارير\"}',2,'reports','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(14,'{\"ar\":\"عملات متعددة\"}',2,'multi_currencies','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(15,'{\"ar\":\"حجز رابط خاص (دومين)\"}',2,'domain_link','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(16,'{\"ar\":\"شهادة SSL مجانية\"}',2,'free_ssl','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(17,'{\"ar\":\"لغات متعددة\"}',2,'multi_languages','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(18,'{\"ar\":\"إمكانية تجميد الاشتراك السنوي لمدة 30 يوم\"}',2,'ban_subscription','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(19,'{\"ar\":\"نظام ولاء العملاء\"}',2,'loyality_point','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(20,'{\"ar\":\"تخصيص الواجهة (CSS)\"}',2,'custom_interface_css','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(21,'{\"ar\":\"عرض واحتساب ضريبة القيمة المضافة VAT\"}',2,'vat_calculations','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(22,'{\"ar\":\" الصفحات القانونية (الشروط والأحكام، الأسئلة الشائعة..الخ)\"}',2,'static_pages','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(23,'{\"ar\":\"إنشاء صفحات مخصصة\"}',2,'create_custom_pages','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(24,'{\"ar\":\"استعادة البيانات المحذوفة\"}',2,'restore_deleted_information','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(25,'{\"ar\":\"الشراء كزائر\"}',2,'make_order_as_guest','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(26,'{\"ar\":\"وضع الصيانة\"}',2,'maintenance_mode','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(27,'{\"ar\":\"قيود الدفع\"}',2,'payment_terms','[]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(28,'{\"ar\":\"24/7 الدعم\"}',2,'24_hours_customer_service','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(29,'{\"ar\":\"التحويل البنكي\"}',3,'bank_transfer','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(30,'{\"ar\":\"الدفع عن الاستلام\"}',3,'cash_on_delivery','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(31,'{\"ar\":\"الدفع عبر بطاقات مدى\"}',3,'pay_using_mada_card','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(32,'{\"ar\":\"الدفع عبر Visa, Mastercard,American Express\"}',3,'pay_using_master_visa_amex','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(33,'{\"ar\":\"تفعيل تابي /تفعيل تمارا / تفعيل Spotii / تفعيل MisPay /تفعيل كاشو\"}',3,'pay_with_tabby_tamara','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(34,'{\"ar\":\"PayPal تفعيل\"}',3,'pay_with_paypal','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(35,'{\"ar\":\"الشراء السريع بواسطة ApplePay\"}',3,'pay_using_applepay','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(36,'{\"ar\":\"خاصية الشراء السريع\"}',3,'express_purchasing','[]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(37,'{\"ar\":\"الشحن السريع/ الشحن المبرد/ الشحن المثلج/الشحن الثقيل/الفوري\"}',4,'express_shipping','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(38,'{\"ar\":\"إضافة طريقة شحن خاصة او مناديب\"}',4,'custom_shipping_method','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(39,'{\"ar\":\"دعم شركات الشحن (ارامكس، سمسا، واكثر من 85 شركة شحن اخرى)\"}',4,'public_shipping_methods','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(40,'{\"ar\":\"خدمات التخزين والتغليف\"}',4,'storage_and_packaging_service','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(41,'{\"ar\":\"معدل رضا العملاء عن حالة استلام الشحنات\"}',4,'customer_satisfaction_with_order','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(42,'{\"ar\":\"قيود الشحن والتوصيل\"}',4,'shipping_terms','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(43,'{\"ar\":\"تجميع الشحنات واستلامها من مكان التاجر\"}',4,'collecting_goods','[]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(44,'{\"ar\":\"مؤشر الشحن المجاني\"}',4,'free_shipping_feature','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(45,'{\"ar\":\"كوبونات التخفيض\"}',5,'discount_coupon','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(46,'{\"ar\":\"الكوبون التسويقي\"}',5,'marketing_coupon','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(47,'{\"ar\":\"خصم الشحن المجاني\"}',5,'discount_free_shipping','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(48,'{\"ar\":\"السلات المتروكة\"}',5,'abandoned_cart','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(49,'{\"ar\":\"العروض الخاصة\"}',5,'special_offers','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(50,'{\"ar\":\"التسويق بالعمولة\"}',5,'affiliate_system','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(51,'{\"ar\":\"تحسين محركات البحث SEO\"}',5,'seo_setting','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(52,'{\"ar\":\"اعادة استهداف العملاء\"}',5,'retargeting_customer','[]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(53,'{\"ar\":\"التتبع عبر Pixel / Google Analytics /Hotjar\"}',5,'tracking_with_hotjar','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(54,'{\"ar\":\"طلبات الإهداء\"}',5,'gift_requests','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(55,'{\"ar\":\"برنامج الولاء\"}',5,'loyality_point_2','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(56,'{\"ar\":\"التتبع عبر Conversion API\"}',5,'tracking_with_conversion','[]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(57,'{\"ar\":\"Google Tag Manager الربط مع\"}',5,'attach_with_gtm','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(58,'{\"ar\":\"اختيار ثيم للمتجر\"}',6,'themes','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(59,'{\"ar\":\"تخصيص ثيم المتجر\"}',6,'custome_theme','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(60,'{\"ar\":\"تخصيص التصميم من خلال Custom CSS & JS\"}',6,'custom_theme_using_css','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(61,'{\"ar\":\"تطبيقات الرسائل النصية / خدمة العملاء\"}',7,'attach_with_sms','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(62,'{\"ar\":\"الربط مع التطبيقات التسويقية\"}',7,'attach_with_marketing_apps','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(63,'{\"ar\":\"الربط مع التطبيقات الشحن والتخزين / إدارة المخزون\"}',7,'attach_with_shipping','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(64,'{\"ar\":\"الربط مع التطبيقات المحاسبية\"}',7,'attach_with_accounting_apps','[]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(65,'{\"ar\":\"التحليلات\"}',8,'analytics','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(66,'{\"ar\":\"تحليلات المبيعات\"}',8,'sales_analytics','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(67,'{\"ar\":\"تحليلات الطلبات\"}',8,'orders_analytics','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(68,'{\"ar\":\"تحليلات الزيارات\"}',8,'visits_analytics','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(69,'{\"ar\":\"تحليلات مواقع العملاء\"}',8,'customers_website_analytics','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(70,'{\"ar\":\"معدل المبيعات لكل عميل\"}',8,'sales_rate','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(71,'{\"ar\":\"معدل الطلب للعميل الواحد\"}',8,'order_rate','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(72,'{\"ar\":\"معدل شراء المنتج في الطلب\"}',8,'purchasing_rate_in_order','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(73,'{\"ar\":\"تحليلات مراحل ترك السلة\"}',8,'abandoned_cart_analytics','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(74,'{\"ar\":\"اجمالي مدفوعات القيمة المضافة\"}',8,'total_vat','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(75,'{\"ar\":\"اجمالي مدفوعات الدفع عند الاستلام\"}',8,'total_cash_on_delivery','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(76,'{\"ar\":\"تحليلات عمليات الدفع الناجحة\"}',8,'success_payment_analytics','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(77,'{\"ar\":\"تحليلات عمليات الدفع المستردة\"}',8,'refunded_payment_analytics','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(78,'{\"ar\":\"تقارير المتجر\"}',8,'store_reports','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(79,'{\"ar\":\"تحليلات عمليات الدفع الفاشلة\"}',8,'failed_payment_analytics','[]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(80,'{\"ar\":\"انشاء لوغو بالذكاء الاصطناعي\"}',9,'create_logo_ai','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(81,'{\"ar\":\"مساعدة ملئ المعلومات بالذكاء الاصطناعي\"}',9,'helping_for_fill_data_ai','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(82,'{\"ar\":\"التحليلات بالذكاء الاصطناعي\"}',9,'analytics_ai','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(83,'{\"ar\":\"تحليلات المبيعات بالذكاء الاصطناعي\"}',9,'sales_analytics_ai','[2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(84,'{\"ar\":\"تحليلات الطلبات بالذكاء الاصطناعي\"}',9,'orders_analytics_ai','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(85,'{\"ar\":\"تحليلات الزيارات بالذكاء الاصطناعي\"}',9,'visits_analytics_ai','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(86,'{\"ar\":\"تعديل صور المنتجات بالذكاء الاصطناعي\"}',9,'edit_product_images_ai','[1, 2, 3, 4, 5, 6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14'),(87,'{\"ar\":\"تسوق كاشير \"}',10,'cashier','[6, 7, 8, 9]','2024-08-01 21:42:14','2024-08-01 21:42:14');
/*!40000 ALTER TABLE `plan_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_subscription_histories`
--

DROP TABLE IF EXISTS `plan_subscription_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_subscription_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tenant_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` date NOT NULL,
  `end_at` date NOT NULL,
  `plan_id` bigint unsigned NOT NULL,
  `payment_method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `currency` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plan_subscription_histories_plan_id_foreign` (`plan_id`),
  CONSTRAINT `plan_subscription_histories_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_subscription_histories`
--

LOCK TABLES `plan_subscription_histories` WRITE;
/*!40000 ALTER TABLE `plan_subscription_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_subscription_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_subscriptions`
--

DROP TABLE IF EXISTS `plan_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_subscriptions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tenant_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` date NOT NULL,
  `end_at` date NOT NULL,
  `plan_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plan_subscriptions_plan_id_foreign` (`plan_id`),
  CONSTRAINT `plan_subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_subscriptions`
--

LOCK TABLES `plan_subscriptions` WRITE;
/*!40000 ALTER TABLE `plan_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `currency` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` int NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` (`id`, `name`, `price`, `currency`, `period`, `slug`, `group`, `created_at`, `updated_at`) VALUES (1,'{\"en\":\"Starting\",\"ar\":\"إنطلاق\"}',9.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}',30,'starting','starting','2024-08-01 21:42:14','2024-08-01 21:42:14'),(2,'{\"en\":\"Advanced\",\"ar\":\"متقدم\"}',99.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}',30,'advanced-1month','advanced','2024-08-01 21:42:14','2024-08-01 21:42:14'),(3,'{\"en\":\"Advanced\",\"ar\":\"متقدم\"}',297.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}',90,'advanced-3months','advanced','2024-08-01 21:42:14','2024-08-01 21:42:14'),(4,'{\"en\":\"Advanced\",\"ar\":\"متقدم\"}',594.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}',180,'advanced-6months','advanced','2024-08-01 21:42:14','2024-08-01 21:42:14'),(5,'{\"en\":\"Advanced\",\"ar\":\"متقدم\"}',1188.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}',365,'advanced-12months','advanced','2024-08-01 21:42:14','2024-08-01 21:42:14'),(6,'{\"en\":\"Poineers\",\"ar\":\"رواد\"}',399.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}',30,'poineers-1month','poineers','2024-08-01 21:42:14','2024-08-01 21:42:14'),(7,'{\"en\":\"Poineers\",\"ar\":\"رواد\"}',1197.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}',90,'poineers-3months','poineers','2024-08-01 21:42:14','2024-08-01 21:42:14'),(8,'{\"en\":\"Poineers\",\"ar\":\"رواد\"}',2394.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}',180,'poineers-6months','poineers','2024-08-01 21:42:14','2024-08-01 21:42:14'),(9,'{\"en\":\"Poineers\",\"ar\":\"رواد\"}',4788.00,'{\"en\":\"SAR\",\"ar\":\"ر.س\"}',365,'poineers-12months','poineers','2024-08-01 21:42:14','2024-08-01 21:42:14');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_categories`
--

DROP TABLE IF EXISTS `plugin_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_categories`
--

LOCK TABLES `plugin_categories` WRITE;
/*!40000 ALTER TABLE `plugin_categories` DISABLE KEYS */;
INSERT INTO `plugin_categories` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES (1,'{\"ar\":\"الدفع\",\"en\":\"Payment\"}','#4CAF50','2024-08-01 21:42:14','2024-08-01 21:42:14'),(2,'{\"ar\":\"التحليل والتقارير\",\"en\":\"Analytics & Reporting\"}','#4CAF50','2024-08-01 21:42:14','2024-08-01 21:42:14'),(3,'{\"ar\":\"التتبع\",\"en\":\"Campaign tracking\"}','#4CAF50','2024-08-01 21:42:14','2024-08-01 21:42:14'),(4,'{\"ar\":\"التسويق\",\"en\":\"Marketting\"}','#03A9F4','2024-08-01 21:42:14','2024-08-01 21:42:14'),(5,'{\"ar\":\"الشحن والتوصيل\",\"en\":\"Shipping & Delivery\"}','#FFC107','2024-08-01 21:42:14','2024-08-01 21:42:14'),(6,'{\"ar\":\"الرسائل النصية\",\"en\":\"SMS\"}','#9C27B0','2024-08-01 21:42:14','2024-08-01 21:42:14'),(7,'{\"ar\":\"المحاسبة\",\"en\":\"Accounting\"}','#8BC34A','2024-08-01 21:42:14','2024-08-01 21:42:14');
/*!40000 ALTER TABLE `plugin_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_faqs`
--

DROP TABLE IF EXISTS `plugin_faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin_faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plugin_faqs_plugin_id_foreign` (`plugin_id`),
  CONSTRAINT `plugin_faqs_plugin_id_foreign` FOREIGN KEY (`plugin_id`) REFERENCES `plugins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_faqs`
--

LOCK TABLES `plugin_faqs` WRITE;
/*!40000 ALTER TABLE `plugin_faqs` DISABLE KEYS */;
INSERT INTO `plugin_faqs` (`id`, `question`, `answer`, `plugin_id`, `created_at`, `updated_at`) VALUES (1,'{\"ar\":\"ماذا يحدث إذا لم يدفع لي العميل؟\",\"en\":null}','{\"ar\":\"أنت كتاجر لا تتحمل مخاطر عدم دفع العميل لك. تابي تتحمل جميع المخاطر حيث تدفع لتجارها مسبقاً سواءً قام العملاء بالسداد أم لا.\",\"en\":null}',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(2,'{\"ar\":\"هل بإمكاني عرض متجري على دليل متاجر تابي؟\",\"en\":null}','{\"ar\":\"بكل تأكيد، كل ما عليك فعله هو تزويد تابي بشعار علامتك التجارية وسيتم مساعدتكم للظهور على دليل متاجر تابي.\",\"en\":null}',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(3,'{\"ar\":\"كيف يتم تسوية المبالغ عن طريق تابي؟\",\"en\":null}','{\"ar\":\"يمكنك جدولة تسوية المبالغ عند التسجيل مع تابي للأعمال.\",\"en\":null}',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(4,'{\"ar\":\"كم يتم احتساب رسوم تابي؟\",\"en\":null}','{\"ar\":\"تحتسب تابي نسبة على عمليات الشراء المكتملة بنجاح +1 ريال سعودي. تعتمد رسوم تابي على نوع المنتجات المباعة وحجم المبيعات السنوية. يشمل ذلك جميع رسوم بوابات الدفع بدون أي رسوم إضافية.\",\"en\":null}',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(5,'{\"ar\":\"كم يستغرق الوقت لتفعيل تابي؟\",\"en\":null}','{\"ar\":\"لا يستغرق تفعيل تابي سوى أيام قليلة، حيث يتم ربط تابي مع مواقع زد بكل سهولة.\",\"en\":null}',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(6,'{\"ar\":\"ماهي البطاقات التي يمكن أن يستخدمها العميل عند الدفع باستخدام تابي؟\",\"en\":null}','{\"ar\":\"تابي تقبل جميع البطاقات البنكية (مدى) والائتمانية. يستطيع العميل أيضاً الدفع باستخدام Apple Pay في السعودية والإمارات.\",\"en\":null}',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(7,'{\"ar\":\"ماذا يستفيد العميل عند استخدام تابي؟\",\"en\":null}','{\"ar\":\"العميل يدفع فقط 25% من إجمالي السعر والـ 75% المتبقية يتم تقسيمها إلى 3 دفعات خلال الـ 3 أشهر القادمة. بدون فوائد. بدون رسوم.\",\"en\":null}',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(8,'{\"ar\":\"كيف يدفع العميل مع تابي؟\",\"en\":null}','{\"ar\":\"يمكن للعميل أن يدفع باستخدام تابي كما يفعل مع بقية طرق الدفع:\\nاختيار المنتجات التي يرغب بشرائها، إضافتها إلى السلة، والتوجه لصفحة الدفع.\\nاختيار تابي كخيار الدفع.\\nدفع 25% من المبلغ الإجمالي ومن ثم دفع القيمة المتبقية خلال الـ 3 أشهر القادمة.\\n\",\"en\":null}',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(9,'{\"ar\":\"ماهي طريقة استرجاع المبالغ في تابي؟\",\"en\":null}','{\"ar\":\"عند قبولك لطلب عميلك للاسترجاع، فإن عمليات الاسترجاع مع تابي في غاية السهولة سواء في حالة كان الإرجاع جزئي أم كلي. يمكنك عمل الإرجاع بشكل مباشر عن طريق لوحة تحكم تابي.\",\"en\":null}',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(10,'{\"ar\":\"كيف بستفيد كمتجر؟\",\"en\":null}','{\"ar\":\"تمارا راح تساعدك في:\\nزيادة الطلبات وخاصة في فترة نصف الشهر حيث تقل السيولة لدى المستهلك\\nزيادة متوسط الفاتورة حيث العميل بإمكانه الدفع اجلا او توزيع التكلفة على أقساط\\nتحسين مردود الحملات التسويقية والترويجية حيث بإمكانك التسويق لخدمة الدفع بالآجل والاقساط لزيادة الطلب.\\nتحسين التدفق المالي دون اي مخاطرة منك في حال عدم دفع العميل (ندفع لك اسبوعياً)\",\"en\":null}',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(11,'{\"ar\":\"كم يستغرق التفعيل؟\",\"en\":null}','{\"ar\":\"وقت قياسي جداً من إكمال النموذج إلى التفعيل أقل من ٤٨ ساعة ومتوسط ٢٤ ساعة. لكن يشترط إكمال الشروط و النموذج كاملاً.\",\"en\":null}',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(12,'{\"ar\":\"متى يتم استلام مبلغ الطلبية للمتاجر؟\",\"en\":null}','{\"ar\":\"تتم التسوية المالية كل يوم ثلاثاء على جميع العمليات التي تمت معالجتها وشحنها بين يومي السبت والجمعة السابقة. مثلا: في حال قام عميل بطلب يوم الاربعاء وتم شحن طلبه الخميس، فيوم الثلاثاء القادم تتم التسوية مع المتجر ويتم تحويل قيمة الطلب ولا علاقة للمتجر إطلاقاً بالتحصيل من العميل.\",\"en\":null}',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(13,'{\"ar\":\"كيف يمكن لزبائن متجري الدفع لتمارا؟\",\"en\":null}','{\"ar\":\"عندما يختار العميل تمارا في صفحة الطلب، سينتقل لصفحة تمارا ويسجل رقم الجوال، سيُطلب منه ادخال بيانات البطاقة البنكية حتى نتأكد من أن العميل غير وهمي. بعد ذلك ستتم الموافقة على العملية في نظام تمارا دون أن يتم سحب المبلغ و سيُعيد النظام العميل الى صفحة المتجر و سيبلغه أنه تم اتمام الطلب و يظهر له رقم الطلب. اضغط هنا لمشاهدة عرض بسيط للعملية.\",\"en\":null}',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(14,'{\"ar\":\"كيف طريقة الطلب مع تمارا من جهة العميل؟\",\"en\":null}','{\"ar\":\"عندما يختار العميل تمارا في صفحة الطلب، سينتقل لصفحة تمارا ويسجل رقم الجوال، سيُطلب منه ادخال بيانات البطاقة البنكية حتى نتأكد من أن العميل غير وهمي. بعد ذلك ستتم الموافقة على العملية في نظام تمارا دون أن يتم سحب المبلغ و سيُعيد النظام العميل الى صفحة المتجر و سيبلغه أنه تم اتمام الطلب و يظهر له رقم الطلب. اضغط هنا لمشاهدة عرض بسيط للعملية.\",\"en\":null}',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(15,'{\"ar\":\"كيف طريقة الطلب مع تمارا من جهة العميل؟\",\"en\":null}','{\"ar\":\"لا يوجد أي رسوم على العميل مع تمارا.\",\"en\":null}',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(16,'{\"ar\":\"ان لم يكن هناك رسوم على العميل، هل هذا يعني أن خدمة تمارا مجانية؟\",\"en\":null}','{\"ar\":\"خدمة تمارا مجانية للعملاء، وتحسب الرسوم على المتجر المشترك حسب حجم المبيعات والمخاطر.\",\"en\":null}',3,'2024-08-01 21:42:14','2024-08-01 21:42:14');
/*!40000 ALTER TABLE `plugin_faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_prices`
--

DROP TABLE IF EXISTS `plugin_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin_prices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `plugin_id` bigint unsigned NOT NULL,
  `price` int NOT NULL,
  `period` int NOT NULL,
  `features` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plugin_prices_plugin_id_foreign` (`plugin_id`),
  CONSTRAINT `plugin_prices_plugin_id_foreign` FOREIGN KEY (`plugin_id`) REFERENCES `plugins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_prices`
--

LOCK TABLES `plugin_prices` WRITE;
/*!40000 ALTER TABLE `plugin_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_free` tinyint(1) NOT NULL DEFAULT '1',
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keys` json DEFAULT NULL,
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plugins_category_id_foreign` (`category_id`),
  CONSTRAINT `plugins_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `plugin_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
INSERT INTO `plugins` (`id`, `name`, `short_description`, `description`, `is_free`, `slug`, `developed_by`, `keys`, `category_id`, `created_at`, `updated_at`) VALUES (1,'{\"ar\":\"ميسر \",\"en\":\"moyaser\"}','{\"ar\":\"moyaser\",\"en\":\"moyaser\"}','{\"ar\":\"moyaser\",\"en\":\"moyaser\"}',1,'moyaser','tsoq','[\"secret_key\", \"public_key\"]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(2,'{\"ar\":\"تابي\",\"en\":\"tabby\"}','{\"ar\":\"ساعدك تابي على تطوير أعمالك عن طريق توفير خيار الشراء الآن والدفع لاحقًا عن طريق 4 دفعات دون فوائد، بينما تحصل أنت على الدفعة كاملة مقدّمًا. تابي موثوقة من قبل أكثر من 10 ملايين متسوق وأكثر من 30,000 متجر في الشرق الأوسط.\",\"en\":null}','{\"ar\":\"نظرة عامة:\\nقدّم الفرصة لعملائك ليشتروا الآن ويقسّموا مشترياتهم على 4 دفعات دون فوائد، بينما تحصل أنت على الدفعة كاملة دون أي مخاطر. إن المتاجر التي تقدم تابي كخيار للدفع تشهد زيادة في متوسط قيمة الطلبات، ومعدل التحويل، ومعدل الشراء المتكرر. الدعم: احصل على دعم مباشر في عملية التطوير، والدمج ، والتسويق، والمزيد في مرحلة تطوير أعمالك. قم بزيارة (مركز دعم الأعمال).\\nالميزات الرئيسية:\\n\\nآلية التفعيل:\\nسجّل حسابك على Tabby for Business\\nبعد أن تقوم بإنهاء عملية التسجيل، ستصلك رموز API وعندها يمكنك ربط تابي بمتجرك على زد.\\nاستخدم أدوات تابي للتسويق لإعلام عملائك بأنك الآن توفّر تابي كخيار للدفع.\\nاستفد من المنافع التي تقدّمها شبكة تابي المكونة من أكثر من 10 ملايين متسوق.\\nالمتاجر التي تقدم خدمة تابي:\\nتابي موثوقة من قبل أكثر من 30,000 متجر مثل شي إن، نون، وجوه، اديداس، ايكيا، فلاورد وغيرها الكثير. نظرًا لأن عدد متسوقي تابي يصل إلى أكثر من 10 ملايين متسوق، تعتبر تابي أكبر خدمة للدفع المرن في المنطقة. تتصدر تابي باستمرار إحدى المنصات الثلاث الأولى المفضلة للتسوق في المملكة العربية السعودية والإمارات العربية المتحدة، ويستمر هذا الرقم بازدياد يومًا بعد يوم.\\nتتواجد خدمة تابي اليوم في المملكة العربية السعودية، والإمارات العربية المتحدة، والكويت، والبحرين، وقطر - كما تقوم حاليًا بالتوسع في عدد من البلدان الأخرى.\\nالدعم:\\nاحصل على الدعم الكامل للربط التقني وخدمات تابي التسويقية لتساعدك على زيادة حجم تجارتك اضغط لزيارة مركز دعم الأعمال.\",\"en\":null}',1,'tabby','tsoq','[\"secret_key\", \"public_key\", \"merchant_code\"]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(3,'{\"ar\":\"تمارا\",\"en\":\"Tamara\"}','{\"ar\":\"طريقة دفع تمكّن العميل من عملية الشراء الآن و يدفع لاحقا من خلال ٣ اقساط او دفعة واحدة\\n\\n\",\"en\":null}','{\"ar\":\"نظرة عامة:\\nمنصة تسويق تمكّن المتاجر من تطوير والمحافظة على علاقات عملائها وزيادتها. يتميز التطبيق بمجموعة شاملة من أدوات التسويق وإمكانيات الأتمتة التي تجعل من السهل بناء وإرسال حملات البريد الإلكتروني المستهدفة وتتبعها والتفاعل مع جمهورك.\\n\\nالميزات الرئيسية:\\n\\nتمارا هي طريقة دفع تمكّن العميل من تقسيم المبلغ/الفاتورة إلى 3 أو 6 دفعات. الدفعة الأولى تتم عند الشراء والدفعات المتبقية تتم خلال شهرين أو خمسة أشهر حسب عدد الدفعات التي تم اختيارها من قبل العميل بدون أي فوائد. بالإضافة إلى أن المتجر لايتكبد أي تمويل أو مخاطرة وذلك بسبب أن قيمة العمليات يتم تسليمها من تمارا أسبوعيا سواء تم تحصيل المبلغ من العميل أم لا\\nآلية التفعيل:\\nتعبئة النموذج الخاص بتمارا من هنا\\nتوقيع العقد الالكتروني مع تمارا\\nإدخال اكواد الـAPI الخاصة بتمارا ستصلك من تمارا على الإيميل بعد توقيع العقد\",\"en\":null}',1,'tamara','tsoq','[\"api_url\", \"token\"]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(4,'{\"ar\":\"Hotjar\",\"en\":\"Hotjar\"}','{\"ar\":\"خدمة تتيح لك معرفة كيف يتصرف العملاء مع متجرك الالكتروني\",\"en\":null}','{\"ar\":\"نظرة عامة:\\nتمكنك هذه الخدمة من فهم كيف يتصرف عملائك مع موقعك ومنتجاتك، على عكس الخدمات الأحصائية التي تقدم لك الأرقام فقط، هذه الخدمة تخبرك ما يفعله المستخدم على موقعك بالتحديد\\nآلية الربط:\\n\\nلمعرفة كيفية التفعيل اضغط هنا\",\"en\":null}',1,'hotjar','tsoq','[\"script\"]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(5,'{\"ar\":\"Mouse Flow\",\"en\":\"Mouse Flow\"}','{\"ar\":\"أفضل أدوات تحليل السلوك التي تساعدك على تحسين موقع الويب الخاص بك\",\"en\":null}','{\"ar\":\"تعد mouseflow واحدة من أفضل أدوات تحليل السلوك التي تساعدك على تحسين موقع الويب الخاص بك\\n\\nعبر خرائط الحرارة، وتسجيلات المستخدم، ومسارات التحويل، وتحليلات النماذج، وحملات التعليقات.\\n\\n\\n\\nالمميزات Mouseflow :\\n\\n_ تسجيل الفيديو \\n\\n تسجيل فيديو يجعلك تشاهد -بدقة- تجربة المستخدم لموقعك.\\n\\n\\n\\n_ الخرائط الحرارية\\n\\nتوفير خرائط حرارية تلخص حركة المستخدم لموقعك من التحركات، وعدد النقرات، وأماكنها.\\n\\n\\n\\n_ تتبع الحركة\\n\\nتسمح لك تسجيلات المستخدم بمشاهدة نشاط الزوار أثناء تنقلهم عبر موقعك.\\n\\n\\n\\n_ النماذج \\n\\nتساعدك النماذج على الكشف عن المشكلات لتحسين قابلية الاستخدام للشرائح المختلفة من الزوار.\\n\\n\\n\\n_ الآراء\\n\\nإتاحة إنشاء استطلاعات مخصصة وتفاعلية لاستهداف جمهور معين.\\n\\n\\n\\n\\n\\nلمزيد من المعلومات عن Mouse Flow يرجى قراءة مقالة مركز المساعدة\",\"en\":null}',1,'mouse-flow','tsoq','[\"script\"]',2,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(6,'{\"ar\":\"Paytabs\",\"en\":\"Paytabs\"}','{\"ar\":\"Paytabs\",\"en\":\"Paytabs\"}','{\"ar\":\"Paytabs\",\"en\":\"Paytabs\"}',1,'paytabs','tsoq','[\"profile_id\", \"sever_key\", \"client_key\", \"url\", \"currency\"]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(7,'{\"ar\":\"neoleap\",\"en\":\"neoleap\"}','{\"ar\":\"neoleap\",\"en\":\"neoleap\"}','{\"ar\":\"neoleap\",\"en\":\"neoleap\"}',1,'neoleap','tsoq','[\"token\"]',1,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(8,'{\"ar\":\"فيسبوك بيكسل\",\"en\":\"Facebook pixel\"}','{\"ar\":\"فيس بوك بكسل خدمة تمكنك من تحسين وقياس فاعلية الحملات الإعلانية لزوار متجرك\",\"en\":null}','{\"ar\":\"نبذة عن التطبيق:\\nخدمة تحليلات تتيح لك قياس فعالية إعلاناتك من خلال فهم الإجراءات التي يتخذها الأشخاص على متجرك مثل إضافة عنصر إلى عربة التسوق أو إجراء عملية شراء\\n\\nآلية التفعيل:\\nلمعرفة كيفية تفعيل Facebook Pixel بمتجرك اضغط هنا\",\"en\":null}',1,'facebook-pixel','tsoq','[\"script\"]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(9,'{\"ar\":\"Facebook conversion API\",\"en\":\"Facebook conversion API\"}','{\"ar\":\"خدمة تمكنك من تحسين وقياس فاعلية الحملات الإعلانية لزوار متجرك\",\"en\":null}','{\"ar\":\"نبذة عن التطبيق:\\nالتطبيق متاح لباقة النمو والاحترافية والانتربرايز فقط\\n\\nخدمة تتيح لك تحسين دقة القراءات لاعلاناتك من خلال فهم الإجراءات التي يتخذها الأشخاص على متجرك مثل إضافة عنصر إلى عربة التسوق أو إجراء عملية شراء\\n\\nالمتطلبات\\n\\nتفعيل تطبيقFacebook Pixel من هنا\\n\\nآلية التفعيل:\\n\\n1. انتقِل إلى مدير الأحداث.\\n\\n2.. انقر على أيقونة مصادر البيانات في الجانب الأيمن من الصفحة.\\n\\n3. حدِّد معرِّف البيكسل الذي اخترته لربطه بواجهة API التحويلات.\\n\\n4. انقر على إدارة عمليات التكامل.\\n\\n5. ابحث عن دمج واجهة API التحويلات وانقر على إكمال الإعداد.\\n\\nملاحظة\\n\\nإذا لم تتمكن من إيجاد خيار إكمال دمج واجهة API التحويلات، فقد يرجع هذا إلى أنه يتم إعداد واجهة API التحويلات من خلال وثائق المطوّر وليس الإعداد المصحوب بإرشادات من مدير الأحداث. لإعداد واجهة API التحويلات من خلال الإعداد المصحوب بإرشادات، قم أولًا بإنشاء التعليمات ذات الطابع الشخصي الخاصة بك باستخدام الخطوات الواردة في الجزء الأول.\\n\\n6. ضمن حول واجهة API التحويلات، اقرأ المصادر في تعرَّف على المزيد إذا كنت تريد الحصول على معلومات إضافية حول واجهة API التحويلات قبل بدء الاستخدام.\\n\\n7. انقر على إنشاء رمز وصول. انسخ رمز الوصول الخاص بك\\n\\n8. من خلال تطبيق \\\"Facebook Conversion API\\\" الصق الرمز في الحقل \\\"المعرف الخاص لحسابك\\\" و اضعط على زر التفعيل\",\"en\":null}',1,'facebook-conversion','tsoq','[\"access_token\", \"pixel_id\"]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(10,'{\"ar\":\"\\nTikTok pixel\",\"en\":\"\\nTikTok pixel\"}','{\"ar\":\"تيك توك بكسل خدمة تمكنك من تحسين وقياس فاعلية الحملات الإعلانية لزوار متجرك\",\"en\":null}','{\"ar\":\"نبذة عن التطبيق:\\nاداة قياس تساعدك في تتبع اداء حملتك الاعلانية لمتجرك عبر تيك توك ,كما تتيح لك تتبع المبيعات ومعدل التحويل و نشاط الزوار على متجرك كما تسهل لك ايجاد العملاء المناسبين لإعلانك.\\n\\nالية التفعيل:\\n\\nلمعرفة كيفية التفعيل اضغط هنا\",\"en\":null}',1,'\ntikTok-pixel','tsoq','[\"script\"]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(11,'{\"ar\":\"TikTok conversion API\",\"en\":\"TikTok conversion\"}','{\"ar\":\"خدمة تمكنك من تحسين وقياس فاعلية الحملات الإعلانية لزوار متجرك\",\"en\":null}','{\"ar\":\"نبذة عن التطبيق:\\nالتطبيق متاح لباقة النمو والاحترافية والانتربرايز فقط\\n\\nخدمة تتيح لك تحسين دقة القراءات لاعلاناتك من خلال فهم الإجراءات التي يتخذها الأشخاص على متجرك مثل إضافة عنصر إلى عربة التسوق أو إجراء عملية شراء\\n\\nالمتطلبات:\\n\\nتفعيل تفعيل تطبيق Tiktok Pixel\\n\\nآلية التفعيل:\\n\\n1. في TikTok Ads Manager ، انتقل إلى Assets > Events ، وانقر فوق إدارة في قسم Web Events.\\n\\n2. في علامة التبويب \\\"Settings\\\" ، انقر فوق Generate Access Token. سيتم إنشاء الرمز المميز على الفور. يمكنك بعد ذلك نسخ رمز الوصول والبدء في تقديم طلبات API.\\n\\n3. من خلال تطبيق \\\"TikTok conversion API\\\" الصق الرمز في الحقل \\\"المعرف الخاص لحسابك\\\" و اضعط على زر التفعيل\",\"en\":null}',1,'tiktok-conversion','tsoq','[\"access_token\", \"pixel_id\"]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(12,'{\"ar\":\"X pixel\",\"en\":\"X pixel\"}','{\"ar\":\"تويتر بكسل خدمة تمكنك من تحسين وقياس فاعلية الحملات الإعلانية لزوار متجرك\",\"en\":null}','{\"ar\":\"نبذة عن التطبيق:\\nخدمة تحليلات تتيح لك قياس مدى فعالية حملتك، و تتبع معدل التحويل، و قياس عائد الإنفاق على الإعلانات من خلال تتبع الإجراءات التي يتخذها الأشخاص بعد عرض إعلاناتك أو التفاعل معها على تويتر.\\n\\nالية التفعيل:\\n\\nلمعرفة كيفية تفعيل Twitter Pixel بمتجرك اضغط هنا.\",\"en\":null}',1,'x-pixel','tsoq','[\"script\"]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(13,'{\"ar\":\"Snapchat pixel\",\"en\":\"Snapchat pixel\"}','{\"ar\":\"خدمة تمكنك من تتبع أثر حملاتك الإعلانية على سناب شات وتحسينها\",\"en\":null}','{\"ar\":\"نبذة عن التطبيق:\\nتتبع أثر حملاتك الإعلانية على سناب شات\\n\\n1. قياس التحويلات من الحملات الإعلانية\\n\\nستحصل على فهم أعمق لأداء إعلاناتك، من التعرف على عدد الزوار الذين أتموا عمليات الشراء. وإعادة استهداف الزوار الذين لم يقوموا بعملية الشراء بإعلانات ذات صلة، تُعيد تذكيرهم بما كانوا يبحثون عنه، وتحفزهم على العودة وإكمال عملية الشراء.\\n\\n2. الوصول إلى الأشخاص الأكثر تفاعل\\n\\nيمكنك استخدام الإحصاءات لإيصال الحملات الإعلانية باستهداف دقيق جداً للأشخاص المهتمين و الأكثر تفاعل.\\n\\n3. الوصول إلى الجمهور المثالي و المتشابه\\n\\nستمكنك هذه الخاصية من إيصال حملاتك الإعلانية إلى أشخاص مشابهين لعملاءك. لمساعدتك في العثور على عملاء جدد يشابهون أفضل عملائك.\\n\\nآلية الربط\\n\\nلمعرفة كيفية التفعيل اضغط هنا\\n\\n.\\n\\nعرض لفترة محدودة لحملتك الأولى على سناب اضغط هنا للتسجيل\\nعند تفعيل الحملة الإعلانية الأولى على سناب وإنفاق 500 دولار، ستحصل على 375 دولارًا استرداد نقدي.\",\"en\":null}',1,'snapchat-pixel','tsoq','[\"script\"]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(14,'{\"ar\":\"Snapchat conversion API\",\"en\":\"Snapchat conversion API\"}','{\"ar\":\"خدمة تمكنك من تحسين وقياس فاعلية الحملات الإعلانية لزوار متجرك\\n\\n\\n\",\"en\":null}','{\"ar\":\"نبذة عن التطبيق:\\nتابع إعلاناتك بشكل مباشر\\n\\n1. مشاركة الأحداث في الوقت الفعلي\\n\\nستتمكّن من رؤية أحداث العملاء التي تمّت من خلال حملاتك في الوقت الفعلي, ليمكنك تحسين الحملات الإعلانية بشكل مباشر بناءً على الأحداث.\\n\\n2. تتبع مباشرة للبيانات التي حققتها الحملات\\n\\nستتمكّن من رؤية النتائج التي تحقّقها حملاتك بشكلٍ أسرع، وتضمن بقاء عروض أسعارك تنافسية مع الطلب الحالي في السوق.\\n\\n3. تقليل فقدان البيانات من Pixle لنتائج أفضل\\n\\nباستخدام التطبيقين معاً, ستتمكن من تحقيق نتائج أكثر فاعلية بتقليل فقدان بعض البيانات من ربط Pixle فقط.\\n\\n.\\n\\nالمتطلبات:\\n\\nتفعيل تطبيق Snapchat Pixel من هنا\\n\\n.\\n\\nآلية التفعيل:\\n\\n1. سجّل الدخول إلى منصّة إدارة الإعلانات. ثم انقر على القائمة في الزاوية العُليا واختر تفاصيل النشاط التجاري..\\n\\n2. بمجرد وصولك إلى هذه الصفحة، ضمن قسم تطبيق OAuth، سترى الآن قسمًا جديدًا يُدعى رموز واجهة برمجة تطبيقات التحويلات API. يمكنك النقر على زر إنشاء رمز لإنشاء رمز جديد.\\n\\n3.. يمكنك بعد ذلك نسخ الرمز واستخدامه بفس طريقة استخدامك لرمز OAuth المُميز عبر إدراج رأس الرمز هذا على سبيل المثال.- Authorization: Bearer << رمز واجهة برمجة تطبيقات API الجديد المُنشأ>>\\\".\\n.\\n.\\n\\nعرض لفترة محدودة لحملتك الأولى على سناب اضغط هنا للتسجيل\\nعند تفعيل الحملة الإعلانية الأولى على سناب وإنفاق 500 دولار، ستحصل على 375 دولارًا استرداد نقدي.\",\"en\":null}',1,'snapchat-conversion','tsoq','[\"access_token\", \"pixel_id\"]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(15,'{\"ar\":\"SnapChat Catalog\",\"en\":\"SnapChat Catalog\"}','{\"ar\":\"أداة تمكنك من إنشاء صفحة كتالوج وربط منتجات متجرك\",\"en\":null}','{\"ar\":\"SnapChat Catalog هي أداة تمكنك من إنشاء صفحة كتالوج وربط منتجات متجرك ومزامنتها بشكل محدث ودوري تلقائياً على سناب شات، واستخدامها للإعلان مع مجموعة متنوعة من التنسيقات الثابتة أو الديناميكية.\\n\\n\\n\\n\\n\\nأهم مزايا تطبيق SnapChat Catalog:\\n\\nربط سهل ومزامنة تلقائية بين متجرك والكتالوج لحالة توفر المنتجات وأسعارها وغيرها.\\nأتمتة حملات SnapChat لمنتجاتك، لمنحك وقتًا إضافيا للتركيز على إدارة حملاتك التسويقية.\\nتعدد أنواع إعلانات كتالوج المنتجات، التي تمكنك من إنشاء نماذج الإعلانات تلقائيا وبكل مرونة، مثل: إعلانات القصة وإعلانات صورة واحدة أو إعلانات فيديو وإعلانات المجموعة.\\nإمكانية التكامل مع أدوات SnapChat for Business مثل ربط الكتالوج مع البكسل لزيادة دقة استهداف العملاء بالمنتجات الأنسب لهم.\\n\\n\\n\\n\\nلمزيد من المعلومات يرجى قراءة المقالة على مركز المساعدة\",\"en\":null}',1,'snapchat-catalog','tsoq',NULL,4,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(16,'{\"ar\":\"Google Tag Manager\",\"en\":\"Google Tag Manager\"}','{\"ar\":\"خدمة تمكنك من إضافة الأدوات وتحليل سلوك زوار متجرك\",\"en\":null}','{\"ar\":\"نبذة عن التطبيق:\\nخدمة تمكنك من دمج كل تطبيقاتك وربطها ببعض لتتحكم في كل التطبيقات من مكان واحد فقط وإدارة عملك بفاعلية كبيرة.\\n\\n- انشاء الاداه (التاق) يؤدي الى اضافه كود على متجرك مما يمكن ان يؤدي الى ظهور ايقونه مخصصه لاداء التاق في واجه المتجر مثلا ايقونه الواتس اب\\n\\nآلية الربط\\n\\nلمعرفة كيفية التفعيل اضغط هنا\",\"en\":null}',1,'gtm','tsoq','[\"head_script\", \"body_script\"]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(17,'{\"ar\":\"Mailchimp\",\"en\":\"Mailchimp\"}','{\"ar\":\"!تحويل رسائل البريد الإلكتروني إلى إيرادات\",\"en\":null}','{\"ar\":\"نظرة عامة:\\nمنصة تسويق تمكّن المتاجر من تطوير والمحافظة على علاقات عملائها وزيادتها. يتميز التطبيق بمجموعة شاملة من أدوات التسويق وإمكانيات الأتمتة التي تجعل من السهل بناء وإرسال حملات البريد الإلكتروني المستهدفة وتتبعها والتفاعل مع جمهورك.\\n\\nالميزات الرئيسية:\\n\\n1. التسويق عبر البريد الإلكتروني\\nقم بإنشاء حملات بريد إلكتروني جذابة، مضمنًا التوجيه الدقيق والتسليم في الوقت المناسب.\\n2. ميزة البوب-أب\\nفاجئ زوار موقعك بفعالية من خلال نماذج البوب-أب قابلة للتخصيص لالتقاط العملاء المحتملين وتعزيز العروض الخاصة وزيادة قائمة المشتركين الخاصة بك.\\n3. تقسيم الجمهور\\nقسم جمهورك إلى فئات ذات معنى، وقدّم محتوى شخصي لزيادة التفاعل.\\n4. التحليلات\\nاحصل على معلومات قيمة من خلال التحليلات في الوقت الحقيقي\\n5. صفحات الهبوط\\nقم بإنشاء صفحات هبوط بسهولة دون الحاجة للبرمجة\\nتفعيل التطبيق\\nلمعرفة المزيد حول كيفية ربط متجرك مع مايلشمب، من هنا\",\"en\":null}',1,'mailchimp','tsoq','[\"api_key\", \"server_key\"]',4,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(18,'{\"ar\":\"أرامكس\",\"en\":\"Aramex\"}','{\"ar\":\"خدمات توصيل المنتجات والطرود للمتاجر الإلكترونية\",\"en\":null}','{\"ar\":\"أرامكس شركة للحلول اللوجستية توفر خدمات توصيل المنتجات والطرود للمتاجر الإلكترونية في تسوق لأي مكان في المملكة العربية السعودية. يتجسد تميّز أرامكس فيما تقدمه للتاجر في مزايا عديدة كمناسبتها للأحجام المختلفة من المتاجر من ناحية الأسعار والاستيعاب وبتقنياتها المتعددة التي تساعد التاجر في تتبع الشحنات وحلّ المشاكل المتعلقة بها، وغيرها الكثير.\\n\\n\\n\\nأهم المزايا:\\n\\n1- مناسبة لجميع المتاجر أيّا كان حجمها.\\n\\n2- استيعاب لعدد كبير من الشحنات بأسطول ضخم في جميع أنحاء الشرق الأوسط.\\n\\n3- خدمة ثابتة على التميّز بتحليلات متطورة للطاقة الاستيعابية.\\n\\n4- تتبع مباشر للشحنات طوال اليوم.\\n\\n5- خيارات دفع متعددة ومناسبة للمتاجر الإلكترونية.\\n\\n7- أسعار خاصة لتجار سلة.\\n\\n\\n\\nالخدمات :\\n\\nخدمة الشحن والتوصيل من الباب للباب Door To Door.\\nخدمة التسليم إلى الفرع والاستلام منه.\\n\\n\\nنطاق التغطية :\\n\\nالوسطى والمناطق الشمالية. \\nالشرقية.\\nالغربية والمناطق الجنوبية.\\n\\n\\nهل تدعم الشحن الدولي؟\\n\\nفي الوقت الحالي بوليصات سلة تدعم الشحن المحلي فقط، وأما العملاء بحساباتهم الخاصة فيختلف الشحن حسب العرض المقدم من الشركة.\\n\\n\\nأسعار الشحن:\\n\\n27 ريالًا لأول 15 كيلوجرامًا + 2 ريال لكل كيلو إضافي.\\n\\n\\nطريقة احتساب الوزن :\\n\\nالوزن الفعلي وهو الوزن الإجمالي أو الوزن الحجمي وهو (الطول × الارتفاع × العرض \\\\ 4000 ) مثال:\\n\\n\\n\\n- الشحنة 10 كجم الوزن الإجمالي والأبعاد التالية:\\n\\nالارتفاع = 100 سم\\nالعرض = 100 سم\\nالطول = 100 سم\\nالوزن الحجمي = (100 × 100 × 100) \\\\ 4000 = 250 كجم\\n\\n\\nبما ان الوزن الحجمي أكبر من الوزن الفعلي؛ سيتم حساب الشحنة بناءً على الوزن الحجمي وهو 250 كجم.\\n\\nمثال آخر:\\n\\n- شحنة وزنها الإجمالي 2 كيلو وأبعادها كالتالي:\\n\\nالارتفاع = 20 سم.\\nالعرض = 30 سم.\\nالطول = 50 سم.\\nالوزن الحجمي = (20 × 30 × 50) / 4000 = 7.50 كجم.\\nبما ان الوزن الحجمي أكبر من الوزن الفعلي سيتم حساب الشحنة بناءً على الوزن الحجمي وهو 7.50 كجم.\\n\\n\\n\\nملاحظة : يتم حساب كل من الوزن الإجمالي والوزن الحجمي تلقائيًا.\\n\\n\\n\\nماهو مقدار التعويض الذي سأحصل عليه عند إثبات تضرر الشحنة؟\\n\\n100 ريال كحد أقصى.\\n\\n\\nجميع الأسعار خاضعة لضريبة القيمة المضافة والتي ستضاف على السعر المعروض (15%).\\n\\n\\n\\n\\n\\nلمعرفة المزيد عن طريقة ربط متجرك بأرامكس\",\"en\":null}',1,'aramex','tsoq','[\"account_country_code\", \"account_entity\", \"account_number\", \"account_pin\", \"username\", \"password\"]',5,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(19,'{\"ar\":\"Omni lama\",\"en\":\"Omni lama\"}','{\"ar\":\"Omni lama\",\"en\":\"Omni lama\"}','{\"ar\":\"Omni lama\",\"en\":\"Omni lama\"}',1,'omni-lama','tsoq','[\"username\", \"password\"]',5,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(20,'{\"ar\":\"DHL Express\",\"en\":\"DHL Express\"}','{\"ar\":\"خدمة شحن منتجات المتاجر الإلكترونية وتوصيلها، وتغطي معظم مناطق المملكة\",\"en\":null}','{\"ar\":\"هي إحدى الشركات الرائدة في مجال العمليات اللوجستية في المملكة العربية السعودية، وتشمل خدماتها شحن منتجات المتاجر الإلكترونية وتوصيلها، وتغطي معظم مناطق المملكة بهدف تسهيل وصول الخدمات للعملاء بسرعة وسهولة\\n\\n\\n\\nالخدمات:\\n\\nخدمة الشحن والتوصيل داخل المدينة\\nخدمة الشحن والتوصيل بين المدن\\nخدمة الشحن الدولي لأكثر من 220 دولة\\nخدمة الاستلام والتوصيل من الباب للباب\\n\\n\\nطريقة التعاقد والربط: \\n\\nمن خلال التواصل مع مدير الحساب الخاص بك في دي اتش ال\\n\\nلفتح حساب جديد نرجو التواصل مع خدمة العملاء\\n\\n\\n\\nآلية البوليصة: \\n\\nيتم تحضير البوليصة من خلال منصة سلة المربوطة بموقع دي اتش ال\\n\\nملاحظة: الشحن المحلي يتطلب وجود رقم بوليصة الشحن والفاتورة، والشحن الدولي يتطلب وجود رقم بوليصة الشحن، والفاتورة باللغة الإنجليزية\\n\\n\\n\\nطريقة احتساب الوزن:\\n\\nفي الفاتورة يتم احتساب الوزن الفعلي أو الحجمي، أيهما أكبر\\n\\nالوزن الفعلي:\\n\\nهو الوزن المحتسب على الميزان بالكجم\\n\\nالوزن الحجمي:\\n\\nيتم حساب الوزن الحجمي حسب المعادلة التالية (الطول × الارتفاع × العرض / 5000):\\n\\nمثال:\\n\\nشحنة وزنها 10 كجم، وأبعادها كالتالي:\\n\\nالارتفاع = 100 سم\\n\\nالعرض = 100 سم\\n\\nالطول = 100 سم\\n\\nيصبح الوزن الحجمي = (100 × 100 × 100) / 5000 = 200 كجم\\n\\nوبما أن الوزن الحجمي أكبر من الوزن الفعلي؛ فسيتم اعتبار الوزن الحجمي للشحنة الشحنة وهو 200 كجم\\n\\n\\n\\nملاحظة: يتم حساب كل من الوزن الإجمالي والوزن الحجمي تلقائيًا.\\n\\n\\n\\nمزايا DHL:\\n\\nإمكانية تتبع الشحنات بشكل مباشر عبر الموقع الإلكتروني\\nالربط المباشر مع متجرك الإلكتروني بسهولة\\nإمكانية تحديد الوقت والتاريخ للتسليم عبر الموقع الإلكتروني بكل سهولة\\nتقديم خدمات إضافية مرنة تلبي احتياج العميل مثل تعبئة وتغليف المنتجات\\nإمكانية التأمين على الشحنات بناء على قيمة الشحنة\\nالتسليم أيام السبت للشحنات الصغيرة التي يصل وزنها إلى 30 كجم. (متاحة في مواقع محددة)\\nإمكانية تسليم الشحنات للعميل دون الإفصاح عن معلوماتها كقيمة المنتج أو عرضه على العميل، حيث تحرص الشركة على إزالة الفاتورة قبل التسليم. (مناسب للهدايا)\\nسهولة تحديد مواقع العملاء، حيث تعلم شركة DHL المستلم بمسار الشحنة من خلال البريد الإلكتروني أو الرسالة النصية، ويمكن للمستلم تحديد خيار الاستلام المناسب له\\n\\n\\n\\n\\nلمعرفة المزيد عن التطبيق وطريقة الربط يرجى قراءة المقالة على مركز المساعدة.\",\"en\":null}',1,'dhl-express','tsoq',NULL,5,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(21,'{\"ar\":\"mora\",\"en\":\"mora\"}','{\"ar\":\"mora\",\"en\":\"mora\"}','{\"ar\":\"mora\",\"en\":\"mora\"}',1,'mora','tsoq','[\"api_key\", \"username\"]',6,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(22,'{\"ar\":\"twillio\",\"en\":\"twillio\"}','{\"ar\":\"twillio\",\"en\":\"twillio\"}','{\"ar\":\"twillio\",\"en\":\"twillio\"}',1,'twillio','tsoq','[\"TWILIO_ACCOUNT_SID\", \"TWILIO_AUTH_TOKEN\", \"TWILIO_WHATSAPP_PHONE_NUMBER\"]',6,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(23,'{\"ar\":\"سمسا\",\"en\":\"smsa\"}','{\"ar\":\"تقدم خدمات لوجستية متكاملة تشمل شحن جميع أنواع المنتجات وتوصيلها وتوزيعها وتخزينها وإدارتها بفاعلية واحتراف.\",\"en\":null}','{\"ar\":\"هي شركة سعودية تقدم خدمات لوجستية متكاملة تشمل شحن جميع أنواع المنتجات وتوصيلها وتوزيعها وتخزينها وإدارتها بفاعلية واحتراف.\\n\\n \\n\\nالخدمات:\\n\\nخدمة سمسا اكسبريس: خيارك الأسرع لتوصيل شحنتك من مكان إلى آخر.\\nخدمة الشحن: خيارك الأنسب للشحنات الهامة، الكبيرة منها والثقيلة.\\nخدمة اللوجستية:\\nلتسيير عملياتك التشغيلية المستمرة.\\nخدمات التجارة الإلكترونية:\\nتوفر واجهة سهلة الاستخدام وأدوات تتبع الشحنات وإدارة حركة البضائع الصادرة والواردة بشكل فوري.\\nخدمة التوصيل للميل الأخير (last mile delivery): أي تسليم المنتج إلى العميل النهائي للمتجر الإلكتروني.\\nلا تتوفر خدمة الدفع عند الاستلام.\\nخدمة التوصيل من التاجر إلى باب العميل (D2D) متاحة للتجار الذين تجاوزت عدد شحناتهم 10-15 شحنة لكل يوم.\\n\\n\\nالأسعار:\\n\\nقيمة التوصيل 25 ريالًا لأول 15كجم، ويتم احتساب 2 ريال لكل 1 كجم إضافي.\\nجميع الأسعار خاضعة لضريبة القيمة المضافة 15%.\\n\\n\\n\\nطريقة تفعيل واستخدام بوليصات سمسا:\\n\\nفعّل شركة الشحن سمسا بعد شرائك للبوليصات من خلال خيارات الشحن والتوصيل، ثم اختيار شركة الشحن سمسا، ستظهر بعدها شاشة اضغط فيها على خيار الربط.\\n\\n\\n\\nطريقة البوليصات:\\n\\nسيظهر للعميل عند محاولة شرائه خيار سمسا.\\nعند اختيار العمل لشركة سمسا للشحن، بعد تحويل طلب العميل إلى (مكتمل) بواسطة التاجر، سيتم تصدير البوليصة على شكل ملف pdf .\\nسيجد البوليصة عند الذهاب لتبويب الطلبات، وبعد الضغط على اسم العميل الذي اختار سمسا في طلبه، سيتم تحميل الملف إلى جهاز الحاسب الآلي الخاص بالتاجر، ثم طباعة 3 نسخ من البوليصة.\\nسترفق البوليصة مع المنتج الجاهز للشحن، وتُسلم لأقرب فرع لسمسا.\\n\\n\\nملاحظة: خدمة الشحن سمسا المرتبطة بمنصة سلة لا تشمل التالي: البوليصات لا يتوفر معها خدمة التغليف الخاص للمنتجات الحساسة، ويجب على التاجر توفيرها حسب اشتراطات سمسا (نرجو التواصل مع سمسا لمعرفة نوع التغليف المطلوب لمنتجاتكم الخاصة، مثل العسل والزيوت والأشياء الزجاجية وغيرها).\\n\\n\\n\\nفي الوقت الحالي تدعم بوليصات سلة الشحن المحلي فقط، وأما العملاء بحساباتهم الخاصة فيختلف الشحن حسب العرض المقدم من الشركة.\\n\\n\\n\\nمزايا سمسا:\\n\\nالربط مع متجرك الإلكتروني بخطوات قليلة وسهلة.\\nإمكانية التتبع الفوري لمسار الشحنة.\\nإمكانية التحقق من العنوان والهوية الشخصية.\\nإشعار العميل بحالة الشحنة عبر الرسائل النصية.\\nإنشاء ملفات شخصية للعملاء مع إمكانية دخولهم إليها بشكل آمن وضبط الإعدادات الشخصية.\\nتزويد العميل بتقارير حول حالة الشحنات.\\n\\n\\n\\n\\nلمعرفة طريقة الربط مع سمسا يرجى قراءة المقالة في مركز المساعدة.\",\"en\":null}',1,'smsa','tsoq',NULL,5,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(24,'{\"ar\":\"SBL\",\"en\":\"SBL\"}','{\"ar\":\"SBL\",\"en\":\"SBL\"}','{\"ar\":\"SBL\",\"en\":\"SBL\"}',1,'sbl','tsoq',NULL,5,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(25,'{\"ar\":\"\\nGoogle Analytics\",\"en\":\"Google Analytics\"}','{\"ar\":\"خدمة تمكنك من جمع وتحليل البيانات من متجرك بسهولة وسلاسة\",\"en\":null}','{\"ar\":\"نبذة عن التطبيق:\\nخدمة تساعدك لمعرفة عدد الزوار لمتجرك في مدة زمنية محددة، كما تساعدك ايضا في معرفة معلومات مهمة عن زوار متجرك كالعمر والجنس والاجهزة المستخدمة في الدخول على المتجر مما يساعدك في تحسين وتطوير تجارتك.\\n\\nآلية الربط\\n\\nلمعرفة كيفية التفعيل اضغط هنا\",\"en\":null}',1,'google-analytics','tsoq','[\"script\"]',5,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(26,'{\"ar\":\"Google ads\",\"en\":\"Google ads\"}','{\"ar\":\"اكتشف النمو مع قوقل أدز\",\"en\":null}','{\"ar\":\"نبذة عن التطبيق:\\nمنصة إعلانية تساعد الشركات على الوصول إلى جمهورها المستهدف، وزيادة حركة المرور إلى موقعها على الويب، وزيادة معدل التحويل من خلال حملات إعلانية فعالة وقابلة للتخصيص\\n\\nآلية الربط\\n\\nلمعرفة كيفية التفعيل اضغط هنا\",\"en\":null}',1,'google-ads','tsoq','[\"id\", \"event_name\"]',3,'2024-08-01 21:42:14','2024-08-01 21:42:14'),(27,'{\"ar\":\"Invoices\",\"en\":\"Invoices\"}','{\"ar\":\"Invoices\",\"en\":\"Invoices\"}','{\"ar\":\"Invoices\",\"en\":\"Invoices\"}',1,'invoice','tsoq',NULL,7,'2024-08-01 21:42:14','2024-08-01 21:42:14');
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `plugin_id` bigint unsigned NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_plugin_id_foreign` (`plugin_id`),
  CONSTRAINT `reviews_plugin_id_foreign` FOREIGN KEY (`plugin_id`) REFERENCES `plugins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialite_new_tenant_data`
--

DROP TABLE IF EXISTS `socialite_new_tenant_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialite_new_tenant_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `identifier` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `name` text COLLATE utf8mb4_unicode_ci,
  `tenant_is_created` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialite_new_tenant_data`
--

LOCK TABLES `socialite_new_tenant_data` WRITE;
/*!40000 ALTER TABLE `socialite_new_tenant_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialite_new_tenant_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_owners`
--

DROP TABLE IF EXISTS `store_owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_owners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `password` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `identifier` text COLLATE utf8mb4_unicode_ci,
  `tenant_is_created` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `store_owners_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_owners`
--

LOCK TABLES `store_owners` WRITE;
/*!40000 ALTER TABLE `store_owners` DISABLE KEYS */;
INSERT INTO `store_owners` (`id`, `name`, `email`, `phone`, `password`, `tenant_id`, `active`, `identifier`, `tenant_is_created`, `created_at`, `updated_at`) VALUES (1,'Dev','dev@tsoq.com','123456789','$2y$12$ff.Tao0XmYaVdEyXYhsuIOgSj9jENudTrQGxhR62DE8.tQCGoo5we','dev',1,NULL,0,'2024-08-01 21:42:16','2024-08-01 21:42:16'),(2,'moustafa','mo@GMAIL.COM',NULL,'$2y$12$SYEXAoV9UvX0UnaeI5rqberwEbAfZ6ncIMVV72X1NBT/ZWIdE6PNa','tsoq',1,NULL,1,'2024-08-05 17:01:25','2024-08-05 17:01:25');
/*!40000 ALTER TABLE `store_owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenants` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
INSERT INTO `tenants` (`id`, `created_at`, `updated_at`, `data`) VALUES ('dev','2024-08-01 21:42:14','2024-08-01 21:42:14','{\"created_at\": \"2024-08-01 21:42:14\", \"updated_at\": \"2024-08-01 21:42:14\", \"tenancy_db_name\": \"tenantdev\"}'),('tsoq','2024-08-05 17:01:23','2024-08-05 17:01:23','{\"created_at\": \"2024-08-05 17:01:23\", \"updated_at\": \"2024-08-05 17:01:23\", \"tenancy_db_name\": \"tenanttsoq\"}');
/*!40000 ALTER TABLE `tenants` ENABLE KEYS */;
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
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
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

--
-- Dumping events for database 'tsoqcomsa_tsoq'
--

--
-- Dumping routines for database 'tsoqcomsa_tsoq'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-08 13:13:05
