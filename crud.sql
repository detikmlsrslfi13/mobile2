-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jan 2024 pada 04.25
-- Versi server: 10.4.22-MariaDB-log
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `sekolah` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `no_hp` char(13) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `bidang` enum('web-development','data-science','full-stack-development','mobile-app-development','cyber-security','devops','ui-ux-design','game-development') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peserta`
--

INSERT INTO `peserta` (`id_peserta`, `email`, `nama`, `sekolah`, `jurusan`, `no_hp`, `alamat`, `bidang`) VALUES
(83, '', 'bawba', 'awdwad', 'awdaw', 'awdawd', 'awdawd', ''),
(87, 'hiatushiatusx@gmail.com', 'sus', '124124', 'INFORMATIKA', '0819123881', 'bang', 'data-science'),
(93, 'antnjg2306@gmail.com', 'ardi', '222', '666', '222', '12414', 'devops');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `username` varchar(255) NOT NULL,
  `password` varchar(225) NOT NULL,
  `failed_login_attempts` int(11) DEFAULT NULL,
  `is_locked` tinyint(4) NOT NULL,
  `reset_token` varchar(255) NOT NULL,
  `reset_token_expires` datetime DEFAULT NULL,
  `role` enum('users','admin','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`username`, `password`, `failed_login_attempts`, `is_locked`, `reset_token`, `reset_token_expires`, `role`) VALUES
('admin', '$2y$10$USI20JOsF4qDlR5TZL3GY.9vDxDEc/khU5jxJ5HEnZBbuM4tuadHW', 0, 0, 'bd3ba4ca0c17ed5c84530c9eb9a5abae0477a07037e6b7ef0a3ec663a94b3895', '2024-01-11 22:38:35', 'admin'),
('user', '21232f297a57a5a743894a0e4a801fc3', 10, 1, '448e0f3c181d4e36411f01fdd8291d8e471f93af374176b392c2a1676640bcac', '2024-01-10 23:43:23', 'users'),
('user10', '990d67a9f94696b1abe2dccf06900322', 2, 0, '', NULL, 'users'),
('user2', '7e58d63b60197ceb55a1c487989a3720', 0, 0, '', NULL, 'users'),
('user3', '92877af70a45fd6a2ed7fe81e1236b78', 5, 0, '', NULL, 'users'),
('user4', '$2y$10$0zUFscpsGIsGOZi4caeIfOztlcPBq.RyJKg950oMKarDRcRPzdxfi', 0, 0, '', NULL, 'users'),
('user5', '$2y$10$DlgOnxpyP/CZmEfjlPP3COpy9ADqr9poakHY8FRvJWzCNOjQ2.uLu', 0, 0, '', NULL, 'users');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login_bc`
--

CREATE TABLE `tb_login_bc` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone_number` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registration_time` datetime DEFAULT NULL,
  `otp_code` varchar(6) DEFAULT NULL,
  `otp_expiration` datetime DEFAULT NULL,
  `status` enum('notverified','verified') NOT NULL,
  `failed_login_attempts` int(11) NOT NULL,
  `is_locked` tinyint(4) NOT NULL,
  `reset_token` varchar(255) NOT NULL,
  `reset_token_expires` datetime DEFAULT NULL,
  `role` enum('users') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_login_bc`
--

INSERT INTO `tb_login_bc` (`id`, `username`, `phone_number`, `email`, `password`, `registration_time`, `otp_code`, `otp_expiration`, `status`, `failed_login_attempts`, `is_locked`, `reset_token`, `reset_token_expires`, `role`) VALUES
(62, 'awdaw', 103131, 'hiatushiatusx@gmail.com', '$2y$10$UNehAOuYrw.jRPwuRQMGBOb/fAOWmVW1lyt5jmNuasLzp7wwACmcW', '2024-01-12 11:22:32', '412743', '2024-01-12 11:32:32', 'verified', 0, 0, '', NULL, 'users'),
(64, 'awdwadas', 131, 'ardiansyah3151@gmail.com', '$2y$10$JUqrHPWaQE6AnK9VHWR/Ge.4Z2VX3kvmYLYVnzayauKbekhnxxwkm', '2024-01-12 11:41:46', '161484', '2024-01-12 11:51:46', 'verified', 0, 0, '', NULL, 'users'),
(65, 'awdwaawdadas', 131, 'antnjg2306@gmail.com', '$2y$10$zPG0sxiRF2tNIINg.k2DzuANzOdlG0KAR2h2J0zj9MqKo31OSlGOy', '2024-01-12 11:43:09', '937275', '2024-01-12 11:53:09', 'verified', 0, 0, '', NULL, 'users'),
(80, 'uci', 11, 'ruslikirana20@gmail.com', '$2y$10$CEJmj/6tTbT.kC0qCG9WWeEPUxU3MQAK.5Q6tR.vgTDuo5nT4e/pW', '2024-01-16 19:31:49', '178601', '2024-01-16 19:33:49', 'verified', 0, 0, 'f30744793297e6b0a8ae2e0179dfc9a601f82d487f7b46e99a791a73f80e05a1', '2024-01-16 20:32:44', 'users');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id_peserta`);

--
-- Indeks untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `tb_login_bc`
--
ALTER TABLE `tb_login_bc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT untuk tabel `tb_login_bc`
--
ALTER TABLE `tb_login_bc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
