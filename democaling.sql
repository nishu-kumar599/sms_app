/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.5.68-MariaDB : Database - democalling
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`democalling` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `democalling`;

/*Table structure for table `active_plans` */

DROP TABLE IF EXISTS `active_plans`;

CREATE TABLE `active_plans` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `plan_id` varchar(5000) NOT NULL,
  `user_id` int(100) NOT NULL,
  `user_email` varchar(5000) NOT NULL,
  `date_time` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `active_plans` */

/*Table structure for table `blogs` */

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_en` varchar(255) NOT NULL,
  `blog_desc_en` longtext NOT NULL,
  `title_es` varchar(255) NOT NULL,
  `blog_desc_es` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `is_enabled` tinyint(4) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `blogs` */

/*Table structure for table `contact_us` */

DROP TABLE IF EXISTS `contact_us`;

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `help_section_contents` varchar(255) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `is_enabled` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=latin1;

/*Data for the table `contact_us` */

/*Table structure for table `contents` */

DROP TABLE IF EXISTS `contents`;

CREATE TABLE `contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_es` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_es` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '1=deleted',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `contents` */

/*Table structure for table `email_log` */

DROP TABLE IF EXISTS `email_log`;

CREATE TABLE `email_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `email` mediumtext NOT NULL,
  `sent_email_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `email_log` */

/*Table structure for table `email_sent` */

DROP TABLE IF EXISTS `email_sent`;

CREATE TABLE `email_sent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `email` mediumtext NOT NULL,
  `sent_email_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `email_sent` */

/*Table structure for table `fax_receive` */

DROP TABLE IF EXISTS `fax_receive`;

CREATE TABLE `fax_receive` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `fax_id` varchar(255) NOT NULL,
  `fax_number` varchar(255) NOT NULL,
  `twilio_num` varchar(255) NOT NULL,
  `fax_url` text NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT 'N/A',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `fax_receive` */

/*Table structure for table `fax_sent` */

DROP TABLE IF EXISTS `fax_sent`;

CREATE TABLE `fax_sent` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sms_number` varchar(255) NOT NULL,
  `twilio_num` varchar(255) NOT NULL,
  `fax_url` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `scheduled_time` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `fax_sent` */

/*Table structure for table `fax_sent_failed` */

DROP TABLE IF EXISTS `fax_sent_failed`;

CREATE TABLE `fax_sent_failed` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `fax_id` varchar(255) NOT NULL,
  `fax_number` varchar(255) NOT NULL,
  `twilio_num` int(255) NOT NULL,
  `fax_url` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `fax_sent_failed` */

/*Table structure for table `fax_sent_log` */

DROP TABLE IF EXISTS `fax_sent_log`;

CREATE TABLE `fax_sent_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `fax_id` varchar(255) NOT NULL,
  `fax_number` varchar(255) NOT NULL,
  `twilio_num` varchar(255) NOT NULL,
  `fax_url` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `fax_sent_log` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `notifications` */

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `admin_mail` tinyint(2) DEFAULT '0' COMMENT '0=for user,1=for admin',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`(191),`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `notifications` */

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int(11) unsigned NOT NULL DEFAULT '1',
  `access` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `usergroups` (`id`),
  CONSTRAINT `permissions_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `usergroups` (`id`),
  CONSTRAINT `permissions_ibfk_3` FOREIGN KEY (`group_id`) REFERENCES `usergroups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

/*Table structure for table `plans` */

DROP TABLE IF EXISTS `plans`;

CREATE TABLE `plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` text NOT NULL,
  `plans` text NOT NULL,
  `validity` int(11) NOT NULL,
  `benifits` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `plans` */

/*Table structure for table `plans_request` */

DROP TABLE IF EXISTS `plans_request`;

CREATE TABLE `plans_request` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `plan_id` varchar(5000) NOT NULL,
  `user_id` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `plans_request` */

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

/*Table structure for table `states` */

DROP TABLE IF EXISTS `states`;

CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

/*Data for the table `states` */

insert  into `states`(`id`,`code`,`name`) values 
(60,'AL','Alabama'),
(61,'AK','Alaska'),
(62,'AS','American Samoa'),
(63,'AZ','Arizona'),
(64,'AR','Arkansas'),
(65,'CA','California'),
(66,'CO','Colorado'),
(67,'CT','Connecticut'),
(68,'DE','Delaware'),
(69,'DC','District of Columbia'),
(70,'FM','Federated States of Micronesia'),
(71,'FL','Florida'),
(72,'GA','Georgia'),
(73,'GU','Guam'),
(74,'HI','Hawaii'),
(75,'ID','Idaho'),
(76,'IL','Illinois'),
(77,'IN','Indiana'),
(78,'IA','Iowa'),
(79,'KS','Kansas'),
(80,'KY','Kentucky'),
(81,'LA','Louisiana'),
(82,'ME','Maine'),
(83,'MH','Marshall Islands'),
(84,'MD','Maryland'),
(85,'MA','Massachusetts'),
(86,'MI','Michigan'),
(87,'MN','Minnesota'),
(88,'MS','Mississippi'),
(89,'MO','Missouri'),
(90,'MT','Montana'),
(91,'NE','Nebraska'),
(92,'NV','Nevada'),
(93,'NH','New Hampshire'),
(94,'NJ','New Jersey'),
(95,'NM','New Mexico'),
(96,'NY','New York'),
(97,'NC','North Carolina'),
(98,'ND','North Dakota'),
(99,'MP','Northern Mariana Islands'),
(100,'OH','Ohio'),
(101,'OK','Oklahoma'),
(102,'OR','Oregon'),
(103,'PW','Palau'),
(104,'PA','Pennsylvania'),
(105,'PR','Puerto Rico'),
(106,'RI','Rhode Island'),
(107,'SC','South Carolina'),
(108,'SD','South Dakota'),
(109,'TN','Tennessee'),
(110,'TX','Texas'),
(111,'UT','Utah'),
(112,'VT','Vermont'),
(113,'VI','Virgin Islands'),
(114,'VA','Virginia'),
(115,'WA','Washington'),
(116,'WV','West Virginia'),
(117,'WI','Wisconsin'),
(118,'WY','Wyoming');

