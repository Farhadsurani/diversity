/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.11-MariaDB : Database - diversity
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`diversity` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `diversity`;

/*Table structure for table `admin_queries` */

DROP TABLE IF EXISTS `admin_queries`;

CREATE TABLE `admin_queries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0,1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_queries` */

/*Table structure for table `chapter_pages` */

DROP TABLE IF EXISTS `chapter_pages`;

CREATE TABLE `chapter_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `chapter_id` int(11) DEFAULT NULL,
  `number` varchar(200) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `chapter_pages` */

insert  into `chapter_pages`(`id`,`chapter_id`,`number`,`details`,`created_at`,`updated_at`,`deleted_at`) values (1,4,'1','text','2020-04-11 21:26:22','2020-04-11 21:26:22',NULL);

/*Table structure for table `chapters` */

DROP TABLE IF EXISTS `chapters`;

CREATE TABLE `chapters` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `chapters` */

insert  into `chapters`(`id`,`course_id`,`name`,`image`,`details`,`created_at`,`updated_at`,`deleted_at`) values (1,1,'Testing','Chapter/jnfKZT2tQDTyQcwPzFcpNPT7KuEKI4yDXKe2ly86.jpeg','<p>Te</p>','2020-04-04 18:27:36','2020-04-04 18:40:48',NULL),(2,1,'Two',NULL,'<p>New</p>','2020-04-04 18:33:24','2020-04-04 18:46:05',NULL),(3,2,'First','Chapter/Gi5IZ1eK3l3yhv8V0gt9yyG9FpeQR1stMHLjBl0u.jpeg','<p>Testing redirect</p>','2020-04-04 18:34:07','2020-04-04 18:47:08',NULL),(4,2,'tw0',NULL,'<p>asd</p>','2020-04-04 18:48:23','2020-04-04 18:50:26',NULL);

/*Table structure for table `course_details` */

DROP TABLE IF EXISTS `course_details`;

CREATE TABLE `course_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `details` text DEFAULT NULL,
  `cover` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `course_details` */

insert  into `course_details`(`id`,`course_id`,`details`,`cover`,`created_at`,`updated_at`,`deleted_at`) values (1,1,'<h1>New Things</h1>','Course/dmY6exj07M1dYTAKDAdJffX6zG7jssGwc3S2P3F0.jpeg','2020-04-04 17:16:09','2020-04-04 17:28:59',NULL),(2,2,'<p>Two</p>',NULL,'2020-04-04 17:31:34','2020-04-04 18:46:34',NULL);

/*Table structure for table `courses` */

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(224) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `courses` */

insert  into `courses`(`id`,`name`,`created_at`,`updated_at`,`deleted_at`) values (1,'Testing','2020-04-04 17:16:09','2020-04-04 17:16:09',NULL),(2,'Two','2020-04-04 17:31:34','2020-04-04 18:46:34',NULL);

/*Table structure for table `locales` */

DROP TABLE IF EXISTS `locales`;

