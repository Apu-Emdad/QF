-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2023 at 06:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_doc_archive`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skil_id` int(11) DEFAULT NULL,
  `content_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gymnastic_talent_show` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elimination_running` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `address`, `mobile`, `role`, `image`, `status`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Md. Mamun', 'admin', 'admin@gmail.com', NULL, '01623994640', '1', NULL, 1, '$2y$10$upxqxuyv01IJyAwWaMsO7.TMOrCzZSMV4ekylRiaOpZ09fn2/drkm', '2021-03-24 02:38:06', '2021-11-30 09:39:55'),
(2, 'test', 'test', NULL, NULL, '1', '1', NULL, NULL, '$2y$10$y6fXmqC8EI7ooaoHaTIPFegUeWzIuei2q9hg2hZJnZCCXvqcbtC6K', '2021-10-18 01:56:35', '2021-10-18 02:15:41'),
(3, 'Manager', 'manager', NULL, NULL, '01623994640', '3', NULL, 1, '$2y$10$sk6ClJeep1kj/iAw/4xuneEXihdOcRrkk3SBbHNNtam2Ms4DBNu8K', '2021-10-25 23:41:50', '2021-10-25 23:41:55'),
(4, 'user1', 'user1', NULL, NULL, '01623994640', '4', 'xpUx4mZlEHNn88ja3bsCOnV2ut0sQ44ou9Fi4Cev.jpg', 1, '$2y$10$3DkHNxenIbR4whgVK8pUh.UqTChXibQVvkf1qaIzBeHAmpLbqOJQ6', '2022-01-31 04:30:19', '2022-01-31 04:31:13'),
(5, 'ecw', 'ecw', NULL, 'Dhaka', NULL, '4', NULL, 1, '$2y$10$U03WqeE8PGIalY8m1bO/pO9gTrc8BVabOWFD7FQVkbkjQzyGrq3Uy', '2023-01-09 04:08:12', '2023-01-09 04:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `status`, `language`, `uuid`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'c', 1, 'en', 1147483707, 1, 1, '2023-01-08 00:52:09', '2023-01-08 01:03:36'),
(2, 'c', 1, 'my', 1147483707, 1, 1, '2023-01-08 00:52:09', '2023-01-08 01:03:36'),
(3, 'a', 1, 'en', 1147483708, 1, 1, '2023-01-08 00:52:24', '2023-01-08 03:27:42'),
(4, 'b', 1, 'my', 1147483708, 1, 1, '2023-01-08 00:52:24', '2023-01-08 00:52:24'),
(11, 'album en', 1, 'en', 1147483730, 1, 1, '2023-01-19 00:47:40', '2023-01-19 00:47:40'),
(12, 'album my', 1, 'my', 1147483730, 1, 1, '2023-01-19 00:47:40', '2023-01-19 00:47:40'),
(13, 'album update enalbum update2 en', 1, 'en', 1147483731, 1, 1, '2023-01-19 00:47:55', '2023-01-19 00:48:01'),
(14, 'album update myalbum update2 my', 1, 'my', 1147483731, 1, 1, '2023-01-19 00:47:55', '2023-01-19 00:48:01'),
(15, 'album update en', 1, 'en', 1147483737, 1, 1, '2023-01-19 00:54:39', '2023-01-19 00:54:39'),
(16, 'album update my', 1, 'my', 1147483737, 1, 1, '2023-01-19 00:54:39', '2023-01-19 00:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `audio_music`
--

CREATE TABLE `audio_music` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `activision_time` decimal(5,2) DEFAULT NULL,
  `duration_time` decimal(5,2) DEFAULT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audio_music`
--