/*Table structure for table `table_data` */

DROP TABLE IF EXISTS `table_data`;

CREATE TABLE `table_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sender` varchar(20) DEFAULT NULL,
  `body` text,
  `date_time` datetime DEFAULT NULL,
  `sending_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;

/*Data for the table `table_data` */

insert  into `table_data`(`id`,`user_id`,`sender`,`body`,`date_time`,`sending_status`) values 
(150,0,'','','2022-04-23 08:50:59','R'),
(151,34,'19148673403','Hry','2022-04-23 08:52:50','R'),
(152,34,'19789447150','Just looking for a quote on a complete cleaning of my vehicle','2022-04-23 10:45:36','R'),
(153,NULL,'19148673403','hgfd','2022-05-28 08:28:55','S'),
(154,NULL,'19148673403','hiiiii','2022-05-30 05:48:58','S'),
(155,NULL,'19148673403','dsf','2022-06-02 14:17:55','S'),
(156,34,'19148673403','test','2022-06-25 09:24:59','S'),
(157,34,'+14242424242','test','2022-06-25 09:26:02','S'),
(158,0,'','','2022-07-07 08:59:55','R'),
(159,0,'','','2022-07-07 09:00:05','R'),
(160,34,'+14242424242','test','2022-07-07 09:00:38','S'),
(161,34,'19148673403','testing first 1','2022-07-07 09:03:31','S'),
(162,34,'12134610332','test message !','2022-07-07 11:21:57','S'),
(163,34,'12134610332','Test','2022-07-07 11:22:31','R'),
(164,NULL,'12134610332','hey testing@@','2022-07-07 11:23:00','S'),
(165,34,'+18502988266','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-07 19:20:02','S'),
(166,34,'18502988266','yes please','2022-07-07 19:21:29','R'),
(167,34,'+18505832051','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-07 19:30:02','S'),
(168,34,'+18502988266','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-07 19:30:04','S'),
(169,NULL,'12134610332','hey','2022-07-08 01:51:08','S'),
(170,NULL,'12134610332','hey','2022-07-08 01:51:09','S'),
(171,34,'12134610332','Testing again','2022-07-08 01:51:44','R'),
(172,34,'+18502988266','fergerhethweth','2022-07-08 03:45:03','S'),
(173,NULL,'18502988266','reply test!','2022-07-08 06:07:00','S'),
(174,NULL,'18502988266','reply test!','2022-07-08 06:07:02','S'),
(175,34,'16802002121','Hey','2022-07-08 06:26:14','S'),
(176,34,'16802002121','Replies test','2022-07-08 06:26:42','R'),
(177,34,'+18503644864','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-08 06:45:03','S'),
(178,34,'+18505832051','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-08 06:45:04','S'),
(179,34,'18503644864','Yes Nic','2022-07-08 07:32:44','R'),
(180,34,'+18503644864','8:10 AM 16:10 MRU','2022-07-08 08:10:02','S'),
(181,34,'1213)4610332','testing first (single  message)','2022-07-08 11:26:50','S'),
(182,34,'12134610332','hey hii','2022-07-08 11:28:06','R'),
(183,34,'12134610332','testing single message ','2022-07-08 11:29:19','S'),
(184,34,'12134610332','hey hello','2022-07-08 11:29:49','R'),
(185,NULL,'12134610332','hiii','2022-07-08 11:30:09','S'),
(186,NULL,'12134610332','hiii','2022-07-08 11:30:10','S'),
(187,34,'+18503644864','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-08 16:50:03','S'),
(188,34,'+18505832051','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-08 16:50:04','S'),
(189,34,'+12016815062','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-08 16:50:06','S'),
(190,34,'+16195506679','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-08 16:50:07','S'),
(191,34,'+12109547950','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-08 16:50:08','S'),
(192,34,'+18052184884','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-08 16:50:10','S'),
(193,34,'+15083582622','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-08 16:50:11','S'),
(194,34,'+13057332705','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-08 16:50:13','S'),
(195,34,'+19515001446','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-08 16:50:14','S'),
(196,34,'+14254055516','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-08 16:50:15','S'),
(197,34,'16802002121','Hey, How are you?','2022-07-09 09:09:45','S'),
(198,34,'16802002121','All good','2022-07-09 09:10:31','R'),
(199,34,'+16802002121','Hey bulk message test','2022-07-09 09:20:02','S'),
(200,34,'+Matt Zuckerman','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-09 12:45:15','S'),
(201,34,'+Andrea Wooten','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-09 12:45:39','S'),
(202,34,'+Desmond Haye','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-09 12:45:49','S'),
(203,34,'+G. Kelly ODea','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-09 12:46:28','S'),
(204,34,'+Andrew Garcia','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-09 12:47:41','S'),
(205,34,'+Gustin Elrod','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-09 12:47:45','S'),
(206,34,'+Andres J Perez','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-09 12:50:12','S'),
(207,34,'+Bruce Hengey','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-09 12:50:43','S'),
(208,34,'+Derrick Litt','Hey! Weve got Hight intent Google final expense leads for $23lead or less instead of $25lead in these following states: TX, FL, LA, GA, MI, Il, AL, IN or PA. Minimum order is 50 leads. Interested? - Mo - M.A.B. Media','2022-07-09 12:57:44','S'),
(209,34,'18502988266','hey','2022-07-09 17:33:53','R'),
(210,34,'18503644864','Replied Mo','2022-07-09 17:41:18','R'),
(211,34,'12134610332','testing....','2022-07-29 17:16:22','S'),
(212,34,'12134610332','Yes hello','2022-07-29 17:18:40','R'),
(213,120,'17402278398','?','2022-08-01 12:26:09','R'),
(214,34,'18453134047','Test back','2022-08-08 22:26:47','R'),
(215,120,'18453134047','Test back for 308 number','2022-08-08 22:27:59','R'),
(216,120,'12134610332','Hey hii this is test','2022-08-08 22:32:30','R'),
(217,120,'12134610332','Test','2022-08-08 22:33:50','R'),
(218,120,'12134610332','This is testing','2022-08-08 22:39:35','R'),
(219,34,'12134610332','test','2022-08-16 12:07:15','S'),
(220,34,'12134610332','hii','2022-08-16 12:19:24','R'),
(221,34,'917247838856','test message','2023-06-01 03:00:02','R'),
(222,34,'917247838856','Hello','2023-06-06 07:33:59','S'),
(223,34,'917247838856','Testing','2023-06-06 08:14:57','R'),
(224,34,'917247838856','testing 123','2023-06-07 00:44:38','S'),
(225,34,'917247838856','It is a long established fact that a reader will be distracted','2023-06-07 06:59:35','S'),
(226,34,'917247838856','It is a long established fact that a reader will be distracted','2023-06-07 07:00:15','R'),
(227,0,'917247838856','test message','2023-06-12 03:15:31','R'),
(228,0,'917247838856','test hello','2023-06-12 03:58:48','R');

/*Table structure for table `tap_validate_num` */

DROP TABLE IF EXISTS `tap_validate_num`;

CREATE TABLE `tap_validate_num` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sender` varchar(20) DEFAULT NULL,
  `body` text,
  `date_time` datetime DEFAULT NULL,
  `lead_date` date NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_location` text NOT NULL,
  `interest_level` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `twilio_num` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `address` text,
  `postal_code` int(12) DEFAULT NULL,
  `user_type` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `tap_validate_num` */

/*Table structure for table `tapp_blacklist` */

DROP TABLE IF EXISTS `tapp_blacklist`;

CREATE TABLE `tapp_blacklist` (
  `number` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_blacklist` */

