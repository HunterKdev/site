-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 May 2022, 14:39:42
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sitedb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anasayfa`
--

CREATE TABLE `anasayfa` (
  `id` int(11) NOT NULL,
  `ustBaslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `altBaslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `linkMetin` varchar(2500) COLLATE utf8_turkish_ci NOT NULL,
  `link` varchar(2500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `anasayfa`
--

INSERT INTO `anasayfa` (`id`, `ustBaslik`, `altBaslik`, `linkMetin`, `link`) VALUES
(2, 'Hoşgeldiniz', 'Sizinle Karşılaşmak Güzel', 'Daha Fazlası için tıklayınız..', 'servis.php');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haber`
--

CREATE TABLE `haber` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `foto1` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `foto2` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `foto3` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `baslik` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ozet` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  `metin` varchar(2500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sira` tinyint(4) NOT NULL,
  `aktif` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `haber`
--

INSERT INTO `haber` (`id`, `foto`, `foto1`, `foto2`, `foto3`, `baslik`, `ozet`, `metin`, `sira`, `aktif`) VALUES
(7, 'projetubitak.png', '', '', '', 'TUBİTAK Projesi', 'Web Tasarım Tubitak Projesi', 'Tire Ahi Evran Mesleki Ve Teknik Anadolu Lisesi Web Tasarım Bölümü Tubitak Projesi', 0, b'0'),
(8, 'proje1.jpg', '', '', '', 'Örnek1', 'Örnek1', 'Örnek1', 0, b'0'),
(9, 'proje2.jpg', '', '', '', 'Örnek2', 'Örnek2', 'Örnek2', 0, b'0'),
(10, 'frontend_webdeveloper.jpg', '', '', '', 'Örnek3', 'Örnek3', 'Örnek3', 0, b'0'),
(11, 'proje (1).jpg', '', '', '', 'Örnek4', 'Örnek4', 'Örnek4', 0, b'0'),
(12, 'proje (5).jpg', '', '', '', 'Örnek5', 'Örnek5', 'Örnek5', 0, b'0'),
(13, 'proje (6).jpg', '', '', '', 'Örnek6', 'Örnek6', 'Örnek6', 0, b'0'),
(14, 'proje (7).jpg', '', '', '', 'Örnek7', 'Örnek7', 'Örnek7', 0, b'0'),
(15, 'proje (8).jpg', '', '', '', 'Örnek8', 'Örnek8', 'Örnek8', 0, b'0'),
(16, 'proje (9).jpg', '', '', '', 'Örnek9', 'Örnek9', 'Örnek9', 0, b'0'),
(17, 'proje (10).jpg', '', '', '', 'Örnek10', 'Örnek10', 'Örnek10', 0, b'0'),
(18, 'proje (11).jpg', '', '', '', 'Örnek11', 'Örnek11', 'Örnek11', 0, b'0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `id` int(11) NOT NULL,
  `foto` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  `tarih` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `baslik` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `metin` varchar(200) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`id`, `foto`, `tarih`, `baslik`, `metin`) VALUES
