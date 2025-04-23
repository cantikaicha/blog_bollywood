<?php
include 'koneksi.php';

$query = "
-- Ambil data artikel dan gabungkan dengan data penulis dan kategori yang terkait
SELECT 
    a.title,                  -- Judul artikel
    a.publish_date,          -- Tanggal artikel dipublikasikan
    a.content,               -- Isi lengkap artikel
    a.image_url,             -- Nama file gambar untuk artikel

    -- Gabungkan semua nama penulis (jika lebih dari satu) menjadi satu baris, dipisahkan koma
    GROUP_CONCAT(DISTINCT au.name SEPARATOR ', ') AS authors,

    -- Gabungkan semua nama kategori (jika lebih dari satu) menjadi satu baris, dipisahkan koma
    GROUP_CONCAT(DISTINCT c.name SEPARATOR ', ') AS categories

FROM article a  -- Tabel utama berisi artikel

-- Join ke tabel relasi many-to-many antara artikel dan penulis
JOIN article_author aa ON a.id = aa.article_id
-- Join ke tabel master penulis untuk ambil nama penulis
JOIN author au ON aa.author_id = au.id

-- Join ke tabel relasi many-to-many antara artikel dan kategori
JOIN article_category ac ON a.id = ac.article_id
-- Join ke tabel master kategori untuk ambil nama kategori
JOIN category c ON ac.category_id = c.id

-- Kelompokkan hasil per artikel (karena kita pakai GROUP_CONCAT)
GROUP BY a.id

-- Urutkan hasil berdasarkan tanggal publish (terbaru di atas)
ORDER BY a.publish_date DESC;
";

$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menikmati Pesona Bollywood</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="container">
        <h1 class="judul-besar">Menikmati Pesona Bollywood: Film-Film yang Tak Boleh Terlewatkan</h1>
        <p class="paragraf-pembuka">Industri perfilman India, atau yang lebih dikenal dengan Bollywood, telah menjadi
            salah satu kiblat perfilman terbesar di dunia dengan kekayaan narasi, keindahan visual, dan sentuhan musik
            yang memukau. Selama beberapa dekade, Bollywood telah memberikan kontribusi signifikan dalam perkembangan
            sinema global dengan menghadirkan karya-karya yang tidak hanya menghibur tetapi juga sarat akan nilai
            budaya, filosofi kehidupan, dan pesan moral yang mendalam.
            <br /><br />
            Dari drama keluarga yang mengharukan, kisah cinta yang memesona, hingga film aksi yang menegangkan,
            Bollywood menawarkan berbagai genre yang cocok untuk semua kalangan penonton. Keunikan perpaduan antara
            tradisi dan modernitas dalam film-film Bollywood telah berhasil menciptakan identitas tersendiri yang
            membedakannya dari industri film lainnya. Tidak mengherankan jika ketenaran film-film India telah melampaui
            batas geografis dan budaya, menjadikannya salah satu ekspor budaya paling sukses dari negara tersebut.
            <br /><br />
            Dalam artikel ini, kita akan menjelajahi beberapa film Bollywood terbaik yang tidak hanya menjadi tonggak
            sejarah dalam industri perfilman India tetapi juga menunjukkan keragaman dan kedalaman yang ditawarkan oleh
            Bollywood. Dari karya klasik yang tak lekang oleh waktu hingga film-film kontemporer yang inovatif, inilah
            panduan singkat untuk para pencinta film yang ingin memulai perjalanan menikmati pesona dunia perfilman
            India.
            Berikut adalah top 10 film Bollywood yang wajib di tonton :
        </p>

        <?php while ($row = mysqli_fetch_assoc($result)): ?>
            <div class="card">
                <img src="./images/<?= htmlspecialchars($row['image_url']) ?>" alt="<?= htmlspecialchars($row['title']) ?>">
                <h2><?= htmlspecialchars($row['title']) ?></h2>
                <p class="small-text">
                    <strong>Dipublikasikan:</strong> <?= htmlspecialchars($row['publish_date']) ?> |
                    <strong>Penulis:</strong> <?= htmlspecialchars($row['authors']) ?> |
                    <strong>Kategori:</strong> <?= htmlspecialchars($row['categories']) ?>
                </p>
                <!-- <p><?= nl2br(htmlspecialchars($row['content'])) ?></p> -->
                <?php
                $content = $row['content'];
                // Pisahkan jadi paragraf
                $paragraphs = preg_split("/\n{1,}/", $content);

                // Tampilkan paragraf tanpa nl2br, biar gak nambah <br> yang bikin dobel jarak
                foreach ($paragraphs as $p) {
                    echo '<p style="text-indent: 2ch; text-align: justify; margin-bottom: 0.75em;">' . htmlspecialchars(trim($p)) . '</p>';
                }
                ?>
            </div>
        <?php endwhile; ?>
    </div>

    <footer>
        <div class="footer-content">
            <p>&copy; 2025 Blog film | Dibuat untuk Tugas Pemrograman Web
                <br /><br />
                Follow Me
            </p>
            <div class="social-media">
                <!-- TikTok Icon -->
                <a href="https://www.tiktok.com/@bemineaja?is_from_webapp=1&sender_device=pc" target="_blank" class="social-link">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="white" class="social-icon">
                        <path d="M19.59 6.69a4.83 4.83 0 0 1-3.77-4.25V2h-3.45v13.67a2.89 2.89 0 0 1-5.2 1.74 2.89 2.89 0 0 1 2.31-4.64 2.93 2.93 0 0 1 .88.13V9.4a6.84 6.84 0 0 0-1-.05A6.33 6.33 0 0 0 5 20.1a6.34 6.34 0 0 0 10.86-4.43v-7a8.16 8.16 0 0 0 4.77 1.52v-3.4a4.85 4.85 0 0 1-1-.1z" />
                    </svg>
                </a>
                <!-- Instagram Icon -->
                <a href="https://www.instagram.com/cantikamelatii?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==" target="_blank" class="social-link">
                    <svg xmlns="instagram-svgrepo-com.svg" width="24" height="24" viewBox="0 0 24 24" fill="white" class="social-icon">
                        <path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z" />
                    </svg>
                </a>
            </div>
        </div>
    </footer>
</body>

</html>