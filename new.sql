-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2017 at 12:58 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
`id` int(10) unsigned NOT NULL,
  `nama` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nip` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `pengguna_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nama`, `nip`, `alamat`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, 'Kim Nam Joon ', '3993828282', 'korea', 1, '2017-04-08 00:35:29', '2017-04-08 02:39:43'),
(2, 'kim Tae Hyung', '4243355555', 'seoul', 4, '2017-04-08 02:55:16', '2017-04-08 02:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `dosen_matakuliah`
--

CREATE TABLE IF NOT EXISTS `dosen_matakuliah` (
`id` int(10) unsigned NOT NULL,
  `dosen_id` int(10) unsigned NOT NULL,
  `matakuliah_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dosen_matakuliah`
--

INSERT INTO `dosen_matakuliah` (`id`, `dosen_id`, `matakuliah_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-04-08 01:53:39', '2017-04-08 02:41:17'),
(2, 2, 3, '2017-04-08 02:55:36', '2017-04-08 02:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_matakuliah`
--

CREATE TABLE IF NOT EXISTS `jadwal_matakuliah` (
`id` int(10) unsigned NOT NULL,
  `mahasiswa_id` int(10) unsigned NOT NULL,
  `ruangan_id` int(10) unsigned NOT NULL,
  `dosen_matakuliah_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jadwal_matakuliah`
--

INSERT INTO `jadwal_matakuliah` (`id`, `mahasiswa_id`, `ruangan_id`, `dosen_matakuliah_id`, `created_at`, `updated_at`) VALUES
(11, 5, 2, 2, '2017-04-08 02:39:00', '2017-04-08 02:55:52'),
(13, 7, 1, 1, '2017-04-08 02:49:55', '2017-04-08 02:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
`id` int(10) unsigned NOT NULL,
  `nama` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nim` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `pengguna_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `alamat`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(5, '전중국', '1515161617', 'incheon', 2, '2017-04-08 02:38:18', '2017-04-08 02:38:18'),
(7, '박지민', '156156156', 'incheon', 3, '2017-04-08 02:49:33', '2017-04-08 02:49:33');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE IF NOT EXISTS `matakuliah` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id`, `title`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Framework (Praktikum)', 'Hari Kamis pukul 07.30 - 09.00  ', '2017-04-01 03:53:32', '2017-04-01 05:04:55'),
(3, 'Musik', 'Hari Selasa Pukul 08.30-10.00', '2017-04-08 02:53:18', '2017-04-08 02:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_04_01_104908_buat_table_pengguna', 1),
('2017_04_01_104927_buat_table_dosen', 1),
('2017_04_01_104945_buat_table_mahasiswa', 1),
('2017_04_01_105000_buat_table_ruangan', 1),
('2017_04_01_105020_buat_table_matakuliah', 1),
('2017_04_01_105114_buat_table_dosen_matakuliah', 1),
('2017_04_01_105135_buat_table_jadwal_matakuliah', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'lee jun ki', 'junki', NULL, '2017-04-08 00:35:29', '2017-04-08 02:40:20'),
(2, 'jungkook', 'jeon', NULL, '2017-04-08 02:38:18', '2017-04-08 02:38:18'),
(3, 'Park Jimin', 'jimin', NULL, '2017-04-08 02:49:33', '2017-04-08 02:49:33'),
(4, 'Taehyung', 'theodor', NULL, '2017-04-08 02:55:16', '2017-04-08 02:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE IF NOT EXISTS `ruangan` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Ruang 406', '2017-04-01 03:52:12', '2017-04-01 03:52:12'),
(2, 'Ruang 405', '2017-04-01 03:52:23', '2017-04-01 03:52:23'),
(3, 'Ruang 407', '2017-04-01 03:52:34', '2017-04-01 03:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
 ADD PRIMARY KEY (`id`), ADD KEY `dosen_pengguna_id_foreign` (`pengguna_id`);

--
-- Indexes for table `dosen_matakuliah`
--
ALTER TABLE `dosen_matakuliah`
 ADD PRIMARY KEY (`id`), ADD KEY `dosen_matakuliah_dosen_id_foreign` (`dosen_id`), ADD KEY `dosen_matakuliah_matakuliah_id_foreign` (`matakuliah_id`);

--
-- Indexes for table `jadwal_matakuliah`
--
ALTER TABLE `jadwal_matakuliah`
 ADD PRIMARY KEY (`id`), ADD KEY `jadwal_matakuliah_mahasiswa_id_foreign` (`mahasiswa_id`), ADD KEY `jadwal_matakuliah_ruangan_id_foreign` (`ruangan_id`), ADD KEY `jadwal_matakuliah_dosen_matakuliah_id_foreign` (`dosen_matakuliah_id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
 ADD PRIMARY KEY (`id`), ADD KEY `mahasiswa_pengguna_id_foreign` (`pengguna_id`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dosen_matakuliah`
--
ALTER TABLE `dosen_matakuliah`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jadwal_matakuliah`
--
ALTER TABLE `jadwal_matakuliah`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
ADD CONSTRAINT `dosen_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dosen_matakuliah`
--
ALTER TABLE `dosen_matakuliah`
ADD CONSTRAINT `dosen_matakuliah_matakuliah_id_foreign` FOREIGN KEY (`matakuliah_id`) REFERENCES `matakuliah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwal_matakuliah`
--
ALTER TABLE `jadwal_matakuliah`
ADD CONSTRAINT `jadwal_matakuliah_dosen_matakuliah_id_foreign` FOREIGN KEY (`dosen_matakuliah_id`) REFERENCES `dosen_matakuliah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `jadwal_matakuliah_mahasiswa_id_foreign` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `jadwal_matakuliah_ruangan_id_foreign` FOREIGN KEY (`ruangan_id`) REFERENCES `ruangan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
ADD CONSTRAINT `mahasiswa_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
