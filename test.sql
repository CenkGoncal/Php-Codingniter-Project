-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 18 Haz 2016, 08:39:01
-- Sunucu sürümü: 5.6.17
-- PHP Sürümü: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `test`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aidat`
--

CREATE TABLE IF NOT EXISTS `aidat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ocak` int(11) NOT NULL,
  `subat` int(11) NOT NULL,
  `mart` int(11) NOT NULL,
  `nisan` int(11) NOT NULL,
  `mayis` int(11) NOT NULL,
  `haziran` int(11) NOT NULL,
  `temmuz` int(11) NOT NULL,
  `agustos` int(11) NOT NULL,
  `eylul` int(11) NOT NULL,
  `ekim` int(11) NOT NULL,
  `kasim` int(11) NOT NULL,
  `aralik` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `aidat`
--

INSERT INTO `aidat` (`id`, `ocak`, `subat`, `mart`, `nisan`, `mayis`, `haziran`, `temmuz`, `agustos`, `eylul`, `ekim`, `kasim`, `aralik`) VALUES
(1, 0, 0, 0, 10, 20, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aidattakip`
--

CREATE TABLE IF NOT EXISTS `aidattakip` (
  `tkpid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `month` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `dept` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `station` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`tkpid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=25 ;

--
-- Tablo döküm verisi `aidattakip`
--

INSERT INTO `aidattakip` (`tkpid`, `user`, `month`, `dept`, `station`, `year`) VALUES
(24, 'sercan', 'mart', '0', '1', 2015),
(23, 'artvinli', 'mart', '0', '0', 2015),
(22, 'Admin', 'mart', '0', '1', 2015);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anket`
--

CREATE TABLE IF NOT EXISTS `anket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AnketDurum` int(11) NOT NULL,
  `AnketBas` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `Soruid` int(11) NOT NULL,
  `SoruBas` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `SoruTip` int(11) NOT NULL,
  `Secenek` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=11 ;

--
-- Tablo döküm verisi `anket`
--

INSERT INTO `anket` (`id`, `AnketDurum`, `AnketBas`, `Soruid`, `SoruBas`, `SoruTip`, `Secenek`) VALUES
(4, 1, 'sağlık anketi', 1, 'soru1', 1, 'cevap1'),
(5, 1, 'sağlık anketi', 1, 'soru1', 1, 'cevap2'),
(6, 1, 'sağlık anketi', 2, 'soru2', 0, ''),
(7, 1, 'memnuniyet anketi', 1, 'soru 1 anket 2', 0, ''),
(8, 1, 'memnuniyet anketi', 2, 'soru 2 anket 2', 3, 'a option'),
(9, 1, 'memnuniyet anketi', 2, 'soru 2 anket 2', 3, 'b option'),
(10, 1, 'memnuniyet anketi', 2, 'soru 2 anket 2', 3, 'c option');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular`
--

CREATE TABLE IF NOT EXISTS `duyurular` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `aciklma` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `main` varchar(110) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=17 ;

--
-- Tablo döküm verisi `duyurular`
--

INSERT INTO `duyurular` (`did`, `baslik`, `aciklma`, `banner`, `main`, `durum`) VALUES
(1, 'test', '<b>mesaj</b>', '', 'duyuru-1.png', 1),
(7, 'Test Duyuru', '', '', '', 1),
(16, 'Test Duyuru12', 'duyuru', '', '', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlik`
--

CREATE TABLE IF NOT EXISTS `etkinlik` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `aciklma` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `main` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=20 ;

--
-- Tablo döküm verisi `etkinlik`
--

INSERT INTO `etkinlik` (`eid`, `baslik`, `aciklma`, `banner`, `main`, `durum`) VALUES
(1, 'etkinlik', '<i><b>dkkdk dk</b></i>', '', 'etkinlik-1.png', 0),
(19, 'Etkinlik 123', 'etkinlik', '', 'Etkinlik-2.png', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

CREATE TABLE IF NOT EXISTS `galeri` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `aciklma` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `main` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=12 ;

--
-- Tablo döküm verisi `galeri`
--

INSERT INTO `galeri` (`gid`, `baslik`, `aciklma`, `banner`, `main`, `durum`) VALUES
(10, 'abc galerisi', 'doga resimleri-1<br>', '0', '0', 1),
(11, 'Test Galeri', 'Test Galeri Açıklama<br>', '0', '0', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE IF NOT EXISTS `haberler` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `aciklma` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `banner` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `main` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=16 ;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`hid`, `baslik`, `aciklma`, `banner`, `main`, `durum`) VALUES
(12, 'Haberler 1-2', 'Bu bir <b>TEST-1 </b>haberidir.', ' ', 'haber-90.png', 1),
(14, 'Test Haber 123', 'bu bir bilgilendirme <b>test haber</b> konu yazısıdır.Uzun şekilde yazılması için laf <span style="color:rgb(255,0,0);"><b style="color: rgb(255, 0, 0);"><u style="color: rgb(255, 0, 0);"><i style="color: rgb(255, 0, 0);">uzatılmaktadır.</i></u></b></span><br>', 'haber-91.png', 'haber-91.png', 1),
(15, 'Test Haberi', 'deneme 123<br>', 'haber-93.png', '', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimler`
--

CREATE TABLE IF NOT EXISTS `resimler` (
  `Rid` int(11) NOT NULL AUTO_INCREMENT,
  `ftipi` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `baslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `sira` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`Rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=153 ;

--
-- Tablo döküm verisi `resimler`
--

INSERT INTO `resimler` (`Rid`, `ftipi`, `baslik`, `resim`, `sira`) VALUES
(92, 'Haber', 'Test Haber 123', 'haber-91.png', ''),
(93, 'Haber', 'Test Haberi', 'haber-93.png', ''),
(90, 'Haber', 'Haberler 1-2', 'haber-90.png', ''),
(89, 'Haber', 'Haberler 1-2', 'haber-89.png', ''),
(130, 'Galeri', 'abc galerisi', 'Chrysanthemum.jpg', '1'),
(127, 'Etkinlik', 'Etkinlik 123', 'Etkinlik-2.png', ''),
(131, 'Galeri', 'abc galerisi', 'Desert.jpg', '0'),
(134, 'Galeri', 'abc galerisi', 'Hydrangeas.jpg', '3'),
(128, 'Etkinlik', 'etkinlik', 'etkinlik-1.png', ''),
(129, 'Duyuru', 'test', 'duyuru-1.png', ''),
(147, 'Galeri', 'abc galerisi', 'galeri-4.png', '2'),
(148, 'Galeri', 'Test Galeri', 'Galeri-5.png', '4'),
(149, 'Galeri', 'Test Galeri', 'Galeri-6.png', '0'),
(150, 'Galeri', 'Test Galeri', 'Galeri-7.png', '2'),
(151, 'Galeri', 'Test Galeri', 'Galeri-8.png', '1'),
(152, 'Galeri', 'Test Galeri', 'Galeri-9.png', '3');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `smtpayar`
--

CREATE TABLE IF NOT EXISTS `smtpayar` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `post` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `smtpayar`
--

INSERT INTO `smtpayar` (`mid`, `host`, `post`, `user`, `pass`) VALUES
(1, '587', 'smtp.live.com', 'cenk_manga@hotmail.com', 'test');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uye`
--

CREATE TABLE IF NOT EXISTS `uye` (
  `uyeid` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `tc` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `tel` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `meslek` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `onay` int(11) NOT NULL,
  `uyetarih` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`uyeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=28 ;

--
-- Tablo döküm verisi `uye`
--

INSERT INTO `uye` (`uyeid`, `ad`, `soyad`, `tc`, `tel`, `email`, `adres`, `meslek`, `foto`, `onay`, `uyetarih`, `user`, `pass`) VALUES
(18, 'Admin', 'Admin1', '11788671368', '5364464907', 'cenkgoncal@gmail.com', 'adres 3', 'yazlımcı', '', 1, '', 'Admin', 'omtomdoy'),
(26, 'cenk', 'goncal', '2147483647', '2147483647', 'cenk_manga@hotmail.com', 'adres 2', 'yazılımcı', '10735540_790614320984083_664802252_n.jpg', 1, '08.03.2015', 'artvinli', '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yetki`
--

CREATE TABLE IF NOT EXISTS `yetki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uyeAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `etkinlik` int(50) NOT NULL,
  `foto` int(11) NOT NULL,
  `haber` int(11) NOT NULL,
  `duyuru` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=9 ;

--
-- Tablo döküm verisi `yetki`
--

INSERT INTO `yetki` (`id`, `uyeAdi`, `etkinlik`, `foto`, `haber`, `duyuru`, `admin`) VALUES
(2, 'Admin', 1, 1, 1, 1, 1),
(5, 'artvinli', 1, 0, 0, 0, 0),
(7, 'artvinli', 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE IF NOT EXISTS `yorumlar` (
  `yid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(60) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `tip` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `baslik` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`yid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=6 ;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yid`, `user`, `tarih`, `tip`, `baslik`, `mesaj`) VALUES
(3, 'Admin', '18.03.2015', 'Duyurular', 'test', 'duyuu test yorum'),
(2, 'sercan', '18.03.2015', 'Haberler', 'Haberler', 'hello wrold'),
(4, 'Admin', '18.03.2015', 'Etkinlikler', 'deneme', 'bu bir etkinlit test yorumu');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
