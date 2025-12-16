-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2025 pada 12.50
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a25_dbsdg7`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_kelola_artikel`
--

CREATE TABLE `admin_kelola_artikel` (
  `id_admin` int(11) DEFAULT NULL,
  `id_artikel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_kelola_forum`
--

CREATE TABLE `admin_kelola_forum` (
  `id_admin` int(11) DEFAULT NULL,
  `id_forum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `isi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `sumber` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `berdiskusi`
--

CREATE TABLE `berdiskusi` (
  `id_user` int(11) DEFAULT NULL,
  `id_forum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bermain_game`
--

CREATE TABLE `bermain_game` (
  `id_user` int(11) DEFAULT NULL,
  `id_game` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum`
--

CREATE TABLE `forum` (
  `id_forum` int(11) NOT NULL,
  `isi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `game`
--

CREATE TABLE `game` (
  `id_game` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `poin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `membaca_artikel`
--

CREATE TABLE `membaca_artikel` (
  `id_user` int(11) DEFAULT NULL,
  `id_artikel` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mengerjakan_quiz`
--

CREATE TABLE `mengerjakan_quiz` (
  `id_user` int(11) DEFAULT NULL,
  `id_quiz` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz`
--

CREATE TABLE `quiz` (
  `id_quiz` int(11) NOT NULL,
  `soal` text DEFAULT NULL,
  `poin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `paswword` varchar(100) DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `usia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `admin_kelola_artikel`
--
ALTER TABLE `admin_kelola_artikel`
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- Indeks untuk tabel `admin_kelola_forum`
--
ALTER TABLE `admin_kelola_forum`
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_forum` (`id_forum`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `berdiskusi`
--
ALTER TABLE `berdiskusi`
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_forum` (`id_forum`);

--
-- Indeks untuk tabel `bermain_game`
--
ALTER TABLE `bermain_game`
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_game` (`id_game`);

--
-- Indeks untuk tabel `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id_forum`);

--
-- Indeks untuk tabel `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`);

--
-- Indeks untuk tabel `membaca_artikel`
--
ALTER TABLE `membaca_artikel`
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- Indeks untuk tabel `mengerjakan_quiz`
--
ALTER TABLE `mengerjakan_quiz`
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_quiz` (`id_quiz`);

--
-- Indeks untuk tabel `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id_quiz`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `forum`
--
ALTER TABLE `forum`
  MODIFY `id_forum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `game`
--
ALTER TABLE `game`
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id_quiz` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin_kelola_artikel`
--
ALTER TABLE `admin_kelola_artikel`
  ADD CONSTRAINT `admin_kelola_artikel_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`),
  ADD CONSTRAINT `admin_kelola_artikel_ibfk_2` FOREIGN KEY (`id_artikel`) REFERENCES `artikel` (`id_artikel`);

--
-- Ketidakleluasaan untuk tabel `admin_kelola_forum`
--
ALTER TABLE `admin_kelola_forum`
  ADD CONSTRAINT `admin_kelola_forum_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`),
  ADD CONSTRAINT `admin_kelola_forum_ibfk_2` FOREIGN KEY (`id_forum`) REFERENCES `forum` (`id_forum`);

--
-- Ketidakleluasaan untuk tabel `berdiskusi`
--
ALTER TABLE `berdiskusi`
  ADD CONSTRAINT `berdiskusi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `berdiskusi_ibfk_2` FOREIGN KEY (`id_forum`) REFERENCES `forum` (`id_forum`);

--
-- Ketidakleluasaan untuk tabel `bermain_game`
--
ALTER TABLE `bermain_game`
  ADD CONSTRAINT `bermain_game_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `bermain_game_ibfk_2` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`);

--
-- Ketidakleluasaan untuk tabel `membaca_artikel`
--
ALTER TABLE `membaca_artikel`
  ADD CONSTRAINT `membaca_artikel_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `membaca_artikel_ibfk_2` FOREIGN KEY (`id_artikel`) REFERENCES `artikel` (`id_artikel`);

--
-- Ketidakleluasaan untuk tabel `mengerjakan_quiz`
--
ALTER TABLE `mengerjakan_quiz`
  ADD CONSTRAINT `mengerjakan_quiz_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `mengerjakan_quiz_ibfk_2` FOREIGN KEY (`id_quiz`) REFERENCES `quiz` (`id_quiz`);
COMMIT;

