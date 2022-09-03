-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2022 at 10:46 AM
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
-- Database: `curierman`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$eEqw4WDEPYdpgxKr6W4qz.P69EQkL3Vblwa2ZnAFrOMeZjAiZUavW', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `image`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhanondi', 'n7uSv88YhmwUMZhM1K7bYUPcH6Or8QIw6WBmKzRv.png', 'dhanmondi@gmail.com', '01834526000', 'Dhanmondi-32', 'Active', '2022-08-22 11:55:27', '2022-08-22 11:55:27'),
(2, 'Mirpur', 'bCCif7fYikkVFYnWXIlYshxCNZFR6x1OzkfKx2p1.png', 'mirpur@gmail.com', '01303560087', 'mirpue-1, dhaka\r\n62/1', 'Active', '2022-08-22 11:56:31', '2022-08-22 11:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `courier_infos`
--

CREATE TABLE `courier_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_branch_id` int(10) UNSIGNED NOT NULL,
  `sender_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` text COLLATE utf8mb4_unicode_ci,
  `receiver_branch_id` int(10) UNSIGNED NOT NULL,
  `receiver_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_address` text COLLATE utf8mb4_unicode_ci,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Delivered','Received') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Delivered',
  `sender_branch_staff_id` int(10) UNSIGNED DEFAULT NULL,
  `receiver_branch_staff_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_receiver_id` int(11) DEFAULT NULL,
  `payment_branch_id` int(11) DEFAULT NULL,
  `payment_status` enum('Unpaid','Paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unpaid',
  `payment_method_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_balance` double(8,2) DEFAULT NULL,
  `payment_transaction_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courier_infos`
--

INSERT INTO `courier_infos` (`id`, `sender_branch_id`, `sender_name`, `sender_email`, `sender_phone`, `sender_address`, `receiver_branch_id`, `receiver_name`, `receiver_email`, `receiver_phone`, `receiver_address`, `invoice_id`, `status`, `sender_branch_staff_id`, `receiver_branch_staff_id`, `payment_receiver_id`, `payment_branch_id`, `payment_status`, `payment_method_name`, `payment_transaction_id`, `payment_date`, `payment_balance`, `payment_transaction_image`, `payment_note`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'Shuvo', 'shuvo@gmail.com', '01303560087', 'dhanondi-32', 2, 'Anik', 'anik@gmail.com', '01622007650', 'mirpir-1', '1', 'Received', 3, NULL, 3, 1, 'Paid', NULL, NULL, '2022-09-03', 300.00, NULL, NULL, 'VMLTJAJC7MKE', '2022-09-02 23:10:02', '2022-09-03 01:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `courier_product_infos`
--

CREATE TABLE `courier_product_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `courier_type` int(11) NOT NULL,
  `courier_quantity` int(11) NOT NULL,
  `courier_fee` double(8,2) NOT NULL,
  `courier_details` text COLLATE utf8mb4_unicode_ci,
  `courier_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courier_info_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courier_product_infos`
--

INSERT INTO `courier_product_infos` (`id`, `courier_type`, `courier_quantity`, `courier_fee`, `courier_details`, `courier_code`, `courier_info_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 200.00, NULL, 'VMLTJAJC7MKE', 1, '2022-09-02 23:10:02', '2022-09-02 23:10:02'),
(2, 1, 1, 100.00, NULL, 'VMLTJAJC7MKE', 1, '2022-09-02 23:10:02', '2022-09-02 23:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `courier_types`
--

CREATE TABLE `courier_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courier_types`
--

INSERT INTO `courier_types` (`id`, `unit_id`, `price`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 100.00, 'A', 'Active', '2022-09-02 22:59:25', '2022-09-02 22:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_subtitle` text COLLATE utf8mb4_unicode_ci,
  `testimonial_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_details` text COLLATE utf8mb4_unicode_ci,
  `search_courier_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_courier_details` text COLLATE utf8mb4_unicode_ci,
  `aboutus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus_details` text COLLATE utf8mb4_unicode_ci,
  `gallery_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_details` text COLLATE utf8mb4_unicode_ci,
  `service_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_details` text COLLATE utf8mb4_unicode_ci,
  `footer_text` text COLLATE utf8mb4_unicode_ci,
  `contact_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address` text COLLATE utf8mb4_unicode_ci,
  `contact_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `color_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_notification` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_sent_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` longtext COLLATE utf8mb4_unicode_ci,
  `sms_api` text COLLATE utf8mb4_unicode_ci,
  `departure_courier` int(11) DEFAULT NULL,
  `upcoming_courier` int(11) DEFAULT NULL,
  `total_deliver` int(11) DEFAULT NULL,
  `about_us_quote_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us_quote_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us_quote_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci,
  `sms_notification` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `registration_verification` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verification` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sms_verification` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `base_currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `title`, `header_title`, `header_subtitle`, `testimonial_title`, `testimonial_details`, `search_courier_title`, `search_courier_details`, `aboutus_keyword`, `aboutus_title`, `aboutus_details`, `gallery_title`, `gallery_details`, `service_title`, `service_details`, `footer_text`, `contact_title`, `contact_address`, `contact_phone`, `contact_email`, `address`, `color_code`, `email_notification`, `email_sent_from`, `email_template`, `sms_api`, `departure_courier`, `upcoming_courier`, `total_deliver`, `about_us_quote_one`, `about_us_quote_two`, `about_us_quote_three`, `map`, `sms_notification`, `registration_verification`, `email_verification`, `sms_verification`, `base_currency`, `base_currency_symbol`, `created_at`, `updated_at`) VALUES
(1, 'CourierManagement', 'Fastest Courier Service', 'We provide the fastest service through our courier management. Courier or Parcel Sender will send from a branch. Receiver will receive from destination branch set on sending !', 'Testimonial', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been', 'Search Your Courier', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been', NULL, 'About Us', '<div align=\\\"justify\\\">Lorem ipsum dolor sit amet, \r\n            consectetur adipiscing elit, sed do eiusmod \\r\\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \\r\\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \\r\\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \\r\\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \\r\\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \\r\\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</div><div align=\\\"left\\\"><div><br></div><ul><li><font size=\\\"4\\\"><b>FIRST DELIVERY&nbsp;</b></font></li></ul><div><br></div><ul><li><font size=\\\"4\\\"><b>SECURED SERVICE&nbsp;</b></font></li></ul><div><br></div><ul><li><font size=\\\"4\\\"><b>WORLD WIDE SHIPPING&nbsp;</b></font></li></ul><div><br></div></div>', 'Photo Gallery', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been', 'WHY WE BEST', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been', '© 2022 - Copyright All rights reserved.', 'Contact Us', 'Dhanmondi-32,Shukrabad', '01303560087', 'admin@example.com', NULL, 'courier101', '0', 'admin@example.com', '<br><br>\\r\\n	<div class=\\\"contents\\\" style=\\\"max-width: 600px; margin: 0 auto; border: 2px solid #000036;\\\">\\r\\n\\r\\n<div class=\\\"header\\\" style=\\\"background-color: #000036; padding: 15px; text-align: center;\\\">\\r\\n	<div class=\\\"logo\\\" style=\\\"width: 260px;text-align: center; margin: 0 auto;\\\">\\r\\n		<img src=\\\"https://i.imgur.com/4NN55uD.png\\\" alt=\\\"COURIERMAN\\\" style=\\\"width: 100%;\\\">\\r\\n	</div>\\r\\n</div>\\r\\n\\r\\n<div class=\\\"mailtext\\\" style=\\\"padding: 30px 15px; background-color: #f0f8ff; font-family: \'Open Sans\', sans-serif; font-size: 16px; line-height: 26px;\\\">\\r\\n\\r\\nHi {{name}},\\r\\n<br><br>\\r\\n{{message}}\\r\\n<br><br>\\r\\n<br><br>\\r\\n</div>\\r\\n\\r\\n<div class=\\\"footer\\\" style=\\\"background-color: #000036; padding: 15px; text-align: center;\\\">\\r\\n<a href=\\\"https://courierman.com/\\\" style=\\\"	background-color: #2ecc71;\\r\\n	padding: 10px 0;\\r\\n	margin: 10px;\\r\\n	display: inline-block;\\r\\n	width: 100px;\\r\\n	text-transform: uppercase;\\r\\n	text-decoration: none;\\r\\n	color: #ffff;\\r\\n	font-weight: 600;\\r\\n	border-radius: 4px;\\\">Website</a>\\r\\n<a href=\\\"https://courierman.com/services\\\" style=\\\"	background-color: #2ecc71;\\r\\n	padding: 10px 0;\\r\\n	margin: 10px;\\r\\n	display: inline-block;\\r\\n	width: 100px;\\r\\n	text-transform: uppercase;\\r\\n	text-decoration: none;\\r\\n	color: #ffff;\\r\\n	font-weight: 600;\\r\\n	border-radius: 4px;\\\">Products</a>\\r\\n<a href=\\\"https://courierman.com/contact\\\" style=\\\"	background-color: #2ecc71;\\r\\n	padding: 10px 0;\\r\\n	margin: 10px;\\r\\n	display: inline-block;\\r\\n	width: 100px;\\r\\n	text-transform: uppercase;\\r\\n	text-decoration: none;\\r\\n	color: #ffff;\\r\\n	font-weight: 600;\\r\\n	border-radius: 4px;\\\">Contact</a>\\r\\n</div>\\r\\n\\r\\n\\r\\n<div class=\\\"footer\\\" style=\\\"background-color: #000036; padding: 15px; text-align: center; border-top: 1px solid rgba(255, 255, 255, 0.2);\\\">\\r\\n\\r\\n<strong style=\\\"color: #fff;\\\">© 2020 COURIERMAN. All Rights Reserved.</strong>\\r\\n<p style=\\\"color: #ddd;\\\">CourierMan is not partnered with any other \\r\\ncompany or person. We work as a team and do not have any reseller, \\r\\ndistributor or partner!</p>\\r\\n\\r\\n\\r\\n</div>\\r\\n\\r\\n	</div>\\r\\n<br><br>', 'https://api.infobip.com/api/v3/sendsms/plain?user=****&amp;password=*****&amp;sender=CourierMan&amp;SMSText={{message}}&amp;GSM={{number}}&amp;type=longSMS', 69, 800, 3658, 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', '<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d241317.11609823277!2d72.74109995709657!3d19.08219783958221!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c6306644edc1%3A0x5da4ed8f8d648c69!2sMumbai%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1602062932351!5m2!1sen!2sin\\\" width=\\\"625\\\" height=\\\"300\\\" frameborder=\\\"0\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" aria-hidden=\\\"false\\\" tabindex=\\\"0\\\"></iframe>', '0', '0', '0', '0', 'TAKA', 'tk.', '2020-10-07 04:23:05', '2022-09-03 02:30:31');

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
(1, '2013_01_04_092658_create_branches_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_12_08_065013_create_admins_table', 1),
(5, '2018_12_08_100407_create_general_settings_table', 1),
(6, '2018_12_11_063901_create_visitor_messages_table', 1),
(7, '2018_12_22_070119_create_socials_table', 1),
(8, '2019_01_05_083743_create_units_table', 1),
(9, '2019_01_05_085106_create_courier_types_table', 1),
(10, '2019_01_05_104055_create_courier_infos_table', 1),
(11, '2019_01_06_084324_create_courier_product_infos_table', 1),
(12, '2019_02_26_142454_create_faqs_table', 1),
(13, '2019_03_04_152322_create_services_table', 1),
(14, '2019_03_04_152600_create_testimonials_table', 1),
(15, '2020_10_07_102725_add_missing_columns_general_settings', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kg', 'Active', '2022-08-22 11:51:22', '2022-08-22 11:51:22'),
(2, 'Pcs', 'Active', '2022-08-22 11:52:24', '2022-08-22 11:52:24'),
(3, '1box', 'Active', '2022-08-22 11:52:38', '2022-08-22 11:52:38'),
(4, 'Set', 'Active', '2022-08-22 11:52:46', '2022-08-22 11:52:46'),
(5, 'Doz', 'Active', '2022-08-22 11:52:57', '2022-08-22 11:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Manager','Staff') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `branch_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `image`, `email_verified_at`, `password`, `type`, `status`, `branch_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dhanmondi', 'dhanmondi@gmail.com', '01303560087', NULL, NULL, '$2y$10$eEqw4WDEPYdpgxKr6W4qz.P69EQkL3Vblwa2ZnAFrOMeZjAiZUavW', 'Manager', 'Active', 1, 'IuIXmmoWOYGj2n1s6svEY5IAPoTKKW1CSSpM4muySNH6cFxULrNhRMkomv7l', '2022-08-22 11:57:39', '2022-08-22 11:57:39'),
(2, 'Abu Rahan', 'mirpur@gmail.com', '01834526719', NULL, NULL, '$2y$10$eEqw4WDEPYdpgxKr6W4qz.P69EQkL3Vblwa2ZnAFrOMeZjAiZUavW', 'Manager', 'Active', 2, NULL, '2022-08-22 11:58:06', '2022-08-22 11:58:06'),
(3, 'MD. SHAHADAT HOSSEN', 'staff@gmail.com', '01303560087', NULL, NULL, '$2y$10$eEqw4WDEPYdpgxKr6W4qz.P69EQkL3Vblwa2ZnAFrOMeZjAiZUavW', 'Staff', 'Active', 1, 'o1sQwz8Gnq3ZKwYVTg2Mve3rmQGS3Z1bqqVJWpHFyG6riAGPaOUeELNa99T1', '2022-08-22 12:04:49', '2022-08-22 12:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_messages`
--

CREATE TABLE `visitor_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor_messages`
--

INSERT INTO `visitor_messages` (`id`, `name`, `email`, `phone`, `messages`, `created_at`, `updated_at`) VALUES
(1, 'Joyonto Kumar', 'shuvosarker472@gmail.com', '01303560087', 'dddddddddddd', '2022-09-03 02:09:43', '2022-09-03 02:09:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courier_infos`
--
ALTER TABLE `courier_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courier_infos_sender_branch_id_index` (`sender_branch_id`),
  ADD KEY `courier_infos_receiver_branch_id_index` (`receiver_branch_id`),
  ADD KEY `courier_infos_sender_branch_staff_id_index` (`sender_branch_staff_id`),
  ADD KEY `courier_infos_receiver_branch_staff_id_index` (`receiver_branch_staff_id`);

--
-- Indexes for table `courier_product_infos`
--
ALTER TABLE `courier_product_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courier_product_infos_courier_info_id_index` (`courier_info_id`);

--
-- Indexes for table `courier_types`
--
ALTER TABLE `courier_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courier_types_unit_id_index` (`unit_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_branch_id_index` (`branch_id`);

--
-- Indexes for table `visitor_messages`
--
ALTER TABLE `visitor_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courier_infos`
--
ALTER TABLE `courier_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courier_product_infos`
--
ALTER TABLE `courier_product_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courier_types`
--
ALTER TABLE `courier_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visitor_messages`
--
ALTER TABLE `visitor_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courier_infos`
--
ALTER TABLE `courier_infos`
  ADD CONSTRAINT `courier_infos_receiver_branch_id_foreign` FOREIGN KEY (`receiver_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `courier_infos_receiver_branch_staff_id_foreign` FOREIGN KEY (`receiver_branch_staff_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `courier_infos_sender_branch_id_foreign` FOREIGN KEY (`sender_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `courier_infos_sender_branch_staff_id_foreign` FOREIGN KEY (`sender_branch_staff_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `courier_product_infos`
--
ALTER TABLE `courier_product_infos`
  ADD CONSTRAINT `courier_product_infos_courier_info_id_foreign` FOREIGN KEY (`courier_info_id`) REFERENCES `courier_infos` (`id`);

--
-- Constraints for table `courier_types`
--
ALTER TABLE `courier_types`
  ADD CONSTRAINT `courier_types_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
