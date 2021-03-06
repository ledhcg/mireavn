-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 05, 2021 at 04:58 AM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u305683932_mireavn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('MALE','FEMALE','OTHER') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MALE',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `gender`, `phone`, `address`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@mireavn.ru', 'MALE', '', '', '', 'admin@mireavn.ru', NULL, '$2y$10$fM6LEDvXf4LkoFOjkPEdiOo1aHzCU7p3zrrmHSuyvEsN3DS2zoet6', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
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
-- Table structure for table `i_k_b_o_s`
--

CREATE TABLE `i_k_b_o_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `i_k_b_o_s`
--

INSERT INTO `i_k_b_o_s` (`id`, `name`, `image`, `email`, `position`, `facebook`, `github`, `instagram`, `vk`, `created_at`, `updated_at`) VALUES
(1, 'L?? ????nh C?????ng', 'cuong.jpg', 'dinhcuong.firewin99@gmail.com', 'WEB DEVELOPER', 'ledhcg', 'ledhcg', 'ledhcg', 'kifirlee', NULL, NULL),
(2, 'V?? Xu??n C???nh', 'canh.jpg', 'xuancanhit99@gmail.com', 'WEB DEVELOPER', 'xuancanhit99', 'xuancanhit99', 'xuancanh.vu', 'xuancanhit99', NULL, NULL),
(3, 'Ph????ng Ti???n ????ng', 'dong.jpg', 'dongpt410@gmail.com', 'WEB DEVELOPER', 'tiendong.2000', 'phuongtiendong', 'phuongtien.dong', 'id602943301', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `list_votes`
--

CREATE TABLE `list_votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`result`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_17_150759_create_admins_table', 1),
(6, '2021_10_23_123447_create_notifications_table', 1),
(7, '2021_10_29_155711_create_candidates_table', 1),
(8, '2021_10_29_184839_create_settings_table', 1),
(9, '2021_10_30_143217_create_list_votes_table', 1),
(10, '2021_11_04_170335_create_i_k_b_o_s_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('rific99@gmail.com', 'WaHnjsvKIhgBi6Zz5gSqjUczG4rzpvEJN2GsjfM6CXzSM7Yghccr3hK2uICG5Nn1', '2021-11-04 23:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty_receive` int(11) NOT NULL DEFAULT 5,
  `qty_total` int(11) NOT NULL DEFAULT 7,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `qty_receive`, `qty_total`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'INACTIVE', NULL, '2021-11-04 19:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tr???n Ho??ng Anh', 'avatar.png', 'anh99hoangtran@gmail.com', 'INACTIVE', NULL, '$2y$10$prya./zYdcAiJ/8BaA1Jju76xuzeAWqc2kVKcZ9fTcKljNH73DSEy', NULL, '2021-11-05 04:47:21', '2021-11-05 04:47:21'),
(2, 'H??? Th??? Ng???c ??nh', 'avatar.png', 'anhthiho.xata@gmail.com', 'INACTIVE', NULL, '$2y$10$ZQ5SfVbvI7UL8sfV7v7mh.ePUS86kDasNDwzdN.cLxPMgCyf2wreG', NULL, '2021-11-05 04:47:22', '2021-11-05 04:47:22'),
(3, 'Nguy???n Xu??n B??ch', 'avatar.png', 'nxb17111999@gmail.com', 'INACTIVE', NULL, '$2y$10$DJhfwJLaJnsxDGMpLeLKqeDbAXyFDn4jQYHEVUWFuk.vFhvkCVqeS', NULL, '2021-11-05 04:47:23', '2021-11-05 04:47:23'),
(4, 'V?? Xu??n C???nh', 'avatar.png', 'xuancanhit99@gmail.com', 'INACTIVE', NULL, '$2y$10$29NaVMcc6SQA80tmFIoCKOOF8laBKn.iJe4W3Q8QWNKiDURtQhad6', NULL, '2021-11-05 04:47:23', '2021-11-05 04:47:23'),
(5, 'V?? Tr?? Chi???n', 'avatar.png', 'vutrichien00@gmail.com', 'INACTIVE', NULL, '$2y$10$1w.O6g.nNF7I/9SPT/9hBen9jsIQYHn4og/7bhKPCi1NZv2VwziM6', NULL, '2021-11-05 04:47:24', '2021-11-05 04:47:24'),
(6, 'L?? ????nh C?????ng', 'avatar.png', 'dinhcuong.firewin99@gmail.com', 'INACTIVE', NULL, '$2y$10$29w/g//ISaZMG0qWJrCAm.Lu2.fvrX./Nz60Xu538ZvBq548It0Bu', NULL, '2021-11-05 04:47:24', '2021-11-05 04:47:24'),
(7, 'Nguy???n Th??? Danh', 'avatar.png', 'nguyendanh2401@gmail.com', 'INACTIVE', NULL, '$2y$10$Chpc9vp5rXjd0BOcAd299.nm7.Lyg3aKhqL2/fspt9gMUQGTArI.O', NULL, '2021-11-05 04:47:25', '2021-11-05 04:47:25'),
(8, 'Ho??ng V??n D??ng', 'avatar.png', 'tuandung@mail.ru', 'INACTIVE', NULL, '$2y$10$yyfti406b366iPO2dvUaheES5mnOeIOtETewLg8KIn8HVbPcxEMRu', NULL, '2021-11-05 04:47:25', '2021-11-05 04:47:25'),
(9, 'Mai Ti???n D??ng', 'avatar.png', 'maitiendungtn1999@gmail.com', 'INACTIVE', NULL, '$2y$10$NbFcpQ8KCK42vU3E0e7KauMnrf8gKIIZAGSbxft/TKnPuzvJ9Ly7C', NULL, '2021-11-05 04:47:26', '2021-11-05 04:47:26'),
(10, 'Ph???m Quang D??ng', 'avatar.png', 'phamquangdung92@gmail.com', 'INACTIVE', NULL, '$2y$10$6mnMhudFWPK2PLRbVKlJUu5uQAg8AH4cDE4UzU2VE5UW/b8/uehn2', NULL, '2021-11-05 04:47:26', '2021-11-05 04:47:26'),
(11, 'Nguy???n Vi???t ????ng', 'avatar.png', 'vietdang94@gmail.com', 'INACTIVE', NULL, '$2y$10$YREv5QjvR34Rwowt.fg91eblsrEnzhC2PhueunP200dcqm17FS6ka', NULL, '2021-11-05 04:49:51', '2021-11-05 04:49:51'),
(12, 'Ph????ng Ti???n ????ng', 'avatar.png', 'dongpt410@gmail.com', 'INACTIVE', NULL, '$2y$10$AFCu1Do/VSgsAQg3GdY71.dmUtXnX9tZuwpvawVCNC0fvdb40zkSK', NULL, '2021-11-05 04:49:51', '2021-11-05 04:49:51'),
(13, 'Nguy???n C??ng ?????c', 'avatar.png', 'ngcongduc9x@gmail.com', 'INACTIVE', NULL, '$2y$10$VuU3ZyisfSSw3tOW76/NJe97yPjn1uoVlYPC4ecAqFAId7aCmRTji', NULL, '2021-11-05 04:49:52', '2021-11-05 04:49:52'),
(14, 'Ph???m H????ng Giang', 'avatar.png', 'mionna1999@gmail.com', 'INACTIVE', NULL, '$2y$10$URiSo67iLxdy55eB.UMvve9JLZeQwDPReltJl2DfI9VFUXI2IZD2C', NULL, '2021-11-05 04:49:52', '2021-11-05 04:49:52'),
(15, '????? V??n Gi???ng', 'avatar.png', 'dovangiang1996@gmail.com', 'INACTIVE', NULL, '$2y$10$wAK9Aj8iJgYSTVUFOoM0C.O1SMMPVmJQ1NzpZRrC8CHltIb/.s2Wa', NULL, '2021-11-05 04:49:53', '2021-11-05 04:49:53'),
(16, 'Nguy???n Thu H??', 'avatar.png', 'thuha18041997@gmail.com', 'INACTIVE', NULL, '$2y$10$0QnRTc6RRONDGr3DIs6hjeGYUeIjdrjMJWasl23/2l3gFVRTfZ1LG', NULL, '2021-11-05 04:49:54', '2021-11-05 04:49:54'),
(17, 'Ph???m Xu??n H???nh', 'avatar.png', 'phamxuanhanhld161@gmail.com', 'INACTIVE', NULL, '$2y$10$O7dBlkmOPYzEigaHsFOOTe.V7YGCnXL8vtBA4FmMfGsj3zOAuHnUW', NULL, '2021-11-05 04:49:54', '2021-11-05 04:49:54'),
(18, 'Tr???n Minh H???ng', 'avatar.png', 'tranminhhang.2512@gmail.com', 'INACTIVE', NULL, '$2y$10$/D2Ey63KJz0D08dzjuSM/eMVvF7M2tQ0GT.baDAA7iiBS8A/n6Uve', NULL, '2021-11-05 04:49:55', '2021-11-05 04:49:55'),
(19, 'L?? Thanh Hi???n', 'avatar.png', 'lethanhhien9925@gmail.com', 'INACTIVE', NULL, '$2y$10$2RkurOcd8/pokGN.hLTVmexyDCG2Vqf9KMsDaMggzV5lKozIsw/Pi', NULL, '2021-11-05 04:49:55', '2021-11-05 04:49:55'),
(20, 'Nguy???n Minh Hi???u', 'avatar.png', 'hieuminh735@gmail.com', 'INACTIVE', NULL, '$2y$10$/HWjRxEr.Lu4nJdD.8Qtc.glUk7iajtW7twPfqqZVTh6YhCcl5iMu', NULL, '2021-11-05 04:49:56', '2021-11-05 04:49:56'),
(21, 'C??p V??n H??a', 'avatar.png', 'hoacapvan1@gmail.com', 'INACTIVE', NULL, '$2y$10$6i2kZrPCykKOPFKgvCKSZ.YpkhKvdOfAffSScCBT6nCkD6whRnzp2', NULL, '2021-11-05 04:51:24', '2021-11-05 04:51:24'),
(22, 'Tr???n Th??? Thu Ho??n', 'avatar.png', 'tranthuhoan06@gmail.com', 'INACTIVE', NULL, '$2y$10$05JviuUj62veZcaPOHNK.OnCbgWnuN6NguzU/Kv5RP35NrpvpM8ES', NULL, '2021-11-05 04:51:24', '2021-11-05 04:51:24'),
(23, 'L?? V??n H??ng', 'avatar.png', 'hunglo6720@gmail.com', 'INACTIVE', NULL, '$2y$10$F71rWu/tLrqMVBkgvjbBMu6QZ0XWf4TYaFlk3V0nR75Xt.MWBiPqe', NULL, '2021-11-05 04:51:25', '2021-11-05 04:51:25'),
(24, 'Tr???n Th??? Kh??nh Huy???n', 'avatar.png', 'trankhanhmy18@gmail.com', 'INACTIVE', NULL, '$2y$10$cQxDIDMpFnI9wgc7mnRZCeEHPsxc2Up27Jy744q26UbJcUm489Pia', NULL, '2021-11-05 04:51:25', '2021-11-05 04:51:25'),
(25, 'Nguy???n Quang H??ng', 'avatar.png', 'qhung1403@gmail.com', 'INACTIVE', NULL, '$2y$10$ZEBSOknmhCkD.O3qfVPvWORQ/sFfrNMMzmxnU7OWATN6yXT3FxuLW', NULL, '2021-11-05 04:51:26', '2021-11-05 04:51:26'),
(26, '?????ng Xu??n Khang', 'avatar.png', 'dangxuankhang147@gmail.com', 'INACTIVE', NULL, '$2y$10$aWUkjBP9jO8Jcg2UMqmvRO/1rL32JPeUGaffEhgqYaVL6RnuIMzry', NULL, '2021-11-05 04:51:26', '2021-11-05 04:51:26'),
(27, 'H??? Nh???t Kh??nh', 'avatar.png', 'vmu18honhatkhanh@gmail.com', 'INACTIVE', NULL, '$2y$10$R5rEBmI3gpj3/REq7BbgxubKdrVh92X9UxyRk6CpvKbv/0f6oRImK', NULL, '2021-11-05 04:51:27', '2021-11-05 04:51:27'),
(28, 'L?? Trung Ki??n', 'avatar.png', 'letrungkienlk4@gmail.com', 'INACTIVE', NULL, '$2y$10$G7R2ysb./3uwFbGW.N9XjeHHZCG/5nXQGQHn9Dizr3EcH5X9IX6dO', NULL, '2021-11-05 04:51:28', '2021-11-05 04:51:28'),
(29, '?????ng H???i Long', 'avatar.png', 'hailong27102000@gmail.com', 'INACTIVE', NULL, '$2y$10$MaUuuPaW//ea6hdqQSFGGOiGX9AsA8kVxE.ZLXL.AeMf.YDXCBzaS', NULL, '2021-11-05 04:51:28', '2021-11-05 04:51:28'),
(30, 'Nguy???n V??n M???nh', 'avatar.png', 'ngvmanh129@gmail.com', 'INACTIVE', NULL, '$2y$10$MhkZwk9EGOcFX98v2Fm1muAQn0Kvz2tEflLE60aMlskAjLUnf902q', NULL, '2021-11-05 04:51:29', '2021-11-05 04:51:29'),
(31, 'Th??i V??n M???nh', 'avatar.png', 'manh331919@gmail.com', 'INACTIVE', NULL, '$2y$10$/1flXj02NbdnXlKx.s11AOuYe.4oRrkBZinfSz.uSERdBLAjqsBBq', NULL, '2021-11-05 04:53:08', '2021-11-05 04:53:08'),
(32, 'Nguy???n V??n Minh', 'avatar.png', 'minhvtdt1009@gmail.com', 'INACTIVE', NULL, '$2y$10$tA3dxCnElm8zeTE4wqLy9OYN752CS2M51ixw2MSzpohIbrNbbSLAq', NULL, '2021-11-05 04:53:08', '2021-11-05 04:53:08'),
(33, 'Nguy???n Tr???ng Ngh??a', 'avatar.png', 'ntn221992@gmail.com', 'INACTIVE', NULL, '$2y$10$aG7X8iqMc2fGCTYYuBthduV3bQu1JgZABw7IgmLMKs/AZtbw7D.mq', NULL, '2021-11-05 04:53:09', '2021-11-05 04:53:09'),
(34, 'Ho??ng H???nh Nh??', 'avatar.png', 'hoanghanhnhu112@gmail.com', 'INACTIVE', NULL, '$2y$10$sJHs3ndEqb6pxRuLAaShauAKxBnzFftWddc0Jjgt77/.S7LV9Wj.W', NULL, '2021-11-05 04:53:09', '2021-11-05 04:53:09'),
(35, '??inh B?? Ph????ng', 'avatar.png', 'luaquehuong93ht@gmail.com', 'INACTIVE', NULL, '$2y$10$zPIex83evOSFHWb4ue4HhuXZkF7dSvzurF.sTNjID7ufy645c0UZK', NULL, '2021-11-05 04:53:10', '2021-11-05 04:53:10'),
(36, 'V????ng Tr?????ng S??n', 'avatar.png', 'tr.son.2112@gmail.com', 'INACTIVE', NULL, '$2y$10$msY2o9Th/vfFwn6fdZkXnuAFCUNWazf8UZGD.K7gwDn5D7ZW7Mc9O', NULL, '2021-11-05 04:53:10', '2021-11-05 04:53:10'),
(37, 'B??i V??n Thanh', 'avatar.png', 'buithanhmta.2020@gmail.com', 'INACTIVE', NULL, '$2y$10$bIU2FbjAmnxeOiqhgdGV3u0YAVy2YP4AaAp5nlSTsz5GuO4AUBRoy', NULL, '2021-11-05 04:53:11', '2021-11-05 04:53:11'),
(38, '????? Th??? Ph????ng Th???o', 'avatar.png', 'thaothao2396nd@gmail.com', 'INACTIVE', NULL, '$2y$10$CSNnA9n95ZeHG6W7PQleGOC/6R8ouN40co4Ic/Z59ZEpQTQAtDLkO', NULL, '2021-11-05 04:53:11', '2021-11-05 04:53:11'),
(39, '?????ng V??n Th???c', 'avatar.png', 'Thuc.dang0209@hcmut.edu.vn', 'INACTIVE', NULL, '$2y$10$S5K59Ch0mWcqnQR9l.4g5.9PTfS1KKsHh8D1rwPjHG7c2AFL55.6C', NULL, '2021-11-05 04:53:12', '2021-11-05 04:53:12'),
(40, 'Ph???m Th??? Ho??i Th????ng', 'avatar.png', 'phamthihoaithuong424@gmail.com', 'INACTIVE', NULL, '$2y$10$9q/EpDFjEq20H.iQG34Wv.FjaVR0m6m1yOYtdy0UNpymL7dYjQFHW', NULL, '2021-11-05 04:53:13', '2021-11-05 04:53:13'),
(41, '????? Trung Ti???n', 'avatar.png', 'dotrungtien1993@gmail.com', 'INACTIVE', NULL, '$2y$10$P08aWApq0eRG0.xXwohMne6fBXv8Tkz6IibAiXzScTyyE75Ot2q12', NULL, '2021-11-05 04:54:25', '2021-11-05 04:54:25'),
(42, 'L??u Ng???c Ti???n', 'avatar.png', 'alex05vn@gmail.com', 'INACTIVE', NULL, '$2y$10$rAmmvdxYAmBkn8rNYJWmzOYQYN3qPFI0c7xbXe7c0fcwN9CMI3ED.', NULL, '2021-11-05 04:54:26', '2021-11-05 04:54:26'),
(43, 'Nguy???n Xu??n T??nh', 'avatar.png', 'nguyenxuantinh000@gmail.com', 'INACTIVE', NULL, '$2y$10$HaZtG8/YlW6M2n/EVuIKW.0FEUVq9DoxMgXACnoxsvUR.NzI3tbiO', NULL, '2021-11-05 04:54:26', '2021-11-05 04:54:26'),
(44, 'Nguy???n H???u Th??nh Trung', 'avatar.png', 'tuclen123@gmail.com', 'INACTIVE', NULL, '$2y$10$hWvSvrgisfM7tq.BHRIXtuJJ7evacf5bK9/oVOQgcC7jLpkodTLhi', NULL, '2021-11-05 04:54:27', '2021-11-05 04:54:27'),
(45, '??inh Nh???t Tr?????ng', 'avatar.png', 'truongnhat128@gmail.com', 'INACTIVE', NULL, '$2y$10$nhiG6RCPetgj1e/n52vDV.ge59sThZ2QCHK35I18zJKFXRS6rtAR6', NULL, '2021-11-05 04:54:28', '2021-11-05 04:54:28'),
(46, 'Tr???n Anh T??', 'avatar.png', 'tutran1998.tt@gmail.com', 'INACTIVE', NULL, '$2y$10$jfFzPqQayUwnFaSoGVML/OVDYQPT/6hHYHZCwPMoXoolf9VXxJRFy', NULL, '2021-11-05 04:54:28', '2021-11-05 04:54:28'),
(47, 'Mai V??n Tu???n', 'avatar.png', '8268826@gmail.com', 'INACTIVE', NULL, '$2y$10$q6Z8w9trxNC7HxzWjjJv0..jqYkQRHNsrxED6X315EunWp6WiOlSG', NULL, '2021-11-05 04:54:29', '2021-11-05 04:54:29'),
(48, 'Nguy???n V??n Tu???n', 'avatar.png', 'tuanmya2pkkq@gmail.com', 'INACTIVE', NULL, '$2y$10$Mpl4yTZlgMssTFqo1JbDQOU/eylYhc1xEWq6tGhAyqLLC5w5g5T4q', NULL, '2021-11-05 04:54:29', '2021-11-05 04:54:29'),
(49, 'Ph???m Th??? Thanh V??n', 'avatar.png', 'fanvucattuong@gmail.com', 'INACTIVE', NULL, '$2y$10$bhDvmeEafr2ysTwFcCMDsug4K0sZE.XRsajfD0w/gOKtzMWSosz0C', NULL, '2021-11-05 04:54:30', '2021-11-05 04:54:30'),
(50, 'Nghi??m V?? Vinh', 'avatar.png', 'nghiemvuvinh@gmail.com', 'INACTIVE', NULL, '$2y$10$AW7DA5ZEGu92Xa25t7KwvOAZGq6VPszeLu9X.mk2bRkllABS6yOoW', NULL, '2021-11-05 04:54:30', '2021-11-05 04:54:30'),
(51, 'Ph???m Th??? Vinh', 'avatar.png', 'pmvinh99@gmail.com', 'INACTIVE', NULL, '$2y$10$OgwAf8rJbfWl220N4ya.XOGFMekJPLsb8oJRfUKhgv7D.nOEPGm3W', NULL, '2021-11-05 04:55:43', '2021-11-05 04:55:43'),
(52, 'Tr???n To??n Th???ng', 'avatar.png', 'trantoanthangat17@gmail.com', 'INACTIVE', NULL, '$2y$10$2RZfBckl8CGXvcht94Zda.jfpQ.mDNyxKnRwp6r9y14nhm1iUB3Dy', NULL, '2021-11-05 04:55:44', '2021-11-05 04:55:44'),
(53, 'Nguy???n Kh???c Thanh T??ng', 'avatar.png', 'nguyenkhacthanhtung12k2002@gmail.com', 'INACTIVE', NULL, '$2y$10$kl8ePhKDh7D7VtRkrcjm1uC4VDicrxlmFdguS5vWav2jDeC3R80Wm', NULL, '2021-11-05 04:55:44', '2021-11-05 04:55:44'),
(54, 'L?? H???ng Quang', 'avatar.png', 'quanghx13@gmail.com', 'INACTIVE', NULL, '$2y$10$Wloi9t8wdjLejlv/.fDvDe4G2OnTFMHNWGDmI5C107NN6Ui.UEmY2', NULL, '2021-11-05 04:55:45', '2021-11-05 04:55:45'),
(55, 'Tr???n Qu???c B???o', 'avatar.png', 'tbao3406@gmail.com', 'INACTIVE', NULL, '$2y$10$GD5.74xqkr8RzjBXc28xQek2GT12yws5zTSdiq4Ci3YrTDcn3/Hpi', NULL, '2021-11-05 04:55:45', '2021-11-05 04:55:45'),
(56, 'Nguy????n H????u B????ng', 'avatar.png', 'nbang8502@gmail.com', 'INACTIVE', NULL, '$2y$10$ByN7GnCoJItq5bO/UVKHfe8pfEg4XpdWrzOk0EzK/ilHoGcgzaTVO', NULL, '2021-11-05 04:55:46', '2021-11-05 04:55:46'),
(57, 'L?? Minh Ti????n', 'avatar.png', 'minhtien1mta@gmail.com', 'INACTIVE', NULL, '$2y$10$XZwDC8VVt3lC12LV.ax1we.zMT8f0g.KqDPDqKWRIlz3TzNJt.WCq', NULL, '2021-11-05 04:55:47', '2021-11-05 04:55:47'),
(58, 'L?? Quang Kh???i', 'avatar.png', 'lequangkhai638@gmail.com', 'INACTIVE', NULL, '$2y$10$a/ZdcPddJVSpzNbrddETtefxyGsoqzJMQQ7M64jtFRvm.1.nxdliq', NULL, '2021-11-05 04:55:47', '2021-11-05 04:55:47'),
(59, 'Minh Th??nh Trung', 'avatar.png', 'trunghnt321@gmail.com', 'INACTIVE', NULL, '$2y$10$c.6M.JSmsz2OakpurA2l7ePA414NAtR643t47brN.J95ZaVnnziGu', NULL, '2021-11-05 04:55:48', '2021-11-05 04:55:48');

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
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `i_k_b_o_s`
--
ALTER TABLE `i_k_b_o_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_votes`
--
ALTER TABLE `list_votes`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `i_k_b_o_s`
--
ALTER TABLE `i_k_b_o_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `list_votes`
--
ALTER TABLE `list_votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
