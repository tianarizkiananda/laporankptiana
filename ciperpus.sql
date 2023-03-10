-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2023 pada 04.36
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciperpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `nis` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jk` varchar(2) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`nis`, `nama`, `jk`, `ttl`, `kelas`, `image`) VALUES
('121209', 'Fahira', 'P', '2018-01-02', 'VII', ''),
('121210', 'Panji Asmoro', 'L', '2017-09-18', '07', ''),
('121211', 'Bayu Agung ', 'L', '2017-09-18', '07', ''),
('121212', 'Aji', 'L', '2018-01-03', 'VII', ''),
('121213', 'Hana', 'L', '2018-01-19', 'VII', ''),
('121214', 'Samudera', 'L', '2018-01-26', 'VII', ''),
('121215', 'Fathan', 'L', '2018-01-26', 'VII', ''),
('121216', 'Baim', 'L', '2018-01-26', 'VII', 'user1.jpg'),
('121217', 'Cahyo', 'L', '2018-01-26', 'VII', 'user2.jpg'),
('121218', 'Rian', 'L', '2018-01-26', 'VII', 'user3.jpg'),
('121219', 'Naus', 'L', '2018-01-26', 'VII', 'user4.jpg'),
('121220', 'Tole', 'L', '2018-01-26', 'VII', 'user5.jpg'),
('121221', 'Fadil', 'L', '2018-01-25', 'VII', 'fadil.jpg'),
('121223', 'Sela', 'P', '2018-01-26', 'VII', 'sela.jpg'),
('121224', 'Nova', 'P', '2018-01-26', 'VII', 'nova.jpg'),
('121225', 'Niken', 'P', '2018-01-26', 'VII', ''),
('121226', 'Fatih', 'L', '2018-01-26', 'VII', 'fatih.png'),
('121227', 'Yoga', 'L', '2018-01-26', 'VII', 'yoga.jpg'),
('121228', 'Apri', 'L', '2018-01-26', 'VII', 'apri.jpg'),
('121229', 'Akila', 'L', '2018-01-26', 'VII', 'akila.jpg'),
('121230', 'Bimo', 'L', '2018-01-26', 'VII', 'bimo.jpg'),
('301190032', 'akmal', 'L', '2023-01-11', '3', 'akmal.PNG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `klasifikasi` varchar(100) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `pengarang`, `klasifikasi`, `image`) VALUES
('23082', 'buku porno ', 'akmmmm', '<h1>werwer<em>werwerwer23234AAA@</em></h1>', 'buku-porno-.png'),
('7611', 'Dseain Kreatif Dengan Adobe Potoshop', 'Muhammad Godc', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'dseain-kreatif-dengan-adobe-potoshop.jpg'),
('7706', 'Membuat Website Portal Berita Dengan Laravel', 'Agusasaputra', '<p>dfsdf</p>', 'membuat-website-portal-berita-dengan-laravel.jpg'),
('7707', 'Trik seo & Security CodeIgniter', 'Anhar', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'trik-seo--security-codeigniter1.jpg'),
('7711', 'CSS & HTML Web Design', 'Panji Asmoro', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been t', 'css--html-web-design.jpg'),
('7712', 'HTML, CSS & JavaScript', 'Lukmanul Hakim', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been t', 'html-css--javascript.jpg'),
('7714', 'Seminggu Belajar Laravel', 'Rahmat Awaludin', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been t', 'seminggu-belajar-laravel.JPG'),
('7715', 'Menyelami Framework Laravel', 'Rahmat Awaludin', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been&n', 'menyelami-framework-laravel.JPG'),
('7723', 'Computer Graphic Design', 'Hendi Hendratman', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'computer-graphic-design1.jpg'),
('7726', 'Responsive Web Design With Bootstrap', 'Panji Asmoro', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'responsive-web-design-with-bootstrap.jpg'),
('7745', 'PHP Advanced', 'Agussalim', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'php-advanced1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_transaksi` varchar(12) DEFAULT NULL,
  `tgl_pengembalian` date DEFAULT NULL,
  `denda` varchar(2) DEFAULT NULL,
  `nominal` double DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id_transaksi`, `tgl_pengembalian`, `denda`, `nominal`, `id_petugas`) VALUES
('20180411001', '2018-04-19', 'Y', 10000, 7),
('20180417004', '2018-04-19', 'N', 0, 7),
('20180411002', '2018-04-21', 'Y', 10000, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `full_name`, `password`) VALUES
(7, 'panjiasmoro', 'Panji Asmoro', '$2y$05$siU0H0bk1eBtkF8zOOxN5uA6muuP0ONCbeyekCAVBEwE0HMbwkCr.'),
(8, 'admin', 'Admin Perpus', '$2y$05$0RfFGKdD.I9/9SRZd9../.kIQg7pwgDxhICT0t1aPZh29Ia2oRA3u'),
(9, 'akmal', 'sabili', '$2y$05$YslzY9BHK827CM22GtLdl.6J.fp8eKcMoLRam8dRN6MOkvaUHKHRi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp`
--

CREATE TABLE `tmp` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(12) DEFAULT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `kode_buku` varchar(5) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nis`, `kode_buku`, `tanggal_pinjam`, `tanggal_kembali`, `status`, `id_petugas`) VALUES
('20180411001', '121221', '7706', '2018-04-11', '2018-04-18', 'Y', 7),
('20180411001', '121221', '7723', '2018-04-11', '2018-04-18', 'Y', 7),
('20180411002', '121210', '7726', '2018-04-11', '2018-04-18', 'Y', 7),
('20180411003', '121217', '7706', '2018-04-11', '2018-04-18', 'N', 7),
('20180411003', '121217', '7711', '2018-04-11', '2018-04-18', 'N', 7),
('20180411003', '121217', '7715', '2018-04-11', '2018-04-18', 'N', 7),
('20180417004', '121209', '7611', '2018-04-17', '2018-04-24', 'Y', 7),
('20230108005', '121213', '7711', '2023-01-08', '2023-01-15', 'N', 8),
('20230109006', '301190032', '7745', '2023-01-09', '2023-01-16', 'N', 9);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