(11, 'okul1.jpg', '', '1944 - Tire Ahi Evran Mesleki Ve Teknik Anadolu Li', 'Okulumuz bu tarihte kuruldu.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizdateam`
--

CREATE TABLE `hakkimizdateam` (
  `id` int(11) NOT NULL,
  `foto` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `teamIsim` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `teamBolum` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `teamLinkInstagram` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `teamLinkGithub` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `teamLinkFacebook` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizdateam`
--

INSERT INTO `hakkimizdateam` (`id`, `foto`, `teamIsim`, `teamBolum`, `teamLinkInstagram`, `teamLinkGithub`, `teamLinkFacebook`) VALUES
(10, 'berkay.png', 'Berkay KARADİŞ', 'Web Tasarım', 'berkaykaradis', 'berkaykaradis', 'profile.php?id=100007643478325'),
(11, 'filiz.png', 'Filiz GÜLEÇ KARAKAYA', 'BT Öğretmeni', 'filizguleckrkyk', 'filizguleckarakaya', 'filizguleckarakaya'),
(12, 'ibrahim.png', 'İbrahim DALARCA', 'Web Tasarım', 'iibrahim.35', 'HunterKdev', 'ibrahim.dalarca.1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(11) NOT NULL,
  `ad` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `mesaj` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `tarih` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`id`, `ad`, `email`, `mesaj`, `tarih`) VALUES
(39, 'ali sezen', 'aaa@gmail.com', 'bnn', '2022-03-23 18:30:45'),
(40, 'ali sezen', 'aaa@gmail.com', 'selam abi ben site yaptırcam beni ara 48787487878', '2022-03-23 18:38:41'),
(41, 'ali', 'ali@gmail.com', 'hggıyfıg', '2022-03-24 13:05:42');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `id` int(11) NOT NULL,
  `kadi` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `parola` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `yetki` tinyint(4) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `aktif` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`id`, `kadi`, `parola`, `yetki`, `email`, `aktif`) VALUES
(1, 'admin', '105a9a2d46f64e147097c986076d2164', 1, 'alisezen@gmail.com', b'1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolyo`
--

CREATE TABLE `portfolyo` (
  `id` int(11) NOT NULL,
  `kfoto` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `bfoto` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `baslik` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `client` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `aciklama` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `sira` int(11) NOT NULL,
  `aktif` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `referanslar`
--

CREATE TABLE `referanslar` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ustBaslik` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT 'Tanımlama bilgisi',
  `link` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sira` smallint(6) NOT NULL,
  `aktif` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `referanslar`
--

INSERT INTO `referanslar` (`id`, `foto`, `ustBaslik`, `link`, `sira`, `aktif`) VALUES
(67, 'referans1.jpg', 'İzmir Çınarlı MTAL\'ne Bilişim Laboratuvarı Kurduk', 'https://cinarlieml.meb.k12.tr/', 1, b'1'),
(68, 'referans2.jpg', 'Örnek1', 'inc/404.html', 2, b'1'),
(69, 'referans3.jpg', 'Örnek2', 'inc/404.html', 3, b'1'),
(70, 'ref (9).jpg', 'Örnek3', 'inc/404.html', 4, b'1'),
(71, 'ref (1).jpg', 'Örnek4', 'inc/404.html', 5, b'1'),
(72, 'ref (2).jpg', 'Örnek5', 'inc/404.html', 6, b'1'),
(73, 'ref (3).jpg', 'Örnek6', 'inc/404.html', 7, b'1'),
(74, 'ref (10).jpg', 'Örnek8', 'inc/404.html', 9, b'1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `servis`
--

CREATE TABLE `servis` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `metin` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `sira` smallint(6) NOT NULL,
  `aktif` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `servis`
--

INSERT INTO `servis` (`id`, `foto`, `baslik`, `metin`, `sira`, `aktif`) VALUES
(22, 'hizmet1.jpg', 'Site Tasarım', 'HTML, CSS, PHP Site yapılır', 1, b'1'),
(23, 'hizmet2.png', 'Örnek1', 'Örnek1', 2, b'1'),
(24, 'hizmet3.jpg', 'Örnek2', 'Örnek2', 3, b'1'),
(25, 'hizmet4.jpg', 'Örnek3', 'Örnek3', 4, b'1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `anasayfa`
--
ALTER TABLE `anasayfa`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `haber`
--
ALTER TABLE `haber`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hakkimizdateam`
--
ALTER TABLE `hakkimizdateam`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kadi` (`kadi`);

--
-- Tablo için indeksler `portfolyo`
--
ALTER TABLE `portfolyo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `referanslar`
--
ALTER TABLE `referanslar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `anasayfa`
--
ALTER TABLE `anasayfa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `haber`
--
ALTER TABLE `haber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizda`
--
ALTER TABLE `hakkimizda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizdateam`
--
ALTER TABLE `hakkimizdateam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `portfolyo`
--
ALTER TABLE `portfolyo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `referanslar`
--
ALTER TABLE `referanslar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Tablo için AUTO_INCREMENT değeri `servis`
--
ALTER TABLE `servis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
