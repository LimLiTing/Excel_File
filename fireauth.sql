-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20230110.d1e616d68c
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 07:07 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fireauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `title`, `file_path`, `description`, `created_at`, `updated_at`) VALUES
(2, '1705462058_Internship Program Logbook_Week5-Week8.pdf', '/storage/uploads/1705462058_Internship Program Logbook_Week5-Week8.pdf', 'Logbook 2', '2024-01-16 19:27:38', '2024-01-16 19:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_03_09_135529_create_permission_tables', 1),
(10, '2023_12_21_094727_create_files_table', 2),
(11, '2024_01_10_151957_create_scores_table', 3),
(12, '2024_01_15_085513_create_total_amounts_table', 4),
(13, '2024_01_15_095654_create_total_amounts_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Radmin', 'Et0eouSIFHH1xAbP3Wmh2UJWjQisaRxeMk7KMrg3', NULL, 'http://localhost', 1, 0, 0, '2023-02-01 07:49:52', '2023-02-01 07:49:52'),
(2, NULL, 'Radmin Personal Access Client', 'D5i0uEQlEKb9J2Z8oGOk0SeTaF3z5vaVnD6GDBkh', NULL, 'http://localhost', 1, 0, 0, '2023-02-01 08:23:30', '2023-02-01 08:23:30'),
(3, NULL, 'Radmin Password Grant Client', 'KR7IYdRNna0xExS8rdPHkBPaT6bpqEuZLUwtvBGa', 'users', 'http://localhost', 0, 1, 0, '2023-02-01 08:23:30', '2023-02-01 08:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-02-01 07:49:52', '2023-02-01 07:49:52'),
(2, 2, '2023-02-01 08:23:30', '2023-02-01 08:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'manage_role', 'web', NULL, NULL),
(3, 'manage_permission', 'web', NULL, NULL),
(4, 'manage_user', 'web', NULL, NULL),
(5, 'manage_sales', 'web', NULL, NULL),
(6, 'manage_projects', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', NULL, NULL),
(2, 'Admin', 'web', NULL, NULL),
(3, 'Project Manager', 'web', NULL, NULL),
(4, 'Sales Manager', 'web', NULL, NULL),
(5, 'Member', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 2),
(5, 2),
(5, 4),
(6, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `total_amounts`
--

CREATE TABLE `total_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `doc_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `total_amounts`
--

INSERT INTO `total_amounts` (`id`, `date`, `doc_no`, `description`, `account`, `item`, `amount`, `created_at`, `updated_at`) VALUES
(1, '0000-00-00 00:00:00', 'INV/2301/058', 'Al-Kauthar Kinematics Sdn Bhd ', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:33', '2024-01-23 21:24:33'),
(2, '0000-00-00 00:00:00', 'INV/2301/059', 'GVT Sdn Bhd ', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(3, '0000-00-00 00:00:00', 'INV/2301/060', 'MR  Dagangan (M) Sdn Bhd', 'Revenue', 'Receivable', 3000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(4, '0000-00-00 00:00:00', 'INV/2301/061', 'Diet Ideas Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(5, '0000-00-00 00:00:00', 'INV/2301/062', 'Tasblock (M) Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(6, '0000-00-00 00:00:00', 'INV/2301/063', 'Solaris Infiniti Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(7, '0000-00-00 00:00:00', 'INV/2301/064', 'Global Psytech Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(8, '0000-00-00 00:00:00', 'INV/2301/065', 'LF Kokusai Boeki Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(9, '0000-00-00 00:00:00', 'INV/2301/066', 'Casemix Solutions  Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(10, '0000-00-00 00:00:00', 'INV/2301/067', 'Diet Ideas Sdn Bhd', 'Revenue', 'Receivable', 10000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(11, '0000-00-00 00:00:00', 'INV/2301/068', 'OH Digital Solution Sdn Bhd', 'Revenue', 'Receivable', 1000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(12, '0000-00-00 00:00:00', 'INV/2301/069', 'Toyyib pay Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(13, '0000-00-00 00:00:00', 'INV/2302/070', 'GVT Sdn Bhd ', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(14, '0000-00-00 00:00:00', 'INV/2302/071', 'MR  Dagangan (M) Sdn Bhd', 'Revenue', 'Receivable', 3000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(15, '0000-00-00 00:00:00', 'INV/2302/072', 'Diet Ideas Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(16, '0000-00-00 00:00:00', 'INV/2302/073', 'Tasblock (M) Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(17, '0000-00-00 00:00:00', 'INV/2302/074', 'Solaris Infiniti Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(18, '0000-00-00 00:00:00', 'INV/2302/075', 'Global Psytech Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(19, '0000-00-00 00:00:00', 'INV/2302/076', 'LF Kokusai Boeki Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(20, '0000-00-00 00:00:00', 'INV/2302/077', 'Casemix Solutions  Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(21, '0000-00-00 00:00:00', 'INV/2302/078', 'OH Digital Solution Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(22, '0000-00-00 00:00:00', 'INV/2302/079', 'Toyyib pay Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(23, '0000-00-00 00:00:00', 'INV/2302/080', 'Adege Digital Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(24, '0000-00-00 00:00:00', 'INV/2302/081', 'Nayli B Jewels', 'Revenue', 'Receivable', 1000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(25, '0000-00-00 00:00:00', 'INV/2303/082', 'Adege Digital Sdn Bhd', 'Revenue', 'Receivable', 1200, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(26, '0000-00-00 00:00:00', 'INV/2303/083', 'Tasblock (M) Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(27, '0000-00-00 00:00:00', 'INV/2303/084', 'Solaris Infiniti Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(28, '0000-00-00 00:00:00', 'INV/2303/085', 'Global Psytech Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(29, '0000-00-00 00:00:00', 'INV/2303/086', 'Casemix Solutions  Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(30, '0000-00-00 00:00:00', 'INV/2303/087', 'OH Digital Solution Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(31, '0000-00-00 00:00:00', 'INV/2303/088', 'Toyyib pay Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(32, '0000-00-00 00:00:00', 'INV/2303/089', 'Adege Digital Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(33, '0000-00-00 00:00:00', 'INV/2303/090', 'Sri Za ', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(34, '2045-01-03 00:00:00', 'INV/2303/091', 'Aero Nusantara Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(35, '2045-01-03 00:00:00', 'INV/2303/092', 'P2 Biotech Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(36, '2045-03-01 00:00:00', 'INV/2304/093', 'Tasblock (M) Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(37, '2045-03-01 00:00:00', 'INV/2304/094', 'Solaris Infiniti Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(38, '2045-03-01 00:00:00', 'INV/2304/095', 'Global Psytech Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(39, '2045-03-01 00:00:00', 'INV/2304/096', 'Casemix Solutions  Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(40, '2045-03-01 00:00:00', 'INV/2304/097', 'OH Digital Solution Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(41, '2045-03-01 00:00:00', 'INV/2304/098', ' Digital Adage Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(42, '2045-03-01 00:00:00', 'INV/2304/099', 'Sri Za Healthcare ', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(43, '2045-03-01 00:00:00', 'INV/2304/100', 'Aero Nusantara Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(44, '2045-03-01 00:00:00', 'INV/2304/101', 'P2 Biotech Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(45, '2045-03-01 00:00:00', 'INV/2304/102', 'Toyyib pay Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(46, '2045-06-01 00:00:00', 'INV/2305/103', 'Tasblock (M) Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(47, '2045-06-01 00:00:00', 'INV/2305/104', 'Solaris Infiniti Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(48, '2045-06-01 00:00:00', 'INV/2305/105', 'Global Psytech Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(49, '2045-06-01 00:00:00', 'INV/2305/106', 'Casemix Solutions  Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(50, '2045-06-01 00:00:00', 'INV/2305/107', 'OH Digital Solution Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(51, '2045-06-01 00:00:00', 'INV/2305/108', ' Digital Adage Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(52, '2045-06-01 00:00:00', 'INV/2305/109', 'Sri Za Healthcare ', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(53, '2045-06-01 00:00:00', 'INV/2305/110', 'Aero Nusantara Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(54, '2045-06-01 00:00:00', 'INV/2305/111', 'Exen Energy Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(55, '2045-09-02 00:00:00', 'INV/2306/112', 'Solaris Infiniti Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(56, '2045-09-02 00:00:00', 'INV/2306/113', 'Global Psytech Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(57, '2045-09-02 00:00:00', 'INV/2306/114', 'Casemix Solutions  Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(58, '2045-09-02 00:00:00', 'INV/2306/115', 'OH Digital Solution Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(59, '2045-09-02 00:00:00', 'INV/2306/116', ' Digital Adage Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(60, '2045-09-02 00:00:00', 'INV/2306/117', 'Sri Za Healthcare ', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(61, '2045-09-02 00:00:00', 'INV/2306/118', 'Exen Energy Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(62, '2045-12-02 00:00:00', 'INV/2307/119', 'Global Psytech Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(63, '2045-12-02 00:00:00', 'INV/2307/120', 'Casemix Solutions  Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(64, '2045-12-02 00:00:00', 'INV/2307/121', 'OH Digital Solution Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(65, '2045-12-02 00:00:00', 'INV/2307/122', ' Digital Adage Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(66, '2045-12-02 00:00:00', 'INV/2307/123', 'Sri Za Healthcare ', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(67, '2045-12-02 00:00:00', 'INV/2307/124', 'Exen Energy Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(68, '0000-00-00 00:00:00', 'INV/2308/125', 'Global Psytech Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(69, '0000-00-00 00:00:00', 'INV/2308/126', 'Casemix Solutions  Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(70, '0000-00-00 00:00:00', 'INV/2308/127', 'OH Digital Solution Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(71, '0000-00-00 00:00:00', 'INV/2308/128', ' Digital Adage Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(72, '0000-00-00 00:00:00', 'INV/2308/129', 'Sri Za Healthcare ', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(73, '0000-00-00 00:00:00', 'INV/2308/130', 'Exen Energy Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(74, '0000-00-00 00:00:00', 'INV/2309/131', 'Global Psytech Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(75, '0000-00-00 00:00:00', 'INV/2309/132', 'Casemix Solutions  Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(76, '0000-00-00 00:00:00', 'INV/2309/133', 'OH Digital Solution Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(77, '0000-00-00 00:00:00', 'INV/2309/134', ' Digital Adage Sdn Bhd', 'Revenue', 'Receivable', 2000, '2024-01-23 21:24:34', '2024-01-23 21:24:34'),
(78, '0000-00-00 00:00:00', 'INV/2309/135', 'Exen Energy Sdn Bhd', 'Revenue', 'Receivable', 4000, '2024-01-23 21:24:34', '2024-01-23 21:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@test.com', NULL, 'admin@123', NULL, NULL, NULL),
(2, 'Project Manager', 'pm@test.com', NULL, '$2y$10$BBvE6V00Aq/Vz97VXLkd/eRE3rTwp8.zLQVJ/d3N3CioKlheD1Fw2', NULL, NULL, NULL),
(3, 'Sales Manager', 'sm@test.com', NULL, '$2y$10$Iy0.CG3ZpXHTqEpbe1/EHe1WQ0/Np/alTT55diUWnFNenD8NX.x0S', NULL, NULL, NULL),
(4, 'HR', 'hr@test.com', NULL, '$2y$10$V3XtHHbA99g7Lgz3/IO9wuZJ8VgnJ33VoFDjpITl45pjdBrfHboqW', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `total_amounts`
--
ALTER TABLE `total_amounts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `total_amounts`
--
ALTER TABLE `total_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
