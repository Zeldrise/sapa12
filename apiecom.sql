-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2024 at 04:11 PM
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
-- Database: `apiecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_orders`
--

CREATE TABLE `cart_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `variant` varchar(255) NOT NULL,
  `packaging` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `delivery_address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `delivery_charge` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_time` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_orders`
--

INSERT INTO `cart_orders` (`id`, `invoice_no`, `product_name`, `product_code`, `variant`, `packaging`, `quantity`, `unit_price`, `total_price`, `email`, `name`, `payment_method`, `delivery_address`, `city`, `delivery_charge`, `order_date`, `order_time`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 'Easy1703499252701', 'STICK MENDOL 12', '001', 'Variant: Original', 'Packaging: Medium', '1', '5000', '5000', 'bayu@gmail.com', 'bayu', 'Cash On Delivery', 'pasuruanajnq', 'Malang', '00', '25-12-2023', '04:14:13pm', 'Pending', NULL, NULL),
(2, 'Easy1703499252701', 'THE RIMPANG PIE', '002', 'Variant: ', 'Packaging: Medium', '2', '5000', '10000', 'bayu@gmail.com', 'bayu', 'Cash On Delivery', 'pasuruanajnq', 'Malang', '00', '25-12-2023', '04:14:13pm', 'Pending', NULL, NULL),
(3, 'SaPa121703499741064', 'STICK MENDOL 12', '001', 'Variant: Pedas', 'Packaging: Large', '2', '5000', '10000', 'bayu@gmail.com', 'bayu', 'Cash On Delivery', 'jndwsqisnqnsqns', 'Malang', '00', '25-12-2023', '04:22:21pm', 'Pending', NULL, NULL),
(5, 'SaPa1703868758813', 'speaker', '007', 'Variant: Original', 'Packaging: Medium', '1', '11111', '11111', 'bayu@gmail.com', 'bayu', 'Cash On Delivery', 'malang', 'Malang', '00', '29-12-2023', '10:52:39pm', 'Pending', NULL, NULL),
(8, 'SaPa1704171102366', 'STICK MENDOL 12', '001', 'Variant: Pedas', 'Packaging: Large', '90', '5000', '450000', 'bayu@gmail.com', 'Rheva', 'Cash On Delivery', 'Jl. pemancar', 'Malang', '00', '02-01-2024', '10:51:43am', 'Complete', NULL, '2024-01-01 21:54:40'),
(9, 'SaPa1708182226833', 'THE RIMPANG PIE', '002', 'Variant: ', 'Packaging: Medium', '2', '5000', '10000', 'bayu@gmail.com', 'bayu', 'Cash On Delivery', 'jl.hanoman no 1', 'Malang', '00', '17-02-2024', '09:03:47pm', 'Pending', NULL, NULL),
(10, 'SaPa1708182432365', 'CORN CHIPS KREZ', '003', 'Variant: Pedas', 'Packaging: Medium', '3', '9000', '27000', 'bayu@gmail.com', 'bayu', 'Cash On Delivery', 'jl.hanoman no 67', 'Malang', '00', '17-02-2024', '09:07:13pm', 'Pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Goods', 'http://127.0.0.1:8000/storage/Goods.jpg', NULL, NULL),
(2, 'Food', 'http://127.0.0.1:8000/storage/Food.jpg', NULL, NULL),
(3, 'Service', 'http://127.0.0.1:8000/storage/Service.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `contact_date` varchar(255) NOT NULL,
  `contact_time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contact_date`, `contact_time`, `created_at`, `updated_at`) VALUES
