-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2023 at 03:58 AM
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
-- Database: `web_ban_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `log_login` text DEFAULT NULL,
  `class` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$hJS.sLPS/zvWVEHUi.TLc.3XgebTcIyN3aogS9kzTqClzsl0pFmHa', '0343754517', NULL, 'CDTH18', 'TP Hồ Chí Minh', 1, 1, '2023-06-08__avatar5.png', NULL, '2020-04-16 17:15:17'),
(6, 'Nhân Viên', 'nhanvien@gmail.com', '$2y$10$2Btw2.RpZgDGwgw0yeTSdeyy.md58ZxQD.k.XNhUjFT3zRoD76YVu', '012345678', NULL, NULL, NULL, 2, 1, NULL, '2020-06-06 05:48:35', '2020-06-06 05:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) NOT NULL,
  `a_slug` varchar(191) NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext DEFAULT NULL,
  `a_avatar` varchar(191) DEFAULT NULL,
  `a_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'CÁCH LÀM BÁNH COOKIES SOCOLA CHIP ĐƠN GIẢN LẮM', 'cach-lam-banh-cookies-socola-chip-don-gian-lam', 1, 1, 1, 0, NULL, '2023-06-16__hoc-lam-banh-quy-hat-socola-chocolate-chips-cookie-large.webp', '<p>Hello mọi người, thời tiết hơi se se&nbsp;lạnh thế n&agrave;y m&agrave; nhấm nh&aacute;p v&agrave;i c&aacute;i b&aacute;nh quy với ly c&agrave; ph&ecirc; th&igrave; ngon th&ocirc;i rồi nhỉ. Để cuối tuần th&ecirc;m th&uacute; vị,&nbsp;ad chia sẻ với mọi người c&aacute;ch l&agrave;m cookies...</p>\r\n\r\n<p>Hello mọi người, thời tiết hơi se se&nbsp;lạnh thế n&agrave;y m&agrave; nhấm nh&aacute;p v&agrave;i c&aacute;i b&aacute;nh quy với ly c&agrave; ph&ecirc; th&igrave; ngon th&ocirc;i rồi nhỉ. Để cuối tuần th&ecirc;m th&uacute; vị,&nbsp;ad chia sẻ với mọi người c&aacute;ch l&agrave;m cookies...</p>', '2023-06-16 14:30:42', 1, 1, '2023-08-27 13:57:00'),
(2, 'CÁCH LÀM TIRAMISU SIÊU DỄ', 'cach-lam-tiramisu-sieu-de', 1, 1, 1, 0, NULL, '2023-06-16__banh-tiramisu-large.webp', '<p>Tiramisu&nbsp;l&agrave; một loại b&aacute;nh ngọt tr&aacute;ng miệng rất nổi tiếng của nước &Yacute;. C&aacute;i t&ecirc;n &quot;Tirami su&quot; được hiểu theo nghĩa l&agrave; &quot;Nhặt t&ocirc;i l&ecirc;n&quot;. B&aacute;nh l&agrave; một sự kết hợp h&ograve;a quyện giữa c&aacute;c nguy&ecirc;n liệu l&agrave;m b&aacute;nh cơ...</p>', '2023-06-16 14:31:49', 1, 1, '2023-06-16 14:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) NOT NULL,
  `atb_slug` varchar(191) NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) NOT NULL,
  `c_slug` varchar(191) NOT NULL,
  `c_avatar` varchar(191) DEFAULT NULL,
  `c_banner` varchar(191) DEFAULT NULL,
  `c_description` varchar(191) DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Đồ Ăn', 'do-an', NULL, NULL, NULL, 0, 0, 1, '2023-06-16 05:53:35', NULL),
