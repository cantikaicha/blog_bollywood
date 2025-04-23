<?php
$host = 'localhost';
$user = 'root';
$pass = '';
$db   = 'blog_bollywood2';
// $db   = 'blog_bollywood';

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error() . ". Pastikan detail koneksi database sudah benar.");
} 
?>
