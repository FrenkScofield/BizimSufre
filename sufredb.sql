-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2020 at 03:45 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sufredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminusers`
--

CREATE TABLE `adminusers` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `FirstName` varchar(70) CHARACTER SET utf8mb4 DEFAULT NULL,
  `LastName` varchar(70) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Mail` varchar(70) CHARACTER SET utf8mb4 DEFAULT NULL,
  `UserName` varchar(70) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Password` varchar(70) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Rol` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminusers`
--

INSERT INTO `adminusers` (`Id`, `OrderBy`, `FirstName`, `LastName`, `Mail`, `UserName`, `Password`, `Rol`) VALUES
(1, NULL, '-', '-', '-', 'admin', '96321', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `FileUrl` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `VideoLink` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `UniqueSeo` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `CreatDate` datetime(6) NOT NULL,
  `Approve` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`Id`, `OrderBy`, `FileUrl`, `VideoLink`, `UniqueSeo`, `CreatDate`, `Approve`) VALUES
(1, 0, 'cfe6154292ec41d.jpeg', NULL, '2cb4a0', '2019-12-16 00:00:00.000000', 1),
(2, 1, 'b9f4c0dc0d574ac.png', 'https://www.youtube.com/watch?v=6873vYYW4fw', 'a7f3b1', '2020-03-08 00:00:00.000000', 1),
(3, NULL, '2d0d5bc05c7e4ce.jpeg', NULL, '4716e8', '2020-01-13 00:00:00.000000', 1),
(4, NULL, '4890ffcfac4e4e5.jpeg', NULL, 'c80201', '2020-04-14 00:00:00.000000', 1),
(5, NULL, 'f8630115908d4a7.jpeg', NULL, '5b8c8f', '2020-04-14 00:00:00.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogtranslates`
--

CREATE TABLE `blogtranslates` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `BlogId` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL,
  `Title` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Summray` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Descriptions` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `SeoUrl` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogtranslates`
--

INSERT INTO `blogtranslates` (`Id`, `OrderBy`, `BlogId`, `LanguageId`, `Title`, `Summray`, `Descriptions`, `SeoUrl`) VALUES
(1, NULL, 1, 1, 'Sürətli əllər', 'Dekabrın 16-17-si baş tutan “Sürətli əllər” tədbirinin ', '<p>Dekabrın 16-17-si baş tutan “Sürətli əllər” tədbirinin yaddaqalan anlarını Sizlərlə bölüşürük.Tədbirdə iştirak edə bilməyənlər üçün isə şad xəbərimiz var! Bu həftəsonu da, 23-24 dekabr hamınızı əyləncəli və xoş vaxt keçirmək üçün Park Bulvarın 3-cü mərtəbəsindəki şənliyimizə dəvət edirik.</p>', 'Suretli-eller'),
(2, NULL, 2, 1, '8 mart - \"Beynəlxalq Qadınlar Günü\"', '8 mart 2018-ci il tarixində Bakı Şəhər Dövlət Yol Polisi İdarəsi \"Beynəlxalq Qadınlar Günü\"...', '<p>8 mart 2018-ci il tarixində Bakı Şəhər Dövlət Yol Polisi İdarəsi \"Beynəlxalq Qadınlar Günü\" münasibətilə reyd keçirib. Reydə \"Bizim Süfrə\" də qatılıb. Yol polisi əməkdaşları \"Nümunəvi qadın sürücü\" devizi altında keçirilən aksiya çərçivəsində \"Yol hərəkəti haqqında\" qanunun tələblərini pozmayan xanım sürücülərə müxtəlif hədiyyələr təqdim edib. Təqdim olunan hədiyyələr arasında \"Bizim Süfrə\" məhsulları da olub.&nbsp;</p>', '8-mart---Beynelxalq-Qadinlar-Gunu'),
(3, NULL, 3, 1, 'Bizim sufre “Made in Azerbaijan” sərgisində', '18-30 Oktyabr tarixlərində Bravo hipermarketlərində keçirilən “Made in Azerbaijan”...', '<p>18-30 Oktyabr tarixlərində Bravo hipermarketlərində keçirilən “Made in Azerbaijan” kompaniyasında böyük fəxr hissi ilə Bizim sufre məhsulları öz stendi ilə iştirak etmişdir. 2009-dan bəri Azərbaycanın təbii, zəngin məhsullarından hazırlanmış çeşidlərimiz müştərilərin diqqətinə çatdırılmışdır.</p><p>Sərgi boyu sous məhsullarımız üçün hazırlanmış daddırmalarda müştərilərimiz üçün fərqli dadlar kəşf etmək imkanı yaradılmışdır. Məhsullarımızı dadan müştərilər istifadə yerləri barədə ətraflı şəkildə məlumatlandırılmışdır. Bundan başqa həftə içi günlərində promoterlarımız tərəfindən hazırlanmış maraqlı oyunlarda qaliblər üçün bizim sufre məhsulları hədiyyə olaraq təqdim edilmişdir. Sərgi keçirilən tarixlərdə həftə sonlarında şeflərimiz tərəfindən bizim süfre məhsullarımızdan master klass göstərərək, izləyicilər üçün məhsullarımızın istifadə rahatlığı, funksionallığı aydın şəkildə göstərilmişdir.</p><p>Sərgi boyu bizim sufre stendinə yaxınlaşan müştərilər təqdimatları çox bəyəndilər və məhsullarımızı rəflərdə axtardılar.</p><p>Bizim sufre olaraq bir Azərbaycan brendi kimi tanınmaqda qürur duyuruq!</p>', 'Bizim-sufre-Made-in-Azerbaijan-sergisinde'),
(4, NULL, 4, 1, 'Bizim Sufre “Food&Drinks Fest Baku” festivalında', 'Fəaliyyətləri ilə daim fərqlənən Bizim Sufre markası bu dəfə də Bakımıza rəng qatan “Food&Drinks Fest Baku..', '<p>Fəaliyyətləri ilə daim fərqlənən Bizim Sufre markası bu dəfə də Bakımıza rəng qatan “Food&amp;Drinks Fest Baku” festivalının iştirakçısı oldu. Ənənəvi hal alan bu festival 24-28 Oktyabr tarixlərində şəhərimizin Fəvvarələr meydanında əyləncələrlə, təamlarla bol şəkildə keçirildi. Bizim sufre markası da öz növbəsində şəhərimizi gözəlləşdirən bu festivalda öz stendi ilə şəhərimizin sakinlərinə və qonaqlarına xidmət etdi. Festival boyu fərqli oyunlar, maskotların əyləncəli şouları ilə festivalı çoşdurdu. Ən önəmlisi, stendlərə yaxınlaşan müştərilərə Bizim Sufre souslarından dadmaq imkanı yaradıldı. Məhsulları dadan müştərilər çox bəyəndilər, festival boyu insanların sevgisini qazanmaq bizi çox xoşbəxt etdi.</p>', 'Bizim-Sufre-FoodDrinks-Fest-Baku-festivalinda'),
(5, NULL, 5, 1, 'Aşpazlar və media nümayəndələri “Bizim Sufre”nin istehsal prossesi ilə tanışlığı.', 'Müxtəlif media qurumları və Azərbaycan Kulinariya Mütəxəssisləri Assosiasiyasının üzvləri üçün...', '<p>Müxtəlif media qurumları və Azərbaycan Kulinariya Mütəxəssisləri Assosiasiyasının üzvləri üçün “Bizim Sufre”nin istehsal müəssisəsinə tur təşkil edilib. Avropanın ən müasir fabriklərindən olan istehsal müəssisəsi tam avtomatlaşdırılmış və müasir avadanlıqlarla təmin edilib.</p><p>Fabrika ilə tanışlıq çərçivəsində burada keyfiyyətə nəzarətin ən yüksək səviyyədə təyin edildiyini bildirdi və İSO sertifikatının tələblərinə cavab verdiyini söylənildi. Müəssisənin laboratoriyasını ziyarət edən jurnalistlər və kulinarlar buradakı müasir avadanlıqlar və yaradılmış şəraitlə tanış edildi və onlara gün ərzində istehsalın bütün mərhələlərində məhsullar üzərində 1000-1500 testin edildiyi barədə məlumat verildi.</p><p>“Bizim Süfrə” mayonezlərinin və ketçuplarının istehsal prosesi ilə tanışlıq zamanı burada istehsal olunan ketçupların hazırlanmasında təbii yerli pomidorlardan istidafə edildiyi qeyd edilib. Bundan əlavə, məhsullar azərbaycanlıların ağız dadına uyğunlaşdırmış şəkildə istehsal edilir ki, bu səbəbdən də istehlakçılar tərəfindən böyük rəğbətlə qarşılanır. Gəzinti çərçivəsində xama dadlı mayonezin istehsalı da qonaqların böyük marağına səbəb oldu.</p><p>Jurnalistlərə və kulinarlara “Azərsun Holdinq”in Müşahidə Şurasının&nbsp; sədri&nbsp; Abdolbari Goozalın keyfiyyətə və texnoloji yeniliklərin tətbiqinə xüsusi həssaslıqla və tələbkarlıqla yanaşdığı bildirilib və bu sahədə də digərlərində olduğu kimi müasir avadanlıqlarlarla hazırlandığı qeyd edilib.</p>', 'Aspazlar-ve-media-numayendeleri-Bizim-Sufrenin-istehsal-prossesi-ile-tanisligi');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `FileUrl` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `OrderBy`, `FileUrl`) VALUES
(1, 0, 'a0b50b31a0f2405.jpeg'),
(2, 1, '7654b9427254477.jpeg'),
(3, 2, 'adb2d0e257b0488.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `categorytranslates`
--

CREATE TABLE `categorytranslates` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `CategoryId` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL,
  `Title` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `SeoUrl` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorytranslates`
--