insert  into `tapp_blacklist`(`number`,`keyword`,`datetime`,`id`,`user_id`) values 
('919756359898','','2023-05-30 03:52:41',2,34);

/*Table structure for table `tapp_bulk_sms` */

DROP TABLE IF EXISTS `tapp_bulk_sms`;

CREATE TABLE `tapp_bulk_sms` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `list_name` varchar(50) NOT NULL,
  `mobile_number` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_bulk_sms` */

/*Table structure for table `tapp_countries` */

DROP TABLE IF EXISTS `tapp_countries`;

CREATE TABLE `tapp_countries` (
  `id` int(11) NOT NULL DEFAULT '0',
  `sortname` varchar(3) CHARACTER SET utf8 NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tapp_countries` */

/*Table structure for table `tapp_create_groups` */

DROP TABLE IF EXISTS `tapp_create_groups`;

CREATE TABLE `tapp_create_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_create_groups` */

insert  into `tapp_create_groups`(`id`,`name`,`user_id`) values 
(1,'testing',34);

/*Table structure for table `tapp_drft_msg` */

DROP TABLE IF EXISTS `tapp_drft_msg`;

CREATE TABLE `tapp_drft_msg` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(500) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_drft_msg` */

/*Table structure for table `tapp_email_configuaration` */

DROP TABLE IF EXISTS `tapp_email_configuaration`;

CREATE TABLE `tapp_email_configuaration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host_type` varchar(200) NOT NULL,
  `host_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `from_email` varchar(100) NOT NULL,
  `from_name` varchar(100) NOT NULL,
  `add_reply_to` varchar(100) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tapp_email_configuaration` */

/*Table structure for table `tapp_groups` */

DROP TABLE IF EXISTS `tapp_groups`;

CREATE TABLE `tapp_groups` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(500) NOT NULL,
  `number` varchar(1000) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `fk_group_data` int(11) DEFAULT NULL,
  `user_id` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `g_inx` (`group_name`),
  KEY `fi_name` (`first_name`),
  KEY `li_name` (`last_name`)
) ENGINE=MyISAM AUTO_INCREMENT=6021 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tapp_groups` */

insert  into `tapp_groups`(`id`,`group_name`,`number`,`first_name`,`last_name`,`email`,`country`,`date_time`,`fk_group_data`,`user_id`) values 
(6020,'testing','8987654328','test',NULL,NULL,NULL,'2023-06-03 02:18:52',1,34);

/*Table structure for table `tapp_groups_log` */

DROP TABLE IF EXISTS `tapp_groups_log`;