(2, 'Đồ Uống', 'do-uong', NULL, NULL, NULL, 0, 0, 1, '2023-06-16 05:53:49', NULL),
(3, 'Đồ Ăn Vặt', 'do-an-vat', NULL, NULL, NULL, 0, 0, 1, '2023-06-16 05:53:58', NULL),
(4, 'Bánh Kem', 'banh-kem', NULL, NULL, NULL, 0, 0, 1, '2023-06-16 05:55:01', NULL),
(5, 'Tráng Miệng', 'trang-mieng', NULL, NULL, NULL, 0, 0, 1, '2023-06-16 05:55:17', NULL),
(6, 'Combo', 'combo', NULL, NULL, NULL, 0, 0, 1, '2023-06-16 08:12:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) DEFAULT NULL,
  `cmt_email` varchar(191) DEFAULT NULL,
  `cmt_content` text DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Hấp Dẫn quá', 0, 13, 0, 2, 0, 0, '2023-06-16 14:49:38', NULL),
(2, NULL, NULL, 'tru', 0, 1, 0, 4, 0, 0, '2023-09-21 08:19:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(191) DEFAULT NULL,
  `c_phone` char(11) DEFAULT NULL,
  `c_email` varchar(191) DEFAULT NULL,
  `c_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_code` varchar(191) NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT 0,
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(1, 'abc', 10, '2023-06-17 21:54:00', '2023-06-30 21:54:00', 10, '2023-06-16 14:54:36', '2023-06-16 14:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) DEFAULT NULL,
  `e_banner` varchar(191) DEFAULT NULL,
  `e_link` varchar(191) DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'Event 1', '2023-06-16__saostar-lb1u0p6cpxxelvw6.png', 'http', 1, 0, 0, 0, '2023-06-16 06:02:26', NULL),
(2, 'Event 2', '2023-06-16__in-banner-quang-cao-do-an-5-1.jpg', 'http', 0, 1, 0, 0, '2023-06-16 06:05:32', '2023-06-16 06:05:32'),
(3, 'Event 3', '2023-06-16__lotteria17.png', 'http', 0, 0, 1, 0, '2023-06-16 06:04:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exports`
--

CREATE TABLE `exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `w_order_id` int(11) NOT NULL,
  `w_price` int(11) NOT NULL DEFAULT 0,
  `w_qty` int(11) NOT NULL DEFAULT 0,
  `w_time_exports` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) NOT NULL,
  `k_slug` varchar(191) NOT NULL,
  `k_description` varchar(191) DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) NOT NULL,
  `mn_slug` varchar(191) NOT NULL,
  `mn_avatar` varchar(191) DEFAULT NULL,
  `mn_banner` varchar(191) DEFAULT NULL,
  `mn_description` varchar(191) DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin Mới Nhất', 'tin-moi-nhat', NULL, NULL, NULL, 0, 1, '2023-06-16 14:30:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 0, 1, 399000, '2023-06-16 13:51:05', NULL),
(2, 1, 6, 0, 1, 59000, '2023-06-16 13:51:05', NULL),
(3, 1, 1, 0, 1, 499000, '2023-06-16 13:51:05', NULL),
(4, 1, 10, 0, 1, 25000, '2023-06-16 13:51:05', NULL),
(5, 2, 13, 11, 2, 141510, '2023-06-16 14:50:45', NULL),
(6, 2, 7, 0, 2, 399000, '2023-06-16 14:50:45', NULL),
(7, 3, 8, 10, 2, 197100, '2023-08-27 13:58:10', NULL),
(8, 4, 1, 0, 1, 499000, '2023-09-17 10:28:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_histories`
--

CREATE TABLE `pay_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `ph_code` varchar(191) NOT NULL,
  `ph_user_id` int(10) UNSIGNED NOT NULL,
  `ph_credit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_debit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_meta_detail` text DEFAULT NULL,
  `ph_status` tinyint(4) NOT NULL DEFAULT 0,
  `ph_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `ph_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_histories`
--

INSERT INTO `pay_histories` (`id`, `ph_code`, `ph_user_id`, `ph_credit`, `ph_debit`, `ph_balance`, `ph_meta_detail`, `ph_status`, `ph_month`, `ph_year`, `created_at`, `updated_at`) VALUES
(1, 'PAYOUT1', 1, 0, 982000, 0, NULL, 1, 6, 2023, '2023-06-16 13:51:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pay_ins`
--

CREATE TABLE `pay_ins` (
  `id` int(10) UNSIGNED NOT NULL,
  `pi_user_id` int(10) UNSIGNED NOT NULL,
  `pi_admin_id` int(10) UNSIGNED NOT NULL,
  `pi_provider` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_fee` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_meta_detail` text DEFAULT NULL,
  `pi_status` tinyint(4) NOT NULL DEFAULT 0,
  `pi_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `pi_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_outs`
--

CREATE TABLE `pay_outs` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_user_id` int(10) UNSIGNED NOT NULL,
  `po_transaction_id` int(10) UNSIGNED NOT NULL,
  `po_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `po_meta_detail` text NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT 0,
  `po_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `po_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_outs`
--

INSERT INTO `pay_outs` (`id`, `po_user_id`, `po_transaction_id`, `po_money`, `po_meta_detail`, `po_status`, `po_month`, `po_year`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 982000, '', 1, 6, 2023, '2023-06-16 13:51:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) DEFAULT NULL,
  `pro_slug` varchar(191) NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_supplier_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_file` varchar(255) NOT NULL,
  `pro_avatar` varchar(191) DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext DEFAULT NULL,
  `pro_content` text DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) DEFAULT NULL,
  `pro_energy` varchar(191) DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pro_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(1, 'COMBO NHÓM C', 'combo-nhom-c', 499000, 0, 1, 1, 0, 0, '', '2023-06-16__combo-nhom-c.png', 4, 1, 1, 2, NULL, '<p>- 9 Miếng g&agrave; r&aacute;n c&oacute; xương (lựa chọn vị cay/ kh&ocirc;ng cay)</p>\r\n\r\n<p>- 1 Burger t&ocirc;m (lựa chọn vị cay/ kh&ocirc;ng cay)</p>\r\n\r\n<p>- 1 Burger Zesty Crunch (lựa chọn vị cay/ kh&ocirc;ng cay)</p>\r\n\r\n<p>- 1 B&aacute;nh cuộn g&agrave; gi&ograve;n kh&ocirc;ng xương (lựa chọn vị cay/ kh&ocirc;ng cay)</p>\r\n\r\n<p>- 1 Khoai t&acirc;y nghiền vừa</p>\r\n\r\n<p>- 1 Bắp cải trộn vừa</p>\r\n\r\n<p>- 5 Nước ngọt</p>\r\n\r\n<p>- 9 Tương ớt + 4 Tương c&agrave;</p>', 1, 1, 1, '2023-06-16 08:09:03', 19, NULL, NULL, 0, '2023-09-21 08:19:44', NULL),
(2, 'GÀ RÁN CÓ XƯƠNG – 1 MIẾNG', 'ga-ran-co-xuong-1-mieng', 39000, 0, 1, 1, 0, 0, '', '2023-06-16__ga-gion-co-xuong-1-mieng-1.png', 0, 0, 1, 0, NULL, '<p>- 1 Miếng g&agrave; r&aacute;n c&oacute; xương (lựa chọn vị cay/ kh&ocirc;ng cay)</p>\r\n\r\n<p>- 1 Tương ớt + 1 Tương c&agrave;</p>', 0, 0, 0, '2023-06-16 08:10:11', 20, NULL, NULL, 0, NULL, NULL),
(3, 'GÀ GIÒN KHÔNG XƯƠNG – 6 MIẾNG', 'ga-gion-khong-xuong-6-mieng', 89000, 0, 1, 1, 0, 0, '', '2023-06-16__ga-gion-khong-xuong-6-mieng.png', 0, 0, 1, 0, NULL, '<p>- 6 Miếng g&agrave; gi&ograve;n kh&ocirc;ng xương (lựa chọn vị cay/ kh&ocirc;ng cay)</p>\r\n\r\n<p>&nbsp;- 1 Sốt m&ugrave; tạt mật ong</p>\r\n\r\n<p>- 2 Tương ớt + 2 Tương c&agrave;</p>', 0, 0, 0, '2023-06-16 08:10:54', 20, NULL, NULL, 0, NULL, NULL),
(4, 'BURGER MEXICANA', 'burger-mexicana', 66000, 0, 1, 1, 0, 0, '', '2023-06-16__burger-mexicana.png', 0, 0, 1, 0, NULL, '<p>- Burger Mexicana ( lựa chọn vị cay/ kh&ocirc;ng cay)<br />\r\n- 1 Tương ớt + 1 Tương c&agrave;</p>', 0, 0, 0, '2023-06-16 08:11:45', 20, NULL, NULL, 0, NULL, NULL),
(5, 'BURGER TEX SUPREME', 'burger-tex-supreme', 89000, 0, 1, 1, 0, 0, '', '2023-06-16__burger-tex-supreme.png', 0, 0, 1, 0, NULL, '<p>- Burger Tex Supreme ( lựa chọn vị cay/ kh&ocirc;ng cay)</p>\r\n\r\n<p>- 1 Tương ớt + 1 Tương c&agrave;</p>', 0, 0, 0, '2023-06-16 08:12:32', 20, NULL, NULL, 0, NULL, NULL),
(6, 'COMBO TIẾT KIỆM C', 'combo-tiet-kiem-c', 59000, 0, 6, 1, 0, 0, '', '2023-06-16__combo-tiet-kiem-c.png', 1, 1, 1, 1, NULL, '<p>- 1 Burger g&agrave; cổ điển</p>\r\n\r\n<p>- 1 Khoai t&acirc;y nghiền ti&ecirc;u chuẩn</p>\r\n\r\n<p>- 1 Nước ngọt<br />\r\n- 1 Tương ớt + 1 Tương c&agrave;</p>', 0, 0, 0, '2023-06-16 08:13:46', 19, NULL, NULL, 0, '2023-06-16 08:13:53', NULL),
(7, 'COMBO NHÓM B', 'combo-nhom-b', 399000, 0, 6, 1, 0, 0, '', '2023-06-16__combo-nhom-b.png', 1, 1, 1, 2, NULL, '<p>- 7 Miếng g&agrave; r&aacute;n c&oacute; xương (lựa chọn vị cay/ kh&ocirc;ng cay)</p>\r\n\r\n<p>- 1 Burger g&agrave; cổ điển</p>\r\n\r\n<p>- 1 B&aacute;nh cuộn g&agrave; gi&ograve;n kh&ocirc;ng xương (lựa chọn vị cay/ kh&ocirc;ng cay)</p>\r\n\r\n<p>- 1 Bắp cải trộn vừa</p>\r\n\r\n<p>- 1 Khoai t&acirc;y nghiền vừa</p>\r\n\r\n<p>- 4 Nước ngọt</p>\r\n\r\n<p>- 7 Tương ớt + 3 Tương c&agrave;</p>', 0, 0, 0, '2023-06-16 08:14:58', 19, NULL, NULL, 0, '2023-06-16 08:17:05', NULL),
(8, 'CHICKEN BOX – 9 MIẾNG GÀ RÁN', 'chicken-box-9-mieng-ga-ran', 219000, 0, 1, 1, 0, 10, '', '2023-06-16__chicken-box-9pcs.png', 1, 1, 1, 1, NULL, '<p>- 9 Miếng g&agrave; r&aacute;n c&oacute; xương (lựa chọn vị cay/ kh&ocirc;ng cay)</p>\r\n\r\n<p>- 9 Tương ớt + 4 Tương c&agrave;</p>', 0, 0, 0, '2023-06-16 08:16:57', 20, NULL, NULL, 0, '2023-06-16 08:17:04', NULL),
(9, 'Milo', 'milo', 27000, 0, 2, 1, 0, 0, '', '2023-06-16__08072022-071609-lymilo.jpg', 0, 0, 1, 0, NULL, '<h4>Milo</h4>', 0, 0, 0, '2023-06-16 08:21:52', 20, NULL, NULL, 0, NULL, NULL),
(10, 'Coca Cola', 'coca-cola', 25000, 0, 2, 1, 0, 0, '', '2023-06-16__08072022-080645-coca.png', 2, 0, 1, 1, NULL, '<p>Coca</p>', 0, 0, 0, '2023-06-16 08:22:50', 19, NULL, NULL, 0, NULL, NULL),
(11, 'Sprite', 'sprite', 27000, 0, 2, 1, 0, 2, '', '2023-06-16__08072022-064309-sprite.jpg', 1, 0, 1, 0, NULL, '<p>Sprite</p>', 0, 0, 0, '2023-06-16 08:23:22', 20, NULL, NULL, 0, NULL, NULL),
(12, 'Fanta', 'fanta', 25000, 0, 2, 1, 0, 0, '', '2023-06-16__08072022-065051-fanta.jpg', 0, 0, 1, 0, NULL, '<h4>Fanta</h4>', 0, 0, 0, '2023-06-16 08:24:07', 20, NULL, NULL, 0, NULL, NULL),
(13, 'Combo KPop độc quyền', 'combo-kpop-doc-quyen', 159000, 0, 6, 1, 0, 11, '', '2023-06-16__viber-image-20230405-151120105.jpg', 1, 0, 1, 1, NULL, '<h4>Combo KPop độc quyền</h4>', 1, 5, 5, '2023-06-16 08:25:29', 20, NULL, NULL, 0, '2023-06-16 14:49:48', NULL),
(14, 'Gà Rán Kèm Coca', 'ga-ran-kem-coca', 189000, 0, 2, 1, 0, 0, '', '2023-06-16__tai-xuong-2.jpg', 0, 0, 1, 0, NULL, '<p>G&agrave;n R&aacute;n</p>\r\n\r\n<p>Coca</p>', 0, 0, 0, '2023-06-16 14:43:53', 20, NULL, NULL, 0, NULL, NULL),
(15, 'Product 10', 'product-10', 270000, 0, 1, 1, 0, 0, '', '2023-06-16__chicken-box-9pcs.png', 1, 0, 1, 0, NULL, '<p>HSHSHHHHHHHHHHHH</p>', 0, 0, 0, '2023-06-16 14:54:06', 20, NULL, NULL, 0, '2023-06-16 14:54:12', NULL),
(16, 'Bún chả', 'bun-cha', 65000, 0, 1, 1, 0, 5, '', '2023-08-28__bun-cha-ca.webp', 1, 0, 1, 0, NULL, '<p>B&uacute;n chả si&ecirc;u ngon</p>', 0, 0, 0, '2023-08-28 13:46:56', 20, NULL, NULL, 0, '2023-08-28 13:47:29', NULL),
(17, 'cơm rang dưa bò', 'com-rang-dua-bo', 90000, 0, 1, 2, 0, 15, '', '2023-08-28__com-chien.jpeg', 0, 0, 1, 0, NULL, '<p>Cơm rang dưa b&ograve; hấp dẫn&nbsp;</p>', 0, 0, 0, '2023-08-28 13:52:27', 12, NULL, NULL, 0, NULL, NULL),
(18, 'Bánh que mix', 'banh-que-mix', 12000, 0, 3, 3, 0, 0, '', '2023-08-28__banh-que-mix-vi-ot-cay-goi-60g-202202241451488080-1edfb2e065914762932f65bc1748b7e4-1024x1024.webp', 0, 0, 1, 0, NULL, '<p>Que cay vị ớt si&ecirc;u ngon</p>', 0, 0, 0, '2023-08-28 13:56:26', 12, NULL, NULL, 0, NULL, NULL),
(19, 'khô gà', 'kho-ga', 23000, 0, 3, 3, 0, 10, '', '2023-08-28__kho-ga-la-chanh-xe-cay-3.jpg', 1, 0, 1, 0, NULL, '<p>kh&ocirc; g&agrave; l&aacute; chanh vị cay</p>', 0, 0, 0, '2023-08-28 13:59:28', 22, NULL, NULL, 0, NULL, NULL),
(20, 'Cơm cháy', 'com-chay', 24000, 0, 3, 3, 0, 15, '', '2023-08-28__comchay.jpg', 0, 0, 1, 0, NULL, '<p>Cơm ch&aacute;y nhiều ruốc</p>', 0, 0, 0, '2023-08-28 14:00:53', 23, NULL, NULL, 0, NULL, NULL),
(21, 'Cá viên chiên', 'ca-vien-chien', 10000, 0, 3, 3, 0, 0, '', '2023-08-28__tu-lam-ca-vien-chien-sach-ngon-an-toan-tai-nha.jpg', 0, 0, 1, 0, NULL, '<p>c&aacute; vi&ecirc;n hấp dẫn</p>', 0, 0, 0, '2023-08-28 14:03:33', 23, NULL, NULL, 0, NULL, NULL),
(22, 'snack bắp', 'snack-bap', 7000, 0, 3, 3, 0, 0, '', '2023-08-28__bao-bi-bim-bim-1671192247-copy.jpg', 0, 0, 1, 0, NULL, '<p>bim bim vị bắp</p>', 0, 0, 0, '2023-08-28 14:06:18', 50, NULL, NULL, 0, NULL, NULL),
(23, 'Bánh kem dâu', 'banh-kem-dau', 37000, 0, 4, 1, 0, 3, '', '2023-08-28__banhdau.png', 0, 0, 1, 0, NULL, '<p>b&aacute;nh kem vị d&acirc;u</p>', 0, 0, 0, '2023-08-28 14:10:30', 13, NULL, NULL, 0, NULL, NULL),
(24, 'Bánh kem socola', 'banh-kem-socola', 52000, 0, 4, 2, 0, 0, '', '2023-08-28__mau-banh-kem-socola-dep-banhkem360-1.jpg', 0, 0, 1, 0, NULL, '<p>B&aacute;nh kem phủ socola</p>', 0, 0, 0, '2023-08-28 14:12:14', 23, NULL, NULL, 0, '2023-08-28 14:12:56', NULL),
(25, 'Bánh oreo', 'banh-oreo', 74000, 0, 4, 2, 0, 7, '', '2023-08-28__62504c3af1f5787ae85c15aad614649belove-beyond-personal-gift-platform.webp', 1, 0, 1, 0, NULL, '<p>B&aacute;nh kem c&oacute; oreo</p>', 0, 0, 0, '2023-08-28 14:15:23', 12, NULL, NULL, 0, NULL, NULL),
(26, 'Bánh việt quất', 'banh-viet-quat', 87000, 0, 4, 1, 0, 0, '', '2023-08-28__viet.jpg', 0, 0, 1, 0, NULL, '<p>b&aacute;nh vị việt quất</p>', 0, 0, 0, '2023-08-28 14:20:09', 7, NULL, NULL, 0, NULL, NULL),
(27, 'Bánh cheese', 'banh-cheese', 92000, 0, 4, 2, 0, 7, '', '2023-08-28__cheese-chanh-day-2png.webp', 0, 0, 1, 0, NULL, '<p>B&aacute;nh ph&ocirc; mai</p>', 0, 0, 0, '2023-08-28 14:20:57', 6, NULL, NULL, 0, NULL, NULL),
(28, 'Dưa hấu', 'dua-hau', 22000, 0, 5, 2, 0, 0, '', '2023-08-28__dua-hau-long-an-01-800800.jpg', 0, 0, 1, 0, NULL, '<p>Dưa hấu ngọt m&aacute;t</p>', 0, 0, 0, '2023-08-28 14:24:11', 145, NULL, NULL, 0, NULL, NULL),
(29, 'Kem ốc quế', 'kem-oc-que', 12000, 0, 5, 2, 0, 2, '', '2023-08-28__kemoc.webp', 0, 0, 1, 0, NULL, '<p>Kem ốc quế nhiều vị</p>', 0, 0, 0, '2023-08-28 14:26:35', 28, NULL, NULL, 0, NULL, NULL),
(30, 'Dâu tây', 'dau-tay', 31000, 0, 5, 2, 0, 8, '', '2023-08-28__dau-tay-da-lat.jpg', 0, 0, 1, 0, NULL, '<p>D&acirc;u t&acirc;y ngọt thanh</p>', 0, 0, 0, '2023-08-28 14:28:03', 112, NULL, NULL, 0, NULL, NULL),
(31, 'Nho', 'nho', 42000, 0, 5, 2, 0, 0, '', '2023-08-28__nho-do-my.webp', 0, 0, 1, 0, NULL, '<p>Nho tươi si&ecirc;u ngon</p>', 0, 0, 0, '2023-08-28 14:30:20', 81, NULL, NULL, 0, NULL, NULL),
(32, 'pessi', 'pessi', 12000, 0, 2, 2, 0, 0, '', '2023-08-28__pessi.jpg', 0, 0, 1, 0, NULL, '<p>pessi m&aacute;t lạnh</p>', 0, 0, 0, '2023-08-28 14:33:34', 68, NULL, NULL, 0, NULL, NULL),
(33, 'Trà chanh c2', 'tra-chanh-c2', 8000, 0, 2, 2, 0, 0, '', '2023-08-28__nuoc-c2-huong-chanh-tra-xanh-500-ml.jpg', 0, 0, 1, 0, NULL, '<p>Nước tr&agrave; xanh ngon</p>', 0, 0, 0, '2023-08-28 14:35:30', 132, NULL, NULL, 0, NULL, NULL),
(34, 'Trà sữa', 'tra-sua', 17000, 0, 5, 2, 0, 6, '', '2023-08-28__tra-sua-o-nha-trang-1.jpg', 0, 0, 1, 0, NULL, '<p>Tr&agrave; sữa tr&acirc;n ch&acirc;u</p>', 0, 0, 0, '2023-08-28 14:37:23', 167, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) DEFAULT NULL,
  `pi_slug` varchar(191) DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(1, 2, 13, 5, 0, 'OKKKK', '2023-06-16 14:49:48', '2023-06-16 14:49:48'),
(2, 4, 1, 1, 0, 'sản phẩm ngon', '2023-09-21 08:19:44', '2023-09-21 08:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) DEFAULT NULL,
  `sd_link` varchar(191) DEFAULT NULL,
  `sd_image` varchar(191) DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Slide 1', 'https://www.google.com/', '2023-06-16__1600w-ytqws2el8tm.webp', 1, 1, 0, '2023-06-16 13:57:58', '2023-06-16 13:57:58'),
(2, 'Slide 2', 'https://www.google.com/', '2023-06-16__1600w-d5j43wwumta.webp', 1, 1, 0, '2023-06-16 13:58:42', '2023-06-16 13:58:42'),
(3, 'Slide 3', 'https://www.google.com/', '2023-06-16__photo-1-16539995253401902775584-1653999634861-16539996349751815058825.webp', 1, 1, 0, '2023-06-16 06:01:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `provider` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) DEFAULT NULL,
  `s_slug` varchar(191) DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(191) DEFAULT NULL,
  `s_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng Dẫn Mua Hàng', NULL, 1, NULL, '<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>', '2023-06-16 14:55:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_name` varchar(191) DEFAULT NULL,
  `sl_phone` varchar(191) DEFAULT NULL,
  `sl_email` varchar(191) DEFAULT NULL,
  `sl_address` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(1, 'Food trong truong', '0384395445', 'truongnguyen17072001@gmail.com', 'Ba Vì, Hà Nội', '2023-06-16 08:08:23', '2023-08-22 13:27:17'),
(2, 'fooddrink', '18282137', 'nguyenvana@gmail.com', 'Hà Nội', '2023-08-28 13:44:24', NULL),
(3, 'fooddoanvat', '124523', 'doanvat@gmail.com', 'tp.HCM', '2023-08-28 13:45:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_admin_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) DEFAULT NULL,
  `tst_email` varchar(191) DEFAULT NULL,
  `tst_phone` varchar(191) DEFAULT NULL,
  `tst_address` varchar(191) DEFAULT NULL,
  `tst_note` varchar(191) DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 982000, 'Nguyễn Văn A', 'test@gmail.com', '0987654321', 'Pasteur Hồ Chí Minh', 'OK', 3, 2, '2023-06-16 13:51:05', '2023-06-16 13:51:30'),
(2, 2, 0, 1081020, 'Nguyễn Thành Trung', 'nguyenthanhtrung@gmail.com', '0989275330', '55A Điện Biên Phủ TP Hồ Chí Minh', 'Đóng gói kỹ', 3, 2, '2023-06-16 14:50:45', '2023-06-16 14:51:45'),
(3, 3, 0, 394200, 'nguyễn trọng trường', 'truongnguyen1772001@gmail.com', '0364309353', 'ha noi', NULL, 3, 2, '2023-08-27 13:58:10', '2023-08-27 14:00:31'),
(4, 4, 0, 499000, 'nguyenthia', 'a@gmail.com', '12232', 'ha noi', NULL, -1, 2, '2023-09-17 10:28:46', '2023-09-23 06:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `log_login` text DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn A', 'test@gmail.com', NULL, '$2y$10$UttMqApuzcU2lSiFRyaej.ISSlsvdY6O4/.REDSLcFERES5OUpjcO', '0987654321', -982000, NULL, 0, NULL, NULL, NULL, '2023-06-16 13:50:26', NULL),
(2, 'Nguyễn Thành Trung', 'nguyenthanhtrung@gmail.com', NULL, '$2y$10$H4aNlPd7JEN3vKhwDdku8OITZ/ky7.AP1kQLJcCIsb7Tkft7hFP8y', '0989275330', 0, NULL, 1, '225 Điện Biên Phủ Bình Thạnh HCM', '2023-06-16__avatar5.png', NULL, '2023-06-16 14:48:33', '2023-06-16 14:52:16'),
(3, 'nguyễn trọng trường', 'truongnguyen1772001@gmail.com', NULL, '$2y$10$syuetRdjvD4O1eIIeERjfecdTMAYcPFyvojxP61.JBN/eY4y3XSdS', '0364309353', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-08-27T13:54:45.516823Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-05T13:27:03.399360Z\"}]', 0, NULL, NULL, NULL, '2023-08-27 13:54:19', NULL),
(4, 'nguyenthia', 'a@gmail.com', NULL, '$2y$10$4EkEq/ltLljrUEWTfm351OP2toT05nRxPHCAb9L.lPNns0eyIr6LK', '12232', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-21T08:01:07.867186Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-21T09:42:43.120956Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-23T06:51:37.308930Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-23T07:24:57.496167Z\"}]', 1, NULL, NULL, NULL, '2023-09-17 10:28:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(4, 10, 4),
(1, 13, 2),
(3, 15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `w_product_id` int(11) NOT NULL,
  `w_price` int(11) NOT NULL DEFAULT 0,
  `w_qty` int(11) NOT NULL DEFAULT 0,
  `w_time_warehouse` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_w_order_id_index` (`w_order_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  ADD KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  ADD KEY `pay_histories_ph_user_id_index` (`ph_user_id`);

--
-- Indexes for table `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  ADD KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`);

--
-- Indexes for table `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_outs_po_user_id_index` (`po_user_id`),
  ADD KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_w_product_id_index` (`w_product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
