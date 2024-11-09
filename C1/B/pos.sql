/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `pos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pos`;

CREATE TABLE IF NOT EXISTS `failed_jobs` (
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


CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(6, '2014_10_12_000000_create_users_table', 1),
	(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(8, '2019_08_19_000000_create_failed_jobs_table', 1),
	(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(10, '2024_11_03_113706_create_products_table', 1);

CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
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


CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
	(1, 'Lora Stark', 3.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(2, 'Erika Schmitt MD', 6.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(3, 'Mr. Colby Miller II', 7.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(4, 'Lorine Rutherford', 3.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(5, 'Arnulfo Torphy', 6.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(6, 'Mrs. Norma Leffler', 1.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(7, 'Onie Schultz Jr.', 9.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(8, 'Brisa Bergnaum', 3.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(9, 'Oleta Wehner', 0.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(10, 'Prof. Lisette Homenick III', 1.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(11, 'Bartholome Walter', 1.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(12, 'Sister Gleichner DDS', 6.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(13, 'Dayne Homenick I', 9.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(14, 'Mr. Richmond Wiegand V', 6.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(15, 'Donny Wintheiser', 9.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(16, 'Felix Schimmel', 8.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(17, 'Stella Volkman', 4.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(18, 'Aaron Gleichner', 3.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(19, 'Prof. Joanny Hills PhD', 4.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(20, 'Mazie Wuckert', 3.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(21, 'Dr. Terence McLaughlin MD', 6.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(22, 'Raheem Simonis DVM', 9.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(23, 'Lilliana Rogahn V', 9.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(24, 'Theresia Stehr', 6.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(25, 'Isabella Padberg MD', 6.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(26, 'Reed Wolf III', 4.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(27, 'Lempi McLaughlin', 7.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(28, 'Myrtice Bradtke', 6.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(29, 'Elijah Vandervort', 5.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(30, 'Sophia Botsford', 8.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(31, 'Alivia Mante', 8.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(32, 'Myriam Jenkins DDS', 1.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(33, 'Ms. Adele Waelchi Jr.', 6.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(34, 'Prof. Dexter Upton III', 0.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(35, 'Una Walter', 0.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(36, 'Frida Crist II', 4.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(37, 'Prof. Xander Keeling', 6.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(38, 'Ismael Tremblay', 5.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(39, 'Reanna Price', 2.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(40, 'Katarina Armstrong III', 2.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(41, 'Rowan Pagac', 1.00, '2024-11-03 17:05:13', '2024-11-03 17:05:13'),
	(42, 'Hope Howe', 8.00, '2024-11-03 17:05:14', '2024-11-03 17:05:14'),
	(43, 'Lennie Heller', 2.00, '2024-11-03 17:05:14', '2024-11-03 17:05:14'),
	(44, 'Audreanne Crooks', 4.00, '2024-11-03 17:05:14', '2024-11-03 17:05:14'),
	(45, 'Cody Leannon', 7.00, '2024-11-03 17:05:14', '2024-11-03 17:05:14'),
	(46, 'Tess Wisozk', 3.00, '2024-11-03 17:05:14', '2024-11-03 17:05:14'),
	(47, 'Miss Alyson Reichel IV', 7.00, '2024-11-03 17:05:14', '2024-11-03 17:05:14'),
	(48, 'Heath Leuschke', 2.00, '2024-11-03 17:05:14', '2024-11-03 17:05:14'),
	(49, 'Dr. Bo Jaskolski PhD', 6.00, '2024-11-03 17:05:14', '2024-11-03 17:05:14'),
	(50, 'Roberto Blanda', 9.00, '2024-11-03 17:05:14', '2024-11-03 17:05:14');

CREATE TABLE IF NOT EXISTS `users` (
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


/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
