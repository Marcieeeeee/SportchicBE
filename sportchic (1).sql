-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 03:29 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportchic`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NIke', 0, NULL, NULL),
(2, 'Adidas', 0, NULL, NULL),
(3, 'Ortuseight', 0, NULL, NULL),
(4, 'Specs', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `status` tinyint(100) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `firstname`, `lastname`, `username`, `email`, `address`, `country`, `state`, `zipcode`, `payment_mode`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Azizah', 'Wanda', 'azizahwanda', 'azizahwanda625@gmail.com', 'kjhgfdfgnyvtv', 'jnhgvyubnk', 'jhgfertyu', '0987', 'Paypal', 0, '2023-03-26 23:43:45', '2023-03-26 23:43:45'),
(7, 'hahah', 'hahahaha', 'hahahahahah', 'marcieverodict@gmail.com', 'canadanadandan', 'america', 'usa', '876543', 'Paypal', 0, '2023-03-29 20:41:04', '2023-03-29 20:41:04'),
(8, 'Azizah', 'Wanda', 'Azizahwanda', 'azizahwanda625@gmail.com', 'jl. sukasuka', 'indonesia', 'jawa barat', '40523', 'Paypal', 0, '2023-04-02 08:35:58', '2023-04-02 08:35:58'),
(9, 'alya', 'fauziyah', 'alyafauziyah', 'alyafauziyah@example.com', 'Jl.Sukasuka2', 'Indonesia', 'Bandung', '876908', 'Paypal', 0, '2023-04-02 15:55:28', '2023-04-02 15:55:28'),
(10, 'alya', 'fauziyah', 'alyafauziyah', 'alyafauziyah@example.com', 'Jl.Sukasuka2', 'Indonesia', 'Bandung', '876908', 'Paypal', 0, '2023-04-02 15:58:22', '2023-04-02 15:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `username`, `email`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'azizahwanda', 'azizahwanda625@gmail.com', 'good work!', '2023-03-29 02:48:44', '2023-03-29 02:48:44'),
(2, 'marcie', 'marcieverodict@gmail.com', 'nice one!', '2023-03-29 03:09:52', '2023-03-29 03:09:52'),
(3, 'admin', 'admin@gmail.com', 'hello', '2023-03-29 20:42:07', '2023-03-29 20:42:07'),
(4, 'alyafauziyah', 'alyafauziyah@example.com', 'This is so cool!', '2023-04-02 15:46:22', '2023-04-02 15:46:22'),
(5, 'vyn', 'vynnverodict@gmail.com', 'awesome', '2023-04-02 16:03:45', '2023-04-02 16:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_08_030741_create_products_table', 2),
(7, '2023_03_09_104506_create_category_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_name`, `price`, `created_at`, `updated_at`) VALUES
(3, 6, 1, 'adidas', 1000000, '2023-03-26 23:43:45', '2023-03-26 23:43:45'),
(4, 7, 9, 'nike 3', 9990000, '2023-03-29 20:41:05', '2023-03-29 20:41:05'),
(5, 8, 14, 'specs 1', 1250000, '2023-04-02 08:35:59', '2023-04-02 08:35:59'),
(6, 10, 1, 'adidas', 1900000, '2023-04-02 15:58:22', '2023-04-02 15:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(9, 'App\\Models\\User', 7, 'marcieverodict@gmail.com_Token', '45b029d633f5616c2945af7361cbbe0aac8b71361695180a93f1d81387a21439', '[\"*\"]', NULL, '2023-02-28 20:43:57', '2023-02-28 20:43:57'),
(10, 'App\\Models\\User', 8, 'miawaug@gmail.com_Token', '5a6a7fda121966aa50727fcc6bb1bc7aa322fa76d8887cb2fe9e410df65e232a', '[\"*\"]', NULL, '2023-03-01 00:17:12', '2023-03-01 00:17:12'),
(16, 'App\\Models\\User', 11, 'azizahwanda625@gmail.com_Token', '49fc27c5460d4c155b9f2fa6e61d9f4b087966bb4cc566040756b064597e1d13', '[\"*\"]', NULL, '2023-03-30 20:55:13', '2023-03-30 20:55:13'),
(17, 'App\\Models\\User', 11, 'azizahwanda625@gmail.com_Token', '3fb59aa2fb85ebbf296efabedbf2467cc37fc3c631edc2089ed4301c931b220f', '[\"*\"]', NULL, '2023-03-30 21:14:02', '2023-03-30 21:14:02'),
(18, 'App\\Models\\User', 11, 'azizahwanda625@gmail.com_Token', '03901dece9d50789614d138d1d99ba7d06f0fddc1cecd5bc01d1c121d4fb6afe', '[\"*\"]', NULL, '2023-03-30 21:17:56', '2023-03-30 21:17:56'),
(19, 'App\\Models\\User', 12, 'admin2@example.com_Token', 'e2bbb2c2715312951d9abe8692c8741d3631b8c6690169a7f456537b949f88b4', '[\"*\"]', NULL, '2023-03-30 21:36:42', '2023-03-30 21:36:42'),
(23, 'App\\Models\\User', 15, 'alyafau@example.com_Token', '3d7d46c6851c07e268eddd82dfcff853120ae4e3085fe72eb74f2ea2b9fb08af', '[\"*\"]', NULL, '2023-04-02 15:38:31', '2023-04-02 15:38:31'),
(24, 'App\\Models\\User', 15, 'alyafau@example.com_Token', 'b4687d1b95c2f240fca7931d93cb623bd9e1a5bad74d71510bf91d5be33989f4', '[\"*\"]', NULL, '2023-04-02 15:40:25', '2023-04-02 15:40:25'),
(25, 'App\\Models\\User', 15, 'alyafau@example.com_Token', '922e3751bbfff2da163ff150dbe22d01497f30a86e4bff72ad2c6959ace78db7', '[\"*\"]', '2023-04-02 15:58:22', '2023-04-02 15:54:20', '2023-04-02 15:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(20,0) NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `image`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'upload/product/1678703450.png', 'adidas', '1900000', 'this is adidas', '2023-03-13 03:30:51', '2023-03-31 08:00:40'),
(2, 1, 'upload/product/1679377167.png', 'nike shoe', '1800000', 'this is nike shoe', '2023-03-20 22:39:28', '2023-03-20 22:39:28'),
(4, 2, 'upload/product/1680012115.png', 'adidas 2', '1870000', 'this is adidas 2', '2023-03-28 07:01:55', '2023-03-28 07:01:55'),
(5, 2, 'upload/product/1680012198.png', 'adidas 3', '1970000', 'this is adidas 3', '2023-03-28 07:03:18', '2023-03-28 07:03:18'),
(6, 2, 'upload/product/1680012203.png', 'adidas 4', '1000000', 'this is adidas 4', '2023-03-28 07:03:23', '2023-04-02 13:42:00'),
(7, 2, 'upload/product/1680012257.png', 'adidas 4', '2190000', 'this is adidas 4', '2023-03-28 07:04:17', '2023-03-28 07:04:17'),
(8, 2, 'upload/product/1680012304.png', 'adidas 5', '1660000', 'this is adidas 5', '2023-03-28 07:05:04', '2023-03-28 07:05:04'),
(9, 1, 'upload/product/1680012396.png', 'nike 3', '9990000', 'this is nike 3', '2023-03-28 07:06:36', '2023-03-28 07:06:36'),
(10, 1, 'upload/product/1680012425.png', 'nike 4', '1890000', 'this is nike 4', '2023-03-28 07:07:05', '2023-03-28 07:07:05'),
(11, 1, 'upload/product/1680012595.png', 'nike 5', '1990000', 'this is nike 5', '2023-03-28 07:09:55', '2023-03-28 07:09:55'),
(12, 1, 'upload/product/1680012672.png', 'nike 6', '2750000', 'this is nike 6', '2023-03-28 07:11:12', '2023-03-28 07:11:12'),
(13, 1, 'upload/product/1680012699.png', 'nike 7', '2250000', 'this is nike 7', '2023-03-28 07:11:39', '2023-03-28 07:11:39'),
(14, 4, 'upload/product/1680012781.png', 'specs 1', '1250000', 'this is specs 1', '2023-03-28 07:13:01', '2023-03-28 07:13:01'),
(15, 3, 'upload/product/1680012854.png', 'ortuseight 1', '1250000', 'this is ortuseight 1', '2023-03-28 07:14:14', '2023-03-28 07:14:14'),
(16, 3, 'upload/product/1680475436.png', 'ortuseight 2', '1250000', 'this is ortuseight 2', '2023-04-02 15:43:56', '2023-04-02 15:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` int(11) DEFAULT '0' COMMENT '0=user,1=admin',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'azizah', 'azizahwanda625@gmail.om', NULL, '$2y$10$k6V8HkirFx5qnoeH7CJxyeFRcRom3BHhCGkOfd.uq0TbvKMEKme6G', 1, NULL, '2023-02-28 05:07:20', '2023-02-28 05:07:20'),
(6, 'admin', 'admin@gmail.com', NULL, '$2y$10$MLQ94yt9fNKym.UbIqdVreFzL5tM3Ig.WFOvgHdcEDFBcWnpSs9Cq', 1, NULL, '2023-02-28 09:54:39', '2023-02-28 09:54:39'),
(7, 'Marcie', 'marcieverodict@gmail.com', NULL, '$2y$10$VFIOkRkKrxwprL5HQoQISe/5q2GJIBn3y.sbaNCbyu7VHDgackqqG', 0, NULL, '2023-02-28 20:43:57', '2023-02-28 20:43:57'),
(8, 'miawaug', 'miawaug@gmail.com', NULL, '$2y$10$ZL6vZeBZ53MtyS1H.CLuBOywL4nKqC1ZkBYi/QGEwuqE6IVnmw4p2', 0, NULL, '2023-03-01 00:17:12', '2023-03-01 00:17:12'),
(9, 'aya', 'ayaya@gmail.com', NULL, '$2y$10$FbyoXImNLzaqqXaVjU4xp.K.qyW4Nyw8HyJKvXem9oJ609T3Bv9Ve', 0, NULL, '2023-03-01 06:19:29', '2023-03-01 06:19:29'),
(10, 'who', 'who@gmail.com', NULL, '$2y$10$PPXJNWkmz4vZP75SC33psumtPzCUkg0vsm5ZYe2npoWvqfKnRmi2K', 0, NULL, '2023-03-02 00:31:32', '2023-03-02 00:31:32'),
(11, 'azizahwanda', 'azizahwanda625@gmail.com', NULL, '$2y$10$2cNpjD1aJRWxTOzipY/bleVWLrsq3nvX.tU37Z9U5eo6sFyf4WXWy', 0, NULL, '2023-03-24 07:31:02', '2023-03-24 07:31:02'),
(12, 'adminexample', 'admin2@example.com', NULL, '$2y$10$.dSFFiD84k2msPF.Wbe5c.ltbV8OnVSYRP08VbYBBBqh4/AycLuZ2', 1, NULL, '2023-03-30 21:36:41', '2023-03-30 21:36:41'),
(13, 'adminexample3', 'adminexample3@gmail.com', NULL, '$2y$10$jqo5BEtx7asr6.3.Dnxlne.SzQSJsqEaR9htg1wseCXWYQyD12KEm', 1, NULL, '2023-03-30 21:52:18', '2023-03-30 21:52:18'),
(14, 'azizahwandafebriyanti', 'azizahwandafebriyanti@gmail.com', NULL, '$2y$10$2Q.gx8wkeSPEepWqTQDkBeMwQ/5YKplj5zHDiCsGPKauEJMdXU0tq', 0, NULL, '2023-04-02 06:50:41', '2023-04-02 06:50:41'),
(15, 'alya fauziyah', 'alyafau@example.com', NULL, '$2y$10$0gHC84nwQR7sdWRMpJRFIeYVYvPxLZ60AQX7nhv0foobDDed.xfAa', 0, NULL, '2023-04-02 15:38:31', '2023-04-02 15:38:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `checkout` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
