-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Apr 2025 pada 06.10
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
-- Database: `blog_bollywood2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(534) NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `publish_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image_url`, `publish_date`) VALUES
(5, 'Kabhi Khushi Kabhie Gham', 'Anak 20-an pasti sudah tidak asing lagi dengan film legendaris ini. Film India bergenre romantis yang cukup fenomenal di masanya yaitu tahun 2001 dan bahkan masih fenomenal sampai sekarang. Film ini bercerita tentang kisah yang terjadi di suatu keluarga yang ceritanya mengandung bawang karena saking sedihnya.\nDikisahkan, Yashvardhan Raichand dan sang istri bernama Nandini Raichand memutuskan akan mengadopsi seorang anak laki-laki bernama Rahul Raichand yang berumur 8 tahun.\nKetika dewasa, sosok Rahul kecil diperankan Shah Rukh Khan. Suatu hari, Rahul bertemu Anjali, seorang gadis cantik dan ceria yang diperankan Kajol. Singkatnya, Rahul telah jatuh cinta pada Anjali. Tapi sayangnya, keluarganya tak merestui hubungan mereka, karena Anjali berasal dari keluarga biasa. Sejak saat itu lah konflik terus terjadi dan kisah yang menguras air mata.\n', 'Picture1.jpg', '2025-04-17'),
(6, 'Ek Villain', 'Film yang ditayangkan pada tahun 2014 ini berhasil mencuri perhatian di seluruh dunia karena alur cerita yang menarik. Cerita sedih, kesal, romantis ada pada film satu ini, pecinta Bollywood pasti akan mengakui bahwa film ini terlalu worth it untuk di tonton.\r\nFilm ini berkisah tentang Guru, seorang mantan penjahat yang marah karena istrinya dibunuh oleh pembunuh berantai kejam, Rakesh. Guru (Sidharth Malhotra) adalah seorang penjahat yang berubah setelah jatuh cinta dengan Aisha (Shraddha Kapoor). Ia mencoba hidup normal, tetapi kehidupannya hancur ketika Aisha dibunuh oleh pembunuh berantai bernama Rakesh (Riteish Deshmukh). Guru kemudian membalaskan dendamnya kepada Rakesh.\r\n', 'Picture2.jpg', '2025-04-17'),
(7, 'Aashiqui 2', 'Film yang terkenal dengann soundtrack ‘Tum Hi Ho’ ini dirilis pada tahun 2013, yang dimana film ini menyentuh hati banyak penonton dengan kisah cinta yang intens dan penuh kesedihan. film ini adalah sekuel dari film \'Aashiqui\' yang dirilis pada tahun 1990. \'Aashiqui 2\' mengisahkan tentang cinta yang indah namun penuh dengan penderitaan dan pengorbanan, menjadikannya sebuah perjalanan emosional yang mendalam.\r\n\'Aashiqui 2\' mengikuti kisah Rahul (diperankan oleh Aditya Roy Kapur), seorang penyanyi terkenal yang sedang berada di puncak kariernya namun terjebak dalam kecanduan alkohol dan depresi. Hidupnya berubah drastis saat ia bertemu dengan Aarohi (diperankan oleh Shraddha Kapoor), seorang penyanyi kafe yang memiliki bakat luar biasa tetapi belum dikenal. Rahul melihat potensi besar dalam diri Aarohi dan memutuskan untuk membantunya mencapai impian di dunia musik.\r\nSeiring waktu, hubungan antara Rahul dan Aarohi berkembang dari kerja sama profesional menjadi cinta yang dalam. Namun, kesuksesan Aarohi juga membawa tantangan besar dalam hubungan mereka. Rahul, yang semakin tenggelam dalam kecanduan alkohol dan perasaannya yang gelap, mulai menunjukkan sisi destruktif yang mempengaruhi kehidupan Aarohi. Konflik ini membangun ketegangan emosional yang memuncak dalam akhir cerita yang tragis.\r\n', 'Picture3.jpg', '2025-04-17'),
(8, 'Padmavati', 'Film ini tayang pada tahun 2018 dengan latar kerajaan yang mengambil cerita dari kerajaan di India pada abad abad lalu. Ceita film ini sangatlah menarik dan banyak pelajaran yang dapat dipetik, misalnya keadilan, kesetiaan, dan keserakahan yang musnah.\r\nPadmaavat mengisahkan Padmavati (Deepika Padukone), seorang putri kerajaan Sinhala yang menikah dengan Raja Rajput, Ratan Singh (Shahid Kapoor). Kisah tersebut berkelindan dengan perjalanan Alauddin Khilji (Ranveer Singh) yang berambisi menjadi raja Delhi dan menaklukkan kerajaan-kerajaan lainnya. Sebab pengaruh dan sakit hati Raghav Chetan, seorang Brahma yang diusir dari Mewar Ratan Singh, Alauddin dengan tekad bajanya bersikeras ingin merebut sang ratu Padmavati dari kerajaannya. Disinilah keberanian, ketegasan dan kecerdasan Padmavati diuji untuk menghadapi Alauddin Khilji yang digambarkan sebagai seorang raja yang keji.\r\nKisah Rani Padmavati sendiri memiliki beragam versi, antara lain versi Malik Mohammad Jayasi, James Tod, Hemratan, dan berbagai karya literatur lainnya.\r\n', 'Picture4.jpg', '2018-02-02'),
(9, 'Sanam Teri Kasam', 'Film yang rilis pada tahun 2016 ini berhasil mencuri hati para penonton. Perjuangan cinta yang apik dan menguras emosi dan adat istiadat India juga digambarkan dalam film ini.\r\nBerkisah tentang Saru, seorang pustakawan muda yang kesulitan mendapatkan pasangan karena dianggap kurang menarik. Tekanan datang dari keluarga, terutama saat tunangan adiknya memberi batas waktu satu bulan untuk Saru menikah. Ayahnya pun tidak merestui hubungan apa pun, membuat Saru merasa terpinggirkan.\r\nDalam keputusasaan, Saru bertemu Inder, mantan narapidana yang tinggal satu apartemen. Awalnya mereka bertemu tak sengaja, lalu menjadi dekat, meski hubungan mereka tak direstui. Saat Saru jatuh sakit, dokter menyatakan ia mengidap meningoma dan tak punya banyak waktu. Ia pun meminta Inder untuk menikahinya. Mereka sempat merasakan kebahagiaan singkat sebelum akhirnya Saru meninggal di pelukan Inder, yang terus mengenangnya setelah kepergiannya.', 'Picture5.jpg', '2025-04-17'),
(10, 'Teri Baaton Mein Aisa Uljha Jiya', 'Film ini rilis pada tahun 2024, film ini menggabungkan unsur Artificial Intelligence (AI), perasaan  manusia, dan teknologi. Film ini bercerita tentang  kisah cinta antara Aryan Agnihotri (Shahid Kapoor) dan Sifra (Kriti Sanon), robot wanita super cerdas.\r\nFilm ini menceritakan Aryan, insinyur robotika asal India, yang pergi ke AS dan jatuh cinta pada SIFRA asisten cerdas yang ternyata adalah robot ciptaan bibinya. Setelah mengetahui identitas asli SIFRA, Aryan patah hati dan kembali ke India untuk menjalani perjodohan. Namun, ia tak bisa melupakan SIFRA dan akhirnya membawanya pulang sebagai calon istri, tanpa memberi tahu keluarganya bahwa SIFRA adalah robot. Hubungan mereka diuji saat SIFRA mengalami kerusakan sistem, termasuk di hari pernikahan. Film ini memadukan komedi, romansa, dan refleksi etis tentang hubungan manusia dengan kecerdasan buatan.\r\n', 'Picture6.jpg', '2025-04-17'),
(11, 'Dilwale', 'Film ini rilis tahun 2015 yang dibintangi oleh 2 artis terkenal Bollywood, yaitu Kajol dan Shahrukh Khan. Film ini bercerita tentang perjalanan cinta antara Raj (Sha Rukh Khan) dan Meera (Kajol) yang terpisah karena kesalahpahaman.\r\nDilwale mengisahkan Raj, pemimpin klan gangster di Bulgaria, yang terjebak dalam konflik antara dua keluarga kriminal. Hidupnya berubah ketika ia jatuh cinta pada Meera, tanpa mengetahui bahwa Meera adalah putri musuh utamanya. Hubungan mereka hancur karena pengkhianatan masa lalu. Bertahun-tahun kemudian, adik Raj, Veer, jatuh cinta pada adik Meera, mempertemukan kembali dua keluarga yang berseteru. Lewat serangkaian kilas balik dan aksi penuh ketegangan, rahasia lama terungkap dan kesalahpahaman diselesaikan, hingga akhirnya Raj dan Meera kembali bersatu.\r\n', 'Picture7.jpg', '2025-04-17'),
(12, 'Ramaiya Vastavaiya', 'Film ini rilis pada tahun 2013, dibintangi oleh Girish Kumar (Ram) bersama Shruti Haasan (Sona) dalam peran utama. Film ini tidak hanya bergenre romantis tapi juga diselingi drama komedi yang dijamin ceritanya tidak membosankan.\r\nSona, gadis desa dari Punjab, dibesarkan oleh kakaknya, Raghuveer. Hidup mereka sulit karena hutang kepada Zamindar. Saat Ram, pemuda kaya dari Australia, datang ke desa untuk menghadiri pernikahan sepupunya, ia bertemu Sona. Meski awalnya tak akur, cinta tumbuh di antara mereka. Namun, ibu Ram menentang hubungan itu karena perbedaan status sosial. Untuk membuktikan cintanya, Ram menerima tantangan Raghuveer bekerja di ladang. Setelah melewati banyak ujian dan menyelamatkan Sona dari penculikan, Ram berhasil mendapatkan restu keluarga. Meski Raghuveer harus dipenjara karena melindungi Ram, ia akhirnya hadir di pernikahan adiknya yang penuh kebahagiaan.\r\n', 'Picture8.jpg', '2025-04-17'),
(13, 'Pal Pal Dil Ke Paas', 'Film bergenre romantis yang berlatar belakang sebuah pendakian gunung yang dilakukan seorang vlogger dan seorang pemilik kamp, kisah cinta mereka tumbuh dalam pendakian tersebut. Film yang dibintangi oleh Karan Deol (Karan Sehgal) dan Shaheer Bamba (Sahher Seth) ini dirilis pada 2019.\r\nFilm Pal Pal Dil Ke Paas menceritakan Sahher, seorang gadis terkenal di media sosial yang diminta datang ke tempat wisata alam untuk membuat ulasan. Tempat itu dikelola oleh Karan, seorang pria baik hati yang tinggal di pegunungan. Awalnya, Sahher menganggap tempat itu tidak sebanding dengan harganya, tapi setelah beberapa hari bersama Karan, dia mulai melihat sisi lain dari tempat itu dan dari Karan sendiri. Mereka mulai saling menyukai, meski belum berani mengungkapkan perasaan. Cerita ini menunjukkan bagaimana dua orang dari dunia yang berbeda bisa saling jatuh cinta lewat pengalaman sederhana.\r\n', 'Picture9.jpg', '2025-04-17'),
(14, 'Kal Ho Naa Ho', 'Film ini di rilis pada tahun 2003, film yang terkenal dengan cerita sedih dan pengorbanan perasaan cinta ini berhasil dibintangi oleh Preity Zinta (Naina), Shahrukh Khan (Aman).\r\nFilm Kal Ho Naa Ho berkisah tentang Naina, seorang mahasiswi di New York yang hidupnya kelam pasca kematian ayahnya dan konflik keluarga. Kehadiran tetangga ceria, Aman membawa perubahan positif dan cinta bagi Naina. Namun, Aman menyembunyikan penyakit jantungnya dan berusaha menjodohkan Naina dengan sahabatnya, Rohit. Setelah terungkap rahasia keluarga, mereka berdamai. Naina menikah dengan Rohit, dan Aman meninggal. Bertahun-tahun kemudian, Naina mengenang pengorbanan Aman.\r\n', 'Picture10.jpg', '2025-04-17');

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