INSERT INTO `categorytranslates` (`Id`, `OrderBy`, `CategoryId`, `LanguageId`, `Title`, `SeoUrl`) VALUES
(1, NULL, 1, 1, 'Mayonez', 'Mayonez'),
(2, NULL, 2, 1, 'Ketçup', 'Ketcup'),
(3, NULL, 3, 1, 'Sous', 'Sous');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `ShortName` varchar(25) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Code` varchar(25) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Name` varchar(70) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`Id`, `OrderBy`, `ShortName`, `Code`, `Name`) VALUES
(1, NULL, 'AZ', 'az-Latn', 'Azerbaycan');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`Id`, `OrderBy`) VALUES
(1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pagetranslates`
--

CREATE TABLE `pagetranslates` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `PageId` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL,
  `Title` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Descriptions` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pagetranslates`
--

INSERT INTO `pagetranslates` (`Id`, `OrderBy`, `PageId`, `LanguageId`, `Title`, `Descriptions`) VALUES
(1, NULL, 1, 1, 'Haqqımızda', '<p>Fəaliyyətimiz 1993-cü ildən başlamışdır. Məhsullar əl dəymədən tam avtomatlaşdırılmış şərtlərdə istehsal edilir. Fabrik məhsul istehsal edilməsi üçün lazımi beynəlxal standartlara uyğundur və aşağıdakı sertifikatlara sahibdir: TS-EN-ISO 9001:2008 Keyfiyyət İdarəetmə Sistemi; TS-EN-ISO 22000: 2005 Qida Təhlükəsizliyi İdarəetmə Sistemi; FSSC 22000 (ISO 22002-1) Qida Təhlükəsizliyi İdarəetmə Sistemi. Fabrikə xidəmt göstərən Laboratoriya Almaniyanın DakkS Beynəlxalq Akkreditasiya Təşkilatından akkreditə olunmuşdur və ISO 17025:2005 Laboratoriya Akkreditasiya Yetərlilik Sertifikatına malikdir. 2014-cü ildə Türkiyədə keçirilən beynəlxalq “Ambalaj Ay Yıldızları 2014” dizayn müsabiqəsində mükafat qazanmışdır. Bu isə Azərbaycan məhsulunun beynəlxalq arenada rəqabət gücünü nümayiş etdirməktədir.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `CategoryId` int(11) NOT NULL,
  `UniqueSeo` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `FileUrl` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Facts` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Approve` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `OrderBy`, `CategoryId`, `UniqueSeo`, `FileUrl`, `Facts`, `Approve`) VALUES
(1, 31, 1, '5bc66c', '34942147ad0d4ab.png', 'cb536962cc8941b.png', 1),
(2, 37, 1, '6d7dd3', '1da18f813703412.png', NULL, 1),
(3, 34, 1, '7e0f4c', 'b5054ff9a132405.png', NULL, 1),
(4, 39, 1, '794416', 'c13e7f2578ed48b.png', NULL, 1),
(5, 36, 1, '6ba773', '7fddf57d2c5f42b.png', NULL, 1),
(6, 33, 1, '420b81', '55bc27da9e3e482.png', NULL, 1),
(7, 32, 1, 'be0107', '008ba8bed04a4d7.png', NULL, 1),
(8, 35, 1, '2a5f92', 'c69c71d51f2c436.png', NULL, 1),
(9, 40, 1, 'c5de37', 'c7a80e7cb96e48a.png', NULL, 1),
(10, 38, 1, '5cd929', '2de0f57a6540452.png', NULL, 1),
(11, 29, 2, 'a633e2', 'bf427ca97aae481.png', NULL, 1),
(12, 27, 2, 'b82dbb', '7e9daf8057ad439.png', NULL, 1),
(13, 25, 2, 'd853d2', '72d8d82473b240a.png', NULL, 1),
(14, 28, 2, 'faab5e', '239b64f867cf459.png', NULL, 1),
(15, 24, 2, '750ab1', 'b0b361fd3f804c2.png', NULL, 1),
(16, 26, 2, '6ebecd', 'f4e6a5d73a2c418.png', NULL, 1),
(17, 30, 2, '3219d3', '53c66320d65f438.png', NULL, 1),
(18, 23, 2, 'dd7b5d', 'd6a1c42352354ed.png', NULL, 1),
(19, 3, 3, '58edfc', '2d5203f102854d7.png', NULL, 1),
(20, 4, 3, '6683dd', 'c89085726adb478.png', NULL, 1),
(21, 5, 3, 'ac37a4', '47be0d3943f6463.png', NULL, 1),
(22, 6, 3, '57ae2f', '869a2bd81205418.png', NULL, 1),
(23, 7, 3, '9f1d75', 'dbde59be291f46f.png', NULL, 1),
(24, 8, 3, '14d9aa', '9940b160a76a4ed.png', NULL, 1),
(25, 9, 3, '9b7f19', '0d3786066d614b7.png', NULL, 1),
(26, 10, 3, '397cb1', 'a4f2de05894a48a.png', NULL, 1),
(27, 11, 3, '572377', 'd82fac7c6631443.png', NULL, 1),
(28, 12, 3, 'f9d3e2', '50405ade2a5f421.png', NULL, 1),
(29, 13, 3, 'be1213', '325749e25ac045e.png', NULL, 1),
(30, 14, 3, 'c6a163', 'bf1c90ff0770444.png', NULL, 1),
(31, 15, 3, 'fcf477', 'b05a1fca01a240d.png', NULL, 1),
(32, 16, 3, '6c5ba2', 'b750362e3fdc4b9.png', NULL, 1),
(33, 17, 3, 'd15831', 'fa6458bdeb23400.png', NULL, 1),
(34, 18, 3, '509ddd', '293f2f69a91f420.png', NULL, 1),
(35, 19, 3, 'e320d8', 'be673cfdcd3e4ae.png', NULL, 1),
(36, 20, 3, '3199f5', 'f52ad99292294fd.png', NULL, 1),
(37, 21, 3, 'b9c1eb', '622262597d0d4d2.png', NULL, 1),
(38, 22, 3, '485d1d', 'fb1514a59a9c43c.png', 'cad0dfccdd9b4e7.png', 1),
(39, 0, 3, '14d3cf', 'd8a13d824f59450.png', NULL, 1),
(40, 1, 3, '816118', '85bf81ff3461470.png', NULL, 1),
(41, 2, 3, 'd01a3b', '29dec44091054f6.png', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `producttranslates`
--

CREATE TABLE `producttranslates` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `ProductId` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL,
  `Title` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Summary` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `SeoUrl` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Descriptions` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producttranslates`
--

INSERT INTO `producttranslates` (`Id`, `OrderBy`, `ProductId`, `LanguageId`, `Title`, `Summary`, `SeoUrl`, `Descriptions`) VALUES
(1, NULL, 1, 1, 'Mayonez klassik ', 'Bizim Sufre mayonezi protein, duz və lif maddələri ilə zəngindir və rahatlıqla bütün növ qızartma yeməklərinizdə istifadə edə bilərsiniz. Bundan başqa salatları və məzələri də Bizim Sufre mayonezi ilə daha da dadlandıra bilərsiniz.', 'Mayonez-klassik-04a4', '<p><strong>Tərkibi:</strong></p><p>Günəbaxan yağı, pasterizə edilmiş su, yumurta sarısı tozu, stabilizator kompleksi: quar kitrəsi (E412), ksantan kitrəsi (E415), amorf silisium dioksid (1551), nişasta (E1422), şəkər tozu, sirkə, duz, konservant: kalium sorbat (E202), antioksidant: EDTA (E385), xardal yağı.</p><p><strong>Məhsulun çəkisi:</strong>500/891 q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 55.52q</p><p>Zülallar: 0.3q</p><p>Karbohidratlar: 4.48q</p><p><strong>Enerji dəyəri:</strong>2169.45 kC /518.76 kkal</p><p><strong>İç ədədi:</strong>40 ədəd</p><p><strong>Qeyd:</strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın</p>'),
(2, NULL, 2, 1, 'Provansal mayonez', NULL, 'Provansal-mayonez-d4bf', '<p><strong>Tərkibi:</strong>&nbsp;Günəbaxan yağı, pasterizə edilmiş su, şəkər tozu, stabilizator kompleksi: yumurta sarısı tozu, pektin lifləri, quar kitrəsi (E412), ksantan kitrəsi (E415),dekstroza, maltodekstrin, duz, sirkə, turşuluq tənzimləyicisi: limon turşusu(E330), konservant: kalium sorbat (E202), antioksidant: EDTA (E385), xardal yağı, rəngləyici: beta-karotin (E160a).&nbsp; &nbsp; &nbsp;<i>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</i></p><p><strong>Məhsulun çəkisi:&nbsp;</strong><i><strong>891 ml&nbsp;</strong></i></p><p><strong>100 q məhsulun&nbsp; qida&nbsp; dəyəri:&nbsp;</strong></p><p>Yağlar:&nbsp; 67.52 q<br>Zülallar: 0.31 q</p><p>Karbohidratlar: 3.4 q</p><p><strong>Enerji dəyəri:&nbsp;</strong>2604.62&nbsp; kC/ 622.52 kkal</p><p><strong>İç ədədi: 6&nbsp;</strong>ədəd</p><p><strong>Qeyd:&nbsp; &nbsp;</strong>Azərbaycan məhsulu. Tərkibində GMO yoxdur.&nbsp;</p>'),
(3, NULL, 3, 1, 'Mayone klassik', 'Bizim Sufre mayonezi protein, duz və lif maddələri ilə zəngindir və rahatlıqla bütün növ qızartma yeməklərinizdə istifadə edə bilərsiniz. Bundan başqa salatları və məzələri də Bizim Sufre mayonezi ilə daha da dadlandıra bilərsiniz. ', 'Mayone-klassik-dc58', '<p><strong>Tərkibi: </strong>Günəbaxan yağı, pasterizə edilmiş su, şəkər tozu, stabilizator kompleksi: yumurta sarısı tozu, pektin lifləri, quar kitrəsi (E412), ksantan kitrəsi (E415),dekstroza, maltodekstrin, duz, sirkə, turşuluq tənzimləyicisi: limon turşusu(E330), konservant: kalium sorbat (E202), antioksidant: EDTA (E385), xardal yağı.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Məhsulun çəkisi: </strong>800ml</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 67.52q</p><p>Zülallar: 0.31q</p><p>Karbohidratlar: 3.4q</p><p><strong>Enerji dəyəri: </strong>2604.62 kC / 622.52 kkal</p><p><strong>İç ədədi: </strong>12&nbsp;ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(4, NULL, 4, 1, 'Mayonez', 'Bizim Sufre mayonezi protein, duz və lif maddələri ilə zəngindir və rahatlıqla bütün növ qızartma yeməklərinizdə istifadə edə bilərsiniz. Bundan başqa salatları və məzələri də Bizim Sufre mayonezi ilə daha da dadlandıra bilərsiniz. ', 'Mayonez-d3ac', '<p><strong>Tərkibi: </strong>Günəbaxan yağı, pasterizə edilmiş su, şəkər tozu, stabilizator kompleksi: yumurta sarısı tozu, pektin lifləri, quar kitrəsi (E412), ksantan kitrəsi (E415),dekstroza, maltodekstrin, duz, sirkə, turşuluq tənzimləyicisi: limon turşusu(E330), konservant: kalium sorbat (E202), antioksidant: EDTA (E385), xardal yağı.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Məhsulun çəkisi: </strong>800ml</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 67.52q</p><p>Zülallar: 0.31q</p><p>Karbohidratlar: 3.4q</p><p><strong>Enerji dəyəri: </strong>2604.62 kC / 622.52 kkal</p><p><strong>İç ədədi: </strong>12&nbsp;ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(5, NULL, 5, 1, 'Mayonez klassik', 'Bizim Sufre mayonezi protein, duz və lif maddələri ilə zəngindir və rahatlıqla bütün növ qızartma yeməklərinizdə istifadə edə bilərsiniz. Bundan başqa salatları və məzələri də Bizim Sufre mayonezi ilə daha da dadlandıra bilərsiniz. ', 'Mayonez-klassik-bf85', '<p><strong>Tərkibi: </strong>Günəbaxan yağı, pasterizə edilmiş su, şəkər tozu, stabilizator kompleksi: yumurta sarısı tozu, pektin lifləri, quar kitrəsi (E412), ksantan kitrəsi (E415),dekstroza, maltodekstrin, duz, sirkə, turşuluq tənzimləyicisi: limon turşusu(E330), konservant: kalium sorbat (E202), antioksidant: EDTA (E385), xardal yağı.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Məhsulun çəkisi: </strong>200/400ml</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 67.52q</p><p>Zülallar: 0.31q</p><p>Karbohidratlar: 3.4q</p><p><strong>Enerji dəyəri: </strong>2604.62 kC / 622.52 kkal</p><p><strong>İç ədədi: </strong>40/24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(6, NULL, 6, 1, 'Xama Dadli Mayonez', 'Salatlarda və yeməklərdə həm xamanı, həm də mayonezi bir arada sevənlərin xətrinə dəymədik. Onlar üçün Bizim Sufre Xamalı Mayonez yaratdıq. Mətbəxlərdən əskik olmayan ən əsas iki sous birlikdə - Bizim Sufre bankasında! Ləzzəti və yüngüllüyü ilə əlavə edildiyi istənilən təama təkrarolunmaz dad və yumşaqlıq bəxş edir.', 'Xama-Dadli-Mayonez-e890', '<p><strong>Tərkibi:</strong> Saflaşdırılmış, vinterizasiya və dezodorasiya edilmiş günəbaxan yağı, pasterizə edilmiş su, yumurta sarısı tozu, stabilizator kompleksi: quar kitrəsi (E412), ksantan kitrəsi (E415), amorf silisium dioksid( E551),&nbsp; nişasta (E1422), şəkər tozu, duz, sirkə, turşuluq tənzimləyicisi: limon turşusu(E330), konservant: kalium sorbat (E202), antioksidant: EDTA (E385), təbii xama inqrediyenti, rəngləyici: beta-karotin (E160a).&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>200/400 ml</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 55.52q</p><p>Zülallar: 0.29q</p><p>Karbohidratlar: 6.39q</p><p><strong>Enerji dəyəri: </strong>2201.15 kC / 526.34 kkal</p><p><strong>İç ədədi: </strong>40/24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.&nbsp; Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın.</p>'),
(7, NULL, 7, 1, 'Xama Dadli Mayonez', 'Salatlarda və yeməklərdə həm xamanı, həm də mayonezi bir arada sevənlərin xətrinə dəymədik. Onlar üçün Bizim Sufre Xamalı Mayonez yaratdıq. Mətbəxlərdən əskik olmayan ən əsas iki sous birlikdə - Bizim Sufre bankasında! Ləzzəti və yüngüllüyü ilə əlavə edildiyi istənilən təama təkrarolunmaz dad və yumşaqlıq bəxş edir.', 'Xama-Dadli-Mayonez-40e7', '<p><strong>Tərkibi:</strong> Saflaşdırılmış, vinterizasiya və dezodorasiya edilmiş günəbaxan yağı, pasterizə edilmiş su, yumurta sarısı tozu, stabilizator kompleksi: quar kitrəsi (E412), ksantan kitrəsi (E415), amorf silisium dioksid( E551),&nbsp; nişasta (E1422), şəkər tozu, duz, sirkə, turşuluq tənzimləyicisi: limon turşusu(E330), konservant: kalium sorbat (E202), antioksidant: EDTA (E385), təbii xama inqrediyenti, rəngləyici: beta-karotin (E160a).&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>891&nbsp;q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 55.52q</p><p>Zülallar: 0.29q</p><p>Karbohidratlar: 6.39q</p><p><strong>Enerji dəyəri: </strong>2201.15 kC / 526.34 kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.&nbsp; Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın.</p>'),
(8, NULL, 8, 1, 'Mayonez Az Kalori', 'Bizim Sufre mayonezi protein, duz və lif maddələri ilə zəngin, kalorisi isə azdır. Rahatlıqla bütün növ qızartma yeməklərinizdə istifadə edə bilərsiniz. Bundan başqa salatları və məzələri də Bizim Sufre mayonezi ilə daha da dadlandıra bilərsiniz.', 'Mayonez-Az-Kalori-fbc4', '<p><strong>Tərkibi:</strong> Pasterizə edilmiş su, günəbaxan yağı, yumurta sarısı tozu, stabilizator kompleksi: quar kitrəsi (E412), ksantan kitrəsi (E415), amorf silisium dioksid (E551), nişasta (E1422), sirkə, şəkər tozu, duz, konservant: kalium sorbat (E202), turşuluq tənzimləyicisi: süd turşusu (E270) və limon turşusu(E330), antioksidant: EDTA (E385), xardal yağı, rəngləyici: beta-karotin (E160a).&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>200/400 q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 28.27q</p><p>Zülallar: 0.17q</p><p>Karbohidratlar: 6.73q</p><p><strong>Enerji dəyəri: </strong>1179.37 kC / 282.01 kkal</p><p><strong>İç ədədi: </strong>40/24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.&nbsp; Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın.</p>'),
(9, NULL, 9, 1, 'Zeytunlu Mayonez', 'Fərqli yemək hazırlamağı sınayan xanımların mətbəxdəki ən yaxın köməkçisi olan Bizim Sufre Zeytunlu mayonezi ilə həm özünüzə, həm ailənizə, həm də qonaqlarınıza bənzərsiz ləzzətlər təqdim edə biləcəksiniz. Zeytunun bütün faydalarını tərkibində saxlayan məhsulu təkcə ketçupla deyil, həm də müxtəlif ədviyyatlarla qarışdıraraq hazır yeməklərinizin yanında servis edə bilərsiniz.', 'Zeytunlu-Mayonez-d0e5', '<p><strong>Tərkibi: </strong>Zeytun&nbsp;yağı, pasterizə edilmiş su, şəkər tozu, stabilizator kompleksi: yumurta sarısı tozu, pektin lifləri, quar kitrəsi (E412), ksantan kitrəsi (E415),dekstroza, maltodekstrin, duz, sirkə, turşuluq tənzimləyicisi: limon turşusu(E330), konservant: kalium sorbat (E202), antioksidant: EDTA (E385), xardal yağı.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Məhsulun çəkisi: </strong>891qr</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 67.52q</p><p>Zülallar: 0.31q</p><p>Karbohidratlar: 3.4q</p><p><strong>Enerji dəyəri: </strong>2604.62 kC / 622.52 kkal</p><p><strong>İç ədədi: </strong>6/12&nbsp;ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(10, NULL, 10, 1, 'Mayonez', 'Bizim Sufre mayonezi protein, duz və lif maddələri ilə zəngindir və rahatlıqla bütün növ qızartma yeməklərinizdə istifadə edə bilərsiniz. Bundan başqa salatları və məzələri də Bizim Sufre mayonezi ilə daha da dadlandıra bilərsiniz. ', 'Mayonez-1bf8', '<p><strong>Tərkibi: </strong>Günəbaxan yağı, pasterizə edilmiş su, şəkər tozu, stabilizator kompleksi: yumurta sarısı tozu, pektin lifləri, quar kitrəsi (E412), ksantan kitrəsi (E415),dekstroza, maltodekstrin, duz, sirkə, turşuluq tənzimləyicisi: limon turşusu(E330), konservant: kalium sorbat (E202), antioksidant: EDTA (E385), xardal yağı.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Məhsulun çəkisi: </strong>4kq / 8kq</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 67.52q</p><p>Zülallar: 0.31q</p><p>Karbohidratlar: 3.4q</p><p><strong>Enerji dəyəri: </strong>2604.62 kC / 622.52 kkal</p><p><strong>İç ədədi: </strong>40&nbsp;ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p><p><br>&nbsp;</p>'),
(11, NULL, 11, 1, 'Ketçup Klassik', 'Xörəklər, pastalar, pizzalar, xəmir biş-düşləri və s. yeməklərinizə ekstra ləzzət qazandıran Bizim Sufre ketçupu günəşdə qızaran pomidorlardan hazırlanır. Bizim Sufre klassik ketçupu protein, yağ və karbohidrat tərkiblidir, onunla yeni məzə sousları hazırlaya bilərsiniz. Uşaqlara yeməkləri sevdirməyin ən ləziz həllidir.', 'Ketcup-Klassik-47d7', '<p><strong>Tərkibi: </strong>Tomat pastası, qlükoza, şəkər tozu, sirkə, askorbin turşusu(E300), yodlaşdırılmış duz, nişasta, təbii aromatizatorlar, stabilizator kompleksi: quar kitrəsi (E412), keçi buynuzu kitrəsi (E410),&nbsp; pasterize edilmiş su.</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>350q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 0.1q</p><p>Zülallar: 0.014q</p><p>Karbohidratlar: 21.72q</p><p><strong>Enerji dəyəri: </strong>343 kC / 82 kkal</p><p><strong>İç ədədi: </strong>12 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(12, NULL, 12, 1, 'Ketçup Acili', 'Yeməklərinizin ləziz detalına çevriləcək Bizim Sufre ketçupunun acılı çeşidi ağız yandırmayan, damaq dadınıza uyğun ləzzətə sahibdir. Hamburger, tost, hər növ qızartmalar, pastalar, pizza və digər yeməklərinizin ideal yoldaşı olan məhsulun hər süfrədə yeri var.', 'Ketcup-Acili-8fc4', '<p><strong>Tərkibi: </strong>Tomat pastası, qlükoza, şəkər tozu, sirkə, askorbin turşusu(E300), yodlaşdırılmış duz, nişasta, təbii aromatizatorlar, təbii acı bibər aromatizatoru, stabilizator kompleksi: quar kitrəsi (E412), keçi buynuzu kitrəsi (E410),&nbsp; pasterize edilmiş su.</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>200/350q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 0.1q</p><p>Zülallar: 0.014q</p><p>Karbohidratlar: 21.72q</p><p><strong>Enerji dəyəri: </strong>343 kC / 82 kkal</p><p><strong>İç ədədi: </strong>40/12&nbsp;ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(13, NULL, 13, 1, 'Ketçup Acili', 'Yeməklərinizin ləziz detalına çevriləcək Bizim Sufre ketçupunun acılı çeşidi ağız yandırmayan, damaq dadınıza uyğun ləzzətə sahibdir. Hamburger, tost, hər növ qızartmalar, pastalar, pizza və digər yeməklərinizin ideal yoldaşı olan məhsulun hər süfrədə yeri var.', 'Ketcup-Acili-0067', '<p><strong>Tərkibi: </strong>Tomat pastası, qlükoza, şəkər tozu, sirkə, askorbin turşusu(E300), yodlaşdırılmış duz, nişasta, təbii aromatizatorlar, təbii acı bibər aromatizatoru, stabilizator kompleksi: quar kitrəsi (E412), keçi buynuzu kitrəsi (E410),&nbsp; pasterize edilmiş su.</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>350q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 0.1q</p><p>Zülallar: 0.014q</p><p>Karbohidratlar: 21.72q</p><p><strong>Enerji dəyəri: </strong>343 kC / 82 kkal</p><p><strong>İç ədədi: </strong>12 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(14, NULL, 14, 1, 'Ketçup Klassik', 'Xörəklər, pastalar, pizzalar, xəmir biş-düşləri və s. yeməklərinizə ekstra ləzzət qazandıran Bizim Sufre ketçupu günəşdə qızaran pomidorlardan hazırlanır. Bizim Sufre klassik ketçupu protein, yağ və karbohidrat tərkiblidir, onunla yeni məzə sousları hazırlaya bilərsiniz. Uşaqlara yeməkləri sevdirməyin ən ləziz həllidir.', 'Ketcup-Klassik-9bde', '<p><strong>Tərkibi: </strong>Tomat pastası, qlükoza, şəkər tozu, sirkə, askorbin turşusu(E300), yodlaşdırılmış duz, nişasta, təbii aromatizatorlar, stabilizator kompleksi: quar kitrəsi (E412), keçi buynuzu kitrəsi (E410),&nbsp; pasterize edilmiş su.</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>540q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 0.1q</p><p>Zülallar: 0.014q</p><p>Karbohidratlar: 21.72q</p><p><strong>Enerji dəyəri: </strong>343 kC / 82 kkal</p><p><strong>İç ədədi: </strong>12 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(15, NULL, 15, 1, 'Ketçup Acili', 'Yeməklərinizin ləziz detalına çevriləcək Bizim Sufre ketçupunun acılı çeşidi ağız yandırmayan, damaq dadınıza uyğun ləzzətə sahibdir. Hamburger, tost, hər növ qızartmalar, pastalar, pizza və digər yeməklərinizin ideal yoldaşı olan məhsulun hər süfrədə yeri var.', 'Ketcup-Acili-9297', '<p><strong>Tərkibi: </strong>Tomat pastası, qlükoza, şəkər tozu, sirkə, askorbin turşusu(E300), yodlaşdırılmış duz, nişasta, təbii aromatizatorlar, təbii acı bibər aromatizatoru, stabilizator kompleksi: quar kitrəsi (E412), keçi buynuzu kitrəsi (E410),&nbsp; pasterize edilmiş su.</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>680q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 0.1q</p><p>Zülallar: 0.014q</p><p>Karbohidratlar: 21.72q</p><p><strong>Enerji dəyəri: </strong>343 kC / 82 kkal</p><p><strong>İç ədədi: </strong>12 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(16, NULL, 16, 1, 'Ketçup Acili', 'Yeməklərinizin ləziz detalına çevriləcək Bizim Sufre ketçupunun acılı çeşidi ağız yandırmayan, damaq dadınıza uyğun ləzzətə sahibdir. Hamburger, tost, hər növ qızartmalar, pastalar, pizza və digər yeməklərinizin ideal yoldaşı olan məhsulun hər süfrədə yeri var', 'Ketcup-Acili-9ef6', '<p><strong>Tərkibi: </strong>Tomat pastası, qlükoza, şəkər tozu, sirkə, askorbin turşusu(E300), yodlaşdırılmış duz, nişasta, təbii aromatizatorlar, təbii acı bibər aromatizatoru, stabilizator kompleksi: quar kitrəsi (E412), keçi buynuzu kitrəsi (E410),&nbsp; pasterize edilmiş su.</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>540q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 0.1q</p><p>Zülallar: 0.014q</p><p>Karbohidratlar: 21.72q</p><p><strong>Enerji dəyəri: </strong>343 kC / 82 kkal</p><p><strong>İç ədədi: </strong>12 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(17, NULL, 17, 1, 'Ketçup Klassik', 'Xörəklər, pastalar, pizzalar, xəmir biş-düşləri və s. yeməklərinizə ekstra ləzzət qazandıran Bizim Sufre ketçupu günəşdə qızaran pomidorlardan hazırlanır. Bizim Sufre klassik ketçupu protein, yağ və karbohidrat tərkiblidir, onunla yeni məzə sousları hazırlaya bilərsiniz. Uşaqlara yeməkləri sevdirməyin ən ləziz həllidir.', 'Ketcup-Klassik-1009', '<p><strong>Tərkibi: </strong>Tomat pastası, qlükoza, şəkər tozu, sirkə, askorbin turşusu(E300), yodlaşdırılmış duz, nişasta, təbii aromatizatorlar, stabilizator kompleksi: quar kitrəsi (E412), keçi buynuzu kitrəsi (E410),&nbsp; pasterize edilmiş su.</p><p><strong>Məhsulun çəkisi: </strong>350q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 0.1q</p><p>Zülallar: 0.014q</p><p>Karbohidratlar: 21.72q</p><p><strong>Enerji dəyəri: </strong>343 kC / 82 kkal</p><p><strong>İç ədədi: </strong>12 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(18, NULL, 18, 1, 'Ketçup Acili', 'Xörəklər, pastalar, pizzalar, xəmir biş-düşləri və s. yeməklərinizə ekstra ləzzət qazandıran Bizim Sufre ketçupu günəşdə qızaran pomidorlardan hazırlanır. Bizim Sufre klassik ketçupu protein, yağ və karbohidrat tərkiblidir, onunla yeni məzə sousları hazırlaya bilərsiniz. Uşaqlara yeməkləri sevdirməyin ən ləziz həllidir.', 'Ketcup-Acili-b783', '<p><strong>Tərkibi: </strong>Tomat pastası, qlükoza, şəkər tozu, sirkə, askorbin turşusu(E300), yodlaşdırılmış duz, nişasta, təbii aromatizatorlar, stabilizator kompleksi: quar kitrəsi (E412), keçi buynuzu kitrəsi (E410),&nbsp; pasterize edilmiş su.</p><p><strong>Məhsulun çəkisi: </strong>680q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 0.1q</p><p>Zülallar: 0.014q</p><p>Karbohidratlar: 21.72q</p><p><strong>Enerji dəyəri: </strong>343 kC / 82 kkal</p><p><strong>İç ədədi: </strong>12 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(19, NULL, 19, 1, 'Acili Bibər Sousu', 'Acılı yeməkləri sevənlər hələ Bizim Sufre acılı bibər sousunu dadmayıblarsa, çox şey itiriblər. Acılı bibər sousunu əlavə etdikdən sonra yeməyin dəyişilmiş dadına sözün əsl mənasında dadanacaqsınız. Qırmızı acı bibər  sousunun təbiiliyi elə qapağı açdıqda dərhal sizi məst edəcək. Pastalardan tutmuş, “fast food”-lara qədər hər yeməklə əla gedir', 'Acili-Biber-Sousu-2194', '<p><strong>Tərkibi:</strong> Pasterizə edilmiş&nbsp; su, tomat pastası, sirkə,&nbsp; təbii aromatizatorlar, günəbaxan yağı, şəkər tozu, limon turşusu (E330), təbii ədviyyatlar, duz, kalium sorbat (E202), təbii emulqator (E415).</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>275&nbsp;q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 7q</p><p>Zülallar: 1q</p><p>Karbohidratlar: 9.2q</p><p><strong>Enerji dəyəri: </strong>434 kC / 103.8 kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.&nbsp; Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın.</p>'),
(20, NULL, 20, 1, 'Acili Nar Sousu', 'Meyvələrin şahı olan nardan hazırlanan acılı nar sousu qızardılmış ət, balıq, toyuq, qutab, kabab və digər yeməklərlə birlikdə yeyilərək ağız dadını dəyişir və iştah açır. Meyxoş, turşməzə və harmonik dada malikdir.', 'Acili-Nar-Sousu-5f57', '<p><strong>Tərkibi:</strong> Pasterizə edilmiş&nbsp; su, təbii nar şirəsi, tomat pastası, saflaşdırılmış, vinterizasiya və dezodorasiya edilmiş&nbsp; günəbaxan yağı, təbii aromatizatorlar, günəbaxan yağı, şəkər, təbii ədviyyatlar, sirkə, duz, limon turşusu (E330), kalium sorbat (E202), təbii emulqator (E415).</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>260 q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 6.33q</p><p>Zülallar: 0.63q</p><p>Karbohidratlar: 7.3q</p><p><strong>Enerji dəyəri: </strong>364 kC / 87 kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.&nbsp; Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın.</p>'),
(21, NULL, 21, 1, 'Tartar Sousu', 'Sousla yeməyin dadı bir-birinə uyğun olmalı və onlar birlikdə mükəmməl dad ahəngi yaratmalıdırlar. Tartar sousu toyuq, ət, balıq və digər dəniz məhsullarından hazırlanan qızartmaların, eyni zamanda steykin dadına özünəməxsus dad qatır.', 'Tartar-Sousu-7654', '<p><strong>Tərkibi: </strong>Pasterizə edilmiş su, günəbaxan yağı,xiyar turşusu, şəkər tozu, emulqator və stabilizator&nbsp; kompleksi: yumurta sarısı tozu, E1422, E412, E415, E551, sirkə (E260), duz,aromatizator,soğan, istiot, şüyüd, kalium sorbat (E202), EDTA (E385).</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>250q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 36q</p><p>Zülallar: 0.24q</p><p>Karbohidratlar: 11q</p><p><strong>Enerji dəyəri: </strong>1531 kC /&nbsp; 366 kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(22, NULL, 22, 1, 'Paprika Sousu', 'Qırmızının ən gözəl halı Bizim Sufre paprika sousudur. Macar mətbəxinin ən vacib ədviyyatlarından olan paparikanı Bizim Sufre sous halında sizin süfrələrinizə gətirir. Limondan belə daha çox C vitamininə sahib paprika sousu ilə həm yeməklərinizin, həm də ağzınızın dadı dəyişəcək.', 'Paprika-Sousu-8873', '<p><strong>Tərkibi:</strong> Pasterizə edilmiş su, günəbaxan yağı, şəkər tozu,&nbsp; qlükoza, sirkə (E260), duz, emulqator və stabilizator&nbsp; kompleksi: yumurta sarısı tozu, E415, E401, E331, E551, E1422; tomat pastası, təbii ədviyyatlar, təbii aromatizatorlar, limon turşusu (E330),&nbsp; kalium sorbat (E202),&nbsp; EDTA (E385).</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>260 q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 35q</p><p>Zülallar: 0.06q</p><p>Karbohidratlar: 12.5q</p><p><strong>Enerji dəyəri: </strong>1519 kC / 363 kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.&nbsp; Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın.</p>'),
(23, NULL, 23, 1, 'Göbələkli Sous', 'Göbələk sousu ilə toyuq, göbələk sousu ilə kartof!\r\nBu mükəmməl uyğunluq göbələk sousu ilə birlikdə olur. Qida dəyərinə görə ətdən, meyvə və tərəvəzlərdən geri qalmayan göbələkdən hazırladığımız sous qızartmalarınıza və salatlarınıza xüsusi ləzzət qatacaq. ', 'Gobelekli-Sous-57f6', '<p><strong>Tərkibi: </strong>Pasterizə edilmiş su, günəbaxan yağı, şəkər tozu, emulqator və stabilizator&nbsp; kompleksi: yumurta sarısı tozu, E1422, E412, E415, E551, sirkə (E260), duz,göbələk, kalium sorbat (E202), EDTA (E385).</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>250q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 36q</p><p>Zülallar: 0.65q</p><p>Karbohidratlar: 18q</p><p><strong>Enerji dəyəri: </strong>1648 kC /&nbsp; 394 kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(24, NULL, 24, 1, 'Pendirli Sous', NULL, 'Pendirli-Sous-5edb', '<p><strong>Tərkibi: </strong>Pasterizə edilmiş su, günəbaxan yağı, şəkər tozu, emulqator və stabilizator kompleksi: yumurta sarısı tozu,E1422, E412, E415,&nbsp; E401, E331, E551;duz, təbii pendir aromatizatorları, sirkə (E260), süd turşusu (E270), limon turşusu (E330), kalium sorbat (E202),&nbsp; beta –karotin (E160a(i)),EDTA (E385).</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>250q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 28q</p><p>Zülallar: -q</p><p>Karbohidratlar: 4.7q</p><p><strong>Enerji dəyəri: </strong>1130 kC /&nbsp; 270 kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(25, NULL, 25, 1, 'Şirin Çili Sousu', 'Şirin dadın və isti acılığın vəhdət təşkil etdiyi Şirin çili sousu fərqli dad axtarışında olanların seçimidir. Bu sousu yalnız hazır yeməklərlə deyil, həmçinin yeməklərin hazırlanmasında da istifadə etmək mümkündür.', 'Sirin-Cili-Sousu-9fbc', '<p><strong>Tərkibi: </strong>Pasterizə edilmiş su, şəkər tozu, qlükoza, sirkə (E260),&nbsp; təbii ədviyyatlar, duz, emulqator və stabilizator kompleksi: E1442, E415; &nbsp;süd turşusu (E270), kalium sorbat (E202), təbii aromatizatorlar.</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>300 q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 0q</p><p>Zülallar: 0.4q</p><p>Karbohidratlar: 48q</p><p><strong>Enerji dəyəri: </strong>795 kC / 190 kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.</p>'),
(26, NULL, 26, 1, 'Tkemali Sousu', 'İstənilən qızartma və ət yeməklərinin sevilən əlavəsi- Tkemali sousu. Bu sous sadəcə hazır yeməklərdə deyil, yeməklərin bişirilməsi zamanı da istifadə olunur. Özünəməxsus meyxoş dadı, gözəl rəngi yeməyə iştahaçan ləzzət qatır.', 'Tkemali-Sousu-fe21', '<p><strong>Tərkibi: </strong>Gavalı püresi, pasterizə edilmiş&nbsp; su, şəkər tozu, duz, təbii ədviyyatlar, kalium sorbat (E202), limon turşusu (E330), aromatizator.</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>285q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 0q</p><p>Zülallar: 0.8q</p><p>Karbohidratlar: 15.2q</p><p><strong>Enerji dəyəri: </strong>268&nbsp; kC / 64kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(27, NULL, 27, 1, 'Sezar Sousu', 'Sezar salatına xüsusi ləzzət qatan onun əsas elementi sousudur. Tarix və orijinallığı özündə daşıyan Bizim Sufre Sezar sousu italyan resepti əsasında hazırlanıb.', 'Sezar-Sousu-69a8', '<p><strong>Tərkibi: </strong>Pasterizə edilmiş su, günəbaxan yağı, qlükoza, sirkə (E260),şəkər tozu, duz,&nbsp; emulqator və stabilizator kompleksi: yumurta sarısı tozu,E1422, E412, E415, E551,&nbsp; pendir altı suyu zülalı,&nbsp; təbii aromatizatorlar, təbii ədviyyatlar,&nbsp; süd turşusu (E270), kalium sorbat (E202), EDTA (E385).</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>250q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 38q</p><p>Zülallar: - q</p><p>Karbohidratlar: 9q</p><p><strong>Enerji dəyəri: </strong>1577 kC /&nbsp; 377&nbsp; kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(28, NULL, 28, 1, 'Səhər Yeməyi Sousu', 'Günə necə başlamağına səhər yeməyinin də böyük təsiri var. O, mütləq bol çeşidli və ləzzətli olmalıdır. Səhər yeməyində fərqli ləzzət axtarışında olanlara səslənirik, indidən süfrənizdə Bizim Sufre Səhər yeməyi sousuna yer ayırın. Bir gün dadan hər zaman dadmaq istəyəcək.', 'Seher-Yemeyi-Sousu-649b', '<p><strong>Tərkibi: </strong>Tomat pastası, pasterizə edilmiş su, günəbaxan yağı, bibər pastası, şəkər tozu, doğranılmış qoz, doğranılmış fındıq, duz, təbii ədviyyatlar, askorbin turşusu (E300), kstantan kitrəsi (E415), kalium sorbat (E202).&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>310 q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 15q</p><p>Zülallar: 4.2q</p><p>Karbohidratlar: 22q</p><p><strong>Enerji dəyəri: </strong>1635 kC /&nbsp; 391kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın</p>'),
(29, NULL, 29, 1, 'Bolonez Sousu', 'O məşhur dadı evinizdə də dadmaq istəyərsiniz? Bizim Sufre Bolonez sousu ilə italyan mətbəxinin əsrarəngiz ləzzətini öz süfrələrinizə daşıyın. İstəsəniz, pastalarınızın ləzzətinə ləzzət qatın və ya improvizasiya edərək yeni ləzzət reseptləri kəşf edin.', 'Bolonez-Sousu-a8c9', '<p><strong>Tərkibi: </strong>Pasterizə edilmiş su, tomat pastası, dana əti, kök, günəbaxan yağı, təbii ədviyyatlar, şəkər, yodlaşdırılmış duz,&nbsp; limon turşusu (E330).</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>310 q</p><p><strong>100 q məhsulun qida dəyəri:</strong></p><p>Yağlar: 5.8q</p><p>Zülallar: 2.9q</p><p>Karbohidratlar: 9q</p><p><strong>Enerji dəyəri: </strong>460 kC / 110 kkal</p><p><strong>İç ədədi: </strong>30 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.&nbsp; Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın</p>'),
(30, NULL, 30, 1, 'Çiyələkli Sous', 'Bizim Sufre çiyələk siropu ilə sevimli meyvənizi hər fəsil dada biləcəksiniz. Tort, vafli, krep, pankeyk kimi şirniyyatlara və dondurmalara həm vizual, həm də ləzzət olaraq əlavə həzz qatır. Çiyələk siropu aşbaz, barmen və baristaların da həmişə əlinin altında olan ləzzətli seçimdir.', 'Ciyelekli-Sous-76f3', '<p><strong>Tərkibi:</strong><i><strong> </strong></i>Qlükoza, şəkər, pasterizə edilmiş su, emulqator və stabilizator kompleksi: E440, E450, E452; limon turşusu (E330), kalium sorbat (E202), çiyələk&nbsp; aromatizatoru, rəngləyici (E129).</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>320 q</p><p><strong>100 q məhsulun qida dəyəri:</strong></p><p>Zülallar: 0.35q</p><p>Karbohidratlar: 59.2q</p><p><strong>Enerji dəyəri: </strong>996 kC / 238 kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.&nbsp; Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın.</p>'),
(31, NULL, 31, 1, 'Şokoladli Sirop', 'Özünəməxsus ətri, rəngi və dadı sayəsində şokoladsevərlərin ürəyini fəth edən Bizim Sufre şokoladlı sirop həm dondurma, həm də un məmulatları ilə mükəmməl vəhdət yaradır. Şokoladlı sirop saf şəkər qamışından alınan şəkər və zəngin şokolad ləzzəti ilə hazırlanır, hansı miqdarda hansı şirniyyatların yanında istifadə olunması zövqə və ağız dadına əsaslanır.', 'Sokoladli-Sirop-a733', '<p><strong>Tərkibi:</strong><i><strong> </strong></i>Qlükoza, pasterizə edilmiş su, şəkər, kakao tozu, yağsız süd tozu, emulqator və stabilizator kompleksi: E440, E450, E452;&nbsp; kalium sorbat (E202), şokolad aromatizatoru.</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>330 q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 0.88q</p><p>Zülallar: 2.17q</p><p>Karbohidratlar: 60.7q</p><p><strong>Enerji dəyəri: </strong>1084 kC / 259 kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.&nbsp; Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın.</p>'),
(32, NULL, 32, 1, 'Qirmizi Tkemali Sousu', 'İstənilən qızartma və ət yeməklərinin sevilən əlavəsi- Tkemali sousu. Bu sous sadəcə hazır yeməklərdə deyil, yeməklərin bişirlməsi zaman da istifadə olunur. Özünəməxsus meyxoş dadı, qıpqırmızı gözəl rəngi yeməyə iştahaçan ləzzət qatır.', 'Qirmizi-Tkemali-Sousu-403b', '<p><strong>Tərkibi: </strong>Gavalı püresi, pasterizə edilmiş&nbsp; su, şəkər tozu, duz, təbii ədviyyatlar, kalium sorbat (E202), limon turşusu (E330), aromatizator.</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>285q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 0q</p><p>Zülallar: 0.8q</p><p>Karbohidratlar: 15.2q</p><p><strong>Enerji dəyəri: </strong>268&nbsp; kC / 64kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın</p>'),
(33, NULL, 33, 1, 'Acili Pomidor Sousu', 'Dünyanın ən məşhur sousları arasında özünəməxsus yeri olan pomidor sousumuz həm quru, həm də sulu yeməklərin sevilən əlavəsidir. Ənənəvi olaraq sous pomidor, bibər pastası, acı qırmızı bibər, sarımsaq, və digər əlavələrlə hazırlanır.', 'Acili-Pomidor-Sousu-27dc', '<p><strong>Tərkibi: </strong>Pomidor, bibər pastası, günəbaxan yağı, şəkər tozu, duz, təbii çili aromatizatoru, soğan, qatılaşdırıcı, acı qırmızı bibər, sarımsaq, dəfnə yarpağı, qara bibər, limon turşusu (E330).&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>360 q</p><p><strong>100 q məhsulun qida dəyəri:</strong></p><p>Yağlar: 3.9q</p><p>Karbohidratlar: 21.8q</p><p><strong>Enerji dəyəri: </strong>490 kC / 117 kkal</p><p><strong>İç ədədi: </strong>20 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.&nbsp; Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın.</p>'),
(34, NULL, 34, 1, 'Ədviyyatli Pomidor Sousu', 'Pomidor sousumuzun dadına dad qatmaq və ədviyyatsevərləri sevindirmək üçün ədviyyatlı pomidor sousumuzu hazırladıq. Ədviyyatlı pomidor sousunun tərkibinə 15-dən artıq komponent daxildir.', 'dviyyatli-Pomidor-Sousu-697c', '<p><strong>Tərkibi: </strong>Pomidor, bibər pastası, günəbaxan yağı, şəkər tozu, duz, təbii aromatizator, ədviyyatlı otlar, qatılaşdırıcı, dəfnə yarpağı, soğan, sarımsaq, qara bibər, limon turşusu (E330).&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>310 q</p><p><strong>100 q məhsulun qida dəyəri:</strong></p><p>Yağlar: 3.9q</p><p>Karbohidratlar: 21.8q</p><p><strong>Enerji dəyəri: </strong>490 kC / 117 kkal</p><p><strong>İç ədədi: </strong>20 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.&nbsp; Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın.</p>'),
(35, NULL, 35, 1, 'Sarimsaqli Sous', 'Ən çox isti yeməklərlə yeyilən Bizim Sufre sarımsaqlı sousu yeməkləri iştahaçıcı edir. Bu sous sarımsağı müalicə məqsədilə istifadə etmək istəyən, lakin onu təkbaşına yeyə bilməyənlər  üçün ləziz tapıntıdır.  Həm bişirmə mərhələsində, həm də hazır yeməyi dadlandırmaq məqsədi ilə istifadə olunur.', 'Sarimsaqli-Sous-08b5', '<p><strong>Tərkibi: </strong>Pasterizə edilmiş su, günəbaxan yağı, qlükoza, şəkər tozu, &nbsp;tomat pastası, sirkə (E260), duz, emulqator və stabilizator&nbsp; kompleksi: yumurta sarısı tozu, E415, E401, E331, E551, E1422; təbii ədviyyatlar, təbii aromatizatorlar, limon turşusu (E330),&nbsp; kalium sorbat (E202), EDTA (E385).&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>250q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 38q</p><p>Zülallar: -q</p><p>Karbohidratlar: 13.8q</p><p><strong>Enerji dəyəri: </strong>1653 kC / 395 kkal</p><p><strong>İç ədədi: </strong>24 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(36, NULL, 36, 1, 'Acili Bibər Sousu', 'Acılı yeməkləri sevənlər hələ Bizim Sufre acılı bibər sousunu dadmayıblarsa, çox şey itiriblər. Acılı bibər sousunu əlavə etdikdən sonra yeməyin dəyişilmiş dadına sözün əsl mənasında dadanacaqsınız. Qırmızı acı bibər  sousunun təbiiliyi elə qapağı açdıqda dərhal sizi məst edəcək. Pastalardan tutmuş, “fast food”-lara qədər hər yeməklə əla gedir.', 'Acili-Biber-Sousu-b2d5', '<p><strong>Tərkibi:</strong> Pasterizə edilmiş&nbsp; su, tomat pastası, sirkə,&nbsp; təbii aromatizatorlar, günəbaxan yağı, şəkər tozu, limon turşusu (E330), təbii ədviyyatlar, duz, kalium sorbat (E202), təbii emulqator (E415).</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>115/57 q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 7q</p><p>Zülallar: 1q</p><p>Karbohidratlar: 9.2q</p><p><strong>Enerji dəyəri: </strong>434 kC / 103.8 kkal</p><p><strong>İç ədədi: </strong>30/96 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.&nbsp; Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın.</p>'),
(37, NULL, 37, 1, 'Ədviyyatli Acili Pomidor Sousu', 'Pomidor sousumuzun dadına dad qatmaq və ədviyyatsevərləri sevindirmək üçün ədviyyatlı pomidor sousumuzu hazırladıq. Ədviyyatlı pomidor sousunun tərkibinə 15-dən artıq komponent daxildir.', 'dviyyatli-Acili-Pomidor-Sousu-4e8e', '<p><strong>Tərkibi: </strong>Pomidor, bibər pastası, günəbaxan yağı, şəkər tozu, duz, təbii aromatizator, ədviyyatlı otlar, qatılaşdırıcı, dəfnə yarpağı, soğan, sarımsaq, qara bibər, limon turşusu (E330).&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>310 q</p><p><strong>100 q məhsulun qida dəyəri:</strong></p><p>Yağlar: 3.9q</p><p>Karbohidratlar: 21.8q</p><p><strong>Enerji dəyəri: </strong>490 kC / 117 kkal</p><p><strong>İç ədədi: </strong>20 ədəd</p><p><strong>Qeyd: </strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur.&nbsp; Günəş işığından qoruyun. Qapağı şişmiş qabları almayın. İstifadədən əvvəl çalxalayın.</p>'),
(38, NULL, 38, 1, 'Burqer Sousu', 'Yeni Burqer Sousu ilə hazırlanan burqerləri daddıqdan sonra siz də bu ləzzətə haqq verəcəksiniz.', 'Burqer-Sousu-a3ca', '<p><strong>Tərkibi:&nbsp;</strong>Günəbaxan yağı, pasterizə edilmiş su, ketçup, şəkər tozu,&nbsp;emulqator: yumurta sarısının tozu, nişasta (E1422), quar kitrəsi (E412), ksantan kitrəsi (E415); duz, sirkə (E260), təbii&nbsp; ədviyyatlar, kalium sorbat (E202),&nbsp; beta –karotin (E160 a(i)), xardal yağı, EDTA (E385).&nbsp;</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>250q</p><p><strong>100 q məhsulun qida dəyəri</strong></p><p>Yağlar: 53.28q</p><p>Zülallar: 0.16q</p><p>Karbohidratlar: 6.84q</p><p><strong>Enerji dəyəri:&nbsp;</strong>2123.46 kC /&nbsp;507.52 kkal</p><p><strong>İç ədədi:&nbsp;</strong>24 ədəd</p><p><strong>Qeyd:&nbsp;</strong>Azərbaycan Məhsulu.Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın</p>'),
(39, NULL, 39, 1, 'Acili Sarimsaqli Zeytun Yagli Sous', NULL, 'Acili-Sarimsaqli-Zeytun-Yagli-Sous-8dfe', '<p><strong>Tərkibi:</strong>&nbsp;Extra virgin zeytun yağı, acı bibər, sarımsaq.</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>250 ml</p><p><strong>100 q məhsulun&nbsp; qida&nbsp; dəyəri:&nbsp;</strong></p><p>Yağlar:&nbsp; 99.9 q.</p><p><strong>Enerji dəyəri:&nbsp;</strong>3761 kC / 899 kkal&nbsp;</p><p><strong>İç ədədi:&nbsp;</strong>24 ədəd, 250 ml</p><p><strong>Qeyd:&nbsp; &nbsp;</strong>Azərbaycan məhsulu. Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.&nbsp;</p>'),
(40, NULL, 40, 1, 'Rozmarinli Zeytun Yagli Sous', NULL, 'Rozmarinli-Zeytun-Yagli-Sous-dd32', '<p><strong>Tərkibi:</strong>&nbsp;Extra virgin zeytun yağı, rozmarin aromatizatoru, rozmarin.&nbsp;</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>250 ml</p><p><strong>100 q məhsulun&nbsp; qida&nbsp; dəyəri:&nbsp;</strong></p><p>Yağlar:&nbsp; 99.9 q.</p><p><strong>Enerji dəyəri:&nbsp;</strong>3761 kC / 899 kkal&nbsp;</p><p><strong>İç ədədi:&nbsp;</strong>24 ədəd, 250 ml</p><p><strong>Qeyd:&nbsp; &nbsp;</strong>Azərbaycan məhsulu. Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.</p>'),
(41, NULL, 41, 1, 'Dəfnə Yarpaqli Zeytun Yagli Sous', NULL, 'Defne-Yarpaqli-Zeytun-Yagli-Sous-edb4', '<p><strong>Tərkibi:</strong>&nbsp;Extra virgin zeytun yağı, dəfnə yarpağı, qırmızı acı bibər, dəfnə yarpağı yağının ekstraktı.</p><p><strong>Məhsulun çəkisi:&nbsp;</strong>240 ml</p><p><strong>100 q məhsulun&nbsp; qida&nbsp; dəyəri:&nbsp;</strong></p><p>Yağlar:&nbsp; 99.9 q.</p><p><strong>Enerji dəyəri:&nbsp;</strong>3761 kC / 899 kkal&nbsp;</p><p><strong>İç ədədi:&nbsp;</strong><i><strong>&nbsp;24&nbsp; əd x 250 ml</strong></i></p><p><strong>Qeyd:&nbsp; &nbsp;</strong>Azərbaycan məhsulu. Tərkibində GMO yoxdur. Günəş şüasından qoruyun. İstifadədən əvvəl çalxalayın.&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `recipecategories`
--

CREATE TABLE `recipecategories` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipecategories`
--

INSERT INTO `recipecategories` (`Id`, `OrderBy`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `recipecategorytranslates`
--

CREATE TABLE `recipecategorytranslates` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `RecipeCategoryId` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL,
  `Name` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipecategorytranslates`
--

INSERT INTO `recipecategorytranslates` (`Id`, `OrderBy`, `RecipeCategoryId`, `LanguageId`, `Name`) VALUES
(1, NULL, 1, 1, 'Salatlar');

-- --------------------------------------------------------

--
-- Table structure for table `recipefiles`
--

CREATE TABLE `recipefiles` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `RecipeId` int(11) NOT NULL,
  `FileUrl` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipefiles`
--

INSERT INTO `recipefiles` (`Id`, `OrderBy`, `RecipeId`, `FileUrl`) VALUES
(5, NULL, 1, '04e41cb036a04ad.jpeg'),
(6, NULL, 2, 'e46b214a5f364ae.jpeg'),
(7, NULL, 3, '4b0f4ffb3f1944a.jpeg'),
(8, NULL, 4, '686ccb6b8c7641f.jpeg'),
(9, NULL, 5, '15c00c047532483.jpeg'),
(10, NULL, 6, '288d13d2753443d.jpeg'),
(11, NULL, 7, '75fef9680b93490.jpeg'),
(12, NULL, 8, '81b1a6e52675473.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `RecipeCategoryId` int(11) NOT NULL,
  `CreateDate` datetime(6) NOT NULL,
  `UniqueSeo` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Approve` tinyint(1) DEFAULT NULL,
  `VideoLink` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`Id`, `OrderBy`, `RecipeCategoryId`, `CreateDate`, `UniqueSeo`, `Approve`, `VideoLink`) VALUES
(1, NULL, 1, '2020-04-11 00:00:00.000000', 'c2eb94', 1, NULL),
(2, NULL, 1, '2020-04-15 00:00:00.000000', '6e243b', 1, NULL),
(3, NULL, 1, '2020-04-15 00:00:00.000000', 'c2c3e0', 1, NULL),
(4, NULL, 1, '2020-04-15 00:00:00.000000', '380676', 1, NULL),
(5, NULL, 1, '2020-04-15 00:00:00.000000', '8e246b', 1, NULL),
(6, NULL, 1, '2020-04-15 00:00:00.000000', '5c1f55', 1, NULL),
(7, NULL, 1, '2020-04-15 00:00:00.000000', '803ffd', 1, NULL),
(8, NULL, 1, '2020-04-15 00:00:00.000000', 'ccdcb9', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recipetranslates`
--

CREATE TABLE `recipetranslates` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `RecipeId` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL,
  `Title` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Summary` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Descriptions` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `SeoUrl` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipetranslates`
--

INSERT INTO `recipetranslates` (`Id`, `OrderBy`, `RecipeId`, `LanguageId`, `Title`, `Summary`, `Descriptions`, `SeoUrl`) VALUES
(1, NULL, 1, 1, 'Nar bilərziyi salatı', 'Yerkökü, kartof, çuğundur (ayrı qazanda) və yumurtanı suda bişirin.\r\nSürtkəcin iri gözündən keçirib ayrı-ayrı…\r\n                                        ', '<p><strong>İçindəkilər:</strong></p><p>3 ədəd yerkökü</p><p>3 ədəd kartof</p><p>2 ədəd kiçik və ya 1 ədəd iri çuğundur</p><p>3 ədəd yumurta</p><p>1 stəkan qoz ləpəsi – xırda-xırda doğranmış</p><p>2 ədəd sümüksüz, dərisiz toyuğun döş əti</p><p>Bizim Süfrə mayonezi</p><p>duz, istiot</p><p><strong>Hazırlanması:</strong></p><p>Yerkökü, kartof, çuğundur (ayrı qazanda) və yumurtanı suda bişirin. Sürtkəcin iri gözündən keçirib ayrı-ayrı qablara yığın. Ayrı qazanda bir az duz salınmış suda toyuq ətini də bişirib, əlinizlə didin. İri yastı qabın ortasına su stəkanı qoyun. Ərzaqları bu stəkanın ətrafında bu ardıcıllıqla yayın.</p><p>Qeyd: arada layları duzlayın, amma çox deyil, çünki mayonez duzlu olur.</p><p>Kartof</p><p>Bizim Süfrə mayonezi (təxminən 2 x. qaşığı)</p><p>Çuğundurun yarısı</p><p>Bizim Süfrə mayonezi</p><p>Yerkökü</p><p>Bizim Süfrə mayonezi</p><p>Qoz</p><p>Toyuğun yarısı</p><p>Bizim Süfrə mayonezi</p><p>Yumurta</p><p>Bizim Süfrə mayonezi</p><p>Qalan toyuq</p><p>Bizim Süfrə mayonezi</p><p>Qalan çuğundur</p><p>Bizim Süfrə mayonezi</p><p>Axırda Bizim Süfrə mayonezini salatın hər tərəfinə çəkin. Üstünə və kənarlarına nar dənələri səpin və əlinizlə yüngülvari basın ki, yapışsınlar. Bir neçə saatlıq soyuducuya qoyun.</p>', 'Nar-bilerziyi-salati'),
(2, NULL, 2, 1, 'Mayonezli yumurta salatı', 'Kartofları yastı şəkildə kəsib boşqabın içinə düzün...', '<p><strong>İÇİNDƏKİLƏR:</strong></p><p>4 ədəd yumurta (qatı bişmiş)</p><p>4 yemək qaşığı Bizim Süfrə Mayonezi</p><p>½ yemək qaşığı limon suyu</p><p>duz</p><p>2 ədəd qaynadılmış kartof (Soyulmuş)</p><p><strong>HAZIRLANMASI :</strong></p><p>Kartofları yastı şəkildə kəsib boşqabın içinə düzün. Yumurtaları soyub uzununa ikiyə bölün və kartofların üzərinə, çölü üstə düşəcək formada düzün. Bizim Süfrə mayonezini qaşıqla yumurtaların üzərinə tökün. Bizim Süfrə mayonezi bir az yayıldıqdan sonra arzu etdiyiniz şəkildə bəzəyib süfrəyə verin.</p><p>Nuş olsun! :)</p>', 'Mayonezli-yumurta-salati'),
(3, NULL, 3, 1, 'Mayonezli mövsüm salatı', 'Bizim Sufre mayonezi və toyuq ətini qarışdırın. ', '<p><strong>İÇİNDƏKİLƏR:</strong></p><p>250 qr toyuq əti, bişmiş və doğranmış</p><p>3 yemək qaşığı Bizim Süfrə mayonezi</p><p>4 ədəd pomidor, qabıqlı olaraq dilimlənmiş&nbsp;</p><p>Kahı</p><p>Duz, istiot</p><p><strong>HAZIRLANMA QAYDASI:</strong></p><p>Bizim Süfrə mayonezi və toyuq ətini qarışdırın.</p><p>Servis boşqabının üzərinə iri hissələr şəklində doğranmış kahı yarpaqlarının üzərinə pomidor dilimlərini qoyun. Toyuq əti və Bizim Süfrə mayonezi qarışığını da əlavə edərək süfrəyə verin.</p><p>Nuş olsun! :)</p>', 'Mayonezli-movsum-salati'),
(4, NULL, 4, 1, 'Mimoza salatı', 'Toyuq ətini duz əlavə edilmiş suda bişirin.....', '<p><strong>İÇİNDƏKİLƏR:</strong></p><p>450 qram dərisiz və sümüksüz toyuğun döş əti</p><p>1/2 çay qaşığı duz (toyuğun qaynadığı suya əlavə etmək üçün)</p><p>1/2 stəkan xırda doğranmış qoz ləpəsi</p><p>3 ədəd orta boy kartof</p><p>2 ədəd yumurta</p><p>3 ədəd orta boy yerkökü</p><p>zövqə görə duz</p><p>6 qaşıq xama + 6 qaşıq Bizim Süfrə mayonezi</p><p>Rəndələnmiş Holland pendiri</p><p><strong>HAZIRLANMASI:</strong></p><p>1. Toyuq ətini duz əlavə edilmiş suda bişirin. Sonra süzün və kənara qoyun. Soyuduğunda, bıcaqla uzunsov doğrayın və ya əlinizlə didin.</p><p>2. Karktof, yerkökü və yumurtaları suda bişirib qabıqlarını soyun. Sürtgəcin iri dişindən keçirib, ayrı-ayrı qablara qoyun.</p><p>3. Hazırladınan ərzaqlar aşağıda verilən ardıcıllıqla servis qabına lay-lay düzülür:</p><ul><li>toyuq ətinin yarısı</li><li>xama- Bizim Süfrə mayonez qarışığı</li><li>qozun yarısı</li><li>kartofun yarısı</li><li>duz</li><li>xama- Bizim Süfrə mayonez qarışığı</li><li>yumurtaların yarısı</li><li>duz</li><li>yerkökünün yarısı</li><li>xama-Bizim Süfrə mayonez qarışığı</li></ul><p>Layları eyni şəkildə davam edin. Ən üstdə yerkökü olmalıdır.</p>', 'Mimoza-salati'),
(5, NULL, 5, 1, 'Tərəvəzli qarışıq salatı', 'Qabaq və yerkökünü kibrit çöpü kimi doğrayıb az miqdarda...', '<p><strong>İÇİNDƏKİLƏR:</strong></p><ul><li>3 qabaq</li><li>3 yerkökü</li><li>1 banka qırmızı bibər</li><li>1 banka göbələk</li><li>1 qutu qarğıdalı</li><li>şüyüd</li><li>250 qr turşulu zeytun</li><li>zövqə uyğun bişirilmiş lavaş çörəyi</li></ul><p><strong>Sousu:</strong></p><ul><li>3 qaşıq Bizim Sufre mayonezi</li><li>3 qaşıq qatıq</li><li>1 limon suyu</li><li>1 qaşıq şəkər</li><li>zeytun yağı</li><li>2 diş sarımsaq</li><li>duz</li><li>1 qaşıq nanə</li></ul><p><strong>HAZIRLANMA QAYDASI:</strong></p><p>Qabaq və yerkökünü kibrit çöpü kimi doğrayıb az miqdarda duru yağda ayrı-ayrı qızardın, digər ərzaqları doğrayıb qızardılan tərəvəzlərlə qarışdırın. Sous ərzaqlarını qarışdırıb salatın üzərinə tökün.</p><p>Nuş olsun! :)</p>', 'Terevezli-qarisiq-salati'),
(6, NULL, 6, 1, 'Yaşıl almalı kərəviz salatı', 'Kök, kərəviz və almanı rəndələyin...', '<p><strong>İÇİNDƏKİLƏR:</strong></p><ul><li>1 ədəd yaşıl alma</li><li>1 ədəd kərəviz</li><li>1 ədəd orta yerkökü</li><li>1 x.q. Bizim Süfrə mayonezi</li><li>1 stəkan qatıq</li><li>2 diş sarımsaq</li><li>Bir ovuc qoz ləpəsi</li><li>Duz</li></ul><p><strong>HAZIRLANMASI:</strong></p><p>Kök, kərəviz və almanı rəndələyin. Sarımsaqlı qatıq hazırlayıb üzərinə tökün. Daha sonra Bizim Süfrə mayonezi əlavə edin. Qoz ləpəsini də əlavə edib qarışdırın. Zövqə görə duz da əlavə etmək olar. Üzərini istədiyiniz kimi bəzədikdən sonra salat hazır olacaq.</p><p>Nuş olsun! :)</p>', 'Yasil-almali-kereviz-salati'),
(7, NULL, 7, 1, 'Mayonezli badımcan salatı', 'Ayrı bir qabda qatıq, Bizim Süfrə mayonezi, yağ, duz və əzilmiş sarımsağı qarışdırın...', '<p><strong>İÇİNDƏKİLƏR:</strong></p><ul><li>1 ədəd (iri) badımcan</li><li>1 x.q. Bizim Süfrə mayonezi</li><li>1 x.q. zeytun yağı</li><li>1 x.q. qatıq</li><li>Sarımsaq</li><li>Duz</li></ul><p><strong>HAZIRLANMA QAYDASI:</strong></p><p>Ayrı bir qabda qatıq, Bizim Süfrə mayonezi, yağ, duz və əzilmiş sarımsağı qarışdırın. Yarım saat saxlayıb qızarmış badımcanın içinə yığıb, çöpə keçirin. Süfrəyə verilməyə hazırdır. Üzərinə dekor olaraq tomat əlavə edə bilərsiz.</p><p>Nuş olsun! :)</p>', 'Mayonezli-badimcan-salati'),
(8, NULL, 8, 1, 'Mayonezli ispanaq salatı', 'İspanaq yuyulur və doğranır. Üzərinə limon suyu  və duz əlavə edilir...', '<p><strong>İÇİNDƏKİLƏR:</strong></p><p>1 dəstə ispanaq</p><p>15 ədəd bibər</p><p>Yaşıl zeytun</p><p>2 yemək qaşığı Bizim Sufre mayonezi</p><p>2&nbsp; yemək qaşığı qatıq</p><p>1 diş sarımsaq</p><p>2 yemək qaşığı zeytun yağı</p><p>Yarım limonun suyu</p><p>1 desert qaşığı duz</p><p><strong>HAZIRLANMASI:</strong></p><p>İspanaq yuyulur və doğranır. Üzərinə limon suyu&nbsp; və duz əlavə edilir. Zeytunlar bir neçə hissəyə bölünüb ispanağa qatılır. Qatıq, Bizim Süfrə mayonezi, zeytun yağı yaxşıca qarışdırılır. Ərzaqların üzərinə səpilir və qarışdırılır.</p><p>Nuş olsun! :)</p>', 'Mayonezli-ispanaq-salati');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `PageKey` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Key` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`Id`, `OrderBy`, `PageKey`, `Key`) VALUES
(1, NULL, 'Genel', 'dahacok'),
(2, NULL, 'About', 'numara'),
(3, NULL, 'Blogs', 'kesfet'),
(4, NULL, 'Blogs', 'paylas'),
(5, NULL, 'Blogs', 'diger'),
(6, NULL, 'genel', 'inputsearch'),
(7, NULL, 'Product', 'digermehsul'),
(8, NULL, 'Home', 'resep'),
(9, NULL, 'Recepts', 'ara'),
(10, NULL, 'Recepts', 'kat'),
(11, NULL, 'Recepts', 'resepdiger'),
(12, NULL, 'Genel', 'anasayfa'),
(13, NULL, 'Genel', 'hakkimizda'),
(14, NULL, 'Genel', 'kesfet'),
(15, NULL, 'Genel', 'Mahsullar'),
(16, NULL, 'Genel', 'resept');

-- --------------------------------------------------------

--
-- Table structure for table `resourcetranslates`
--

CREATE TABLE `resourcetranslates` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `ResourceId` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL,
  `Value` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resourcetranslates`
--

INSERT INTO `resourcetranslates` (`Id`, `OrderBy`, `ResourceId`, `LanguageId`, `Value`) VALUES
(1, NULL, 1, 1, 'Daha çox'),
(2, NULL, 2, 1, 'Qaynar Xətt'),
(3, NULL, 3, 1, 'Kəşf et'),
(4, NULL, 4, 1, 'Paylaş\r\n\r\n'),
(5, NULL, 5, 1, 'Digər fəaliyyətlər\r\n\r\n\r\n'),
(6, NULL, 6, 1, 'axtarış edin'),
(7, NULL, 7, 1, 'Digər məhsullar'),
(8, NULL, 8, 1, ' Reseptlər'),
(9, NULL, 9, 1, 'Axtarış'),
(10, NULL, 10, 1, 'Kateqoriya'),
(11, NULL, 11, 1, '  Digər Reseptlər'),
(12, NULL, 12, 1, 'Ana Səhifə'),
(13, NULL, 13, 1, 'Haqqımızda'),
(14, NULL, 14, 1, 'Kəşf et'),
(15, NULL, 15, 1, 'Məhsullar'),
(16, NULL, 16, 1, 'Reseptlər');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `UniqueSeo` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`Id`, `OrderBy`, `UniqueSeo`) VALUES
(1, NULL, '2cb4a0'),
(2, NULL, '5bc66c'),
(3, NULL, 'c2eb94'),
(4, NULL, NULL),
(5, NULL, '6d7dd3'),
(6, NULL, '7e0f4c'),
(7, NULL, '794416'),
(8, NULL, 'a7f3b1'),
(9, NULL, '4716e8'),
(10, NULL, 'c80201'),
(11, NULL, '5b8c8f'),
(12, NULL, '6ba773'),
(13, NULL, '420b81'),
(14, NULL, 'be0107'),
(15, NULL, '2a5f92'),
(16, NULL, 'c5de37'),
(17, NULL, '5cd929'),
(18, NULL, 'a633e2'),
(19, NULL, 'b82dbb'),
(20, NULL, 'd853d2'),
(21, NULL, 'faab5e'),
(22, NULL, '750ab1'),
(23, NULL, '6ebecd'),
(24, NULL, '3219d3'),
(25, NULL, 'dd7b5d'),
(26, NULL, '58edfc'),
(27, NULL, '6683dd'),
(28, NULL, 'ac37a4'),
(29, NULL, '57ae2f'),
(30, NULL, '9f1d75'),
(31, NULL, '14d9aa'),
(32, NULL, '9b7f19'),
(33, NULL, '397cb1'),
(34, NULL, '572377'),
(35, NULL, 'f9d3e2'),
(36, NULL, 'be1213'),
(37, NULL, 'c6a163'),
(38, NULL, 'fcf477'),
(39, NULL, '6c5ba2'),
(40, NULL, 'd15831'),
(41, NULL, '509ddd'),
(42, NULL, 'e320d8'),
(43, NULL, '3199f5'),
(44, NULL, 'b9c1eb'),
(45, NULL, '485d1d'),
(46, NULL, '14d3cf'),
(47, NULL, '816118'),
(48, NULL, 'd01a3b'),
(49, NULL, '6e243b'),
(50, NULL, 'c2c3e0'),
(51, NULL, '380676'),
(52, NULL, '8e246b'),
(53, NULL, '5c1f55'),
(54, NULL, '803ffd'),
(55, NULL, 'ccdcb9');

-- --------------------------------------------------------

--
-- Table structure for table `seotranslates`
--

CREATE TABLE `seotranslates` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `SeoId` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL,
  `Title` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Key` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Descriptions` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seotranslates`
--

INSERT INTO `seotranslates` (`Id`, `OrderBy`, `SeoId`, `LanguageId`, `Title`, `Key`, `Descriptions`) VALUES
(1, NULL, 1, 1, NULL, 'deneme,', 's'),
(2, NULL, 2, 1, NULL, 'deneme,d', 'df'),
(3, NULL, 3, 1, NULL, 'deneme,', 'sdsss'),
(4, NULL, 4, 1, 'Bizim Sufre ', 'bizim sufre,Mayonez,Ketçup,sous,Reseptlər,Ana Səhifə', 'Bizim Sufre standartlara uygun sertifikalı mahsul üretim merkezidir.'),
(5, NULL, 5, 1, NULL, NULL, NULL),
(6, NULL, 6, 1, NULL, NULL, NULL),
(7, NULL, 7, 1, NULL, NULL, NULL),
(8, NULL, 8, 1, NULL, NULL, NULL),
(9, NULL, 9, 1, NULL, NULL, NULL),
(10, NULL, 10, 1, NULL, NULL, NULL),
(11, NULL, 11, 1, NULL, NULL, NULL),
(12, NULL, 12, 1, NULL, NULL, NULL),
(13, NULL, 13, 1, NULL, NULL, NULL),
(14, NULL, 14, 1, NULL, NULL, NULL),
(15, NULL, 15, 1, NULL, NULL, NULL),
(16, NULL, 16, 1, NULL, NULL, NULL),
(17, NULL, 17, 1, NULL, NULL, NULL),
(18, NULL, 18, 1, NULL, NULL, NULL),
(19, NULL, 19, 1, NULL, NULL, NULL),
(20, NULL, 20, 1, NULL, NULL, NULL),
(21, NULL, 21, 1, NULL, NULL, NULL),
(22, NULL, 22, 1, NULL, NULL, NULL),
(23, NULL, 23, 1, NULL, NULL, NULL),
(24, NULL, 24, 1, NULL, NULL, NULL),
(25, NULL, 25, 1, NULL, NULL, NULL),
(26, NULL, 26, 1, NULL, NULL, NULL),
(27, NULL, 27, 1, NULL, NULL, NULL),
(28, NULL, 28, 1, NULL, NULL, NULL),
(29, NULL, 29, 1, NULL, NULL, NULL),
(30, NULL, 30, 1, NULL, NULL, NULL),
(31, NULL, 31, 1, NULL, NULL, NULL),
(32, NULL, 32, 1, NULL, NULL, NULL),
(33, NULL, 33, 1, NULL, NULL, NULL),
(34, NULL, 34, 1, NULL, NULL, NULL),
(35, NULL, 35, 1, NULL, NULL, NULL),
(36, NULL, 36, 1, NULL, NULL, NULL),
(37, NULL, 37, 1, NULL, NULL, NULL),
(38, NULL, 38, 1, NULL, NULL, NULL),
(39, NULL, 39, 1, NULL, NULL, NULL),
(40, NULL, 40, 1, NULL, NULL, NULL),
(41, NULL, 41, 1, NULL, NULL, NULL),
(42, NULL, 42, 1, NULL, NULL, NULL),
(43, NULL, 43, 1, NULL, NULL, NULL),
(44, NULL, 44, 1, NULL, NULL, NULL),
(45, NULL, 45, 1, NULL, NULL, NULL),
(46, NULL, 46, 1, NULL, NULL, NULL),
(47, NULL, 47, 1, NULL, NULL, NULL),
(48, NULL, 48, 1, NULL, NULL, NULL),
(49, NULL, 49, 1, NULL, NULL, NULL),
(50, NULL, 50, 1, NULL, NULL, NULL),
(51, NULL, 51, 1, NULL, NULL, NULL),
(52, NULL, 52, 1, NULL, NULL, NULL),
(53, NULL, 53, 1, NULL, NULL, NULL),
(54, NULL, 54, 1, NULL, NULL, NULL),
(55, NULL, 55, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `FileUrl` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Link` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`Id`, `OrderBy`, `FileUrl`, `Link`) VALUES
(1, 1, '8e1cf69c127847c.jpeg', NULL),
(2, 2, 'ef6c051a26fd441.jpeg', NULL),
(3, 3, 'fc831ed1c3eb4fb.jpeg', NULL),
(4, 4, '75013d309f0e451.jpeg', NULL),
(5, 0, 'b4b6ff4b3ad942b.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webconfigs`
--

CREATE TABLE `webconfigs` (
  `Id` int(11) NOT NULL,
  `OrderBy` int(11) DEFAULT NULL,
  `CompanyName` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Facebook` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Instagram` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Linkedin` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Youtube` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Twitter` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `FacebookPixel` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `GoogleAnalytics` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `MetaTag` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Mail` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Phone` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Adress` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Copyright` longtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webconfigs`
--

INSERT INTO `webconfigs` (`Id`, `OrderBy`, `CompanyName`, `Facebook`, `Instagram`, `Linkedin`, `Youtube`, `Twitter`, `FacebookPixel`, `GoogleAnalytics`, `MetaTag`, `Mail`, `Phone`, `Adress`, `Copyright`) VALUES
(1, NULL, 'Bizim Sufre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '120', ' <p> Heydər Əliyev pr., 92a <br /> Bakı, Azərbaycan </p>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20200411123118_initial_V1', '3.1.3'),
('20200411165517_initial_V2', '3.1.3'),
('20200411183901_initial_V3', '3.1.3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminusers`
--
ALTER TABLE `adminusers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `blogtranslates`
--
ALTER TABLE `blogtranslates`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_BlogTranslates_BlogId` (`BlogId`),
  ADD KEY `IX_BlogTranslates_LanguageId` (`LanguageId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `categorytranslates`
--
ALTER TABLE `categorytranslates`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_CategoryTranslates_CategoryId` (`CategoryId`),
  ADD KEY `IX_CategoryTranslates_LanguageId` (`LanguageId`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `pagetranslates`
--
ALTER TABLE `pagetranslates`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_PageTranslates_LanguageId` (`LanguageId`),
  ADD KEY `IX_PageTranslates_PageId` (`PageId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Products_CategoryId` (`CategoryId`);

--
-- Indexes for table `producttranslates`
--
ALTER TABLE `producttranslates`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_ProductTranslates_LanguageId` (`LanguageId`),
  ADD KEY `IX_ProductTranslates_ProductId` (`ProductId`);

--
-- Indexes for table `recipecategories`
--
ALTER TABLE `recipecategories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `recipecategorytranslates`
--
ALTER TABLE `recipecategorytranslates`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_RecipeCategoryTranslates_LanguageId` (`LanguageId`),
  ADD KEY `IX_RecipeCategoryTranslates_RecipeCategoryId` (`RecipeCategoryId`);

--
-- Indexes for table `recipefiles`
--
ALTER TABLE `recipefiles`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_RecipeFiles_RecipeId` (`RecipeId`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Recipes_RecipeCategoryId` (`RecipeCategoryId`);

--
-- Indexes for table `recipetranslates`
--
ALTER TABLE `recipetranslates`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_RecipeTranslates_LanguageId` (`LanguageId`),
  ADD KEY `IX_RecipeTranslates_RecipeId` (`RecipeId`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `resourcetranslates`
--
ALTER TABLE `resourcetranslates`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_ResourceTranslates_LanguageId` (`LanguageId`),
  ADD KEY `IX_ResourceTranslates_ResourceId` (`ResourceId`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `seotranslates`
--
ALTER TABLE `seotranslates`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_SeoTranslates_LanguageId` (`LanguageId`),
  ADD KEY `IX_SeoTranslates_SeoId` (`SeoId`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `webconfigs`
--
ALTER TABLE `webconfigs`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminusers`
--
ALTER TABLE `adminusers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogtranslates`
--
ALTER TABLE `blogtranslates`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categorytranslates`
--
ALTER TABLE `categorytranslates`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pagetranslates`
--
ALTER TABLE `pagetranslates`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `producttranslates`
--
ALTER TABLE `producttranslates`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `recipecategories`
--
ALTER TABLE `recipecategories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recipecategorytranslates`
--
ALTER TABLE `recipecategorytranslates`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recipefiles`
--
ALTER TABLE `recipefiles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recipetranslates`
--
ALTER TABLE `recipetranslates`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `resourcetranslates`
--
ALTER TABLE `resourcetranslates`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `seotranslates`
--
ALTER TABLE `seotranslates`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `webconfigs`
--
ALTER TABLE `webconfigs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogtranslates`
--
ALTER TABLE `blogtranslates`
  ADD CONSTRAINT `FK_BlogTranslates_Blogs_BlogId` FOREIGN KEY (`BlogId`) REFERENCES `blogs` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BlogTranslates_Languages_LanguageId` FOREIGN KEY (`LanguageId`) REFERENCES `languages` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `categorytranslates`
--
ALTER TABLE `categorytranslates`
  ADD CONSTRAINT `FK_CategoryTranslates_Categories_CategoryId` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CategoryTranslates_Languages_LanguageId` FOREIGN KEY (`LanguageId`) REFERENCES `languages` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `pagetranslates`
--
ALTER TABLE `pagetranslates`
  ADD CONSTRAINT `FK_PageTranslates_Languages_LanguageId` FOREIGN KEY (`LanguageId`) REFERENCES `languages` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_PageTranslates_Pages_PageId` FOREIGN KEY (`PageId`) REFERENCES `pages` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_Products_Categories_CategoryId` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `producttranslates`
--
ALTER TABLE `producttranslates`
  ADD CONSTRAINT `FK_ProductTranslates_Languages_LanguageId` FOREIGN KEY (`LanguageId`) REFERENCES `languages` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ProductTranslates_Products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `recipecategorytranslates`
--
ALTER TABLE `recipecategorytranslates`
  ADD CONSTRAINT `FK_RecipeCategoryTranslates_Languages_LanguageId` FOREIGN KEY (`LanguageId`) REFERENCES `languages` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_RecipeCategoryTranslates_RecipeCategories_RecipeCategoryId` FOREIGN KEY (`RecipeCategoryId`) REFERENCES `recipecategories` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `recipefiles`
--
ALTER TABLE `recipefiles`
  ADD CONSTRAINT `FK_RecipeFiles_Recipes_RecipeId` FOREIGN KEY (`RecipeId`) REFERENCES `recipes` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `FK_Recipes_RecipeCategories_RecipeCategoryId` FOREIGN KEY (`RecipeCategoryId`) REFERENCES `recipecategories` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `recipetranslates`
--
ALTER TABLE `recipetranslates`
  ADD CONSTRAINT `FK_RecipeTranslates_Languages_LanguageId` FOREIGN KEY (`LanguageId`) REFERENCES `languages` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_RecipeTranslates_Recipes_RecipeId` FOREIGN KEY (`RecipeId`) REFERENCES `recipes` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `resourcetranslates`
--
ALTER TABLE `resourcetranslates`
  ADD CONSTRAINT `FK_ResourceTranslates_Languages_LanguageId` FOREIGN KEY (`LanguageId`) REFERENCES `languages` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ResourceTranslates_Resources_ResourceId` FOREIGN KEY (`ResourceId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `seotranslates`
--
ALTER TABLE `seotranslates`
  ADD CONSTRAINT `FK_SeoTranslates_Languages_LanguageId` FOREIGN KEY (`LanguageId`) REFERENCES `languages` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_SeoTranslates_Seos_SeoId` FOREIGN KEY (`SeoId`) REFERENCES `seos` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
