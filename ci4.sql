-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 09:37 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul_komik` varchar(258) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul_komik`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'irfan Lutfi', 'gramedia', '1.PNG', NULL, '2021-04-27 23:39:00'),
(9, 'Narutokjljklkjl', 'narutokjljklkjl', 'saya sendiri', 'Gramedia', 'gaada sampul', '2021-04-27 23:39:15', '2021-04-27 23:46:06'),
(10, 'Lebih baik 23', 'lebih-baik-23', 'asasas', 'Gramedia', 'LPI-Essentials-Logo-300X300.png', '2021-04-29 00:48:00', '2021-04-29 00:48:00'),
(11, 'Narutoas adasas', 'narutoas-adasas', 'preti', 'ahaha', '1619678180_43b607de807f73381d9f.png', '2021-04-29 00:59:41', '2021-04-29 01:36:20'),
(12, 'Testing Coba CO3', 'testing-coba-co3', 'rtrt', 'ahaha', 'default.png', '2021-04-29 01:04:00', '2021-04-29 01:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-04-29-080922', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1619684412, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'darth', 'lampung', NULL, NULL),
(2, 'darth', 'lampung', '2021-04-29 20:36:54', '2021-04-29 20:36:54'),
(3, 'darth', 'lampung', '2021-04-29 20:39:05', '2021-04-29 20:39:05'),
(4, 'Janis Funk II', '540 Rolfson Dale Apt. 637\nStromanchester, MI 95211-1650', '2021-04-29 21:11:45', '2021-04-29 21:11:45'),
(5, 'Umi Palastri', 'Dk. Karel S. Tubun No. 663, Parepare 46365, Pabar', '2021-04-29 21:23:50', '2021-04-29 21:23:50'),
(6, 'Lalita Hastuti S.H.', 'Ki. Abdul No. 960, Kupang 73319, NTT', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(7, 'Ulva Hastuti', 'Kpg. Bass No. 683, Palopo 11318, Lampung', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(8, 'Daruna Hidayat M.Farm', 'Jr. Katamso No. 846, Palangka Raya 21807, Kaltara', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(9, 'Bala Tarihoran', 'Kpg. Baiduri No. 293, Sorong 70879, NTT', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(10, 'Purwa Tarihoran S.Farm', 'Ki. Sampangan No. 625, Administrasi Jakarta Timur 89414, Sulteng', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(11, 'Suci Yolanda', 'Jr. Lembong No. 467, Tual 97398, Bali', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(12, 'Atma Raden Budiyanto', 'Psr. Antapani Lama No. 187, Medan 31802, Sulsel', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(13, 'Arta Pangestu', 'Gg. Suniaraja No. 183, Subulussalam 82641, Bengkulu', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(14, 'Karen Utami', 'Jr. Wahidin No. 629, Padangpanjang 52762, Kaltim', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(15, 'Fitriani Ina Kuswandari M.TI.', 'Jln. Baung No. 899, Malang 71151, Kalsel', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(16, 'Damar Lega Latupono', 'Kpg. Suprapto No. 497, Ambon 12560, Bengkulu', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(17, 'Kajen Anggriawan M.M.', 'Jln. Bayan No. 36, Administrasi Jakarta Pusat 75330, Kaltim', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(18, 'Cakrabuana Agus Mustofa', 'Dk. Otto No. 504, Cilegon 40280, Kepri', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(19, 'Karma Dwi Sihombing', 'Ki. Suryo No. 447, Administrasi Jakarta Utara 93644, Gorontalo', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(20, 'Asirwanda Kurniawan', 'Ki. Panjaitan No. 189, Banjarbaru 87887, Jatim', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(21, 'Jais Mandala', 'Ki. Babadan No. 140, Blitar 93850, Sulteng', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(22, 'Garan Ghani Suwarno', 'Jln. Kali No. 902, Denpasar 31551, Lampung', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(23, 'Kalim Kunthara Januar S.H.', 'Jln. Sutan Syahrir No. 772, Administrasi Jakarta Pusat 84543, Kaltara', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(24, 'Eli Vivi Agustina', 'Psr. Baya Kali Bungur No. 872, Banjarmasin 34500, Jambi', '2021-04-29 21:23:51', '2021-04-29 21:23:51'),
(25, 'Ami Mandasari', 'Ki. Bakau Griya Utama No. 620, Tarakan 36875, Sumsel', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(26, 'Yusuf Erik Mangunsong S.Ked', 'Dk. Bagis Utama No. 432, Balikpapan 63882, Jambi', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(27, 'Embuh Santoso', 'Dk. Katamso No. 93, Magelang 52903, Sultra', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(28, 'Putri Lalita Wastuti', 'Psr. Baya Kali Bungur No. 905, Administrasi Jakarta Selatan 59931, Jateng', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(29, 'Galak Thamrin', 'Dk. Pattimura No. 665, Bandar Lampung 64795, Bali', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(30, 'Queen Jelita Wijayanti M.Ak', 'Jln. Gremet No. 700, Tangerang 77924, Kalsel', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(31, 'Syahrini Anggraini S.E.I', 'Ds. Bank Dagang Negara No. 242, Serang 97617, Gorontalo', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(32, 'Jinawi Manah Rajasa', 'Ds. B.Agam 1 No. 913, Tasikmalaya 22142, Jateng', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(33, 'Garang Wibisono', 'Gg. Barasak No. 813, Administrasi Jakarta Timur 70042, Sulteng', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(34, 'Emin Gunawan', 'Kpg. Setia Budi No. 917, Denpasar 88396, Jatim', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(35, 'Luwar Wacana S.Farm', 'Ds. Sukabumi No. 206, Lubuklinggau 78143, Sumbar', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(36, 'Kasim Embuh Widodo S.I.Kom', 'Kpg. Abdul No. 534, Balikpapan 96107, Sumbar', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(37, 'Salman Budiman', 'Jr. Baiduri No. 24, Solok 17997, NTB', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(38, 'Kurnia Prasasta', 'Psr. Bak Air No. 356, Administrasi Jakarta Timur 99760, Sulteng', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(39, 'Widya Michelle Winarsih', 'Jln. Suharso No. 978, Payakumbuh 65142, Sulut', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(40, 'Respati Rajata', 'Kpg. Bhayangkara No. 65, Tangerang Selatan 99799, Kalteng', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(41, 'Nilam Calista Anggraini', 'Psr. Lada No. 17, Gorontalo 76222, Jateng', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(42, 'Vicky Safitri M.Farm', 'Ds. Radio No. 677, Tangerang Selatan 58844, Aceh', '2021-04-29 21:26:44', '2021-04-29 21:26:44'),
(43, 'Jayeng Darijan Pradana S.Pt', 'Gg. Wahid Hasyim No. 536, Jayapura 10725, Bali', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(44, 'Nugraha Winarno', 'Jln. Laksamana No. 251, Administrasi Jakarta Utara 85158, DKI', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(45, 'Lasmanto Pratama', 'Dk. Abang No. 983, Pekanbaru 86975, Sulut', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(46, 'Galang Tamba', 'Jln. Madiun No. 320, Tual 25482, Maluku', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(47, 'Umay Uda Pradana M.Pd', 'Ki. Gegerkalong Hilir No. 388, Makassar 97676, Sulteng', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(48, 'Umar Saptono M.Ak', 'Jln. Dahlia No. 163, Denpasar 25664, Malut', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(49, 'Kezia Puji Padmasari S.I.Kom', 'Gg. Gotong Royong No. 505, Yogyakarta 27583, NTB', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(50, 'Devi Amalia Mayasari', 'Psr. Baung No. 379, Administrasi Jakarta Barat 50189, Jambi', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(51, 'Hani Rahayu', 'Psr. Jend. A. Yani No. 910, Balikpapan 16138, Banten', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(52, 'Prakosa Rajasa M.TI.', 'Jln. Banal No. 820, Gorontalo 66229, Maluku', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(53, 'Latika Karen Suartini M.TI.', 'Jr. Cokroaminoto No. 501, Pariaman 66641, Papua', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(54, 'Kenes Pangestu Siregar S.Sos', 'Jr. Otto No. 614, Prabumulih 65423, Maluku', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(55, 'Anita Agustina', 'Gg. Baung No. 177, Sorong 74192, Kalteng', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(56, 'Paiman Hidayat', 'Kpg. Bakau Griya Utama No. 793, Mojokerto 71081, Jatim', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(57, 'Febi Wirda Lestari S.Pd', 'Jr. Muwardi No. 441, Binjai 60210, Jatim', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(58, 'Jaiman Budi Zulkarnain', 'Jln. Ekonomi No. 783, Tangerang 16523, NTT', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(59, 'Sarah Zulaika', 'Jln. Tentara Pelajar No. 218, Samarinda 35397, Sumbar', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(60, 'Indah Tari Aryani S.Kom', 'Jln. Kyai Gede No. 875, Pagar Alam 77870, Gorontalo', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(61, 'Wirda Dewi Fujiati M.Ak', 'Gg. Basmol Raya No. 171, Gorontalo 79301, Riau', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(62, 'Irnanto Dongoran', 'Psr. Warga No. 298, Cilegon 14697, Kaltara', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(63, 'Jarwadi Sitompul', 'Jln. Camar No. 133, Bekasi 13914, Sumsel', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(64, 'Lanjar Hidayat', 'Ds. Thamrin No. 385, Bengkulu 45505, Kepri', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(65, 'Melinda Zulaika', 'Psr. Bata Putih No. 609, Bengkulu 23084, Kaltara', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(66, 'Novi Paris Mayasari', 'Psr. Tangkuban Perahu No. 380, Administrasi Jakarta Selatan 42661, DIY', '2021-04-29 21:26:45', '2021-04-29 21:26:45'),
(67, 'Purwanto Uwais', 'Psr. Flora No. 822, Administrasi Jakarta Timur 17840, Pabar', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(68, 'Setya Rosman Damanik', 'Dk. Soekarno Hatta No. 773, Serang 21322, DIY', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(69, 'Respati Prakosa Salahudin S.E.', 'Kpg. Abdullah No. 147, Tual 70273, Banten', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(70, 'Yance Wijayanti', 'Jr. Jambu No. 965, Tangerang Selatan 67965, Maluku', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(71, 'Melinda Wijayanti', 'Kpg. Antapani Lama No. 102, Tarakan 79773, Sumut', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(72, 'Lidya Zamira Suryatmi', 'Jln. Jend. A. Yani No. 628, Cirebon 33068, Banten', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(73, 'Kusuma Prasetya', 'Ds. Bagis Utama No. 315, Pasuruan 70390, Pabar', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(74, 'Prakosa Pratama', 'Ki. Yoga No. 567, Administrasi Jakarta Utara 50091, Riau', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(75, 'Cagak Sirait', 'Dk. Dr. Junjunan No. 799, Administrasi Jakarta Selatan 45196, Kalbar', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(76, 'Cagak Baktiadi Maryadi', 'Dk. PHH. Mustofa No. 940, Batam 42930, Kaltara', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(77, 'Tasnim Ardianto', 'Jr. Nakula No. 59, Kendari 90714, Maluku', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(78, 'Martana Damanik', 'Ki. Acordion No. 786, Pasuruan 36812, Jambi', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(79, 'Syahrini Nasyidah', 'Gg. Bakti No. 201, Cirebon 12049, Sumbar', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(80, 'Hartana Wibowo', 'Gg. Nakula No. 577, Malang 86270, Jabar', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(81, 'Hendri Iswahyudi', 'Jr. Bawal No. 708, Pangkal Pinang 76028, Kalsel', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(82, 'Gina Karen Andriani', 'Gg. Laksamana No. 810, Jayapura 20761, Lampung', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(83, 'Paulin Mayasari', 'Jln. Gotong Royong No. 33, Tangerang Selatan 67133, Maluku', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(84, 'Ellis Hartati', 'Jln. Bak Air No. 815, Serang 54337, Sulut', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(85, 'Kala Mustofa', 'Dk. Sukajadi No. 679, Blitar 44792, Jabar', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(86, 'Puti Utami', 'Ki. Baranang Siang Indah No. 41, Pariaman 35112, Kalteng', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(87, 'Sarah Hilda Riyanti S.Farm', 'Ki. Uluwatu No. 907, Bekasi 77743, Sultra', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(88, 'Wakiman Panca Siregar', 'Ds. Setiabudhi No. 713, Serang 65431, Babel', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(89, 'Satya Sihotang', 'Ki. Bata Putih No. 685, Pematangsiantar 89358, DIY', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(90, 'Warji Nardi Pradana S.Ked', 'Kpg. Basket No. 817, Tanjungbalai 41760, Jateng', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(91, 'Hari Wasita', 'Ds. Basudewo No. 247, Payakumbuh 87678, Sulut', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(92, 'Baktiono Kusuma Nashiruddin M.Farm', 'Jln. Jend. Sudirman No. 569, Lhokseumawe 55000, Kaltim', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(93, 'Zelda Andriani', 'Jr. Agus Salim No. 177, Tasikmalaya 63311, Babel', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(94, 'Umar Permadi', 'Ds. M.T. Haryono No. 220, Batu 68809, Riau', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(95, 'Titin Kusmawati', 'Dk. Astana Anyar No. 996, Pekanbaru 53758, Kalsel', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(96, 'Wulan Pudjiastuti M.Kom.', 'Ki. Dr. Junjunan No. 249, Sibolga 87206, Kaltara', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(97, 'Mala Namaga S.Gz', 'Jr. Imam Bonjol No. 434, Tanjung Pinang 78704, Sulteng', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(98, 'Gabriella Ifa Yulianti M.Farm', 'Ds. Baha No. 47, Gorontalo 94680, DIY', '2021-04-29 21:26:46', '2021-04-29 21:26:46'),
(99, 'Mahdi Dagel Mandala', 'Ki. Baja Raya No. 104, Serang 79827, Jabar', '2021-04-29 21:26:46', '2021-04-29 21:26:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
