-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2022 at 08:53 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_title`, `product_description`, `product_price`, `product_image`, `product_category`, `created_at`, `updated_at`) VALUES
(1, 'title', 'description', 450, 'image', 'category', NULL, NULL),
(2, 'title', 'description', 450, 'image', 'category', NULL, NULL),
(3, 'title', 'description', 450, 'image', 'category', NULL, NULL),
(5, 'title', 'description', 450, 'image', 'category', NULL, NULL),
(6, 'title', 'description', 450, 'image', 'category', NULL, NULL),
(7, 'this is title', 'ddescription', 450, 'image', 'category', '2022-09-21 12:43:23', '2022-09-21 12:43:23'),
(8, 'this is title', 'ddescription', 450, 'image', 'category', '2022-09-21 12:44:40', '2022-09-21 12:44:40'),
(9, 'xyz', 'ddescription', 45, 'dfdf', 'category', '2022-09-21 13:06:42', '2022-09-21 13:06:42'),
(10, 'xyz', 'ddescription', 45, 'dfdf', 'category', '2022-09-21 13:07:45', '2022-09-21 13:07:45'),
(11, 'xyDDDz', 'ddescription', 45, 'dfdf', 'category', '2022-09-21 13:10:09', '2022-09-21 13:14:11'),
(12, 'xyz', 'ddescription', 45, 'dfdf', 'category', '2022-09-21 13:10:48', '2022-09-21 13:10:48'),
(13, 'xyz', 'ddescription', 45, 'dfdf', 'category', '2022-09-21 13:11:41', '2022-09-21 13:11:41'),
(14, 'xyz', 'ddescription', 45, 'dfdf', 'category', '2022-09-21 13:12:09', '2022-09-21 13:12:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
