/*
SQLyog Enterprise
MySQL - 10.4.19-MariaDB : Database - db_pos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `failed_jobs` */

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `kategori` */

CREATE TABLE `kategori` (
  `id_kategori` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori`),
  UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`nama_kategori`,`created_at`,`updated_at`) values 
(1,'Pakan Kucing','2021-11-05 16:01:12','2021-11-05 16:01:12');

/*Table structure for table `m_kategori_harga` */

CREATE TABLE `m_kategori_harga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `m_kategori_harga` */

/*Table structure for table `member` */

CREATE TABLE `member` (
  `id_member` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_member`),
  UNIQUE KEY `member_kode_member_unique` (`kode_member`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `member` */

insert  into `member`(`id_member`,`kode_member`,`nama`,`alamat`,`telepon`,`created_at`,`updated_at`) values 
(1,'00001','Hajtan','0adjaskd','99009','2021-11-23 06:18:29','2021-11-23 06:18:29');

/*Table structure for table `migrations` */

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),
(4,'2019_08_19_000000_create_failed_jobs_table',1),
(5,'2019_12_14_000001_create_personal_access_tokens_table',1),
(6,'2021_03_05_194740_tambah_kolom_baru_to_users_table',1),
(7,'2021_03_05_195441_buat_kategori_table',1),
(8,'2021_03_05_195949_buat_produk_table',1),
(9,'2021_03_05_200515_buat_member_table',1),
(10,'2021_03_05_200706_buat_supplier_table',1),
(11,'2021_03_05_200841_buat_pembelian_table',1),
(12,'2021_03_05_200845_buat_pembelian_detail_table',1),
(13,'2021_03_05_200853_buat_penjualan_table',1),
(14,'2021_03_05_200858_buat_penjualan_detail_table',1),
(15,'2021_03_05_200904_buat_setting_table',1),
(16,'2021_03_05_201756_buat_pengeluaran_table',1),
(17,'2021_03_11_225128_create_sessions_table',1),
(18,'2021_03_24_115009_tambah_foreign_key_to_produk_table',1),
(19,'2021_03_24_131829_tambah_kode_produk_to_produk_table',1),
(20,'2021_05_08_220315_tambah_diskon_to_setting_table',1),
(21,'2021_05_09_124745_edit_id_member_to_penjualan_table',1);

/*Table structure for table `password_resets` */

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `pembelian` */

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pembelian` */

insert  into `pembelian`(`id_pembelian`,`id_supplier`,`total_item`,`total_harga`,`diskon`,`bayar`,`created_at`,`updated_at`) values 
(1,1,0,0,0,0,'2021-11-05 16:59:30','2021-11-05 16:59:30'),
(2,1,0,0,0,0,'2021-11-05 23:43:06','2021-11-05 23:43:06'),
(3,1,1,45000,0,45000,'2021-11-16 14:32:44','2021-11-16 14:33:22'),
(4,1,0,0,0,0,'2021-11-16 14:39:59','2021-11-16 14:39:59'),
(5,1,0,0,0,0,'2021-11-16 16:06:32','2021-11-16 16:06:32'),
(6,1,25,715000,0,715000,'2021-11-16 16:06:41','2021-11-16 16:07:26'),
(7,1,0,0,0,0,'2021-11-19 14:28:10','2021-11-19 14:28:10'),
(8,1,4,444000,50,222000,'2021-11-27 04:52:37','2021-11-27 04:53:41');

/*Table structure for table `pembelian_detail` */

CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembelian_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pembelian_detail` */

insert  into `pembelian_detail`(`id_pembelian_detail`,`id_pembelian`,`id_produk`,`harga_beli`,`jumlah`,`subtotal`,`created_at`,`updated_at`) values 
(1,3,2,45000,1,45000,'2021-11-16 14:33:19','2021-11-16 14:33:19'),
(2,6,3,4000,10,40000,'2021-11-16 16:06:51','2021-11-16 16:07:03'),
(3,6,2,45000,15,675000,'2021-11-16 16:06:56','2021-11-16 16:07:09'),
(4,7,2,45000,1,45000,'2021-11-19 14:28:17','2021-11-19 14:28:17'),
(5,7,1,350000,1,350000,'2021-11-19 14:28:22','2021-11-19 14:28:22'),
(6,8,2,45000,1,45000,'2021-11-27 04:52:52','2021-11-27 04:52:52'),
(7,8,1,350000,1,350000,'2021-11-27 04:52:56','2021-11-27 04:52:56'),
(8,8,3,4000,1,4000,'2021-11-27 04:52:58','2021-11-27 04:52:58'),
(9,8,2,45000,1,45000,'2021-11-27 04:53:21','2021-11-27 04:53:21');

/*Table structure for table `pengeluaran` */

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pengeluaran`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pengeluaran` */

insert  into `pengeluaran`(`id_pengeluaran`,`deskripsi`,`nominal`,`created_at`,`updated_at`) values 
(1,'Operasional',540000,'2021-11-16 14:35:36','2021-11-16 14:35:36');

/*Table structure for table `penjualan` */

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` int(11) DEFAULT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `diterima` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `penjualan` */

insert  into `penjualan`(`id_penjualan`,`id_member`,`total_item`,`total_harga`,`diskon`,`bayar`,`diterima`,`id_user`,`created_at`,`updated_at`) values 
(12,NULL,0,0,0,0,0,2,'2021-11-06 01:48:06','2021-11-06 01:48:06'),
(13,NULL,0,0,0,0,0,2,'2021-11-06 02:35:45','2021-11-06 02:35:45'),
(14,NULL,0,0,0,0,0,1,'2021-11-16 14:33:56','2021-11-16 14:33:56'),
(15,NULL,0,0,0,0,0,1,'2021-11-19 12:33:09','2021-11-19 12:33:09'),
(16,1,2,52000,5,49400,0,1,'2021-11-23 06:17:11','2021-11-23 08:38:03'),
(17,NULL,4,772000,0,772000,0,1,'2021-11-23 23:50:14','2021-11-24 00:11:54'),
(18,NULL,0,0,0,0,0,1,'2021-11-26 14:36:47','2021-11-26 14:36:47'),
(19,1,36,1375000,5,1306250,2000000,1,'2021-11-27 04:48:32','2021-11-27 04:51:36'),
(20,NULL,0,0,0,0,0,1,'2021-11-27 04:52:27','2021-11-27 04:52:27'),
(21,NULL,0,0,0,0,0,1,'2021-11-27 15:07:41','2021-11-27 15:07:41'),
(22,NULL,0,0,0,0,0,1,'2021-11-27 15:07:46','2021-11-27 15:07:46'),
(23,NULL,0,0,0,0,0,1,'2021-11-27 15:52:07','2021-11-27 15:52:07'),
(24,NULL,0,0,0,0,0,1,'2021-11-28 03:22:50','2021-11-28 03:22:50'),
(25,NULL,0,0,0,0,0,1,'2021-11-28 03:25:20','2021-11-28 03:25:20');

/*Table structure for table `penjualan_detail` */

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_penjualan_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `penjualan_detail` */

insert  into `penjualan_detail`(`id_penjualan_detail`,`id_penjualan`,`id_produk`,`harga_jual`,`jumlah`,`diskon`,`subtotal`,`created_at`,`updated_at`) values 
(7,12,2,47000,2,0,94000,'2021-11-06 01:49:00','2021-11-06 02:35:18'),
(8,12,2,47000,1,0,47000,'2021-11-06 01:49:34','2021-11-06 01:49:34'),
(9,12,1,360000,2,0,720000,'2021-11-06 01:49:38','2021-11-06 02:34:47'),
(10,12,2,47000,2,0,94000,'2021-11-06 01:49:41','2021-11-06 02:34:56'),
(11,12,1,360000,2,0,720000,'2021-11-06 01:49:46','2021-11-06 02:35:00'),
(12,12,2,47000,1,0,47000,'2021-11-06 01:49:49','2021-11-06 02:35:06'),
(13,12,1,360000,1,0,360000,'2021-11-06 01:49:52','2021-11-06 01:49:52'),
(14,14,1,360000,5,0,1800000,'2021-11-16 14:34:02','2021-11-16 14:34:15'),
(15,14,3,5000,1,0,5000,'2021-11-16 14:34:07','2021-11-16 14:34:07'),
(16,15,2,47000,1,0,47000,'2021-11-19 12:33:16','2021-11-19 12:33:16'),
(17,15,3,5000,1,0,5000,'2021-11-19 12:33:20','2021-11-19 12:33:20'),
(18,15,3,5000,1,0,5000,'2021-11-19 12:35:47','2021-11-19 12:35:47'),
(20,16,2,47000,1,5,47000,'2021-11-23 06:17:21','2021-11-23 08:38:03'),
(21,16,3,5000,1,5,5000,'2021-11-23 06:19:45','2021-11-23 08:38:03'),
(22,17,1,360000,1,0,360000,'2021-11-23 23:50:20','2021-11-23 23:50:20'),
(23,17,2,47000,1,0,47000,'2021-11-23 23:50:31','2021-11-23 23:50:31'),
(24,17,3,5000,1,0,5000,'2021-11-24 00:10:57','2021-11-24 00:10:57'),
(25,17,1,360000,1,0,360000,'2021-11-24 00:11:12','2021-11-24 00:11:12'),
(26,18,2,47000,1,0,47000,'2021-11-26 14:36:56','2021-11-26 14:36:56'),
(27,19,2,47000,20,5,940000,'2021-11-27 04:48:38','2021-11-27 04:51:36'),
(28,19,1,360000,10,5,3600000,'2021-11-27 04:48:41','2021-11-27 04:51:36'),
(29,19,3,5000,15,5,75000,'2021-11-27 04:48:44','2021-11-27 04:51:36'),
(30,23,2,47000,1,0,47000,'2021-11-27 15:52:31','2021-11-27 15:52:31'),
(31,23,3,5000,1,0,5000,'2021-11-27 15:54:08','2021-11-27 15:54:08'),
(32,23,3,5000,1,0,5000,'2021-11-27 15:54:20','2021-11-27 15:54:20');

/*Table structure for table `personal_access_tokens` */

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `produk` */

CREATE TABLE `produk` (
  `id_produk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_kategori` int(10) unsigned NOT NULL,
  `kode_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga_beli` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_produk`),
  UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`),
  UNIQUE KEY `produk_kode_produk_unique` (`kode_produk`),
  KEY `produk_id_kategori_foreign` (`id_kategori`),
  CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `produk` */

insert  into `produk`(`id_produk`,`id_kategori`,`kode_produk`,`nama_produk`,`merk`,`harga_beli`,`diskon`,`harga_jual`,`stok`,`created_at`,`updated_at`) values 
(1,1,'P000001','Pakan Kucing 30 gr','Merioka',350000,0,360000,95,'2021-11-05 16:01:44','2021-11-27 04:53:41'),
(2,1,'P000002','Pakan Burung','sdasd',45000,0,47000,4,'2021-11-05 16:25:01','2021-11-27 04:53:41'),
(3,1,'P000003','Pakan Merak','Ksas',4000,0,5000,2,'2021-11-05 16:25:23','2021-11-27 04:53:41');

/*Table structure for table `sessions` */

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('aT6MzVshp8yzatN6bYpZbGbGzRNEh7TV51uKAdBA',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSXpXWm04WHBrZnViNHo4bzdpMWFSa2RoNTU3NzZQb25KVFNIS1FnQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWsiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMmEkMTIkS0dvRHhKVEZOQ1Y1ZGdnTlplZ1pkLklKSjBWaWouYzdsejcwWWhFSDFoRG13SlRXZVNjNlciO3M6MTI6ImlkX3Blbmp1YWxhbiI7aToyNTt9',1638070301);

/*Table structure for table `setting` */

CREATE TABLE `setting` (
  `id_setting` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) NOT NULL DEFAULT 0,
  `path_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_kartu_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `setting` */

insert  into `setting`(`id_setting`,`nama_perusahaan`,`alamat`,`telepon`,`tipe_nota`,`diskon`,`path_logo`,`path_kartu_member`,`created_at`,`updated_at`) values 
(1,'Snack Shop','Jl. Babaknan Kidul no.37','081234779987',1,5,'/img/logo-20211128032408.jpg','/img/member.png',NULL,'2021-11-28 03:24:08');

/*Table structure for table `supplier` */

CREATE TABLE `supplier` (
  `id_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `supplier` */

insert  into `supplier`(`id_supplier`,`nama`,`alamat`,`telepon`,`created_at`,`updated_at`) values 
(1,'juragan Petshoop','Bandung','02283747','2021-11-05 16:59:22','2021-11-05 16:59:22');

/*Table structure for table `t_mapping_kategori_harga` */

CREATE TABLE `t_mapping_kategori_harga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_harga_id` int(11) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_mapping_kategori_harga` */

/*Table structure for table `users` */

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`foto`,`level`,`two_factor_secret`,`two_factor_recovery_codes`,`remember_token`,`current_team_id`,`profile_photo_path`,`created_at`,`updated_at`) values 
(1,'Administrator','admin@gmail.com',NULL,'$2a$12$KGoDxJTFNCV5dggNZegZd.IJJ0Vij.c7lz70YhEH1hDmwJTWeSc6W','/img/user.jpg',1,NULL,NULL,NULL,NULL,NULL,'2021-11-05 15:50:49','2021-11-05 15:50:49'),
(2,'Kasir 1','kasir1@gmail.com',NULL,'$2a$12$KGoDxJTFNCV5dggNZegZd.IJJ0Vij.c7lz70YhEH1hDmwJTWeSc6W','/img/user.jpg',2,NULL,NULL,NULL,NULL,NULL,'2021-11-05 15:50:49','2021-11-05 15:50:49');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