INSERT INTO `audio_music` (`id`, `uuid`, `title`, `description`, `published_at`, `activision_time`, `duration_time`, `ip`, `image`, `audio`, `file_type`, `file_size`, `language`, `status`, `order_by`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1147483725, 'a', NULL, '2023-01-09 12:53:43', NULL, NULL, '127.0.0.1', 'XPA3lnuPjmjsTaoqCtgyEDdizXvCoEKz2VcLeVKQ.jpg', '1673243783-fcd0eefa98b00c0f268d71f7c5d350b0.mp3', 'mp3', 1890219, 'en', 1, 1, NULL, NULL, NULL, NULL),
(2, 1147483725, 'a', NULL, '2023-01-09 12:53:43', NULL, NULL, '127.0.0.1', 'CVkbyMbtII0bundabZEbkayfmYGCA6vYoFZpuLCz.jpg', '1673243783-fcd0eefa98b00c0f268d71f7c5d350b0.mp3', 'mp3', 1890219, 'my', 1, 1, NULL, NULL, NULL, NULL),
(3, 1147483726, 'b', NULL, '2023-01-09 12:53:06', NULL, NULL, '127.0.0.1', 'ok02wxuQZAwFi5IkZn5NHhvGES2ehXvMIYsLceLb.jpg', '1673247186-fcd0eefa98b00c0f268d71f7c5d350b0.mp3', 'mp3', 1890219, 'en', 1, 2, NULL, NULL, NULL, NULL),
(4, 1147483726, 'b', NULL, '2023-01-09 12:53:06', NULL, NULL, '127.0.0.1', 'IR88v7qElLcWnwW2M1qctoPmbzkGBs9Fc7g1qy8B.jpg', '1673247186-fcd0eefa98b00c0f268d71f7c5d350b0.mp3', 'mp3', 1890219, 'my', 1, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_menus`
--

CREATE TABLE `auth_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_menus`
--

INSERT INTO `auth_menus` (`id`, `parent_id`, `name`, `link`, `icon`, `order_by`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dashboard', 'dashboard.index', 'fa-home', 1, 1, '2021-04-25 13:24:30', '2021-11-07 22:56:13'),
(2, NULL, 'Settings', 'dashboard.index', NULL, 1, 1, '2021-04-25 13:25:23', '2022-01-24 22:51:29'),
(3, NULL, 'User Management', 'dashboard.index', NULL, 30, 1, '2021-04-25 13:25:55', '2021-04-25 13:25:55'),
(4, 3, 'Menu', 'menu.index', NULL, 31, 1, '2021-04-25 13:26:37', '2021-10-11 22:25:58'),
(5, 3, 'Role', 'role.index', NULL, 32, 1, '2021-04-25 13:27:10', '2021-10-11 22:26:19'),
(6, 3, 'Admin User', 'admin.index', NULL, 34, 1, '2021-04-25 13:27:41', '2021-10-11 22:25:46'),
(7, 8, 'Banner', 'banner.index', NULL, 44, 1, '2021-04-26 05:57:49', '2021-12-01 22:31:25'),
(8, NULL, 'Content', 'dashboard.index', NULL, 40, 1, '2021-04-26 06:02:56', '2021-11-30 21:39:26'),
(9, 2, 'Division', 'division.index', NULL, 1, 1, '2021-04-26 06:04:09', '2021-10-10 23:44:42'),
(10, 8, 'Pages', 'page.index', NULL, 42, 1, '2021-04-26 06:08:35', '2021-11-30 23:21:12'),
(11, 2, 'District', 'district.index', NULL, 4, 1, '2021-04-26 06:09:08', '2021-10-11 00:16:59'),
(12, 2, 'Upazila', 'upazila.index', NULL, 5, 1, '2021-04-26 06:09:44', '2021-10-11 22:24:42'),
(13, 8, 'Page Menu', 'page.menu.index', NULL, 43, 1, '2021-04-26 06:10:01', '2021-12-01 03:26:51'),
(14, 8, 'Category', 'category.index', NULL, 6, 1, '2021-10-11 22:25:19', '2021-11-30 21:39:48'),
(15, 2, 'YouTube', 'youtube.index', NULL, 7, 1, '2021-10-20 23:25:39', '2021-10-20 23:25:39'),
(16, NULL, 'Report', 'dashboard.index', NULL, 50, 1, '2021-11-07 22:31:29', '2021-11-07 22:31:29'),
(17, 8, 'Gallery', 'gallery.index', NULL, 46, 1, '2021-11-07 22:55:52', '2022-03-14 00:26:03'),
(18, 16, 'YouTube Meta', 'report.youtubeMeta', NULL, 52, 0, '2021-11-10 00:50:04', '2022-08-02 09:34:31'),
(19, 2, 'Editor Draft', 'editorDraft.index', NULL, 10, 1, '2022-01-24 22:52:07', '2022-01-24 22:52:07'),
(26, NULL, 'Contact Message', 'contact-message.index', NULL, 80, 0, '2022-04-24 23:45:10', '2022-08-02 09:34:34'),
(27, NULL, 'Comment', 'comment.index', NULL, 90, 1, '2022-05-11 21:39:01', '2022-10-12 00:00:02'),
(29, 8, 'Event Calendar', 'event_calendar.index', NULL, 54, 1, '2022-07-06 23:15:05', '2022-08-28 21:45:13'),
(33, 8, 'Album', 'album.index', NULL, 9, 1, '2022-11-28 01:57:41', '2023-01-01 01:31:15'),
(38, 2, 'Package', 'package.index', NULL, 8, 1, '2022-12-20 21:36:06', '2022-12-20 21:36:06'),
(39, 2, 'Skill', 'skill.index', NULL, 9, 1, '2023-01-01 03:16:16', '2023-01-01 03:16:16'),
(40, 2, 'Class', 'ecwclass.index', NULL, 9, 1, '2023-01-01 03:29:08', '2023-01-01 03:29:08'),
(41, 8, 'All Resource', 'resource.index', NULL, 47, 1, '2023-01-03 03:24:46', '2023-01-03 03:24:46'),
(42, 2, 'Level', 'level.index', NULL, 11, 1, '2023-01-05 00:02:34', '2023-01-05 00:02:34'),
(43, 2, 'Audio Music', 'audio.music.index', NULL, 12, 1, '2023-01-05 00:44:08', '2023-01-05 00:44:08'),
(44, 8, 'Interactive Radio', 'interactive.radio.index', NULL, 48, 1, '2023-01-07 22:59:45', '2023-01-07 23:00:29'),
(45, 8, 'All Activity', 'activity.index', NULL, 49, 1, '2023-01-08 23:20:23', '2023-01-08 23:20:23'),
(46, 2, 'Video Content', 'video.content.index', NULL, 13, 1, '2023-01-05 00:44:08', '2023-01-05 00:44:08'),
(47, NULL, 'All Document', 'alldocument.index', 'fa fa-file', 0, 1, '2023-02-11 23:33:44', '2023-02-11 23:52:12'),
(48, NULL, 'Add Documents', 'adddocument.index', 'fa fa-file-excel-o', 0, 1, '2023-02-13 03:46:11', '2023-02-13 04:29:11'),
(49, NULL, 'My Documents', 'mydocument.index', NULL, 0, 1, '2023-02-22 04:30:06', '2023-02-22 04:30:13'),
(50, NULL, 'Manage Request', 'managerequest.index', 'fa fa-book', 0, 1, '2023-02-26 03:59:59', '2023-02-26 04:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `grid_column` int(11) DEFAULT NULL,
  `grid_row` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `type`, `image`, `path`, `description`, `language`, `url`, `order_by`, `album_id`, `uuid`, `grid_column`, `grid_row`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'About ECW MYRP', 'banner-page', 'EVW96Y4fbLllGqtH7GFMmb5oaRZOOBPhA7PiyeWz.jpg', 'EVW96Y4fbLllGqtH7GFMmb5oaRZOOBPhA7PiyeWz.jpg', 'Education Cannot Wait (ECW) is the United Nations global, billion-dollar fund for education in emergencies and protracte', 'en', NULL, NULL, NULL, 1147483727, 1, 1, 1, 1, 1, '2023-01-09 00:55:13', '2023-01-09 21:22:58'),
(2, 'ECW MYRP အကြောင်း', 'banner-page', 'GjibzGPa9jotI2scxvkFGNCBtvObtX2vTatzHmAX.jpg', 'GjibzGPa9jotI2scxvkFGNCBtvObtX2vTatzHmAX.jpg', 'Education Cannot Wait (ECW) သည် အရေးပေါ်အခြေအနေများနှင့် ကြာရှည်အကျပ်အတည်းများတွင် ပညာရေးအတွက် ကမ္ဘာ့ကုလသမဂ္ဂ၏ ကမ္ဘာလုံး', 'my', NULL, NULL, NULL, 1147483727, 1, 1, 1, 1, 1, '2023-01-09 00:55:13', '2023-01-09 21:22:58'),
(3, 'About HI MYRP', 'banner-page', 'kQ7Y11wac0Rsi3GikXITuypo2nIznX7ybEPcrhrM.jpg', 'kQ7Y11wac0Rsi3GikXITuypo2nIznX7ybEPcrhrM.jpg', 'Education Cannot Wait (ECW) is the United Nations global, billion-dollar fund for education in emergencies and protracte', 'en', NULL, NULL, NULL, 1147483728, 1, 1, 1, 1, 1, '2023-01-09 00:55:34', '2023-01-09 21:26:08'),
(4, 'HI MYRP အကြောင်း', 'banner-page', 'r5mdeJScFb2gNfCoUCUnQK0VpdAGT7lOHI5ScxS3.jpg', 'r5mdeJScFb2gNfCoUCUnQK0VpdAGT7lOHI5ScxS3.jpg', 'Education Cannot Wait (HI) သည် အရေးပေါ်အခြေအနေများနှင့် ကြာရှည်အကျပ်အတည်းများတွင် ပညာရေးအတွက် ကမ္ဘာ့ကုလသမဂ္ဂ၏ ကမ္ဘာလုံးဆ', 'my', NULL, NULL, NULL, 1147483728, 1, 1, 1, 1, 1, '2023-01-09 00:55:34', '2023-01-09 21:26:08'),
(31, 'banner en', 'banner-page', 'Mtt81JpeGVrIFcGucP7lL71WCUqLMdHdQa7XLmA5.jpg', 'Mtt81JpeGVrIFcGucP7lL71WCUqLMdHdQa7XLmA5.jpg', 'banner description en', 'en', NULL, NULL, NULL, 1147483707, 1, 1, 1, 1, 1, '2023-01-18 04:07:47', '2023-01-18 04:07:47'),
(32, 'banner my', 'banner-page', 'cSi6u4kjWYTwS4rbvmScVtiWjEO7NrdOwqJ0cUUN.jpg', 'cSi6u4kjWYTwS4rbvmScVtiWjEO7NrdOwqJ0cUUN.jpg', 'banner description my', 'my', NULL, NULL, NULL, 1147483707, 1, 1, 1, 1, 1, '2023-01-18 04:07:47', '2023-01-18 04:07:47'),
(33, 'banner update enbanner update 2 en', 'banner-home', 'mhLiHokWV7UVAoZ7Lg9WoDpCCrMgvqP1kREjJ5qe.jpg', 'mhLiHokWV7UVAoZ7Lg9WoDpCCrMgvqP1kREjJ5qe.jpg', 'banner update description enbanner update description 2 en', 'en', NULL, NULL, NULL, 1147483708, 1, 1, 1, 1, 1, '2023-01-18 04:08:03', '2023-01-18 04:08:13'),
(34, 'banner update mybanner update 2 my', 'banner-home', 'UJMvGXvDoycget9KMZq0KvYmQsdcMB9ZeEe1P3O1.jpg', 'UJMvGXvDoycget9KMZq0KvYmQsdcMB9ZeEe1P3O1.jpg', 'banner update description mybanner update description 2 my', 'my', NULL, NULL, NULL, 1147483708, 1, 1, 1, 1, 1, '2023-01-18 04:08:03', '2023-01-18 04:08:13'),
(35, 'banner update en', 'banner-home', 'Eg3wjoJ9lNIOMmDuddrC63pXhJO7Ya2fnTu9rWoe.jpg', 'Eg3wjoJ9lNIOMmDuddrC63pXhJO7Ya2fnTu9rWoe.jpg', 'banner update description en', 'en', NULL, NULL, NULL, 1147483709, 1, 1, 1, 1, 1, '2023-01-18 04:11:59', '2023-01-18 04:11:59'),
(36, 'banner update my', 'banner-home', 'vBUvOYERJIgCD2jP9nqdMYUJU50CczHziu6pZPJB.jpg', 'vBUvOYERJIgCD2jP9nqdMYUJU50CczHziu6pZPJB.jpg', 'banner update description my', 'my', NULL, NULL, NULL, 1147483709, 1, 1, 1, 1, 1, '2023-01-18 04:11:59', '2023-01-18 04:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `inline_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `banner_id`, `inline_css`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `language`, `uuid`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'en', 1147483709, NULL, NULL, NULL, NULL),
(2, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'my', 1147483709, NULL, NULL, NULL, NULL),
(3, 'b', 'b', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'en', 1147483710, NULL, NULL, NULL, NULL),
(4, 'b', 'b', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'my', 1147483710, NULL, NULL, NULL, NULL),
(11, 'category en', 'category-en', 'category description en', NULL, NULL, NULL, NULL, NULL, 1, 'en', 1147483732, NULL, NULL, NULL, NULL),
(12, 'category my', 'category-en', 'category description my', NULL, NULL, NULL, NULL, NULL, 1, 'my', 1147483732, NULL, NULL, NULL, NULL),
(13, 'category update encategory update2 en', 'category-update-en', 'category update description encategory update2 description en', NULL, NULL, NULL, NULL, NULL, 1, 'en', 1147483733, NULL, NULL, NULL, NULL),
(14, 'category update mycategory update2 my', 'category-update-en', 'category update description mycategory update2 description my', NULL, NULL, NULL, NULL, NULL, 1, 'my', 1147483733, NULL, NULL, NULL, NULL),
(15, 'category update en', 'category-update-en', 'category update description en', NULL, NULL, NULL, NULL, NULL, 1, 'en', 1147483738, NULL, NULL, NULL, NULL),
(16, 'category update my', 'category-update-en', 'category update description my', NULL, NULL, NULL, NULL, NULL, 1, 'my', 1147483738, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecw_classes`
--

CREATE TABLE `ecw_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecw_classes`
--

INSERT INTO `ecw_classes` (`id`, `name`, `details`, `language`, `status`, `uuid`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Class One', 'Class One', 'en', 1, 1147483711, NULL, NULL, '2023-01-11 00:55:06', '2023-01-11 00:55:06'),
(2, 'အတန်း တစ်ခု', 'အတန်း တစ်ခု', 'my', 1, 1147483711, NULL, NULL, '2023-01-11 00:55:06', '2023-01-11 00:55:06'),
(3, 'Class Two', 'Class Two', 'en', 1, 1147483712, NULL, NULL, '2023-01-11 00:55:34', '2023-01-11 00:55:34'),
(4, 'အတန်းနှစ်', 'အတန်းနှစ်', 'my', 1, 1147483712, NULL, NULL, '2023-01-11 00:55:34', '2023-01-11 00:55:34'),
(5, 'Class Three', 'Class Three', 'en', 1, 1147483713, NULL, NULL, '2023-01-11 00:56:00', '2023-01-11 00:56:00'),
(6, 'အတန်းသုံး', 'အတန်းသုံး', 'my', 1, 1147483713, NULL, NULL, '2023-01-11 00:56:00', '2023-01-11 00:56:00'),
(7, 'Class Four', 'Class Four', 'en', 1, 1147483714, NULL, NULL, '2023-01-11 00:56:29', '2023-01-11 00:56:29'),
(8, 'အတန်းလေး', 'အတန်းလေး', 'my', 1, 1147483714, NULL, NULL, '2023-01-11 00:56:29', '2023-01-11 00:56:29'),
(9, 'Class Five', 'Class Five', 'en', 1, 1147483715, NULL, NULL, '2023-01-11 00:56:58', '2023-01-11 00:56:58'),
(10, 'အတန်းငါး', 'အတန်းငါး', 'my', 1, 1147483715, NULL, NULL, '2023-01-11 00:56:58', '2023-01-11 00:56:58'),
(11, 'Class Six', 'Class Six', 'en', 1, 1147483716, NULL, NULL, '2023-01-11 02:25:53', '2023-01-11 02:25:53'),
(12, 'အတန်းခြောက်', 'အတန်းခြောက်', 'my', 1, 1147483716, NULL, NULL, '2023-01-11 02:25:53', '2023-01-11 02:25:53'),
(13, 'Class Seven', 'Class Seven', 'en', 1, 1147483717, NULL, NULL, '2023-01-11 02:26:16', '2023-01-11 02:26:16'),
(14, 'အတန်းခုနစ်တန်း', 'အတန်းခုနစ်တန်း', 'my', 1, 1147483717, NULL, NULL, '2023-01-11 02:26:16', '2023-01-11 02:26:16'),
(15, 'Class Eight', 'Class Eight', 'en', 1, 1147483718, NULL, NULL, '2023-01-11 02:26:46', '2023-01-11 02:26:46'),
(16, 'ရှစ်တန်း', 'ရှစ်တန်း', 'my', 1, 1147483718, NULL, NULL, '2023-01-11 02:26:46', '2023-01-11 02:26:46'),
(17, 'Class Nine', 'Class Nine', 'en', 1, 1147483719, NULL, NULL, '2023-01-11 02:32:44', '2023-01-11 02:32:44'),
(18, 'အတန်းကိုး', 'အတန်းကိုး', 'my', 1, 1147483719, NULL, NULL, '2023-01-11 02:32:44', '2023-01-11 02:32:44'),
(19, 'Class Ten', 'Class Ten', 'en', 1, 1147483720, NULL, NULL, '2023-01-11 02:33:11', '2023-01-11 02:33:11'),
(20, 'ဆယ်တန်း', 'ဆယ်တန်း', 'my', 1, 1147483720, NULL, NULL, '2023-01-11 02:33:11', '2023-01-11 02:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `editor_drafts`
--

CREATE TABLE `editor_drafts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_calendars`
--

CREATE TABLE `event_calendars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textColor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `grid_column` int(11) DEFAULT NULL,
  `grid_row` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interactive_radios`
--

CREATE TABLE `interactive_radios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio_music_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `example` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confusion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `latest_news`
--

CREATE TABLE `latest_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `details`, `language`, `status`, `uuid`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Foundation', 'Foundation', 'en', 1, 1147483709, NULL, NULL, '2023-01-11 02:52:38', '2023-01-11 02:52:38'),
(2, 'ဖောင်ဒေးရှင်း', 'ဖောင်ဒေးရှင်း', 'my', 1, 1147483709, NULL, NULL, '2023-01-11 02:52:38', '2023-01-11 02:52:38'),
(3, 'Intermediate', 'Intermediate', 'en', 1, 1147483710, NULL, NULL, '2023-01-11 02:53:10', '2023-01-11 02:53:10'),
(4, 'အလယ်အလတ်', 'အလယ်အလတ်', 'my', 1, 1147483710, NULL, NULL, '2023-01-11 02:53:10', '2023-01-11 02:53:10'),
(5, 'Advanced', 'Advanced', 'en', 1, 1147483711, NULL, NULL, '2023-01-11 02:53:34', '2023-01-11 02:53:34'),
(6, 'အဆင့်မြင့်', 'အဆင့်မြင့်', 'my', 1, 1147483711, NULL, NULL, '2023-01-11 02:53:34', '2023-01-11 02:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_actions`
--

CREATE TABLE `menu_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auth_menu_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_actions`
--

INSERT INTO `menu_actions` (`id`, `auth_menu_id`, `name`, `type`, `link`, `icon`, `order_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Add', 1, 'menu.create', NULL, 1, 1, '2021-04-25 13:28:26', '2021-04-25 13:28:26'),
(2, 4, 'Edit', 2, 'menu.edit', NULL, 2, 1, '2021-04-25 13:28:44', '2021-04-25 13:28:44'),
(3, 4, 'Publish/Unpublish', 3, 'menu.status', NULL, 3, 1, '2021-04-25 13:29:04', '2021-04-25 13:29:04'),
(4, 4, 'View', 8, 'menu.action.index', NULL, 4, 1, '2021-04-25 13:29:27', '2021-04-25 13:29:27'),
(5, 4, 'Delete', 4, 'menu.destroy', NULL, 15, 1, '2021-04-25 13:29:46', '2021-04-25 13:29:46'),
(6, 5, 'Add', 1, 'role.create', NULL, 1, 1, '2021-04-25 13:30:39', '2021-04-25 13:30:39'),
(7, 5, 'Edit', 2, 'role.edit', NULL, 2, 1, '2021-04-25 13:30:57', '2021-04-25 13:30:57'),
(8, 5, 'Publish/Unpublish', 3, 'role.status', NULL, 3, 1, '2021-04-25 13:31:11', '2021-04-25 13:31:11'),
(9, 5, 'View', 8, 'role.permission', NULL, 4, 1, '2021-04-25 13:31:47', '2021-04-25 13:31:47'),
(10, 5, 'Delete', 4, 'role.destroy', NULL, 15, 1, '2021-04-25 13:32:05', '2021-04-25 13:32:05'),
(11, 6, 'Add', 1, 'admin.create', NULL, 1, 1, '2021-04-25 13:33:21', '2021-04-25 13:33:21'),
(12, 6, 'Edit', 2, 'admin.edit', NULL, 2, 1, '2021-04-25 13:33:35', '2021-04-25 13:33:35'),
(13, 6, 'Publish/Unpublish', 3, 'admin.status', NULL, 3, 1, '2021-04-25 13:33:53', '2021-04-25 13:33:53'),
(14, 6, 'Delete', 4, 'admin.destroy', NULL, 15, 1, '2021-04-25 13:34:07', '2021-04-25 13:34:07'),
(15, 7, 'Add', 1, 'banner.create', NULL, 1, 1, '2021-04-26 05:58:29', '2021-12-01 22:29:22'),
(16, 7, 'Edit', 2, 'banner.edit', NULL, 2, 1, '2021-04-26 05:58:51', '2021-12-01 22:29:27'),
(17, 7, 'Publish/Unpublish', 3, 'banner.status', NULL, 3, 1, '2021-04-26 05:59:13', '2021-12-01 22:29:32'),
(18, 9, 'Add', 1, 'division.create', NULL, 1, 1, '2021-10-10 23:51:47', '2021-10-10 23:54:14'),
(19, 9, 'Edit', 2, 'division.edit', NULL, 2, 1, '2021-10-10 23:54:42', '2021-10-10 23:54:42'),
(20, 9, 'Publish/Unpublish', 3, 'division.status', NULL, 3, 1, '2021-10-10 23:55:21', '2021-10-10 23:55:21'),
(21, 11, 'District', 1, 'district.create', NULL, 1, 1, '2021-10-11 00:23:20', '2021-10-11 00:23:53'),
(22, 11, 'Edit', 2, 'district.edit', NULL, 2, 1, '2021-10-11 00:23:42', '2021-10-11 00:23:42'),
(23, 11, 'Publish/Unpublish', 3, 'district.status', NULL, 3, 1, '2021-10-11 00:24:07', '2021-10-11 00:24:07'),
(24, 12, 'Add', 1, 'upazila.create', NULL, 1, 1, '2021-10-11 02:16:47', '2021-10-11 02:16:47'),
(25, 12, 'Edit', 2, 'upazila.edit', NULL, 2, 1, '2021-10-11 02:17:07', '2021-10-11 02:17:07'),
(26, 12, 'Publish/Unpublish', 3, 'upazila.status', NULL, 3, 1, '2021-10-11 02:17:19', '2021-10-11 02:17:19'),
(27, 14, 'Add', 1, 'category.create', NULL, 1, 1, '2021-10-11 22:26:57', '2021-10-11 22:26:57'),
(28, 14, 'Edit', 2, 'category.edit', NULL, 2, 1, '2021-10-11 22:27:18', '2021-10-11 22:27:18'),
(29, 14, 'Publish/Unpublish', 3, 'category.status', NULL, 3, 1, '2021-10-11 22:27:55', '2021-10-11 22:27:55'),
(30, 6, 'Reset', 8, 'admin.reset', 'fa fa-unlock', 4, 1, '2021-10-18 02:07:20', '2021-10-18 02:14:26'),
(31, 15, 'Add', 1, 'youtube.create', NULL, 1, 1, '2021-10-20 23:26:32', '2021-10-20 23:26:32'),
(32, 15, 'Edit', 2, 'youtube.edit', NULL, 2, 1, '2021-10-20 23:26:54', '2021-10-20 23:26:54'),
(33, 15, 'Publish/Unpublish', 3, 'youtube.status', NULL, 3, 1, '2021-10-20 23:27:23', '2021-10-20 23:27:23'),
(34, 13, 'Add', 1, 'page.menu.create', NULL, 1, 1, '2021-10-25 00:40:15', '2021-12-01 03:27:53'),
(35, 10, 'View', 1, 'page.create', NULL, 1, 1, '2021-10-25 22:33:16', '2021-11-30 23:21:52'),
(36, 15, 'Delete', 4, 'youtube.destroy', NULL, 4, 1, '2021-10-31 23:30:05', '2021-10-31 23:30:05'),
(38, 10, 'Edit', 2, 'page.edit', NULL, 2, 1, '2021-11-30 23:22:13', '2021-11-30 23:22:13'),
(39, 10, 'Publish/Unpublish', 3, 'page.status', NULL, 3, 1, '2021-11-30 23:22:33', '2021-11-30 23:22:33'),
(40, 10, 'Delete', 4, 'page.destroy', NULL, 15, 1, '2021-11-30 23:23:00', '2021-11-30 23:23:00'),
(41, 13, 'Edit', 2, 'page.menu.edit', NULL, 2, 1, '2021-12-01 03:29:33', '2021-12-01 03:29:33'),
(42, 13, 'Publish/Unpublish', 3, 'page.menu.status', NULL, 3, 1, '2021-12-01 03:29:54', '2021-12-01 03:29:54'),
(43, 13, 'Delete', 4, 'page.menu.destroy', NULL, 15, 1, '2021-12-01 03:30:27', '2021-12-01 03:30:27'),
(44, 7, 'Delete', 4, 'banner.destroy', NULL, 15, 1, '2021-12-01 22:29:55', '2021-12-01 22:29:55'),
(45, 17, 'Add', 1, 'gallery.create', NULL, 1, 1, '2021-12-02 02:13:40', '2021-12-02 02:13:40'),
(46, 17, 'Edit', 2, 'gallery.edit', NULL, 2, 1, '2021-12-02 02:13:52', '2021-12-02 02:13:52'),
(47, 17, 'Publish/Unpublish', 3, 'gallery.status', NULL, 3, 1, '2021-12-02 02:14:08', '2021-12-02 02:14:08'),
(48, 17, 'Delete', 4, 'gallery.destroy', NULL, 15, 1, '2021-12-02 02:14:25', '2021-12-02 02:14:25'),
(49, 14, 'Delete', 4, 'category.destroy', NULL, 15, 1, '2021-12-12 22:42:59', '2021-12-12 22:42:59'),
(50, 19, 'Add', 1, 'editorDraft.create', NULL, 1, 1, '2022-01-24 22:52:28', '2022-01-24 22:52:28'),
(51, 19, 'Edit', 2, 'editorDraft.edit', NULL, 2, 1, '2022-01-24 22:52:48', '2022-01-24 22:52:48'),
(52, 19, 'Publish/Unpublish', 3, 'editorDraft.status', NULL, 3, 1, '2022-01-24 22:53:04', '2022-01-24 22:53:04'),
(53, 19, 'Delete', 4, 'editorDraft.destroy', NULL, 15, 1, '2022-01-24 22:53:19', '2022-01-24 22:53:19'),
(54, 20, 'Add', 1, 'latest.news.create', NULL, 1, 1, '2022-01-27 03:01:07', '2022-01-27 03:01:07'),
(55, 20, 'Edit', 2, 'latest.news.edit', NULL, 2, 1, '2022-01-27 03:01:21', '2022-01-27 03:01:21'),
(56, 20, 'Publish/Unpublish', 3, 'latest.news.status', NULL, 3, 1, '2022-01-27 03:01:37', '2022-01-27 03:01:37'),
(57, 20, 'Delete', 4, 'latest.news.destroy', NULL, 15, 1, '2022-01-27 03:01:53', '2022-01-27 03:01:53'),
(60, 33, 'Add', 1, 'album.create', NULL, 1, 1, '2022-03-14 00:27:58', '2022-03-14 00:28:46'),
(61, 33, 'Edit', 2, 'album.edit', NULL, 2, 1, '2022-03-14 00:28:19', '2022-03-14 00:28:19'),
(62, 33, 'Publish/Unpublish', 3, 'album.status', NULL, 3, 1, '2022-03-14 00:28:34', '2022-03-14 00:28:34'),
(63, 33, 'Delete', 4, 'album.destroy', NULL, 15, 1, '2022-03-14 00:29:00', '2022-03-14 00:29:00'),
(64, 10, 'View', 8, 'page.view', NULL, 4, 1, '2022-03-14 02:36:39', '2022-03-14 02:36:39'),
(65, 22, 'Add', 1, 'notice.board.create', NULL, 1, 1, '2022-04-18 03:09:05', '2022-04-18 03:09:05'),
(66, 22, 'Edit', 2, 'notice.board.edit', NULL, 2, 1, '2022-04-18 03:09:19', '2022-04-18 03:09:19'),
(67, 22, 'Publish/Unpublish', 3, 'notice.board.status', NULL, 3, 1, '2022-04-18 03:09:37', '2022-04-18 03:09:37'),
(68, 22, 'Delete', 4, 'notice.board.destroy', NULL, 15, 1, '2022-04-18 03:10:00', '2022-04-18 03:10:00'),
(81, 26, 'View', 2, 'contact-message.show', 'fa-eye', 4, 1, '2022-04-24 23:46:22', '2022-04-25 00:23:10'),
(82, 27, 'Delete', 4, 'comment.destroy', NULL, 15, 1, '2022-05-11 22:13:38', '2022-05-11 22:13:38'),
(87, 29, 'Add', 1, 'event_calendar.create', NULL, 1, 1, '2022-07-06 23:16:30', '2022-07-06 23:16:30'),
(88, 29, 'Edit', 2, 'event_calendar.edit', NULL, 2, 1, '2022-07-06 23:16:50', '2022-07-06 23:16:50'),
(89, 29, 'Delete', 4, 'event_calendar.destroy', NULL, 4, 1, '2022-07-07 01:38:30', '2022-07-07 01:42:45'),
(90, 29, 'Publish/Unpublish', 3, 'event_calendar.status', NULL, 3, 1, '2022-07-07 01:42:39', '2022-07-07 01:42:39'),
(120, 38, 'Add', 1, 'package.create', NULL, 1, 1, '2022-12-20 21:37:10', '2022-12-20 21:37:10'),
(121, 38, 'Edit', 2, 'package.edit', NULL, 2, 1, '2022-12-20 21:37:29', '2022-12-20 21:37:29'),
(122, 38, 'Publish/Unpublish', 3, 'package.status', NULL, 3, 1, '2022-12-20 21:38:07', '2022-12-20 21:38:07'),
(123, 38, 'Delete', 4, 'package.destroy', NULL, 15, 1, '2022-12-20 21:38:25', '2022-12-20 21:38:25'),
(128, 39, 'Add', 1, 'skill.create', NULL, 1, 1, '2023-01-01 03:16:33', '2023-01-01 03:16:33'),
(129, 39, 'Edit', 2, 'skill.edit', NULL, 2, 1, '2023-01-01 03:16:52', '2023-01-01 03:16:52'),
(130, 39, 'Publish/Unpublish', 3, 'skill.status', NULL, 3, 1, '2023-01-01 03:17:13', '2023-01-01 03:17:13'),
(131, 39, 'Delete', 4, 'skill.destroy', NULL, 15, 1, '2023-01-01 03:17:28', '2023-01-01 03:17:28'),
(132, 40, 'Add', 1, 'ecwclass.create', NULL, 1, 1, '2023-01-01 03:29:30', '2023-01-01 03:29:30'),
(133, 40, 'Edit', 2, 'ecwclass.edit', NULL, 2, 1, '2023-01-01 03:29:43', '2023-01-01 03:29:43'),
(134, 40, 'Publish/Unpublish', 3, 'ecwclass.status', NULL, 3, 1, '2023-01-01 03:30:00', '2023-01-01 03:30:00'),
(135, 40, 'Delete', 4, 'ecwclass.destroy', NULL, 15, 1, '2023-01-01 03:30:15', '2023-01-01 03:30:15'),
(136, 41, 'Add', 1, 'resource.create', NULL, 1, 1, '2023-01-03 03:25:03', '2023-01-03 03:25:03'),
(137, 41, 'Edit', 2, 'resource.edit', NULL, 2, 1, '2023-01-03 03:25:17', '2023-01-03 03:25:17'),
(138, 41, 'Publish/Unpublish', 3, 'resource.status', NULL, 3, 1, '2023-01-03 03:25:31', '2023-01-03 03:25:31'),
(139, 41, 'Delete', 4, 'resource.destroy', NULL, 15, 1, '2023-01-03 03:25:44', '2023-01-03 03:25:44'),
(140, 42, 'Add', 1, 'level.create', NULL, 1, 1, '2023-01-05 00:02:53', '2023-01-05 00:02:53'),
(141, 42, 'Edit', 2, 'level.edit', NULL, 2, 1, '2023-01-05 00:03:07', '2023-01-05 00:03:07'),
(142, 42, 'Publish/Unpublish', 3, 'level.status', NULL, 3, 1, '2023-01-05 00:03:23', '2023-01-05 00:03:23'),
(143, 42, 'Delete', 4, 'skill.destroy', NULL, 15, 1, '2023-01-05 00:03:38', '2023-01-05 00:03:38'),
(144, 43, 'Add', 1, 'audio.music.create', NULL, 1, 1, '2023-01-05 00:45:12', '2023-01-05 00:45:12'),
(145, 43, 'Edit', 2, 'audio.music.edit', NULL, 2, 1, '2023-01-05 00:45:26', '2023-01-05 00:45:26'),
(146, 43, 'Publish/Unpublish', 3, 'audio.music.status', NULL, 3, 1, '2023-01-05 01:12:18', '2023-01-05 01:12:18'),
(147, 43, 'Delete', 4, 'audio.music.destroy', NULL, 15, 1, '2023-01-05 01:12:31', '2023-01-05 01:12:31'),
(148, 44, 'Add', 1, 'interactive.radio.create', NULL, 1, 1, '2023-01-07 23:00:55', '2023-01-07 23:00:55'),
(149, 44, 'Edit', 2, 'interactive.radio.edit', NULL, 2, 1, '2023-01-07 23:01:10', '2023-01-07 23:01:10'),
(150, 44, 'Publish/Unpublish', 3, 'interactive.radio.status', NULL, 3, 1, '2023-01-07 23:01:29', '2023-01-07 23:01:29'),
(151, 44, 'Delete', 4, 'interactive.radio.destroy', NULL, 15, 1, '2023-01-07 23:01:46', '2023-01-07 23:01:46'),
(152, 45, 'Add', 1, 'activity.create', NULL, 1, 1, '2023-01-08 23:20:45', '2023-01-08 23:20:45'),
(153, 45, 'Edit', 2, 'activity.edit', NULL, 2, 1, '2023-01-08 23:20:56', '2023-01-08 23:20:56'),
(154, 45, 'Publish/Unpublish', 3, 'activity.status', NULL, 3, 1, '2023-01-08 23:21:10', '2023-01-08 23:21:10'),
(155, 45, 'Delete', 4, 'activity.destroy', NULL, 15, 1, '2023-01-08 23:21:27', '2023-01-08 23:21:27'),
(156, 46, 'Add', 1, 'video.content.create', NULL, 1, 1, '2023-01-05 00:45:12', '2023-01-05 00:45:12'),
(157, 46, 'Edit', 2, 'video.content.edit', NULL, 2, 1, '2023-01-05 00:45:26', '2023-01-05 00:45:26'),
(158, 46, 'Publish/Unpublish', 3, 'video.content.status', NULL, 3, 1, '2023-01-05 01:12:18', '2023-01-05 01:12:18'),
(159, 46, 'Delete', 4, 'video.content.destroy', NULL, 15, 1, '2023-01-05 01:12:31', '2023-01-05 01:12:31'),
(160, 47, 'add', 1, 'alldocument.index', NULL, 1, 1, '2023-02-11 23:45:54', '2023-02-11 23:46:02');

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
(9, '2021_03_23_143905_create_admins_table', 1),
(10, '2021_03_31_043437_create_auth_menus_table', 1),
(11, '2021_04_16_121434_create_roles_table', 1),
(12, '2021_04_16_123030_create_menu_actions_table', 1),
(13, '2021_10_11_045657_create_divisions_table', 1),
(14, '2021_10_11_045917_create_districts_table', 1),
(15, '2021_10_11_050315_create_upazilas_table', 1),
(16, '2021_10_11_090507_create_categories_table', 1),
(17, '2021_10_21_044914_create_you_tubes_table', 1),
(18, '2021_10_25_045045_create_you_tube_watches_table', 1),
(19, '2021_12_01_050320_create_pages_table', 1),
(20, '2021_12_01_085152_create_page_menus_table', 1),
(21, '2021_12_02_042020_create_banners_table', 1),
(22, '2022_01_25_043328_create_editor_drafts_table', 1),
(23, '2022_01_27_083809_create_latest_news_table', 1),
(24, '2022_03_10_040223_create_comments_table', 1),
(25, '2022_03_10_040617_create_likes_table', 1),
(26, '2022_03_14_060254_create_albums_table', 1),
(27, '2022_04_06_033350_create_notice_boards_table', 1),
(28, '2022_04_25_050755_create_contact_messages_table', 1),
(29, '2022_04_26_083607_add_name_to_comments', 1),
(30, '2022_06_22_035522_create_event_calendars_table', 1),
(31, '2022_12_05_050420_create_subjects_table', 1),
(32, '2022_12_05_055138_create_ecw_classes_table', 1),
(33, '2022_12_05_055429_create_packages_table', 1),
(34, '2022_12_06_055315_create_sequences_table', 1),
(35, '2022_12_11_095327_create_levels_table', 1),
(36, '2022_12_19_041630_create_resources_table', 1),
(37, '2023_01_01_041515_create_galleries_table', 1),
(38, '2023_01_01_052029_create_skills_table', 1),
(39, '2023_01_05_035944_create_audio_music_table', 1),
(40, '2023_01_08_040037_create_interactive_radios_table', 1),
(41, '2023_01_09_031005_create_activities_table', 1),
(42, '2023_01_31_080813_create_video_contents_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice_boards`
--

CREATE TABLE `notice_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, NULL, 'ECW Personal Access Client', 'FvUYeX8hzs9ES3hEN0OwTLkX6VV4xgQVeIwBWOvE', NULL, 'http://localhost', 1, 0, 0, '2023-02-08 04:13:15', '2023-02-08 04:13:15'),
(2, NULL, 'ECW Password Grant Client', 'V25FDzWGKgbx44KWWzP7ktbBRQGuA76pT3XEv1FL', 'users', 'http://localhost', 0, 1, 0, '2023-02-08 04:13:16', '2023-02-08 04:13:16');

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
(1, 1, '2023-02-08 04:13:15', '2023-02-08 04:13:15');

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
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `details`, `language`, `status`, `uuid`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'English Course', 'Basic English Course', 'en', 1, 1147483694, NULL, NULL, '2022-12-20 21:39:42', '2023-01-11 00:53:59'),
(2, 'အင်္ဂလိပ်စာသင်တန်း', 'အခြေခံအင်္ဂလိပ်စာသင်တန်း', 'my', 1, 1147483694, NULL, NULL, '2022-12-20 21:39:42', '2023-01-11 00:53:59'),
(3, 'Basic Computer', 'Basic Computer Course', 'en', 1, 1147483710, NULL, NULL, '2023-01-11 00:53:09', '2023-01-11 00:53:09'),
(4, 'အခြေခံကွန်ပျူတာ', 'အခြေခံကွန်ပြူတာသင်တန်း', 'my', 1, 1147483710, NULL, NULL, '2023-01-11 00:53:09', '2023-01-11 00:53:09'),
(5, 'Package 1', 'Package 1', 'en', 1, 1147483707, NULL, NULL, '2023-01-11 02:47:54', '2023-01-11 02:47:54'),
(6, 'အထုပ် ၁', 'အထုပ် ၁', 'my', 1, 1147483707, NULL, NULL, '2023-01-11 02:47:54', '2023-01-11 02:47:54'),
(7, 'Package 2', 'Package 2', 'en', 1, 1147483708, NULL, NULL, '2023-01-11 02:48:16', '2023-01-11 02:48:16'),
(8, 'အထုပ် ၂', 'အထုပ် ၂', 'my', 1, 1147483708, NULL, NULL, '2023-01-11 02:48:16', '2023-01-11 02:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inline_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `name_enabled` tinyint(4) DEFAULT NULL,
  `sub_title_enabled` tinyint(4) DEFAULT NULL,
  `is_comment` tinyint(4) DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `publish_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_menus`
--

CREATE TABLE `page_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_menus`
--

INSERT INTO `page_menus` (`id`, `parent_id`, `name`, `type`, `link`, `slug`, `icon`, `language`, `banner_id`, `order_by`, `status`, `uuid`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(31, NULL, 'About Us', 'main', 'frontend.home', NULL, NULL, 'en', NULL, 1, 1, 1147483681, 1, 1, '2022-12-11 22:38:43', '2022-12-27 23:16:11'),
(32, NULL, 'ကြှနျုပျတို့အကွောငျး', 'main', 'frontend.home', NULL, NULL, 'my', NULL, 1, 1, 1147483681, 1, 1, '2022-12-11 22:38:43', '2022-12-21 21:49:01'),
(33, NULL, 'All Resources', 'main', 'frontend.home', NULL, NULL, 'en', NULL, 2, 1, 1147483682, 1, 1, '2022-12-11 22:41:36', '2022-12-21 21:50:47'),
(34, NULL, 'အရင်းအမြစ်အားလုံး', 'main', 'frontend.home', NULL, NULL, 'my', NULL, 2, 1, 1147483682, 1, 1, '2022-12-11 22:41:36', '2022-12-21 21:50:47'),
(35, NULL, 'Activities', 'main', 'frontend.home', NULL, NULL, 'en', NULL, 3, 1, 1147483683, 1, 1, '2022-12-11 22:45:51', '2022-12-21 21:51:46'),
(36, NULL, 'လှုပ်ရှားမှုများ', 'main', 'frontend.home', NULL, NULL, 'my', NULL, 3, 1, 1147483683, 1, 1, '2022-12-11 22:45:51', '2022-12-21 21:51:46'),
(41, NULL, 'Interactive Radio', 'main', 'frontend.home', NULL, NULL, 'en', NULL, 4, 1, 1147483686, 1, 1, '2022-12-12 04:13:29', '2022-12-21 21:53:02'),
(42, NULL, 'အပြန်အလှန်အကျိုးပြုရေဒီယို', 'main', 'frontend.home', NULL, NULL, 'my', NULL, 4, 1, 1147483686, 1, 1, '2022-12-12 04:13:29', '2022-12-21 21:53:02'),
(45, NULL, 'Courses', 'main', 'frontend.home', NULL, NULL, 'en', NULL, 5, 1, 1147483695, 1, 1, '2022-12-21 21:55:24', '2022-12-21 21:55:24'),
(46, NULL, 'သင်တန်းများ', 'main', 'frontend.home', NULL, NULL, 'my', NULL, 5, 1, 1147483695, 1, 1, '2022-12-21 21:55:24', '2022-12-21 21:55:24'),
(47, NULL, 'News', 'main', 'frontend.home', NULL, NULL, 'en', NULL, 6, 1, 1147483696, 1, 1, '2022-12-21 21:56:07', '2022-12-21 21:56:07'),
(48, NULL, 'သတင်း', 'main', 'frontend.home', NULL, NULL, 'my', NULL, 6, 1, 1147483696, 1, 1, '2022-12-21 21:56:07', '2022-12-21 21:56:07'),
(49, 31, 'ECW', 'main', 'frontend.page', 'ecw', NULL, 'en', NULL, 11, 1, 1147483697, 1, 5, '2022-12-21 21:59:37', '2023-01-09 04:14:01'),
(50, 32, 'ECW', 'main', 'frontend.page', 'ecw', NULL, 'my', NULL, 11, 1, 1147483697, 1, 5, '2022-12-21 21:59:37', '2023-01-09 04:14:01'),
(51, 31, 'SCI', 'main', 'frontend.page', 'sci', NULL, 'en', NULL, 12, 1, 1147483698, 1, 5, '2022-12-21 22:00:54', '2023-01-09 21:04:22'),
(52, 32, 'SCI', 'main', 'frontend.page', 'sci', NULL, 'my', NULL, 12, 1, 1147483698, 1, 5, '2022-12-21 22:00:54', '2023-01-09 21:04:22'),
(53, 31, 'HI', 'main', 'frontend.page', 'hi', NULL, 'en', NULL, 13, 1, 1147483699, 1, 5, '2022-12-21 22:01:58', '2023-01-09 21:12:31'),
(54, 32, 'ဟိုင်း', 'main', 'frontend.page', 'hi', NULL, 'my', NULL, 13, 1, 1147483699, 1, 5, '2022-12-21 22:01:58', '2023-01-09 21:12:31'),
(55, 31, 'YPSA', 'main', 'frontend.page', 'ypsa', NULL, 'en', NULL, 14, 1, 1147483700, 1, 5, '2022-12-21 22:02:38', '2023-01-09 21:13:09'),
(56, 32, 'YPSA', 'main', 'frontend.page', 'ypsa', NULL, 'my', NULL, 14, 1, 1147483700, 1, 5, '2022-12-21 22:02:38', '2023-01-09 21:13:09'),
(57, NULL, 'About LMS', 'footer', 'frontend.page', 'ecw', NULL, 'en', NULL, 31, 1, 1147483716, 5, 5, '2023-01-09 04:17:36', '2023-01-09 21:44:12'),
(58, NULL, 'LMS အကြောင်း', 'footer', 'frontend.page', 'ecw', NULL, 'my', NULL, 31, 1, 1147483716, 5, 5, '2023-01-09 04:17:36', '2023-01-09 23:10:01'),
(59, NULL, 'Terms of Service', 'footer', 'frontend.page', 'sci', NULL, 'en', NULL, 32, 1, 1147483721, 5, 5, '2023-01-09 21:45:38', '2023-01-09 23:10:20'),
(60, NULL, 'ဝန်ဆောင်မှုစည်းမျဉ်းများ', 'footer', 'frontend.page', 'sci', NULL, 'my', NULL, 32, 1, 1147483721, 5, 5, '2023-01-09 21:45:38', '2023-01-09 23:10:20'),
(61, NULL, 'Contact', 'footer', 'frontend.home', NULL, NULL, 'en', NULL, 33, 1, 1147483722, 5, 5, '2023-01-09 21:48:08', '2023-01-09 21:48:08'),
(62, NULL, 'ဆက်သွယ်ရန်', 'footer', 'frontend.home', NULL, NULL, 'my', NULL, 33, 1, 1147483722, 5, 5, '2023-01-09 21:48:08', '2023-01-09 21:48:08'),
(63, NULL, 'Privacy policy', 'footer', 'frontend.home', NULL, NULL, 'en', NULL, 34, 1, 1147483723, 5, 5, '2023-01-09 21:49:17', '2023-01-09 21:49:17'),
(64, NULL, 'ကိုယ်ရေးအချက်အလက်မူဝါဒ', 'footer', 'frontend.home', NULL, NULL, 'my', NULL, 34, 1, 1147483723, 5, 5, '2023-01-09 21:49:17', '2023-01-09 21:49:17'),
(65, NULL, 'Terms of use', 'footer', 'frontend.home', NULL, NULL, 'en', NULL, 35, 1, 1147483724, 5, 5, '2023-01-09 21:50:48', '2023-01-09 21:50:48'),
(66, NULL, 'သတ်မှတ်ချက်များ', 'footer', 'frontend.home', NULL, NULL, 'my', NULL, 35, 1, 1147483724, 5, 5, '2023-01-09 21:50:48', '2023-01-09 21:50:48'),
(67, NULL, 'Software License', 'footer', 'frontend.home', NULL, NULL, 'en', NULL, 36, 1, 1147483725, 5, 5, '2023-01-09 21:52:54', '2023-01-09 21:52:54'),
(68, NULL, 'ဆော့ဖ်ဝဲလိုင်စင်', 'footer', 'frontend.home', NULL, NULL, 'my', NULL, 36, 1, 1147483725, 5, 5, '2023-01-09 21:52:54', '2023-01-09 21:52:54'),
(69, NULL, 'Business Terms', 'footer', 'frontend.home', NULL, NULL, 'en', NULL, 37, 1, 1147483726, 5, 5, '2023-01-09 21:53:42', '2023-01-09 21:53:42'),
(70, NULL, 'လုပ်ငန်းစည်းမျဥ်းများ', 'footer', 'frontend.home', NULL, NULL, 'my', NULL, 37, 1, 1147483726, 5, 5, '2023-01-09 21:53:42', '2023-01-09 21:53:42'),
(71, NULL, 'Pricing', 'footer', 'frontend.home', NULL, NULL, 'en', NULL, 38, 1, 1147483727, 5, 5, '2023-01-09 21:54:56', '2023-01-09 21:54:56'),
(72, NULL, 'ဈေးနှုန်း', 'footer', 'frontend.home', NULL, NULL, 'my', NULL, 38, 1, 1147483727, 5, 5, '2023-01-09 21:54:56', '2023-01-09 21:54:56'),
(73, NULL, 'Case Studies', 'footer', 'frontend.home', NULL, NULL, 'en', NULL, 39, 1, 1147483728, 5, 5, '2023-01-09 21:55:49', '2023-01-09 21:55:49'),
(74, NULL, 'ဖြစ်ရပ်မှန်လေ့လာရေး', 'footer', 'frontend.home', NULL, NULL, 'my', NULL, 39, 1, 1147483728, 5, 5, '2023-01-09 21:55:49', '2023-01-09 21:55:49'),
(75, NULL, 'Partners', 'footer', 'frontend.home', NULL, NULL, 'en', NULL, 40, 1, 1147483729, 5, 5, '2023-01-09 21:56:18', '2023-01-09 21:56:18'),
(76, NULL, 'ဖက်', 'footer', 'frontend.home', NULL, NULL, 'my', NULL, 40, 1, 1147483729, 5, 5, '2023-01-09 21:56:18', '2023-01-09 21:56:18');

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
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `example` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confusion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `permission` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actionPermission` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `parent_id`, `permission`, `actionPermission`, `serial`, `order_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', NULL, '47,48,49,50,1,2,15,38,39,40,19,42,43,46,3,4,5,6,8,14,33,10,13,7,17,41,44,45', '31,32,33,36,120,121,122,123,128,129,130,131,132,133,134,135,50,51,52,53,140,141,142,143,144,145,146,147,156,157,158,159,1,2,3,4,5,6,7,8,9,10,11,12,13,30,14,27,28,29,49,60,61,62,63,35,38,39,64,40,34,41,42,43,15,16,17,44,45,46,47,48,136,137,138,139,148,149,150,151,152,153,154,155', '[{\"id\":47,\"parent_id\":null,\"name\":\"All Document\",\"link\":\"alldocument.index\",\"icon\":\"fa fa-file\",\"order_by\":0,\"status\":1,\"created_at\":\"2023-02-12T05:33:44.000000Z\",\"updated_at\":\"2023-02-12T05:52:12.000000Z\",\"children\":[]},{\"id\":48,\"parent_id\":null,\"name\":\"Add Documents\",\"link\":\"adddocument.index\",\"icon\":\"fa fa-file-excel-o\",\"order_by\":0,\"status\":1,\"created_at\":\"2023-02-13T09:46:11.000000Z\",\"updated_at\":\"2023-02-13T10:29:11.000000Z\",\"children\":[]},{\"id\":49,\"parent_id\":null,\"name\":\"My Documents\",\"link\":\"mydocument.index\",\"icon\":null,\"order_by\":0,\"status\":1,\"created_at\":\"2023-02-22T10:30:06.000000Z\",\"updated_at\":\"2023-02-22T10:30:13.000000Z\",\"children\":[]},{\"id\":50,\"parent_id\":null,\"name\":\"Manage Request\",\"link\":\"managerequest.index\",\"icon\":\"fa fa-book\",\"order_by\":0,\"status\":1,\"created_at\":\"2023-02-26T09:59:59.000000Z\",\"updated_at\":\"2023-02-26T10:01:34.000000Z\",\"children\":[]},{\"id\":1,\"parent_id\":null,\"name\":\"Dashboard\",\"link\":\"dashboard.index\",\"icon\":\"fa-home\",\"order_by\":1,\"status\":1,\"created_at\":\"2021-04-25T19:24:30.000000Z\",\"updated_at\":\"2021-11-08T04:56:13.000000Z\",\"children\":[]},{\"id\":2,\"parent_id\":null,\"name\":\"Settings\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":1,\"status\":1,\"created_at\":\"2021-04-25T19:25:23.000000Z\",\"updated_at\":\"2022-01-25T04:51:29.000000Z\",\"children\":[{\"id\":15,\"parent_id\":2,\"name\":\"YouTube\",\"link\":\"youtube.index\",\"icon\":null,\"order_by\":7,\"status\":1,\"created_at\":\"2021-10-21T05:25:39.000000Z\",\"updated_at\":\"2021-10-21T05:25:39.000000Z\",\"children\":[]},{\"id\":38,\"parent_id\":2,\"name\":\"Package\",\"link\":\"package.index\",\"icon\":null,\"order_by\":8,\"status\":1,\"created_at\":\"2022-12-21T03:36:06.000000Z\",\"updated_at\":\"2022-12-21T03:36:06.000000Z\",\"children\":[]},{\"id\":39,\"parent_id\":2,\"name\":\"Skill\",\"link\":\"skill.index\",\"icon\":null,\"order_by\":9,\"status\":1,\"created_at\":\"2023-01-01T09:16:16.000000Z\",\"updated_at\":\"2023-01-01T09:16:16.000000Z\",\"children\":[]},{\"id\":40,\"parent_id\":2,\"name\":\"Class\",\"link\":\"ecwclass.index\",\"icon\":null,\"order_by\":9,\"status\":1,\"created_at\":\"2023-01-01T09:29:08.000000Z\",\"updated_at\":\"2023-01-01T09:29:08.000000Z\",\"children\":[]},{\"id\":19,\"parent_id\":2,\"name\":\"Editor Draft\",\"link\":\"editorDraft.index\",\"icon\":null,\"order_by\":10,\"status\":1,\"created_at\":\"2022-01-25T04:52:07.000000Z\",\"updated_at\":\"2022-01-25T04:52:07.000000Z\",\"children\":[]},{\"id\":42,\"parent_id\":2,\"name\":\"Level\",\"link\":\"level.index\",\"icon\":null,\"order_by\":11,\"status\":1,\"created_at\":\"2023-01-05T06:02:34.000000Z\",\"updated_at\":\"2023-01-05T06:02:34.000000Z\",\"children\":[]},{\"id\":43,\"parent_id\":2,\"name\":\"Audio Music\",\"link\":\"audio.music.index\",\"icon\":null,\"order_by\":12,\"status\":1,\"created_at\":\"2023-01-05T06:44:08.000000Z\",\"updated_at\":\"2023-01-05T06:44:08.000000Z\",\"children\":[]},{\"id\":46,\"parent_id\":2,\"name\":\"Video Content\",\"link\":\"video.content.index\",\"icon\":null,\"order_by\":13,\"status\":1,\"created_at\":\"2023-01-05T06:44:08.000000Z\",\"updated_at\":\"2023-01-05T06:44:08.000000Z\",\"children\":[]}]},{\"id\":3,\"parent_id\":null,\"name\":\"User Management\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":30,\"status\":1,\"created_at\":\"2021-04-25T19:25:55.000000Z\",\"updated_at\":\"2021-04-25T19:25:55.000000Z\",\"children\":[{\"id\":4,\"parent_id\":3,\"name\":\"Menu\",\"link\":\"menu.index\",\"icon\":null,\"order_by\":31,\"status\":1,\"created_at\":\"2021-04-25T19:26:37.000000Z\",\"updated_at\":\"2021-10-12T04:25:58.000000Z\",\"children\":[]},{\"id\":5,\"parent_id\":3,\"name\":\"Role\",\"link\":\"role.index\",\"icon\":null,\"order_by\":32,\"status\":1,\"created_at\":\"2021-04-25T19:27:10.000000Z\",\"updated_at\":\"2021-10-12T04:26:19.000000Z\",\"children\":[]},{\"id\":6,\"parent_id\":3,\"name\":\"Admin User\",\"link\":\"admin.index\",\"icon\":null,\"order_by\":34,\"status\":1,\"created_at\":\"2021-04-25T19:27:41.000000Z\",\"updated_at\":\"2021-10-12T04:25:46.000000Z\",\"children\":[]}]},{\"id\":8,\"parent_id\":null,\"name\":\"Content\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":40,\"status\":1,\"created_at\":\"2021-04-26T12:02:56.000000Z\",\"updated_at\":\"2021-12-01T03:39:26.000000Z\",\"children\":[{\"id\":14,\"parent_id\":8,\"name\":\"Category\",\"link\":\"category.index\",\"icon\":null,\"order_by\":6,\"status\":1,\"created_at\":\"2021-10-12T04:25:19.000000Z\",\"updated_at\":\"2021-12-01T03:39:48.000000Z\",\"children\":[]},{\"id\":33,\"parent_id\":8,\"name\":\"Album\",\"link\":\"album.index\",\"icon\":null,\"order_by\":9,\"status\":1,\"created_at\":\"2022-11-28T07:57:41.000000Z\",\"updated_at\":\"2023-01-01T07:31:15.000000Z\",\"children\":[]},{\"id\":10,\"parent_id\":8,\"name\":\"Pages\",\"link\":\"page.index\",\"icon\":null,\"order_by\":42,\"status\":1,\"created_at\":\"2021-04-26T12:08:35.000000Z\",\"updated_at\":\"2021-12-01T05:21:12.000000Z\",\"children\":[]},{\"id\":13,\"parent_id\":8,\"name\":\"Page Menu\",\"link\":\"page.menu.index\",\"icon\":null,\"order_by\":43,\"status\":1,\"created_at\":\"2021-04-26T12:10:01.000000Z\",\"updated_at\":\"2021-12-01T09:26:51.000000Z\",\"children\":[]},{\"id\":7,\"parent_id\":8,\"name\":\"Banner\",\"link\":\"banner.index\",\"icon\":null,\"order_by\":44,\"status\":1,\"created_at\":\"2021-04-26T11:57:49.000000Z\",\"updated_at\":\"2021-12-02T04:31:25.000000Z\",\"children\":[]},{\"id\":17,\"parent_id\":8,\"name\":\"Gallery\",\"link\":\"gallery.index\",\"icon\":null,\"order_by\":46,\"status\":1,\"created_at\":\"2021-11-08T04:55:52.000000Z\",\"updated_at\":\"2022-03-14T06:26:03.000000Z\",\"children\":[]},{\"id\":41,\"parent_id\":8,\"name\":\"All Resource\",\"link\":\"resource.index\",\"icon\":null,\"order_by\":47,\"status\":1,\"created_at\":\"2023-01-03T09:24:46.000000Z\",\"updated_at\":\"2023-01-03T09:24:46.000000Z\",\"children\":[]},{\"id\":44,\"parent_id\":8,\"name\":\"Interactive Radio\",\"link\":\"interactive.radio.index\",\"icon\":null,\"order_by\":48,\"status\":1,\"created_at\":\"2023-01-08T04:59:45.000000Z\",\"updated_at\":\"2023-01-08T05:00:29.000000Z\",\"children\":[]},{\"id\":45,\"parent_id\":8,\"name\":\"All Activity\",\"link\":\"activity.index\",\"icon\":null,\"order_by\":49,\"status\":1,\"created_at\":\"2023-01-09T05:20:23.000000Z\",\"updated_at\":\"2023-01-09T05:20:23.000000Z\",\"children\":[]}]}]', 1, 1, '2021-04-26 11:49:47', '2023-02-26 04:07:30'),
(2, 'Admin', NULL, '1,37', '116,117', '[{\"id\":1,\"parent_id\":null,\"name\":\"Dashboard\",\"link\":\"dashboard.index\",\"icon\":\"fa-home\",\"order_by\":1,\"status\":1,\"created_at\":\"2021-04-25T19:24:30.000000Z\",\"updated_at\":\"2021-11-08T04:56:13.000000Z\",\"children\":[]}]', 2, 1, '2021-10-25 23:34:34', '2022-12-27 01:35:48'),
(3, 'Manager', NULL, '1,2,9,11,12,15,8,14,10,13', '18,19,20,21,22,23,24,25,26,31,32,33,27,28,29,35,34', '[{\"id\":1,\"parent_id\":null,\"name\":\"Dashboard\",\"link\":\"dashboard.index\",\"icon\":\"fa-home\",\"order_by\":1,\"status\":1,\"created_at\":\"2021-04-25T19:24:30.000000Z\",\"updated_at\":\"2021-11-08T04:56:13.000000Z\",\"children\":[]},{\"id\":2,\"parent_id\":null,\"name\":\"Settings\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":10,\"status\":1,\"created_at\":\"2021-04-25T19:25:23.000000Z\",\"updated_at\":\"2021-04-25T19:25:23.000000Z\",\"children\":[{\"id\":9,\"parent_id\":2,\"name\":\"Division\",\"link\":\"division.index\",\"icon\":null,\"order_by\":1,\"status\":1,\"created_at\":\"2021-04-26T12:04:09.000000Z\",\"updated_at\":\"2021-10-11T05:44:42.000000Z\",\"children\":[]},{\"id\":11,\"parent_id\":2,\"name\":\"District\",\"link\":\"district.index\",\"icon\":null,\"order_by\":4,\"status\":1,\"created_at\":\"2021-04-26T12:09:08.000000Z\",\"updated_at\":\"2021-10-11T06:16:59.000000Z\",\"children\":[]},{\"id\":12,\"parent_id\":2,\"name\":\"Upazila\",\"link\":\"upazila.index\",\"icon\":null,\"order_by\":5,\"status\":1,\"created_at\":\"2021-04-26T12:09:44.000000Z\",\"updated_at\":\"2021-10-12T04:24:42.000000Z\",\"children\":[]},{\"id\":15,\"parent_id\":2,\"name\":\"YouTube\",\"link\":\"youtube.index\",\"icon\":null,\"order_by\":7,\"status\":1,\"created_at\":\"2021-10-21T05:25:39.000000Z\",\"updated_at\":\"2021-10-21T05:25:39.000000Z\",\"children\":[]}]},{\"id\":8,\"parent_id\":null,\"name\":\"Content\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":40,\"status\":1,\"created_at\":\"2021-04-26T12:02:56.000000Z\",\"updated_at\":\"2021-12-01T03:39:26.000000Z\",\"children\":[{\"id\":14,\"parent_id\":8,\"name\":\"Category\",\"link\":\"category.index\",\"icon\":null,\"order_by\":6,\"status\":1,\"created_at\":\"2021-10-12T04:25:19.000000Z\",\"updated_at\":\"2021-12-01T03:39:48.000000Z\",\"children\":[]},{\"id\":10,\"parent_id\":8,\"name\":\"Pages\",\"link\":\"page.index\",\"icon\":null,\"order_by\":42,\"status\":1,\"created_at\":\"2021-04-26T12:08:35.000000Z\",\"updated_at\":\"2021-12-01T05:21:12.000000Z\",\"children\":[]},{\"id\":13,\"parent_id\":8,\"name\":\"Page Menu\",\"link\":\"page.menu.index\",\"icon\":null,\"order_by\":43,\"status\":1,\"created_at\":\"2021-04-26T12:10:01.000000Z\",\"updated_at\":\"2021-12-01T09:26:51.000000Z\",\"children\":[]}]}]', 3, 1, '2021-10-25 23:34:47', '2021-12-02 02:15:24'),
(4, 'user editor', NULL, '1,2,19,8,10,13,7', '50,51,52,35,38,39,64,40,34,41,42,15,16,17', '[{\"id\":1,\"parent_id\":null,\"name\":\"Dashboard\",\"link\":\"dashboard.index\",\"icon\":\"fa-home\",\"order_by\":1,\"status\":1,\"created_at\":\"2021-04-25T19:24:30.000000Z\",\"updated_at\":\"2021-11-08T04:56:13.000000Z\",\"children\":[]},{\"id\":2,\"parent_id\":null,\"name\":\"Settings\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":1,\"status\":1,\"created_at\":\"2021-04-25T19:25:23.000000Z\",\"updated_at\":\"2022-01-25T04:51:29.000000Z\",\"children\":[{\"id\":19,\"parent_id\":2,\"name\":\"Editor Draft\",\"link\":\"editorDraft.index\",\"icon\":null,\"order_by\":10,\"status\":1,\"created_at\":\"2022-01-25T04:52:07.000000Z\",\"updated_at\":\"2022-01-25T04:52:07.000000Z\",\"children\":[]}]},{\"id\":8,\"parent_id\":null,\"name\":\"Content\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":40,\"status\":1,\"created_at\":\"2021-04-26T12:02:56.000000Z\",\"updated_at\":\"2021-12-01T03:39:26.000000Z\",\"children\":[{\"id\":10,\"parent_id\":8,\"name\":\"Pages\",\"link\":\"page.index\",\"icon\":null,\"order_by\":42,\"status\":1,\"created_at\":\"2021-04-26T12:08:35.000000Z\",\"updated_at\":\"2021-12-01T05:21:12.000000Z\",\"children\":[]},{\"id\":13,\"parent_id\":8,\"name\":\"Page Menu\",\"link\":\"page.menu.index\",\"icon\":null,\"order_by\":43,\"status\":1,\"created_at\":\"2021-04-26T12:10:01.000000Z\",\"updated_at\":\"2021-12-01T09:26:51.000000Z\",\"children\":[]},{\"id\":7,\"parent_id\":8,\"name\":\"Banner\",\"link\":\"banner.index\",\"icon\":null,\"order_by\":44,\"status\":1,\"created_at\":\"2021-04-26T11:57:49.000000Z\",\"updated_at\":\"2021-12-02T04:31:25.000000Z\",\"children\":[]}]}]', 4, 1, '2022-01-31 04:28:59', '2023-01-09 04:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence_no` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sequences`
--

INSERT INTO `sequences` (`id`, `name`, `sequence_no`, `created_at`, `updated_at`) VALUES
(1, 'uuid', 1147483706, '2022-12-06 05:57:45', '2022-12-27 00:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `details`, `language`, `status`, `uuid`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'A', NULL, 'en', 1, 1147483719, NULL, NULL, '2023-01-08 04:15:57', '2023-01-08 04:15:57'),
(2, 'A', NULL, 'my', 1, 1147483719, NULL, NULL, '2023-01-08 04:15:57', '2023-01-08 04:15:57'),
(3, 'B', 'dedwerwe', 'en', 1, 1147483720, NULL, NULL, '2023-01-08 04:16:08', '2023-01-08 04:21:32'),
(4, 'B', 'exdsdfsdf', 'my', 1, 1147483720, NULL, NULL, '2023-01-08 04:16:08', '2023-01-08 04:21:32'),
(5, 'c', 'xwewewe', 'en', 1, 1147483721, NULL, NULL, '2023-01-08 04:17:17', '2023-01-08 04:17:17'),
(6, 'c', 'wwqeqwewe', 'my', 1, 1147483721, NULL, NULL, '2023-01-08 04:17:17', '2023-01-08 04:17:17'),
(7, 'skill en', 'skill details en', 'en', 1, 1147483745, NULL, NULL, '2023-01-19 01:02:53', '2023-01-19 01:02:53'),
(8, 'skill my', 'skill details my', 'my', 1, 1147483745, NULL, NULL, '2023-01-19 01:02:53', '2023-01-19 01:02:53'),
(9, 'skill update en 1', 'skill update details en 1', 'en', 1, 1147483746, NULL, NULL, '2023-01-19 01:03:11', '2023-01-19 01:03:11'),
(10, 'skill update my 1', 'skill update details my 1', 'my', 1, 1147483746, NULL, NULL, '2023-01-19 01:03:11', '2023-01-19 01:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `details`, `language`, `status`, `uuid`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Life Skills', 'Life Skills', 'en', 1, 1147483657, NULL, NULL, '2022-12-07 02:15:44', '2023-01-11 01:06:25'),
(2, 'Emi Cervantes', 'Delectus adipisci a', 'fr', 1, 1147483657, NULL, NULL, '2022-12-07 02:15:44', '2022-12-07 02:15:44'),
(3, 'Martena Hebert', 'Non quas mollitia si', 'ar', 1, 1147483657, NULL, NULL, '2022-12-07 02:15:44', '2022-12-07 02:15:44'),
(4, 'Social Studies', 'Social Studies', 'en', 1, 1147483658, NULL, NULL, '2022-12-07 02:17:42', '2023-01-11 01:05:32'),
(5, 'Isaiah Munoz', 'Nisi est error dolo', 'fr', 1, 1147483658, NULL, NULL, '2022-12-07 02:17:42', '2022-12-07 02:17:42'),
(6, 'Cheryl Soto', 'Veniam fugit sed p', 'ar', 1, 1147483658, NULL, NULL, '2022-12-07 02:17:42', '2022-12-07 02:17:42'),
(7, 'English', 'English Language', 'en', 1, 1147483706, NULL, NULL, '2023-01-02 21:06:39', '2023-01-11 00:49:43'),
(8, 'အင်္ဂလိပ်စာ', 'အင်္ဂလိပ်ဘာသာစကား', 'my', 1, 1147483706, NULL, NULL, '2023-01-02 21:06:39', '2023-01-11 00:49:43'),
(9, 'Burmese', 'Burmese Language', 'en', 1, 1147483707, NULL, NULL, '2023-01-03 04:01:11', '2023-01-11 00:50:40'),
(10, 'မြန်မာ', 'ဗမာဘာသာစကား', 'my', 1, 1147483707, NULL, NULL, '2023-01-03 04:01:11', '2023-01-11 00:50:40'),
(11, 'Physics', 'Physics (Force)', 'en', 1, 1147483708, NULL, NULL, '2023-01-11 00:51:39', '2023-01-11 00:51:39'),
(12, 'ရူပေဗဒ', 'ရူပဗေဒအင်အားစု', 'my', 1, 1147483708, NULL, NULL, '2023-01-11 00:51:39', '2023-01-11 00:51:39'),
(13, 'Chemistry', 'Chemistry', 'en', 1, 1147483709, NULL, NULL, '2023-01-11 00:52:04', '2023-01-11 00:52:04'),
(14, 'ဓာတုဗေဒ', 'ဓာတုဗေဒ', 'my', 1, 1147483709, NULL, NULL, '2023-01-11 00:52:04', '2023-01-11 00:52:04'),
(15, 'လူမှုရေးလေ့လာမှုများ', 'လူမှုရေးလေ့လာမှုများ', 'my', 1, 1147483658, NULL, NULL, '2023-01-11 01:05:32', '2023-01-11 01:05:32'),
(16, 'ဘဝကျွမ်းကျင်မှု', 'ဘဝကျွမ်းကျင်မှု', 'my', 1, 1147483657, NULL, NULL, '2023-01-11 01:06:25', '2023-01-11 01:06:25');

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verify_code` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationalid` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `study_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `upazila_id` int(11) DEFAULT NULL,
  `post_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_contents`
--

CREATE TABLE `video_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `activision_time` decimal(5,2) DEFAULT NULL,
  `duration_time` decimal(5,2) DEFAULT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `you_tubes`
--

CREATE TABLE `you_tubes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `video_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activision_time` decimal(5,2) DEFAULT NULL,
  `duration_time` decimal(5,2) DEFAULT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `you_tubes`
--

INSERT INTO `you_tubes` (`id`, `uuid`, `name`, `title`, `description`, `published_at`, `video_id`, `activision_time`, `duration_time`, `ip`, `image`, `language`, `status`, `order_by`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1147483688, 'Hope Wagner en', 'Taylor Swift - Blank Space', '►Exclusive Merch: https://store.taylorswift.com\n \n►Follow Taylor Swift Online\nInstagram: http://www.instagram.com/taylorswift\nFacebook: http://www.facebook.com/taylorswift\nTumblr: http://taylorswift.tumblr.com\nTwitter: http://www.twitter.com/taylorswift13\nWebsite: http://www.taylorswift.com\n \n►Follow Taylor Nation Online\nInstagram: http://www.instagram.com/taylornation\nTumblr: http://taylornation.tumblr.com\nTwitter: http://www.twitter.com/taylornation13', '2014-11-10 17:05:44', 'e-ORhEE9VVg', '1.00', '5.00', '127.0.0.1', 'https://i.ytimg.com/vi/e-ORhEE9VVg/mqdefault.jpg', 'en', 1, 1, NULL, NULL, NULL, NULL),
(2, 1147483688, 'Quemby Bruce fr', 'Justin Bieber - Baby ft. Ludacris', 'REMASTERED IN HD! UP TO 4K!\nOfficial Music Video for Baby performed by Justin Bieber (ft. Ludacris).\n\nFollow Justin \nInstagram: https://www.instagram.com/justinbieber\nTwitter: https://twitter.com/justinbieber\nFacebook: https://www.facebook.com/JustinBieber\nTikTok: https://www.tiktok.com/@justinbieber\nWebsite: http://justinbiebermusic.com\n\nSign up to Justin’s newsletter: http://justinbiebermusic.com\n\n#JustinBieber #Ludacris #Baby #Remastered', '2010-02-19 14:16:34', 'kffacxfA7G4', '1.00', '5.00', '127.0.0.1', 'https://i.ytimg.com/vi/kffacxfA7G4/mqdefault.jpg', 'my', 1, 1, NULL, NULL, NULL, NULL),
(3, 1147483692, 'Keane Herrera en', 'Maroon 5 - Animals (Official Music Video)', 'Maroon 5 - Animals\n\nDirector: Samuel Bayer\n\nBuy Now! http://smarturl.it/M5V\n\nSign up for updates: http://smarturl.it/Maroon5.News', '2014-09-29 16:00:13', 'qpgTC9MDx1o', '2.00', '5.00', '127.0.0.1', 'https://i.ytimg.com/vi/qpgTC9MDx1o/mqdefault.jpg', 'en', 1, 2, NULL, NULL, NULL, NULL),
(4, 1147483692, 'Brendan Hunter en', 'Katy Perry - Dark Horse (Official) ft. Juicy J', 'Listen to Katy’s new song “Smile”: https://katy.to/smileID\n\nGet \"Dark Horse\" from Katy Perry\'s \'PRISM\': http://katy.to/PRISM\n\nKaty Perry Complete Collection on Spotify: http://katy.to/SpotifyCompleteYD\nKaty Perry Essentials on Apple Music: http://katy.to/AMEssentialsYD\nWatch your favorite Katy videos on YouTube: http://katy.to/MusicVideosYD\n\nFollow Katy Perry:\nWebsite: http://katy.to/WebsiteYD\nInstagram: http://katy.to/InstagramYD\nTwitter: http://katy.to/TwitterYD\nFacebook: http://katy.to/FacebookYD\n\n\nDirected by Matthew Cullen & Produced by Dawn Rose, Danny Lockwood, Javier Jimenez, and Derek Johnson\n\n\nLyrics:\nI knew you were\nYou were gonna come to me\nAnd here you are\nBut you better choose carefully\n‘Cause I am capable of anything\nOf anything and everything\nMake me your Aphrodite\nMake me your one and only\nBut don’t make me your enemy\nYour enemy, your enemy\n\n(Pre-Chorus)\nSo you wanna play with magic\nBoy, you should know what you’re fallin’ for\nBaby, do you dare to do this\n‘Cause I’m coming atcha like a dark horse\n\n(Chorus)\nAre you ready for, ready for\nA perfect storm, perfect storm\n‘Cause once you’re mine, once you’re mine\nThere’s no going back\n\nMark my words\nThis love will make you levitate\nLike a bird\nLike a bird without a cage\nBut down to earth\nIf you choose to walk away\nDon’t walk away\nIt’s in the palm of your hand now, baby\nIt’s a yes or a no, no maybe\nSo just be sure\nBefore you give it all to me\nAll to me\nGive it all to me\n\n(Pre-Chorus)\nSo you wanna play with magic\nBoy, you should know what you’re fallin’ for\nBaby, do you dare to do this\n‘Cause I’m coming atcha like a dark horse\n\n(Chorus)\nAre you ready for, ready for\nA perfect storm, perfect storm\n‘Cause once you’re mine, once you’re mine\nThere’s no going back\n\n(Juicy J)\nShe’s a beast\nI call her Karma\nShe’ll eat your heart out\nLike Jeffrey Dahmer\n\nBe careful\nTry not to lead her on\nShorty heart is on steroids\n‘Cause her love is so strong\n\nYou may fall in love when you meet her\nIf you get the chance, you better keep her\nShe’s sweet as pie, but if you break her heart\nShe’ll turn cold as a freezer\n\nThat fairy tale ending with a knight in shining armor\nShe can be my Sleeping Beauty\nI’m gon’ put her in a coma\n\nNow I think I love her\nShorty so bad, sprung and I don’t care\nShe ride me like a roller coaster\nTurned the bedroom into a fair\n\nHer love is like a drug\nI was tryna hit it and quit it\nBut lil’ mama so dope\nI messed around and got addicted\n\n(Pre-Chorus)\nSo you wanna play with magic\nBoy, you should know what you’re fallin’ for\nBaby, do you dare to do this\n‘Cause I’m coming atcha like a dark horse\n\n(Chorus)\nAre you ready for, ready for\nA perfect storm, perfect storm\n‘Cause once you’re mine, once you’re mine\nThere’s no going back\n\n\nMusic video by Katy Perry performing Dark Horse. (C) 2014 Capitol Records, LLC', '2014-02-21 02:00:03', '0KSOMA3QBU0', '2.00', '5.00', '127.0.0.1', 'https://i.ytimg.com/vi/0KSOMA3QBU0/mqdefault.jpg', 'my', 1, 2, NULL, NULL, NULL, NULL),
(5, 1147483693, 'Rina Jarvis', 'Ellie Goulding - Love Me Like You Do - Fifty Shades of Grey', 'Ellie Goulding - Love Me Like You Do\nFrom the soundtrack of the film: «Fifty Shades of Grey» starring Dakota Johnson and Jamie Dornan, directed by Sam Taylor Johnson\n\nLyrics\nYou\'re the light, you\'re the night\nYou\'re the colour of my blood\nYou\'re the cure, you\'re the pain\nYou\'re the only thing I wanna touch\nNever knew that it could mean so much, so much\n\nYou\'re the fear, I don\'t care\n\'cause I\'ve never been so high\nFollow me to the dark\nlet me take you past our satellites\n\nYou can see the world you brought to life, to life\nSo love me like you do, lo-lo-love me like you do\nLove me like you do, lo-lo-love me like you do\nTouch me like you do, to-to-touch me like you do\nWhat are you waiting for?\n\nFading in, fading out\nOn the edge of paradise\nEvery inch of your skin is a holy gray I\'ve got to find\nOnly you can set my heart on fire, on fire\nYeah, I\'ll let you set the pace\n\'cause I\'m not thinking straight\nMy head spinning around I can\'t see clear no more\nWhat are you waiting for?\n\nLove me like you do, lo-lo-love me like you do\nlove me like you do, lo-lo-love me like you do\nTouch me like you do, to-to-touch me like you do\nWhat are you waiting for?\n\nLove me like you do, lo-lo-love me like you do, like you do\nLove me like you do, lo-lo-love me like you do, yeah\nTouch me like you do, to-to-touch me like you do\nWhat are you waiting for?\n\nI\'ll let you set the pace\n\'cause I\'m not thinking straight\nMy head spinning around I can\'t see clear no more\nWhat are you waiting for?\n\nLove me like you do, lo-lo-love me like you do, like you do\nLove me like you do, lo-lo-love me like you do, yeah\nTouch me like you do, to-to-touch me like you do\nWhat are you waiting for?\n\nLove me like you do, lo-lo-love me like you do, like you do\nlove me like you do, lo-lo-love me like you do, yeah\nTouch me like you do, to-to-touch me like you do\nWhat are you waiting for?', '2019-07-28 10:46:43', 'bgjUzhdmmF0', '1.00', '10.00', '127.0.0.1', 'https://i.ytimg.com/vi/bgjUzhdmmF0/mqdefault.jpg', 'en', 1, 3, NULL, NULL, NULL, NULL),
(6, 1147483693, 'Timon Mullins', 'Marshmello & Anne-Marie - FRIENDS (Music Video) *OFFICIAL FRIENDZONE ANTHEM*', 'Download FRIENDS by Marshmello & Anne-Marie HERE ▶ http://au.gt/friends\n\nPLAY MARSHMELLO MUSIC DANCE HERE ▶ http://smarturl.it/mellomusicdance\n\nNEW Mello™️ by Marshmello gear SHOP NOW ▶ https://www.marshmellomusic.com\n\nWatch Cooking with Marshmello HERE ▶ http://youtube.com/playlist?list=PLcYK4PlHbZQtXROf5fnrr4dO4ruWiv7ts\n\nWATCH ONE THING RIGHT ▶ https://youtu.be/O6RyKbcpBfw\nWATCH LIGHT IT UP MUSIC VIDEO ▶ https://youtu.be/qGh2e-yqEYQ\nWATCH HERE WITH ME MUSIC VIDEO ▶ https://youtu.be/J3UXp9jIr-U\nWATCH BIBA MUSIC VIDEO ▶ https://youtu.be/UhYRlI_bpJQ\nWATCH PROJECT DREAMS MUSIC VIDEO ▶ https://youtu.be/Hn7WDtF3nKA\nWATCH HAPPIER MUSIC VIDEO ▶ https://youtu.be/m7Bc3pLyij0\nWATCH TOGETHER MUSIC VIDEO ▶ https://youtu.be/JePnQ1gSagc\nWATCH BAYEN HABEIT LYRIC VIDEO ▶ https://youtu.be/jNJCdxMf0t8\nWATCH STARS MUSIC VIDEO ▶ https://youtu.be/A57B7B6w3kw\nWATCH FLASHBACKS MUSIC VIDEO ▶ https://youtu.be/Lj-_mD0w474\nWATCH YOU CAN CRY MUSIC VIDEO ▶ https://youtu.be/2SJ0hgdciNE\nWATCH EVERYDAY MUSIC VIDEO ▶ https://youtu.be/bEdcJY8Emm8\nWATCH FLY MUSIC VIDEO ▶ https://youtu.be/oRArmtMA9AI\nWATCH FRIENDS MUSIC VIDEO ▶ https://youtu.be/jzD_yyEcp0M\nWATCH SPOTLIGHT MUSIC VIDEO ▶ https://youtu.be/7R1N-8SoqcM\nWATCH LOVE U MUSIC VIDEO ▶ https://youtu.be/D-pKeb6Wf4U\nWATCH TAKE IT BACK MUSIC VIDEO ▶ https://youtu.be/P9Ijqa_2eu0\nWATCH SILENCE MUSIC VIDEO ▶ https://youtu.be/Tx1sqYc3qas\nWATCH BLOCKS MUSIC VIDEO ▶ https://youtu.be/5E4ZBSInqUU\nWATCH YOU & ME MUSIC VIDEO ▶ https://youtu.be/fiusxyygqGk\nWATCH FIND ME MUSIC VIDEO ▶ https://youtu.be/ymq1WdGUcw8\nWATCH MOVING ON MUSIC VIDEO ▶ https://youtu.be/yU0tnrEk8H4\nWATCH SUMMER MUSIC VIDEO ▶ https://youtu.be/2vMH8lITTCE\nWATCH ALONE MUSIC VIDEO ▶ https://youtu.be/ALZHF5UqnU4\nWATCH KEEP IT MELLO MUSIC VIDEO ▶ https://youtu.be/_J_VpmXAzqg\nWATCH RESCUE ME ▶ https://youtu.be/O6RyKbcpBfw \n\nSUBSCRIBE HERE ▶ http://youtube.com/marshmellomusic?sub_confirmation=1\n\nMARSHMELLO: \nMerch | http://mellogang.com\nSpotify | http://spoti.fi/marshmello\nApple Music | https://apple.co/2n8Evz6\nSoundCloud | http://soundcloud.com/marshmellomusic\nInstagram | http://instagram.com/marshmellomusic\nFacebook | http://facebook.com/marshmellomusic\nTwitter | http://twitter.com/marshmellomusic\nTwitch | http://twitch.tv/marshmellomusic\n\nConnect with Anne-Marie:\nSubscribe- http://bit.ly/1FciNcA\nOfficial Website- http://iamannemarie.com\nFacebook- http://www.facebook.com/iamannemarie\nTwitter- http://twitter.com/AnneMarieIAm\nInstagram- https://instagram.com/annemarieiam\n\nMarshmello & Anne-Marie - FRIENDS *OFFICIAL FRIENDZONE ANTHEM*\n#FRIENDS #Marshmello #AnneMarie #FRIENDZONE #FriendsForeverChallenge #Amigos', '2018-02-16 18:41:36', 'jzD_yyEcp0M', '1.00', '5.00', '127.0.0.1', 'https://i.ytimg.com/vi/jzD_yyEcp0M/mqdefault.jpg', 'my', 1, 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `you_tube_watches`
--

CREATE TABLE `you_tube_watches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration_time` decimal(5,2) DEFAULT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audio_music`
--
ALTER TABLE `audio_music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_menus`
--
ALTER TABLE `auth_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecw_classes`
--
ALTER TABLE `ecw_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editor_drafts`
--
ALTER TABLE `editor_drafts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_calendars`
--
ALTER TABLE `event_calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interactive_radios`
--
ALTER TABLE `interactive_radios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `latest_news`
--
ALTER TABLE `latest_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_actions`
--
ALTER TABLE `menu_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_boards`
--
ALTER TABLE `notice_boards`
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
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_menus`
--
ALTER TABLE `page_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_contents`
--
ALTER TABLE `video_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `you_tubes`
--
ALTER TABLE `you_tubes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `you_tube_watches`
--
ALTER TABLE `you_tube_watches`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `audio_music`
--
ALTER TABLE `audio_music`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_menus`
--
ALTER TABLE `auth_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecw_classes`
--
ALTER TABLE `ecw_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `editor_drafts`
--
ALTER TABLE `editor_drafts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_calendars`
--
ALTER TABLE `event_calendars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interactive_radios`
--
ALTER TABLE `interactive_radios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `latest_news`
--
ALTER TABLE `latest_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_actions`
--
ALTER TABLE `menu_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `notice_boards`
--
ALTER TABLE `notice_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_menus`
--
ALTER TABLE `page_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sequences`
--
ALTER TABLE `sequences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_contents`
--
ALTER TABLE `video_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `you_tubes`
--
ALTER TABLE `you_tubes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `you_tube_watches`
--
ALTER TABLE `you_tube_watches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
