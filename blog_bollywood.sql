-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2025 pada 21.46
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
-- Database: `blog_bollywood`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `publish_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image_url`, `publish_date`) VALUES
(5, 'Kabhi Khushi Kabhie Gham', 'Anak 20-an pasti sudah tidak asing lagi dengan film legendaris ini...', '', '2025-04-17'),
(6, 'Ek Villain', 'Film yang ditayangkan pada tahun 2014 ini berhasil mencuri perhatian...', '', '2025-04-17'),
(7, 'Aashiqui 2', 'Film yang terkenal dengan soundtrack ‘Tum Hi Ho’ ini dirilis pada tahun 2013...', '', '2025-04-17'),
(8, 'Padmavati', 'Film ini tayang pada tahun 2018 dengan latar kerajaan di India...', '', '2018-02-02'),
(9, 'Sanam Teri Kasam', 'Film yang rilis pada tahun 2016 ini berhasil mencuri hati para penonton...', '', '2025-04-17'),
(10, 'Teri Baaton Mein Aisa Uljha Jiya', 'Film ini rilis pada tahun 2024, menggabungkan AI dan kisah cinta manusia...', '', '2025-04-17'),
(11, 'Dilwale', 'Film ini rilis tahun 2015 yang dibintangi oleh Kajol dan Shah Rukh Khan...', '', '2025-04-17'),
(12, 'Ramaiya Vastavaiya', 'Film ini rilis pada tahun 2013, dibintangi oleh Girish Kumar dan Shruti Haasan...', '', '2025-04-17'),
(13, 'Pal Pal Dil Ke Paas', 'Film bergenre romantis berlatar pendakian gunung dan cinta dua dunia berbeda...', '', '2025-04-17'),
(14, 'Kal Ho Naa Ho', 'Film ini dirilis pada tahun 2003, dibintangi oleh Preity Zinta dan Shah Rukh Khan...', '', '2025-04-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `article_author`
--

CREATE TABLE `article_author` (
  `article_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `article_author`
--

INSERT INTO `article_author` (`article_id`, `author_id`) VALUES
(5, 2),
(6, 2),
(7, 2),
(8, 3),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `article_category`
--

CREATE TABLE `article_category` (
  `article_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `article_category`
--

INSERT INTO `article_category` (`article_id`, `category_id`) VALUES
(5, 4),
(5, 5),
(6, 4),
(6, 5),
(6, 6),
(7, 4),
(7, 5),
(8, 7),
(8, 5),
(9, 8),
(9, 5),
(10, 8),
(10, 5),
(11, 8),
(11, 5),
(12, 8),
(12, 5),
(12, 9),
(13, 8),
(13, 5),
(14, 8),
(14, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `author`
--

INSERT INTO `author` (`id`, `name`, `bio`) VALUES
(2, 'Cantika Melati', 'Penulis artikel Bollywood'),
(3, 'Ali Satri Efendi', 'Penulis artikel Bollywood');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(4, 'Film Drama'),
(5, 'Romantis'),
(6, 'Action'),
(7, 'Drama kekaisaran'),
(8, 'Drama'),
(9, 'Komedi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `article_author`
--
ALTER TABLE `article_author`
  ADD KEY `article_id` (`article_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indeks untuk tabel `article_category`
--
ALTER TABLE `article_category`
  ADD KEY `article_id` (`article_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `article_author`
--
ALTER TABLE `article_author`
  ADD CONSTRAINT `article_author_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `article_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`);

--
-- Ketidakleluasaan untuk tabel `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `article_category_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `article_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
