-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 22, 2023 at 07:04 PM
-- Server version: 8.0.34
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xuexyz_asdf`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bypass`
--

CREATE TABLE `Bypass` (
  `id` int NOT NULL,
  `Bypass` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `Version` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Bypass`
--

INSERT INTO `Bypass` (`id`, `Bypass`, `Version`) VALUES
(1, 'sdasdsad', '');

-- --------------------------------------------------------

--
-- Table structure for table `Feature`
--

CREATE TABLE `Feature` (
  `id` int NOT NULL,
  `ESP` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Item` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Aimbot` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Bullet` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Memory` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Line` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Health` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Radar` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Nobot` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TeamID` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `AIM` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `BT` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Hide` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `Feature`
--

INSERT INTO `Feature` (`id`, `ESP`, `Item`, `Aimbot`, `Bullet`, `Memory`, `Line`, `Health`, `Radar`, `Nobot`, `TeamID`, `AIM`, `BT`, `Hide`) VALUES
(1, 'true', 'true', 'true', 'true', 'true', 'false', 'true', 'true', 'true', 'true', 'true', 'true', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int NOT NULL,
  `ESP` enum('true','false') DEFAULT 'false',
  `Item` enum('true','false') DEFAULT 'false',
  `Aimbot` enum('true','false') DEFAULT 'false',
  `Bullet` enum('true','false') DEFAULT 'false',
  `Memory` enum('true','false') DEFAULT 'false',
  `ESPName` enum('true','false') DEFAULT 'false',
  `Skeleton` enum('true','false') DEFAULT 'false',
  `LootBox` enum('true','false') DEFAULT 'false',
  `TeamID` enum('true','false') DEFAULT 'false',
  `Health` enum('true','false') DEFAULT 'false',
  `NoBot` enum('true','false') DEFAULT 'false',
  `ESPBox` enum('true','false') DEFAULT 'false',
  `GrenadeWarning` enum('true','false') DEFAULT 'false',
  `EnableAimbot` enum('true','false') DEFAULT 'false',
  `EnableBulletTrack` enum('true','false') DEFAULT 'false',
  `IgnoreKnocked` enum('true','false') DEFAULT 'false',
  `VisCheck` enum('true','false') DEFAULT 'false',
  `IgnoreBot` enum('true','false') DEFAULT 'false',
  `Hide` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `size` int NOT NULL,
  `extension` varchar(10) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `type`, `size`, `extension`, `version`) VALUES
(4, 'hello.php.so', 'application/octet-stream', 30, 'so', '1'),
(5, 'php.php', 'application/octet-stream', 28, 'php', '1'),
(6, '340434.png', 'image/png', 527134, 'png', '1'),
(7, '340434.png', 'image/png', 527131, 'png', '');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_history` int NOT NULL,
  `keys_id` varchar(33) DEFAULT NULL,
  `user_do` varchar(33) DEFAULT NULL,
  `info` mediumtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `keys_code`
--

CREATE TABLE `keys_code` (
  `id_keys` int UNSIGNED NOT NULL,
  `game` varchar(255) DEFAULT NULL,
  `user_key` varchar(255) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `expired_date` datetime DEFAULT NULL,
  `max_devices` int DEFAULT NULL,
  `devices` text,
  `status` tinyint(1) DEFAULT '1',
  `registrator` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keys_code`
--

INSERT INTO `keys_code` (`id_keys`, `game`, `user_key`, `duration`, `expired_date`, `max_devices`, `devices`, `status`, `registrator`, `created_at`, `updated_at`) VALUES
(13, 'PUBG', 'JHPCHEATS', 1, NULL, 1, NULL, 1, 'JHPCHEAT', '2023-08-22 08:31:39', '2023-08-22 08:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `modname`
--

CREATE TABLE `modname` (
  `id` int NOT NULL,
  `modname` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `modname`
--

INSERT INTO `modname` (`id`, `modname`) VALUES
(1, 'JHPMrJAAT');

-- --------------------------------------------------------

--
-- Table structure for table `onoff`
--

CREATE TABLE `onoff` (
  `id` int NOT NULL,
  `status` varchar(5) COLLATE utf8mb3_unicode_ci NOT NULL,
  `myinput` varchar(500) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `onoff`
--

INSERT INTO `onoff` (`id`, `status`, `myinput`) VALUES
(11, 'off', 'Ghh');

-- --------------------------------------------------------

--
-- Table structure for table `referral_code`
--

CREATE TABLE `referral_code` (
  `id_reff` int NOT NULL,
  `code` varchar(128) DEFAULT NULL,
  `real_code` varchar(30) NOT NULL,
  `Referral` varchar(30) NOT NULL,
  `set_saldo` int DEFAULT NULL,
  `used_by` varchar(66) DEFAULT NULL,
  `created_by` varchar(66) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `referral_code`
--

INSERT INTO `referral_code` (`id_reff`, `code`, `real_code`, `Referral`, `set_saldo`, `used_by`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '05380df42912e296288079fcc446f747', 'a2GvKS', 'a2GvKS', 5000, NULL, 'Sunil', '2023-08-20 22:58:38', '2023-08-20 22:58:38'),
(2, '4f6a75dbaa397caf95533dcd855c409a', '79SMBn', '79SMBn', 5, '1', 'Sunil', '2023-08-20 22:59:08', '2023-08-21 13:09:07'),
(3, '700059545bf80d87305807b97ec965da', 'LvU8di', 'LvU8di', 5, '1', 'Sunil', '2023-08-21 16:33:13', '2023-08-21 16:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int NOT NULL,
  `fullname` varchar(155) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(66) NOT NULL,
  `level` int DEFAULT '2',
  `saldo` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `uplink` varchar(66) DEFAULT NULL,
  `password` varchar(155) NOT NULL,
  `telegram_id` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `loginDevices` varchar(150) DEFAULT NULL,
  `loginRsetTime` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `fullname`, `email`, `username`, `level`, `saldo`, `status`, `uplink`, `password`, `telegram_id`, `created_at`, `updated_at`, `loginDevices`, `loginRsetTime`) VALUES
(1, 'Hunky Nation', 'sunil@f.com', 'Sunil', 1, 99998591, 1, 'Offensive', '$2y$08$guBEEDWi901xsXC/xPDBDeR1ZNU1abZmhb8twww0u5WliUVSlhHh2', 'Offensive_9', '2022-04-21 08:42:14', '2023-08-21 09:36:47', 'Linux-Android10-K-AppleWebKit/537.36KHTML,likeGecko-Chrome/113.0.0.0MobileSafari/537.36', '0'),
(90, 'test', '', 'test', 1, 0, 1, 'Sunil', '$2y$08$MUxRBOoRlDWfUhKKOrHFE.DTuc7IIXoR40K3IBeA2x3GVF.wSgUz2', '', '2023-08-21 13:09:07', '2023-08-21 13:30:53', 'WindowsNT10.0-Win64-x64-AppleWebKit/537.36KHTML,likeGecko-Chrome/116.0.0.0Safari/537.36', NULL),
(91, 'MrJAAT', '', 'JHPCHEAT', 1, 198, 1, 'Sunil', '$2y$08$nODV9RRijW1IF1enzT66MOeHrIEBRQM6a0bWS9UCJt76vUyhtu802', '', '2023-08-21 16:43:24', '2023-08-22 08:31:39', 'Linux-Android12-RMX3561-AppleWebKit/537.36KHTML,likeGecko-Chrome/97.0.4692.98MobileSafari/537.36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `_ftext`
--

CREATE TABLE `_ftext` (
  `id` int NOT NULL,
  `_status` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `_ftext` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `_ftext`
--

INSERT INTO `_ftext` (`id`, `_status`, `_ftext`) VALUES
(1, 'Play Safe || Avoid Report', 'Gh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bypass`
--
ALTER TABLE `Bypass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Feature`
--
ALTER TABLE `Feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `keys_code`
--
ALTER TABLE `keys_code`
  ADD PRIMARY KEY (`id_keys`);

--
-- Indexes for table `modname`
--
ALTER TABLE `modname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onoff`
--
ALTER TABLE `onoff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_code`
--
ALTER TABLE `referral_code`
  ADD PRIMARY KEY (`id_reff`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `_ftext`
--
ALTER TABLE `_ftext`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bypass`
--
ALTER TABLE `Bypass`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Feature`
--
ALTER TABLE `Feature`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keys_code`
--
ALTER TABLE `keys_code`
  MODIFY `id_keys` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `modname`
--
ALTER TABLE `modname`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `onoff`
--
ALTER TABLE `onoff`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `referral_code`
--
ALTER TABLE `referral_code`
  MODIFY `id_reff` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `_ftext`
--
ALTER TABLE `_ftext`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
