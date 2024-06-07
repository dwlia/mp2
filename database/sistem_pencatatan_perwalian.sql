-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2024 at 07:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_pencatatan_perwalian`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nidn` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nidn`, `nama`, `email`, `created_at`, `updated_at`) VALUES
(2, '2345678901', 'Dr. Ahmad Surya', 'ahmad.surya@dosenuniversitas.ac.id', '2024-04-15 06:01:08', '2024-04-15 06:01:08'),
(3, '3456789012', 'Dr. Dian Pratama', 'dian.pratama@dosenuniversitas.ac.id', '2024-04-15 06:01:47', '2024-04-15 06:01:47'),
(4, '4567890123', 'Dr. Budi Santoso', 'budi.santoso@dosenuniversitas.ac.id', '2024-04-15 06:02:25', '2024-04-15 06:02:25'),
(5, '5678901234', 'Dr.Nisrina Mahira', 'nisrinamhr@dosenuniversitas.id', '2024-04-15 06:03:25', '2024-04-15 06:03:25'),
(7, '6789012345', 'Emily Brown', 'emily.brown@example.com', '2024-04-15 06:47:31', '2024-04-15 06:47:31'),
(8, '7890123456', 'Daniel Gracia', 'daniel.garcia@example.com', '2024-04-15 06:47:31', '2024-04-15 06:47:31'),
(9, '8901234567', 'Olivia Martinez', 'olivia.martinez@example.com', '2024-04-15 06:47:31', '2024-04-15 06:47:31'),
(10, '9012345678', 'Dr.Indah', 'indah@dosenuniversitas.ac.id', '2024-04-15 07:25:13', '2024-04-15 07:25:13'),
(11, '123456789', 'Prof.Joko', 'joko@dosenuviversitas.ac.id', '2024-04-15 07:25:13', '2024-04-15 07:25:13'),
(26, '1234567890', 'Prof. Anisa Putri', 'anisa.putri@dosenuniversitas.ac.id', '2024-04-14 11:23:14', '2024-04-14 11:23:14'),
(29, '12345678901', 'Aji', 'aji@gmail.com', '2024-05-01 23:54:44', '2024-05-01 23:54:44'),
(31, '1222001', 'Prof.Arya Budi Raharja', 'arya@dosenuniversitas.ac.id', '2024-05-02 00:58:09', '2024-05-02 00:58:09');

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
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mahasiswa_id` bigint(20) UNSIGNED NOT NULL,
  `perwalian_id` bigint(20) UNSIGNED NOT NULL,
  `mata_kuliah` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`mata_kuliah`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id`, `mahasiswa_id`, `perwalian_id`, `mata_kuliah`, `created_at`, `updated_at`, `catatan`) VALUES
(52, 20, 47, '[\"11\",\"19\",\"20\",\"24\",\"27\",\"29\"]', '2024-05-02 21:07:52', '2024-05-02 21:07:52', 'p'),
(53, 21, 48, '[\"9\",\"10\",\"18\",\"23\"]', '2024-05-02 21:16:55', '2024-05-02 21:16:55', 'konsultasi pemilihan matakuliah'),
(56, 19, 49, '[\"14\",\"16\",\"26\",\"31\"]', '2024-05-03 19:11:08', '2024-05-03 19:11:08', 'Assalamualaikum');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `program_studi` varchar(255) NOT NULL,
  `tahun_akademik_id` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `email`, `program_studi`, `tahun_akademik_id`, `created_at`, `updated_at`) VALUES
(19, '1222003', 'Erigidhia Hendra Pratama', 'erigidhia.h@gmail.com', 'Teknik Informatika', '3', '2024-04-27 08:25:01', '2024-04-27 08:25:01'),
(20, '1222001', 'Arya Budi Raharja', 'raharjaarya666@gmail.com', 'Teknik Informatika', '3', '2024-04-27 08:27:55', '2024-04-27 08:27:55'),
(21, '1222002', 'Muhammad Farhan Fadilla', 'farhanfadilah@gmail.com', 'Teknik Informatika', '3', '2024-04-27 08:49:54', '2024-04-27 08:49:54'),
(22, '1222305', 'Ilham Aly abdillah', 'ilham@gmail', 'Teknik Informatika', '4', '2024-04-28 20:53:10', '2024-04-28 20:53:10'),
(36, '6789012345', 'Xander Xavier', 'xander.xav@example.com', 'Teknik Informatika', '3', '2024-04-29 23:44:20', '2024-04-29 23:44:20'),
(37, '7890123456', 'Daniel Gracia', 'daniel.garcia@example.com', 'Teknik Informatika', '3', '2024-04-29 23:44:20', '2024-04-29 23:44:20'),
(38, '8901234567', 'Olivia Martinez', 'olivia.martinez@example.com', 'Teknik Informatika', '3', '2024-04-29 23:44:20', '2024-04-29 23:44:20'),
(39, '1221212121', 'ahihi', 'ahihi@gmail.com', 'Teknik Informatika', '3', '2024-04-29 23:44:20', '2024-04-29 23:44:20'),
(67, '2300123456', 'Budi Raharjo', 'budiraharjo@gmail.com', 'Teknik Informatika', '3', '2024-05-02 00:58:09', '2024-05-02 00:58:09'),
(68, '2300234567', 'Ani Lestari', 'anilestari@gmail.com', 'Sistem Informasi', '3', '2024-05-02 00:58:09', '2024-05-02 00:58:09'),
(69, '2300345678', 'Cipto Mangkunegara', 'cipto@gmail.com', 'Sistem Informasi', '3', '2024-05-02 00:58:09', '2024-05-02 00:58:09'),
(70, '2300456789', 'Dini Puspita', 'dini@gmail.com', 'Sistem Informasi', '3', '2024-05-02 00:58:09', '2024-05-02 00:58:09'),
(71, '2300567900', 'Fitriani', 'fitriani@gmail.com', 'Sistem Informasi', '3', '2024-05-02 00:58:09', '2024-05-02 00:58:09'),
(72, '2300679011', 'Galih Permana', 'galih permana@gmail.com', 'Sistem Informasi', '3', '2024-05-02 00:58:09', '2024-05-02 00:58:09'),
(73, '2300790122', 'Hana Sari Dewi', 'hana sari dewi@gmail.com', 'Sistem Informasi', '3', '2024-05-02 00:58:09', '2024-05-02 00:58:09'),
(74, '2300901233', 'Ika Nurhayati', 'ika nurhayati@gmail.com', 'Sistem Informasi', '3', '2024-05-02 00:58:09', '2024-05-02 00:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `program_studi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `kode`, `nama`, `sks`, `semester`, `program_studi`, `created_at`, `updated_at`) VALUES
(1, 'IF101', 'Pengantar Informatika', 3, 2, 'Teknik Informatika', '2024-04-15 06:09:19', '2024-04-15 06:20:40'),
(2, 'IF102', 'Dasar Pemrograman', 4, 1, 'Teknik Informatika', '2024-04-15 06:09:56', '2024-04-15 06:09:56'),
(3, 'IF103', 'Algoritma dan Struktur Data', 4, 2, 'Teknik Informatika', '2024-04-15 06:10:20', '2024-04-15 06:10:20'),
(4, 'IF104', 'Pemrograman Berorientasi Objek', 4, 1, 'Teknik Informatika', '2024-04-15 06:10:48', '2024-04-15 06:10:48'),
(5, 'IF105', 'Basis Data', 4, 3, 'Teknik Informatika', '2024-04-15 06:11:15', '2024-04-15 06:11:15'),
(6, 'IF106', 'Pemrograman Web', 3, 3, 'Teknik Informatika', '2024-04-15 06:21:20', '2024-04-15 06:21:20'),
(7, 'IF107', 'Jaringan Komputer', 3, 4, 'Teknik Informatika', '2024-04-15 06:22:52', '2024-04-15 06:22:52'),
(8, 'IF108', 'Sistem Operasi', 4, 4, 'Teknik Informatika', '2024-04-15 06:23:29', '2024-04-15 06:23:29'),
(9, 'IF109', 'Kecerdasan Buatan', 3, 5, 'Teknik Informatika', '2024-04-15 06:23:55', '2024-04-15 06:23:55'),
(10, 'IF110', 'Analisis dan Desain Perangkat Lunak', 3, 5, 'Teknik Informatika', '2024-04-15 06:24:19', '2024-04-15 06:24:19'),
(11, 'IF111', 'Sistem Informasi', 3, 6, 'Teknik Informatika', '2024-04-15 06:24:44', '2024-04-15 06:24:44'),
(12, 'IF113', 'Rekayasa Perangkat Lunak', 3, 7, 'Teknik Informatika', '2024-04-15 06:25:10', '2024-04-15 06:25:10'),
(13, 'IF114', 'Manajemen Proyek Perangkat Lunak', 3, 7, 'Teknik Informatika', '2024-04-15 06:25:31', '2024-04-15 06:25:31'),
(14, 'IF115', 'Pemrograman Lanjut', 3, 8, 'Teknik Informatika', '2024-04-15 06:25:54', '2024-04-15 06:25:54'),
(16, 'IF116', 'Tugas Akhir', 8, 8, 'Teknik Informatika', '2024-04-15 06:26:59', '2024-04-15 06:26:59'),
(17, 'IF117', 'Pengembangan Aplikasi Mobile', 3, 4, 'Teknik Informatika', '2024-04-19 11:20:57', '2024-04-19 11:20:57'),
(18, 'IF118', 'Sistem Basis Data Terdistribusi', 4, 5, 'Teknik Informatika', '2024-04-19 11:21:45', '2024-04-19 11:21:45'),
(19, 'IF119', 'Jaringan Syaraf Tiruan', 3, 6, 'Teknik Informatika', '2024-04-19 11:22:26', '2024-04-19 11:22:26'),
(20, 'IF120', 'Desain Antarmuka Pengguna', 3, 6, 'Teknik Informatika', '2024-04-19 11:22:51', '2024-04-19 11:22:51'),
(21, 'IF121', 'Pemrograman Paralel dan Terdistribusi', 4, 7, 'Teknik Informatika', '2024-04-19 11:23:16', '2024-04-19 11:23:16'),
(22, 'IF122', 'Pengujian Perangkat Lunak', 3, 7, 'Teknik Informatika', '2024-04-19 11:23:37', '2024-04-19 11:23:37'),
(23, 'IF123', 'Pengolahan Citra Digital', 3, 5, 'Teknik Informatika', '2024-04-19 11:23:52', '2024-04-19 11:23:52'),
(24, 'IF124', 'Sistem Pendukung Keputusan', 3, 6, 'Teknik Informatika', '2024-04-19 11:24:08', '2024-04-19 11:24:08'),
(25, 'IF125', 'Keamanan Jaringan Komputer', 4, 7, 'Teknik Informatika', '2024-04-19 11:24:27', '2024-04-19 11:24:27'),
(26, 'IF126', 'Big Data dan Analitik', 4, 8, 'Teknik Informatika', '2024-04-19 11:24:40', '2024-04-19 11:24:40'),
(27, 'IF127', 'Interaksi Manusia dan Komputer', 3, 6, 'Teknik Informatika', '2024-04-19 11:24:57', '2024-04-19 11:24:57'),
(28, 'IF128', 'Komputasi Cloud', 4, 7, 'Teknik Informatika', '2024-04-19 11:25:17', '2024-04-19 11:25:17'),
(29, 'IF129', 'Pemrograman Game', 3, 6, 'Teknik Informatika', '2024-04-19 11:25:38', '2024-04-19 11:25:38'),
(30, 'IF130', 'Pemrosesan Bahasa Alami', 3, 7, 'Teknik Informatika', '2024-04-19 11:25:55', '2024-04-19 11:25:55'),
(31, 'IF131', 'Manajemen Proses Bisnis', 3, 8, 'Teknik Informatika', '2024-04-19 11:26:14', '2024-04-19 11:26:14');

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
(10, '2024_04_13_232641_create_perwalian_table', 7),
(11, '2024_04_14_014156_add_nim_to_perwalian_table', 8),
(12, '2024_04_14_021339_create_perwalian_table', 9),
(13, '2024_04_14_131450_create_perwalian_table', 10),
(16, '2014_10_12_000000_create_users_table', 11),
(17, '2014_10_12_100000_create_password_reset_tokens_table', 11),
(18, '2019_08_19_000000_create_failed_jobs_table', 11),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 11),
(20, '2024_04_09_155001_create_program_studi_table', 11),
(21, '2024_04_11_103227_create_dosen_table', 11),
(22, '2024_04_11_221227_create_mata_kuliah_table', 11),
(23, '2024_04_12_174418_create_mahasiswa_table', 11),
(24, '2024_04_13_224506_create_tahun_akademik_table', 11),
(25, '2024_04_14_154844_create_perwalian_table', 11),
(26, '2024_04_14_174248_crate_tahun_table', 11),
(30, '2024_04_14_180714_add_tahun_terbit_to_mahasiswa', 12),
(31, '2024_04_17_155058_create_tahun_table', 13),
(32, '2024_04_24_022019_create_krs_table', 14),
(33, '2024_04_27_145430_add_mahasiswa_id_to_users_table', 15),
(35, '2024_05_02_014552_add_dosen_id_to_users_table', 16),
(36, '2024_05_03_024151_create_catatan_perwalians_table', 17),
(37, '2024_05_03_024747_add_dosen_id_to_users_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perwalian`
--

CREATE TABLE `perwalian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nama_mahasiswa` varchar(255) NOT NULL,
  `program_studi` varchar(255) NOT NULL,
  `dosen_id` bigint(20) UNSIGNED NOT NULL,
  `tahun_akademik_id` varchar(20) NOT NULL,
  `tanggal_perwalian` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perwalian`
--

INSERT INTO `perwalian` (`id`, `nim`, `nama_mahasiswa`, `program_studi`, `dosen_id`, `tahun_akademik_id`, `tanggal_perwalian`, `created_at`, `updated_at`) VALUES
(47, '1222001', '20', '1', 2, '3', '2024-05-03', '2024-05-02 20:51:14', '2024-05-02 20:51:14'),
(48, '1222002', '21', '1', 2, '3', '2024-05-03', '2024-05-02 21:16:15', '2024-05-02 21:16:15'),
(49, '1222003', '19', '1', 2, '3', '2024-05-04', '2024-05-03 18:41:06', '2024-05-03 18:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `program_studi`
--

CREATE TABLE `program_studi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor` varchar(255) DEFAULT NULL,
  `kode_prodi` varchar(10) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_studi`
--

INSERT INTO `program_studi` (`id`, `nomor`, `kode_prodi`, `nama_prodi`, `created_at`, `updated_at`) VALUES
(1, NULL, 'KP01IF', 'Teknik Informatika', '2024-04-14 11:34:26', '2024-04-15 11:35:16'),
(2, NULL, 'KP02SI', 'Sistem Informasi', '2024-04-15 06:00:48', '2024-05-03 19:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `tahun`
--

CREATE TABLE `tahun` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_akademik` varchar(25) NOT NULL,
  `semester` enum('Ganjil','Genap') NOT NULL,
  `status` enum('Aktif','Nonaktif') NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tahun`
--

INSERT INTO `tahun` (`id`, `tahun_akademik`, `semester`, `status`, `created_at`, `updated_at`) VALUES
(3, '2023/2024', 'Ganjil', 'Nonaktif', '2024-04-19 00:30:04', '2024-04-19 00:30:04'),
(4, '2021/2022', 'Genap', 'Aktif', '2024-04-19 00:59:31', '2024-04-19 00:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_akademik`
--

CREATE TABLE `tahun_akademik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_akademik` bigint(255) NOT NULL,
  `semester` enum('Ganjil','Genap') NOT NULL,
  `status` enum('Aktif','Nonaktif') NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mahasiswa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('admin','dosen','mahasiswa') NOT NULL DEFAULT 'mahasiswa',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dosen_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `mahasiswa_id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `dosen_id`) VALUES
(4, NULL, 'admin', 'admin@example.com', 'admin', NULL, '$2y$10$XXpMwhhmG6ME/y8s7c84zuyy41PPdQyXhA7SC/HdrEVjhulzxwLuW', NULL, '2024-04-15 05:25:38', '2024-04-15 05:25:38', NULL),
(5, NULL, 'dosen', 'dosen@example.com', 'dosen', NULL, '$2y$10$qg3Y7LLvx7pHYzZ5RkQbeO.mvuFnOgWEOYKLR2Xk5hJLvgJWqHEcC', NULL, '2024-04-15 05:25:38', '2024-04-15 05:25:38', NULL),
(19, 19, 'Erigidhia Hendra Pratama', 'erigidhia.h@gmail.com', 'mahasiswa', NULL, '$2y$10$bsXo8y6WdROkWZxgVPZYeuh/BB5buzzqGqhCM27JkrflUmf5V3tWq', NULL, '2024-05-03 18:41:32', '2024-05-03 18:41:32', NULL),
(20, 20, 'Arya Budi Raharja', 'raharjaarya666@gmail.com', 'mahasiswa', NULL, '$2y$10$Q3dZbQiBhy7GEXZYn5Dfhe4Vs5uRDp2QwRCy1JfhPaQXUtt7EbKSK', NULL, '2024-05-02 19:54:59', '2024-05-02 19:54:59', NULL),
(21, 21, 'Muhammad Farhan Fadilla', 'farhanfadilah@gmail.com', 'mahasiswa', NULL, '$2y$10$sAvVf9P9lIfygS82jWoT0uARRRhBIngmFO6Wbkc3KTLEM0360rzi6', NULL, '2024-05-02 20:43:08', '2024-05-02 20:43:08', NULL),
(50, NULL, 'Ahmad Surya', 'ahmad.surya@dosenuniversitas.ac.id', 'dosen', NULL, '$2y$10$v6IIHm3Ft.yKIqWe6kS/B.zcC3RQUawxiRnU00/92wPCsLNKs9UD6', NULL, '2024-05-02 19:54:37', '2024-05-02 19:54:37', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dosen_nidn_unique` (`nidn`),
  ADD UNIQUE KEY `dosen_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `krs_mahasiswa_id_foreign` (`mahasiswa_id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mahasiswa_nim_unique` (`nim`),
  ADD UNIQUE KEY `mahasiswa_email_unique` (`email`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `perwalian`
--
ALTER TABLE `perwalian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perwalian_nim_foreign` (`nim`),
  ADD KEY `perwalian_dosen_id_foreign` (`dosen_id`);

--
-- Indexes for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `program_studi_kode_prodi_unique` (`kode_prodi`);

--
-- Indexes for table `tahun`
--
ALTER TABLE `tahun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_mahasiswa_id_foreign` (`mahasiswa_id`),
  ADD KEY `users_dosen_id_foreign` (`dosen_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perwalian`
--
ALTER TABLE `perwalian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `program_studi`
--
ALTER TABLE `program_studi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tahun`
--
ALTER TABLE `tahun`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_mahasiswa_id_foreign` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `perwalian`
--
ALTER TABLE `perwalian`
  ADD CONSTRAINT `perwalian_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`),
  ADD CONSTRAINT `perwalian_nim_foreign` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_mahasiswa_id_foreign` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
