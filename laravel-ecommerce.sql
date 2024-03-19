-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 09:28 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-04-19 12:07:23', '2020-04-19 12:07:23'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-04-19 12:07:23', '2020-04-19 12:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Shoes', 'Shoes', '2020-04-19 11:21:15', '2020-04-19 14:54:24'),
(2, 'HOODIES', 'HOODIES', '2020-04-19 11:21:15', '2020-04-20 14:38:23'),
(3, 'T-shirts', 'T-shirts', '2020-04-19 11:21:15', '2020-04-19 15:56:18'),
(4, 'Jacket', 'Jacket', '2020-04-19 11:21:15', '2020-04-20 14:38:51'),
(5, 'Bags&Backpacks', 'Bags&Backpacks', '2020-04-19 11:21:15', '2020-04-20 14:40:29'),
(6, 'Pants', 'Pants', '2020-04-19 11:21:15', '2020-04-20 14:41:19'),
(7, 'Shorts', 'Shorts', '2020-04-19 11:21:15', '2020-04-20 14:41:53'),
(8, 'Sweatshirt', 'Sweatshirt', '2020-04-23 00:53:37', '2020-04-23 00:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-04-19 04:28:38', '2020-04-19 04:28:38'),
(2, 2, 1, '2020-04-19 15:04:25', '2020-04-19 15:04:25'),
(3, 3, 1, '2020-04-19 15:49:58', '2020-04-19 15:49:58'),
(4, 4, 1, '2020-04-20 12:20:58', '2020-04-20 12:20:58'),
(5, 5, 1, '2020-04-20 12:21:06', '2020-04-20 12:21:06'),
(6, 6, 5, '2020-04-20 15:06:46', '2020-04-20 15:06:46'),
(8, 8, 2, '2020-04-20 22:15:05', '2020-04-20 22:15:05'),
(9, 9, 2, '2020-04-21 00:44:21', '2020-04-21 00:44:21'),
(10, 10, 2, '2020-04-21 00:44:28', '2020-04-21 00:44:28'),
(11, 11, 8, '2020-04-23 00:55:01', '2020-04-23 00:55:01'),
(12, 14, 8, '2020-04-23 00:55:11', '2020-04-23 00:55:11'),
(13, 13, 2, '2020-04-23 00:55:17', '2020-04-23 00:55:17'),
(14, 15, 3, '2020-04-24 19:27:25', '2020-04-24 19:27:25'),
(15, 7, 2, '2020-04-25 08:02:26', '2020-04-25 08:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'ABC123', 'fixed', 3000, NULL, '2020-04-19 11:21:15', '2020-04-19 11:21:15'),
(2, 'DEF456', 'percent', NULL, 50, '2020-04-19 11:21:15', '2020-04-19 11:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '\"\"', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '\"\"', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '\"\"', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '\"\"', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '\"\"', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '\"{\\\"resize\\\":{\\\"width\\\":\\\"1000\\\",\\\"height\\\":\\\"null\\\"},\\\"quality\\\":\\\"70%\\\",\\\"upsize\\\":true,\\\"thumbnails\\\":[{\\\"name\\\":\\\"medium\\\",\\\"scale\\\":\\\"50%\\\"},{\\\"name\\\":\\\"small\\\",\\\"scale\\\":\\\"25%\\\"},{\\\"name\\\":\\\"cropped\\\",\\\"crop\\\":{\\\"width\\\":\\\"300\\\",\\\"height\\\":\\\"250\\\"}}]}\"', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '\"{\\\"slugify\\\":{\\\"origin\\\":\\\"title\\\",\\\"forceUpdate\\\":true}}\"', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '\"\"', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '\"\"', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '\"{\\\"default\\\":\\\"DRAFT\\\",\\\"options\\\":{\\\"PUBLISHED\\\":\\\"published\\\",\\\"DRAFT\\\":\\\"draft\\\",\\\"PENDING\\\":\\\"pending\\\"}}\"', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '\"\"', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '\"\"', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '\"\"', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '\"\"', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '\"{\\\"slugify\\\":{\\\"origin\\\":\\\"title\\\"}}\"', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '\"\"', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '\"\"', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '\"{\\\"default\\\":\\\"INACTIVE\\\",\\\"options\\\":{\\\"INACTIVE\\\":\\\"INACTIVE\\\",\\\"ACTIVE\\\":\\\"ACTIVE\\\"}}\"', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '\"\"', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '\"\"', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '\"\"', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '\"\"', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '\"\"', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '\"\"', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '\"\"', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '\"\"', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '\"{\\\"default\\\":\\\"\\\",\\\"null\\\":\\\"\\\",\\\"options\\\":{\\\"\\\":\\\"-- None --\\\"},\\\"relationship\\\":{\\\"key\\\":\\\"id\\\",\\\"label\\\":\\\"name\\\"}}\"', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '\"{\\\"default\\\":1}\"', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"\"', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '\"{\\\"slugify\\\":{\\\"origin\\\":\\\"name\\\"}}\"', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '\"\"', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '\"\"', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '\"\"', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '\"\"', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '\"\"', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '\"\"', 9),
(54, 3, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(55, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(56, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(57, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(58, 7, 'details', 'text', 'Details', 0, 1, 1, 1, 1, 1, '{}', 4),
(59, 7, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(60, 7, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 6),
(61, 7, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 7),
(62, 7, 'quantity', 'number', 'Quantity', 1, 1, 1, 1, 1, 1, '{}', 8),
(63, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 9),
(64, 7, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 10),
(65, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 11),
(66, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(67, 8, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(68, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(69, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(70, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(71, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(72, 9, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(73, 9, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(74, 9, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(75, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(76, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(77, 10, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(78, 10, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(79, 10, 'billing_email', 'text', 'Billing Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(80, 10, 'billing_name', 'text', 'Billing Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(81, 10, 'billing_address', 'text', 'Billing Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(82, 10, 'billing_city', 'text', 'Billing City', 0, 1, 1, 1, 1, 1, '{}', 6),
(83, 10, 'billing_province', 'text', 'Billing Province', 0, 1, 1, 1, 1, 1, '{}', 7),
(84, 10, 'billing_postalcode', 'text', 'Billing Postalcode', 0, 1, 1, 1, 1, 1, '{}', 8),
(85, 10, 'billing_phone', 'text', 'Billing Phone', 0, 1, 1, 1, 1, 1, '{}', 9),
(86, 10, 'billing_name_on_card', 'text', 'Billing Name On Card', 0, 1, 1, 1, 1, 1, '{}', 10),
(87, 10, 'billing_discount', 'text', 'Billing Discount', 1, 1, 1, 1, 1, 1, '{}', 11),
(88, 10, 'billing_discount_code', 'text', 'Billing Discount Code', 0, 1, 1, 1, 1, 1, '{}', 12),
(89, 10, 'billing_subtotal', 'text', 'Billing Subtotal', 1, 1, 1, 1, 1, 1, '{}', 13),
(90, 10, 'billing_tax', 'text', 'Billing Tax', 1, 1, 1, 1, 1, 1, '{}', 14),
(91, 10, 'billing_total', 'text', 'Billing Total', 1, 1, 1, 1, 1, 1, '{}', 15),
(92, 10, 'payment_gateway', 'text', 'Payment Gateway', 1, 1, 1, 1, 1, 1, '{}', 16),
(93, 10, 'shipped', 'text', 'Shipped', 1, 1, 1, 1, 1, 1, '{}', 17),
(94, 10, 'error', 'text', 'Error', 0, 1, 1, 1, 1, 1, '{}', 18),
(95, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 19),
(96, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 20);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-04-19 12:07:14', '2020-04-19 12:07:14'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-04-19 12:07:14', '2020-04-19 12:07:14'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '\\App\\Http\\Controllers\\Voyager\\UsersController', '', 1, 0, NULL, '2020-04-19 12:07:14', '2020-04-19 12:07:14'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-04-19 12:07:14', '2020-04-19 12:07:14'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-04-19 12:07:14', '2020-04-19 12:07:14'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-04-19 12:07:14', '2020-04-19 12:07:14'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-rum', 'App\\Product', NULL, '\\App\\Http\\Controllers\\Voyager\\ProductsController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-04-19 14:22:04', '2020-04-24 18:36:24'),
(8, 'category', 'category', 'Category', 'Categories', 'voyager-pie-chart', 'App\\Category', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-04-19 14:54:00', '2020-04-19 14:54:00'),
(9, 'category_product', 'category-product', 'Category Product', 'Category Products', 'voyager-paint-bucket', 'App\\CategoryProduct', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-04-19 15:00:32', '2020-04-19 15:00:32'),
(10, 'orders', 'orders', 'Order', 'Orders', 'voyager-bell', 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-04-25 04:47:43', '2020-04-25 04:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-04-19 12:07:17', '2020-04-19 12:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-04-19 12:07:17', '2020-04-19 12:07:17', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-04-19 12:07:17', '2020-04-19 12:07:17', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-04-19 12:07:17', '2020-04-19 12:07:17', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-04-19 12:07:18', '2020-04-19 12:07:18', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2020-04-19 12:07:18', '2020-04-19 12:07:18', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2020-04-19 12:07:18', '2020-04-19 12:07:18', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-04-19 12:07:18', '2020-04-19 12:07:18', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-04-19 12:07:18', '2020-04-19 12:07:18', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 10, '2020-04-19 12:07:18', '2020-04-19 12:07:18', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 11, '2020-04-19 12:07:18', '2020-04-19 12:07:18', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 12, '2020-04-19 12:07:18', '2020-04-19 12:07:18', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-04-19 12:07:18', '2020-04-19 12:07:18', 'voyager.settings.index', NULL),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 13, '2020-04-19 12:07:26', '2020-04-19 12:07:26', 'voyager.hooks', NULL),
(14, 1, 'Products', '', '_self', 'voyager-rum', NULL, NULL, 15, '2020-04-19 14:22:05', '2020-04-19 14:22:05', 'voyager.products.index', NULL),
(15, 1, 'Categories', '', '_self', 'voyager-pie-chart', NULL, NULL, 16, '2020-04-19 14:54:01', '2020-04-19 14:54:01', 'voyager.category.index', NULL),
(16, 1, 'Category Products', '', '_self', 'voyager-paint-bucket', NULL, NULL, 17, '2020-04-19 15:00:32', '2020-04-19 15:00:32', 'voyager.category-product.index', NULL),
(17, 1, 'Orders', '', '_self', 'voyager-bell', NULL, NULL, 18, '2020-04-25 04:47:43', '2020-04-25 04:47:43', 'voyager.orders.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2017_11_26_013050_add_user_role_relationship', 1),
(25, '2017_11_26_015000_create_user_roles_table', 1),
(26, '2017_12_11_054653_create_products_table', 1),
(27, '2018_01_11_060124_create_category_table', 1),
(28, '2018_01_11_060548_create_category_product_table', 1),
(29, '2018_01_14_215535_create_coupons_table', 1),
(30, '2018_02_08_021546_add_image_to_products_table', 1),
(31, '2018_02_08_032544_add_images_to_products_table', 1),
(32, '2018_02_25_005243_create_orders_table', 1),
(33, '2018_02_25_010522_create_order_product_table', 1),
(34, '2018_03_11_000000_add_user_settings', 1),
(35, '2018_03_14_000000_add_details_to_data_types_table', 1),
(36, '2018_03_16_000000_make_settings_value_nullable', 1),
(37, '2018_04_23_011947_add_user_role_relationship_fix', 1),
(38, '2018_04_23_012009_create_user_roles_table_fix', 1),
(39, '2018_06_29_032914_add_quantity_to_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_postalcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name_on_card` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT 0,
  `billing_discount_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT 0,
  `error` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `billing_city`, `billing_province`, `billing_postalcode`, `billing_phone`, `billing_name_on_card`, `billing_discount`, `billing_discount_code`, `billing_subtotal`, `billing_tax`, `billing_total`, `payment_gateway`, `shipped`, `error`, `created_at`, `updated_at`) VALUES
(1, NULL, 'email@email.com', 'Fake Order', 'Fake Address', 'Fake City', 'Fake Province', 'L5B4U2', '9052145636', 'Fake Name on Card', 0, NULL, 12345, 1605, 13950, 'stripe', 0, NULL, '2020-04-19 11:21:15', '2020-04-19 11:21:15'),
(2, 1, 'overmidnight12@gmail.com', 'maymyatnoe', 'amasfsafs 12 n', 'Los Angeles', 'California', '90001', '09772919500', 'thura aung', 0, NULL, 70, 9, 79, 'stripe', 0, NULL, '2020-04-19 11:40:31', '2020-04-19 11:40:31'),
(3, 1, 'overmidnight12@gmail.com', 'maymyatnoe', 'amasfsafs 12 n', 'Los Angeles', 'California', '90001', '09772919500', 'thura aung', 0, NULL, 70, 9, 79, 'stripe', 0, NULL, '2020-04-19 11:43:54', '2020-04-19 11:43:54'),
(4, 2, 'maymyatnoe@gmail.com', 'maymyatnoe', 'amasfsafs 12 n', 'Los Angeles', 'California', '90001', '09772919500', 'maymyatnoe', 0, NULL, 70, 9, 79, 'stripe', 0, NULL, '2020-04-19 11:54:20', '2020-04-19 11:54:20'),
(5, 3, 'zayarmyat@gmail.com', 'zayarmyat', 'Myanmar Plaza Condo', 'Yankin', 'Yangon', '11424', '09772919500', 'zayarmyat', 0, NULL, 354, 46, 400, 'stripe', 0, NULL, '2020-04-25 03:07:07', '2020-04-25 03:07:07'),
(6, 3, 'zayarmyat@gmail.com', 'zayarmyat', 'Myanmar Plaza Condo', 'Yankin', 'Yangon', '11424', '09772919500', 'zayarmyat', 0, NULL, 354, 46, 400, 'stripe', 0, NULL, '2020-04-25 03:13:19', '2020-04-25 03:13:19'),
(7, 3, 'zayarmyat@gmail.com', 'zayarmyat', 'Myanmar Plaza Condo', 'Yankin', 'Yangon', '11424', '09772919500', 'zayarmyat', 0, NULL, 354, 46, 400, 'stripe', 0, NULL, '2020-04-25 03:18:21', '2020-04-25 03:18:21'),
(8, 2, 'maymyatnoe@gmail.com', 'maymyatnoe', 'amasfsafs 12 n', 'Los Angeles', 'California', '90001', '09771224100', 'maymyatnoe', 0, NULL, 224, 29, 253, 'stripe', 0, NULL, '2020-04-25 03:29:45', '2020-04-25 03:29:45'),
(9, 2, 'maymyatnoe@gmail.com', 'maymyatnoe', 'amasfsafs 12 n', 'Los Angeles', 'California', '90001', '09771224100', 'maymyatnoe', 0, NULL, 224, 29, 253, 'stripe', 0, NULL, '2020-04-25 03:34:44', '2020-04-25 03:34:44'),
(10, 2, 'maymyatnoe@gmail.com', 'maymyatnoe', 'amasfsafs 12 n', 'Los Angeles', 'California', '90001', '09771224100', 'maymyatnoe', 0, NULL, 224, 29, 253, 'stripe', 0, NULL, '2020-04-25 03:39:56', '2020-04-25 03:39:56'),
(11, 2, 'maymyatnoe@gmail.com', 'maymyatnoe', 'amasfsafs 12 n', 'Los Angeles', 'California', '90001', '09771224100', 'maymyatnoe', 0, NULL, 224, 29, 253, 'stripe', 0, NULL, '2020-04-25 03:42:58', '2020-04-25 03:42:58'),
(12, NULL, 'david@gmail.com', 'David', 'Myanmar Plaza Condo', 'Yankin', 'California', '11424', '09771224100', 'David', 0, NULL, 224, 29, 253, 'stripe', 0, NULL, '2020-04-25 03:46:07', '2020-04-25 03:46:07'),
(13, 3, 'zayarmyat@gmail.com', 'zayarmyat', 'Myanmar Plaza Condo', 'Yankin', 'Yangon', '11424', '09771224100', 'zayarmyat', 0, NULL, 224, 29, 253, 'stripe', 0, NULL, '2020-04-25 04:02:28', '2020-04-25 04:02:28'),
(14, 3, 'zayarmyat@gmail.com', 'zayarmyat', 'Myanmar Plaza Condo', 'Yankin', 'Yangon', '11424', '09771224100', 'zayarmyat', 0, NULL, 224, 29, 253, 'stripe', 0, NULL, '2020-04-25 04:07:36', '2020-04-25 04:07:36'),
(15, 3, 'zayarmyat@gmail.com', 'zayarmyat', 'amasfsafs 12 n', 'Los Angeles', 'California', '90001', '09771224100', 'zayarmyat', 0, NULL, 224, 29, 253, 'stripe', 0, NULL, '2020-04-25 04:12:01', '2020-04-25 04:12:01'),
(16, 3, 'zayarmyat@gmail.com', 'zayarmyat', 'Myanmar Plaza Condo', 'Yankin', 'Yangon', '11424', '09771224100', 'zayarmyat', 0, NULL, 224, 29, 253, 'stripe', 0, NULL, '2020-04-25 04:13:13', '2020-04-25 04:13:13'),
(17, 3, 'zayarmyat@gmail.com', 'zayarmyat', 'Myanmar Plaza Condo', 'Yankin', 'Yangon', '11424', '09771224100', 'zayarmyat', 0, NULL, 224, 29, 253, 'stripe', 0, NULL, '2020-04-25 04:17:43', '2020-04-25 04:17:43'),
(18, 3, 'zayarmyat@gmail.com', 'zayarmyat', 'Myanmar Plaza Condo', 'Yankin', 'Yangon', '11424', '09771224100', 'zayarmyat', 0, NULL, 224, 29, 253, 'stripe', 0, NULL, '2020-04-25 04:20:21', '2020-04-25 04:20:21'),
(19, 3, 'zayarmyat@gmail.com', 'zayarmyat', 'Myanmar Plaza Condo', 'Yankin', 'Yangon', '11424', '09771224100', 'zayarmyat', 0, NULL, 224, 29, 253, 'stripe', 0, NULL, '2020-04-25 04:23:36', '2020-04-25 04:23:36'),
(20, 2, 'maymyatnoe@gmail.com', 'maymyatnoe', 'amasfsafs 12 n', 'Los Angeles', 'California', '90001', '09771224100', 'maymyatnoe', 0, NULL, 224, 29, 253, 'stripe', 0, NULL, '2020-04-25 04:35:00', '2020-04-25 04:35:00'),
(21, 3, 'zayarmyat@gmail.com', 'zayarmyat', 'Myanmar Plaza Condo', 'Yankin', 'Yangon', '11424', '09771224100', 'zayarmyat', 0, NULL, 240, 31, 271, 'stripe', 0, NULL, '2020-04-28 05:45:32', '2020-04-28 05:45:32'),
(22, 3, 'zayarmyat@gmail.com', 'zayarmyat', 'Myanmar Plaza Condo', 'Yankin', 'Yangon', '11424', '09771224100', 'zayarmyat', 0, NULL, 135, 18, 153, 'stripe', 0, NULL, '2020-05-01 02:00:20', '2020-05-01 02:00:20'),
(23, 7, 'zinmyo@gmail.com', 'zinmyo', 'Yangon', 'sfsa', 'California', '1132', '09772919500', 'zinmyo', 0, NULL, 265, 34, 299, 'stripe', 0, NULL, '2022-06-15 12:03:57', '2022-06-15 12:03:57'),
(24, 6, 'zinmyoswe.2017@gmail.com', 'zinmyo', 'Yangon', 'sfsa', 'California', '1132', '09959806456', 'zinmyoswe', 0, NULL, 87, 11, 98, 'stripe', 0, NULL, '2022-06-15 12:10:09', '2022-06-15 12:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 5, '2020-04-19 11:40:31', '2020-04-19 11:40:31'),
(3, 3, 1, 5, '2020-04-19 11:43:54', '2020-04-19 11:43:54'),
(4, 4, 1, 5, '2020-04-19 11:54:20', '2020-04-19 11:54:20'),
(5, 5, 3, 2, '2020-04-25 03:07:07', '2020-04-25 03:07:07'),
(6, 5, 15, 1, '2020-04-25 03:07:07', '2020-04-25 03:07:07'),
(7, 5, 10, 1, '2020-04-25 03:07:07', '2020-04-25 03:07:07'),
(8, 6, 3, 2, '2020-04-25 03:13:19', '2020-04-25 03:13:19'),
(9, 6, 15, 1, '2020-04-25 03:13:19', '2020-04-25 03:13:19'),
(10, 6, 10, 1, '2020-04-25 03:13:20', '2020-04-25 03:13:20'),
(11, 7, 3, 2, '2020-04-25 03:18:22', '2020-04-25 03:18:22'),
(12, 7, 15, 1, '2020-04-25 03:18:22', '2020-04-25 03:18:22'),
(13, 7, 10, 1, '2020-04-25 03:18:22', '2020-04-25 03:18:22'),
(14, 8, 3, 1, '2020-04-25 03:29:45', '2020-04-25 03:29:45'),
(15, 8, 15, 1, '2020-04-25 03:29:45', '2020-04-25 03:29:45'),
(16, 8, 10, 1, '2020-04-25 03:29:46', '2020-04-25 03:29:46'),
(17, 9, 3, 1, '2020-04-25 03:34:44', '2020-04-25 03:34:44'),
(18, 9, 15, 1, '2020-04-25 03:34:44', '2020-04-25 03:34:44'),
(19, 9, 10, 1, '2020-04-25 03:34:44', '2020-04-25 03:34:44'),
(20, 10, 3, 1, '2020-04-25 03:39:56', '2020-04-25 03:39:56'),
(21, 10, 15, 1, '2020-04-25 03:39:57', '2020-04-25 03:39:57'),
(22, 10, 10, 1, '2020-04-25 03:39:57', '2020-04-25 03:39:57'),
(23, 11, 3, 1, '2020-04-25 03:42:58', '2020-04-25 03:42:58'),
(24, 11, 15, 1, '2020-04-25 03:42:58', '2020-04-25 03:42:58'),
(25, 11, 10, 1, '2020-04-25 03:42:59', '2020-04-25 03:42:59'),
(26, 12, 3, 1, '2020-04-25 03:46:07', '2020-04-25 03:46:07'),
(27, 12, 15, 1, '2020-04-25 03:46:07', '2020-04-25 03:46:07'),
(28, 12, 10, 1, '2020-04-25 03:46:07', '2020-04-25 03:46:07'),
(29, 13, 3, 1, '2020-04-25 04:02:28', '2020-04-25 04:02:28'),
(30, 13, 15, 1, '2020-04-25 04:02:28', '2020-04-25 04:02:28'),
(31, 13, 10, 1, '2020-04-25 04:02:28', '2020-04-25 04:02:28'),
(32, 14, 3, 1, '2020-04-25 04:07:36', '2020-04-25 04:07:36'),
(33, 14, 15, 1, '2020-04-25 04:07:36', '2020-04-25 04:07:36'),
(34, 14, 10, 1, '2020-04-25 04:07:37', '2020-04-25 04:07:37'),
(35, 15, 3, 1, '2020-04-25 04:12:01', '2020-04-25 04:12:01'),
(36, 15, 15, 1, '2020-04-25 04:12:01', '2020-04-25 04:12:01'),
(37, 15, 10, 1, '2020-04-25 04:12:01', '2020-04-25 04:12:01'),
(38, 16, 3, 1, '2020-04-25 04:13:13', '2020-04-25 04:13:13'),
(39, 16, 15, 1, '2020-04-25 04:13:13', '2020-04-25 04:13:13'),
(40, 16, 10, 1, '2020-04-25 04:13:13', '2020-04-25 04:13:13'),
(41, 17, 3, 1, '2020-04-25 04:17:43', '2020-04-25 04:17:43'),
(42, 17, 15, 1, '2020-04-25 04:17:43', '2020-04-25 04:17:43'),
(43, 17, 10, 1, '2020-04-25 04:17:43', '2020-04-25 04:17:43'),
(44, 18, 3, 1, '2020-04-25 04:20:21', '2020-04-25 04:20:21'),
(45, 18, 15, 1, '2020-04-25 04:20:21', '2020-04-25 04:20:21'),
(46, 18, 10, 1, '2020-04-25 04:20:21', '2020-04-25 04:20:21'),
(47, 19, 3, 1, '2020-04-25 04:23:36', '2020-04-25 04:23:36'),
(48, 19, 15, 1, '2020-04-25 04:23:36', '2020-04-25 04:23:36'),
(49, 19, 10, 1, '2020-04-25 04:23:36', '2020-04-25 04:23:36'),
(50, 20, 3, 1, '2020-04-25 04:35:00', '2020-04-25 04:35:00'),
(51, 20, 15, 1, '2020-04-25 04:35:00', '2020-04-25 04:35:00'),
(52, 20, 10, 1, '2020-04-25 04:35:00', '2020-04-25 04:35:00'),
(53, 21, 11, 1, '2020-04-28 05:45:32', '2020-04-28 05:45:32'),
(54, 21, 6, 1, '2020-04-28 05:45:32', '2020-04-28 05:45:32'),
(55, 21, 5, 1, '2020-04-28 05:45:32', '2020-04-28 05:45:32'),
(56, 22, 7, 1, '2020-05-01 02:00:20', '2020-05-01 02:00:20'),
(57, 22, 14, 1, '2020-05-01 02:00:20', '2020-05-01 02:00:20'),
(58, 23, 7, 3, '2022-06-15 12:03:57', '2022-06-15 12:03:57'),
(59, 23, 8, 1, '2022-06-15 12:03:57', '2022-06-15 12:03:57'),
(60, 24, 15, 1, '2022-06-15 12:10:09', '2022-06-15 12:10:09'),
(61, 24, 11, 1, '2022-06-15 12:10:09', '2022-06-15 12:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-04-19 12:07:24', '2020-04-19 12:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('maymyatnoe@gmail.com', '$2y$10$fm5IkZHPCCdm8LL4da1GCOwF8XoImDq9J90x/E/C99UCYAarSMB9S', '2020-04-24 18:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2020-04-19 12:07:18', '2020-04-19 12:07:18', NULL),
(2, 'browse_bread', NULL, '2020-04-19 12:07:18', '2020-04-19 12:07:18', NULL),
(3, 'browse_database', NULL, '2020-04-19 12:07:18', '2020-04-19 12:07:18', NULL),
(4, 'browse_media', NULL, '2020-04-19 12:07:18', '2020-04-19 12:07:18', NULL),
(5, 'browse_compass', NULL, '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(6, 'browse_menus', 'menus', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(7, 'read_menus', 'menus', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(8, 'edit_menus', 'menus', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(9, 'add_menus', 'menus', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(10, 'delete_menus', 'menus', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(11, 'browse_pages', 'pages', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(12, 'read_pages', 'pages', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(13, 'edit_pages', 'pages', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(14, 'add_pages', 'pages', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(15, 'delete_pages', 'pages', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(16, 'browse_roles', 'roles', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(17, 'read_roles', 'roles', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(18, 'edit_roles', 'roles', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(19, 'add_roles', 'roles', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(20, 'delete_roles', 'roles', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(21, 'browse_users', 'users', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(22, 'read_users', 'users', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(23, 'edit_users', 'users', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(24, 'add_users', 'users', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(25, 'delete_users', 'users', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(26, 'browse_posts', 'posts', '2020-04-19 12:07:19', '2020-04-19 12:07:19', NULL),
(27, 'read_posts', 'posts', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(28, 'edit_posts', 'posts', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(29, 'add_posts', 'posts', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(30, 'delete_posts', 'posts', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(31, 'browse_categories', 'categories', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(32, 'read_categories', 'categories', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(33, 'edit_categories', 'categories', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(34, 'add_categories', 'categories', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(35, 'delete_categories', 'categories', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(36, 'browse_settings', 'settings', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(37, 'read_settings', 'settings', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(38, 'edit_settings', 'settings', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(39, 'add_settings', 'settings', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(40, 'delete_settings', 'settings', '2020-04-19 12:07:20', '2020-04-19 12:07:20', NULL),
(41, 'browse_hooks', NULL, '2020-04-19 12:07:26', '2020-04-19 12:07:26', NULL),
(42, 'browse_products', 'products', '2020-04-19 14:22:05', '2020-04-19 14:22:05', NULL),
(43, 'read_products', 'products', '2020-04-19 14:22:05', '2020-04-19 14:22:05', NULL),
(44, 'edit_products', 'products', '2020-04-19 14:22:05', '2020-04-19 14:22:05', NULL),
(45, 'add_products', 'products', '2020-04-19 14:22:05', '2020-04-19 14:22:05', NULL),
(46, 'delete_products', 'products', '2020-04-19 14:22:05', '2020-04-19 14:22:05', NULL),
(47, 'browse_category', 'category', '2020-04-19 14:54:01', '2020-04-19 14:54:01', NULL),
(48, 'read_category', 'category', '2020-04-19 14:54:01', '2020-04-19 14:54:01', NULL),
(49, 'edit_category', 'category', '2020-04-19 14:54:01', '2020-04-19 14:54:01', NULL),
(50, 'add_category', 'category', '2020-04-19 14:54:01', '2020-04-19 14:54:01', NULL),
(51, 'delete_category', 'category', '2020-04-19 14:54:01', '2020-04-19 14:54:01', NULL),
(52, 'browse_category_product', 'category_product', '2020-04-19 15:00:32', '2020-04-19 15:00:32', NULL),
(53, 'read_category_product', 'category_product', '2020-04-19 15:00:32', '2020-04-19 15:00:32', NULL),
(54, 'edit_category_product', 'category_product', '2020-04-19 15:00:32', '2020-04-19 15:00:32', NULL),
(55, 'add_category_product', 'category_product', '2020-04-19 15:00:32', '2020-04-19 15:00:32', NULL),
(56, 'delete_category_product', 'category_product', '2020-04-19 15:00:32', '2020-04-19 15:00:32', NULL),
(57, 'browse_orders', 'orders', '2020-04-25 04:47:43', '2020-04-25 04:47:43', NULL),
(58, 'read_orders', 'orders', '2020-04-25 04:47:43', '2020-04-25 04:47:43', NULL),
(59, 'edit_orders', 'orders', '2020-04-25 04:47:43', '2020-04-25 04:47:43', NULL),
(60, 'add_orders', 'orders', '2020-04-25 04:47:43', '2020-04-25 04:47:43', NULL),
(61, 'delete_orders', 'orders', '2020-04-25 04:47:43', '2020-04-25 04:47:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-04-19 12:07:24', '2020-04-19 12:07:24'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-04-19 12:07:24', '2020-04-19 12:07:24'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-04-19 12:07:24', '2020-04-19 12:07:24'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-04-19 12:07:24', '2020-04-19 12:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `description`, `featured`, `quantity`, `image`, `images`, `created_at`, `updated_at`) VALUES
(1, 'ULTRABOOST DNA SHOES', 'ULTRABOOST DNA SHOES', 'A FASHION-FRIENDLY VERSION OF A HIGH-PERFORMANCE RUNNER.', 180, '<p>&nbsp;</p>\r\n<ul class=\"bullet_list___1JjG2 gl-list bullet_list--half-width___35Abt\" style=\"box-sizing: border-box; list-style-position: outside; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; display: inline-block; width: 255.325px; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Regular fit</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Lace closure</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">adidas Primeknit upper</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Locked-in feel</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Adaptive, energized running shoes</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Responsive Boost midsole</li>\r\n</ul>\r\n<ul class=\"bullet_list___1JjG2 gl-list bullet_list--half-width___35Abt\" style=\"box-sizing: border-box; list-style-position: outside; list-style-image: initial; margin: 0px 0px 0px 22.2px; padding: 0px; font-size: 16px; line-height: 22px; display: inline-block; width: 255.325px; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Weight: 11 ounces (size 9)</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Midsole drop: 10 mm (heel: 29 mm, forefoot: 19 mm)</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Stretchweb outsole with Continental&trade; Rubber</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Imported</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Product color: Cloud White / Cloud White / Grey One</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Product code: FW4904</li>\r\n</ul>', 1, 10, 'products\\April2020\\DnEf0L4N5auRl1YELyWA.jpg', '[\"products\\\\April2020\\\\OVbOvGw3piGVq7pyLqot.jpg\",\"products\\\\April2020\\\\reA65rHd9t2OIRZtivJg.jpg\",\"products\\\\April2020\\\\eTWm22Ue74ANUQjA29fD.jpg\",\"products\\\\April2020\\\\1PUIWINVXIpZCWSIFsgO.jpg\"]', '2020-04-19 04:27:50', '2020-04-19 14:46:28'),
(2, 'ULTRABOOST SHOES', 'ULTRABOOST SHOES', 'ADAPTIVE RUNNING SHOES WITH ENERGIZED CUSHIONING.', 180, '<ul class=\"bullet_list___1JjG2 gl-list bullet_list--half-width___35Abt\" style=\"box-sizing: border-box; list-style-position: outside; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; display: inline-block; width: 484.763px; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Regular fit</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Lace closure</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">adidas Primeknit textile upper</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Synthetic lining; Stretchweb outsole flexes naturally for an energized ride; Continental&trade; Rubber gives you superior traction</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Responsive Boost midsole</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Weight: 11 ounces (size 9)</li>\r\n</ul>\r\n<ul class=\"bullet_list___1JjG2 gl-list bullet_list--half-width___35Abt\" style=\"box-sizing: border-box; list-style-position: outside; list-style-image: initial; margin: 0px 0px 0px 42.15px; padding: 0px; font-size: 16px; line-height: 22px; display: inline-block; width: 484.763px; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Midsole drop: 10 mm (heel: 29 mm, forefoot: 19 mm)</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Arch type: Normal; Fitcounter molded heel counter provides a natural fit that allows optimal movement of the Achilles</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Imported</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Product color: Cloud White / Scarlet / Core Black</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Product code: G28999</li>\r\n</ul>', 1, 10, 'products\\April2020\\VRL3MMBe9q8eVrt9A8wK.jpg', '[\"products\\\\April2020\\\\CyeuxFaBOqAXwN57LZAK.jpg\",\"products\\\\April2020\\\\81z2Y82ELcrRNEIZJYtW.jpg\",\"products\\\\April2020\\\\cAJAZqzmZWld61mIct0v.jpg\",\"products\\\\April2020\\\\cBApbkTbs1Ht8JNNDa3s.jpg\"]', '2020-04-19 15:02:36', '2020-04-19 15:02:36'),
(3, 'NMD_R1 SHOES', 'NMD_R1 SHOES', 'NMD SHOES THAT GO THEIR OWN WAY.', 130, '<ul class=\"bullet_list___1JjG2 gl-list bullet_list--half-width___35Abt\" style=\"box-sizing: border-box; list-style-position: outside; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; display: inline-block; width: 232.262px; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Regular fit</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Lace closure</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Mesh upper</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Shoes for the street</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Distinctive Boost midsole</li>\r\n</ul>\r\n<ul class=\"bullet_list___1JjG2 gl-list bullet_list--half-width___35Abt\" style=\"box-sizing: border-box; list-style-position: outside; list-style-image: initial; margin: 0px 0px 0px 20.1875px; padding: 0px; font-size: 16px; line-height: 22px; display: inline-block; width: 232.262px; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Rubber outsole</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Imported</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Product color: Cloud White / Cloud White / Core Black</li>\r\n<li class=\"gl-vspace\" style=\"box-sizing: border-box; margin-top: 10px; margin-left: 15px; padding: 0px;\">Product code: FV8151</li>\r\n</ul>', 1, 9, 'products\\April2020\\ypv0ZlS0GbA897GgKe3E.jpg', '[\"products\\\\April2020\\\\k7ARNjfZa1VLIxTAWcCK.jpg\",\"products\\\\April2020\\\\zTN1FhCx8KKr5nIJTsiA.jpg\",\"products\\\\April2020\\\\L4LirbjrNKaVcTY5YqGd.jpg\",\"products\\\\April2020\\\\7pHrXrLUJnTVX1RwQ3Kq.jpg\"]', '2020-04-19 15:22:03', '2020-04-25 04:23:42'),
(4, 'NMD_R1 SHOES_B1', 'NMD_R1 SHOES_B1', 'NMD_R1 SHOES', 130, '<h4 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 30px; line-height: 28px; color: #000000;\">NMD_R1 SHOES</h4>\r\n<h5 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 20px; line-height: 18px; color: #000000;\">NMD SHOES WITH A LIGHT, RESPONSIVE FEEL.</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; white-space: pre-wrap; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">When a distance running shoe meets a street style shoe, the result is incredibly comfortable. NMD arrived in 2015 with a clear purpose: bring high-tech attitude to clean street style. These adidas NMD_R1 Shoes take it one more step forward. The feel is light and flexible, with a stretchy mesh upper. Responsive cushioning keeps the ride comfortable. Iconic NMD plugs in the midsole stay true to the signature look.</p>', 1, 14, 'products\\April2020\\LiCij1MUnaFo2dugM8Uw.jpg', '[\"products\\\\April2020\\\\VTqv1Fqvr25WE0tbr9RL.jpg\",\"products\\\\April2020\\\\hWvHTA10wy7JNGUrfYBN.jpg\"]', '2020-04-19 15:39:05', '2020-04-20 12:32:44'),
(5, 'NMD_R1 SHOES_B2', 'NMD_R1 SHOES_B2', 'NMD_R1 SHOES', 130, '<h4 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 30px; line-height: 28px; color: #000000;\">NMD_R1 SHOES</h4>\r\n<h5 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 20px; line-height: 18px; color: #000000;\">NMD SHOES THAT GO THEIR OWN WAY.</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; white-space: pre-wrap; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">Where you\'ve been always inspires where you\'re going. The same is true for the pioneering style of the NMD. They take a page from archive style, then make it their own, borrowing cutting-edge innovations from adidas running designs. The stretchy mesh upper feels as comfortable as socks. A responsive cushioning midsole gives a super-comfy feel. The signature heel pull and EVA midsole plugs make it true to the look of NMD.</p>', 1, 13, 'products\\April2020\\IeV4PuWHqPYZkUljpIhG.jpg', '[\"products\\\\April2020\\\\FjYagujaue7E1o9lqf0O.jpg\",\"products\\\\April2020\\\\BYpYxQUavSbPCblRkdF5.jpg\"]', '2020-04-20 12:19:58', '2020-04-20 12:19:58'),
(6, 'PREMIUM ESSENTIALS MODERN BACKPACK', 'PREMIUM ESSENTIALS MODERN BACKPACK', 'SLIGHTLY STREAMLINED, FOR A MODERN LOOK.', 55, '<h4 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 30px; line-height: 28px; color: #000000;\">PREMIUM ESSENTIALS MODERN BACKPACK</h4>\r\n<h5 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 20px; line-height: 18px; color: #000000;\">SLIGHTLY STREAMLINED, FOR A MODERN LOOK.</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; white-space: pre-wrap; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">Modern functionality combines with sleek style in this versatile backpack. With two side pockets, an outer zip laptop compartment and a front zip pocket, there\'s a place for everything. A textured bottom panel adds durability and visual interest.</p>', 1, 7, 'products\\April2020\\ZI5DctYQzGqPjceqxwvi.jpg', '[\"products\\\\April2020\\\\p9BR6y2qKnQp8EfPMJXP.jpg\",\"products\\\\April2020\\\\ANHxtB7BAOHbXdrDG4RY.jpg\",\"products\\\\April2020\\\\wIgyWH6H24H3pPVprLi5.jpg\",\"products\\\\April2020\\\\GvyRr4yZfXeOF2ZlZxuu.jpg\"]', '2020-04-20 15:06:12', '2020-04-20 15:06:12'),
(7, 'ADIDAS ADICOLOR TREFOIL HOODIE', 'ADIDAS ADICOLOR TREFOIL HOODIE', 'A HOODIE WITH BOLD TREFOIL STYLE.', 65, '<h4 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 30px; line-height: 28px; color: #000000;\">ADIDAS ADICOLOR TREFOIL HOODIE</h4>\r\n<h5 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 20px; line-height: 18px; color: #000000;\">A HOODIE WITH BOLD TREFOIL STYLE.</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; white-space: pre-wrap; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">Which color tells your story best? Rooted in our heritage of sport, Adicolor is iconic adidas style in a spectrum of shades. This hoodie puts the spotlight on the Trefoil logo. French terry fabric is everyday-level cozy.</p>', 1, 8, 'products\\April2020\\z2AHikVy0eJbeDGzM4RP.jpg', NULL, '2020-04-20 22:10:57', '2020-04-25 08:02:26'),
(8, 'BRILLIANT BASICS TRACK JACKET', 'BRILLIANT BASICS TRACK JACKET', NULL, 70, '<h4 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 30px; line-height: 28px; color: #000000;\">BRILLIANT BASICS TRACK JACKET</h4>\r\n<h5 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 20px; line-height: 18px; color: #000000;\">A JACKET FOR WARMTH AND COMFORT ANY DAY OF THE WEEK.</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; white-space: pre-wrap; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">Cold weather\'s got nothing on you. This adidas track jacket locks in warmth with cozy fleece. Zip it all the way up and flip up the hood if you\'re in need of some extra coverage. A relaxed fit makes for easy layering.</p>', 1, 9, 'products\\April2020\\e19pjlk0UJwXNhYoKuf9.jpg', '[\"products\\\\April2020\\\\23sOvXWcdG0SiNlp6qy8.jpg\"]', '2020-04-20 22:12:50', '2020-04-20 22:12:50'),
(9, 'CROPPED HOODIE', 'CROPPED HOODIE', NULL, 65, '<h4 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 30px; line-height: 28px; color: #000000;\">CROPPED HOODIE</h4>\r\n<h5 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 20px; line-height: 18px; color: #000000;\">A COZY, CROPPED HOODIE WITH LAID-BACK \'90S ATTITUDE.</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; white-space: pre-wrap; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">Cemented in fashion history, the \'90s aren\'t going anywhere. Still thriving in the present, the vibe that dominated the street scene pulses through the adidas Cropped Hoodie. Branded tape extends from cuff to cuff across the chest, nodding to their legacy.</p>', 1, 13, 'products\\April2020\\qycAwMzPA0CBnb3QNw1i.jpg', '[\"products\\\\April2020\\\\xBdWKVkjoxF5VuQUv8xw.jpg\"]', '2020-04-20 22:31:25', '2020-04-20 22:31:25'),
(10, 'CROPPED HOODIE_B', 'CROPPED HOODIE_B', NULL, 62, '<h4 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 30px; line-height: 28px; color: #000000;\">CROPPED HOODIE</h4>\r\n<h5 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 20px; line-height: 18px; color: #000000;\">A COZY, CROPPED HOODIE WITH LAID-BACK \'90S ATTITUDE.</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; white-space: pre-wrap; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">Cemented in fashion history, the \'90s aren\'t going anywhere. Still thriving in the present, the vibe that dominated the street scene pulses through the adidas Cropped Hoodie. Branded tape extends from cuff to cuff across the chest, nodding to their legacy.</p>', 1, 12, 'products\\April2020\\exF5OPQa9Mif54KbyYja.jpg', NULL, '2020-04-20 22:32:27', '2020-04-20 22:32:27'),
(11, 'FAVORITES SWEATSHIRT', 'FAVORITES SWEATSHIRT', NULL, 55, '<h4 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 30px; line-height: 28px; color: #000000;\">FAVORITES SWEATSHIRT</h4>\r\n<h5 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 20px; line-height: 18px; color: #000000;\">A LOOSE-FITTING PULLOVER WITH EXTRA ADIDAS GRAPHICS.</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; white-space: pre-wrap; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">Say it again. Repeated adidas graphics liven up the extra-long sleeves of this roomy sweatshirt. It\'s a go-to favorite that\'s versatile enough for wearing when you\'re hanging with friends or relaxing afterward. French terry is soft to the touch.</p>', 1, 12, 'products\\April2020\\HBLWJ6oqh7M8xjHWLuHc.jpg', '[\"products\\\\April2020\\\\8IATJw48H4RL3aSxjxex.jpg\",\"products\\\\April2020\\\\lDf5986V4H0GazRJyrQM.jpg\"]', '2020-04-21 01:01:44', '2020-04-21 01:01:44'),
(13, 'CROPPED HOODIE_R', 'CROPPED HOODIE_R', NULL, 65, '<h4 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 30px; line-height: 28px; color: #000000;\">CROPPED HOODIE</h4>\r\n<h5 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 20px; line-height: 18px; color: #000000;\">A CROPPED SWEATSHIRT FOR TOTAL COMFORT.</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; white-space: pre-wrap; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">Those unread emails can wait. Your comfort cannot. Throw on this adidas hoodie and wrap yourself in plush goodness. Then settle in. Layer it or wear it on its own. Either way, it feels good.</p>', 1, 14, 'products\\April2020\\idSYmO2oYge6utBDHJb8.jpg', '[\"products\\\\April2020\\\\38nse3FjwL53vRsCTgGl.jpg\"]', '2020-04-21 01:07:51', '2020-04-21 01:07:51'),
(14, 'LNY SWEATER', 'LNY SWEATER', NULL, 70, '<h4 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 30px; line-height: 28px; color: #000000;\">LNY SWEATER</h4>\r\n<h5 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 20px; line-height: 18px; color: #000000;\">A SOFT PULLOVER FOR ABSOLUTE COMFORT.</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; white-space: pre-wrap; color: #000000; font-family: AdihausDIN, Helvetica, Arial, sans-serif;\">Getting out of bed is so much easier when you can extend that comfort into the waking hours. Step out the door in soft French terry in this adidas sweater. A big Trefoil graphic up front shows a swirly Lunar New Year-inspired print. Hidden zips on the side let you make the style your own.</p>', 1, 14, 'products\\April2020\\VZdgoCAjzaRQQIVQTAyj.jpg', '[\"products\\\\April2020\\\\dUuvBd7ksCrvsZYAmNx8.jpg\",\"products\\\\April2020\\\\xfXOYWIeJcp8gon05z76.jpg\"]', '2020-04-21 01:12:25', '2020-04-21 01:12:25'),
(15, 'TEE', 'TEE', NULL, 32, '<h4 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 30px; line-height: 28px; color: #000000;\">TEE</h4>\r\n<h5 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: AdineuePRO, Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 20px; line-height: 18px; color: #000000;\">AN ADIDAS T-SHIRT WITH A RHINESTONE-OUTLINED TREFOIL.</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; white-space: pre-wrap; font-family: AdihausDIN, Helvetica, Arial, sans-serif; font-weight: 400; text-transform: none;\">The Trefoil. Since 1972, a symbol of sport and style. This casual t-shirt decks it out in rhinestones for a flashy twist.</p>', 1, 12, 'products\\April2020\\BL2FzCXKMX9xVjRle1Ur.jpg', '[\"products\\\\April2020\\\\S5T7HseWcM5GQvXVj68b.jpg\",\"products\\\\April2020\\\\GSUZavUvJaiL4xtbMbYA.jpg\",\"products\\\\April2020\\\\rfcZSRaNTJxLvLvUmde0.jpg\"]', '2020-04-24 18:50:46', '2020-04-24 19:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-04-19 12:07:18', '2020-04-19 12:07:18'),
(2, 'user', 'Normal User', '2020-04-19 12:07:18', '2020-04-19 12:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2020-04-19 12:07:24', '2020-04-19 12:07:24'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2020-04-19 12:07:24', '2020-04-19 12:07:24'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2020-04-19 12:07:24', '2020-04-19 12:07:24'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-04-19 12:07:24', '2020-04-19 12:07:24'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2020-04-19 12:07:24', '2020-04-19 12:07:24'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2020-04-19 12:07:24', '2020-04-19 12:07:24'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2020-04-19 12:07:24', '2020-04-19 12:07:24'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2020-04-19 12:07:25', '2020-04-19 12:07:25'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2020-04-19 12:07:25', '2020-04-19 12:07:25'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-04-19 12:07:25', '2020-04-19 12:07:25'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2020-04-19 12:07:25', '2020-04-19 12:07:25'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2020-04-19 12:07:25', '2020-04-19 12:07:25'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-04-19 12:07:25', '2020-04-19 12:07:25'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-04-19 12:07:25', '2020-04-19 12:07:25'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-04-19 12:07:25', '2020-04-19 12:07:25'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-04-19 12:07:25', '2020-04-19 12:07:25'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-04-19 12:07:25', '2020-04-19 12:07:25'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-04-19 12:07:25', '2020-04-19 12:07:25'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-04-19 12:07:25', '2020-04-19 12:07:25'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-04-19 12:07:25', '2020-04-19 12:07:25'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-04-19 12:07:26', '2020-04-19 12:07:26'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2020-04-19 12:07:26', '2020-04-19 12:07:26'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2020-04-19 12:07:26', '2020-04-19 12:07:26'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2020-04-19 12:07:26', '2020-04-19 12:07:26'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2020-04-19 12:07:26', '2020-04-19 12:07:26'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2020-04-19 12:07:26', '2020-04-19 12:07:26'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2020-04-19 12:07:26', '2020-04-19 12:07:26'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2020-04-19 12:07:26', '2020-04-19 12:07:26'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2020-04-19 12:07:26', '2020-04-19 12:07:26'),
(30, 'menu_items', 'title', 12, 'pt', 'Configurações', '2020-04-19 12:07:26', '2020-04-19 12:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, NULL, 'thura aung', 'overmidnight12@gmail.com', 'users\\April2020\\0II6s2KCytBqma3pp9fG.jpg', '$2y$10$YTwO5qX6kUxFF7wS7JGjhev1YxaEosMZLwZXOg7pEojWXAHxKwVei', NULL, '{\"locale\":\"en\"}', '2020-04-19 11:38:01', '2020-04-24 20:19:04'),
(2, NULL, 'maymyatnoe', 'maymyatnoe@gmail.com', 'users/default.png', '$2y$10$4eC55j2BLsrkh25jD4VakORSjBxA2Z.ZkQxXUj98T7W8pdTZc2RIK', NULL, NULL, '2020-04-19 11:53:20', '2020-04-19 11:53:20'),
(3, 2, 'zayarmyat', 'zayarmyat@gmail.com', 'users/default.png', '$2y$10$bx7CcEGZ4QqXKYgEXJpcTuzH5UoWSbOhE.A6aut.qRFsXC11gtFRy', NULL, NULL, '2020-04-24 22:32:55', '2020-04-24 22:32:55'),
(4, 2, 'suyamin', 'suyamin@gmail.com', 'users/default.png', '$2y$10$Vi1mBpbKY26KSiuxLLHM3uq1FBrWJhXKDf6IgD4iL4qXj7TuslruW', NULL, NULL, '2020-04-28 04:04:00', '2020-04-28 04:04:00'),
(5, 2, 'jack', 'jack@gmail.com', 'users/default.png', '$2y$10$FtsKQVJIIjXo2a/3.cw5XucVFgx4jY0nFuoqKJq7w18eJqG90xppa', NULL, NULL, '2020-04-28 04:08:47', '2020-04-28 04:08:47'),
(6, 2, 'zinmyoswe', 'zinmyoswe.2017@gmail.com', 'users/default.png', '$2y$10$pFSrDeD4MFSagJT3K0GKWu335moWT0iP/CrqRTwGR9Cgaf/pxA7Om', NULL, NULL, '2022-06-14 15:04:32', '2022-06-14 15:04:32'),
(7, 2, 'zimyo2', 'zinmyo@gmail.com', 'users/default.png', '$2y$10$0xh8XykBKBhwwZjMi3QGTObSY0RcLzaQFmNqlU2y3jB.02mCTzsz6', NULL, NULL, '2022-06-15 12:03:08', '2022-06-15 12:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