CREATE TABLE `locales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0,1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `locales` */

insert  into `locales`(`id`,`code`,`title`,`native_name`,`direction`,`status`,`created_at`,`updated_at`,`deleted_at`) values (1,'en','English',NULL,'LTR',1,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(2,'ar','Arabic',NULL,'RTL',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(3,'ab','Abkhaz',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(4,'aa','Afar',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(5,'af','Afrikaans',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(6,'ak','Akan',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(7,'sq','Albanian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(8,'am','Amharic',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(9,'an','Aragonese',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(10,'hy','Armenian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(11,'as','Assamese',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(12,'av','Avaric',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(13,'ae','Avestan',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(14,'ay','Aymara',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(15,'az','Azerbaijani',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(16,'bm','Bambara',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(17,'ba','Bashkir',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(18,'eu','Basque',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(19,'be','Belarusian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(20,'bn','Bengali',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(21,'bh','Bihari',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(22,'bi','Bislama',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(23,'bs','Bosnian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(24,'br','Breton',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(25,'bg','Bulgarian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(26,'my','Burmese',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(27,'ca','Catalan; Valencian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(28,'ch','Chamorro',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(29,'ce','Chechen',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(30,'ny','Chichewa; Chewa; Nyanja',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(31,'zh','Chinese',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(32,'cv','Chuvash',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(33,'kw','Cornish',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(34,'co','Corsican',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(35,'cr','Cree',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(36,'hr','Croatian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(37,'cs','Czech',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(38,'da','Danish',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(39,'dv','Divehi; Dhivehi; Maldivian;',NULL,'RTL',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(40,'nl','Dutch',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(41,'eo','Esperanto',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(42,'et','Estonian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(43,'ee','Ewe',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(44,'fo','Faroese',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(45,'fj','Fijian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(46,'fi','Finnish',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(47,'fr','French',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(48,'ff','Fula; Fulah; Pulaar; Pular',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(49,'gl','Galician',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(50,'ka','Georgian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(51,'de','German',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(52,'el','Greek, Modern',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(53,'gn','Guaraní',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(54,'gu','Gujarati',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(55,'ht','Haitian; Haitian Creole',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(56,'ha','Hausa',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(57,'he','Hebrew (modern)',NULL,'RTL',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(58,'hz','Herero',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(59,'hi','Hindi',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(60,'ho','Hiri Motu',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(61,'hu','Hungarian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(62,'ia','Interlingua',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(63,'id','Indonesian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(64,'ie','Interlingue',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(65,'ga','Irish',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(66,'ig','Igbo',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(67,'ik','Inupiaq',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(68,'io','Ido',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(69,'is','Icelandic',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(70,'it','Italian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(71,'iu','Inuktitut',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(72,'ja','Japanese',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(73,'jv','Javanese',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(74,'kl','Kalaallisut, Greenlandic',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(75,'kn','Kannada',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(76,'kr','Kanuri',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(77,'ks','Kashmiri',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(78,'kk','Kazakh',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(79,'km','Khmer',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(80,'ki','Kikuyu, Gikuyu',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(81,'rw','Kinyarwanda',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(82,'ky','Kirghiz, Kyrgyz',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(83,'kv','Komi',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(84,'kg','Kongo',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(85,'ko','Korean',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(86,'ku','Kurdish',NULL,'RTL',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(87,'kj','Kwanyama, Kuanyama',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(88,'la','Latin',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(89,'lb','Luxembourgish, Letzeburgesch',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(90,'lg','Luganda',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(91,'li','Limburgish, Limburgan, Limburger',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(92,'ln','Lingala',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(93,'lo','Lao',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(94,'lt','Lithuanian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(95,'lu','Luba-Katanga',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(96,'lv','Latvian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(97,'gv','Manx',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(98,'mk','Macedonian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(99,'mg','Malagasy',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(100,'ms','Malay',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(101,'ml','Malayalam',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(102,'mt','Maltese',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(103,'mi','Māori',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(104,'mr','Marathi (Marāṭhī)',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(105,'mh','Marshallese',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(106,'mn','Mongolian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(107,'na','Nauru',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(108,'nv','Navajo, Navaho',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(109,'nb','Norwegian Bokmål',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(110,'nd','North Ndebele',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(111,'ne','Nepali',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(112,'ng','Ndonga',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(113,'nn','Norwegian Nynorsk',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(114,'no','Norwegian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(115,'ii','Nuosu',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(116,'nr','South Ndebele',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(117,'oc','Occitan',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(118,'oj','Ojibwe, Ojibwa',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(119,'cu','Old Church Slavonic, Church Slavic, Church Slavonic, Old Bulgarian, Old Slavonic',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(120,'om','Oromo',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(121,'or','Oriya',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(122,'os','Ossetian, Ossetic',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(123,'pa','Panjabi, Punjabi',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(124,'pi','Pāli',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(125,'fa','Persian',NULL,'RTL',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(126,'pl','Polish',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(127,'ps','Pashto, Pushto',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(128,'pt','Portuguese',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(129,'qu','Quechua',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(130,'rm','Romansh',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(131,'rn','Kirundi',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(132,'ro','Romanian, Moldavian, Moldovan',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(133,'ru','Russian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(134,'sa','Sanskrit (Saṁskṛta)',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(135,'sc','Sardinian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(136,'sd','Sindhi',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(137,'se','Northern Sami',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(138,'sm','Samoan',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(139,'sg','Sango',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(140,'sr','Serbian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(141,'gd','Scottish Gaelic; Gaelic',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(142,'sn','Shona',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(143,'si','Sinhala, Sinhalese',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(144,'sk','Slovak',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(145,'sl','Slovene',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(146,'so','Somali',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(147,'st','Southern Sotho',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(148,'es','Spanish; Castilian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(149,'su','Sundanese',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(150,'sw','Swahili',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(151,'ss','Swati',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(152,'sv','Swedish',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(153,'ta','Tamil',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(154,'te','Telugu',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(155,'tg','Tajik',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(156,'th','Thai',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(157,'ti','Tigrinya',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(158,'bo','Tibetan Standard, Tibetan, Central',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(159,'tk','Turkmen',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(160,'tl','Tagalog',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(161,'tn','Tswana',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(162,'to','Tonga (Tonga Islands)',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(163,'tr','Turkish',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(164,'ts','Tsonga',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(165,'tt','Tatar',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(166,'tw','Twi',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(167,'ty','Tahitian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(168,'ug','Uighur, Uyghur',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(169,'uk','Ukrainian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(170,'ur','Urdu',NULL,'RTL',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(171,'uz','Uzbek',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(172,'ve','Venda',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(173,'vi','Viettitlese',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(174,'vo','Volapük',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(175,'wa','Walloon',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(176,'cy','Welsh',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(177,'wo','Wolof',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(178,'fy','Western Frisian',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(179,'xh','Xhosa',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(180,'yi','Yiddish',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(181,'yo','Yoruba',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(182,'za','Zhuang, Chuang',NULL,'LTR',0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL);

/*Table structure for table `menus` */

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(4) NOT NULL DEFAULT 0,
  `is_protected` tinyint(4) NOT NULL DEFAULT 0,
  `static` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_module_id_foreign` (`module_id`),
  CONSTRAINT `menus_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menus` */