CREATE TABLE `tapp_groups_log` (
  `id` int(100) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(500) NOT NULL,
  `number` varchar(1000) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `date_time` datetime NOT NULL,
  `unsub_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_groups_log` */

/*Table structure for table `tapp_keywords` */

DROP TABLE IF EXISTS `tapp_keywords`;

CREATE TABLE `tapp_keywords` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(1000) NOT NULL,
  `client_name` varchar(500) NOT NULL,
  `client_email` varchar(500) NOT NULL,
  `client_address` varchar(100) DEFAULT NULL,
  `num_of_times` varchar(500) NOT NULL,
  `expiry_dates` date NOT NULL,
  `twilio_num` varchar(500) NOT NULL,
  `left_msg` varchar(500) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date_time` datetime NOT NULL,
  `filename` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_keywords` */

/*Table structure for table `tapp_list` */

DROP TABLE IF EXISTS `tapp_list`;

CREATE TABLE `tapp_list` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `list_name` varchar(50) NOT NULL,
  `number` varchar(200) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `list_name` (`list_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_list` */

/*Table structure for table `tapp_list_numbers` */

DROP TABLE IF EXISTS `tapp_list_numbers`;

CREATE TABLE `tapp_list_numbers` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `list_name` varchar(50) NOT NULL,
  `number` varchar(200) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_list_numbers` */

/*Table structure for table `tapp_message_newsletter` */

DROP TABLE IF EXISTS `tapp_message_newsletter`;

CREATE TABLE `tapp_message_newsletter` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(500) NOT NULL,
  `message_date` datetime DEFAULT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_message_newsletter` */

/*Table structure for table `tapp_msg_receive` */

DROP TABLE IF EXISTS `tapp_msg_receive`;

CREATE TABLE `tapp_msg_receive` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sender` varchar(20) DEFAULT NULL,
  `body` text,
  `date_time` datetime DEFAULT NULL,
  `read_status` varchar(100) DEFAULT NULL,
  `mediaUrl` varchar(500) NOT NULL,
  `msg_read` varchar(100) DEFAULT NULL,
  `twilio_num` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_msg_receive` */

insert  into `tapp_msg_receive`(`id`,`user_id`,`sender`,`body`,`date_time`,`read_status`,`mediaUrl`,`msg_read`,`twilio_num`) values 
(1,34,'917247838856','test message 1','2023-06-01 03:00:02',NULL,'',NULL,'9548006632'),
(2,34,'917247838856','test message','2023-06-12 03:15:31',NULL,'',NULL,'9548006631'),
(3,34,'917247838856','test hello','2023-06-12 03:58:48',NULL,'',NULL,'9548006631');

/*Table structure for table `tapp_newletter_log` */

DROP TABLE IF EXISTS `tapp_newletter_log`;

CREATE TABLE `tapp_newletter_log` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `mobile_no` varchar(1000) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `mode` varchar(500) DEFAULT NULL,
  `unsub_date` datetime DEFAULT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_newletter_log` */

/*Table structure for table `tapp_newsletter` */

DROP TABLE IF EXISTS `tapp_newsletter`;

CREATE TABLE `tapp_newsletter` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `mobile_no` varchar(1000) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_newsletter` */

/*Table structure for table `tapp_newsletter_log` */

DROP TABLE IF EXISTS `tapp_newsletter_log`;

CREATE TABLE `tapp_newsletter_log` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `mobile_no` varchar(1000) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `unsub_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_newsletter_log` */

/*Table structure for table `tapp_poll` */

DROP TABLE IF EXISTS `tapp_poll`;

CREATE TABLE `tapp_poll` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `poll_name` varchar(1000) NOT NULL,
  `sms_number` varchar(500) NOT NULL,
  `message` varchar(500) DEFAULT NULL,
  `type` varchar(500) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_poll` */

/*Table structure for table `tapp_poll_msg` */

DROP TABLE IF EXISTS `tapp_poll_msg`;

CREATE TABLE `tapp_poll_msg` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `sms_number` varchar(1000) NOT NULL,
  `message` varchar(500) NOT NULL,
  `scheduled_for` datetime DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `poll_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_poll_msg` */

/*Table structure for table `tapp_poll_msg_log` */

DROP TABLE IF EXISTS `tapp_poll_msg_log`;

CREATE TABLE `tapp_poll_msg_log` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `sms_number` varchar(1000) NOT NULL,
  `message` varchar(500) NOT NULL,
  `scheduled_for` datetime DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `poll_id` int(11) DEFAULT NULL,
  `msg_sent_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_poll_msg_log` */

/*Table structure for table `tapp_predrafted_message` */

DROP TABLE IF EXISTS `tapp_predrafted_message`;

CREATE TABLE `tapp_predrafted_message` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL,
  `keywords` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_predrafted_message` */

/*Table structure for table `tapp_received_responses` */

DROP TABLE IF EXISTS `tapp_received_responses`;

CREATE TABLE `tapp_received_responses` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `mobile_no` varchar(1000) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `date_time` datetime NOT NULL,
  `Poll_Name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_received_responses` */

/*Table structure for table `tapp_recevied_msg` */

DROP TABLE IF EXISTS `tapp_recevied_msg`;

CREATE TABLE `tapp_recevied_msg` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `service_type` varchar(100) DEFAULT NULL,
  `sms_number` varchar(1000) NOT NULL,
  `twilio_num` varchar(500) NOT NULL,
  `msg_type` varchar(500) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_recevied_msg` */

/*Table structure for table `tapp_reset_pass` */

DROP TABLE IF EXISTS `tapp_reset_pass`;

CREATE TABLE `tapp_reset_pass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `unique_key` varchar(300) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_reset_pass` */

/*Table structure for table `tapp_reviews` */

DROP TABLE IF EXISTS `tapp_reviews`;

CREATE TABLE `tapp_reviews` (
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(10) DEFAULT NULL,
  `feedback` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tapp_reviews` */

/*Table structure for table `tapp_sent_email` */

DROP TABLE IF EXISTS `tapp_sent_email`;

CREATE TABLE `tapp_sent_email` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `service_type` varchar(100) DEFAULT NULL,
  `subject` tinytext NOT NULL,
  `email` varchar(1000) NOT NULL,
  `message` varchar(500) NOT NULL,
  `twilio_num` varchar(100) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_sent_email` */

/*Table structure for table `tapp_sent_email_log` */

DROP TABLE IF EXISTS `tapp_sent_email_log`;

CREATE TABLE `tapp_sent_email_log` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(1000) NOT NULL,
  `service_type` varchar(100) DEFAULT NULL,
  `twilio_num` varchar(500) NOT NULL,
  `message` text NOT NULL,
  `url` varchar(500) DEFAULT NULL,
  `images` varchar(500) DEFAULT NULL,
  `scheduled_for` datetime DEFAULT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_sent_email_log` */

/*Table structure for table `tapp_sent_msg` */

DROP TABLE IF EXISTS `tapp_sent_msg`;

CREATE TABLE `tapp_sent_msg` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `service_type` varchar(100) DEFAULT NULL,
  `sms_number` varchar(1000) DEFAULT NULL,
  `message` varchar(50000) DEFAULT NULL,
  `twilio_num` varchar(100) DEFAULT NULL,
  `images` varchar(300) DEFAULT NULL,
  `bulk_name` varchar(200) DEFAULT NULL,
  `fax_url` varchar(255) DEFAULT NULL,
  `fax_type` varchar(255) DEFAULT '0',
  `date_time` datetime NOT NULL,
  `scheduled_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4609 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_sent_msg` */

/*Table structure for table `tapp_sent_msg_fail` */

DROP TABLE IF EXISTS `tapp_sent_msg_fail`;

CREATE TABLE `tapp_sent_msg_fail` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `sms_number` varchar(1000) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `twilio_num` varchar(500) DEFAULT NULL,
  `message` text,
  `date_time` datetime DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_sent_msg_fail` */

insert  into `tapp_sent_msg_fail`(`id`,`sms_number`,`email`,`twilio_num`,`message`,`date_time`,`user_id`) values 
(83,'18767463653','shardul','19362369031','[HTTP 400] Unable to create record: To number: 18767463653, is not a mobile number','2022-04-22 02:51:25',NULL),
(84,'#ERROR!','tonja.parks72@yahoo.com','19379156653','Could not resolve host: api.twilio.com; Unknown error','2022-05-09 02:49:26',NULL),
(85,'56976940052','jjmachadof@gmail.com','19379156653','Could not resolve host: api.twilio.com; Unknown error','2022-05-27 08:35:20',NULL),
(86,'16787492674','Cera.andrews@gmail.com','19379156653','[HTTP 400] Unable to create record: Attempt to send to unsubscribed recipient','2022-05-27 15:16:10',NULL);

/*Table structure for table `tapp_sent_msg_failed` */

DROP TABLE IF EXISTS `tapp_sent_msg_failed`;

CREATE TABLE `tapp_sent_msg_failed` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `service_type` varchar(100) DEFAULT NULL,
  `sms_number` varchar(1000) NOT NULL,
  `twilio_num` varchar(500) NOT NULL,
  `message` text NOT NULL,
  `url` varchar(500) DEFAULT NULL,
  `images` varchar(500) DEFAULT NULL,
  `bulk_name` varchar(200) NOT NULL,
  `scheduled_for` datetime DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `error` text,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_sent_msg_failed` */

insert  into `tapp_sent_msg_failed`(`id`,`user_id`,`service_type`,`sms_number`,`twilio_num`,`message`,`url`,`images`,`bulk_name`,`scheduled_for`,`date_time`,`error`) values 
(1,34,NULL,'+918077287723','19548006631','test',NULL,'','6487169f7ba20',NULL,'2023-06-12 08:59:12','[HTTP 401] Unable to create record: Authentication Error - invalid username');

/*Table structure for table `tapp_sent_msg_log` */

DROP TABLE IF EXISTS `tapp_sent_msg_log`;

CREATE TABLE `tapp_sent_msg_log` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `sms_number` varchar(1000) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `twilio_num` varchar(500) DEFAULT NULL,
  `message` text,
  `date_time` datetime DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `images` varchar(200) DEFAULT NULL,
  `bulk_name` varchar(399) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_sent_msg_log` */

insert  into `tapp_sent_msg_log`(`id`,`sms_number`,`email`,`twilio_num`,`message`,`date_time`,`user_id`,`images`,`bulk_name`) values 
(34,'12134610332',NULL,'13082235986','testing....','2023-04-12 06:50:35','34','null','unique_id62e3c88d3b23a'),
(35,'12134610332',NULL,'19548006631','test','2022-08-16 12:07:15','34','null','unique_id62fb3b199e0f2'),
(36,'12134610332',NULL,'19548006631','hello test1','2023-05-30 06:57:45','34',NULL,'unique_id62fb3b199e0f2'),
(37,'917247838856',NULL,'19548006631','Hello','2023-06-02 08:55:00','34',NULL,'unique_id62fb3b199e0f2'),
(38,'917247838856',NULL,'9548006632','Hello','2023-06-06 07:20:57','34',NULL,'unique_id62fb3b199e0f2');

/*Table structure for table `tapp_single_msg` */

DROP TABLE IF EXISTS `tapp_single_msg`;

CREATE TABLE `tapp_single_msg` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `sms_number` varchar(1000) NOT NULL,
  `message` varchar(500) NOT NULL,
  `images` varchar(500) DEFAULT NULL,
  `scheduled_for` datetime DEFAULT NULL,
  `type` varchar(500) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_single_msg` */

/*Table structure for table `tapp_stored_numbers` */

DROP TABLE IF EXISTS `tapp_stored_numbers`;

CREATE TABLE `tapp_stored_numbers` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `sms_number` varchar(1000) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_stored_numbers` */

/*Table structure for table `tapp_suscribers_list` */

DROP TABLE IF EXISTS `tapp_suscribers_list`;

CREATE TABLE `tapp_suscribers_list` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `list_name` varchar(1000) NOT NULL,
  `description` varchar(500) NOT NULL,
  `numbers` varchar(500) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_suscribers_list` */

/*Table structure for table `tapp_table_data` */

DROP TABLE IF EXISTS `tapp_table_data`;

CREATE TABLE `tapp_table_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(20) DEFAULT NULL,
  `body` text,
  `date_time` datetime DEFAULT NULL,
  `sending_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_table_data` */

/*Table structure for table `tapp_tbl_clients` */

DROP TABLE IF EXISTS `tapp_tbl_clients`;

CREATE TABLE `tapp_tbl_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sender` varchar(20) DEFAULT NULL,
  `body` text,
  `date_time` datetime DEFAULT NULL,
  `lead_date` date NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_location` text NOT NULL,
  `interest_level` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `twilio_num` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `address` text,
  `postal_code` int(12) DEFAULT NULL,
  `user_type` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_tbl_clients` */

insert  into `tapp_tbl_clients`(`id`,`user_id`,`sender`,`body`,`date_time`,`lead_date`,`job_title`,`job_location`,`interest_level`,`source`,`status`,`twilio_num`,`first_name`,`last_name`,`email`,`country`,`address`,`postal_code`,`user_type`) values 
(2,34,'+12345679881',NULL,'2022-07-29 15:39:00','0000-00-00','','','','','',NULL,'example','','example@gmail.com','','xyz',0,NULL),
(3,34,'18077287723',NULL,'2023-06-05 04:15:24','0000-00-00','','','','','',NULL,'xyz','','admin@gmail.com','','test_username',0,'super admin');

/*Table structure for table `tapp_tbl_leads` */

DROP TABLE IF EXISTS `tapp_tbl_leads`;

CREATE TABLE `tapp_tbl_leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(20) DEFAULT NULL,
  `body` text,
  `date_time` datetime DEFAULT NULL,
  `lead_date` date NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_location` text NOT NULL,
  `interest_level` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `twilio_num` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `address` text,
  `postal_code` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_tbl_leads` */

/*Table structure for table `tapp_template_msg` */

DROP TABLE IF EXISTS `tapp_template_msg`;

CREATE TABLE `tapp_template_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `temp_type` varchar(200) NOT NULL,
  `media` text,
  `date_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_template_msg` */

insert  into `tapp_template_msg`(`id`,`user_id`,`title`,`message`,`temp_type`,`media`,`date_time`) values 
(21,34,'Hello','Good Moirning {{FirstName}} {{LastName}}','','','2023-06-02');

/*Table structure for table `tapp_test` */

DROP TABLE IF EXISTS `tapp_test`;

CREATE TABLE `tapp_test` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `sms_number` varchar(1000) NOT NULL,
  `twilio_num` varchar(500) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_test` */

/*Table structure for table `tapp_twilio_account` */

DROP TABLE IF EXISTS `tapp_twilio_account`;

CREATE TABLE `tapp_twilio_account` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `service_type` varchar(150) DEFAULT NULL,
  `twilio_sid` varchar(500) NOT NULL,
  `twilio_token` varchar(1000) NOT NULL,
  `date_time` datetime NOT NULL,
  `app_sid` text,
  `copilet_msg_service_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_twilio_account` */

insert  into `tapp_twilio_account`(`id`,`user_id`,`service_type`,`twilio_sid`,`twilio_token`,`date_time`,`app_sid`,`copilet_msg_service_id`) values 
(44,34,'twilio','AC74022b16daafca8f00f8a7df27706','1d4a4dca7a562e1fb7cbbed5ea751e18','0000-00-00 00:00:00','','MG6b594bb6a2ab8417df6229ad1080eb0b');

/*Table structure for table `tapp_twilio_number` */

DROP TABLE IF EXISTS `tapp_twilio_number`;

CREATE TABLE `tapp_twilio_number` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `service_type` varchar(150) DEFAULT NULL,
  `user_id` int(100) DEFAULT NULL,
  `number` varchar(1000) DEFAULT NULL,
  `twilio_sid` varchar(200) DEFAULT NULL,
  `call_forward` varchar(20) DEFAULT NULL,
  `msg_forward` varchar(20) DEFAULT NULL,
  `twilio_token` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `is_default` varchar(100) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `copilet_msg_service_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_twilio_number` */

insert  into `tapp_twilio_number`(`id`,`service_type`,`user_id`,`number`,`twilio_sid`,`call_forward`,`msg_forward`,`twilio_token`,`email`,`is_default`,`date_time`,`copilet_msg_service_id`) values 
(66,'twilio',34,'19548006631','AC74022b16daafca8f00f8a7df27706','','','1d4a4dca7a562e1fb7cbbed5ea751e18','admin@gmail.com','no','2022-08-16 11:38:11',NULL);

/*Table structure for table `tapp_unsub_keywords` */

DROP TABLE IF EXISTS `tapp_unsub_keywords`;

CREATE TABLE `tapp_unsub_keywords` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `keyword` varchar(1000) NOT NULL,
  `message` varchar(500) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_unsub_keywords` */

insert  into `tapp_unsub_keywords`(`id`,`user_id`,`keyword`,`message`,`email`,`date_time`,`type`) values 
(22,34,'stop','you are deactivated from our system','','2023-05-29 08:34:59','super admin'),
(23,34,'run','you are deactivated from our system','','2023-05-29 08:46:27','super admin');

/*Table structure for table `tapp_url_count` */

DROP TABLE IF EXISTS `tapp_url_count`;

CREATE TABLE `tapp_url_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(500) DEFAULT NULL,
  `link_id` int(10) unsigned NOT NULL,
  `link_count` varchar(500) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_url_count` */

/*Table structure for table `tapp_url_id` */

DROP TABLE IF EXISTS `tapp_url_id`;

CREATE TABLE `tapp_url_id` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tapp_url_id` */

/*Table structure for table `tapp_user_login` */

DROP TABLE IF EXISTS `tapp_user_login`;

CREATE TABLE `tapp_user_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `password` text NOT NULL,
  `type` varchar(500) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `profile_image` varchar(200) NOT NULL,
  `app_sid` text,
  `twilio_number` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_user_login` */

insert  into `tapp_user_login`(`id`,`user_name`,`email`,`password`,`type`,`date_time`,`profile_image`,`app_sid`,`twilio_number`) values 
(34,'admin','admin@gmail.com','$2y$10$yUHkVf87roGdLz3QpTvOb.gpS18Yin29MweZEGPcMLfrL8nhB1IAS','super admin','2023-06-01 06:52:46','1686568117img987 (2).jpg','APb0623fd1a59bdcd37bd0ed97bab341c0',NULL);

/*Table structure for table `tapp_voice_broadcast` */

DROP TABLE IF EXISTS `tapp_voice_broadcast`;

CREATE TABLE `tapp_voice_broadcast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) DEFAULT NULL,
  `twilio_number` varchar(100) DEFAULT NULL,
  `user_number` varchar(100) DEFAULT NULL,
  `voice_file` text,
  `agent_number` varchar(100) DEFAULT NULL,
  `readyToCall` varchar(100) DEFAULT 'ready',
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_voice_broadcast` */

/*Table structure for table `tapp_voice_broadcast_logs` */

DROP TABLE IF EXISTS `tapp_voice_broadcast_logs`;

CREATE TABLE `tapp_voice_broadcast_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `twilio_number` varchar(100) DEFAULT NULL,
  `user_number` varchar(100) DEFAULT NULL,
  `voice_file` text,
  `recording_url` text,
  `agent_number` varchar(100) DEFAULT NULL,
  `is_called` varchar(20) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `tapp_voice_broadcast_logs` */

/*Table structure for table `usergroups` */

DROP TABLE IF EXISTS `usergroups`;

CREATE TABLE `usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '1=deleted',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Web Admin Allowed=1,Web Admin Denied=0',
  `order_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT '0' COMMENT 'Id of the user who has updated this record in last',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `usergroups` */

/*Table structure for table `validate_num` */

DROP TABLE IF EXISTS `validate_num`;

CREATE TABLE `validate_num` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `sn` varchar(45) DEFAULT NULL,
  `date_time` varchar(45) DEFAULT NULL,
  `mobile_network_code` varchar(45) DEFAULT NULL,
  `mobile_country_code` varchar(45) DEFAULT NULL,
  `interest_level` varchar(45) DEFAULT NULL,
  `Phone_Number` varchar(45) DEFAULT NULL,
  `Cell_Phone` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `twilio_num` varchar(45) DEFAULT NULL,
  `Land_Line` varchar(45) DEFAULT NULL,
  `Disconnected` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `postal_code` varchar(45) DEFAULT NULL,
  `user_type` varchar(45) DEFAULT NULL,
  `owner_address` varchar(45) DEFAULT NULL,
  `validate` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7002 DEFAULT CHARSET=latin1;

/*Data for the table `validate_num` */

insert  into `validate_num`(`id`,`name`,`type`,`sn`,`date_time`,`mobile_network_code`,`mobile_country_code`,`interest_level`,`Phone_Number`,`Cell_Phone`,`status`,`twilio_num`,`Land_Line`,`Disconnected`,`Email`,`country`,`address`,`postal_code`,`user_type`,`owner_address`,`validate`) values 
(6952,NULL,'',NULL,'2022-06-29 01:24:15','',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'6158267498','','6158267498','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6953,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'7049871812','7049871812','','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6954,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'7049871810','7049871810','','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6955,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'6152648653','6152648653','','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6956,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'7048954485','7048954485','','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6957,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'4048739816','4048739816','','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6958,NULL,'mobile',NULL,'2022-06-29 01:24:15','180',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','6155875881',NULL,'6155875881','','','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6959,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'\n7049871812','\n7049871812','','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6960,NULL,'landline',NULL,'2022-06-29 01:24:15','985',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'\n6152648660','\n6152648660','','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6961,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'\n7049871810','\n7049871810','','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6962,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'\n6152648653','\n6152648653','','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6963,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'\n7048954485','\n7048954485','','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6964,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'\n4048739816','\n4048739816','','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6965,NULL,'landline',NULL,'2022-06-29 01:24:15','985',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'\n6158248211\n','\n6158248211\n','','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6966,NULL,'voip',NULL,'2022-06-29 01:24:15','981',NULL,NULL,'615-826-7498, 704-987-1812, 704-987-1810, 615','',NULL,'\n6158262628','','\n6158262628','',NULL,NULL,NULL,NULL,'128 River Rd, Hendersonville TN 37075','1'),
(6967,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'731-593-0395, , , , ,','',NULL,'7315930395','7315930395','','',NULL,NULL,NULL,NULL,'895 Bass Bay RD, Big Sandy, TN 38221','1'),
(6968,NULL,'mobile',NULL,'2022-06-29 01:24:15','180',NULL,NULL,'865-898-1993, 865-470-9850, 423-470-9850, 865','8658981993',NULL,'8658981993','','','admin@xtremeracingengines.com, taylor.day21@y',NULL,NULL,NULL,NULL,'134 Bayside DR, Ten Mile, TN 37880','1'),
(6969,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'865-898-1993, 865-470-9850, 423-470-9850, 865','',NULL,'8654709850','8654709850','','admin@xtremeracingengines.com, taylor.day21@y',NULL,NULL,NULL,NULL,'134 Bayside DR, Ten Mile, TN 37880','1'),
(6970,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'865-898-1993, 865-470-9850, 423-470-9850, 865','',NULL,'4234709850','','4234709850','admin@xtremeracingengines.com, taylor.day21@y',NULL,NULL,NULL,NULL,'134 Bayside DR, Ten Mile, TN 37880','1'),
(6971,NULL,'mobile',NULL,'2022-06-29 01:24:15','180',NULL,NULL,'865-898-1993, 865-470-9850, 423-470-9850, 865','8658981992',NULL,'8658981992','','','admin@xtremeracingengines.com, taylor.day21@y',NULL,NULL,NULL,NULL,'134 Bayside DR, Ten Mile, TN 37880','1'),
(6972,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'865-898-1993, 865-470-9850, 423-470-9850, 865','',NULL,'8654709958','8654709958','','admin@xtremeracingengines.com, taylor.day21@y',NULL,NULL,NULL,NULL,'134 Bayside DR, Ten Mile, TN 37880','1'),
(6973,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'865-898-1993, 865-470-9850, 423-470-9850, 865','',NULL,'4236905709','','4236905709','admin@xtremeracingengines.com, taylor.day21@y',NULL,NULL,NULL,NULL,'134 Bayside DR, Ten Mile, TN 37880','1'),
(6974,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'731-986-3303, , , , ,','',NULL,'7319863303','','7319863303','',NULL,NULL,NULL,NULL,'PO Box 68 , Eva, TN 38333','1'),
(6975,NULL,'mobile',NULL,'2022-06-29 01:24:15','489',NULL,NULL,'423-309-0754, 423-877-8289, 901-644-7710, 423','4233090754',NULL,'4233090754','','','scott.riley@sprintpcs.com',NULL,NULL,NULL,NULL,'1940 Hixson Marina RD, Hixson, TN 37343','1'),
(6976,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'423-309-0754, 423-877-8289, 901-644-7710, 423','',NULL,'4238778289','4238778289','','scott.riley@sprintpcs.com',NULL,NULL,NULL,NULL,'1940 Hixson Marina RD, Hixson, TN 37343','1'),
(6977,NULL,'mobile',NULL,'2022-06-29 01:24:15','180',NULL,NULL,'423-309-0754, 423-877-8289, 901-644-7710, 423','9016447710',NULL,'9016447710','','','scott.riley@sprintpcs.com',NULL,NULL,NULL,NULL,'1940 Hixson Marina RD, Hixson, TN 37343','1'),
(6978,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'423-309-0754, 423-877-8289, 901-644-7710, 423','',NULL,'4238425540','4238425540','','scott.riley@sprintpcs.com',NULL,NULL,NULL,NULL,'1940 Hixson Marina RD, Hixson, TN 37343','1'),
(6979,NULL,'mobile',NULL,'2022-06-29 01:24:15','180',NULL,NULL,'423-309-0754, 423-877-8289, 901-644-7710, 423','7202726081',NULL,'7202726081','','','scott.riley@sprintpcs.com',NULL,NULL,NULL,NULL,'1940 Hixson Marina RD, Hixson, TN 37343','1'),
(6980,NULL,'mobile',NULL,'2022-06-29 01:24:15','489',NULL,NULL,'423-309-0754, 423-877-8289, 901-644-7710, 423','7602719434',NULL,'7602719434','','','scott.riley@sprintpcs.com',NULL,NULL,NULL,NULL,'1940 Hixson Marina RD, Hixson, TN 37343','1'),
(6981,NULL,'mobile',NULL,'2022-06-29 01:24:15','489',NULL,NULL,'931-698-6896, 931-381-7046, , , ,','9316986896',NULL,'9316986896','','9316986896','',NULL,NULL,NULL,NULL,'255 Marina RD, Camden, TN 38320','1'),
(6982,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'931-698-6896, 931-381-7046, , , ,','',NULL,'9313817046','9313817046','','',NULL,NULL,NULL,NULL,'255 Marina RD, Camden, TN 38320','1'),
(6983,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'423-581-1352, 423-839-1462, , , ,','',NULL,'4235811352','4235811352','','',NULL,NULL,NULL,NULL,'2511 Black Oak RD, Jefferson City, TN 37760','1'),
(6984,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'423-581-1352, 423-839-1462, , , ,','',NULL,'4238391462','4238391462','','',NULL,NULL,NULL,NULL,'2511 Black Oak RD, Jefferson City, TN 37760','1'),
(6985,NULL,'voip',NULL,'2022-06-29 01:24:15','987',NULL,NULL,'865-376-7298, 865-376-3967, 865-376-4090, , ,','',NULL,'8653767298','','8653767298','crowsnestrestaurant@yahoo.com, driftur39@adel',NULL,NULL,NULL,NULL,'3952 River Rd, Ten Mile TN 37880','1'),
(6986,NULL,'voip',NULL,'2022-06-29 01:24:15','987',NULL,NULL,'865-376-7298, 865-376-3967, 865-376-4090, , ,','',NULL,'8653763967','','8653763967','crowsnestrestaurant@yahoo.com, driftur39@adel',NULL,NULL,NULL,NULL,'3952 River Rd, Ten Mile TN 37880','1'),
(6987,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'865-376-7298, 865-376-3967, 865-376-4090, , ,','',NULL,'8653764090','8653764090','8653764090','crowsnestrestaurant@yahoo.com, driftur39@adel',NULL,NULL,NULL,NULL,'3952 River Rd, Ten Mile TN 37880','1'),
(6988,NULL,'voip',NULL,'2022-06-29 01:24:15','968',NULL,NULL,'865-376-7298, 865-376-3967, 865-376-4090, , ,','',NULL,'8663767298','','8663767298','crowsnestrestaurant@yahoo.com, driftur39@adel',NULL,NULL,NULL,NULL,'3952 River Rd, Ten Mile TN 37880','1'),
(6989,NULL,'voip',NULL,'2022-06-29 01:24:15','968',NULL,NULL,'518-866-3379, 518-863-4639, 518-863-4670, 917','5188663379',NULL,'5188663379','','5188663379','eschulte54@gmail.com, schulte5454@yahoo.com',NULL,NULL,NULL,NULL,'PO Box 144 , Old Hickory, TN 37138','1'),
(6990,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'518-866-3379, 518-863-4639, 518-863-4670, 917','',NULL,'5188634639','5188634639','','eschulte54@gmail.com, schulte5454@yahoo.com',NULL,NULL,NULL,NULL,'PO Box 144 , Old Hickory, TN 37138','1'),
(6991,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'518-866-3379, 518-863-4639, 518-863-4670, 917','',NULL,'5188634670','5188634670','','eschulte54@gmail.com, schulte5454@yahoo.com',NULL,NULL,NULL,NULL,'PO Box 144 , Old Hickory, TN 37138','1'),
(6992,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'518-866-3379, 518-863-4639, 518-863-4670, 917','',NULL,'9179257979','','9179257979','eschulte54@gmail.com, schulte5454@yahoo.com',NULL,NULL,NULL,NULL,'PO Box 144 , Old Hickory, TN 37138','1'),
(6993,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'518-866-3379, 518-863-4639, 518-863-4670, 917','',NULL,'4075220754','4075220754','4075220754','eschulte54@gmail.com, schulte5454@yahoo.com',NULL,NULL,NULL,NULL,'PO Box 144 , Old Hickory, TN 37138','1'),
(6994,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'423-802-4489, 423-775-5951, 615-775-5951, 901','4238024489',NULL,'4238024489','','4238024489','',NULL,NULL,NULL,NULL,'Duckwood LN, Evensville, TN 37332','1'),
(6995,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'423-802-4489, 423-775-5951, 615-775-5951, 901','',NULL,'4237755951','4237755951','','',NULL,NULL,NULL,NULL,'Duckwood LN, Evensville, TN 37332','1'),
(6996,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'423-802-4489, 423-775-5951, 615-775-5951, 901','6157755951',NULL,'6157755951','','6157755951','',NULL,NULL,NULL,NULL,'Duckwood LN, Evensville, TN 37332','1'),
(6997,NULL,'landline',NULL,'2022-06-29 01:24:15','',NULL,NULL,'423-802-4489, 423-775-5951, 615-775-5951, 901','9014288817',NULL,'9014288817','','9014288817','',NULL,NULL,NULL,NULL,'Duckwood LN, Evensville, TN 37332','1'),
(6998,NULL,'mobile',NULL,'2022-06-29 02:17:24','',NULL,NULL,'615-816-7498, 700-987-1812','6158167498',NULL,'6158167498','','','',NULL,NULL,NULL,NULL,'','1'),
(7000,NULL,'disconnected',NULL,'2022-07-01 12:22:32','',NULL,NULL,'615-816-7498, 700-987-1812, 619-838-8418','',NULL,'7009871812','','7009871812','',NULL,NULL,NULL,NULL,'','1'),
(7001,NULL,'mobile',NULL,'2022-07-01 12:22:32','800',NULL,NULL,'615-816-7498, 700-987-1812, 619-838-8418','6198388418',NULL,'6198388418','','','',NULL,NULL,NULL,NULL,'','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
