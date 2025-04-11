-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2025 at 03:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo_app`
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_afd@h.com|127.0.0.1', 'i:1;', 1744376424),
('laravel_cache_afd@h.com|127.0.0.1:timer', 'i:1744376424;', 1744376424),
('laravel_cache_bdvkfhkdjz@khdzvjk.com|127.0.0.1', 'i:1;', 1744376575),
('laravel_cache_bdvkfhkdjz@khdzvjk.com|127.0.0.1:timer', 'i:1744376575;', 1744376575),
('laravel_cache_davds@dfd.com|127.0.0.1', 'i:1;', 1744376519),
('laravel_cache_davds@dfd.com|127.0.0.1:timer', 'i:1744376519;', 1744376519),
('laravel_cache_prabha@g.com|127.0.0.1', 'i:1;', 1744376323),
('laravel_cache_prabha@g.com|127.0.0.1:timer', 'i:1744376323;', 1744376323),
('laravel_cache_prabha@test.com|127.0.0.1', 'i:1;', 1744375392),
('laravel_cache_prabha@test.com|127.0.0.1:timer', 'i:1744375392;', 1744375392),
('laravel_cache_prabhakar@gmail.com|127.0.0.1', 'i:1;', 1744376635),
('laravel_cache_prabhakar@gmail.com|127.0.0.1:timer', 'i:1744376635;', 1744376635),
('laravel_cache_prabhakarankmani@gmail.com|127.0.0.1', 'i:3;', 1744376764),
('laravel_cache_prabhakarankmani@gmail.com|127.0.0.1:timer', 'i:1744376764;', 1744376764),
('laravel_cache_test@g.com|127.0.0.1', 'i:1;', 1744375704),
('laravel_cache_test@g.com|127.0.0.1:timer', 'i:1744375704;', 1744375704),
('laravel_cache_test@test.com|127.0.0.1', 'i:1;', 1744374351),
('laravel_cache_test@test.com|127.0.0.1:timer', 'i:1744374351;', 1744374351),
('laravel_cache_xvdzh@kjdshjk.com|127.0.0.1', 'i:1;', 1744376567),
('laravel_cache_xvdzh@kjdshjk.com|127.0.0.1:timer', 'i:1744376567;', 1744376567);

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Urgent', '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(2, 'Personal', '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(3, 'Official', '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(4, 'Home', '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(5, 'Urgent', '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(6, 'Personal', '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(7, 'Official', '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(8, 'Home', '2025-04-11 06:14:49', '2025-04-11 06:14:49');

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
(4, '2025_04_10_131302_create_categories_table', 1),
(5, '2025_04_10_131423_create_tasks_table', 1);

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
('mjGe4fwjsNuXc1xBoKlZKme53SjLIRWzZhpMgXgw', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWpDUE9VTlY4NlhEUENTTHhsSUgyZmJkdzJLckpwN3E1WTM4RUd1RSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1744376786);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `user_id`, `category_id`, `is_completed`, `created_at`, `updated_at`) VALUES
(1, 'Buy groceries', 'Milk, Eggs, Bread', 1, 1, 0, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(2, 'Task 1', 'Quam dolor illum quae.', 2, 5, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(3, 'Task 2', 'Vel qui distinctio minima placeat consequuntur voluptatem.', 2, 3, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(4, 'Task 3', 'Voluptatum ea fugit iusto laborum facere hic.', 2, 4, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(5, 'Task 4', 'Qui molestiae eaque quasi qui minus.', 2, 8, 0, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(6, 'Task 5', 'Vel voluptatem eum aut consequatur voluptas qui at.', 2, 6, 0, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(7, 'Task 6', 'Sed fuga recusandae labore fugiat laborum.', 2, 3, 0, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(8, 'Task 7', 'Voluptatem voluptatem consequuntur qui assumenda aut quo itaque ex.', 2, 6, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(9, 'Task 8', 'Odit facere molestiae aperiam quos.', 2, 2, 0, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(10, 'Task 9', 'Ducimus quasi vitae et saepe quas non dolorem.', 2, 7, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(11, 'Task 10', 'Nemo temporibus ut ut.', 2, 7, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(12, 'Task 1', 'Ducimus perspiciatis harum similique.', 3, 5, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(13, 'Task 2', 'Dolore expedita ad aspernatur quibusdam soluta magni asperiores.', 3, 5, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(14, 'Task 3', 'Eum quam sint alias temporibus.', 3, 3, 0, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(15, 'Task 4', 'Laboriosam adipisci maiores quis consequuntur a est quisquam.', 3, 8, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(16, 'Task 5', 'Quos error nisi quae et eum quia officia.', 3, 6, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(17, 'Task 6', 'Qui sapiente et impedit unde.', 3, 6, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(18, 'Task 1', 'Laborum magni et dolores ipsa sint iure.', 4, 5, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(19, 'Task 2', 'Vel suscipit ut doloribus earum quia aut.', 4, 7, 0, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(20, 'Task 3', 'Dolorum possimus nihil quia.', 4, 1, 0, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(21, 'Task 4', 'Quae praesentium explicabo numquam explicabo aspernatur deleniti doloribus maxime.', 4, 6, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49'),
(22, 'Task 5', 'In id nemo recusandae.', 4, 7, 1, '2025-04-11 06:14:49', '2025-04-11 06:14:49');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prabhakar', 'prabhakar@gmail.com', '2025-04-11 06:14:49', '$2y$12$EhaJKntSdCV0Wlu8B25BHe3gLqA3HZGL/vA2bs59wGl/iLJfnFB1W', 'l4UM0D3Z7I', '2025-04-11 06:14:49', '2025-04-11 06:18:56'),
(2, 'Emanuel', 'padberg.emanuel@example.org', '2025-04-11 06:14:49', '$2y$12$R9Gq9Gor12kgTd3CARSRweOCy2W3fkF8gz78j9pAotcZAzRW.v9GG', 'RInwovvHnQ', '2025-04-11 06:14:49', '2025-04-11 06:18:56'),
(3, 'Devin', 'mmedhurst@example.org', '2025-04-11 06:14:49', '$2y$12$SMMcYvcHe0T1cVAma4cH3OlrLzkRFKd2pZzjiMw2SbUQCxaZeXst.', 'BIFfkft75WY7Qicsp67cf3Hiv56tWE4ZhjfG6Vey9Lrg0viRoicjeMl3G4hy', '2025-04-11 06:14:49', '2025-04-11 06:18:57'),
(4, 'kie', 'kie@k.com', '2025-04-11 06:14:49', '$2y$12$p0T3scETWG0i5faRu9E4ouAlqZKVRDNpVE8mgu9iNlWl4RhmtMaQe', 'P7pHbiVaktc2XZn1MIv87Tw5VFkMqFwjt2D4iRVLQcP28MTmCeIjJMfE2g5j', '2025-04-11 06:14:49', '2025-04-11 06:18:57');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`),
  ADD KEY `tasks_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