insert  into `menus`(`id`,`module_id`,`name`,`icon`,`slug`,`position`,`is_protected`,`static`,`status`,`created_at`,`updated_at`,`deleted_at`) values (1,1,'Dashboard','fa fa-dashboard','dashboard',1,1,0,1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(2,3,'Users','fa fa-user','users',2,1,0,1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(3,4,'Roles','fa fa-edit','roles',3,1,0,1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(4,5,'Permissions','fa fa-check-square-o','permissions',4,1,0,1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(5,6,'Modules','fa fa-database','modules',5,1,0,1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(6,7,'Languages','fa fa-comments-o','languages',6,1,0,1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(7,8,'Pages','fa fa-wpforms','pages',7,1,0,1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(8,9,'Menus','fa fa-th','menus',8,1,0,1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(9,10,'Contact us','fa fa-mail-forward','contactus',9,1,0,1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(10,11,'Notifications','fa fa-bell','notifications',10,1,0,1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(11,12,'Settings','fa fa-gears','settings',11,1,0,1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(12,13,'Subscriptions','fa fa-bell','subscriptions',12,0,0,1,'2020-04-02 22:06:28','2020-04-02 22:06:28',NULL),(13,14,'Courses','fa fa-book','courses',13,0,0,1,'2020-04-04 17:00:32','2020-04-04 17:00:32',NULL),(14,15,'Chapters','fa fa-newspaper-o','chapters',14,0,0,0,'2020-04-04 17:35:44','2020-04-04 18:40:20',NULL),(16,17,'Chapter Pages','fa fa-file','chapter-pages',15,0,0,0,'2020-04-04 18:54:30','2020-04-11 22:04:32',NULL);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_04_06_081644_entrust_setup_tables',1),(4,'2018_04_06_134936_create_modules_table',1),(5,'2018_04_09_111106_add_soft_delete_in_users_table',1),(6,'2018_04_09_152013_create_menus_table',1),(7,'2018_07_12_083021_create_locales_table',1),(8,'2018_07_12_084644_create_pages_table',1),(9,'2018_07_13_181040_create_notification_table',1),(10,'2018_07_13_191027_create_admin_query_table',1),(11,'2018_10_02_055325_create_settings_table',1);

/*Table structure for table `modules` */

DROP TABLE IF EXISTS `modules`;

CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_module` tinyint(4) NOT NULL DEFAULT 0,
  `config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `modules` */

insert  into `modules`(`id`,`name`,`slug`,`table_name`,`icon`,`status`,`is_module`,`config`,`is_protected`,`created_at`,`updated_at`,`deleted_at`) values (1,'Admin Panel','adminpanel','-','fa fa-dashboard',1,0,'null',1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(2,'Dashboard','dashboard','-','fa fa-dashboard',1,0,'null',1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(3,'Users','users','users','fa fa-user',1,1,'null',1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(4,'Roles','roles','roles','fa fa-edit',1,1,'null',1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(5,'Permissions','permissions','permissions','fa fa-check-square-o',1,1,'null',1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(6,'Modules','modules','modules','fa fa-database',1,1,'null',1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(7,'Languages','languages','locales','fa fa-comments-o',1,1,'null',1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(8,'Page','pages','pages','fa fa-wpforms',1,1,'null',1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(9,'ContactUs','contactus','admin_queries','fa fa-mail-forward',1,1,'null',1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(10,'Notification','notifications','notifications','fa fa-bell',1,1,'null',1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(11,'Menu','menus','menus','fa fa-th',1,1,'null',1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(12,'Setting','settings','app_settings','fa fa-gears',1,1,'[{\"name\":\"id\",\"primary\":true,\"dbType\":\"increments\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false},{\"name\":\"default_language\",\"primary\":false,\"dbType\":\"string,191\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"select\",\"validations\":\"required|exists:locales,code\",\"inIndex\":true,\"searchable\":true},{\"name\":\"email\",\"primary\":false,\"dbType\":\"string,191\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"email\",\"validations\":\"required|email\",\"inIndex\":true,\"searchable\":true},{\"name\":\"logo\",\"primary\":false,\"dbType\":\"string,191\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"text\",\"validations\":\"required|image|mimetypes:text\\/plain,...\",\"inIndex\":true,\"searchable\":true},{\"name\":\"phone\",\"primary\":false,\"dbType\":\"string,191\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"text\",\"validations\":\"required\",\"inIndex\":true,\"searchable\":true},{\"name\":\"latitude\",\"primary\":false,\"dbType\":\"string,191\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"number\",\"validations\":\"required\",\"inIndex\":false,\"searchable\":false},{\"name\":\"longitude\",\"primary\":false,\"dbType\":\"string,191\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"number\",\"validations\":\"required\",\"inIndex\":false,\"searchable\":false},{\"name\":\"playstore\",\"primary\":false,\"dbType\":\"string,191\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"text\",\"validations\":\"required\",\"inIndex\":false,\"searchable\":false},{\"name\":\"appstore\",\"primary\":false,\"dbType\":\"string,191\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"text\",\"validations\":\"required\",\"inIndex\":false,\"searchable\":false},{\"name\":\"social_links\",\"primary\":false,\"dbType\":\"text,65535\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"text\",\"validations\":\"required\",\"inIndex\":false,\"searchable\":false},{\"name\":\"app_version\",\"primary\":false,\"dbType\":\"float\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"number\",\"validations\":\"required\",\"inIndex\":true,\"searchable\":true},{\"name\":\"force_update\",\"primary\":false,\"dbType\":\"string,191\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"checkbox\",\"validations\":\"required\",\"inIndex\":true,\"searchable\":true},{\"name\":\"created_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":true,\"searchable\":true},{\"name\":\"updated_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false},{\"name\":\"deleted_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false}]',1,'2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(13,'Subscription','subscriptions','subscription','fa fa-bell',1,1,'[{\"name\":\"id\",\"primary\":true,\"dbType\":\"increments\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"text\",\"validations\":\"required\",\"inIndex\":true,\"searchable\":true},{\"name\":\"name\",\"primary\":false,\"dbType\":\"string,200\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"text\",\"validations\":\"required\",\"inIndex\":true,\"searchable\":true},{\"name\":\"created_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false},{\"name\":\"updated_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false},{\"name\":\"deleted_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false}]',0,'2020-04-02 22:06:19','2020-04-02 22:06:28',NULL),(14,'Course','courses','courses','fa fa-book',1,1,'[{\"name\":\"id\",\"primary\":true,\"dbType\":\"increments\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false},{\"name\":\"name\",\"primary\":false,\"dbType\":\"string,224\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"text\",\"validations\":\"required\",\"inIndex\":true,\"searchable\":true},{\"name\":\"created_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false},{\"name\":\"updated_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false},{\"name\":\"deleted_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false}]',0,'2020-04-04 16:59:30','2020-04-04 17:00:32',NULL),(15,'Chapter','chapters','chapters','fa fa-newspaper-o',1,1,'[{\"name\":\"id\",\"primary\":true,\"dbType\":\"increments\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false},{\"name\":\"name\",\"primary\":false,\"dbType\":\"string,200\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"text\",\"validations\":\"required\",\"inIndex\":true,\"searchable\":true},{\"name\":\"created_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false},{\"name\":\"updated_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false},{\"name\":\"deleted_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false}]',0,'2020-04-04 17:35:30','2020-04-04 17:35:43',NULL),(17,'ChapterPage','chapter-pages','chapter_pages','fa fa-file',1,1,'[{\"name\":\"id\",\"primary\":true,\"dbType\":\"increments\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false},{\"name\":\"chapter_id\",\"primary\":false,\"dbType\":\"increments\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"text\",\"validations\":\"required\",\"inIndex\":true,\"searchable\":true},{\"name\":\"number\",\"primary\":false,\"dbType\":\"string,200\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"text\",\"validations\":\"required\",\"inIndex\":true,\"searchable\":true},{\"name\":\"text\",\"primary\":false,\"dbType\":\"text,65535\",\"fillable\":true,\"inForm\":true,\"htmlType\":\"text\",\"validations\":\"required\",\"inIndex\":true,\"searchable\":true},{\"name\":\"created_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false},{\"name\":\"updated_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false},{\"name\":\"deleted_at\",\"primary\":false,\"dbType\":\"datetime\",\"fillable\":false,\"inForm\":false,\"htmlType\":false,\"validations\":false,\"inIndex\":false,\"searchable\":false}]',0,'2020-04-04 18:54:18','2020-04-04 18:54:30',NULL);

/*Table structure for table `notification_users` */

DROP TABLE IF EXISTS `notification_users`;

CREATE TABLE `notification_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notification_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '10=Sent, 20=Delivered, 30=Read',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_users_user_id_foreign` (`user_id`),
  KEY `notification_users_notification_id_foreign` (`notification_id`),
  CONSTRAINT `notification_users_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `notification_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `notification_users` */

/*Table structure for table `notifications` */

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0,1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_sender_id_foreign` (`sender_id`),
  CONSTRAINT `notifications_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `notifications` */

/*Table structure for table `page_translations` */

DROP TABLE IF EXISTS `page_translations`;

CREATE TABLE `page_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0,1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_translations_page_id_foreign` (`page_id`),
  CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `page_translations` */

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0,1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pages` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permission_role` */

insert  into `permission_role`(`permission_id`,`role_id`) values (1,1),(1,2),(2,1),(2,2),(3,1),(3,2),(4,1),(4,2),(5,1),(5,2),(6,1),(6,2),(7,1),(7,2),(8,1),(8,2),(9,1),(9,2),(10,1),(10,2),(11,1),(11,2),(12,1),(12,2),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(23,2),(24,1),(24,2),(25,1),(25,2),(26,1),(26,2),(27,1),(27,2),(28,1),(28,2),(29,1),(29,2),(30,1),(30,2),(31,1),(31,2),(32,1),(32,2),(33,1),(33,2),(34,1),(34,2),(35,1),(35,2),(36,1),(36,2),(37,1),(37,2),(38,1),(38,2),(39,1),(39,2),(40,1),(40,2),(41,1),(41,2),(42,1),(42,2),(43,1),(43,2),(44,1),(44,2),(45,1),(45,2),(46,1),(46,2),(47,1),(47,2),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(73,1),(74,1),(75,1),(76,1),(77,1);

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(4) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  KEY `permissions_module_id_foreign` (`module_id`),
  CONSTRAINT `permissions_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`module_id`,`name`,`display_name`,`is_protected`,`description`,`created_at`,`updated_at`,`deleted_at`) values (1,1,'adminpanel','Admin Panel',1,'Admin Panel','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(2,2,'dashboard','Dashboard',1,'Dashboard','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(3,3,'users.index','List Users',1,'List Roles','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(4,3,'users.create','Create Users',1,'Create Users','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(5,3,'users.show','View User',1,'View User','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(6,3,'users.edit','Edit User',1,'Edit User','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(7,3,'users.destroy','Delete User',1,'Delete User','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(8,4,'roles.index','List Roles',1,'List Roles','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(9,4,'roles.create','Create Role',1,'Create Role','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(10,4,'roles.show','View Role',1,'View Role','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(11,4,'roles.edit','Edit Role',1,'Edit Role','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(12,4,'roles.destroy','Delete Role',1,'Delete Role','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(13,5,'permissions.index','List Permissions',1,'List Permissions','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(14,5,'permissions.create','Create Permission',1,'Create Permission','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(15,5,'permissions.show','View Permission',1,'View Permission','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(16,5,'permissions.edit','Edit Permission',1,'Edit Permission','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(17,5,'permissions.destroy','Delete Permission',1,'Delete Permission','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(18,6,'modules.index','List Modules',1,'List Modules','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(19,6,'modules.create','Create Module',1,'Create Module','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(20,6,'modules.show','View Module',1,'View Module','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(21,6,'modules.edit','Edit Module',1,'Edit Module','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(22,6,'modules.destroy','Delete Module',1,'Delete Module','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(23,7,'languages.index','List Languages',1,'List Languages','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(24,7,'languages.create','Create Languages',1,'Create Languages','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(25,7,'languages.show','View Languages',1,'View Languages','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(26,7,'languages.edit','Edit Languages',1,'Edit Languages','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(27,7,'languages.destroy','Delete Languages',1,'Delete Languages','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(28,8,'pages.index','List Pages',1,'List Pages','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(29,8,'pages.create','Create Pages',1,'Create Pages','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(30,8,'pages.show','View Pages',1,'View Pages','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(31,8,'pages.edit','Edit Pages',1,'Edit Pages','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(32,8,'pages.destroy','Delete Pages',1,'Delete Pages','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(33,9,'contactus.index','List Contact Us',1,'List Contact Us Record','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(34,9,'contactus.create','Create Contact Us',1,'Create Contact Us Record','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(35,9,'contactus.show','View Contact Us',1,'View Contact Us Record','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(36,9,'contactus.edit','Edit Contact Us',1,'Edit Contact Us Record','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(37,9,'contactus.destroy','Delete Contact Us',1,'Delete Contact Us Record','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(38,10,'notifications.index','List Notification',1,'List Notification','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(39,10,'notifications.create','Create Notification',1,'Create Notification','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(40,10,'notifications.show','View Notification',1,'View Notification','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(41,10,'notifications.edit','Edit Notification',1,'Edit Notification','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(42,10,'notifications.destroy','Delete Notification',1,'Delete Notification','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(43,11,'menus.index','List Menu',1,'List Menu','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(44,11,'menus.create','Create Menu',1,'Create Menu','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(45,11,'menus.show','View Menu',1,'View Menu','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(46,11,'menus.edit','Edit Menu',1,'Edit Menu','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(47,11,'menus.destroy','Delete Menu',1,'Delete Menu','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(48,12,'settings.index','Settings',1,'Index Settings','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(49,12,'settings.create','Settings',1,'Create Settings','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(50,12,'settings.show','Settings',1,'Show Settings','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(51,12,'settings.edit','Settings',1,'Edit Settings','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(52,12,'settings.destroy','Settings',1,'Destroy Settings','2020-04-02 14:46:00','2020-04-02 14:46:00',NULL),(53,13,'subscriptions.index','Subscriptions',0,'Index Subscriptions','2020-04-02 17:06:28','2020-04-02 17:06:28',NULL),(54,13,'subscriptions.create','Subscriptions',0,'Create Subscriptions','2020-04-02 17:06:28','2020-04-02 17:06:28',NULL),(55,13,'subscriptions.show','Subscriptions',0,'Show Subscriptions','2020-04-02 17:06:28','2020-04-02 17:06:28',NULL),(56,13,'subscriptions.edit','Subscriptions',0,'Edit Subscriptions','2020-04-02 17:06:28','2020-04-02 17:06:28',NULL),(57,13,'subscriptions.destroy','Subscriptions',0,'Destroy Subscriptions','2020-04-02 17:06:28','2020-04-02 17:06:28',NULL),(58,14,'courses.index','Courses',0,'Index Courses','2020-04-04 12:00:32','2020-04-04 12:00:32',NULL),(59,14,'courses.create','Courses',0,'Create Courses','2020-04-04 12:00:32','2020-04-04 12:00:32',NULL),(60,14,'courses.show','Courses',0,'Show Courses','2020-04-04 12:00:32','2020-04-04 12:00:32',NULL),(61,14,'courses.edit','Courses',0,'Edit Courses','2020-04-04 12:00:32','2020-04-04 12:00:32',NULL),(62,14,'courses.destroy','Courses',0,'Destroy Courses','2020-04-04 12:00:32','2020-04-04 12:00:32',NULL),(63,15,'chapters.index','Chapters',0,'Index Chapters','2020-04-04 12:35:43','2020-04-04 12:35:43',NULL),(64,15,'chapters.create','Chapters',0,'Create Chapters','2020-04-04 12:35:44','2020-04-04 12:35:44',NULL),(65,15,'chapters.show','Chapters',0,'Show Chapters','2020-04-04 12:35:44','2020-04-04 12:35:44',NULL),(66,15,'chapters.edit','Chapters',0,'Edit Chapters','2020-04-04 12:35:44','2020-04-04 12:35:44',NULL),(67,15,'chapters.destroy','Chapters',0,'Destroy Chapters','2020-04-04 12:35:44','2020-04-04 12:35:44',NULL),(73,17,'chapter-pages.index','Chapter Pages',0,'Index Chapter Pages','2020-04-04 13:54:30','2020-04-04 13:54:30',NULL),(74,17,'chapter-pages.create','Chapter Pages',0,'Create Chapter Pages','2020-04-04 13:54:30','2020-04-04 13:54:30',NULL),(75,17,'chapter-pages.show','Chapter Pages',0,'Show Chapter Pages','2020-04-04 13:54:30','2020-04-04 13:54:30',NULL),(76,17,'chapter-pages.edit','Chapter Pages',0,'Edit Chapter Pages','2020-04-04 13:54:30','2020-04-04 13:54:30',NULL),(77,17,'chapter-pages.destroy','Chapter Pages',0,'Destroy Chapter Pages','2020-04-04 13:54:30','2020-04-04 13:54:30',NULL);

/*Table structure for table `role_user` */

DROP TABLE IF EXISTS `role_user`;

CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `role_user` */

insert  into `role_user`(`user_id`,`role_id`) values (1,1),(2,2),(2,3),(5,3),(6,3),(7,3);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(4) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`display_name`,`is_protected`,`description`,`created_at`,`updated_at`,`deleted_at`) values (1,'super-admin','Super Admin',1,'Super Admin has all permissions','2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(2,'admin','Administrators',1,'Assign this role to all the users who are administrators.','2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(3,'user','Users',1,'Users will be able to access front-end functionality','2020-04-02 14:46:01','2020-04-02 14:46:01',NULL);

/*Table structure for table `setting_translations` */

DROP TABLE IF EXISTS `setting_translations`;

CREATE TABLE `setting_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setting_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `setting_translations_setting_id_foreign` (`setting_id`),
  CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `setting_translations` */

insert  into `setting_translations`(`id`,`setting_id`,`locale`,`title`,`address`,`about`,`created_at`,`updated_at`,`deleted_at`) values (1,1,'en','Infyom Ingic',NULL,NULL,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL);

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `default_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `playstore` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appstore` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_links` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` double(3,1) NOT NULL,
  `force_update` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

insert  into `settings`(`id`,`default_language`,`email`,`logo`,`phone`,`latitude`,`longitude`,`playstore`,`appstore`,`social_links`,`app_version`,`force_update`,`created_at`,`updated_at`,`deleted_at`) values (1,'en',NULL,'public/logo.png',NULL,NULL,NULL,NULL,NULL,NULL,1.0,'1','2020-04-02 14:46:01','2020-04-02 14:46:01',NULL);

/*Table structure for table `subscription` */

DROP TABLE IF EXISTS `subscription`;

CREATE TABLE `subscription` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `subscription` */

insert  into `subscription`(`id`,`name`,`created_at`,`updated_at`,`deleted_at`) values (2,'Testing','2020-04-02 22:45:17','2020-04-02 22:45:17',NULL);

/*Table structure for table `subscription_details` */

DROP TABLE IF EXISTS `subscription_details`;

CREATE TABLE `subscription_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subscription_id` int(11) unsigned NOT NULL,
  `details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `subscription_details` */

insert  into `subscription_details`(`id`,`subscription_id`,`details`,`created_at`,`updated_at`,`deleted_at`) values (2,2,'<ul>\r\n	<li>testing</li>\r\n	<li>feature</li>\r\n	<li>list</li>\r\n	<li>new</li>\r\n</ul>','2020-04-02 22:45:17','2020-04-02 22:52:52',NULL);

/*Table structure for table `user_details` */

DROP TABLE IF EXISTS `user_details`;

CREATE TABLE `user_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0,1',
  `email_updates` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0,1',
  `is_social_login` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0,1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_details_user_id_foreign` (`user_id`),
  CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_details` */

insert  into `user_details`(`id`,`user_id`,`first_name`,`last_name`,`phone`,`address`,`image`,`is_verified`,`email_updates`,`is_social_login`,`created_at`,`updated_at`,`deleted_at`) values (1,1,'Super','Admin',NULL,NULL,NULL,1,1,0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(2,2,'Admin','User',NULL,NULL,NULL,1,1,0,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(4,6,NULL,NULL,NULL,NULL,'https://lh3.googleusercontent.com/a-/AOh14Gg6EkjBNRaaDqpAju5whI2jNoiSgtDmKnue4n85',1,0,0,'2020-04-02 21:52:58','2020-04-02 21:52:58',NULL),(5,7,NULL,NULL,NULL,NULL,'https://lh3.googleusercontent.com/a-/AOh14GhVZsAI6Dy8MsH6JwfSVQP2WsqZaHTODk3OfGgVtA',1,0,0,'2020-04-02 23:42:18','2020-04-02 23:42:18',NULL);

/*Table structure for table `user_devices` */

DROP TABLE IF EXISTS `user_devices`;

CREATE TABLE `user_devices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `device_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `push_notification` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0,1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_devices_user_id_foreign` (`user_id`),
  CONSTRAINT `user_devices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_devices` */

/*Table structure for table `user_social_accounts` */

DROP TABLE IF EXISTS `user_social_accounts`;

CREATE TABLE `user_social_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0,1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_social_accounts_user_id_foreign` (`user_id`),
  CONSTRAINT `user_social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_social_accounts` */

insert  into `user_social_accounts`(`id`,`user_id`,`platform`,`client_id`,`token`,`expires_at`,`status`,`created_at`,`updated_at`,`deleted_at`) values (3,5,'facebook','3154191291280495','',NULL,1,'2020-04-02 21:52:32','2020-04-02 21:52:32',NULL),(4,6,'google','110246787212914579814','',NULL,1,'2020-04-02 21:52:58','2020-04-02 21:52:58',NULL),(5,7,'google','102433906554515952808','',NULL,1,'2020-04-02 23:42:18','2020-04-02 23:42:18',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`,`deleted_at`) values (1,'Super Admin','superadmin@boilerplate.com','$2y$10$egAKYBpjG9FFhCsJJDe9WO.dfceH3PrjQjaUUXDxkLOffqmR.BE0S','aEAO9gij40uK6VHObuvgBDNKII6UqysXPYAQebw7kGYAl1ezvi4n65ZK9HfM','2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(2,'Admin','admin@boilerplate.com','$2y$10$y2L0MiJovvqkit5zD4nWme.h3NJ4zmpJLa5Cfst9Txemw8xWrKt1O',NULL,'2020-04-02 14:46:01','2020-04-02 14:46:01',NULL),(5,'Farhad Surani','farhad.surani@hotmail.com','8169e05e2a0debcb15458f2cc1eff0ea','4kUZHXlOJk59QphKZqFFrw88IK8O4T2Wjque9c0rVlTFdAjsmLLPz6L12W6a','2020-04-02 21:52:32','2020-04-02 21:52:32',NULL),(6,'farhad surani','farhad.surani@gmail.com','203827','8rdrjzI4kVFjgsVrcdK4MThKKWhf5buLEOUMM0OtWpc5laXxjdtXuWM9RWk2','2020-04-02 21:52:58','2020-04-02 21:52:58',NULL),(7,'Shawaiz Thayani','shaxthayani@gmail.com','748908','pAbDeafH7yJZdTG1C5kt36q24zrljwv64keOL7HaO92znhspU08xDpGAzXGN','2020-04-02 23:42:18','2020-04-02 23:42:18',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
