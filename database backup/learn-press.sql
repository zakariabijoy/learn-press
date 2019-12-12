-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 12, 2019 at 10:30 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn-press`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `course_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 18, 1, 'abc', '2019-12-10 14:59:43', '2019-12-10 14:59:43'),
(2, 18, 1, 'abcdsf', '2019-12-10 15:05:46', '2019-12-10 15:05:46'),
(3, 18, 1, 'asd', '2019-12-10 15:59:51', '2019-12-10 15:59:51'),
(4, 18, 1, 'c', '2019-12-10 16:27:33', '2019-12-10 16:27:33'),
(5, 18, 2, 'a', '2019-12-10 16:34:01', '2019-12-10 16:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `price`, `image`, `author_id`, `created_at`, `updated_at`) VALUES
(4, 'asp.net', 'asp.net', '5.00', '53541726_2092840317465782_7994913520779001856_n.jpg', 1, '2019-12-01 13:19:20', '2019-12-01 13:19:20'),
(5, 'c', 'c', '2.00', '54355986_2172985219459750_4462498100312801280_n.png', 1, '2019-12-01 13:23:54', '2019-12-01 13:23:54'),
(6, 'c', 'c', '1.00', '54355986_2172985219459750_4462498100312801280_n.png', 1, '2019-12-01 13:26:56', '2019-12-01 13:26:56'),
(7, 'javascript', 'js............................', '2.00', '54514384_2115784185182312_1108647147768643584_n.png', 1, '2019-12-02 13:20:59', '2019-12-02 13:20:59'),
(8, 'python', 'python................', '5.00', '53541726_2092840317465782_7994913520779001856_n.jpg', 1, '2019-12-02 14:01:41', '2019-12-02 14:01:41'),
(9, 'java', 'java....................', '2.00', '53541726_2092840317465782_7994913520779001856_n.jpg', 2, '2019-12-02 14:52:30', '2019-12-02 14:52:30'),
(10, 'c++', 'c++......................', '3.00', '54355986_2172985219459750_4462498100312801280_n.png', 2, '2019-12-02 14:53:01', '2019-12-02 14:53:01'),
(11, 'react', 'react.....................', '4.00', '54514384_2115784185182312_1108647147768643584_n.png', 2, '2019-12-02 14:53:52', '2019-12-02 14:53:52'),
(12, 'angular', 'angular...........', '4.00', '54355986_2172985219459750_4462498100312801280_n.png', 2, '2019-12-02 14:54:16', '2019-12-02 14:54:16'),
(13, 'vue', 'vue......', '1.00', '53541726_2092840317465782_7994913520779001856_n.jpg', 2, '2019-12-02 14:55:10', '2019-12-02 14:55:10'),
(17, 'asp.net mvc5', 'asp.net mvc5............', '20.00', '54514384_2115784185182312_1108647147768643584_n.png', 1, '2019-12-03 13:13:08', '2019-12-03 13:13:08'),
(18, '.net full stack', '.net full stack...', '25.00', '54514384_2115784185182312_1108647147768643584_n.png', 1, '2019-12-03 13:29:49', '2019-12-03 13:29:49');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_16_202624_add_mobile_column_to_users_table', 1),
(5, '2019_11_21_200220_create_courses_table', 1),
(6, '2019_12_03_175615_create_videos_table', 2),
(8, '2019_12_06_201446_create_user_course_table', 3),
(9, '2019_12_10_202747_create_comment_table', 4);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `mobile`) VALUES
(1, 'zb', 'zb@live.com', NULL, '$2y$10$Ek3SoSXChoOWfoHeg7TaoOXOSP4fa2CnFtQESB5tSoRw3Vprjlop6', NULL, '2019-11-30 06:02:34', '2019-11-30 06:02:34', '01787789807'),
(2, 'z', 'z@gmail.com', NULL, '$2y$10$qXc.CNFgtDFxdcmPLPGaLeLcx5iwGrp7AJVg//nuEtKGcAZ9oLRWe', NULL, '2019-12-01 13:09:59', '2019-12-01 13:09:59', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `user_course`
--

CREATE TABLE `user_course` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_course`
--

INSERT INTO `user_course` (`user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(2, 4, NULL, NULL),
(1, 17, NULL, NULL),
(1, 5, NULL, NULL),
(1, 4, NULL, NULL),
(1, 4, NULL, NULL),
(1, 4, NULL, NULL),
(1, 4, NULL, NULL),
(1, 4, NULL, NULL),
(1, 4, NULL, NULL),
(2, 7, NULL, NULL),
(1, 7, NULL, NULL),
(1, 18, NULL, NULL),
(1, 18, NULL, NULL),
(1, 18, NULL, NULL),
(2, 18, NULL, NULL),
(1, 13, NULL, NULL),
(1, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `course_id`, `file_name`, `created_at`, `updated_at`) VALUES
(6, 17, '002 MVC Architectural Pattern.mp4', '2019-12-03 13:13:08', '2019-12-03 13:13:08'),
(7, 18, '00.What-Youll-Learn.mp4', '2019-12-03 13:29:49', '2019-12-03 13:29:49'),
(8, 18, '01.Prerequisites.mp4', '2019-12-03 13:29:49', '2019-12-03 13:29:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_course_id_foreign` (`course_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_author_id_foreign` (`author_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_course`
--
ALTER TABLE `user_course`
  ADD KEY `user_course_user_id_foreign` (`user_id`),
  ADD KEY `user_course_course_id_foreign` (`course_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_course_id_foreign` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_course`
--
ALTER TABLE `user_course`
  ADD CONSTRAINT `user_course_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_course_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
