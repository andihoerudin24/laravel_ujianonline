-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2019 at 09:01 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ujianonline`
--

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
(3, '2019_04_24_020512_create_table_soals', 1),
(4, '2019_04_24_043046_create_table_pengaturans', 1),
(5, '2019_04_26_020927_create_table_nilais', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_nilais`
--

CREATE TABLE `table_nilais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `benar` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salah` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kosong` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_nilais`
--

INSERT INTO `table_nilais` (`id`, `id_user`, `benar`, `salah`, `kosong`, `score`, `keterangan`, `created_at`, `updated_at`) VALUES
(9, 3, '1', '2', '7', '11.1', 'TIDAK LULUS', NULL, NULL),
(10, 5, '1', '2', '7', '11.1', 'TIDAK LULUS', NULL, NULL),
(12, 7, '1', '2', '7', '11.1', 'TIDAK LULUS', NULL, NULL),
(13, 15, '1', '2', '7', '11.1', 'TIDAK LULUS', NULL, NULL),
(14, 16, '1', '2', '7', '11.1', 'TIDAK LULUS', NULL, NULL),
(15, 18, '1', '2', '7', '11.1', 'TIDAK LULUS', NULL, NULL),
(16, 4, '1', '2', '7', '11.1', 'TIDAK LULUS', NULL, NULL),
(17, 10, '1', '2', '7', '11.1', 'TIDAK LULUS', NULL, NULL),
(18, 8, '1', '2', '7', '11.1', 'TIDAK LULUS', NULL, NULL),
(19, 6, '1', '2', '7', '11.1', 'TIDAK LULUS', NULL, NULL),
(20, 3, '1', '2', '7', '11.1', 'TIDAK LULUS', NULL, NULL),
(25, 36, '7', '2', '1', '77.8', 'LULUS', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_pengaturans`
--

CREATE TABLE `table_pengaturans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_ujian` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_min` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peraturan_ujian` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_pengaturans`
--

INSERT INTO `table_pengaturans` (`id`, `nama_ujian`, `waktu`, `nilai_min`, `peraturan_ujian`, `created_at`, `updated_at`) VALUES
(1, 'Ujian Online', '60', '30', 'Juwan Tillman II', '2019-04-25 20:24:05', '2019-05-02 23:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `table_soals`
--

CREATE TABLE `table_soals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban_a` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban_b` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban_c` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban_d` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `knc_jawaban` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Aktif','Tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_soals`
--

INSERT INTO `table_soals` (`id`, `soal`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`, `knc_jawaban`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rhianna Von', 'Araceli Blanda', 'Daphnee Hansen', 'Dr. Monica Olson V', 'Nico Larkin MD', 'b', 'Aktif', '2019-04-25 20:24:04', '2019-04-25 20:24:04'),
(2, 'Andreane Bailey', 'Filomena Zboncak', 'Waino Schmidt', 'Mr. Benny Abshire II', 'Mr. Florian Pacocha I', 'b', 'Aktif', '2019-04-25 20:24:04', '2019-04-25 20:24:04'),
(3, 'Gabe Krajcik', 'Dr. Novella Gislason IV', 'Loyce Berge', 'Gwen Kirlin', 'Daphnee Haley', 'b', 'Aktif', '2019-04-25 20:24:04', '2019-04-25 20:24:04'),
(4, 'Marilou Graham', 'Miss Theresa Schamberger I', 'Kaycee Schroeder II', 'Ofelia Zboncak II', 'Eleanore Walsh', 'b', 'Aktif', '2019-04-25 20:24:04', '2019-04-25 20:24:04'),
(5, 'Gilda Kilback Sr.', 'Karen Kuphal', 'Janet Strosin', 'Benedict Schaden', 'Alda Quitzon', 'c', 'Aktif', '2019-04-25 20:24:04', '2019-04-25 20:24:04'),
(6, 'Mrs. Eliane Kautzer PhD', 'Prof. Ethan Waters', 'Prof. Abdul Powlowski DVM', 'Gonzalo Braun DDS', 'Mack Dooley', 'b', 'Tidak', '2019-04-25 20:24:04', '2019-04-28 20:35:53'),
(17, 'Eula Reichel', 'Valerie Macejkovic', 'Lemuel Brekke', 'Rico Erdman', 'Lera Douglas', 'b', 'Aktif', '2019-04-25 20:24:05', '2019-04-25 20:24:05'),
(18, 'Dustin Sauer', 'Emilio Raynor', 'Fletcher Tillman', 'Dallas Okuneva', 'Miss Angelita Littel DDS', 'b', 'Aktif', '2019-04-25 20:24:05', '2019-04-25 20:24:05'),
(19, 'Tate Lemke V', 'Euna Ondricka', 'Keyon Senger', 'Verna Harris Sr.', 'Wilburn Jerde', 'b', 'Aktif', '2019-04-25 20:24:05', '2019-04-25 20:24:05'),
(20, 'Zola Beatty', 'Stacey Skiles', 'Dakota Toy', 'Sabrina McLaughlin', 'Aletha Mraz', 'b', 'Aktif', '2019-04-25 20:24:05', '2019-04-25 20:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `android_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `nik` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `jenis_kelamin` enum('Laki-Laki','Perempuan') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `status` enum('AKTIF','TIDAK AKTIF') COLLATE utf8mb4_unicode_ci DEFAULT 'AKTIF',
  `no_hp_ortu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_Admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `android_id`, `username`, `email`, `kelas`, `nik`, `jenis_kelamin`, `alamat`, `status`, `no_hp_ortu`, `email_verified_at`, `password`, `is_Admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Prof. Roosevelt Gusikowski', '23458', 'Davion Stiedemann Sr.', 'jacquelyn.oberbrunner@example.com', '3', '7', 'Laki-Laki', '775 Kara Port Suite 224\nFeeneyburgh, VA 35291-3415', 'AKTIF', '089638889862', '2019-04-25 20:24:00', '$2y$10$kXteEZ4FcmAGYa32UVzIIubXqClmKm.Jo/3A0K5wmWZ3Ef94.Aw26', 0, 'YWM3aIAgwG', '2019-04-25 20:24:03', '2019-04-25 20:24:03'),
(3, 'Trevion Powlowski', '2322', 'Kiana Gulgowski', 'othompson@example.org', '1', '2', 'Laki-Laki', '656 Ursula Manors\nLindville, DE 51231-8915', 'AKTIF', '089638889862', '2019-04-25 20:24:00', '$2y$10$cDS84BT7o1B4gFLmATAduOeGW/3.pZulrMw/VJz.Z2.DF08TGqON2', 0, 'OFBx07wJF0', '2019-04-25 20:24:03', '2019-04-25 20:24:03'),
(4, 'Mr. Elijah Heathcote', '090909', 'Millie Considine PhD', 'roma.lebsack@example.com', '3', '9', 'Laki-Laki', '4257 Elliott Lake\nCroninburgh, ID 84438', 'AKTIF', '089638889862', '2019-04-25 20:24:00', '$2y$10$lRFrArlt2vNELvUFb5ANhOBlxKxbXc.QvkBbIjBMrC96.dDDfuA5O', 0, 'CTnv3C6xrc', '2019-04-25 20:24:03', '2019-04-25 20:24:03'),
(5, 'Turner Abbott', '12121212222', 'Mr. Darryl Raynor Jr.', 'ettie35@example.com', '2', '4', 'Laki-Laki', '1836 Gulgowski Mount Suite 823\nFionashire, KY 43982-7168', 'AKTIF', '089638889862', '2019-04-25 20:24:00', '$2y$10$SaV/rPtNKhie3RZD2knfwecj7Ehj/dYiBM8Y3/5hyE4KGEwAGmhaq', 0, 'k5DB1EYfN3', '2019-04-25 20:24:03', '2019-04-25 20:24:03'),
(6, 'Gretchen Spinka', '121212122', 'Macie Keeling', 'chane@example.com', '1', '2', 'Laki-Laki', '348 Joy Unions Suite 458\nBergstromfurt, WI 35086', 'AKTIF', '089638889862', '2019-04-25 20:24:00', '$2y$10$1m3ibpEVa2WVfS5eg5UMveh0nPWW4fNA/.q1L4zcL0CCpefYlieAm', 0, 'Tq4Plz8USz', '2019-04-25 20:24:03', '2019-04-25 20:24:03'),
(7, 'Yvette Gibson', '1212', 'Ricky Graham MD', 'wdamore@example.net', '3', '5', 'Laki-Laki', '3787 Herzog Highway Suite 293\nSmithhaven, AL 46155-9005', 'AKTIF', '089638889862', '2019-04-25 20:24:01', '$2y$10$G3OJrzalKAyorK2zLvtYGuOz6oa5MPCYiXfOgoO27YFaHLK2pILX2', 0, 'kA7TRQbHiR', '2019-04-25 20:24:03', '2019-04-25 20:24:03'),
(8, 'Rahsaan West', '12121qw', 'Maymie Nolan', 'nicholas.morar@example.org', '3', '8', 'Laki-Laki', '27911 Franco Prairie\nLake Tyshawnville, KS 86556-5808', 'AKTIF', '089638889862', '2019-04-25 20:24:01', '$2y$10$hJryhi9aVMlqweZC0e8cKu5XC7Nvv7a3PpPKomdpUIYz3Bgrox3/i', 0, 'H5pNjjUW2G', '2019-04-25 20:24:03', '2019-04-25 20:24:03'),
(9, 'Elisa Upton', 'sasas121212', 'Mazie Friesen', 'oceane.runolfsdottir@example.org', '2', '4', 'Laki-Laki', '80022 Wiegand Gardens Suite 434\nLake Emanuelside, CT 58642', 'AKTIF', '089638889862', '2019-04-25 20:24:01', '$2y$10$lF7BTdDSCoQWrxaEfevgiOgg0xCcM1P0/usEA/FRsa1Be8PCO73eC', 0, 'zLp1gCVwty', '2019-04-25 20:24:03', '2019-04-25 20:24:03'),
(10, 'Prof. Clemens Deckow', '901991', 'Dulce Fritsch III', 'blanca.toy@example.com', '1', '8', 'Laki-Laki', '1601 Hermiston Ridge\nPort Jaidenside, CO 10443-0971', 'AKTIF', '089638889862', '2019-04-25 20:24:01', '$2y$10$1aqUvMikVftp6MliAJaxJOqhC2lhFq9PRMlFwrY8kt0faD7bZm4YG', 0, 'uOEnuy05by', '2019-04-25 20:24:03', '2019-04-25 20:24:03'),
(15, 'Dr. Joel Medhurst', '121212', 'Prof. Julie Schumm', 'klebsack@example.net', '1', '12121', 'Laki-Laki', '524 Parisian Road\nNorth Savionfort, GA 92909-8800 update', 'AKTIF', '089638889862', '2019-04-25 20:24:02', '$2y$10$59kuh9vPErvp5JtJnp.yyOMPCdxkxsOLshsWdsoDPItVSFHTOAYfq', 0, 'yBgH43pkJ1', '2019-04-25 20:24:04', '2019-05-14 07:46:08'),
(16, 'Sydnie Haley II', '99999', 'Alysha Keeling I', 'usawayn@example.net', '1', '1', 'Laki-Laki', '630 Altenwerth Landing Suite 242\nLake Owenberg, CO 55920-3089', 'AKTIF', '089638889862', '2019-04-25 20:24:02', '$2y$10$NZFL5aZfpzqvwBGJpeHXROvsagePB027fLxvmGgaaEQu5mzIJ5RNy', 0, 'fVEwuK4uxW', '2019-04-25 20:24:04', '2019-05-17 23:52:50'),
(17, 'Mr. Rashawn Moen DDS', '0909091', 'Akeem Stiedemann', 'shaylee62@example.com', '2', '8', 'Laki-Laki', '5471 Walton Garden Suite 573\nPort Kali, ND 78509', 'AKTIF', '089638889862', '2019-04-25 20:24:02', '$2y$10$CqQ97yu0trEth2kR833U3uTtoDEmTdEDlOY9umKT/S/yVTLRS2Ep2', 0, 'HgkkFlsy7A', '2019-04-25 20:24:04', '2019-04-25 20:24:04'),
(18, 'Mack Cassin', '11111o2', 'Prof. Russ Corwin', 'fullrich@example.net', '1', '7', 'Laki-Laki', '714 McKenzie Fort\nDinomouth, AR 98899-1782', 'AKTIF', '089638889862', '2019-04-25 20:24:02', '$2y$10$yfA5RuwGNhsq2/uwoYi.D.VoxTMWiX96VmCusJMSOJXUakbJEYxeC', 0, 'vx7tMJATCz', '2019-04-25 20:24:04', '2019-05-17 23:52:45'),
(19, 'Kirk Rolfson', '121', 'Ms. Marjolaine Schroeder Sr.', 'caesar.ruecker@example.org', '3', '9', 'Laki-Laki', '25778 Keshawn Islands\nBlickburgh, AZ 60242', 'AKTIF', '089638889862', '2019-04-25 20:24:02', '$2y$10$NG7N9oEb1j7QGM43cZaYQ.WqLf1IvuTN1STtjvR.Omlipp3SPigme', 0, 'nrbcqxuxkr', '2019-04-25 20:24:04', '2019-04-25 20:24:04'),
(20, 'Mrs. Letha Dare PhD', '112121', 'Jude Muller', 'frieda08@example.com', '3', '5', 'Laki-Laki', '78879 Schmidt Trace\nWest Meghanmouth, KY 97419-6260', 'AKTIF', '089638889862', '2019-04-25 20:24:02', '$2y$10$YoEReLnMozZJzfub/PljIOKG.xzozte/2hIix0fUOqEhsiepbVyQC', 0, 'DpG52OFYrP', '2019-04-25 20:24:04', '2019-04-25 20:24:04'),
(36, 'android max', 'd19c16c6caf61e99', 'android andi', 'andromax@mail.com', '3', '089262', 'Laki-Laki', 'Universitas Pakuan Bogor', 'AKTIF', '089638889862', NULL, '$2y$10$uucdA9be8Q2G1i6mutIYLeM0d9xltBobvnwO0sHCo4PHgAexM9PUy', 0, NULL, '2019-05-08 10:03:59', '2019-05-17 23:53:38'),
(37, 'Andi', '219192811', 'hoerudin', 'andihoerudin24@gmail.com', '3', '18281', 'Laki-Laki', 'lINGKUNGAN JOGJAKARTA', 'AKTIF', '092828188181', NULL, '$2y$10$uucdA9be8Q2G1i6mutIYLeM0d9xltBobvnwO0sHCo4PHgAexM9PUy', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `table_nilais`
--
ALTER TABLE `table_nilais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_nilais_id_user_foreign` (`id_user`);

--
-- Indexes for table `table_pengaturans`
--
ALTER TABLE `table_pengaturans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_soals`
--
ALTER TABLE `table_soals`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_nilais`
--
ALTER TABLE `table_nilais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `table_pengaturans`
--
ALTER TABLE `table_pengaturans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_soals`
--
ALTER TABLE `table_soals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_nilais`
--
ALTER TABLE `table_nilais`
  ADD CONSTRAINT `table_nilais_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