(2, 'bayu', 'bayu@gmail.com', 'test mang', '29-12-23', '06:30:40pm', NULL, NULL),
(3, 'ridho', 'ridho@gmail.com', 'halo sapa', '02-01-24', '09:23:41am', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `product_name`, `image`, `product_code`, `email`, `created_at`, `updated_at`) VALUES
(10, 'STICK MENDOL 12', 'http://127.0.0.1:8000/storage/Stickmeeend.png', '001', 'bayu@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'http://127.0.0.1:8000/storage/Slider%201.svg', NULL, NULL),
(2, 'http://127.0.0.1:8000/storage/Slider%202.svg', NULL, NULL),
(3, 'http://127.0.0.1:8000/storage/Slider%203.svg', NULL, NULL),
(4, 'http://127.0.0.1:8000/storage/Slider%204.svg', NULL, NULL),
(5, 'http://127.0.0.1:8000/storage/Slider%205.svg', NULL, NULL),
(6, 'http://127.0.0.1:8000/storage/Slider%206.svg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(41, '2014_10_12_000000_create_users_table', 1),
(42, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(43, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(44, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(45, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(46, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(47, '2016_06_01_000004_create_oauth_clients_table', 1),
(48, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(49, '2019_08_19_000000_create_failed_jobs_table', 1),
(50, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(51, '2023_11_21_060139_create_sessions_table', 1),
(52, '2023_11_21_063122_create_visitors_table', 1),
(53, '2023_11_21_073940_create_contacts_table', 1),
(54, '2023_11_24_035539_create_site_infos_table', 1),
(55, '2023_11_26_051701_create_categories_table', 1),
(56, '2023_11_26_052026_create_subcategories_table', 1),
(57, '2023_11_28_035348_create_product_lists_table', 1),
(58, '2023_12_01_033053_create_home_sliders_table', 1),
(59, '2023_12_03_043237_create_product_details_table', 1),
(60, '2023_12_07_004428_create_notifications_table', 1),
(61, '2023_12_14_120944_create_product_reviews_table', 2),
(62, '2023_12_23_033735_create_product_carts_table', 3),
(63, '2023_12_25_031703_create_favourites_table', 4),
(64, '2023_12_25_090429_create_cart_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `date`, `created_at`, `updated_at`) VALUES
(1, 'message 1', '1 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1/12/2023', NULL, NULL),
(2, 'message 2', '2 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2/12/2023', NULL, NULL),
(3, 'message 3', '3 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '3/12/2023', NULL, NULL),
(4, 'message 4', '4 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '4/12/2023', NULL, NULL),
(5, 'message 5', '5 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '5/12/2023', NULL, NULL),
(6, 'message 6', '6 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6/12/2023', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('09476e9c5a9996324d7120fabb8f819a48e2fb4efc9f0e99d0dd69c13aea7fba42a0fdb6421bcaf9', 8, 1, 'app', '[]', 0, '2023-12-24 19:19:25', '2023-12-24 19:19:25', '2024-12-25 02:19:25'),
('0a337fed907605a3c88064ce7125daddb968afb8dfb0f4cc183ae24bdc88b4eee78ffe01590b2de1', 5, 1, 'app', '[]', 0, '2023-12-10 16:45:41', '2023-12-10 16:45:42', '2024-12-10 23:45:41'),
('0e19ab13e23e201e442b115c8bfc2c85131db463a363530be29cdbda8da9487ce979b3487e8b04f6', 8, 1, 'app', '[]', 0, '2023-12-24 22:54:18', '2023-12-24 22:54:18', '2024-12-25 05:54:18'),
('10e7c35480c6d5fca681507a3757abfd6c7e8a895bd5af6bfd3c587c542f02e96a4ad8b3f3464e64', 8, 1, 'app', '[]', 0, '2023-12-25 23:14:36', '2023-12-25 23:14:36', '2024-12-26 06:14:36'),
('1e9ab4fde2ff5d44152d937486e1b058718064192c2ee7925a2c18aed59d0545a28166f3698a1612', 8, 1, 'app', '[]', 0, '2023-12-13 08:48:36', '2023-12-13 08:48:36', '2024-12-13 15:48:36'),
('1f3b2772fe7d77e0f61283303b00ca3ef4d56f1e8507c4d823a608e9d3e7ac7a587465a00b39df38', 8, 1, 'app', '[]', 0, '2023-12-29 04:29:35', '2023-12-29 04:29:35', '2024-12-29 11:29:35'),
('1ff20968e74eb5afca2abd048f54122eaea805b9dc3c8ad8a80b83d4224ff1ec7601800aa3c63488', 7, 1, 'app', '[]', 0, '2023-12-13 06:13:12', '2023-12-13 06:13:12', '2024-12-13 13:13:12'),
('2230462309c1122b1caed94fe9694ef8608b790b6c7be68cd4fa32e2341005b7dd0b8ce77ab2a818', 2, 1, 'app', '[]', 0, '2023-12-12 19:05:33', '2023-12-12 19:05:33', '2024-12-13 02:05:33'),
('31551b29dce59e29dc7a265cceae3bec6c808e0ffed2d8e6ab640af1cef4ee9ff0bfc4868e2f8d13', 2, 1, 'app', '[]', 0, '2023-12-12 18:54:49', '2023-12-12 18:54:49', '2024-12-13 01:54:49'),
('3425839c2b342cdb246e8f834f777e957721a0d57ecd9827ddff19260ad6bc21c300af7454a82925', 8, 1, 'app', '[]', 0, '2024-02-17 08:06:05', '2024-02-17 08:06:05', '2025-02-17 15:06:05'),
('34470c36f54d55b951eefb59946161b977651ac3172cdb838f40a1d5cf20418b666ab3f753a0b052', 2, 1, 'app', '[]', 0, '2023-12-12 18:54:45', '2023-12-12 18:54:45', '2024-12-13 01:54:45'),
('3625b110d79f95660002d95a7b0dce82cade3af124fc8f3c884347ff82d250e97cb8cd7c00d733a3', 2, 1, 'app', '[]', 0, '2023-12-24 20:15:12', '2023-12-24 20:15:12', '2024-12-25 03:15:12'),
('36e984f13c0b6da297495e62ae14679c41f68174dd86b2dc95f686870eaff4f33a4b92dbb38463aa', 2, 1, 'app', '[]', 0, '2023-12-12 18:41:09', '2023-12-12 18:41:09', '2024-12-13 01:41:09'),
('465eabb3c733bab4ffb5e7ba18201f46364abfc3d30447524292dfaf6353ad5102eddb8a679359f0', 8, 1, 'app', '[]', 0, '2023-12-13 06:30:58', '2023-12-13 06:30:58', '2024-12-13 13:30:58'),
('4d27f92aeaf8dae98988b9a9874bfbac0c27b8874a876c19f88cdb76757e4e080614d550f3ec187a', 8, 1, 'app', '[]', 0, '2023-12-29 09:50:05', '2023-12-29 09:50:05', '2024-12-29 16:50:05'),
('4ef2782e1b0080ae27ab37e61af948257e46c051cecdd2f95ecdbf960d3e34f706031ce24ae5cd90', 2, 1, 'app', '[]', 0, '2023-12-13 05:44:29', '2023-12-13 05:44:29', '2024-12-13 12:44:29'),
('545b28f8d5d74e959687d42979914ee26504a5987963944d08e78704cc26386995b281af16c367c3', 8, 1, 'app', '[]', 0, '2023-12-13 06:50:58', '2023-12-13 06:50:58', '2024-12-13 13:50:58'),
('54f8c1446cefd67bf5ddd301dcfc3d47844e143f39781aa424d83bdd395aeb6608aa36fe3c1cb831', 8, 1, 'app', '[]', 0, '2023-12-29 09:50:13', '2023-12-29 09:50:13', '2024-12-29 16:50:13'),
('564a46021eb08bbcb26d1549682e95e780350ace9a183adc555bd123aa8bc4d8f3177e32608976e0', 8, 1, 'app', '[]', 0, '2024-01-01 21:58:08', '2024-01-01 21:58:09', '2025-01-02 04:58:08'),
('57d1405ff24832d84cb286e1d9c76b8d704be47e2cf649f3773fca46fb2f2776b0fd76a3ad5e17b2', 1, 1, 'app', '[]', 0, '2023-12-12 19:04:07', '2023-12-12 19:04:07', '2024-12-13 02:04:07'),
('5974c8943968aaa7e296c2c496837ff26ad3357c74669db1dc29442159c88446f2c8a784b682d947', 8, 1, 'app', '[]', 0, '2023-12-13 06:51:01', '2023-12-13 06:51:01', '2024-12-13 13:51:01'),
('5a2b0bd8789e16382fcda3648540710cdb42eb651a57823839a31b770c411c1b8c620643a964c43f', 8, 1, 'app', '[]', 0, '2023-12-29 09:50:14', '2023-12-29 09:50:14', '2024-12-29 16:50:14'),
('5e15aeddbb2542802957aee3aa07ac44f490557357b5071b969741d9be1a48a53534fd01a57f577d', 2, 1, 'app', '[]', 0, '2023-12-12 18:41:35', '2023-12-12 18:41:35', '2024-12-13 01:41:35'),
('5f811367c8d009ab3fcb10c5a47f18fd90a31f4042ef33975da4eeb2d4ebc5e5fd9422e623ac5a81', 8, 1, 'app', '[]', 0, '2023-12-13 17:31:04', '2023-12-13 17:31:04', '2024-12-14 00:31:04'),
('607883b452febcf1751997ea06a539e45e2d60e939df0cb5ba045fc8c0ec825bc69f678afe4527b9', 2, 1, 'app', '[]', 0, '2023-12-25 01:40:36', '2023-12-25 01:40:36', '2024-12-25 08:40:36'),
('65ed0af138b3a00cdb93d5e81ddba8b3ecb6a57fa398c0d42a9e1a2229f33c3f83f9c1d6a962b500', 8, 1, 'app', '[]', 0, '2023-12-25 01:47:43', '2023-12-25 01:47:43', '2024-12-25 08:47:43'),
('6cd11cbd5f21d4ceade68bd8fdd5a522f963cc372d8cc7e1430dac8dfb94f4bcf7306f869a3bc36c', 2, 1, 'app', '[]', 0, '2023-12-25 01:07:17', '2023-12-25 01:07:17', '2024-12-25 08:07:17'),
('6ec5173456b69cd18dfb68704647356a5d7d0aaf755c4809f6833b7bd6e07a13f0f0124fa657fa32', 8, 1, 'app', '[]', 0, '2023-12-25 01:22:55', '2023-12-25 01:22:55', '2024-12-25 08:22:55'),
('7014c75145f22393dbf0603e3565b0b127d3274d18e110f3f3d792142ff4f530f4b7a6e053e0a37c', 8, 1, 'app', '[]', 0, '2024-01-01 21:58:06', '2024-01-01 21:58:07', '2025-01-02 04:58:06'),
('7f1cada8308d56c569b5e2be5bb8bb422affac1bae08591410ccb144adb4cc0fdbb999e66eef7593', 8, 1, 'app', '[]', 0, '2024-02-17 08:06:12', '2024-02-17 08:06:12', '2025-02-17 15:06:12'),
('82f6597af7122be8fe2d5a5147dd63a9228da14655c45e3ccd5b3de098f312939c3cfc264107f582', 3, 1, 'app', '[]', 0, '2023-12-13 06:14:40', '2023-12-13 06:14:40', '2024-12-13 13:14:40'),
('84e0ec155fe06338bcf1b802b39b91ffd128d55de79b7ef82eeb7e014bf52ad70fbc6ef1bc1108d2', 2, 1, 'app', '[]', 0, '2023-12-10 20:02:48', '2023-12-10 20:02:48', '2024-12-11 03:02:48'),
('88bea2443c25068d1ebfc9b2995dd365ff347e9a972a2bc78b8b412a2d57fb198579888d1ec24075', 2, 1, 'app', '[]', 0, '2023-12-12 18:41:28', '2023-12-12 18:41:28', '2024-12-13 01:41:28'),
('8fb88d1a3cb2279545c73073c7c1746bd6b0e6935a392ca14ad218afffba929d30f48a54ef6f31c3', 5, 1, 'app', '[]', 0, '2023-12-10 16:39:52', '2023-12-10 16:39:52', '2024-12-10 23:39:52'),
('95bfc45c1414d137c1a858d5c7fcac0f6209237e5932a00298fe3801487ed97552a047a53fef9c49', 4, 1, 'app', '[]', 0, '2023-12-10 07:03:08', '2023-12-10 07:03:08', '2024-12-10 14:03:08'),
('9662b9a4ca8059019834c86a8a280559b9994218027b1331f0649863dfe5a763ac1984958fad6f65', 8, 1, 'app', '[]', 0, '2024-01-28 20:42:08', '2024-01-28 20:42:08', '2025-01-29 03:42:08'),
('9d6419fc3e6fea9579149aafcf1654deace5f75a90e9d4815cd5dba7d66e41e01525a491c522b3d7', 8, 1, 'app', '[]', 0, '2023-12-13 06:50:59', '2023-12-13 06:50:59', '2024-12-13 13:50:59'),
('9f3d17108be539d1be6d4a380c5a85818f85267de49ddf4f83dec1db7cfe1bba5c7781f6afe6df6f', 8, 1, 'app', '[]', 0, '2023-12-13 17:28:28', '2023-12-13 17:28:28', '2024-12-14 00:28:28'),
('a7f07a61a71cc4e3b5f24486db45ff1bc52a906348e3aeeffb6a643794034fc09f0930d382299486', 8, 1, 'app', '[]', 0, '2023-12-13 07:01:29', '2023-12-13 07:01:29', '2024-12-13 14:01:29'),
('abd52ba80ce4c64d62c0079ef285d0f698eed97b76aa24c15fd1438382b618ac5d912d607f4020a1', 8, 1, 'app', '[]', 0, '2023-12-13 17:47:13', '2023-12-13 17:47:13', '2024-12-14 00:47:13'),
('ac95ec6578e1365414de5cb5ad444f34570aa03ede6470b44871031b95ecfde384bc3ae1da7bce3a', 2, 1, 'app', '[]', 0, '2023-12-12 18:41:29', '2023-12-12 18:41:29', '2024-12-13 01:41:29'),
('ad64afebb8949575f6954c485ded7690519e10f6fb6da04b8dd1d331bf74d25c3d5708624ce4bb95', 3, 1, 'app', '[]', 0, '2023-12-10 05:21:39', '2023-12-10 05:21:39', '2024-12-10 12:21:39'),
('ae963c1a0b3731448b5c3d405a8c0515b5640515b9345622d0e776bf37ddaaa72fba79b89a9a66ac', 8, 1, 'app', '[]', 0, '2023-12-13 06:50:58', '2023-12-13 06:50:58', '2024-12-13 13:50:58'),
('b04654a22dfd5138e2748e6262b1a057de5249aa6f2247a1bf55540038d9918ae04b5d62547d783c', 2, 1, 'app', '[]', 0, '2024-01-14 21:50:12', '2024-01-14 21:50:12', '2025-01-15 04:50:12'),
('b073b9a54f309812ff02a0facc6566f4403ac518c1bb81969a3ab3722949ea603206c38caf585ec5', 8, 1, 'app', '[]', 0, '2024-01-01 21:58:16', '2024-01-01 21:58:16', '2025-01-02 04:58:16'),
('bae07af2c71b9ae8f879982675cdceeb61304a73db3322be851f56b8af14847a9c19d3028b3b0df1', 2, 1, 'app', '[]', 0, '2023-12-12 18:41:32', '2023-12-12 18:41:32', '2024-12-13 01:41:32'),
('d095d42e916ae8c21202372f477a2327fd5a079d7cd61c8890ad034574ce742faa1a8cde602bd712', 2, 1, 'app', '[]', 0, '2023-12-13 06:25:27', '2023-12-13 06:25:27', '2024-12-13 13:25:27'),
('d3c152c1dfcafbf7684c3d48524f853105d67e53ebed41e8d5d713e7290c9f84a705af2efacb9768', 8, 1, 'app', '[]', 0, '2023-12-13 06:51:03', '2023-12-13 06:51:03', '2024-12-13 13:51:03'),
('d4ca6650c4ace5a93212e9d0dbc3d2444dbb02a518ae776905eafe32130c0b806d2261f9031aba39', 2, 1, 'app', '[]', 0, '2023-12-10 05:18:24', '2023-12-10 05:18:24', '2024-12-10 12:18:24'),
('d826f6f8c9661f16f5d83da3d953b031033283c6997e8bd1dba6287b5f761de03c63ab1f2c8c927d', 8, 1, 'app', '[]', 0, '2023-12-13 06:51:00', '2023-12-13 06:51:00', '2024-12-13 13:51:00'),
('daf8af88b6e1220915a527acf6b8249a439cd012d91b89ab1a9bf5362b041127158085eb8eb0f7c6', 8, 1, 'app', '[]', 0, '2023-12-13 06:50:49', '2023-12-13 06:50:49', '2024-12-13 13:50:49'),
('e1f9e70929a55f642291b45b4440e7ba0bd874719bc53bab4e0dfc11d0d826d10202fe5bee3c8512', 8, 1, 'app', '[]', 0, '2023-12-13 17:23:22', '2023-12-13 17:23:22', '2024-12-14 00:23:22'),
('e55155d80f135d901b7fb004251e36e1b7fa6592e3c2b9714480f1b3bb6e787f7f34c70b5a3c0403', 2, 1, 'app', '[]', 0, '2023-12-13 05:43:57', '2023-12-13 05:43:57', '2024-12-13 12:43:57'),
('e9e443d9004b57460830fc91696b5a5106c4238559d820b39c2f709fb46f3a66571dbae27474d8a1', 8, 1, 'app', '[]', 0, '2023-12-13 06:50:51', '2023-12-13 06:50:51', '2024-12-13 13:50:51'),
('eb235d6a56c3a4d1b3d9edb06d9d57e17fcb0f56f3b782ea2a9278dd1d3806500d523a8d73f8e0f9', 2, 1, 'app', '[]', 0, '2023-12-12 18:41:37', '2023-12-12 18:41:37', '2024-12-13 01:41:37'),
('f0f3e8b654977314855404fb622719caa8990179b7b9c063cd75b9c07122130166776f685ec9bc30', 5, 1, 'app', '[]', 0, '2023-12-10 19:46:30', '2023-12-10 19:46:30', '2024-12-11 02:46:30'),
('f21317d3207ab9c861e658b59dccf195b381849b681eba7a4eb6fa9c5c76277f09d2e869deb9a102', 2, 1, 'app', '[]', 0, '2023-12-24 20:11:56', '2023-12-24 20:11:56', '2024-12-25 03:11:56'),
('f227b58c1285f0e2ab37820514cb92ad204c4aa15153c2018cc8cfd8733ee2854a0eadb5ba937ad1', 2, 1, 'app', '[]', 0, '2023-12-12 18:41:31', '2023-12-12 18:41:31', '2024-12-13 01:41:31'),
('f5c6f9499cdf315eee74d9632d794692722324128cd9240e35919380dfcfe900469815b9526c35aa', 8, 1, 'app', '[]', 0, '2023-12-13 06:51:02', '2023-12-13 06:51:02', '2024-12-13 13:51:02'),
('f5e8d1cf23f74e4e38e84f55ca7d074d4550a4f4eadecdbc074f3e182df169dceaa288fff6941087', 2, 1, 'app', '[]', 0, '2023-12-13 17:37:11', '2023-12-13 17:37:11', '2024-12-14 00:37:11'),
('f7e4a85b6d38827d36041f9774824857bbbf3d5b42349b09f5088fc05727c5c34b8adc0b7fce2655', 8, 1, 'app', '[]', 0, '2023-12-13 06:50:50', '2023-12-13 06:50:50', '2024-12-13 13:50:50'),
('fb190ea0814fef96db95805febf05aa2b1a9e5a00a97e83b42553f907fd0bcf30e9fb65c45a1c1bd', 6, 1, 'app', '[]', 0, '2023-12-13 06:11:31', '2023-12-13 06:11:31', '2024-12-13 13:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Kc4GdkEngq9Dba3UNDgD7FntdIlfjGRzbyZl7WpG', NULL, 'http://localhost', 1, 0, 0, '2023-12-10 05:17:15', '2023-12-10 05:17:15'),
(2, NULL, 'Laravel Password Grant Client', 'Mm4jBiNwIBKuRbnAvgeIGf2RTno0QNAOUEYkjoXr', 'users', 'http://localhost', 0, 1, 0, '2023-12-10 05:17:15', '2023-12-10 05:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-12-10 05:17:15', '2023-12-10 05:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `variant` varchar(255) NOT NULL,
  `packaging` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `image`, `email`, `product_name`, `product_code`, `variant`, `packaging`, `quantity`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
(9, 'http://127.0.0.1:8000/storage/Stickmeeend.png', 'test@gmail.com', 'STICK MENDOL 12', '001', 'Variant: Original', 'Packaging: Small', '2', '5000', '10000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` varchar(255) NOT NULL,
  `image_two` varchar(255) NOT NULL,
  `image_three` varchar(255) NOT NULL,
  `image_four` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `variant` varchar(255) NOT NULL,
  `packaging` varchar(255) NOT NULL,
  `long_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `image_one`, `image_two`, `image_three`, `image_four`, `short_description`, `variant`, `packaging`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'http://127.0.0.1:8000/storage/Stickmeeend.png', 'https://i.pinimg.com/564x/8b/b4/f3/8bb4f39d4b3cba0381c367357117b3d1.jpg', 'https://i.pinimg.com/564x/74/89/92/748992dd4e10de960ef8dabfa97c9d5f.jpg', 'http://127.0.0.1:8000/storage/Stickmeeend.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'Original, Pedas, Asin', 'Small, Medium, Large', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(2, 2, 'http://127.0.0.1:8000/storage/PieYo.png', 'http://127.0.0.1:8000/storage/PieYo.png', 'http://127.0.0.1:8000/storage/PieYo.png', 'http://127.0.0.1:8000/storage/PieYo.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'na', 'Small, Medium, Large', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(3, 3, 'http://127.0.0.1:8000/storage/corn.jpg', 'http://127.0.0.1:8000/storage/corn.jpg', 'http://127.0.0.1:8000/storage/corn.jpg', 'http://127.0.0.1:8000/storage/corn.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'Original, Pedas, Asin', 'Small, Medium, Large', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(4, 8, 'http://127.0.0.1:8000/upload/productdetails/1786607908818253.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786607909005809.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786607909184748.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786607909367291.jpeg', 'ini Short Description', 'merah,hitam,biru,putih,kuning', 'ya', '<p>kalo yg ini Long des</p>', NULL, NULL),
(5, 9, 'http://127.0.0.1:8000/upload/productdetails/1786611991432998.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786611991612528.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786611991850372.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786611992026406.jpeg', 'ini Short Description', 'merah,hitam,biru,putih,kuning', 'na', '<p>kalo yg ini Long des</p>', NULL, NULL),
(6, 10, 'http://127.0.0.1:8000/upload/productdetails/1786613131318052.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786613131498051.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786613131723358.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786613131896327.jpeg', 'ini Short Description', 'merah,hitam,biru,putih,kuning', 'na', '<p>kalo yg ini Long des</p>', NULL, NULL),
(7, 11, 'http://127.0.0.1:8000/upload/productdetails/1786613584349411.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786613584519866.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786613584756926.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786613584935441.jpeg', 'ini Short Description', 'merah,hitam,biru,putih,kuning', 'na', '<p>kalo yg ini Long des</p>', NULL, NULL),
(8, 18, 'http://127.0.0.1:8000/upload/productdetails/1786635216847330.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786635217030059.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786635217217844.jpeg', 'http://127.0.0.1:8000/upload/productdetails/1786635217395185.jpeg', 'ya', 'Original, Pedas, Asin', 'Small, Medium, Large', '<p>kaskasko</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_lists`
--

CREATE TABLE `product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `special_price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `star` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `title`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `star`, `product_code`, `created_at`, `updated_at`) VALUES
(1, 'STICK MENDOL 12', '5000', 'na', 'http://127.0.0.1:8000/storage/Stickmeeend.png', 'Food', 'Snack', 'FEATURED', 'STICKMEEEND12', '5', '001', NULL, NULL),
(2, 'THE RIMPANG PIE', '5000', 'na', 'http://127.0.0.1:8000/storage/PieYo.png', 'Food', 'Dessert', 'FEATURED', 'Pie Yo?', '5', '002', NULL, NULL),
(3, 'CORN CHIPS KREZ', '10000', '9000', 'http://127.0.0.1:8000/storage/corn.jpg', 'Food', 'Snack', 'FEATURED', 'CORN CHIPS KREZ', '5', '003', NULL, NULL),
(4, 'DVADASH', '1000000', '999999', 'http://127.0.0.1:8000/storage/dvadash%20square.png', 'Service', 'Programming', 'FEATURED', 'DVADASH', '5', '004', NULL, NULL),
(5, 'EDUCAPTURE', '1000000', '999999', 'http://127.0.0.1:8000/storage/Educapture.jpg', 'Service', 'Photography & Videography', 'FEATURED', 'EDUCAPTURE', '5', '005', NULL, NULL),
(6, 'SMECHA IT SOLUTION', '1000000', '999999', 'http://127.0.0.1:8000/storage/SmechaITSolution.jpg', 'Service', 'Maintenance', 'FEATURED', 'SMECHA IT SOLUTION', '5', '006', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(225) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `reviewer_name` varchar(255) NOT NULL,
  `reviewer_photo` varchar(255) DEFAULT NULL,
  `reviewer_rating` varchar(255) NOT NULL,
  `reviewer_comments` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_code`, `product_name`, `reviewer_name`, `reviewer_photo`, `reviewer_rating`, `reviewer_comments`, `created_at`, `updated_at`) VALUES
(9, '003', 'CORN CHIPS KREZ', 'bayuu', NULL, '4', 'enak mangg', NULL, NULL),
(10, '003', 'CORN CHIPS KREZ', 'madun', NULL, '4', 'enak banget', NULL, NULL),
(11, '001', 'STICK MENDOL 12', 'bayu', NULL, '5', 'stick mendol sangat enak', NULL, NULL),
(12, '001', 'STICK MENDOL 12', 'ridho', NULL, '5', 'Rasa gurih2 nyoi -test', NULL, NULL),
(13, '001', 'STICK MENDOL 12', 'rhevarawr', NULL, '5', 'alig coy', NULL, NULL),
(14, '003', 'CORN CHIPS KREZ', 'bayu', NULL, '5', 'enak banget rekomen', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4AHuDJuxDqyCP4RMQrevrgZJJ3Qacn19PDBCHUcD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUU5RXBIdERvMXVZQ2xnM2JoZ1ZYVU1uaUU1ZEl3QU85bDlrbGxpRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1708181786),
('Qsn4An4u9bxAV0lrBT9QvTQsHPjGkw8gG18QTU0O', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOVdGa3FuclMzOHVIZjRJNWpEbWR6U05WZUNVUHZnNElVMlMzV1B4OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1706499694),
('RDjk3b4ZwecW92Yj8CLZPMc56ncTiDX9s96YEUl2', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiREZBY1pDaGJ3RXdVZzVsWk5VR1g0VWQ0alBhWTBleXQ4Tld5aFU0ZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi91c2VyL3Byb2ZpbGUiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1705295364);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text NOT NULL,
  `refund` text NOT NULL,
  `purchase_guide` text NOT NULL,
  `privacy` text NOT NULL,
  `address` text NOT NULL,
  `android_app_link` varchar(255) NOT NULL,
  `ios_app_link` varchar(255) NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `youtube_link` varchar(255) NOT NULL,
  `copyright_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `about`, `refund`, `purchase_guide`, `privacy`, `address`, `android_app_link`, `ios_app_link`, `facebook_link`, `twitter_link`, `instagram_link`, `youtube_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, '<p>Find unique products, delicious snacks made by students, and various services from talented students at SMK Negeri 12 Malang.</p>\r\n<p>Explore innovative products from our students, enjoy the delicious snacks they produce, and take advantage of services such as website/game creation, computer maintenance, and photography/videography&mdash;all provided by a skilled team of students.</p>\r\n<p>Your satisfaction is our priority. Our team is ready to help you find what you need.</p>\r\n<p>Thank you for supporting student talents at SaPa 12 Shop. Discover, shop and support the future with us!</p>\r\n<p>SaPa 12 Shop Team</p>', '<ol>\r\n<li>\r\n<p><strong>Eligibility for Returns:</strong></p>\r\n<ul>\r\n<li>Damaged, defective, or wrongly delivered items are eligible for return.</li>\r\n<li>Notify us within [number of days] days of receiving the item.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Return Process:</strong></p>\r\n<ul>\r\n<li>Contact customer service to start the return process.</li>\r\n<li>Return instructions provided upon approval.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Refund Process:</strong></p>\r\n<ul>\r\n<li>Refunds processed upon item inspection.</li>\r\n<li>Refunds issued via the original payment method.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Non-Returnable Items:</strong></p>\r\n<ul>\r\n<li>Downloaded or customized products are non-returnable.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Order Cancellation:</strong></p>\r\n<ul>\r\n<li>Contact us promptly for any order changes or cancellations.</li>\r\n<li>We aim to accommodate changes before shipping.</li>\r\n</ul>\r\n</li>\r\n</ol>\r\n<p><strong>Contact Us:</strong> For inquiries regarding our refund policy, please reach out to our customer service team.</p>\r\n<p>Thank you for supporting SaPa 12 Shop.</p>\r\n<p><strong>SaPa 12 Shop Team</strong></p>', '<ol>\r\n<li>\r\n<p><strong>Search for Products:</strong></p>\r\n<ul>\r\n<li>Visit the main page of SaPa 12 Shop.</li>\r\n<li>Browse through the product categories such as goods, foods, or services.</li>\r\n<li>Use the search feature or navigate categories to find the desired products.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Select a Product:</strong></p>\r\n<ul>\r\n<li>Once you\'ve found the product you want, click on it to see its details.</li>\r\n<li>Make sure to review the description, price, and any other relevant information.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Add to Cart:</strong></p>\r\n<ul>\r\n<li>Choose the desired quantity if applicable.</li>\r\n<li>Click \"Add to Cart\" or \"Buy Now\" to add the product to your shopping cart.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Shopping Cart:</strong></p>\r\n<ul>\r\n<li>Access your shopping cart by clicking the cart icon or \"Shopping Cart\".</li>\r\n<li>Ensure all the selected products are in the cart.</li>\r\n<li>In the cart page, you can review the product details and quantities.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Checkout:</strong></p>\r\n<ul>\r\n<li>Click \"Proceed to Checkout\" or \"Checkout\" to proceed with the purchase.</li>\r\n<li>Fill in the shipping and payment information as instructed.</li>\r\n<li>Double-check the shipping address and payment details before proceeding to the next step.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Review and Confirmation:</strong></p>\r\n<ul>\r\n<li>After filling in all necessary information, a final review before confirming the purchase is crucial.</li>\r\n<li>Review your order details, total price, and shipping information.</li>\r\n<li>If everything is correct, proceed by clicking \"Confirm Purchase\" or \"Buy Now\".</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Payment and Confirmation:</strong></p>\r\n<ul>\r\n<li>Follow the instructions to complete the payment using your chosen method.</li>\r\n<li>Upon successful payment, you\'ll receive a purchase confirmation, either via email or notifications on the platform.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Shipping or Pickup:</strong></p>\r\n<ul>\r\n<li>Await the shipping process if you\'ve opted for product delivery.</li>\r\n<li>If the product is available for pickup, ensure you\'re aware of the pickup location and designated time.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Receiving the Product:</strong></p>\r\n<ul>\r\n<li>Accept the product as per the promised delivery.</li>\r\n<li>Upon receiving, inspect the product\'s condition. If there are any issues, promptly contact SaPa 12 Shop\'s customer service team.</li>\r\n</ul>\r\n</li>\r\n</ol>\r\n<p>By following these steps, you can easily make a purchase on the SaPa 12 Shop platform.</p>', '<ol>\r\n<li>\r\n<p><strong>Information We Collect:</strong></p>\r\n<ul>\r\n<li>Personal information for orders.</li>\r\n<li>Website usage data for service improvement.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Use of Information:</strong></p>\r\n<ul>\r\n<li>Order processing and customer service.</li>\r\n<li>Enhancing user experience.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Information Protection:</strong></p>\r\n<ul>\r\n<li>Data security with encryption.</li>\r\n<li>No sharing without consent.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Consent:</strong></p>\r\n<ul>\r\n<li>By using the site, you agree to our policy.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Policy Changes:</strong></p>\r\n<ul>\r\n<li>Policy may change with notice.</li>\r\n</ul>\r\n</li>\r\n</ol>\r\n<p>Thank you for your support at SaPa 12 Shop.</p>\r\n<p><strong>SaPa 12 Shop Team</strong></p>', '<p>Jl. Pahlawan, Balearjosari, Kec. Blimbing, Kota Malang, Jawa Timur 65126<br />Email : SaPa12@gmail.com</p>', 'http://localhost:3000/android', 'http://localhost:3000/ios', 'https://web.facebook.com/smkn12malang.official', 'https://twitter.com/smkn12malang', 'https://www.instagram.com/smkn12malang.official', 'https://www.youtube.com/@smkn12malang.official24', 'ⓒ Copyright 2023 by SaPa 12 Shop, All Rights Reserves <br> Created By : Fandi Eka Pratama', NULL, '2023-12-29 04:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_name`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 'Goods', 'Goods', NULL, NULL),
(2, 'Food', 'Snack', NULL, NULL),
(3, 'Food', 'Dessert', NULL, NULL),
(4, 'Service', 'Programming', NULL, NULL),
(5, 'Service', 'Maintenance', NULL, NULL),
(6, 'Service', 'Photography & Videography', NULL, NULL),
(10, 'Goods', 'clothes', NULL, NULL);

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
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin SaPa 12 Shop', 'sapa12@gmail.com', NULL, '$2y$12$V5TRJfmRZn2D/S8McCvaxOZJhzQjTHN.XufhTgjr39TYt/FTXwK1i', NULL, NULL, NULL, 'IkCSw7crkZw6RrLPAbbUosE2cXba66jWCeBMhYbD3lEsHzwJx0uTeTLWc5h1', NULL, '202401150509profile.jpeg', '2023-12-10 04:14:23', '2024-01-14 22:09:24'),
(2, 'test', 'test@gmail.com', NULL, '$2y$12$nfQeArt90BIPRX983JIHw.GCOgMA3effQafDj3NLaxq6sR1G0A4om', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 16:39:50', '2023-12-10 16:39:50'),
(3, 'example', 'example@gmail.com', NULL, '$2y$12$nJZxSBOnLpHNx3GOcSRRoeN.9fEc7ukNszobmTVyRNIsgAmyfdk9O', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 06:11:30', '2023-12-13 06:11:30'),
(8, 'bayu', 'bayu@gmail.com', NULL, '$2y$12$K8uvxTG2i70SLAusdkAxHu2qSr9zXLaq0Uqfb/OtIwni2RutZS1Um', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 06:30:58', '2023-12-13 06:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `visit_time` varchar(255) NOT NULL,
  `visit_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '05:49:52pm', '10-12-23', NULL, NULL),
(2, '127.0.0.1', '05:52:10pm', '10-12-23', NULL, NULL),
(3, '127.0.0.1', '05:54:11pm', '10-12-23', NULL, NULL),
(4, '127.0.0.1', '05:56:44pm', '10-12-23', NULL, NULL),
(5, '127.0.0.1', '06:09:22pm', '10-12-23', NULL, NULL),
(6, '127.0.0.1', '06:10:06pm', '10-12-23', NULL, NULL),
(7, '127.0.0.1', '06:14:46pm', '10-12-23', NULL, NULL),
(8, '127.0.0.1', '06:18:10pm', '10-12-23', NULL, NULL),
(9, '127.0.0.1', '06:20:25pm', '10-12-23', NULL, NULL),
(10, '127.0.0.1', '06:24:34pm', '10-12-23', NULL, NULL),
(11, '127.0.0.1', '06:25:01pm', '10-12-23', NULL, NULL),
(12, '127.0.0.1', '06:38:02pm', '10-12-23', NULL, NULL),
(13, '127.0.0.1', '06:39:26pm', '10-12-23', NULL, NULL),
(14, '127.0.0.1', '06:40:00pm', '10-12-23', NULL, NULL),
(15, '127.0.0.1', '06:40:24pm', '10-12-23', NULL, NULL),
(16, '127.0.0.1', '06:40:50pm', '10-12-23', NULL, NULL),
(17, '127.0.0.1', '06:41:19pm', '10-12-23', NULL, NULL),
(18, '127.0.0.1', '06:55:21pm', '10-12-23', NULL, NULL),
(19, '127.0.0.1', '06:55:33pm', '10-12-23', NULL, NULL),
(20, '127.0.0.1', '07:04:01pm', '10-12-23', NULL, NULL),
(21, '127.0.0.1', '07:06:28pm', '10-12-23', NULL, NULL),
(22, '127.0.0.1', '07:08:14pm', '10-12-23', NULL, NULL),
(23, '127.0.0.1', '07:10:31pm', '10-12-23', NULL, NULL),
(24, '127.0.0.1', '07:13:02pm', '10-12-23', NULL, NULL),
(25, '127.0.0.1', '07:15:09pm', '10-12-23', NULL, NULL),
(26, '127.0.0.1', '07:15:55pm', '10-12-23', NULL, NULL),
(27, '127.0.0.1', '07:23:35pm', '10-12-23', NULL, NULL),
(28, '127.0.0.1', '07:23:50pm', '10-12-23', NULL, NULL),
(29, '127.0.0.1', '07:24:03pm', '10-12-23', NULL, NULL),
(30, '127.0.0.1', '07:27:20pm', '10-12-23', NULL, NULL),
(31, '127.0.0.1', '07:28:18pm', '10-12-23', NULL, NULL),
(32, '127.0.0.1', '06:37:51am', '11-12-23', NULL, NULL),
(33, '127.0.0.1', '08:00:33am', '13-12-23', NULL, NULL),
(34, '127.0.0.1', '09:09:12am', '13-12-23', NULL, NULL),
(35, '127.0.0.1', '09:09:49am', '13-12-23', NULL, NULL),
(36, '127.0.0.1', '09:10:03am', '13-12-23', NULL, NULL),
(37, '127.0.0.1', '09:10:21am', '13-12-23', NULL, NULL),
(38, '127.0.0.1', '09:12:31am', '13-12-23', NULL, NULL),
(39, '127.0.0.1', '09:12:35am', '13-12-23', NULL, NULL),
(40, '127.0.0.1', '09:14:01am', '13-12-23', NULL, NULL),
(41, '127.0.0.1', '10:14:41am', '13-12-23', NULL, NULL),
(42, '127.0.0.1', '10:15:26am', '13-12-23', NULL, NULL),
(43, '127.0.0.1', '10:16:02am', '13-12-23', NULL, NULL),
(44, '127.0.0.1', '10:16:17am', '13-12-23', NULL, NULL),
(45, '127.0.0.1', '10:16:24am', '13-12-23', NULL, NULL),
(46, '127.0.0.1', '10:16:33am', '13-12-23', NULL, NULL),
(47, '127.0.0.1', '10:17:02am', '13-12-23', NULL, NULL),
(48, '127.0.0.1', '10:17:13am', '13-12-23', NULL, NULL),
(49, '127.0.0.1', '10:17:17am', '13-12-23', NULL, NULL),
(50, '127.0.0.1', '10:17:20am', '13-12-23', NULL, NULL),
(51, '127.0.0.1', '10:17:23am', '13-12-23', NULL, NULL),
(52, '127.0.0.1', '07:35:56pm', '13-12-23', NULL, NULL),
(53, '127.0.0.1', '10:48:06pm', '13-12-23', NULL, NULL),
(54, '127.0.0.1', '10:48:46pm', '13-12-23', NULL, NULL),
(55, '127.0.0.1', '10:48:56pm', '13-12-23', NULL, NULL),
(56, '127.0.0.1', '07:08:29am', '14-12-23', NULL, NULL),
(57, '127.0.0.1', '07:23:45am', '14-12-23', NULL, NULL),
(58, '127.0.0.1', '07:30:01am', '14-12-23', NULL, NULL),
(59, '127.0.0.1', '07:35:58am', '14-12-23', NULL, NULL),
(60, '127.0.0.1', '07:49:18am', '14-12-23', NULL, NULL),
(61, '127.0.0.1', '10:39:33am', '14-12-23', NULL, NULL),
(62, '127.0.0.1', '10:40:01am', '14-12-23', NULL, NULL),
(63, '127.0.0.1', '06:22:21pm', '14-12-23', NULL, NULL),
(64, '127.0.0.1', '06:34:04pm', '16-12-23', NULL, NULL),
(65, '127.0.0.1', '07:41:21pm', '18-12-23', NULL, NULL),
(66, '127.0.0.1', '08:54:41pm', '18-12-23', NULL, NULL),
(67, '127.0.0.1', '09:55:17am', '22-12-23', NULL, NULL),
(68, '127.0.0.1', '06:47:28am', '23-12-23', NULL, NULL),
(69, '127.0.0.1', '09:20:04am', '25-12-23', NULL, NULL),
(70, '127.0.0.1', '09:23:36am', '25-12-23', NULL, NULL),
(71, '127.0.0.1', '09:39:25am', '25-12-23', NULL, NULL),
(72, '127.0.0.1', '09:48:23am', '25-12-23', NULL, NULL),
(73, '127.0.0.1', '10:00:00am', '25-12-23', NULL, NULL),
(74, '127.0.0.1', '10:06:20am', '25-12-23', NULL, NULL),
(75, '127.0.0.1', '10:12:36am', '25-12-23', NULL, NULL),
(76, '127.0.0.1', '10:15:33am', '25-12-23', NULL, NULL),
(77, '127.0.0.1', '12:53:13pm', '25-12-23', NULL, NULL),
(78, '127.0.0.1', '01:30:37pm', '25-12-23', NULL, NULL),
(79, '127.0.0.1', '01:31:00pm', '25-12-23', NULL, NULL),
(80, '127.0.0.1', '01:31:59pm', '25-12-23', NULL, NULL),
(81, '127.0.0.1', '01:32:07pm', '25-12-23', NULL, NULL),
(82, '127.0.0.1', '02:27:44pm', '25-12-23', NULL, NULL),
(83, '127.0.0.1', '02:46:14pm', '25-12-23', NULL, NULL),
(84, '127.0.0.1', '02:50:14pm', '25-12-23', NULL, NULL),
(85, '127.0.0.1', '02:51:53pm', '25-12-23', NULL, NULL),
(86, '127.0.0.1', '02:52:27pm', '25-12-23', NULL, NULL),
(87, '127.0.0.1', '03:07:08pm', '25-12-23', NULL, NULL),
(88, '127.0.0.1', '03:07:38pm', '25-12-23', NULL, NULL),
(89, '127.0.0.1', '03:22:40pm', '25-12-23', NULL, NULL),
(90, '127.0.0.1', '03:25:14pm', '25-12-23', NULL, NULL),
(91, '127.0.0.1', '03:26:52pm', '25-12-23', NULL, NULL),
(92, '127.0.0.1', '03:40:30pm', '25-12-23', NULL, NULL),
(93, '127.0.0.1', '03:47:41pm', '25-12-23', NULL, NULL),
(94, '127.0.0.1', '05:03:30pm', '25-12-23', NULL, NULL),
(95, '127.0.0.1', '05:03:57pm', '25-12-23', NULL, NULL),
(96, '127.0.0.1', '05:15:00pm', '25-12-23', NULL, NULL),
(97, '127.0.0.1', '05:15:11pm', '25-12-23', NULL, NULL),
(98, '127.0.0.1', '07:14:40pm', '25-12-23', NULL, NULL),
(99, '127.0.0.1', '10:27:27pm', '25-12-23', NULL, NULL),
(100, '127.0.0.1', '10:59:39pm', '25-12-23', NULL, NULL),
(101, '127.0.0.1', '11:00:07pm', '25-12-23', NULL, NULL),
(102, '127.0.0.1', '12:52:04pm', '26-12-23', NULL, NULL),
(103, '127.0.0.1', '01:05:15pm', '26-12-23', NULL, NULL),
(104, '127.0.0.1', '01:12:01pm', '26-12-23', NULL, NULL),
(105, '127.0.0.1', '09:02:47pm', '27-12-23', NULL, NULL),
(106, '127.0.0.1', '09:14:31pm', '27-12-23', NULL, NULL),
(107, '127.0.0.1', '11:36:26am', '28-12-23', NULL, NULL),
(108, '127.0.0.1', '09:12:54pm', '28-12-23', NULL, NULL),
(109, '127.0.0.1', '10:19:09pm', '28-12-23', NULL, NULL),
(110, '127.0.0.1', '10:37:33pm', '28-12-23', NULL, NULL),
(111, '127.0.0.1', '10:37:52pm', '28-12-23', NULL, NULL),
(112, '127.0.0.1', '09:48:52am', '29-12-23', NULL, NULL),
(113, '127.0.0.1', '10:08:43am', '29-12-23', NULL, NULL),
(114, '127.0.0.1', '10:21:45am', '29-12-23', NULL, NULL),
(115, '127.0.0.1', '03:18:38pm', '29-12-23', NULL, NULL),
(116, '127.0.0.1', '03:57:03pm', '29-12-23', NULL, NULL),
(117, '127.0.0.1', '03:57:37pm', '29-12-23', NULL, NULL),
(118, '127.0.0.1', '03:58:55pm', '29-12-23', NULL, NULL),
(119, '127.0.0.1', '03:59:18pm', '29-12-23', NULL, NULL),
(120, '127.0.0.1', '03:59:45pm', '29-12-23', NULL, NULL),
(121, '127.0.0.1', '04:28:20pm', '29-12-23', NULL, NULL),
(122, '127.0.0.1', '04:30:42pm', '29-12-23', NULL, NULL),
(123, '127.0.0.1', '04:31:06pm', '29-12-23', NULL, NULL),
(124, '127.0.0.1', '04:31:43pm', '29-12-23', NULL, NULL),
(125, '127.0.0.1', '04:32:14pm', '29-12-23', NULL, NULL),
(126, '127.0.0.1', '05:33:58pm', '29-12-23', NULL, NULL),
(127, '127.0.0.1', '06:18:11pm', '29-12-23', NULL, NULL),
(128, '127.0.0.1', '06:18:50pm', '29-12-23', NULL, NULL),
(129, '127.0.0.1', '06:21:56pm', '29-12-23', NULL, NULL),
(130, '127.0.0.1', '06:29:49pm', '29-12-23', NULL, NULL),
(131, '127.0.0.1', '06:30:20pm', '29-12-23', NULL, NULL),
(132, '127.0.0.1', '06:51:17pm', '29-12-23', NULL, NULL),
(133, '127.0.0.1', '11:37:59pm', '29-12-23', NULL, NULL),
(134, '127.0.0.1', '11:40:25pm', '29-12-23', NULL, NULL),
(135, '127.0.0.1', '11:42:28pm', '29-12-23', NULL, NULL),
(136, '127.0.0.1', '11:46:00pm', '29-12-23', NULL, NULL),
(137, '127.0.0.1', '11:50:32pm', '29-12-23', NULL, NULL),
(138, '127.0.0.1', '11:51:48pm', '29-12-23', NULL, NULL),
(139, '127.0.0.1', '11:55:30pm', '29-12-23', NULL, NULL),
(140, '127.0.0.1', '11:56:05pm', '29-12-23', NULL, NULL),
(141, '127.0.0.1', '09:20:35am', '02-01-24', NULL, NULL),
(142, '127.0.0.1', '09:21:36am', '02-01-24', NULL, NULL),
(143, '127.0.0.1', '09:24:06am', '02-01-24', NULL, NULL),
(144, '127.0.0.1', '09:24:26am', '02-01-24', NULL, NULL),
(145, '127.0.0.1', '09:28:12am', '02-01-24', NULL, NULL),
(146, '127.0.0.1', '11:47:08am', '02-01-24', NULL, NULL),
(147, '127.0.0.1', '11:50:29am', '02-01-24', NULL, NULL),
(148, '127.0.0.1', '11:55:45am', '02-01-24', NULL, NULL),
(149, '127.0.0.1', '11:56:40am', '02-01-24', NULL, NULL),
(150, '127.0.0.1', '11:57:05am', '02-01-24', NULL, NULL),
(151, '127.0.0.1', '11:57:59am', '02-01-24', NULL, NULL),
(152, '127.0.0.1', '11:58:26am', '02-01-24', NULL, NULL),
(153, '127.0.0.1', '12:00:24pm', '02-01-24', NULL, NULL),
(154, '127.0.0.1', '12:01:01pm', '02-01-24', NULL, NULL),
(155, '127.0.0.1', '09:46:06am', '15-01-24', NULL, NULL),
(156, '127.0.0.1', '09:49:27am', '15-01-24', NULL, NULL),
(157, '127.0.0.1', '09:50:14am', '15-01-24', NULL, NULL),
(158, '127.0.0.1', '10:23:58am', '15-01-24', NULL, NULL),
(159, '127.0.0.1', '10:47:55am', '15-01-24', NULL, NULL),
(160, '127.0.0.1', '10:52:14am', '15-01-24', NULL, NULL),
(161, '127.0.0.1', '10:57:54am', '15-01-24', NULL, NULL),
(162, '127.0.0.1', '11:39:40am', '15-01-24', NULL, NULL),
(163, '127.0.0.1', '11:40:16am', '15-01-24', NULL, NULL),
(164, '127.0.0.1', '11:40:58am', '15-01-24', NULL, NULL),
(165, '127.0.0.1', '11:44:28am', '15-01-24', NULL, NULL),
(166, '127.0.0.1', '12:02:43pm', '15-01-24', NULL, NULL),
(167, '127.0.0.1', '04:53:41pm', '22-01-24', NULL, NULL),
(168, '127.0.0.1', '10:41:53am', '29-01-24', NULL, NULL),
(169, '127.0.0.1', '09:57:24pm', '17-02-24', NULL, NULL),
(170, '127.0.0.1', '09:58:07pm', '17-02-24', NULL, NULL),
(171, '127.0.0.1', '09:58:53pm', '17-02-24', NULL, NULL),
(172, '127.0.0.1', '10:01:07pm', '17-02-24', NULL, NULL),
(173, '127.0.0.1', '10:05:09pm', '17-02-24', NULL, NULL),
(174, '127.0.0.1', '10:06:23pm', '17-02-24', NULL, NULL),
(175, '127.0.0.1', '10:07:58pm', '17-02-24', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_orders`
--
ALTER TABLE `cart_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_orders`
--
ALTER TABLE `cart_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
