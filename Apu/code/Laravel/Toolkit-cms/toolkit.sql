-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 09:42 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toolkit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `password` text DEFAULT NULL,
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
(7, 'Test Admin', NULL, 'testadmin@gmail.com', NULL, NULL, '2', NULL, 1, '$2y$10$lLGkSDRd7ikCSMtgr.GD/.aclEUoLdKnWibhaKu/2zO5urksE6KXu', '2022-09-06 02:32:33', '2022-09-06 02:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `auth_menus`
--

CREATE TABLE `auth_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
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
(16, NULL, 'Report', 'dashboard.index', NULL, 100, 1, '2021-11-07 22:31:29', '2022-02-07 22:05:15'),
(17, 8, 'Gallery', 'gallery.index', NULL, 45, 1, '2021-11-07 22:55:52', '2021-12-02 02:13:13'),
(18, 16, 'YouTube Meta', 'report.youtubeMeta', NULL, 101, 1, '2021-11-10 00:50:04', '2022-02-07 22:05:29'),
(19, 2, 'Editor Draft', 'editorDraft.index', NULL, 10, 1, '2022-01-24 22:52:07', '2022-01-24 22:52:07'),
(20, 8, 'Tool', 'tool.index', NULL, 46, 1, '2022-02-05 23:15:15', '2022-02-05 23:15:35'),
(21, 8, 'Toolkit Category', 'toolkit.category.index', NULL, 47, 1, '2022-02-07 00:41:56', '2022-02-07 00:48:42'),
(22, 8, 'Tool Methodology', 'tool.methodology.index', NULL, 48, 1, '2022-02-07 02:02:43', '2022-02-07 02:02:43'),
(23, 8, 'Intersectionality Tips', 'intersectionality.tips.index', NULL, 49, 1, '2022-02-07 03:57:16', '2022-02-07 03:57:16'),
(24, 8, 'Relevant Indicator', 'relevant.indicator.index', NULL, 50, 1, '2022-02-07 22:05:49', '2022-02-07 22:05:49'),
(25, 8, 'Toolkit', 'toolkit.index', NULL, 53, 1, '2022-02-08 04:20:49', '2022-02-09 21:53:27'),
(26, 8, 'Further Reading', 'further.reading.index', NULL, 51, 1, '2022-02-09 21:53:58', '2022-02-09 21:53:58'),
(27, 2, 'Country', 'country.index', NULL, 11, 1, '2022-07-26 07:17:14', '2022-07-26 07:17:14'),
(28, 8, 'Feedback', 'feedback.index', NULL, NULL, 1, '2022-08-10 04:18:24', '2022-08-10 04:18:24'),
(29, 8, 'User Story', 'story.index', NULL, NULL, 1, '2022-08-22 06:19:00', '2022-08-22 06:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `order_bye` int(11) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `type`, `image`, `path`, `description`, `url`, `language`, `order_bye`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Gallery 1', 'gallery', 'dVptwwUTS8teA9bTWrmifGf4EciJTUhu7DEok8Dg.png', 'dVptwwUTS8teA9bTWrmifGf4EciJTUhu7DEok8Dg.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2021-12-02 03:20:21', '2021-12-14 03:33:44'),
(2, 'Banner image1', 'banner', 'nWm413XysiVA8J4Vhju3pjRX1tOCSRLIhDeVIoaY.png', 'nWm413XysiVA8J4Vhju3pjRX1tOCSRLIhDeVIoaY.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2021-12-02 03:36:43', '2021-12-13 03:51:52'),
(3, 'Banner 2', 'banner', 'nWm413XysiVA8J4Vhju3pjRX1tOCSRLIhDeVIoaY.png', 'nWm413XysiVA8J4Vhju3pjRX1tOCSRLIhDeVIoaY.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2021-12-02 21:59:11', '2021-12-14 03:01:15'),
(4, 'Gallery  2', 'gallery', '4yQ1mTFtFDifZy5x9vpfdymMYCIcqMy9ZHZL9TZ1.png', '4yQ1mTFtFDifZy5x9vpfdymMYCIcqMy9ZHZL9TZ1.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2021-12-14 03:16:26', '2021-12-14 03:33:57'),
(5, 'Gallery  3', 'gallery', 'MXbTr4DDZODLBUjTrsxjNcGdLFNdK7banU5oQmWF.png', 'MXbTr4DDZODLBUjTrsxjNcGdLFNdK7banU5oQmWF.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2021-12-14 03:16:36', '2021-12-14 03:34:07'),
(6, 'Gallery  4', 'gallery', '2MZ8qVp7PrLRXTIhz4tFsBPqv9GabX0u9zGEC8kQ.png', '2MZ8qVp7PrLRXTIhz4tFsBPqv9GabX0u9zGEC8kQ.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2021-12-14 03:16:49', '2021-12-14 03:34:18'),
(7, 'Gallery  5', 'gallery', 'B1OmAOPoZu2MOi4PozkS8fPUQpmdBK2xcVHqHLrM.png', 'B1OmAOPoZu2MOi4PozkS8fPUQpmdBK2xcVHqHLrM.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2021-12-14 03:17:08', '2021-12-14 03:34:30'),
(8, 'Gallery  6', 'gallery', 'd49jazm1zBjJPJ7f8maKUUrs0SfkorACRIUbAjK6.png', 'd49jazm1zBjJPJ7f8maKUUrs0SfkorACRIUbAjK6.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2021-12-14 03:35:26', '2021-12-14 03:35:26'),
(10, 'ssssss', 'banner', 'Xkcgz4X7MzMTvAl467n6DRd5IJS0DjdE0Tib9aZo.jpg', 'Xkcgz4X7MzMTvAl467n6DRd5IJS0DjdE0Tib9aZo.jpg', 'ssss', 'sssssssss', 'en', NULL, NULL, 1, 1, 1, '2022-01-26 02:54:32', '2022-01-26 02:57:19'),
(11, 'rrrrrrrrrr', 'gallery', 'cQ9wdVVDo1YUFqDhCOFCQbMgKXbFBfvR16aqAMiI.jpg', 'cQ9wdVVDo1YUFqDhCOFCQbMgKXbFBfvR16aqAMiI.jpg', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-01-26 02:59:09', '2022-01-26 02:59:09'),
(13, 'Caregivers', 'beneficiaries', '4nlkWZ8DSxaCi94LGWOlw0zt0TRO5iJKrqv4SH8o.png', '4nlkWZ8DSxaCi94LGWOlw0zt0TRO5iJKrqv4SH8o.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-02-08 22:43:33', '2022-03-06 03:25:23'),
(14, 'Community Based Service', 'beneficiaries', 'eCasiIzYNxmnc8pncGkWwlsxh1j2lmo40l56cWCD.png', 'eCasiIzYNxmnc8pncGkWwlsxh1j2lmo40l56cWCD.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-02-08 22:44:12', '2022-03-06 03:25:55'),
(15, 'Community Worker', 'users', 'mHJ6QFrRS79CMj4xNR15tT4HgZayUhlK6CMQMhGF.png', 'mHJ6QFrRS79CMj4xNR15tT4HgZayUhlK6CMQMhGF.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-02-08 22:44:22', '2022-03-08 09:57:08'),
(16, 'Children attending ECCD centers', 'users_beneficiaries', '149kes9OQkzVVGOJovcVUb2ksK8B5MQgxNWPKo3M.png', '149kes9OQkzVVGOJovcVUb2ksK8B5MQgxNWPKo3M.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-02-08 22:44:33', '2022-03-06 03:30:41'),
(17, 'All Educators', 'users_beneficiaries', 'jLceNZWK70FbIugDi7sr67RNZ95pCKHqBe8MHA07.png', 'jLceNZWK70FbIugDi7sr67RNZ95pCKHqBe8MHA07.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-02-08 22:44:43', '2022-03-06 03:31:13'),
(18, 'School Head (ECCD centers and schools)', 'users_beneficiaries', 'q3EgMyaBw0LHpRAHjZits4lR4biwCCVinZZgREth.png', 'q3EgMyaBw0LHpRAHjZits4lR4biwCCVinZZgREth.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-06 03:32:25', '2022-03-06 03:32:25'),
(19, 'Parents & Caregivers', 'users_beneficiaries', 'eyxkgDrjfvSkFeZfclnNdy3jJfDNr9fa1o69AuqL.png', 'eyxkgDrjfvSkFeZfclnNdy3jJfDNr9fa1o69AuqL.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-06 03:32:58', '2022-09-12 04:08:31'),
(20, 'School Management', 'users_beneficiaries', 'D5evum7NgGN6brzWgcOVNUE8m56mQkLUgbRu0otO.png', 'D5evum7NgGN6brzWgcOVNUE8m56mQkLUgbRu0otO.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-06 03:33:24', '2022-03-06 03:33:24'),
(21, 'Secondary Teacher', 'users_beneficiaries', '9BL7PWbj0lCfVfxepxNy9yB5YW5396t7VG0FByrl.png', '9BL7PWbj0lCfVfxepxNy9yB5YW5396t7VG0FByrl.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-06 03:34:03', '2022-03-06 03:34:03'),
(22, 'Secondary Student', 'users_beneficiaries', 'fphKZgFGHy1VD0BU25k9vHP9LpSMSl6Ny9yo8DDD.png', 'fphKZgFGHy1VD0BU25k9vHP9LpSMSl6Ny9yo8DDD.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-06 03:36:01', '2022-03-06 03:36:01'),
(23, 'Primary Teacher', 'users_beneficiaries', 'Z3PcaWQHZBARQK6poMKFENQvLLukQLHV6z2wrf4M.png', 'Z3PcaWQHZBARQK6poMKFENQvLLukQLHV6z2wrf4M.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-06 03:36:23', '2022-03-06 03:36:23'),
(24, 'Primary Student', 'users_beneficiaries', '589MdOi1WGjP83a6FozDye6i8XmEbHr5I1CeEUxJ.png', '589MdOi1WGjP83a6FozDye6i8XmEbHr5I1CeEUxJ.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-06 03:36:44', '2022-03-06 03:36:45'),
(25, 'ECCD Educator', 'users_beneficiaries', 'fG8sJRQXBwoY5FVm89JuhdlVmSdv5srFw6lRffqQ.png', 'fG8sJRQXBwoY5FVm89JuhdlVmSdv5srFw6lRffqQ.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-06 03:37:18', '2022-03-06 03:37:18'),
(26, 'Trainer', 'users', '1z2bvBpMttHrkTf47U85Hzk8VPCvnr4oIffzvs7p.png', '1z2bvBpMttHrkTf47U85Hzk8VPCvnr4oIffzvs7p.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-08 09:53:18', '2022-03-08 09:53:18'),
(27, 'Policy Maker', 'users', '6A6qk6d1Ngapt68RRwMN3r7jULsjHN72lj1c7Zpl.png', '6A6qk6d1Ngapt68RRwMN3r7jULsjHN72lj1c7Zpl.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-08 09:54:10', '2022-03-08 09:54:10'),
(28, 'Teacher Trainer', 'users', 'mCuifeX93bAE1wN6KG3LNh5NFKggnKD8qB8K2PhT.png', 'mCuifeX93bAE1wN6KG3LNh5NFKggnKD8qB8K2PhT.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-08 09:54:27', '2022-03-08 09:54:27'),
(29, 'Project Manager', 'users', 'giwP6fTEBqZtd0KrhqzVKfDzYrxRuaYhTf91084t.png', 'giwP6fTEBqZtd0KrhqzVKfDzYrxRuaYhTf91084t.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-08 09:55:05', '2022-05-30 16:48:45'),
(30, 'Government, Country Directors', 'users', 'kLkuBUtZiA3aqEC2zaizjbA2pYrZJmfUteAf2nW7.png', 'kLkuBUtZiA3aqEC2zaizjbA2pYrZJmfUteAf2nW7.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-08 09:55:34', '2022-03-08 09:55:34'),
(31, 'SC Field Staff', 'users', 'in4nAMGOXDfUZijyZqCoy7XtREkJAO7b54zGMSEt.png', 'in4nAMGOXDfUZijyZqCoy7XtREkJAO7b54zGMSEt.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-08 09:56:31', '2022-03-08 09:56:31'),
(32, 'NGO, INGO', 'users', '1qVapvSQf7kuP1LDJVZJgdgSKGIXtD076A18DkTn.png', '1qVapvSQf7kuP1LDJVZJgdgSKGIXtD076A18DkTn.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2022-03-08 09:56:52', '2022-03-08 09:56:52'),
(33, 'Demo', 'users', 'Ve2DP1bUkcF9NB54lzRhW2Pc15PBlKqcWdTqPggu.jpg', 'Ve2DP1bUkcF9NB54lzRhW2Pc15PBlKqcWdTqPggu.jpg', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2023-01-26 01:46:47', '2023-01-26 01:46:47'),
(34, 'chatgpt error', 'users', 'ugN3pXMfzrpcLk3ErqNnjNoLU6SdMIHnqFfIOxQr.png', 'ugN3pXMfzrpcLk3ErqNnjNoLU6SdMIHnqFfIOxQr.png', NULL, NULL, 'en', NULL, NULL, 1, 1, 1, '2023-01-26 01:48:37', '2023-01-26 01:48:37'),
(35, 'Cuidadoras', 'beneficiaries', 'EBKcJM6fcZTgLhGA9V1fCGcSnsQdjOljcHoIhf7Q.png', 'EBKcJM6fcZTgLhGA9V1fCGcSnsQdjOljcHoIhf7Q.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-29 23:53:26', '2023-01-29 23:53:26'),
(36, 'Servicio Basado En La Comunidad', 'beneficiaries', '6bNeXCKCai1FQoGSdsMQHwKTPxm3xQtOByNTctK2.png', '6bNeXCKCai1FQoGSdsMQHwKTPxm3xQtOByNTctK2.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-29 23:53:56', '2023-01-29 23:53:56'),
(37, 'Trabajadora Comunitaria', 'users', '9UlHAD4GWKyHtliUb6BZLfOqsKahztgzAxdoDFX2.png', '9UlHAD4GWKyHtliUb6BZLfOqsKahztgzAxdoDFX2.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-29 23:54:21', '2023-01-30 00:01:10'),
(38, 'Niños Que Asisten A Centros ECCD', 'users_beneficiaries', '4XLafhsbyKXoGgmrsGgHoJYIzMqwbPAK5aMlEEzu.png', '4XLafhsbyKXoGgmrsGgHoJYIzMqwbPAK5aMlEEzu.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-29 23:54:58', '2023-01-29 23:54:58'),
(39, 'Todos Los Educadores', 'users_beneficiaries', '4uEJCpvrI4Ungpy2HL09AxewfS2bFc2sowSCzv7w.png', '4uEJCpvrI4Ungpy2HL09AxewfS2bFc2sowSCzv7w.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-29 23:57:31', '2023-01-29 23:58:20'),
(40, 'Schoo Head (Cntros Y Escuelas ECCD)', 'users_beneficiaries', 'WSwGjYbuHpDJKeEuqDJNTIjiNyGvzK2KxKJzS7gB.png', 'WSwGjYbuHpDJKeEuqDJNTIjiNyGvzK2KxKJzS7gB.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-29 23:59:18', '2023-01-29 23:59:18'),
(41, 'Padres Y Cuidadoras', 'users_beneficiaries', 'KuCVu1A4Z8NUTKRQnIWXqY80LVBOc3ceI66a45vt.png', 'KuCVu1A4Z8NUTKRQnIWXqY80LVBOc3ceI66a45vt.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:00:47', '2023-01-30 00:00:55'),
(42, 'Gestión Escolar', 'users_beneficiaries', 'nt2okfCX93TDrKrqg5SBanxre2Tr0rqlwaCwdvOe.png', 'nt2okfCX93TDrKrqg5SBanxre2Tr0rqlwaCwdvOe.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:02:01', '2023-01-30 00:02:01'),
(43, 'Profesor De Secundaria', 'users_beneficiaries', 'ZlkedVKZ8HKfp7p0tluIbhbhpz8GXgE2VXxzaiUY.png', 'ZlkedVKZ8HKfp7p0tluIbhbhpz8GXgE2VXxzaiUY.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:02:40', '2023-01-30 00:02:40'),
(44, 'Alumna De Secundaria', 'users_beneficiaries', 'qZnHU0LK9vFMH2HZif0Tou4hMPOFYtQoi1NVF44T.png', 'qZnHU0LK9vFMH2HZif0Tou4hMPOFYtQoi1NVF44T.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:03:03', '2023-01-30 00:03:03'),
(45, 'Profesora De Primaria', 'users_beneficiaries', 'en14ziVg9wKv3AASqx05bFQKuHEpbJxlb2uNak6g.png', 'en14ziVg9wKv3AASqx05bFQKuHEpbJxlb2uNak6g.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:03:34', '2023-01-30 00:03:34'),
(46, 'Alumna De Primaria', 'users_beneficiaries', 'i5fX6Qt3eCT04VCBEoCBs53rdgAG3W8qdiiqdP6S.png', 'i5fX6Qt3eCT04VCBEoCBs53rdgAG3W8qdiiqdP6S.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:04:20', '2023-01-30 00:04:20'),
(47, 'Educador De ECCS', 'users_beneficiaries', '9EP4hViIcJthduBSq7oi2f41tUwGxPE2NG5Hic9W.png', '9EP4hViIcJthduBSq7oi2f41tUwGxPE2NG5Hic9W.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:04:56', '2023-01-30 00:04:56'),
(48, 'Entrenadora', 'users', 'i6tnOUR8tAOp5BWXZn6aDJ253S96jMhwAZSE5Hcc.png', 'i6tnOUR8tAOp5BWXZn6aDJ253S96jMhwAZSE5Hcc.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:05:26', '2023-01-30 00:05:26'),
(49, 'Creador De Políticas', 'users', 'YJGii3TrC7qnhLoXBXINIhcGL68vfzGwWqI0ONzl.png', 'YJGii3TrC7qnhLoXBXINIhcGL68vfzGwWqI0ONzl.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:05:43', '2023-01-30 00:05:43'),
(50, 'Entrenadora De Maestros', 'users', 'gL5oTCWLoIvdCKXlrWqYCD8TAIztNvSm7stjyP53.png', 'gL5oTCWLoIvdCKXlrWqYCD8TAIztNvSm7stjyP53.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:08:48', '2023-01-30 00:08:48'),
(51, 'Gerente De Proyecto', 'users', 'o99RNDUSQhnzex4ECMExNxcjXkvmD8Xcak3U6u2w.png', 'o99RNDUSQhnzex4ECMExNxcjXkvmD8Xcak3U6u2w.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:09:18', '2023-01-30 00:09:18'),
(52, 'Gobierno, Directores De País', 'users', 'XJyNpwVEGAuoLUGa26o2DWUtwRieRCqXoNXA2Bja.png', 'XJyNpwVEGAuoLUGa26o2DWUtwRieRCqXoNXA2Bja.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:09:39', '2023-01-30 00:09:39'),
(53, 'Personal De Campo De Sc', 'users', 'nPJjlIFnRMiJXhX0OwKOJrcgibtiBP7ByeZjXpnK.png', 'nPJjlIFnRMiJXhX0OwKOJrcgibtiBP7ByeZjXpnK.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:10:16', '2023-01-30 00:10:16'),
(54, 'ONG, ONGI', 'users', 'ESjlfMzfj247r7ttSFUtFegdc6J3dGDQu87rHVYc.png', 'ESjlfMzfj247r7ttSFUtFegdc6J3dGDQu87rHVYc.png', NULL, NULL, 'es', NULL, NULL, 1, 1, 1, '2023-01-30 00:11:02', '2023-01-30 00:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `inline_css` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `language` varchar(10) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `inline_css`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `language`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'Our Success Story', 'our-success-story', 'Suchana is driving towards its key objective to accelerate the rate of “reducing undernutrition 6%” through its programmatic interventions. Focusing on two fundamental principles - replicability and scalability Suchana is implementing the five major endeavors', NULL, NULL, NULL, NULL, 1, 'en', 1, 1, '2021-12-12 22:56:00', '2022-01-01 21:54:55'),
(4, 'Graduation Stories', 'graduation-stories', 'Suchana is driving towards its key objective to accelerate the rate of “reducing undernutrition 6%” through its programmatic interventions. Focusing on two fundamental principles - replicability and scalability Suchana is implementing the five major endeavors', NULL, NULL, NULL, NULL, 1, 'en', 1, 1, '2021-12-13 01:40:56', '2021-12-13 01:40:56'),
(5, 'قصة نجاحنا', 'قص-نجاحنا', 'قصة نجاحنا', NULL, NULL, NULL, NULL, 1, 'ar', 1, 1, '2022-01-09 04:36:09', '2022-01-09 04:36:09'),
(6, 'قصص التخرج', 'قصص-التخرج', 'قصص التخرج', NULL, NULL, NULL, NULL, 1, 'ar', 1, 1, '2022-01-09 04:37:20', '2022-01-09 04:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'United Kingdom', 'uk', 1, '2022-07-26 07:20:23', '2022-07-26 07:20:23'),
(2, 'Franch', 'fr', 1, '2022-07-26 07:20:54', '2022-07-26 07:20:54'),
(3, 'Spain', 'sp', 1, '2022-07-26 07:21:25', '2022-07-26 07:21:25'),
(4, 'Saudi Arabia', 'ar', 1, '2022-07-26 07:21:41', '2022-07-26 07:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'District 1', 1, 1, NULL, NULL, '2021-10-18 00:43:38', '2021-10-18 00:43:44'),
(2, 'District 11', 1, 0, NULL, NULL, '2021-10-19 04:19:51', '2021-10-19 04:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, NULL, NULL, '2021-10-18 00:43:22', '2021-10-19 04:11:09'),
(2, 'Chittagong', 1, NULL, NULL, '2021-10-19 04:11:33', '2021-10-19 04:15:11'),
(3, 'Sylhet', 1, NULL, NULL, '2021-10-19 04:11:49', '2021-10-19 04:15:12'),
(4, 'Barisal', 1, NULL, NULL, '2021-10-19 04:11:58', '2021-10-19 04:15:12'),
(5, 'Khulna', 1, NULL, NULL, '2021-10-19 04:12:07', '2021-10-19 04:15:13'),
(6, 'Rangpur', 1, NULL, NULL, '2021-10-19 04:12:16', '2021-10-19 04:15:14'),
(7, 'Mymensingh', 1, NULL, NULL, '2021-10-19 04:12:26', '2021-10-19 04:15:15'),
(8, 'Rajshahi', 1, NULL, NULL, '2021-10-19 04:12:33', '2021-10-19 04:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `editor_drafts`
--

CREATE TABLE `editor_drafts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `editor_drafts`
--

INSERT INTO `editor_drafts` (`id`, `name`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', '<div class=\"container\"><div><div lg=\"12\" cols=\"6\" md=\"8\" class=\"row\"><div class=\"col-lg-6 col-12\"><span aria-haspopup=\"true\" aria-expanded=\"false\"><h1>WHAT IS THE TOOLKIT?</h1></span><span class=\"v-tooltip v-tooltip--bottom\"></span> <br> <p>\r\n            The Inclusive Education Resources and Toolkit is a resource and\r\n            reference for all SC staff working in education programming to\r\n            mainstream inclusion in their work. The Toolkit provides\r\n            recommendations and resources to strengthen inclusive education\r\n            programming to enable Save the Children to achieve greater\r\n            successes in the provision of high-quality ECCD and basic\r\n            education as promoted by the Quality Learning Framework2, also in\r\n            emergency and humanitarian context. The toolkit is based on a\r\n            comprehensive analysis of key gaps in existing guidance shared by\r\n            practitioners globally as well as a review of international\r\n            standards and resources in the field and innovative and adaptive\r\n            models of inclusive education programming already in use by Save\r\n            the Children and other organizations (INEE, Plan International,\r\n            UNESCO, USAID, and others).\r\n          </p> <button type=\"button\" class=\"btnsubmit white--text v-btn v-btn--outlined theme--light v-size--default\"><span class=\"v-btn__content\"><span>BUTTON</span></span></button></div> <div class=\"col-lg-6 col-12\"><a href=\"#\"><img src=\"/frontend/images/toolkit1.png\" height=\"100%\" width=\"100%\" class=\"mr-3\"></a></div></div></div> <div class=\"container1\"><div lg=\"12\" cols=\"6\" md=\"8\" class=\"row\"><div class=\"col-lg-6 col-12\"><a href=\"#\"><img src=\"/frontend/images/toolkit1.png\" height=\"100%\" width=\"100%\" class=\"mr-3\"></a></div> <div class=\"col-lg-6 col-12\"><h1>WHAT IS THE TOOLKIT?</h1> <br> <p>\r\n            The Inclusive Education Resources and Toolkit is a resource and\r\n            reference for all SC staff working in education programming to\r\n            mainstream inclusion in their work. The Toolkit provides\r\n            recommendations and resources to strengthen inclusive education\r\n            programming to enable Save the Children to achieve greater\r\n            successes in the provision of high-quality ECCD and basic\r\n            education as promoted by the Quality Learning Framework2, also in\r\n            emergency and humanitarian context. The toolkit is based on a\r\n            comprehensive analysis of key gaps in existing guidance shared by\r\n            practitioners globally as well as a review of international\r\n            standards and resources in the field and innovative and adaptive\r\n            models of inclusive education programming already in use by Save\r\n            the Children and other organizations (INEE, Plan International,\r\n            UNESCO, USAID, and others).\r\n          </p> <button type=\"button\" class=\"btnsubmit white--text v-btn v-btn--outlined theme--light v-size--default\"><span class=\"v-btn__content\">BUTTON</span></button></div></div></div> <div class=\"container1\"><div class=\"row justify-center\"><div class=\"col-lg-8 col-12\"><h1 class=\"text\">WHAT IS THE TOOLKIT?</h1> <br> <p class=\"text\">\r\n            The Inclusive Education Resources and Toolkit composed of seven\r\n            different chapters, covering the five SC Quality Learning\r\n            Framework (QLF) foundations: Emotional and psychosocial\r\n            protection, Physical protection, Teaching and learning, Parents\r\n            and community, School leadership and management, plus Access, and\r\n            Policy &amp; Systems.\r\n          </p></div></div></div> <div class=\"container1\"><div class=\"home-card v-card v-sheet v-sheet--outlined theme--light elevation-3\" style=\"background-color: rgb(246, 251, 255); border-color: rgb(246, 251, 255);\"><div class=\"row\"><div class=\"col-lg-8 col-12\"><div class=\"row logo justify-center\"><div class=\"pr-0 col-lg-2 col-4\"><a href=\"#\"><img src=\"/frontend/images/card1.png\" class=\"mt-10 w-100\" style=\"float: right;\"></a></div> <div class=\"col-lg-2 col-4\"><a href=\"#\"><img src=\"/frontend/images/card2.png\" class=\"ma-1 w-100\"></a> <a href=\"#\"><img src=\"/frontend/images/card3.png\" class=\"ma-1 w-100 mt-3\"></a></div> <div class=\"pl-2 col-lg-2 col-4\"><a href=\"#\"><img src=\"/frontend/images/card4.png\" class=\"w-100 mt-10\" style=\"float: left;\"></a></div></div></div> <div class=\"col-lg-4 col-12\"><br> <p>\r\n              Each section is conceived as a stand-alone set of resources from\r\n              which practitioners can draw on according to Inclusive Education\r\n              Programming needs. Users may not need to read the entire\r\n              toolkit, but only pick and use the components identified to fill\r\n              the gaps in their specific contexts\r\n            </p></div></div> <div class=\"row\"><div class=\"col-lg-4 col-12\"><p>\r\n              Each section is conceived as a stand-alone set of resources from\r\n              which practitioners can draw on according to Inclusive Education\r\n              Programming needs. Users may not need to read the entire\r\n              toolkit, but only pick and use the components identified to fill\r\n              the gaps in their specific contexts\r\n            </p></div> <div class=\"col-lg-8 col-12\"><div class=\"row logo justify-center\"><div class=\"pr-0 col-lg-2 col-4\"><a href=\"#\"><img src=\"/frontend/images/card1.png\" class=\"mt-10 w-100\" style=\"float: right;\"></a></div> <div class=\"col-lg-2 col-4\"><a href=\"#\"><img src=\"/frontend/images/card2.png\" class=\"ma-1 w-100\"></a> <a href=\"#\"><img src=\"/frontend/images/card3.png\" class=\"ma-1 w-100 mt-3\"></a></div> <div class=\"pl-2 col-lg-2 col-4\"><a href=\"#\"><img src=\"/frontend/images/card4.png\" class=\"w-100 mt-10\" style=\"float: left;\"></a></div></div></div></div></div></div> <div class=\"container1\"><div lg=\"12\" cols=\"6\" md=\"8\" class=\"row\"><div class=\"col-lg-6 col-12\"><h1>HOW TO USE THE TOOLKIT</h1> <br> <p>\r\n            The Inclusive Education Resources and Toolkit composed of seven\r\n            different chapters, covering the five SC Quality Learning\r\n            Framework (QLF) foundations: Emotional and psychosocial\r\n            protection, Physical protection, Teaching and learning, Parents\r\n            and community, School leadership and management, plusAccess, and\r\n            Policy &amp; Systems.Each section is conceived as a stand-alone set of\r\n            resources from which practitioners can draw on according to\r\n            Inclusive Education Programming needs. Users may not need to read\r\n            the entire toolkit, but only pick and use the components\r\n            identified to fill the gaps in their specific contexts.\r\n            Practitioners are strongly encouraged to use an intersectional\r\n            approach to this toolkit’s content. Exclusion from quality\r\n            learning is rarely the result of just one factor of exclusion or\r\n            discrimination. More often children and their family and\r\n            communities will face several exclusionary factors at the same\r\n            time. When approaching Inclusive Education practitioners should\r\n            keep in mind the co-existence of multiple exclusion factors which\r\n            need to be addressed through application of different strategies\r\n            and tools at the same time.\r\n          </p></div> <div class=\"col-lg-6 col-12\"><div class=\"row justify-center\"><div class=\"col-lg-4 col-4\"><a href=\"#\"><img src=\"/frontend/images/card3.png\" height=\"100%\" width=\"100%\" alt=\"Avatar\" class=\"mr-3\"></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img src=\"/frontend/images/card3.png\" height=\"100%\" width=\"100%\" alt=\"Avatar\" class=\"mr-3\"></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img src=\"/frontend/images/card3.png\" height=\"100%\" width=\"100%\" alt=\"Avatar\" class=\"mr-3\"></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img src=\"/frontend/images/card3.png\" height=\"100%\" width=\"100%\" alt=\"Avatar\" class=\"mr-3\"></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img src=\"/frontend/images/card3.png\" height=\"100%\" width=\"100%\" alt=\"Avatar\" class=\"mr-3\"></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img src=\"/frontend/images/card3.png\" height=\"100%\" width=\"100%\" alt=\"Avatar\" class=\"mr-3\"></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img src=\"/frontend/images/card3.png\" height=\"100%\" width=\"100%\" alt=\"Avatar\" class=\"mr-3\"></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img src=\"/frontend/images/card3.png\" height=\"100%\" width=\"100%\" alt=\"Avatar\" class=\"mr-3\"></a></div></div></div></div></div> <div><div lg=\"8\" cols=\"6\" md=\"8\" class=\"row justify-center\"><div class=\"col-lg-6 col-12\"><a href=\"#\"><img src=\"/frontend/images/world.png\" height=\"100%\" width=\"100%\" alt=\"Avatar\" class=\"mr-3\"></a></div></div> <div lg=\"8\" cols=\"6\" md=\"8\" class=\"row justify-center\"><div class=\"col-lg-8 col-12\"><p class=\"text\">\r\n            SC works in over 117 countries.This Toolkit cannot reflect the\r\n            specificity of each local context.Practitioners are thereforen\r\n            advised to adapt contents and tools to local contexts as wellas\r\n            reflect existing national guidelines and education policies to\r\n            guarantee the effectiveness of local Inclusive Education\r\n            programming.\r\n          </p></div></div></div></div>', 1, 1, 1, '2022-02-01 00:05:26', '2022-02-03 04:34:59'),
(2, 'Tools Design', '<div class=\"row logo justify-center\"><div class=\"pr-0 col-lg-2 col-4\"><a href=\"#\"><img src=\"/frontend/images/card1.png\" class=\"mt-10 w-100\" style=\"float: right;\"></a></div> <div class=\"col-lg-2 col-4\"><a href=\"#\"><img src=\"/frontend/images/card2.png\" class=\"ma-1 w-100\"></a> <a href=\"#\"><img src=\"/frontend/images/card3.png\" class=\"ma-1 w-100 mt-3\"></a></div> <div class=\"pl-2 col-lg-2 col-4\"><a href=\"#\"><img src=\"/frontend/images/card4.png\" class=\"w-100 mt-10\" style=\"float: left;\"></a></div></div>', 1, 1, 1, '2022-02-03 03:08:16', '2022-02-03 04:35:58'),
(3, 'Button  Red', '<button class=\"btnsubmit white--text v-btn v-btn--outlined theme--light v-size--default\" type=\"button\"><span class=\"v-btn__content\"><span>BUTTON</span></span></button>', 1, 1, 1, '2022-02-03 04:58:33', '2022-02-03 04:58:33'),
(4, 'Card 1', '<div class=\"pa-4 v-sheet theme--light rounded\"><div class=\"mx-auto my-12 v-card v-sheet theme--light\" file=\"v-card/prop-loading\" style=\"max-width: 374px;\"><div class=\"v-image v-responsive theme--light\" style=\"height: 250px;\"><div class=\"v-responsive__sizer\" style=\"padding-bottom: 73.9612%;\"></div><div class=\"v-image__image v-image__image--cover\" style=\"background-image: url(&quot;https://cdn.vuetifyjs.com/images/cards/cooking.png&quot;); background-position: center center;\"></div><div class=\"v-responsive__content\" style=\"width: 361px;\"></div></div><div class=\"v-card__title\">Cafe Badilico</div><div class=\"v-card__text\"><div class=\"row mx-0 align-center\"><div class=\"v-rating v-rating--readonly v-rating--dense\"><button type=\"button\" aria-label=\"Rating 1 of 5\" class=\"v-icon notranslate v-icon--link theme--light amber--text\" style=\"font-size: 14px; height: 14px; width: 14px;\"><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" role=\"img\" aria-hidden=\"true\" class=\"v-icon__svg\" style=\"font-size: 14px; height: 14px; width: 14px;\"><path d=\"M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z\"></path></svg></button><button type=\"button\" aria-label=\"Rating 2 of 5\" class=\"v-icon notranslate v-icon--link theme--light amber--text\" style=\"font-size: 14px; height: 14px; width: 14px;\"><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" role=\"img\" aria-hidden=\"true\" class=\"v-icon__svg\" style=\"font-size: 14px; height: 14px; width: 14px;\"><path d=\"M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z\"></path></svg></button><button type=\"button\" aria-label=\"Rating 3 of 5\" class=\"v-icon notranslate v-icon--link theme--light amber--text\" style=\"font-size: 14px; height: 14px; width: 14px;\"><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" role=\"img\" aria-hidden=\"true\" class=\"v-icon__svg\" style=\"font-size: 14px; height: 14px; width: 14px;\"><path d=\"M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z\"></path></svg></button><button type=\"button\" aria-label=\"Rating 4 of 5\" class=\"v-icon notranslate v-icon--link theme--light amber--text\" style=\"font-size: 14px; height: 14px; width: 14px;\"><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" role=\"img\" aria-hidden=\"true\" class=\"v-icon__svg\" style=\"font-size: 14px; height: 14px; width: 14px;\"><path d=\"M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z\"></path></svg></button><button type=\"button\" aria-label=\"Rating 5 of 5\" class=\"v-icon notranslate v-icon--link theme--light amber--text\" style=\"font-size: 14px; height: 14px; width: 14px;\"><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" role=\"img\" aria-hidden=\"true\" class=\"v-icon__svg\" style=\"font-size: 14px; height: 14px; width: 14px;\"><path d=\"M12,15.4V6.1L13.71,10.13L18.09,10.5L14.77,13.39L15.76,17.67M22,9.24L14.81,8.63L12,2L9.19,8.63L2,9.24L7.45,13.97L5.82,21L12,17.27L18.18,21L16.54,13.97L22,9.24Z\"></path></svg></button></div><div class=\"grey--text ms-4\"> 4.5 (413) </div></div><div class=\"my-4 text-subtitle-1\"> $ • Italian, Cafe </div><div>Small plates, salads &amp; sandwiches - an intimate setting with 12 indoor seats plus patio seating.</div></div><hr role=\"separator\" aria-orientation=\"horizontal\" class=\"mx-4 v-divider theme--light\"><div class=\"v-card__title\">Tonight\'s availability</div><div class=\"v-card__text\"><div class=\"v-item-group theme--light v-slide-group v-chip-group v-chip-group--column\"><div class=\"v-slide-group__prev v-slide-group__prev--disabled\"><!----></div><div class=\"v-slide-group__wrapper\"><div class=\"v-slide-group__content\"><span tabindex=\"0\" class=\"v-chip v-chip--clickable v-chip--no-color theme--light v-size--default\"><span class=\"v-chip__content\">5:30PM</span></span><span tabindex=\"0\" class=\"v-chip deep-purple accent-4 white--text v-chip--active v-chip--clickable v-chip--no-color theme--light v-size--default\"><span class=\"v-chip__content\">7:30PM</span></span><span tabindex=\"0\" class=\"v-chip v-chip--clickable v-chip--no-color theme--light v-size--default\"><span class=\"v-chip__content\">8:00PM</span></span><span tabindex=\"0\" class=\"v-chip v-chip--clickable v-chip--no-color theme--light v-size--default\"><span class=\"v-chip__content\">9:00PM</span></span></div></div><div class=\"v-slide-group__next v-slide-group__next--disabled\"><!----></div></div></div><div class=\"v-card__actions\"><button type=\"button\" class=\"v-btn v-btn--text theme--light v-size--default deep-purple--text text--lighten-2\"><span class=\"v-btn__content\"> Reserve </span></button></div></div></div>', 1, 1, 1, '2022-02-03 05:33:56', '2022-03-12 04:44:41');

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
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `hear_from_where` varchar(100) DEFAULT NULL,
  `way_of_use` varchar(100) DEFAULT NULL,
  `most_useful_thing` varchar(100) DEFAULT NULL,
  `suggestions` varchar(100) DEFAULT NULL,
  `feedback` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `institution`, `country_id`, `hear_from_where`, `way_of_use`, `most_useful_thing`, `suggestions`, `feedback`, `created_at`, `updated_at`) VALUES
(1, 'mamun', 'm@y.com', 'dhaka', 1, 'fdgdf', 'gdfg', 'dfg', 'dfg', 'dfg', '2022-07-26 07:13:43', '2022-07-26 07:13:43'),
(2, 'mamun', 'm@y.com', 'dhaka', 2, 'fdgdf', 'gdfg', 'dfg', 'dfg', 'dfg', '2022-07-26 07:13:49', '2022-07-26 07:13:49'),
(3, 'noor', 'noor@gmail.com', 'SCI', 101, 'some text', 'some text', 'some text', 'some text', 'some texst', '2022-07-27 07:25:00', '2022-07-27 07:25:00'),
(4, 'rakib', 'rakib@gmail.com', 'bdc', 564, NULL, NULL, NULL, NULL, NULL, '2022-07-27 07:56:15', '2022-07-27 07:56:15'),
(5, 'rabbi', 'rabbi@gmail.com', 'COLA', 2002, 'facebook', 'evil will', 'its content', 'make the whole apps into a web', 'go ahead', '2022-07-27 08:10:48', '2022-07-27 08:10:48'),
(6, 'habib', 'habib@gmail.com', 'gbc', 2022, 'asdfasdf', 'asdfasdf', 'asdfasdf', 'asdfasd', 'asdfasd', '2022-07-27 08:47:46', '2022-07-27 08:47:46'),
(7, 'sagor', 'sagor@gmail.com', 'sgr', 2, 'asdf', 'asdf', 'sadf', 'asdf', 'asd f', '2022-07-27 11:19:00', '2022-07-27 11:19:00'),
(8, 'dooms', 'dooms@gmail.com', 'dms', 4, 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '2022-07-27 11:21:45', '2022-07-27 11:21:45'),
(9, 'hand over', 'handover@gmail.com', 'hnd', 2, 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '2022-07-27 11:23:04', '2022-07-27 11:23:04'),
(10, 'sotota', 'sotota@gmail.com', 'sta', 1, 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '2022-07-27 11:26:40', '2022-07-27 11:26:40'),
(11, 'Simpson', 'simpson@mail.com', 'idhirihhvcdjcbdjche', 1, 'uifeiuwbciuurgcir', 'iwudbcwiucbwdijfbr', 'oduhvwohvuwbrofwhrf', 'woudbvwodiuvbwrojvwgrh', 'wdihbvwihdviwurebrhff', '2022-08-03 07:16:26', '2022-08-03 07:16:26'),
(12, 'Saimon', 'saimon@mail.com', 'ciwybiwubviw', 1, 'iubysiubyiduybglisdu', 'surbvyisuybviosrubviosery', 'ivuserviuesryiotvutb', 'svybruibvyiruyviawurbvyi', 'sruvsieruvyseriutbvseriuu', '2022-08-03 08:33:51', '2022-08-03 08:33:51'),
(13, 'Laiman', 'laiman@mail.com', 'wiurvbiwubyvr', 2, 'viauybviasu byiasuy biasury rbasrv', 'ayvtkjy gskjygkSYUgiksug viu', 'jkasgkjszgd fkjsg fksrj gfjks fgs', 'uiaytwkuitbvasuifvkasgf ikasu fkas gfisru gisarubvysr', 'suibytuisercviuwratbvauiwycbaiusctiusytiusyfsrio', '2022-08-04 06:06:11', '2022-08-04 06:06:11'),
(14, 'Anim est consequat', 'hynyxahu@mailinator.com', 'Maxime sit reprehend', 1, 'Ullam deserunt aut q', 'Sint est officiis ma', 'Quasi autem sint sun', 'Aliquip aut voluptat', 'Sit eos fuga Irur', '2022-08-08 03:29:02', '2022-08-08 03:29:02'),
(15, 'test', 'test@mail.com', 'test', 1, 'vjvjjv', 'mgjciyr', 'cmhdjycmycjyd', ',nckckyyri6f', 'blufmhckhf', '2022-08-22 09:38:26', '2022-08-22 09:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `further_readings`
--

CREATE TABLE `further_readings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `toolkit_category_id` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `further_readings`
--

INSERT INTO `further_readings` (`id`, `name`, `description`, `toolkit_category_id`, `language`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Access', '<div class=\"\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"table-responsive\">\r\n<table class=\"acess-table-1\" style=\"border-collapse: collapse; width: 100%; height: 462.166px;\"><colgroup><col style=\"width: 39.5878%;\" /><col style=\"width: 60.4122%;\" /></colgroup>\r\n<thead style=\"background-color: #da291c;\">\r\n<tr style=\"height: 46.9167px;\">\r\n<th style=\"height: 46.9167px;\">Resource</th>\r\n<th style=\"height: 46.9167px;\">Main Topic</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"height: 60.5px;\">\r\n<td style=\"height: 60.5px;\"><a title=\"MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES\" href=\"https://resourcecentre.savethechildren.net/pdf/inclusive_education_report_annexes_2019.pdf/\" target=\"_blank\" rel=\"noopener\">MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES</a></td>\r\n<td style=\"height: 181.5px;\" rowspan=\"3\">\r\n<p>SC case studies of successful Inclusive Education programs. See page 21, Cambodia for an example of learning environments that accommodate children with intellectual disabilities. See Annex Two: Cambodia &ndash; School Visits and Change Monitoring Tool</p>\r\n<p>&nbsp;</p>\r\n<p>List of good practices to ensure access. See page 33 for identification process, school enrolment, training of assessment commissions at RED/ EO level, training parents, improving learning outcomes, removing architectural barriers, monitoring access.</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 60.5px;\">\r\n<td style=\"height: 60.5px;\"><a title=\"MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES\" href=\"https://resourcecentre.savethechildren.net/pdf/inclusive_education_report_annexes_2019.pdf/\" target=\"_blank\" rel=\"noopener\">MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES</a></td>\r\n</tr>\r\n<tr style=\"height: 60.5px;\">\r\n<td style=\"height: 60.5px;\"><a title=\"Best Practices for Inclusive Education for Children with Special Education Needs in Albania\" href=\"https://resourcecentre.savethechildren.net/document/best-practices-inclusive-education-children-special-education-needs-albania/\" target=\"_blank\" rel=\"noopener\">Best Practices for Inclusive Education for Children with Special Education Needs in Albania</a></td>\r\n</tr>\r\n<tr style=\"height: 38.9167px;\">\r\n<td><a href=\"https://resourcecentre.savethechildren.net/document/social-emotional-learning-distance-learning-activity-pack/\">Social Emotional Learning &ndash; Distance Learning Activity Pack</a></td>\r\n<td>Pack of activities to support distance SEL for children currently out of school with limited or no access to quality education. Adapted for radio and audio broadcast. Useful in combination with <a href=\"https://resourcecentre.savethechildren.net/pdf/learn_covid-19_tool_interactive_radio_and_audio_instruction_implementation_guidance.pdf/\">Covid-19:Interactive Radio and Audio Instruction (IRI) &ndash; implementation Guide</a>., a document with a deliberate focus on materials aimed to help teams evaluate effective implementation options, especially for use in humanitarian and low resource contexts.</td>\r\n</tr>\r\n<tr style=\"height: 38.9167px;\">\r\n<td><a href=\"https://www.pseau.org/outils/ouvrages/handicap_international_conduct_an_accessibility_audit_in_low_and_middle_income_countries_2014.pdf\">Conduct an accessibility audit in lowand middle-income studies</a></td>\r\n<td>Guide for handicap international professionals to develop, implement, or analyze accessibility activities targeting local issues.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 1, 'en', 1, 1, 1, '2022-02-09 15:57:46', '2022-08-08 09:39:59'),
(2, 'Emotional', '<div class=\"\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"table-responsive\">\r\n<table class=\"acess-table-1\" style=\"border-collapse: collapse; width: 100%; height: 459.891px;\"><colgroup><col style=\"width: 39.5878%;\" /><col style=\"width: 60.4122%;\" /></colgroup>\r\n<thead style=\"background-color: #1f6172;\">\r\n<tr style=\"height: 46.9062px;\">\r\n<th style=\"height: 46.9062px;\">Resource</th>\r\n<th style=\"height: 46.9062px;\">Main Topic</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"height: 96.8125px;\">\r\n<td style=\"height: 96.8125px;\"><a href=\"https://www.learningforjustice.org/classroom-resources/lessons/what-is-ableism\">CASEL framework</a></td>\r\n<td style=\"height: 96.8125px;\">Social and Emotional Learning</td>\r\n</tr>\r\n<tr style=\"height: 109.719px;\">\r\n<td style=\"height: 109.719px;\"><a href=\"https://resourcecentre.savethechildren.net/document/mainstreaming-inclusive-education-sharing-good-practices/\">MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES</a></td>\r\n<td style=\"height: 219.438px;\" rowspan=\"2\">\r\n<p>SC case studies of successful Inclusive Education programs.</p>\r\n<p>See page 37, Indonesia SC case study on community-based rehabilitation, reduction of stigma,and favoring interaction among all children.</p>\r\n<p>See Annex Four: Indonesia &ndash; Disability Cheat-Sheet</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 109.719px;\">\r\n<td style=\"height: 109.719px;\"><a href=\"https://resourcecentre.savethechildren.net/pdf/inclusive_education_report_annexes_2019.pdf/\">MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES - ANNEXES</a></td>\r\n</tr>\r\n<tr style=\"height: 96.7344px;\">\r\n<td style=\"height: 96.7344px;\"><a href=\"https://files.eric.ed.gov/fulltext/EJ1123878.pdf\">More Than a Safe Space. How Schools Can Enable LGBTQ Students to Thrive</a></td>\r\n<td style=\"height: 96.7344px;\">7 pages article on best practices in U.S. school to go beyond the &ldquo;anti-bullying&rdquo; and &ldquo;safe space&rdquo; paradigm to promote inclusive and respectful learning environments</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 3, 'en', 1, 1, 1, '2022-03-08 10:34:13', '2022-08-04 05:02:05'),
(3, 'Physical', '<div class=\"\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"table-responsive\">\r\n<table class=\"acess-table-1\" style=\"border-collapse: collapse; width: 100%; height: 460.898px;\"><colgroup><col style=\"width: 39.5878%;\" /><col style=\"width: 60.4122%;\" /></colgroup>\r\n<thead style=\"background-color: #009fb4;\">\r\n<tr style=\"height: 46.9141px;\">\r\n<th style=\"height: 46.9141px;\">Resource</th>\r\n<th style=\"height: 46.9141px;\">Main Topic</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"height: 46.9141px;\">\r\n<td><a href=\"https://www.grsproadsafety.org/programmes/safe-school-safe-home/\" target=\"_blank\" rel=\"noopener\">Safe to School &ndash; Safe to Home</a></td>\r\n<td><a href=\"https://www.grsproadsafety.org/\">Global Road Safety Partnership</a> and <a href=\"https://www.ifrc.org/ifrc/messages-disaster-prevention/school-safety/\">International Red cross Program</a>, incorporates assessment of road safety conditions, the installation of appropriate and low-cost local traffic engineering improvements, road safety education for children, parents, and the community</td>\r\n</tr>\r\n<tr style=\"height: 46.9141px;\">\r\n<td>\r\n<p><a href=\"https://www.eenet.org.uk/enabling-education-review/enabling-education-11/newsletter-11/11-15/\">Indonesia Inclusive School Design</a></p>\r\n</td>\r\n<td>Success story of an inclusive, participatory design of a school library</td>\r\n</tr>\r\n<tr style=\"height: 46.9141px;\">\r\n<td><a href=\"https://savethechildren1.sharepoint.com/what/education/RCCentreDropOff/Forms/AllItems.aspx?id=%2Fwhat%2Feducation%2FRCCentreDropOff%2Fpromising_practices_in_refugee_education_synthesis_report_final_web%2Epdf&amp;parent=%2Fwhat%2Feducation%2FRCCentreDropOff\">Promising Practices in Refugee Education</a></td>\r\n<td>\r\n<p>Success story of an inclusive, participatory design of a school library Collection of success stories and best practices to guarantee quality education in refugee settings</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 46.9141px;\">\r\n<td><a href=\"https://opendocs.ids.ac.uk/opendocs/bitstream/handle/20.500.12413/15241/Handwashing_Compendium_for_Low_Cost_Settings_Edition_1.pdf?sequence=1&amp;isAllowed=y\" target=\"_blank\" rel=\"noopener\">Handwashing Compendium for&nbsp;low &ndash; income settings</a></td>\r\n<td>Design manual to provide accessible handwashing facilities in emergency/low-income settings</td>\r\n</tr>\r\n<tr style=\"height: 46.9141px;\">\r\n<td><a href=\"https://spherestandards.org/wp-content/uploads/Sphere-Handbook-2018-EN.pdf\">SPHERE Handbook</a></td>\r\n<td>Comprehensive handbook on Humanitarian Charter and Minimum Standards in Humanitarian Response</td>\r\n</tr>\r\n<tr style=\"height: 46.9141px;\">\r\n<td><a href=\"https://resourcecentre.savethechildren.net/document/mainstreaming-inclusive-education-sharing-good-practices/\">MAINSTREAMING INCLUSIVE EDUCATION:&nbsp;</a><br /><a href=\"https://resourcecentre.savethechildren.net/document/mainstreaming-inclusive-education-sharing-good-practices/\">SHARING GOOD PRACTICES</a></td>\r\n<td>SC case studies of successful Inclusive Education programs. See page 13, Bangladesh case study on the Community Based Rehabilitation (CBR) approach.</td>\r\n</tr>\r\n<tr style=\"height: 46.9141px;\">\r\n<td><a href=\"https://resourcecentre.savethechildren.net/pdf/inclusive_education_report_annexes_2019.pdf/\">MAINSTREAMING INCLUSIVE EDUCATION:&nbsp;</a><br /><a href=\"https://resourcecentre.savethechildren.net/pdf/inclusive_education_report_annexes_2019.pdf/\">SHARING GOOD PRACTICES - ANNEXES</a></td>\r\n<td>See Annex One: Bangladesh &ndash; CBR Card and Tracking Sheet for Children</td>\r\n</tr>\r\n<tr style=\"height: 46.9141px;\">\r\n<td><a href=\"https://www.humanitarianresponse.info/sites/www.humanitarianresponse.info/files/documents/files/education_sector_covid_19_strategy_2020.pdf\">Covid-19 Response Strategy 2020:&nbsp;</a><br /><a href=\"https://www.humanitarianresponse.info/sites/www.humanitarianresponse.info/files/documents/files/education_sector_covid_19_strategy_2020.pdf\">reaching every learner</a></td>\r\n<td>Strategy by Cox&rsquo;s Bazar education sector on how to provide quality learning to all Rojava refugee children living in Cox&rsquo;s Bazar during the Covid-19 pandemic. It has also a section on inclusive education, equity, gender, and disability</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 8, 'en', 1, 1, 1, '2022-04-03 08:54:23', '2022-08-04 05:03:42'),
(4, 'Teaching', '<div class=\"\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"table-responsive\">\r\n<table class=\"acess-table-1\" style=\"border-collapse: collapse; width: 100%; height: 460.898px;\"><colgroup><col style=\"width: 39.5878%;\" /><col style=\"width: 60.4122%;\" /></colgroup>\r\n<thead style=\"background-color: #f8b600;\">\r\n<tr style=\"height: 46.9141px;\">\r\n<th style=\"height: 46.9141px;\">Resource</th>\r\n<th style=\"height: 46.9141px;\">Main Topic</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"height: 46.9141px;\">\r\n<td><a href=\"https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2FAnnex%201%2Ea%2E%20Children%20with%20Disabilities%2D%20A%20Guide%20for%20Volunteeers%5FEnglish%20final%2Epdf&amp;parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources\" target=\"_blank\" rel=\"noopener\">A GUIDE FOR VOLUNTEERS &ndash; Children&nbsp;with disabilities: Parents workshops</a></td>\r\n<td>Tool for parents\' workshop facilitation</td>\r\n</tr>\r\n<tr style=\"height: 46.9141px;\">\r\n<td>\r\n<p><a href=\"https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BF55FBDB7-E953-4B56-ABF6-D7BFC04D11AD%7D&amp;file=Nicaragua_BE.docx&amp;action=default&amp;mobileredirect=true&amp;cid=a545d3e9-6c6a-48fe-8108-975f67c9a7d1\">Nicaragua BE</a></p>\r\n</td>\r\n<td>Practical guide in Spanish for teachers in first and second grade of primary school to develop individual and group strategies for children with intellectual and physical disabilities</td>\r\n</tr>\r\n<tr style=\"height: 46.9141px;\">\r\n<td><a href=\"https://resourcecentre.savethechildren.net/document/mainstreaming-inclusive-education-sharing-good-practices\">MAINSTREAMING INCLUSIVE EDUCATION:&nbsp;SHARING GOOD PRACTICES</a></td>\r\n<td>\r\n<p>SC case studies of successful Inclusive Education programs.See page 45, Kosovo case study on Pedagogical Evaluation Teams (PET) assessing learning needs of children with disabilities and fostering inclusion of ethnic minorities in school.</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 46.9141px;\">\r\n<td><a href=\"https://www.eenet.org.uk/the-10-videos-and-manuals/programme-1-before-school/\">Inclusive Education Technical Resources </a><a href=\"https://www.eenet.org.uk/the-10-videos-and-manuals/programme-1-before-school/\">Package &ndash; Program 1: Before school</a></td>\r\n<td>Workshops and activities that cover issues of children&rsquo;s well being, gender inequalities, children&rsquo;s rights to quality education.See page 6, Chores to assess the link among chores, gender inequality and stereotypes.</td>\r\n</tr>\r\n<tr style=\"height: 46.9141px;\">\r\n<td><a href=\"https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B0FE3E4B2-A15F-453E-8C5B-318ADC4AA865%7D&amp;file=TiCC%20Inc%20Ed%20-%20Facilitator-Adapted_Afgh_Dec%202020.docx&amp;action=default&amp;mobileredirect=true&amp;cid=55767c76-89a5-4286-8a40-60a97f602c3f\">Supporting Learners with Learning Disabilities. </a><a href=\"https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B0FE3E4B2-A15F-453E-8C5B-318ADC4AA865%7D&amp;file=TiCC%20Inc%20Ed%20-%20Facilitator-Adapted_Afgh_Dec%202020.docx&amp;action=default&amp;mobileredirect=true&amp;cid=55767c76-89a5-4286-8a40-60a97f602c3f\">Facilitator&rsquo;s Guide. Adapted Afghanistan.</a></td>\r\n<td>Guide for workshops facilitators on primary school teachers in crisis contexts (Ticc) training in Afghanistan</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 17, 'en', 1, 1, 1, '2022-04-11 05:43:43', '2022-08-04 05:04:39'),
(5, 'Parents', '<div class=\"\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"table-responsive\">\r\n<table class=\"acess-table-1\" style=\"border-collapse: collapse; width: 100%;\"><colgroup><col style=\"width: 39.5878%;\" /><col style=\"width: 60.4122%;\" /></colgroup>\r\n<thead style=\"background-color: #469280;\">\r\n<tr style=\"height: 46.9141px;\">\r\n<th style=\"height: 46.9141px;\">Resource</th>\r\n<th style=\"height: 46.9141px;\">Main Topic</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><a href=\"https://resourcecentre.savethechildren.net/pdf/learn_covid-19_tool_interactive_radio_and_audio_instruction_implementation_guidance.pdf\">Interactive Radio &amp; Audio Instruction (IRI) - Implementation Guidance</a></td>\r\n<td>COVID-19 Response</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><a href=\"https://resourcecentre.savethechildren.net/document/mainstreaming-inclusive-education-sharing-good-practices\">MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES</a></p>\r\n</td>\r\n<td rowspan=\"2\">SC case studies of successful Inclusive Education programs.See page 81, Vietnam case study on awareness raising with parents and communities through School Dialogue.See Annex Eight: Vietnam &ndash; Sample Poster (Thu Duc District) to Sign for Ending Violence and Example of School Dialogue Agenda.</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"https://resourcecentre.savethechildren.net/pdf/inclusive_education_report_annexes_2019.pdf/\">MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES - ANNEXES</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 28, 'en', 1, 1, 1, '2022-04-11 06:48:55', '2022-08-04 05:05:10'),
(6, 'SCHOOL LEADERSHIP AND MANAGEMENT', '<div class=\"\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"table-responsive\">\r\n<table class=\"acess-table-1\" style=\"border-collapse: collapse; width: 100%; height: 460.898px;\"><colgroup><col style=\"width: 39.5878%;\" /><col style=\"width: 60.4122%;\" /></colgroup>\r\n<thead style=\"background-color: #a0c51e;\">\r\n<tr style=\"height: 46.9141px;\">\r\n<th style=\"height: 46.9141px;\">Resource</th>\r\n<th style=\"height: 46.9141px;\">Main Topic</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"height: 46.9141px;\">\r\n<td><a href=\"https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FEMIS%20JOINT%20CO%20FILE%2FSCS%20OOSC%20CWD%20EMIS%20Final%20Report%2Epdf&amp;parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FEMIS%20JOINT%20CO%20FILE%22%20%5C\" target=\"_blank\" rel=\"noopener\">OPEN EMIS FOR INCLUSIVE EDUCATION INDICATOR DEVELOPMENT FOR INCLUSIVE EMIS. Final Report for Save the Children Sweden</a></td>\r\n<td>Education data collection and management mechanisms in Bangladesh, Kosovo, and Indonesia in relation to Children with Disabilities (children with disabilities) and Out of School Children (OOSC).</td>\r\n</tr>\r\n<tr style=\"height: 46.9141px;\">\r\n<td>\r\n<p><a href=\"https://resourcecentre.savethechildren.net/document/mainstreaming-inclusive-education-sharing-good-practices\" target=\"_blank\" rel=\"noopener\">MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES</a></p>\r\n</td>\r\n<td rowspan=\"2\">SC case studies of successful Inclusive Education programs.See at page 61, a Philippines case study on advocacy and capacity building activities in communities and schools to foster inclusive education.See Annex Six: The Philippines. Inclusive Model School Criteria Matrix.</td>\r\n</tr>\r\n<tr style=\"height: 46.9141px;\">\r\n<td><a href=\"https://resourcecentre.savethechildren.net/pdf/inclusive_education_report_annexes_2019.pdf/\" target=\"_blank\" rel=\"noopener\">MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES - ANNEXES</a></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><a href=\"https://resourcecentre.savethechildren.net/document/education-emergencies-toolkit/\" target=\"_blank\" rel=\"noopener\">Education in Emergencies Toolkit</a></p>\r\n</td>\r\n<td>A resource pack on how to deliver Quality Education in emergency contexts.See pages 204 to 218 on how to mainstream those aspects in project cycle management in emergencies.</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><a href=\"https://planipolis.iiep.unesco.org/en/2017/fiji-education-management-information-system-femis-disability-disaggregation-package-guidelines\" target=\"_blank\" rel=\"noopener\">Fiji Education Management Information System (FEMIS). Disability Disaggregation Package. Guidelines and forms.</a></p>\r\n</td>\r\n<td>Guidelines on disability in children, accessibility of school infrastructure and transport, and qualifications and training&nbsp;<br />of school staff in relation to disability-inclusive education.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 33, 'en', 1, 1, 1, '2022-05-18 03:53:30', '2022-08-10 03:09:57'),
(7, 'POLICY & SYSTEMS', '<div class=\"\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"table-responsive\">\r\n<table class=\"acess-table-1\" style=\"border-collapse: collapse; width: 100%; height: 459.891px;\"><colgroup><col style=\"width: 39.5878%;\" /><col style=\"width: 60.4122%;\" /></colgroup>\r\n<thead style=\"background-color: #eb6012;\">\r\n<tr style=\"height: 46.9062px;\">\r\n<th style=\"height: 46.9062px;\">Resource</th>\r\n<th style=\"height: 46.9062px;\">Main Topic</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"height: 125.047px;\">\r\n<td style=\"height: 125.047px;\"><a href=\"https://resourcecentre.savethechildren.net/document/education-emergencies-toolkit/\" target=\"_blank\" rel=\"noopener\">OPEN EMIS FOR INCLUSIVE EDUCATION INDICATOR DEVELOPMENT FOR INCLUSIVE EMIS. Final Report for Save the Children Sweden</a></td>\r\n<td style=\"height: 125.047px;\">Diagnostic studies of existing education data collection and management mechanisms in Bangladesh, Kosovo, and Indonesia.See the set of relevant indicators for identification and assessment of Children with Disabilities (children with disabilities): children with disabilities Inclusive Policy and Measures.</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"https://resourcecentre.savethechildren.net/document/education-emergencies-toolkit/\" target=\"_blank\" rel=\"noopener\">Education in Emergencies Toolkit</a></td>\r\n<td>Resource pack on how to deliver Quality Education in emergency contexts as a cross-cutting issue, together with Gender and WASH.</td>\r\n</tr>\r\n<tr style=\"height: 76.2188px;\">\r\n<td style=\"height: 76.2188px;\">\r\n<p><a href=\"https://resourcecentre.savethechildren.net/document/mainstreaming-inclusive-education-sharing-good-practices\" target=\"_blank\" rel=\"noopener\">MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES</a></p>\r\n</td>\r\n<td style=\"height: 136.438px;\" rowspan=\"2\">SC case studies of successful Inclusive Education programs.See page 61, Philippines for an example of advocacy and capacity building activities in communities and schools to foster inclusive education.See Annex Six: Philippines &ndash; Inclusive Model School Criteria Matrix</td>\r\n</tr>\r\n<tr style=\"height: 60.2188px;\">\r\n<td style=\"height: 60.2188px;\"><a href=\"https://resourcecentre.savethechildren.net/pdf/inclusive_education_report_annexes_2019.pdf/\" target=\"_blank\" rel=\"noopener\">MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES - ANNEXES</a></td>\r\n</tr>\r\n<tr style=\"height: 84.6406px;\">\r\n<td style=\"height: 84.6406px;\">\r\n<p><a href=\"https://planipolis.iiep.unesco.org/en/2017/fiji-education-management-information-system-femis-disability-disaggregation-package-guidelines\" target=\"_blank\" rel=\"noopener\">Fiji Education Management Information System (FEMIS). Disability Disaggregation Package. Guidelines and forms.</a></p>\r\n</td>\r\n<td style=\"height: 84.6406px;\">Guidelines on disability in children, accessibility of school infrastructure and transport, and qualifications and training of school staff in relation to disability-inclusive education.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 40, 'en', 1, 1, 1, '2022-06-13 06:26:34', '2022-08-08 10:08:51'),
(8, 'ACCESO', '<div class=\"\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"table-responsive\">\r\n<table class=\"acess-table-1\" style=\"border-collapse: collapse; width: 100%; height: 462.166px;\"><colgroup><col style=\"width: 39.5878%;\" /><col style=\"width: 60.4122%;\" /></colgroup>\r\n<thead style=\"background-color: #da291c;\">\r\n<tr style=\"height: 46.9167px;\">\r\n<th style=\"height: 46.9167px;\">Resource</th>\r\n<th style=\"height: 46.9167px;\">Main Topic</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"height: 60.5px;\">\r\n<td style=\"height: 60.5px;\"><a title=\"MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES\" href=\"https://resourcecentre.savethechildren.net/pdf/inclusive_education_report_annexes_2019.pdf/\" target=\"_blank\" rel=\"noopener\">MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES</a></td>\r\n<td style=\"height: 181.5px;\" rowspan=\"3\">\r\n<p>Estudios de caso de programas exitosos de educaci&oacute;n inclusiva<br />de SC.<br />V&eacute;ase la p&aacute;gina 21 Camboya para ver un ejemplo de entornos de<br />aprendizaje que incluyen a ni&ntilde;os con discapacidades intelectuales.<br />V&eacute;ase Anexo dos: Cambodia &ndash; School Visits<br />and Change Monitoring Tool.</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 60.5px;\">\r\n<td style=\"height: 60.5px;\"><a title=\"MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES\" href=\"https://resourcecentre.savethechildren.net/pdf/inclusive_education_report_annexes_2019.pdf/\" target=\"_blank\" rel=\"noopener\">MAINSTREAMING INCLUSIVE EDUCATION: SHARING GOOD PRACTICES</a></td>\r\n</tr>\r\n<tr style=\"height: 60.5px;\">\r\n<td style=\"height: 60.5px;\"><a title=\"Best Practices for Inclusive Education for Children with Special Education Needs in Albania\" href=\"https://resourcecentre.savethechildren.net/document/best-practices-inclusive-education-children-special-education-needs-albania/\" target=\"_blank\" rel=\"noopener\">Best Practices for Inclusive Education for Children with Special Education Needs in Albania</a></td>\r\n</tr>\r\n<tr style=\"height: 38.9167px;\">\r\n<td><a href=\"https://resourcecentre.savethechildren.net/document/social-emotional-learning-distance-learning-activity-pack/\">Social Emotional Learning &ndash; Distance Learning Activity Pack</a></td>\r\n<td>Lista de buenas pr&aacute;cticas para asegurar el acceso.<br />V&eacute;ase p&aacute;gina 46 para el proceso de identificaci&oacute;n, matricula<br />escolar, formaci&oacute;n de comisiones de evaluaci&oacute;n del nivel RED/EO,<br />formaci&oacute;n a padres, mejoramiento de los resultados de aprendizaje,<br />eliminaci&oacute;n de barreras arquitect&oacute;nicas, acceso al monitoreo.</td>\r\n</tr>\r\n<tr style=\"height: 38.9167px;\">\r\n<td><a href=\"https://www.pseau.org/outils/ouvrages/handicap_international_conduct_an_accessibility_audit_in_low_and_middle_income_countries_2014.pdf\">Conduct an accessibility audit in lowand middle-income studies</a></td>\r\n<td>Guide for handicap international professionals to develop, implement, or analyze accessibility activities targeting local issues.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 44, 'es', 1, 1, 1, '2023-01-28 23:07:18', '2023-01-28 23:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intersectionality_tips`
--

CREATE TABLE `intersectionality_tips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `toolkit_category_id` int(11) DEFAULT NULL,
  `tool_methodology_id` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intersectionality_tips`
--

INSERT INTO `intersectionality_tips` (`id`, `name`, `description`, `toolkit_category_id`, `tool_methodology_id`, `language`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(8, 'Gender', 'For SC Field Staff. Sourcebook on how to approach school reopening after COVID-19. For useful technical annexes, see Annex5 Participatory Education and Protection Continuity Planning.', 1, 72, 'en', 1, 1, 1, '2022-03-08 06:32:45', '2022-03-08 06:32:45'),
(9, 'COVID-19 and Disability', 'For SC Project Managers.', 1, 73, 'en', 1, 1, 1, '2022-03-08 06:33:24', '2022-03-08 06:33:24'),
(10, 'Disability & stereotypes', 'For School Heads and Teachers of primary and secondary schools. Pedagogical approaches and activities to make the learning environment of the day care center welcoming, reliable, accessible, diverse, and safe to develop children with disabilities social skills and sphere.', 1, 74, 'en', 1, 1, 1, '2022-03-08 06:34:15', '2022-03-08 06:34:15'),
(11, 'Sexual and Gender Based Violence', '<p>For teachers and school staff. Training session to understand the role and responsibilities of schools and teachers in responding when a child has experienced sexual violence. it is vital that teachers know how to refer learners to appropriate care in all cases of distress and harm. <strong>Teachers are not equipped to provide clinical counselling or other types of specialized support.</strong></p>', 3, 75, 'en', 1, 1, 1, '2022-03-08 06:35:49', '2022-04-12 03:56:29'),
(12, 'Discrimination and  Stereotypes', '<p>For teacher trainers, SC field staff, teachers. <a href=\"https://www.eenet.org.uk/the-10-videos-and-manuals/\" target=\"_blank\" rel=\"noopener\">Series of stan-alone sessions with suggested video and text </a>See Program 1<a href=\"https://www.eenet.org.uk/the-10-videos-and-manuals/\"> &ndash; Activity 1.2. for training session on Discrimination and Stereotypes</a></p>', 3, 76, 'en', 1, 1, 1, '2022-03-08 06:36:59', '2022-04-12 03:58:04'),
(13, 'Ethnicity and religion', 'For primary school students. Lesson about different hairstyles and identities.', 3, 77, 'en', 1, 1, 1, '2022-03-08 06:37:34', '2022-03-08 06:37:34'),
(14, 'Social Identity  and Diversity', 'For kindergarten and primary school children. Lesson about concepts of identity, diversity, group, respect.', 3, 78, 'en', 1, 1, 1, '2022-03-08 06:38:27', '2022-03-08 06:38:27'),
(15, 'Gender and Gender  discrimination and  stereotypes', 'For teachers and educators. Tools for activities and reflection that can also be used as a teacher training material. See pages 11-27 on how to make the classroom gender friendly.', 3, 79, 'en', 1, 1, 1, '2022-03-08 06:39:09', '2022-03-08 06:39:09'),
(16, 'Physical characteristics', 'For primary school students. Lessons to self-evaluate their own biases related to size differences.', 3, 80, 'en', 1, 1, 1, '2022-03-08 06:39:48', '2022-03-08 06:39:48'),
(17, 'Ableism prejudice  and stereotypes', 'For primary school students and USA teachers. Lesson aiming at developing students’ ability to recognize and challenge ableist discourse. Need for a country adaptation for all countries but the US (lesson material refers to popular US children’s books).', 3, 81, 'en', 1, 1, 1, '2022-03-08 06:40:32', '2022-03-08 06:40:32'),
(18, 'Gender and disability', '<p>Repository of toolkits and guidelines on inclusive education for girls with disabilities. See page 28, Programs and practices addressing barriers to education for girls with disabilities.</p>', 8, 86, 'en', 1, 1, 1, '2022-04-03 08:07:43', '2022-04-03 08:07:43'),
(19, NULL, '<p>14 programming steps. See step 10 for vulnerable populations (including girls and women with disabilities), step 11 for MHM and Education, step 13 for MHM and Protection. Useful for: program staff, project managers, M&amp;E officers, technical staff. Available in two formats: The full guide and the mini guide (quick read). Not only for emergency settings.</p>', 8, 87, 'en', 1, 1, 1, '2022-04-03 08:09:53', '2022-04-11 09:26:01'),
(20, 'Disability and COVID-19', '<p>Tool for SC Project Managers useful for planning integrate response to guarantee continuity in Education during COVID-19 pandemics</p>', 8, 88, 'en', 1, 1, 1, '2022-04-03 08:10:59', '2022-04-03 08:11:56'),
(21, NULL, '<p>Tool for SC Project Managers useful for planning integrate response to guarantee quality WASH services provision during COVID-19 pandemics</p>', 8, 89, 'en', 1, 1, 1, '2022-04-03 08:13:00', '2022-04-18 07:54:07'),
(22, NULL, '<p>Tool for SC Project Managers useful for planning integrate response to guarantee continuity in Health services provision during COVID-19 pandemics</p>', 8, 90, 'en', 1, 1, 1, '2022-04-03 08:14:14', '2022-04-18 07:54:27'),
(23, NULL, '<p>Tool for SC Project Managers useful for planning integrate response to guarantee continuity in Nutrition services provision during COVID-19 pandemics</p>', 8, 91, 'en', 1, 1, 1, '2022-04-03 08:14:52', '2022-04-18 08:58:50'),
(24, 'Gender and COVID-19', '<p>Guidance notes for Project Managers and implementers to make sure WASH programming and delivery is participative and inclusive through engagement of SGM communities and organizations</p>', 8, 92, 'en', 1, 1, 1, '2022-04-03 08:15:53', '2022-04-03 08:15:53'),
(25, 'Gender', '<p>For teachers and teacher educators. A Guide for Strengthening Gender Equality and Inclusiveness in Teaching and Learning Materials: guidance on development and evaluation of materials to promote equality and inclusiveness of all marginalized, disadvantaged, and underrepresented groups.</p>', 17, 109, 'en', 1, 1, 1, '2022-04-18 08:52:36', '2022-04-18 08:52:36'),
(26, NULL, '<p>For practitioners, teachers. A framework that outlines some of the factors that determine the quality of teaching of marginalized girls. It helps reflecting on working with marginalized girls and adapting teachers\' approaches to teacher professional development</p>', 17, 110, 'en', 1, 1, 1, '2022-04-18 08:53:32', '2022-04-18 08:53:32'),
(27, NULL, '<p>A series of tools and practical guidance to help practitioners ensure education in emergency (EiE) interventions and programs are gender-responsive and inclusive. See page 151, 5.3 Gender in EiE Protection and Well-Being Interventions for a tool to understand the rationale for, and how to reflect, gender responsiveness in protection and well-being interventions within EiE programs.</p>', 17, 111, 'en', 1, 1, 1, '2022-04-18 08:54:25', '2022-04-18 08:54:25'),
(28, 'Discrimination and  Stereotypes', '<p>For teachers. Classroom environment assessment to value: participation, health and well-being, safety and protection, enrollment and completion of studies, academic success, motivation of teachers, community support.</p>', 17, 112, 'en', 1, 1, 1, '2022-04-18 08:55:25', '2022-04-18 08:55:25'),
(29, 'Ethnicity and language', '<p>For PM. Report and case studies from successful BC IEE projects addressing several issues, including Displaced Populations and Minority Ethnic Groups in the classroom.</p>', 17, 114, 'en', 1, 1, 1, '2022-04-18 08:56:19', '2022-04-18 08:56:19'),
(30, 'Physical characteristics  and access', '<p>For individual schools. Self-reflection tool with questions designed to provide a picture of the environment&rsquo;s inclusiveness, focusing on its social, learning, and physical aspects.</p>', 17, 113, 'en', 1, 1, 1, '2022-04-18 08:57:07', '2022-04-18 08:57:07'),
(31, 'Discrimination,  stigmatization, and  stereotypes', '<p>For project managers.</p>\r\n<p>Nine SC case studies of successful Inclusive Education programs organized as follows: Background &ndash; Approach - Engagement of Stakeholders and Partners &ndash; Child Participation &ndash; Key Milestones &ndash; Significant Challenges &ndash; Scalability and Sustainability &ndash; Suggestions for further implementation &ndash; Case studies &ndash; References to SC Project Material and Contacts. See p.29, China on the successful inclusion of children with disabilities; p. 45, Kosovo on the inclusion of ethnic minorities in school.</p>', 28, 172, 'en', 1, 1, 1, '2022-04-21 04:23:27', '2022-07-07 05:32:32'),
(32, 'COVID-19 and disability', '<p>For school heads and teachers.</p>\r\n<p>Short document with useful tips for school heads and teachers training strategies to implement inclusive education for children with disabilities during COVID-19. Disabilities are not discussed in detail, but there are useful referrals to other documents.</p>', 28, 88, 'en', 1, 1, 1, '2022-04-21 04:24:52', '2022-07-07 05:31:53'),
(33, 'Lack of psychological  support for parents', '<p>For teachers.</p>\r\n<p>The sourcebook at UNIT 5 provides the reader with good guidelines on how to work with parents and families and engage them in their children&rsquo;s education.</p>', 28, 173, 'en', 1, 1, 1, '2022-04-21 04:26:29', '2022-04-21 04:26:29'),
(34, 'Gender', '<p>For project managers.</p>\r\n<p>See page 61 for a guide with all necessary criteria to provide gender-responsive program strategies.</p>', 33, 70, 'en', 1, 1, 1, '2022-05-18 04:13:16', '2022-07-06 08:57:01'),
(35, 'Physical characteristics and access', '<p>For individual schools.</p>\r\n<p>Checklost to access school inclusiveness in the following domains:</p>\r\n<p>&nbsp; -&nbsp; teaching languages and methods</p>\r\n<p>&nbsp; -&nbsp; pro-integration policies</p>\r\n<p>&nbsp; -&nbsp; school environment</p>\r\n<p>&nbsp; -&nbsp; student\'s well-being</p>', 33, 206, 'en', 1, 1, 1, '2022-05-18 04:19:38', '2022-05-18 04:19:38'),
(36, 'Teacher\'s awareness and capacity building', '<p>For teachers and school heads.</p>\r\n<p>Detailed manual on how to plan and organize the school for the inclusion of children with disabilities, covering a avariety of aspects: access to information. school facilities and quality learning; inclusive planning; classroom management; tools for assessment of the level of inclusiveness; tools for assessment of children\'s learning difficulties</p>', 33, 165, 'en', 1, 1, 1, '2022-05-18 04:30:10', '2022-05-18 04:30:10'),
(37, 'Financial barriers', '<p>For individual schools (that have not yet implemented inclusive education or are only beginning to do so).</p>\r\n<p>The strategies represented in the guide are structured using a multi-tiered approach and are meant to be applied in countries which lack the resources for implementing inclusive education (but can be equally applied in other contexts).</p>', 33, 190, 'en', 1, 1, 1, '2022-05-18 04:38:27', '2022-07-06 08:58:38'),
(38, 'Gender & disability', '<p>For INGOs, Project Managers, and Community Workers.</p>\r\n<p>&nbsp;</p>\r\n<p>See page 98, 4.1 Gender in EiE advocacy and communications for a checklist for advocacy planning and delivery to understand and address the issue and the challenges of advocacy for gender-responsive education in acute emergencies.</p>', 40, 70, 'en', 1, 1, 1, '2022-06-13 06:30:49', '2022-06-13 06:31:39'),
(39, 'Language', '<p>Guidelines and Advocacy Strategies for trainers and educators to help ensure access to quality learning for English Language Learners</p>', 40, 44, 'en', 1, 1, 1, '2022-06-13 06:32:52', '2022-06-13 06:32:52'),
(40, 'COVID 19', '<p>For schools heads and teachers. Short document with useful tips and teacher training strategies with regards to disability inclusion during COVID-19 education. Disabilities are never discussed in detail. See the BEFORE SCHOOLS RE-OPEN &gt; Advocacy section.</p>', 40, 165, 'en', 1, 1, 1, '2022-06-13 06:34:31', '2022-06-13 06:34:31'),
(41, 'Discrimination and  stereotypes', '<p>For Policy Makers. Report and case studies from successful BC IE projects. See Minority Ethnic Groups in the classroom section.</p>', 40, 190, 'en', 1, 1, 1, '2022-06-13 06:35:48', '2022-06-13 06:35:48'),
(42, 'Economic opportunities', '<p>For Policy makers and stakeholders. Text sourcebook with bullet points on strategies to implement inclusive education in low-income countries.</p>', 40, 207, 'en', 1, 1, 1, '2022-06-13 06:36:55', '2022-06-13 06:36:55'),
(44, 'Google', '<p>Google</p>', 40, 43, 'en', 1, 1, 1, '2022-08-04 04:50:49', '2022-08-04 04:53:30'),
(45, 'Género', '<p>Para personal de campo de SC. Libro de consulta sobre c&oacute;mo afrontar la reapertura de escuelas despu&eacute;s del COVID-19. Para anexos t&eacute;cnicos &uacute;tiles, v&eacute;ase el Anexo 5 Participatory Education and Protection Continuity Planning.</p>', 44, 222, 'es', 1, 1, 1, '2023-01-28 22:51:17', '2023-01-29 01:41:01'),
(46, 'COVID-19 y discapacidad', '<p>Para gestores de proyectos de SC. &Uacute;til para planear una respuesta coordinada con comunidades, proveedores de salud y CBOs para garantizar la protecci&oacute;n de los ni&ntilde;os y ni&ntilde;as con discapacidad durante la pandemia de COVID.</p>', 44, 222, 'es', 1, 1, 1, '2023-01-29 01:43:53', '2023-01-29 01:43:53'),
(47, 'Discapacidad y estereotipos', '<p>Para directores escolares. educadores de ECCD y docentes de escuelas de primaria y secundaria. Enfoques pedag&oacute;gicos y actividades para el ambiente de aprendizaje de educaci&oacute;n preescolar sea acogedor, fiable, accesible, diverso y seguro para el desarrollo de las habilidades sociales de los ni&ntilde;os y las ni&ntilde;as con discapacidad.</p>', 44, 222, 'es', 1, 1, 1, '2023-01-29 01:50:43', '2023-01-29 01:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `menu_actions`
--

CREATE TABLE `menu_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auth_menu_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
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
(54, 20, 'Add', 1, 'tool.create', NULL, 1, 1, '2022-02-05 23:16:06', '2022-02-05 23:16:06'),
(55, 20, 'Edit', 2, 'tool.edit', NULL, 2, 1, '2022-02-05 23:16:30', '2022-02-05 23:16:30'),
(56, 20, 'Publish/Unpublish', 3, 'tool.status', NULL, 3, 1, '2022-02-05 23:16:47', '2022-02-05 23:16:47'),
(57, 20, 'Delete', 4, 'tool.destroy', NULL, 15, 1, '2022-02-05 23:17:07', '2022-02-05 23:17:07'),
(58, 21, 'Add', 1, 'toolkit.category.create', NULL, 1, 1, '2022-02-07 00:43:51', '2022-02-07 00:43:51'),
(59, 21, 'Edit', 2, 'toolkit.category.edit', NULL, 2, 1, '2022-02-07 00:44:11', '2022-02-07 00:44:11'),
(60, 21, 'Publish/Unpublish', 3, 'toolkit.category.status', NULL, 3, 1, '2022-02-07 00:44:29', '2022-02-07 00:44:29'),
(61, 21, 'Delete', 4, 'toolkit.category.destroy', NULL, 15, 1, '2022-02-07 00:44:45', '2022-02-07 00:44:45'),
(62, 22, 'Add', 1, 'tool.methodology.create', NULL, 1, 1, '2022-02-07 02:03:20', '2022-02-07 02:03:20'),
(63, 22, 'Edit', 2, 'tool.methodology.edit', NULL, 2, 1, '2022-02-07 02:03:35', '2022-02-07 02:03:35'),
(64, 22, 'Publish/Unpublish', 3, 'tool.methodology.status', NULL, 3, 1, '2022-02-07 02:03:56', '2022-02-07 02:03:56'),
(65, 22, 'Delete', 4, 'tool.methodology.destroy', NULL, 15, 1, '2022-02-07 02:04:12', '2022-02-07 02:04:12'),
(66, 23, 'Add', 1, 'intersectionality.tips.create', NULL, 1, 1, '2022-02-07 03:57:47', '2022-02-07 03:57:47'),
(67, 23, 'Edit', 2, 'intersectionality.tips.edit', NULL, 2, 1, '2022-02-07 03:58:01', '2022-02-07 03:58:01'),
(68, 23, 'Publish/Unpublish', 3, 'intersectionality.tips.status', NULL, 3, 1, '2022-02-07 03:58:16', '2022-02-07 03:58:16'),
(69, 23, 'Delete', 4, 'intersectionality.tips.destroy', NULL, 15, 1, '2022-02-07 03:58:32', '2022-02-07 03:58:32'),
(70, 24, 'Add', 1, 'relevant.indicator.create', NULL, 1, 1, '2022-02-07 22:09:27', '2022-02-07 22:09:27'),
(71, 24, 'Edit', 2, 'relevant.indicator.edit', NULL, 2, 1, '2022-02-08 00:15:07', '2022-02-08 00:15:07'),
(72, 24, 'Publish/Unpublish', 3, 'relevant.indicator.status', NULL, 3, 1, '2022-02-08 00:16:47', '2022-02-08 00:16:47'),
(73, 24, 'Delete', 4, 'relevant.indicator.destroy', NULL, 15, 1, '2022-02-08 00:17:01', '2022-02-08 00:17:01'),
(74, 25, 'Add', 1, 'toolkit.create', NULL, 1, 1, '2022-02-08 04:21:10', '2022-02-08 04:21:10'),
(75, 25, 'Edit', 2, 'toolkit.edit', NULL, 2, 1, '2022-02-08 04:21:42', '2022-02-08 04:21:42'),
(76, 25, 'Publish/Unpublish', 3, 'toolkit.status', NULL, 3, 1, '2022-02-08 04:21:54', '2022-02-08 04:21:54'),
(77, 25, 'Delete', 4, 'toolkit.destroy', NULL, 15, 1, '2022-02-08 04:22:09', '2022-02-08 04:22:09'),
(78, 26, 'Add', 1, 'further.reading.create', NULL, 1, 1, '2022-02-09 21:54:27', '2022-02-09 21:54:27'),
(79, 26, 'Edit', 2, 'further.reading.edit', NULL, 2, 1, '2022-02-09 21:54:55', '2022-02-09 21:54:55'),
(80, 26, 'Publish/Unpublish', 3, 'further.reading.status', NULL, 3, 1, '2022-02-09 21:55:11', '2022-02-09 21:55:11'),
(81, 26, 'Delete', 4, 'further.reading.destroy', NULL, 15, 1, '2022-02-09 21:55:29', '2022-02-09 21:55:29'),
(82, 27, 'Add', 1, 'country.create', NULL, 1, 1, '2022-07-26 07:18:18', '2022-07-26 07:18:18'),
(83, 27, 'Edit', 2, 'country.edit', NULL, 2, 1, '2022-07-26 07:18:34', '2022-07-26 07:18:34'),
(84, 27, 'Publish/Unpublish', 3, 'country.status', NULL, 3, 1, '2022-07-26 07:19:00', '2022-07-26 07:19:00'),
(85, 28, 'View', 8, 'feedback.view', NULL, NULL, 1, '2022-08-10 05:09:21', '2022-08-10 05:09:21'),
(86, 29, 'Add', 1, 'story.create', NULL, NULL, 1, '2022-08-22 06:21:38', '2022-08-22 06:21:38'),
(87, 29, 'Edit', 2, 'story.edit', NULL, NULL, 1, '2022-08-22 06:22:06', '2022-08-22 06:22:06'),
(88, 29, 'Publish', 3, 'story.status', NULL, NULL, 1, '2022-08-22 06:22:49', '2022-08-22 06:22:49'),
(89, 29, 'View', 8, 'story.view', NULL, NULL, 1, '2022-08-22 06:23:05', '2022-08-22 06:23:05'),
(90, 29, 'Delete', 4, 'story.delete', NULL, NULL, 1, '2022-08-22 06:23:21', '2022-08-22 06:23:21');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2021_03_23_143905_create_admins_table', 1),
(13, '2021_03_31_043437_create_auth_menus_table', 1),
(14, '2021_04_16_121434_create_roles_table', 1),
(15, '2021_04_16_123030_create_menu_actions_table', 1),
(17, '2014_10_12_000000_create_users_table', 3),
(19, '2021_10_11_045657_create_divisions_table', 3),
(20, '2021_10_11_045917_create_districts_table', 3),
(21, '2021_10_11_050315_create_upazilas_table', 3),
(24, '2021_10_21_044914_create_you_tubes_table', 4),
(25, '2021_10_25_045045_create_you_tube_watches_table', 5),
(27, '2021_10_11_090507_create_categories_table', 6),
(34, '2021_12_01_050320_create_pages_table', 7),
(35, '2021_12_01_085152_create_page_menus_table', 7),
(39, '2021_12_02_042020_create_banners_table', 8),
(40, '2022_01_25_043328_create_editor_drafts_table', 9),
(42, '2022_02_06_061449_create_tool_methodologies_table', 10),
(43, '2022_02_06_062416_create_intersectionality_tips_table', 11),
(44, '2022_02_06_064557_create_toolkit_categories_table', 12),
(45, '2022_02_06_065543_create_further_readings_table', 13),
(46, '2022_02_06_090506_create_relevant_indicators_table', 14),
(48, '2022_02_06_093456_create_toolkit_relevant_indicator_relations_table', 15),
(49, '2022_02_06_093654_create_toolkit_tool_relations_table', 15),
(50, '2022_02_06_094459_create_toolkit_tool_methodology_relations_table', 16),
(51, '2022_02_06_094933_create_toolkits_table', 17),
(52, '2022_04_21_041059_add_footer_to_toolkit_categories_table', 18),
(53, '2022_06_20_053506_add_status_to_tool_methodologies_table', 19),
(54, '2022_07_24_054514_create_countries_table', 20),
(55, '2022_07_26_034341_create_feedbacks_table', 20),
(56, '2022_08_10_072826_create_stories_table', 21);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('004ea5697e14a8e5618ee33a2bb930eb23257d75241931b620192ed9cb30d8bcb0d2f05e8e224723', 1, 3, 'passenger', '[]', 0, '2021-06-23 01:26:46', '2021-06-23 01:26:46', '2022-06-23 07:26:46'),
('007d692c50a7310d6252d84083fdf315b7f5012abed14a4bbe847f0c8813ec5495ad9efdf691c744', 1, 3, 'cyberTeen', '[]', 0, '2021-10-18 00:58:48', '2021-10-18 00:58:48', '2022-10-18 06:58:48'),
('0282dccac92e438e7af7d72e408ad21f1a495b0a162bfc04c426e092cd969ad41deb6a612f83e87c', 1, 3, 'passenger', '[]', 0, '2021-06-26 23:28:30', '2021-06-26 23:28:30', '2022-06-27 05:28:30'),
('07981372325cf66b6c0bfc1305b33d3e70248f606f8afee7cc5a5afbb4b6bb8dbc24cb9faa125d43', 1, 3, 'cyberTeen', '[]', 0, '2021-11-08 23:39:07', '2021-11-08 23:39:07', '2022-11-09 05:39:07'),
('0a53fa3c874f88b87f63cd02da191fb6b80ae500c3ec8652c7dba65e4a5df572d4bf6cfd060e5838', 3, 3, 'cyberTeen', '[]', 0, '2021-11-07 22:12:21', '2021-11-07 22:12:21', '2022-11-08 04:12:21'),
('0fed6ccac9e2fb2dcb73339ab3876c073801698fe930764c41803581ce4a307de58cf0614b9c430d', 8, 3, 'cyberTeen', '[]', 0, '2021-10-24 22:35:02', '2021-10-24 22:35:02', '2022-10-25 04:35:02'),
('10f46d3b45c42d2110fdc253a1244439e9aeeda1c203003a97f337c01cfca709e7ae988446187bfa', 1, 3, 'cyberTeen', '[]', 0, '2021-10-18 00:47:49', '2021-10-18 00:47:49', '2022-10-18 06:47:49'),
('116226dcd183c7c6230ac0a489ea7156b0b79926cd6e0d8c7339db35a97bd4e1e1922ebfdc51f685', 1, 3, 'cyberTeen', '[]', 0, '2021-10-17 21:37:39', '2021-10-17 21:37:39', '2022-10-18 03:37:39'),
('15b8b21f8297eb837150165429e5d4eaafab69bdb2909fd5b9d531bd8dfb36448594943ed427db47', 1, 3, 'cyberTeen', '[]', 0, '2021-10-18 21:37:08', '2021-10-18 21:37:08', '2022-10-19 03:37:08'),
('1acf7c1e57ab9f961aedc05fa17cbf8cdc7cc9d37b4e022120248316a19cc1b09c75a15e51db12d9', 4, 3, 'cyberTeen', '[]', 0, '2021-11-10 00:26:24', '2021-11-10 00:26:24', '2022-11-10 06:26:24'),
('1be1d774b3d6eb2f1fe921c0b6efbb255b7a250b3c6fc7bff9e6063c3caba4761cfaee6449d5df7c', 1, 3, 'cyberTeen', '[]', 0, '2021-11-10 21:34:38', '2021-11-10 21:34:38', '2022-11-11 03:34:38'),
('1c9ea5603331e6b91859867a7127e0f88afd55334efce326267fd04ee3bb2e2ac2fbdd667080f6bb', 2, 3, 'driver', '[]', 0, '2021-06-16 00:57:20', '2021-06-16 00:57:20', '2022-06-16 06:57:20'),
('1e33a9c7250bb2c3a03d528ee1c98d96b3fd3fb57d29698374b9a6170b7d83db3e946188a1e56800', 8, 3, 'driver', '[]', 0, '2021-06-07 03:35:46', '2021-06-07 03:35:46', '2022-06-07 09:35:46'),
('2070abd011f0d1d53e498bb93e06fbfbf147aee7431e6b30ddbf8a4dfe0a6ce5717e79b5c510e2d5', 2, 3, 'driver', '[]', 0, '2021-06-07 03:29:35', '2021-06-07 03:29:35', '2022-06-07 09:29:35'),
('213827b9203a7209b46ad59ba76cc5d5de4beaf5fdac7b1f8e00fed9bbe03ddcad1c788d11105ea5', 9, 3, 'cyberTeen', '[]', 0, '2021-10-24 22:42:20', '2021-10-24 22:42:20', '2022-10-25 04:42:20'),
('241ae965ab52b832924b736835fc83de1abe4f63c3364c719fa1566566aec1f104f983cd43fcbac1', 4, 3, 'cyberTeen', '[]', 0, '2021-11-24 00:53:48', '2021-11-24 00:53:48', '2022-11-24 06:53:48'),
('2dac9d768962bc0d1d209f1b371d5ec4996998dcb704b8d65dcbe8d83c8e4141ffb973159aa02de2', 2, 3, 'driver', '[]', 0, '2021-06-07 03:51:47', '2021-06-07 03:51:47', '2022-06-07 09:51:47'),
('2df1cb037b34a0a69e354af041676764a8aaefe57d329b1813b5764d6330020759bbbca95db446e4', 6, 3, 'driver', '[]', 0, '2021-06-07 03:23:01', '2021-06-07 03:23:01', '2022-06-07 09:23:01'),
('31512126ab6d871e773ecdfdd7311d81ff3852d27f5f951448a7a475dae9c34623792e6c6cdd382a', 1, 3, 'cyberTeen', '[]', 0, '2021-10-18 00:29:18', '2021-10-18 00:29:18', '2022-10-18 06:29:18'),
('31e2c272b8a412d01baf438d9b9b83c2c8f58e61e8bccda3998edc247ac0f62e72884c0a506e2666', 2, 3, 'driver', '[]', 0, '2021-06-07 01:28:35', '2021-06-07 01:28:35', '2022-06-07 07:28:35'),
('356f357ea45bf4aed1f99a31598ca16d0b17560b813cfd44964e04d8f744fdb6add801c99e2be18e', 1, 3, 'cyberTeen', '[]', 0, '2021-10-17 23:28:58', '2021-10-17 23:28:58', '2022-10-18 05:28:58'),
('36a02a63b5c220e65e1a2f9664f0ec898c2f596dc0897107f6266b6945bfa54286b15de59de82b1e', 1, 3, 'passenger', '[]', 0, '2021-06-23 00:55:54', '2021-06-23 00:55:54', '2022-06-23 06:55:54'),
('36a7a422f28b66eafdae4eb049fb9b7e3c3a92c52e492d8107eb50661d3909ac2044226974e3c887', 2, 3, 'driver', '[]', 0, '2021-06-09 03:27:16', '2021-06-09 03:27:16', '2022-06-09 09:27:16'),
('3995fdc734ae7c482a49fe31f0aaa32ba022bee487b6f03494a9f0b2595207e6ff4d8951f5855492', NULL, 3, 'cyberTeen', '[]', 0, '2021-10-18 00:50:56', '2021-10-18 00:50:56', '2022-10-18 06:50:56'),
('3a69c33a8412a33234b28fb11e4891350f656fd631efaf142ddacf3a2d7a72c658c32550b00fead8', 11, 3, 'cyberTeen', '[]', 0, '2021-10-25 23:27:34', '2021-10-25 23:27:34', '2022-10-26 05:27:34'),
('3cfd9587eaa10851ae5e5013feb490dfab0084f32f004712ea2bafc530e00f61c874ffaadb3fc291', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-05-07 15:59:25', '2021-05-07 15:59:25', '2022-05-07 21:59:25'),
('3d01f2d59a639b76c047d9bb76cae15d2deb0a260746aa0d33a9a2139dba2f7faceff9d1dc979011', 2, 3, 'driver', '[]', 0, '2021-06-06 02:45:00', '2021-06-06 02:45:00', '2022-06-06 08:45:00'),
('40fb1e21e1e1796ba1362b20c9d4cf4a5909ca913927e34d06a1fc1fcda6fb1c33388d45a3121a20', 5, 3, 'cyberTeen', '[]', 0, '2021-11-10 00:26:18', '2021-11-10 00:26:18', '2022-11-10 06:26:18'),
('41fa624a674da980bfe56a81a612f22913ee525796ce37d1c01186cc088b62c1cf8b12df7ae8d0d2', 2, 3, 'driver', '[]', 0, '2021-06-27 05:35:33', '2021-06-27 05:35:33', '2022-06-27 11:35:33'),
('434371e952cf2ca060098616dba0bc22d572f8352eabd7e62d925161461ca7cd4557afdabe817503', 2, 3, 'driver', '[]', 0, '2021-06-10 04:14:40', '2021-06-10 04:14:40', '2022-06-10 10:14:40'),
('44d34d21520dc7ddc4308ecfbb9b42dda575188c28e26ade51d0b35550df91ed4fdf2c41bca4a780', 4, 3, 'cyberTeen', '[]', 0, '2021-11-09 21:38:35', '2021-11-09 21:38:35', '2022-11-10 03:38:35'),
('45fbe367f2c0f6d7ad81915e0c9f4bec6a541d3eba9a0fadc244f32a437af14edb0b6f23589039fa', 1, 3, 'cyberTeen', '[]', 0, '2021-11-12 10:26:41', '2021-11-12 10:26:41', '2022-11-12 16:26:41'),
('469af137ed1a7f214bb41bb867f689079d5feb4a8ebe2fe067dfa9c6ed4d0af757132f55e0fc2308', 4, 3, 'cyberTeen', '[]', 0, '2021-10-21 01:48:57', '2021-10-21 01:48:57', '2022-10-21 07:48:57'),
('47572d33ec4252c851a09adfa7a408c0c7f2496c85e30648a2312363004bbd42842e5e3d3e493f9f', 2, 3, 'driver', '[]', 0, '2021-06-06 03:00:40', '2021-06-06 03:00:40', '2022-06-06 09:00:40'),
('4810a0d978415334df03b99449ee0b32ee8fe808d701b9888cb7c443c946b30d2c34db79d2f9c8df', 8, 3, 'cyberTeen', '[]', 0, '2021-10-25 01:13:09', '2021-10-25 01:13:09', '2022-10-25 07:13:09'),
('4f858572fe50ac083ac3b71fc5c9f7c9a11994dbe7a6fd814babe9becf2572bea28af3415b073b62', 4, 3, 'cyberTeen', '[]', 0, '2021-10-21 01:19:34', '2021-10-21 01:19:34', '2022-10-21 07:19:34'),
('53a2e92febfea6507b99218bdaf3a2805f174fc3eb780c5bf917a9c6682e0928abc8ba0a3417e902', 2, 3, 'driver', '[]', 0, '2021-06-16 04:31:54', '2021-06-16 04:31:54', '2022-06-16 10:31:54'),
('5577de92f1b8562f300b996cfb2f2466cc18f1d47d9c023e2cf1901757d406e4d3766f8c284c4c6e', 2, 3, 'driver', '[]', 0, '2021-06-07 04:22:13', '2021-06-07 04:22:13', '2022-06-07 10:22:13'),
('55be44e177225299e02ffb6d0f9768728775b640cdd1519a27c10bd76505e72747f236b181f8e9da', 1, 3, 'cyberTeen', '[]', 0, '2021-10-17 22:17:51', '2021-10-17 22:17:51', '2022-10-18 04:17:51'),
('57d0cac8f53a5716a7163c6e9043664c52fce56dd061d994d83816c66829b3c0dec19d01f76d2d3e', 8, 3, 'cyberTeen', '[]', 0, '2021-10-24 22:08:11', '2021-10-24 22:08:11', '2022-10-25 04:08:11'),
('583cc5312c6467c7fc7a2a938a7a46397dd124311e095537cc99ec6161d9fccdf2fab24ccc40baf8', 7, 3, 'driver', '[]', 0, '2021-06-07 03:31:21', '2021-06-07 03:31:21', '2022-06-07 09:31:21'),
('5b9a8b193b4519963e7f7bd9ed7a9609c868eb305a93a0ae049b028edb111dd633dbd51f54fd20a8', 7, 3, 'driver', '[]', 0, '2021-06-06 03:46:50', '2021-06-06 03:46:50', '2022-06-06 09:46:50'),
('5df6ce4bbc9e0e7ce8c6a6ae89ff59fe6f0693b82da855a34daf79aadbaccbed21217ea2947ab737', 1, 3, 'passenger', '[]', 0, '2021-06-23 03:04:54', '2021-06-23 03:04:54', '2022-06-23 09:04:54'),
('5f07cd1e83ac3e650a302bc20986ecf5d3642fe764f5688ff08d8f42710e3172827e5bdf2bae4ce9', 2, 3, 'driver', '[]', 0, '2021-06-07 03:27:28', '2021-06-07 03:27:28', '2022-06-07 09:27:28'),
('60509632c7fa72c057874aebb977f599142648ca09912c7eaab0954f35d0f52d32eb1b57da2dbc8c', 4, 3, 'cyberTeen', '[]', 0, '2021-10-21 01:34:17', '2021-10-21 01:34:17', '2022-10-21 07:34:17'),
('605649a80bb4604c0cfe3349394532503ccebf89fc7effe0dcb81d040dcddca92596b7eda407f2bd', 4, 3, 'cyberTeen', '[]', 0, '2021-11-10 00:25:37', '2021-11-10 00:25:37', '2022-11-10 06:25:37'),
('68f81f88dd2711451ef5bbdcad05fc94207558540441f8d7263a6020490b9879234e98f71ac80880', 6, 3, 'cyberTeen', '[]', 0, '2021-10-24 01:19:11', '2021-10-24 01:19:11', '2022-10-24 07:19:11'),
('6970c0ff6ec48b6406f2df8b159b85cd14e6b53f5d5fb330138b26159b62b0ac023ba6981120f476', 2, 3, 'driver', '[]', 0, '2021-06-07 04:06:36', '2021-06-07 04:06:36', '2022-06-07 10:06:36'),
('6a2f835d39ce329b461fa07a6babedaa940c3c055c46a556b6e8e4cc30e0cd7640a6ecc4dfdb1a68', 4, 3, 'cyberTeen', '[]', 0, '2021-11-24 01:19:52', '2021-11-24 01:19:52', '2022-11-24 07:19:52'),
('6cab9bf808481a73f09e8b3b78e7bc2dbfdbafcd5780238490121757e17537f5de1287ff72165f1a', 8, 3, 'cyberTeen', '[]', 0, '2021-10-24 22:38:09', '2021-10-24 22:38:09', '2022-10-25 04:38:09'),
('6d4104810708ef012aad5f224a64dd504cbe9ec542bc2f499ad8a5eebae6f04f008f2f4b5c688f45', 2, 3, 'driver', '[]', 0, '2021-06-09 00:49:38', '2021-06-09 00:49:38', '2022-06-09 06:49:38'),
('7060771b97780003b03248cf331a1c11578e6e7e67779cc9d0a9cd37069802f3d9b6f31beec63d2f', 4, 3, 'cyberTeen', '[]', 0, '2021-11-10 00:24:59', '2021-11-10 00:24:59', '2022-11-10 06:24:59'),
('71ee69f5803bc4c9320e5e3ab7fab0951a63124341ecb3735d8a82b1554782afe39dbca6fb84147b', 2, 3, 'driver', '[]', 0, '2021-06-09 03:56:50', '2021-06-09 03:56:50', '2022-06-09 09:56:50'),
('7202f013b2b7c0c96345139565d8fcf9bf8b20895395a4b4ce49d249b4acfee424f0edc6e4df04a0', 11, 3, 'cyberTeen', '[]', 0, '2021-10-25 23:27:43', '2021-10-25 23:27:43', '2022-10-26 05:27:43'),
('7774aa28f956caf7e74e6d93e6cf9ea62927e9d16f948559ce40eef34dec3f9ff96c15a3fd0d7316', 2, 3, 'driver', '[]', 0, '2021-06-07 03:24:59', '2021-06-07 03:24:59', '2022-06-07 09:24:59'),
('77b8261e610281fd3f1d79c48121bc897e43a939be64b4872c8956200a5e4ae9123e5e11718be146', NULL, 3, 'cyberTeen', '[]', 0, '2021-10-18 00:50:59', '2021-10-18 00:50:59', '2022-10-18 06:50:59'),
('7d09dd47275a787bfed63a9863d75e2d44e7a9a5dec7032744fbd34553f55a5deafec32c154e2877', 8, 3, 'cyberTeen', '[]', 0, '2021-10-24 22:34:35', '2021-10-24 22:34:35', '2022-10-25 04:34:35'),
('7ee44b7333c29ea24091db47a26a8ef3f0422c18072f596a4dd97deb60f92691f5193ef027a86c32', 2, 3, 'driver', '[]', 0, '2021-06-13 23:50:01', '2021-06-13 23:50:01', '2022-06-14 05:50:01'),
('7eea2360799e3a01bf43a24cd4aa53add0f041266202f94c856f3a22d62db240a4502b1eb60caf67', 1, 3, 'cyberTeen', '[]', 0, '2021-10-18 00:10:54', '2021-10-18 00:10:54', '2022-10-18 06:10:54'),
('806055ecbc6bb6696b230890c055b806b54631b6780491edcccf6fd80148d9d1ea26715ad297b563', 4, 3, 'cyberTeen', '[]', 0, '2021-10-24 21:56:50', '2021-10-24 21:56:50', '2022-10-25 03:56:50'),
('82434824cc7dffb9395df14484f1943e761cc3e2aa6f0117da79297b3b13a12d7347cdb78553bd61', 4, 3, 'cyberTeen', '[]', 0, '2021-10-25 22:02:12', '2021-10-25 22:02:12', '2022-10-26 04:02:12'),
('82dda839f8624e71d13e6d04db8bfd4aea3548e53640c6cdae23d41402080babd7ce337b98ebe4d3', 1, 3, 'cyberTeen', '[]', 0, '2021-11-07 21:38:40', '2021-11-07 21:38:40', '2022-11-08 03:38:40'),
('85014d999bf2142aac48e44a7f183178090c20847d55f6e8497c7c461da3459707b3b915a80689dc', 1, 3, 'cyberTeen', '[]', 0, '2021-11-08 21:26:41', '2021-11-08 21:26:41', '2022-11-09 03:26:41'),
('85443c2b5a9001cb2abaf2ac307146bcb3afaa92a2e69cbcef88613e0362f31bf0b10cafea253b8e', 4, 3, 'cyberTeen', '[]', 0, '2021-10-25 22:02:59', '2021-10-25 22:02:59', '2022-10-26 04:02:59'),
('87dca13b6334c4c35f04542913caec3e95055d532d97951755211d662d32136205fdbded812a3b8b', 3, 3, 'cyberTeen', '[]', 0, '2021-10-31 23:53:30', '2021-10-31 23:53:30', '2022-11-01 05:53:30'),
('8bd4a4d1e9754574715ed8d5cde90a15681051f39cfd1dcad0a12ac26ca2fa23cf697a40f9c70fed', 4, 3, 'cyberTeen', '[]', 0, '2021-11-10 00:25:49', '2021-11-10 00:25:49', '2022-11-10 06:25:49'),
('8fcc126a8221f61b77024b4a15feebca14d345cab676c5228f83dcc219cd2094a9cf80501423b1dc', 5, 3, 'driver', '[]', 0, '2021-06-07 00:46:03', '2021-06-07 00:46:03', '2022-06-07 06:46:03'),
('90b3f68f9857a23c918c93c4a3cc9fe058d45c32ceaa71ffdb4d1d5d9855f78662aae32e74fdb6a8', 1, 3, 'cyberTeen', '[]', 0, '2021-10-18 22:02:21', '2021-10-18 22:02:21', '2022-10-19 04:02:21'),
('93ccb4cf62ee0dcb1d13af890f590393ab072f9ae86a4075288d375fe98e5fea3df326cb95644591', 4, 3, 'cyberTeen', '[]', 0, '2021-10-24 21:54:35', '2021-10-24 21:54:35', '2022-10-25 03:54:35'),
('942ca5ab941453dc11977f4b931ff219c04209ee1965dba1a6197ee1111800df45fbcb4349e371c3', 2, 3, 'driver', '[]', 0, '2021-06-07 03:57:27', '2021-06-07 03:57:27', '2022-06-07 09:57:27'),
('95f44fe6aad8ab034d06d583e14745a7a0ae7349f564fe0cec300e41ff8afd26a181395ed7b2e3f1', 4, 3, 'cyberTeen', '[]', 0, '2021-10-24 21:50:59', '2021-10-24 21:50:59', '2022-10-25 03:50:59'),
('9bf47094507ad8fd8012f1480a6142ef6f6af62d7408db0cdfc2fc355242ebccf1ffb4f88afe349e', 2, 3, 'driver', '[]', 0, '2021-06-14 01:33:33', '2021-06-14 01:33:33', '2022-06-14 07:33:33'),
('9dca9db910269895d6324119ca853508068b5186f6aa023d712d3712a745965c7b4cc2cecd8fe8aa', 2, 3, 'cyberTeen', '[]', 0, '2021-10-31 23:27:44', '2021-10-31 23:27:44', '2022-11-01 05:27:44'),
('9eb06cedccd9fc1361cbe1dc3558e007f6fe20711ec230c86bd7d5f76f682b1291670bb7e0aec6a0', 1, 3, 'cyberTeen', '[]', 0, '2021-10-18 00:48:39', '2021-10-18 00:48:39', '2022-10-18 06:48:39'),
('a0ef40145ec14089e6283ff7dda2f8e50436293f1158e4f7e7eed5291eeac358081e8738b0d270b1', 1, 3, 'cyberTeen', '[]', 0, '2021-10-23 21:50:25', '2021-10-23 21:50:25', '2022-10-24 03:50:25'),
('a15f262d7cf99e35cbbecffcd2ad99a7661fd534d8e232a081d22b43d1e9cb464157094640936edf', 10, 3, 'cyberTeen', '[]', 0, '2021-10-25 22:02:46', '2021-10-25 22:02:46', '2022-10-26 04:02:46'),
('a19d5808c97c07ede9f16f8a08aa4dfa400fc3361f6461da2420a2140de68e689c33131d21f02855', 4, 3, 'cyberTeen', '[]', 0, '2021-10-21 00:40:12', '2021-10-21 00:40:12', '2022-10-21 06:40:12'),
('a278e5cb023c6a8c844a9c77cfaad10612ce6fa7f8b7d87ef11ae7698d1a49283a75e477046f0724', 5, 3, 'cyberTeen', '[]', 0, '2021-11-10 00:26:16', '2021-11-10 00:26:16', '2022-11-10 06:26:16'),
('a3717fe73db9b08dea821b1547883e14931b40e7844a2da3f4f3d1001c13453b408d2a0c5702f8ad', 1, 3, 'cyberTeen', '[]', 0, '2021-11-24 01:53:13', '2021-11-24 01:53:13', '2022-11-24 07:53:13'),
('a4017426cbdf58f81694af24fd8b5f88f1aacd703389a5db332836b67f44e30b32c67fadecc6be07', 2, 3, 'driver', '[]', 0, '2021-06-07 03:49:45', '2021-06-07 03:49:45', '2022-06-07 09:49:45'),
('a6a65a6368632a193d058c3d1eac134c843f96a78004fb2b8bf227ba00ee4fa7596696e617ea0503', 2, 3, 'driver', '[]', 0, '2021-06-07 03:54:22', '2021-06-07 03:54:22', '2022-06-07 09:54:22'),
('a981efeeabcf41cfe73c1aa5b31d288cff79373e66387b1290262d8f1a81ffa97cbdf297b015ae55', 2, 3, 'driver', '[]', 0, '2021-06-07 03:54:02', '2021-06-07 03:54:02', '2022-06-07 09:54:02'),
('ab9bffa4056a72ebd349918905c82d736267b47f4976a781df7b32340dfcb98d8925f2cfdf49e129', 4, 3, 'cyberTeen', '[]', 0, '2021-10-21 01:21:11', '2021-10-21 01:21:11', '2022-10-21 07:21:11'),
('acff7b032418c2091498c9890f6892a9ebfda7c231bfed566e350cf1bfc4d2c2805fd9294eae865e', 2, 3, 'driver', '[]', 0, '2021-06-27 23:59:43', '2021-06-27 23:59:43', '2022-06-28 05:59:43'),
('af36543ef7759212dfda5c6da6f63bc3ea6c748b4ea25e5a8f11cf86f6abba0970a376d6ce36fc9b', 1, 3, 'passenger', '[]', 0, '2021-10-17 10:42:57', '2021-10-17 10:42:57', '2022-10-17 16:42:57'),
('af74b4662abb3c7dca7f6c5ea74f71f976ed7f3d9326fcdc85ea0fd11dec6eae0ce21ff07b1f06fa', 2, 3, 'driver', '[]', 0, '2021-06-15 23:40:00', '2021-06-15 23:40:00', '2022-06-16 05:40:00'),
('b1659afa7d2d8be126d05d5e41c9412daadb30b9bf5d0a16249e98ea125c5fddff8d79f90cf64ea2', 1, 3, 'passenger', '[]', 0, '2021-06-27 05:46:38', '2021-06-27 05:46:38', '2022-06-27 11:46:38'),
('b2139aa9e1322d195fc84c545a6a951575385ecc20a4aacce1fa7e291c1b9000785bedde5e875e3d', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-05-07 15:59:54', '2021-05-07 15:59:54', '2022-05-07 21:59:54'),
('b616ab0514023d4a0038b5b4edded40d91a254ebe7abea3995caf37a340e2396e78034df920f650f', 2, 3, 'driver', '[]', 0, '2021-06-16 00:58:27', '2021-06-16 00:58:27', '2022-06-16 06:58:27'),
('b9eb286734ee135f805cc5899945fadd973caa892eafb885188b9e49004e2b457adc2e1456e0977f', 3, 3, 'driver', '[]', 0, '2021-06-07 00:28:08', '2021-06-07 00:28:08', '2022-06-07 06:28:08'),
('c13e4159bbf1877cef97f22d44b81da60020f92de65a06e81f0ff6bdde4b4ef1963f6537cf8a0eef', 4, 3, 'cyberTeen', '[]', 0, '2021-10-25 23:19:29', '2021-10-25 23:19:29', '2022-10-26 05:19:29'),
('c18080d34be7b45d9a72487be054723b7ca227a081039cc0bc8fbb9c8c7ed7712d7b8a7242a0356a', 6, 3, 'cyberTeen', '[]', 0, '2021-11-24 01:55:08', '2021-11-24 01:55:08', '2022-11-24 07:55:08'),
('c261aec1ba0895b675327257f263f66bd1edb0a0d476c57ecca6c5efbcf16de41fcebf4642ed8ac5', 1, 3, 'cyberTeen', '[]', 0, '2021-10-26 04:27:20', '2021-10-26 04:27:20', '2022-10-26 10:27:20'),
('c3d3e7c3989fded20be10918ce6c4ddf983b2d39d3178c85ebdeb51dfd13566676206a3688bc7a80', 9, 3, 'cyberTeen', '[]', 0, '2021-10-25 23:25:36', '2021-10-25 23:25:36', '2022-10-26 05:25:36'),
('c3d97393d7a7f3805cbf509c1c2bbcd36cf21dc7f7fd599440a817b5688fd2fccf8691efa60e8e6d', 4, 3, 'cyberTeen', '[]', 0, '2021-11-24 00:53:37', '2021-11-24 00:53:37', '2022-11-24 06:53:37'),
('c40903d6aa7c5aee72c061e01249033d361cd1af255ca8164077c55b0270ae89714ced3a18a9b310', 1, 3, 'cyberTeen', '[]', 0, '2021-11-09 05:30:53', '2021-11-09 05:30:53', '2022-11-09 11:30:53'),
('c5b4526fb2846aa03a255a0e13cb8d5f06a922191d59f617360b830498275148f4314441c76d9292', 1, 3, 'cyberTeen', '[]', 0, '2021-11-13 07:01:24', '2021-11-13 07:01:24', '2022-11-13 13:01:24'),
('c740849d307168a6fc35b625d2509bb80b3aa851a851daee0b845d99b66711f2362eb0cf2e325bbf', 3, 3, 'cyberTeen', '[]', 0, '2022-01-24 21:57:02', '2022-01-24 21:57:02', '2023-01-25 03:57:02'),
('cb2475c0921d196b17c32a03767080dd9c0ba93ce410911a8219b785738178004ae13462aa95d2a7', 2, 3, 'driver', '[]', 0, '2021-06-14 00:08:32', '2021-06-14 00:08:32', '2022-06-14 06:08:32'),
('cba931a20d01a7fa34ed941fa2993f3bf65fc8fd4a6e06c0b0178c6e802ab22f1a992eb87cae0fb4', 2, 3, 'driver', '[]', 0, '2021-06-09 23:45:16', '2021-06-09 23:45:16', '2022-06-10 05:45:16'),
('cc0796e7eb2a23ed468dc89831cf580cf0e549bac191147f47604b674457bdc2ccf4649d2322a808', 6, 3, 'cyberTeen', '[]', 0, '2021-11-24 01:54:35', '2021-11-24 01:54:35', '2022-11-24 07:54:35'),
('cc4be295354fe857abd7b7f1883266e26bfe34914c0ee0e687bef9b9091b20e1288f4d96e0a29764', 2, 3, 'driver', '[]', 0, '2021-06-10 01:09:34', '2021-06-10 01:09:34', '2022-06-10 07:09:34'),
('cd3819ca8be3fdda961b5b0fd7a85073846c084c7f1258802fdc2ea0f001d54707a1b8ef954b6630', 2, 3, 'driver', '[]', 0, '2021-06-10 01:13:16', '2021-06-10 01:13:16', '2022-06-10 07:13:16'),
('ceda1d20662dcd16b311a2b6a169969fe72cdaf2f250bbea24c16eac2d833ff9de267d0c3eaa8302', 2, 3, 'driver', '[]', 0, '2021-06-06 02:03:30', '2021-06-06 02:03:30', '2022-06-06 08:03:30'),
('d689f6b38dada9b6e7de05533fecd6ad1479b0c6499a10b6bb28d8356b2ef429acf4341877a49c29', 4, 3, 'cyberTeen', '[]', 0, '2021-10-20 23:14:42', '2021-10-20 23:14:42', '2022-10-21 05:14:42'),
('e022d3407ecf20726dee7c90e43e08b4b70a5eabd5acaeccfeee6889773af2c109cfc140e6bba679', 1, 3, 'cyberTeen', '[]', 0, '2021-10-18 00:52:52', '2021-10-18 00:52:52', '2022-10-18 06:52:52'),
('e03866ee69fb0f35c30d2ae2b95be5c3d193704cab7dbca2d2bacdde30727b21da2266cef3b91801', 7, 3, 'cyberTeen', '[]', 0, '2021-11-24 01:55:12', '2021-11-24 01:55:12', '2022-11-24 07:55:12'),
('e05b5a1e255f9b92392e4ff2fba08608dba2186da7e90d5a31320524f8c06778c4b522233fa5ed72', 2, 3, 'driver', '[]', 0, '2021-06-09 00:50:12', '2021-06-09 00:50:12', '2022-06-09 06:50:12'),
('e0ec005c5cb8b403ee91946c29555691b08eb11e78b7940ae852581500875f0e182ac87642db719b', 3, 3, 'cyberTeen', '[]', 0, '2021-11-07 22:12:57', '2021-11-07 22:12:57', '2022-11-08 04:12:57'),
('e1c50be84c9201c9e8590687efdeed2e8165c408b70cdcc9fc1662401936ec6fca0aaf4aaddc3035', 2, 3, 'driver', '[]', 0, '2021-06-10 03:57:25', '2021-06-10 03:57:25', '2022-06-10 09:57:25'),
('e690c4561e35b93055ab6e5ae1c5773134b045c0b833d015f60d60f44fe3108cb1bb445e36f09508', 4, 3, 'cyberTeen', '[]', 0, '2021-11-10 00:25:43', '2021-11-10 00:25:43', '2022-11-10 06:25:43'),
('e7f16d5c19511b604c601fe7076680fa9800a7737abffcc6ae68d8f50c2e65342fd4292b61ed66c1', 2, 3, 'driver', '[]', 0, '2021-06-22 23:48:54', '2021-06-22 23:48:54', '2022-06-23 05:48:54'),
('ea682699d857c27264b24e7fb15045b770cc9b3da1170a20ab32f5ce7481daaabec8d0373085c902', 5, 3, 'driver', '[]', 0, '2021-06-07 01:27:54', '2021-06-07 01:27:54', '2022-06-07 07:27:54'),
('ea9f7b243f76925939e15cdce0c73398b8d85d24a520c9ebdbe9dc767df2adb0ea5fd5cb06cff07b', 8, 3, 'cyberTeen', '[]', 0, '2021-10-24 22:08:42', '2021-10-24 22:08:42', '2022-10-25 04:08:42'),
('eaa655cfa4d75f50f5980255b253198986449c03e8eb246d7ae290d77976c67717f3e3bb1521b342', 1, 3, 'passenger', '[]', 0, '2021-06-22 23:52:37', '2021-06-22 23:52:37', '2022-06-23 05:52:37'),
('ed15803bb1abdd30411404e92f457beb657010b7113116e65e9a5dd0a128defb808e6d70151b9a2b', 2, 3, 'driver', '[]', 0, '2021-06-10 01:14:26', '2021-06-10 01:14:26', '2022-06-10 07:14:26'),
('ed4d7c60d3e351c59d6f350be895e2609f84bbc7f807d6f9adcefb79e2e288c09f91be164e887256', 2, 3, 'driver', '[]', 0, '2021-06-10 01:13:46', '2021-06-10 01:13:46', '2022-06-10 07:13:46'),
('f32993d0ca0259ea5b8425c2c22c88921b90f34ab0dd869844bdbb1a5e9a09cf0778654a94fd33bf', 2, 3, 'driver', '[]', 0, '2021-06-10 04:32:14', '2021-06-10 04:32:14', '2022-06-10 10:32:14'),
('f585e6ae95340e77180de66f973b1759860dee40b1973bab566f54a2da5122baa68f4b6fca44eb8f', 1, 3, 'cyberTeen', '[]', 0, '2021-10-18 00:32:11', '2021-10-18 00:32:11', '2022-10-18 06:32:11'),
('f5d02cac4fd07fcd6b47ad0e7fdfff2b91f273debb94ee0d1c58096af8a02c0e2ccea16ae1ed574a', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-05-07 16:01:17', '2021-05-07 16:01:17', '2022-05-07 22:01:17'),
('f7bdaea2e4ec9d0b5f33e2827d9f0762db6a7c5fa9c2d5266a44464c0ae835213412f05020929f1a', 2, 3, 'driver', '[]', 0, '2021-07-07 13:13:00', '2021-07-07 13:13:00', '2022-07-07 19:13:00'),
('f82d270c24bbb3b50c744a6bb6489ec6b378146f4454662827447113bf97cf5354326c847a1bf234', 1, 3, 'cyberTeen', '[]', 0, '2021-10-18 00:51:37', '2021-10-18 00:51:37', '2022-10-18 06:51:37'),
('f85a4edbe9642d45c55f0e92ecc711ca0e9a4e2397834a71a0a21077955aa7fa873e2588d401bf99', 8, 3, 'cyberTeen', '[]', 0, '2021-10-25 03:41:57', '2021-10-25 03:41:57', '2022-10-25 09:41:57'),
('f8beb2c66ac7a8c2b832c674873e98adf40b8b1a743a4c6891ca3b2ed34ccf77939db2bc48f2283f', 12, 3, 'cyberTeen', '[]', 0, '2021-10-25 23:28:22', '2021-10-25 23:28:22', '2022-10-26 05:28:22'),
('fa675d15efcbab1278d691157e4e55d719eb5949fa0928d64f0d666e655220cd7ecff685238f1d9f', 2, 3, 'driver', '[]', 0, '2021-06-10 01:21:12', '2021-06-10 01:21:12', '2022-06-10 07:21:12'),
('fa8c8f6b87ee9bf31ca71f06657d11a1f31d3e84ed167673f70ac4caf36bab987c5d01af2b160711', 4, 3, 'cyberTeen', '[]', 0, '2021-11-10 00:24:13', '2021-11-10 00:24:13', '2022-11-10 06:24:13'),
('fb6c106d609c3f67171da7c298837538df2dd71eb753c4b40655ae71a8d977e0077545b2162a4702', 8, 3, 'cyberTeen', '[]', 0, '2021-10-24 22:32:59', '2021-10-24 22:32:59', '2022-10-25 04:32:59'),
('fcd85b8cbf684482a150776a1ccb26e4904b0f53453c658aa0edb3f8c1c73dc859b91dabbf75ba3c', 4, 3, 'driver', '[]', 0, '2021-06-07 00:37:30', '2021-06-07 00:37:30', '2022-06-07 06:37:30'),
('ffc9ee722e74f2f1f6e8871a0c08a11485b3a88fbcd256056a4345834ba8fbf1db5e93de80271cb9', 1, 3, 'passenger', '[]', 0, '2021-10-17 09:45:29', '2021-10-17 09:45:29', '2022-10-17 15:45:29');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '5QLsIat9VsnE1jec6VqPypW4U0RCOADBDa0com8x', NULL, 'http://localhost', 1, 0, 0, '2021-03-24 02:23:29', '2021-03-24 02:23:29'),
(2, NULL, 'Laravel Password Grant Client', 'pMmZoQ000WyXGFNVhfLGDwiN47bs3S7BF25kx5qP', 'users', 'http://localhost', 0, 1, 0, '2021-03-24 02:23:30', '2021-03-24 02:23:30'),
(3, NULL, 'Laravel Personal Access Client', 'ayudOU4kaGX4Bc5QjmtQuzRfKdxVgmLLd68unw2X', NULL, 'http://localhost', 1, 0, 0, '2021-03-25 16:56:24', '2021-03-25 16:56:24'),
(4, NULL, 'CMS-SCIBD Personal Access Client', 'CKKl09DiGKogCgtCy21I5O3VTdb0H6PrMoft3KOe', NULL, 'http://localhost', 1, 0, 0, '2022-01-24 21:56:30', '2022-01-24 21:56:30'),
(5, NULL, 'CMS-SCIBD Password Grant Client', 'fwGXqOznuPIrbPdrkcO3Y0WwjV1W5J1HQPYOO2JC', 'users', 'http://localhost', 0, 1, 0, '2022-01-24 21:56:30', '2022-01-24 21:56:30'),
(6, NULL, 'Toolkit Personal Access Client', 'dqvsKmgU2YCkCfx7Pe6MVDaaxVxUkyyblqUgErpr', NULL, 'http://localhost', 1, 0, 0, '2022-01-31 22:20:39', '2022-01-31 22:20:39'),
(7, NULL, 'Toolkit Password Grant Client', '6ZtSG95BZtQs3s9hdTavg7e4ostTg6I2u9NHAvmI', 'users', 'http://localhost', 0, 1, 0, '2022-01-31 22:20:39', '2022-01-31 22:20:39'),
(8, NULL, 'Toolkit Personal Access Client', 'Zd1bH2uQnwH23iY2qkq69uJCibfrqtcmHDm9eFsi', NULL, 'http://localhost', 1, 0, 0, '2022-02-02 22:53:06', '2022-02-02 22:53:06'),
(9, NULL, 'Toolkit Password Grant Client', 'aC0g34dY98gAdLq9Cd1ERgXBuMhOeN4iUzYo8Iml', 'users', 'http://localhost', 0, 1, 0, '2022-02-02 22:53:06', '2022-02-02 22:53:06'),
(10, NULL, 'Toolkit Personal Access Client', '9rejmmmaeBsCYlQaKfpvdACFXQ2nhAgUIwyo46G2', NULL, 'http://localhost', 1, 0, 0, '2022-03-07 08:03:33', '2022-03-07 08:03:33'),
(11, NULL, 'Toolkit Password Grant Client', 'FPQsSTP04XogrhFJY958ExNTJv04rXvjnJe7ZtKk', 'users', 'http://localhost', 0, 1, 0, '2022-03-07 08:03:33', '2022-03-07 08:03:33'),
(12, NULL, 'Toolkit Personal Access Client', 'J60YfYtwrxsLviurFqkr7EzRmiuAbiLQWgz5ZWif', NULL, 'http://localhost', 1, 0, 0, '2022-03-07 10:43:48', '2022-03-07 10:43:48'),
(13, NULL, 'Toolkit Password Grant Client', 'EYkRy23aqsddOwObEYBryBPMSpHXStuKLbo0kxmq', 'users', 'http://localhost', 0, 1, 0, '2022-03-07 10:43:48', '2022-03-07 10:43:48'),
(14, NULL, 'Toolkit Personal Access Client', '5piovELCdeFdC9lTOLgIQRmMZWDX5arBozT90QMA', NULL, 'http://localhost', 1, 0, 0, '2023-01-26 01:00:53', '2023-01-26 01:00:53'),
(15, NULL, 'Toolkit Password Grant Client', '7eZcq8yWSPD8RTxByySgNkxV701v1hIvA6o0tzrO', 'users', 'http://localhost', 0, 1, 0, '2023-01-26 01:00:53', '2023-01-26 01:00:53'),
(16, NULL, 'Toolkit Personal Access Client', 'vzFgev09N3J0reYidP18Zohquo1DPrJ5xTlBkrHc', NULL, 'http://localhost', 1, 0, 0, '2023-01-26 01:07:21', '2023-01-26 01:07:21'),
(17, NULL, 'Toolkit Password Grant Client', '26t3QkOVgXC2NG4x66SMDhFyh1IZ3bdbXG7bSO0h', 'users', 'http://localhost', 0, 1, 0, '2023-01-26 01:07:21', '2023-01-26 01:07:21'),
(18, NULL, 'Toolkit Personal Access Client', 'IUL7Q1lIaqn3LjdJzJXuWvkti34QLVa4cuRxwh11', NULL, 'http://localhost', 1, 0, 0, '2023-01-26 01:17:55', '2023-01-26 01:17:55'),
(19, NULL, 'Toolkit Password Grant Client', 'EtFBv97nNFbwohPPUTAdUGEdzxRTxev9rppWMQ5V', 'users', 'http://localhost', 0, 1, 0, '2023-01-26 01:17:55', '2023-01-26 01:17:55');

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
(1, 1, '2021-05-07 15:33:10', '2021-05-07 15:33:10'),
(2, 2, '2021-05-07 15:34:33', '2021-05-07 15:34:33'),
(3, 4, '2021-05-07 15:51:38', '2021-05-07 15:51:38'),
(4, 4, '2022-01-24 21:56:30', '2022-01-24 21:56:30'),
(5, 6, '2022-01-31 22:20:39', '2022-01-31 22:20:39'),
(6, 8, '2022-02-02 22:53:06', '2022-02-02 22:53:06'),
(7, 10, '2022-03-07 08:03:33', '2022-03-07 08:03:33'),
(8, 12, '2022-03-07 10:43:48', '2022-03-07 10:43:48'),
(9, 14, '2023-01-26 01:00:53', '2023-01-26 01:00:53'),
(10, 16, '2023-01-26 01:07:21', '2023-01-26 01:07:21'),
(11, 18, '2023-01-26 01:17:55', '2023-01-26 01:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `inline_css` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `is_name` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `category_id`, `description`, `inline_css`, `meta_title`, `meta_keyword`, `meta_description`, `order_by`, `language`, `is_name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', NULL, '<div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-sm-12\"><p><img class=\"w-100\" src=\"/storage/photos/1/home/ToolkitDraftA.webp\" alt=\"home\" width=\"100%\" height=\"100%\" /></p></div><div class=\"col-lg-7 col-sm-12\"><p>Save the Children defines inclusive education as education that enables all children to learn<br />together with support for their individual needs. Inclusive education seeks to identify and<br />address barriers and discrimination that prevent some children from being supported to<br />learn alongside their peers. The most common lenses of discrimination impacting students<br />in education include disability, ethnicity, language, gender, sexual orientation, refugee status,<br />socio-economic and cultural status, and poverty. Some of the resources featured in this Toolkit<br />focus on a specific factor of exclusion, while others provide guidance on discrimination and<br />barriers to learning more generally. Practitioners should use the tools that are most relevant to<br />their context while keeping in mind that many children are impacted by intersecting barriers<br />to inclusion. For example, a young boy with a physical disability from a majority language<br />group will face different barriers to learning than a young girl from a minority language<br />group. Children have overlapping identities. It is not possible to fully address one type of<br />discrimination</p></div><div class=\"col-lg-9 col-sm-12\"><p><img class=\"w-100\" src=\"/storage/photos/1/home/CH1544395-_2_.webp\" alt=\"home2\" width=\"100%\" height=\"100%\" /></p><p style=\"text-align: right;\">&nbsp;</p><p style=\"text-align: right;\"><em>The ongoing COVID-19 pandemic has exacerbated challenges</em></p><p style=\"text-align: right;\"><em> for those most marginalized and excluded children.</em></p></div><div class=\"col-lg-7 col-sm-12\"><p>Save the Children Italy and Save the Children Sweden, thanks to the support of the IKEA Foundation and through various institutional and private funds, have worked to further Inclusion in Education in recent years through several initiatives. With significant contribution from SC network colleagues, country offices, and Technical Working Groups, the development of this Inclusive Education Resources and Toolkit builds on Save the Children&rsquo;s <a href=\"https://resourcecentre.savethechildren.net/document/inclusive-education-what-why-and-how-handbook-program-implementers/\">Inclusive Education: What, Why, and How. A Handbook for Program Implementers</a> and <a href=\"https://resourcecentre.savethechildren.net/document/quality-learning-framework/\">The Quality Learning Framework</a> to operationalize guidance for excluded girls and boys.</p></div></div><div class=\"container1\"><div class=\"home-card v-card v-sheet v-sheet--outlined theme--light elevation-3\" style=\"background-color: #f6fbff; border-color: #f6fbff;\"><div class=\"row\"><div class=\"col-lg-6 col-12\"><div class=\"row logo justify-center mt-4 pt-4\"><div class=\"pr-0 col-lg-4 col-4\"><a href=\"#\"><img class=\"mt-10 w-100 br-5\" style=\"float: right;\" src=\"/frontend/images/card1.png\" alt=\"card1\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"ma-1 w-100 br-5\" src=\"/frontend/images/card2.png\" alt=\"card2\" width=\"100%\" height=\"100%\" /></a> <a href=\"#\"><img class=\"ma-1 w-100 mt-3 br-5\" src=\"/frontend/images/card3.png\" alt=\"card3\" width=\"100%\" height=\"100%\" /></a></div><div class=\"pl-2 col-lg-4 col-4\"><a href=\"#\"><img class=\"w-100 mt-10 br-5\" style=\"float: left;\" src=\"/frontend/images/card4.png\" alt=\"card4\" width=\"100%\" height=\"100%\" /></a></div></div></div><div class=\"col-lg-6 col-12\"><h2><strong>&nbsp; &nbsp;WHAT IS THE TOOLKIT FOR?</strong></h2><p>The Inclusive Education Resources and Toolkit is a resource and reference for all SC staff working in education programming to mainstream inclusion in their work. The Toolkit provides recommendations and resources to strengthen inclusive education programming to enable Save the Children to achieve greater successes in the provision of high-quality ECCD and basic education as promoted by the Quality Learning Framework2, also in emergency and humanitarian context. The toolkit is based on a comprehensive analysis of key gaps in existing guidance shared by practitioners globally as well as a review of international standards and resources in the field and innovative and adaptive models of inclusive education programming already in use by Save the Children and other organizations (INEE, Plan International, UNESCO, USAID, and others).</p></div></div><div class=\"row\"><div class=\"col-lg-6 col-12 pt-4\"><h2><strong>&nbsp; &nbsp;WHO IS IT FOR?</strong></h2><p>This toolkit provides a framework and practical tools primarily aimed at education practitioners who are responsible for the design, implementation, and management of SC programs involving an education component. These resources may be used in the phases of program design, baseline and needs assessment, and evaluations, as well as for capacity building activities. Also, the toolkit is primarily for formal education system programming, but the tools and resources may be adapted to suit accelerated or non-formal education programs.</p></div><div class=\"col-lg-6 col-12\"><div class=\"row logo justify-center\"><div class=\"pr-0 col-lg-4 col-4\"><a href=\"#\"><img class=\"mt-10 w-100 br-5\" style=\"float: right;\" src=\"/frontend/images/card0.png\" alt=\"card5\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"ma-1 w-100 br-5\" src=\"/frontend/images/Hicon7.png\" alt=\"card6\" width=\"100%\" height=\"100%\" /></a> <a href=\"#\"><img class=\"ma-1 w-100 mt-3 br-5\" src=\"/frontend/images/Hicon8.png\" alt=\"card7\" width=\"100%\" height=\"100%\" /></a></div><div class=\"pl-2 col-lg-4 col-4\"><a href=\"#\"><img class=\"w-100 mt-10 br-5\" style=\"float: left;\" src=\"/frontend/images/Hicon6.png\" alt=\"card8\" width=\"100%\" height=\"100%\" /></a></div></div></div></div></div></div><div class=\"container1\"><div class=\"row\"><div class=\"col-lg-6 col-12\"><h2><strong>HOW TO USE THE TOOLKIT</strong></h2><p>&nbsp;</p><p>The Inclusive Education Resources and Toolkit composed of seven different chapters, covering the five SC Quality Learning Framework (QLF) foundations: Emotional and psychosocial protection, Physical protection, Teaching and learning, Parents and community, School leadership and management, plus Access, and Policy &amp; Systems. Each section is conceived as a stand-alone set of resources from which practitioners can draw on according to Inclusive Education Programming needs. Users may not need to read the entire toolkit, but only pick and use the components identified to fill the gaps in their specific contexts.</p><p>Practitioners are strongly encouraged to use an intersectional approach to this toolkit&rsquo;s content. Exclusion from quality learning is rarely the result of just one factor of exclusion or discrimination. More often children and their family and communities will face several exclusionary factors at the same time. When approaching Inclusive Education practitioners should keep in mind the co-existence of multiple exclusion factors which need to be addressed through application of different strategies and tools at the same time.</p></div><div class=\"col-lg-6 col-12\"><div class=\"row justify-center mt-4\"><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card1.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card2.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card3.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card0.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card4.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/Hicon6.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/Hicon7.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/Hicon8.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><img class=\"w-100\" src=\"/storage/photos/1/icon9.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></div></div></div></div></div><div><div class=\"row justify-center\"><div class=\"col-lg-12 col-12\"><strong>Each chapter is composed of the following sections:&nbsp;</strong></div><ul style=\"list-style-type: square;\"><li>A What if&hellip;? section proposing key tools or methodologies for each identified challenge or obstacle to inclusive education programming and implementation. It provides a short description of each tool with intended users and beneficiaries and highlights which SC indicator(s) should be employed to assess its use;</li></ul><p>&nbsp;</p><ul style=\"list-style-type: square;\"><li>An Intersectionality Tips section that focuses on the overlapping factors of exclusion and suggests which tools may be used to face multiple challenges simultaneously or to highlight specific considerations in planning and delivering IE interventions;</li></ul><p>&nbsp;</p><ul style=\"list-style-type: square;\"><li>A summary of the Relevant Indicators (from the SC Italy Menu of Indicators, or newly developed ones, aligned with GRF and CA indicators whenever possible) related to the corresponding domain. Please note that whenever tools are adequate for secondary school, Relevant Indicators referring to primary school and age range can be adapted to secondary as well;</li></ul><p>&nbsp;</p><ul><li>A Further Readings section, providing additional resources for users including case studies, theoretical frameworks, ...)</li></ul><p>&nbsp;</p><p>The Inclusive Education Resources and Toolkit is a living document that reflects changing SC policy and strategies on Inclusive Education. It will evolve over time and be updated and reviewed regularly by SC.</p></div><div class=\"row justify-center\"><div class=\"col-lg-8 col-12\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/world.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div></div><div class=\"row justify-center\"><div class=\"col-lg-8 col-12\"><p class=\"text\">SC works in over 117 countries.This Toolkit cannot reflect the specificity of each local context.Practitioners are thereforen advised to adapt contents and tools to local contexts as wellas reflect existing national guidelines and education policies to guarantee the effectiveness of local Inclusive Education programming.</p></div></div></div></div>', 'img { width: 100%; /* or max-width: 100%; */ height: auto;}.br-5 {border-radius: 5px;}', NULL, NULL, NULL, 1, 'en', 1, 1, 1, 1, '2022-01-31 23:53:07', '2023-01-28 22:20:31'),
(2, 'الصفحة الرئيسية', 'الصفح-الرئس', NULL, '<div class=\"container\"><div><div class=\"row\"><div class=\"col-lg-6 col-12\"><h1>WHAT IS THE TOOLKIT?</h1><br /><p>The Inclusive Education Resources and Toolkit is a resource and reference for all SC staff working in education programming to mainstream inclusion in their work. The Toolkit provides recommendations and resources to strengthen inclusive education programming to enable Save the Children to achieve greater successes in the provision of high-quality ECCD and basic education as promoted by the Quality Learning Framework2, also in emergency and humanitarian context. The toolkit is based on a comprehensive analysis of key gaps in existing guidance shared by practitioners globally as well as a review of international standards and resources in the field and innovative and adaptive models of inclusive education programming already in use by Save the Children and other organizations (INEE, Plan International, UNESCO, USAID, and others).</p><button class=\"btnsubmit v-btn v-btn--outlined theme--light v-size--default\" type=\"button\"><span class=\"v-btn__content\"><span>BUTTON</span></span></button></div><div class=\"col-lg-6 col-12\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/toolkit1.png\" width=\"100%\" height=\"100%\" /></a></div></div></div><div class=\"container1\"><div class=\"row\"><div class=\"col-lg-6 col-12\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/toolkit1.png\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-6 col-12\"><h1>WHAT IS THE TOOLKIT?</h1><br /><p>The Inclusive Education Resources and Toolkit is a resource and reference for all SC staff working in education programming to mainstream inclusion in their work. The Toolkit provides recommendations and resources to strengthen inclusive education programming to enable Save the Children to achieve greater successes in the provision of high-quality ECCD and basic education as promoted by the Quality Learning Framework2, also in emergency and humanitarian context. The toolkit is based on a comprehensive analysis of key gaps in existing guidance shared by practitioners globally as well as a review of international standards and resources in the field and innovative and adaptive models of inclusive education programming already in use by Save the Children and other organizations (INEE, Plan International, UNESCO, USAID, and others).</p><button class=\"btnsubmit v-btn v-btn--outlined theme--light v-size--default\" type=\"button\"><span class=\"v-btn__content\"><span>BUTTON</span></span></button></div></div></div><div class=\"container1\"><div class=\"row justify-center\"><div class=\"col-lg-8 col-12\"><h1 class=\"text\">WHAT IS THE TOOLKIT?</h1><br /><p class=\"text\">The Inclusive Education Resources and Toolkit composed of seven different chapters, covering the five SC Quality Learning Framework (QLF) foundations: Emotional and psychosocial protection, Physical protection, Teaching and learning, Parents and community, School leadership and management, plus Access, and Policy &amp; Systems.</p></div></div></div><div class=\"container1\"><div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-2\" style=\"background-color: #f6fbff; border-color: #f6fbff;\"><div class=\"row\"><div class=\"row logo justify-center\"><div class=\"col col-2\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card1.png\" width=\"100%\" height=\"70px\" /></a></div><div class=\"col-lg-2 col-6\"><div class=\"row\"><div class=\"row pa-2\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card2.png\" width=\"100%\" height=\"70px\" /></a></div><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card3.png\" width=\"100%\" height=\"70px\" /></a></div></div><div class=\"col col-2\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card4.png\" width=\"100%\" height=\"70px\" /></a></div></div><div class=\"col-lg-4 col-12\"><br /><p>Each section is conceived as a stand-alone set of resources from which practitioners can draw on according to Inclusive Education Programming needs. Users may not need to read the entire toolkit, but only pick and use the components identified to fill the gaps in their specific contexts</p></div></div><div class=\"row carddesign\"><div class=\"col-lg-4 col-12\"><br /><p>Practitioners are strongly encouraged to use an intersectional approach to this toolkit&rsquo;s content. Exclusion from quality learning is rarely the result of just one factor of exclusion or discrimination. More often children and their family and communities will face several exclusionary factors at the same time. When approaching Inclusive Education practitioners should keep in mind the co-existence of multiple exclusion factors which need to be addressed through application of different strategies and tools at the same time.</p></div><div class=\"row logo justify-center\"><div class=\"col col-2\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card1.png\" width=\"100%\" height=\"70px\" /></a></div><div class=\"col-lg-2 col-4\"><div class=\"row\"><div class=\"row pa-2\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card2.png\" width=\"100%\" height=\"70px\" /></a></div><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card3.png\" width=\"100%\" height=\"70px\" /></a></div></div><div class=\"col col-2\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card4.png\" width=\"100%\" height=\"70px\" /></a></div></div></div></div></div><div class=\"container1\"><div class=\"row\"><div class=\"col-lg-6 col-12\"><h1 style=\"text-align: right;\">كيفية استخدام مجموعة الأدوات</h1><br /><p style=\"text-align: right;\">تتكون مجموعة أدوات وموارد التعليم الشامل من سبعة فصول مختلفة ، تغطي الأسس الخمسة لإطار عمل التعلم الجيد (QLF): الحماية العاطفية والنفسية الاجتماعية ، والحماية المادية ، والتعليم والتعلم ، والآباء والمجتمع ، والقيادة المدرسية وإدارتها ، بالإضافة إلى الوصول والسياسة و الأنظمة: يُنظر إلى كل قسم على أنه مجموعة قائمة بذاتها من الموارد التي يمكن للممارسين الاستفادة منها وفقًا لاحتياجات برمجة التعليم الشامل. قد لا يحتاج المستخدمون إلى قراءة مجموعة الأدوات بأكملها ، ولكن فقط اختيار المكونات المحددة واستخدامها لملء الفجوات في سياقاتهم المحددة. يتم تشجيع الممارسين بشدة على استخدام نهج متعدد الجوانب لمحتوى مجموعة الأدوات هذه. نادرًا ما يكون الاستبعاد من التعلم الجيد نتيجة عامل واحد فقط من عوامل الإقصاء أو التمييز. في كثير من الأحيان سيواجه الأطفال وأسرهم ومجتمعاتهم عدة عوامل استبعاد في نفس الوقت. عند الاقتراب من التعليم الشامل ، يجب على ممارسي التعليم الشامل أن يضعوا في اعتبارهم التعايش بين عوامل الاستبعاد المتعددة التي يجب معالجتها من خلال تطبيق استراتيجيات وأدوات مختلفة في نفس الوقت.</p></div><div class=\"col-lg-6 col-12\"><div class=\"row justify-center\"><div class=\"col-lg-4 col-4\"><div class=\"v-image v-responsive mr-3 theme--light\" style=\"height: 100%; width: 100%;\" role=\"img\" aria-label=\"Avatar\"><div class=\"v-image__image v-image__image--preload v-image__image--cover\" style=\"background-position: center center;\">&nbsp;</div><div class=\"v-responsive__content\"><img class=\"img-fluid\" src=\"/storage/photos/1/card3.png\" alt=\"\" /></div></div></div><div class=\"col-lg-4 col-4\"><div class=\"v-image v-responsive mr-3 theme--light\" style=\"height: 100%; width: 100%;\" role=\"img\" aria-label=\"Avatar\"><div class=\"v-image__image v-image__image--preload v-image__image--cover\" style=\"background-position: center center;\">&nbsp;</div><div class=\"v-responsive__content\"><img class=\"img-fluid\" src=\"/storage/photos/1/card3.png\" alt=\"\" /></div></div></div><div class=\"col-lg-4 col-4\"><div class=\"v-image v-responsive mr-3 theme--light\" style=\"height: 100%; width: 100%;\" role=\"img\" aria-label=\"Avatar\"><div class=\"v-image__image v-image__image--preload v-image__image--cover\" style=\"background-position: center center;\">&nbsp;</div><div class=\"v-responsive__content\"><img class=\"img-fluid\" src=\"/storage/photos/1/card3.png\" alt=\"\" /></div></div></div><div class=\"col-lg-4 col-4\"><div class=\"v-image v-responsive mr-3 theme--light\" style=\"height: 100%; width: 100%;\" role=\"img\" aria-label=\"Avatar\"><div class=\"v-image__image v-image__image--preload v-image__image--cover\" style=\"background-position: center center;\">&nbsp;</div><div class=\"v-responsive__content\"><img class=\"img-fluid\" src=\"/storage/photos/1/card3.png\" alt=\"\" /></div></div></div><div class=\"col-lg-4 col-4\"><div class=\"v-image v-responsive mr-3 theme--light\" style=\"height: 100%; width: 100%;\" role=\"img\" aria-label=\"Avatar\"><div class=\"v-image__image v-image__image--preload v-image__image--cover\" style=\"background-position: center center;\">&nbsp;</div><div class=\"v-responsive__content\"><img class=\"img-fluid\" src=\"/storage/photos/1/card3.png\" alt=\"\" /></div></div></div><div class=\"col-lg-4 col-4\"><div class=\"v-image v-responsive mr-3 theme--light\" style=\"height: 100%; width: 100%;\" role=\"img\" aria-label=\"Avatar\"><div class=\"v-image__image v-image__image--preload v-image__image--cover\" style=\"background-position: center center;\">&nbsp;</div><div class=\"v-responsive__content\"><img class=\"img-fluid\" src=\"/storage/photos/1/card3.png\" alt=\"\" /></div></div></div><div class=\"col-lg-4 col-4\"><div class=\"v-image v-responsive mr-3 theme--light\" style=\"height: 100%; width: 100%;\" role=\"img\" aria-label=\"Avatar\"><div class=\"v-image__image v-image__image--preload v-image__image--cover\" style=\"background-position: center center;\">&nbsp;</div><div class=\"v-responsive__content\"><img class=\"img-fluid\" src=\"/storage/photos/1/card3.png\" alt=\"\" /></div></div></div><div class=\"col-lg-4 col-4\"><div class=\"v-image v-responsive mr-3 theme--light\" style=\"height: 100%; width: 100%;\" role=\"img\" aria-label=\"Avatar\"><div class=\"v-image__image v-image__image--preload v-image__image--cover\" style=\"background-position: center center;\">&nbsp;</div><div class=\"v-responsive__content\"><img class=\"img-fluid\" src=\"/storage/photos/1/card3.png\" alt=\"\" /></div></div></div></div></div></div></div><div><div class=\"row justify-center\"><div class=\"col-lg-6 col-12\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/world.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div></div><div class=\"row justify-center\"><div class=\"col-lg-8 col-12\"><p class=\"text\">SC works in over 117 countries.This Toolkit cannot reflect the specificity of each local context.Practitioners are thereforen advised to adapt contents and tools to local contexts as wellas reflect existing national guidelines and education policies to guarantee the effectiveness of local Inclusive Education programming.</p></div></div></div></div>', '', NULL, NULL, NULL, NULL, 'ar', 1, 1, 1, 1, '2022-02-01 00:10:23', '2022-02-01 00:10:23'),
(4, 'Help', 'help', NULL, '<div class=\"\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-12\"><h5><strong>ACRONYMS</strong></h5></div></div></div></div><div class=\"\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-2 col-sm-2 col-2\"><p>BC IE</p><p>CA</p><p>CASEL</p><p>CBO</p><p>CBR</p><p>CCSA</p><p>CRC</p><p>CSC</p><p>DPO</p><p>ECCD</p><p>ECD</p><p>EMIS</p><p>GEC</p><p>ICT</p><p>IDELA</p><p>IE</p><p>IEH</p><p>IEP</p><p>ILFE</p><p>INGO</p><p>IPC</p><p>IRI</p><p>LB-CA SC</p><p>LMIC</p><p>MEAL</p><p>MHM</p><p>MHPSS</p><p>NB-CA SC</p><p>NGO</p><p>NPI</p><p>OOSC</p><p>PET</p><p>PM</p><p>PTA</p><p>QLF</p><p>QTF</p><p>RCCE</p><p>RED/EO</p><p>SC, SC, STC</p><p>SDGs</p><p>SGM</p><p>SEL</p><p>SEND</p><p>SMC</p><p>SNAP</p><p>UDL</p><p>UNESCO</p><p>WASH</p></div><div class=\"col-md-10 col-sm-10 col-10\"><p>British Council Inclusive Education&nbsp;</p><p>Common Approach&nbsp;</p><p>The Collaborative for Academic, Social, and Emotional Learning</p><p>Community Based Organization&nbsp;</p><p>Community Based Rehabilitation</p><p>Child-Centered Social Accountability</p><p>Convention on the Rights of the Child</p><p>Community Score Card</p><p>Disabled Persons Organization</p><p>Early Childhood Care and Development&nbsp;</p><p>Early Childhood Development</p><p>Education Management Information System</p><p>Girls&rsquo; Education Challenge</p><p>Information and Communication Technologies</p><p>International Development and Early Learning Assessment</p><p>Inclusive Education</p><p>Inclusive Education Handbook</p><p>Individual Education Plan</p><p>Inclusive Learning-Friendly Environment</p><p>International Non-Governmental Organization</p><p>Infection Prevention Control</p><p>Interactive Radio and Audio Instruction</p><p>Literacy Boost Common Approach</p><p>Low- and Middle-Income Countries</p><p>Monitoring, Evaluation, Accountability, and Learning</p><p>Menstrual Hygiene Management</p><p>Mental Health and Psychosocial Support</p><p>Numeracy Boost Common Approach</p><p>Non-Governmental Organization</p><p>Non-Pharmaceutical Interventions</p><p>Out-Of-School children</p><p>Pedagogical Evaluation Teams</p><p>Policymaker</p><p>Parent Teacher Association</p><p>Quality Learning Framework</p><p>Quality Teaching Framework</p><p>Risk Communication and Community Engagement</p><p>Regional Education Directories/Education Offices</p><p>Save the Children</p><p>Sustainable Development Goals</p><p>Sexual and Gender Minorities</p><p>Social and Emotional Learning</p><p>Special Educational Needs and Disability</p><p>Student Management Committee</p><p>Special Needs Education Pack</p><p>Universal Design for Learning</p><p>United Nations Educational Scientific and Cultural Organization</p><p>Water Sanitation and Hygiene</p></div></div></div><div class=\"container\"><div class=\"row\"><div class=\"col-md-12\"><button class=\"btn btn-danger show-more\" type=\"button\">Read More</button></div></div></div></div><p>&nbsp;</p><div class=\"container\"><div class=\"row\"><div class=\"col-md-12\"><h5><strong>Legend: </strong></h5><p>The following icons are used throughout the toolkit to identify each tool&rsquo;s audience and intended beneficiary:</p><p>&nbsp;</p><div class=\"\"><div class=\"mt-2 v-card v-sheet v-sheet--outlined theme--light elevation-0\" style=\"background-color: #ececec; border-color: #ececec;\"><div class=\"container\"><div class=\"row justify-center\"><div class=\"tool-card-text col-md-12 col-lg-12 col\"><h3>Tool Users</h3></div><div class=\"col-md-12 col-lg-12 col\"><div class=\"row\"><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><img src=\"/storage/photos/1/tool/mHJ6QFrRS79CMj4xNR15tT4HgZayUhlK6CMQMhGF.png\" alt=\"\" /><br /><p style=\"line-height: 1.5em; height: 3em; overflow: hidden;\" align=\"center\">Community Worker</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"26\"><img src=\"/storage/photos/1/tool/1z2bvBpMttHrkTf47U85Hzk8VPCvnr4oIffzvs7p.png\" /></label><p style=\"line-height: 1.5em; height: 3em; overflow: hidden;\" align=\"center\">Trainer</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"27\"><img src=\"/storage/photos/1/tool/6A6qk6d1Ngapt68RRwMN3r7jULsjHN72lj1c7Zpl.png\" /></label><p style=\"line-height: 1.5em; height: 3em; overflow: hidden;\" align=\"center\">Policy Maker</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"28\"><img src=\"/storage/photos/1/tool/mCuifeX93bAE1wN6KG3LNh5NFKggnKD8qB8K2PhT.png\" /></label><p style=\"line-height: 1.5em; height: 3em; overflow: hidden;\" align=\"center\">Teacher Trainer</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"29\"><img src=\"/storage/photos/1/tool/giwP6fTEBqZtd0KrhqzVKfDzYrxRuaYhTf91084t.png\" /></label><p style=\"line-height: 1.5em; height: 3em; overflow: hidden;\" align=\"center\">Project Manager</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"30\"><img src=\"/storage/photos/1/tool/kLkuBUtZiA3aqEC2zaizjbA2pYrZJmfUteAf2nW7.png\" /></label><p style=\"line-height: 1.5em; height: 3em; overflow: hidden;\" align=\"center\">Government, Country Directors</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"31\"><img src=\"/storage/photos/1/tool/in4nAMGOXDfUZijyZqCoy7XtREkJAO7b54zGMSEt.png\" /></label><p style=\"line-height: 1.5em; height: 3em; overflow: hidden;\" align=\"center\">SC Field Staff</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"32\"><img src=\"/storage/photos/1/tool/1qVapvSQf7kuP1LDJVZJgdgSKGIXtD076A18DkTn.png\" /></label><p style=\"line-height: 1.5em; height: 3em; overflow: hidden;\" align=\"center\">NGO, INGO</p></div></div></div></div></div></div><div class=\"mt-2 v-card v-sheet v-sheet--outlined theme--light elevation-0\" style=\"background-color: #ececec; border-color: #ececec;\"><div class=\"container\"><div class=\"row justify-center\"><div class=\"tool-card-text col-md-12 col-lg-12 col\"><h3>Tool Beneficiaries</h3></div><div class=\"col-md-12 col-lg-12 col\"><div class=\"row\"><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"12\"><img src=\"/storage/photos/1/tool/J9q5fwgNkodY4DB2AmSsomuZerBVi8OcIDUSNE5N.png\" /></label><p style=\"line-height: 1.5em; height: 3em; overflow: hidden;\" align=\"center\">Community</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"13\"><img src=\"/storage/photos/1/tool/4nlkWZ8DSxaCi94LGWOlw0zt0TRO5iJKrqv4SH8o.png\" /></label><p style=\"line-height: 1.5em; height: 3em; overflow: hidden;\" align=\"center\">Caregivers</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"14\"><img src=\"/storage/photos/1/tool/eCasiIzYNxmnc8pncGkWwlsxh1j2lmo40l56cWCD.png\" /></label><p style=\"line-height: 1.5em; height: 3em; overflow: hidden;\" align=\"center\">Community Based Services</p></div></div></div></div></div></div><div class=\"mt-2 v-card v-sheet v-sheet--outlined theme--light elevation-0\" style=\"background-color: #ececec; border-color: #ececec;\"><div class=\"container\"><div class=\"row justify-center\"><div class=\"tool-card-text col-md-12 col-lg-12 col\"><h3>Both users and beneficiaries</h3></div><div class=\"col-md-12 col-lg-12 col\"><div class=\"row\"><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"16\"><img src=\"/storage/photos/1/tool/149kes9OQkzVVGOJovcVUb2ksK8B5MQgxNWPKo3M.png\" /></label><p align=\"center\">Children attending ECCD centers</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"17\"><img src=\"/storage/photos/1/tool/jLceNZWK70FbIugDi7sr67RNZ95pCKHqBe8MHA07.png\" /></label><p align=\"center\">All Educators</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"18\"><img src=\"/storage/photos/1/tool/q3EgMyaBw0LHpRAHjZits4lR4biwCCVinZZgREth.png\" /></label><p align=\"center\">School Head (ECCD centers and schools)</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"19\"><img src=\"/storage/photos/1/tool/eyxkgDrjfvSkFeZfclnNdy3jJfDNr9fa1o69AuqL.png\" /></label><p align=\"center\">Parents &amp; Caregivers</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"20\"><img src=\"/storage/photos/1/tool/D5evum7NgGN6brzWgcOVNUE8m56mQkLUgbRu0otO.png\" /></label><p align=\"center\">School Management</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"21\"><img src=\"/storage/photos/1/tool/9BL7PWbj0lCfVfxepxNy9yB5YW5396t7VG0FByrl.png\" /></label><p align=\"center\">Secondary Teacher</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"22\"><img src=\"/storage/photos/1/tool/fphKZgFGHy1VD0BU25k9vHP9LpSMSl6Ny9yo8DDD.png\" /></label><p align=\"center\">Secondary Student</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"23\"><img src=\"/storage/photos/1/tool/Z3PcaWQHZBARQK6poMKFENQvLLukQLHV6z2wrf4M.png\" /></label><p align=\"center\">Primary Teacher</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"24\"><img src=\"/storage/photos/1/tool/589MdOi1WGjP83a6FozDye6i8XmEbHr5I1CeEUxJ.png\" /></label><p align=\"center\">Primary Student</p></div><div class=\"filter-img mar-4 pt-0 pb-0 col\" style=\"text-align: center;\"><label for=\"25\"><img src=\"/storage/photos/1/tool/fG8sJRQXBwoY5FVm89JuhdlVmSdv5srFw6lRffqQ.png\" /></label><p align=\"center\">ECCD Educator</p></div></div></div></div></div></div></div></div></div><p>&nbsp;</p></div><p>&nbsp;</p><p>&nbsp;</p>', '.col-md-2 p { color: red;font-weight: bold;}.filter-card { width: 100%}.read-more{display: none;}', NULL, NULL, NULL, 11, 'en', 1, 1, 1, 1, '2022-02-05 21:50:27', '2022-08-08 06:03:41'),
(5, 'Access', 'access', NULL, '<div class=\"container\"><div><div class=\"row\"><div class=\"col-lg-8 col-12\"><h1>ACCESS</h1><br /><p>Save the Children recognizes that many of the most deprived and marginalized children are excluded from schools and learning spaces. The realization of the five foundations of the Quality Learning Framework is therefore dependent on ensuring all children, including the most deprived, have access to learning spaces. Proactive strategies must be in place to guarantee children access to education, informed by analyses of the barriers affecting children&rsquo;s right to education. Government, civil society, or service providers also play a role in shifting norms or providing programs that address the exclusionary factors affecting children&rsquo;s ability to access learning, such as disability, extreme poverty, displacement caused by conflict or natural disaster; or discrimination based on gender, ethnicity, sexual orientation, or religion. - Adapted from The Quality Learning Framework, Save the Children Access is a foundational component of inclusive education, underscoring the fundamental right of all children to go to school and learn. Access encompasses attendance, enrolment, participation, retention, and transitioning from grade to grade in the expected progression, especially during emergencies, pandemics like COVID-19, and conflict situations. Ensuring that all children have access to quality and safe learning spaces, whether physical classrooms or remote learning sites and devices, contributes to the realization of the five foundations of the Quality Learning Framework. Access is based on the Right to Non-discrimination (Art.2, UN CRC), placing the onus on educators and parents to be aware of children who are not in school or participating, learning to their full individual potential, and identifying the barriers that prevent them from doing so. Some solutions to common factors that exclude children from school are provided here. As many reasons constrain children from attending school, cross-references are made to other domains that may provide more in-depth solutions.</p></div><div class=\"col-lg-4 col-12\"><div class=\"row\"><div class=\"col-lg-12 col-12\"><div class=\"v-image v-responsive theme--light\"><div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/access/access.png\" alt=\"access\" /></div></div></div></div><div class=\"row\"><div class=\"col-lg-12 col-12\"><p class=\"access-p-font\"><span style=\"font-family: roboto;\">&ldquo;Ensuring that all children have access to quality and safe learning spaces, whether physical classrooms or remote learning sites and devices, contributes to the realization of the five foundations of the Quality Learning Framework.&rdquo;</span></p></div></div></div></div></div><div class=\"box-card\"><div class=\"row justify-center\"><div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\"><h3>While working with teachers, children, government officials, and communities, keep asking yourself:</h3><p>1. What are the barriers to access, participation, and learning? <br />2. Who is perpetuating the barriers, how, and why?<br />3. Who is experiencing these barriers? Are some people more affected by these barriers than others? <br />4. How can these barriers be minimized? <br />5. What resources (human, financial, material) are available to support access, participation, and learning of previously excluded children?<br />6. How can we mobilize additional resources?</p></div></div></div></div>', '', NULL, NULL, NULL, 21, 'en', 1, 1, 1, 7, '2022-02-05 22:37:43', '2023-01-16 11:58:47'),
(6, 'Test001', 'test001', NULL, '<div class=\"\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-12\"><div class=\"table-responsive\"><table class=\"table table-bordered\" style=\"border-collapse: collapse; width: 100%;\"><colgroup><col style=\"width: 50.0395%;\" /><col style=\"width: 50.0395%;\" /></colgroup><thead><tr><td>Resource</td><td>Main Topic</td></tr></thead><tbody><tr><td>MAINSTREAMING INCLUSIVE EDUCATION:<br />SHARING GOOD PRACTICES</td><td rowspan=\"3\"><p>SC case studies of successful Inclusive Education programs.<br />See page 21, Cambodia for an example of learning environments<br />that accommodate children with intellectual disabilities.<br />See Annex Two: Cambodia &ndash; School Visits<br />and Change Monitoring Tool</p><p>&nbsp;</p><p>List of good practices to ensure access.<br />See page 33 for identification process, school<br />enrolment, training of assessment commissions at RED/<br />EO level, training parents, improving learning outcomes,<br />removing architectural barriers, monitoring access.</p></td></tr><tr><td>MAINSTREAMING INCLUSIVE EDUCATION:<br />SHARING GOOD PRACTICES</td></tr><tr><td>MAINSTREAMING INCLUSIVE EDUCATION:<br />SHARING GOOD PRACTICES</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></div></div></div><p>&nbsp;</p></div></div><p>&nbsp;</p>', '', NULL, NULL, NULL, NULL, 'en', 1, 1, 1, 1, '2022-02-06 01:07:19', '2022-02-06 01:14:36'),
(7, 'Meal', 'meal', NULL, '<div class=\"container\"><div><div class=\"row\"><div class=\"col-lg-8 col-12\"><h3><strong><img class=\"rounded\" src=\"/storage/photos/1/Hicon8.png\" alt=\"\" width=\"65\" height=\"39\" /> 8 MEAL</strong></h3><p>&nbsp;</p><h1>SC MEAL for Inclusive Education</h1><div class=\"box-card\"><div class=\"row justify-center\"><div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\"><p>Monitoring, Evaluation, Accountability, and Learning (MEAL) are all critical methods for ensuring that our programs are creating positive and effective change. A comprehensive and consistent MEAL approach ensures that we continually improve the quality of our programs and measure our impact for children.</p><p>A MEAL design that is not inclusive does not allow those working on the project to track if activities and benefits are reaching the most deprived children. Data that is collected are not disaggregated by different categories, and no determination is made if the provision of services is flexible and welcoming enough to meet the needs of different children. When a MEAL system is not inclusive, we are not able to demonstrate the impact of our interventions on improving the educational and social inclusion of the most deprived children.</p><p style=\"text-align: right;\">IE Handbook, page 29</p></div></div></div><p>&nbsp;</p><p>SC Inclusive Education programming aims to guarantee access to quality education to all children, ensuring participation of families and communities in this process, and fostering supportive and enabling policy change.</p><p>To do so, it has established common quality standards, described in the Quality Learning Framework. This means that each SC IE intervention should achieve concrete, measurable, and tangible results to achieve stated goals in each of the domains of the QLF.</p><p>To measure SC progress towards the achievement of a Quality Inclusive Education in each of its programs, SC Italy has developed a Menu of Indicators. In this menu, relevant Outputs and Outcomes that SC is aiming to reach are described; the corresponding indicators are what concurs to their achievement.</p><p>&nbsp;</p><div class=\"box-card\"><div class=\"row justify-center\"><div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\"><h6>&nbsp;</h6><h6>&nbsp; SC Inclusive Education expected Outcome with Indicators: an example</h6><p>For instance, to know that the Outcome in Access &ldquo;Increased access to quality basic education for primary school-aged children in target area&rdquo; has been reached, users should regularly measure the following indicators:</p><p>- &ldquo;Proportion of primary school-aged children enrolled in primary school (disaggregated by gender, disability, ethnicity, language, poverty, depending on the context)&rdquo;</p><p>- &ldquo;Proportion of primary school students who regularly attend primary school (disaggregated by gender, disability, ethnicity, language, poverty, depending on the context)&rdquo;</p><p>- &ldquo;Proportion of children of officially primary school-aged who are not enrolled in primary school (disaggregated by gender, disability, depending on the context)&rdquo;.</p></div></div></div></div><div class=\"col-lg-4 col-12\"><div class=\"row\"><div class=\"col-lg-12 col-12\"><div class=\"v-image v-responsive theme--light\"><div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 5.png\" alt=\"\" /></div></div></div></div><div class=\"row\"><div class=\"col-lg-12 col-12\"><p class=\"access-p-font\" style=\"text-align: center;\"><span style=\"font-family: roboto;\">&ldquo;To measure SC progress towards the achievement of a Quality Inclusive Education in each of its programs, SC Italy has developed a Menu of Indicators.&rdquo;</span></p></div></div></div></div></div><br /><p>&nbsp;</p><div class=\"row\"><div class=\"col-lg-4\"><p class=\"access-p-font\"><img class=\"w-100\" src=\"/storage/photos/1/Image 6.png\" alt=\"\" /></p></div><div class=\"col-lg-8\"><h4><strong>Incorporating MEAL in IE interventions</strong></h4><p>&nbsp;</p><p>Programming and implementation, even at the field level, should always incorporate MEAL. When designing or carrying out IE interventions practitioners are also collecting data about communities, population, individuals, entities. These data are relevant for each single activity or project. Practitioners need them to monitor progress, evaluate results, understand who is responsible, accountable, consulted and informed of each step of each intervention, and learn from each analysis of how the project went what can be improved or replicated in different times and contexts. Data collected at the field level are relevant to the achievement of the overall SC Inclusive Education Outcomes and Outputs as well. When planning or implementing a SC Inclusive Education program, make sure you are designing an inclusive MEAL plan where measures are in place to meaningfully include the children being served by the intervention in the design of how program success and progress will be determined, measured with their involvement, how programs will adapt and adjust to the changes suggested by monitoring data, how feedback would be collected and responded to by the project, and how the program will be evaluated.:</p></div></div><p>&nbsp;</p><div class=\"row\"><div class=\"col-md-5\"><p>1. Ensure that all collected data, from the baseline to final evaluation, are disaggregated by gender, disability, age, urban-rural split, ethnicity, language, wealth and/or other context-specific variables, in a way that allows you to assess a program&rsquo;s impact on different children.Note: disaggregate data by disability if the team collecting data has been trained to use the Washington Group/UNICEF Child Functioning Questionnaires. If the team has not previously used the Washington Group/UNICEF questionnaires, please reach out to the Disability Inclusion Technical Working Group for support prior to collecting data. Please note that under no circumstances should disability data be gathered through a binary yes/no question.</p></div><div class=\"col-md-7\"><p>2. Include indicators measuring the &ldquo;inclusiveness&rdquo; of a school community.</p><p>3. Include indicators from the SC Menu of Indicators.</p><p>&nbsp;</p><div class=\"box-card\"><div class=\"row justify-center\"><div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\"><h6>&nbsp;</h6><h6>&ldquo;Practitioners need them to monitor progress, evaluate results, understand who is responsible, accountable, consulted and informed of each step of each intervention, and learn from each analysis of how the project went what can be improved or replicated in different times and contexts.&rdquo;</h6><p>&nbsp;</p></div></div></div></div></div><p>&nbsp;</p><div class=\"row\"><div class=\"col-md-12\"><p><img class=\"w-100\" src=\"/storage/photos/1/Mask Group 1.png\" alt=\"\" /></p></div></div><p>&nbsp;</p><div class=\"row\"><div class=\"col-md-12\"><h4><strong>MEAL guidance in IE tools</strong></h4><p>&nbsp;</p><p>To help design inclusive MEAL plans, in this toolkit each of the tools you will use is matched to one or more suggested indicators. This ensures you know that by using that tool or strategy you are contributing to achieving a SC Inclusive Education Outcome or Output, and so that you pay attention to what type of data you should collect (i.e., number of primary school aged children that are not enrolled), and how (i.d. disaggregated by gender, disability, depending on the context). Certain programs may require adapted additional indicators to ensure they better reflect the programming environment and the needs of the target group the program intends to serve.</p><p>&nbsp;</p><p>Some of the tools in this toolkit are adaptations of existing tools. Each includes:</p><p>-&nbsp; References to the Italy SC Menu of indicators;</p><p>-&nbsp; A rationale of why the tool is linked to the measurement of these indicators;</p><p>-&nbsp; A short &ldquo;M&amp;E guidance&rdquo; section with practical tips and observations on how to collect and share data, and why.</p><p>&nbsp;</p><p>This will reinforce your awareness of the M&amp;E activities you are carrying on while planning and implementing your project&rsquo;s activities; clarify the connection between your field implementation and the achievement of overall SC strategic results; and help you use your data to improve current and future interventions. This toolkit is in its initial testing phase and the tools, and their linked indicators would benefit from insights and experiences particularly from field-based practitioners on the use of the tools and linked indicators and would be enhanced by any adaptations or advances made.</p></div></div><p>&nbsp;</p><p>&nbsp;</p></div>', '', NULL, NULL, NULL, NULL, 'en', 1, 1, 1, 1, '2022-05-10 03:32:02', '2022-07-07 03:21:23');
INSERT INTO `pages` (`id`, `name`, `slug`, `category_id`, `description`, `inline_css`, `meta_title`, `meta_keyword`, `meta_description`, `order_by`, `language`, `is_name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(8, 'Glossary', 'glossary', NULL, '<div class=\"\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-12\"><h3><strong><img class=\"rounded\" src=\"/storage/photos/1/icon9.png\" alt=\"\" width=\"65\" height=\"39\" /> 9 GLOSSARY</strong></h3><p>&nbsp;</p><p><strong>Abuse</strong></p><p>intentional action that harms or injuries another person.</p><p><strong>Ableism</strong></p><p>is the unfair treatment, discrimination, and social prejudice of persons with disabilities. Ableism is rooted in the assumption and belief that persons with disabilities are inferior to persons without disabilities.</p><p><strong>Accessibility</strong></p><p>Ensures that persons with disabilities access, on an equal basis with others, the physical environment, transportation, information, and communications, including information and communications technologies and systems, and other facilities and services open or provided to the public, both in urban and in rural areas. Accessibility takes into consideration the removal of barriers for everyone and is not based on individual requests but instead makes the environment, information, and technology accessible for all people</p><p><strong>Additional / second language learners</strong></p><p>learners, often from an immigrant background, who do not speak the national language and who need additional support to access the curriculum in school and develop resources to fully participate in the life of the local and wider community.</p><p><strong>Assessment</strong></p><p>The ways teachers or other professionals systematically collect and use information about a learner&rsquo;s level of achievement and/or development in different areas of their educational experience (academic, behavior or social).</p><p><strong>Awareness-raising campaigns</strong></p><p>organized communication activities which aim to create awareness on topics, behavioral change among the general population and to improve the focus on better outcomes. They often take the form of mass media campaigns.</p><p><strong>Barriers</strong></p><p>Barriers are the things that hinder a person with an impairment from participating in society on an equal basis with others and has nothing to do with a person&rsquo;s body or function.Barriers are also categorized, most commonly into attitudinal, environmental, institutional, communication and financial.</p><p>Attitudinal barriers are negative beliefs, stereotypes, or perceptions about a person with disabilities, usually from society or culture. These attitudes create prejudice, discrimination, and harm toward persons with disabilities and prevent the realization of their human rights. Examples include a belief that children with disabilities do not have the same right to be free from harm as their peers.</p><p>Environmental barriers include physical obstacles in the natural and physical environment. Examples include steps leading into a health center, a steep hill leading to a school, a bus without a dropdown platform or a toilet without railings to hold on to.</p><p>Communication barriers are those arising when a person&rsquo;s preferred way of communicating, sharing, and understanding information does not match how information is normally delivered. Examples include websites with images that do not include alternative text (alt text), the information in only one format</p><p>(Visual or auditory), or when a person is given information and not supported to understand the context or can ask questions.</p><p>Institutional barriers are restrictions established through policy, legislation, and formal structures. Examples include legislation that prohibits equality before the law; right to education, leisure, and sport; and policies that do not subsidize the cost of assistive devices, personal assistance, or rehabilitation.</p><p>Financial barriers are the extra costs that a person with disabilities must cover to participate in day-to-day life. Examples include medicines or assistive devices, services such as rehabilitation or sign language interpretation, and support personnel such as a carer, guide, or education aide.</p><p><strong>Behavioral Difficulties</strong></p><p>problems in an individual&rsquo;s way of acting, behaving, or conducting themself. A child with behavioral difficulties may have difficulty following the rules of the classroom at school or in care placement.</p><p><strong>Bullying</strong></p><p>behavior of a person who hurts or frightens someone smaller or less powerful, often forcing that person to do something they do not want to do.</p><p><strong>Caregiver/Carer</strong></p><p>person with whom the child lives who provides daily care to the child, and who acts as the child&rsquo;s parent whether they are biological parents or not. A caregiver can be the mother or father, or another family member such as a grandparent or older sibling. It includes informal arrangements in which the caregiver has no legal responsibility.</p><p><strong>Child</strong></p><p>every human being below the age of 18 unless, under the national law applicable to the child, majority is attained earlier.</p><p><strong>Child and Youth Participation </strong></p><p>children and young people influencing issues affecting their lives, by speaking out and acting in partnership with adults.</p><p><strong>Children&rsquo;s Rights</strong></p><p>Set of universal entitlements for every child and young person below the age of 18 enshrined in the United Nations Convention on the Rights of the Child. These entitlements apply to children of every background and encompass what they need to survive and to have the necessary opportunities that lead to stable, rewarding lives.</p><p><strong>Code of Conduct</strong></p><p>set of rules outlining the responsibilities of a proper practices for an individual or organization.</p><p><strong>Community Based Approach</strong></p><p>approach motivating adults and children in the community to participate in a process which allows them to express their needs and to decide their own future with a view to their empowerment.</p><p><strong>Community Based Care</strong></p><p>care that is as close as possible to family-based care and where the community is involved in the process of a child&rsquo;s recovery (e.g., foster families).</p><p><strong>Community Based Support</strong></p><p>range of measures to ensure the support of children and families in the community.</p><p><strong>Community Child Care Committee</strong></p><p>group of people mandated within their community to take responsibilities for the protection and care of children and families.</p><p><strong> Community Group</strong></p><p>informal grouping of people at community level who join to provide care and protection for vulnerable children.</p><p><strong>Community-based Organization (CBO)</strong></p><p>local membership organization that relies almost exclusively on volunteers from within the community and usually receives little external funding.</p><p><strong>Corporal or Physical Punishment </strong></p><p>forced pain intended to change a person&rsquo;s behavior or to punish them (e.g., hitting a child with the hand or with an object, kicking, shaking, or throwing the child, pinching, or pulling their hair, forcing a child to stay in uncomfortable or undignified positions, or to take excessive physical exercise, burning or scarring the child).</p><p><strong>Deprived Child</strong></p><p>minor deprived of parental support or care because one or both parents are deceased, incapacitated, disabled, aged, or maintains and resides in a separate verified residence for reasons other than employment, education, training, medical care, or uniformed service.</p><p><strong> Design for all</strong></p><p>a &ldquo;design approach to products and services, aiming to make them usable for as many people as possible&rdquo; (UNESCO IITE/European Agency, 2011, p.101). Design for all is design for human disability, social inclusion, and equality (European Institute for Design and Disability, 2004).</p><p><strong>Disability </strong></p><p>persons with disabilities include those who have long-term physical, mental, intellectual, or sensory impairments which in interaction with various barriers may hinder their full and effective participation in society on an equal basis with others (UNCRPD 2006).</p><p><strong>Discrimination </strong></p><p>act based on a difference between people, make an unjust distinction based on gender, disability, ethnic background, etc. Legislation is in place in many countries to ensure the right of individuals to be treated equally in education and employment.</p><p><strong>Early Childhood Care and Development</strong></p><p>holistic development of children including physical, cognitive, language, social and emotional development from conception to age five.</p><p><strong>Early School Leaving / Drop-put</strong></p><p>phenomenon of youth not completing education and training (relative concept depending on the educational realities in different transition regimes), usually preceded by a certain number of signals forming an early warning system.</p><p><strong>Emergency</strong></p><p>situation that threatens the lives and well-being of large number of a population, extraordinary action being required to ensure the survival, care, and protection of those affected. Emergencies include natural crises (e.g., hurricanes, droughts, earthquakes, floods, and armed conflict).</p><p><strong>Emergency Care Center</strong></p><p>form of institution used to provide short-term care, until family reunification can be undertaken, or alternative care provided.</p><p><strong>Emotional or Psychological Abuse</strong></p><p>persistent emotional ill-treatment of a child such as to cause severe and persistent adverse effects on the child&rsquo;s emotional development (e.g., humiliating, and degrading treatment such as bad name calling, constant criticism, belittling, persistent shaming, solitary confinement, or isolation).</p><p><strong>Evaluation</strong></p><p>time-bound activity that systematically and objectively assesses the relevance, performance, and success of ongoing and completed programs and interventions. Evaluation is carried out selectively, asking, and answering specific questions to guide decision makers and\\or program managers. Evaluation determines the relevance, efficiency, effectiveness, impact, and sustainability of a program.</p><p><strong>Family Based Care </strong></p><p>short-term or long-term placement of a child into a family environment, with at least one consistent parental caregiver, a nurturing family environment where children are part of a supportive kin and community.</p><p><strong>Family Group Conferencing</strong></p><p>way of fully involving a family in the planning, decision making, and arrangements for the care, protection, and supervision of the child, young persons, or vulnerable adult. The family is invited to meet as a group to discuss issues relating to the child and is encouraged by a facilitator to come up with their own solutions.</p><p><strong>Family Support Services</strong></p><p>range of measures to ensure the support of children and families by e.g., social workers to provide services e.g., counseling, parent education, day-care facilities, material support, etc.</p><p><strong>Follow-up</strong></p><p>monitoring of the well-being of a child, and the identification and provision of a range of social and economic supports for children and their caregivers.</p><p><strong>Gender Based Violence</strong></p><p>umbrella term for any harmful act perpetrated against a people will based on socially ascribed (gender) differences between males and females (e.g., sexual violence, including sexual exploitation\\abuse and forced prostitution, domestic violence, trafficking, and forced\\early marriage).</p><p><strong>Government Services</strong></p><p>all basic services provided by the state, including health, education, justice, social welfare, police, agriculture, water, and other services.</p><p><strong> Harassment </strong></p><p>behavior that annoys, upsets, or threatens someone, that in some places is considered illegal as it causes mental or emotional suffering.</p><p><strong>Harm</strong></p><p>result of exploitation, violence, abuse, and neglect of children that can take many forms, including impacts on children&rsquo;s physical, emotional, and behavioral development, their general health, their family and social relationships, their self-esteem, their educational attainment, and aspirations.</p><p><strong> Impairment</strong></p><p>is any loss or abnormality of a psychological, physiological, or anatomical structure or function. (WHO (1980) International Classification of Impairments, Disabilities and Handicaps.)</p><p>According to the World Health Organization, impairments are &ldquo;problems in body function and structure such as significant deviation or loss&rdquo;. In this way, impairments are understood as an attribute of the individual. Impairments can be long-term or short-term and are preferably diagnosed by skilled professionals. Impairments are often categorized into physical, intellectual, psychosocial, sensory, and neurological, and each category often includes a broad range of conditions or diagnosis</p><p>.Intellectual impairments are those where a person may require more time and support to understand information, to learn or to communicate. Some conditions which may mean that a person has an intellectual disability are Down syndrome or autism spectrum disorder.</p><p>Neurological impairments are those affecting the spinal cord and brain functions and include, but are not limited to, spinal cord injury, spina bifida,hydrocephalus and cerebral palsy.</p><p>Physical impairments include, but are not limited to, missing or deformation of limb orbodily structure, short stature, speech impediment and restricted mobility of the physical body.</p><p>Psychosocial impairments are those linked to mental health, cognitive conditions or disturbance in behavior that are perceived as socially unacceptable. They include but are not limited to people who have received a mental health-related diagnosis or who self- identify as having a psychosocial disability due to high levels of distress, for instance Sensory impairments are those affecting people&rsquo;s senses. They include visual impairments, blind, partially sighted, low vision, hearing impairments, D/deaf, mild, moderate, or profound hearing loss or hard of hearing, deafblind, and hypersensitivity.</p><p><strong> Inclusion</strong></p><p>process of taking necessary steps to ensure that every young person is given an equality of opportunity to develop socially, to learn, and to enjoy community life. It is often associated with groups of young people: those with disabilities, from ethnic minority communities, with HIV and AIDS, and coming from certain regions, cities, or neighborhoods.</p><p><strong> Inclusive Education</strong></p><p>according to UNESCO, inclusive education means that all children can learn together in the same school. This entails reaching out to all learners and removing all barriers that could limit participation and achievement. Disability is one of the main causes of exclusion; however, there are also other social, institutional, physical, and attitudinal barriers to inclusive education.</p><p><strong>Indicator</strong></p><p>objective way of measuring that progress is being achieved that can refer to each level: input, output, outcome, objective, or impact. Indicators provide an indication that something has happened, or that an objective has been achieved.</p><p><strong>Individual Education Plan (IEP) / </strong></p><p>plan describing and defining the need for support of those learners with an official decision of individual educational needs, usually established by a multidisciplinary team. It is the tool exemplifying how the different systems of support are organized around an individual learner with disabilities and the way in which local agencies can be coordinated and progress can be monitored (European Agency, 2013, p.41)</p><p><strong> Individual Needs </strong></p><p>individual or unique, out-of-the-ordinary concerns created by a person&rsquo;s medical, physical, mental, or developmental condition or disability. Additional services are usually needed to help a person in communicating, thinking, moving, getting along with others, and taking care of self.</p><p><strong>MEAL</strong></p><p>Save the Children&rsquo;s Monitoring, Evaluation, Accountability, and Learning system to be applied in all SC country programs.</p><p><strong>Monitoring mechanism</strong></p><p>the process of systematic approaches and techniques used for collecting and storing data to ensure that the education process &ldquo;is actually running in accordance with the planned objectives and complying with relevant laws and regulations (e.g., internal policies).</p><p><strong>Neglect</strong></p><p>deliberately, or through carelessness or negligence, failing to provide for, or secure for the child, their rights to physical safety and development (e.g., abandonment, failing deliberatively in properly supervise and protect children from harm, carrying out important aspects of care which result in harm to the child, and in providing medical care, or carelessly exposing the child to harm).</p><p><strong>Objective</strong></p><p>specific, time bound, and measurable goal for projects or programs which contributes to achieving the longer term aims (impact) and indicates what changes the project is hoping to achieve.</p><p><strong>Out-Of-School Children </strong></p><p>percentage of primary-school-age children who are not enrolled in primary or secondary school. Children in the official primary age group that are in preprimary education should be also considered out of school (UNESCO).</p><p><strong>Outcome </strong></p><p>intermediate changes because of project or program activities (e.g., changes in knowledge, behavior, attitudes, children&rsquo;s access and use of services, policy), that can be measured during the lifetime of a project or program.</p><p><strong>Parent </strong></p><p>child&rsquo;s biological mother or father or another adult who has adopted them.</p><p><strong> Physical Abuse </strong></p><p>action involving the use of violent physical force to cause actual or likely physical injury or suffering (e.g., hitting, shaking, throwing, poisoning, burning, drowning, suffocating, FGM, torture, etc.).</p><p><strong>Policy</strong></p><p>a stated course or principle of action that is either adopted or proposed to meet goals, aims, and objectives. It is written in official documents to direct the implementation of agreed actions.</p><p><strong>Prevention (or a child needing care) </strong></p><p>variety of approaches supporting family life and helping to diminish children&rsquo;s need to be separated from their immediate or extended family or caregivers to be placed in alternative care.</p><p><strong> Professional Learning</strong></p><p>any activity that education professionals engage in those aims to stimulate their thinking and professional knowledge and to improve their practice, ensuring that it is critically informed and up to date.</p><p><strong>Protective Environment</strong></p><p>environment ensuring children&rsquo;s protection from violence, exploitation, and abuse.</p><p><strong>Quality Education</strong></p><p>education that includes healthy, well-nourished, ready to participate learners, supported by their families and communities; that is delivered in healthy, safe, protective, and gender-sensitive environments, providing adequate resources and facilities; that is based on relevant curricula and materials for the acquisition of basic skills, especially in the areas of literacy, numeracy, and skills for life, and knowledge of gender, health,nutrition, HIV\\AIDS prevention and peace; that is delivered by trained teachers who use child-centered teaching approaches in well-managed classrooms where it is possible to facilitate learning and reducing disparities; and that leads to outcomes that encompass knowledge, skills, and attitudes linked to national goals for education and positive participation in society (UNICEF).</p><p><strong>Refugee </strong></p><p>someone who is outside his\\her country of origin and has a well-founded fear of being persecuted for reasons of race, religion, nationality, membership of a particular social group or political opinion.</p><p><strong>Safeguarding </strong></p><p>values and procedures to be upheld by those working with children and young people to protect them from all forms of abuse, exploitation, and violence.</p><p><strong>Sexual Abuse </strong></p><p>all forms of sexual violence including incest, early and forced marriage, rape, involvement in child pornography, and sexual slavery. Also, it may include indecent touching or exposure, using sexually explicit language towards a child and showing children pornographic material.</p><p><strong>Social and Emotional Learning (SEL)</strong></p><p>process through which children and young people acquire and effectively apply the knowledge, attitudes, and skills necessary to understand and manage emotions, set, and achieve positive goals, feel, and show empathy for others, establish, and maintain positive relationships, and make responsible decisions.</p><p><strong>Social Policy</strong></p><p>public policy, having to do with social related issues (e.g., family policies, housing policies, drug policies, criminal justice policies, etc.).</p><p><strong>Social Protection</strong></p><p>wide range of activities undertaken by societies to alleviate hardship and respond to the risks that poor and vulnerable people face and to provide minimum standards of well- being, including services and financial transfers.</p><p><strong>Social Services</strong></p><p>services provided by public and private organizations aimed at addressing the needs and problems of the most vulnerable populations, including those stemming from violence,family breakdown, homelessness, substance abuse, immigration, disability, and old age (e.g., day and residential care, income support, home visiting, and specialist services as drug rehabilitation, etc.).</p><p><strong>Standards in Care</strong></p><p>written document outlining the provisions that must be in place in a care setting to ensure that a child receives an adequate level of care.</p><p><strong>Universal Design of Learning (UDL)</strong></p><p>way of thinking about teaching and learning that helps give all students an equal opportunity to succeed and it may be very helpful for kinds with learning and thinking differences. This approach offers flexibility in the ways students access material, engage with it, and show what they know.</p><p><strong>Violence </strong></p><p>intentional use of physical force or power, threatened or actual, against a child, by an individual or group, that either results in or has a high likelihood of resulting in actual or potential harm to the child&rsquo;s health, survival, development, or dignity.</p><p><strong> Vulnerable Children</strong></p><p>minors whose rights to care and protection are being violated or who are at risk of those rights being violated. This includes children who are poor, abused, neglected, or lacking access to basic services, ill, or living with disabilities, as well as children whose parents are ill, affected by fighting forces or who conflict with the law.</p><p><strong>Water Sanitation and Hygiene (WASH)</strong></p><p>provision of water, sanitation, health care waste management, hygiene, and environmental cleaning infrastructure, and services across all parts of a facility.</p></div></div><p>&nbsp;</p></div></div><p>&nbsp;</p>', '', NULL, NULL, NULL, NULL, 'en', 1, 1, 1, 1, '2022-05-10 03:40:38', '2022-07-07 03:27:53'),
(9, 'homenew', 'homenew', NULL, '<div class=\"container\"><div><div class=\"row\"><div class=\"col-lg-6 col-12\"><h1 title=\"WHAT IS THE TOOLKIT\">WHAT IS THE TOOLKIT?</h1><span class=\"v-tooltip v-tooltip--bottom\"></span> <br /><p>The Inclusive Education Resources and Toolkit is a resource and reference for all SC staff working in education programming to mainstream inclusion in their work. The Toolkit provides recommendations and resources to strengthen inclusive education programming to enable Save the Children to achieve greater successes in the provision of high-quality ECCD and basic education as promoted by the Quality Learning Framework2, also in emergency and humanitarian context. The toolkit is based on a comprehensive analysis of key gaps in existing guidance shared by practitioners globally as well as a review of international standards and resources in the field and innovative and adaptive models of inclusive education programming already in use by Save the Children and other organizations (INEE, Plan International, UNESCO, USAID, and others).</p><p>&nbsp;</p><p>&nbsp;</p></div><div class=\"col-lg-6 col-12\"><a href=\"#\"><img class=\"w-100\" src=\"/storage/photos/1/Intersection 1.png\" width=\"100%\" height=\"100%\" /></a></div></div></div><div class=\"container1\"><div class=\"row justify-center\"><div class=\"col-lg-8 col-12\"><h1 class=\"text\">HOW TO USE TOOLKIT?</h1><br /><p class=\"text\">The Inclusive Education Resources and Toolkit composed of seven different chapters, covering the five SC Quality Learning Framework (QLF) foundations: Emotional and psychosocial protection, Physical protection, Teaching and learning, Parents and community, School leadership and management, plus Access, and Policy &amp; Systems.</p></div></div></div><div class=\"container1\"><div class=\"home-card v-card v-sheet v-sheet--outlined theme--light elevation-3\" style=\"background-color: #f6fbff; border-color: #f6fbff;\"><div class=\"row\"><div class=\"col-lg-7 col-12\"><div class=\"row logo justify-center\"><div class=\"pr-0 col-lg-3 col-4\"><a href=\"#\"><img class=\"mt-10 w-100\" style=\"float: right;\" src=\"/frontend/images/card1.png\" /></a></div><div class=\"col-lg-3 col-4\"><a href=\"#\"><img class=\"ma-1 w-100\" src=\"/frontend/images/card2.png\" /></a> <a href=\"#\"><img class=\"ma-1 w-100 mt-3\" src=\"/frontend/images/card3.png\" /></a></div><div class=\"pl-2 col-lg-3 col-4\"><a href=\"#\"><img class=\"w-100 mt-10\" style=\"float: left;\" src=\"/frontend/images/card4.png\" /></a></div></div></div><div class=\"col-lg-5 col-12\"><br /><p>&nbsp;</p><p>Each section is conceived as a stand-alone set of resources from which practitioners can draw on according to Inclusive Education Programming needs. Users may not need to read the entire toolkit, but only pick and use the components identified to fill the gaps in their specific contexts</p></div></div><div class=\"row\"><div class=\"col-lg-5 col-12\"><p>Practitioners are strongly encouraged to use an intersectional approach to this toolkit&rsquo;s content. Exclusion from quality learning is rarely the result of just one factor of exclusion or discrimination. More often children and their family and communities will face several exclusionary factors at the same time. When approaching Inclusive Education practitioners should keep in mind the co-existence of multiple exclusion factors which need to be addressed through application of different strategies and tools at the same time.</p></div><div class=\"col-lg-7 col-12\"><div class=\"row logo justify-center\"><div class=\"pr-0 col-lg-3 col-4\"><a href=\"#\"><img class=\"mt-10 w-100\" style=\"float: right;\" src=\"/frontend/images/card0.png\" /></a></div><div class=\"col-lg-3 col-4\"><a href=\"#\"><img class=\"ma-1 w-100\" src=\"/frontend/images/Hicon7.png\" /></a> <a href=\"#\"><img class=\"ma-1 w-100 mt-3\" src=\"/frontend/images/Hicon8.png\" /></a></div><div class=\"pl-2 col-lg-3 col-4\"><a href=\"#\"><img class=\"w-100 mt-10\" style=\"float: left;\" src=\"/frontend/images/Hicon6.png\" /></a></div></div></div></div></div></div><div class=\"container1\"><div class=\"row\"><div class=\"col-lg-6 col-12\"><h1>&nbsp;</h1><h1>HOW TO USE THE TOOLKIT</h1><br /><p>The Inclusive Education Resources and Toolkit composed of seven different chapters, covering the five SC Quality Learning Framework (QLF) foundations: Emotional and psychosocial protection, Physical protection, Teaching and learning, Parents and community, School leadership and management, plusAccess, and Policy &amp; Systems.Each section is conceived as a stand-alone set of resources from which practitioners can draw on according to Inclusive Education Programming needs. Users may not need to read the entire toolkit, but only pick and use the components identified to fill the gaps in their specific contexts. Practitioners are strongly encouraged to use an intersectional approach to this toolkit&rsquo;s content. Exclusion from quality learning is rarely the result of just one factor of exclusion or discrimination. More often children and their family and communities will face several exclusionary factors at the same time. When approaching Inclusive Education practitioners should keep in mind the co-existence of multiple exclusion factors which need to be addressed through application of different strategies and tools at the same time.</p></div><div class=\"col-lg-6 col-12\"><div class=\"row justify-center\"><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card1.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card2.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card3.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card0.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card4.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/Hicon6.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/Hicon7.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/Hicon8.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><img class=\"w-100\" src=\"/storage/photos/1/icon9.png\" alt=\"\" /></div></div></div></div></div><div><div class=\"row justify-center\"><div class=\"col-lg-8 col-12\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/world.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div></div><div class=\"row justify-center\"><div class=\"col-lg-8 col-12\"><p class=\"text\">SC works in over 117 countries.This Toolkit cannot reflect the specificity of each local context.Practitioners are thereforen advised to adapt contents and tools to local contexts as wellas reflect existing national guidelines and education policies to guarantee the effectiveness of local Inclusive Education programming.</p></div></div></div></div>', '', NULL, NULL, NULL, NULL, 'en', 1, 1, 1, 1, '2022-05-30 17:31:46', '2022-05-30 17:31:46'),
(10, 'مرحبا بالعالم', 'مرحبا-بالعالم', NULL, '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"rtl\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\">هذا اسلام اشراقي</span></pre>', '', NULL, NULL, NULL, NULL, 'ar', 1, 1, 1, 1, '2023-01-26 03:26:36', '2023-01-26 03:26:36'),
(12, 'Home', 'home', NULL, '<div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-sm-12\"><p><img class=\"w-100\" src=\"/storage/photos/1/home/ToolkitDraftA.webp\" alt=\"home\" width=\"100%\" height=\"100%\" /></p></div><div class=\"col-lg-7 col-sm-12\"><p>Save the Children define la educaci&oacute;n inclusiva como la educaci&oacute;n que permite a todos los ni&ntilde;os<br />y las ni&ntilde;as aprender juntos con el apoyo a sus necesidades individuales. La educaci&oacute;n inclusiva<br />busca identificar y hacer frente a las barreras y a la discriminaci&oacute;n que impide a algunos ni&ntilde;os<br />y ni&ntilde;as recibir apoyo para que aprendan conjuntamente con sus compa&ntilde;eros y compa&ntilde;eras.<br />Las causas m&aacute;s comunes de discriminaci&oacute;n que afectan a los y las estudiantes en la educaci&oacute;n<br />incluye la discapacidad, etnia, idioma, g&eacute;nero, orientaci&oacute;n sexual, estatus de refugiado, estatus<br />socio-econ&oacute;mico y cultural, y pobreza. Algunos de los recursos incluidos en esta caja de<br />herramientas se centran en un factor concreto de la exclusi&oacute;n, mientras que otros proporcionan<br />orientaci&oacute;n sobre discriminaci&oacute;n y barreras para el aprendizaje de manera m&aacute;s general. Los<br />profesionales deber&iacute;an usar las herramientas que son m&aacute;s relevantes para su contexto teniendo<br />en cuenta que muchos ni&ntilde;os y ni&ntilde;as se ven afectados por las barreras de inclusi&oacute;n. Por ejemplo,<br />un ni&ntilde;o con una discapacidad f&iacute;sica de un grupo de lengua mayoritaria enfrentar&aacute; diferentes<br />barreras para el aprendizaje que una ni&ntilde;a que sea de un grupo de lengua minoritaria. Los<br />ni&ntilde;os y las ni&ntilde;as tienen identidades superpuestas. No es posible tratar completamente un<br />tipo de discriminaci&oacute;n sin considerar tambi&eacute;n los otros aspectos de exclusi&oacute;n que podr&iacute;an<br />estar interfiriendo.</p></div><div class=\"col-lg-9 col-sm-12\"><p><img class=\"w-100\" src=\"/storage/photos/1/home/CH1544395-_2_.webp\" alt=\"home2\" width=\"100%\" height=\"100%\" /></p><p style=\"text-align: right;\">&nbsp;</p><p style=\"text-align: right;\"><em>The ongoing COVID-19 pandemic has exacerbated challenges</em></p><p style=\"text-align: right;\"><em> for those most marginalized and excluded children.</em></p></div><div class=\"col-lg-7 col-sm-12\"><p>Save the Children Italy and Save the Children Sweden, thanks to the support of the IKEA Foundation and through various institutional and private funds, have worked to further Inclusion in Education in recent years through several initiatives. With significant contribution from SC network colleagues, country offices, and Technical Working Groups, the development of this Inclusive Education Resources and Toolkit builds on Save the Children&rsquo;s <a href=\"https://resourcecentre.savethechildren.net/document/inclusive-education-what-why-and-how-handbook-program-implementers/\">Inclusive Education: What, Why, and How. A Handbook for Program Implementers</a> and <a href=\"https://resourcecentre.savethechildren.net/document/quality-learning-framework/\">The Quality Learning Framework</a> to operationalize guidance for excluded girls and boys.</p></div></div><div class=\"container1\"><div class=\"home-card v-card v-sheet v-sheet--outlined theme--light elevation-3\" style=\"background-color: #f6fbff; border-color: #f6fbff;\"><div class=\"row\"><div class=\"col-lg-6 col-12\"><div class=\"row logo justify-center mt-4 pt-4\"><div class=\"pr-0 col-lg-4 col-4\"><a href=\"#\"><img class=\"mt-10 w-100 br-5\" style=\"float: right;\" src=\"/frontend/images/card1.png\" alt=\"card1\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"ma-1 w-100 br-5\" src=\"/frontend/images/card2.png\" alt=\"card2\" width=\"100%\" height=\"100%\" /></a> <a href=\"#\"><img class=\"ma-1 w-100 mt-3 br-5\" src=\"/frontend/images/card3.png\" alt=\"card3\" width=\"100%\" height=\"100%\" /></a></div><div class=\"pl-2 col-lg-4 col-4\"><a href=\"#\"><img class=\"w-100 mt-10 br-5\" style=\"float: left;\" src=\"/frontend/images/card4.png\" alt=\"card4\" width=\"100%\" height=\"100%\" /></a></div></div></div><div class=\"col-lg-6 col-12\"><h2><strong>&nbsp; &nbsp;WHAT IS THE TOOLKIT FOR?</strong></h2><p>The Inclusive Education Resources and Toolkit is a resource and reference for all SC staff working in education programming to mainstream inclusion in their work. The Toolkit provides recommendations and resources to strengthen inclusive education programming to enable Save the Children to achieve greater successes in the provision of high-quality ECCD and basic education as promoted by the Quality Learning Framework2, also in emergency and humanitarian context. The toolkit is based on a comprehensive analysis of key gaps in existing guidance shared by practitioners globally as well as a review of international standards and resources in the field and innovative and adaptive models of inclusive education programming already in use by Save the Children and other organizations (INEE, Plan International, UNESCO, USAID, and others).</p></div></div><div class=\"row\"><div class=\"col-lg-6 col-12 pt-4\"><h2><strong>&nbsp; &nbsp;WHO IS IT FOR?</strong></h2><p>This toolkit provides a framework and practical tools primarily aimed at education practitioners who are responsible for the design, implementation, and management of SC programs involving an education component. These resources may be used in the phases of program design, baseline and needs assessment, and evaluations, as well as for capacity building activities. Also, the toolkit is primarily for formal education system programming, but the tools and resources may be adapted to suit accelerated or non-formal education programs.</p></div><div class=\"col-lg-6 col-12\"><div class=\"row logo justify-center\"><div class=\"pr-0 col-lg-4 col-4\"><a href=\"#\"><img class=\"mt-10 w-100 br-5\" style=\"float: right;\" src=\"/frontend/images/card0.png\" alt=\"card5\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"ma-1 w-100 br-5\" src=\"/frontend/images/Hicon7.png\" alt=\"card6\" width=\"100%\" height=\"100%\" /></a> <a href=\"#\"><img class=\"ma-1 w-100 mt-3 br-5\" src=\"/frontend/images/Hicon8.png\" alt=\"card7\" width=\"100%\" height=\"100%\" /></a></div><div class=\"pl-2 col-lg-4 col-4\"><a href=\"#\"><img class=\"w-100 mt-10 br-5\" style=\"float: left;\" src=\"/frontend/images/Hicon6.png\" alt=\"card8\" width=\"100%\" height=\"100%\" /></a></div></div></div></div></div></div><div class=\"container1\"><div class=\"row\"><div class=\"col-lg-6 col-12\"><h2><strong>HOW TO USE THE TOOLKIT</strong></h2><p>&nbsp;</p><p>The Inclusive Education Resources and Toolkit composed of seven different chapters, covering the five SC Quality Learning Framework (QLF) foundations: Emotional and psychosocial protection, Physical protection, Teaching and learning, Parents and community, School leadership and management, plus Access, and Policy &amp; Systems. Each section is conceived as a stand-alone set of resources from which practitioners can draw on according to Inclusive Education Programming needs. Users may not need to read the entire toolkit, but only pick and use the components identified to fill the gaps in their specific contexts.</p><p>Practitioners are strongly encouraged to use an intersectional approach to this toolkit&rsquo;s content. Exclusion from quality learning is rarely the result of just one factor of exclusion or discrimination. More often children and their family and communities will face several exclusionary factors at the same time. When approaching Inclusive Education practitioners should keep in mind the co-existence of multiple exclusion factors which need to be addressed through application of different strategies and tools at the same time.</p></div><div class=\"col-lg-6 col-12\"><div class=\"row justify-center mt-4\"><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card1.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card2.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card3.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card0.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/card4.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/Hicon6.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/Hicon7.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/Hicon8.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div><div class=\"col-lg-4 col-4\"><img class=\"w-100\" src=\"/storage/photos/1/icon9.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></div></div></div></div></div><div><div class=\"row justify-center\"><div class=\"col-lg-12 col-12\"><strong>Each chapter is composed of the following sections:&nbsp;</strong></div><ul style=\"list-style-type: square;\"><li>A What if&hellip;? section proposing key tools or methodologies for each identified challenge or obstacle to inclusive education programming and implementation. It provides a short description of each tool with intended users and beneficiaries and highlights which SC indicator(s) should be employed to assess its use;</li></ul><p>&nbsp;</p><ul style=\"list-style-type: square;\"><li>An Intersectionality Tips section that focuses on the overlapping factors of exclusion and suggests which tools may be used to face multiple challenges simultaneously or to highlight specific considerations in planning and delivering IE interventions;</li></ul><p>&nbsp;</p><ul style=\"list-style-type: square;\"><li>A summary of the Relevant Indicators (from the SC Italy Menu of Indicators, or newly developed ones, aligned with GRF and CA indicators whenever possible) related to the corresponding domain. Please note that whenever tools are adequate for secondary school, Relevant Indicators referring to primary school and age range can be adapted to secondary as well;</li></ul><p>&nbsp;</p><ul><li>A Further Readings section, providing additional resources for users including case studies, theoretical frameworks, ...)</li></ul><p>&nbsp;</p><p>The Inclusive Education Resources and Toolkit is a living document that reflects changing SC policy and strategies on Inclusive Education. It will evolve over time and be updated and reviewed regularly by SC.</p></div><div class=\"row justify-center\"><div class=\"col-lg-8 col-12\"><a href=\"#\"><img class=\"mr-3\" src=\"/frontend/images/world.png\" alt=\"Avatar\" width=\"100%\" height=\"100%\" /></a></div></div><div class=\"row justify-center\"><div class=\"col-lg-8 col-12\"><p class=\"text\">SC works in over 117 countries.This Toolkit cannot reflect the specificity of each local context.Practitioners are thereforen advised to adapt contents and tools to local contexts as wellas reflect existing national guidelines and education policies to guarantee the effectiveness of local Inclusive Education programming.</p></div></div></div></div>', '', NULL, NULL, NULL, NULL, 'es', 1, 1, 1, 1, '2023-01-28 22:21:47', '2023-01-28 22:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `page_menus`
--

CREATE TABLE `page_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_menus`
--

INSERT INTO `page_menus` (`id`, `parent_id`, `name`, `type`, `link`, `slug`, `icon`, `language`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Home', 'main', 'frontend.home', NULL, 'fa fa-home', 'en', 1, 1, 1, 1, '2022-02-01 00:01:02', '2022-03-08 07:56:45'),
(3, NULL, 'مسكن', 'main', 'frontend.home', NULL, NULL, 'ar', 1, 1, 1, 1, '2022-02-01 00:12:14', '2022-02-01 00:12:14'),
(4, NULL, 'ACCESS', 'main', 'frontend.toolkit', 'access', 'YRGr5i7W0rdQy5punVK74ySz54V4n2T4IGuV5sn2.png', 'en', 2, 1, 1, 1, '2022-02-01 00:32:46', '2022-06-02 09:28:45'),
(5, NULL, 'EMOTIONAL AND PSYCHOSOCIAL PROTECTION', 'main', 'frontend.toolkit', 'emotional-and-psychosocial-protection', '66R74WnJZTuOAN10N3DwYTLSTN0PQGOqMHrQz5Tr.png', 'en', 3, 1, 1, 1, '2022-02-01 00:33:30', '2022-06-02 09:32:46'),
(6, NULL, 'PHYSICAL PROTECTION', 'main', 'frontend.toolkit', 'physical-protection', 'AqYqSY32nUZxosNEYD5mwo6p7DVxDdYKxszDHzva.png', 'en', 4, 1, 1, 1, '2022-02-05 21:45:45', '2022-06-02 09:33:12'),
(7, NULL, 'TEACHING AND LEARNING', 'main', 'frontend.toolkit', 'teaching-and-learning', 'XO8ZGKZf0apUyE4hl1BhMasciCyWMO5arx9znNfO.png', 'en', 5, 1, 1, 1, '2022-02-05 21:46:07', '2022-06-02 09:33:54'),
(8, NULL, 'PARENTS AND COMMUNITY', 'main', 'frontend.toolkit', 'parents-and-community', 'Ze4UOAFl44XvyOBaCAz4hc0RLuhenR0WjW7sx47y.png', 'en', 6, 1, 1, 1, '2022-02-05 21:46:27', '2022-06-02 09:34:05'),
(9, NULL, 'SCHOOL LEADERSHIP AND MANAGEMENT', 'main', 'frontend.toolkit', 'school-leadership-and-management', 'YqSQ5c0SwONUZ1UrN3iFYcIACy0AQLOEODcZ4EuL.png', 'en', 7, 1, 1, 1, '2022-02-05 21:46:52', '2022-06-02 09:34:23'),
(10, NULL, 'POLICY & SYSTEMS', 'main', 'frontend.toolkit', 'policy-systems', 'j2ipbwL7mIVNcUEug1RAa0mdozkgbK4ztoGpa8BR.png', 'en', 8, 1, 1, 1, '2022-02-05 21:47:04', '2022-06-02 09:34:53'),
(11, NULL, 'MEAL', 'main', 'frontend.page', 'meal', 'SQxOsIP7snMQbtOiLsSluEoVaudvA4cACuYj0Z8S.png', 'en', 9, 1, 1, 1, '2022-02-05 21:47:13', '2022-06-02 05:36:40'),
(12, NULL, 'Glossary', 'main', 'frontend.page', 'glossary', 'FreUdSSdGjH26RXQCkAuOcaCIQR7zNRgIlKZNJD9.png', 'en', 10, 1, 1, 1, '2022-02-05 21:47:21', '2022-05-10 03:41:00'),
(13, NULL, 'Help', 'main', 'frontend.page', 'help', 'fas fa-hands-helping', 'en', 11, 1, 1, 1, '2022-02-05 21:47:29', '2022-03-08 07:56:15'),
(14, 4, 'What if..?', 'main', 'frontend.toolkit', 'access', NULL, 'en', 1, 1, 1, 1, '2022-02-05 21:48:01', '2022-03-09 03:22:45'),
(15, 4, 'Intersectionality Tips', 'main', 'frontend.toolkit', 'access', NULL, 'en', 22, 1, 1, 1, '2022-02-05 21:48:16', '2022-03-31 08:16:28'),
(16, 4, 'Relevant Indicators', 'main', 'frontend.toolkit', 'access', NULL, 'en', 23, 1, 1, 1, '2022-02-05 21:48:27', '2022-03-06 04:15:44'),
(17, 4, 'Further Reading', 'main', 'frontend.toolkit', 'access', NULL, 'en', 24, 1, 1, 1, '2022-02-05 21:48:42', '2022-03-31 08:16:39'),
(18, 23, 'What If..?', 'main', 'frontend.toolkit', 'emotional-and-psychosocial-protection', NULL, 'en', 1, 1, 1, 1, '2022-03-06 04:28:25', '2022-03-31 08:19:07'),
(19, 5, 'Intersectionality Tips', 'main', 'frontend.toolkit', 'emotional-and-psychosocial-protection', NULL, 'en', 3, 1, 1, 1, '2022-03-06 04:29:30', '2022-03-31 08:21:30'),
(20, 5, 'Relevant Indicators', 'main', 'frontend.toolkit', 'emotional-and-psychosocial-protection', NULL, 'en', 4, 1, 1, 1, '2022-03-06 04:30:29', '2022-03-31 08:21:44'),
(21, 5, 'Further Reading', 'main', 'frontend.toolkit', 'emotional-and-psychosocial-protection', NULL, 'en', 5, 1, 1, 1, '2022-03-06 04:30:53', '2022-03-31 08:21:59'),
(22, 26, 'What if...?', 'main', 'frontend.toolkit', 'physical-protection', NULL, 'en', 1, 1, 1, 1, '2022-03-09 03:27:16', '2022-03-31 10:36:04'),
(23, 5, 'POSITIVE AND RESPECTFUL INTERACTIONS', 'main', 'frontend.toolkit', 'positive-and-respectful-interactions', NULL, 'en', 1, 1, 1, 1, '2022-03-31 08:18:24', '2022-03-31 08:18:24'),
(24, 5, 'SOCIAL AND EMOTIONAL LEARNING', 'main', 'frontend.toolkit', 'social-and-emotional-learning', NULL, 'en', 2, 1, 1, 1, '2022-03-31 08:20:18', '2022-03-31 08:20:18'),
(25, 24, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-03-31 08:20:41', '2022-03-31 08:20:41'),
(26, 6, 'SAFE AND ACCESSIBLE LEARNING SPACES', 'main', 'frontend.toolkit', 'safe-and-accessible-learning-spaces', NULL, 'en', 1, 1, 1, 1, '2022-03-31 10:35:26', '2022-03-31 10:35:26'),
(27, 6, 'WATER, SANITATION AND HYGIENE', 'main', 'frontend.toolkit', 'water-sanitation-and-hygiene', NULL, 'en', 2, 1, 1, 1, '2022-03-31 10:37:09', '2022-03-31 10:37:09'),
(28, 27, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-03-31 10:37:44', '2022-03-31 10:37:44'),
(29, 6, 'HEALTH AND NUTRITION', 'main', 'frontend.toolkit', 'health-and-nutrition', NULL, 'en', 3, 1, 1, 1, '2022-03-31 10:38:05', '2022-03-31 10:38:05'),
(30, 29, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-03-31 10:38:19', '2022-03-31 10:38:19'),
(31, 6, 'SCHOOL SAFETY MANAGEMENT', 'main', 'frontend.toolkit', 'school-safety-management', NULL, 'en', 4, 1, 1, 1, '2022-03-31 10:38:51', '2022-03-31 10:38:51'),
(32, 31, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-03-31 10:39:37', '2022-03-31 10:39:37'),
(33, 6, 'Intersectionality Tips', 'main', 'frontend.toolkit', 'intersectionality-tips', NULL, 'en', 5, 1, 1, 1, '2022-03-31 10:40:06', '2022-03-31 10:40:06'),
(34, 6, 'Relevant Indicators', 'main', 'frontend.toolkit', 'relevant-indicators', NULL, 'en', 6, 1, 1, 1, '2022-03-31 10:40:31', '2022-03-31 10:40:31'),
(35, 6, 'Further Reading', 'main', 'frontend.toolkit', 'further-reading', NULL, 'en', 7, 1, 1, 1, '2022-03-31 10:40:49', '2022-03-31 10:40:49'),
(36, 7, 'TEACHER WELLBEING AND DEVELOPMENT', 'main', 'frontend.toolkit', 'teacher-wellbeing-and-development', NULL, 'en', 1, 1, 1, 1, '2022-04-06 09:33:06', '2022-04-06 09:33:06'),
(37, 36, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-04-06 09:33:49', '2022-04-06 09:33:49'),
(38, 7, 'TEACHING AND LEARNING MATERIALS', 'main', 'frontend.toolkit', 'teaching-and-learning-materials', NULL, 'en', 2, 1, 1, 1, '2022-04-06 09:41:02', '2022-04-06 09:41:02'),
(39, 38, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-04-06 09:41:14', '2022-04-06 09:41:14'),
(40, 7, 'LANGUAGE FOR LEARNING', 'main', 'frontend.toolkit', 'language-for-learning', NULL, 'en', 3, 1, 1, 1, '2022-04-06 09:41:44', '2022-04-06 09:41:44'),
(41, 40, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-04-06 09:41:56', '2022-04-06 09:41:56'),
(42, 7, 'PEDAGOGICAL PRACTICES', 'main', 'frontend.toolkit', 'pedagogical-practices', NULL, 'en', 4, 1, 1, 1, '2022-04-06 09:42:22', '2022-04-06 09:42:22'),
(43, 42, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-04-06 09:42:33', '2022-04-06 09:42:33'),
(44, 7, 'Intersectionality Tips', 'main', 'frontend.toolkit', NULL, NULL, 'en', 6, 1, 1, 1, '2022-04-06 09:42:57', '2022-04-07 03:29:14'),
(45, 7, 'Relevant Indicators', 'main', 'frontend.toolkit', NULL, NULL, 'en', 7, 1, 1, 1, '2022-04-06 09:43:16', '2022-04-07 03:30:05'),
(46, 7, 'Further Reading', 'main', 'frontend.toolkit', NULL, NULL, 'en', 8, 1, 1, 1, '2022-04-06 09:43:31', '2022-04-07 03:29:50'),
(47, 7, 'PLANNING, ASSESSMENT, AND REPORTING', 'main', 'frontend.toolkit', 'planning-assessment-and-reporting', NULL, 'en', 5, 1, 1, 1, '2022-04-07 03:30:58', '2022-04-07 03:30:58'),
(48, 47, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-04-07 03:31:35', '2022-04-07 03:31:35'),
(49, 8, 'CHILD, PARENT AND COMMUNITY PARTICIPATION', 'main', 'frontend.toolkit', 'child-parent-and-community-participation', NULL, 'en', 1, 1, 1, 1, '2022-04-11 06:18:34', '2022-04-11 06:18:34'),
(50, 49, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-04-11 06:18:48', '2022-04-11 06:18:48'),
(51, 8, 'LEARNING AT HOME AND IN THE COMMUNITY', 'main', 'frontend.toolkit', 'learning-at-home-and-in-the-community', NULL, 'en', 2, 1, 1, 1, '2022-04-11 06:19:17', '2022-04-11 06:19:17'),
(52, 51, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-04-11 06:19:33', '2022-04-11 06:19:33'),
(53, 8, 'Intersectionality Tips', 'main', 'frontend.toolkit', 'intersectionality-tips', NULL, 'en', 3, 1, 1, 1, '2022-04-11 06:20:03', '2022-04-11 06:20:03'),
(54, 8, 'Relevant Indicators', 'main', 'frontend.toolkit', 'relevant-indicators', NULL, 'en', 4, 1, 1, 1, '2022-04-11 06:20:31', '2022-04-11 06:20:31'),
(55, 8, 'Further Reading', 'main', 'frontend.toolkit', 'further-reading', NULL, 'en', 5, 1, 1, 1, '2022-04-11 06:20:46', '2022-04-11 06:20:46'),
(56, 9, 'INCLUSION AND PROTECTION POLICIES', 'main', 'frontend.toolkit', 'inclusion-and-protection-policies', NULL, 'en', 1, 1, 1, 1, '2022-05-10 04:10:34', '2022-05-10 04:10:34'),
(57, 56, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-05-10 04:11:10', '2022-05-10 04:11:10'),
(58, 9, 'LEADING SCHOOL LEARNING', 'main', 'frontend.toolkit', 'leading-school-learning', NULL, 'en', 2, 1, 1, 1, '2022-05-10 04:11:50', '2022-05-10 04:11:50'),
(59, 58, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-05-10 04:12:05', '2022-05-10 04:12:05'),
(60, 9, 'SCHOOL MANAGEMENT', 'main', 'frontend.toolkit', 'school-management', NULL, 'en', 3, 1, 1, 1, '2022-05-10 04:12:26', '2022-05-10 04:12:26'),
(61, 60, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-05-10 04:12:42', '2022-05-10 04:12:42'),
(62, 9, 'Intersectionality Tips', 'main', 'frontend.toolkit', 'intersectionality-tips', NULL, 'en', 4, 1, 1, 1, '2022-05-10 04:13:25', '2022-05-10 04:13:25'),
(63, 9, 'Relevant Indicators', 'main', 'frontend.toolkit', 'relevant-indicators', NULL, 'en', 5, 1, 1, 1, '2022-05-10 04:13:52', '2022-05-10 04:13:52'),
(64, 9, 'Further Reading', 'main', 'frontend.toolkit', 'further-reading', NULL, 'en', 6, 1, 1, 1, '2022-05-10 04:14:29', '2022-05-10 04:14:29'),
(65, 10, 'What if...?', 'main', 'frontend.toolkit', 'what-if', NULL, 'en', 1, 1, 1, 1, '2022-05-10 04:15:13', '2022-05-10 04:15:13'),
(66, 10, 'Intersectionality Tips', 'main', 'frontend.toolkit', 'intersectionality-tips', NULL, 'en', 2, 1, 1, 1, '2022-05-10 04:15:29', '2022-05-10 04:15:29'),
(67, 10, 'Relevant Indicators', 'main', 'frontend.toolkit', 'relevant-indicators', NULL, 'en', 3, 1, 1, 1, '2022-05-10 04:15:45', '2022-05-10 04:15:45'),
(68, 10, 'Further Reading', 'main', 'frontend.toolkit', 'further-reading', NULL, 'en', 4, 1, 1, 1, '2022-05-10 04:16:00', '2022-05-10 04:16:00'),
(69, NULL, 'ACCESO', 'main', 'frontend.toolkit', 'acceso', NULL, 'es', 1, 1, 1, 1, '2023-01-26 03:41:07', '2023-01-26 03:55:34'),
(70, 69, '1.1.1 ¿QUÉ PASARÍA SI...?', 'main', 'frontend.toolkit', NULL, NULL, 'es', 1, 1, 1, 1, '2023-01-26 03:42:49', '2023-01-29 01:36:32'),
(71, 69, 'Consejos de interseccionalidad', 'main', 'frontend.toolkit', NULL, NULL, 'es', 2, 1, 1, 1, '2023-01-28 22:45:30', '2023-01-29 01:37:52'),
(72, 69, 'Indicadores relevantes', 'main', 'frontend.toolkit', NULL, NULL, 'es', 3, 1, 1, 1, '2023-01-29 01:55:27', '2023-01-29 01:55:39'),
(73, 69, 'Lecturas adicionales', 'main', 'frontend.toolkit', NULL, NULL, 'es', 4, 1, 1, 1, '2023-01-29 02:06:21', '2023-01-29 02:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relevant_indicators`
--

CREATE TABLE `relevant_indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `toolkit_category_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `chapter` text DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relevant_indicators`
--

INSERT INTO `relevant_indicators` (`id`, `name`, `description`, `toolkit_category_id`, `parent_id`, `chapter`, `language`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(64, 'Increased capacity of educators,  teachers, and parents / caregivers  to support children’s smooth  transition to primary school', NULL, 1, NULL, NULL, 'en', 5, 1, 1, 1, '2022-02-09 04:12:11', '2022-03-08 10:01:23'),
(97, 'Increased access to quality early childhood care and development services for preschool-aged children', NULL, 1, NULL, NULL, 'en', 4, 1, 1, 1, '2022-02-28 02:55:17', '2022-03-08 10:03:50'),
(107, 'Improved outcomes in literacy and  math for primary school students', NULL, 1, NULL, NULL, 'en', 2, 1, 1, 1, '2022-03-08 09:59:17', '2022-03-08 09:59:17'),
(108, NULL, 'Proportion of children of officially primary school-aged who are not enrolled in primary school (disaggregated by gender, disability, depending on the context)', NULL, 107, 'B 1.3', 'en', 1, 1, 1, 1, '2022-03-08 09:59:17', '2022-03-08 09:59:17'),
(109, NULL, 'Proportion of learners progressing to the next grade disaggregated by gender, disability, ethnicity, language, poverty, depending on the context (further disaggregation can be done in relation to the number of the children who have benefited of an IEP)', NULL, 107, 'B 2.2', 'en', 2, 1, 1, 1, '2022-03-08 09:59:17', '2022-03-08 09:59:17'),
(113, NULL, 'Proportion of educators, teachers and parents /caregivers trained to support primary school transition for all', NULL, 64, 'E 1.4', 'en', 1, 1, 1, 1, '2022-03-08 10:01:23', '2022-03-08 10:01:23'),
(114, NULL, 'Programs, activities, materials developed for transition to primary school', NULL, 64, 'E 1.5', 'en', 2, 1, 1, 1, '2022-03-08 10:01:23', '2022-03-08 10:01:23'),
(115, 'Primary school students  are taught with appropriate  pedagogical methodologies', NULL, 1, NULL, NULL, 'en', 3, 1, 1, 1, '2022-03-08 10:02:32', '2022-03-08 10:02:32'),
(117, NULL, 'Proportion of preschool-aged children enrolled in an ECCD service (disaggregated by gender, disability, ethnicity, language, poverty depending on the context)', NULL, 97, 'E 1.1', 'en', 1, 1, 1, 1, '2022-03-08 10:03:50', '2022-03-08 10:03:50'),
(118, NULL, 'Proportion of children who are attending an ECCD services (disaggregated by gender, disability, ethnicity, language, poverty, depending on the context)', NULL, 97, 'E 1.2', 'en', 2, 1, 1, 1, '2022-03-08 10:03:50', '2022-03-08 10:03:50'),
(119, NULL, 'Proportion of children in first grade of primary school who benefit from ECCD services during the previous year (disaggregated by gender, disability, ethnicity, language, poverty, depending on the context)', NULL, 97, 'E 1.3', 'en', 3, 1, 1, 1, '2022-03-08 10:03:50', '2022-03-08 10:03:50'),
(120, 'Children and adults are  better able to understand and  manage emotions, set, and  achieve positive goals, feel,  and show empathy for others', NULL, 3, NULL, NULL, 'en', 1, 1, 1, 1, '2022-03-08 10:27:02', '2022-03-08 10:27:02'),
(121, NULL, 'Proportion of teachers trained who apply positive discipline and child rights principles', NULL, 120, 'B 5.1', 'en', 1, 1, 1, 1, '2022-03-08 10:27:02', '2022-03-08 10:27:02'),
(122, NULL, 'Proportion of primary school-aged students in targeted schools experiencing bullying, corporal punishment, harassment, violence, sexual discrimination, and abuse', NULL, 120, 'B 5.2', 'en', 2, 1, 1, 1, '2022-03-08 10:27:02', '2022-03-08 10:27:02'),
(123, 'The school’s human, financial  and physical resources are  effectively managed for the  benefit of children in respect of  inclusive and protective policies', NULL, 3, NULL, NULL, 'en', 2, 1, 1, 1, '2022-03-08 10:28:43', '2022-03-08 10:28:43'),
(124, NULL, 'Proportion of primary schools with teachers\' and school codes of conduct developed and implemented', NULL, 123, 'B 9.1', 'en', 1, 1, 1, 1, '2022-03-08 10:28:43', '2022-03-08 10:28:43'),
(125, NULL, 'Proportion of primary schools that have implemented an effective complaints mechanism', NULL, 123, 'B 9.2', 'en', 2, 1, 1, 1, '2022-03-08 10:28:43', '2022-03-08 10:28:43'),
(126, NULL, 'Proportion of primary schools that have implemented an effective complaints mechanism Increased participation (by XX%) of school leaders in School Management meetings to ensure that human, financial and physical resources are managed to address barriers to access and learning of all children', NULL, 123, 'B 9.3', 'en', 3, 1, 1, 1, '2022-03-08 10:28:43', '2022-03-08 10:28:43'),
(127, 'Improved quality of ECCD services  to promote developmental  and learning outcomes', NULL, 3, NULL, NULL, 'en', 3, 1, 1, 1, '2022-03-08 10:30:07', '2022-03-08 10:30:07'),
(128, NULL, 'Proportion of educators trained in inclusive methodology / social emotional learning foundations/ Ready to Learn CA / child-centered methods / positive discipline methods for ECCD services', NULL, 127, 'E 5.3', 'en', 1, 1, 1, 1, '2022-03-08 10:30:07', '2022-03-08 10:30:07'),
(129, NULL, 'Proportion of educators who apply inclusive methodology / Ready to Learn CA / Child-centered methods / positive discipline methods in ECCD services', NULL, 127, 'E 5.1', 'en', 2, 1, 1, 1, '2022-03-08 10:30:07', '2022-03-08 10:30:07'),
(130, 'Improved outcomes in literacy and  math for primary school students  in grade 2 and 3 in target area', NULL, 3, NULL, NULL, 'en', 4, 1, 1, 1, '2022-03-08 10:31:15', '2022-03-08 10:31:15'),
(131, NULL, 'Proportion of students in grade 2 or 3 of primary school achieving at least a minimum proficiency level in literacy and numeracy skills (Measured by LB assessment, NB assessment, national learning assessments, summative assessment, etc.) disaggregated by gender, disability, ethnicity, language, poverty, depending on the context (further disaggregation can be done in relation whether the child has an IEP or not)', NULL, 130, 'B 2.1', 'en', 1, 1, 1, 1, '2022-03-08 10:31:15', '2022-03-08 10:31:15'),
(132, 'Improved psychosocial support for  victims of gender-based violence', NULL, 3, NULL, NULL, 'en', 5, 1, 1, 1, '2022-03-08 10:32:03', '2022-03-08 10:32:03'),
(133, NULL, 'Proportion of services offering psychological support for victims of gender-based violence in ECCD/ primary/ secondary schools', NULL, 132, 'G 1.2', 'en', 1, 1, 1, 1, '2022-03-08 10:32:03', '2022-07-03 07:43:18'),
(134, NULL, 'Proportion of trained teachers using inclusive materials which are age-appropriate, diversified and relevant to all children’s learning needs and abilities', NULL, 115, 'B 7.4', 'en', 1, 1, 1, 1, '2022-03-28 09:10:47', '2022-03-28 09:10:47'),
(138, 'Improved quality of ECCD services  to promote developmental  and learning outcomes.', NULL, 1, NULL, NULL, 'en', 6, 1, 1, 1, '2022-03-28 09:18:45', '2022-03-28 09:20:13'),
(140, NULL, 'Proportion of educators using inclusive playing and learning materials adapted to support all children’s learning needs and abilities', NULL, 138, 'E 5.5', 'en', 1, 1, 1, 1, '2022-03-28 09:20:13', '2022-03-28 09:20:13'),
(141, 'Decrease in the number of  female students drop out', NULL, 1, NULL, NULL, 'en', 7, 1, 1, 1, '2022-03-28 09:21:20', '2022-03-28 09:21:20'),
(142, NULL, 'Proportion of female ECCD/primary/secondary school-aged children enrolled in ECCD/ primary school / secondary (select the most appropriate for your program)', NULL, 141, 'G 1.1', 'en', 1, 1, 1, 1, '2022-03-28 09:21:20', '2022-03-28 09:21:20'),
(158, 'Increased access to quality basic  education for primary school-aged children in target area', NULL, 1, NULL, NULL, 'en', 1, 1, 1, 1, '2022-03-30 04:24:44', '2022-07-04 05:32:54'),
(159, NULL, 'Proportion of primary school-aged children enrolled in \r\nprimary school (disaggregated by gender, disability, ethnicity, language, poverty, depending on the context)', NULL, 158, 'B 1.1', 'en', 1, 1, 1, 1, '2022-03-30 04:24:44', '2022-03-30 04:24:44'),
(160, NULL, 'Proportion of primary school students who regularly attend primary school (disaggregated by gender, disability, ethnicity, language, poverty, depending on the context)', NULL, 158, 'B 1.2', 'en', 2, 1, 1, 1, '2022-03-30 04:24:44', '2022-03-30 04:24:44'),
(161, 'Improved quality standards of  primary school learning environment  for holistic child development', NULL, 8, NULL, NULL, 'en', 1, 1, 1, 1, '2022-04-03 08:18:15', '2022-04-03 08:18:15'),
(163, NULL, 'Proportion of primary schools that are safe and physically accessible for all', NULL, 161, 'B 6.1', 'en', 1, 1, 1, 1, '2022-04-03 08:21:11', '2022-04-03 08:21:11'),
(164, NULL, 'Proportion of primary school-aged students who have access to primary schools with adequate water, sanitation, and hygiene facilities', NULL, 161, 'B 6.2', 'en', 2, 1, 1, 1, '2022-04-03 08:21:11', '2022-04-03 08:21:11'),
(165, NULL, 'Proportion of schools with improved structural conditions to ensure safe and equal access of all primary school-aged children', NULL, 161, 'B 6.3', 'en', 3, 1, 1, 1, '2022-04-03 08:21:11', '2022-04-03 08:21:11'),
(166, NULL, 'Proportion of primary school-aged students who have access to safe and physically accessible primary schools supporting good health and nutrition', NULL, 161, 'B 6.4', 'en', 4, 1, 1, 1, '2022-04-03 08:21:11', '2022-04-03 08:21:11'),
(167, NULL, 'Proportion of schools with inclusive preparedness plans for ongoing risk reduction and response-preparedness activities for hazards and threats inside and outside the schools in place', NULL, 161, 'B 6.5', 'en', 5, 1, 1, 1, '2022-04-03 08:21:11', '2022-04-03 08:21:11'),
(168, 'The school’s human, financial  and physical resources are  effectively managed for the  benefit of children in respect of  inclusive and protective policies.', NULL, 8, NULL, NULL, 'en', 2, 1, 1, 1, '2022-04-03 08:32:05', '2022-04-03 08:33:50'),
(171, NULL, 'Increased participation (by XX%) of school leaders in \r\nSchool Management meetings to ensure that human, financial and physical resources are managed to address barriers to access and learning of all children', NULL, 168, 'B 9.3', 'en', 1, 1, 1, 1, '2022-04-03 08:34:14', '2022-04-03 08:34:14'),
(172, 'Improved quality standards of ECCD  services learning environment', NULL, 8, NULL, NULL, 'en', 3, 1, 1, 1, '2022-04-03 08:38:43', '2022-04-03 08:38:43'),
(173, NULL, 'Proportion of ECCD centers that are safe and accessible for all (according to standards)', NULL, 172, 'E 4.1', 'en', 1, 1, 1, 1, '2022-04-03 08:38:43', '2022-04-03 08:38:43'),
(174, NULL, 'Proportion of ECCD centers with adequate water, sanitation, and hygiene facilities', NULL, 172, 'E 4.2', 'en', 2, 1, 1, 1, '2022-04-03 08:38:43', '2022-04-03 08:38:43'),
(175, 'Improved psychosocial support for victims of gender-based violence', NULL, 8, NULL, NULL, 'en', 4, 1, 1, 1, '2022-04-03 08:43:15', '2022-04-03 08:44:53'),
(181, NULL, 'Proportion of ECCD centers supporting good health and nutrition', NULL, 175, 'E 4.3', 'en', 1, 1, 1, 1, '2022-04-03 08:48:04', '2022-04-03 08:48:04'),
(182, NULL, 'CCD Proportion of ECCD centers providing a) regular screening and b) health intervention (necessary vaccinations, deworming, physical exam, medication for common illness) to children', NULL, 175, 'E 4.4', 'en', 2, 1, 1, 1, '2022-04-03 08:48:04', '2022-04-03 08:48:04'),
(183, NULL, 'Proportion of ECCD centers providing a.) assistive devices or b.) referral to dedicated services', NULL, 175, 'E 4.4 Inclusive', 'en', 3, 1, 1, 1, '2022-04-03 08:48:04', '2022-04-03 08:48:04'),
(184, 'Decrease in the number of female students drop out', NULL, 8, NULL, NULL, 'en', 5, 1, 1, 1, '2022-04-03 08:50:23', '2022-04-03 08:51:56'),
(187, NULL, 'Proportion of female ECCD/primary/secondary school-aged children enrolled in ECCD/ primary school / secondary (select the most appropriate for your program)', NULL, 184, 'G 1.1', 'en', 1, 1, 1, 1, '2022-04-03 08:51:56', '2022-04-03 08:51:56'),
(188, 'Improved quality of WASH facilities  and services for female students', NULL, 8, NULL, NULL, 'en', 6, 1, 1, 1, '2022-04-03 08:52:53', '2022-04-03 08:52:53'),
(189, NULL, 'Proportion of safe disposals for feminine hygiene products', NULL, 188, 'G 1.3', 'en', 1, 1, 1, 1, '2022-04-03 08:52:53', '2022-04-03 08:52:53'),
(190, 'Improved teacher\'s  wellbeing, motivation, and  professional development', NULL, 17, NULL, NULL, 'en', 1, 1, 1, 1, '2022-04-11 04:56:32', '2022-04-11 04:56:32'),
(191, NULL, 'Number and proportion of teachers who demonstrate one or more levels of improvement against agreed competencies (disaggregated by gender, age, ethnicity, religion, disability)', NULL, 190, 'B 7.1', 'en', 1, 1, 1, 1, '2022-04-11 04:56:32', '2022-04-11 04:56:32'),
(192, NULL, 'Number and proportion of teachers reporting that their occupational wellbeing needs are met', NULL, 190, 'B 7.9', 'en', 2, 1, 1, 1, '2022-04-11 04:56:32', '2022-04-11 04:56:32'),
(193, NULL, 'Number and proportion of teachers reporting that they are consistently motivated to their job', NULL, 190, 'B 7.3', 'en', 3, 1, 1, 1, '2022-04-11 04:56:32', '2022-04-11 04:56:32'),
(196, 'Improved outcomes in literacy and math for primary school students in grade 2 and 3 in target area', NULL, 17, NULL, NULL, 'en', 2, 1, 1, 1, '2022-04-17 08:26:14', '2022-04-17 08:26:14'),
(197, NULL, 'Proportion of students in grade 2 or 3 of primary school achieving at least a minimum proficiency level in literacy and numeracy skills (Measured by LB assessment, NB assessment, national learning assessments, summative assessment, etc.) disaggregated by gender, disability, ethnicity, language, poverty, depending on the context (further disaggregation can be done in relation whether the child has an IEP or not)', NULL, 196, 'B 2.1.', 'en', 1, 1, 1, 1, '2022-04-17 08:26:14', '2022-04-17 08:26:14'),
(198, 'Primary school students are taught with appropriate pedagogical methodologies', NULL, 17, NULL, NULL, 'en', 3, 1, 1, 1, '2022-04-17 08:28:23', '2022-04-17 08:28:23'),
(199, NULL, 'Proportion of teachers using age-appropriate and gender-sensitive learning materials to support children’s learning process', NULL, 198, 'B 7.4', 'en', 1, 1, 1, 1, '2022-04-17 08:28:23', '2022-04-17 08:28:23'),
(200, NULL, 'Proportion of trained teachers using inclusive materials which are age-appropriate, diversified, and relevant to all children’s learning needs and abilities', NULL, 198, 'B 7.4 Inclusive', 'en', 2, 1, 1, 1, '2022-04-17 08:28:23', '2022-04-17 08:28:23'),
(201, 'Improved quality standards of ECCD services learning environment', NULL, 17, NULL, NULL, 'en', 4, 1, 1, 1, '2022-04-17 08:30:53', '2022-04-17 08:30:53'),
(202, NULL, 'Proportion of students with increased access to age-appropriate reading materials', NULL, 201, 'B 7.5', 'en', 1, 1, 1, 1, '2022-04-17 08:30:53', '2022-04-17 08:30:53'),
(203, NULL, 'Proportion of students with individual educational needs with increased access to age-appropriate reading materials', NULL, 201, 'B 7.5 Inclusive', 'en', 2, 1, 1, 1, '2022-04-17 08:30:53', '2022-04-17 08:30:53'),
(204, 'Improved psychosocial support for  victims of gender-based violence.', NULL, 17, NULL, NULL, 'en', 5, 1, 1, 1, '2022-04-18 07:56:09', '2022-04-18 07:57:21'),
(205, NULL, 'Proportion of teachers trained in appropriate pedagogical practices (inclusive methodologies/positive discipline/child-centered methods/LB-CA, NB-CA)', NULL, 204, 'B 7.7', 'en', 1, 1, 1, 1, '2022-04-18 07:56:09', '2022-04-18 08:22:12'),
(206, NULL, 'Proportion of teachers who apply appropriate pedagogical practices who have improved their knowledge (inclusive methodologies/ positive discipline/child-centered methods/LB-CA, NB-CA)', NULL, 204, 'B 7.8', 'en', 2, 1, 1, 1, '2022-04-18 08:22:12', '2022-04-18 08:22:12'),
(207, NULL, 'Proportion of teachers who apply appropriate pedagogical practices (inclusive methodologies/positive discipline/ child-centered methods/LB-CA, NB-CA)', NULL, 204, 'B 7.2', 'en', 3, 1, 1, 1, '2022-04-18 08:22:12', '2022-04-18 08:22:12'),
(208, NULL, 'Proportion of female ECCD/primary/secondary school-aged children enrolled in ECCD/ primary school / secondary (select the most appropriate for your program)', NULL, 204, 'B 7.11', 'en', 4, 1, 1, 1, '2022-04-18 08:32:11', '2022-04-18 08:32:11'),
(209, NULL, 'Proportion of safe disposals for feminine hygiene products', NULL, 204, 'B 7.13', 'en', 5, 1, 1, 1, '2022-04-18 08:32:11', '2022-04-18 08:32:11'),
(210, 'Improved child development  outcomes for preschoolaged children who benefit  from an ECCD service', NULL, 17, NULL, NULL, 'en', 6, 1, 1, 1, '2022-04-18 08:38:04', '2022-04-18 08:38:04'),
(211, NULL, 'Number of children with identified learning difficulties and referred for Disability assessment', NULL, 210, 'E 2.2', 'en', 1, 1, 1, 1, '2022-04-18 08:38:04', '2022-04-18 08:38:04'),
(212, 'Improved quality of ECCD  services to promote developmental  and learning outcomes', NULL, 17, NULL, NULL, 'en', 7, 1, 1, 1, '2022-04-18 08:41:17', '2022-04-18 08:41:17'),
(213, NULL, 'Proportion of educators trained in inclusive methodology / social emotional learning foundations/ Ready To Learn CA / child-centered methods / positive discipline methods for ECCD services', NULL, 212, 'E 5.3', 'en', 1, 1, 1, 1, '2022-04-18 08:41:17', '2022-04-18 08:41:17'),
(214, NULL, 'Proportion of educators using age-appropriate and gender-sensitive playing and learning materials to support children’s development and learning', NULL, 212, 'E 5.5', 'en', 2, 1, 1, 1, '2022-04-18 08:41:17', '2022-04-18 08:41:17'),
(215, NULL, 'Proportion of educators using inclusive playing and learning materials adapted to support all children’s learning needs and abilities', NULL, 212, 'E 5.5 Inclusive', 'en', 3, 1, 1, 1, '2022-04-18 08:41:17', '2022-04-18 08:41:17'),
(216, NULL, 'Proportion of ECCD classes that use children\'s books', NULL, 212, 'E 5.6', 'en', 4, 1, 1, 1, '2022-04-18 08:41:17', '2022-04-18 08:41:17'),
(217, NULL, 'Proportion of ECCD classes that use inclusive children\'s books', NULL, 212, 'E 5.6 Inclusive', 'en', 5, 1, 1, 1, '2022-04-18 08:42:37', '2022-04-18 08:42:37'),
(218, NULL, 'Number of children who have access to children\'s books', NULL, 212, 'E 5.7', 'en', 6, 1, 1, 1, '2022-04-18 08:42:37', '2022-04-18 08:42:37'),
(219, NULL, 'Number of children with individual educational needs/\r\ndisability who have access to children\'s books', NULL, 212, 'E 5.7 Inclusive', 'en', 7, 1, 1, 1, '2022-04-18 08:42:37', '2022-04-18 08:42:37'),
(220, 'Decrease in the number of  female students drop out.', NULL, 17, NULL, NULL, 'en', 8, 1, 1, 1, '2022-04-18 08:46:30', '2022-04-18 08:46:58'),
(221, NULL, 'Proportion of female primary school-aged children enrolled in ECCD/ primary/ secondary schools', NULL, 220, 'G 1.1', 'en', 1, 1, 1, 1, '2022-04-18 08:46:30', '2022-04-18 08:46:30'),
(222, 'Increased gender equality  in teacher\'s recruitment', NULL, 17, NULL, NULL, 'en', 9, 1, 1, 1, '2022-04-18 08:48:04', '2022-04-18 08:48:04'),
(223, NULL, 'Proportion of interventions promoting gender-responsive teacher \r\nrecruitment, conditions of work, training, support, and supervision.', NULL, 222, 'G 1.4', 'en', 1, 1, 1, 1, '2022-04-18 08:48:04', '2022-04-18 08:48:04'),
(224, 'Increased level of inclusiveness  and representativeness of  people with disability within  the school community', NULL, 17, NULL, NULL, 'en', 10, 1, 1, 1, '2022-04-18 08:48:56', '2022-04-18 08:48:56'),
(225, NULL, 'Number of teachers with disabilities who are part of the teaching staff', NULL, 224, 'A 1.1', 'en', 1, 1, 1, 1, '2022-04-18 08:48:56', '2022-04-18 08:48:56'),
(226, 'Improved knowledge, attitudes,  and practices of parents /  caregivers of primary school-aged children and community  members towards education', NULL, 28, NULL, NULL, 'en', 1, 1, 1, 1, '2022-04-21 04:29:08', '2022-04-21 04:29:08'),
(227, NULL, 'Proportion of parents / caregivers trained who have engaged in appropriate activities to stimulate children’s reading and counting at home', NULL, 226, 'B 8.1', 'en', 1, 1, 1, 1, '2022-04-21 04:29:08', '2022-04-21 04:29:08'),
(228, NULL, 'Proportion of primary school-aged children attending school whose parents / caregivers discussed child’s progress with school teachers / participated in school governing body meetings', NULL, 226, 'B 8.2', 'en', 2, 1, 1, 1, '2022-04-21 04:29:08', '2022-04-21 04:29:08'),
(229, NULL, 'Proportion of primary school-aged children attending school who receive help with homework', NULL, 226, 'B 8.3', 'en', 3, 1, 1, 1, '2022-04-21 04:29:08', '2022-04-21 04:29:08'),
(230, NULL, 'Number of PTAs established or strengthened including representation of parents / caregivers of children with individual educational needs / Children with disabilities', NULL, 226, 'B 8.4', 'en', 4, 1, 1, 1, '2022-04-21 04:30:06', '2022-04-21 04:30:06'),
(231, NULL, 'Proportion of communities with inclusive book-banks and active literacy / reading corner', NULL, 226, 'B 8.5 Inclusive', 'en', 5, 1, 1, 1, '2022-04-21 04:30:06', '2022-04-21 04:30:06'),
(232, 'Increased Early Learning  knowledge, attitude, and  practices among parents  / caregivers of preschool-aged children and  community members', NULL, 28, NULL, NULL, 'en', 2, 1, 1, 1, '2022-04-21 04:31:46', '2022-04-21 04:31:46'),
(233, NULL, 'Proportion of parents / caregivers with improved knowledge on Early Learning practices / methods to stimulate children’s development at home', NULL, 232, 'E 6.1', 'en', 1, 1, 1, 1, '2022-04-21 04:31:46', '2022-04-21 04:31:46'),
(234, NULL, 'Proportion of parents / caregivers of preschool-aged children with identified requirements for adapted teaching approaches, who have improved their knowledge on Early Learning practices / methods to support their children\'s learning at home.', NULL, 232, 'E 6.1 Inclusive', 'en', 2, 1, 1, 1, '2022-04-21 04:33:50', '2022-04-21 06:16:57'),
(235, NULL, 'Proportion of ECCD facilitators trained in Ready to Learn at Home activities', NULL, 232, 'E 6.2', 'en', 3, 1, 1, 1, '2022-04-21 04:33:50', '2022-04-21 04:33:50'),
(236, NULL, 'Proportion of ECCD facilitators trained in methods / techniques for children with individual educational needs to stimulate their early learning at home', NULL, 232, 'E 6.2 Inclusive', 'en', 4, 1, 1, 1, '2022-04-21 04:33:50', '2022-04-21 04:33:50'),
(237, NULL, 'Proportion of ECCD facilitators who run monthly sessions for parents / caregivers of Ready to Learn at Home', NULL, 232, 'E 6.3', 'en', 5, 1, 1, 1, '2022-04-21 04:33:50', '2022-04-21 04:33:50'),
(238, NULL, 'Proportion of ECCD facilitators who run monthly sessions for parents / caregivers of preschool-aged children with individual educational needs on methods / techniques to stimulate their early learning at home', NULL, 232, 'E 6.3 Inclusive', 'en', 6, 1, 1, 1, '2022-04-21 05:35:24', '2022-04-21 05:35:24'),
(239, NULL, 'Proportion of parents /caregivers trained in Early Learning basics / RTL at home activities', NULL, 232, 'E 6.4', 'en', 7, 1, 1, 1, '2022-04-21 05:35:24', '2022-04-21 05:35:24'),
(240, NULL, 'w of parents / caregivers of preschool-aged children with individual educational needs trained in methods / techniques to stimulate early learning at home', NULL, 232, 'E 6.4 Inclusive', 'en', 8, 1, 1, 1, '2022-04-21 05:35:24', '2022-04-21 05:35:24'),
(241, 'Increased gender-responsive  data collection', NULL, 28, NULL, NULL, 'en', 3, 1, 1, 1, '2022-04-21 05:36:25', '2022-04-21 05:36:25'),
(242, NULL, 'Proportion of methodologies and approaches targeting female learners’ data', NULL, 241, 'G 1.5', 'en', 1, 1, 1, 1, '2022-04-21 05:36:25', '2022-04-21 05:36:25'),
(243, 'Increased gender, disability,  minorities representation  in PTAs and SMCs', NULL, 28, NULL, NULL, 'en', 4, 1, 1, 1, '2022-04-21 05:36:55', '2022-04-21 05:36:55'),
(244, NULL, 'Proportion of PTAs and SMCs promoting inclusiveness', NULL, 243, 'G 1.6', 'en', 1, 1, 1, 1, '2022-04-21 05:36:55', '2022-04-21 05:36:55'),
(245, 'The school’s human, financial and physical resources are effectively managed for the benefit of children in respect of inclusive and protective policies', NULL, 33, NULL, NULL, 'en', 1, 1, 1, 1, '2022-05-10 06:33:28', '2022-05-10 06:33:28'),
(246, NULL, 'Proportion of primary schools with teachers\' and school codes of conduct developed and implemented', NULL, 245, 'B 9.1', 'en', 1, 1, 1, 1, '2022-05-10 06:33:28', '2022-05-10 06:33:28'),
(247, NULL, 'Proportion of primary schools that have implemented an effective complaints mechanism', NULL, 245, 'B 9.2', 'en', 2, 1, 1, 1, '2022-05-10 06:33:28', '2022-05-10 06:33:28'),
(248, NULL, 'Increased participation (in %) of school leaders in School Management meetings to ensure that human, financial and physical resources are managed to address barriers to access and learning of all children', NULL, 245, 'B 9.3', 'en', 3, 1, 1, 1, '2022-05-10 06:33:28', '2022-05-10 06:33:28'),
(249, 'Improved quality of ECCD services to promote developmental and learning outcomes', NULL, 33, NULL, NULL, 'en', 2, 1, 1, 1, '2022-05-10 06:35:15', '2022-05-10 06:35:15'),
(250, NULL, 'Proportion of ECCD centers that have reduced barriers to access and participation of pre-school children in line with their School Improvement Plans', NULL, 249, 'E 5.8', 'en', 1, 1, 1, 1, '2022-05-10 06:35:15', '2022-05-10 06:35:15'),
(251, 'Policies at national / local level are better able to promote equitable access to quality ECCD services', NULL, 33, NULL, NULL, 'en', 3, 1, 1, 1, '2022-05-10 06:39:53', '2022-05-10 06:39:53'),
(252, NULL, 'Number of national level meetings on RTL and its integration in the national curriculum for policy makers held', NULL, 251, 'E 3.2', 'en', 1, 1, 1, 1, '2022-05-10 06:39:53', '2022-05-10 06:39:53'),
(253, NULL, 'Number of national level meetings conducted with relevant ECCD stakeholders about inclusion and its integration in the national curriculum', NULL, 251, 'E 3.2 Inclusive', 'en', 2, 1, 1, 1, '2022-05-10 06:39:53', '2022-05-10 06:39:53'),
(254, NULL, 'Number of policies asking to promote free and compulsory a) pre-primary b) ECCD services embedded in education policies for all', NULL, 251, 'E 3.5', 'en', 3, 1, 1, 1, '2022-05-10 06:39:53', '2022-05-10 06:39:53'),
(255, NULL, 'Number of policies asking to promote free and compulsory a) pre-primary b) ECCD services embedded in education policies for all', NULL, 251, 'E 3.5', 'en', 4, 1, 1, 1, '2022-05-10 06:39:53', '2022-07-06 09:09:27'),
(256, NULL, 'Number ECCD curriculum is reviewed and opportunities to integrate inclusive lens are identified', NULL, 251, 'E 3.6  Inclusive', 'en', 5, 1, 1, 1, '2022-05-10 06:39:53', '2022-07-06 09:09:27'),
(257, NULL, 'Number ECCD curriculum is reviewed and opportunities to integrate inclusive lens are identified', NULL, 251, 'E 3.6 Inclusive', 'en', 6, 1, 1, 1, '2022-05-10 06:39:53', '2022-05-10 06:39:53'),
(258, 'Increased gender-responsive data collection', NULL, 33, NULL, NULL, 'en', 4, 1, 1, 1, '2022-05-10 06:42:04', '2022-05-10 06:42:04'),
(259, NULL, 'Proportion of methodologies and approaches targeting female learners’ data', NULL, 258, 'G 1.5', 'en', 1, 1, 1, 1, '2022-05-10 06:42:04', '2022-05-10 06:42:04'),
(260, 'Improved safety for female students in school', NULL, 33, NULL, NULL, 'en', 5, 1, 1, 1, '2022-05-10 06:42:58', '2022-05-10 06:42:58'),
(261, NULL, 'Proportion of safety and preventative SRGBV measure', NULL, 260, 'G 1.7', 'en', 1, 1, 1, 1, '2022-05-10 06:42:58', '2022-05-10 06:42:58'),
(262, 'Improved access to distant alternative learning for female students during COVID-19', NULL, 33, NULL, NULL, 'en', 6, 1, 1, 1, '2022-05-10 06:43:54', '2022-05-10 06:43:54'),
(263, NULL, 'Proportion of interventions to ensure female primary students’ access to quality, inclusive, alternative, and distant learning', NULL, 262, 'G 1.8', 'en', 1, 1, 1, 1, '2022-05-10 06:43:54', '2022-05-10 06:43:54'),
(264, 'Policies at national /local level are better able to promote equitable access to quality primary education', NULL, 40, NULL, NULL, 'en', 1, 1, 1, 1, '2022-05-10 08:23:29', '2022-05-10 08:23:29'),
(265, NULL, 'Progress against SC policy and advocacy priorities promoting access to education without discrimination', NULL, 264, 'B 4.1', 'en', 1, 1, 1, 1, '2022-05-10 08:23:29', '2022-05-10 08:23:29'),
(266, NULL, 'Number of advocacy and campaign initiatives for concrete policy measures that promote free and compulsory education for all children in primary school', NULL, 264, 'B 4.3', 'en', 2, 1, 1, 1, '2022-05-10 08:23:29', '2022-05-10 08:23:29'),
(267, NULL, '% of increase of education budgets at municipal / central level for primary education for all children', NULL, 264, 'B 4.2', 'en', 3, 1, 1, 1, '2022-05-10 08:23:29', '2022-05-10 08:23:29'),
(268, NULL, '% of increase of education budgets at municipal / central level for basic education that proactively target excluded and most deprived children (children with disabilities, children with individual educational needs, street children, children of families below poverty line, children from ethnic minority)', NULL, 264, 'B 4.2 Inclusive', 'en', 4, 1, 1, 1, '2022-05-10 08:23:29', '2022-05-10 08:23:29'),
(269, 'Improved knowledge, attitudes, and practices of parents / caregivers of primary school-aged children and community members towards education', NULL, 40, NULL, NULL, 'en', 2, 1, 1, 1, '2022-05-10 08:25:06', '2022-05-10 08:25:06'),
(270, NULL, 'Number of national level meetings on RTL and its integration in the national curriculum for policy makers held', NULL, 269, 'E 3.2', 'en', 1, 1, 1, 1, '2022-05-10 08:25:06', '2022-05-10 08:25:06'),
(271, 'Policies at national / local level are better able to promote equitable access to quality ECCD  services', NULL, 40, NULL, NULL, 'en', 3, 1, 1, 1, '2022-05-10 08:32:42', '2022-05-10 08:35:16'),
(272, NULL, 'Progress against SC Policy and Advocacy priorities promoting free and compulsory a) pre-primary; b) ECCD services for all', NULL, 271, 'E 3.1', 'en', 1, 1, 1, 1, '2022-05-10 08:32:42', '2022-05-10 08:35:41'),
(273, NULL, 'Number of advocacy initiatives / policy briefs promoting free and compulsory inclusive a) pre-primary; b) ECCD services conducted / disseminated /discussed', NULL, 271, 'E 3.3', 'en', 2, 1, 1, 1, '2022-05-10 08:36:06', '2022-05-10 08:36:06'),
(274, NULL, '% of increase of education budgets at municipal / central level for pre-primary and ECCD services for disadvantaged populations', NULL, 271, 'E 3.4', 'en', 3, 1, 1, 1, '2022-05-10 08:36:30', '2022-05-10 08:36:30'),
(275, NULL, '% of increase of education budgets at municipal / central level for ECCD or pre-primary education and most deprived children (children with disabilities, children with individual educational needs, street children, children of families below poverty line, children from ethnic minority)', NULL, 271, 'E 3.4 Inclusive', 'en', 4, 1, 1, 1, '2022-05-10 08:37:04', '2022-05-10 08:37:04'),
(276, 'Increased gender, disability, minorities representation in PTAs and SMCs', NULL, 40, NULL, NULL, 'en', 4, 1, 1, 1, '2022-05-10 08:38:16', '2022-05-10 08:38:16'),
(277, NULL, 'Proportion of PTAs and SMCs promoting inclusiveness', NULL, 276, 'G 1.6', 'en', 1, 1, 1, 1, '2022-05-10 08:38:16', '2022-05-10 08:38:16'),
(278, 'Increased number of girls  with disabilities enrolled  in primary school', NULL, 40, NULL, NULL, 'en', 5, 1, 1, 1, '2022-05-10 08:38:48', '2022-05-10 08:38:48'),
(279, NULL, 'Number of advocacy and campaign initiatives to raise awareness on girls with disabilities right to education', NULL, 278, 'G 1.9', 'en', 1, 1, 1, 1, '2022-05-10 08:38:48', '2022-05-10 08:38:48'),
(284, 'Google', NULL, 40, NULL, NULL, 'en', 1, 1, 1, 1, '2022-08-04 04:55:37', '2022-08-04 04:59:28'),
(285, NULL, 'Google', NULL, 284, '1.1', 'en', 1, 1, 1, 1, '2022-08-04 04:55:37', '2022-08-04 04:57:04'),
(286, NULL, 'Google', NULL, 284, '1.2', 'en', 2, 1, 1, 1, '2022-08-04 04:55:37', '2022-08-04 04:57:04'),
(287, 'Aumento del acceso a servicios de cuidado de la primera infancia y desarrollo para niños y niñas en edad preescolar.', NULL, 44, NULL, NULL, 'es', 1, 1, 1, 1, '2023-01-28 22:35:19', '2023-01-29 01:53:17'),
(288, NULL, 'Proporción de niños y niñas en edad preescolar inscritos en servicios ECCD (desagregados por género, discapacidad, etnia, idioma, pobreza según el contexto)', NULL, 287, 'E 1.1', 'es', 1, 1, 1, 1, '2023-01-28 22:35:19', '2023-01-29 01:53:17'),
(289, NULL, 'Proporción de niños y niñas que asisten a los servicios\r\nde ECCD (desagregados por género, discapacidad,\r\netnia, pobreza según el contexto)', NULL, 287, 'E 1.2', 'es', 2, 1, 1, 1, '2023-01-28 22:35:19', '2023-01-29 01:53:17'),
(290, 'Aumento de la capacidad de educadores, docentes y padres/ cuidadores para apoyar la transición suave a la escuela primaria.', NULL, 44, NULL, NULL, 'es', 2, 1, 1, 1, '2023-01-28 23:04:26', '2023-01-29 01:57:59'),
(291, NULL, 'Proporción de educadores, docentes y padres/cuidadores formados\r\npara apoyar la transición a la escuela primaria para todas y todos', NULL, 290, 'E 1.4', 'es', 1, 1, 1, 1, '2023-01-28 23:04:26', '2023-01-29 01:57:59'),
(292, NULL, 'Programas, actividades y materiales desarrollados\r\npara la transición a la escuela primaria', NULL, 290, 'E 1.5', 'es', 2, 1, 1, 1, '2023-01-28 23:04:26', '2023-01-29 01:57:59'),
(294, NULL, 'Proporción de niños y niñas en primer grado de educación primaria que se benefician de los servicios de ECCD el año anterior (desagregado por género, discapacidad,etnia, idioma, pobreza según el contexto)', NULL, 287, 'E 1.3', 'es', 3, 1, 1, 1, '2023-01-29 01:53:17', '2023-01-29 01:53:17'),
(295, 'Mejoramiento de la calidad de los servicios de ECCD para promover resultados de desarrollo y aprendizaje', NULL, 44, NULL, NULL, 'es', 3, 1, 1, 1, '2023-01-29 01:59:04', '2023-01-29 01:59:04'),
(296, NULL, 'Proporción de educadores que utilizan juegos inclusivos\r\ny materiales de aprendizaje adaptados para apoyar las\r\nnecesidades de aprendizaje y habilidades de niños y niñas', NULL, 295, 'E 5.5 Inclusivo', 'es', 1, 1, 1, 1, '2023-01-29 01:59:04', '2023-01-29 01:59:04'),
(297, 'Aumento del acceso a educación básica de calidad para niños y niñas en edad escolar primaria en el área objetivo', NULL, 44, NULL, NULL, 'es', 4, 1, 1, 1, '2023-01-29 02:00:47', '2023-01-29 02:00:47'),
(298, NULL, 'Proporción de niños y niñas en edad de educación primaria\r\nmatriculados en la escuela primaria (desagregados por género,\r\ndiscapacidad, etnia, idioma, pobreza según el contexto)', NULL, 297, 'B 1.1', 'es', 1, 1, 1, 1, '2023-01-29 02:00:47', '2023-01-29 02:00:47'),
(299, NULL, 'Proporción de estudiantes de educación primaria que acuden\r\nregularmente a la escuela primaria (desagregados por género,\r\ndiscapacidad, etnia, idioma, pobreza según el contexto)', NULL, 297, 'B 1.2', 'es', 2, 1, 1, 1, '2023-01-29 02:00:47', '2023-01-29 02:00:47'),
(300, NULL, 'Proporción de niños y niñas en edad de educación primaria oficial\r\nque no asisten a la escuela de educación primaria (desagregados por\r\ngénero, discapacidad, etnia, idioma, pobreza según el contexto)', NULL, 297, 'B 1.3', 'es', 3, 1, 1, 1, '2023-01-29 02:00:47', '2023-01-29 02:00:47'),
(301, 'Mejoramiento de los resultados de alfabetización y matemáticas de estudiantes de educación primaria', NULL, 44, NULL, NULL, 'es', 5, 1, 1, 1, '2023-01-29 02:02:32', '2023-01-29 02:02:32'),
(302, NULL, 'Proporción de estudiantes que avanzan al siguiente grado\r\ndesagregados por género, discapacidad, etnia, idioma, pobreza\r\nsegún el contexto (se pueden hacer más clasificaciones en relación\r\ncon el número de niños y niñas que se han beneficiado de un IEP)', NULL, 301, 'B 2.2', 'es', 1, 1, 1, 1, '2023-01-29 02:02:32', '2023-01-29 02:02:32'),
(303, 'A los estudiantes de primaria se les enseña con metodologías pedagógicas apropiadas', NULL, 44, NULL, NULL, 'es', 6, 1, 1, 1, '2023-01-29 02:03:26', '2023-01-29 02:03:26'),
(304, NULL, 'Proporción de docentes formados que utilizan material inclusivo\r\napropiado para la edad, diversificado y relevante para las necesidades\r\nde aprendizaje y habilidades de todos los niños y las niñas', NULL, 303, 'B 7.4 Inclusivo', 'es', 1, 1, 1, 1, '2023-01-29 02:03:26', '2023-01-29 02:03:26'),
(305, 'Disminución del número de niñas que abandonan la escuela', NULL, 44, NULL, NULL, 'es', 7, 1, 1, 1, '2023-01-29 02:04:03', '2023-01-29 02:04:03'),
(306, NULL, 'Proporción de niñas en edad escolar de ECCD/escuela\r\nprimaria/ secundaria inscritas en ECCD/escuelas primarias/\r\nsecundarias (seleccione la más apropiada para su programa)', NULL, 305, 'G 1.1', 'es', 1, 1, 1, 1, '2023-01-29 02:04:03', '2023-01-29 02:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `permission` text DEFAULT NULL,
  `actionPermission` text DEFAULT NULL,
  `serial` text DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `parent_id`, `permission`, `actionPermission`, `serial`, `order_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', NULL, '1,2,19,27,3,4,5,6,8,29,28,10,13,20,21,22,23,24,26,25', '50,51,52,53,82,83,84,1,2,3,5,4,6,7,8,10,9,11,12,13,14,30,86,87,88,90,89,85,35,38,39,40,34,41,42,43,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,78,79,80,81,74,75,76,77', '[{\"id\":1,\"parent_id\":null,\"name\":\"Dashboard\",\"link\":\"dashboard.index\",\"icon\":\"fa-home\",\"order_by\":1,\"status\":1,\"created_at\":\"2021-04-25T13:24:30.000000Z\",\"updated_at\":\"2021-11-07T22:56:13.000000Z\",\"children\":[]},{\"id\":2,\"parent_id\":null,\"name\":\"Settings\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":1,\"status\":1,\"created_at\":\"2021-04-25T13:25:23.000000Z\",\"updated_at\":\"2022-01-24T22:51:29.000000Z\",\"children\":[{\"id\":19,\"parent_id\":2,\"name\":\"Editor Draft\",\"link\":\"editorDraft.index\",\"icon\":null,\"order_by\":10,\"status\":1,\"created_at\":\"2022-01-24T22:52:07.000000Z\",\"updated_at\":\"2022-01-24T22:52:07.000000Z\",\"children\":[]},{\"id\":27,\"parent_id\":2,\"name\":\"Country\",\"link\":\"country.index\",\"icon\":null,\"order_by\":11,\"status\":1,\"created_at\":\"2022-07-26T07:17:14.000000Z\",\"updated_at\":\"2022-07-26T07:17:14.000000Z\",\"children\":[]}]},{\"id\":3,\"parent_id\":null,\"name\":\"User Management\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":30,\"status\":1,\"created_at\":\"2021-04-25T13:25:55.000000Z\",\"updated_at\":\"2021-04-25T13:25:55.000000Z\",\"children\":[{\"id\":4,\"parent_id\":3,\"name\":\"Menu\",\"link\":\"menu.index\",\"icon\":null,\"order_by\":31,\"status\":1,\"created_at\":\"2021-04-25T13:26:37.000000Z\",\"updated_at\":\"2021-10-11T22:25:58.000000Z\",\"children\":[]},{\"id\":5,\"parent_id\":3,\"name\":\"Role\",\"link\":\"role.index\",\"icon\":null,\"order_by\":32,\"status\":1,\"created_at\":\"2021-04-25T13:27:10.000000Z\",\"updated_at\":\"2021-10-11T22:26:19.000000Z\",\"children\":[]},{\"id\":6,\"parent_id\":3,\"name\":\"Admin User\",\"link\":\"admin.index\",\"icon\":null,\"order_by\":34,\"status\":1,\"created_at\":\"2021-04-25T13:27:41.000000Z\",\"updated_at\":\"2021-10-11T22:25:46.000000Z\",\"children\":[]}]},{\"id\":8,\"parent_id\":null,\"name\":\"Content\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":40,\"status\":1,\"created_at\":\"2021-04-26T06:02:56.000000Z\",\"updated_at\":\"2021-11-30T21:39:26.000000Z\",\"children\":[{\"id\":28,\"parent_id\":8,\"name\":\"Feedback\",\"link\":\"feedback.index\",\"icon\":null,\"order_by\":null,\"status\":1,\"created_at\":\"2022-08-10T04:18:24.000000Z\",\"updated_at\":\"2022-08-10T04:18:24.000000Z\",\"children\":[]},{\"id\":29,\"parent_id\":8,\"name\":\"User Story\",\"link\":\"story.index\",\"icon\":null,\"order_by\":null,\"status\":1,\"created_at\":\"2022-08-22T06:19:00.000000Z\",\"updated_at\":\"2022-08-22T06:19:00.000000Z\",\"children\":[]},{\"id\":10,\"parent_id\":8,\"name\":\"Pages\",\"link\":\"page.index\",\"icon\":null,\"order_by\":42,\"status\":1,\"created_at\":\"2021-04-26T06:08:35.000000Z\",\"updated_at\":\"2021-11-30T23:21:12.000000Z\",\"children\":[]},{\"id\":13,\"parent_id\":8,\"name\":\"Page Menu\",\"link\":\"page.menu.index\",\"icon\":null,\"order_by\":43,\"status\":1,\"created_at\":\"2021-04-26T06:10:01.000000Z\",\"updated_at\":\"2021-12-01T03:26:51.000000Z\",\"children\":[]},{\"id\":20,\"parent_id\":8,\"name\":\"Tool\",\"link\":\"tool.index\",\"icon\":null,\"order_by\":46,\"status\":1,\"created_at\":\"2022-02-05T23:15:15.000000Z\",\"updated_at\":\"2022-02-05T23:15:35.000000Z\",\"children\":[]},{\"id\":21,\"parent_id\":8,\"name\":\"Toolkit Category\",\"link\":\"toolkit.category.index\",\"icon\":null,\"order_by\":47,\"status\":1,\"created_at\":\"2022-02-07T00:41:56.000000Z\",\"updated_at\":\"2022-02-07T00:48:42.000000Z\",\"children\":[]},{\"id\":22,\"parent_id\":8,\"name\":\"Tool Methodology\",\"link\":\"tool.methodology.index\",\"icon\":null,\"order_by\":48,\"status\":1,\"created_at\":\"2022-02-07T02:02:43.000000Z\",\"updated_at\":\"2022-02-07T02:02:43.000000Z\",\"children\":[]},{\"id\":23,\"parent_id\":8,\"name\":\"Intersectionality Tips\",\"link\":\"intersectionality.tips.index\",\"icon\":null,\"order_by\":49,\"status\":1,\"created_at\":\"2022-02-07T03:57:16.000000Z\",\"updated_at\":\"2022-02-07T03:57:16.000000Z\",\"children\":[]},{\"id\":24,\"parent_id\":8,\"name\":\"Relevant Indicator\",\"link\":\"relevant.indicator.index\",\"icon\":null,\"order_by\":50,\"status\":1,\"created_at\":\"2022-02-07T22:05:49.000000Z\",\"updated_at\":\"2022-02-07T22:05:49.000000Z\",\"children\":[]},{\"id\":26,\"parent_id\":8,\"name\":\"Further Reading\",\"link\":\"further.reading.index\",\"icon\":null,\"order_by\":51,\"status\":1,\"created_at\":\"2022-02-09T21:53:58.000000Z\",\"updated_at\":\"2022-02-09T21:53:58.000000Z\",\"children\":[]},{\"id\":25,\"parent_id\":8,\"name\":\"Toolkit\",\"link\":\"toolkit.index\",\"icon\":null,\"order_by\":53,\"status\":1,\"created_at\":\"2022-02-08T04:20:49.000000Z\",\"updated_at\":\"2022-02-09T21:53:27.000000Z\",\"children\":[]}]}]', 1, 1, '2021-04-26 11:49:47', '2022-08-22 06:23:42'),
(2, 'Admin', NULL, '1,2,27,3,4,5,6,8,29,28,10,13,20,21,22,23,24,26,25', '82,83,84,1,2,3,5,4,6,7,8,10,9,11,12,13,14,30,86,87,88,90,89,85,35,38,39,40,34,41,42,43,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,78,79,80,81,74,75,76,77', '[{\"id\":1,\"parent_id\":null,\"name\":\"Dashboard\",\"link\":\"dashboard.index\",\"icon\":\"fa-home\",\"order_by\":1,\"status\":1,\"created_at\":\"2021-04-25T13:24:30.000000Z\",\"updated_at\":\"2021-11-07T22:56:13.000000Z\",\"children\":[]},{\"id\":2,\"parent_id\":null,\"name\":\"Settings\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":1,\"status\":1,\"created_at\":\"2021-04-25T13:25:23.000000Z\",\"updated_at\":\"2022-01-24T22:51:29.000000Z\",\"children\":[{\"id\":27,\"parent_id\":2,\"name\":\"Country\",\"link\":\"country.index\",\"icon\":null,\"order_by\":11,\"status\":1,\"created_at\":\"2022-07-26T07:17:14.000000Z\",\"updated_at\":\"2022-07-26T07:17:14.000000Z\",\"children\":[]}]},{\"id\":3,\"parent_id\":null,\"name\":\"User Management\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":30,\"status\":1,\"created_at\":\"2021-04-25T13:25:55.000000Z\",\"updated_at\":\"2021-04-25T13:25:55.000000Z\",\"children\":[{\"id\":4,\"parent_id\":3,\"name\":\"Menu\",\"link\":\"menu.index\",\"icon\":null,\"order_by\":31,\"status\":1,\"created_at\":\"2021-04-25T13:26:37.000000Z\",\"updated_at\":\"2021-10-11T22:25:58.000000Z\",\"children\":[]},{\"id\":5,\"parent_id\":3,\"name\":\"Role\",\"link\":\"role.index\",\"icon\":null,\"order_by\":32,\"status\":1,\"created_at\":\"2021-04-25T13:27:10.000000Z\",\"updated_at\":\"2021-10-11T22:26:19.000000Z\",\"children\":[]},{\"id\":6,\"parent_id\":3,\"name\":\"Admin User\",\"link\":\"admin.index\",\"icon\":null,\"order_by\":34,\"status\":1,\"created_at\":\"2021-04-25T13:27:41.000000Z\",\"updated_at\":\"2021-10-11T22:25:46.000000Z\",\"children\":[]}]},{\"id\":8,\"parent_id\":null,\"name\":\"Content\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":40,\"status\":1,\"created_at\":\"2021-04-26T06:02:56.000000Z\",\"updated_at\":\"2021-11-30T21:39:26.000000Z\",\"children\":[{\"id\":28,\"parent_id\":8,\"name\":\"Feedback\",\"link\":\"feedback.index\",\"icon\":null,\"order_by\":null,\"status\":1,\"created_at\":\"2022-08-10T04:18:24.000000Z\",\"updated_at\":\"2022-08-10T04:18:24.000000Z\",\"children\":[]},{\"id\":29,\"parent_id\":8,\"name\":\"User Story\",\"link\":\"story.index\",\"icon\":null,\"order_by\":null,\"status\":1,\"created_at\":\"2022-08-22T06:19:00.000000Z\",\"updated_at\":\"2022-08-22T06:19:00.000000Z\",\"children\":[]},{\"id\":10,\"parent_id\":8,\"name\":\"Pages\",\"link\":\"page.index\",\"icon\":null,\"order_by\":42,\"status\":1,\"created_at\":\"2021-04-26T06:08:35.000000Z\",\"updated_at\":\"2021-11-30T23:21:12.000000Z\",\"children\":[]},{\"id\":13,\"parent_id\":8,\"name\":\"Page Menu\",\"link\":\"page.menu.index\",\"icon\":null,\"order_by\":43,\"status\":1,\"created_at\":\"2021-04-26T06:10:01.000000Z\",\"updated_at\":\"2021-12-01T03:26:51.000000Z\",\"children\":[]},{\"id\":20,\"parent_id\":8,\"name\":\"Tool\",\"link\":\"tool.index\",\"icon\":null,\"order_by\":46,\"status\":1,\"created_at\":\"2022-02-05T23:15:15.000000Z\",\"updated_at\":\"2022-02-05T23:15:35.000000Z\",\"children\":[]},{\"id\":21,\"parent_id\":8,\"name\":\"Toolkit Category\",\"link\":\"toolkit.category.index\",\"icon\":null,\"order_by\":47,\"status\":1,\"created_at\":\"2022-02-07T00:41:56.000000Z\",\"updated_at\":\"2022-02-07T00:48:42.000000Z\",\"children\":[]},{\"id\":22,\"parent_id\":8,\"name\":\"Tool Methodology\",\"link\":\"tool.methodology.index\",\"icon\":null,\"order_by\":48,\"status\":1,\"created_at\":\"2022-02-07T02:02:43.000000Z\",\"updated_at\":\"2022-02-07T02:02:43.000000Z\",\"children\":[]},{\"id\":23,\"parent_id\":8,\"name\":\"Intersectionality Tips\",\"link\":\"intersectionality.tips.index\",\"icon\":null,\"order_by\":49,\"status\":1,\"created_at\":\"2022-02-07T03:57:16.000000Z\",\"updated_at\":\"2022-02-07T03:57:16.000000Z\",\"children\":[]},{\"id\":24,\"parent_id\":8,\"name\":\"Relevant Indicator\",\"link\":\"relevant.indicator.index\",\"icon\":null,\"order_by\":50,\"status\":1,\"created_at\":\"2022-02-07T22:05:49.000000Z\",\"updated_at\":\"2022-02-07T22:05:49.000000Z\",\"children\":[]},{\"id\":26,\"parent_id\":8,\"name\":\"Further Reading\",\"link\":\"further.reading.index\",\"icon\":null,\"order_by\":51,\"status\":1,\"created_at\":\"2022-02-09T21:53:58.000000Z\",\"updated_at\":\"2022-02-09T21:53:58.000000Z\",\"children\":[]},{\"id\":25,\"parent_id\":8,\"name\":\"Toolkit\",\"link\":\"toolkit.index\",\"icon\":null,\"order_by\":53,\"status\":1,\"created_at\":\"2022-02-08T04:20:49.000000Z\",\"updated_at\":\"2022-02-09T21:53:27.000000Z\",\"children\":[]}]}]', 2, 1, '2021-10-25 23:34:34', '2022-09-06 04:44:02'),
(3, 'Manager', NULL, '1,2,9,11,12,15,8,14,10,13', '18,19,20,21,22,23,24,25,26,31,32,33,27,28,29,35,34', '[{\"id\":1,\"parent_id\":null,\"name\":\"Dashboard\",\"link\":\"dashboard.index\",\"icon\":\"fa-home\",\"order_by\":1,\"status\":1,\"created_at\":\"2021-04-25T19:24:30.000000Z\",\"updated_at\":\"2021-11-08T04:56:13.000000Z\",\"children\":[]},{\"id\":2,\"parent_id\":null,\"name\":\"Settings\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":10,\"status\":1,\"created_at\":\"2021-04-25T19:25:23.000000Z\",\"updated_at\":\"2021-04-25T19:25:23.000000Z\",\"children\":[{\"id\":9,\"parent_id\":2,\"name\":\"Division\",\"link\":\"division.index\",\"icon\":null,\"order_by\":1,\"status\":1,\"created_at\":\"2021-04-26T12:04:09.000000Z\",\"updated_at\":\"2021-10-11T05:44:42.000000Z\",\"children\":[]},{\"id\":11,\"parent_id\":2,\"name\":\"District\",\"link\":\"district.index\",\"icon\":null,\"order_by\":4,\"status\":1,\"created_at\":\"2021-04-26T12:09:08.000000Z\",\"updated_at\":\"2021-10-11T06:16:59.000000Z\",\"children\":[]},{\"id\":12,\"parent_id\":2,\"name\":\"Upazila\",\"link\":\"upazila.index\",\"icon\":null,\"order_by\":5,\"status\":1,\"created_at\":\"2021-04-26T12:09:44.000000Z\",\"updated_at\":\"2021-10-12T04:24:42.000000Z\",\"children\":[]},{\"id\":15,\"parent_id\":2,\"name\":\"YouTube\",\"link\":\"youtube.index\",\"icon\":null,\"order_by\":7,\"status\":1,\"created_at\":\"2021-10-21T05:25:39.000000Z\",\"updated_at\":\"2021-10-21T05:25:39.000000Z\",\"children\":[]}]},{\"id\":8,\"parent_id\":null,\"name\":\"Content\",\"link\":\"dashboard.index\",\"icon\":null,\"order_by\":40,\"status\":1,\"created_at\":\"2021-04-26T12:02:56.000000Z\",\"updated_at\":\"2021-12-01T03:39:26.000000Z\",\"children\":[{\"id\":14,\"parent_id\":8,\"name\":\"Category\",\"link\":\"category.index\",\"icon\":null,\"order_by\":6,\"status\":1,\"created_at\":\"2021-10-12T04:25:19.000000Z\",\"updated_at\":\"2021-12-01T03:39:48.000000Z\",\"children\":[]},{\"id\":10,\"parent_id\":8,\"name\":\"Pages\",\"link\":\"page.index\",\"icon\":null,\"order_by\":42,\"status\":1,\"created_at\":\"2021-04-26T12:08:35.000000Z\",\"updated_at\":\"2021-12-01T05:21:12.000000Z\",\"children\":[]},{\"id\":13,\"parent_id\":8,\"name\":\"Page Menu\",\"link\":\"page.menu.index\",\"icon\":null,\"order_by\":43,\"status\":1,\"created_at\":\"2021-04-26T12:10:01.000000Z\",\"updated_at\":\"2021-12-01T09:26:51.000000Z\",\"children\":[]}]}]', 3, 1, '2021-10-25 23:34:47', '2021-12-02 02:15:24'),
(5, 'User', NULL, NULL, NULL, NULL, 4, 1, '2022-08-04 05:31:42', '2022-08-04 05:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `writer_name` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `img_title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `title`, `writer_name`, `image`, `path`, `img_title`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'At nihil quia volupt', 'Amela Page', 'J6MwNG8UaQw5xmqBhOccqW0unawztxiaKr0RUhk8.png', 'public/story/J6MwNG8UaQw5xmqBhOccqW0unawztxiaKr0RUhk8.png', 'Adipisicing iusto nu', '<p>test description&nbsp;</p>', 1, 1, NULL, '2022-08-22 06:24:14', '2022-08-22 06:25:01'),
(2, 'Reprehenderit bland', 'Gary Duke', 'JZmWLIvEW6n84vi60zyGHeTiPXSsqgvKsO43lJ5M.png', 'public/story/JZmWLIvEW6n84vi60zyGHeTiPXSsqgvKsO43lJ5M.png', 'Et esse quibusdam el', '<p>test2</p>', 1, 1, NULL, '2022-08-22 06:24:30', '2022-08-22 06:25:02'),
(3, 'Enim ex ab modi aute', 'Jenna Fisher', 'v72JdYVINVm5WdnnRI4pzVhufxNPSL9EvQvnOclz.png', 'public/story/v72JdYVINVm5WdnnRI4pzVhufxNPSL9EvQvnOclz.png', 'Amet qui beatae ali', '<p>test</p>', 1, 1, NULL, '2022-08-22 06:25:21', '2022-08-22 06:25:32'),
(4, 'In ullamco id nihil', 'Rudyard Rowe', 'zSe1QDulDbOScBuDHLhBQLNU1ljx5H0MW59i6yDY.png', 'public/story/zSe1QDulDbOScBuDHLhBQLNU1ljx5H0MW59i6yDY.png', 'Consequatur ea debit', '<p>test</p>', 1, 1, NULL, '2022-08-22 06:25:56', '2022-08-22 06:25:59'),
(5, 'Pexels-Kristian-thomas test', 'Mahmud khan', 'YQvYNnJXzv5GCwGCL229dJDdLqfJmmqE6TXiAqqD.jpg', 'public/story/YQvYNnJXzv5GCwGCL229dJDdLqfJmmqE6TXiAqqD.jpg', 'Pexels-Kristian-thomas-Image-Title-test', '<p>\"And to achieve this malicious agenda, acting in a most unfortunate and clumsy manner, a false and frivolous complaint has been registered against him by the Islamabad Capital Territory (ICT) police at the behest of the incumbent government,\" it added.</p>\r\n<p>The plea further alleged that the government had decided to \"cross all limits\" to arrest Imran \"under false accusations\" and was \"hell-bent to sort out the petitioner and his party at all costs\".</p>\r\n<p>The government, in an illegal effort to settle a political score, has decided to \"illegally and unlawfully victimise\" the petitioner, it said, adding that the government had registered 17 FIRs against Imran.</p>\r\n<p>It stated that there was \"no likelihood\" of Imran absconding or tampering with prosecution evidence if granted protective bail.</p>\r\n<p>The petitioner has an unblemished track record and has never been implicated in any criminal activity, the plea said, adding that he was ready to join the investigation as and when required.</p>\r\n<p>The petition said that Imran was also ready to furnish a \"solvent surety bond\" when required.</p>\r\n<p>The state was nominated as the respondent in the plea. However, it is not yet clear if the petition has been accepted for hearing.</p>\r\n<p>The plea contended the case was based on \"surmises and conjectures\" and that no evidence was available on record against Imran in connection with the case.</p>\r\n<p>It also contended that there was no \"direct or indirect\" evidence available on record against Imran in the case, which created \"serious doubt in the prosecution story\".</p>\r\n<p>It went on to say that Imran was a respectable citizen and \"a sheer apprehension of his imminent arrest would cause humiliation and unjustified harassment\".</p>', 1, 1, NULL, '2022-08-22 08:22:31', '2022-08-22 08:23:21'),
(6, 'Pecels-Amber-Janssens-test', 'Mahmud khan', 'xiPNK0mzFNnC6kaiuFv2uzTzZ9i2LSSi6OojMnJI.jpg', 'public/story/xiPNK0mzFNnC6kaiuFv2uzTzZ9i2LSSi6OojMnJI.jpg', 'Pecels-Amber-Janssens-Image Title-test', '<div id=\"specs-list\">\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Status</a></td>\r\n<td class=\"nfo\" data-spec=\"status\">Available. Released 2022, March 22</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"6\" scope=\"row\">BODY</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_redmi_k50-11430.php\">Dimensions</a></td>\r\n<td class=\"nfo\" data-spec=\"dimensions\">163.1 x 76.2 x 8.5 mm (6.42 x 3.00 x 0.33 in)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_redmi_k50-11430.php\">Weight</a></td>\r\n<td class=\"nfo\" data-spec=\"weight\">201 g (7.09 oz)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Build</a></td>\r\n<td class=\"nfo\" data-spec=\"build\">Glass front (Gorilla Glass Victus), glass back</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM</a></td>\r\n<td class=\"nfo\" data-spec=\"sim\">Dual SIM (Nano-SIM, dual stand-by)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"bodyother\">IP53, dust and splash resistant</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"5\" scope=\"row\">DISPLAY</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"displaytype\">OLED, 120Hz, Dolby Vision, HDR10+, 1200 nits (peak)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_redmi_k50-11430.php\">Size</a></td>\r\n<td class=\"nfo\" data-spec=\"displaysize\">6.67 inches, 107.4 cm<sup>2</sup><span>&nbsp;</span>(~86.4% screen-to-body ratio)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\">Resolution</a></td>\r\n<td class=\"nfo\" data-spec=\"displayresolution\">1440 x 3200 pixels, 20:9 ratio (~526 ppi density)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=screen-protection\">Protection</a></td>\r\n<td class=\"nfo\" data-spec=\"displayprotection\">Corning Gorilla Glass Victus</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"4\" scope=\"row\">PLATFORM</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=os\">OS</a></td>\r\n<td class=\"nfo\" data-spec=\"os\">Android 12, MIUI 13</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\">Chipset</a></td>\r\n<td class=\"nfo\" data-spec=\"chipset\">MediaTek Dimensity 8100 (5 nm)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\">CPU</a></td>\r\n<td class=\"nfo\" data-spec=\"cpu\">Octa-core (4x2.85 GHz Cortex-A78 &amp; 4x2.0 GHz Cortex-A55)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\">GPU</a></td>\r\n<td class=\"nfo\" data-spec=\"gpu\">Mali-G610</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"5\" scope=\"row\">MEMORY</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\">Card slot</a></td>\r\n<td class=\"nfo\" data-spec=\"memoryslot\">No</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\">Internal</a></td>\r\n<td class=\"nfo\" data-spec=\"internalmemory\">128GB 8GB RAM, 256GB 8GB RAM, 256GB 12GB RAM, 512GB 12GB RAM</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"memoryother\">UFS 3.1</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th class=\"small-line-height\" rowspan=\"4\" scope=\"row\">MAIN CAMERA</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Triple</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1modules\">48 MP, (wide), 1/2\", 0.8&micro;m, PDAF, OIS<br />8 MP, 119˚ (ultrawide)<br />2 MP, f/2.4, (macro)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Features</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1features\">Dual-LED dual-tone flash, HDR, panorama</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Video</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1video\">4K@30fps, 1080p@30/60/120fps, 720p@960fps; gyro-EIS</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th class=\"small-line-height\" rowspan=\"4\" scope=\"row\">SELFIE CAMERA</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Single</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2modules\">20 MP, (wide)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Video</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2video\">1080p@30/120fps</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"3\" scope=\"row\">SOUND</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=loudspeaker\">Loudspeaker</a></td>\r\n<td class=\"nfo\">Yes, with stereo speakers</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=audio-jack\">3.5mm jack</a></td>\r\n<td class=\"nfo\">No</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"optionalother\">24-bit/192kHz audio</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"9\" scope=\"row\">COMMS</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\">WLAN</a></td>\r\n<td class=\"nfo\" data-spec=\"wlan\">Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, hotspot</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\">Bluetooth</a></td>\r\n<td class=\"nfo\" data-spec=\"bluetooth\">5.3, A2DP, LE</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gps\">GPS</a></td>\r\n<td class=\"nfo\" data-spec=\"gps\">Yes, with A-GPS. Up to tri-band: GLONASS (1), BDS (3), GALILEO (2), QZSS (2), NavIC</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=nfc\">NFC</a></td>\r\n<td class=\"nfo\" data-spec=\"nfc\">Yes</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=irda\">Infrared port</a></td>\r\n<td class=\"nfo\">Yes</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=fm-radio\">Radio</a></td>\r\n<td class=\"nfo\" data-spec=\"radio\">No</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=usb\">USB</a></td>\r\n<td class=\"nfo\" data-spec=\"usb\">USB Type-C 2.0, USB On-The-Go</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"9\" scope=\"row\">FEATURES</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\">Sensors</a></td>\r\n<td class=\"nfo\" data-spec=\"sensors\">Fingerprint (side-mounted), accelerometer, gyro, proximity, compass, color spectrum</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"7\" scope=\"row\">BATTERY</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"batdescription1\">Li-Po 5500 mAh, non-removable</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=battery-charging\">Charging</a></td>\r\n<td class=\"nfo\">Fast charging 67W, 80% in 30 min (advertised)<br />Power Delivery 3.0<br />Quick Charge 3+</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"6\" scope=\"row\">MISC</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Colors</a></td>\r\n<td class=\"nfo\" data-spec=\"colors\">Black, Gray, Blue, Green</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=models\">Models</a></td>\r\n<td class=\"nfo\" data-spec=\"models\">22041211AC</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=price\">Price</a></td>\r\n<td class=\"nfo\" data-spec=\"price\">About 340 EUR</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p class=\"note\"><strong>Disclaimer.</strong><span>&nbsp;</span>We can not guarantee that the information on this page is 100% correct.<span>&nbsp;</span><a href=\"https://www.gsmarena.com/glossary.php3?term=data-disclaimer\">Read more</a></p>\r\n<div class=\"article-info-line page-specs light\">\r\n<ul class=\"article-info-meta\">\r\n<li class=\"article-info-meta-link light\"><a href=\"https://www.gsmarena.com/xiaomi_redmi_k50-pictures-11430.php\">PICTURES</a></li>\r\n<li class=\"article-info-meta-link light\"><a href=\"https://www.gsmarena.com/compare.php3?idPhone1=11430\">COMPARE</a></li>\r\n<li class=\"article-info-meta-link light\" title=\"Xiaomi Redmi K50 user reviews and opinions\"><a href=\"https://www.gsmarena.com/xiaomi_redmi_k50-reviews-11430.php\">OPINIONS</a></li>\r\n</ul>\r\n</div>', 1, 1, NULL, '2022-08-22 09:16:48', '2022-08-22 09:18:27'),
(7, 'dzfhzfbvz', 'dfshbzbvz', 'koTTavQv2FaF7id2ZJPpzD9FMsYtSQCER4sL6b0t.jpg', 'public/story/koTTavQv2FaF7id2ZJPpzD9FMsYtSQCER4sL6b0t.jpg', 'zdfcbz', '<div id=\"specs-list\">\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"status\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"article-info-line page-specs light\">dklsjf;lKFOhioJFojFHCX;knZLnsklNCxzkln23nCZ\"LNK\'3knKLZ</div>', 1, 1, 1, '2022-08-22 09:17:57', '2022-08-22 09:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `submit_works`
--

CREATE TABLE `submit_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `post_url` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `points` int(11) NOT NULL,
  `ip` text NOT NULL,
  `status` varchar(20) DEFAULT NULL COMMENT 'Submission, Accept, Not Accepted',
  `user_id` int(11) NOT NULL,
  `verify_date` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submit_works`
--

INSERT INTO `submit_works` (`id`, `asset`, `category_id`, `post_url`, `note`, `points`, `ip`, `status`, `user_id`, `verify_date`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1/350X250/lxUcbvKV4ddxhg5cpg5m3kV9yNIV989yAKr7fT4Q.jpg', 1, 'ddd', 'note', 10, '::1', 'Submission', 1, NULL, 1, 1, '2021-11-07 21:53:20', '2021-11-07 21:53:20'),
(2, '2/350X250/d3vFgptWjmqfOs0ehvN5dGy6a1ejSuD1kuPUqEix.jpg', 1, 'ddd', 'note', 15, '::1', 'Accept', 1, '2021-11-08 03:44:04', 1, 1, '2021-11-07 21:53:40', '2021-11-08 03:44:04'),
(3, '3/350X250/cKBLNisR6Mc895Wum0BttHT235xypVlZk3QVFtwn.jpg', 1, 'ddd', 'note', 0, '::1', 'Not Accepted', 1, '2021-11-08 03:42:36', 1, 1, '2021-11-07 21:53:44', '2021-11-08 03:42:36'),
(4, '3/350X250/cKBLNisR6Mc895Wum0BttHT235xypVlZk3QVFtwn.jpg', 1, 'ddd', 'note', 10, '::1', 'Accept', 3, '2021-11-08 02:59:08', 3, 1, '2021-11-06 21:53:44', '2021-11-08 02:59:08'),
(23, '23/350X250/618a5bb3eac781636457395.jpg', 1, 'https://stackoverflow.com/questions/4837110/how-to-convert-a-base64-string-into-a-bitmap-image-to-show-it-in-a-imageview', 'notes', 0, '::1', 'Submission', 1, NULL, 1, 1, '2021-11-09 11:29:55', '2021-11-09 11:29:56'),
(24, '24/350X250/cm4Ghg2uBw1lDihoWWWb8eXadIUSu7Q4p4KEVx4N.png', 1, 'http://localhost/ct-volunteer/api/documentation', 'note', 0, '::1', 'Submission', 1, NULL, 1, 1, '2021-11-09 11:31:27', '2021-11-09 11:31:27'),
(25, '25/350X250/618b4c2a34bbb1636518954.jpg', 1, 'test.com', 'Something', 0, '::1', 'Submission', 1, NULL, 1, 1, '2021-11-10 04:35:54', '2021-11-10 04:35:54'),
(29, '29/350X578/S8legILZaeIA6PUqPm5e6zqMHTiM3DTLfV2pedwJ.jpg', 1, 'http://localhost/cyberteen/api/documentation', 'dgdf', 0, '::1', 'Submission', 1, NULL, 1, 1, '2021-11-11 04:22:22', '2021-11-11 04:22:23'),
(30, '30/350X467/Br66Op5FoeaMrB3nq7qkIgQ5X0fyg5DgKDrdI71d.jpg', 0, 'http://localhost/cyberteen/api/documentation', 'Note', 0, '192.168.0.103', 'Submission', 1, NULL, 1, 1, '2021-11-11 08:25:31', '2021-11-11 08:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `toolkits`
--

CREATE TABLE `toolkits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `key_step` text DEFAULT NULL,
  `header_name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `toolkit_category_id` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toolkits`
--

INSERT INTO `toolkits` (`id`, `name`, `key_step`, `header_name`, `description`, `toolkit_category_id`, `language`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Issues constraining children from fully participating are not identified & implemented', 'Promote assessments by key stakeholders to identify existing educational barriers (IEH p.43)', NULL, '<p>A comprehensive guide for school management. Includes tools for assessment of several aspects of inclusiveness at school, to be used with students, teachers, and community members.</p>', 2, 'en', 1, 1, 1, 1, '2022-03-08 05:05:55', '2022-03-08 09:40:37'),
(2, 'Access to school learning is not guaranteed for children with different first languages', 'Ensure school leaders and education policy promote the use of bilingual teaching methods (IEH p.9)', 'ENROLLMENT AND RETENTION', '<p>Checklist to assess a school&rsquo;s degree of inclusiveness in teaching languages and methods, pro-integration policies, environment, students&rsquo; well-being.&nbsp;</p>', 2, 'en', 2, 1, 1, 1, '2022-03-08 05:07:37', '2022-04-10 05:37:34'),
(3, 'Attendance  and enrollment  are not  efficiently  tracked', 'When developing  assessment  and data  collection tools,  disaggregate  data according to  who is currently  excluded, how,  and why. (IEH p.12)', NULL, '<p>Guidelines on the System Criteria Framework, a mechanism for analyzing technology tools for tracking and monitoring attendance and enrollment in schools (EAMS). This framework offers a tool to determine the quality and applicability of an EAMS. See Part 2 &ndash; Defining Your Needs and Part 3 &ndash; Systems Criteria Framework.</p>', 2, 'en', 3, 1, 1, 1, '2022-03-08 10:13:39', '2022-03-08 10:13:39'),
(4, 'Children who  are out of  school and  Children who  have dropped  out are not  identified', 'Promote school  mapping  activities,  household visits,  community  support  mechanisms,  and enhance  links with the  health sector', NULL, '<p>Tool and guide to locate children who are out of school and \\ or have dropped out of school.</p>\r\n<p>Recommended to be used in the initial assessment or on-going project monitoring phases, yearly.</p>', 2, 'en', 4, 1, 1, 1, '2022-03-08 10:19:57', '2022-03-08 10:20:38'),
(5, 'The school  social-emotional  environment  of where  violence and  disrespect  prevent  children  from fully  participating  and learning  (e.g., physical  punishment,  bullying) (IE  Handbook  page 20)', 'Employ strategies  and activities to  eliminate bullying  so that schools  are a safe and  welcoming space  for everyone  (IE Handbook  page 20)', NULL, '<p>Administer to primary school children.&nbsp;<br />Use questions 1 and 2 to assess whether a protection system is in place and if teachers are trained properly to ensure positive and respectful interactions among children to prevent and eliminate bullying,</p>', 4, 'en', 1, 1, 1, 1, '2022-03-08 10:43:08', '2022-03-31 08:57:19'),
(6, NULL, 'Ensure a  Safe School  Committee is  in place and  responsible for  the participative  identification  of risks and  the setting  up of plans to  reduce them', NULL, '<p>5-modules action pack on how to set up a Safe School committee to identify risks and design and implement plans.</p>\r\n<p>Please see also<a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\" target=\"_blank\" rel=\"noopener\"> Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach.</a></p>', 4, 'en', 2, 1, 1, 1, '2022-03-08 10:48:08', '2022-03-08 10:48:08'),
(7, 'Children lack  or need reinforcement in  core personal  skills (self-awareness,  self-regulation, social awareness,  positive  communication, determination, and  responsible  decision-making).', 'Ensure teachers  are trained and  equipped in SEL. Ensure all  children can work  autonomously  on their core  life skills', NULL, '<p>Use to promote learners SEL. Series of stand-alone modules composed by check lists, tip sheets and activities, categorized by grade and skills they aim at developing. Student books help children reinforce autonomously their core life skills. Needs adaptation if used in classrooms with students with individual educational needs and/or students with disabilities.</p>', 6, 'en', 1, 1, 1, 1, '2022-03-09 08:01:57', '2022-04-10 05:49:03'),
(8, NULL, 'Ensure all  children  develop their  understanding  and management  of emotions', NULL, '<p>uitable for extracurricular or afterschool activities. See activities 7 to 10 to play with children to help them develop self-awareness.</p>\r\n<p><a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\">Please see also Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 1, 'en', 2, 1, 1, 1, '2022-03-09 08:07:12', '2022-03-09 08:07:12'),
(9, NULL, 'Ensure all  children  develop their  understanding  and management  of emotions', NULL, '<p>Suitable for extracurricular or after-school activities. See activities 7 to 10 to play with children to help them develop self-awareness.</p>\r\n<p><a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\">Please see also Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 6, 'en', 2, 1, 1, 1, '2022-03-09 08:09:48', '2022-07-03 10:09:36'),
(10, 'Schools are  closed due  to COVID 19  pandemic  or other  emergencies', 'Ensure teachers  are trained and  equipped in SEL. Ensure children  can work  autonomously  on their core  life skills.  Ensure continuity  in SEL provision  Train teachers  and children  to understand  Covid-19 and  measures to  safely contain it.', NULL, '<p>Series of stand-alone modules to support distance learning opportunities or complement formal or non-formal education where SEL is not adequately covered by the curriculum.</p>', 6, 'en', 3, 1, 1, 1, '2022-03-09 08:14:19', '2022-03-09 08:14:35'),
(11, 'Children do  not socialize  with one  another,  especially  with  Children with  disabilities  or other at-risk groups', 'Carry out  activities  that improve  children’s SEL  skills in the  classroom.  Provide  opportunities  and activities that  enable children  to engage with  other children', NULL, '<p>A tool for all education settings to promote children&rsquo;s happiness, socialization, and development. Especially important to promote Children with various factors of exclusion inclusion.</p>', 6, 'en', 4, 1, 1, 1, '2022-03-09 08:16:37', '2022-04-10 05:50:26'),
(12, 'EiE planning  does not consider gender  responsiveness and the  risks for GBV  in emergency  contexts', 'Raise awareness  of gender-responsive  psychosocial  support and  social and  emotional  learning options', NULL, '<p>A series of tools and practical guidance that helps practitioners ensure education in emergencies (EiE) interventions and programs are gender-responsive and inclusive. See page 267, Part 2: Gender in EiE capacity analysis for a tool to understand why\\how to assess the gender-responsive technical capacity and competencies required of EiE program managers and education personnel, to ensure EiE initiatives are designed\\planned\\ implemented within an institution and across partners in a gender-responsive manner.</p>', 6, 'en', 5, 1, 1, 1, '2022-03-09 08:19:09', '2022-07-06 05:26:24'),
(13, 'LGBT students do not have  any structured support,  comfort, or  guidance  at school', 'Ensure all school  staff knows  how to be a  supportive ally  for LGBT students  and discuss with  other children  what LGBT  means and  how to accept  other children.', NULL, '<p>Guidelines to understand the need for and create a Safe Space for LGBT students at secondary school to protect them from harassment and bullying and provide them with support. See page 12,</p>\r\n<p><span style=\"text-decoration: underline;\">Support Students When They Come Out to You.</span></p>\r\n<p>&nbsp;</p>', 6, 'en', 6, 1, 1, 1, '2022-03-09 08:21:28', '2022-04-10 05:52:29'),
(14, 'Children drop  out during  transition  between  grades or  between ECCD  to primary or  primary to  secondary  school.', 'Promote  enrollment /  (re-enrollment)  campaigns  (IEH p.21)', NULL, '<p>Diagnostics studies of existing education data collection and management mechanisms in Bangladesh, Kosovo, and Indonesia. See relevant indicators for identification and assessment of Out-of-school Children (OOSC).</p>', 2, 'en', 5, 1, 1, 1, '2022-03-09 09:37:39', '2022-03-09 09:39:35'),
(15, 'Drop-out rate  of children  suffering  discrimination  due to caste  is increasing', 'Develop and  carry out an  integrated child  development  scheme with  members of  the various  castes to create  opportunities of  learning together  and integration  for vulnerable  groups', NULL, '<p>Guidelines to identify those whose education is the most vulnerable in times of emergency and to suggest ways of reducing this vulnerability.</p>\r\n<p>&nbsp;</p>\r\n<p>See page 8, Chapter 2, Complex Vulnerabilities &ndash; 2.1.3 Minority groups / Caste / Ethnicity for tools to reduce caste discrimination at school.</p>', 2, 'en', 6, 1, 1, 1, '2022-03-09 09:39:13', '2022-03-09 09:39:45'),
(16, 'School’s  environment is  not physically*  accessible to  all children *For more  resources,  please  check 3.1', 'Mobilize  community  members around  enrollment  campaigns and  rights-based  awareness raising  (IEH p.24) and  employ universal  design practices  which enable  all children  equal access  to education.', 'PHYSICAL ACCESS AND REMOTE ACCESS', '<p>8 short self-reflection questionnaires designed to provide a picture of the school&rsquo;s inclusiveness focusing on the environment&rsquo;s social, learning, and physical aspects.</p>', 2, 'en', 7, 1, 1, 1, '2022-03-09 09:42:14', '2022-07-04 04:13:06'),
(17, NULL, 'Promote school  mapping  activities,  household visits,  community  support  mechanisms,  and enhance  links with the  health sector', NULL, '<p>Guidelines providing information on the concepts and ways for improving access to infrastructure for persons with disabilities and include good design practices and technical recommendations for the planning and design of accessible building and facilities.</p>', 2, 'en', 17, 1, 1, 1, '2022-03-09 09:44:23', '2022-03-09 09:44:23'),
(18, 'Children with  disabilities  have no access  to educational  online content', 'Ensure learning  materials and  instruction are  fully accessible  to children with  different abilities  (IEH p.31)', NULL, '<p>Policy paper with useful recommendations about accessibility of Information and Communication Technologies (ICT) and social and economic inclusion of persons with disabilities.</p>\r\n<p>See Section 3 Tools and guidance for creating accessible content for tips about: Content structure and layout; Color contrast and graphics; Video accessibility; Online forms accessibility; Conference calls accessibility.</p>', 2, 'en', 8, 1, 1, 1, '2022-03-09 09:46:35', '2022-03-09 09:46:35'),
(19, 'The most  marginalized  children have  no access  to remote  learning during  the COVID-19  (or other  emergency  situations  where EiE is to  be enabled)', 'Raise awareness  on equal  educational rights  for all children  (e.g., through  media). Work with  the government  to improve  implementation  of distance or  online learning.  (IEH p.21)', NULL, '<p>Guide addressing the barriers to learning that the most marginalized and excluded groups of children face. It also recommends interventions to support their inclusion in remote learning and their return to school during the COVID-19 emergency.</p>\r\n<p>See Page 6 Girls; Page 9 Children with Disability; Page 12 Children from low-income families; Page 14 Children living in conflict; Page 16 CAA-FAG; Page 17 Children victims of SGBV; Page 18 Children from ethnic minorities and/or struggling with the language of instruction; Page 19 Children LGBTQIA+.</p>', 2, 'en', 9, 1, 1, 1, '2022-03-09 09:58:36', '2022-04-10 05:40:49'),
(20, 'Distant \\  remote  learning is not  accessible to  all students', 'Ensure learning  materials and  instruction are  fully accessible  to children with  different abilities  (IEH p.31)', NULL, '<p>Tool addressing education in emergencies, with emphasis on the COVID-19 emergency. It gives practical tips to create an inclusive support system for remote learning with regards to both the school and community and system level.</p>', 2, 'en', 10, 1, 1, 1, '2022-03-09 10:00:03', '2022-07-04 05:34:35'),
(21, 'Information  about  economic and  social living  conditions  of children is  insufficient  to ensure  a properly  inclusive  program  design', 'Ensure key  stakeholders,  such as teachers  and caregivers  are actively  involved in  the situational  analysis or needs  assessment  (IEH p. 12)', 'SOCIAL, CULTURAL, AND ECONOMIC BARRIERS', '<p>Series of practical recommendations for equity analysis and research initiative in education. See page 20, Annex One: Sample instrument for collecting equity-relevant data.</p>', 2, 'en', 11, 1, 1, 1, '2022-03-09 10:02:17', '2022-07-04 05:34:02'),
(22, 'The most  deprived  children are  excluded from  participation  and learning  at school', 'Ensure program  design is  inclusive to  address even the  most deprived  children (IEH p.18)', NULL, '<p>Sourcebook with Innovative teaching, learning and assessment approaches through hands-on experiences to promote inclusive education. Each learning unit is equipped with templates and checklists.</p>\r\n<p>See page 1, UNIT 2 Identification of deprived children and case management in IE.</p>', 2, 'en', 12, 1, 1, 1, '2022-03-09 10:04:21', '2022-04-10 05:41:29'),
(23, 'Some families  face economic  barriers  to school  enrolment and  attendance', 'Ensure schools  are inclusive  and enable  all children to  access and  learn at school.  Work with  governments to  ensure schooling  and cost related  to accessing  schools is free  to all children.  Address potential  economic  barriers to  learning. (IEH p.8)', NULL, '<p>Tip-sheet focusing on CVA designed specifically for education outcomes with an emphasis on access. It contains specific information on SC procedures, which is particularly useful in emergency contexts</p>', 2, 'en', 13, 1, 1, 1, '2022-03-09 10:06:13', '2022-03-09 10:06:13'),
(24, NULL, 'Ensure that  teachers are  supportive and  welcoming of  students with  disabilities  (IE Handbook  page 23)', NULL, '<p>Short reference charts on how to avoid discrimination or false/ misleading assessment of impairments and disabilities plus short catalogue of correct and incorrect terminology to use when referring to children with disability.</p>', 4, 'en', 3, 1, 1, 1, '2022-03-31 09:02:02', '2022-03-31 09:02:02'),
(25, NULL, NULL, NULL, '<p>Use for teachers (any grade) training.</p>\r\n<p>Teacher training stand-alone facilitation sections with handouts. See section 2.4. on training teachers in positive interaction; 2.5 on Equity, Equality, and Inclusion.</p>', 4, 'en', 4, 1, 1, 1, '2022-03-31 09:05:34', '2022-04-03 07:40:32'),
(26, NULL, 'Ensure that  teachers have  been trained and  are supported  to incorporate  key inclusive  approaches,  (IE Handbook  page 23)', NULL, '<p>Tip sheet for a correct approach in classroom with children with different types of disability or impairment.</p>', 4, 'en', 5, 1, 1, 1, '2022-03-31 09:11:57', '2022-03-31 09:11:57'),
(27, NULL, NULL, NULL, '<p>Interview guide for overall teacher assessment. See Guiding Principle 1 to assess if teachers are trained to meet the emotional and psychological needs of learners.</p>', 4, 'en', 6, 1, 1, 1, '2022-03-31 09:15:18', '2022-04-03 07:42:04'),
(28, NULL, NULL, NULL, '<p>Series of stand-alone training modules. See <a href=\"https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7BE1CBDC5F-E7D9-4C72-B7D4-F2DC95EB9A70%7D&amp;file=Safe%20Schools%20Action%20Pack%204%20Module%201.docx&amp;action=default&amp;mobileredirect=true&amp;cid=d40ddc83-f5b1-418b-8620-d417d7d4296d\">Module 1: Foundations of Child Rights andw a Safe Learning Environment&nbsp; </a>on child rights and positive learning environment &nbsp;<a href=\"https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7B4C1615C7-AD85-4C66-9D7F-8F2A43F1632A%7D&amp;file=Safe%20Schools%20Action%20Pack%204%20Module%203%20-%20Positive%20Teacher-Student%20Relationships.docx&amp;action=default&amp;mobileredirect=true&amp;cid=5d1b148f-3757-493c-887e-226d096cfe7e\">See Module 3: Building Positive teacher-student relationships Module 4: Violence Awareness (A) </a>and 5 (B) on how to recognize causes and types of violence against children and how to report them.<a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\"> Please see also Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 4, 'en', 7, 1, 1, 1, '2022-03-31 09:20:57', '2022-08-08 10:16:11'),
(29, NULL, 'Ensure that  teachers have  been trained and  are supported  to incorporate  gender sensitive  and inclusive  approaches,  (IE Handbook  page 23)', NULL, '<p>Series of practical tips and resources for teachers to create a classroom environment where all students can work together, understand that individual characteristics make people unique, and learn the values of community, acceptance and respect while building on cultural knowledge.</p>', 4, 'en', 8, 1, 1, 1, '2022-03-31 09:26:31', '2022-04-10 05:44:12'),
(30, NULL, 'A', NULL, '<p>his technical package outlines Save the Children&rsquo;s global theory of change for girls&rsquo; education. It is designed as guidance for girls&rsquo; education programming &amp; advocacy. It is recommended that education staff should use this package to design, review and implement girls&rsquo; education projects and proposals. This package is also helpful for any staff interested in delivering education programs which have positive and transformative outcomes for girls. All staff supporting girls&rsquo; education programs, including senior management, fundraising, policy, and advocacy staff, should support the approach outlined in this technical package.</p>', 1, 'en', 9, 1, 1, 1, '2022-03-31 09:27:57', '2022-03-31 09:27:57'),
(31, NULL, 'Ensure that  Children at risk  of exclusion or  discrimi¬nation  experience  welcoming  attitudes and  behaviors from  teachers, school  staff and peers.  (IE Handbook  page 31)', NULL, '<p>Designed for use in the U.S; needs adaptation for use in other countries. Quick activity guide to make children reflect on access and barriers for every child</p>', 4, 'en', 10, 1, 1, 1, '2022-03-31 09:29:50', '2022-04-03 07:46:57'),
(32, NULL, 'Ensure that  classrooms are  inclusive, child-friendly, caring,  and protective  of all children3 .', NULL, '<p>Assess if and how positive and respectful interactions are carried out in class (see Guiding Principle 1 and 3 checklist).</p>', 1, 'en', 11, 1, 1, 1, '2022-03-31 09:32:06', '2022-03-31 09:32:06'),
(33, NULL, NULL, NULL, '<p>Teacher training stand-alone facilitation sections with handouts. See Module 3 for Protection; Module 4 for Violence-free schools (physical punishment, bullying).</p>', 4, 'en', 12, 1, 1, 1, '2022-03-31 09:34:13', '2022-07-03 08:17:45'),
(34, NULL, NULL, NULL, '<p>Activities and games to conduct with children. See activities 1 to 6 to help children develop positive and respectful interactions among themselves. See activities 11 to 20 to help children recognize and report violence and protect themselves from violence.<a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\"> Please also review Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 4, 'en', 13, 1, 1, 1, '2022-03-31 09:37:17', '2022-04-03 07:52:59'),
(35, NULL, NULL, NULL, '<p>This technical package outlines Save the Children&rsquo;s global theory of change for girls&rsquo; education. It is designed as guidance for girls&rsquo; education programming &amp; advocacy. It is recommended that education staff should use this package to design, review and implement girls&rsquo; education projects and proposals. This package is also helpful for any staff interested in delivering education programs which have positive and transformative outcomes for girls. All staff supporting girls&rsquo; education programs, including senior management, fundraising, policy, and advocacy staff, should support the approach outlined in this technical package.</p>', 4, 'en', 9, 1, 1, 1, '2022-03-31 09:50:07', '2022-04-03 07:45:12'),
(36, NULL, 'Ensure that  classrooms are  inclusive, child-friendly, caring,  and protective  of all children3 .', NULL, '<p>Assess if and how positive and respectful interactions are carried out in class (see Guiding Principle 1 and 3 checklist).</p>', 4, 'en', 11, 1, 1, 1, '2022-03-31 10:07:09', '2022-07-06 05:42:23'),
(37, NULL, NULL, NULL, '<p>Teacher training stand-alone facilitation sections with handouts. See Module 3 for Protection; Module 4 for Violence-free schools (physical punishment, bullying).</p>', 4, 'en', 12, 1, 1, 1, '2022-03-31 10:10:15', '2022-04-03 07:52:04'),
(38, 'The  environment  in the  classroom is  challenging  with children  unable or  unwilling to  engage fully  with their  teachers,  peers, and  lessons.', 'Assess classroom  behavior and  propose actions  to build a positive  and respectful  environment', NULL, '<p>Tool to assess individual children&rsquo;s needs to create more inclusive settings for children with disabilities, girls, multilinguals, culturally different children. It provides you with tips on how to create learning spaces where all children are socially accepted and actively participating in classroom learning.</p>', 4, 'en', 15, 1, 1, 1, '2022-03-31 10:12:51', '2022-03-31 10:12:51'),
(39, 'Students who  identify as  female are  victims of  specific forms  of abuse', 'Establish antibullying and  harassment  committees, and  design strategies  and activities that  encourage girls  to participate  and confront  discriminative  behaviors.', NULL, '<p>A series of tools and practical guidance that helps practitioners ensure education in emergencies (EiE) interventions and programs are gender-responsive and inclusive.</p>\r\n<p>See page 246, 8.1 Gender in EiE preparedness: Coordination and information management for a tool to identify key coordination actions to promote gender equality in education in emergencies.You can adapt this tool to development and non-emergency contexts as well.</p>', 4, 'en', 16, 1, 1, 1, '2022-03-31 10:22:29', '2022-07-03 07:44:03'),
(40, NULL, NULL, NULL, '<p>5-modules action pack on how to set up a Safe School committee to identify risks and design and implement plans to reduce them.</p>\r\n<p>See Activity 9 (Page 30 onwards) to strengthen reporting and referral procedures Please see also <a href=\"https://login.microsoftonline.com/37ef3d19-1651-4452-b761-dc2414bf0416/oauth2/authorize?client_id=00000003-0000-0ff1-ce00-000000000000&amp;response_mode=form_post&amp;protectedtoken=true&amp;response_type=code+id_token&amp;resource=00000003-0000-0ff1-ce00-000000000000&amp;scope=openid&amp;nonce=27E2247B6972A1FD671C0B6E16BAF78EDEBE460FBCE418AE-838AE77F8BA95098FE2032C9FBF2FA1633A44FBF36118C66D881F656ECAE56ED&amp;redirect_uri=https%3a%2f%2fsavethechildren1.sharepoint.com%2f_forms%2fdefault.aspx&amp;state=OD0w&amp;claims=%7b%22id_token%22%3a%7b%22xms_cc%22%3a%7b%22values%22%3a%5b%22CP1%22%5d%7d%7d%7d&amp;wsucxt=1&amp;cobrandid=11bd8083-87e0-41b5-bb78-0bc43c8a8e8a&amp;client-request-id=df1a2fa0-a003-3000-d320-8217d1483428&amp;sso_nonce=AwABAAAAAAACAOz_BAD0_4EWs0hDKr7Egp5QTEd8d2ubwW5ARKtt6oSGl7EHRMs7bp0FIBlxFoJzrgsnBDk7AgkEtgnrxEvHftkKkC1UmsQgAA&amp;mscrid=df1a2fa0-a003-3000-d320-8217d1483428\">Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 4, 'en', 17, 1, 1, 1, '2022-03-31 10:25:28', '2022-07-06 05:23:38'),
(41, 'Children are  victims of  homophobic  and  transphobic  bullying', 'Facilitate trainings  and awareness  raising activities  for school and  education centers  personnel  and students  addressing  existing  prejudices', NULL, '<p>TWorkshop guide for education authorities, school managers and teachers on how to prevent bullying against homosexual and transexual children (in Spanish).</p>', 4, 'en', 18, 1, 1, 1, '2022-03-31 10:28:10', '2022-03-31 10:28:10'),
(42, 'The path/road  to school is  unsafe (IEH  page 14) and/ or the school  is at risk of  attacks on  Education', 'Ensure teachers  know the concept  of attacks on  education, have  the skills to  identify, report,  mitigate their  impacts and can  discuss them in  a child-sensitive  manner. Ensure  schools have  a response  strategy in place  and children and  staff know what  to do in an attack.', NULL, '<p>Use to conduct teacher training.</p>\r\n<p>Series of stand-alone training modules (for self- assessment or workshop facilitation). See Module 10: <a href=\"https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7BB3443151-5FC3-4FD5-B306-859CEB60FBCD%7D&amp;file=Safe%20Schools%20Action%20Pack%204%20Module%2010%20-%20Attacks%20on%20Education.docx&amp;action=default&amp;mobileredirect=true&amp;cid=684dcd5d-f598-4109-ad73-dbb6480794fa\">Attacks on Education.</a></p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://login.microsoftonline.com/37ef3d19-1651-4452-b761-dc2414bf0416/oauth2/authorize?client_id=00000003-0000-0ff1-ce00-000000000000&amp;response_mode=form_post&amp;protectedtoken=true&amp;response_type=code%20id_token&amp;resource=00000003-0000-0ff1-ce00-000000000000&amp;scope=openid&amp;nonce=05C4CF7C78DD21FF3188C5A0B64F9F12BF1F6559E9CAAE30-2A69FFC19B9EDF7C13DC84AE21902D0C4AB91D50740E427470588C2486326CD7&amp;redirect_uri=https%3A%2F%2Fsavethechildren1.sharepoint.com%2F_forms%2Fdefault.aspx&amp;state=OD0w&amp;claims=%7B%22id_token%22%3A%7B%22xms_cc%22%3A%7B%22values%22%3A%5B%22CP1%22%5D%7D%7D%7D&amp;wsucxt=1&amp;cobrandid=11bd8083-87e0-41b5-bb78-0bc43c8a8e8a&amp;client-request-id=b10e30a0-00b6-4000-1371-666542657da8\">Please see also Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 9, 'en', 1, 1, 1, 1, '2022-04-03 09:26:08', '2022-04-03 09:26:42'),
(43, 'School/ECCD  facilities and  environment  are poor:  buildings,  water and  sanitation  facilities,  unsafe and  unhealthy  environments  (IEH page 20)', 'Conduct a  participatory  mapping exercise  with girls, boys,  women, and men  in and around  school and other  learning sites  to identify all  potential risks on  the way to school  and solutions to  address them', NULL, '<p>Use to organize Safe School teams at school level (see also Section 6 &ldquo;School Leadership and Management&rdquo; of this toolkit.</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://login.microsoftonline.com/37ef3d19-1651-4452-b761-dc2414bf0416/oauth2/authorize?client_id=00000003-0000-0ff1-ce00-000000000000&amp;response_mode=form_post&amp;protectedtoken=true&amp;response_type=code%20id_token&amp;resource=00000003-0000-0ff1-ce00-000000000000&amp;scope=openid&amp;nonce=05C4CF7C78DD21FF3188C5A0B64F9F12BF1F6559E9CAAE30-2A69FFC19B9EDF7C13DC84AE21902D0C4AB91D50740E427470588C2486326CD7&amp;redirect_uri=https%3A%2F%2Fsavethechildren1.sharepoint.com%2F_forms%2Fdefault.aspx&amp;state=OD0w&amp;claims=%7B%22id_token%22%3A%7B%22xms_cc%22%3A%7B%22values%22%3A%5B%22CP1%22%5D%7D%7D%7D&amp;wsucxt=1&amp;cobrandid=11bd8083-87e0-41b5-bb78-0bc43c8a8e8a&amp;client-request-id=b10e30a0-00b6-4000-1371-666542657da8\">Please see also Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 9, 'en', 2, 1, 1, 1, '2022-04-03 09:30:09', '2022-04-03 09:30:09'),
(44, NULL, 'Identify and  remove any  physical barriers  that may be  preventing  a child from  accessing the  school/ECCD  building (e.g.,  a building  that does not  have a ramp or  wide enough  doorways for  wheelchairs).', NULL, '<p>Tool for measuring ECCD classroom quality with a focus on learning environments for children aged 3.5 - 6. Useful when combined with evaluations of children&rsquo;s learning and development skills, but not appropriate for classrooms or centers with very young children (0 &ndash; 3 y; for this age range, we suggest you use the <a href=\"https://savethechildren1.sharepoint.com/what/education/ResourceLibrary/MANUAL%20-%20Building%20Brains%20Common%20Approach%20Mar%202020.pdf\">Building Brains Common Approach Manual</a>). See pages 5-6 for assessment of classroom environment and Health and Sanitation.</p>', 9, 'en', 3, 1, 1, 1, '2022-04-04 04:50:55', '2022-04-04 04:50:55'),
(45, NULL, NULL, NULL, '<p>Manual on community-based school construction. It supplements technical guidance on appropriate construction materials and techniques.</p>\r\n<p>See page 12, Section I: Introduction &ndash; Key principles of community-based safer school construction</p>', 9, 'en', 4, 1, 1, 1, '2022-04-04 04:53:56', '2022-04-10 05:54:09'),
(46, NULL, NULL, NULL, '<p>Manual for SC construction programming with globally agreed SC Construction Policies, Benchmark Standards to be interpreted for the local context and Tools and Guidelines.</p>\r\n<p>See page 5, Construction Benchmark Standards and Tools</p>', 9, 'en', 5, 1, 1, 1, '2022-04-04 07:09:24', '2022-04-04 07:09:24'),
(47, NULL, NULL, NULL, '<p>Construction toolkit based on UDL principles.&nbsp;</p>', 9, 'en', 6, 1, 1, 1, '2022-04-04 07:10:51', '2022-04-04 07:10:51'),
(48, NULL, NULL, NULL, '<p>Step-by-step instructions for 8 activities to undertake basic assessment of structural safety of schools and readiness to undertake construction, retrofit or renovation of school facilities.</p>\r\n<p>See page 7, Activity 1: PRELIMINARY RISK ASSESSMENT.</p>\r\n<p>Please see also Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</p>', 9, 'en', 7, 1, 1, 1, '2022-04-04 07:12:29', '2022-04-04 07:12:29'),
(49, NULL, NULL, NULL, '<p>Online open-source design software for building design. Its ease of use makes it fit for participatory design prior to architectural and engineering design.</p>', 9, 'en', 8, 1, 1, 1, '2022-04-04 07:16:38', '2022-04-04 07:16:38'),
(50, 'School or  education  center is not  accessible  and inclusive  for children  with  disabilities', 'Ensure  Accessible  Infrastructure  Universal Design  principles and  standards  are met', NULL, '<p>Instructions for Inclusive Design of buildings and Infrastructure Principles of Universal Design.</p>', 9, 'en', 9, 1, 1, 1, '2022-04-04 07:18:34', '2022-04-04 07:18:34'),
(51, NULL, 'Consider  alternative  approaches,  like a buddy  system to help  the child get to  school or moving  the child’s  classroom to a  more accessible  location. (IEH  page 21)', NULL, '<p>Tool for practical application of inclusive education practices made by 6 booklets with definitions, key words, and activities that teachers and school heads can do by themselves (self-study) to start creating an inclusive, learning-friendly environment (ILFE).</p>', 9, 'en', 10, 1, 1, 1, '2022-04-04 07:20:31', '2022-04-04 07:20:31'),
(52, 'School  buildings or  temporary  learning  spaces  (including  WASH  facilities)  are not  accessible,  protective  and gender-sensitive for  all children  (IEH page 14)', 'Ensure the  learning space  (including  sanitation  facilities and  play area) is  fully accessible  to children  with disabilities  (IEH p.31)', NULL, '<p>Construction manual for low cost, accessible WASH facilities</p>', 11, 'en', 1, 1, 1, 1, '2022-04-04 07:29:50', '2022-04-10 05:55:06'),
(53, NULL, 'Ensure that  classrooms/ schools are  clean, safe  and have  adequate water  and sanitation  facilities  (IEH p.57)', NULL, '<p>Manual for SC construction programming with globally agreed SC Construction Policies, Benchmark Standards to be interpreted for the local context and Tools and Guidelines. See, Section C5 - WASH integration.</p>', 11, 'en', 2, 1, 1, 1, '2022-04-04 07:31:45', '2022-04-04 07:31:45'),
(54, NULL, 'Involve  communities,  local NGOs/DPOs  and government  in improving  infrastructure,  including  sanitation, so it  is safe, clean,  accessible,  and private  for all learners  – including  Children with  Disabilities  (IEH p. 23)', NULL, '<p>Guide for coordination and program teams planning an integrated, participatory process for safe school reopening. See p.12 School-Friendly Safe Back-to-School Checklist. This guide has a COVID-related emergency focus, but can be suitable for development and non-emergency contexts as wel</p>', 11, 'en', 3, 1, 1, 1, '2022-04-04 07:34:14', '2022-04-10 05:56:35'),
(55, 'Schools are  not equipped  with proper  and inclusive  WASH  facilities  and plans', 'Ensure school  management has  information and  knowledge about  WASH and knows  how to involve  the school  community in  the design of  inclusive WASH  systems', NULL, '<p>A comprehensive information package with checklists, practical templates, and practical tips for pupils (posters). See page 24-26 to know how inclusiveness is addressed throughout the whole guide.</p>', 11, 'en', 4, 1, 1, 1, '2022-04-04 07:36:33', '2022-04-04 07:36:33'),
(56, 'Children are  transitioning  back to school  during/after  an emergency  such as  COVID-19  pandemics', 'Ensure  classrooms/ schools are  clean, safe  and have  adequate water  and sanitation  facilities  (IEH p.57)', NULL, '<p>Guide that helps coordination and program teams plan an integrated, participatory process for safe school reopening. See checklist at pages 5-6 on how to ensure proper health, nutrition, &amp; WASH services.</p>\r\n<p>&nbsp;</p>\r\n<p>This guide has a COVID-related emergency focus, but can be suitable for development and non-emergency contexts as well</p>', 11, 'en', 5, 1, 1, 1, '2022-04-04 07:38:52', '2022-04-04 07:38:52'),
(57, 'Children with  disabilities  have no  access  to safe,  inclusive, and  accessible  WASH', 'Ensure children  with disabilities  are correctly  guided through  and taught good  WASH habits', NULL, '<p>Instructional tips and guidance for children with disabilities to teach them good WASH habits. Better if used at quiet times when no one else is around.</p>', 11, 'en', 6, 1, 1, 1, '2022-04-04 07:41:05', '2022-04-04 07:41:05'),
(58, 'Children are  transitioning  back to school  during/after  COVID-19  pandemics', 'Engage the  whole school  community,  including  children and  young people, in  back-to-school  planning and  campaigns using  participatory  methods  (IEH p.29)', NULL, '<p>Guide that helps coordination and program teams plan an integrated, participatory process for safe school reopening.</p>\r\n<p>&nbsp;</p>\r\n<p>See p.5 Before Schools Reopen - Safe Back-to-School Checklist for a detailed checklist on Health, Nutrition and WASH related participatory actions to undertake to ensure a safe transitioning</p>\r\n<p>This guide has a COVID-related emergency focus, but can be suitable for development and non-emergency contexts as well</p>', 13, 'en', 1, 1, 1, 1, '2022-04-04 07:44:38', '2022-04-04 07:44:38'),
(59, 'Some girls  drop out  of school  because  of early  pregnancies  (EiE)', 'Promote  collaborations  with parents  and teachers to  provide special  assistance  for girls who  may face early  pregnancy (e.g.,  guidance on  what to do if they  miss school).  Give girls access  to information  on pregnancy,  personal rights,  and relationships.', NULL, '<p>A series of tools and practical guidance that helps practitioners ensure education in emergencies (EiE) interventions and programs are gender-responsive and inclusive.</p>\r\n<p>See page 291, 8.3 Gender in EiE preparedness: Risk assessment for a tool to understand how to assess risk regarding gender and education in emergencies.</p>', 13, 'en', 2, 1, 1, 1, '2022-04-04 07:47:35', '2022-04-04 07:49:11'),
(60, 'Schools are  in conflict  areas, unsafe  locations,  post-disaster  locations,  humanitarian  emergency  areas or are at  risk of Attacks  on Education,  all of which  makes harder  for children to  access quality  learning (EiE)', 'Ensure school  management has  proper protocols  in place for  response and  safety of children  in front of attacks  on education.', NULL, '<p>14 steps with tools and activities to engage school management in a participatory manner to support the integration of safety and protection into school-based management.</p>\r\n<p>See page 25, Module Three: Reduce Our Risks; Activity 7. Make a Risk-informed School Improvement Plan.</p>\r\n<p><a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\" target=\"_blank\" rel=\"noopener\">Please see also Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 15, 'en', 1, 1, 1, 1, '2022-04-04 08:03:01', '2022-04-04 08:03:01'),
(61, NULL, NULL, NULL, '<p>Guidance and Activity Pack (Comprehensive School Safety, School Disaster Readiness and Resilience Checklist, Risk Assessment Matrix, School Building Safety Checklist, Family Disaster Plan, Drill Scenarios, Drill Preparedness Checklists, Class Status Report Form, Student-Family Reunification Form, Emergency Provisions Checklists).</p>\r\n<p>See page 18, 3. Response Capacity Development.</p>', 15, 'en', 2, 1, 1, 1, '2022-04-04 08:06:12', '2022-04-10 05:57:34'),
(62, NULL, 'Ensure teachers  have the  skills to lead  preparedness  and risk response  activities in  classroom', NULL, '<p>Construction manual for low cost, accessible WASH facilities.</p>', 15, 'en', 3, 1, 1, 1, '2022-04-04 08:08:38', '2022-04-04 08:08:38'),
(63, NULL, 'Ensure that  teachers have  the professional  knowledge and  understanding  of the concept  of attacks on  education; and  the skills to  identify, report,  mitigate the  impact of Attacks  on Education  and can discuss  them in a child-sensitive manner', NULL, '<p>Series of stand-alone training modules (for self- assessment or workshop facilitation) to conduct teacher training.</p>\r\n<p>&nbsp;</p>\r\n<p>See <a href=\"https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7BB3443151-5FC3-4FD5-B306-859CEB60FBCD%7D&amp;file=Safe%20Schools%20Action%20Pack%204%20Module%2010%20-%20Attacks%20on%20Education.docx&amp;action=default&amp;mobileredirect=true&amp;cid=2cf4e02f-d809-4945-a826-76b79f68af3e\">Module 10: Attacks on Education</a> and <a href=\"https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7B4D041AE6-9C47-483E-BEAF-FBA1E7B5056C%7D&amp;file=Safe%20Schools%20Action%20Pack%204%20Module%206%20%E2%80%93%20Risk%20Management%20and%20Safety.docx&amp;action=default&amp;mobileredirect=true&amp;cid=59abd670-987d-453e-9786-5a07b60f441a\">Module 6: Risk Management and Safety</a> to train teachers and head teachers on Risk Management concepts and standard operating procedures.</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\"> Please see also Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 15, 'en', 4, 1, 1, 1, '2022-04-04 08:13:09', '2022-07-06 05:47:44'),
(64, 'Children are  transitioning  back to school  during/after  COVID-19  pandemics  or another  emergency  (EiE)', 'Monitor students’  return by  tracking student\'s  attendance  and absence to  better inform  programmatic  decisions and  mitigate the  negative impact  of COVID-19  (or relevant  emergency)  on schools', NULL, '<p>Guidelines on concrete actions that can be taken at the community and school level to operationalize global policy recommendations.</p>\r\n<p>&nbsp;</p>\r\n<p>Check Annex 2 Absence Management Systems; 4 MHPSS for children as schools reopen; 5 Participatory education and protection continuity planning; 6 Adaptations for camp settings; 8 Advocacy messages continuity planning. This guide has a COVID-related emergency focus, but can be suitable for development and non-emergency contexts as well.</p>', 15, 'en', 5, 1, 1, 1, '2022-04-04 08:15:46', '2022-04-04 08:15:46'),
(65, NULL, NULL, NULL, '<p>Series of Key messages sorted by audience, addressing several aspects of transitioning back to schools after COVID-19. See messages for Students, teachers, and parents. The key messages have a <a href=\"https://savethechildren1.sharepoint.com/what/humanitarian/SCDocuments/Forms/Technical%20Resources.aspx\">user guide</a> for correct implementation</p>', 15, 'en', 6, 1, 1, 1, '2022-04-04 08:18:50', '2022-04-04 08:18:50'),
(66, 'Female  students feel  unsafe going  to school (EiE)', 'Conduct a  participatory risk  mapping exercise  with girls, boys,  women, and men  in and around  school and other  learning sites  to identify all  potential risks  and capacities  and solutions  to mitigate  unsafe travel.', NULL, '<p>A series of tools and practical guidance that helps practitioners ensure education in emergencies (EiE) interventions and programs are gender-responsive and inclusive.</p>\r\n<p>&nbsp;</p>\r\n<p>See tip sheet page 144 in chapter 5.2 Facilities &amp; Services</p>', 15, 'en', 7, 1, 1, 1, '2022-04-04 08:21:28', '2022-04-04 08:21:28'),
(67, 'Practitioners  face  challenges  in measuring  quality in  EiE such as:  absence of  reliable and  real-time  education  data; existing  data focused  on output  level rather  than learning  outcomes;  data available  only at  macro-level', 'Empower  communities  to improve  the quality of  the learning  environment  through a  participatory  process. Employ  community  monitors to  track school and  children’s data.', NULL, '<p>ILET is a 5-step package using assessments for improving learning environments in humanitarian contexts through community participation. ILET offers a set of easy-to-use data collection tools, real-time analysis, and visualization via a user-friendly web-based platform with both mobile and paper data collection features. Collecting data and sharing results with the communities in a timely manner enforces transparency, increases accountability and ownership, and stimulates the creation of local solutions</p>', 15, 'en', 8, 1, 1, 1, '2022-04-04 08:23:23', '2022-04-10 05:59:14'),
(68, 'Girls feel  unsafe during  the journey to  school (EiE)', 'Ensure available  transport options  and the location  of the school do  not put learners  at risk. Mobilize  communities  to improve  road safety  for children,  especially girls.', NULL, '<p>A series of tools and practical guidance that helps practitioners ensure education in emergencies (EiE) interventions and programs are gender-responsive and inclusive.</p>\r\n<p>&nbsp;</p>\r\n<p>See page 142, 5.2 Facilities and services for a series of tips on how to make facilities and services &ndash; including transportation &ndash; more gender-responsive.</p>', 15, 'en', 9, 1, 1, 1, '2022-04-04 08:25:55', '2022-04-04 08:25:55'),
(69, NULL, NULL, NULL, '<p>14 steps with tools and activities to engage school management in a participatory manner to support the integration of safety and protection into school-based management.</p>\r\n<p>See page 23, Module Three: Reduce Our Risks; Activity 6. Identify Further risks in the school community and Activity 7. Make a Risk-informed School Improvement Plan</p>\r\n<p>&nbsp;</p>\r\n<p>Please see also<a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\" target=\"_blank\" rel=\"noopener\"> Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 15, 'en', 10, 1, 1, 1, '2022-04-04 08:29:43', '2022-04-04 08:29:43'),
(70, 'Teachers  are not  confident /  knowledge-able about  practicing  inclusive  education', 'Ensure education  staff receive  professional  training on  inclusive  principles and  techniques  as well as  opportunities to  try new methods  (IEH p.38)', NULL, '<p>4-days\' training workshop about inclusive education and practices of inclusive teaching, including specific accommodations to make for struggling students and students who may have disabilities.</p>', 18, 'en', 1, 1, 1, 1, '2022-04-19 08:55:45', '2022-04-19 08:56:55'),
(71, NULL, NULL, NULL, '<p>Workshop to cover key concepts and relationship between teacher and student well-being, brain science around stress, and practical ways to shape how teachers respond to stress.</p>\r\n<p>Please see also<a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\"> Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 18, 'en', 2, 1, 1, 1, '2022-04-19 08:59:31', '2022-04-19 08:59:31'),
(72, 'Teachers do  not know  inclusive  education  best practices', 'Ensure teachers  have knowledge  about Inclusive  Education.  Assess teachers’  inclusive  education  knowledge  and skills in the  classroom often', NULL, '<p>Sourcebook with Innovative teaching, learning and assessment approaches through hands-on experiences to promote inclusive education. Each learning unit is equipped with templates and checklists.</p>\r\n<p>See page 1, UNIT 1 for a comprehensive introduction to Inclusive Education.</p>', 18, 'en', 3, 1, 1, 1, '2022-04-19 09:04:12', '2022-04-19 09:04:12'),
(73, 'Teachers  need more  professional  support', 'Ensure teachers  have the chance  to share and  reflect on  new ideas  and observe  other teachers  using inclusive  methods.  (IEH p.38)', NULL, '<p>Practical tools to support inclusive education programs in any context. See Step 4: Implementation and Monitoring (p.35) &gt; What you can do to make your implementation and monitoring more inclusive &gt; Implementation: ongoing support to inclusive teachers.</p>', 18, 'en', 5, 1, 1, 1, '2022-04-19 09:06:59', '2022-08-08 08:59:40'),
(74, NULL, 'Teachers  need ongoing  professional  development  such as short  training courses  followed by  monitoring  and coaching.  (IEH p.44)', NULL, '<p>Sourcebook with Innovative teaching, learning and assessment approaches through hands-on experiences to promote inclusive education. Each learning unit is equipped with templates and checklists.</p>\r\n<p>See page 1, UNIT 1 for a comprehensive introduction to Inclusive Education.</p>', 18, 'en', 6, 1, 1, 1, '2022-04-19 09:10:41', '2022-04-19 09:10:41'),
(75, NULL, NULL, NULL, '<p>10 days training. Needs adaptation because it doesn&rsquo;t have an inclusive education focus.</p>', 18, 'en', 4, 1, 1, 1, '2022-04-19 09:12:50', '2022-08-08 09:00:48'),
(76, NULL, 'Ensure Teachers  have access  to professional  development  opportunities.  (IEH p.38)', NULL, '<p>Series of best practices for teachers&rsquo; motivation and development to cope with the teacher crisis to offer good quality teaching and good learning outcomes.</p>', 18, 'en', 7, 1, 1, 1, '2022-04-19 09:16:35', '2022-04-19 09:16:35'),
(77, NULL, NULL, NULL, '<p>See page 13 for tips on how to enable continuous teacher professional development. Please check also ET Foundation of Teaching folder 1: Prepare your classroom for learning; 2: Know and include all your learners; 3: Know your learners\' families and communities; 4: Proactive classroom management; 5: Reactive classroom management; 6: Ensure your learners are protected: Part 1; 7: Ensure your learners are protected: Part 2; 8: Open and close lessons purposefully; 9: Explain the lesson ; 10: Use other resources; 11: Use questions and answers; 12: Use pairs or groups; 13: Use activities; 14: Use pairs or groups; 15: Plan and sequence lessons; 16: Give useful feedback to learners; 17: Assess student learning; 18: Adapt lessons</p>', 18, 'en', 8, 1, 1, 1, '2022-04-19 09:18:29', '2022-04-19 09:18:29'),
(78, NULL, NULL, NULL, '<p>The booklet will show you how to deliver the TPD module on inclusion. It will support the development of teachers&rsquo; skills and employment of strategies in to minimize barriers to learning and create an inclusive classroom</p>', 18, 'en', 9, 1, 1, 1, '2022-04-19 09:22:40', '2022-04-19 09:22:40'),
(79, NULL, NULL, NULL, '<p>The booklet will show you how to deliver the TPD module focused on Girls&rsquo; Education. It will help you supporting teachers in identification of differentiation and gender-responsive strategies to lesson content, tasks, and assessments.</p>', 18, 'en', 10, 1, 1, 1, '2022-04-20 03:05:36', '2022-04-20 03:05:36');
INSERT INTO `toolkits` (`id`, `name`, `key_step`, `header_name`, `description`, `toolkit_category_id`, `language`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(80, 'Teacher  classroom  behaviors do  not change  over time', 'Allow teachers  to work together  to observe each  other’s classes  and provide  feedback as a  ‘critical friend’.  (IEH p.45).  Establish teacher  communities-of-practices  for teachers’  professional  sharing spaces.', NULL, '<p>The self-reflection tool (Annex B &ndash; p.159) allows teachers and school heads to assess the current situation of inclusive education. Inclusive Education.</p>', 18, 'en', 11, 1, 1, 1, '2022-04-20 03:07:56', '2022-04-20 03:07:56'),
(81, NULL, NULL, NULL, '<p>The inclusive teaching checklist addresses inclusion as a crosscutting issue, focusing on teaching practices, allowing teachers to devise individual student plans.</p>', 18, 'en', 12, 1, 1, 1, '2022-04-20 03:10:15', '2022-04-20 03:10:15'),
(82, 'Teachers have  few chances  to share  experiences  with their  peers on IE  best practices', 'Promote the  development  of COPs  (Communities of  Practice), also  known as peer  learning circles. Promote peer-to-peer learning  at school.', NULL, '<p>Tool to implement COPs, whether in presence, online or over the phone, where teachers can share and access information on IE practices, discuss problems, and share experiences.</p>', 18, 'en', 13, 1, 1, 1, '2022-04-20 03:12:40', '2022-04-20 03:12:40'),
(83, NULL, NULL, NULL, '<p>Overview on a specific type of continuous professional development: the Professional Learning Communities also called &lsquo;Peer&rsquo; (PLC) or &lsquo;Teacher&rsquo; Learning Circles (TLC).</p>', 18, 'en', 14, 1, 1, 1, '2022-04-20 03:14:08', '2022-04-20 03:14:08'),
(84, 'Teachers’  skills and  interests are  not taken into  consideration', 'Promote one-to-one check-ins  with teachers and  their mentors\\ school leaders.  Build skills of  school heads  to provide  regular teacher  supervision and  feedback.', NULL, '<p>Teacher professional development tool. Use this tool regularly, in a project&rsquo;s final stages. Adapt the questionnaire to existing national teaching standards, whenever appropriate.</p>', 18, 'en', 15, 1, 1, 1, '2022-04-20 03:16:34', '2022-04-20 03:16:34'),
(85, NULL, NULL, NULL, '<p>A quantitative survey and a qualitative research tool to be used during a teacher situational analysis.</p>', 18, 'en', 16, 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(86, 'Attacks on  education  impede  teachers’  regular  deployment  (EiE)', 'Ensure teachers,  principals,  teacher  educators,  and parents  are trained  on alternative  methods of  classroom  management. (IEH p.20)  and learning  provision.', NULL, '<p>Workshop instructions to develop teachers&rsquo; skills in managing attacks on education, especially in conflict contexts.</p>', 18, 'en', 17, 1, 1, 1, '2022-04-20 03:23:00', '2022-04-20 03:23:00'),
(87, 'The number  of female  teachers is  low (EiE)', 'Promote a  participatory  and transparent  teacher  recruitment  process, based  on selection  criteria reflecting  merit, diversity,  and equity.', NULL, '<p>A series of tools and practical guidance that helps practitioners ensure education in emergency (EiE) interventions and programs are gender-responsive and inclusive.</p>\r\n<p>See page 167 for a checklist of key actions and signposts to resources for gender-responsive teacher recruitment, conditions of work, training, support, and supervision.</p>', 18, 'en', 18, 1, 1, 1, '2022-04-20 05:33:35', '2022-04-20 05:33:35'),
(88, NULL, NULL, NULL, '<p>Two case studies (Afghanistan and Sierra Leone) addressing specific barriers to access Teacher Training Colleges (TTC) to ensure more equitable access to formal accreditation</p>', 18, 'en', 19, 1, 1, 1, '2022-04-20 05:35:05', '2022-04-20 05:35:05'),
(89, 'Teachers do  not know how  to engage  with CwDs  in crisis  contexts (EiE)', 'Ensure teachers  know how to  support children  with disabilities’  oppositional  coping strategies', NULL, '<p>A guide for workshop facilitators covering learning disabilities and why it is crucial to support learners with learning disabilities. It includes tools and assessment guidance.</p>', 18, 'en', 20, 1, 1, 1, '2022-04-20 05:36:46', '2022-04-20 05:36:46'),
(90, 'Children have  difficulties  reading  standard  reading  materials', 'Give  opportunities  for learners  to present  and practice  language in  different ways  and in different  senses. (IEH p.55) Ensure teachers,  staff, publishers,  and community  book creators  can develop  reading materials  that are  accessible for as  many children  as possible  (IEH p.18)', NULL, '<p>A guide for modifying reading materials and reading instructional tips for children who have difficulty using standard reading materials</p>', 20, 'en', 1, 1, 1, 1, '2022-04-20 05:54:43', '2022-04-20 05:54:43'),
(91, 'Teachers have  not the ability  to assess  why children  cannot follow  instructions  (e.g.,  screening tool  for physical,  cognitive  impairment,  learning  disability)', 'Create  stakeholder  awareness  of children  especially  vulnerable to  bullying or abuse,  such as those  from minorities  or children with  disabilities.  (IEH p.20).', NULL, '<p>Sri Lanka SNAP version. User-friendly Prescreening tool to identify environmental and physical factors that could impede children&rsquo;s progress in learning to read in three categories: attendance, home environment and health.</p>', 20, 'en', 2, 1, 1, 1, '2022-04-20 05:59:39', '2022-04-20 05:59:39'),
(92, NULL, 'Ensure teachers  understand  individual  differences and  adapt according  to different needs  (IEH p.29)', NULL, '<p>Guide to identify or quantify children with disabilities in a particular setting.</p>\r\n<p>Practical working guide.</p>\r\n<p>See p.31, Chapter 4. Key Informant Training.</p>', 20, 'en', 3, 1, 1, 1, '2022-04-20 06:02:03', '2022-04-20 06:02:03'),
(93, 'Teaching-learning  materials are  not inclusive', 'Ensure teachers  can use materials  to understand  and respond to  children\'s needs  in inclusice  classrooms', NULL, '<p>Sourcebook with Innovative teaching, learning and assessment approaches through hands-on experiences to promote inclusive education. Each learning unit is equipped with templates and checklists. See page 85, UNIT 3 &ndash; Inclusive Pedagogy</p>', 20, 'en', 4, 1, 1, 1, '2022-04-20 06:19:06', '2022-04-20 06:19:06'),
(94, 'Teaching-learning  materials are  not inclusive  by gender but  seem to only  address boys', 'Ensure  teacher know  how gender  discrimination  affects  participation and  learning and  strive to promote  inclusion by  acknowledging  diversity. (IEH p.12)', NULL, '<p>Guide to be used in addition to the UNESCO Teacher Education Resource Pack: Special Needs in the Classroom. It guides teachers on practical ways of coping with children who have difficulties in learning.</p>\r\n<p>Sourcebook with Innovative teaching, learning and assessment approaches through hands-on experiences to promote inclusive education. Each learning unit is equipped with templates and checklists. See page 85, UNIT 3 &ndash; Inclusive Pedagogy</p>', 20, 'en', 5, 1, 1, 1, '2022-04-20 06:26:23', '2022-04-20 06:26:23'),
(95, 'Children with  Disabilities  struggle to  keep up with  the lessons  during class', 'Write lesson  plans to address  children’s  learning needs.  Ensure teachers  employ universal  design for  learning practices  in classrooms.', NULL, '<p>Tool to plan lessons for classrooms where students have a wide range of learning needs</p>', 20, 'en', 6, 1, 1, 1, '2022-04-20 06:27:57', '2022-04-20 06:27:57'),
(96, NULL, NULL, NULL, '<p>Tool to establish a &ldquo;learner-friendly&rdquo; classroom environment while developing learning opportunities for children with additional learning support needs.</p>', 20, 'en', 7, 1, 1, 1, '2022-04-20 06:29:17', '2022-04-20 06:29:17'),
(97, NULL, 'Ensure teachers  have been  trained to  support children  with disabilities', NULL, '<p>The teaching checklist tackles inclusiveness as a cross-cutting issue, focusing on teaching practices, allowing teachers to devise individual student plans.</p>', 20, 'en', 8, 1, 1, 1, '2022-04-20 06:31:03', '2022-04-20 06:31:03'),
(98, 'Learning  materials are  not gender  sensitive (EiE)', 'Ensure learning  materials are  appropriate to  the context and  needs of learners', NULL, '<p>A series of tools and practical guidance that helps practitioners ensure education in emergency (EiE) interventions and programs are gender-responsive and inclusive. See page 190 for a guide for making EiE curricula and teaching and learning materials more gender-responsive and inclusive in their design, content, and usage.</p>', 20, 'en', 9, 1, 1, 1, '2022-04-20 06:33:14', '2022-04-20 09:06:50'),
(99, NULL, NULL, NULL, '<p>Program addressing and integrating Gender, Disability and Social Inclusion in all activities. See their website for examples of positive actions to create appropriate learning materials.</p>', 20, 'en', 10, 1, 1, 1, '2022-04-20 06:33:48', '2022-04-20 06:34:41'),
(100, 'Students are  learn-ing but  are not yet  proficient  in their  classroom’s  language of  instruction', 'Use less formal  language  and adapt  lessons using  words that are  not challenging  to understand.  (IEH p.56) Use  leveled and  sequential  materials that  support children’s  progression  in language  learning.', NULL, '<p>Strategies to put in place in case students present difficulties in: Learning, Reading, Focus, Behavior, Language, Physical, Hearing, Visual. See the Language Skills flashcard for strategies examples</p>', 22, 'en', 1, 1, 1, 1, '2022-04-20 06:50:47', '2022-04-20 06:50:47'),
(101, NULL, NULL, NULL, '<p>Series of 7 capacity building modules for teachers on literacy.</p>\r\n<p>See pages 7 &ndash; 9 (Topic 2 Language) for a 7.5-hour training session facilitation to understand and explain what kind of planning and adjustment to teaching and learning is necessary in bi- or multilingual contexts</p>', 22, 'en', 2, 1, 1, 1, '2022-04-20 06:52:53', '2022-04-20 09:08:08'),
(102, NULL, 'Ensure teachers  can implement  simple tools and  strategies to  support learners  struggling in their  classrooms. (IEH p.23)', NULL, '<p>4-days\' training workshop about inclusive education and practices of inclusive teaching.</p>', 22, 'en', 3, 1, 1, 1, '2022-04-20 06:54:34', '2022-04-20 06:54:34'),
(103, NULL, 'Ensure ECCD  teachers can  implement  strategies to  support children  transition in  the language  of instruction', NULL, '<p>This guide presents guidance and strategies for teachers of 3&ndash;5-year-old children who speak and teach in a different language than their students, to help them integrate new language instruction into the daily activities and routines. It also provides suggestions for adapting ECCD center settings to best support new language learners.</p>', 22, 'en', 4, 1, 1, 1, '2022-04-20 06:55:38', '2022-04-20 09:03:21'),
(104, 'Children  struggle when  their lesson  or textbook  is not written  in their first  language', 'Explore  innovative ways  to increase  children’s access  to relevant  reading materials  to improve  literacy outcomes, using  multiple  languages. (IEH  p.9) Use universal  design for  learning principles and practices  to present  instruction in  multiple modes', NULL, '<p>Manual sharing experience of developing tools and approaches that have improved education for the most excluded children in society.</p>\r\n<p>See p.18, Chapter 3, Vietnam: Introducing bilingual teaching, about multilingual education in preschools and primary schools.</p>', 22, 'en', 5, 1, 1, 1, '2022-04-20 06:58:13', '2022-04-20 07:00:16'),
(105, NULL, 'Assign a buddy  who speaks  the language  of instructions  to support the  learner. (IEH p.54)   Create  opportunities  to strengthen  language of  instruction  learning, after  school clubs,  library days', NULL, '<p>Strategies to put in place in case students present difficulties in: Learning, Reading, Focus, Behavior, Language, Physical, Hearing, Visual.</p>\r\n<p>See the Language Skills flashcard for strategies examples.</p>', 22, 'en', 6, 1, 1, 1, '2022-04-20 07:06:31', '2022-04-20 07:06:31'),
(106, 'Local  languages are  not allowed or  encouraged', 'Review the  education  policies and laws  in the country  and identify  how advocacy  can be used  to make them  more inclusive.  (IEH p.24)<br/><br/> Please check  Section 7. Policy  and system  for language  advocacy tools', NULL, '<p>Sourcebook with Innovative teaching, learning and assessment approaches through hands-on experiences to promote inclusive education. Each learning unit is equipped with templates and checklists.</p>\r\n<p>See page 103, UNIT 5 Working with parents, families, communities, and other stakeholders to references about how to discuss roles and responsibilities of governments and other stakeholders/ agencies in IE</p>', 22, 'en', 7, 1, 1, 1, '2022-04-20 07:19:52', '2022-06-07 09:26:37'),
(107, 'Teachers do  not know  how to  communicate  using sign  language', 'Find local staff or  individuals who  can use braille or  are fluent in sign  language (even  local dialect  where possible).  (IEH p.55) to give  individual support  to children  in learning a  language that  supports their  learning.', NULL, '<p>Sourcebook Toolkit providing information on: - How to teach literacy skills to students with different categories of disabilities - How to put in place additional supports that promote literacy acquisition and how to best apply these theoretical approaches in practice - Multiple aspects of literacy (grammar, spelling and writing) - The techniques and interventions focus on the concept of reading. See p.63, Ch.3 Promoting Literacy Skills for Students with Disabilities;</p>', 22, 'en', 8, 1, 1, 1, '2022-04-20 07:49:52', '2022-04-20 07:49:52'),
(108, 'Textbooks  and materials  contain sexist  stereotypes  (EiE)', 'Actively  challenge  learners to  deconstruct  gender-biased  language and  concepts presented in the  materials.', NULL, '<p>A series of tools and practical guidance that helps practitioners ensure education in emergency (EiE) interventions and programs are gender-responsive and inclusive.</p>', 22, 'en', 9, 1, 1, 1, '2022-04-20 07:52:01', '2022-05-29 07:29:31'),
(109, 'ECCD  trainers are  not properly  trained', 'Ensure ECCD  trainers receive  adequate training  on pedagogical  practices', NULL, '<p>10 days training. Needs adaptation because it doesn&rsquo;t have an inclusive education focus</p>', 24, 'en', 1, 1, 1, 1, '2022-04-20 08:01:52', '2022-04-20 08:01:52'),
(110, 'Children are  ‘disruptive  in class’', 'Ensure teachers  can identify  behavior triggers  and responses  to minimize its  occurrence. (IEH p.53)', NULL, '<p>A checklist of observable teacher competencies across five key areas of teacher classroom behaviors.</p>\r\n<p>See (E) Class Management</p>', 24, 'en', 2, 1, 1, 1, '2022-04-20 08:03:25', '2022-04-20 08:03:25'),
(111, NULL, 'Ensure teachers  have proper skills  on classroom  management  and positive  discipline', NULL, '<p>3 days&rsquo; workshop to train teachers on classroom management and positive discipline</p>', 24, 'en', 3, 1, 1, 1, '2022-04-20 08:04:54', '2022-04-20 08:04:54'),
(112, NULL, 'Ensure teachers  can detect and  react to different  types of learning  challenges', NULL, '<p>Guidelines to correctly support your learners with specific learning challenges</p>', 24, 'en', 4, 1, 1, 1, '2022-04-20 08:06:03', '2022-04-20 08:06:03'),
(113, NULL, 'Guide teachers  to develop strong  relationships  with students  to enable a  positive school  experience', NULL, '<p>Guidelines on how to establish a positive relationship of trust, connection, and understanding between teachers and students</p>', 24, 'en', 5, 1, 1, 1, '2022-04-20 08:07:52', '2022-04-20 08:07:52'),
(114, NULL, 'Ensure class  time is used  constructively', NULL, '<p>Manual to provide background on disruptive behavior, as well as to suggest techniques for preventing and/ or coping with it.</p>\r\n<p>See page 4, Responding to Interruptions.</p>', 24, 'en', 6, 1, 1, 1, '2022-04-20 08:09:09', '2022-04-20 08:09:09'),
(115, 'Classroom  materials do  not reflect  all students’  learning  needs', 'Ensure teachers  participate in  curricula reviews  and modify  instructional  practices to  make curricula  relevant to needs  and abilities of  different learners.  (IEH p.20)', NULL, '<p>A tool to support teachers to develop universal design practices in classrooms that support all learners.</p>', 24, 'en', 7, 1, 1, 1, '2022-04-20 08:10:37', '2022-04-20 08:10:37'),
(116, 'Children  face several  barriers to  education', 'Ensure schools  have effective  support,  supervision  and monitoring  mechanisms that  involve all the  education staff  to document  changes in  inclusive  practices.  (IEH p.36)', NULL, '<p>Checklist to assess their capacity to be inclusive in the following domains:&nbsp;<br />- Teaching languages<br />- Pedagogical methods<br />- Pro-integration policies&nbsp;<br />- Environment<br />- Students\' well-being</p>', 24, 'en', 8, 1, 1, 1, '2022-04-20 08:12:03', '2022-05-29 07:54:10'),
(117, 'Female  students  feel unsafe  in class and  school', 'Ensure schools  have policies  in place and all  school personnel  promote  gender norms  and practices  to mitigate  and respond  to cases of  sexual violence.  (IEH p.26)', NULL, '<p>Series of stand-alone training modules (for self-assessment or workshop facilitation) for teacher training.</p>\r\n<p>See p.19, Module 8: Positive discipline and child-friendly classroom management on skill building on classroom management and positive discipline.</p>\r\n<p>See also <a href=\"https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7BC89B7477-2DB2-42A7-B24F-4BC0DAF536B4%7D&amp;file=Safe%20Schools%20Action%20Pack%204%20Children%27s%20Activities.docx&amp;action=default&amp;mobileredirect=true&amp;cid=0991d0c9-813a-460a-9372-d5768e35f0c8&amp;wdLOR=cBC84FFF0-9352-C44D-A2D1-489F40589CB7\" target=\"_blank\" rel=\"noopener\">Children&rsquo;s Activities &ldquo;Living Well Together&rdquo;</a> to enhance self-esteem and confidence, recognizing violence, understand and promote gender equality.</p>\r\n<p><a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\" target=\"_blank\" rel=\"noopener\"> Please see also Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 24, 'en', 9, 1, 1, 1, '2022-04-20 08:14:49', '2022-04-20 08:14:49'),
(118, 'Children  come from  different  backgrounds  and/or  learning  styles and  have different  perceptions of  specific topics', 'Monitor  differences in  program effects  on girls and  boys, of different  ages, living in  rural or urban  areas, with and  without disability,  from different  ethnic and  socio-economic  backgrounds  (IEH p.34) Make  a school-wide  policy and  practice cultural  awareness  among school  personnel and  children.', NULL, '<p>Sourcebook with Innovative teaching, learning and assessment approaches through hands-on experiences to promote inclusive education. Each learning unit is equipped with templates and checklists.</p>\r\n<p>See page 65, UNIT 3 for Inclusive Pedagogy. Useful for teachers.</p>', 24, 'en', 10, 1, 1, 1, '2022-04-20 08:18:15', '2022-04-20 08:18:15'),
(119, 'Each child  has his or  her preferred  learning style', 'Develop learning  opportunities  for children  with individual  learning needs.', NULL, '<p>Tool to establish a learner-friendly classroom environment with learning opportunities for children with individual learning needs, so that all children can learn.</p>', 24, 'en', 11, 1, 1, 1, '2022-04-20 08:20:02', '2022-04-20 08:20:02'),
(120, NULL, NULL, NULL, '<p>A guide for teachers to make sure that the greatest range of students can access and engage in learning &mdash; not just certain students.</p>', 24, 'en', 12, 1, 1, 1, '2022-04-20 08:21:59', '2022-04-20 08:21:59'),
(121, NULL, NULL, NULL, '<p>A guide to provide multiple means of engagement, representation, action, and expression in classroom settings.</p>', 24, 'en', 13, 1, 1, 1, '2022-04-20 08:25:44', '2022-04-20 08:25:44'),
(122, 'Distant  \\ remote  learning is not  accessible to  all students', 'Ensure education  is framed as a  universal right.  (IEH p.7) and  governments  and communities  work to expand  equitable  distance and  remote learning  possibilities.', NULL, '<p>Tool addressing education in emergencies, with emphasis on the COVID-19 emergency. It gives practical tips to create an inclusive support system for remote learning with regards to both the school and community and system level.</p>', 24, 'en', 14, 1, 1, 1, '2022-04-20 08:27:13', '2022-04-20 08:27:13'),
(123, 'ECCD  trainers are  not properly  trained', 'Support teachers  to write Individual  Education Plans  for children who  are struggling  (IEH p.23)', NULL, '<p>Tool for practical application of inclusive education practices.</p>\r\n<p>See page 35 for student&rsquo;s assessment and IEP tool.</p>', 26, 'en', 1, 1, 1, 1, '2022-04-20 08:39:31', '2022-04-20 08:39:31'),
(124, NULL, 'Plan and prepare  lessons well,  while keeping  in mind that  children have  different learning  needs and  learning styles  (IEH p.59)', NULL, '<p>Tools and training package for planning and delivering tailored and inclusive lessons.</p>\r\n<p>Use the flashcards for guidelines on how to deal with children&rsquo;s individual challenges (e.g., visual impairments, communication challenges, language skills, reading skills, learning skills)</p>', 26, 'en', 2, 1, 1, 1, '2022-04-20 08:40:56', '2022-04-20 08:40:56'),
(125, NULL, 'Identify if the  curriculum has  the flexibility to  address diverse  learners’ needs.  Advocate  for curricular  modifications  where necessary  (IEH p.23)', NULL, '<p>&nbsp;&nbsp;</p>', 26, 'en', 3, 1, 1, 1, '2022-04-20 08:41:46', '2022-04-20 08:41:46'),
(126, 'Teachers  are not able  to make  judgements  about the  amount of  progress  individual  students  are making  in different  subject areas', 'Teachers  should track  their students’  strengths and  weaknesses –  particularly for  the students  who are  struggling  the most, to  identify specific  learning needs.  An Individual  Education Plan  (IEP) assists  teachers to  plan and assess  individual  learning goals.  It should be  completed by  the teacher  in close  coordination  with the child’s  parents, and  as much as  possible, the  child himself.  In schools  where children  are taught  by multiple  teachers (e.g.,  subject teachers  or co-teachers),  the adults  should work  together to  ensure that the  IEP is well-informed, and  closely followed  (IEH p.23)', NULL, '<p>Detailed manual on how to plan and organize the school for the inclusion of children with disabilities. Covers a variety of aspects: access to information, school facilities and quality learning; inclusive planning; classroom management strategies; tools for assessment of the level of inclusiveness; tools for assessment of children\'s learning difficulties. Also, it covers the setting of learning goals for children with disabilities and strategies on how to make judgements about learning progresses.</p>\r\n<p>See Chapter 2 - Planning and organizing the school for the inclusion of children with disabilities</p>\r\n<p>And Chapter 4 - Development of the Individual Education Plan (IEP)</p>', 26, 'en', 4, 1, 1, 1, '2022-04-20 08:44:20', '2022-04-20 08:44:20'),
(127, 'Teachers do  not know  how to use  formative assessments of  children’s understanding.', 'Use formative  assessment to  gauge student  understanding of  lesson objectives  and adjust  teaching methods  and contents  as identified  (IEH p.59)', NULL, '<p>An assessment tool to gauge the development and early learning status of young children ages 3.5 &ndash; 6.5 years old to understand their learning levels on entry to primary grade 1.</p>', 26, 'en', 5, 1, 1, 1, '2022-04-20 08:45:53', '2022-04-20 08:45:53'),
(128, NULL, NULL, NULL, '<p>7 strategies to use in primary school to adjust teaching methods and contents</p>', 26, 'en', 6, 1, 1, 1, '2022-04-20 08:47:07', '2022-04-20 08:47:07'),
(129, NULL, NULL, NULL, '<p>21 strategies to use in primary and secondary school to adapt learning contents</p>', 26, 'en', 7, 1, 1, 1, '2022-04-20 08:48:25', '2022-04-20 08:48:25'),
(130, NULL, NULL, NULL, '<p>Series of modules to train teachers in strategies for literacy. See Module 7 on formative assessment</p>', 26, 'en', 8, 1, 1, 1, '2022-04-20 08:49:46', '2022-04-20 08:49:46'),
(131, 'Teachers do  not know how  to use summative assessments of  children’s understanding', 'Identify whether  the curriculum is  flexible enough  for diverse  learners –  advocate for  additional  flexibility, where  necessary.  Use a variety  of questioning  techniques,  e.g., Reflect-Connect-Apply, or  powerful/ openended questions  (e.g., why, how) to  reinforce learning  and check the  children’s level of  understanding.  children’s level of  understanding.', NULL, '<p>Guidelines on the Enabling Teachers Common Approach for teachers&rsquo; motivation and development to ensure good quality teaching and good learning outcomes.</p>', 26, 'en', 9, 1, 1, 1, '2022-04-20 08:51:57', '2022-04-20 09:11:32'),
(133, NULL, NULL, NULL, '<p>An assessment tool to gauge the development and early learning status of young children ages 3.5 &ndash; 6.5 years old to understand their learning levels on entry to primary grade 1.</p>', 26, 'en', 11, 1, 1, 1, '2022-04-20 08:53:55', '2022-04-20 08:53:55'),
(134, 'Implementers  and staff do  not know how  to promote  and foster  collaboration  among  parents,  families, and  community', 'Advocate for  more community  collaboration in  education design  and provision.  Train staff and  implementers  on the topic.', NULL, '<p>The purpose of this booklet and the accompanying webinar is to assist implementers to understand the importance of engaging with parents, families, and communities in the process of implementing inclusive education, with an emphasis on children with disabilities.</p>', 29, 'en', 1, 1, 1, 1, '2022-04-21 05:55:54', '2022-04-21 05:55:54'),
(135, 'Parents,  children, and  communities  do not engage  with school  authorities/ do  not participate  in decision  making,  school  improvement  projects or  enrolment  campaigns', 'Advocate for children and adults  to participate in  all phases of the  child’s education,  and that their  views are considered. Employ  community advocacy and mobilization campaigns  to increase their  involvement  with schools.', NULL, '<p>Sourcebook with Innovative teaching, learning and assessment approaches through hands-on experiences to promote inclusive education. Each learning unit is equipped with templates and checklists.</p>\r\n<p>See UNIT 5 for families, parents, and community\'s participation.</p>', 29, 'en', 2, 1, 1, 1, '2022-04-21 05:58:34', '2022-04-21 05:58:34'),
(136, 'Parents are  not fully  aware of  good policies  and good  practices to  help their  children with  disabilities', 'Build capacity  of parents to  increase their  knowledge  about services  available, and  encourage them  to advocate  for their child', NULL, '<p>4 sessions workshop covering:&nbsp;<br />- Introduction to inclusive learning<br />- My child\'s strengths<br />- Coordination with Teachers<br />- Individual Education Plans</p>', 29, 'en', 3, 1, 1, 1, '2022-04-21 06:13:33', '2022-04-21 06:13:33'),
(137, NULL, NULL, NULL, '<p>4 different workshops covering:<br />- Disability inclusion and the role of caregivers;<br />- Child development and learning styles;<br />- Activities of daily living as learning opportunities;<br />- Talking, listening and coordination with teachers;<br />- Sharing / reading books with children.</p>', 29, 'en', 4, 1, 1, 1, '2022-04-21 06:15:46', '2022-04-21 06:15:46'),
(139, NULL, NULL, NULL, '<p>&nbsp;&nbsp;</p>', 29, 'en', 5, 1, 1, 1, '2022-04-21 06:18:40', '2022-04-21 06:18:40'),
(140, 'Parents of  children with  disabilities  have no  psychosocial  support  children,  and comm', 'Establish parent  support groups  and provide a  room for parents  to share the  experiences,  feeling and  challenges they  face as parents  of children with  disabilities and  applied coping  mechanisms.  Identify already-established  community  groups, such as  mothers’ groups  or community  health  volunteers, as  the delivery  mechanism  for increasing  knowledge and  coping with  disability issues.', NULL, '<p>Detailed manual on How to establish Community Based Services according to the following key steps:<br />1. Infrastructure Assessment (principles of Universal Design for Learning);<br />2. Situational Analysis;<br />3. Service Planning (from how to staff the community center on what types of services to provide);<br />4. Implementation Standards (case management, services, community engagement).<br />Focus on Pillar 2.</p>', 29, 'en', 6, 1, 1, 1, '2022-04-21 06:26:36', '2022-04-21 06:26:36'),
(141, NULL, NULL, NULL, '<p>Action Pack 4 is a guide to implement activities for, and with, children. The Pack is accompanied by a Toolbox to support selecting and sequencing both core and hazard specific modules.</p>', 29, 'en', 7, 1, 1, 1, '2022-04-21 06:27:35', '2022-04-21 06:27:35'),
(142, 'Children face  barriers in  engaging with  their local  communities', 'Ensure  communities  have  infrastructures  and services  tailored for  children with  different abilities.  Identify already-established  community  groups, such as  mothers’ groups  or community  health  volunteers, as  the delivery  mechanism  for increasing  knowledge and  coping with  disability issues.', NULL, '<p>Detailed manual on How to establish Community Based Services according to the following key steps:&nbsp;<br />1. Infrastructure Assessment (principles of Universal Design for Learning),&nbsp;<br />2. Situational Analysis,&nbsp;<br />3. Service Planning (from how to staff the community center on what types of services to provide),&nbsp;<br />4. 4. Implementation Standards (case management, services, community engagement).<br />Focus on Pillar 3.</p>', 29, 'en', 8, 1, 1, 1, '2022-04-21 06:31:38', '2022-04-21 06:31:38'),
(143, NULL, NULL, NULL, '<p>&nbsp;&nbsp;</p>', 29, 'en', 9, 1, 1, 1, '2022-04-21 06:32:19', '2022-04-21 06:32:19'),
(144, 'Parents and  community  members  are not  adequately  involved  in school  management  and  policymaking  to make  schools more  inclusive', 'Establish and  strengthen  school  committees that  are inclusive  of parents and  the community', NULL, '<p>Tool to establish better partnerships between schools, communities, and parents towards the end goal of creating functioning school-community committees to make schools more inclusive.</p>', 29, 'en', 10, 1, 1, 1, '2022-04-21 06:33:50', '2022-04-21 06:33:50'),
(145, 'EiE  intervention  data  collection is  not gender  balanced', 'Promote the use  of a range of  gender-sensitive  methodologies  and approaches  to engage  affected people,  including  focus groups,  interviews, and  gendered risk  mapping led by  learners. Train  community  emergency  committees in  gender-sensitive  data collection  methods and  importance of  understanding  the situation  of girls in  emergency  situations.', NULL, '<p>A series of tools and practical guidance that helps practitioners ensure education in emergency (EiE) interventions and programs are gender-responsive and inclusive. See page 40, 2.1 Gender-responsive needs assessment checklist to understand some specific actions and considerations for gender-responsive needs assessment for education in acute emergencies and protracted crises</p>', 29, 'en', 11, 1, 1, 1, '2022-04-21 06:35:34', '2022-04-21 06:35:34'),
(146, 'School,  family, and  community  members are  not aware  of children’s  rights, leading  to discrimination, stigmatization, and  stereotyping', 'Awareness-raising and  advocacy on  equal rights  for all children  (through  community  meetings,  distribution of  printed materials,  use of media  such as radio  and TV, etc.)  are necessary  (IEH page 21)', NULL, '<p>A brief introduction on common impairments and health conditions and the inclusive and respectful language that should be used to refer to individuals who have them.</p>', 31, 'en', 1, 1, 1, 1, '2022-04-21 06:41:10', '2022-07-06 08:49:33'),
(147, NULL, NULL, NULL, '<p>List of good practices to cooperate with multiple stakeholders involved in children&rsquo;s education.</p>\r\n<p>See page 32-36 for tips on training parents.</p>', 31, 'en', 2, 1, 1, 1, '2022-04-21 06:42:17', '2022-04-21 06:42:17'),
(148, 'Parents are  not able  to identify  disabilities of  their children/ do not  know about  inclusive  education', 'Provide a  screening device  to enable parents  to identify  disabilities  (IEH p.24)', NULL, '<p>General questions about disabilities that can be added to any caregiver questionnaire wishing to understand whether children have disabilities or learning impairments.</p>', 31, 'en', 3, 1, 1, 1, '2022-04-21 06:43:36', '2022-04-21 06:43:36'),
(149, NULL, '(For a parent  to) become  a member  of a school  community  team that plans  for inclusive  education  (IEH p.38)', NULL, '<p>4 sessions workshop covering:&nbsp;<br />- Introduction to inclusive learning<br />- My child\'s strengths<br />- Coordination with Teachers<br />- Individual Education Plans</p>', 31, 'en', 4, 1, 1, 1, '2022-04-21 06:45:31', '2022-04-21 06:45:31'),
(150, 'Parents are  not fully  aware of good  practices to  help their  children with  disabilities', 'Work with parents  of children with  disabilities to  ensure they  understand  their child  development  stages and  learning styles,  know how to  make learning  opportunities out  of daily activities,  understand  the importance  of reading to  their child and  constantly  coordinate with  teachers', NULL, '<p>Guide to 5 workshops to be led by youth with disabilities.</p>', 31, 'en', 5, 1, 1, 1, '2022-04-21 06:46:50', '2022-04-21 06:46:50'),
(151, 'Parents and  communities  do not  support  children  learning  outside of  school /  Parents do  not know  which kind  of activities  they can do  or organize  outside  school for  their children', 'Communicating  with parents  so children are  supported in  their learning at  home (IEH p.24),  share information  and demonstrate  activities with  parents at school  functions/teacher  meetings/ classroom  visits, etc.', NULL, '<p>5 workshops on how to improve children development at home and the role of caregivers</p>', 31, 'en', 6, 1, 1, 1, '2022-04-21 06:49:06', '2022-04-21 06:49:06'),
(152, NULL, 'Ensure the  community works  to promote  integration of  children with  disabilities  in society', NULL, '<p>Detailed manual on how to establish Community Based Services according to the following key steps:&nbsp;<br />1. Infrastructure Assessment (principles of Universal Design &nbsp;for Learning),&nbsp;<br />2. Situational Analysis,&nbsp;<br />3. Service Planning (from how to staff the community center on what types of services to provide),&nbsp;<br />4. Implementation Standards (case management, services, community engagement).<br />Focus on Pillar 1.</p>', 31, 'en', 7, 1, 1, 1, '2022-04-21 06:51:05', '2022-04-21 06:51:05'),
(153, 'Not all  children  are equally  involved and  engaged in  community\'s  activities', 'Children can be  engaged in a  variety of ways: - Consultative:  children are  consulted about  problems but  are not actively involved  in defining the  priority issues  and communicating with service  providers/ governments - Collaborative:  children and  adults work  in partnership  or with peers  or buddies.  - Child led:  children set  the agenda of  the program’s  activities, define  the priorities, and  communicate  with service  providers/ governments', NULL, '<p>Detailed explanation and to-do list to implement CSC methodology (community engagement).See:&nbsp;<br />- Page. 29 Action steps for implementation<br />- Page. 31 Suggested steps for service users<br />- Page. 36 Recording and documenting the process</p>', 31, 'en', 8, 1, 1, 1, '2022-04-21 06:53:23', '2022-04-21 06:53:23'),
(154, 'Relationships  between  community/ parents/schools are weak', 'Build effective  school-community  relationships  by scheduling  regular meetings  with community  groups to  share results of  assessments,  interventions,  and obtain  feedback. (IEH p.39)', NULL, '<p>Framework on the inclusive approach of the community-level integrated case management model. This document aims at fostering the link between children and their families and the existing services and programs in their community to reduce children&rsquo;s barriers towards safe access\\ return to school.</p>\r\n<p>See p. 5-11, Steps 1 to 4 for a guide to carry out a situational analysis to identify the barriers that are preventing children from accessing education.</p>', 31, 'en', 9, 1, 1, 1, '2022-04-21 06:57:28', '2022-04-21 06:57:28'),
(155, 'Some children  cannot talk,  communicate,  and express  themselves  properly', 'Ensure parents  and caregivers  are fully aware  of the standard  stages of speech  development to  identify potential  problems in time', NULL, '<p>Home assessment tool for parents and caregivers to monitor children&rsquo;s language and speech development according to standards with advice for every age.</p>', 31, 'en', 10, 1, 1, 1, '2022-04-21 06:58:57', '2022-04-21 06:58:57'),
(156, 'Adolescents  with disabilities are  confused or  not knowledgeable about  sexuality and  lack understanding  of personal  intimacy', 'Ensure parents  are trained  to deliver  appropriate  and inclusive  sentimental and  sex education  to their children  with disabilities', NULL, '<p>Home assessment tool to empower adolescents with disabilities in developing potentials, practicing independence, and enjoying inclusion through their sexuality. See page 19, Stage 2 &ndash; Methodology for establishing sex education. What criteria should be followed?</p>', 31, 'en', 11, 1, 1, 1, '2022-04-21 07:00:42', '2022-04-21 07:00:42'),
(157, 'School managers and leaders do not know how to assess inclusiveness of school policies', 'Ensure school  managers  receive training  to assess  school policies’  inclusiveness.', NULL, '<p>Checklist to assess schools&rsquo; inclusiveness degree.</p>\r\n<p><br />See page 67, Annex - Index for Inclusion: School questionnaire.&nbsp;</p>\r\n<p><br />Also, Domain 2 is a checklist for assessment of Inclusive Policies Production.&nbsp;</p>', 34, 'en', 1, 1, 1, 1, '2022-05-18 04:56:49', '2022-05-18 04:57:14'),
(158, 'Existing  school  policies lack a  focus on risk  prevention,  child  protection,  emergency  response', 'Ensure school  management  has guidance  on forming  Safe Schools  committees,  strengthening  safe and  protective  learning  environments,  and monitoring  compliance  of safe school  provision.', NULL, '<p>Tools and activities to engage school management in a participatory manner to support the integration of safety and protection into school-based management and improve the safety and protection of children in and around the schools through enquiry- based learning.</p>\r\n<p>&nbsp;</p>\r\n<p>Please see also <a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\">Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 34, 'en', 2, 1, 1, 1, '2022-05-18 05:29:13', '2022-05-18 05:29:32'),
(159, 'Schools  exhibit poor  environmental conditions', 'Promote positive  interactions  between school  personnel and  communities  to address  environment  poverty root  causes (IEH  p.26).', NULL, '<p>Assessment on the learning environment according to SC guiding principles.</p>', 34, 'en', 3, 1, 1, 1, '2022-05-18 05:31:45', '2022-05-18 05:31:45'),
(160, 'Children with  different  abilities lost  crucial support systems  to access education during  the COVID-19  pandemics (EiE)', 'Ensure teachers  are trained to  address barriers  to participation,  access, and  learning for re-entry of children  with disability  into schools.  (IEH p.9).', NULL, '<p>Tip sheet on how to ensure Inclusive Education even during COVID-19 emergency. 6-page document. Serves to organize school and teacher activities before, during and after the closing of school facilities due to emergencies.</p>\r\n<p>&nbsp;</p>\r\n<p>See page 3, the bullet list of preparedness and response measures to implement (checklist and links to practical tools).</p>', 34, 'en', 4, 1, 1, 1, '2022-05-18 05:41:39', '2022-05-18 05:41:39'),
(161, 'School’s  existing  norms reinforce gender  inequalities', 'EPromote holistic  approaches by  working with  communities  at all levels,  equally engaging  female, and male  stakeholders  in culturally  sensitive  program work  (IEH p.26).', NULL, '<p>Policy brief on inclusive approaches with 9 successful stories that cut cross the topic of inclusion. Useful resource that covers the issue of building partnerships with civil society, communities, governments, and the private sector.</p>\r\n<p>&nbsp;</p>\r\n<p>See page 2.</p>', 34, 'en', 5, 1, 1, 1, '2022-05-18 05:43:51', '2022-05-18 05:43:51'),
(162, 'School policies lack a  clear vision  on inclusive access,  participation,  and learning', 'Regularly check  and reflect  on school  inclusiveness,  thus elevating  it as a priority.  Establish close  collaboration  with parents and  communities so  school inclusion  policies and  practices reflect  issues identified  by parents  of excluded  children.', NULL, '<p>Tool to self-reflect on the current level of inclusion at a school, applicable in multiple scenarios.</p>', 34, 'en', 6, 1, 1, 1, '2022-05-18 05:54:10', '2022-05-18 06:24:18'),
(163, 'Schools do  not have  safety and  preventative  School  Related  Gender Based  Violence  measures  (EiE)', 'Promote positive  interactions  between school  personnel and  communities  to address  environment  poverty root  causes (IEH  p.26).', NULL, '<p>Assessment on the learning environment according to SC guiding principles.</p>', 34, 'en', 7, 1, 1, 1, '2022-05-18 06:26:37', '2022-05-18 06:26:37'),
(164, NULL, NULL, NULL, '<p>5-modules action park on how to set up a Safe School committee to identify risks and design and implement plans to reduce them.<br /><br /></p>\r\n<p>See <em>Activity 9&nbsp;</em>(Page 30 onwards) to strengthen reporting and referral procedures.</p>\r\n<p>&nbsp;</p>\r\n<p>Please see also <a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\">Action Park 5 Monitoring.Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indecators of the Safe School Common Approach</a></p>', 34, 'en', 8, 1, 1, 1, '2022-05-18 06:38:19', '2022-05-18 06:38:19'),
(165, 'School managers are not  knowledge-able to guide  their teachers  in inclusive  practices', 'Encourage  teachers to ask  school managers  to monitor their  performance  to identify  their areas  of strengths  and weakness  (IEH p.59).', NULL, '<p>Assessment on the learning environment according to SC guiding principles.</p>', 36, 'en', 1, 1, 1, 1, '2022-05-18 08:32:17', '2022-05-18 08:32:17'),
(166, NULL, 'Encourage  teachers to  work together  as teachers to  support each  other (IEH p.59).', NULL, '<p>&nbsp;&nbsp;</p>', 36, 'en', 2, 1, 1, 1, '2022-05-18 08:32:54', '2022-05-18 08:32:54'),
(167, 'School  managers  do not know  how to foster  a positive  school climate', 'Encourage  teachers to build  interpersonal  relationships  with every child  (IEH p.60) Build  strong teacher  communities  of practice that  advocate with  the school head  for a better  school climate.  Engage the  community  for increased  demand for  inclusion.', NULL, '<p>8 short questionnaires enabling self-reflection to assess schools&rsquo; inclusiveness, focusing on the environment&rsquo;s social, learning and physical aspects.</p>\r\n<p>See Self-Reflection Area 2 &ndash; Inclusive Social Environment.</p>', 36, 'en', 3, 1, 1, 1, '2022-05-18 08:42:42', '2022-05-18 08:42:42'),
(168, 'School  leaders do not  manage all  situations in a  fair, just, and  equal manner', 'Raise awareness  of children,  parents,  communities, and  policy makers  to enable the  development  of education  environments  that respect  and promote  children’s rights.  (IEH p.9)', NULL, '<p>Guidelines on inclusive education planning on disability with wealth of external resources references.</p>\r\n<p><br />See page 17, Section 6 Social and Rights-Based Models for Approaching Disability</p>', 36, 'en', 4, 1, 1, 1, '2022-05-18 09:18:04', '2022-05-18 09:18:04'),
(169, 'School  leaders do  not promote  positive  practices for  girls with  disabilities', 'Implement  effective  programs to  address gender-based barriers  to education.  Engage the  community to  advocate.', NULL, '<p>Framework to understand the most common barriers to education for girls with disabilities.</p>\r\n<p>See page 51,&nbsp;Guidelines on Inclusive Education for Girls with Disabilities.</p>', 36, 'en', 5, 1, 1, 1, '2022-05-18 09:53:52', '2022-05-18 09:53:52'),
(170, 'School  managers  do not have  an inclusive  emergency  response plan  at school', 'Host a Safe  School Team  meeting to  discuss plans  for continuation  of education  and strategies  to keep  children safe  and protected  in the event  of a hazard.', NULL, '<p>Tools and activities to engage school management in a participatory manner to support the integration of safety and protection into school-based management.</p>\r\n<p>&nbsp;</p>\r\n<p>See page 35, Activity 11. Create or Update Standard Operating Procedures for Emergencies.</p>\r\n<p>&nbsp;</p>\r\n<p>Please see also<a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\"> Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 38, 'en', 1, 1, 1, 1, '2022-05-19 09:46:04', '2022-05-19 09:46:04'),
(171, 'School  leaders  lack the  knowledge to  build strong  community  relationships', 'Engage the  community  around data  collection and  self-assessment  (IEH p.13).', NULL, '<p>Assessment tool on the learning environment according to SC guiding principles</p>', 38, 'en', 2, 1, 1, 1, '2022-05-19 09:48:47', '2022-05-19 09:48:47'),
(172, NULL, 'Promote the  formation of PTAs', NULL, '<p>Manual on how to plan and organize the school for the inclusion of children with disabilities. It covers inclusive planning and how to involve and share responsibilities with multiple stakeholders from the community.</p>\r\n<p><br />See Chapter 3, Roles and responsibilities of each actor and stakeholder in the school system (school board, parents&rsquo; council, teacher, psychosocial service unit worker, children with disabilities, school community at large, external actors.</p>', 38, 'en', 3, 1, 1, 1, '2022-05-19 09:54:10', '2022-05-19 09:54:33'),
(173, 'School  managers do  not have an  effective data  collection  and display  system for  inclusive  education', 'Train members  of the community  in data collection  and analysis  (IEH p.15).  Train teachers  in effective  classroom data  collection and  management.', NULL, '<p>Sourcebook with Innovative teaching, learning and assessment approaches through hands-on experiences to promote inclusive education. Each learning unit is equipped with templates and checklists.&nbsp;</p>\r\n<p><br />See page 94, UNIT 4 Inclusive School Management practices.</p>', 38, 'en', 4, 1, 1, 1, '2022-05-19 09:59:09', '2022-05-19 09:59:09'),
(174, 'School  managers do  not plan for  inclusion at  their schools', 'Encourage other  stakeholders  to advocate  to mobilize  additional  resources to  support access,  participation  and learning  of previously  excluded  children (IEH p.13)', NULL, '<p>Example of how to structure a school budget with an inclusive approach. Easily adaptable to any country context.</p>\r\n<p>&nbsp;</p>\r\n<p>See page 10, 4. Financing pre-university education; page 20, 6. Proposed funding for children with disabilities in the national forum pre-university education.</p>', 38, 'en', 5, 1, 1, 1, '2022-05-19 10:04:41', '2022-05-19 10:04:41'),
(175, NULL, 'Make success  stories and  best practices  of building  inclusive school  communities  available to  school managers  and communities.', NULL, '<p>Collection of best practices and approaches on creating inclusive school communities</p>', 38, 'en', 6, 1, 1, 1, '2022-05-19 10:07:29', '2022-05-19 10:07:29'),
(176, 'During  COVID-19  restrictions,  school  leaders do  not support  girls’ inclusion  in remote  learning due  to domestic  chores', 'Analyze and  address the  unique barriers  to remote  learning faced  by girls and  develop potential  solutions to  encourage more  participation  by girls.', NULL, '<p>Guide to ensure all children have access to safe learning opportunities that meet their individual needs.See page 6 for tips on how to cope with the disproportionate harmful impact of the extended school closures during COVID-19 on girls.</p>', 38, 'en', 7, 1, 1, 1, '2022-05-19 10:11:43', '2022-05-19 10:11:43');
INSERT INTO `toolkits` (`id`, `name`, `key_step`, `header_name`, `description`, `toolkit_category_id`, `language`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(177, 'There are  school safety  issues', 'Build  teachers and  administrators’  capacity and  understanding  of student  safety (IEH p.9)', NULL, '<p>Series of stand-alone training modules (for self- assessment or workshop facilitation). See <a href=\"https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7B4D041AE6-9C47-483E-BEAF-FBA1E7B5056C%7D&amp;file=Safe%20Schools%20Action%20Pack%204%20Module%206%20%E2%80%93%20Risk%20Management%20and%20Safety.docx&amp;action=default&amp;mobileredirect=true&amp;cid=fd5fdc01-f875-4dcc-8e2e-042a956bb570\">Module 6: Risk Management and Safety</a>: (head) teacher training on Risk Management concepts and standard operating procedures. Please see also <a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\">Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach.</a></p>', 41, 'en', 1, 1, 1, 1, '2022-06-07 10:13:59', '2022-07-03 06:43:33'),
(178, 'Children are  not part of the  decision-making process', 'Actively involve  children as key  stakeholders in  the situational  analysis or needs  assessment  (IEH p.12)', NULL, '<p>Sourcebook with Innovative teaching, learning and assessment approaches through hands-on experiences to promote inclusive education. Each learning unit is equipped with templates and checklists.</p>\r\n<p>&nbsp;</p>\r\n<p>See page 94, UNIT 4 Inclusive School Management practices.</p>', 41, 'en', 2, 1, 1, 1, '2022-06-13 06:41:23', '2022-06-13 06:41:23'),
(179, 'Concerns  about poor IE  practices are  ignored by  policymakers', 'Promote  grassroots  advocacy  campaigns with  the government  to promote better  quality education  at school', NULL, '<p>Tool to guide community members in the establishment of an advocacy campaign targeting central or local government.&nbsp;</p>', 41, 'en', 3, 1, 1, 1, '2022-06-13 06:44:02', '2022-06-13 06:44:02'),
(180, NULL, NULL, NULL, '<p>Action Pack 1 helps program staff and managers identify what policies and systems exist in their context to protect children in and around school; identify and strengthen policies and systems which protect children from violence, hazards and conflict in schools; support the adoption of relevant international frameworks; identify and support targeting budget expenditure to measures that will make children safe in and around schools; document and measure policy and system change; work in partnership with others and identifying opportunities for system level change and influence.</p>\r\n<p>&nbsp;</p>\r\n<p>Please see also<a href=\"https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-5-Documents.aspx\"> Action Pack 5 Monitoring, Evaluation and Research Guidance for corresponding M&amp;E tools, assessment tools and additional indicators of the Safe School Common Approach</a></p>', 41, 'en', 4, 1, 1, 1, '2022-06-13 06:48:11', '2022-06-13 06:48:11'),
(181, 'The correct  use of terms  to address  disabilities is  given little or  no attention.', 'Regularly review  the correct  terms of use  in disability to  ensure SC Staff  can correctly  address  disability-related topics.', NULL, '<p>3-days\' workshop with exercises on Inclusive Education for a better comprehension and use of disability-related terms and topics.</p>', 41, 'en', 6, 1, 1, 1, '2022-06-13 07:51:16', '2022-06-13 07:51:16'),
(182, NULL, NULL, NULL, '<p>A brief on common impairments, health conditions and the inclusive/respectful language that should be used.</p>', 41, 'en', 7, 1, 1, 1, '2022-06-13 07:53:20', '2022-06-13 07:53:20'),
(183, 'Girls with  disabilities  do not attend  school', 'Build  partnerships  with local  and national  stakeholders  to share  knowledge,  lobby together,  learn,  complement  each other, and  build capacity  to ensure that  all children’s  rights are met  (IEH p.9)', NULL, '<p>Repository of toolkits and guidelines on inclusive education for girls with disabilities.</p>\r\n<p>&nbsp;</p>\r\n<p>See page 11 on the barriers that impede girls with disabilities&rsquo; access to education</p>', 41, 'en', 8, 1, 1, 1, '2022-06-13 07:56:57', '2022-06-13 07:56:57'),
(184, 'The school  community  is threatened  by COVID-19  (EiE)', 'Ensure schools  have written  policies and  regular practices  to promote  good health.  (IEH p.57) and  know what to  do to restrict the  spread of covid.', NULL, '<p>SC Policy towards school reopening during the COVID-19 pandemics and reference guidelines.</p>\r\n<p>&nbsp;</p>\r\n<p>See Slide 5 for links to: SC&rsquo;s Public Health Guidance for SB2S; Minimum requirements IPC/NPI/WASH/RCCE/ Health awareness; COVID-19 GLOBAL ADVOCACY MESSAGES; COVID-19 Health and Nutrition Advocacy Message; E-learning: WASH in Schools in the COVID-19 Context.</p>', 41, 'en', 10, 1, 1, 1, '2022-06-14 05:51:00', '2022-06-14 05:51:00'),
(185, 'Education  systems  amplify social  differences', 'Identify who is  being excluded,  how, and why,  and develop  strategies to  address the  responsible root  barriers (IEH p.9)', NULL, '<p>Policy paper on causes of exclusion and threats to safe learning environments and their costs on youth and economics.</p>', 41, 'en', 11, 1, 1, 1, '2022-06-14 05:53:35', '2022-06-14 05:53:35'),
(186, 'Education  systems  amplify social  differences Accountability  for enforcement of children’s right  to education  is unclear at  both the community and  national level.', 'Review the  education  policies and  laws locally  and nationally,  and develop  advocacy  strategies to  make them  more inclusive  (IEH p.24)', NULL, '<p>Self-assessment tool for policy makers about the necessities and priorities education wise.</p>', 41, 'en', 12, 1, 1, 1, '2022-06-14 05:56:21', '2022-06-14 05:56:21'),
(187, 'Political will  is lacking to  make education systems', 'Promote bottom-up collective  action to build  a groundswell  of advocacy  for inclusion.', NULL, '<p>Useful tool in contexts where the relationships between civic society and local and central government are healthy enough to develop a grassroots advocacy campaign to enhance change</p>', 41, 'en', 13, 1, 1, 1, '2022-06-14 06:02:35', '2022-06-14 06:02:35'),
(188, 'People with  disabilities  are not  involved in  driving policy  change for  their own  rights', 'Enhance DPOs’  participation  in advocacy  and campaign  initiatives  through  building their  organizational  capacity.', NULL, '<p>Useful tool in contexts where civic society organizations can flourish and there are established DPOs to enhance their position at the forefront of policy change</p>', 41, 'en', 14, 1, 1, 1, '2022-06-14 06:07:24', '2022-06-14 06:07:24'),
(189, 'Civic society  stakeholders  with shared  goals fail to  align around  priorities', 'Civic society  stakeholders with  shared goals fail  to align around  priorities Convene  stakeholder  alignment  workshops  and identify  common goals  and strategies to  move priorities  forward.', NULL, '<p>Useful tool in contexts where it is feasible to meet in person to create alignment between civic society stakeholders, DPOs, around policy objectives, or simply to build a shared understanding of critical issues</p>', 41, 'en', 15, 1, 1, 1, '2022-06-14 06:14:25', '2022-06-14 06:14:25'),
(190, 'Google', 'Google', NULL, '<p>Google</p>', 21, 'en', 1, 1, 1, 1, '2022-08-04 03:19:21', '2022-08-04 04:38:05'),
(192, 'No se identifican ni implementan los factores que limitan a los niños y niñas participar completamente.', 'Promover evaluaciones de actores relevantes para identificar las barreras educativas existentes. (IEH p.43).', NULL, '<p>Una gu&iacute;a completa para la gesti&oacute;n escolar. Incluye herramientas para la evaluaci&oacute;n de distintos aspectos de inclusividad en la escuela, para ser utilizados con los estudiantes, docentes y miembros de la comunidad.</p>', 45, 'es', 1, 1, 1, 1, '2023-01-28 22:41:05', '2023-01-28 22:47:38'),
(194, 'No se garantiza el acceso al aprendizaje escolar a niños y niñas con diferentes lenguas maternas.', 'Asegurar que los directores del colegio y la política de educación promueva el uso de métodos de enseñanza bilingüe (IEH p.9).', 'INSCRIPCIÓN Y PERMANENCIA', '<p>Lista de verificaci&oacute;n para evaluar el grado de inclusi&oacute;n de una escuela en la ense&ntilde;anza de idiomas, m&eacute;todos, pol&iacute;ticas a favor de la integraci&oacute;n, ambiente, bienestar de los estudiantes.</p>', 45, 'es', 1, 1, 1, 1, '2023-01-29 01:02:42', '2023-01-29 01:05:09'),
(195, 'No se realiza seguimiento eficiente a la matricula y permanencia.', 'Cuando se desarrollen herramientas de evaluación y desagregar los datos según quién es excluido, cómo y por qué (EIH p.12).', NULL, '<p>Directrices sobre los Criterios del Sistema Marco de Referencia, un mecanismo para el an&aacute;lisis de herramientas tecnol&oacute;gicas de seguimiento y monitoreo de la permanencia y matricula en las escuelas (EAMS). V&eacute;ase parte 2: Defining Your Needs, y parte 3: Sistems Criteria Framework.</p>', 45, 'es', 2, 1, 1, 1, '2023-01-29 01:09:56', '2023-01-29 01:10:19'),
(196, 'No se identifica a los niños y las niñas que no están escolarizados y han desertado de la escuela.', 'Promover actividades de mapeo escolar, visitas a hogares, mecanismos de apoyo comunitario y mejorar los vínculos con el sector sanitario.', NULL, '<p>Herramienta y gu&iacute;a para localizar a los ni&ntilde;os y ni&ntilde;as no escolarizados y/o que ha abandonado la escuela. Se recomienda usar en la evaluaci&oacute;n inicial o en fases de monitoreo del proyecto en marcha, anualmente.</p>', 45, 'es', 3, 1, 1, 1, '2023-01-29 01:13:04', '2023-01-29 01:13:04'),
(197, 'Los niños y las niñas abandonan la escuela durante la transición entre grados o entre ECCD y primaria o de primaria a la escuela secundaria.', 'Promover campañas de inscripción/ reinscripción (IEH p.21).', NULL, '<p>Estudios de diagn&oacute;stico de los mecanismos existentes de recogida y gesti&oacute;n de datos sobre educaci&oacute;n en Bangladesh, Kosovo, e Indonesia. V&eacute;anse los indicadores relevantes para la identificaci&oacute;n y evaluaci&oacute;n de la ni&ntilde;ez no escolarizada (OOSC, en ingl&eacute;s).</p>', 45, 'es', 4, 1, 1, 1, '2023-01-29 01:14:04', '2023-01-29 01:14:04'),
(198, 'Está aumentando la tasa de abandono escolar de niños y niñas que sufren discriminación por su casta.', 'Desarrollar y llevar a cabo un sistema de desarrollo infantil integrado con miembros de diferentes estratos sociales para crear oportunidades de aprendizaje conjunto e integración de grupos vulnerables.', NULL, '<p>Directrices para identificar aquellos para quienes la educaci&oacute;n es m&aacute;s vulnerable en momentos de emergencia y para sugerir formas de reducir esta vulnerabilidad. V&eacute;ase la p&aacute;gina 8, cap&iacute;tulo 2: Complex vulnerabilities - 2.1.3 Minority groups / Caste / Ethnicity para ver herramientas para reducir la discriminaci&oacute;n de castas en el colegio.</p>', 45, 'es', 5, 1, 1, 1, '2023-01-29 01:16:23', '2023-01-29 01:16:23'),
(199, 'El entorno de la escuela no es físicamente* accesible para todos los niños y las niñas. *Para más recursos, veáse 3.1', 'Movilizar a miembros de la comunidad alrededor de campañas de matricula y concientización basada en derechos (IEH p.24) y implementar prácticas de diseño universal, que permita el acceso igualitario a la educación a todos los niños y las niñas.', 'ACCESO FÍSICO Y REMOTO', '<p>8 cuestionarios breves de autorreflexi&oacute;n dise&ntilde;ados para proporcionar una imagen de la inclusi&oacute;n en la escuela centrada en los aspectos sociales, de aprendizaje y f&iacute;sicos del entorno.</p>', 45, 'es', 7, 1, 1, 1, '2023-01-29 01:17:57', '2023-01-29 01:20:35'),
(200, 'Los niños y las niñas con discapacidad no tienen acceso a contenido educativo online.', 'Asegurar que los materiales e instrucciones de aprendizaje sean totalmente accesibles a todos los niños y las niñas con habilidades distintas (IEH p.31).', NULL, '<p>Documento de pol&iacute;tica con recomendaciones &uacute;tiles sobre la accesibilidad a la informaci&oacute;n y tecnolog&iacute;a de la informaci&oacute;n (TIC) e inclusi&oacute;n social y econ&oacute;mica de personas con discapacidades. V&eacute;ase la secci&oacute;n 3 de tools and guidance for creating accessible content para consejos sobre: Estructura y dise&ntilde;o de contenido, contraste de colores y gr&aacute;ficos, accesibilidad de v&iacute;deo, accesibilidad online, accesibilidad a videoconferencias.</p>', 45, 'es', 8, 1, 1, 1, '2023-01-29 01:21:49', '2023-01-29 01:21:49'),
(201, 'Los niños y las niñas más marginados no tienen acceso al aprendizaje remoto durante la COVID-19 (u otras situaciones de emergencia donde se tiene aún que establecer la educación en emergencias (EiE en inglés)).', 'Concientizar sobre la igualdad de derechos educativos de todos los niños y las niñas (a través de los medios de comunicación, por ejemplo). Trabajar con el gobierno para mejorar la implementación del aprendizaje a distancia o en línea (IEH p.21).', NULL, '<p><span style=\"font-weight: 400;\">Gu&iacute;a que aborda las barreras de aprendizaje que enfrentan la mayor&iacute;a de grupos de ni&ntilde;os y ni&ntilde;as m&aacute;s marginados y excluidos.</span></p>\r\n<p><span style=\"font-weight: 400;\">Tambi&eacute;n recomienda intervenciones para apoyar su inclusi&oacute;n en aprendizaje remoto y su vuelta a la escuela durante la emergencia de COVID-19.&nbsp;</span></p>\r\n<p><span style=\"font-weight: 400;\">V&eacute;ase p&aacute;gina 6 Girls; P&aacute;gina Children with Disability; P&aacute;gina 12 Children from lowincome families; P&aacute;gina 14 Children living in conflict; P&aacute;gina 16 CAAFAG; P&aacute;gina 17 Children victims of SGBV; P&aacute;gina 18 Children from ethnic minorities and / or struggling with the language of instruction; P&aacute;gina 19 Children LGBTQIA+.</span></p>', 44, 'es', 9, 1, 1, 1, '2023-01-29 01:25:23', '2023-01-29 01:25:23'),
(202, 'El aprendizaje a distancia no es accesible para todos los estudiantes.', NULL, NULL, '<p>Herramienta que aborda la educaci&oacute;n en emergencias, con &eacute;nfasis en la emergencia de COVID-19. Sugiere consejos pr&aacute;cticos para crear un sistema de apoyo inclusivo para el aprendizaje remoto teniendo en cuenta tanto a la escuela como a la comunidad, y el nivel del sistema.</p>', 45, 'es', 10, 1, 1, 1, '2023-01-29 01:26:35', '2023-01-29 01:26:35'),
(203, 'La información sobre las condiciones de vida ecónomicas y sociales de los niños y las niñas es insuficiente para asegurar adecuadamente el diseño de un programa inclusivo.', 'Asegurar que los actores relevantes, como los docentes y cuidadores, participen activamente en el análisis situacional o evaluación de las necesidades. (IEH p.12).', 'BARRERAS SOCIALES, CULTURALES Y ECONÓMICAS', '<p>Serie de recomendaciones pr&aacute;cticas para el an&aacute;lisis de equidad e iniciativas de investigaci&oacute;n en educaci&oacute;n.</p>\r\n<p>V&eacute;ase p&aacute;gina 20, anexo uno: Sample instrument for collecting equity-relevant data.</p>', 45, 'es', 11, 1, 1, 1, '2023-01-29 01:29:01', '2023-01-29 01:29:01'),
(204, 'Los niños y las niñas más desfavorecidos están excluidos de la participación y el aprendizaje en la escuela.', 'Asegurar que el diseño del programa inclusivo pueda llegar a los niños y niñas más desfavorecidos (IEH p.18).', NULL, '<p>Libro de consulta con enfoques de innovaci&oacute;n educativa, aprendizaje y evaluaci&oacute;n a trav&eacute;s de experiencias pr&aacute;cticas para promover la educaci&oacute;n inclusiva. Cada unidad de aprendizaje cuenta con plantillas y listas de verificaci&oacute;n. V&eacute;ase p&aacute;gina 23, UNIT 2 Identification of deprived children and case management in IE.</p>', 45, 'es', 12, 1, 1, 1, '2023-01-29 01:30:34', '2023-01-29 01:32:26'),
(205, 'Algunas familias enfrentan barreras económicas para el acceso y asistencia a la escuela.', 'Asegurar que las escuelas sean inclusivas y permitan a todos los niños y niñas acceder y aprender en la escuela. Trabajar con los gobiernos para asegurar que la escolarización y los costos relacionados con el acceso a las escuelas sea gratuito para todos los niños y las niñas. Abordar las potenciales barreras económicas para el aprendizaje (IEH p.8).', NULL, '<p>Lista de recomendaciones centrada en CVA (siglas en ingl&eacute;s) dise&ntilde;ada espec&iacute;ficamente para resultados educativos con &eacute;nfasis en el acceso. Contiene informaci&oacute;n espec&iacute;fica sobre los procedimientos de SC, la cual es especialmente &uacute;til en contextos de emergencia.</p>', 45, 'es', 13, 1, 1, 1, '2023-01-29 01:31:42', '2023-01-29 01:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `toolkit_categories`
--

CREATE TABLE `toolkit_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toolkit_categories`
--

INSERT INTO `toolkit_categories` (`id`, `name`, `slug`, `parent_id`, `description`, `footer`, `language`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'ACCESS', 'access', NULL, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h3><strong><img class=\"rounded\" src=\"/storage/photos/1/card2.png\" alt=\"\" width=\"65\" height=\"39\" />&nbsp; 1. ACCESS</strong></h3>\r\n<br />\r\n<p>&nbsp;</p>\r\n<p><strong>Save the Children recognizes that many of the most deprived and marginalized children are excluded from schools and learning spaces. The realization of the five foundations of the Quality Learning Framework is therefore dependent on ensuring all children, including the most deprived, have access to learning spaces. Proactive strategies must be in place to guarantee children access to education, informed by analyses of the barriers affecting children&rsquo;s right to education. Government, civil society, or service providers also play a role in shifting norms or providing programs that address the exclusionary factors affecting children&rsquo;s ability to access learning, such as disability, extreme poverty, displacement caused by conflict or natural disaster; or discrimination based on gender, ethnicity, sexual orientation, or religion.</strong></p>\r\n<p><strong> - Adapted from The Quality Learning Framework, Save the Children</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Access is a foundational component of inclusive education, underscoring the fundamental right of all children to go to school and learn. Access encompasses attendance, enrolment, participation, retention, and transitioning from grade to grade in the expected progression, especially during emergencies, pandemics like COVID-19, and conflict situations. Ensuring that all children have access to quality and safe learning spaces, whether physical classrooms or remote learning sites and devices, contributes to the realization of the five foundations of the Quality Learning Framework. Access is based on the Right to Non-discrimination (Art.2, UN CRC), placing the onus on educators and parents to be aware of children who are not in school or participating, learning to their full individual potential, and identifying the barriers that prevent them from doing so.</p>\r\n<p>&nbsp;</p>\r\n<p>Some solutions to common factors that exclude children from school are provided here. As many reasons constrain children from attending school, cross-references are made to other domains that may provide more in-depth solutions.</p>\r\n<h4>&nbsp;</h4>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/access/Image 2.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\"><span style=\"font-family: roboto;\">&ldquo;Ensuring that all children have access to quality and safe learning spaces, whether physical classrooms or remote learning sites and devices, contributes to the realization of the five foundations of the Quality Learning Framework.&rdquo;</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\"><br /><br />\r\n<h4>&nbsp;</h4>\r\n<h4><strong>From the Handbook</strong></h4>\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<h5><strong>While working with teachers, children, government officials, and communities, keep asking yourself:</strong></h5>\r\n<p>1.&nbsp; What are the barriers to access, participation, and learning?</p>\r\n<p>2.&nbsp; Who is perpetuating the barriers, how, and why?</p>\r\n<p>3.&nbsp; Who is experiencing these barriers? Are some people more affected by these barriers than others?</p>\r\n<p>4.&nbsp; How can these barriers be minimized?</p>\r\n<p>5.&nbsp; What resources (human, financial, material) are available to support access, participation, and learning of previously excluded children?</p>\r\n<p>6.&nbsp; How can we mobilize additional resources?</p>\r\n<p style=\"text-align: right;\">IE Handbook, page 13</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, 'en', 1, 1, 1, '2022-03-06 21:42:07', '2023-01-29 00:30:55'),
(2, '1.1.1 What if...?', 'what-if', 1, '<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, 'en', 1, 1, 1, '2022-03-06 21:42:29', '2022-06-07 09:09:09'),
(3, 'EMOTIONAL AND PSYCHOSOCIAL PROTECTION', 'emotional-and-psychosocial-protection', NULL, NULL, NULL, 'en', 1, 1, 1, '2022-03-06 21:43:13', '2022-03-31 10:59:13'),
(4, 'POSITIVE AND RESPECTFUL INTERACTIONS', 'positive-and-respectful-interactions', 3, '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h2><strong><img class=\"rounded\" src=\"/storage/photos/1/card3.png\" alt=\"img\" width=\"65\" height=\"39\" />&nbsp; 2. EMOTIONAL AND PSYCHOSOCIAL PROTECTION</strong></h2>\r\n<h3>&nbsp;</h3>\r\n<h3 id=\"tab_positive-and-respectful-interactions\"><strong>2.1 POSITIVE AND RESPECTFUL INTERACTIONS</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><strong>Positive and respectful interactions between teachers, children, and peers accept diversity and difference and are free from bullying and other forms of violence. Interactions are based on cooperation, trust, tolerance, are inclusive of all backgrounds and learning abilities, and treat all members equally. They reflect the development of healthy interpersonal friendships and relationships within the school community. Teachers implement appropriate classroom management strategies to manage student behavior without discrimination and organize the teaching-and-learning process to model and promote positive and respectful interactions.</strong></p>\r\n<p style=\"text-align: right;\"><strong>- Adapted from The Quality Learning Framework, Save the Children</strong></p>\r\n<p>&nbsp;</p>\r\n<h4><strong>From the Handbook&nbsp;</strong></h4>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<p>Effective learning for all children is also strongly related to, and dependent on, social and emotional well-being. It is important to recognize that conditions may arise which impact negatively on a child&rsquo;s emotional well-being (e.g., conflict, displacement, bullying, domestic violence at home, etc.), place the child at risk, and make him/her less likely to be open to learning. Inclusive, responsive teachers are observant to signs that reveal a child&rsquo;s emotional well-being and promote a culture of support in the classroom. Inclusive teachers do not label children or contribute to stereotypes and bullying, they model respectful behavior and foster constructive interactions among learners. Again, good teaching is good teaching for all &ndash; a positive, supportive teacher will benefit all the students in the class.</p>\r\n<p style=\"text-align: right;\">IE Handbook, page 23</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/emotional1.png\" alt=\"img\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\"><span style=\"font-family: roboto;\">&ldquo;Interactions are based on cooperation, trust, tolerance, are inclusive of all backgrounds and learning abilities, and treat all members equally&rdquo;</span></p>\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&nbsp;</p>\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&nbsp;</p>\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 15.png\" alt=\"img\" /></p>', 'en', 1, 1, 1, '2022-03-06 21:43:47', '2022-10-02 04:57:42'),
(5, '2.1.1 What if...?', 'positive-what-if', 4, '<p>Positive what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 21:44:33', '2022-06-07 09:10:58'),
(6, 'SOCIAL AND EMOTIONAL LEARNING', 'social-and-emotional-learning', 3, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8\">\r\n<h3>&nbsp;</h3>\r\n<h3 id=\"tab_social-and-emotional-learning\"><strong>2.2 SOCIAL AND EMOTIONAL LEARNING</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><b>Children are engaged in social and emotional learning processes through which children acquire and effectively apply the knowledge, attitudes, and skills necessary to understand and manage emotions, set, and achieve positive goals, feel, and show empathy for others, establish, and maintain positive relationships, and make responsible decisions. Social and emotional learning can be facilitated by teachers through play and recreational activities, targeted activities such as psychosocial support, or by referral to specialist support for those children in need. </b></p>\r\n<p style=\"text-align: right;\"><b>- Adapted from The Quality Learning Framework, Save the Children</b></p>\r\n<p>&nbsp;</p>\r\n<h4><b>From the Handbook&nbsp;</b></h4>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<p>For all children to learn, teachers need to establish an environment where all children feel welcome, valued, and supported. An inclusive curriculum is one that is child-centered, address each child&rsquo;s cognitive, emotional, physical, creative development, and fosters knowledge about rights and responsibilities as well as crucial thinking and problem-solving skills.</p>\r\n<p style=\"text-align: right;\">IE Handbook, page 23</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4\">\r\n<p>&nbsp;<img class=\"w-100\" src=\"/storage/photos/1/Mask Group 3.png\" alt=\"\" /></p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', NULL, 'en', 1, 1, 1, '2022-03-06 21:45:24', '2022-04-25 04:19:04'),
(7, '2.2.1 What if...?', 'social-what-if', 6, '<p>social what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 21:46:05', '2022-06-07 09:11:13'),
(8, 'PHYSICAL PROTECTION', 'physical-protection', NULL, NULL, NULL, 'en', 1, 1, 1, '2022-03-06 21:47:03', '2022-03-31 10:58:48'),
(9, 'SAFE AND ACCESSIBLE LEARNING SPACES', 'safe-and-accessible-learning-spaces', 8, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h2><strong><img class=\"rounded\" src=\"/storage/photos/1/card4.png\" alt=\"\" width=\"65\" height=\"39\" />&nbsp; &nbsp;3. PHYSICAL PROTECTION</strong></h2>\r\n<h3>&nbsp;</h3>\r\n<h3 id=\"tab_safe-and-accessible-learning-spaces\"><strong>3.1 SAFE AND ACCESSIBLE LEARNING SPACES</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Safe and accessible learning spaces are available for all children. A safe environment is free from physical harm and provides protection to all children from threat, danger, injury, or loss. There is an appropriate number of classrooms and/or learning spaces built to be resilient to natural risks and disasters. Schools are physically accessible and adaptable to all children&rsquo;s needs, including the needs of children with physical or sensory disabilities.</p>\r\n<p style=\"text-align: right;\">- Adapted from The Quality Learning Framework, Save the Children</p>\r\n<h4><strong>&nbsp;</strong></h4>\r\n<h4><strong>From the Handbook</strong></h4>\r\n<br />\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<h6>&nbsp;</h6>\r\n<h6>&nbsp;</h6>\r\n<h6>Save the Children recognizes inclusive education as education that welcomes all children and ensures that they are not&nbsp; &nbsp;discriminated against by teachers, parents, other children, policies, school curricula, buildings, or any other aspect of&nbsp; &nbsp;education.</h6>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right;\">IE Handbook, page 6</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 9.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\"><span style=\"font-family: roboto;\">&ldquo;A safe environment is free from physical harm and provides protection to all children from threat, danger, injury, or loss..&rdquo;</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', '<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 18.png\" alt=\"\" /></p>', 'en', 1, 1, 1, '2022-03-06 21:47:33', '2022-05-23 10:26:54'),
(10, '3.1.1 What if...?', 'safe-what-if', 9, '<p>safe what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 21:48:08', '2022-06-07 09:10:37'),
(11, 'WATER, SANITATION AND HYGIENE', 'water-sanitation-and-hygiene', 8, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h3 id=\"tab_water-sanitation-and-hygiene\"><strong>3.2 WATER, SANITATION AND HYGIENE</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Safe drinking water and adequate sanitation and hygiene facilities are accessible to all children, including separate latrines for female learners and staff, and accessible functional hand-washing facilities with soap. Sanitation facilities are maintained and properly used by teachers and children who are taught and encouraged to use good hygiene practices.</p>\r\n<p style=\"text-align: right;\">- Adapted from The Quality Learning Framework, Save the Children</p>\r\n<h4><strong>&nbsp;</strong></h4>\r\n<h4><strong>From the Handbook</strong></h4>\r\n<br />\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<h6>&nbsp;</h6>\r\n<h6><strong>An inclusive, child-friendly classroom is healthy for children. This means that:</strong></h6>\r\n<h6>a. What happens in the classroom also promotes children&rsquo;s health state;<br />b. Classrooms/schools are clean, safe, and have adequate water and sanitation facilities;<br />c. Written policies and regular practices that promote good health are in place and monitored;<br />d. Health education and life skills are integrated in the curriculum and the teaching-learning activities</h6>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right;\">IE Handbook, page 57</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 19.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\"><span style=\"font-family: roboto;\">&ldquo;Sanitation facilities are maintained and properly used by teachers and children who are taught and encouraged to use good hygiene practices.&rdquo;</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', '<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 17.png\" alt=\"\" /></p>', 'en', 1, 1, 1, '2022-03-06 21:48:54', '2022-05-23 10:11:54'),
(12, '3.2.1 What if...?', 'water-what-if', 11, '<p>water what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 21:49:20', '2022-06-07 09:11:37'),
(13, 'HEALTH AND NUTRITION', 'health-and-nutrition', 8, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h3 id=\"tab_health-and-nutrition\"><strong>3.3 HEALTH AND NUTRITION</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>All children receive services and education to support good health and nutrition, including screening for health problems, access to simple and easy-to-use medical attention and treatments including micronutrient supplements, and referral to other health services. Nutrition services also include school feeding programs. Skills-based health education applies to areas such as HIV/AIDS prevention, reproductive health, early pregnancy, nutrition, violence, and abuse. This category can incorporate specific strategies to support the health and nutrition of vulnerable groups such as adolescent girls and LBGT children</p>\r\n<p style=\"text-align: right;\">- Adapted from The Quality Learning Framework, Save the Children</p>\r\n<h4><strong>&nbsp;</strong></h4>\r\n<h4><strong>From the Handbook</strong></h4>\r\n<br />\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<h6>&nbsp;</h6>\r\n<h6>Evaluation of a Save the Children project in Mindanao, Philippines showcased the results of an integrated, holistic package of education, child protection, health, and nutrition interventions on better outcomes for marginalized and discriminated children in Indigenous People&rsquo;s area.</h6>\r\n<p style=\"text-align: right;\">IE Handbook, page 44</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 21.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&ldquo;<span style=\"font-family: roboto;\">Skills-based health education applies to areas such as HIV/AIDS prevention, reproductive health, early pregnancy, nutrition, violence, and abuse.</span>&rdquo;&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', NULL, 'en', 1, 1, 1, '2022-03-06 21:49:58', '2022-06-01 05:48:39'),
(14, '3.3.1 What if...?', 'health-what-if', 13, '<p>health what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 21:50:32', '2022-06-07 09:11:58'),
(15, 'SCHOOL SAFETY MANAGEMENT', 'school-safety-management', 8, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h3 id=\"tab_school-safety-management\"><strong>3.4 SCHOOL SAFETY MANAGEMENT</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>School safety management prevents and mitigates the impact of hazards on education as part of on-going school-based management and improvement processes. This protects all learners and education workers from death, injury, and harm in schools and plan for continuation of education in the face of all expected hazards and threats. It included assessment of all hazards inside and outside the school, including dangers faced on the journey to and from school or those faced only by certain students (such as those with disabilities). It requires action-planning for ongoing risk reduction and response-preparedness activities.</p>\r\n<p style=\"text-align: right;\">- Adapted from The Quality Learning Framework, Save the Children</p>\r\n<h4><strong>&nbsp;</strong></h4>\r\n<h4><strong>From the Handbook</strong></h4>\r\n<br />\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<h6>&nbsp;</h6>\r\n<h6>An inclusive, child-friendly learning environment is not just a place for formal learning, but also a place where children have rights: the right to be healthy, to be loved, to be treated with respect, the right to be protected from violence and abuse (including physical or mental punishment), and the right to express an opinion, and to be supported in education irrespective of learning needs</h6>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right;\">IE Handbook, page 57</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 23.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\">&ldquo;This protects all learners and education workers from death, injury, and harm in schools and plan for continuation of education in the face of all expected hazards and threats.&rdquo;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', NULL, 'en', 1, 1, 1, '2022-03-06 21:51:24', '2022-05-23 10:12:10'),
(16, '3.4.1 What if...?', 'school-what-if', 15, '<p>school what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 21:52:01', '2022-06-07 09:12:15'),
(17, 'TEACHING AND LEARNING', 'teaching-and-learning', NULL, NULL, NULL, 'en', 1, 1, 1, '2022-03-06 21:52:41', '2022-04-06 09:38:15'),
(18, 'TEACHER WELLBEING AND DEVELOPMENT', 'teacher-wellbeing-and-development', 17, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h2><strong>&nbsp;<img class=\"rounded\" src=\"/storage/photos/1/card1.png\" alt=\"\" width=\"65\" height=\"39\" />&nbsp; 4 TEACHING AND LEARNING</strong></h2>\r\n<h3 id=\"tab_teacher-wellbeing-and-development\"><strong>4.1 TEACHER WELLBEING AND DEVELOPMENT</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Teachers are engaged in continuous professional development and professional collaboration, and practice well-being strategies. Teachers are supported by head teachers and other education officials to continuously develop competencies relevant to their individual needs. Support for teachers&rsquo; development includes learning from experts, learning with peers, and self-reflection and self-directed learning. Methods include in-service training, supervision, coaching and mentoring, cross-school visits, and the creation of active professional peer networks. Teachers are supported to develop relevant attributes, knowledge, and skills. They are guided to understand the importance of self-care and stress management to promote their own and their student&rsquo;s well-being.</p>\r\n<p style=\"text-align: right;\">- Adapted from The Quality Learning Framework, Save the Children</p>\r\n<h4><strong>&nbsp;</strong></h4>\r\n<h4><strong>From the Handbook</strong></h4>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<h6>&nbsp;</h6>\r\n<h6>&nbsp;</h6>\r\n<h6>Classroom teachers are one of the biggest factors in student improvement. The development of teachers&rsquo; confidence and knowledge to work with previously excluded children is critical for successful inclusive education. Teachers must be motivated to actively look for children in their school and classrooms who are not participating or who struggle to learn. They need professional training on inclusive principle and techniques as well as opportunities to try new methodologies, share, and reflect on new ideas and observe other teachers who successfully use inclusive techniques.</h6>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right;\">IE Handbook, pages 39-40</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 10.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\"><span style=\"font-family: roboto;\">&ldquo;Support for teachers&rsquo; development includes learning from experts, learning with peers, and self-reflection and self-directed learning.&rdquo;</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>', '<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 24.png\" alt=\"\" /></p>', 'en', 1, 1, 1, '2022-03-06 21:53:08', '2022-06-28 16:07:35'),
(19, '4.1.1 What if...?', 'teacher-what-if', 18, '<p>teacher what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 21:53:38', '2022-06-07 09:13:04'),
(20, 'TEACHING AND LEARNING MATERIALS', 'teaching-and-learning-materials', 17, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h3 id=\"tab_teaching-and-learning-materials\"><strong>4.2 TEACHING AND LEARNING MATERIALS</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Learning is supported by relevant, appropriate, and diverse teaching and learning materials, which influence the content and process of children&rsquo;s learning. Appropriate and diversified learning materials support children&rsquo;s creativity, problem solving, memorizing or critical thinking, and influence children&rsquo; motivation, making learning fun and inclusive. Teaching and learning materials often refer to textbooks but also include video/audio and tangible or visual aids. Materials are relevant to all children&rsquo;s learning needs and abilities, including availability in the language(s) of learners; they are culturally and age-appropriate and gender-sensitive. They reflect a respect for social diversity. Teachers can also be supported to create appropriate teaching and learning aids often from low-cost, locally available materials.</p>\r\n<p style=\"text-align: left;\">- Quality Learning Framework</p>\r\n<h4><strong>&nbsp;</strong></h4>\r\n<h4><strong>From the Handbook</strong></h4>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<h6>&nbsp;</h6>\r\n<h6>Space, light, and materials affect the way [individuals] experience education. A process of inclusive school design gives members of a school community a feeling of pride and ownership of their school. This can provide an opportunity to fit a school more effectively with its different learners and the community, for example by also incorporating elements of local culture and art into buildings and ground.</h6>\r\n<p style=\"text-align: right;\">IE Handbook, pages 23</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 26.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&ldquo;Appropriate and diversified learning materials support children&rsquo;s creativity, problem solving, memorizing or critical thinking, and influence children&rsquo; motivation, making learning fun and inclusive.&rdquo;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>', '<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 27.png\" alt=\"\" /></p>', 'en', 1, 1, 1, '2022-03-06 21:54:22', '2022-08-08 06:01:14'),
(21, '4.2.1 What if...?', 'teaching-what-if', 20, '<p>teaching what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 21:55:03', '2022-06-07 09:13:25'),
(22, 'LANGUAGE FOR LEARNING', 'language-for-learning', 17, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h3 id=\"tab_language-for-learning\"><strong>4.3 LANGUAGE FOR LEARNING</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Children are taught in the language(s) they understand. The teacher is proficient in the language of instruction and where appropriate, fluent in the language(s) of most of the children (mother tongue). The teacher uses techniques to support second language learners as relevant and children are allowed to use their mother-tongue to aid their learning.</p>\r\n<p style=\"text-align: right;\">- Quality Learning Framework</p>\r\n<h4><strong>&nbsp;</strong></h4>\r\n<h4><strong>From the Handbook</strong></h4>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<h6>&nbsp;</h6>\r\n<h6>Programs need to be developed, implemented, and monitored in a way that not only addresses exclusion from school, but exclusion from participation and learning within school. For example, many children struggle when their lesson or textbook is not written in their first language, if they are never asked to contribute, or if they cannot see the blackboard or hear the teacher. Save the Children recognizes that all children must be supported to participate, learn, and develop, and that an inclusive learning environment not only addresses many of these barriers, but also provides the opportunity to learn about, accept and celebrate diversity, enriching the teaching-learning process for everyone.</h6>\r\n<p style=\"text-align: right;\">IE Handbook, pages 8</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 29.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&ldquo;The teacher uses techniques to support second language learners as relevant and children are allowed to use their mother-tongue to aid their learning.&rdquo;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>', '<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 31.png\" alt=\"\" /></p>', 'en', 1, 1, 1, '2022-03-06 21:55:51', '2022-05-30 09:09:16'),
(23, '4.3.1 What if...?', 'language-what-if', 22, '<p>language what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 21:56:20', '2022-06-07 09:13:44'),
(24, 'PEDAGOGICAL PRACTICES', 'pedagogical-practices', 17, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h3 id=\"tab_pedagogical-practices\"><strong>4.4 PEDAGOGICAL PRACTICES</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Children are taught using contextually appropriate, inclusive, child-centered pedagogical practices. Pedagogy is the connection between teaching and learning. Save the Children believes good pedagogical practices bring learning to life and includes caring for individual learners. Effective teaching practices use inclusive child-centere strategies that directly elicit children&rsquo;s engagement and inquiry. Teachers use a range of questioning techniques including open questions to invite children&rsquo;s responses with their own ideas. Practices are responsive to the circumstances where learning takes place and deploy creative and intuitive strategies to adapt to large class sizes, mixed age groups, and different learning preferences and competencies. Differentiation is used to support all learners&rsquo; needs. All activities in the classroom are research-informed and use strategies that have clear theoretical underpinning, for example, teachers employ specific skills to teach literacy and numeracy.</p>\r\n<h4><strong>&nbsp;</strong></h4>\r\n<h4><strong>From the Handbook</strong></h4>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<h6>&nbsp;</h6>\r\n<h6>The child&rsquo;s right to education is not only a matter of access but also of making content, educational processes, pedagogical methods, and the environment within which education takes place appropriate and relevant. Ensuring that different children can learn together not only defends their individual right to access education, but also protects their right to receive education.</h6>\r\n<p style=\"text-align: right;\">IE Handbook, pages 7</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 32.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&ldquo;All activities in the classroom are research-informed and use strategies that have clear theoretical underpinning, for example, teachers employ specific skills to teach literacy and numeracy.&rdquo;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>', '<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 33.png\" alt=\"\" /></p>', 'en', 1, 1, 1, '2022-03-06 21:56:55', '2022-05-30 09:08:52'),
(25, '4.4.1 What if...?', 'pedagogical-what-if', 24, '<p>pedagogical what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 21:57:44', '2022-06-07 09:14:06'),
(26, 'PLANNING, ASSESSMENT, AND REPORTING', 'planning-assessment-and-reporting', 17, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h3 id=\"tab_planning-assessment-and-reporting\"><strong>4.5 PLANNING, ASSESSMENT, AND REPORTING</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Teachers plan, assess, and report children&rsquo;s learning achievement. Teachers&rsquo; plans should identify clear, relevant learning objectives to address pupils&rsquo; learning needs. Lesson plans are in line with curriculum objectives and are strengthened by having a clear objective, an introduction, a learning activity, practice, and an evaluation. Teachers should use formative and summative assessments and tools to check for student understanding and to monitor students&rsquo; progress toward the learning objectives. Assessment data are analyzed to address the needs of the learners and to modify teaching strategies to meet individual students&rsquo; learning needs. Assessment data are also used to report student achievement in a classroom/school/district cohort, enabling parents to understand student progress and identify children who need additional support.</p>\r\n<h4><strong>&nbsp;</strong></h4>\r\n<h4><strong>From the Handbook</strong></h4>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<h6>&nbsp;</h6>\r\n<h6>Planning for diversity and ensuring that the curriculum is flexible enough to meet the needs of different learners is called Universal Design for Learning. In countries where the curriculum is so rigid that the teacher cannot do anything but lecture, Save the Children should advocate for curricula that are flexible enough to allow for school-level adaptations and for modifications to meet individual student&rsquo;s needs. Teachers should also be encouraged to keep track of what their students&rsquo; strengths and weaknesses are &ndash; particularly for the students who are struggling the most.</h6>\r\n<p style=\"text-align: right;\">IE Handbook, pages 23</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 35.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&ldquo;Lesson plans are in line with curriculum objectives and are strengthened by having a clear objective, an introduction, a learning activity, practice, and an evaluation.&rdquo;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>', NULL, 'en', 1, 1, 1, '2022-03-06 21:58:22', '2022-05-30 09:08:23'),
(27, '4.5.1 What if...?', 'planning-what-if', 26, '<p>planning what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 21:58:55', '2022-06-07 09:14:27'),
(28, 'PARENTS AND COMMUNITY', 'parents-and-community', NULL, NULL, NULL, 'en', 1, 1, 1, '2022-03-06 21:59:40', '2022-04-11 06:36:53'),
(29, 'CHILD, PARENT AND COMMUNITY PARTICIPATION', 'child-parent-and-community-participation', 28, '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h2><strong><img class=\"rounded\" src=\"/storage/photos/1/Hicon7.png\" alt=\"\" width=\"65\" height=\"39\" />&nbsp; 5 PARENTS AND COMMUNITY</strong></h2>\r\n<h3>&nbsp;</h3>\r\n<h3 id=\"tab_child-parent-and-community-participation\"><strong>5.1 CHILD, PARENT AND COMMUNITY PARTICIPATION</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Children, parents, and communities participate in school planning and decisionmaking processes. Representative groups of children and parents are involved via school parent-teacher community governance structures, such as School Management Committees (SMCs), or Parent Teacher Associations (PTAs). Teachers and school leaders value parents&rsquo; active engagement as a means of supporting children&rsquo;s learning and wellbeing. This involves building and sustaining two-way communication and good relationships with parents. Key community stakeholders, especially parents and children, should be supported to organize, explore, plan, and act together to improve schools and learning opportunities. This may result in parent and community participation in school improvement projects or enrolment campaigns.</p>\r\n<p>&nbsp;</p>\r\n<h4><strong>From the Handbook&nbsp;</strong></h4>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<p>A child&rsquo;s participation and success in school and preschool programs are directly related to his/her family situation. Income level, social relationships within the family, beliefs about childhood and child responsibilities, perceptions about gender or disability, and the family&rsquo;s status in the community, all have a significant impact on a child&rsquo;s opportunity to learn. Practitioners should prepare for the different attitudes and expectations that may exist within a community. Community should be engaged in data collection and self-assessment as part of the situational analysis &ndash; although typically a more involved self-assessment becomes a separate activity of the project once implementation is underway.</p>\r\n<p style=\"text-align: right;\">- Adapted from IE Handbook, page 13</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 12.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&ldquo;<span style=\"font-family: roboto;\">Key community stakeholders, especially parents and children, should be supported to organize, explore, plan, and act together to improve schools and learning opportunities.</span>&rdquo;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 36.png\" alt=\"\" /></p>', 'en', 1, 1, 1, '2022-03-06 22:00:17', '2022-06-01 05:45:44'),
(30, '5.1.1 What if...?', 'child-what-if', 29, '<p>child what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 22:00:46', '2022-06-07 09:14:58'),
(31, 'LEARNING AT HOME AND IN THE COMMUNITY', 'learning-at-home-and-in-the-community', 28, '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h3 id=\"tab_learning-at-home-and-in-the-community\"><strong>5.2 LEARNING AT HOME AND IN THE COMMUNITY</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Parents and community members should support children&rsquo;s learning outside of school; even more so in emergency situations like the current COVID-19 pandemic when most learning happens at home. At such times, parents are responsible not only for their children&rsquo;s development, but also for their formal learning process, for liaising with school management and teachers on a regular basis and guaranteeing that learning at home is an enriching and non-alienating experience.</p>\r\n<p>Parents, communities, and schools are responsible for ensuring all children can claim their right to attend a good quality school, whether in person or remotely. In every situation, teachers should collaborate with parents to support children with identified learning needs and/or to constructively support parents&rsquo; meaningful involvement in their children&rsquo;s education outside of the school, such as via homework activities or songs and games to practice at home, and assessment tools and methods. This might involve parents volunteering their time to contribute to learning activities such as running afterschool reading clubs, either in presence or remotely; or the community hosting, helping to run, or sustaining educational facilities, activities, or resources aimed at enhancing children&rsquo;s learning. It could also result in school-community networks engaging in online or remote activities to increase school access and learning for excluded children. Supporting learning extends to taking responsibility for ensuring all children in the local community enroll in school and attend regularly.</p>\r\n<p>&nbsp;</p>\r\n<h4><strong>From the Handbook&nbsp;</strong></h4>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<p>Many community members can contribute to inclusive development such as Community Based Rehabilitation (CBR) workers, religious leaders, Disabled People Organizations (DPOs), community elders, parents, and children themselves. Making use of locally available human and material resources when designing a program helps to develop links between schools, families, and communities, as well as promoting shared ownership of inclusive developments.</p>\r\n<p style=\"text-align: right;\">IE Handbook, page 24</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 38.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&ldquo;This might involve parents volunteering their time to contribute to learning activities such as running after-school reading clubs, either in presence or remotely; or the community hosting, helping to run, or sustaining educational facilities, activities, or resources aimed at enhancing children&rsquo;s learning.&rdquo;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>', '<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Mask Group 4.png\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 40.png\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 41.png\" alt=\"\" /></p>', 'en', 1, 1, 1, '2022-03-06 22:01:29', '2022-07-06 08:52:55'),
(32, '5.2.1 What if...?', 'learning-what-if', 31, '<p>learning what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 22:01:56', '2022-06-07 09:15:18'),
(33, 'SCHOOL LEADERSHIP AND MANAGEMENT', 'school-leadership-and-management', NULL, NULL, NULL, 'en', 1, 1, 1, '2022-03-06 22:02:28', '2022-05-18 02:58:02'),
(34, 'INCLUSION AND PROTECTION POLICIES', 'inclusion-and-protection-policies', 33, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h2><strong><img class=\"rounded\" src=\"/storage/photos/1/Hicon6.png\" alt=\"\" width=\"65\" height=\"39\" />&nbsp; 6. SCHOOL LEADERSHIP AND MANAGEMENT</strong></h2>\r\n<h3 id=\"tab_inclusion-and-protection-policies\"><strong>6.1 INCLUSION AND PROTECTION POLICIES</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Inclusion and protection policies are designed and implemented to ensure the safety and wellbeing of students and staff. School leadership should foster a commitment to the safety and holistic wellbeing of all students and adheres to principles of inclusion to promote equality of opportunity for all students. They strive to ensure all teachers support this ethos. Leadership should develop relevant protective and inclusive policies, such as gender policies and teachers&rsquo; and school codes of conduct, and ensure they are implemented accordingly, including the effective functioning of a complaints mechanism. This can include both teacher and school codes of conduct, as well as child-friendly versions of the codes of conducts with clear reporting mechanisms for children to report violations of the code and seek help. Codes of conduct should promote and ensure an environment free from abuse, discrimination, exploitation, and violence, including sexual and gender-based violence. A teachers&rsquo; code of conduct can be either a legal document defined by the Ministry of Education, or a document that includes norms and commitments defined jointly by school staff and learners. It provides clear roles and responsibilities, standards for ethical behavior and values, and sets out the consequences for violations based on the agreed rules and regulations, including an active complaints mechanism. A school code of conduct should include classroom rules developed jointly by school staff and learners.</p>\r\n<h4><strong>&nbsp;</strong></h4>\r\n<h4><strong>From the Handbook</strong></h4>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<h6>&nbsp;</h6>\r\n<h6>&nbsp;</h6>\r\n<h6>Education which is inclusive ensures the presence, participation, and achievement of all learners in places of learning. It often requires working to change the policies, systems, practices, and cultures in schools so that they can respond to the diversity of learners in their locality, as well as working closely with the communities and society at large.</h6>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right;\">IE Handbook, page 6</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 13.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&ldquo;Leadership should develop relevant protective and inclusive policies, such as gender policies and teachers&rsquo; and school codes of conduct, and ensure they are implemented accordingly, including the effective functioning of a complaints mechanism.&rdquo;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>', '<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 46.png\" alt=\"\" /></p>', 'en', 1, 1, 1, '2022-03-06 22:03:18', '2022-06-28 16:22:50'),
(35, '6.1.1 What if...?', 'inclusion-what-if', 34, '<p>inclusion what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 22:03:51', '2022-06-07 09:15:42');
INSERT INTO `toolkit_categories` (`id`, `name`, `slug`, `parent_id`, `description`, `footer`, `language`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(36, 'LEADING SCHOOL LEARNING', 'leading-school-learning', 33, '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h3 id=\"tab_leading-school-learning\"><strong>6.2 LEADING SCHOOL LEARNING</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>School leaders should be active in leading their students&rsquo; learning. The principal and other school leaders should communicate a guiding vision for the school and foster a positive school climate. They manage situations in a manner that demonstrates equality, fairness, and justice. Strong school leaders encourage teaching that is engaging and challenging and have high expectations of teachers and students in striving for the best possible outcomes. Leaders support teachers, foster teachers&rsquo; professional development, and encourage them to share their teaching and learning practices. They develop and utilize effective systems of internal communication and build and maintain relationships with parents and the wider community.</p>\r\n<p>&nbsp;</p>\r\n<h4><strong>From the Handbook&nbsp;</strong></h4>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<p>&nbsp;To further strengthen the inclusion and quality of your school and ECCD, consider:</p>\r\n<p>&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Ensure that all teachers and headmaster/principals are trained on inclusive education.</p>\r\n<p>&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Work with headmasters/principals to increase their approval and buy-in of inclusive their approval and buy-in of&nbsp; inclusive education and ensure that they understand how to support their teachers in using inclusive methodologies.</p>\r\n<p style=\"text-align: right;\">IE Handbook, page 22</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 44.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&ldquo;Strong school leaders encourage teaching that is engaging and challenging and have high expectations of teachers and students in striving for the best possible outcomes.&rdquo;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>', NULL, 'en', 1, 1, 1, '2022-03-06 22:04:24', '2022-07-06 09:05:27'),
(37, '6.2.1 What if...?', 'leading-what-if', 36, '<p>leading what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 22:04:54', '2022-06-07 09:16:12'),
(38, 'SCHOOL MANAGEMENT', 'school-management', 33, '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h3 id=\"tab_school-management\"><strong>6.3 SCHOOL MANAGEMENT</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>A school&rsquo;s human, financial, and physical resources should be managed effectively for the benefit of children. The principal and other leaders manage the organizational structures in the school effectively. They can adapt to the institution&rsquo;s evolving needs in a timely way, as well as to developments in education policy and pedagogical practice. School leaders manage the planning and implementation of the curriculum in a way that provides valuable learning experiences. They constantly monitor the use of budgets, staff, and other resources and direct them toward defined learning priorities. The principal and other leaders seek to maximize students&rsquo; learning opportunities and ensure that the school building and grounds are maintained to a good standard. The school&rsquo;s management structures ensure all legislative and policy requirements are met.</p>\r\n<p>&nbsp;</p>\r\n<h4><strong>From the Handbook&nbsp;</strong></h4>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<p>&nbsp;</p>\r\n<p>Success does not depend upon a large budget or small class sizes, but on the careful and planned use of existing resources.</p>\r\n<p style=\"text-align: right;\">IE Handbook, page 44</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 45.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&ldquo;The principal and other leaders seek to maximize students&rsquo; learning opportunities and ensure that the school building and grounds are maintained to a good standard.&rdquo;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>', '<p><img class=\"w-100\" src=\"/storage/photos/1/footer/MicrosoftTeams-image (1).png\" alt=\"\" /></p>', 'en', 1, 1, 1, '2022-03-06 22:05:47', '2022-09-15 09:02:17'),
(39, '6.3.1 What if...?', 'school-management-what-if', 38, '<p>school management what if</p>', NULL, 'en', 1, 1, 1, '2022-03-06 22:07:01', '2022-06-07 09:16:35'),
(40, 'POLICY & SYSTEMS', 'policy-systems', NULL, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h2><strong><img class=\"rounded\" src=\"/storage/photos/1/card0.png\" alt=\"\" width=\"65\" height=\"39\" />&nbsp; POLICY &amp; SYSTEMS</strong></h2>\r\n<p>&nbsp;</p>\r\n<p>Save the Children recognizes that the realization of the foundations of the Quality Learning Framework at school and community level depends greatly on the policy and systems of the wider environment &ndash; both locally and nationally. Governments are accountable for defining and managing their education policy framework and therefore determining who has access to education, the language(s) of instruction, how teachers are developed and deployed and curriculum content. An effective education system will require information systems to support evidence-based planning and strong accountability mechanisms, significant financial resources, and good governance - with strong financial management and management of teachers. A successful education system will pay particular attention to the quality of teachers, supported by effective recruitment, deployment and retention systems, competitive salaries and benefits and professional development processes.</p>\r\n<p style=\"text-align: left;\">-Quality Learning Framework</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p style=\"text-align: left;\">Effective policies and systems underpin the five foundations and the overall quality of inclusive education at school and community level.</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<h4><strong>From the Handbook</strong></h4>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\">\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<h6>&nbsp;</h6>\r\n<h6>&nbsp;</h6>\r\n<h6>There is no standard model for ensuring that education is inclusive and responsive. (&hellip;) It often requires working to change the policies, systems, practices, and cultures in schools so that they can respond to the diversity of learners in their locality, as well as working closely with the community and society at large. Intervention may therefore need to happen at different levels at the same time, from national policy advocacy to teacher education, and from demonstrating good practices to raising public awareness on rights and responsibilities.</h6>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right;\">IE Handbook, page 6</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/Image 14.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\">&ldquo;An effective education system will require information systems to support evidence-based planning and strong accountability mechanisms, significant financial resources, and good governance - with strong financial management and management of teachers.&rdquo;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', '<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 48.png\" alt=\"\" /></p>\r\n<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 49.png\" alt=\"\" /></p>\r\n<p><img class=\"w-100\" src=\"/storage/photos/1/footer/Image 50.png\" alt=\"\" /></p>', 'en', 1, 1, 1, '2022-03-06 22:07:30', '2022-07-04 04:29:32'),
(41, '7.1.1 What if...?', 'what-if', 40, NULL, NULL, 'en', 1, 1, 1, '2022-03-06 22:08:19', '2022-08-08 06:09:10'),
(42, 'MEAL', 'meal', NULL, 'MEAL', NULL, 'en', 1, 1, 1, '2022-03-06 22:09:02', '2022-03-06 22:09:02'),
(43, 'GLOSSARY', 'glossary', NULL, 'GLOSSARY', NULL, 'en', 1, 1, 1, '2022-03-06 22:09:27', '2022-03-06 22:09:27'),
(44, 'ACCESO', 'acceso', NULL, '<div class=\"container\">\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-8 col-12\">\r\n<h3><strong><img class=\"rounded\" src=\"/storage/photos/1/card2.png\" alt=\"\" width=\"65\" height=\"39\" />&nbsp; 1. ACCESS</strong></h3>\r\n<br />\r\n<p>&nbsp;</p>\r\n<p><strong>Save the Children reconoce que muchos de los ni&ntilde;os y ni&ntilde;as m&aacute;s desfavorecidos y marginalizados est&aacute;n excluidos de los colegios y espacios de aprendizaje. Se deben poner en marcha estrategias proactivas para garantizar que los ni&ntilde;os y las ni&ntilde;as tengan acceso a la educaci&oacute;n. El gobierno, la sociedad civil o los proveedores de servicios tambi&eacute;n juegan un papel en los cambios de normas o proporcionando programas que traten los factores de exclusi&oacute;n que afectan la capacidad de los ni&ntilde;os y las ni&ntilde;as para acceder al aprendizaje, como la discapacidad, la pobreza extrema, el desplazamiento causado por conflicto armado o desastre natural, o discriminaci&oacute;n por g&eacute;nero, etnia, orientaci&oacute;n sexual o religi&oacute;n.</strong></p>\r\n<p><strong> - Adaptado del Quality Learning Framework, Save the Children</strong></p>\r\n<p>&nbsp;</p>\r\n<p>El acceso es un componente fundamental de la educaci&oacute;n inclusiva que destaca el derecho<br />fundamental de todos los ni&ntilde;os y las ni&ntilde;as de asistir al colegio y aprender. El acceso<br />incluye la asistencia, matricula, participaci&oacute;n, permanencia y transici&oacute;n de un grado a otro<br />de acuerdo al avance esperado, especialmente durante emergencias, pandemias como<br />el COVID-19 y situaciones de conflicto. Asegurar que todos los ni&ntilde;os y las ni&ntilde;as tengan<br />acceso a espacios de aprendizaje de calidad y seguros, ya sean aulas f&iacute;sicas o lugares<br />de aprendizaje remoto, contribuye a la realizaci&oacute;n de los cinco fundamentos del Quality<br />Learning Framework. El acceso est&aacute; basado en el derecho a la No Discriminaci&oacute;n (Art. 2 de<br />la CDN de la ONU) situando la responsabilidad en los educadores y padres de estar al tanto<br />de los ni&ntilde;os y las ni&ntilde;as que no asisten a la escuela o que no participan en el aprendizaje con<br />todo su potencial, identificando las barreras que les impiden hacerlo.</p>\r\n<p>&nbsp;</p>\r\n<p>Algunas soluciones a los factores comunes que excluyen a los ni&ntilde;os y las ni&ntilde;as se<br />proporcionan aqu&iacute;. Como existen muchas razones que impiden a los ni&ntilde;os y ni&ntilde;as acurdir<br />a la escuela, se hace referencia a otras &aacute;reas que pueden proporcionar soluciones a<br />profundidad.</p>\r\n</div>\r\n<div class=\"col-lg-4 col-12\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<div class=\"v-image v-responsive theme--light\">\r\n<div class=\"v-responsive__sizer\"><img class=\"w-100\" src=\"/storage/photos/1/access/Image 2.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-12\">\r\n<p class=\"access-p-font\" style=\"text-align: center;\">&ldquo;Asegurar que todos los ni&ntilde;os y las ni&ntilde;as tengan acceso a espacios de aprendizaje de calidad y seguros, ya sean aulas f&iacute;sicas o lugares de aprendizaje remoto, contribuye a la realizaci&oacute;n de los cinco fundamentos del Quality Learning Framework.&rdquo;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"box-card\">\r\n<div class=\"row justify-center\"><br /><br />\r\n<h4><strong>Del IE Handbook</strong></h4>\r\n<div class=\"v-card v-sheet v-sheet--outlined theme--light elevation-0\">\r\n<h5><strong>Durante su trabajo con docentes, ni&ntilde;os y ni&ntilde;as, oficiales del gobierno y<br />comunidades, no deje de preguntarse:</strong></h5>\r\n<p>1. &iquest;Cu&aacute;les son las barreras de acceso, participaci&oacute;n y aprendizaje?</p>\r\n<p>2. &nbsp;&iquest;Qui&eacute;n perpet&uacute;a las barreras, c&oacute;mo y por qu&eacute;?</p>\r\n<p>3. &nbsp;&iquest;Qui&eacute;n sufre estas barreras? &iquest;Son algunas personas m&aacute;s afectadas por estas barreras que otras?</p>\r\n<p>4. &nbsp;&iquest;C&oacute;mo se pueden minimizar estas barreras?</p>\r\n<p>5. &nbsp;&iquest;Qu&eacute; recursos (humanos,financieros, materiales) est&aacute;n disponibles para apoyar el acceso, la participaci&oacute;n y aprendizaje de ni&ntilde;os y ni&ntilde;as anteriormente excluidos?</p>\r\n<p>6. &nbsp;&iquest;C&oacute;mo podemos movilizar recursos adicionales?</p>\r\n<p style=\"text-align: right;\">Del IEH, p&aacute;gina 13</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, 'es', 1, 1, 1, '2023-01-26 03:55:08', '2023-01-29 00:28:42'),
(45, '1.1.1 ¿QUÉ PASARÍA SI...?', 'what-if', 44, '<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, 'es', 1, 1, 1, '2023-01-28 22:46:45', '2023-01-29 00:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `toolkit_relevant_indicator_relations`
--

CREATE TABLE `toolkit_relevant_indicator_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `relevant_indicator_id` int(11) DEFAULT NULL,
  `toolkit_id` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toolkit_relevant_indicator_relations`
--

INSERT INTO `toolkit_relevant_indicator_relations` (`id`, `relevant_indicator_id`, `toolkit_id`, `language`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(41, 95, 8, 'en', 1, 1, 1, '2022-03-06 00:29:22', '2022-03-06 00:29:22'),
(51, 108, 1, 'en', 1, 1, 1, '2022-03-08 10:06:50', '2022-03-08 10:06:50'),
(52, 119, 1, 'en', 1, 1, 1, '2022-03-08 10:06:50', '2022-03-08 10:06:50'),
(68, 122, 8, 'en', 1, 1, 1, '2022-03-09 08:07:12', '2022-03-09 08:07:12'),
(102, 117, 23, 'en', 1, 1, 1, '2022-03-09 10:06:13', '2022-03-09 10:06:13'),
(112, 159, 3, 'en', 1, 1, 1, '2022-03-30 04:28:29', '2022-03-30 04:28:29'),
(113, 160, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(114, 108, 14, 'en', 1, 1, 1, '2022-03-30 04:31:10', '2022-03-30 04:31:10'),
(115, 109, 14, 'en', 1, 1, 1, '2022-03-30 04:31:10', '2022-03-30 04:31:10'),
(116, 109, 15, 'en', 1, 1, 1, '2022-03-30 04:32:25', '2022-03-30 04:32:25'),
(117, 160, 15, 'en', 1, 1, 1, '2022-03-30 04:32:25', '2022-03-30 04:32:25'),
(118, 118, 18, 'en', 1, 1, 1, '2022-03-30 04:39:15', '2022-03-30 04:39:15'),
(119, 160, 18, 'en', 1, 1, 1, '2022-03-30 04:39:15', '2022-03-30 04:39:15'),
(123, 121, 24, 'en', 1, 1, 1, '2022-03-31 09:02:02', '2022-03-31 09:02:02'),
(125, 121, 26, 'en', 1, 1, 1, '2022-03-31 09:11:57', '2022-03-31 09:11:57'),
(126, 131, 26, 'en', 1, 1, 1, '2022-03-31 09:11:57', '2022-03-31 09:11:57'),
(130, 118, 30, 'en', 1, 1, 1, '2022-03-31 09:27:57', '2022-03-31 09:27:57'),
(132, 121, 32, 'en', 1, 1, 1, '2022-03-31 09:32:06', '2022-03-31 09:32:06'),
(141, 122, 38, 'en', 1, 1, 1, '2022-03-31 10:19:26', '2022-03-31 10:19:26'),
(144, 121, 41, 'en', 1, 1, 1, '2022-03-31 10:28:10', '2022-03-31 10:28:10'),
(145, 128, 41, 'en', 1, 1, 1, '2022-03-31 10:28:10', '2022-03-31 10:28:10'),
(146, 121, 25, 'en', 1, 1, 1, '2022-04-03 07:40:32', '2022-04-03 07:40:32'),
(147, 121, 27, 'en', 1, 1, 1, '2022-04-03 07:42:04', '2022-04-03 07:42:04'),
(150, 122, 31, 'en', 1, 1, 1, '2022-04-03 07:46:57', '2022-04-03 07:46:57'),
(151, 121, 37, 'en', 1, 1, 1, '2022-04-03 07:52:04', '2022-04-03 07:52:04'),
(152, 121, 34, 'en', 1, 1, 1, '2022-04-03 07:52:59', '2022-04-03 07:52:59'),
(154, 167, 42, 'en', 1, 1, 1, '2022-04-03 09:26:42', '2022-04-03 09:26:42'),
(155, 167, 43, 'en', 1, 1, 1, '2022-04-03 09:30:09', '2022-04-03 09:30:09'),
(159, 163, 46, 'en', 1, 1, 1, '2022-04-04 07:09:24', '2022-04-04 07:09:24'),
(160, 173, 46, 'en', 1, 1, 1, '2022-04-04 07:09:24', '2022-04-04 07:09:24'),
(161, 173, 47, 'en', 1, 1, 1, '2022-04-04 07:10:51', '2022-04-04 07:10:51'),
(162, 181, 48, 'en', 1, 1, 1, '2022-04-04 07:12:29', '2022-04-04 07:12:29'),
(163, 163, 49, 'en', 1, 1, 1, '2022-04-04 07:16:38', '2022-04-04 07:16:38'),
(164, 173, 49, 'en', 1, 1, 1, '2022-04-04 07:16:38', '2022-04-04 07:16:38'),
(165, 163, 50, 'en', 1, 1, 1, '2022-04-04 07:18:34', '2022-04-04 07:18:34'),
(166, 173, 50, 'en', 1, 1, 1, '2022-04-04 07:18:34', '2022-04-04 07:18:34'),
(167, 163, 51, 'en', 1, 1, 1, '2022-04-04 07:20:31', '2022-04-04 07:20:31'),
(168, 182, 51, 'en', 1, 1, 1, '2022-04-04 07:20:31', '2022-04-04 07:20:31'),
(169, 183, 51, 'en', 1, 1, 1, '2022-04-04 07:20:31', '2022-04-04 07:20:31'),
(171, 163, 53, 'en', 1, 1, 1, '2022-04-04 07:31:45', '2022-04-04 07:31:45'),
(173, 164, 55, 'en', 1, 1, 1, '2022-04-04 07:36:33', '2022-04-04 07:36:33'),
(174, 174, 55, 'en', 1, 1, 1, '2022-04-04 07:36:33', '2022-04-04 07:36:33'),
(175, 164, 56, 'en', 1, 1, 1, '2022-04-04 07:38:52', '2022-04-04 07:38:52'),
(176, 167, 57, 'en', 1, 1, 1, '2022-04-04 07:41:05', '2022-04-04 07:41:05'),
(177, 167, 58, 'en', 1, 1, 1, '2022-04-04 07:44:38', '2022-04-04 07:44:38'),
(179, 189, 59, 'en', 1, 1, 1, '2022-04-04 07:49:11', '2022-04-04 07:49:11'),
(180, 167, 60, 'en', 1, 1, 1, '2022-04-04 08:03:01', '2022-04-04 08:03:01'),
(181, 171, 60, 'en', 1, 1, 1, '2022-04-04 08:03:01', '2022-04-04 08:03:01'),
(183, 167, 62, 'en', 1, 1, 1, '2022-04-04 08:08:38', '2022-04-04 08:08:38'),
(185, 167, 64, 'en', 1, 1, 1, '2022-04-04 08:15:46', '2022-04-04 08:15:46'),
(186, 187, 66, 'en', 1, 1, 1, '2022-04-04 08:21:28', '2022-04-04 08:21:28'),
(188, 167, 68, 'en', 1, 1, 1, '2022-04-04 08:25:55', '2022-04-04 08:25:55'),
(189, 171, 69, 'en', 1, 1, 1, '2022-04-04 08:29:43', '2022-04-04 08:29:43'),
(190, 167, 65, 'en', 1, 1, 1, '2022-04-04 08:30:58', '2022-04-04 08:30:58'),
(193, 118, 2, 'en', 1, 1, 1, '2022-04-10 05:37:34', '2022-04-10 05:37:34'),
(194, 160, 2, 'en', 1, 1, 1, '2022-04-10 05:37:34', '2022-04-10 05:37:34'),
(200, 121, 7, 'en', 1, 1, 1, '2022-04-10 05:49:03', '2022-04-10 05:49:03'),
(202, 121, 11, 'en', 1, 1, 1, '2022-04-10 05:50:26', '2022-04-10 05:50:26'),
(203, 129, 11, 'en', 1, 1, 1, '2022-04-10 05:50:26', '2022-04-10 05:50:26'),
(205, 122, 13, 'en', 1, 1, 1, '2022-04-10 05:52:29', '2022-04-10 05:52:29'),
(206, 133, 13, 'en', 1, 1, 1, '2022-04-10 05:52:29', '2022-04-10 05:52:29'),
(207, 165, 45, 'en', 1, 1, 1, '2022-04-10 05:54:09', '2022-04-10 05:54:09'),
(208, 173, 45, 'en', 1, 1, 1, '2022-04-10 05:54:09', '2022-04-10 05:54:09'),
(209, 166, 52, 'en', 1, 1, 1, '2022-04-10 05:55:06', '2022-04-10 05:55:06'),
(210, 167, 54, 'en', 1, 1, 1, '2022-04-10 05:56:35', '2022-04-10 05:56:35'),
(211, 167, 61, 'en', 1, 1, 1, '2022-04-10 05:57:34', '2022-04-10 05:57:34'),
(213, 140, 22, 'en', 1, 1, 1, '2022-04-11 08:10:43', '2022-04-11 08:10:43'),
(214, 159, 22, 'en', 1, 1, 1, '2022-04-11 08:10:43', '2022-04-11 08:10:43'),
(215, 122, 5, 'en', 1, 1, 1, '2022-04-12 03:44:56', '2022-04-12 03:44:56'),
(219, 173, 44, 'en', 1, 1, 1, '2022-04-12 04:04:02', '2022-04-12 04:04:02'),
(220, 174, 44, 'en', 1, 1, 1, '2022-04-12 04:04:02', '2022-04-12 04:04:02'),
(231, 206, 71, 'en', 1, 1, 1, '2022-04-19 09:00:57', '2022-04-19 09:00:57'),
(232, 215, 71, 'en', 1, 1, 1, '2022-04-19 09:00:57', '2022-04-19 09:00:57'),
(233, 202, 70, 'en', 1, 1, 1, '2022-04-19 09:01:36', '2022-04-19 09:01:36'),
(234, 215, 70, 'en', 1, 1, 1, '2022-04-19 09:01:36', '2022-04-19 09:01:36'),
(235, 206, 72, 'en', 1, 1, 1, '2022-04-19 09:04:12', '2022-04-19 09:04:12'),
(236, 215, 72, 'en', 1, 1, 1, '2022-04-19 09:04:12', '2022-04-19 09:04:12'),
(238, 193, 74, 'en', 1, 1, 1, '2022-04-19 09:10:41', '2022-04-19 09:10:41'),
(241, 191, 76, 'en', 1, 1, 1, '2022-04-19 09:16:35', '2022-04-19 09:16:35'),
(242, 191, 78, 'en', 1, 1, 1, '2022-04-19 09:22:40', '2022-04-19 09:22:40'),
(243, 205, 78, 'en', 1, 1, 1, '2022-04-19 09:22:40', '2022-04-19 09:22:40'),
(244, 206, 78, 'en', 1, 1, 1, '2022-04-19 09:22:40', '2022-04-19 09:22:40'),
(245, 213, 78, 'en', 1, 1, 1, '2022-04-19 09:22:40', '2022-04-19 09:22:40'),
(246, 199, 79, 'en', 1, 1, 1, '2022-04-20 03:05:36', '2022-04-20 03:05:36'),
(247, 200, 79, 'en', 1, 1, 1, '2022-04-20 03:05:36', '2022-04-20 03:05:36'),
(248, 221, 79, 'en', 1, 1, 1, '2022-04-20 03:05:36', '2022-04-20 03:05:36'),
(249, 193, 80, 'en', 1, 1, 1, '2022-04-20 03:07:56', '2022-04-20 03:07:56'),
(250, 206, 81, 'en', 1, 1, 1, '2022-04-20 03:10:15', '2022-04-20 03:10:15'),
(251, 209, 81, 'en', 1, 1, 1, '2022-04-20 03:10:15', '2022-04-20 03:10:15'),
(252, 215, 81, 'en', 1, 1, 1, '2022-04-20 03:10:15', '2022-04-20 03:10:15'),
(253, 193, 82, 'en', 1, 1, 1, '2022-04-20 03:12:40', '2022-04-20 03:12:40'),
(254, 193, 83, 'en', 1, 1, 1, '2022-04-20 03:14:08', '2022-04-20 03:14:08'),
(255, 191, 84, 'en', 1, 1, 1, '2022-04-20 03:16:34', '2022-04-20 03:16:34'),
(256, 225, 84, 'en', 1, 1, 1, '2022-04-20 03:16:34', '2022-04-20 03:16:34'),
(257, 191, 85, 'en', 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(258, 193, 85, 'en', 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(259, 225, 85, 'en', 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(260, 225, 86, 'en', 1, 1, 1, '2022-04-20 03:23:00', '2022-04-20 03:23:00'),
(262, 142, 88, 'en', 1, 1, 1, '2022-04-20 05:35:05', '2022-04-20 05:35:05'),
(263, 223, 88, 'en', 1, 1, 1, '2022-04-20 05:35:05', '2022-04-20 05:35:05'),
(264, 206, 89, 'en', 1, 1, 1, '2022-04-20 05:36:46', '2022-04-20 05:36:46'),
(265, 134, 90, 'en', 1, 1, 1, '2022-04-20 05:54:43', '2022-04-20 05:54:43'),
(266, 214, 90, 'en', 1, 1, 1, '2022-04-20 05:54:43', '2022-04-20 05:54:43'),
(270, 200, 92, 'en', 1, 1, 1, '2022-04-20 06:02:03', '2022-04-20 06:02:03'),
(271, 206, 92, 'en', 1, 1, 1, '2022-04-20 06:02:03', '2022-04-20 06:02:03'),
(272, 208, 92, 'en', 1, 1, 1, '2022-04-20 06:02:03', '2022-04-20 06:02:03'),
(273, 211, 92, 'en', 1, 1, 1, '2022-04-20 06:02:03', '2022-04-20 06:02:03'),
(274, 215, 92, 'en', 1, 1, 1, '2022-04-20 06:02:03', '2022-04-20 06:02:03'),
(275, 215, 93, 'en', 1, 1, 1, '2022-04-20 06:19:06', '2022-04-20 06:19:06'),
(278, 200, 95, 'en', 1, 1, 1, '2022-04-20 06:27:57', '2022-04-20 06:27:57'),
(279, 215, 95, 'en', 1, 1, 1, '2022-04-20 06:27:57', '2022-04-20 06:27:57'),
(280, 207, 96, 'en', 1, 1, 1, '2022-04-20 06:29:17', '2022-04-20 06:29:17'),
(281, 206, 97, 'en', 1, 1, 1, '2022-04-20 06:31:03', '2022-04-20 06:31:03'),
(285, 202, 100, 'en', 1, 1, 1, '2022-04-20 06:50:48', '2022-04-20 06:50:48'),
(286, 216, 100, 'en', 1, 1, 1, '2022-04-20 06:50:48', '2022-04-20 06:50:48'),
(287, 217, 100, 'en', 1, 1, 1, '2022-04-20 06:50:48', '2022-04-20 06:50:48'),
(294, 205, 102, 'en', 1, 1, 1, '2022-04-20 06:54:34', '2022-04-20 06:54:34'),
(299, 207, 104, 'en', 1, 1, 1, '2022-04-20 07:01:54', '2022-04-20 07:01:54'),
(311, 207, 110, 'en', 1, 1, 1, '2022-04-20 08:03:25', '2022-04-20 08:03:25'),
(314, 205, 112, 'en', 1, 1, 1, '2022-04-20 08:06:03', '2022-04-20 08:06:03'),
(316, 205, 114, 'en', 1, 1, 1, '2022-04-20 08:09:09', '2022-04-20 08:09:09'),
(317, 206, 115, 'en', 1, 1, 1, '2022-04-20 08:10:37', '2022-04-20 08:10:37'),
(319, 207, 117, 'en', 1, 1, 1, '2022-04-20 08:14:49', '2022-04-20 08:14:49'),
(320, 206, 118, 'en', 1, 1, 1, '2022-04-20 08:18:15', '2022-04-20 08:18:15'),
(321, 205, 119, 'en', 1, 1, 1, '2022-04-20 08:20:02', '2022-04-20 08:20:02'),
(322, 219, 119, 'en', 1, 1, 1, '2022-04-20 08:20:02', '2022-04-20 08:20:02'),
(327, 205, 120, 'en', 1, 1, 1, '2022-04-20 08:24:20', '2022-04-20 08:24:20'),
(328, 219, 120, 'en', 1, 1, 1, '2022-04-20 08:24:20', '2022-04-20 08:24:20'),
(329, 205, 121, 'en', 1, 1, 1, '2022-04-20 08:25:44', '2022-04-20 08:25:44'),
(330, 219, 121, 'en', 1, 1, 1, '2022-04-20 08:25:44', '2022-04-20 08:25:44'),
(331, 200, 122, 'en', 1, 1, 1, '2022-04-20 08:27:13', '2022-04-20 08:27:13'),
(332, 215, 122, 'en', 1, 1, 1, '2022-04-20 08:27:13', '2022-04-20 08:27:13'),
(337, 134, 128, 'en', 1, 1, 1, '2022-04-20 08:47:07', '2022-04-20 08:47:07'),
(338, 140, 128, 'en', 1, 1, 1, '2022-04-20 08:47:07', '2022-04-20 08:47:07'),
(346, 202, 132, 'en', 1, 1, 1, '2022-04-20 08:52:24', '2022-04-20 08:52:24'),
(348, 215, 103, 'en', 1, 1, 1, '2022-04-20 09:03:21', '2022-04-20 09:03:21'),
(358, 202, 131, 'en', 1, 1, 1, '2022-04-20 09:11:32', '2022-04-20 09:11:32'),
(359, 215, 131, 'en', 1, 1, 1, '2022-04-20 09:11:32', '2022-04-20 09:11:32'),
(360, 230, 134, 'en', 1, 1, 1, '2022-04-21 05:55:54', '2022-04-21 05:55:54'),
(361, 228, 135, 'en', 1, 1, 1, '2022-04-21 05:58:34', '2022-04-21 05:58:34'),
(362, 239, 135, 'en', 1, 1, 1, '2022-04-21 05:58:34', '2022-04-21 05:58:34'),
(363, 240, 135, 'en', 1, 1, 1, '2022-04-21 05:58:34', '2022-04-21 05:58:34'),
(368, 227, 137, 'en', 1, 1, 1, '2022-04-21 06:15:46', '2022-04-21 06:15:46'),
(369, 234, 137, 'en', 1, 1, 1, '2022-04-21 06:15:46', '2022-04-21 06:15:46'),
(370, 230, 139, 'en', 1, 1, 1, '2022-04-21 06:18:40', '2022-04-21 06:18:40'),
(371, 244, 140, 'en', 1, 1, 1, '2022-04-21 06:26:36', '2022-04-21 06:26:36'),
(372, 228, 142, 'en', 1, 1, 1, '2022-04-21 06:31:38', '2022-04-21 06:31:38'),
(373, 239, 142, 'en', 1, 1, 1, '2022-04-21 06:31:38', '2022-04-21 06:31:38'),
(374, 240, 142, 'en', 1, 1, 1, '2022-04-21 06:31:38', '2022-04-21 06:31:38'),
(375, 230, 143, 'en', 1, 1, 1, '2022-04-21 06:32:19', '2022-04-21 06:32:19'),
(376, 244, 144, 'en', 1, 1, 1, '2022-04-21 06:33:50', '2022-04-21 06:33:50'),
(377, 242, 145, 'en', 1, 1, 1, '2022-04-21 06:35:34', '2022-04-21 06:35:34'),
(380, 228, 147, 'en', 1, 1, 1, '2022-04-21 06:42:17', '2022-04-21 06:42:17'),
(381, 227, 148, 'en', 1, 1, 1, '2022-04-21 06:43:36', '2022-04-21 06:43:36'),
(382, 233, 148, 'en', 1, 1, 1, '2022-04-21 06:43:36', '2022-04-21 06:43:36'),
(383, 228, 149, 'en', 1, 1, 1, '2022-04-21 06:45:31', '2022-04-21 06:45:31'),
(384, 239, 149, 'en', 1, 1, 1, '2022-04-21 06:45:31', '2022-04-21 06:45:31'),
(385, 240, 149, 'en', 1, 1, 1, '2022-04-21 06:45:31', '2022-04-21 06:45:31'),
(386, 227, 150, 'en', 1, 1, 1, '2022-04-21 06:46:50', '2022-04-21 06:46:50'),
(387, 236, 150, 'en', 1, 1, 1, '2022-04-21 06:46:50', '2022-04-21 06:46:50'),
(388, 227, 151, 'en', 1, 1, 1, '2022-04-21 06:49:06', '2022-04-21 06:49:06'),
(389, 233, 151, 'en', 1, 1, 1, '2022-04-21 06:49:06', '2022-04-21 06:49:06'),
(390, 235, 151, 'en', 1, 1, 1, '2022-04-21 06:49:06', '2022-04-21 06:49:06'),
(391, 236, 151, 'en', 1, 1, 1, '2022-04-21 06:49:06', '2022-04-21 06:49:06'),
(392, 230, 152, 'en', 1, 1, 1, '2022-04-21 06:51:05', '2022-04-21 06:51:05'),
(393, 244, 152, 'en', 1, 1, 1, '2022-04-21 06:51:05', '2022-04-21 06:51:05'),
(394, 229, 153, 'en', 1, 1, 1, '2022-04-21 06:53:23', '2022-04-21 06:53:23'),
(397, 238, 155, 'en', 1, 1, 1, '2022-04-21 06:58:57', '2022-04-21 06:58:57'),
(398, 239, 155, 'en', 1, 1, 1, '2022-04-21 06:58:57', '2022-04-21 06:58:57'),
(399, 240, 155, 'en', 1, 1, 1, '2022-04-21 06:58:57', '2022-04-21 06:58:57'),
(400, 227, 156, 'en', 1, 1, 1, '2022-04-21 07:00:42', '2022-04-21 07:00:42'),
(403, 126, 157, 'en', 1, 1, 1, '2022-05-18 04:57:14', '2022-05-18 04:57:14'),
(404, 250, 157, 'en', 1, 1, 1, '2022-05-18 04:57:14', '2022-05-18 04:57:14'),
(409, 124, 158, 'en', 1, 1, 1, '2022-05-18 05:29:32', '2022-05-18 05:29:32'),
(410, 125, 158, 'en', 1, 1, 1, '2022-05-18 05:29:32', '2022-05-18 05:29:32'),
(411, 126, 158, 'en', 1, 1, 1, '2022-05-18 05:29:32', '2022-05-18 05:29:32'),
(412, 261, 158, 'en', 1, 1, 1, '2022-05-18 05:29:32', '2022-05-18 05:29:32'),
(413, 124, 159, 'en', 1, 1, 1, '2022-05-18 05:31:45', '2022-05-18 05:31:45'),
(414, 124, 160, 'en', 1, 1, 1, '2022-05-18 05:41:39', '2022-05-18 05:41:39'),
(415, 126, 161, 'en', 1, 1, 1, '2022-05-18 05:43:51', '2022-05-18 05:43:51'),
(416, 250, 161, 'en', 1, 1, 1, '2022-05-18 05:43:51', '2022-05-18 05:43:51'),
(419, 126, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(420, 250, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(421, 261, 163, 'en', 1, 1, 1, '2022-05-18 06:26:37', '2022-05-18 06:26:37'),
(422, 124, 164, 'en', 1, 1, 1, '2022-05-18 06:38:19', '2022-05-18 06:38:19'),
(423, 125, 164, 'en', 1, 1, 1, '2022-05-18 06:38:19', '2022-05-18 06:38:19'),
(424, 126, 164, 'en', 1, 1, 1, '2022-05-18 06:38:19', '2022-05-18 06:38:19'),
(425, 261, 164, 'en', 1, 1, 1, '2022-05-18 06:38:19', '2022-05-18 06:38:19'),
(426, 125, 165, 'en', 1, 1, 1, '2022-05-18 08:32:17', '2022-05-18 08:32:17'),
(427, 254, 166, 'en', 1, 1, 1, '2022-05-18 08:33:31', '2022-05-18 08:33:31'),
(432, 126, 168, 'en', 1, 1, 1, '2022-05-18 09:18:46', '2022-05-18 09:18:46'),
(433, 250, 168, 'en', 1, 1, 1, '2022-05-18 09:18:46', '2022-05-18 09:18:46'),
(434, 126, 169, 'en', 1, 1, 1, '2022-05-18 09:53:52', '2022-05-18 09:53:52'),
(435, 250, 169, 'en', 1, 1, 1, '2022-05-18 09:53:52', '2022-05-18 09:53:52'),
(436, 263, 169, 'en', 1, 1, 1, '2022-05-18 09:53:52', '2022-05-18 09:53:52'),
(437, 124, 170, 'en', 1, 1, 1, '2022-05-19 09:46:04', '2022-05-19 09:46:04'),
(438, 126, 171, 'en', 1, 1, 1, '2022-05-19 09:48:47', '2022-05-19 09:48:47'),
(441, 252, 172, 'en', 1, 1, 1, '2022-05-19 09:54:33', '2022-05-19 09:54:33'),
(442, 253, 172, 'en', 1, 1, 1, '2022-05-19 09:54:33', '2022-05-19 09:54:33'),
(443, 259, 173, 'en', 1, 1, 1, '2022-05-19 09:59:09', '2022-05-19 09:59:09'),
(444, 126, 174, 'en', 1, 1, 1, '2022-05-19 10:04:41', '2022-05-19 10:04:41'),
(445, 257, 175, 'en', 1, 1, 1, '2022-05-19 10:07:29', '2022-05-19 10:07:29'),
(446, 263, 176, 'en', 1, 1, 1, '2022-05-19 10:11:43', '2022-05-19 10:11:43'),
(447, 134, 108, 'en', 1, 1, 1, '2022-05-29 07:29:31', '2022-05-29 07:29:31'),
(448, 140, 108, 'en', 1, 1, 1, '2022-05-29 07:29:31', '2022-05-29 07:29:31'),
(449, 225, 107, 'en', 1, 1, 1, '2022-05-29 07:33:03', '2022-05-29 07:33:03'),
(450, 205, 113, 'en', 1, 1, 1, '2022-05-29 07:42:37', '2022-05-29 07:42:37'),
(454, 192, 106, 'en', 1, 1, 1, '2022-06-07 09:26:37', '2022-06-07 09:26:37'),
(455, 193, 106, 'en', 1, 1, 1, '2022-06-07 09:26:37', '2022-06-07 09:26:37'),
(458, 265, 178, 'en', 1, 1, 1, '2022-06-13 06:41:23', '2022-06-13 06:41:23'),
(459, 273, 178, 'en', 1, 1, 1, '2022-06-13 06:41:23', '2022-06-13 06:41:23'),
(460, 266, 179, 'en', 1, 1, 1, '2022-06-13 06:44:02', '2022-06-13 06:44:02'),
(461, 275, 179, 'en', 1, 1, 1, '2022-06-13 06:44:02', '2022-06-13 06:44:02'),
(471, 265, 180, 'en', 1, 1, 1, '2022-06-13 06:50:20', '2022-06-13 06:50:20'),
(472, 266, 180, 'en', 1, 1, 1, '2022-06-13 06:50:20', '2022-06-13 06:50:20'),
(473, 267, 180, 'en', 1, 1, 1, '2022-06-13 06:50:20', '2022-06-13 06:50:20'),
(474, 268, 180, 'en', 1, 1, 1, '2022-06-13 06:50:20', '2022-06-13 06:50:20'),
(475, 272, 180, 'en', 1, 1, 1, '2022-06-13 06:50:20', '2022-06-13 06:50:20'),
(476, 273, 180, 'en', 1, 1, 1, '2022-06-13 06:50:20', '2022-06-13 06:50:20'),
(477, 274, 180, 'en', 1, 1, 1, '2022-06-13 06:50:20', '2022-06-13 06:50:20'),
(478, 275, 180, 'en', 1, 1, 1, '2022-06-13 06:50:20', '2022-06-13 06:50:20'),
(479, 279, 180, 'en', 1, 1, 1, '2022-06-13 06:50:20', '2022-06-13 06:50:20'),
(480, 272, 181, 'en', 1, 1, 1, '2022-06-13 07:51:16', '2022-06-13 07:51:16'),
(481, 230, 182, 'en', 1, 1, 1, '2022-06-13 07:53:20', '2022-06-13 07:53:20'),
(482, 244, 182, 'en', 1, 1, 1, '2022-06-13 07:53:20', '2022-06-13 07:53:20'),
(483, 265, 183, 'en', 1, 1, 1, '2022-06-13 07:56:57', '2022-06-13 07:56:57'),
(484, 273, 183, 'en', 1, 1, 1, '2022-06-13 07:56:57', '2022-06-13 07:56:57'),
(485, 279, 183, 'en', 1, 1, 1, '2022-06-13 07:56:57', '2022-06-13 07:56:57'),
(486, 272, 184, 'en', 1, 1, 1, '2022-06-14 05:51:00', '2022-06-14 05:51:00'),
(487, 267, 185, 'en', 1, 1, 1, '2022-06-14 05:53:35', '2022-06-14 05:53:35'),
(488, 274, 185, 'en', 1, 1, 1, '2022-06-14 05:53:35', '2022-06-14 05:53:35'),
(489, 265, 186, 'en', 1, 1, 1, '2022-06-14 05:56:21', '2022-06-14 05:56:21'),
(490, 273, 186, 'en', 1, 1, 1, '2022-06-14 05:56:21', '2022-06-14 05:56:21'),
(491, 265, 187, 'en', 1, 1, 1, '2022-06-14 06:02:35', '2022-06-14 06:02:35'),
(492, 273, 187, 'en', 1, 1, 1, '2022-06-14 06:02:35', '2022-06-14 06:02:35'),
(493, 265, 188, 'en', 1, 1, 1, '2022-06-14 06:07:24', '2022-06-14 06:07:24'),
(494, 273, 188, 'en', 1, 1, 1, '2022-06-14 06:07:24', '2022-06-14 06:07:24'),
(495, 266, 189, 'en', 1, 1, 1, '2022-06-14 06:14:25', '2022-06-14 06:14:25'),
(496, 272, 189, 'en', 1, 1, 1, '2022-06-14 06:14:25', '2022-06-14 06:14:25'),
(497, 118, 19, 'en', 1, 1, 1, '2022-06-26 04:04:36', '2022-06-26 04:04:36'),
(498, 142, 19, 'en', 1, 1, 1, '2022-06-26 04:04:36', '2022-06-26 04:04:36'),
(499, 265, 177, 'en', 1, 1, 1, '2022-07-03 06:43:33', '2022-07-03 06:43:33'),
(500, 273, 177, 'en', 1, 1, 1, '2022-07-03 06:43:33', '2022-07-03 06:43:33'),
(501, 124, 6, 'en', 1, 1, 1, '2022-07-03 07:29:30', '2022-07-03 07:29:30'),
(502, 125, 6, 'en', 1, 1, 1, '2022-07-03 07:29:30', '2022-07-03 07:29:30'),
(503, 126, 6, 'en', 1, 1, 1, '2022-07-03 07:29:30', '2022-07-03 07:29:30'),
(504, 133, 39, 'en', 1, 1, 1, '2022-07-03 07:44:03', '2022-07-03 07:44:03'),
(505, 121, 33, 'en', 1, 1, 1, '2022-07-03 08:17:45', '2022-07-03 08:17:45'),
(507, 121, 10, 'en', 1, 1, 1, '2022-07-03 10:10:53', '2022-07-03 10:10:53'),
(508, 128, 10, 'en', 1, 1, 1, '2022-07-03 10:10:53', '2022-07-03 10:10:53'),
(509, 133, 10, 'en', 1, 1, 1, '2022-07-03 10:10:53', '2022-07-03 10:10:53'),
(516, 113, 16, 'en', 1, 1, 1, '2022-07-04 04:13:06', '2022-07-04 04:13:06'),
(517, 114, 16, 'en', 1, 1, 1, '2022-07-04 04:13:06', '2022-07-04 04:13:06'),
(518, 119, 16, 'en', 1, 1, 1, '2022-07-04 04:13:06', '2022-07-04 04:13:06'),
(519, 119, 21, 'en', 1, 1, 1, '2022-07-04 05:34:02', '2022-07-04 05:34:02'),
(521, 133, 40, 'en', 1, 1, 1, '2022-07-06 05:24:57', '2022-07-06 05:24:57'),
(522, 133, 12, 'en', 1, 1, 1, '2022-07-06 05:26:24', '2022-07-06 05:26:24'),
(523, 121, 36, 'en', 1, 1, 1, '2022-07-06 05:42:23', '2022-07-06 05:42:23'),
(524, 167, 63, 'en', 1, 1, 1, '2022-07-06 05:47:44', '2022-07-06 05:47:44'),
(525, 207, 123, 'en', 1, 1, 1, '2022-07-06 05:50:25', '2022-07-06 05:50:25'),
(526, 207, 105, 'en', 1, 1, 1, '2022-07-06 08:23:02', '2022-07-06 08:23:02'),
(527, 227, 136, 'en', 1, 1, 1, '2022-07-06 08:36:07', '2022-07-06 08:36:07'),
(528, 234, 136, 'en', 1, 1, 1, '2022-07-06 08:36:07', '2022-07-06 08:36:07'),
(529, 230, 146, 'en', 1, 1, 1, '2022-07-06 08:49:33', '2022-07-06 08:49:33'),
(530, 244, 146, 'en', 1, 1, 1, '2022-07-06 08:49:33', '2022-07-06 08:49:33'),
(531, 126, 167, 'en', 1, 1, 1, '2022-07-06 09:01:57', '2022-07-06 09:01:57'),
(532, 250, 167, 'en', 1, 1, 1, '2022-07-06 09:01:57', '2022-07-06 09:01:57'),
(534, 167, 67, 'en', 1, 1, 1, '2022-07-07 10:13:42', '2022-07-07 10:13:42'),
(558, 108, 190, 'en', 1, 1, 1, '2022-08-04 04:38:05', '2022-08-04 04:38:05'),
(566, 108, 191, 'en', 1, 1, 1, '2022-08-04 05:27:57', '2022-08-04 05:27:57'),
(567, 122, 9, 'en', 1, 1, 1, '2022-08-08 05:53:20', '2022-08-08 05:53:20'),
(568, 200, 20, 'en', 1, 1, 1, '2022-08-08 06:16:53', '2022-08-08 06:16:53'),
(569, 133, 29, 'en', 1, 1, 1, '2022-08-08 08:15:43', '2022-08-08 08:15:43'),
(571, 214, 75, 'en', 1, 1, 1, '2022-08-08 09:00:48', '2022-08-08 09:00:48'),
(572, 121, 28, 'en', 1, 1, 1, '2022-08-08 10:16:11', '2022-08-08 10:16:11'),
(573, 223, 87, 'en', 1, 1, 1, '2022-08-10 03:48:02', '2022-08-10 03:48:02'),
(574, 191, 73, 'en', 1, 1, 1, '2022-08-10 03:56:52', '2022-08-10 03:56:52'),
(575, 230, 154, 'en', 1, 1, 1, '2022-08-10 04:08:18', '2022-08-10 04:08:18'),
(576, 237, 154, 'en', 1, 1, 1, '2022-08-10 04:08:18', '2022-08-10 04:08:18'),
(577, 134, 94, 'en', 1, 1, 1, '2022-09-12 05:34:13', '2022-09-12 05:34:13'),
(578, 214, 94, 'en', 1, 1, 1, '2022-09-12 05:34:13', '2022-09-12 05:34:13'),
(579, 134, 98, 'en', 1, 1, 1, '2022-09-12 05:36:42', '2022-09-12 05:36:42'),
(580, 214, 98, 'en', 1, 1, 1, '2022-09-12 05:36:42', '2022-09-12 05:36:42'),
(581, 215, 98, 'en', 1, 1, 1, '2022-09-12 05:36:42', '2022-09-12 05:36:42'),
(582, 214, 116, 'en', 1, 1, 1, '2022-09-12 05:38:30', '2022-09-12 05:38:30'),
(583, 205, 111, 'en', 1, 1, 1, '2022-09-12 05:39:30', '2022-09-12 05:39:30'),
(584, 214, 111, 'en', 1, 1, 1, '2022-09-12 05:39:30', '2022-09-12 05:39:30'),
(585, 205, 126, 'en', 1, 1, 1, '2022-09-12 05:40:47', '2022-09-12 05:40:47'),
(586, 214, 126, 'en', 1, 1, 1, '2022-09-12 05:40:47', '2022-09-12 05:40:47'),
(589, 214, 109, 'en', 1, 1, 1, '2022-09-12 05:43:43', '2022-09-12 05:43:43'),
(590, 199, 127, 'en', 1, 1, 1, '2022-09-12 05:45:08', '2022-09-12 05:45:08'),
(591, 214, 127, 'en', 1, 1, 1, '2022-09-12 05:45:08', '2022-09-12 05:45:08'),
(592, 131, 91, 'en', 1, 1, 1, '2022-09-12 05:46:51', '2022-09-12 05:46:51'),
(593, 199, 91, 'en', 1, 1, 1, '2022-09-12 05:46:51', '2022-09-12 05:46:51'),
(594, 214, 91, 'en', 1, 1, 1, '2022-09-12 05:46:51', '2022-09-12 05:46:51'),
(600, 199, 129, 'en', 1, 1, 1, '2022-09-12 05:54:02', '2022-09-12 05:54:02'),
(601, 214, 129, 'en', 1, 1, 1, '2022-09-12 05:54:02', '2022-09-12 05:54:02'),
(602, 214, 133, 'en', 1, 1, 1, '2022-09-12 05:54:38', '2022-09-12 05:54:38'),
(603, 131, 130, 'en', 1, 1, 1, '2022-09-12 05:55:23', '2022-09-12 05:55:23'),
(604, 199, 130, 'en', 1, 1, 1, '2022-09-12 05:55:23', '2022-09-12 05:55:23'),
(605, 214, 130, 'en', 1, 1, 1, '2022-09-12 05:55:23', '2022-09-12 05:55:23'),
(606, 200, 101, 'en', 1, 1, 1, '2022-09-12 05:57:29', '2022-09-12 05:57:29'),
(607, 203, 101, 'en', 1, 1, 1, '2022-09-12 05:57:29', '2022-09-12 05:57:29'),
(608, 205, 101, 'en', 1, 1, 1, '2022-09-12 05:57:29', '2022-09-12 05:57:29'),
(609, 206, 101, 'en', 1, 1, 1, '2022-09-12 05:57:29', '2022-09-12 05:57:29'),
(610, 207, 101, 'en', 1, 1, 1, '2022-09-12 05:57:29', '2022-09-12 05:57:29'),
(611, 214, 101, 'en', 1, 1, 1, '2022-09-12 05:57:29', '2022-09-12 05:57:29'),
(613, 288, 192, 'es', 1, 1, 1, '2023-01-28 22:47:38', '2023-01-28 22:47:38'),
(616, 289, 193, 'es', 1, 1, 1, '2023-01-29 00:54:40', '2023-01-29 00:54:40'),
(617, 292, 193, 'es', 1, 1, 1, '2023-01-29 00:54:40', '2023-01-29 00:54:40'),
(619, 288, 194, 'es', 1, 1, 1, '2023-01-29 01:05:09', '2023-01-29 01:05:09'),
(621, 288, 195, 'es', 1, 1, 1, '2023-01-29 01:10:19', '2023-01-29 01:10:19'),
(622, 289, 196, 'es', 1, 1, 1, '2023-01-29 01:13:04', '2023-01-29 01:13:04'),
(623, 292, 197, 'es', 1, 1, 1, '2023-01-29 01:14:04', '2023-01-29 01:14:04'),
(624, 291, 198, 'es', 1, 1, 1, '2023-01-29 01:16:23', '2023-01-29 01:16:23'),
(626, 289, 199, 'es', 1, 1, 1, '2023-01-29 01:20:35', '2023-01-29 01:20:35'),
(627, 289, 200, 'es', 1, 1, 1, '2023-01-29 01:21:49', '2023-01-29 01:21:49'),
(628, 288, 201, 'es', 1, 1, 1, '2023-01-29 01:25:23', '2023-01-29 01:25:23'),
(629, 291, 202, 'es', 1, 1, 1, '2023-01-29 01:26:35', '2023-01-29 01:26:35'),
(630, 289, 203, 'es', 1, 1, 1, '2023-01-29 01:29:01', '2023-01-29 01:29:01'),
(634, 291, 204, 'es', 1, 1, 1, '2023-01-29 01:32:26', '2023-01-29 01:32:26'),
(635, 293, 204, 'es', 1, 1, 1, '2023-01-29 01:32:26', '2023-01-29 01:32:26'),
(636, 291, 205, 'es', 1, 1, 1, '2023-01-29 01:32:41', '2023-01-29 01:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `toolkit_tool_methodology_relations`
--

CREATE TABLE `toolkit_tool_methodology_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tool_methodology_id` int(11) DEFAULT NULL,
  `toolkit_id` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toolkit_tool_methodology_relations`
--

INSERT INTO `toolkit_tool_methodology_relations` (`id`, `tool_methodology_id`, `toolkit_id`, `language`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(43, 2, 8, 'en', 1, 1, 1, '2022-03-06 00:29:22', '2022-03-06 00:29:22'),
(52, 43, 1, 'en', 1, 1, 1, '2022-03-08 10:06:50', '2022-03-08 10:06:50'),
(65, 68, 8, 'en', 1, 1, 1, '2022-03-09 08:07:12', '2022-03-09 08:07:12'),
(86, 56, 23, 'en', 1, 1, 1, '2022-03-09 10:06:13', '2022-03-09 10:06:13'),
(93, 45, 3, 'en', 1, 1, 1, '2022-03-30 04:28:29', '2022-03-30 04:28:29'),
(94, 46, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(95, 47, 14, 'en', 1, 1, 1, '2022-03-30 04:31:10', '2022-03-30 04:31:10'),
(96, 48, 15, 'en', 1, 1, 1, '2022-03-30 04:32:25', '2022-03-30 04:32:25'),
(97, 51, 18, 'en', 1, 1, 1, '2022-03-30 04:39:15', '2022-03-30 04:39:15'),
(100, 59, 24, 'en', 1, 1, 1, '2022-03-31 09:02:02', '2022-03-31 09:02:02'),
(102, 61, 26, 'en', 1, 1, 1, '2022-03-31 09:11:57', '2022-03-31 09:11:57'),
(106, 65, 30, 'en', 1, 1, 1, '2022-03-31 09:27:57', '2022-03-31 09:27:57'),
(108, 67, 32, 'en', 1, 1, 1, '2022-03-31 09:32:06', '2022-03-31 09:32:06'),
(117, 69, 38, 'en', 1, 1, 1, '2022-03-31 10:19:26', '2022-03-31 10:19:26'),
(120, 71, 41, 'en', 1, 1, 1, '2022-03-31 10:28:10', '2022-03-31 10:28:10'),
(121, 60, 25, 'en', 1, 1, 1, '2022-04-03 07:40:32', '2022-04-03 07:40:32'),
(122, 62, 27, 'en', 1, 1, 1, '2022-04-03 07:42:04', '2022-04-03 07:42:04'),
(125, 65, 35, 'en', 1, 1, 1, '2022-04-03 07:45:12', '2022-04-03 07:45:12'),
(127, 66, 31, 'en', 1, 1, 1, '2022-04-03 07:46:57', '2022-04-03 07:46:57'),
(128, 60, 37, 'en', 1, 1, 1, '2022-04-03 07:52:04', '2022-04-03 07:52:04'),
(129, 68, 34, 'en', 1, 1, 1, '2022-04-03 07:52:59', '2022-04-03 07:52:59'),
(131, 63, 42, 'en', 1, 1, 1, '2022-04-03 09:26:42', '2022-04-03 09:26:42'),
(132, 58, 43, 'en', 1, 1, 1, '2022-04-03 09:30:09', '2022-04-03 09:30:09'),
(135, 95, 46, 'en', 1, 1, 1, '2022-04-04 07:09:24', '2022-04-04 07:09:24'),
(136, 96, 47, 'en', 1, 1, 1, '2022-04-04 07:10:51', '2022-04-04 07:10:51'),
(137, 97, 48, 'en', 1, 1, 1, '2022-04-04 07:12:29', '2022-04-04 07:12:29'),
(138, 98, 49, 'en', 1, 1, 1, '2022-04-04 07:16:38', '2022-04-04 07:16:38'),
(139, 99, 50, 'en', 1, 1, 1, '2022-04-04 07:18:34', '2022-04-04 07:18:34'),
(140, 100, 51, 'en', 1, 1, 1, '2022-04-04 07:20:31', '2022-04-04 07:20:31'),
(142, 95, 53, 'en', 1, 1, 1, '2022-04-04 07:31:45', '2022-04-04 07:31:45'),
(144, 103, 55, 'en', 1, 1, 1, '2022-04-04 07:36:33', '2022-04-04 07:36:33'),
(145, 102, 56, 'en', 1, 1, 1, '2022-04-04 07:38:52', '2022-04-04 07:38:52'),
(146, 104, 57, 'en', 1, 1, 1, '2022-04-04 07:41:05', '2022-04-04 07:41:05'),
(147, 102, 58, 'en', 1, 1, 1, '2022-04-04 07:44:38', '2022-04-04 07:44:38'),
(149, 70, 59, 'en', 1, 1, 1, '2022-04-04 07:49:11', '2022-04-04 07:49:11'),
(150, 58, 60, 'en', 1, 1, 1, '2022-04-04 08:03:01', '2022-04-04 08:03:01'),
(152, 106, 62, 'en', 1, 1, 1, '2022-04-04 08:08:38', '2022-04-04 08:08:38'),
(154, 72, 64, 'en', 1, 1, 1, '2022-04-04 08:15:46', '2022-04-04 08:15:46'),
(156, 70, 66, 'en', 1, 1, 1, '2022-04-04 08:21:28', '2022-04-04 08:21:28'),
(158, 70, 68, 'en', 1, 1, 1, '2022-04-04 08:25:55', '2022-04-04 08:25:55'),
(159, 58, 69, 'en', 1, 1, 1, '2022-04-04 08:29:43', '2022-04-04 08:29:43'),
(160, 107, 65, 'en', 1, 1, 1, '2022-04-04 08:30:58', '2022-04-04 08:30:58'),
(162, 44, 2, 'en', 1, 1, 1, '2022-04-10 05:37:34', '2022-04-10 05:37:34'),
(167, 82, 7, 'en', 1, 1, 1, '2022-04-10 05:49:03', '2022-04-10 05:49:03'),
(169, 84, 11, 'en', 1, 1, 1, '2022-04-10 05:50:26', '2022-04-10 05:50:26'),
(171, 85, 13, 'en', 1, 1, 1, '2022-04-10 05:52:29', '2022-04-10 05:52:29'),
(172, 94, 45, 'en', 1, 1, 1, '2022-04-10 05:54:09', '2022-04-10 05:54:09'),
(173, 101, 52, 'en', 1, 1, 1, '2022-04-10 05:55:06', '2022-04-10 05:55:06'),
(174, 72, 54, 'en', 1, 1, 1, '2022-04-10 05:56:35', '2022-04-10 05:56:35'),
(175, 105, 61, 'en', 1, 1, 1, '2022-04-10 05:57:34', '2022-04-10 05:57:34'),
(178, 55, 22, 'en', 1, 1, 1, '2022-04-11 08:10:43', '2022-04-11 08:10:43'),
(179, 57, 5, 'en', 1, 1, 1, '2022-04-12 03:44:56', '2022-04-12 03:44:56'),
(180, 115, 5, 'en', 1, 1, 1, '2022-04-12 03:44:56', '2022-04-12 03:44:56'),
(182, 93, 44, 'en', 1, 1, 1, '2022-04-12 04:04:02', '2022-04-12 04:04:02'),
(183, 116, 44, 'en', 1, 1, 1, '2022-04-12 04:04:02', '2022-04-12 04:04:02'),
(191, 120, 71, 'en', 1, 1, 1, '2022-04-19 09:00:57', '2022-04-19 09:00:57'),
(192, 118, 70, 'en', 1, 1, 1, '2022-04-19 09:01:36', '2022-04-19 09:01:36'),
(193, 119, 70, 'en', 1, 1, 1, '2022-04-19 09:01:36', '2022-04-19 09:01:36'),
(194, 120, 72, 'en', 1, 1, 1, '2022-04-19 09:04:12', '2022-04-19 09:04:12'),
(197, 123, 74, 'en', 1, 1, 1, '2022-04-19 09:10:41', '2022-04-19 09:10:41'),
(200, 124, 76, 'en', 1, 1, 1, '2022-04-19 09:16:35', '2022-04-19 09:16:35'),
(201, 125, 78, 'en', 1, 1, 1, '2022-04-19 09:22:40', '2022-04-19 09:22:40'),
(202, 126, 79, 'en', 1, 1, 1, '2022-04-20 03:05:36', '2022-04-20 03:05:36'),
(203, 127, 80, 'en', 1, 1, 1, '2022-04-20 03:07:56', '2022-04-20 03:07:56'),
(204, 118, 81, 'en', 1, 1, 1, '2022-04-20 03:10:15', '2022-04-20 03:10:15'),
(205, 128, 81, 'en', 1, 1, 1, '2022-04-20 03:10:15', '2022-04-20 03:10:15'),
(206, 129, 82, 'en', 1, 1, 1, '2022-04-20 03:12:40', '2022-04-20 03:12:40'),
(207, 130, 83, 'en', 1, 1, 1, '2022-04-20 03:14:08', '2022-04-20 03:14:08'),
(208, 131, 84, 'en', 1, 1, 1, '2022-04-20 03:16:34', '2022-04-20 03:16:34'),
(209, 132, 85, 'en', 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(210, 133, 86, 'en', 1, 1, 1, '2022-04-20 03:23:00', '2022-04-20 03:23:00'),
(212, 134, 88, 'en', 1, 1, 1, '2022-04-20 05:35:05', '2022-04-20 05:35:05'),
(213, 135, 89, 'en', 1, 1, 1, '2022-04-20 05:36:46', '2022-04-20 05:36:46'),
(214, 136, 90, 'en', 1, 1, 1, '2022-04-20 05:54:43', '2022-04-20 05:54:43'),
(216, 138, 92, 'en', 1, 1, 1, '2022-04-20 06:02:03', '2022-04-20 06:02:03'),
(217, 139, 93, 'en', 1, 1, 1, '2022-04-20 06:19:06', '2022-04-20 06:19:06'),
(219, 140, 95, 'en', 1, 1, 1, '2022-04-20 06:27:57', '2022-04-20 06:27:57'),
(220, 141, 96, 'en', 1, 1, 1, '2022-04-20 06:29:17', '2022-04-20 06:29:17'),
(221, 118, 97, 'en', 1, 1, 1, '2022-04-20 06:31:03', '2022-04-20 06:31:03'),
(222, 142, 97, 'en', 1, 1, 1, '2022-04-20 06:31:03', '2022-04-20 06:31:03'),
(225, 143, 99, 'en', 1, 1, 1, '2022-04-20 06:34:41', '2022-04-20 06:34:41'),
(226, 144, 100, 'en', 1, 1, 1, '2022-04-20 06:50:47', '2022-04-20 06:50:47'),
(227, 150, 100, 'en', 1, 1, 1, '2022-04-20 06:50:48', '2022-04-20 06:50:48'),
(229, 144, 102, 'en', 1, 1, 1, '2022-04-20 06:54:34', '2022-04-20 06:54:34'),
(230, 146, 102, 'en', 1, 1, 1, '2022-04-20 06:54:34', '2022-04-20 06:54:34'),
(235, 149, 104, 'en', 1, 1, 1, '2022-04-20 07:01:54', '2022-04-20 07:01:54'),
(250, 153, 110, 'en', 1, 1, 1, '2022-04-20 08:03:25', '2022-04-20 08:03:25'),
(252, 155, 112, 'en', 1, 1, 1, '2022-04-20 08:06:03', '2022-04-20 08:06:03'),
(254, 157, 114, 'en', 1, 1, 1, '2022-04-20 08:09:09', '2022-04-20 08:09:09'),
(255, 158, 115, 'en', 1, 1, 1, '2022-04-20 08:10:37', '2022-04-20 08:10:37'),
(257, 63, 117, 'en', 1, 1, 1, '2022-04-20 08:14:49', '2022-04-20 08:14:49'),
(258, 55, 118, 'en', 1, 1, 1, '2022-04-20 08:18:15', '2022-04-20 08:18:15'),
(259, 141, 119, 'en', 1, 1, 1, '2022-04-20 08:20:02', '2022-04-20 08:20:02'),
(262, 160, 120, 'en', 1, 1, 1, '2022-04-20 08:24:20', '2022-04-20 08:24:20'),
(263, 161, 121, 'en', 1, 1, 1, '2022-04-20 08:25:44', '2022-04-20 08:25:44'),
(264, 53, 122, 'en', 1, 1, 1, '2022-04-20 08:27:13', '2022-04-20 08:27:13'),
(270, 167, 128, 'en', 1, 1, 1, '2022-04-20 08:47:07', '2022-04-20 08:47:07'),
(277, 147, 103, 'en', 1, 1, 1, '2022-04-20 09:03:21', '2022-04-20 09:03:21'),
(278, 148, 103, 'en', 1, 1, 1, '2022-04-20 09:03:21', '2022-04-20 09:03:21'),
(281, 124, 131, 'en', 1, 1, 1, '2022-04-20 09:11:32', '2022-04-20 09:11:32'),
(282, 169, 131, 'en', 1, 1, 1, '2022-04-20 09:11:32', '2022-04-20 09:11:32'),
(283, 174, 134, 'en', 1, 1, 1, '2022-04-21 05:55:54', '2022-04-21 05:55:54'),
(284, 55, 135, 'en', 1, 1, 1, '2022-04-21 05:58:34', '2022-04-21 05:58:34'),
(288, 183, 137, 'en', 1, 1, 1, '2022-04-21 06:15:46', '2022-04-21 06:15:46'),
(289, 176, 140, 'en', 1, 1, 1, '2022-04-21 06:26:36', '2022-04-21 06:26:36'),
(290, 177, 141, 'en', 1, 1, 1, '2022-04-21 06:27:35', '2022-04-21 06:27:35'),
(291, 176, 142, 'en', 1, 1, 1, '2022-04-21 06:31:38', '2022-04-21 06:31:38'),
(292, 178, 144, 'en', 1, 1, 1, '2022-04-21 06:33:50', '2022-04-21 06:33:50'),
(293, 70, 145, 'en', 1, 1, 1, '2022-04-21 06:35:34', '2022-04-21 06:35:34'),
(295, 180, 147, 'en', 1, 1, 1, '2022-04-21 06:42:17', '2022-04-21 06:42:17'),
(296, 181, 148, 'en', 1, 1, 1, '2022-04-21 06:43:36', '2022-04-21 06:43:36'),
(297, 146, 149, 'en', 1, 1, 1, '2022-04-21 06:45:31', '2022-04-21 06:45:31'),
(298, 188, 149, 'en', 1, 1, 1, '2022-04-21 06:45:31', '2022-04-21 06:45:31'),
(299, 182, 150, 'en', 1, 1, 1, '2022-04-21 06:46:50', '2022-04-21 06:46:50'),
(300, 175, 151, 'en', 1, 1, 1, '2022-04-21 06:49:06', '2022-04-21 06:49:06'),
(301, 176, 152, 'en', 1, 1, 1, '2022-04-21 06:51:05', '2022-04-21 06:51:05'),
(302, 184, 153, 'en', 1, 1, 1, '2022-04-21 06:53:23', '2022-04-21 06:53:23'),
(304, 186, 155, 'en', 1, 1, 1, '2022-04-21 06:58:57', '2022-04-21 06:58:57'),
(305, 187, 156, 'en', 1, 1, 1, '2022-04-21 07:00:42', '2022-04-21 07:00:42'),
(307, 180, 157, 'en', 1, 1, 1, '2022-05-18 04:57:14', '2022-05-18 04:57:14'),
(309, 192, 158, 'en', 1, 1, 1, '2022-05-18 05:29:32', '2022-05-18 05:29:32'),
(310, 193, 159, 'en', 1, 1, 1, '2022-05-18 05:31:45', '2022-05-18 05:31:45'),
(311, 194, 160, 'en', 1, 1, 1, '2022-05-18 05:41:39', '2022-05-18 05:41:39'),
(312, 195, 161, 'en', 1, 1, 1, '2022-05-18 05:43:51', '2022-05-18 05:43:51'),
(314, 196, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(315, 197, 163, 'en', 1, 1, 1, '2022-05-18 06:26:37', '2022-05-18 06:26:37'),
(316, 58, 164, 'en', 1, 1, 1, '2022-05-18 06:38:19', '2022-05-18 06:38:19'),
(317, 193, 165, 'en', 1, 1, 1, '2022-05-18 08:32:17', '2022-05-18 08:32:17'),
(319, 199, 168, 'en', 1, 1, 1, '2022-05-18 09:18:46', '2022-05-18 09:18:46'),
(320, 86, 169, 'en', 1, 1, 1, '2022-05-18 09:53:52', '2022-05-18 09:53:52'),
(321, 201, 170, 'en', 1, 1, 1, '2022-05-19 09:46:04', '2022-05-19 09:46:04'),
(322, 193, 171, 'en', 1, 1, 1, '2022-05-19 09:48:47', '2022-05-19 09:48:47'),
(323, 151, 173, 'en', 1, 1, 1, '2022-05-19 09:59:09', '2022-05-19 09:59:09'),
(324, 203, 174, 'en', 1, 1, 1, '2022-05-19 10:04:41', '2022-05-19 10:04:41'),
(325, 204, 175, 'en', 1, 1, 1, '2022-05-19 10:07:29', '2022-05-19 10:07:29'),
(326, 205, 176, 'en', 1, 1, 1, '2022-05-19 10:11:43', '2022-05-19 10:11:43'),
(327, 70, 108, 'en', 1, 1, 1, '2022-05-29 07:29:31', '2022-05-29 07:29:31'),
(328, 111, 108, 'en', 1, 1, 1, '2022-05-29 07:29:31', '2022-05-29 07:29:31'),
(329, 216, 107, 'en', 1, 1, 1, '2022-05-29 07:33:03', '2022-05-29 07:33:03'),
(330, 156, 113, 'en', 1, 1, 1, '2022-05-29 07:42:37', '2022-05-29 07:42:37'),
(340, 151, 106, 'en', 1, 1, 1, '2022-06-07 09:26:37', '2022-06-07 09:26:37'),
(342, 55, 178, 'en', 1, 1, 1, '2022-06-13 06:41:23', '2022-06-13 06:41:23'),
(343, 208, 179, 'en', 1, 1, 1, '2022-06-13 06:44:02', '2022-06-13 06:44:02'),
(345, 209, 180, 'en', 1, 1, 1, '2022-06-13 06:50:20', '2022-06-13 06:50:20'),
(346, 210, 181, 'en', 1, 1, 1, '2022-06-13 07:51:16', '2022-06-13 07:51:16'),
(347, 59, 182, 'en', 1, 1, 1, '2022-06-13 07:53:20', '2022-06-13 07:53:20'),
(348, 86, 183, 'en', 1, 1, 1, '2022-06-13 07:56:57', '2022-06-13 07:56:57'),
(349, 211, 184, 'en', 1, 1, 1, '2022-06-14 05:51:00', '2022-06-14 05:51:00'),
(350, 212, 185, 'en', 1, 1, 1, '2022-06-14 05:53:35', '2022-06-14 05:53:35'),
(351, 213, 186, 'en', 1, 1, 1, '2022-06-14 05:56:21', '2022-06-14 05:56:21'),
(352, 208, 187, 'en', 1, 1, 1, '2022-06-14 06:02:35', '2022-06-14 06:02:35'),
(353, 214, 188, 'en', 1, 1, 1, '2022-06-14 06:07:24', '2022-06-14 06:07:24'),
(354, 215, 189, 'en', 1, 1, 1, '2022-06-14 06:14:25', '2022-06-14 06:14:25'),
(355, 52, 19, 'en', 1, 1, 1, '2022-06-26 04:04:36', '2022-06-26 04:04:36'),
(356, 117, 19, 'en', 1, 1, 1, '2022-06-26 04:04:36', '2022-06-26 04:04:36'),
(358, 50, 17, 'en', 1, 1, 1, '2022-06-26 04:08:37', '2022-06-26 04:08:37'),
(359, 63, 177, 'en', 1, 1, 1, '2022-07-03 06:43:33', '2022-07-03 06:43:33'),
(360, 58, 6, 'en', 1, 1, 1, '2022-07-03 07:29:30', '2022-07-03 07:29:30'),
(361, 70, 39, 'en', 1, 1, 1, '2022-07-03 07:44:03', '2022-07-03 07:44:03'),
(362, 217, 39, 'en', 1, 1, 1, '2022-07-03 07:44:03', '2022-07-03 07:44:03'),
(363, 60, 33, 'en', 1, 1, 1, '2022-07-03 08:17:45', '2022-07-03 08:17:45'),
(365, 83, 10, 'en', 1, 1, 1, '2022-07-03 10:10:53', '2022-07-03 10:10:53'),
(368, 49, 16, 'en', 1, 1, 1, '2022-07-04 04:13:06', '2022-07-04 04:13:06'),
(369, 54, 21, 'en', 1, 1, 1, '2022-07-04 05:34:02', '2022-07-04 05:34:02'),
(380, 58, 40, 'en', 1, 1, 1, '2022-07-06 05:24:57', '2022-07-06 05:24:57'),
(381, 70, 12, 'en', 1, 1, 1, '2022-07-06 05:26:24', '2022-07-06 05:26:24'),
(382, 67, 36, 'en', 1, 1, 1, '2022-07-06 05:42:23', '2022-07-06 05:42:23'),
(383, 63, 63, 'en', 1, 1, 1, '2022-07-06 05:47:44', '2022-07-06 05:47:44'),
(384, 163, 123, 'en', 1, 1, 1, '2022-07-06 05:50:25', '2022-07-06 05:50:25'),
(385, 144, 105, 'en', 1, 1, 1, '2022-07-06 08:23:02', '2022-07-06 08:23:02'),
(386, 218, 105, 'en', 1, 1, 1, '2022-07-06 08:23:02', '2022-07-06 08:23:02'),
(387, 188, 136, 'en', 1, 1, 1, '2022-07-06 08:36:07', '2022-07-06 08:36:07'),
(388, 219, 136, 'en', 1, 1, 1, '2022-07-06 08:36:07', '2022-07-06 08:36:07'),
(389, 179, 146, 'en', 1, 1, 1, '2022-07-06 08:49:33', '2022-07-06 08:49:33'),
(390, 49, 167, 'en', 1, 1, 1, '2022-07-06 09:01:57', '2022-07-06 09:01:57'),
(393, 164, 124, 'en', 1, 1, 1, '2022-07-07 03:54:26', '2022-07-07 03:54:26'),
(394, 218, 124, 'en', 1, 1, 1, '2022-07-07 03:54:26', '2022-07-07 03:54:26'),
(398, 108, 67, 'en', 1, 1, 1, '2022-07-07 10:13:42', '2022-07-07 10:13:42'),
(399, 220, 67, 'en', 1, 1, 1, '2022-07-07 10:13:42', '2022-07-07 10:13:42'),
(400, 221, 67, 'en', 1, 1, 1, '2022-07-07 10:13:42', '2022-07-07 10:13:42'),
(424, 213, 190, 'en', 1, 1, 1, '2022-08-04 04:38:05', '2022-08-04 04:38:05'),
(432, 43, 191, 'en', 1, 1, 1, '2022-08-04 05:27:57', '2022-08-04 05:27:57'),
(433, 68, 9, 'en', 1, 1, 1, '2022-08-08 05:53:20', '2022-08-08 05:53:20'),
(434, 53, 20, 'en', 1, 1, 1, '2022-08-08 06:16:53', '2022-08-08 06:16:53'),
(435, 64, 29, 'en', 1, 1, 1, '2022-08-08 08:15:43', '2022-08-08 08:15:43'),
(437, 122, 75, 'en', 1, 1, 1, '2022-08-08 09:00:48', '2022-08-08 09:00:48'),
(438, 63, 28, 'en', 1, 1, 1, '2022-08-08 10:16:11', '2022-08-08 10:16:11'),
(439, 70, 87, 'en', 1, 1, 1, '2022-08-10 03:48:02', '2022-08-10 03:48:02'),
(440, 121, 73, 'en', 1, 1, 1, '2022-08-10 03:56:52', '2022-08-10 03:56:52'),
(441, 185, 154, 'en', 1, 1, 1, '2022-08-10 04:08:18', '2022-08-10 04:08:18'),
(442, 55, 94, 'en', 1, 1, 1, '2022-09-12 05:34:13', '2022-09-12 05:34:13'),
(443, 70, 98, 'en', 1, 1, 1, '2022-09-12 05:36:42', '2022-09-12 05:36:42'),
(444, 44, 116, 'en', 1, 1, 1, '2022-09-12 05:38:30', '2022-09-12 05:38:30'),
(445, 154, 111, 'en', 1, 1, 1, '2022-09-12 05:39:30', '2022-09-12 05:39:30'),
(446, 165, 126, 'en', 1, 1, 1, '2022-09-12 05:40:47', '2022-09-12 05:40:47'),
(448, 122, 109, 'en', 1, 1, 1, '2022-09-12 05:43:43', '2022-09-12 05:43:43'),
(449, 166, 127, 'en', 1, 1, 1, '2022-09-12 05:45:08', '2022-09-12 05:45:08'),
(450, 137, 91, 'en', 1, 1, 1, '2022-09-12 05:46:51', '2022-09-12 05:46:51'),
(453, 168, 129, 'en', 1, 1, 1, '2022-09-12 05:54:02', '2022-09-12 05:54:02'),
(454, 170, 133, 'en', 1, 1, 1, '2022-09-12 05:54:38', '2022-09-12 05:54:38'),
(455, 171, 133, 'en', 1, 1, 1, '2022-09-12 05:54:38', '2022-09-12 05:54:38'),
(456, 145, 130, 'en', 1, 1, 1, '2022-09-12 05:55:23', '2022-09-12 05:55:23'),
(457, 145, 101, 'en', 1, 1, 1, '2022-09-12 05:57:29', '2022-09-12 05:57:29'),
(459, 222, 192, 'es', 1, 1, 1, '2023-01-28 22:47:38', '2023-01-28 22:47:38'),
(461, 222, 193, 'es', 1, 1, 1, '2023-01-29 00:54:40', '2023-01-29 00:54:40'),
(463, 222, 194, 'es', 1, 1, 1, '2023-01-29 01:05:09', '2023-01-29 01:05:09'),
(465, 222, 195, 'es', 1, 1, 1, '2023-01-29 01:10:19', '2023-01-29 01:10:19'),
(466, 222, 196, 'es', 1, 1, 1, '2023-01-29 01:13:04', '2023-01-29 01:13:04'),
(467, 222, 197, 'es', 1, 1, 1, '2023-01-29 01:14:04', '2023-01-29 01:14:04'),
(468, 222, 198, 'es', 1, 1, 1, '2023-01-29 01:16:23', '2023-01-29 01:16:23'),
(470, 222, 199, 'es', 1, 1, 1, '2023-01-29 01:20:35', '2023-01-29 01:20:35'),
(471, 222, 200, 'es', 1, 1, 1, '2023-01-29 01:21:49', '2023-01-29 01:21:49'),
(472, 222, 201, 'es', 1, 1, 1, '2023-01-29 01:25:23', '2023-01-29 01:25:23'),
(473, 222, 202, 'es', 1, 1, 1, '2023-01-29 01:26:35', '2023-01-29 01:26:35'),
(474, 222, 203, 'es', 1, 1, 1, '2023-01-29 01:29:01', '2023-01-29 01:29:01'),
(477, 222, 204, 'es', 1, 1, 1, '2023-01-29 01:32:26', '2023-01-29 01:32:26'),
(478, 222, 205, 'es', 1, 1, 1, '2023-01-29 01:32:41', '2023-01-29 01:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `toolkit_tool_relations`
--

CREATE TABLE `toolkit_tool_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tool_user_id` int(11) DEFAULT NULL,
  `tool_beneficiary_id` int(11) DEFAULT NULL,
  `toolkit_id` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toolkit_tool_relations`
--

INSERT INTO `toolkit_tool_relations` (`id`, `tool_user_id`, `tool_beneficiary_id`, `toolkit_id`, `language`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(81, 14, NULL, 8, 'en', 1, 1, 1, '2022-03-06 00:29:22', '2022-03-06 00:29:22'),
(82, NULL, 15, 8, 'en', 1, 1, 1, '2022-03-06 00:29:22', '2022-03-06 00:29:22'),
(111, 32, NULL, 1, 'en', 1, 1, 1, '2022-03-08 10:06:50', '2022-03-08 10:06:50'),
(112, NULL, 16, 1, 'en', 1, 1, 1, '2022-03-08 10:06:50', '2022-03-08 10:06:50'),
(113, NULL, 22, 1, 'en', 1, 1, 1, '2022-03-08 10:06:50', '2022-03-08 10:06:50'),
(114, NULL, 24, 1, 'en', 1, 1, 1, '2022-03-08 10:06:50', '2022-03-08 10:06:50'),
(183, 31, NULL, 8, 'en', 1, 1, 1, '2022-03-09 08:07:12', '2022-03-09 08:07:12'),
(184, 17, NULL, 8, 'en', 1, 1, 1, '2022-03-09 08:07:12', '2022-03-09 08:07:12'),
(185, 21, NULL, 8, 'en', 1, 1, 1, '2022-03-09 08:07:12', '2022-03-09 08:07:12'),
(186, 23, NULL, 8, 'en', 1, 1, 1, '2022-03-09 08:07:12', '2022-03-09 08:07:12'),
(187, NULL, 22, 8, 'en', 1, 1, 1, '2022-03-09 08:07:12', '2022-03-09 08:07:12'),
(188, NULL, 24, 8, 'en', 1, 1, 1, '2022-03-09 08:07:12', '2022-03-09 08:07:12'),
(301, 29, NULL, 23, 'en', 1, 1, 1, '2022-03-09 10:06:13', '2022-03-09 10:06:13'),
(302, NULL, 12, 23, 'en', 1, 1, 1, '2022-03-09 10:06:13', '2022-03-09 10:06:13'),
(303, NULL, 13, 23, 'en', 1, 1, 1, '2022-03-09 10:06:13', '2022-03-09 10:06:13'),
(304, NULL, 16, 23, 'en', 1, 1, 1, '2022-03-09 10:06:13', '2022-03-09 10:06:13'),
(305, NULL, 19, 23, 'en', 1, 1, 1, '2022-03-09 10:06:13', '2022-03-09 10:06:13'),
(306, NULL, 22, 23, 'en', 1, 1, 1, '2022-03-09 10:06:13', '2022-03-09 10:06:13'),
(307, NULL, 24, 23, 'en', 1, 1, 1, '2022-03-09 10:06:13', '2022-03-09 10:06:13'),
(353, 27, NULL, 3, 'en', 1, 1, 1, '2022-03-30 04:28:29', '2022-03-30 04:28:29'),
(354, 20, NULL, 3, 'en', 1, 1, 1, '2022-03-30 04:28:29', '2022-03-30 04:28:29'),
(355, NULL, 16, 3, 'en', 1, 1, 1, '2022-03-30 04:28:29', '2022-03-30 04:28:29'),
(356, NULL, 22, 3, 'en', 1, 1, 1, '2022-03-30 04:28:29', '2022-03-30 04:28:29'),
(357, NULL, 24, 3, 'en', 1, 1, 1, '2022-03-30 04:28:29', '2022-03-30 04:28:29'),
(358, 29, NULL, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(359, 12, NULL, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(360, 16, NULL, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(361, 17, NULL, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(362, 19, NULL, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(363, 22, NULL, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(364, 24, NULL, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(365, NULL, 12, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(366, NULL, 16, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(367, NULL, 20, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(368, NULL, 22, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(369, NULL, 24, 4, 'en', 1, 1, 1, '2022-03-30 04:29:46', '2022-03-30 04:29:46'),
(370, 32, NULL, 14, 'en', 1, 1, 1, '2022-03-30 04:31:10', '2022-03-30 04:31:10'),
(371, NULL, 16, 14, 'en', 1, 1, 1, '2022-03-30 04:31:10', '2022-03-30 04:31:10'),
(372, NULL, 22, 14, 'en', 1, 1, 1, '2022-03-30 04:31:10', '2022-03-30 04:31:10'),
(373, NULL, 24, 14, 'en', 1, 1, 1, '2022-03-30 04:31:10', '2022-03-30 04:31:10'),
(374, 18, NULL, 15, 'en', 1, 1, 1, '2022-03-30 04:32:25', '2022-03-30 04:32:25'),
(375, 23, NULL, 15, 'en', 1, 1, 1, '2022-03-30 04:32:25', '2022-03-30 04:32:25'),
(376, NULL, 12, 15, 'en', 1, 1, 1, '2022-03-30 04:32:25', '2022-03-30 04:32:25'),
(377, NULL, 24, 15, 'en', 1, 1, 1, '2022-03-30 04:32:25', '2022-03-30 04:32:25'),
(378, 29, NULL, 18, 'en', 1, 1, 1, '2022-03-30 04:39:15', '2022-03-30 04:39:15'),
(379, NULL, 16, 18, 'en', 1, 1, 1, '2022-03-30 04:39:15', '2022-03-30 04:39:15'),
(380, NULL, 22, 18, 'en', 1, 1, 1, '2022-03-30 04:39:15', '2022-03-30 04:39:15'),
(381, NULL, 23, 18, 'en', 1, 1, 1, '2022-03-30 04:39:15', '2022-03-30 04:39:15'),
(391, 17, NULL, 24, 'en', 1, 1, 1, '2022-03-31 09:02:02', '2022-03-31 09:02:02'),
(392, 21, NULL, 24, 'en', 1, 1, 1, '2022-03-31 09:02:02', '2022-03-31 09:02:02'),
(393, 23, NULL, 24, 'en', 1, 1, 1, '2022-03-31 09:02:02', '2022-03-31 09:02:02'),
(394, 25, NULL, 24, 'en', 1, 1, 1, '2022-03-31 09:02:02', '2022-03-31 09:02:02'),
(395, NULL, 16, 24, 'en', 1, 1, 1, '2022-03-31 09:02:02', '2022-03-31 09:02:02'),
(396, NULL, 22, 24, 'en', 1, 1, 1, '2022-03-31 09:02:02', '2022-03-31 09:02:02'),
(397, NULL, 24, 24, 'en', 1, 1, 1, '2022-03-31 09:02:02', '2022-03-31 09:02:02'),
(402, 21, NULL, 26, 'en', 1, 1, 1, '2022-03-31 09:11:57', '2022-03-31 09:11:57'),
(403, 23, NULL, 26, 'en', 1, 1, 1, '2022-03-31 09:11:57', '2022-03-31 09:11:57'),
(404, 25, NULL, 26, 'en', 1, 1, 1, '2022-03-31 09:11:57', '2022-03-31 09:11:57'),
(405, NULL, 16, 26, 'en', 1, 1, 1, '2022-03-31 09:11:57', '2022-03-31 09:11:57'),
(406, NULL, 22, 26, 'en', 1, 1, 1, '2022-03-31 09:11:57', '2022-03-31 09:11:57'),
(407, NULL, 24, 26, 'en', 1, 1, 1, '2022-03-31 09:11:57', '2022-03-31 09:11:57'),
(423, 31, NULL, 30, 'en', 1, 1, 1, '2022-03-31 09:27:57', '2022-03-31 09:27:57'),
(424, NULL, 16, 30, 'en', 1, 1, 1, '2022-03-31 09:27:57', '2022-03-31 09:27:57'),
(425, NULL, 22, 30, 'en', 1, 1, 1, '2022-03-31 09:27:57', '2022-03-31 09:27:57'),
(426, NULL, 24, 30, 'en', 1, 1, 1, '2022-03-31 09:27:57', '2022-03-31 09:27:57'),
(429, 31, NULL, 32, 'en', 1, 1, 1, '2022-03-31 09:32:06', '2022-03-31 09:32:06'),
(430, NULL, 16, 32, 'en', 1, 1, 1, '2022-03-31 09:32:06', '2022-03-31 09:32:06'),
(431, NULL, 21, 32, 'en', 1, 1, 1, '2022-03-31 09:32:06', '2022-03-31 09:32:06'),
(432, NULL, 22, 32, 'en', 1, 1, 1, '2022-03-31 09:32:06', '2022-03-31 09:32:06'),
(433, NULL, 23, 32, 'en', 1, 1, 1, '2022-03-31 09:32:06', '2022-03-31 09:32:06'),
(434, NULL, 24, 32, 'en', 1, 1, 1, '2022-03-31 09:32:06', '2022-03-31 09:32:06'),
(435, NULL, 25, 32, 'en', 1, 1, 1, '2022-03-31 09:32:06', '2022-03-31 09:32:06'),
(481, 18, NULL, 38, 'en', 1, 1, 1, '2022-03-31 10:19:26', '2022-03-31 10:19:26'),
(482, 21, NULL, 38, 'en', 1, 1, 1, '2022-03-31 10:19:26', '2022-03-31 10:19:26'),
(483, 23, NULL, 38, 'en', 1, 1, 1, '2022-03-31 10:19:26', '2022-03-31 10:19:26'),
(484, 25, NULL, 38, 'en', 1, 1, 1, '2022-03-31 10:19:26', '2022-03-31 10:19:26'),
(485, NULL, 16, 38, 'en', 1, 1, 1, '2022-03-31 10:19:26', '2022-03-31 10:19:26'),
(486, NULL, 22, 38, 'en', 1, 1, 1, '2022-03-31 10:19:26', '2022-03-31 10:19:26'),
(487, NULL, 24, 38, 'en', 1, 1, 1, '2022-03-31 10:19:26', '2022-03-31 10:19:26'),
(502, 26, NULL, 41, 'en', 1, 1, 1, '2022-03-31 10:28:10', '2022-03-31 10:28:10'),
(503, 28, NULL, 41, 'en', 1, 1, 1, '2022-03-31 10:28:10', '2022-03-31 10:28:10'),
(504, 31, NULL, 41, 'en', 1, 1, 1, '2022-03-31 10:28:10', '2022-03-31 10:28:10'),
(505, NULL, 30, 41, 'en', 1, 1, 1, '2022-03-31 10:28:10', '2022-03-31 10:28:10'),
(506, NULL, 17, 41, 'en', 1, 1, 1, '2022-03-31 10:28:10', '2022-03-31 10:28:10'),
(507, NULL, 20, 41, 'en', 1, 1, 1, '2022-03-31 10:28:10', '2022-03-31 10:28:10'),
(508, 31, NULL, 25, 'en', 1, 1, 1, '2022-04-03 07:40:32', '2022-04-03 07:40:32'),
(509, NULL, 21, 25, 'en', 1, 1, 1, '2022-04-03 07:40:32', '2022-04-03 07:40:32'),
(510, NULL, 23, 25, 'en', 1, 1, 1, '2022-04-03 07:40:32', '2022-04-03 07:40:32'),
(511, NULL, 25, 25, 'en', 1, 1, 1, '2022-04-03 07:40:32', '2022-04-03 07:40:32'),
(512, 31, NULL, 27, 'en', 1, 1, 1, '2022-04-03 07:42:04', '2022-04-03 07:42:04'),
(513, NULL, 21, 27, 'en', 1, 1, 1, '2022-04-03 07:42:04', '2022-04-03 07:42:04'),
(514, NULL, 23, 27, 'en', 1, 1, 1, '2022-04-03 07:42:04', '2022-04-03 07:42:04'),
(515, NULL, 25, 27, 'en', 1, 1, 1, '2022-04-03 07:42:04', '2022-04-03 07:42:04'),
(527, 31, NULL, 35, 'en', 1, 1, 1, '2022-04-03 07:45:12', '2022-04-03 07:45:12'),
(528, NULL, 16, 35, 'en', 1, 1, 1, '2022-04-03 07:45:12', '2022-04-03 07:45:12'),
(529, NULL, 22, 35, 'en', 1, 1, 1, '2022-04-03 07:45:12', '2022-04-03 07:45:12'),
(530, NULL, 24, 35, 'en', 1, 1, 1, '2022-04-03 07:45:12', '2022-04-03 07:45:12'),
(533, 23, NULL, 31, 'en', 1, 1, 1, '2022-04-03 07:46:57', '2022-04-03 07:46:57'),
(534, NULL, 24, 31, 'en', 1, 1, 1, '2022-04-03 07:46:57', '2022-04-03 07:46:57'),
(535, 28, NULL, 37, 'en', 1, 1, 1, '2022-04-03 07:52:04', '2022-04-03 07:52:04'),
(536, 31, NULL, 37, 'en', 1, 1, 1, '2022-04-03 07:52:04', '2022-04-03 07:52:04'),
(537, NULL, 21, 37, 'en', 1, 1, 1, '2022-04-03 07:52:04', '2022-04-03 07:52:04'),
(538, NULL, 23, 37, 'en', 1, 1, 1, '2022-04-03 07:52:04', '2022-04-03 07:52:04'),
(539, NULL, 25, 37, 'en', 1, 1, 1, '2022-04-03 07:52:04', '2022-04-03 07:52:04'),
(540, 31, NULL, 34, 'en', 1, 1, 1, '2022-04-03 07:52:59', '2022-04-03 07:52:59'),
(541, 17, NULL, 34, 'en', 1, 1, 1, '2022-04-03 07:52:59', '2022-04-03 07:52:59'),
(542, 23, NULL, 34, 'en', 1, 1, 1, '2022-04-03 07:52:59', '2022-04-03 07:52:59'),
(543, 24, NULL, 34, 'en', 1, 1, 1, '2022-04-03 07:52:59', '2022-04-03 07:52:59'),
(544, 25, NULL, 34, 'en', 1, 1, 1, '2022-04-03 07:52:59', '2022-04-03 07:52:59'),
(552, 31, NULL, 42, 'en', 1, 1, 1, '2022-04-03 09:26:42', '2022-04-03 09:26:42'),
(553, 21, NULL, 42, 'en', 1, 1, 1, '2022-04-03 09:26:42', '2022-04-03 09:26:42'),
(554, 23, NULL, 42, 'en', 1, 1, 1, '2022-04-03 09:26:42', '2022-04-03 09:26:42'),
(555, 25, NULL, 42, 'en', 1, 1, 1, '2022-04-03 09:26:42', '2022-04-03 09:26:42'),
(556, NULL, 21, 42, 'en', 1, 1, 1, '2022-04-03 09:26:42', '2022-04-03 09:26:42'),
(557, NULL, 23, 42, 'en', 1, 1, 1, '2022-04-03 09:26:42', '2022-04-03 09:26:42'),
(558, NULL, 25, 42, 'en', 1, 1, 1, '2022-04-03 09:26:42', '2022-04-03 09:26:42'),
(559, 20, NULL, 43, 'en', 1, 1, 1, '2022-04-03 09:30:09', '2022-04-03 09:30:09'),
(560, NULL, 12, 43, 'en', 1, 1, 1, '2022-04-03 09:30:09', '2022-04-03 09:30:09'),
(570, 31, NULL, 46, 'en', 1, 1, 1, '2022-04-04 07:09:24', '2022-04-04 07:09:24'),
(571, NULL, 12, 46, 'en', 1, 1, 1, '2022-04-04 07:09:24', '2022-04-04 07:09:24'),
(572, 31, NULL, 47, 'en', 1, 1, 1, '2022-04-04 07:10:51', '2022-04-04 07:10:51'),
(573, NULL, 12, 47, 'en', 1, 1, 1, '2022-04-04 07:10:51', '2022-04-04 07:10:51'),
(574, 31, NULL, 48, 'en', 1, 1, 1, '2022-04-04 07:12:29', '2022-04-04 07:12:29'),
(575, NULL, 12, 48, 'en', 1, 1, 1, '2022-04-04 07:12:29', '2022-04-04 07:12:29'),
(576, 15, NULL, 49, 'en', 1, 1, 1, '2022-04-04 07:16:38', '2022-04-04 07:16:38'),
(577, 29, NULL, 49, 'en', 1, 1, 1, '2022-04-04 07:16:38', '2022-04-04 07:16:38'),
(578, 31, NULL, 49, 'en', 1, 1, 1, '2022-04-04 07:16:38', '2022-04-04 07:16:38'),
(579, 21, NULL, 49, 'en', 1, 1, 1, '2022-04-04 07:16:38', '2022-04-04 07:16:38'),
(580, 23, NULL, 49, 'en', 1, 1, 1, '2022-04-04 07:16:38', '2022-04-04 07:16:38'),
(581, 25, NULL, 49, 'en', 1, 1, 1, '2022-04-04 07:16:38', '2022-04-04 07:16:38'),
(582, NULL, 12, 49, 'en', 1, 1, 1, '2022-04-04 07:16:38', '2022-04-04 07:16:38'),
(583, 31, NULL, 50, 'en', 1, 1, 1, '2022-04-04 07:18:34', '2022-04-04 07:18:34'),
(584, NULL, 12, 50, 'en', 1, 1, 1, '2022-04-04 07:18:34', '2022-04-04 07:18:34'),
(585, 18, NULL, 51, 'en', 1, 1, 1, '2022-04-04 07:20:31', '2022-04-04 07:20:31'),
(586, NULL, 12, 51, 'en', 1, 1, 1, '2022-04-04 07:20:31', '2022-04-04 07:20:31'),
(590, 31, NULL, 53, 'en', 1, 1, 1, '2022-04-04 07:31:45', '2022-04-04 07:31:45'),
(591, NULL, 12, 53, 'en', 1, 1, 1, '2022-04-04 07:31:45', '2022-04-04 07:31:45'),
(592, NULL, 24, 53, 'en', 1, 1, 1, '2022-04-04 07:31:45', '2022-04-04 07:31:45'),
(597, 20, NULL, 55, 'en', 1, 1, 1, '2022-04-04 07:36:33', '2022-04-04 07:36:33'),
(598, NULL, 12, 55, 'en', 1, 1, 1, '2022-04-04 07:36:33', '2022-04-04 07:36:33'),
(599, NULL, 22, 55, 'en', 1, 1, 1, '2022-04-04 07:36:33', '2022-04-04 07:36:33'),
(600, NULL, 24, 55, 'en', 1, 1, 1, '2022-04-04 07:36:33', '2022-04-04 07:36:33'),
(601, 31, NULL, 56, 'en', 1, 1, 1, '2022-04-04 07:38:52', '2022-04-04 07:38:52'),
(602, NULL, 12, 56, 'en', 1, 1, 1, '2022-04-04 07:38:52', '2022-04-04 07:38:52'),
(603, NULL, 24, 56, 'en', 1, 1, 1, '2022-04-04 07:38:52', '2022-04-04 07:38:52'),
(604, 17, NULL, 57, 'en', 1, 1, 1, '2022-04-04 07:41:05', '2022-04-04 07:41:05'),
(605, NULL, 16, 57, 'en', 1, 1, 1, '2022-04-04 07:41:05', '2022-04-04 07:41:05'),
(606, NULL, 22, 57, 'en', 1, 1, 1, '2022-04-04 07:41:05', '2022-04-04 07:41:05'),
(607, NULL, 24, 57, 'en', 1, 1, 1, '2022-04-04 07:41:05', '2022-04-04 07:41:05'),
(608, 31, NULL, 58, 'en', 1, 1, 1, '2022-04-04 07:44:38', '2022-04-04 07:44:38'),
(609, NULL, 12, 58, 'en', 1, 1, 1, '2022-04-04 07:44:38', '2022-04-04 07:44:38'),
(610, NULL, 24, 58, 'en', 1, 1, 1, '2022-04-04 07:44:38', '2022-04-04 07:44:38'),
(620, 19, NULL, 59, 'en', 1, 1, 1, '2022-04-04 07:49:11', '2022-04-04 07:49:11'),
(621, 21, NULL, 59, 'en', 1, 1, 1, '2022-04-04 07:49:11', '2022-04-04 07:49:11'),
(622, 23, NULL, 59, 'en', 1, 1, 1, '2022-04-04 07:49:11', '2022-04-04 07:49:11'),
(623, 25, NULL, 59, 'en', 1, 1, 1, '2022-04-04 07:49:11', '2022-04-04 07:49:11'),
(624, NULL, 12, 59, 'en', 1, 1, 1, '2022-04-04 07:49:11', '2022-04-04 07:49:11'),
(625, NULL, 13, 59, 'en', 1, 1, 1, '2022-04-04 07:49:11', '2022-04-04 07:49:11'),
(626, NULL, 16, 59, 'en', 1, 1, 1, '2022-04-04 07:49:11', '2022-04-04 07:49:11'),
(627, NULL, 22, 59, 'en', 1, 1, 1, '2022-04-04 07:49:11', '2022-04-04 07:49:11'),
(628, NULL, 24, 59, 'en', 1, 1, 1, '2022-04-04 07:49:11', '2022-04-04 07:49:11'),
(629, 31, NULL, 60, 'en', 1, 1, 1, '2022-04-04 08:03:01', '2022-04-04 08:03:01'),
(630, 18, NULL, 60, 'en', 1, 1, 1, '2022-04-04 08:03:01', '2022-04-04 08:03:01'),
(631, NULL, 12, 60, 'en', 1, 1, 1, '2022-04-04 08:03:01', '2022-04-04 08:03:01'),
(638, 17, NULL, 62, 'en', 1, 1, 1, '2022-04-04 08:08:38', '2022-04-04 08:08:38'),
(639, 21, NULL, 62, 'en', 1, 1, 1, '2022-04-04 08:08:38', '2022-04-04 08:08:38'),
(640, 23, NULL, 62, 'en', 1, 1, 1, '2022-04-04 08:08:38', '2022-04-04 08:08:38'),
(641, NULL, 22, 62, 'en', 1, 1, 1, '2022-04-04 08:08:38', '2022-04-04 08:08:38'),
(642, NULL, 24, 62, 'en', 1, 1, 1, '2022-04-04 08:08:38', '2022-04-04 08:08:38'),
(650, 31, NULL, 64, 'en', 1, 1, 1, '2022-04-04 08:15:46', '2022-04-04 08:15:46'),
(651, NULL, 12, 64, 'en', 1, 1, 1, '2022-04-04 08:15:46', '2022-04-04 08:15:46'),
(657, 31, NULL, 66, 'en', 1, 1, 1, '2022-04-04 08:21:28', '2022-04-04 08:21:28'),
(658, NULL, 12, 66, 'en', 1, 1, 1, '2022-04-04 08:21:28', '2022-04-04 08:21:28'),
(659, NULL, 13, 66, 'en', 1, 1, 1, '2022-04-04 08:21:28', '2022-04-04 08:21:28'),
(660, NULL, 16, 66, 'en', 1, 1, 1, '2022-04-04 08:21:28', '2022-04-04 08:21:28'),
(661, NULL, 22, 66, 'en', 1, 1, 1, '2022-04-04 08:21:28', '2022-04-04 08:21:28'),
(662, NULL, 24, 66, 'en', 1, 1, 1, '2022-04-04 08:21:28', '2022-04-04 08:21:28'),
(666, 29, NULL, 68, 'en', 1, 1, 1, '2022-04-04 08:25:55', '2022-04-04 08:25:55'),
(667, 18, NULL, 68, 'en', 1, 1, 1, '2022-04-04 08:25:55', '2022-04-04 08:25:55'),
(668, NULL, 13, 68, 'en', 1, 1, 1, '2022-04-04 08:25:55', '2022-04-04 08:25:55'),
(669, NULL, 16, 68, 'en', 1, 1, 1, '2022-04-04 08:25:55', '2022-04-04 08:25:55'),
(670, NULL, 22, 68, 'en', 1, 1, 1, '2022-04-04 08:25:55', '2022-04-04 08:25:55'),
(671, NULL, 24, 68, 'en', 1, 1, 1, '2022-04-04 08:25:55', '2022-04-04 08:25:55'),
(672, 18, NULL, 69, 'en', 1, 1, 1, '2022-04-04 08:29:43', '2022-04-04 08:29:43'),
(673, 20, NULL, 69, 'en', 1, 1, 1, '2022-04-04 08:29:43', '2022-04-04 08:29:43'),
(674, NULL, 12, 69, 'en', 1, 1, 1, '2022-04-04 08:29:43', '2022-04-04 08:29:43'),
(675, NULL, 16, 69, 'en', 1, 1, 1, '2022-04-04 08:29:43', '2022-04-04 08:29:43'),
(676, NULL, 22, 69, 'en', 1, 1, 1, '2022-04-04 08:29:43', '2022-04-04 08:29:43'),
(677, NULL, 24, 69, 'en', 1, 1, 1, '2022-04-04 08:29:43', '2022-04-04 08:29:43'),
(678, 17, NULL, 65, 'en', 1, 1, 1, '2022-04-04 08:30:58', '2022-04-04 08:30:58'),
(679, 19, NULL, 65, 'en', 1, 1, 1, '2022-04-04 08:30:58', '2022-04-04 08:30:58'),
(680, NULL, 16, 65, 'en', 1, 1, 1, '2022-04-04 08:30:58', '2022-04-04 08:30:58'),
(681, NULL, 22, 65, 'en', 1, 1, 1, '2022-04-04 08:30:58', '2022-04-04 08:30:58'),
(682, NULL, 24, 65, 'en', 1, 1, 1, '2022-04-04 08:30:58', '2022-04-04 08:30:58'),
(690, 18, NULL, 2, 'en', 1, 1, 1, '2022-04-10 05:37:34', '2022-04-10 05:37:34'),
(691, 21, NULL, 2, 'en', 1, 1, 1, '2022-04-10 05:37:34', '2022-04-10 05:37:34'),
(692, 23, NULL, 2, 'en', 1, 1, 1, '2022-04-10 05:37:34', '2022-04-10 05:37:34'),
(693, 25, NULL, 2, 'en', 1, 1, 1, '2022-04-10 05:37:34', '2022-04-10 05:37:34'),
(694, NULL, 16, 2, 'en', 1, 1, 1, '2022-04-10 05:37:34', '2022-04-10 05:37:34'),
(695, NULL, 22, 2, 'en', 1, 1, 1, '2022-04-10 05:37:34', '2022-04-10 05:37:34'),
(696, NULL, 24, 2, 'en', 1, 1, 1, '2022-04-10 05:37:34', '2022-04-10 05:37:34'),
(724, 21, NULL, 7, 'en', 1, 1, 1, '2022-04-10 05:49:03', '2022-04-10 05:49:03'),
(725, 23, NULL, 7, 'en', 1, 1, 1, '2022-04-10 05:49:03', '2022-04-10 05:49:03'),
(726, NULL, 22, 7, 'en', 1, 1, 1, '2022-04-10 05:49:03', '2022-04-10 05:49:03'),
(727, NULL, 24, 7, 'en', 1, 1, 1, '2022-04-10 05:49:03', '2022-04-10 05:49:03'),
(734, 21, NULL, 11, 'en', 1, 1, 1, '2022-04-10 05:50:26', '2022-04-10 05:50:26'),
(735, 23, NULL, 11, 'en', 1, 1, 1, '2022-04-10 05:50:26', '2022-04-10 05:50:26'),
(736, 25, NULL, 11, 'en', 1, 1, 1, '2022-04-10 05:50:26', '2022-04-10 05:50:26'),
(737, NULL, 16, 11, 'en', 1, 1, 1, '2022-04-10 05:50:26', '2022-04-10 05:50:26'),
(738, NULL, 22, 11, 'en', 1, 1, 1, '2022-04-10 05:50:26', '2022-04-10 05:50:26'),
(739, NULL, 24, 11, 'en', 1, 1, 1, '2022-04-10 05:50:26', '2022-04-10 05:50:26'),
(750, 18, NULL, 13, 'en', 1, 1, 1, '2022-04-10 05:52:29', '2022-04-10 05:52:29'),
(751, 21, NULL, 13, 'en', 1, 1, 1, '2022-04-10 05:52:29', '2022-04-10 05:52:29'),
(752, NULL, 22, 13, 'en', 1, 1, 1, '2022-04-10 05:52:29', '2022-04-10 05:52:29'),
(753, 15, NULL, 45, 'en', 1, 1, 1, '2022-04-10 05:54:09', '2022-04-10 05:54:09'),
(754, 31, NULL, 45, 'en', 1, 1, 1, '2022-04-10 05:54:09', '2022-04-10 05:54:09'),
(755, NULL, 16, 45, 'en', 1, 1, 1, '2022-04-10 05:54:09', '2022-04-10 05:54:09'),
(756, NULL, 21, 45, 'en', 1, 1, 1, '2022-04-10 05:54:09', '2022-04-10 05:54:09'),
(757, NULL, 23, 45, 'en', 1, 1, 1, '2022-04-10 05:54:09', '2022-04-10 05:54:09'),
(758, 31, NULL, 52, 'en', 1, 1, 1, '2022-04-10 05:55:06', '2022-04-10 05:55:06'),
(759, NULL, 12, 52, 'en', 1, 1, 1, '2022-04-10 05:55:06', '2022-04-10 05:55:06'),
(760, NULL, 24, 52, 'en', 1, 1, 1, '2022-04-10 05:55:06', '2022-04-10 05:55:06'),
(761, 27, NULL, 54, 'en', 1, 1, 1, '2022-04-10 05:56:35', '2022-04-10 05:56:35'),
(762, 31, NULL, 54, 'en', 1, 1, 1, '2022-04-10 05:56:35', '2022-04-10 05:56:35'),
(763, 18, NULL, 54, 'en', 1, 1, 1, '2022-04-10 05:56:35', '2022-04-10 05:56:35'),
(764, NULL, 12, 54, 'en', 1, 1, 1, '2022-04-10 05:56:35', '2022-04-10 05:56:35'),
(765, 31, NULL, 61, 'en', 1, 1, 1, '2022-04-10 05:57:34', '2022-04-10 05:57:34'),
(766, 18, NULL, 61, 'en', 1, 1, 1, '2022-04-10 05:57:34', '2022-04-10 05:57:34'),
(767, 21, NULL, 61, 'en', 1, 1, 1, '2022-04-10 05:57:34', '2022-04-10 05:57:34'),
(768, 23, NULL, 61, 'en', 1, 1, 1, '2022-04-10 05:57:34', '2022-04-10 05:57:34'),
(769, 25, NULL, 61, 'en', 1, 1, 1, '2022-04-10 05:57:34', '2022-04-10 05:57:34'),
(770, NULL, 12, 61, 'en', 1, 1, 1, '2022-04-10 05:57:34', '2022-04-10 05:57:34'),
(781, 21, NULL, 22, 'en', 1, 1, 1, '2022-04-11 08:10:43', '2022-04-11 08:10:43'),
(782, 23, NULL, 22, 'en', 1, 1, 1, '2022-04-11 08:10:43', '2022-04-11 08:10:43'),
(783, 25, NULL, 22, 'en', 1, 1, 1, '2022-04-11 08:10:43', '2022-04-11 08:10:43'),
(784, NULL, 12, 22, 'en', 1, 1, 1, '2022-04-11 08:10:43', '2022-04-11 08:10:43'),
(785, NULL, 16, 22, 'en', 1, 1, 1, '2022-04-11 08:10:43', '2022-04-11 08:10:43'),
(786, NULL, 22, 22, 'en', 1, 1, 1, '2022-04-11 08:10:43', '2022-04-11 08:10:43'),
(787, NULL, 24, 22, 'en', 1, 1, 1, '2022-04-11 08:10:43', '2022-04-11 08:10:43'),
(788, 31, NULL, 5, 'en', 1, 1, 1, '2022-04-12 03:44:56', '2022-04-12 03:44:56'),
(789, NULL, 24, 5, 'en', 1, 1, 1, '2022-04-12 03:44:56', '2022-04-12 03:44:56'),
(795, 15, NULL, 44, 'en', 1, 1, 1, '2022-04-12 04:04:02', '2022-04-12 04:04:02'),
(796, 28, NULL, 44, 'en', 1, 1, 1, '2022-04-12 04:04:02', '2022-04-12 04:04:02'),
(797, 17, NULL, 44, 'en', 1, 1, 1, '2022-04-12 04:04:02', '2022-04-12 04:04:02'),
(798, NULL, 16, 44, 'en', 1, 1, 1, '2022-04-12 04:04:02', '2022-04-12 04:04:02'),
(826, 31, NULL, 71, 'en', 1, 1, 1, '2022-04-19 09:00:57', '2022-04-19 09:00:57'),
(827, NULL, 21, 71, 'en', 1, 1, 1, '2022-04-19 09:00:57', '2022-04-19 09:00:57'),
(828, NULL, 23, 71, 'en', 1, 1, 1, '2022-04-19 09:00:57', '2022-04-19 09:00:57'),
(829, NULL, 25, 71, 'en', 1, 1, 1, '2022-04-19 09:00:57', '2022-04-19 09:00:57'),
(830, 15, NULL, 70, 'en', 1, 1, 1, '2022-04-19 09:01:36', '2022-04-19 09:01:36'),
(831, 28, NULL, 70, 'en', 1, 1, 1, '2022-04-19 09:01:36', '2022-04-19 09:01:36'),
(832, 17, NULL, 70, 'en', 1, 1, 1, '2022-04-19 09:01:36', '2022-04-19 09:01:36'),
(833, NULL, 21, 70, 'en', 1, 1, 1, '2022-04-19 09:01:36', '2022-04-19 09:01:36'),
(834, NULL, 23, 70, 'en', 1, 1, 1, '2022-04-19 09:01:36', '2022-04-19 09:01:36'),
(835, NULL, 25, 70, 'en', 1, 1, 1, '2022-04-19 09:01:36', '2022-04-19 09:01:36'),
(836, 21, NULL, 72, 'en', 1, 1, 1, '2022-04-19 09:04:12', '2022-04-19 09:04:12'),
(837, 23, NULL, 72, 'en', 1, 1, 1, '2022-04-19 09:04:12', '2022-04-19 09:04:12'),
(838, 25, NULL, 72, 'en', 1, 1, 1, '2022-04-19 09:04:12', '2022-04-19 09:04:12'),
(839, NULL, 16, 72, 'en', 1, 1, 1, '2022-04-19 09:04:12', '2022-04-19 09:04:12'),
(840, NULL, 22, 72, 'en', 1, 1, 1, '2022-04-19 09:04:12', '2022-04-19 09:04:12'),
(841, NULL, 24, 72, 'en', 1, 1, 1, '2022-04-19 09:04:12', '2022-04-19 09:04:12'),
(849, 21, NULL, 74, 'en', 1, 1, 1, '2022-04-19 09:10:41', '2022-04-19 09:10:41'),
(850, 23, NULL, 74, 'en', 1, 1, 1, '2022-04-19 09:10:41', '2022-04-19 09:10:41'),
(851, 25, NULL, 74, 'en', 1, 1, 1, '2022-04-19 09:10:41', '2022-04-19 09:10:41'),
(852, NULL, 21, 74, 'en', 1, 1, 1, '2022-04-19 09:10:41', '2022-04-19 09:10:41'),
(853, NULL, 23, 74, 'en', 1, 1, 1, '2022-04-19 09:10:41', '2022-04-19 09:10:41'),
(854, NULL, 25, 74, 'en', 1, 1, 1, '2022-04-19 09:10:41', '2022-04-19 09:10:41'),
(864, 21, NULL, 76, 'en', 1, 1, 1, '2022-04-19 09:16:35', '2022-04-19 09:16:35'),
(865, 23, NULL, 76, 'en', 1, 1, 1, '2022-04-19 09:16:35', '2022-04-19 09:16:35'),
(866, 25, NULL, 76, 'en', 1, 1, 1, '2022-04-19 09:16:35', '2022-04-19 09:16:35'),
(867, NULL, 21, 76, 'en', 1, 1, 1, '2022-04-19 09:16:35', '2022-04-19 09:16:35'),
(868, NULL, 23, 76, 'en', 1, 1, 1, '2022-04-19 09:16:35', '2022-04-19 09:16:35'),
(869, NULL, 25, 76, 'en', 1, 1, 1, '2022-04-19 09:16:35', '2022-04-19 09:16:35'),
(870, 26, NULL, 77, 'en', 1, 1, 1, '2022-04-19 09:18:29', '2022-04-19 09:18:29'),
(871, 28, NULL, 77, 'en', 1, 1, 1, '2022-04-19 09:18:29', '2022-04-19 09:18:29'),
(872, 26, NULL, 78, 'en', 1, 1, 1, '2022-04-19 09:22:40', '2022-04-19 09:22:40'),
(873, 28, NULL, 78, 'en', 1, 1, 1, '2022-04-19 09:22:40', '2022-04-19 09:22:40'),
(874, NULL, 21, 78, 'en', 1, 1, 1, '2022-04-19 09:22:40', '2022-04-19 09:22:40'),
(875, NULL, 23, 78, 'en', 1, 1, 1, '2022-04-19 09:22:40', '2022-04-19 09:22:40'),
(876, NULL, 25, 78, 'en', 1, 1, 1, '2022-04-19 09:22:40', '2022-04-19 09:22:40'),
(877, 18, NULL, 80, 'en', 1, 1, 1, '2022-04-20 03:07:56', '2022-04-20 03:07:56'),
(878, 21, NULL, 80, 'en', 1, 1, 1, '2022-04-20 03:07:56', '2022-04-20 03:07:56'),
(879, 23, NULL, 80, 'en', 1, 1, 1, '2022-04-20 03:07:56', '2022-04-20 03:07:56'),
(880, 25, NULL, 80, 'en', 1, 1, 1, '2022-04-20 03:07:56', '2022-04-20 03:07:56'),
(881, NULL, 20, 80, 'en', 1, 1, 1, '2022-04-20 03:07:56', '2022-04-20 03:07:56'),
(882, NULL, 21, 80, 'en', 1, 1, 1, '2022-04-20 03:07:56', '2022-04-20 03:07:56'),
(883, NULL, 23, 80, 'en', 1, 1, 1, '2022-04-20 03:07:56', '2022-04-20 03:07:56'),
(884, NULL, 25, 80, 'en', 1, 1, 1, '2022-04-20 03:07:56', '2022-04-20 03:07:56'),
(885, 21, NULL, 81, 'en', 1, 1, 1, '2022-04-20 03:10:15', '2022-04-20 03:10:15'),
(886, 23, NULL, 81, 'en', 1, 1, 1, '2022-04-20 03:10:15', '2022-04-20 03:10:15'),
(887, 25, NULL, 81, 'en', 1, 1, 1, '2022-04-20 03:10:15', '2022-04-20 03:10:15'),
(888, NULL, 16, 81, 'en', 1, 1, 1, '2022-04-20 03:10:15', '2022-04-20 03:10:15'),
(889, NULL, 22, 81, 'en', 1, 1, 1, '2022-04-20 03:10:15', '2022-04-20 03:10:15'),
(890, NULL, 24, 81, 'en', 1, 1, 1, '2022-04-20 03:10:15', '2022-04-20 03:10:15'),
(891, 28, NULL, 82, 'en', 1, 1, 1, '2022-04-20 03:12:40', '2022-04-20 03:12:40'),
(892, 18, NULL, 82, 'en', 1, 1, 1, '2022-04-20 03:12:40', '2022-04-20 03:12:40'),
(893, 21, NULL, 82, 'en', 1, 1, 1, '2022-04-20 03:12:40', '2022-04-20 03:12:40'),
(894, 23, NULL, 82, 'en', 1, 1, 1, '2022-04-20 03:12:40', '2022-04-20 03:12:40'),
(895, 25, NULL, 82, 'en', 1, 1, 1, '2022-04-20 03:12:40', '2022-04-20 03:12:40'),
(896, NULL, 21, 82, 'en', 1, 1, 1, '2022-04-20 03:12:40', '2022-04-20 03:12:40'),
(897, NULL, 23, 82, 'en', 1, 1, 1, '2022-04-20 03:12:40', '2022-04-20 03:12:40'),
(898, NULL, 25, 82, 'en', 1, 1, 1, '2022-04-20 03:12:40', '2022-04-20 03:12:40'),
(899, 28, NULL, 83, 'en', 1, 1, 1, '2022-04-20 03:14:08', '2022-04-20 03:14:08'),
(900, 18, NULL, 83, 'en', 1, 1, 1, '2022-04-20 03:14:08', '2022-04-20 03:14:08'),
(901, 21, NULL, 83, 'en', 1, 1, 1, '2022-04-20 03:14:08', '2022-04-20 03:14:08'),
(902, 23, NULL, 83, 'en', 1, 1, 1, '2022-04-20 03:14:08', '2022-04-20 03:14:08'),
(903, 25, NULL, 83, 'en', 1, 1, 1, '2022-04-20 03:14:08', '2022-04-20 03:14:08'),
(904, NULL, 21, 83, 'en', 1, 1, 1, '2022-04-20 03:14:08', '2022-04-20 03:14:08'),
(905, NULL, 23, 83, 'en', 1, 1, 1, '2022-04-20 03:14:08', '2022-04-20 03:14:08'),
(906, NULL, 25, 83, 'en', 1, 1, 1, '2022-04-20 03:14:08', '2022-04-20 03:14:08'),
(907, 26, NULL, 84, 'en', 1, 1, 1, '2022-04-20 03:16:34', '2022-04-20 03:16:34'),
(908, 31, NULL, 84, 'en', 1, 1, 1, '2022-04-20 03:16:34', '2022-04-20 03:16:34'),
(909, 18, NULL, 84, 'en', 1, 1, 1, '2022-04-20 03:16:34', '2022-04-20 03:16:34'),
(910, NULL, 16, 84, 'en', 1, 1, 1, '2022-04-20 03:16:34', '2022-04-20 03:16:34'),
(911, NULL, 21, 84, 'en', 1, 1, 1, '2022-04-20 03:16:34', '2022-04-20 03:16:34'),
(912, NULL, 22, 84, 'en', 1, 1, 1, '2022-04-20 03:16:34', '2022-04-20 03:16:34'),
(913, NULL, 23, 84, 'en', 1, 1, 1, '2022-04-20 03:16:34', '2022-04-20 03:16:34'),
(914, NULL, 24, 84, 'en', 1, 1, 1, '2022-04-20 03:16:34', '2022-04-20 03:16:34'),
(915, NULL, 25, 84, 'en', 1, 1, 1, '2022-04-20 03:16:34', '2022-04-20 03:16:34'),
(916, 26, NULL, 85, 'en', 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(917, 31, NULL, 85, 'en', 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(918, 18, NULL, 85, 'en', 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(919, NULL, 16, 85, 'en', 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(920, NULL, 21, 85, 'en', 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(921, NULL, 22, 85, 'en', 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(922, NULL, 23, 85, 'en', 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(923, NULL, 24, 85, 'en', 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(924, NULL, 25, 85, 'en', 1, 1, 1, '2022-04-20 03:18:36', '2022-04-20 03:18:36'),
(925, 18, NULL, 86, 'en', 1, 1, 1, '2022-04-20 03:23:00', '2022-04-20 03:23:00'),
(926, 21, NULL, 86, 'en', 1, 1, 1, '2022-04-20 03:23:00', '2022-04-20 03:23:00'),
(927, 23, NULL, 86, 'en', 1, 1, 1, '2022-04-20 03:23:00', '2022-04-20 03:23:00'),
(928, 25, NULL, 86, 'en', 1, 1, 1, '2022-04-20 03:23:00', '2022-04-20 03:23:00'),
(929, NULL, 12, 86, 'en', 1, 1, 1, '2022-04-20 03:23:00', '2022-04-20 03:23:00'),
(930, NULL, 16, 86, 'en', 1, 1, 1, '2022-04-20 03:23:00', '2022-04-20 03:23:00'),
(931, NULL, 22, 86, 'en', 1, 1, 1, '2022-04-20 03:23:00', '2022-04-20 03:23:00'),
(932, NULL, 24, 86, 'en', 1, 1, 1, '2022-04-20 03:23:00', '2022-04-20 03:23:00'),
(944, 27, NULL, 88, 'en', 1, 1, 1, '2022-04-20 05:35:05', '2022-04-20 05:35:05'),
(945, 29, NULL, 88, 'en', 1, 1, 1, '2022-04-20 05:35:05', '2022-04-20 05:35:05'),
(946, 30, NULL, 88, 'en', 1, 1, 1, '2022-04-20 05:35:05', '2022-04-20 05:35:05'),
(947, NULL, 17, 88, 'en', 1, 1, 1, '2022-04-20 05:35:05', '2022-04-20 05:35:05'),
(948, NULL, 18, 88, 'en', 1, 1, 1, '2022-04-20 05:35:05', '2022-04-20 05:35:05'),
(949, NULL, 21, 88, 'en', 1, 1, 1, '2022-04-20 05:35:05', '2022-04-20 05:35:05'),
(950, NULL, 22, 88, 'en', 1, 1, 1, '2022-04-20 05:35:05', '2022-04-20 05:35:05'),
(951, NULL, 23, 88, 'en', 1, 1, 1, '2022-04-20 05:35:05', '2022-04-20 05:35:05'),
(952, NULL, 24, 88, 'en', 1, 1, 1, '2022-04-20 05:35:05', '2022-04-20 05:35:05'),
(953, 15, NULL, 89, 'en', 1, 1, 1, '2022-04-20 05:36:46', '2022-04-20 05:36:46'),
(954, 26, NULL, 89, 'en', 1, 1, 1, '2022-04-20 05:36:46', '2022-04-20 05:36:46'),
(955, 12, NULL, 89, 'en', 1, 1, 1, '2022-04-20 05:36:46', '2022-04-20 05:36:46'),
(956, 17, NULL, 89, 'en', 1, 1, 1, '2022-04-20 05:36:46', '2022-04-20 05:36:46'),
(957, 23, NULL, 89, 'en', 1, 1, 1, '2022-04-20 05:36:46', '2022-04-20 05:36:46'),
(958, NULL, 24, 89, 'en', 1, 1, 1, '2022-04-20 05:36:46', '2022-04-20 05:36:46'),
(959, 21, NULL, 90, 'en', 1, 1, 1, '2022-04-20 05:54:43', '2022-04-20 05:54:43'),
(960, 23, NULL, 90, 'en', 1, 1, 1, '2022-04-20 05:54:43', '2022-04-20 05:54:43'),
(961, 25, NULL, 90, 'en', 1, 1, 1, '2022-04-20 05:54:43', '2022-04-20 05:54:43'),
(962, NULL, 16, 90, 'en', 1, 1, 1, '2022-04-20 05:54:43', '2022-04-20 05:54:43'),
(963, NULL, 22, 90, 'en', 1, 1, 1, '2022-04-20 05:54:43', '2022-04-20 05:54:43'),
(964, NULL, 24, 90, 'en', 1, 1, 1, '2022-04-20 05:54:43', '2022-04-20 05:54:43'),
(971, 31, NULL, 92, 'en', 1, 1, 1, '2022-04-20 06:02:03', '2022-04-20 06:02:03'),
(972, NULL, 16, 92, 'en', 1, 1, 1, '2022-04-20 06:02:03', '2022-04-20 06:02:03'),
(973, NULL, 22, 92, 'en', 1, 1, 1, '2022-04-20 06:02:03', '2022-04-20 06:02:03'),
(974, NULL, 24, 92, 'en', 1, 1, 1, '2022-04-20 06:02:03', '2022-04-20 06:02:03'),
(975, 18, NULL, 93, 'en', 1, 1, 1, '2022-04-20 06:19:06', '2022-04-20 06:19:06'),
(976, 21, NULL, 93, 'en', 1, 1, 1, '2022-04-20 06:19:06', '2022-04-20 06:19:06'),
(977, 23, NULL, 93, 'en', 1, 1, 1, '2022-04-20 06:19:06', '2022-04-20 06:19:06'),
(978, 25, NULL, 93, 'en', 1, 1, 1, '2022-04-20 06:19:06', '2022-04-20 06:19:06'),
(979, NULL, 16, 93, 'en', 1, 1, 1, '2022-04-20 06:19:06', '2022-04-20 06:19:06'),
(980, NULL, 22, 93, 'en', 1, 1, 1, '2022-04-20 06:19:06', '2022-04-20 06:19:06'),
(981, NULL, 24, 93, 'en', 1, 1, 1, '2022-04-20 06:19:06', '2022-04-20 06:19:06'),
(988, 21, NULL, 95, 'en', 1, 1, 1, '2022-04-20 06:27:57', '2022-04-20 06:27:57'),
(989, 23, NULL, 95, 'en', 1, 1, 1, '2022-04-20 06:27:57', '2022-04-20 06:27:57'),
(990, 25, NULL, 95, 'en', 1, 1, 1, '2022-04-20 06:27:57', '2022-04-20 06:27:57'),
(991, NULL, 21, 95, 'en', 1, 1, 1, '2022-04-20 06:27:57', '2022-04-20 06:27:57'),
(992, NULL, 23, 95, 'en', 1, 1, 1, '2022-04-20 06:27:57', '2022-04-20 06:27:57'),
(993, NULL, 25, 95, 'en', 1, 1, 1, '2022-04-20 06:27:57', '2022-04-20 06:27:57'),
(994, 21, NULL, 96, 'en', 1, 1, 1, '2022-04-20 06:29:17', '2022-04-20 06:29:17'),
(995, 23, NULL, 96, 'en', 1, 1, 1, '2022-04-20 06:29:17', '2022-04-20 06:29:17'),
(996, 25, NULL, 96, 'en', 1, 1, 1, '2022-04-20 06:29:17', '2022-04-20 06:29:17'),
(997, NULL, 16, 96, 'en', 1, 1, 1, '2022-04-20 06:29:17', '2022-04-20 06:29:17'),
(998, NULL, 22, 96, 'en', 1, 1, 1, '2022-04-20 06:29:17', '2022-04-20 06:29:17'),
(999, NULL, 24, 96, 'en', 1, 1, 1, '2022-04-20 06:29:17', '2022-04-20 06:29:17'),
(1000, 21, NULL, 97, 'en', 1, 1, 1, '2022-04-20 06:31:03', '2022-04-20 06:31:03'),
(1001, 23, NULL, 97, 'en', 1, 1, 1, '2022-04-20 06:31:03', '2022-04-20 06:31:03'),
(1002, 25, NULL, 97, 'en', 1, 1, 1, '2022-04-20 06:31:03', '2022-04-20 06:31:03'),
(1003, NULL, 16, 97, 'en', 1, 1, 1, '2022-04-20 06:31:03', '2022-04-20 06:31:03'),
(1004, NULL, 22, 97, 'en', 1, 1, 1, '2022-04-20 06:31:03', '2022-04-20 06:31:03'),
(1005, NULL, 24, 97, 'en', 1, 1, 1, '2022-04-20 06:31:03', '2022-04-20 06:31:03'),
(1014, 21, NULL, 100, 'en', 1, 1, 1, '2022-04-20 06:50:47', '2022-04-20 06:50:47'),
(1015, 23, NULL, 100, 'en', 1, 1, 1, '2022-04-20 06:50:47', '2022-04-20 06:50:47'),
(1016, 25, NULL, 100, 'en', 1, 1, 1, '2022-04-20 06:50:47', '2022-04-20 06:50:47'),
(1017, NULL, 16, 100, 'en', 1, 1, 1, '2022-04-20 06:50:47', '2022-04-20 06:50:47'),
(1018, NULL, 22, 100, 'en', 1, 1, 1, '2022-04-20 06:50:47', '2022-04-20 06:50:47'),
(1019, NULL, 24, 100, 'en', 1, 1, 1, '2022-04-20 06:50:47', '2022-04-20 06:50:47'),
(1024, 15, NULL, 102, 'en', 1, 1, 1, '2022-04-20 06:54:34', '2022-04-20 06:54:34'),
(1025, 28, NULL, 102, 'en', 1, 1, 1, '2022-04-20 06:54:34', '2022-04-20 06:54:34'),
(1026, 17, NULL, 102, 'en', 1, 1, 1, '2022-04-20 06:54:34', '2022-04-20 06:54:34'),
(1027, NULL, 16, 102, 'en', 1, 1, 1, '2022-04-20 06:54:34', '2022-04-20 06:54:34'),
(1028, NULL, 22, 102, 'en', 1, 1, 1, '2022-04-20 06:54:34', '2022-04-20 06:54:34'),
(1029, NULL, 24, 102, 'en', 1, 1, 1, '2022-04-20 06:54:34', '2022-04-20 06:54:34'),
(1044, 17, NULL, 104, 'en', 1, 1, 1, '2022-04-20 07:01:54', '2022-04-20 07:01:54'),
(1045, 21, NULL, 104, 'en', 1, 1, 1, '2022-04-20 07:01:54', '2022-04-20 07:01:54'),
(1046, 23, NULL, 104, 'en', 1, 1, 1, '2022-04-20 07:01:54', '2022-04-20 07:01:54'),
(1047, 25, NULL, 104, 'en', 1, 1, 1, '2022-04-20 07:01:54', '2022-04-20 07:01:54'),
(1048, NULL, 16, 104, 'en', 1, 1, 1, '2022-04-20 07:01:54', '2022-04-20 07:01:54'),
(1094, 18, NULL, 110, 'en', 1, 1, 1, '2022-04-20 08:03:25', '2022-04-20 08:03:25'),
(1095, 21, NULL, 110, 'en', 1, 1, 1, '2022-04-20 08:03:25', '2022-04-20 08:03:25'),
(1096, 23, NULL, 110, 'en', 1, 1, 1, '2022-04-20 08:03:25', '2022-04-20 08:03:25'),
(1097, 25, NULL, 110, 'en', 1, 1, 1, '2022-04-20 08:03:25', '2022-04-20 08:03:25'),
(1098, NULL, 16, 110, 'en', 1, 1, 1, '2022-04-20 08:03:25', '2022-04-20 08:03:25'),
(1099, NULL, 22, 110, 'en', 1, 1, 1, '2022-04-20 08:03:25', '2022-04-20 08:03:25'),
(1100, NULL, 24, 110, 'en', 1, 1, 1, '2022-04-20 08:03:25', '2022-04-20 08:03:25'),
(1105, 18, NULL, 112, 'en', 1, 1, 1, '2022-04-20 08:06:03', '2022-04-20 08:06:03'),
(1106, 21, NULL, 112, 'en', 1, 1, 1, '2022-04-20 08:06:03', '2022-04-20 08:06:03'),
(1107, 23, NULL, 112, 'en', 1, 1, 1, '2022-04-20 08:06:03', '2022-04-20 08:06:03'),
(1108, 25, NULL, 112, 'en', 1, 1, 1, '2022-04-20 08:06:03', '2022-04-20 08:06:03'),
(1109, NULL, 16, 112, 'en', 1, 1, 1, '2022-04-20 08:06:03', '2022-04-20 08:06:03'),
(1110, NULL, 22, 112, 'en', 1, 1, 1, '2022-04-20 08:06:03', '2022-04-20 08:06:03'),
(1111, NULL, 24, 112, 'en', 1, 1, 1, '2022-04-20 08:06:03', '2022-04-20 08:06:03'),
(1118, 18, NULL, 114, 'en', 1, 1, 1, '2022-04-20 08:09:09', '2022-04-20 08:09:09'),
(1119, 21, NULL, 114, 'en', 1, 1, 1, '2022-04-20 08:09:09', '2022-04-20 08:09:09'),
(1120, 23, NULL, 114, 'en', 1, 1, 1, '2022-04-20 08:09:09', '2022-04-20 08:09:09'),
(1121, 25, NULL, 114, 'en', 1, 1, 1, '2022-04-20 08:09:09', '2022-04-20 08:09:09'),
(1122, NULL, 16, 114, 'en', 1, 1, 1, '2022-04-20 08:09:09', '2022-04-20 08:09:09'),
(1123, NULL, 22, 114, 'en', 1, 1, 1, '2022-04-20 08:09:09', '2022-04-20 08:09:09'),
(1124, NULL, 24, 114, 'en', 1, 1, 1, '2022-04-20 08:09:09', '2022-04-20 08:09:09'),
(1125, 21, NULL, 115, 'en', 1, 1, 1, '2022-04-20 08:10:37', '2022-04-20 08:10:37'),
(1126, 23, NULL, 115, 'en', 1, 1, 1, '2022-04-20 08:10:37', '2022-04-20 08:10:37'),
(1127, 25, NULL, 115, 'en', 1, 1, 1, '2022-04-20 08:10:37', '2022-04-20 08:10:37'),
(1128, NULL, 16, 115, 'en', 1, 1, 1, '2022-04-20 08:10:37', '2022-04-20 08:10:37'),
(1129, NULL, 22, 115, 'en', 1, 1, 1, '2022-04-20 08:10:37', '2022-04-20 08:10:37'),
(1130, NULL, 24, 115, 'en', 1, 1, 1, '2022-04-20 08:10:37', '2022-04-20 08:10:37'),
(1135, 26, NULL, 117, 'en', 1, 1, 1, '2022-04-20 08:14:49', '2022-04-20 08:14:49'),
(1136, NULL, 16, 117, 'en', 1, 1, 1, '2022-04-20 08:14:49', '2022-04-20 08:14:49'),
(1137, NULL, 21, 117, 'en', 1, 1, 1, '2022-04-20 08:14:49', '2022-04-20 08:14:49'),
(1138, NULL, 22, 117, 'en', 1, 1, 1, '2022-04-20 08:14:49', '2022-04-20 08:14:49'),
(1139, NULL, 23, 117, 'en', 1, 1, 1, '2022-04-20 08:14:49', '2022-04-20 08:14:49'),
(1140, NULL, 24, 117, 'en', 1, 1, 1, '2022-04-20 08:14:49', '2022-04-20 08:14:49'),
(1141, NULL, 25, 117, 'en', 1, 1, 1, '2022-04-20 08:14:49', '2022-04-20 08:14:49'),
(1142, 21, NULL, 118, 'en', 1, 1, 1, '2022-04-20 08:18:15', '2022-04-20 08:18:15'),
(1143, 23, NULL, 118, 'en', 1, 1, 1, '2022-04-20 08:18:15', '2022-04-20 08:18:15'),
(1144, 25, NULL, 118, 'en', 1, 1, 1, '2022-04-20 08:18:15', '2022-04-20 08:18:15'),
(1145, NULL, 16, 118, 'en', 1, 1, 1, '2022-04-20 08:18:15', '2022-04-20 08:18:15'),
(1146, NULL, 22, 118, 'en', 1, 1, 1, '2022-04-20 08:18:15', '2022-04-20 08:18:15'),
(1147, NULL, 24, 118, 'en', 1, 1, 1, '2022-04-20 08:18:15', '2022-04-20 08:18:15'),
(1148, 31, NULL, 119, 'en', 1, 1, 1, '2022-04-20 08:20:02', '2022-04-20 08:20:02'),
(1149, NULL, 18, 119, 'en', 1, 1, 1, '2022-04-20 08:20:02', '2022-04-20 08:20:02'),
(1150, NULL, 21, 119, 'en', 1, 1, 1, '2022-04-20 08:20:02', '2022-04-20 08:20:02'),
(1151, NULL, 23, 119, 'en', 1, 1, 1, '2022-04-20 08:20:02', '2022-04-20 08:20:02'),
(1152, NULL, 25, 119, 'en', 1, 1, 1, '2022-04-20 08:20:02', '2022-04-20 08:20:02'),
(1165, 21, NULL, 120, 'en', 1, 1, 1, '2022-04-20 08:24:20', '2022-04-20 08:24:20'),
(1166, 23, NULL, 120, 'en', 1, 1, 1, '2022-04-20 08:24:20', '2022-04-20 08:24:20'),
(1167, 25, NULL, 120, 'en', 1, 1, 1, '2022-04-20 08:24:20', '2022-04-20 08:24:20'),
(1168, NULL, 16, 120, 'en', 1, 1, 1, '2022-04-20 08:24:20', '2022-04-20 08:24:20'),
(1169, NULL, 22, 120, 'en', 1, 1, 1, '2022-04-20 08:24:20', '2022-04-20 08:24:20'),
(1170, NULL, 24, 120, 'en', 1, 1, 1, '2022-04-20 08:24:20', '2022-04-20 08:24:20'),
(1171, 21, NULL, 121, 'en', 1, 1, 1, '2022-04-20 08:25:44', '2022-04-20 08:25:44'),
(1172, 23, NULL, 121, 'en', 1, 1, 1, '2022-04-20 08:25:44', '2022-04-20 08:25:44'),
(1173, NULL, 22, 121, 'en', 1, 1, 1, '2022-04-20 08:25:44', '2022-04-20 08:25:44'),
(1174, NULL, 24, 121, 'en', 1, 1, 1, '2022-04-20 08:25:44', '2022-04-20 08:25:44'),
(1175, 18, NULL, 122, 'en', 1, 1, 1, '2022-04-20 08:27:13', '2022-04-20 08:27:13'),
(1176, 21, NULL, 122, 'en', 1, 1, 1, '2022-04-20 08:27:13', '2022-04-20 08:27:13'),
(1177, 23, NULL, 122, 'en', 1, 1, 1, '2022-04-20 08:27:13', '2022-04-20 08:27:13'),
(1178, 25, NULL, 122, 'en', 1, 1, 1, '2022-04-20 08:27:13', '2022-04-20 08:27:13'),
(1179, NULL, 16, 122, 'en', 1, 1, 1, '2022-04-20 08:27:13', '2022-04-20 08:27:13'),
(1180, NULL, 22, 122, 'en', 1, 1, 1, '2022-04-20 08:27:13', '2022-04-20 08:27:13'),
(1181, NULL, 24, 122, 'en', 1, 1, 1, '2022-04-20 08:27:13', '2022-04-20 08:27:13'),
(1198, 23, NULL, 128, 'en', 1, 1, 1, '2022-04-20 08:47:07', '2022-04-20 08:47:07'),
(1199, NULL, 24, 128, 'en', 1, 1, 1, '2022-04-20 08:47:07', '2022-04-20 08:47:07'),
(1220, 25, NULL, 103, 'en', 1, 1, 1, '2022-04-20 09:03:21', '2022-04-20 09:03:21'),
(1221, NULL, 16, 103, 'en', 1, 1, 1, '2022-04-20 09:03:21', '2022-04-20 09:03:21'),
(1234, 21, NULL, 131, 'en', 1, 1, 1, '2022-04-20 09:11:32', '2022-04-20 09:11:32'),
(1235, 23, NULL, 131, 'en', 1, 1, 1, '2022-04-20 09:11:32', '2022-04-20 09:11:32'),
(1236, 25, NULL, 131, 'en', 1, 1, 1, '2022-04-20 09:11:32', '2022-04-20 09:11:32'),
(1237, NULL, 16, 131, 'en', 1, 1, 1, '2022-04-20 09:11:32', '2022-04-20 09:11:32'),
(1238, NULL, 22, 131, 'en', 1, 1, 1, '2022-04-20 09:11:32', '2022-04-20 09:11:32'),
(1239, NULL, 24, 131, 'en', 1, 1, 1, '2022-04-20 09:11:32', '2022-04-20 09:11:32'),
(1240, 31, NULL, 134, 'en', 1, 1, 1, '2022-04-21 05:55:54', '2022-04-21 05:55:54'),
(1241, NULL, 12, 134, 'en', 1, 1, 1, '2022-04-21 05:55:54', '2022-04-21 05:55:54'),
(1242, NULL, 16, 134, 'en', 1, 1, 1, '2022-04-21 05:55:54', '2022-04-21 05:55:54'),
(1243, NULL, 19, 134, 'en', 1, 1, 1, '2022-04-21 05:55:54', '2022-04-21 05:55:54'),
(1244, NULL, 20, 134, 'en', 1, 1, 1, '2022-04-21 05:55:54', '2022-04-21 05:55:54'),
(1245, NULL, 22, 134, 'en', 1, 1, 1, '2022-04-21 05:55:54', '2022-04-21 05:55:54'),
(1246, NULL, 24, 134, 'en', 1, 1, 1, '2022-04-21 05:55:54', '2022-04-21 05:55:54'),
(1247, 21, NULL, 135, 'en', 1, 1, 1, '2022-04-21 05:58:34', '2022-04-21 05:58:34'),
(1248, 23, NULL, 135, 'en', 1, 1, 1, '2022-04-21 05:58:34', '2022-04-21 05:58:34'),
(1249, 25, NULL, 135, 'en', 1, 1, 1, '2022-04-21 05:58:34', '2022-04-21 05:58:34'),
(1250, NULL, 12, 135, 'en', 1, 1, 1, '2022-04-21 05:58:34', '2022-04-21 05:58:34'),
(1251, NULL, 13, 135, 'en', 1, 1, 1, '2022-04-21 05:58:34', '2022-04-21 05:58:34'),
(1260, 14, NULL, 140, 'en', 1, 1, 1, '2022-04-21 06:26:36', '2022-04-21 06:26:36'),
(1261, 19, NULL, 140, 'en', 1, 1, 1, '2022-04-21 06:26:36', '2022-04-21 06:26:36'),
(1262, NULL, 12, 140, 'en', 1, 1, 1, '2022-04-21 06:26:36', '2022-04-21 06:26:36'),
(1263, NULL, 16, 140, 'en', 1, 1, 1, '2022-04-21 06:26:36', '2022-04-21 06:26:36'),
(1264, NULL, 22, 140, 'en', 1, 1, 1, '2022-04-21 06:26:36', '2022-04-21 06:26:36'),
(1265, NULL, 24, 140, 'en', 1, 1, 1, '2022-04-21 06:26:36', '2022-04-21 06:26:36'),
(1266, 31, NULL, 141, 'en', 1, 1, 1, '2022-04-21 06:27:35', '2022-04-21 06:27:35'),
(1267, NULL, 16, 141, 'en', 1, 1, 1, '2022-04-21 06:27:35', '2022-04-21 06:27:35'),
(1268, NULL, 22, 141, 'en', 1, 1, 1, '2022-04-21 06:27:35', '2022-04-21 06:27:35'),
(1269, NULL, 24, 141, 'en', 1, 1, 1, '2022-04-21 06:27:35', '2022-04-21 06:27:35'),
(1270, 27, NULL, 142, 'en', 1, 1, 1, '2022-04-21 06:31:38', '2022-04-21 06:31:38'),
(1271, NULL, 12, 142, 'en', 1, 1, 1, '2022-04-21 06:31:38', '2022-04-21 06:31:38'),
(1272, NULL, 16, 142, 'en', 1, 1, 1, '2022-04-21 06:31:38', '2022-04-21 06:31:38'),
(1273, NULL, 22, 142, 'en', 1, 1, 1, '2022-04-21 06:31:38', '2022-04-21 06:31:38'),
(1274, NULL, 24, 142, 'en', 1, 1, 1, '2022-04-21 06:31:38', '2022-04-21 06:31:38'),
(1275, 31, NULL, 144, 'en', 1, 1, 1, '2022-04-21 06:33:50', '2022-04-21 06:33:50'),
(1276, NULL, 12, 144, 'en', 1, 1, 1, '2022-04-21 06:33:50', '2022-04-21 06:33:50'),
(1277, NULL, 20, 144, 'en', 1, 1, 1, '2022-04-21 06:33:50', '2022-04-21 06:33:50'),
(1278, 12, NULL, 145, 'en', 1, 1, 1, '2022-04-21 06:35:34', '2022-04-21 06:35:34'),
(1279, 19, NULL, 145, 'en', 1, 1, 1, '2022-04-21 06:35:34', '2022-04-21 06:35:34'),
(1280, NULL, 12, 145, 'en', 1, 1, 1, '2022-04-21 06:35:34', '2022-04-21 06:35:34'),
(1281, NULL, 16, 145, 'en', 1, 1, 1, '2022-04-21 06:35:34', '2022-04-21 06:35:34'),
(1282, NULL, 22, 145, 'en', 1, 1, 1, '2022-04-21 06:35:34', '2022-04-21 06:35:34'),
(1283, NULL, 24, 145, 'en', 1, 1, 1, '2022-04-21 06:35:34', '2022-04-21 06:35:34'),
(1291, 32, NULL, 147, 'en', 1, 1, 1, '2022-04-21 06:42:17', '2022-04-21 06:42:17'),
(1292, NULL, 16, 147, 'en', 1, 1, 1, '2022-04-21 06:42:17', '2022-04-21 06:42:17'),
(1293, NULL, 24, 147, 'en', 1, 1, 1, '2022-04-21 06:42:17', '2022-04-21 06:42:17'),
(1294, 19, NULL, 148, 'en', 1, 1, 1, '2022-04-21 06:43:36', '2022-04-21 06:43:36'),
(1295, NULL, 16, 148, 'en', 1, 1, 1, '2022-04-21 06:43:36', '2022-04-21 06:43:36'),
(1296, NULL, 22, 148, 'en', 1, 1, 1, '2022-04-21 06:43:36', '2022-04-21 06:43:36'),
(1297, NULL, 24, 148, 'en', 1, 1, 1, '2022-04-21 06:43:36', '2022-04-21 06:43:36'),
(1298, 19, NULL, 149, 'en', 1, 1, 1, '2022-04-21 06:45:31', '2022-04-21 06:45:31'),
(1299, NULL, 16, 149, 'en', 1, 1, 1, '2022-04-21 06:45:31', '2022-04-21 06:45:31'),
(1300, NULL, 20, 149, 'en', 1, 1, 1, '2022-04-21 06:45:31', '2022-04-21 06:45:31'),
(1301, NULL, 22, 149, 'en', 1, 1, 1, '2022-04-21 06:45:31', '2022-04-21 06:45:31'),
(1302, NULL, 24, 149, 'en', 1, 1, 1, '2022-04-21 06:45:31', '2022-04-21 06:45:31'),
(1303, 19, NULL, 150, 'en', 1, 1, 1, '2022-04-21 06:46:50', '2022-04-21 06:46:50'),
(1304, NULL, 16, 150, 'en', 1, 1, 1, '2022-04-21 06:46:50', '2022-04-21 06:46:50'),
(1305, NULL, 22, 150, 'en', 1, 1, 1, '2022-04-21 06:46:50', '2022-04-21 06:46:50'),
(1306, 19, NULL, 151, 'en', 1, 1, 1, '2022-04-21 06:49:06', '2022-04-21 06:49:06'),
(1307, NULL, 16, 151, 'en', 1, 1, 1, '2022-04-21 06:49:06', '2022-04-21 06:49:06'),
(1308, NULL, 22, 151, 'en', 1, 1, 1, '2022-04-21 06:49:06', '2022-04-21 06:49:06'),
(1309, NULL, 24, 151, 'en', 1, 1, 1, '2022-04-21 06:49:06', '2022-04-21 06:49:06'),
(1310, 29, NULL, 152, 'en', 1, 1, 1, '2022-04-21 06:51:05', '2022-04-21 06:51:05'),
(1311, 31, NULL, 152, 'en', 1, 1, 1, '2022-04-21 06:51:05', '2022-04-21 06:51:05'),
(1312, NULL, 16, 152, 'en', 1, 1, 1, '2022-04-21 06:51:05', '2022-04-21 06:51:05'),
(1313, NULL, 22, 152, 'en', 1, 1, 1, '2022-04-21 06:51:05', '2022-04-21 06:51:05'),
(1314, NULL, 24, 152, 'en', 1, 1, 1, '2022-04-21 06:51:05', '2022-04-21 06:51:05'),
(1315, 27, NULL, 153, 'en', 1, 1, 1, '2022-04-21 06:53:23', '2022-04-21 06:53:23'),
(1316, 19, NULL, 153, 'en', 1, 1, 1, '2022-04-21 06:53:23', '2022-04-21 06:53:23'),
(1317, NULL, 16, 153, 'en', 1, 1, 1, '2022-04-21 06:53:23', '2022-04-21 06:53:23'),
(1318, NULL, 22, 153, 'en', 1, 1, 1, '2022-04-21 06:53:23', '2022-04-21 06:53:23'),
(1319, NULL, 24, 153, 'en', 1, 1, 1, '2022-04-21 06:53:23', '2022-04-21 06:53:23'),
(1329, 15, NULL, 155, 'en', 1, 1, 1, '2022-04-21 06:58:57', '2022-04-21 06:58:57'),
(1330, 26, NULL, 155, 'en', 1, 1, 1, '2022-04-21 06:58:57', '2022-04-21 06:58:57'),
(1331, NULL, 16, 155, 'en', 1, 1, 1, '2022-04-21 06:58:57', '2022-04-21 06:58:57'),
(1332, 15, NULL, 156, 'en', 1, 1, 1, '2022-04-21 07:00:42', '2022-04-21 07:00:42'),
(1333, 26, NULL, 156, 'en', 1, 1, 1, '2022-04-21 07:00:42', '2022-04-21 07:00:42'),
(1334, NULL, 22, 156, 'en', 1, 1, 1, '2022-04-21 07:00:42', '2022-04-21 07:00:42'),
(1341, 27, NULL, 157, 'en', 1, 1, 1, '2022-05-18 04:57:14', '2022-05-18 04:57:14'),
(1342, 20, NULL, 157, 'en', 1, 1, 1, '2022-05-18 04:57:14', '2022-05-18 04:57:14'),
(1343, NULL, 12, 157, 'en', 1, 1, 1, '2022-05-18 04:57:14', '2022-05-18 04:57:14'),
(1344, NULL, 16, 157, 'en', 1, 1, 1, '2022-05-18 04:57:14', '2022-05-18 04:57:14'),
(1345, NULL, 22, 157, 'en', 1, 1, 1, '2022-05-18 04:57:14', '2022-05-18 04:57:14'),
(1346, NULL, 24, 157, 'en', 1, 1, 1, '2022-05-18 04:57:14', '2022-05-18 04:57:14'),
(1353, 29, NULL, 158, 'en', 1, 1, 1, '2022-05-18 05:29:32', '2022-05-18 05:29:32'),
(1354, 31, NULL, 158, 'en', 1, 1, 1, '2022-05-18 05:29:32', '2022-05-18 05:29:32'),
(1355, 20, NULL, 158, 'en', 1, 1, 1, '2022-05-18 05:29:32', '2022-05-18 05:29:32'),
(1356, NULL, 16, 158, 'en', 1, 1, 1, '2022-05-18 05:29:32', '2022-05-18 05:29:32'),
(1357, NULL, 22, 158, 'en', 1, 1, 1, '2022-05-18 05:29:32', '2022-05-18 05:29:32'),
(1358, NULL, 24, 158, 'en', 1, 1, 1, '2022-05-18 05:29:32', '2022-05-18 05:29:32'),
(1359, 18, NULL, 159, 'en', 1, 1, 1, '2022-05-18 05:31:45', '2022-05-18 05:31:45'),
(1360, NULL, 16, 159, 'en', 1, 1, 1, '2022-05-18 05:31:45', '2022-05-18 05:31:45'),
(1361, NULL, 20, 159, 'en', 1, 1, 1, '2022-05-18 05:31:45', '2022-05-18 05:31:45'),
(1362, NULL, 22, 159, 'en', 1, 1, 1, '2022-05-18 05:31:45', '2022-05-18 05:31:45'),
(1363, NULL, 24, 159, 'en', 1, 1, 1, '2022-05-18 05:31:45', '2022-05-18 05:31:45'),
(1364, 18, NULL, 160, 'en', 1, 1, 1, '2022-05-18 05:41:39', '2022-05-18 05:41:39'),
(1365, 21, NULL, 160, 'en', 1, 1, 1, '2022-05-18 05:41:39', '2022-05-18 05:41:39'),
(1366, 23, NULL, 160, 'en', 1, 1, 1, '2022-05-18 05:41:39', '2022-05-18 05:41:39'),
(1367, 25, NULL, 160, 'en', 1, 1, 1, '2022-05-18 05:41:39', '2022-05-18 05:41:39'),
(1368, NULL, 12, 160, 'en', 1, 1, 1, '2022-05-18 05:41:39', '2022-05-18 05:41:39'),
(1369, NULL, 16, 160, 'en', 1, 1, 1, '2022-05-18 05:41:39', '2022-05-18 05:41:39'),
(1370, NULL, 22, 160, 'en', 1, 1, 1, '2022-05-18 05:41:39', '2022-05-18 05:41:39'),
(1371, NULL, 24, 160, 'en', 1, 1, 1, '2022-05-18 05:41:39', '2022-05-18 05:41:39'),
(1372, 29, NULL, 161, 'en', 1, 1, 1, '2022-05-18 05:43:51', '2022-05-18 05:43:51'),
(1373, NULL, 12, 161, 'en', 1, 1, 1, '2022-05-18 05:43:51', '2022-05-18 05:43:51'),
(1385, 17, NULL, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(1386, 18, NULL, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(1387, 21, NULL, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(1388, 23, NULL, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(1389, 25, NULL, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(1390, NULL, 16, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(1391, NULL, 21, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(1392, NULL, 22, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(1393, NULL, 23, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(1394, NULL, 24, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(1395, NULL, 25, 162, 'en', 1, 1, 1, '2022-05-18 06:24:18', '2022-05-18 06:24:18'),
(1396, 31, NULL, 163, 'en', 1, 1, 1, '2022-05-18 06:26:37', '2022-05-18 06:26:37'),
(1397, 17, NULL, 163, 'en', 1, 1, 1, '2022-05-18 06:26:37', '2022-05-18 06:26:37'),
(1398, 18, NULL, 163, 'en', 1, 1, 1, '2022-05-18 06:26:37', '2022-05-18 06:26:37'),
(1399, 21, NULL, 163, 'en', 1, 1, 1, '2022-05-18 06:26:37', '2022-05-18 06:26:37'),
(1400, 23, NULL, 163, 'en', 1, 1, 1, '2022-05-18 06:26:37', '2022-05-18 06:26:37'),
(1401, 25, NULL, 163, 'en', 1, 1, 1, '2022-05-18 06:26:37', '2022-05-18 06:26:37'),
(1402, NULL, 16, 163, 'en', 1, 1, 1, '2022-05-18 06:26:37', '2022-05-18 06:26:37'),
(1403, NULL, 22, 163, 'en', 1, 1, 1, '2022-05-18 06:26:37', '2022-05-18 06:26:37'),
(1404, NULL, 24, 163, 'en', 1, 1, 1, '2022-05-18 06:26:37', '2022-05-18 06:26:37'),
(1405, 20, NULL, 164, 'en', 1, 1, 1, '2022-05-18 06:38:19', '2022-05-18 06:38:19'),
(1406, NULL, 12, 164, 'en', 1, 1, 1, '2022-05-18 06:38:19', '2022-05-18 06:38:19'),
(1407, NULL, 16, 164, 'en', 1, 1, 1, '2022-05-18 06:38:19', '2022-05-18 06:38:19'),
(1408, NULL, 22, 164, 'en', 1, 1, 1, '2022-05-18 06:38:19', '2022-05-18 06:38:19'),
(1409, NULL, 24, 164, 'en', 1, 1, 1, '2022-05-18 06:38:19', '2022-05-18 06:38:19'),
(1410, 18, NULL, 165, 'en', 1, 1, 1, '2022-05-18 08:32:17', '2022-05-18 08:32:17'),
(1411, 21, NULL, 165, 'en', 1, 1, 1, '2022-05-18 08:32:17', '2022-05-18 08:32:17'),
(1412, 23, NULL, 165, 'en', 1, 1, 1, '2022-05-18 08:32:17', '2022-05-18 08:32:17'),
(1413, 25, NULL, 165, 'en', 1, 1, 1, '2022-05-18 08:32:17', '2022-05-18 08:32:17'),
(1414, NULL, 16, 165, 'en', 1, 1, 1, '2022-05-18 08:32:17', '2022-05-18 08:32:17'),
(1415, NULL, 20, 165, 'en', 1, 1, 1, '2022-05-18 08:32:17', '2022-05-18 08:32:17'),
(1416, NULL, 22, 165, 'en', 1, 1, 1, '2022-05-18 08:32:17', '2022-05-18 08:32:17'),
(1417, NULL, 24, 165, 'en', 1, 1, 1, '2022-05-18 08:32:17', '2022-05-18 08:32:17'),
(1427, 17, NULL, 168, 'en', 1, 1, 1, '2022-05-18 09:18:46', '2022-05-18 09:18:46'),
(1428, 21, NULL, 168, 'en', 1, 1, 1, '2022-05-18 09:18:46', '2022-05-18 09:18:46'),
(1429, 23, NULL, 168, 'en', 1, 1, 1, '2022-05-18 09:18:46', '2022-05-18 09:18:46'),
(1430, 25, NULL, 168, 'en', 1, 1, 1, '2022-05-18 09:18:46', '2022-05-18 09:18:46'),
(1431, NULL, 16, 168, 'en', 1, 1, 1, '2022-05-18 09:18:46', '2022-05-18 09:18:46'),
(1432, NULL, 22, 168, 'en', 1, 1, 1, '2022-05-18 09:18:46', '2022-05-18 09:18:46'),
(1433, NULL, 24, 168, 'en', 1, 1, 1, '2022-05-18 09:18:46', '2022-05-18 09:18:46'),
(1434, 32, NULL, 169, 'en', 1, 1, 1, '2022-05-18 09:53:52', '2022-05-18 09:53:52'),
(1435, 18, NULL, 169, 'en', 1, 1, 1, '2022-05-18 09:53:52', '2022-05-18 09:53:52'),
(1436, NULL, 12, 169, 'en', 1, 1, 1, '2022-05-18 09:53:52', '2022-05-18 09:53:52'),
(1437, NULL, 13, 169, 'en', 1, 1, 1, '2022-05-18 09:53:52', '2022-05-18 09:53:52');
INSERT INTO `toolkit_tool_relations` (`id`, `tool_user_id`, `tool_beneficiary_id`, `toolkit_id`, `language`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1438, NULL, 16, 169, 'en', 1, 1, 1, '2022-05-18 09:53:52', '2022-05-18 09:53:52'),
(1439, NULL, 20, 169, 'en', 1, 1, 1, '2022-05-18 09:53:52', '2022-05-18 09:53:52'),
(1440, NULL, 22, 169, 'en', 1, 1, 1, '2022-05-18 09:53:52', '2022-05-18 09:53:52'),
(1441, NULL, 24, 169, 'en', 1, 1, 1, '2022-05-18 09:53:52', '2022-05-18 09:53:52'),
(1442, 17, NULL, 170, 'en', 1, 1, 1, '2022-05-19 09:46:04', '2022-05-19 09:46:04'),
(1443, 21, NULL, 170, 'en', 1, 1, 1, '2022-05-19 09:46:04', '2022-05-19 09:46:04'),
(1444, 23, NULL, 170, 'en', 1, 1, 1, '2022-05-19 09:46:04', '2022-05-19 09:46:04'),
(1445, 25, NULL, 170, 'en', 1, 1, 1, '2022-05-19 09:46:04', '2022-05-19 09:46:04'),
(1446, NULL, 16, 170, 'en', 1, 1, 1, '2022-05-19 09:46:04', '2022-05-19 09:46:04'),
(1447, NULL, 22, 170, 'en', 1, 1, 1, '2022-05-19 09:46:04', '2022-05-19 09:46:04'),
(1448, NULL, 24, 170, 'en', 1, 1, 1, '2022-05-19 09:46:04', '2022-05-19 09:46:04'),
(1449, 18, NULL, 171, 'en', 1, 1, 1, '2022-05-19 09:48:47', '2022-05-19 09:48:47'),
(1450, NULL, 12, 171, 'en', 1, 1, 1, '2022-05-19 09:48:47', '2022-05-19 09:48:47'),
(1451, NULL, 16, 171, 'en', 1, 1, 1, '2022-05-19 09:48:47', '2022-05-19 09:48:47'),
(1452, NULL, 20, 171, 'en', 1, 1, 1, '2022-05-19 09:48:47', '2022-05-19 09:48:47'),
(1453, NULL, 22, 171, 'en', 1, 1, 1, '2022-05-19 09:48:47', '2022-05-19 09:48:47'),
(1454, NULL, 24, 171, 'en', 1, 1, 1, '2022-05-19 09:48:47', '2022-05-19 09:48:47'),
(1462, 18, NULL, 172, 'en', 1, 1, 1, '2022-05-19 09:54:33', '2022-05-19 09:54:33'),
(1463, 21, NULL, 172, 'en', 1, 1, 1, '2022-05-19 09:54:33', '2022-05-19 09:54:33'),
(1464, 23, NULL, 172, 'en', 1, 1, 1, '2022-05-19 09:54:33', '2022-05-19 09:54:33'),
(1465, 25, NULL, 172, 'en', 1, 1, 1, '2022-05-19 09:54:33', '2022-05-19 09:54:33'),
(1466, NULL, 16, 172, 'en', 1, 1, 1, '2022-05-19 09:54:33', '2022-05-19 09:54:33'),
(1467, NULL, 22, 172, 'en', 1, 1, 1, '2022-05-19 09:54:33', '2022-05-19 09:54:33'),
(1468, NULL, 24, 172, 'en', 1, 1, 1, '2022-05-19 09:54:33', '2022-05-19 09:54:33'),
(1469, 18, NULL, 173, 'en', 1, 1, 1, '2022-05-19 09:59:09', '2022-05-19 09:59:09'),
(1470, 21, NULL, 173, 'en', 1, 1, 1, '2022-05-19 09:59:09', '2022-05-19 09:59:09'),
(1471, 23, NULL, 173, 'en', 1, 1, 1, '2022-05-19 09:59:09', '2022-05-19 09:59:09'),
(1472, 25, NULL, 173, 'en', 1, 1, 1, '2022-05-19 09:59:09', '2022-05-19 09:59:09'),
(1473, NULL, 12, 173, 'en', 1, 1, 1, '2022-05-19 09:59:09', '2022-05-19 09:59:09'),
(1474, NULL, 16, 173, 'en', 1, 1, 1, '2022-05-19 09:59:09', '2022-05-19 09:59:09'),
(1475, NULL, 22, 173, 'en', 1, 1, 1, '2022-05-19 09:59:09', '2022-05-19 09:59:09'),
(1476, NULL, 24, 173, 'en', 1, 1, 1, '2022-05-19 09:59:09', '2022-05-19 09:59:09'),
(1477, 18, NULL, 174, 'en', 1, 1, 1, '2022-05-19 10:04:41', '2022-05-19 10:04:41'),
(1478, NULL, 12, 174, 'en', 1, 1, 1, '2022-05-19 10:04:41', '2022-05-19 10:04:41'),
(1479, NULL, 16, 174, 'en', 1, 1, 1, '2022-05-19 10:04:41', '2022-05-19 10:04:41'),
(1480, NULL, 22, 174, 'en', 1, 1, 1, '2022-05-19 10:04:41', '2022-05-19 10:04:41'),
(1481, NULL, 24, 174, 'en', 1, 1, 1, '2022-05-19 10:04:41', '2022-05-19 10:04:41'),
(1482, 20, NULL, 175, 'en', 1, 1, 1, '2022-05-19 10:07:29', '2022-05-19 10:07:29'),
(1483, NULL, 16, 175, 'en', 1, 1, 1, '2022-05-19 10:07:29', '2022-05-19 10:07:29'),
(1484, NULL, 20, 175, 'en', 1, 1, 1, '2022-05-19 10:07:29', '2022-05-19 10:07:29'),
(1485, NULL, 22, 175, 'en', 1, 1, 1, '2022-05-19 10:07:29', '2022-05-19 10:07:29'),
(1486, NULL, 24, 175, 'en', 1, 1, 1, '2022-05-19 10:07:29', '2022-05-19 10:07:29'),
(1487, 18, NULL, 176, 'en', 1, 1, 1, '2022-05-19 10:11:43', '2022-05-19 10:11:43'),
(1488, 21, NULL, 176, 'en', 1, 1, 1, '2022-05-19 10:11:43', '2022-05-19 10:11:43'),
(1489, 23, NULL, 176, 'en', 1, 1, 1, '2022-05-19 10:11:43', '2022-05-19 10:11:43'),
(1490, 25, NULL, 176, 'en', 1, 1, 1, '2022-05-19 10:11:43', '2022-05-19 10:11:43'),
(1491, NULL, 12, 176, 'en', 1, 1, 1, '2022-05-19 10:11:43', '2022-05-19 10:11:43'),
(1492, NULL, 13, 176, 'en', 1, 1, 1, '2022-05-19 10:11:43', '2022-05-19 10:11:43'),
(1493, NULL, 16, 176, 'en', 1, 1, 1, '2022-05-19 10:11:43', '2022-05-19 10:11:43'),
(1494, NULL, 22, 176, 'en', 1, 1, 1, '2022-05-19 10:11:43', '2022-05-19 10:11:43'),
(1495, NULL, 24, 176, 'en', 1, 1, 1, '2022-05-19 10:11:43', '2022-05-19 10:11:43'),
(1496, 21, NULL, 108, 'en', 1, 1, 1, '2022-05-29 07:29:31', '2022-05-29 07:29:31'),
(1497, 23, NULL, 108, 'en', 1, 1, 1, '2022-05-29 07:29:31', '2022-05-29 07:29:31'),
(1498, 25, NULL, 108, 'en', 1, 1, 1, '2022-05-29 07:29:31', '2022-05-29 07:29:31'),
(1499, NULL, 16, 108, 'en', 1, 1, 1, '2022-05-29 07:29:31', '2022-05-29 07:29:31'),
(1500, NULL, 22, 108, 'en', 1, 1, 1, '2022-05-29 07:29:31', '2022-05-29 07:29:31'),
(1501, NULL, 24, 108, 'en', 1, 1, 1, '2022-05-29 07:29:31', '2022-05-29 07:29:31'),
(1502, 15, NULL, 107, 'en', 1, 1, 1, '2022-05-29 07:33:03', '2022-05-29 07:33:03'),
(1503, 27, NULL, 107, 'en', 1, 1, 1, '2022-05-29 07:33:03', '2022-05-29 07:33:03'),
(1504, 31, NULL, 107, 'en', 1, 1, 1, '2022-05-29 07:33:03', '2022-05-29 07:33:03'),
(1505, 17, NULL, 107, 'en', 1, 1, 1, '2022-05-29 07:33:03', '2022-05-29 07:33:03'),
(1506, 18, NULL, 107, 'en', 1, 1, 1, '2022-05-29 07:33:03', '2022-05-29 07:33:03'),
(1507, 21, NULL, 107, 'en', 1, 1, 1, '2022-05-29 07:33:03', '2022-05-29 07:33:03'),
(1508, 23, NULL, 107, 'en', 1, 1, 1, '2022-05-29 07:33:03', '2022-05-29 07:33:03'),
(1509, 25, NULL, 107, 'en', 1, 1, 1, '2022-05-29 07:33:03', '2022-05-29 07:33:03'),
(1510, NULL, 16, 107, 'en', 1, 1, 1, '2022-05-29 07:33:03', '2022-05-29 07:33:03'),
(1511, NULL, 22, 107, 'en', 1, 1, 1, '2022-05-29 07:33:03', '2022-05-29 07:33:03'),
(1512, NULL, 24, 107, 'en', 1, 1, 1, '2022-05-29 07:33:03', '2022-05-29 07:33:03'),
(1513, 18, NULL, 113, 'en', 1, 1, 1, '2022-05-29 07:42:37', '2022-05-29 07:42:37'),
(1514, 21, NULL, 113, 'en', 1, 1, 1, '2022-05-29 07:42:37', '2022-05-29 07:42:37'),
(1515, 23, NULL, 113, 'en', 1, 1, 1, '2022-05-29 07:42:37', '2022-05-29 07:42:37'),
(1516, 25, NULL, 113, 'en', 1, 1, 1, '2022-05-29 07:42:37', '2022-05-29 07:42:37'),
(1517, NULL, 16, 113, 'en', 1, 1, 1, '2022-05-29 07:42:37', '2022-05-29 07:42:37'),
(1518, NULL, 22, 113, 'en', 1, 1, 1, '2022-05-29 07:42:37', '2022-05-29 07:42:37'),
(1519, NULL, 24, 113, 'en', 1, 1, 1, '2022-05-29 07:42:37', '2022-05-29 07:42:37'),
(1531, 21, NULL, 106, 'en', 1, 1, 1, '2022-06-07 09:26:37', '2022-06-07 09:26:37'),
(1532, 23, NULL, 106, 'en', 1, 1, 1, '2022-06-07 09:26:37', '2022-06-07 09:26:37'),
(1533, 25, NULL, 106, 'en', 1, 1, 1, '2022-06-07 09:26:37', '2022-06-07 09:26:37'),
(1534, NULL, 12, 106, 'en', 1, 1, 1, '2022-06-07 09:26:37', '2022-06-07 09:26:37'),
(1535, NULL, 16, 106, 'en', 1, 1, 1, '2022-06-07 09:26:37', '2022-06-07 09:26:37'),
(1536, NULL, 22, 106, 'en', 1, 1, 1, '2022-06-07 09:26:37', '2022-06-07 09:26:37'),
(1537, NULL, 24, 106, 'en', 1, 1, 1, '2022-06-07 09:26:37', '2022-06-07 09:26:37'),
(1543, 15, NULL, 178, 'en', 1, 1, 1, '2022-06-13 06:41:23', '2022-06-13 06:41:23'),
(1544, 26, NULL, 178, 'en', 1, 1, 1, '2022-06-13 06:41:23', '2022-06-13 06:41:23'),
(1545, 17, NULL, 178, 'en', 1, 1, 1, '2022-06-13 06:41:23', '2022-06-13 06:41:23'),
(1546, NULL, 16, 178, 'en', 1, 1, 1, '2022-06-13 06:41:23', '2022-06-13 06:41:23'),
(1547, NULL, 22, 178, 'en', 1, 1, 1, '2022-06-13 06:41:23', '2022-06-13 06:41:23'),
(1548, NULL, 24, 178, 'en', 1, 1, 1, '2022-06-13 06:41:23', '2022-06-13 06:41:23'),
(1549, 31, NULL, 179, 'en', 1, 1, 1, '2022-06-13 06:44:02', '2022-06-13 06:44:02'),
(1550, NULL, 12, 179, 'en', 1, 1, 1, '2022-06-13 06:44:02', '2022-06-13 06:44:02'),
(1554, 31, NULL, 180, 'en', 1, 1, 1, '2022-06-13 06:50:20', '2022-06-13 06:50:20'),
(1555, NULL, 30, 180, 'en', 1, 1, 1, '2022-06-13 06:50:20', '2022-06-13 06:50:20'),
(1556, NULL, 32, 180, 'en', 1, 1, 1, '2022-06-13 06:50:20', '2022-06-13 06:50:20'),
(1557, 31, NULL, 181, 'en', 1, 1, 1, '2022-06-13 07:51:16', '2022-06-13 07:51:16'),
(1558, NULL, 16, 181, 'en', 1, 1, 1, '2022-06-13 07:51:16', '2022-06-13 07:51:16'),
(1559, NULL, 22, 181, 'en', 1, 1, 1, '2022-06-13 07:51:16', '2022-06-13 07:51:16'),
(1560, NULL, 24, 181, 'en', 1, 1, 1, '2022-06-13 07:51:16', '2022-06-13 07:51:16'),
(1561, 31, NULL, 182, 'en', 1, 1, 1, '2022-06-13 07:53:20', '2022-06-13 07:53:20'),
(1562, NULL, 16, 182, 'en', 1, 1, 1, '2022-06-13 07:53:20', '2022-06-13 07:53:20'),
(1563, NULL, 22, 182, 'en', 1, 1, 1, '2022-06-13 07:53:20', '2022-06-13 07:53:20'),
(1564, NULL, 24, 182, 'en', 1, 1, 1, '2022-06-13 07:53:20', '2022-06-13 07:53:20'),
(1565, 32, NULL, 183, 'en', 1, 1, 1, '2022-06-13 07:56:57', '2022-06-13 07:56:57'),
(1566, NULL, 16, 183, 'en', 1, 1, 1, '2022-06-13 07:56:57', '2022-06-13 07:56:57'),
(1567, NULL, 22, 183, 'en', 1, 1, 1, '2022-06-13 07:56:57', '2022-06-13 07:56:57'),
(1568, NULL, 24, 183, 'en', 1, 1, 1, '2022-06-13 07:56:57', '2022-06-13 07:56:57'),
(1569, 29, NULL, 184, 'en', 1, 1, 1, '2022-06-14 05:51:00', '2022-06-14 05:51:00'),
(1570, 31, NULL, 184, 'en', 1, 1, 1, '2022-06-14 05:51:00', '2022-06-14 05:51:00'),
(1571, NULL, 16, 184, 'en', 1, 1, 1, '2022-06-14 05:51:00', '2022-06-14 05:51:00'),
(1572, NULL, 20, 184, 'en', 1, 1, 1, '2022-06-14 05:51:00', '2022-06-14 05:51:00'),
(1573, NULL, 22, 184, 'en', 1, 1, 1, '2022-06-14 05:51:00', '2022-06-14 05:51:00'),
(1574, NULL, 24, 184, 'en', 1, 1, 1, '2022-06-14 05:51:00', '2022-06-14 05:51:00'),
(1575, 27, NULL, 185, 'en', 1, 1, 1, '2022-06-14 05:53:35', '2022-06-14 05:53:35'),
(1576, NULL, 12, 185, 'en', 1, 1, 1, '2022-06-14 05:53:35', '2022-06-14 05:53:35'),
(1577, NULL, 16, 185, 'en', 1, 1, 1, '2022-06-14 05:53:35', '2022-06-14 05:53:35'),
(1578, NULL, 22, 185, 'en', 1, 1, 1, '2022-06-14 05:53:35', '2022-06-14 05:53:35'),
(1579, NULL, 24, 185, 'en', 1, 1, 1, '2022-06-14 05:53:35', '2022-06-14 05:53:35'),
(1580, 27, NULL, 186, 'en', 1, 1, 1, '2022-06-14 05:56:21', '2022-06-14 05:56:21'),
(1581, NULL, 12, 186, 'en', 1, 1, 1, '2022-06-14 05:56:21', '2022-06-14 05:56:21'),
(1582, NULL, 20, 186, 'en', 1, 1, 1, '2022-06-14 05:56:21', '2022-06-14 05:56:21'),
(1583, 29, NULL, 187, 'en', 1, 1, 1, '2022-06-14 06:02:35', '2022-06-14 06:02:35'),
(1584, 30, NULL, 187, 'en', 1, 1, 1, '2022-06-14 06:02:35', '2022-06-14 06:02:35'),
(1585, NULL, 12, 187, 'en', 1, 1, 1, '2022-06-14 06:02:35', '2022-06-14 06:02:35'),
(1586, NULL, 13, 187, 'en', 1, 1, 1, '2022-06-14 06:02:35', '2022-06-14 06:02:35'),
(1587, NULL, 16, 187, 'en', 1, 1, 1, '2022-06-14 06:02:35', '2022-06-14 06:02:35'),
(1588, NULL, 22, 187, 'en', 1, 1, 1, '2022-06-14 06:02:35', '2022-06-14 06:02:35'),
(1589, NULL, 24, 187, 'en', 1, 1, 1, '2022-06-14 06:02:35', '2022-06-14 06:02:35'),
(1590, 29, NULL, 188, 'en', 1, 1, 1, '2022-06-14 06:07:24', '2022-06-14 06:07:24'),
(1591, 30, NULL, 188, 'en', 1, 1, 1, '2022-06-14 06:07:24', '2022-06-14 06:07:24'),
(1592, NULL, 12, 188, 'en', 1, 1, 1, '2022-06-14 06:07:24', '2022-06-14 06:07:24'),
(1593, NULL, 13, 188, 'en', 1, 1, 1, '2022-06-14 06:07:24', '2022-06-14 06:07:24'),
(1594, NULL, 16, 188, 'en', 1, 1, 1, '2022-06-14 06:07:24', '2022-06-14 06:07:24'),
(1595, NULL, 22, 188, 'en', 1, 1, 1, '2022-06-14 06:07:24', '2022-06-14 06:07:24'),
(1596, NULL, 24, 188, 'en', 1, 1, 1, '2022-06-14 06:07:24', '2022-06-14 06:07:24'),
(1597, 29, NULL, 189, 'en', 1, 1, 1, '2022-06-14 06:14:25', '2022-06-14 06:14:25'),
(1598, NULL, 12, 189, 'en', 1, 1, 1, '2022-06-14 06:14:25', '2022-06-14 06:14:25'),
(1599, NULL, 13, 189, 'en', 1, 1, 1, '2022-06-14 06:14:25', '2022-06-14 06:14:25'),
(1600, NULL, 16, 189, 'en', 1, 1, 1, '2022-06-14 06:14:25', '2022-06-14 06:14:25'),
(1601, NULL, 22, 189, 'en', 1, 1, 1, '2022-06-14 06:14:25', '2022-06-14 06:14:25'),
(1602, NULL, 24, 189, 'en', 1, 1, 1, '2022-06-14 06:14:25', '2022-06-14 06:14:25'),
(1603, 31, NULL, 19, 'en', 1, 1, 1, '2022-06-26 04:04:36', '2022-06-26 04:04:36'),
(1604, NULL, 12, 19, 'en', 1, 1, 1, '2022-06-26 04:04:36', '2022-06-26 04:04:36'),
(1605, NULL, 16, 19, 'en', 1, 1, 1, '2022-06-26 04:04:36', '2022-06-26 04:04:36'),
(1606, NULL, 22, 19, 'en', 1, 1, 1, '2022-06-26 04:04:36', '2022-06-26 04:04:36'),
(1607, NULL, 24, 19, 'en', 1, 1, 1, '2022-06-26 04:04:36', '2022-06-26 04:04:36'),
(1612, 29, NULL, 17, 'en', 1, 1, 1, '2022-06-26 04:08:37', '2022-06-26 04:08:37'),
(1613, NULL, 16, 17, 'en', 1, 1, 1, '2022-06-26 04:08:37', '2022-06-26 04:08:37'),
(1614, NULL, 22, 17, 'en', 1, 1, 1, '2022-06-26 04:08:37', '2022-06-26 04:08:37'),
(1615, NULL, 23, 17, 'en', 1, 1, 1, '2022-06-26 04:08:37', '2022-06-26 04:08:37'),
(1616, 31, NULL, 177, 'en', 1, 1, 1, '2022-07-03 06:43:33', '2022-07-03 06:43:33'),
(1617, NULL, 18, 177, 'en', 1, 1, 1, '2022-07-03 06:43:33', '2022-07-03 06:43:33'),
(1618, NULL, 21, 177, 'en', 1, 1, 1, '2022-07-03 06:43:33', '2022-07-03 06:43:33'),
(1619, NULL, 23, 177, 'en', 1, 1, 1, '2022-07-03 06:43:33', '2022-07-03 06:43:33'),
(1620, NULL, 25, 177, 'en', 1, 1, 1, '2022-07-03 06:43:33', '2022-07-03 06:43:33'),
(1621, 20, NULL, 6, 'en', 1, 1, 1, '2022-07-03 07:29:30', '2022-07-03 07:29:30'),
(1622, NULL, 12, 6, 'en', 1, 1, 1, '2022-07-03 07:29:30', '2022-07-03 07:29:30'),
(1623, NULL, 16, 6, 'en', 1, 1, 1, '2022-07-03 07:29:30', '2022-07-03 07:29:30'),
(1624, NULL, 22, 6, 'en', 1, 1, 1, '2022-07-03 07:29:30', '2022-07-03 07:29:30'),
(1625, NULL, 24, 6, 'en', 1, 1, 1, '2022-07-03 07:29:30', '2022-07-03 07:29:30'),
(1626, 28, NULL, 39, 'en', 1, 1, 1, '2022-07-03 07:44:03', '2022-07-03 07:44:03'),
(1627, 31, NULL, 39, 'en', 1, 1, 1, '2022-07-03 07:44:03', '2022-07-03 07:44:03'),
(1628, 21, NULL, 39, 'en', 1, 1, 1, '2022-07-03 07:44:03', '2022-07-03 07:44:03'),
(1629, 23, NULL, 39, 'en', 1, 1, 1, '2022-07-03 07:44:03', '2022-07-03 07:44:03'),
(1630, 25, NULL, 39, 'en', 1, 1, 1, '2022-07-03 07:44:03', '2022-07-03 07:44:03'),
(1631, NULL, 12, 39, 'en', 1, 1, 1, '2022-07-03 07:44:03', '2022-07-03 07:44:03'),
(1632, NULL, 16, 39, 'en', 1, 1, 1, '2022-07-03 07:44:03', '2022-07-03 07:44:03'),
(1633, NULL, 22, 39, 'en', 1, 1, 1, '2022-07-03 07:44:03', '2022-07-03 07:44:03'),
(1634, NULL, 24, 39, 'en', 1, 1, 1, '2022-07-03 07:44:03', '2022-07-03 07:44:03'),
(1635, 28, NULL, 33, 'en', 1, 1, 1, '2022-07-03 08:17:45', '2022-07-03 08:17:45'),
(1636, 31, NULL, 33, 'en', 1, 1, 1, '2022-07-03 08:17:45', '2022-07-03 08:17:45'),
(1637, NULL, 21, 33, 'en', 1, 1, 1, '2022-07-03 08:17:45', '2022-07-03 08:17:45'),
(1638, NULL, 23, 33, 'en', 1, 1, 1, '2022-07-03 08:17:45', '2022-07-03 08:17:45'),
(1639, NULL, 25, 33, 'en', 1, 1, 1, '2022-07-03 08:17:45', '2022-07-03 08:17:45'),
(1646, 31, NULL, 10, 'en', 1, 1, 1, '2022-07-03 10:10:53', '2022-07-03 10:10:53'),
(1647, 17, NULL, 10, 'en', 1, 1, 1, '2022-07-03 10:10:53', '2022-07-03 10:10:53'),
(1648, 21, NULL, 10, 'en', 1, 1, 1, '2022-07-03 10:10:53', '2022-07-03 10:10:53'),
(1649, 23, NULL, 10, 'en', 1, 1, 1, '2022-07-03 10:10:53', '2022-07-03 10:10:53'),
(1650, NULL, 22, 10, 'en', 1, 1, 1, '2022-07-03 10:10:53', '2022-07-03 10:10:53'),
(1651, NULL, 24, 10, 'en', 1, 1, 1, '2022-07-03 10:10:53', '2022-07-03 10:10:53'),
(1668, 18, NULL, 16, 'en', 1, 1, 1, '2022-07-04 04:13:06', '2022-07-04 04:13:06'),
(1669, 21, NULL, 16, 'en', 1, 1, 1, '2022-07-04 04:13:06', '2022-07-04 04:13:06'),
(1670, 23, NULL, 16, 'en', 1, 1, 1, '2022-07-04 04:13:06', '2022-07-04 04:13:06'),
(1671, 25, NULL, 16, 'en', 1, 1, 1, '2022-07-04 04:13:06', '2022-07-04 04:13:06'),
(1672, NULL, 16, 16, 'en', 1, 1, 1, '2022-07-04 04:13:06', '2022-07-04 04:13:06'),
(1673, NULL, 20, 16, 'en', 1, 1, 1, '2022-07-04 04:13:06', '2022-07-04 04:13:06'),
(1674, NULL, 22, 16, 'en', 1, 1, 1, '2022-07-04 04:13:06', '2022-07-04 04:13:06'),
(1675, NULL, 24, 16, 'en', 1, 1, 1, '2022-07-04 04:13:06', '2022-07-04 04:13:06'),
(1676, 31, NULL, 21, 'en', 1, 1, 1, '2022-07-04 05:34:02', '2022-07-04 05:34:02'),
(1677, 21, NULL, 21, 'en', 1, 1, 1, '2022-07-04 05:34:02', '2022-07-04 05:34:02'),
(1678, 23, NULL, 21, 'en', 1, 1, 1, '2022-07-04 05:34:02', '2022-07-04 05:34:02'),
(1679, 25, NULL, 21, 'en', 1, 1, 1, '2022-07-04 05:34:02', '2022-07-04 05:34:02'),
(1680, NULL, 12, 21, 'en', 1, 1, 1, '2022-07-04 05:34:02', '2022-07-04 05:34:02'),
(1681, NULL, 16, 21, 'en', 1, 1, 1, '2022-07-04 05:34:02', '2022-07-04 05:34:02'),
(1682, NULL, 22, 21, 'en', 1, 1, 1, '2022-07-04 05:34:02', '2022-07-04 05:34:02'),
(1683, NULL, 24, 21, 'en', 1, 1, 1, '2022-07-04 05:34:02', '2022-07-04 05:34:02'),
(1696, 18, NULL, 40, 'en', 1, 1, 1, '2022-07-06 05:24:57', '2022-07-06 05:24:57'),
(1697, 20, NULL, 40, 'en', 1, 1, 1, '2022-07-06 05:24:57', '2022-07-06 05:24:57'),
(1698, NULL, 12, 40, 'en', 1, 1, 1, '2022-07-06 05:24:57', '2022-07-06 05:24:57'),
(1699, NULL, 22, 40, 'en', 1, 1, 1, '2022-07-06 05:24:57', '2022-07-06 05:24:57'),
(1700, NULL, 24, 40, 'en', 1, 1, 1, '2022-07-06 05:24:57', '2022-07-06 05:24:57'),
(1701, 31, NULL, 12, 'en', 1, 1, 1, '2022-07-06 05:26:24', '2022-07-06 05:26:24'),
(1702, 17, NULL, 12, 'en', 1, 1, 1, '2022-07-06 05:26:24', '2022-07-06 05:26:24'),
(1703, 18, NULL, 12, 'en', 1, 1, 1, '2022-07-06 05:26:24', '2022-07-06 05:26:24'),
(1704, 19, NULL, 12, 'en', 1, 1, 1, '2022-07-06 05:26:24', '2022-07-06 05:26:24'),
(1705, 21, NULL, 12, 'en', 1, 1, 1, '2022-07-06 05:26:24', '2022-07-06 05:26:24'),
(1706, 23, NULL, 12, 'en', 1, 1, 1, '2022-07-06 05:26:24', '2022-07-06 05:26:24'),
(1707, 25, NULL, 12, 'en', 1, 1, 1, '2022-07-06 05:26:24', '2022-07-06 05:26:24'),
(1708, NULL, 16, 12, 'en', 1, 1, 1, '2022-07-06 05:26:24', '2022-07-06 05:26:24'),
(1709, NULL, 22, 12, 'en', 1, 1, 1, '2022-07-06 05:26:24', '2022-07-06 05:26:24'),
(1710, NULL, 24, 12, 'en', 1, 1, 1, '2022-07-06 05:26:24', '2022-07-06 05:26:24'),
(1711, 31, NULL, 36, 'en', 1, 1, 1, '2022-07-06 05:42:23', '2022-07-06 05:42:23'),
(1712, NULL, 16, 36, 'en', 1, 1, 1, '2022-07-06 05:42:23', '2022-07-06 05:42:23'),
(1713, NULL, 21, 36, 'en', 1, 1, 1, '2022-07-06 05:42:23', '2022-07-06 05:42:23'),
(1714, NULL, 22, 36, 'en', 1, 1, 1, '2022-07-06 05:42:23', '2022-07-06 05:42:23'),
(1715, NULL, 23, 36, 'en', 1, 1, 1, '2022-07-06 05:42:23', '2022-07-06 05:42:23'),
(1716, NULL, 24, 36, 'en', 1, 1, 1, '2022-07-06 05:42:23', '2022-07-06 05:42:23'),
(1717, NULL, 25, 36, 'en', 1, 1, 1, '2022-07-06 05:42:23', '2022-07-06 05:42:23'),
(1718, 31, NULL, 63, 'en', 1, 1, 1, '2022-07-06 05:47:44', '2022-07-06 05:47:44'),
(1719, 21, NULL, 63, 'en', 1, 1, 1, '2022-07-06 05:47:44', '2022-07-06 05:47:44'),
(1720, 23, NULL, 63, 'en', 1, 1, 1, '2022-07-06 05:47:44', '2022-07-06 05:47:44'),
(1721, 25, NULL, 63, 'en', 1, 1, 1, '2022-07-06 05:47:44', '2022-07-06 05:47:44'),
(1722, NULL, 21, 63, 'en', 1, 1, 1, '2022-07-06 05:47:44', '2022-07-06 05:47:44'),
(1723, NULL, 23, 63, 'en', 1, 1, 1, '2022-07-06 05:47:44', '2022-07-06 05:47:44'),
(1724, NULL, 25, 63, 'en', 1, 1, 1, '2022-07-06 05:47:44', '2022-07-06 05:47:44'),
(1725, 23, NULL, 123, 'en', 1, 1, 1, '2022-07-06 05:50:25', '2022-07-06 05:50:25'),
(1726, 25, NULL, 123, 'en', 1, 1, 1, '2022-07-06 05:50:25', '2022-07-06 05:50:25'),
(1727, NULL, 16, 123, 'en', 1, 1, 1, '2022-07-06 05:50:25', '2022-07-06 05:50:25'),
(1728, NULL, 24, 123, 'en', 1, 1, 1, '2022-07-06 05:50:25', '2022-07-06 05:50:25'),
(1729, 21, NULL, 105, 'en', 1, 1, 1, '2022-07-06 08:23:02', '2022-07-06 08:23:02'),
(1730, 23, NULL, 105, 'en', 1, 1, 1, '2022-07-06 08:23:02', '2022-07-06 08:23:02'),
(1731, 25, NULL, 105, 'en', 1, 1, 1, '2022-07-06 08:23:02', '2022-07-06 08:23:02'),
(1732, NULL, 16, 105, 'en', 1, 1, 1, '2022-07-06 08:23:02', '2022-07-06 08:23:02'),
(1733, NULL, 22, 105, 'en', 1, 1, 1, '2022-07-06 08:23:02', '2022-07-06 08:23:02'),
(1734, NULL, 24, 105, 'en', 1, 1, 1, '2022-07-06 08:23:02', '2022-07-06 08:23:02'),
(1735, NULL, 12, 136, 'en', 1, 1, 1, '2022-07-06 08:36:07', '2022-07-06 08:36:07'),
(1736, NULL, 16, 136, 'en', 1, 1, 1, '2022-07-06 08:36:07', '2022-07-06 08:36:07'),
(1737, NULL, 22, 136, 'en', 1, 1, 1, '2022-07-06 08:36:07', '2022-07-06 08:36:07'),
(1738, NULL, 24, 136, 'en', 1, 1, 1, '2022-07-06 08:36:07', '2022-07-06 08:36:07'),
(1739, 15, NULL, 146, 'en', 1, 1, 1, '2022-07-06 08:49:33', '2022-07-06 08:49:33'),
(1740, 31, NULL, 146, 'en', 1, 1, 1, '2022-07-06 08:49:33', '2022-07-06 08:49:33'),
(1741, 18, NULL, 146, 'en', 1, 1, 1, '2022-07-06 08:49:33', '2022-07-06 08:49:33'),
(1742, 21, NULL, 146, 'en', 1, 1, 1, '2022-07-06 08:49:33', '2022-07-06 08:49:33'),
(1743, 23, NULL, 146, 'en', 1, 1, 1, '2022-07-06 08:49:33', '2022-07-06 08:49:33'),
(1744, 25, NULL, 146, 'en', 1, 1, 1, '2022-07-06 08:49:33', '2022-07-06 08:49:33'),
(1745, NULL, 12, 146, 'en', 1, 1, 1, '2022-07-06 08:49:33', '2022-07-06 08:49:33'),
(1746, 18, NULL, 167, 'en', 1, 1, 1, '2022-07-06 09:01:57', '2022-07-06 09:01:57'),
(1747, NULL, 16, 167, 'en', 1, 1, 1, '2022-07-06 09:01:57', '2022-07-06 09:01:57'),
(1748, NULL, 20, 167, 'en', 1, 1, 1, '2022-07-06 09:01:57', '2022-07-06 09:01:57'),
(1749, NULL, 22, 167, 'en', 1, 1, 1, '2022-07-06 09:01:57', '2022-07-06 09:01:57'),
(1750, NULL, 24, 167, 'en', 1, 1, 1, '2022-07-06 09:01:57', '2022-07-06 09:01:57'),
(1754, 31, NULL, 67, 'en', 1, 1, 1, '2022-07-07 10:13:42', '2022-07-07 10:13:42'),
(1755, NULL, 12, 67, 'en', 1, 1, 1, '2022-07-07 10:13:42', '2022-07-07 10:13:42'),
(1756, NULL, 20, 67, 'en', 1, 1, 1, '2022-07-07 10:13:42', '2022-07-07 10:13:42'),
(1849, 15, NULL, 190, 'en', 1, 1, 1, '2022-08-04 04:38:05', '2022-08-04 04:38:05'),
(1850, 26, NULL, 190, 'en', 1, 1, 1, '2022-08-04 04:38:05', '2022-08-04 04:38:05'),
(1851, NULL, 15, 190, 'en', 1, 1, 1, '2022-08-04 04:38:05', '2022-08-04 04:38:05'),
(1852, NULL, 26, 190, 'en', 1, 1, 1, '2022-08-04 04:38:05', '2022-08-04 04:38:05'),
(1867, 15, NULL, 191, 'en', 1, 1, 1, '2022-08-04 05:27:57', '2022-08-04 05:27:57'),
(1868, NULL, 15, 191, 'en', 1, 1, 1, '2022-08-04 05:27:57', '2022-08-04 05:27:57'),
(1869, 31, NULL, 9, 'en', 1, 1, 1, '2022-08-08 05:53:20', '2022-08-08 05:53:20'),
(1870, 17, NULL, 9, 'en', 1, 1, 1, '2022-08-08 05:53:20', '2022-08-08 05:53:20'),
(1871, 21, NULL, 9, 'en', 1, 1, 1, '2022-08-08 05:53:20', '2022-08-08 05:53:20'),
(1872, 23, NULL, 9, 'en', 1, 1, 1, '2022-08-08 05:53:20', '2022-08-08 05:53:20'),
(1873, NULL, 22, 9, 'en', 1, 1, 1, '2022-08-08 05:53:20', '2022-08-08 05:53:20'),
(1874, NULL, 24, 9, 'en', 1, 1, 1, '2022-08-08 05:53:20', '2022-08-08 05:53:20'),
(1875, 18, NULL, 20, 'en', 1, 1, 1, '2022-08-08 06:16:53', '2022-08-08 06:16:53'),
(1876, 21, NULL, 20, 'en', 1, 1, 1, '2022-08-08 06:16:53', '2022-08-08 06:16:53'),
(1877, 23, NULL, 20, 'en', 1, 1, 1, '2022-08-08 06:16:53', '2022-08-08 06:16:53'),
(1878, 25, NULL, 20, 'en', 1, 1, 1, '2022-08-08 06:16:53', '2022-08-08 06:16:53'),
(1879, NULL, 16, 20, 'en', 1, 1, 1, '2022-08-08 06:16:53', '2022-08-08 06:16:53'),
(1880, NULL, 22, 20, 'en', 1, 1, 1, '2022-08-08 06:16:53', '2022-08-08 06:16:53'),
(1881, NULL, 24, 20, 'en', 1, 1, 1, '2022-08-08 06:16:53', '2022-08-08 06:16:53'),
(1882, 21, NULL, 29, 'en', 1, 1, 1, '2022-08-08 08:15:43', '2022-08-08 08:15:43'),
(1883, 23, NULL, 29, 'en', 1, 1, 1, '2022-08-08 08:15:43', '2022-08-08 08:15:43'),
(1884, 25, NULL, 29, 'en', 1, 1, 1, '2022-08-08 08:15:43', '2022-08-08 08:15:43'),
(1885, NULL, 16, 29, 'en', 1, 1, 1, '2022-08-08 08:15:43', '2022-08-08 08:15:43'),
(1886, NULL, 22, 29, 'en', 1, 1, 1, '2022-08-08 08:15:43', '2022-08-08 08:15:43'),
(1887, NULL, 24, 29, 'en', 1, 1, 1, '2022-08-08 08:15:43', '2022-08-08 08:15:43'),
(1895, 31, NULL, 75, 'en', 1, 1, 1, '2022-08-08 09:00:48', '2022-08-08 09:00:48'),
(1896, NULL, 25, 75, 'en', 1, 1, 1, '2022-08-08 09:00:48', '2022-08-08 09:00:48'),
(1897, 28, NULL, 28, 'en', 1, 1, 1, '2022-08-08 10:16:11', '2022-08-08 10:16:11'),
(1898, 31, NULL, 28, 'en', 1, 1, 1, '2022-08-08 10:16:11', '2022-08-08 10:16:11'),
(1899, NULL, 21, 28, 'en', 1, 1, 1, '2022-08-08 10:16:11', '2022-08-08 10:16:11'),
(1900, NULL, 23, 28, 'en', 1, 1, 1, '2022-08-08 10:16:11', '2022-08-08 10:16:11'),
(1901, NULL, 25, 28, 'en', 1, 1, 1, '2022-08-08 10:16:11', '2022-08-08 10:16:11'),
(1902, 15, NULL, 87, 'en', 1, 1, 1, '2022-08-10 03:48:02', '2022-08-10 03:48:02'),
(1903, 30, NULL, 87, 'en', 1, 1, 1, '2022-08-10 03:48:02', '2022-08-10 03:48:02'),
(1904, 32, NULL, 87, 'en', 1, 1, 1, '2022-08-10 03:48:02', '2022-08-10 03:48:02'),
(1905, NULL, 12, 87, 'en', 1, 1, 1, '2022-08-10 03:48:02', '2022-08-10 03:48:02'),
(1906, NULL, 16, 87, 'en', 1, 1, 1, '2022-08-10 03:48:02', '2022-08-10 03:48:02'),
(1907, NULL, 20, 87, 'en', 1, 1, 1, '2022-08-10 03:48:02', '2022-08-10 03:48:02'),
(1908, NULL, 21, 87, 'en', 1, 1, 1, '2022-08-10 03:48:02', '2022-08-10 03:48:02'),
(1909, NULL, 22, 87, 'en', 1, 1, 1, '2022-08-10 03:48:02', '2022-08-10 03:48:02'),
(1910, NULL, 23, 87, 'en', 1, 1, 1, '2022-08-10 03:48:02', '2022-08-10 03:48:02'),
(1911, NULL, 24, 87, 'en', 1, 1, 1, '2022-08-10 03:48:02', '2022-08-10 03:48:02'),
(1912, NULL, 25, 87, 'en', 1, 1, 1, '2022-08-10 03:48:02', '2022-08-10 03:48:02'),
(1913, 17, NULL, 73, 'en', 1, 1, 1, '2022-08-10 03:56:52', '2022-08-10 03:56:52'),
(1914, 21, NULL, 73, 'en', 1, 1, 1, '2022-08-10 03:56:52', '2022-08-10 03:56:52'),
(1915, 23, NULL, 73, 'en', 1, 1, 1, '2022-08-10 03:56:52', '2022-08-10 03:56:52'),
(1916, 25, NULL, 73, 'en', 1, 1, 1, '2022-08-10 03:56:52', '2022-08-10 03:56:52'),
(1917, NULL, 16, 73, 'en', 1, 1, 1, '2022-08-10 03:56:52', '2022-08-10 03:56:52'),
(1918, NULL, 22, 73, 'en', 1, 1, 1, '2022-08-10 03:56:52', '2022-08-10 03:56:52'),
(1919, NULL, 24, 73, 'en', 1, 1, 1, '2022-08-10 03:56:52', '2022-08-10 03:56:52'),
(1920, 15, NULL, 154, 'en', 1, 1, 1, '2022-08-10 04:08:18', '2022-08-10 04:08:18'),
(1921, 26, NULL, 154, 'en', 1, 1, 1, '2022-08-10 04:08:18', '2022-08-10 04:08:18'),
(1922, 28, NULL, 154, 'en', 1, 1, 1, '2022-08-10 04:08:18', '2022-08-10 04:08:18'),
(1923, NULL, 12, 154, 'en', 1, 1, 1, '2022-08-10 04:08:18', '2022-08-10 04:08:18'),
(1924, NULL, 13, 154, 'en', 1, 1, 1, '2022-08-10 04:08:18', '2022-08-10 04:08:18'),
(1925, NULL, 16, 154, 'en', 1, 1, 1, '2022-08-10 04:08:18', '2022-08-10 04:08:18'),
(1926, NULL, 20, 154, 'en', 1, 1, 1, '2022-08-10 04:08:18', '2022-08-10 04:08:18'),
(1927, NULL, 22, 154, 'en', 1, 1, 1, '2022-08-10 04:08:18', '2022-08-10 04:08:18'),
(1928, NULL, 24, 154, 'en', 1, 1, 1, '2022-08-10 04:08:18', '2022-08-10 04:08:18'),
(1929, 21, NULL, 94, 'en', 1, 1, 1, '2022-09-12 05:34:13', '2022-09-12 05:34:13'),
(1930, 23, NULL, 94, 'en', 1, 1, 1, '2022-09-12 05:34:13', '2022-09-12 05:34:13'),
(1931, 25, NULL, 94, 'en', 1, 1, 1, '2022-09-12 05:34:13', '2022-09-12 05:34:13'),
(1932, NULL, 16, 94, 'en', 1, 1, 1, '2022-09-12 05:34:13', '2022-09-12 05:34:13'),
(1933, NULL, 22, 94, 'en', 1, 1, 1, '2022-09-12 05:34:13', '2022-09-12 05:34:13'),
(1934, NULL, 24, 94, 'en', 1, 1, 1, '2022-09-12 05:34:13', '2022-09-12 05:34:13'),
(1935, 29, NULL, 98, 'en', 1, 1, 1, '2022-09-12 05:36:42', '2022-09-12 05:36:42'),
(1936, 17, NULL, 98, 'en', 1, 1, 1, '2022-09-12 05:36:42', '2022-09-12 05:36:42'),
(1937, 21, NULL, 98, 'en', 1, 1, 1, '2022-09-12 05:36:42', '2022-09-12 05:36:42'),
(1938, 23, NULL, 98, 'en', 1, 1, 1, '2022-09-12 05:36:42', '2022-09-12 05:36:42'),
(1939, 25, NULL, 98, 'en', 1, 1, 1, '2022-09-12 05:36:42', '2022-09-12 05:36:42'),
(1940, NULL, 16, 98, 'en', 1, 1, 1, '2022-09-12 05:36:42', '2022-09-12 05:36:42'),
(1941, NULL, 22, 98, 'en', 1, 1, 1, '2022-09-12 05:36:42', '2022-09-12 05:36:42'),
(1942, NULL, 24, 98, 'en', 1, 1, 1, '2022-09-12 05:36:42', '2022-09-12 05:36:42'),
(1943, 20, NULL, 116, 'en', 1, 1, 1, '2022-09-12 05:38:30', '2022-09-12 05:38:30'),
(1944, NULL, 21, 116, 'en', 1, 1, 1, '2022-09-12 05:38:30', '2022-09-12 05:38:30'),
(1945, NULL, 23, 116, 'en', 1, 1, 1, '2022-09-12 05:38:30', '2022-09-12 05:38:30'),
(1946, NULL, 25, 116, 'en', 1, 1, 1, '2022-09-12 05:38:30', '2022-09-12 05:38:30'),
(1947, 28, NULL, 111, 'en', 1, 1, 1, '2022-09-12 05:39:30', '2022-09-12 05:39:30'),
(1948, NULL, 21, 111, 'en', 1, 1, 1, '2022-09-12 05:39:30', '2022-09-12 05:39:30'),
(1949, NULL, 23, 111, 'en', 1, 1, 1, '2022-09-12 05:39:30', '2022-09-12 05:39:30'),
(1950, NULL, 25, 111, 'en', 1, 1, 1, '2022-09-12 05:39:30', '2022-09-12 05:39:30'),
(1951, 27, NULL, 126, 'en', 1, 1, 1, '2022-09-12 05:40:47', '2022-09-12 05:40:47'),
(1952, 18, NULL, 126, 'en', 1, 1, 1, '2022-09-12 05:40:47', '2022-09-12 05:40:47'),
(1953, 21, NULL, 126, 'en', 1, 1, 1, '2022-09-12 05:40:47', '2022-09-12 05:40:47'),
(1954, 23, NULL, 126, 'en', 1, 1, 1, '2022-09-12 05:40:47', '2022-09-12 05:40:47'),
(1955, 25, NULL, 126, 'en', 1, 1, 1, '2022-09-12 05:40:47', '2022-09-12 05:40:47'),
(1956, NULL, 16, 126, 'en', 1, 1, 1, '2022-09-12 05:40:47', '2022-09-12 05:40:47'),
(1957, NULL, 22, 126, 'en', 1, 1, 1, '2022-09-12 05:40:47', '2022-09-12 05:40:47'),
(1958, NULL, 24, 126, 'en', 1, 1, 1, '2022-09-12 05:40:47', '2022-09-12 05:40:47'),
(1963, 25, NULL, 109, 'en', 1, 1, 1, '2022-09-12 05:43:43', '2022-09-12 05:43:43'),
(1964, NULL, 16, 109, 'en', 1, 1, 1, '2022-09-12 05:43:43', '2022-09-12 05:43:43'),
(1965, 27, NULL, 127, 'en', 1, 1, 1, '2022-09-12 05:45:08', '2022-09-12 05:45:08'),
(1966, 31, NULL, 127, 'en', 1, 1, 1, '2022-09-12 05:45:08', '2022-09-12 05:45:08'),
(1967, NULL, 16, 127, 'en', 1, 1, 1, '2022-09-12 05:45:08', '2022-09-12 05:45:08'),
(1968, NULL, 24, 127, 'en', 1, 1, 1, '2022-09-12 05:45:08', '2022-09-12 05:45:08'),
(1969, 21, NULL, 91, 'en', 1, 1, 1, '2022-09-12 05:46:51', '2022-09-12 05:46:51'),
(1970, 23, NULL, 91, 'en', 1, 1, 1, '2022-09-12 05:46:51', '2022-09-12 05:46:51'),
(1971, 25, NULL, 91, 'en', 1, 1, 1, '2022-09-12 05:46:51', '2022-09-12 05:46:51'),
(1972, NULL, 16, 91, 'en', 1, 1, 1, '2022-09-12 05:46:51', '2022-09-12 05:46:51'),
(1973, NULL, 22, 91, 'en', 1, 1, 1, '2022-09-12 05:46:51', '2022-09-12 05:46:51'),
(1974, NULL, 24, 91, 'en', 1, 1, 1, '2022-09-12 05:46:51', '2022-09-12 05:46:51'),
(1983, 21, NULL, 129, 'en', 1, 1, 1, '2022-09-12 05:54:02', '2022-09-12 05:54:02'),
(1984, 23, NULL, 129, 'en', 1, 1, 1, '2022-09-12 05:54:02', '2022-09-12 05:54:02'),
(1985, NULL, 22, 129, 'en', 1, 1, 1, '2022-09-12 05:54:02', '2022-09-12 05:54:02'),
(1986, NULL, 24, 129, 'en', 1, 1, 1, '2022-09-12 05:54:02', '2022-09-12 05:54:02'),
(1987, 21, NULL, 133, 'en', 1, 1, 1, '2022-09-12 05:54:38', '2022-09-12 05:54:38'),
(1988, 23, NULL, 133, 'en', 1, 1, 1, '2022-09-12 05:54:38', '2022-09-12 05:54:38'),
(1989, 25, NULL, 133, 'en', 1, 1, 1, '2022-09-12 05:54:38', '2022-09-12 05:54:38'),
(1990, NULL, 16, 133, 'en', 1, 1, 1, '2022-09-12 05:54:38', '2022-09-12 05:54:38'),
(1991, NULL, 22, 133, 'en', 1, 1, 1, '2022-09-12 05:54:38', '2022-09-12 05:54:38'),
(1992, NULL, 24, 133, 'en', 1, 1, 1, '2022-09-12 05:54:38', '2022-09-12 05:54:38'),
(1993, 21, NULL, 130, 'en', 1, 1, 1, '2022-09-12 05:55:23', '2022-09-12 05:55:23'),
(1994, 23, NULL, 130, 'en', 1, 1, 1, '2022-09-12 05:55:23', '2022-09-12 05:55:23'),
(1995, NULL, 22, 130, 'en', 1, 1, 1, '2022-09-12 05:55:23', '2022-09-12 05:55:23'),
(1996, NULL, 24, 130, 'en', 1, 1, 1, '2022-09-12 05:55:23', '2022-09-12 05:55:23'),
(1997, 31, NULL, 101, 'en', 1, 1, 1, '2022-09-12 05:57:29', '2022-09-12 05:57:29'),
(1998, NULL, 21, 101, 'en', 1, 1, 1, '2022-09-12 05:57:29', '2022-09-12 05:57:29'),
(1999, NULL, 23, 101, 'en', 1, 1, 1, '2022-09-12 05:57:29', '2022-09-12 05:57:29'),
(2000, NULL, 25, 101, 'en', 1, 1, 1, '2022-09-12 05:57:29', '2022-09-12 05:57:29'),
(2003, 26, NULL, 192, 'es', 1, 1, 1, '2023-01-28 22:47:38', '2023-01-28 22:47:38'),
(2004, NULL, 26, 192, 'es', 1, 1, 1, '2023-01-28 22:47:38', '2023-01-28 22:47:38'),
(2007, 26, NULL, 193, 'es', 1, 1, 1, '2023-01-29 00:54:40', '2023-01-29 00:54:40'),
(2008, NULL, 26, 193, 'es', 1, 1, 1, '2023-01-29 00:54:40', '2023-01-29 00:54:40'),
(2011, 26, NULL, 194, 'es', 1, 1, 1, '2023-01-29 01:05:09', '2023-01-29 01:05:09'),
(2012, NULL, 26, 194, 'es', 1, 1, 1, '2023-01-29 01:05:09', '2023-01-29 01:05:09'),
(2015, 26, NULL, 195, 'es', 1, 1, 1, '2023-01-29 01:10:19', '2023-01-29 01:10:19'),
(2016, NULL, 26, 195, 'es', 1, 1, 1, '2023-01-29 01:10:19', '2023-01-29 01:10:19'),
(2017, 27, NULL, 196, 'es', 1, 1, 1, '2023-01-29 01:13:04', '2023-01-29 01:13:04'),
(2018, NULL, 27, 196, 'es', 1, 1, 1, '2023-01-29 01:13:04', '2023-01-29 01:13:04'),
(2019, 27, NULL, 197, 'es', 1, 1, 1, '2023-01-29 01:14:04', '2023-01-29 01:14:04'),
(2020, NULL, 27, 197, 'es', 1, 1, 1, '2023-01-29 01:14:04', '2023-01-29 01:14:04'),
(2021, 26, NULL, 198, 'es', 1, 1, 1, '2023-01-29 01:16:23', '2023-01-29 01:16:23'),
(2022, NULL, 27, 198, 'es', 1, 1, 1, '2023-01-29 01:16:23', '2023-01-29 01:16:23'),
(2025, 27, NULL, 199, 'es', 1, 1, 1, '2023-01-29 01:20:35', '2023-01-29 01:20:35'),
(2026, NULL, 26, 199, 'es', 1, 1, 1, '2023-01-29 01:20:35', '2023-01-29 01:20:35'),
(2027, 27, NULL, 200, 'es', 1, 1, 1, '2023-01-29 01:21:49', '2023-01-29 01:21:49'),
(2028, NULL, 27, 200, 'es', 1, 1, 1, '2023-01-29 01:21:49', '2023-01-29 01:21:49'),
(2029, 26, NULL, 201, 'es', 1, 1, 1, '2023-01-29 01:25:23', '2023-01-29 01:25:23'),
(2030, NULL, 27, 201, 'es', 1, 1, 1, '2023-01-29 01:25:23', '2023-01-29 01:25:23'),
(2031, 27, NULL, 202, 'es', 1, 1, 1, '2023-01-29 01:26:35', '2023-01-29 01:26:35'),
(2032, NULL, 26, 202, 'es', 1, 1, 1, '2023-01-29 01:26:35', '2023-01-29 01:26:35'),
(2033, 27, NULL, 203, 'es', 1, 1, 1, '2023-01-29 01:29:01', '2023-01-29 01:29:01'),
(2034, NULL, 26, 203, 'es', 1, 1, 1, '2023-01-29 01:29:01', '2023-01-29 01:29:01'),
(2039, 27, NULL, 204, 'es', 1, 1, 1, '2023-01-29 01:32:26', '2023-01-29 01:32:26'),
(2040, NULL, 26, 204, 'es', 1, 1, 1, '2023-01-29 01:32:26', '2023-01-29 01:32:26'),
(2041, 27, NULL, 205, 'es', 1, 1, 1, '2023-01-29 01:32:41', '2023-01-29 01:32:41'),
(2042, NULL, 27, 205, 'es', 1, 1, 1, '2023-01-29 01:32:41', '2023-01-29 01:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `tool_methodologies`
--

CREATE TABLE `tool_methodologies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `file_status` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tool_methodologies`
--

INSERT INTO `tool_methodologies` (`id`, `name`, `url`, `file_status`, `language`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(43, 'Index for Inclusion: a guide to school development led by inclusive values', 'https://xd.adobe.com/view/e1021893-277f-4a65-b322-f28d08faa48e-b451/screen/aee04c72-e503-4eff-97ce-2b9d0da8f908/specs/', 0, 'en', 1, 1, 1, '2022-03-08 05:05:35', '2022-03-08 05:05:35'),
(44, 'How Inclusive  is my School? A  School self-assessment', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B09894B87-84AD-45B7-BA67-21B022D0962F%7D&file=How%20inclusive%20is%20my%20school%20-%20a%20school%20self-assessment.docx&action=default&mobileredirect=true&cid=ffe38761-4ec2-4ad5-a442-004a2a2ea944', 0, 'en', 1, 1, 1, '2022-03-08 05:22:51', '2022-08-08 10:11:41'),
(45, 'Enrollment  and Absence  Monitoring  Systems.  Toolkit.', 'https://resourcecentre.savethechildren.net/document/enrollment-and-absence-monitoring-systems-toolkit/', 0, 'en', 1, 1, 1, '2022-03-08 05:23:42', '2022-03-08 05:23:42'),
(46, 'Tool #01  Identifying  children who  are out of  school or have  dropped out  (adapted)', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/AccessDenied.aspx?Source=https%3A%2F%2Fsavethechildren1%2Esharepoint%2Ecom%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2F%5Flayouts%2F15%2FDoc%2Easpx%3Fsourcedoc%3D%257BC984D2E2%2D1576%2D47A2%2DB3B7%2D543CB9C63743%257D%26file%3D%252301%2520TOOL%5FAccess%5FFINAL%2Edocx%26action%3Ddefault%26mobileredirect%3Dtrue%26cid%3D45728b63%2Dfb95%2D4c60%2Dad6d%2D504728752673&correlation=e5effa9f%2D90d8%2D3000%2D4d3b%2D18194720fcfd&Type=item&name=42ac5345%2Da33f%2D4910%2Da5e8%2D926416fb669c&listItemId=103486', 0, 'en', 1, 1, 1, '2022-03-08 05:24:28', '2022-03-08 05:24:28'),
(47, 'OPEN EMIS  FOR INCLUSIVE  EDUCATION  INDICATOR  DEVELOPMENT  FOR INCLUSIVE  EMIS. Final  Report for Save  the Children  Sweden.', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FEMIS%20JOINT%20CO%20FILE%2FSCS%20OOSC%20CWD%20EMIS%20Final%20Report%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FEMIS%20JOINT%20CO%20FILE', 0, 'en', 1, 1, 1, '2022-03-08 05:26:04', '2022-03-08 05:26:04'),
(48, 'EDUCATION IN  EMERGENCIES  IN SOUTH ASIA.  Reducing the  Risks Facing  Vulnerable  Children.', 'https://reliefweb.int/sites/reliefweb.int/files/resources/F8D29B0871704C44852576120065A845-Full_Report.pdf', 0, 'en', 1, 1, 1, '2022-03-08 05:43:41', '2022-03-08 05:43:41'),
(49, 'Inclusive  primary  school self-reflection tool', 'https://savethechildren1.sharepoint.com/:w:/s/ta_scit/EU29nMlI2hFOpYNe9u19X0gB3hHL-XUZxRGe51IXdVAMow?CID=bcec60cf-e03f-8817-499e-56d0c783fa93', 0, 'en', 1, 1, 1, '2022-03-08 05:44:27', '2022-03-08 05:44:27'),
(50, 'SCI Disability  Inclusion  Guideline for  Infrastructure', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B541D62AC-9751-4BCC-B0E1-31D72774F468%7D&file=C4%20-%20REFERENCE%20SCI%20Disability%20Inclusion%20Guidelines%20Infrastructure%20201214.docx&action=default&mobileredirect=true&DefaultItemOpen=1&cid=c274e24c-f643-457d-acee-a67719fe8343', 0, 'en', 1, 1, 1, '2022-03-08 05:45:17', '2022-03-08 05:45:17'),
(51, 'Digital  Accessibility  Toolkit', 'https://www.edu-links.org/sites/default/files/media/file/CBM-Digital-Accessibility-Toolkit.pdf', 0, 'en', 1, 1, 1, '2022-03-08 05:45:58', '2022-03-08 05:45:58'),
(52, 'SAFE BACK TO SCHOOL Guide for supporting  inclusive and equitable  learning for the most  marginalised children', 'https://savethechildren1.sharepoint.com/what/humanitarian/SCDocuments/Forms/AllItems1.aspx?siteid=%7BF3EB20AF%2DD017%2D4465%2D8CE0%2D05D210EBCB26%7D&webid=%7B908E3D61%2D58E2%2D4955%2D814E%2DDCEBC18FEA08%7D&uniqueid=%7BD5145B5C%2DA72C%2D4C35%2DBD48%2D516225E1D549%7D&id=%2Fwhat%2Fhumanitarian%2FSCDocuments%2FGlobal%20%2D%20COVID%2D19%2FGlobal%2FSafe%20Back%20to%20School%20%28SB2S%29%2FSB2S%20Technical%20Resources%2F4%20piece%20tools%20%28Attendance%20Tracking%2C%20Inclusion%20Guidance%2C%20Integrated%20Community%20Model%2C%20Situational%20Analysis%29%2FInclusion%20Guidance%2FSB2S%2DInclusive%2DGuidance%5FFINAL%2Epdf&parent=%2Fwhat%2Fhumanitarian%2FSCDocuments%2FGlobal%20%2D%20COVID%2D19%2FGlobal%2FSafe%20Back%20to%20School%20%28SB2S%29%2FSB2S%20Technical%20Resources%2F4%20piece%20tools%20%28Attendance%20Tracking%2C%20Inclusion%20Guidance%2C%20Integrated%20Community%20Model%2C%20Situational%20Analysis%29%2FInclusion%20Guidance', 0, 'en', 1, 1, 1, '2022-03-08 05:46:40', '2022-04-12 05:13:53'),
(53, 'Inclusive Distance Learning', 'https://savethechildren1.sharepoint.com/sites/TeamSitePortal/Education/COVID19%20Education%20Coordination/Forms/AllItems.aspx?id=%2Fsites%2FTeamSitePortal%2FEducation%2FCOVID19%20Education%20Coordination%2FSafe%20Back%20to%20School%20Task%20Team%2FPillar%201%20%2D%20Operational%20%26%20Technical%20Assistance%2FWorkplan%20specifics%2FSOW%2FInclusive%20and%20Equitable%20Access%20Guidance%2FInclusive%20Distance%20Learning%20Guidance%2Epdf&parent=%2Fsites%2FTeamSitePortal%2FEducation%2FCOVID19%20Education%20Coordination%2FSafe%20Back%20to%20School%20Task%20Team%2FPillar%201%20%2D%20Operational%20%26%20Technical%20Assistance%2FWorkplan%20specifics%2FSOW%2FInclusive%20and%20Equitable%20Access%20Guidance', 0, 'en', 1, 1, 1, '2022-03-08 05:47:30', '2022-03-08 05:47:30'),
(54, 'Practical recommendations for  equity analysis  in education', 'https://static1.squarespace.com/static/57aa9cce6b8f5b8163fdc9a3/t/591b19295016e11b18afc2e6/1494948140464/Practical+Recommendations+-+FINAL+%281%29.pdf', 0, 'en', 1, 1, 1, '2022-03-08 05:48:18', '2022-03-08 05:48:18'),
(55, 'Inclusive  Education  Sourcebook.  A sourcebook  for pre-service  teacher  educators  and practicing  teachers', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2F2020%20%2D%20Final%20Edited%20Inclusive%20Education%20Source%20Book%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources', 0, 'en', 1, 1, 1, '2022-03-08 05:49:07', '2022-03-08 05:49:07'),
(56, 'SAFE BACK TO  SCHOOL TI-P-SHEET: EDUCATION SPECIIFIC CASH  AND VOUCHER  ASSISTANCE  (CVA) WITH  RECOMMENDATIONS ON  ADAPTATIONS.', 'https://savethechildren1.sharepoint.com/what/humanitarian/SCDocuments/Forms/Technical%20Resources.aspx?id=/what/humanitarian/SCDocuments/Global%20-%20COVID-19/Global/Safe%20Back%20to%20School%20(SB2S)/SB2S%20Technical%20Resources/Safe%20Back%20to%20School%20-%20Tipsheet%20on%20Education-Specific%20CVA_January-2021.pdf&parent=/what/humanitarian/SCDocuments/Global%20-%20COVID-19/Global/Safe%20Back%20to%20School%20(SB2S)/SB2S%20Technical%20Resources&siteid=f3eb20af-d017-4465-8ce0-05d210ebcb26&webid=908e3d61-58e2-4955-814e-dcebc18fea08&uniqueid=46321f51-5b7f-4fde-8558-0e6b2520505d', 0, 'en', 1, 1, 1, '2022-03-08 05:51:19', '2022-03-08 05:51:19'),
(57, 'Quality Learning  Environment  Monitoring  Form –Basic  Education  (Primary School)  Learners  Questionnaire', 'https://savethechildren1.sharepoint.com/what/education/QLEProgrammeCatalogue/Pages/QLE-MEAL-resources.aspx#InplviewHash71e98545-b559-4c14-858f-8ab4d8d2f811=Paged%3DTRUE-p_QLE_x0020_MEAL_x0020_Category%3DBrochure-p_SortBehavior%3D0-p_Created%3D20160520%252006%253a38%253a15-p_ID%3D64-FolderCTID%3D0x012001-PageFirstRow%3D31-WebPartID%3D%7B71E98545--B559--4C14--85', 0, 'en', 1, 1, 1, '2022-03-08 05:52:32', '2022-03-08 05:52:32'),
(58, 'Safe Schools  Action Pack 2  – Safe Schools  Management', 'https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7BB6E0A7C2-FA58-435D-AA7F-0CB43377BBB5%7D&file=Safe%20Schools%20Action%20Pack%202.docx&action=default&mobileredirect=true&cid=78468c0f-6049-444c-90b8-81db4b0355a7', 0, 'en', 1, 1, 1, '2022-03-08 05:53:08', '2022-03-08 05:53:08'),
(59, 'Disability  cheat sheet', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?q=disability%20cheat%20sheet&id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2FDisability%20Cheat%20Sheet%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources&parentview=7', 0, 'en', 1, 1, 1, '2022-03-08 05:53:45', '2022-03-08 05:53:45'),
(60, 'SCHOOL CODE  OF CONDUCT  How to create a  positive learning  environment  TEACHER  TRAINING  MANUAL', 'https://resourcecentre.savethechildren.net/pdf/15102_rb_school_code_of_conduct_manual_lr2.pdf/', 0, 'en', 1, 1, 1, '2022-03-08 05:54:35', '2022-03-08 05:54:35'),
(61, 'Inclusive  classroom  strategies to  improve literacy  for learners with  disabilities', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B62D80260-62E1-4AB1-BBE5-569E3B5E19EC%7D&file=Inclusive%20classroom%20strategies%20to%20improve%20literacy%20for%20learners%20with%20disabilities.docx&action=default&mobileredirect=true&cid=1bfc99ca-9fbf-4aa9-85e3-0d79e2384a47', 0, 'en', 1, 1, 1, '2022-03-08 05:55:18', '2022-03-08 05:55:18'),
(62, 'Quality Learning  Environment  Monitoring  Form – Basic  Education  Teacher  Interview Guide', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B99A6327E-6848-4F16-BDA4-50EFD369DCE5%7D&file=QLE%20Assessment-%20Teachers%20interview%20guide.doc&action=default&mobileredirect=true&wdLOR=c6E888C9E-69A4-284E-B96A-6EEF7DF9992F&cid=24229b28-14bb-43ca-ba53-1283246dc77e', 0, 'en', 1, 1, 1, '2022-03-08 05:56:10', '2022-03-08 05:56:10'),
(63, 'Safe Schools  Action Pack  4 - Teacher  professional  development  modules', 'https://savethechildren1.sharepoint.com/what/child_protection/Pages/Action-Pack-4.aspx', 0, 'en', 1, 1, 1, '2022-03-08 05:56:59', '2022-03-08 05:56:59'),
(64, 'How To Celebrate Diversity In The Classroom And Empower Your Students', 'https://www.twinkl.it/blog/how-to-celebrate-diversity-in-the-classroom-and-empower-your-students', 0, 'en', 1, 1, 1, '2022-03-08 05:57:55', '2022-03-08 05:57:55'),
(65, 'Girls’ Education  Technical  Package', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B2A1213D9-8707-4384-A266-8D581E706F56%7D&file=Girls%27%20Education%20Technical%20Package%20-%20Final%20Oct%202020.docx&action=default&mobileredirect=true&cid=0efd8672-508d-4750-9a66-ec9931c9d507', 0, 'en', 1, 1, 1, '2022-03-08 06:05:04', '2022-03-08 06:05:04'),
(66, 'Assessing Access', 'https://www.learningforjustice.org/classroom-resources/lessons/assessing-access', 0, 'en', 1, 1, 1, '2022-03-08 06:05:46', '2022-03-08 06:05:46'),
(67, 'Quality Learning  Environment  Monitoring  Form for  Center-Based,  Community-Based, or  Work-based  ECCD Programs', 'https://www.php.net/manual/en/function.get-headers', 0, 'en', 1, 1, 1, '2022-03-08 06:07:20', '2022-03-08 06:07:20'),
(68, 'Safe School  Action Pack  4: Children’s  activities', 'https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7BC89B7477-2DB2-42A7-B24F-4BC0DAF536B4%7D&file=Safe%20Schools%20Action%20Pack%204%20Children%27s%20Activities.docx&action=default&mobileredirect=true&cid=0991d0c9-813a-460a-9372-d5768e35f0c8', 0, 'en', 1, 1, 1, '2022-03-08 06:08:00', '2022-08-08 10:23:30'),
(69, 'TOOL #02  Making an  Inclusive,  Learner-friendly  Classroom', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BA3011B3A-BADA-4963-9DA4-B27461FEBAA6%7D&file=%2302%20TOOL_1.1%20Positive%20and%20Respectful%20Interactions_v5_SC.docx&action=default&mobileredirect=true&cid=1b3cffe9-66ec-468b-8421-2f88c7aa1990', 0, 'en', 1, 1, 1, '2022-03-08 06:14:17', '2022-03-08 06:14:17'),
(70, 'EiE-GenKit. A  core resource  package on  gender in  education in  emergencies.', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FEMIS%20JOINT%20CO%20FILE%2FSCS%20OOSC%20CWD%20EMIS%20Final%20Report%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FEMIS%20JOINT%20CO%20FILE', 0, 'en', 1, 1, 1, '2022-03-08 06:16:26', '2022-03-08 06:16:26'),
(71, 'El bullying  homofóbico  y transfóbico  en los centros  educativos:  taller de  sensibilización  para su  prevención; guía  de facilitación', 'https://unesdoc.unesco.org/ark:/48223/pf0000244841', 0, 'en', 1, 1, 1, '2022-03-08 06:17:19', '2022-03-08 06:17:19'),
(72, 'Safe Back to School: A  Practitioner’s Guide', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2Fsafe%20back%20to%20school%20practitioner%20guide%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources', 0, 'en', 1, 1, 1, '2022-03-08 06:18:48', '2022-03-08 06:18:48'),
(73, 'Tip Sheet for Disability Inclusion during  COVID for CHILD PROTECTION', 'https://resourcecentre.savethechildren.net/pdf/ext._child_protection_tip_sheet_for_disability_inclusion_during_covid-19_save_the_children_pdf_version.pdf/', 0, 'en', 1, 1, 1, '2022-03-08 06:19:25', '2022-03-08 06:19:25'),
(74, 'Children with Disabilities Day Care  Curriculum Guidebook', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2FIECCD%5FSC%20Georgia%5FChildren%20with%20Disabilities%5Fed%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources', 0, 'en', 1, 1, 1, '2022-03-08 06:20:02', '2022-03-08 06:20:02'),
(75, 'Safe School Action Pack 4 –  Module 7, 11, 12, 13 and 17', 'https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7B66BCB969-D43E-4FA0-A550-6E2A0C83CAFD%7D&file=Safe%20Schools%20Module%207%20-%20SGBV.docx&action=default&mobileredirect=true&cid=b475d157-dd38-4bfb-bba4-1aabca8dc9c9', 0, 'en', 1, 1, 1, '2022-03-08 06:21:12', '2022-03-08 06:21:12'),
(76, 'An Inclusive Day. Building  foundations for learner-centered,  inclusive education. A video-based  training resource for teachers', NULL, 0, 'en', 1, 1, 1, '2022-03-08 06:21:57', '2022-07-07 03:32:17'),
(77, 'Caring for Hair', 'https://www.learningforjustice.org/classroom-resources/lessons/caring-for-hair', 0, 'en', 1, 1, 1, '2022-03-08 06:22:48', '2022-03-08 06:22:48'),
(78, 'Exploring social and emotional learning  through identities', 'https://www.learningforjustice.org/learning-plan/exploring-social-and-emotional-learning-through-identities-0', 0, 'en', 1, 1, 1, '2022-03-08 06:23:34', '2022-03-08 06:23:34'),
(79, 'Creating Supportive Learning  Environments for Girls and Boys. A guide  for Educators', 'https://www.irex.org/sites/default/files/node/resource/creating-supportive-learning-environments-girls-boys_2.pdf', 0, 'en', 1, 1, 1, '2022-03-08 06:24:11', '2022-03-08 06:24:11'),
(80, 'Size Differences Accepting Size Differences', 'https://www.learningforjustice.org/classroom-resources/lessons/size-differences', 0, 'en', 1, 1, 1, '2022-03-08 06:24:50', '2022-03-08 06:24:50'),
(81, 'What is ableism', 'https://www.learningforjustice.org/classroom-resources/lessons/what-is-ableism', 0, 'en', 1, 1, 1, '2022-03-08 06:25:18', '2022-03-08 06:25:18'),
(82, 'Step by  Step - Toolkit  Promoting  Social and  Emotional  Learning (SEL)  in Children  and Teens', 'https://www.worldbank.org/en/topic/education/publication/step-by-step-sel-curricula', 0, 'en', 1, 1, 1, '2022-03-09 07:06:38', '2022-03-09 07:06:38'),
(83, 'Social Emotional  Learning  - Distance  Learning  Activity Pack', 'https://resourcecentre.savethechildren.net/document/social-emotional-learning-distance-learning-activity-pack/', 0, 'en', 1, 1, 1, '2022-03-09 07:07:35', '2022-03-09 07:07:35'),
(84, 'TOOL #03  Social and  Emotional  Learning in the  Classroom', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BF9394105-0C85-409B-A819-BAA15B972ABD%7D&file=%2303%20TOOL_1.2%20Soc%20Emot%20Learning_v5_SC.docx&action=default&mobileredirect=true&cid=583a49cd-e13d-4c3b-92b0-b7f69caecb3a', 0, 'en', 1, 1, 1, '2022-03-09 07:08:06', '2022-03-09 07:08:06'),
(85, 'SAFE SPACE  KIT. A Guide  to Supporting  Lesbian, Gay,  Bisexual and  Transgender  Students in  Your School.', 'https://www.glsen.org/sites/default/files/GLSEN%20Safe%20Space%20Kit.pdf', 0, 'en', 1, 1, 1, '2022-03-09 07:09:11', '2022-03-09 07:09:11'),
(86, 'Still left behind: Pathways to inclusive  education for girls with disabilities', 'https://www.edu-links.org/sites/default/files/media/file/Still_Left_Behind_-_Pathways_to_Inclusive_Education_for_Girls_with_Disabilities.PDF', 0, 'en', 1, 1, 1, '2022-04-03 07:58:50', '2022-04-03 07:58:50'),
(87, 'The Menstrual Hygiene Management  (MHM) in Emergencies toolkit - A toolkit  for integrating menstrual hygiene  management (MHM) into humanitarian  response', 'https://www.rescue.org/sites/default/files/document/2113/themhminemergenciestoolkitfullguide.pdf', 0, 'en', 1, 1, 1, '2022-04-03 07:59:26', '2022-04-03 07:59:26'),
(88, 'Tip Sheet for Disability inclusion during  COVID-19 EDUCATION', 'https://resourcecentre.savethechildren.net/', 0, 'en', 1, 1, 1, '2022-04-03 08:00:29', '2022-04-03 08:00:29'),
(89, 'Tip Sheet for Disability Inclusion during  COVID-19 WASH', 'https://resourcecentre.savethechildren.net/', 0, 'en', 1, 1, 1, '2022-04-03 08:01:37', '2022-04-03 08:01:37'),
(90, 'Tip Sheet for Disability Inclusion during  COVID-19 HEALTH', 'https://resourcecentre.savethechildren.net/', 0, 'en', 1, 1, 1, '2022-04-03 08:02:18', '2022-04-03 08:02:18'),
(91, 'Tip Sheet for Disability Inclusion during  COVID-19 NUTRITION', 'https://resourcecentre.savethechildren.net/', 0, 'en', 1, 1, 1, '2022-04-03 08:02:57', '2022-04-03 08:02:57'),
(92, 'Sexual and Gender Minorities and  COVID-19: Guidance for WASH deliver', 'https://www.edgeeffect.org/wp-content/uploads/2020/07/WfW_EdgeEffect_Guidance-Note_COVID-19-WASH-SGM-Inclusion-FINAL.pdf', 0, 'en', 1, 1, 1, '2022-04-03 08:03:41', '2022-04-03 08:03:41'),
(93, 'IDELA:  Classroom  Environment  Tool', 'https://savethechildren1.sharepoint.com/:w:/r/what/education/_layouts/15/Doc.aspx?sourcedoc=%7BBEA1DDCC-B230-4760-BDE4-CE37E3350DD6%7D&file=IDELA_Classroom%20Environment%20Tool_2017_Final.docx&action=default&mobileredirect=true&DefaultItemOpen=1&cid=6f5dd4c3-6d10-4afd-b692-0c1b750ed9b4', 0, 'en', 1, 1, 1, '2022-04-04 04:38:55', '2022-08-08 10:18:45'),
(94, 'Towards  Safer School  Construction  guide released  in 2015', 'https://www.gfdrr.org/sites/default/files/publication/45179_towardssaferschoolconstruction2015_0.pdf', 0, 'en', 1, 1, 1, '2022-04-04 04:39:38', '2022-04-04 04:39:38'),
(95, 'SC Construction  Policy,  Benchmark  Standards and  Tools - Version 4  November 2020', 'https://savethechildren1.sharepoint.com/:w:/r/sites/ConstructionandShelterTechnicalWorkingGroup/_layouts/15/doc2.aspx?sourcedoc=%7B909635DD-09A7-4DF2-A779-DDF8048D4054%7D&file=SCI%20Construction%20Policies%2C%20Benchmark%20Standards%20V4%20201104%20ENG.docx&action=default&mobileredirect=true&cid=3ba8ea89-7a0b-4458-9b7d-e756f53bff5b', 0, 'en', 1, 1, 1, '2022-04-04 04:40:15', '2022-08-08 09:43:15'),
(96, 'Accessible  Construction  Toolkit', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?csf=1&web=1&e=N9lxCo&cid=0fa73798-15cd-4323-a070-9def1255a6df&FolderCTID=0x0120009AFF1499763B584DB59DF1AB77F332A5&id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F6%2E%20Material%20and%20Edits%20shared%2FIOM%20Iraq%20Accessible%20Construction%20Toolkit%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F6%2E%20Material%20and%20Edits%20shared', 0, 'en', 1, 1, 1, '2022-04-04 04:41:22', '2022-04-04 04:41:22'),
(97, 'Safe Schools  Action Pack 3', 'https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7BCB4A4CE7-5530-475B-A438-97AECB222F5A%7D&file=ACTION%20PACK%203%20_%20FINAL%20v.1.docx&wdLOR=cA3A4355B-57C0-1844-9149-DD695994FE15&action=default&mobileredirect=true&cid=bb7dc45d-6020-4901-93f4-e03c7c34c394', 0, 'en', 1, 1, 1, '2022-04-04 04:42:07', '2022-04-04 04:42:07'),
(98, 'Sketch Up', 'https://www.sketchup.com/', 0, 'en', 1, 1, 1, '2022-04-04 04:42:39', '2022-04-04 04:42:39'),
(99, 'Guidelines -  How to ensure  infrastructure  designs are  accessible and  inclusive to  persons with  disabilities', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B541D62AC-9751-4BCC-B0E1-31D72774F468%7D&file=C4%20-%20REFERENCE%20SCI%20Disability%20Inclusion%20Guidelines%20Infrastructure%20201214.docx&action=default&mobileredirect=true&cid=7b79685a-50ce-475a-b385-ecd774ad7a66', 0, 'en', 1, 1, 1, '2022-04-04 04:43:21', '2022-04-04 04:43:21'),
(100, 'Embracing  diversity: Toolkit  for creating  inclusive,  learning-friendly  Environments', 'https://www.eccnetwork.net/sites/default/files/media/file/UNESCO-Diversity-2015.pdf', 0, 'en', 1, 1, 1, '2022-04-04 04:43:54', '2022-04-04 04:43:54'),
(101, 'Compendium  for Accessible  WASH facilities', 'https://washmatters.wateraid.org/sites/g/files/jkxoof256/files/Compendium%20of%20accessible%20WASH%20technologies_3.pdf', 0, 'en', 1, 1, 1, '2022-04-04 07:23:54', '2022-04-04 07:23:54'),
(102, 'Safe Back  to School: A  Practitioner’s  Guide', 'https://resourcecentre.savethechildren.net/pdf/gec_checklist_8.7.20_digital.pdf/', 0, 'en', 1, 1, 1, '2022-04-04 07:25:32', '2022-04-04 07:25:32'),
(103, 'Improving  health and  learning through  better water,  sanitation,  and hygiene  in schools. AN  INFORMATION  PACKAGE FOR  SCHOOL STAFF.', 'https://apps.who.int/iris/bitstream/handle/10665/329531/9789289054508-eng.pdf?sequence=1&isAllowed=y', 0, 'en', 1, 1, 1, '2022-04-04 07:26:10', '2022-04-04 07:26:10'),
(104, 'TOOL #05 Tip  sheet: WASH for  Children with  Disabilities', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BF233F673-C9C8-43C3-A95F-F2EF283B2BB9%7D&file=%2305%20TOOL_2.2_Water%2C%20Sanitation%20and%20Hygiene_v5_SC.docx&action=default&mobileredirect=true&cid=0588b02e-6abd-495e-8780-12fdc705b4bf', 0, 'en', 1, 1, 1, '2022-04-04 07:27:18', '2022-04-04 07:27:18'),
(105, 'Disaster and  Emergency  Preparedness:  Guidance  for school', 'https://openknowledge.worldbank.org/bitstream/handle/10986/17669/839970WP0IFC0B0UBLIC00DisERHandbook.pdf?sequence=1&isAllowed=y', 0, 'en', 1, 1, 1, '2022-04-04 07:52:01', '2022-04-04 07:52:01'),
(106, 'Education on  Reduction of  Disaster Risk', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FZ%20Inclusive%20DRR%2FArmenia_IDRR%20teachers%20guide_grades%205-9_ENG%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FZ%20Inclusive%20DRR', 0, 'en', 1, 1, 1, '2022-04-04 07:54:07', '2022-04-04 07:54:07'),
(107, 'SAFE BACK TO  SCHOOL – Key  messages for a  safe and healthy  return to school', 'https://savethechildren1.sharepoint.com/what/humanitarian/SCDocuments/Forms/Technical%20Resources.aspx?id=%2Fwhat%2Fhumanitarian%2FSCDocuments%2FGlobal%20-%20COVID-19%2FGlobal%2FSafe%20Back%20to%20School%20%28SB2S%29%2FSB2S%20Technical%20Resources%2FKey%20Messages%2FSB2S%20Key%20Messages%2Epdf&parent=%2Fwhat%2Fhumanitarian%2FSCDocuments%2FGlobal%20-%20COVID-19%2FGlobal%2FSafe%20Back%20to%20School%20%28SB2S%29%2FSB2S%20Technical%20Resources%2FKey%20Messages', 0, 'en', 1, 1, 1, '2022-04-04 07:58:03', '2022-04-04 07:58:03'),
(108, 'ILET Improving  Learning  Environments  Together in  Emergencies', 'https://resourcecentre.savethechildren.net/document/improving-learning-environments-together-emergencies-ilet-package/', 0, 'en', 1, 1, 1, '2022-04-04 07:59:03', '2022-04-04 07:59:03'),
(109, 'A Guide for Strengthening Gender  Equality and Inclusiveness in Teaching  and Learning Materials (eccnetwork.net)', 'https://www.eccnetwork.net/sites/default/files/media/file/DERP_Gender_Guide_V3_102715_r9_FNL.pdf', 0, 'en', 1, 1, 1, '2022-04-11 04:19:42', '2022-04-11 04:19:42'),
(110, 'GEC_QTF_December_2020.pdf (dfidgec-api.s3.amazonaws.com)', 'https://girlseducationchallenge.org/media/yw5jzgni/gec_qtf_december_2020.pdf', 0, 'en', 1, 1, 1, '2022-04-11 04:20:52', '2022-04-11 04:20:52'),
(111, 'EiE-GenKit. A core resource package on  gender in education in emergencies.', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FEMIS%20JOINT%20CO%20FILE%2FSCS%20OOSC%20CWD%20EMIS%20Final%20Report%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FEMIS%20JOINT%20CO%20FILE', 0, 'en', 1, 1, 1, '2022-04-11 04:22:27', '2022-07-06 08:43:53'),
(112, 'Is your classroom inclusive and child-friendly? A self-assessment tool for  teachers', 'https://inee.org/', 0, 'en', 1, 1, 1, '2022-04-11 04:23:45', '2022-06-01 03:05:20'),
(113, 'INCLUSIVE PRIMARY SCHOOL SELF-REFLECTING TOOL', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BB99A93A4-1DA1-4714-A6E6-AD226AD0AF5E%7D&file=INCLUSIVE%20PRIMARY%20SCHOOL%20SELF-REFLECTION%20TOOL.docx&action=default&mobileredirect=true&DefaultItemOpen=1&wdLOR=c56A8413C-F2DB-9B4F-9EC1-5BE5083AA42F&cid=ccbd45c4-64a0-4965-a410-64fc8659ca26', 0, 'en', 1, 1, 1, '2022-04-11 04:31:40', '2022-06-01 03:05:47'),
(114, 'Creating an inclusive school environment', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/doc2.aspx?sourcedoc=%7BB99A93A4-1DA1-4714-A6E6-AD226AD0AF5E%7D&file=INCLUSIVE%20PRIMARY%20SCHOOL%20SELF-REFLECTION%20TOOL.docx&action=default&mobileredirect=true&DefaultItemOpen=1&wdLOR=c56A8413C-F2DB-9B4F-9EC1-5BE5083AA42F&cid=ccbd45c4-64a0-4965-a410-64fc8659ca26', 0, 'en', 1, 1, 1, '2022-04-11 04:35:32', '2022-04-11 04:35:32'),
(115, '(See Quality  Learning  Environment  QLE webpage  for additional  info)', 'https://savethechildren1.sharepoint.com/what/education/QLEProgrammeCatalogue', 0, 'en', 1, 1, 1, '2022-04-12 03:44:14', '2022-04-12 03:44:14'),
(116, 'https://idela-network.org/', 'https://idela-network.org/', 0, 'en', 1, 1, 1, '2022-04-12 04:02:50', '2022-04-12 04:02:50'),
(117, '(Also see Safe School Action Pack 5)', 'https://resourcecentre.savethechildren.net/', 0, 'en', 1, 1, 1, '2022-04-12 05:14:30', '2022-04-12 05:14:30'),
(118, 'SNAP Teacher  Training', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?RootFolder=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2Fsnap%20last%20with%20eccd&FolderCTID=0x0120009AFF1499763B584DB59DF1AB77F332A5', 0, 'en', 1, 1, 1, '2022-04-19 08:20:13', '2022-07-06 08:24:33'),
(119, 'See the  Resource  Library for  updated tools)', 'https://savethechildren1.sharepoint.com/what/education/ResourceLibrary/Forms/InclusiveEducation_SNAP40.aspx', 0, 'en', 1, 1, 1, '2022-04-19 08:20:52', '2022-04-19 08:20:52'),
(120, 'Safe Schools  Action Pack 4–  Teacher  professional  Development –  Module 2:  Teacher  Wellbeing', 'https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7BB187A1F6-3260-4EB9-8031-32BE7DE3BF7E%7D&file=Safe%20Schools%20Action%20Pack%204%20Module%202%20Teacher%20Well-Being.docx&action=default&mobileredirect=true&wdLOR=c547239C7-280E-4F45-822C-7F2C9129B5E4&cid=c265d545-d0df-44a1-bbb1-f41626eb3c87', 0, 'en', 1, 1, 1, '2022-04-19 08:21:27', '2022-04-19 08:21:27'),
(121, 'Inclusive  Education:  What, Why,  and How. A  Handbook  for Program  Implementers', 'https://savethechildren1.sharepoint.com/what/education/ResourceLibrary/Forms/AllItems.aspx?id=%2Fwhat%2Feducation%2FResourceLibrary%2FInclusive%20Education%20Handbook%20%28low%20resolutation%29%2Epdf&parent=%2Fwhat%2Feducation%2FResourceLibrary', 0, 'en', 1, 1, 1, '2022-04-19 08:22:24', '2022-04-19 08:22:24'),
(122, 'Overview of the  Foundational  ECCD Training  with Early  Literacy  and Math', 'https://savethechildren1.sharepoint.com/:p:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BA435D772-2A29-4A4A-AD84-2C3FF0647547%7D&file=Foundational%20ECCD%20Training%20-%20Summary%20of%20Training.pptx&action=edit&mobileredirect=true&cid=ad8a962a-b41f-479e-8ccd-5e17f197fd37', 0, 'en', 1, 1, 1, '2022-04-19 08:23:01', '2022-04-19 08:23:01'),
(123, 'QUALITY  LEARNING  ENVIRONMENT  MONITORING  FORM – BASIC  EDUCATION  TEACHER  INTERVIEW  GUIDE', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BEC663BDF-8AEA-48B2-9FD0-B52B42BC1FF3%7D&file=QLE%20Assessment-%20Teachers%20interview%20guide.doc&action=default&mobileredirect=true&cid=1a792a92-8e25-47ae-a8b9-33fe6a801164', 0, 'en', 1, 1, 1, '2022-04-19 08:23:44', '2022-04-19 08:23:44'),
(124, 'Enabling  Teachers  Common  Approach  Comprehensive  Overview', 'https://savethechildren1.sharepoint.com/what/education/ResourceLibrary/Enabling%20Teachers%20Comprehensive%20Overview.pdf', 0, 'en', 1, 1, 1, '2022-04-19 08:24:44', '2022-04-19 08:24:44'),
(125, 'Enabling  Teachers  Foundation  of Teaching  TPD Module  02 Know and  Include all  your learners', 'https://savethechildren1.sharepoint.com/:w:/r/sites/TeamSitePortal/Education/BETG/Teachers/_layouts/15/Doc.aspx?sourcedoc=%7BEED8E057-178E-43F7-9C02-072690078D08%7D&file=ET.FoT.Module%2002_Know%2BIncludeAllLearners.docx&action=default&mobileredirect=true', 0, 'en', 1, 1, 1, '2022-04-19 08:25:28', '2022-04-19 08:25:28'),
(126, 'Brice TPD  Module 5: Girls’  Education', 'https://savethechildren1.sharepoint.com/sites/TeamSitePortal/Education/BETG/Teachers/Shared%20Documents/Forms/AllItems.aspx?csf=1&web=1&e=Rmf6Cr&cid=12ead743%2D5f8f%2D4452%2D819a%2Ddad60b70e377&FolderCTID=0x0120008790631C7AFF164E90F7DC67C3E4E71E&id=%2Fsites%2FTeamSitePortal%2FEducation%2FBETG%2FTeachers%2FShared%20Documents%2F06%20TPD%20Projects%20and%20proposals%2FDRC%20Niger%20%2D%20BRiCE%2FTPD%20Modules%2FModule%205%20%2D%20Girls%27%20Education%2FModule%205%20%2D%20Girls%27%20Education%20EN%20v5%20%28PMD%29%2Epdf&parent=%2Fsites%2FTeamSitePortal%2FEducation%2FBETG%2FTeachers%2FShared%20Documents%2F06%20TPD%20Projects%20and%20proposals%2FDRC%20Niger%20%2D%20BRiCE%2FTPD%20Modules%2FModule%205%20%2D%20Girls%27%20Education', 0, 'en', 1, 1, 1, '2022-04-19 08:26:16', '2022-04-19 08:26:16'),
(127, 'Universal  Design for  Learning to Help  All Children  Read. Promoting  Literacy for  Learners with  Disabilities.', 'https://www.edu-links.org/sites/default/files/media/file/Literacy%20for%20All%20toolkit_v4.1_0.pdf', 0, 'en', 1, 1, 1, '2022-04-19 08:27:27', '2022-04-19 08:27:27'),
(128, '(See the  Resource  Library for  updated tools  and whole  SNAP training  package).', 'https://savethechildren1.sharepoint.com/what/education/ResourceLibrary/Forms/InclusiveEducation_SNAP40.aspx', 0, 'en', 1, 1, 1, '2022-04-19 08:28:50', '2022-04-19 08:28:50'),
(129, 'TOOL #06  Teacher  Communities  of Practice', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B7E72084E-BFD1-4E9D-831A-8A7CA9C1FCF6%7D&file=%2306%20TOOL_3.1%20Teacher%20Comm%20of%20Practice_v5_SC.docx&action=default&mobileredirect=true&cid=6eae49f9-c555-445d-bcf5-90058a84ba63', 0, 'en', 1, 1, 1, '2022-04-19 08:29:48', '2022-04-19 08:29:48'),
(130, 'Enabling  Teachers PLC  Overview', 'https://savethechildren1.sharepoint.com/:w:/r/sites/TeamSitePortal/Education/BETG/Teachers/_layouts/15/Doc.aspx?sourcedoc=%7BA6CB1CEF-1611-4461-9F3E-D4A75B5EB068%7D&file=ET%20TLC.PLC%20Overview%20Final.docx&wdLOR=c74E3A434-AD9B-40C4-83AB-8D000E7C3320&action=default&mobileredirect=true&cid=7ec61e87-1194-4e07-9eb8-fec29325dc5e', 0, 'en', 1, 1, 1, '2022-04-19 08:30:17', '2022-04-19 08:30:17'),
(131, 'TOOL #07  Teacher  Interview  Guide: Personal  Professional  Development', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B2CBA7014-935F-4286-8266-74A18D000D91%7D&file=%2307%20TOOL_3.1_Teacher%20Wellbeing%20and%20Development_v5_SC.docx&action=default&mobileredirect=true&cid=1619c58c-b812-40e3-87d5-1227826adac6', 0, 'en', 1, 1, 1, '2022-04-19 08:30:49', '2022-04-19 08:30:49'),
(132, 'Enabling  Teachers  Situational  Analysis Tool', 'https://savethechildren1.sharepoint.com/:w:/r/sites/TeamSitePortal/Education/BETG/Teachers/_layouts/15/Doc.aspx?sourcedoc=%7B797DAA89-29E9-4078-B2D5-9389FDE5DADC%7D&file=Situational%20Anlaysis%20Tool_Teachers%20(060619).docx&action=default&mobileredirect=true&cid=c243ebf7-098f-49d0-a4af-cf09b6f639aa', 0, 'en', 1, 1, 1, '2022-04-19 08:31:37', '2022-04-19 08:31:37'),
(133, 'SAFE SCHOOLS  TEACHER  PROFESSIONAL  DEVELOPMENT  MODULES', 'https://savethechildren1.sharepoint.com/what/humanitarian/SCDocuments/Forms/AllItems1.aspx?siteid=%7BF3EB20AF%2DD017%2D4465%2D8CE0%2D05D210EBCB26%7D&webid=%7B908E3D61%2D58E2%2D4955%2D814E%2DDCEBC18FEA08%7D&uniqueid=%7BD5145B5C%2DA72C%2D4C35%2DBD48%2D516225E1D549%7D&viewid=bb1b38b6%2Dacd2%2D4cd6%2Db8fe%2D95a16a8d7e20&id=%2Fwhat%2Fhumanitarian%2FSCDocuments%2FGlobal%20%2D%20COVID%2D19%2FGlobal%2FSafe%20Back%20to%20School%20%28SB2S%29%2FSB2S%20Technical%20Resources%2F4%20piece%20tools%20%28Attendance%20Tracking%2C%20Inclusion%20Guidance%2C%20Integrated%20Community%20Model%2C%20Situational%20Analysis%29%2FInclusion%20Guidance', 0, 'en', 1, 1, 1, '2022-04-19 08:32:54', '2022-04-19 08:32:54'),
(134, 'Female Teacher  Accreditation\'  - Advocacy  and training  of female  teachers Case  Study from ET', 'https://savethechildren1.sharepoint.com/:w:/r/sites/TeamSitePortal/Education/BETG/Teachers/_layouts/15/Doc.aspx?sourcedoc=%7BD0D298FA-6DEA-4449-B6AE-6E7A01D9BE03%7D&file=Case%20Study%204-Female%20Teacher%20Accreditation%20Focus_Afg%2BSierraL_FINAL.docx&action=default&mobileredirect=true&cid=10822f9b-2552-42ef-a720-9f51baa1e69d', 0, 'en', 1, 1, 1, '2022-04-19 08:34:34', '2022-04-19 08:34:34'),
(135, 'Supporting  Learners  with Learning  Disabilities –  Facilitator’s  Guide', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B31A00974-B59A-46A1-896B-3FAA3A8B3ED0%7D&file=TiCC%20Inc%20Ed%20-%20Facilitator%20Guide.docx&action=default&mobileredirect=true&cid=cd4112df-768a-4853-88e4-22e6e62d6c39', 0, 'en', 1, 1, 1, '2022-04-19 08:35:07', '2022-04-19 08:35:07'),
(136, 'Inclusive  Reading  Materials:  Reading  Materials for  Struggling  Learners and  Children with  Disability', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BCFD05DC1-A5C1-4AFF-8347-7A873F7B7B97%7D&file=Guidance%20Note%20on%20Inclusive%20Reading%20Materials.docx&action=default&mobileredirect=true&cid=d218c63d-ca7d-46a6-a1a9-afc2c9ea3885', 0, 'en', 1, 1, 1, '2022-04-20 05:47:20', '2022-04-20 05:47:20'),
(137, 'Literacy SNAP:  Improving  learning  outcomes for  struggling  students in Sri  Lanka Pre-Schooling  (applicable  for Primary  Students)', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B976B1A48-A205-4DF4-9EE9-FBEC90D67CC4%7D&file=2.%20SNAP_Pre-Screening%20Tool.doc&action=default&mobileredirect=true&cid=e7f11300-baa5-4d71-a9aa-fb83d399438d', 0, 'en', 1, 1, 1, '2022-04-20 05:47:52', '2022-04-20 05:47:52'),
(138, 'Using the  Key informant  Method to  identify children  with disabilities:  A working guide', 'https://www.lshtm.ac.uk/media/23601', 0, 'en', 1, 1, 1, '2022-04-20 05:48:19', '2022-04-20 05:48:19'),
(139, 'Understanding  and responding  to children\'s  needs in  inclusive  classrooms:  a guide for  teachers', 'https://www.eenet.org.uk/resources/docs/124394e.pdf', 0, 'en', 1, 1, 1, '2022-04-20 05:48:42', '2022-04-20 05:48:42'),
(140, 'TOOL #8 A  Lesson Plan  Template', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B8FC03BC1-EF18-48DD-AB83-D6172B8DB887%7D&file=%2308%20TOOL_3.2%20Lesson%20plan_v5_SC.docx&action=default&mobileredirect=true&cid=8de132fa-bc15-40c1-b644-0b2a4d42bc27', 0, 'en', 1, 1, 1, '2022-04-20 05:49:38', '2022-04-20 05:49:38'),
(141, 'TOOL #9  Universal  Design for  Learning.', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B8FC03BC1-EF18-48DD-AB83-D6172B8DB887%7D&file=%2308%20TOOL_3.2%20Lesson%20plan_v5_SC.docx&action=default&mobileredirect=true&cid=8de132fa-bc15-40c1-b644-0b2a4d42bc27', 0, 'en', 1, 1, 1, '2022-04-20 05:50:07', '2022-04-20 05:50:07'),
(142, '(See the  Resource  Library for  SNAP Teacher  Training whole  package and  updated tools)', 'https://savethechildren1.sharepoint.com/what/education/ResourceLibrary/Forms/InclusiveEducation_SNAP40.aspx', 0, 'en', 1, 1, 1, '2022-04-20 05:50:29', '2022-04-20 05:50:29'),
(143, 'BEQUAL  – Gender,  Disability and  Social Inclusion  Program', 'https://www.bequal-laos.org/about-bequal/key-results-areas/gender-disability-and-social-inclusion-2/', 0, 'en', 1, 1, 1, '2022-04-20 05:51:24', '2022-04-20 05:51:24'),
(144, 'SNAP Individual  Challenges  teacher  flashcards', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B076299AC-C0BD-404C-A919-7801E3F482FD%7D&file=SNAP%20Tool%203%20-%20Individual%20Challenges.docx&action=default&mobileredirect=true&wdLOR=cC9C633CF-EF49-C946-B46A-3D753A031404&cid=76266b18-dd0b-4798-bffd-b6e4031e11c1', 0, 'en', 1, 1, 1, '2022-04-20 06:41:18', '2022-08-08 10:27:30'),
(145, 'Literacy Boost  toolkit teacher  training', 'https://savethechildren1.sharepoint.com/what/education/ResourceLibrary/Teacher%20Training%20toolkit%20PR10.pdf?siteid=%7bF3EB20AF-D017-4465-8CE0-05D210EBCB26%7d&webid=%7b7A5CD72E-193E-4ADC-9BB4-799E411EBBDB%7d&uniqueid=%7b4D31BEB9-1BB5-4BF7-8309-4123BD63BA13%7d', 0, 'en', 1, 1, 1, '2022-04-20 06:42:12', '2022-04-20 06:42:12'),
(146, '(See the  Resource  Library for  updated tools)', 'https://savethechildren1.sharepoint.com/what/education/ResourceLibrary/Forms/InclusiveEducation_SNAP40.aspx', 0, 'en', 1, 1, 1, '2022-04-20 06:43:55', '2022-04-20 06:44:19'),
(147, 'Second  Language  Learners’  Transition to  Preschool', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B8E115210-E0C2-47E9-80D2-F179AC42043B%7D&file=MLTI%20Guide%20-%202018.docx&action=default&mobileredirect=true&cid=9f2c063c-e1f7-4e06-a30f-2029a79294a0', 0, 'en', 1, 1, 1, '2022-04-20 06:44:43', '2022-04-20 06:44:43'),
(148, 'Transitions  Guide for  Second  Language  Learners', 'https://savethechildren1.sharepoint.com/:p:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B62ABC8FA-894F-4DB4-888F-2224C492DEAB%7D&file=Transitions%20Guide%20for%20Second%20Language%20Learners.pptx&action=edit&mobileredirect=true&cid=780eedaf-5b16-4054-b9f2-a1d4289f7a90', 0, 'en', 1, 1, 1, '2022-04-20 06:45:05', '2022-04-20 06:45:05'),
(149, 'Making schools  inclusive: how  change can  happen', 'https://resourcecentre.savethechildren.net/document/making-schools-inclusive-how-change-can-happen', 0, 'en', 1, 1, 1, '2022-04-20 06:45:25', '2022-04-20 06:45:25'),
(150, '(See the Resource  Library for  SNAP Teacher  Training whole  package and  updated tools)', 'https://savethechildren1.sharepoint.com/what/education/ResourceLibrary/Forms/InclusiveEducation_SNAP40.aspx', 0, 'en', 1, 1, 1, '2022-04-20 06:46:11', '2022-04-20 06:46:11'),
(151, 'Inclusive  Education  Sourcebook.  A source-book  for pre-service  teacher  educators  and practicing  teachers', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2F2020%20%2D%20Final%20Edited%20Inclusive%20Education%20Source%20Book%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources', 0, 'en', 1, 1, 1, '2022-04-20 06:46:36', '2022-04-20 06:46:36'),
(152, 'UNIVERSAL  DESIGN FOR  LEARNING  TO HELP ALL  CHILDREN  READ -  Promoting  Litera-cy for  Learners with  Disa-bilities', 'https://www.edu-links.org/sites/default/files/media/file/Literacy%20for%20All%20toolkit_v4.1_0.pdf', 0, 'en', 1, 1, 1, '2022-04-20 06:47:27', '2022-04-20 06:47:27'),
(153, 'Classroom  Support  Framework', 'https://savethechildren1.sharepoint.com/Pages/PageNotFoundError.aspx?requestUrl=https://savethechildren1.sharepoint.com/:p:/', 0, 'en', 1, 1, 1, '2022-04-20 07:57:57', '2022-04-20 07:57:57'),
(154, 'Safe schools’  positive  discipline and  child-friendly  classroom  management  - Skill building  on classroom  management  and positive  discipline', 'https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7B873A5984-CE00-4795-B20D-0EB75BA347FA%7D&file=Safe%20Schools%20Action%20Pack%204%20Module%208%20.docx&action=default&mobileredirect=true&wdLOR=c85D1EB13-BA99-3242-9BF9-4C97984891ED&cid=565724bc-a1dc-4239-91c9-a0bab3284848', 0, 'en', 1, 1, 1, '2022-04-20 07:58:22', '2022-04-20 07:58:22'),
(155, 'Supporting  students with  specific learning  difficulties', 'https://www.cambridge.org/elt/blog/2017/11/04/supporting-students-with-learning-differences/?utm_source=wobl&utm_medium=blog&utm_content=&utm_campaign=content', 0, 'en', 1, 1, 1, '2022-04-20 07:58:40', '2022-04-20 07:58:40'),
(156, 'The Key to  Effective  Classroom  Management', 'https://www.edutopia.org/article/key-effective-classroom-management', 0, 'en', 1, 1, 1, '2022-04-20 07:59:05', '2022-04-20 07:59:05'),
(157, 'Dealing with... Disruptive  Behavior', 'https://www.lcc.edu/cte/', 0, 'en', 1, 1, 1, '2022-04-20 07:59:50', '2022-04-20 07:59:50'),
(158, 'Tool #9: UDL  Design', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B74A03ED7-3CE3-48B4-9046-206DE633441E%7D&file=%2309%20TOOL_3.4_Pedagogical%20Practices_v5_SC.docx&action=default&mobileredirect=true&cid=2e85900c-45ad-4987-979c-da91fea9fcd7', 0, 'en', 1, 1, 1, '2022-04-20 08:00:13', '2022-04-20 08:00:13'),
(159, 'How inclusive  is my school  - A school self-assessment', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B09894B87-84AD-45B7-BA67-21B022D0962F%7D&file=How%20inclusive%20is%20my%20school%20-%20a%20school%20self-assessment.docx&action=default&mobileredirect=true&cid=ffe38761-4ec2-4ad5-a442-004a2a2ea944', 0, 'en', 1, 1, 1, '2022-04-20 08:00:36', '2022-08-08 10:12:03'),
(160, 'Universal  Design for  Learning (UDL):  A teacher’s  guide', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B74A03ED7-3CE3-48B4-9046-206DE633441E%7D&file=%2309%20TOOL_3.4_Pedagogical%20Practices_v5_SC.docx&action=default&mobileredirect=true&cid=b7c9e390-c036-4304-aab7-86bc2d5d9237', 0, 'en', 1, 1, 1, '2022-04-20 08:22:32', '2022-04-20 08:22:32'),
(161, 'Guide to  Universal  Design for  Learning', 'https://www.inclusive.tki.org.nz/guides/universal-design-for-learning/', 0, 'en', 1, 1, 1, '2022-04-20 08:23:14', '2022-04-20 08:23:14'),
(162, 'Inclusive  Distance  Learning', 'https://savethechildren1.sharepoint.com/sites/TeamSitePortal/Education/COVID19%20Education%20Coordination/Forms/AllItems.aspx?id=%2Fsites%2FTeamSitePortal%2FEducation%2FCOVID19%20Education%20Coordination%2FSafe%20Back%20to%20School%20Task%20Team%2FPillar%201%20%2D%20Operational%20%26%20Technical%20Assistance%2FWorkplan%20specifics%2FSOW%2FInclusive%20and%20Equitable%20Access%20Guidance%2FInclusive%20Distance%20Learning%20Guidance%2Epdf&parent=%2Fsites%2FTeamSitePortal%2FEducation%2FCOVID19%20Education%20Coordination%2FSafe%20Back%20to%20School%20Task%20Team%2FPillar%201%20%2D%20Operational%20%26%20Technical%20Assistance%2FWorkplan%20specifics%2FSOW%2FInclusive%20and%20Equitable%20Access%20Guidance', 0, 'en', 1, 1, 1, '2022-04-20 08:23:55', '2022-04-20 08:23:55'),
(163, 'INDIVIDUAL  EDUCATION  PLAN (IEP)  AND THE  GUIDELINES  FOR DRAFTING  AN INDIVIDUAL  EDUCATION  PLAN FOR  CHILDREN  WITH SPECIAL  EDUCATION  NEEDS', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BFC21EE25-2F69-41C4-A7AD-EC7D9EBCAFE3%7D&file=IEP%20and%20guideline%20(2017).docx&action=default&mobileredirect=true&DefaultItemOpen=1&cid=d6405c6e-a3a1-46da-97d3-a637877a4b27', 0, 'en', 1, 1, 1, '2022-04-20 08:29:13', '2022-04-20 08:29:13'),
(164, 'SNAP TOOL  3 – Individual  Challenges  with ECCD', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B35196B19-3F62-49C1-BF3C-9B19C2CFF23B%7D&file=SNAP%20Tool%203%20-%20Individual%20Challenges_with%20ECCD_final.docx&action=default&mobileredirect=true&wdLOR=cA14487F8-1F7A-CE46-AB7B-016E2763063F&cid=ecffa5a2-c104-4148-aa3b-45ccfe23d81f', 0, 'en', 1, 1, 1, '2022-04-20 08:30:02', '2022-04-20 08:30:02'),
(165, 'Inclusion of  children with  disabilities  in schools', 'https://resourcecentre.savethechildren.net/document/inclusion-children-disabilities-schools/', 0, 'en', 1, 1, 1, '2022-04-20 08:30:48', '2022-04-20 08:30:48'),
(166, 'Formative  Assessment', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B58D1CEE6-4287-4AA9-9995-6E3F69F6E6F6%7D&file=Formative%20Assessment.docx&action=default&mobileredirect=true&cid=c6a9942e-a9b8-4171-9f30-160dbaf39b09', 0, 'en', 1, 1, 1, '2022-04-20 08:31:14', '2022-04-20 08:31:14'),
(167, '7 Smart, Fast  Ways to do  Formative  Assessment', 'https://www.edutopia.org/article/7-smart-fast-ways-do-formative-assessment', 0, 'en', 1, 1, 1, '2022-04-20 08:31:36', '2022-04-20 08:31:36'),
(168, '21 Quick  Formative  Assessment  Tools That Make  Learning Fun', 'https://wabisabilearning.com/blogs/assessment', 0, 'en', 1, 1, 1, '2022-04-20 08:33:27', '2022-04-20 08:33:27'),
(169, 'Note: A data-driven decision-making guide  will be published  and updated in  September 2021', 'https://savethechildren1.sharepoint.com/what/education/ResourceLibrary/Enabling%20Teachers%20Comprehensive%20Overview.pdf', 0, 'en', 1, 1, 1, '2022-04-20 08:34:36', '2022-04-20 09:13:24'),
(170, 'IDELA  Administration  and Adaptation  Guide', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B2A32FE97-2B99-44F1-BFB7-68BDF287633D%7D&file=Administration%20and%20Adaptation%20Guide%20of%20IDELA%20Tool_2016%20Final.docx&action=default&mobileredirect=true&cid=65dc5dd2-f39f-4eaf-8fa0-0a2032013952', 0, 'en', 1, 1, 1, '2022-04-20 08:35:01', '2022-04-20 08:35:01'),
(171, '(See SC IDELA  website)', 'https://idela-network.org/', 0, 'en', 1, 1, 1, '2022-04-20 08:35:33', '2022-04-20 08:35:33'),
(172, 'MAINSTREAMING INCLUSIVE  EDUCATION: SHARING  GOOD PRACTICES', 'https://resourcecentre.savethechildren.net/document/mainstreaming-inclusive-education-sharing-good-practices/', 0, 'en', 1, 1, 1, '2022-04-21 04:21:30', '2022-04-21 04:21:30');
INSERT INTO `tool_methodologies` (`id`, `name`, `url`, `file_status`, `language`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(173, 'Inclusive Education Sourcebook. A  sourcebook for pre-service teacher  educators and practicing teachers.', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2F2020%20%2D%20Final%20Edited%20Inclusive%20Education%20Source%20Book%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources', 0, 'en', 1, 1, 1, '2022-04-21 04:22:23', '2022-04-21 04:25:46'),
(174, 'Parents, Family  and Community  Participation  in Inclusive  Education  Webinar 13 -  Companion  Technical  Booklet', 'http://www.inclusive-education.org/sites/default/files/uploads/booklets/IE_Webinar_Booklet_13.pdf', 0, 'en', 1, 1, 1, '2022-04-21 05:39:16', '2022-04-21 05:39:16'),
(175, 'A Guide for  Volunteers.  Children with  disabilities:  Parents’  workshops.', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2FAnnex%201%2Ea%2E%20Children%20with%20Disabilities%2D%20A%20Guide%20for%20Volunteeers%5FEnglish%20final%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources', 0, 'en', 1, 1, 1, '2022-04-21 05:40:36', '2022-04-21 05:40:36'),
(176, 'SUPPORTING  INCLUSION  OF CHILDREN  WITH  DISABILITIES', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2FModel%20of%20Community%20Based%20Services%20for%20CWD%20in%20Eastern%20Europe%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources', 0, 'en', 1, 1, 1, '2022-04-21 05:40:54', '2022-04-21 05:40:54'),
(177, 'Safe Schools  Action Pack 4', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B6212952F-48EA-4E76-87DB-0A044845AFF7%7D&file=Safe%20Schools%20Action%20Pack%204.docx&action=default&mobileredirect=true&cid=c5b6c48e-b51a-469b-b924-5b665ebe73cc', 0, 'en', 1, 1, 1, '2022-04-21 05:41:13', '2022-04-21 05:41:13'),
(178, 'TOOL #10  Organization  and  Management  of School-community  Liaison  Committees', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BD5491E30-FB56-4624-95F1-9B2F3F132E94%7D&file=%2310%20TOOL_4.1_Child%2C%20Parent%20and%20Community%20Participation_v4_SC.docx&action=default&mobileredirect=true&cid=1366b37c-ef8b-4d20-ba3e-f0695f0fd536', 0, 'en', 1, 1, 1, '2022-04-21 05:42:03', '2022-04-21 05:42:03'),
(179, 'A disability  cheat sheet  A brief on  common  impairments, 2 health  conditions 3 and the  inclusive/ respectful  language we  should use.', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2FDisability%20Cheat%20Sheet%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources', 0, 'en', 1, 1, 1, '2022-04-21 05:43:24', '2022-04-21 05:43:24'),
(180, 'BEST  PRACTICES  Inclusive  Education  for Children  with Special  Educational  Needs in Albania', 'https://resourcecentre.savethechildren.net/document/best-practices-inclusive-education-children-special-education-needs-albania/', 0, 'en', 1, 1, 1, '2022-04-21 05:43:44', '2022-04-21 05:43:44'),
(181, 'Suggested  adaptation  for Caregiver  Questionnaire  on Disability', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B48C3D283-E0E0-4363-A046-6CA60A56BAC0%7D&file=Suggested%20adaptation%20for%20Caregiver%20Questionnaire%20on%20Disability.docx&action=default&mobileredirect=true&cid=6992507e-e7e9-4a54-9b94-4be5ff0ea03e', 0, 'en', 1, 1, 1, '2022-04-21 05:44:05', '2022-04-21 05:44:05'),
(182, 'Children with  disabilities:  Parents  ‘workshop', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?FolderCTID=0x0120009AFF1499763B584DB59DF1AB77F332A5&id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F2%2E%20Additional%20Resources%2Fz%2E%20Mureke%20Dusome%2FAnnex%201%2Ea%2E%20Children%20with%20Disabilities-%20A%20Guide%20for%20Volunteeers_English%20final%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F2%2E%20Additional%20Resources%2Fz%2E%20Mureke%20Dusome', 0, 'en', 1, 1, 1, '2022-04-21 05:45:01', '2022-04-21 05:45:01'),
(183, 'A guide for  Volunteers  Children with  disabilities:  Parents’  workshops', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2FAnnex%201%2Ea%2E%20Children%20with%20Disabilities%2D%20A%20Guide%20for%20Volunteeers%5FEnglish%20final%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources', 0, 'en', 1, 1, 1, '2022-04-21 05:45:30', '2022-04-21 05:45:30'),
(184, 'THE  COMMUNITY  SCORE CARD  (CSC) AS A  CHILD-CENTERED  SOCIAL  ACCOUNTABILITY (CCSA)  TOOL', 'https://kosovo.savethechildren.net/sites/kosovo.savethechildren.net/files/library/ENG-Toolkit.pdf', 0, 'en', 1, 1, 1, '2022-04-21 05:46:24', '2022-05-29 09:31:36'),
(185, 'SAFE BACK  TO SCHOOL Community-level  integrated case  management  model to  address barriers  to safely  accessing  education  and learning', 'https://savethechildren1.sharepoint.com/what/humanitarian/SCDocuments/Forms/AllItems1.aspx?siteid=%7BF3EB20AF%2DD017%2D4465%2D8CE0%2D05D210EBCB26%7D&webid=%7B908E3D61%2D58E2%2D4955%2D814E%2DDCEBC18FEA08%7D&uniqueid=%7BD5145B5C%2DA72C%2D4C35%2DBD48%2D516225E1D549%7D&id=%2Fwhat%2Fhumanitarian%2FSCDocuments%2FGlobal%20%2D%20COVID%2D19%2FGlobal%2FSafe%20Back%20to%20School%20%28SB2S%29%2FSB2S%20Technical%20Resources%2F4%20piece%20tools%20%28Attendance%20Tracking%2C%20Inclusion%20Guidance%2C%20Integrated%20Community%20Model%2C%20Situational%20Analysis%29%2FIntegrated%20Community%20Model%2FSB2S%2DCommunity%2DModel%5FFINAL%2Epdf&parent=%2Fwhat%2Fhumanitarian%2FSCDocuments%2FGlobal%20%2D%20COVID%2D19%2FGlobal%2FSafe%20Back%20to%20School%20%28SB2S%29%2FSB2S%20Technical%20Resources%2F4%20piece%20tools%20%28Attendance%20Tracking%2C%20Inclusion%20Guidance%2C%20Integrated%20Community%20Model%2C%20Situational%20Analysis%29%2FIntegrated%20Community%20Model', 0, 'en', 1, 1, 1, '2022-04-21 05:46:44', '2022-05-29 09:37:09'),
(186, 'TOOL #12  Supporting  Children’s  Language  and Speech  Development  from Birth to  Seven Years Old', 'https://savethechildren1.sharepoint.com/:w:/s/InclusiveEducationTechnicalResourcePackage/EeBsr5I18gNAtReGehGqTEwBcqiSwdydb8TZnIGXsc7_vg?CID=497dc31b-ca91-fa29-3c93-af32d48da944', 0, 'en', 1, 1, 1, '2022-04-21 05:47:03', '2022-04-21 05:47:03'),
(187, 'Sexuality in  Adolescents  with Disabilities', 'https://savethechildren1.sharepoint.com/sites/SupportingInclusionofChildrenwithDisabilities/Supporting%20Inclusion%20of%20Children%20with%20Disabilities/Building%20the%20knowledge%20and%20skils%20of%20CBS%20centers%E2%80%99%20staff/Sexualty%20in%20Adolescents%20with%20Disablities.pdf', 0, 'en', 1, 1, 1, '2022-04-21 05:47:27', '2022-04-21 05:47:27'),
(188, 'SNAP Parent  Training Guide', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B2EF635EB-4306-4AF7-86B9-96EF2344C6E9%7D&file=SNAP%20Parent%20Training%20Guide.docx&action=default&mobileredirect=true&wdLOR=cC3589B51-D502-5E4D-B51A-899D46D1F034&cid=b7e7b6e1-88a7-4795-8c4e-70e69e1bbcee', 0, 'en', 1, 1, 1, '2022-04-21 06:11:19', '2022-04-21 06:11:19'),
(189, 'Inclusion of children with disabilities in  schools', 'https://resourcecentre.savethechildren.net/document/inclusion-children-disabilities-schools', 0, 'en', 1, 1, 1, '2022-05-10 05:11:12', '2022-05-10 05:11:12'),
(190, 'School and Classroom Disabilities  Inclusion Guide for Low- and Middle-Income Countries', 'https://www.edu-links.org/sites/default/files/media/file/op-0031-1701-bulat.pdf', 0, 'en', 1, 1, 1, '2022-05-10 05:11:47', '2022-05-10 05:11:47'),
(191, 'BEST  PRACTICES  Inclusive  Education  for Children  with Special  Educational  Needs in  Albania', 'https://resourcecentre.savethechildren.net/document/best-practices-inclusive-education-children-special-education-needs-albania/', 0, 'en', 1, 1, 1, '2022-05-10 05:13:08', '2022-05-10 05:13:08'),
(192, 'SAFE SCHOOLS  COMMON  APPROACH  ACTION PACK 2:  SAFE SCHOOLS  MANAGEMENT', 'https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7BB6E0A7C2-FA58-435D-AA7F-0CB43377BBB5%7D&file=Safe%20Schools%20Action%20Pack%202.docx&action=default&mobileredirect=true&cid=77fab038-3f7d-41b2-ab5e-5e754e97a07b&wdLOR=c1F5C060B-B33D-BE46-864D-D17A5F5F5B2A', 0, 'en', 1, 1, 1, '2022-05-10 05:13:40', '2022-05-10 05:13:40'),
(193, 'Quality learning  environment  monitoring  form –basic  education.  Head teacher questionnaire', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BEC637C92-F121-49A7-88E4-C4D2B4A6FC39%7D&file=QLE%20Assessment-head%20teacher%20questionnare.doc&action=default&mobileredirect=true&cid=e807ab98-12eb-4537-bd2c-c5aa213ff711', 0, 'en', 1, 1, 1, '2022-05-10 05:14:11', '2022-05-10 05:14:11'),
(194, 'Tip Sheet  for Disability  Inclusion during  COVID-19  EDUCATION', 'https://resourcecentre.savethechildren.net/pdf/ext._education_tip_sheet_for_disability_inclusion_during_covid-19_save_the_children_pdf_version.pdf/', 0, 'en', 1, 1, 1, '2022-05-10 05:14:42', '2022-05-10 05:14:42'),
(195, 'INCLUSIVE  EDUCATION –  Children who  learn together  learn to live  together', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2FInclusive%20Education%20%2E%20children%20who%20learn%20together%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources', 0, 'en', 1, 1, 1, '2022-05-10 05:15:33', '2022-05-10 05:15:33'),
(196, 'TOOL #11  Elements of  an Inclusive  School Policy', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BEAE057C5-67D6-4DAF-9AA2-B7682985AB9A%7D&file=%2311%20TOOL_5.1_Inclusive%20and%20Protective%20Policies_Adaptation_v5_SC.docx&action=default&mobileredirect=true&cid=873aff0d-0c3f-4939-81ae-0747eea75eb1', 0, 'en', 1, 1, 1, '2022-05-10 05:16:01', '2022-05-10 05:16:01'),
(197, 'Quality learning  environment  monitoring  form –basic  education.  Head teacher', 'https://inee.org', 0, 'en', 1, 1, 1, '2022-05-10 05:17:03', '2022-05-10 05:17:03'),
(198, 'Quality learning  environment  monitoring  form –basic  education.  Head teacher  questionnaire', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BEC637C92-F121-49A7-88E4-C4D2B4A6FC39%7D&file=QLE%20Assessment-head%20teacher%20questionnare.doc&action=default&mobileredirect=true&DefaultItemOpen=1&cid=7a4fcdef-8b49-44ca-a8db-adac48b67c35', 0, 'en', 1, 1, 1, '2022-05-10 05:18:30', '2022-05-10 05:18:30'),
(199, 'How-To Note  Disability  Inclusive  Education', 'http://www.rodra.co.za/images/documents/inclusive_education_toolkits/How%20to%20Note%20-%20Disability%20Inclusive%20Education.pdf', 0, 'en', 1, 1, 1, '2022-05-10 05:20:32', '2022-05-10 05:20:32'),
(200, 'Still left behind:  Pathways  to inclusive  education  for girls with  disabilities', 'https://www.edu-links.org/sites/default/files/media/file/Still_Left_Behind_-_Pathways_to_Inclusive_Education_for_Girls_with_Disabilities.PDF', 0, 'en', 1, 1, 1, '2022-05-10 05:21:11', '2022-05-10 05:21:11'),
(201, 'Safe Schools  Action Pack 2', 'https://savethechildren1.sharepoint.com/:w:/r/what/child_protection/_layouts/15/Doc.aspx?sourcedoc=%7BB6E0A7C2-FA58-435D-AA7F-0CB43377BBB5%7D&file=Safe%20Schools%20Action%20Pack%202.docx&action=default&mobileredirect=true&cid=98e0f44f-304f-44a2-91b2-5be884a75b89', 0, 'en', 1, 1, 1, '2022-05-10 05:27:02', '2022-05-10 05:27:02'),
(202, 'INCLUSION  OF CHILDREN  WITH  DISABILITIES  IN SCHOOL', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2FInclusion%20of%20Children%20with%20disabilities%20in%20school%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources', 0, 'en', 1, 1, 1, '2022-05-10 05:27:46', '2022-05-10 05:27:46'),
(203, 'Financing  inclusive  education for  children with  disabilities  in Kosovo', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FKosovo%2FFinancing-CWD-ENG%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FKosovo', 0, 'en', 1, 1, 1, '2022-05-10 05:29:03', '2022-05-10 05:29:03'),
(204, 'Making schools  inclusive. How  change can  happen. Save  the Children’s  experience', 'https://www.eenet.org.uk/resources/docs/Making%20schools%20inclusive%20SCUK.pdf', 0, 'en', 1, 1, 1, '2022-05-10 05:29:35', '2022-05-10 05:29:35'),
(205, 'SAFE BACK TO  SCHOOL Guide  for supporting  inclusive and  equitable  learning for  the most  marginalized  children', 'https://resourcecentre.savethechildren.net/document/safe-back-school-guide-supporting-inclusive-and-equitable-learning-most-marginalised/', 0, 'en', 1, 1, 1, '2022-05-10 05:30:05', '2022-05-10 05:30:05'),
(206, 'How inclusive is my school: a school self-assessment!', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7B09894B87-84AD-45B7-BA67-21B022D0962F%7D&file=How%20inclusive%20is%20my%20school%20-%20a%20school%20self-assessment.docx&action=default&mobileredirect=true&cid=ffe38761-4ec2-4ad5-a442-004a2a2ea944', 0, 'en', 1, 1, 1, '2022-05-10 07:47:26', '2022-08-08 10:12:13'),
(207, 'Inclusive Education in Low-income  Countries', 'https://www.eenet.org.uk/resources/docs/Inclusive_Education_in_Low_Income_Countries.pdf', 0, 'en', 1, 1, 1, '2022-05-10 07:48:45', '2022-05-10 07:48:45'),
(208, 'TOOL #13  Sparking  grassroots  coalition  building', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/AccessDenied.aspx?Source=https%3A%2F%2Fsavethechildren1%2Esharepoint%2Ecom%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2F%5Flayouts%2F15%2FDoc%2Easpx%3Fsourcedoc%3D%257B50A6E80A%2D6824%2D436F%2DA313%2D39FC61B4CBA9%257D%26file%3D%252312%2520TOOL%5F6%2EPolicy%2520%2526%2520Systems%5FCoalition%5Fbuilding%5Fv6%5FSC%2Edocx%26action%3Ddefault%26mobileredirect%3Dtrue%26cid%3Dfe2e733c%2Dfa4d%2D4163%2Da769%2D6f7e9efbb905&correlation=6e56fb9f%2Dc071%2D3000%2D6ace%2D183cd4951a59&Type=item&name=42ac5345%2Da33f%2D4910%2Da5e8%2D926416fb669c&listItemId=103030', 0, 'en', 1, 1, 1, '2022-05-10 07:51:28', '2022-05-10 07:51:28'),
(209, 'SAFE SCHOOLS ACTION PACK 1: Policies and Systems', 'https://savethechildren1.sharepoint.com/what/child_protection/Pages/Safe-Schools-Action-Pack-1.aspx', 0, 'en', 1, 1, 1, '2022-05-10 07:52:00', '2022-05-10 07:52:00'),
(210, 'Inclusive  education –  Working to  fulfil the right  to education  for all children.  Inclusive  Education  for Save the  Children  Employees – 3  Day Training', 'https://savethechildren1.sharepoint.com/:w:/r/what/education/_layouts/15/Doc.aspx?sourcedoc=%7BDD9ED13A-27A4-41A7-8EBC-BCD046449BE4%7D&file=Inclusive%20education_Working%20to%20fulfill%20the%20right%20to%20education%20for%20all%20children_facilitators%20guide_US_3days.docx&action=default&mobileredirect=true&DefaultItemOpen=1&cid=e35c47f0-d0a5-4b06-98aa-ba914273ff4d', 0, 'en', 1, 1, 1, '2022-05-10 07:52:41', '2022-05-10 07:52:41'),
(211, 'Safe Back  to School –  Epidemiological  Impact and  Policy', 'https://savethechildren1.sharepoint.com/sites/InclusiveEducationTechnicalResourcePackage/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources%2FSafe%20Back%20to%20School%20%2D%20Epidemiological%20Impact%20and%20Policy%2Epdf&parent=%2Fsites%2FInclusiveEducationTechnicalResourcePackage%2FShared%20Documents%2F1%2E%20Resources%2F1%2E%20Key%20Resources%20for%20Review%2FLost%20resources', 0, 'en', 1, 1, 1, '2022-05-10 07:53:40', '2022-05-10 07:53:40'),
(212, 'SAFE  SCHOOLS: THE  HIDDEN CRISIS  – A framework  for action to  deliver Safe,  Non-violent,  Inclusive,  and Effective  Learning  Environments', 'https://www.edu-links.org/sites/default/files/media/file/Theirworld-Report-Safe-Schools-December-2018.pdf', 0, 'en', 1, 1, 1, '2022-05-10 07:54:13', '2022-05-10 07:54:13'),
(213, 'Teacher  Professional  Learning for  Inclusion Policy  Self-Review Tool', 'https://www.european-agency.org/resources/publications/TPL4I-policy-self-review-tool', 0, 'en', 1, 1, 1, '2022-05-10 07:54:48', '2022-05-10 07:54:48'),
(214, 'TOOL #14 DPO  collaboration  strategies', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BEBA95F6D-776E-4020-9010-F378CF69B19F%7D&file=%2313%20TOOL_6.Policy%20%26%20Systems_DPO_v5_SC.docx&action=default&mobileredirect=true&cid=90178907-d79a-4ce2-89bd-14664618fab4', 0, 'en', 1, 1, 1, '2022-05-10 07:55:44', '2022-05-10 07:55:44'),
(215, 'TOOL #15  Stakeholder  alignment  workshop  template', 'https://savethechildren1.sharepoint.com/:w:/r/sites/InclusiveEducationTechnicalResourcePackage/_layouts/15/Doc.aspx?sourcedoc=%7BFAAB27AB-2476-40CC-91A0-E477D93AA9DD%7D&file=%2314%20TOOL_6.Policy%20%26%20Systems_Stakeholder_alignment_workshop_v5_SC.docx&action=default&mobileredirect=true&cid=fe35a5f6-3325-47ab-9ffa-86d961fde8e6', 1, 'en', 1, 1, 1, '2022-05-10 07:56:24', '2022-08-04 04:03:28'),
(216, 'UNIVERSAL DESIGN FOR LEARNING TO HELP ALL CHILDREN READ - Promoting Literacy For Learners With Disa-Bilities', 'https://www.edu-links.org/sites/default/files/media/file/Literacy%20for%20All%20toolkit_v4.1_0.pdf', 0, 'en', 1, 1, 1, '2022-05-29 07:32:25', '2022-05-29 07:32:25'),
(217, 'Note: a new  module  addressing  this issue  from the safe  school common  approach is  due in 2021.', NULL, 0, 'en', 1, 1, 1, '2022-07-03 07:33:26', '2022-07-03 07:33:26'),
(218, '( See the Resource  Library for  SNAP Teacher  Training whole  package and  updated tools)', 'https://savethechildren1.sharepoint.com/what/education/ResourceLibrary/Forms/InclusiveEducation_SNAP40.aspx', 0, 'en', 1, 1, 1, '2022-07-06 08:20:26', '2022-07-06 08:23:25'),
(219, '(See The Resource Library For Updated Tools)', 'https://savethechildren1.sharepoint.com/what/education/ResourceLibrary/Forms/InclusiveEducation_SNAP40.aspx', 0, 'en', 1, 1, 1, '2022-07-06 08:34:57', '2022-07-06 08:34:57'),
(220, 'See the  Overview  Document  to gain an  understanding  of the  methodology  and  guidance for  implementation;', NULL, 0, 'en', 1, 1, 1, '2022-07-07 10:08:39', '2022-07-07 10:08:39'),
(221, 'See the ILET  Package to  find further  Guidance  Documents,  Data  Management  platform, tools  and handbook,  and Program  Templates  (school findings  Cards, School  Improvement  Plan Poster,  results  frameworks  and budget)', NULL, 0, 'en', 1, 1, 1, '2022-07-07 10:11:35', '2022-07-07 10:11:35'),
(222, 'test', 'https://www.google.com/', 0, 'es', 1, 1, 1, '2023-01-28 22:33:51', '2023-01-28 22:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `name`, `district_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Upazila', 1, 1, NULL, NULL, '2021-10-18 00:43:50', '2021-10-18 00:43:57'),
(2, 'Upazila1', 1, 1, NULL, NULL, '2021-10-19 04:23:46', '2021-10-19 04:24:49'),
(3, 'Upazila 3', 1, 1, 1, 1, '2021-10-20 23:11:54', '2021-10-20 23:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone_no` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `verify_code` varchar(6) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `nationalid` varchar(20) DEFAULT NULL,
  `study_type` varchar(255) DEFAULT NULL,
  `institute_name` varchar(255) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `upazila_id` int(11) DEFAULT NULL,
  `post_code` varchar(15) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `device_id` text DEFAULT NULL,
  `provider_type` text DEFAULT NULL,
  `social_id` text DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone_no`, `email`, `verify_code`, `gender`, `dob`, `address`, `nationalid`, `study_type`, `institute_name`, `division_id`, `district_id`, `upazila_id`, `post_code`, `avatar`, `device_id`, `provider_type`, `social_id`, `points`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mamun', '01623994640', 'mamunmo25@gmail.com', NULL, '', '0000-00-00', '', NULL, '', '', 0, 0, 0, '', '1/350X350/618cab39acdbf1636608825.jpg', NULL, 'local', '', 25, 1, NULL, '$2y$10$Xdb95seGyJXSkTwjUhlg5.Z/HCB1AhaZOqPgV2oR8LWbhIQbb7UWy', NULL, '2021-10-26 04:27:19', '2021-11-11 05:33:45'),
(2, '', '+08801623994640', '', NULL, '', '0000-00-00', '', NULL, '', '', 0, 0, 0, '', '', NULL, 'local', '', 0, 0, NULL, '$2y$10$Ra70SjR8dr6kROnz6tCud.06cZxVw7pkDTc56a2ShgPd1KtEYcLDi', NULL, '2021-10-31 23:27:44', '2021-10-31 23:27:44'),
(3, 'Mamun', 'mamunmo21@gmail.com', 'mamunmo21@gmail.com', NULL, '', '0000-00-00', '', NULL, '', '', 0, 0, 0, '', 'https://lh3.googleusercontent.com/a-/AOh14GjeNgP8Hjfz24KzhXf_XX5UL-Osk8Wr5yoCynVdsA=s96-c', NULL, 'google', '109132695797037699396', 10, 1, NULL, '$2y$10$Xdb95seGyJXSkTwjUhlg5.Z/HCB1AhaZOqPgV2oR8LWbhIQbb7UWy', 'eiaXGsuX2x3HCWqWmvPXMlWAqkcMpTFsN7KyQeehoatD7vx6lPPKPhlc624A', '2021-10-31 23:53:30', '2021-11-08 02:59:08'),
(4, 'CyberTeens volunteer', 'cyberteensvolunteer@gmail.com', 'cyberteensvolunteer@gmail.com', NULL, '', '0000-00-00', '', NULL, '', '', 0, 0, 0, '', '', NULL, 'google', '110789960887259426256', 0, 0, NULL, '', NULL, '2021-11-09 21:38:35', '2021-11-09 21:38:35'),
(5, 'cyberteensvolunteer', 'cyberteensvolunteer1@gmail.com', 'cyberteensvolunteer1@gmail.com', NULL, '', '0000-00-00', '', NULL, '', '', 0, 0, 0, '', '', NULL, 'google', '110789960887259426256', 0, 0, NULL, '', NULL, '2021-11-10 00:26:15', '2021-11-10 00:26:15'),
(6, '', '01623994641', '', NULL, '', '0000-00-00', '', NULL, '', '', 0, 0, 0, '', '', NULL, 'local', '', 0, 0, NULL, '$2y$10$xELK6J5U6Xizpu2qN8bCPubm.xRSG26ffHIgBPK18lp9PaC12emoy', NULL, '2021-11-24 01:54:35', '2021-11-24 01:54:35'),
(7, '', '01623994643', '', NULL, '', '0000-00-00', '', NULL, '', '', 0, 0, 0, '', '', NULL, 'local', '', 0, 0, NULL, '$2y$10$FB0UaJolGMwA/HLsKurPSeVqxojRmp9Qjo2oBZfLVnE2v59vErrqC', NULL, '2021-11-24 01:55:11', '2021-11-24 01:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `you_tubes`
--

CREATE TABLE `you_tubes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `video_id` text NOT NULL,
  `activision_time` decimal(5,2) DEFAULT NULL,
  `duration_time` decimal(5,2) DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `order_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `you_tubes`
--

INSERT INTO `you_tubes` (`id`, `name`, `video_id`, `activision_time`, `duration_time`, `ip`, `image`, `title`, `description`, `published_at`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, 'Category 12', 'CHRMRsVu4do', '10.00', '15.00', '::1', 'https://i.ytimg.com/vi/CHRMRsVu4do/mqdefault.jpg', 'Dil Laga Liya Maine - Lyrical | Dil Hai Tumhaara | Preity & Arjun Rampal | Alka Yagnik, Udit Narayan', 'Watch \'Dil Laga Liya\', a beautiful romantic song from the movie \'Dil Hai Tumhaara\'. Sung by Alka Yagnik & Udit Narayan Composed by Nadeem Shravan.\n\nStay updated with the latest videos from Tips Music, Subscribe to the below link.\nhttp://bit.ly/TipsOfficial\n\nSong Credits :\nSinger(s) : Alka Yagnik & Udit Narayan\nMusic Director: Nadeem Shravan\nLyricist: Sameer\nEdit & Gfx : Nadeem Akhtar (Paperboyz Studioz)\n\nMovie Cast & Crew :\nProducer: Tips Films\nDirector: Kundan Shah\nCast: Preity Zinta, Mahima Chaudhry, Arjun Rampal, Jimmy Shergill & Rekha\n\nSong Lyrics:\n\nHey Hey Hey Hey Hey\nAa Aa Aa Aa Aa \nHey Hey Hey Hey Hey\nAa Aa Aa Aa Aa\n\nDil Laga Liya\nMaine Tumse Pyaar Karke \nTumse Pyaar Karke\nTumse Pyaar Karke\nDil Laga Liya\nMaine Tumse Pyaar Karke \nTumse Pyaar Karke\nTumse Pyaar Karke\n\nDil Chura Liya\nMaine Ikraar Karke \nIkraar Karke, Ikraar Karke \nDil Laga Liya\nMaine Tumse Pyaar Karke \nTumse Pyaar Karke\nTumse Pyaar Karke \n\nMere Diljaani Mere\nMaahi Mere Dholna \nKoi Sun Lega Zara\nDheere Dheere Bolna \nHaan, Ishq Kiya Hai Maine\nChori Nahin Ki Hai \nTere Sang Yaara\nJora Jori Nahin Ki Hai \n\nChain Le Liya\nMaine Beqaraar Karke \nBeqaraar Karke, Beqaraar Karke \nDil Laga Liya\nMaine Tumse Pyaar Karke \nTumse Pyaar Karke\nTumse Pyaar Karke\n\nBeech Safar Mein Kahin\nMera Saath Chhodke \nTujhko Kasam Hai\nNaiyyo Jaana Dil Todke \nKaise Main Bataaoon Tujhe\nKaisa Mera Haal Ve \nJeena Marna Hai Sab\nAb Tere Naal Ve \n\nTujhko Paa Liya\nTera Intezaar Karke \nIntezaar Karke, Intezaar Karke\nDil Laga Liya\nMaine Tumse Pyaar Karke \nTumse Pyaar Karke, Tumse Pyaar Karke\n\n#DilLagaLiya #DilHaiTumhaara #PreityZinta #ArjunRampal #AlkaYagnik #UditNarayan\n\nJoin Us On\nhttp://youtube.com/tipsofficial​​​\nhttps://youtube.com/tipsfilms​​​\nhttps://youtube.com/tipspunjabi​​\nhttp://youtube.com/jhankargaane​​​\nhttp://youtube.com/volume​​​\nhttp://youtube.com/tipsmarathi​​​\nhttp://bit.ly/TipsGujarati\n​http://bit.ly/TipsBhojpuriChannel\n​​https://bit.ly/TipsHaryanvi\n​​http://youtube.com/bhaktiprem​​​\nhttps://www.facebook.com/TipsMusic\n​​​https://www.instagram.com/tips​\n​​https://twitter.com/tipsofficial', '2021-09-21 02:30:04', 15, 0, 1, 1, '2021-11-01 00:00:14', '2021-11-09 00:05:55'),
(7, 'Category 12', 'amIGJVFXy5o', '12.00', '25.00', '::1', 'https://i.ytimg.com/vi/amIGJVFXy5o/mqdefault.jpg', 'Cheez Badi Bollywood Song | Machine | Mustafa & Kiara Advani | Udit Narayan & Neha Kakkar | T-Series', 'Cheez Badi Bollywood Song | Machine | Mustafa & Kiara Advani | Udit Narayan & Neha Kakkar | T-Series\nCRYPTO SHILLING SERVICES COINMARKETSTORE |UPVOTE SERIVCE | GET TO #1 TODAY USING COINMARKETSTORE.CC\nFind the best new cryptocurrency projects! Vote for your favorite coins, and see what\'s trending\nBest Coins Today\nFind the top voted coins of the last 24 hours\nPromoted coins\nOur website https://coinmarketstore.cc/ \nPromote your coin to be seen by tens of thousands of visitors daily\nhttps://coinmarketstore.cc/promote-coins \nTelegram: \n@coinmarketstore_ads\nhttps://t.me/coinmarketstore\nThe price of our services\n100 coinmarketstore Votes - 0.015 BNB\n500 coinmarketstore Votes - 0.075 BNB\n1k coinmarketstore Votes - 0.135 BNB\n5k coinmarketstore Votes - 0.600 BNB\n10k coinmarketstore Votes - 1.200 BNB\nPromoted Coins - 0.25 bnb/day\nCarousel Banner - 0.5 bnb/day\nHighlight Banner - 0.8 bnb/day\nPopup Banner - 1 bnb/day\n\n https://spoti.fi/3b8aoBZ\nPresenting the full video song Tu cheez Badi hai mast mast from the Bollywood Movie \"MACHINE\". This Movie is a  romantic thriller film, directed by Abbas–Mustan. The film stars Indian actors Mustafa and Kiara Advani in the lead roles. The film has been produced by Jayantilal Gada (PEN), Haresh Patel (AD Films), Pranay Chokshi, Abbas Mustan Films Productions and Dhaval Jayantilal Gada. Theatrical trailer will release on 25 February 2017\n\nSong ♫Also Available On:\nHungama - http://bit.ly/Machine_Hungama\nSaavn - http://bit.ly/Machine_fullalbum\niTunes : http://bit.ly/machine-itunes\nApple Music: http://bit.ly/machine-apple\n\nFor Caller Tunes :\nCheez Badi http://bit.ly/2m6aYmL\nKaliyon Jaisa - Cheez Badi http://bit.ly/2mrTCE6 \nSet \"Cheez Badi\" as your caller tune - sms MACHN13 To 54646\nSet \"Kaliyon Jaisa - Cheez Badi\" as your caller tune - sms MACHN14 To 54646\n________________________________________\nOperator Codes: \n1. Cheez Badi\nVodafone Subscribers Dial 5379303150\nAirtel Subscribers Dial 5432116149902\nReliance Subscribers SMS CT 9303150 to 51234\nIdea Subscribers Dial 567899303150\nTata DoCoMo Subscribers dial 5432119303150\nAircel Subscribers sms DT 6578034  To 53000\nBSNL (South / East) Subscribers sms BT 9303150 To 56700\nBSNL (North / West) Subscribers sms BT 6578034 To 56700\nVirgin Subscribers sms TT 9303150 To 58475\nMTS Subscribers  sms CT 6577761 to 55777\nTelenor Subscribers dial 50016577778\nMTNL Subscribers sms PT 9303150 To 56789\n\n2. Kaliyon Jaisa - Cheez Badi\nVodafone Subscribers Dial 5379303148\nAirtel Subscribers Dial 5432116150119\nReliance Subscribers SMS CT 9303148 to 51234\nIdea Subscribers Dial 567899303148\nTata DoCoMo Subscribers dial 5432119303148\nAircel Subscribers sms DT 6578035  To 53000\nBSNL (South / East) Subscribers sms BT 9303148 To 56700\nBSNL (North / West) Subscribers sms BT 6578035 To 56700\nVirgin Subscribers sms TT 9303148 To 58475\nMTS Subscribers  sms CT 6577762 to 55777\nTelenor Subscribers dial 50016577779\nMTNL Subscribers sms PT 9303148 To 56789\n\nSONG CREDITS:\nSong - Cheez Badi \nSingers - Udit Narayan & Neha Kakkar\nLyrics- Anand Bakshi\nAdditional Lyrics - Shabbir Ahmed\nOriginal Music - Viju Shah\nProgrammed By - Tanishk Bagchi\nMusic on- T-Series\n\nOriginal Song Credits: Tu Cheez Badi Hai Mast Mast\" \nSinger: Udit Narayan, Kavita Krishnamurthy\nMusic composed by: Viju Shah\n-----\nEnjoy & stay connected with us!\n► Subscribe to T-Series: http://bit.ly/TSeriesYouTube\n► Like us on Facebook: https://www.facebook.com/tseriesmusic\n► Follow us on Twitter: https://twitter.com/tseries\n► Follow us on Instagram: http://bit.ly/InstagramTseries\n► Circle us on G+: http://www.google.com/+tseriesmusic\n► Find us on Pinterest: http://pinterest.com/tseries\nmachine,machine songs,Tu Cheez Badi Hai Mast Mast,songs 2017,amazing,Mohra,Akshay Kumar,Sunil Shetty,Raveena Tandon,tu cheez badi hai mast mast remix,tu cheez badi hai mast mast full song,tu cheez badi hai mast mast song,tucheezbadihaimast,akshay kumar songs,akshay kumar,new songs,akshay kumar mohra songs,akshay', '2020-01-17 01:40:49', 2, 1, 1, 1, '2021-11-08 23:11:39', '2021-11-08 23:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `you_tube_watches`
--

CREATE TABLE `you_tube_watches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_id` text NOT NULL,
  `duration_time` decimal(5,2) DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `you_tube_watches`
--

INSERT INTO `you_tube_watches` (`id`, `video_id`, `duration_time`, `ip`, `user_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'amIGJVFXy5o', '20.30', '::1', 1, 1, 1, 1, '2021-11-09 08:13:17', '2021-11-09 08:13:17'),
(2, 'amIGJVFXy5o', '20.30', '::1', 1, 1, 1, 1, '2021-11-09 08:33:49', '2021-11-09 08:33:49'),
(3, 'amIGJVFXy5o', '20.30', '::1', 1, 1, 1, 1, '2021-11-09 08:34:36', '2021-11-09 08:34:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
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
-- Indexes for table `countries`
--
ALTER TABLE `countries`
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
-- Indexes for table `editor_drafts`
--
ALTER TABLE `editor_drafts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `further_readings`
--
ALTER TABLE `further_readings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intersectionality_tips`
--
ALTER TABLE `intersectionality_tips`
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
-- Indexes for table `relevant_indicators`
--
ALTER TABLE `relevant_indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `submit_works`
--
ALTER TABLE `submit_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toolkits`
--
ALTER TABLE `toolkits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toolkit_categories`
--
ALTER TABLE `toolkit_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toolkit_relevant_indicator_relations`
--
ALTER TABLE `toolkit_relevant_indicator_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toolkit_tool_methodology_relations`
--
ALTER TABLE `toolkit_tool_methodology_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toolkit_tool_relations`
--
ALTER TABLE `toolkit_tool_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tool_methodologies`
--
ALTER TABLE `tool_methodologies`
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
  ADD UNIQUE KEY `users_phone_no_unique` (`phone_no`,`provider_type`(30)) USING BTREE;

--
-- Indexes for table `you_tube_watches`
--
ALTER TABLE `you_tube_watches`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_menus`
--
ALTER TABLE `auth_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `editor_drafts`
--
ALTER TABLE `editor_drafts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `further_readings`
--
ALTER TABLE `further_readings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `intersectionality_tips`
--
ALTER TABLE `intersectionality_tips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `menu_actions`
--
ALTER TABLE `menu_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `page_menus`
--
ALTER TABLE `page_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `relevant_indicators`
--
ALTER TABLE `relevant_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `submit_works`
--
ALTER TABLE `submit_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `toolkits`
--
ALTER TABLE `toolkits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `toolkit_categories`
--
ALTER TABLE `toolkit_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `toolkit_relevant_indicator_relations`
--
ALTER TABLE `toolkit_relevant_indicator_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=637;

--
-- AUTO_INCREMENT for table `toolkit_tool_methodology_relations`
--
ALTER TABLE `toolkit_tool_methodology_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;

--
-- AUTO_INCREMENT for table `toolkit_tool_relations`
--
ALTER TABLE `toolkit_tool_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2043;

--
-- AUTO_INCREMENT for table `tool_methodologies`
--
ALTER TABLE `tool_methodologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `you_tube_watches`
--
ALTER TABLE `you_tube_watches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
