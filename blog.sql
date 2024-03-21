-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2024 at 04:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_31_053408_create_posts_table', 1),
(6, '2023_02_03_071623_create_post_translations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_draft` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `is_draft`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-01-23 03:27:13', '2024-01-23 03:27:13'),
(2, 1, '2024-01-23 03:27:13', '2024-01-23 03:27:13'),
(3, 1, '2024-01-23 03:27:13', '2024-01-23 03:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `post_translations`
--

CREATE TABLE `post_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_translations`
--

INSERT INTO `post_translations` (`id`, `post_id`, `locale`, `title`, `content`, `image`) VALUES
(1, 1, 'id', 'Boyolali hingga Klaten Diguyur Hujan Abu Imbas Erupsi Gunung Merapi', 'Balai Penyelidikan dan Pengembangan Teknologi Kebencanaan Geologi (BPPTKG) Yogyakarta mengatakan abu vulkanik itu menyebar hingga radius 30 kilometer alhasil menyebabkan sejumlah wilayah di Kabupaten Boyolali, Jawa Tengah, terdampak guguran hujan abu tebal.\nKabar hujan abu vulkanik yang menjangkau sejumlah wilayah itupun beredar di media sosial.\n\"Visual Gunung Merapi berkabut dan arah angin ke Timur. Masyarakat diimbau untuk menjauhi daerah bahaya yang berbahaya,\" tulis BPPTKG dalam keterangan resminya, Minggu (21/1/2024)..\nBPPTKG mencatat awan panas guguran pertama, Minggu (21/1) dilaporkan terjadi pada pukul 08.25 WIB dengan amplitudo maksimum 62 milimeter dan durasi 191,28 detik dengan arak luncur maksimal APG pertama ini mencapai 2.000 meter atau dua kilometer ke arah barat daya atau Kali Bebeng.', 'https://asset.kompas.com/crops/TeXoQCbZu5buO8Oguv2sXqSJslQ=/0x0:1800x1200/750x500/data/photo/2021/04/30/608bbe9b524d4.jpg'),
(2, 1, 'en', 'Boyolali to Klaten Showered with Ash Rain due to Mount Merapi Eruption', 'The Yogyakarta Center for the Investigation and Development of Geological Disaster Technology (BPPTKG) said the volcanic ash spread to a radius of 30 kilometers, causing a number of areas in Boyolali Regency, Central Java, to be affected by thick ash rain.\nNews of the volcanic ash rain that reached a number of areas was circulating on social media.\n\"Visually Mount Merapi is foggy and the wind direction is to the East. The public is advised to stay away from dangerous areas,\" wrote BPPTKG in its official statement, Sunday (21/1/2024).\nBPPTKG noted that the first hot cloud, Sunday (21/1) was reported at 08.25 WIB with a maximum amplitude of 62 millimeters and a duration of 191.28 seconds with the maximum glide of this first APG reaching 2,000 meters or two kilometers to the southwest or Kali Bebeng.', 'https://asset.kompas.com/crops/TeXoQCbZu5buO8Oguv2sXqSJslQ=/0x0:1800x1200/750x500/data/photo/2021/04/30/608bbe9b524d4.jpg'),
(3, 2, 'id', 'Pantai Siung Jogja: Sejarah, Daya Tarik, Harga, dan Rute', 'Pantai Siung merupakan salah satu objek wisata andalan Kabupaten Gunungkidul, Daerah Istimewa Yogyakarta (Jogja). Selain pemandangan yang elok, pantai ini juga memiliki banyak daya tarik wisata, seperti tebing untuk rock climbing hingga bisa untuk camping.\nSebelum pergi ke sini, simak dulu penjelasan tentang Pantai Siung dalam artikel ini. Kita akan membahas mulai dari sejarah, daya tarik, fasilitas, harga tiket masuk, dan rute perjalanannya.', 'https://akcdn.detik.net.id/community/media/visual/2018/06/11/d87b0ff1-f810-4560-9a5c-522ddd7a5a6f_169.jpeg?w=700&q=90'),
(4, 2, 'en', 'Siung Beach Jogja: History, Attractions, Prices, and Routes', 'Siung Beach is one of the main attractions of Gunungkidul Regency, Special Region of Yogyakarta (Jogja). In addition to the beautiful scenery, this beach also has many tourist attractions, such as cliffs for rock climbing and camping.\nBefore going here, check out the explanation about Siung Beach in this article. We will discuss the history, attractions, facilities, entrance ticket prices, and travel routes.', 'https://akcdn.detik.net.id/community/media/visual/2018/06/11/d87b0ff1-f810-4560-9a5c-522ddd7a5a6f_169.jpeg?w=700&q=90'),
(5, 3, 'id', 'Candi Prambanan', 'Candi Prambanan merupakan candi Hindu yang terbesar di Indonesia. Sampai saat ini belum dapat dipastikan kapan candi ini dibangun dan atas perintah siapa, namun kuat dugaan bahwa Candi Prambanan dibangun sekitar pertengahan abad ke-9 oleh raja dari Wangsa Sanjaya, yaitu Raja Balitung Maha Sambu. Dugaan tersebut didasarkan pada isi Prasasti Syiwagrha yang ditemukan di sekitar Prambanan dan saat ini tersimpan di Museum Nasional di Jakarta. Prasasti berangka tahun 778 Saka (856 M) ini ditulis pada masa pemerintahan Rakai Pikatan.', 'https://cdnwpedutorenews.gramedia.net/wp-content/uploads/2022/01/27151326/Legenda-Candi-Prambanan-dan-5-Mitosnya.jpg'),
(6, 3, 'en', 'Prambanan Temple', 'Prambanan Temple is the largest Hindu temple in Indonesia. Until now it is not certain when this temple was built and on whose orders, but there is a strong suspicion that Prambanan Temple was built around the middle of the 9th century by the king of the Sanjaya Dynasty, namely King Balitung Maha Sambu. The assumption is based on the contents of the Syiwagrha Inscription found around Prambanan and currently kept at the National Museum in Jakarta. The inscription, dated 778 Saka (856 AD), was written during the reign of Rakai Pikatan.', 'https://cdnwpedutorenews.gramedia.net/wp-content/uploads/2022/01/27151326/Legenda-Candi-Prambanan-dan-5-Mitosnya.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_translations_post_id_locale_unique` (`post_id`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post_translations`
--
ALTER TABLE `post_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD CONSTRAINT `post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
