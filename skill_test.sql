-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 11:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skill_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `license_number` varchar(255) NOT NULL,
  `exp_sim` date NOT NULL,
  `experience_years` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `license_number`, `exp_sim`, `experience_years`, `created_at`, `updated_at`) VALUES
(1, 'Lillie Brown', '1390', '2024-12-01', 7, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(2, 'Chloe DuBuque', '8195', '2024-11-23', 7, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(3, 'Keely Anderson', '6725', '2024-11-30', 10, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(4, 'Mr. Maximus Hickle', '9328', '2024-11-11', 5, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(5, 'Zakary Cremin', '1164', '2024-11-25', 3, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(6, 'Yvette Morissette', '5119', '2024-12-05', 2, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(7, 'Abelardo Wiegand', '7420', '2024-11-25', 10, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(8, 'Alyce Morar', '8527', '2027-03-13', 10, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(9, 'Caesar Hoppe', '9714', '2027-02-15', 7, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(10, 'Dr. Keshawn Kuhic', '6490', '2027-08-21', 9, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(11, 'Harrison Davis', '3636', '2028-04-23', 8, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(12, 'Lorenzo Hahn', '3133', '2027-09-20', 5, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(13, 'Evangeline Schaefer', '5814', '2027-02-17', 7, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(14, 'Cathrine Jenkins', '2445', '2027-03-05', 1, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(15, 'Dr. Milford Stracke MD', '7941', '2026-09-02', 6, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(16, 'Amani O\'Connell', '2248', '2026-11-11', 6, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(17, 'Serenity Corkery', '6119', '2027-07-18', 5, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(18, 'Jaydon Cruickshank', '9876', '2028-07-23', 2, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(19, 'Magali Raynor', '8520', '2027-04-16', 9, '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(20, 'Dr. Maxwell Funk', '2670', '2028-10-09', 2, '2024-11-05 03:41:58', '2024-11-05 03:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_05_030009_create_trucks_table', 1),
(5, '2024_11_05_030503_create_drivers_table', 1),
(6, '2024_11_05_030516_create_trips_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1lE06dnOdxKsUOHBOquirPd9PUh2d5QMIWlok5Fu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQk95Q2NxaVpNbUpFZmh3RUN2Y2hOd0dYWk9YcnRvVUxQRFBlTVd2biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmlwcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730803342);

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truck_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED NOT NULL,
  `start_location` varchar(255) NOT NULL,
  `end_location` varchar(255) NOT NULL,
  `distance` int(11) NOT NULL,
  `trip_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `truck_id`, `driver_id`, `start_location`, `end_location`, `distance`, `trip_date`, `created_at`, `updated_at`) VALUES
(1, 28, 5, 'Shanahanbury', 'Veldaville', 256, '2024-11-05', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(2, 20, 1, 'Vivastad', 'New Ines', 140, '2024-11-05', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(3, 19, 4, 'East Doloresstad', 'Lake Shannon', 266, '2024-11-05', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(4, 10, 16, 'Kuphalville', 'South Evangeline', 139, '2024-11-05', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(5, 1, 15, 'Lake Jazmynview', 'West Elza', 253, '2024-11-05', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(6, 21, 5, 'West Gussie', 'South Christinafort', 273, '2024-11-05', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(7, 2, 10, 'Bryceberg', 'Lake Roscoe', 181, '2024-11-05', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(8, 24, 2, 'Port Feltonbury', 'North Geovanyton', 145, '2024-11-05', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(9, 29, 12, 'South Hankfort', 'Parisianmouth', 294, '2024-11-05', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(10, 11, 7, 'Maverickland', 'Vonport', 118, '2024-11-05', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(11, 18, 12, 'Murphyhaven', 'Jacobiport', 238, '2025-06-10', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(12, 11, 14, 'New Enoch', 'South Letitiatown', 178, '2024-05-06', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(13, 6, 20, 'Gayland', 'East Lennieton', 177, '2025-03-06', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(14, 15, 19, 'East Allen', 'Ezequielville', 143, '2025-09-21', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(15, 27, 14, 'Waelchiberg', 'Bauchshire', 254, '2025-10-30', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(16, 28, 17, 'New Audra', 'Angelshire', 245, '2025-02-21', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(17, 7, 5, 'Zboncakbury', 'North Osbaldoview', 259, '2025-09-16', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(18, 9, 7, 'Lake Mae', 'Hilpertside', 286, '2025-03-20', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(19, 16, 18, 'Katrineside', 'New Claud', 227, '2025-05-01', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(20, 28, 5, 'Wolffchester', 'Port Dusty', 225, '2025-05-22', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(21, 8, 18, 'Port Olafport', 'Alessandromouth', 201, '2024-09-02', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(22, 23, 10, 'New Kodyfort', 'Lake Coytown', 149, '2024-03-09', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(23, 22, 5, 'Naderborough', 'South Blaise', 295, '2024-09-05', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(24, 10, 16, 'Lake Queenieland', 'Camronbury', 282, '2025-06-13', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(25, 15, 14, 'North Darren', 'East Kaylinburgh', 221, '2025-10-31', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(26, 10, 9, 'Lake Kiarra', 'Eulaliatown', 149, '2025-01-17', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(27, 21, 14, 'Braunfurt', 'Jillianfurt', 283, '2025-01-24', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(28, 8, 7, 'Hesselton', 'Roxaneside', 146, '2025-06-19', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(29, 6, 13, 'Titochester', 'Kunzeport', 125, '2025-07-23', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(30, 22, 7, 'Vincenzoview', 'Port Santino', 121, '2024-06-02', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(31, 25, 20, 'Candidafurt', 'Port Kellen', 169, '2025-08-29', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(32, 14, 11, 'Johnstonland', 'New Pearl', 192, '2023-12-22', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(33, 22, 5, 'Bradbury', 'Tremblayhaven', 214, '2024-09-07', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(34, 27, 13, 'East Cristal', 'Enolamouth', 283, '2024-08-02', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(35, 9, 20, 'Amietown', 'Murphyport', 113, '2024-05-25', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(36, 13, 6, 'New Percyburgh', 'North Demetrisfurt', 220, '2024-12-17', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(37, 3, 1, 'Brekketon', 'Bergeland', 190, '2024-06-13', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(38, 1, 3, 'East Providenci', 'South Marion', 159, '2024-07-30', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(39, 24, 6, 'Lake Shainaton', 'Prudencestad', 234, '2024-02-11', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(40, 26, 20, 'Labadiechester', 'Lake Georgianna', 205, '2023-12-16', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(41, 25, 1, 'East Adellahaven', 'McCluremouth', 133, '2024-12-14', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(42, 18, 3, 'Port Favianstad', 'Pfefferberg', 290, '2025-07-21', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(43, 17, 5, 'Lake Jace', 'Lake Kayden', 282, '2024-06-01', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(44, 17, 10, 'Westland', 'South Abbigailfurt', 247, '2024-05-25', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(45, 16, 7, 'Lake Luciano', 'New Aidaberg', 186, '2024-04-11', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(46, 24, 16, 'Port Earnestine', 'West Shannonland', 221, '2025-02-27', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(47, 6, 12, 'East Frederic', 'Lake Pansy', 284, '2024-01-05', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(48, 5, 3, 'New Graciefort', 'North Jesus', 262, '2025-09-24', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(49, 6, 17, 'South Curtisberg', 'New Calista', 264, '2025-05-10', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(50, 18, 11, 'Priceville', 'South Kristina', 170, '2024-04-18', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(51, 9, 19, 'Thielview', 'Americaland', 224, '2025-01-17', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(52, 10, 4, 'Zulaufport', 'Tyrelport', 140, '2025-02-24', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(53, 13, 3, 'Sylvanside', 'North Ryleytown', 150, '2024-01-14', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(54, 4, 5, 'Lake Adalbertostad', 'Beahanport', 184, '2025-07-17', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(55, 18, 13, 'East Hildegard', 'Weissnatberg', 290, '2024-06-11', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(56, 29, 1, 'Rippintown', 'Port Dinaport', 186, '2024-03-29', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(57, 3, 2, 'Alexandroton', 'Strackechester', 215, '2025-11-02', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(58, 6, 16, 'Gwenfurt', 'East Fanny', 128, '2025-01-28', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(59, 5, 1, 'West Brown', 'Eltonton', 128, '2024-12-06', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(60, 26, 2, 'Coleshire', 'East Maye', 234, '2025-02-15', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(61, 12, 2, 'Schowalterchester', 'Lilliemouth', 213, '2025-08-01', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(62, 12, 6, 'Quigleyshire', 'East Kolbymouth', 161, '2024-10-30', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(63, 21, 9, 'Port Lurabury', 'Mylesside', 181, '2024-10-29', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(64, 13, 1, 'Lake Adanport', 'Lake Dessietown', 275, '2024-04-26', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(65, 24, 2, 'Mannville', 'Darleneville', 160, '2025-10-03', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(66, 24, 17, 'South Susana', 'Noraport', 226, '2024-06-19', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(67, 25, 6, 'East Pablo', 'Rubybury', 209, '2024-04-15', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(68, 26, 5, 'Hoegerland', 'Vitobury', 263, '2024-03-29', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(69, 28, 9, 'Douglasshire', 'East Lydia', 121, '2025-05-13', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(70, 29, 9, 'New Daronberg', 'Hillston', 179, '2024-07-07', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(71, 15, 15, 'New Scarlett', 'South Mikeberg', 155, '2024-03-19', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(72, 6, 20, 'Lake Asaberg', 'Jaskolskiborough', 154, '2024-02-18', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(73, 8, 18, 'North Eloymouth', 'Port Donald', 230, '2024-02-14', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(74, 3, 18, 'Port Kaylinville', 'Smithamside', 226, '2024-11-09', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(75, 9, 3, 'Lefflerhaven', 'Faheyberg', 105, '2024-08-20', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(76, 6, 14, 'Nicolashaven', 'East Kathlynchester', 136, '2024-08-15', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(77, 12, 15, 'Jaronmouth', 'Rosellabury', 117, '2024-07-11', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(78, 11, 11, 'New Julio', 'North Roryshire', 156, '2024-03-06', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(79, 9, 3, 'East Greta', 'East Alexanne', 160, '2025-10-04', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(80, 11, 11, 'North Maddison', 'East Wallace', 272, '2025-02-20', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(81, 25, 20, 'Zettabury', 'Jackport', 229, '2024-02-24', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(82, 8, 2, 'Lake Macy', 'Allenemouth', 134, '2024-12-21', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(83, 20, 5, 'Mauricechester', 'South Arlochester', 151, '2025-03-23', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(84, 4, 5, 'Hamillport', 'Croninburgh', 153, '2024-04-08', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(85, 5, 2, 'North Celine', 'Sengerville', 101, '2024-08-21', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(86, 29, 12, 'West Elinor', 'Goodwintown', 152, '2024-06-14', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(87, 6, 12, 'Schowalterchester', 'West Maverick', 211, '2025-04-18', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(88, 4, 19, 'Brauntown', 'Lake Nigel', 298, '2025-04-11', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(89, 21, 20, 'Shanelleland', 'New Verlieport', 211, '2025-08-27', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(90, 12, 5, 'West Kylieburgh', 'Hintzville', 214, '2024-06-07', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(91, 14, 3, 'East Jaylan', 'Margaretteport', 223, '2024-04-25', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(92, 10, 19, 'New Sedrickchester', 'Nitzscheview', 220, '2025-09-10', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(93, 14, 13, 'Wendyberg', 'New Ikeville', 246, '2025-02-03', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(94, 18, 8, 'Amaristad', 'Beaulahburgh', 170, '2024-03-05', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(95, 3, 2, 'New Ford', 'Wandamouth', 140, '2024-11-23', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(96, 19, 18, 'Donnellybury', 'South Katherineport', 187, '2025-10-06', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(97, 24, 16, 'Tadmouth', 'New Lailamouth', 300, '2023-11-22', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(98, 30, 10, 'Amariburgh', 'East Marcelino', 147, '2024-07-06', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(99, 17, 17, 'North Joelle', 'South Elsieside', 126, '2025-04-26', '2024-11-05 03:41:59', '2024-11-05 03:41:59'),
(100, 17, 2, 'Okunevaberg', 'Eulaport', 295, '2025-03-11', '2024-11-05 03:41:59', '2024-11-05 03:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `license_plate` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `exp_kir` varchar(255) NOT NULL,
  `status` enum('available','maintenance','on_trip') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`id`, `license_plate`, `model`, `capacity`, `exp_kir`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ON 3670 HG', 'Mitsubishi', '2108', '2024-11-28', 'available', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(2, 'ET 4037 MB', 'Isuzu', '2186', '2024-11-21', 'on_trip', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(3, 'ZY 3850 KE', 'UD', '1499', '2024-11-22', 'on_trip', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(4, 'LW 3607 QX', 'Isuzu', '2601', '2024-11-20', 'on_trip', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(5, 'PE 5771 PT', 'Hino', '1397', '2024-11-14', 'available', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(6, 'KM 8358 GJ', 'Mitsubishi', '1269', '2027-05-17', 'on_trip', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(7, 'DM 6298 TN', 'Isuzu', '1123', '2026-08-20', 'maintenance', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(8, 'FG 2327 TH', 'Mitsubishi', '1724', '2026-09-25', 'maintenance', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(9, 'OD 9397 AM', 'Hino', '2249', '2026-11-21', 'maintenance', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(10, 'XM 6482 XZ', 'UD', '1177', '2026-12-10', 'on_trip', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(11, 'ER 6507 WO', 'UD', '2527', '2028-04-18', 'on_trip', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(12, 'JV 3400 LX', 'Mitsubishi', '2383', '2028-04-25', 'on_trip', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(13, 'GP 7393 BY', 'Hino', '1911', '2026-05-20', 'maintenance', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(14, 'DL 2512 UC', 'Mitsubishi', '2825', '2026-08-12', 'maintenance', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(15, 'DQ 4838 CF', 'Mitsubishi', '2248', '2027-06-30', 'maintenance', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(16, 'AP 8142 SG', 'Hino', '2861', '2026-05-07', 'available', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(17, 'RI 7267 SR', 'Mitsubishi', '2737', '2026-03-08', 'maintenance', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(18, 'HS 6829 NB', 'Hino', '2664', '2027-05-01', 'on_trip', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(19, 'PZ 8741 SB', 'Isuzu', '1596', '2025-11-13', 'maintenance', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(20, 'EB 7151 ZG', 'Isuzu', '1703', '2026-08-06', 'on_trip', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(21, 'JZ 0399 BI', 'Isuzu', '1620', '2026-04-07', 'available', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(22, 'RW 7019 KW', 'Hino', '2451', '2028-04-20', 'available', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(23, 'PK 2942 BW', 'Mitsubishi', '1085', '2026-06-06', 'available', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(24, 'DY 8102 KK', 'Hino', '1932', '2027-09-01', 'on_trip', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(25, 'EH 5175 CW', 'UD', '1001', '2027-01-09', 'on_trip', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(26, 'PB 0020 TB', 'Hino', '1915', '2028-02-12', 'maintenance', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(27, 'WK 7306 NN', 'Hino', '2886', '2028-05-08', 'on_trip', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(28, 'JS 7999 XX', 'Hino', '1531', '2026-07-06', 'maintenance', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(29, 'NM 1499 WB', 'Hino', '1223', '2026-07-06', 'available', '2024-11-05 03:41:58', '2024-11-05 03:41:58'),
(30, 'UW 3886 XS', 'Isuzu', '2746', '2026-06-13', 'available', '2024-11-05 03:41:58', '2024-11-05 03:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `drivers_license_number_unique` (`license_number`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_truck_id_foreign` (`truck_id`),
  ADD KEY `trips_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trucks_license_plate_unique` (`license_plate`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `trucks`
--
ALTER TABLE `trucks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trips_truck_id_foreign` FOREIGN KEY (`truck_id`) REFERENCES `trucks` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
