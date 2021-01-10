-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2021 pada 17.19
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_plantdoc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Tanaman Herbal', 'tanaman-herbal', '2020-12-21 20:26:44', '2020-12-30 22:48:46'),
(2, NULL, 1, 'Tanaman-Hias', 'tanaman-hias', '2020-12-21 20:26:44', '2020-12-30 17:40:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments_post`
--

CREATE TABLE `comments_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comments_post`
--

INSERT INTO `comments_post` (`id`, `post_id`, `user_id`, `comment_text`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'kocak kocak', NULL, NULL),
(3, 1, 1, 'halo gais', NULL, NULL),
(4, 3, 2, 'hai', '2020-12-29 07:12:49', '2020-12-29 07:12:49'),
(12, 4, 1, 'halo ini admin post 4  heheh', '2020-12-29 10:08:17', '2020-12-29 10:08:17'),
(13, 2, 2, 'mantap nih ndeh mandeh', '2020-12-29 11:16:46', '2020-12-29 11:16:46'),
(14, 2, 2, 'mantap nih oi huuy', '2020-12-29 11:20:16', '2020-12-29 11:20:16'),
(15, 3, 2, 'hai ini', '2020-12-29 12:34:57', '2020-12-29 12:34:57'),
(16, 5, 2, 'halo hai juga', '2020-12-29 16:09:35', '2020-12-29 16:09:35'),
(17, 5, 2, 'ini post 5', '2020-12-29 17:05:18', '2020-12-29 17:05:18'),
(18, 4, 2, 'ayo jalan jalan raja', '2020-12-29 20:34:40', '2020-12-29 20:34:40'),
(19, 5, 2, 'halo tio', '2020-12-29 20:36:48', '2020-12-29 20:36:48'),
(21, 4, 2, 'ini komen raja yg ganti admin', '2020-12-31 01:56:00', '2020-12-31 01:57:55'),
(23, 6, 4, 'Hoo jadi gitu yaa', '2021-01-03 16:39:09', '2021-01-03 16:39:09'),
(24, 6, 3, 'iyaa seperti itu ganteng', '2021-01-03 16:40:52', '2021-01-03 16:40:52'),
(25, 6, 4, 'mancayyy', '2021-01-03 17:30:26', '2021-01-03 17:30:26'),
(26, 6, 4, 'abis teken like bor', '2021-01-09 04:20:33', '2021-01-09 04:20:33'),
(27, 6, 5, 'mancay', '2021-01-10 05:51:38', '2021-01-10 05:51:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_forums`
--

CREATE TABLE `comment_forums` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_forum` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comment_forums`
--

INSERT INTO `comment_forums` (`id`, `comment_forum`, `user_id`, `forum_id`, `created_at`, `updated_at`) VALUES
(1, 'tinggal disiram', 3, 2, '2021-01-09 04:31:22', '2021-01-09 04:31:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 13, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 13, 'post_id', 'number', 'Post Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 13, 'user_id', 'number', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 13, 'comment_text', 'text', 'Comment Text', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(61, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(62, 13, 'comments_post_hasmany_post_relationship', 'relationship', 'posts', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Post\",\"table\":\"posts\",\"type\":\"hasMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-12-21 20:26:35', '2020-12-21 20:26:35'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-12-21 20:26:35', '2020-12-21 20:26:35'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-12-21 20:26:35', '2020-12-21 20:26:35'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-12-21 20:26:43', '2020-12-21 20:26:43'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-12-21 20:26:45', '2020-12-30 20:39:53'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-12-21 20:26:46', '2020-12-21 20:26:46'),
(13, 'comments_post', 'comments-post', 'Comments Post', 'Comments Posts', NULL, 'App\\Models\\CommentsPost', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-12-28 18:20:53', '2020-12-28 18:51:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `forums`
--

CREATE TABLE `forums` (
  `id` int(10) UNSIGNED NOT NULL,
  `forumtext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tittle_forum` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `forums`
--

INSERT INTO `forums` (`id`, `forumtext`, `tittle_forum`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'forum 1 post', 'forum 1', 1, '2021-01-09 02:57:26', '2021-01-09 02:57:26'),
(2, 'Bagaimana cara menyiram tanaman obat', 'Tanaman Obat', 4, '2021-01-09 04:30:45', '2021-01-09 04:30:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `like_forums`
--

CREATE TABLE `like_forums` (
  `id` int(10) UNSIGNED NOT NULL,
  `like_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `like_post`
--

CREATE TABLE `like_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `like_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `like_post`
--

INSERT INTO `like_post` (`id`, `user_id`, `post_id`, `like_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, NULL),
(2, 2, 4, 1, '2020-12-29 02:15:13', '2020-12-29 02:15:13'),
(4, 1, 5, 1, '2021-01-03 14:41:36', '2021-01-03 14:41:36'),
(5, 2, 6, 1, '2021-01-03 16:32:35', '2021-01-03 16:32:35'),
(6, 2, 6, 1, '2021-01-03 17:31:25', '2021-01-03 17:31:25'),
(7, 4, 6, 1, '2021-01-09 04:20:19', '2021-01-09 04:20:19'),
(8, 5, 6, 1, '2021-01-10 05:51:24', '2021-01-10 05:51:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-12-21 20:26:37', '2020-12-21 20:26:37'),
(2, 'public', '2020-12-30 18:20:50', '2020-12-30 18:20:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-12-21 20:26:37', '2020-12-21 20:26:37', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-12-21 20:26:37', '2020-12-21 20:26:37', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-12-21 20:26:37', '2020-12-21 20:26:37', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-12-21 20:26:37', '2020-12-21 20:26:37', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-12-21 20:26:37', '2020-12-21 20:26:37', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-12-21 20:26:37', '2020-12-21 20:26:37', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-12-21 20:26:37', '2020-12-21 20:26:37', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-12-21 20:26:37', '2020-12-21 20:26:37', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-12-21 20:26:38', '2020-12-21 20:26:38', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-12-21 20:26:38', '2020-12-21 20:26:38', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2020-12-21 20:26:43', '2020-12-21 20:26:43', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-12-21 20:26:45', '2020-12-21 20:26:45', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2020-12-21 20:26:47', '2020-12-21 20:26:47', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-12-21 20:26:51', '2020-12-21 20:26:51', 'voyager.hooks', NULL),
(15, 1, 'Comments Posts', '', '_self', NULL, NULL, NULL, 15, '2020-12-28 18:20:53', '2020-12-28 18:20:53', 'voyager.comments-post.index', NULL),
(16, 2, 'Beranda', '/', '_self', NULL, '#000000', NULL, 1, '2020-12-30 18:21:48', '2020-12-30 18:23:44', NULL, ''),
(17, 2, 'Forum', '#', '_self', NULL, '#000000', NULL, 2, '2020-12-30 18:22:44', '2020-12-30 18:23:44', NULL, ''),
(18, 2, 'Jenis Tanaman', '', '_self', NULL, '#000000', NULL, 3, '2020-12-30 18:23:15', '2020-12-30 18:23:44', NULL, ''),
(19, 2, 'Tanaman Hias', '/tanaman-hias', '_self', NULL, '#000000', 18, 1, '2020-12-30 18:23:39', '2020-12-30 18:23:44', NULL, ''),
(20, 2, 'Tanaman Obat', '/tanaman-obat', '_self', NULL, '#000000', 18, 2, '2020-12-30 18:24:14', '2020-12-30 18:24:24', NULL, ''),
(21, 2, 'Kontak', '#footer', '_self', NULL, '#000000', NULL, 16, '2020-12-30 18:26:22', '2020-12-30 20:09:27', NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2018_06_30_113500_create_comments_table', 2),
(29, '2021_01_03_115535_create_forums_table', 3),
(30, '2021_01_03_120050_create_like_forums_table', 3),
(31, '2021_01_03_120451_create_comment_forums_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-12-21 20:26:48', '2020-12-21 20:26:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-12-21 20:26:38', '2020-12-21 20:26:38'),
(2, 'browse_bread', NULL, '2020-12-21 20:26:38', '2020-12-21 20:26:38'),
(3, 'browse_database', NULL, '2020-12-21 20:26:38', '2020-12-21 20:26:38'),
(4, 'browse_media', NULL, '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(5, 'browse_compass', NULL, '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(6, 'browse_menus', 'menus', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(7, 'read_menus', 'menus', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(8, 'edit_menus', 'menus', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(9, 'add_menus', 'menus', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(10, 'delete_menus', 'menus', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(11, 'browse_roles', 'roles', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(12, 'read_roles', 'roles', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(13, 'edit_roles', 'roles', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(14, 'add_roles', 'roles', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(15, 'delete_roles', 'roles', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(16, 'browse_users', 'users', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(17, 'read_users', 'users', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(18, 'edit_users', 'users', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(19, 'add_users', 'users', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(20, 'delete_users', 'users', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(21, 'browse_settings', 'settings', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(22, 'read_settings', 'settings', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(23, 'edit_settings', 'settings', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(24, 'add_settings', 'settings', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(25, 'delete_settings', 'settings', '2020-12-21 20:26:39', '2020-12-21 20:26:39'),
(26, 'browse_categories', 'categories', '2020-12-21 20:26:43', '2020-12-21 20:26:43'),
(27, 'read_categories', 'categories', '2020-12-21 20:26:43', '2020-12-21 20:26:43'),
(28, 'edit_categories', 'categories', '2020-12-21 20:26:43', '2020-12-21 20:26:43'),
(29, 'add_categories', 'categories', '2020-12-21 20:26:43', '2020-12-21 20:26:43'),
(30, 'delete_categories', 'categories', '2020-12-21 20:26:44', '2020-12-21 20:26:44'),
(31, 'browse_posts', 'posts', '2020-12-21 20:26:45', '2020-12-21 20:26:45'),
(32, 'read_posts', 'posts', '2020-12-21 20:26:45', '2020-12-21 20:26:45'),
(33, 'edit_posts', 'posts', '2020-12-21 20:26:45', '2020-12-21 20:26:45'),
(34, 'add_posts', 'posts', '2020-12-21 20:26:45', '2020-12-21 20:26:45'),
(35, 'delete_posts', 'posts', '2020-12-21 20:26:46', '2020-12-21 20:26:46'),
(36, 'browse_pages', 'pages', '2020-12-21 20:26:47', '2020-12-21 20:26:47'),
(37, 'read_pages', 'pages', '2020-12-21 20:26:48', '2020-12-21 20:26:48'),
(38, 'edit_pages', 'pages', '2020-12-21 20:26:48', '2020-12-21 20:26:48'),
(39, 'add_pages', 'pages', '2020-12-21 20:26:48', '2020-12-21 20:26:48'),
(40, 'delete_pages', 'pages', '2020-12-21 20:26:48', '2020-12-21 20:26:48'),
(41, 'browse_hooks', NULL, '2020-12-21 20:26:51', '2020-12-21 20:26:51'),
(42, 'browse_comments_post', 'comments_post', '2020-12-28 18:20:53', '2020-12-28 18:20:53'),
(43, 'read_comments_post', 'comments_post', '2020-12-28 18:20:53', '2020-12-28 18:20:53'),
(44, 'edit_comments_post', 'comments_post', '2020-12-28 18:20:53', '2020-12-28 18:20:53'),
(45, 'add_comments_post', 'comments_post', '2020-12-28 18:20:53', '2020-12-28 18:20:53'),
(46, 'delete_comments_post', 'comments_post', '2020-12-28 18:20:53', '2020-12-28 18:20:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(4, 3),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 2),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(45, 1),
(46, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 'Khasiat baik dari Tanaman Kelor', 'Khasiat baik dari Tanaman Kelor', 'Manfaat daun kelor bagi kesehatan tidak perlu diragukan lagi. Tanaman ini memang sudah lama dikenal sebagai tanaman herbal yang baik untuk menjaga tekanan darah hingga mencegah kanker. Tak hanya itu, daun kelor ternyata memiliki beragam manfaat lainnya.', '<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\"><strong>Manfaat daun kelor bagi kesehatan tidak perlu diragukan lagi. Tanaman ini memang sudah lama dikenal sebagai tanaman herbal yang baik untuk menjaga tekanan darah hingga mencegah kanker. Tak hanya itu, daun kelor ternyata memiliki beragam manfaat lainnya.</strong></p>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Daun kelor (<em>Moringa oleifera</em>) merupakan tanaman tropis yang sejak lama telah dimanfaatkan sebagai pengobatan tradisional. Tanaman ini dapat dikenali dari bentuk daunnya yang berukuran kecil. Pohon kelor juga mudah tumbuh dan bisa hidup di tanah yang tidak terlalu subur.</p>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Daun kelor dapat diolah menjadi jamu, teh herbal, hingga suplemen. Tak sedikit pula orang yang menggunakan daun kelor sebagai bahan masakan. Dalam pengobatan tradisional, daun kelor dipercaya berkhasiat untuk mengobati&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/diabetes\" target=\"_blank\" rel=\"noopener\">diabetes</a>, nyeri sendi, infeksi bakteri, hingga kanker.</p>\r\n<h3 style=\"font-size: 17px; font-stretch: normal; line-height: 1.32; letter-spacing: -0.3px; margin-top: 32px; margin-bottom: 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\"><strong>Kandungan Nutrisi Daun Kelor</strong></h3>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Di dalam sekitar 2 gram daun kelor, terkandung 14 kalori dan beragam nutrisi berikut ini:</p>\r\n<ul style=\"color: #3b3738; font-family: LatoWeb, sans-serif; font-size: 16px;\">\r\n<li>2 gram protein</li>\r\n<li>1,8&ndash;2 gram karbohidrat</li>\r\n<li>0,8 miligram zat besi</li>\r\n<li>8,8 miligram magnesium</li>\r\n<li>70 miligram&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/ketahui-manfaat-kalium-bagi-tubuh\" target=\"_blank\" rel=\"noopener\">kalium</a></li>\r\n<li>38&ndash;40 miligram kalsium</li>\r\n<li>11 miligram vitamin C</li>\r\n<li>600 IU&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/melihat-lebih-jauh-tentang-manfaat-vitamin-a\" target=\"_blank\" rel=\"noopener\">vitamin A</a></li>\r\n<li>8,5 mikrogram folat</li>\r\n</ul>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Selain beragam nutrisi di atas, daun kelor juga mengandung vitamin B, serat, fosfor, selenium,&nbsp;<em>zinc</em>, dan tembaga. Daun kelor juga mengandung banyak&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/ketahui-manfaat-antioksidan-dan-sumbernya\" target=\"_blank\" rel=\"noopener\">antioksidan</a>, seperti&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/mari-kenali-beberapa-jenis-dan-manfaat-polifenol\" target=\"_blank\" rel=\"noopener\">polifenol</a>.</p>\r\n<h3 style=\"font-size: 17px; font-stretch: normal; line-height: 1.32; letter-spacing: -0.3px; margin-top: 32px; margin-bottom: 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\"><strong>Manfaat Daun Kelor bagi Kesehatan</strong></h3>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Telah disebutkan sebelumnya bahwa daun kelor dikenal sebagai salah satu tanaman herbal yang baik untuk kesehatan. Berikut ini adalah beragam manfaat daun kelor yang dapat Anda peroleh:</p>\r\n<h4 style=\"font-size: 17px; font-stretch: normal; line-height: 1.32; letter-spacing: -0.3px; margin-top: 32px; margin-bottom: 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\"><strong>1. Menurunkan kadar gula darah</strong></h4>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Sebuah penelitian menemukan bahwa daun kelor terlihat dapat menurunkan kadar gula darah dan meningkatkan efektivitas kerja hormon insulin. Manfaat ini baik untuk mencegah diabetes dan terjadinya&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/tidak-tertutup-kemungkinan-Anda-mengalami-resistensi-insulin\" target=\"_blank\" rel=\"noopener\">resistensi insulin</a>.</p>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Akan tetapi, manfaat daun kelor sebagai pengobatan diabetes pada manusia masih perlu diteliti lebih lanjut.</p>\r\n<h4 style=\"font-size: 17px; font-stretch: normal; line-height: 1.32; letter-spacing: -0.3px; margin-top: 32px; margin-bottom: 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\"><strong>2. Mengatasi peradangan</strong></h4>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Peradangan merupakan respons alami tubuh terhadap infeksi atau cedera. Namun, Anda bisa mengonsumsi daun kelor untuk meredakan peradangan yang dialami. Ekstrak daun kelor dipercaya mengandung zat yang dapat mengurangi peradangan.</p>\r\n<h4 style=\"font-size: 17px; font-stretch: normal; line-height: 1.32; letter-spacing: -0.3px; margin-top: 32px; margin-bottom: 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\"><strong>3. Mengontrol tekanan darah</strong></h4>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Daun kelor banyak mengandung kalium dan antioksidan. Berkat kandungan tersebut, tanaman ini diketahui bermanfaat untuk menurunkan tekanan darah dan menjaganya tetap stabil sehingga dapat mencegah&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/hipertensi\" target=\"_blank\" rel=\"noopener\">hipertensi</a>.</p>\r\n<h4 style=\"font-size: 17px; font-stretch: normal; line-height: 1.32; letter-spacing: -0.3px; margin-top: 32px; margin-bottom: 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\"><strong>4. Memelihara kesehatan dan fungsi otak</strong></h4>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Kandungan antioksidan di dalam daun kelor juga bermanfaat untuk menjaga kesehatan dan fungsi otak. Beberapa riset menunjukkan bahwa asupan antioksidan yang tercukupi dapat menurunkan risiko penyakit&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/penyakit-alzheimer\" target=\"_blank\" rel=\"noopener\">Alzheimer</a>&nbsp;dan&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/penyakit-parkinson\" target=\"_blank\" rel=\"noopener\">penyakit Parkinson</a>.</p>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Daun kelor juga dipercaya baik untuk mendukung kinerja otak dan meningkatkan memori.</p>\r\n<h4 style=\"font-size: 17px; font-stretch: normal; line-height: 1.32; letter-spacing: -0.3px; margin-top: 32px; margin-bottom: 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\"><strong>5. Menghambat pertumbuhan sel kanker</strong></h4>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Ekstrak daun dan kulit batang pohon kelor terbukti efektif menghambat pertumbuhan sel kanker, seperti kanker payudara, pankreas, dan usus besar. Manfaat daun kelor tersebut diduga berkat kandungan antioksidannya yang dapat mencegah kerusakan sel akibat&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/radikal-bebas-pemicu-penyakit-kronis\" target=\"_blank\" rel=\"noopener\">radikal bebas</a>.</p>\r\n<h4 style=\"font-size: 17px; font-stretch: normal; line-height: 1.32; letter-spacing: -0.3px; margin-top: 32px; margin-bottom: 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\"><strong>6. Meningkatkan daya tahan tubuh</strong></h4>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Berdasarkan penelitian di laboratorium, ekstrak daun kelor diketahui dapat melindungi tubuh dari berbagai jenis kuman, seperti&nbsp;<em>Salmonella typhi</em>&nbsp;penyebab&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/tifus\" target=\"_blank\" rel=\"noopener\">tifus</a>,&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/e-coli\" target=\"_blank\" rel=\"noopener\"><em>Escherichia coli</em></a>&nbsp;penyebab diare, dan&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/kenali-bahaya-bakteri-staphylococcus-aureus\" target=\"_blank\" rel=\"noopener\"><em>Staphylococcus aureus</em></a>&nbsp;penyebab infeksi kulit.</p>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Daun kelor juga diketahui dapat melawan virus, terutama jenis virus herpes simplex (HSV).</p>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Selain berbagai manfaat di atas, daun kelor juga dipercaya baik untuk mengurangi kolesterol, mengatasi disfungsi ereksi, dan mencegah kambuhnya gejala asma.</p>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Sayangnya, berbagai manfaat daun kelor tersebut masih perlu diteliti lebih lebih lanjut terkaitnya efektivitasnya pada manusia. Oleh karena itu, Anda dianjurkan untuk berkonsultasi&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/cari-dokter/ahli-gizi\" target=\"_blank\" rel=\"noopener\">ke dokter</a>&nbsp;terlebih dahulu sebelum menggunakan daun kelor sebagai pengobatan penyakit tertentu.</p>\r\n<p style=\"font-size: 16px; margin: 10px 0px; color: #3b3738; font-family: LatoWeb, sans-serif;\">Perlu diingat pula bahwa sejauh ini daun kelor belum terbukti aman untuk dikonsumsi oleh ibu hamil. Daun kelor juga sebaiknya tidak dikonsumsi apabila Anda sedang menjalani pengobatan tertentu, karena berisiko menimbulkan efek&nbsp;<a style=\"text-decoration-line: none; color: #3570d2;\" href=\"https://www.alodokter.com/dampak-interaksi-obat-kepada-tubuh-anda\" target=\"_blank\" rel=\"noopener\">interaksi obat</a>.</p>', 'posts\\January2021\\bThUWAlt7Gk9SbMBY4Km.jpg', 'khasiat-baik-dari-tanaman-kelor', 'Manfaat daun kelor bagi kesehatan tidak perlu diragukan lagi. Tanaman ini memang sudah lama dikenal sebagai tanaman herbal yang baik untuk menjaga tekanan darah hingga mencegah kanker. Tak hanya itu, daun kelor ternyata memiliki beragam manfaat lainnya.', 'kelor, tanaman, obat, khasiat', 'PUBLISHED', 1, '2020-12-26 17:29:52', '2021-01-03 16:07:24'),
(6, 1, 2, 'Cara Merawat Aglonema Tanaman Hits Masa Kini', 'Cara Merawat Aglonema', 'Di masa pandemi ini, banyak masyarakat yang menekuni hobi berkebun. Banyak orang yang kini mulai mengoleksi tanaman-tanaman hias. Selain dapat menghilangkan kejenuhan, keberadaan tanaman di rumah juga membuat udara jadi lebih segar.\r\n\r\nDari sekian tanaman hias yang naik daun, salah satunya adalah aglonema. Aglonema, juga sering disebut \'Chinese evergreens\', berasal dari daerah tropis dan sub tropis di Asia. Daya tariknya terletak pada warna daunnya yang bervariasi, mulai dari daun hijau pekat, keperak-perakan, dan merah yang memikat.', '<p style=\"box-sizing: border-box; margin-top: 0px; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">Di masa pandemi ini, banyak masyarakat yang menekuni hobi berkebun. Banyak orang yang kini mulai mengoleksi tanaman-<a style=\"box-sizing: border-box; background-color: transparent; color: #ff3300; text-decoration-line: none;\" title=\"tanaman hias\" href=\"https://www.liputan6.com/lifestyle/read/4391167/rekomendasi-6-tempat-jual-pot-unik-untuk-tanaman-hias\">tanaman hias</a>. Selain dapat menghilangkan kejenuhan, keberadaan tanaman di rumah juga membuat udara jadi lebih segar.</p>\r\n<p style=\"box-sizing: border-box; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">Dari sekian tanaman hias yang naik daun, salah satunya adalah aglonema. Aglonema, juga sering disebut \'Chinese evergreens\', berasal dari daerah tropis dan sub tropis di Asia. Daya tariknya terletak pada warna daunnya yang bervariasi, mulai dari daun hijau pekat, keperak-perakan, dan merah yang memikat.</p>\r\n<p style=\"box-sizing: border-box; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">Tanaman aglaonema atau&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #ff3300; text-decoration-line: none;\" title=\"aglonema\" href=\"https://hot.liputan6.com/read/4349135/12-jenis-aglonema-yang-cocok-untuk-hiasan-rumah-mudah-merawatnya\">aglonema</a>&nbsp;berasal dan tumbuh liar di hutan hujan Asia Tenggara, serta banyak ditemukan di Indonesia, Thailand dan Malaysia. Kabarnya, nama Aglaonema diambil dari Bahasa Yunani Kuno yang berarti &lsquo;tanaman mengkilap.</p>\r\n<p style=\"box-sizing: border-box; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">Di Indonesia, aglaonema kerap disebut sebagai &lsquo;sri rejeki&rsquo;. Sesuai namanya, tanaman ini dipercaya bisa memberikan energi positif dan mendatangkan rezeki. Tanaman hias aglaonema punya karakteristik yang mudah tumbuh. Meski begitu, Anda harus&nbsp;merawatnya dengan benar agar proses perkembangan dan pertumbuhannya bisa maksimal.</p>\r\n<p style=\"box-sizing: border-box; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">Dilansir dari laman Joy Us Garden, 2 November 2020, setidaknya ada enam cara merawat tanaman aglaonema yang bisa Anda praktikkan di rumah.</p>\r\n<p style=\"box-sizing: border-box; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">1. Gunakan tanah organik</span></p>\r\n<p style=\"box-sizing: border-box; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">Tanah organik sangat disarankan sebagai media tanam aglonema. Alasannya, tanah organik bisa membuat aglaonema cepat tumbuh subur dan sehat. Selain itu, cek rutin kualitas tanahnya. Kalau kondisi tanah telah menggumpal, kering, atau terlalu basah, gantilah dengan tanah yang baru. Tanah pot yang berbasis gambut dengan perlit ekstra adalah pilihan yang dianjurkan.</p>\r\n<p style=\"box-sizing: border-box; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">2. Jangan terlalu sering disiram</span></p>\r\n<p style=\"box-sizing: border-box; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">Tanaman hias mudah sekali tumbuh, sehingga Anda pun tak perlu menyiramnya terlalu sering. Yang terpenting pastikan ketersediaan nutrisi dan airnya cukup selama musim kering, dengan menyiram&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #ff3300; text-decoration-line: none;\" title=\"aglonema\" href=\"https://www.liputan6.com/regional/read/4372822/janda-bolong-dan-aglonema-lipstik-bakal-makin-moncer-di-batam\">aglonema</a>&nbsp;setiap dua sampai tiga kali dalam sepekan.</p>\r\n<p style=\"box-sizing: border-box; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">Namun jika musim penghujan atau musim dingin tiba, Anda harus mengurangi asupan air dengan hanya menyiramnya setiap satu hingga dua kali dalam sepekan. Selain itu, pakailah air bersih untuk menyiram bagian tanaman dan basahi daunnya untuk membersihkannya dari debu hingga bakteri.3. Jauhkan paparan sinar matahari langsung</p>\r\n<p style=\"box-sizing: border-box; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">3. Hindari suhu rendah atau dingin</span></p>\r\n<p style=\"box-sizing: border-box; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">Aglaonema ternyata punya toleransi yang rendah terhadap suhu yang dingin. Tanaman hias ini tidak suka tumbuh dalam suhu udara di bawah 16 derajat Celsius.</p>\r\n<p style=\"box-sizing: border-box; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">Jadi, usahakan untuk memberikan kenyamanan dan kelembapan udara yang baik meskipun tanaman aglaonema ditempatkan di dalam ruangan.</p>\r\n<div class=\"article-content-body__item-media\" style=\"box-sizing: border-box; color: #444444; font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<figure id=\"gallery-image-2825154\" class=\"read-page--photo-gallery--item\" style=\"box-sizing: border-box; display: block; margin: 0px 0px 20px; padding: 0px; clear: both;\" data-photo-gallery-page=\"2\" data-image=\"https://cdn0-production-images-kly.akamaized.net/kvPsh8mIPsd7bTXSAufl2F5cEhM=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2825154/original/027511300_1560159154-margarita-terekhova-669946-unsplash.jpg\" data-description=\"Ilustrasi tanaman hias (unsplash.com/Margarita Terekhova)\" data-title=\"Tanaman Hias\" data-share-url=\"https://www.liputan6.com/lifestyle/read/4399116/6-cara-merawat-aglonema-tanaman-hias-yang-lagi-hits?photo=2825154\" data-photo-id=\"?photo=2825154\" data-copy-link-url=\"https://www.liputan6.com/lifestyle/read/4399116/6-cara-merawat-aglonema-tanaman-hias-yang-lagi-hits\" data-component=\"desktop:read-page:photo-gallery:item\" data-component-name=\"desktop:read-page:photo-gallery:item\">\r\n<div class=\"read-page--photo-gallery--item__content js-gallery-content\" style=\"box-sizing: border-box; overflow: hidden; position: relative; border-radius: 8px; background-color: #dddddd;\">&nbsp;</div>\r\n</figure>\r\n</div>', 'posts\\January2021\\myCpaRoN9lGvm8UVEjMC.webp', 'cara-merawat-aglonema-tanaman-hits-masa-kini', 'Tanaman aglaonema atau aglonema berasal dan tumbuh liar di hutan hujan Asia Tenggara, serta banyak ditemukan di Indonesia, Thailand dan Malaysia. Kabarnya, nama Aglaonema diambil dari Bahasa Yunani Kuno yang berarti ‘tanaman mengkilap.', 'aglonema, hias, bunga, hits', 'PUBLISHED', 0, '2021-01-03 16:26:23', '2021-01-09 02:39:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-12-21 20:26:38', '2020-12-21 20:26:38'),
(2, 'user', 'Normal User', '2020-12-21 20:26:38', '2020-12-21 20:26:38'),
(3, 'Pakar', 'Pakar Tanaman', '2020-12-30 17:41:57', '2020-12-30 17:41:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(6, 'admin.title', 'Admin Title', 'PlantDoc', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Selamat Datang di Website PlantDoc', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(12, 'admin.bg_image', 'Admin Background', 'settings\\December2020\\XJOMgQRohwx2roaSLbQI.png', NULL, 'image', 5, 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-12-21 20:26:48', '2020-12-21 20:26:48'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-12-21 20:26:48', '2020-12-21 20:26:48'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-12-21 20:26:48', '2020-12-21 20:26:48'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-12-21 20:26:48', '2020-12-21 20:26:48'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-12-21 20:26:48', '2020-12-21 20:26:48'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-12-21 20:26:49', '2020-12-21 20:26:49'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-12-21 20:26:50', '2020-12-21 20:26:50'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-12-21 20:26:50', '2020-12-21 20:26:50'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-12-21 20:26:50', '2020-12-21 20:26:50'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-12-21 20:26:50', '2020-12-21 20:26:50'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-12-21 20:26:50', '2020-12-21 20:26:50'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-12-21 20:26:50', '2020-12-21 20:26:50'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-12-21 20:26:50', '2020-12-21 20:26:50'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-12-21 20:26:50', '2020-12-21 20:26:50'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-12-21 20:26:50', '2020-12-21 20:26:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$mk3CEPyaVbDSOga8MHvrjO.CuPH5rkDU0MzO/M2S4RJ6rsniYMIlS', 'fupfZnypjNygCNJx2YESnFgVX1z1R6o0EmwKjzexVvhclsvl7JiJktZ6M2I6', NULL, '2020-12-21 20:26:44', '2020-12-21 20:26:44'),
(3, 3, 'Pakar', 'Pakar@gmail.com', 'users\\December2020\\o2oDpOMXIGh6dhdFSNvP.png', NULL, '$2y$10$uMTlMHugBxhGRt6zp2zA2Oij75qZpYhz2GJa6kc.LIxxR9Bp7efJS', NULL, '{\"locale\":\"id\"}', '2020-12-31 02:03:58', '2020-12-31 02:03:58'),
(4, 2, 'Raja Ganteng', 'rajakaseppisaneuy@gmail.com', 'users\\January2021\\tAxxtPE12ngCaikXNVGU.JPG', NULL, '$2y$10$BsgIN0Ipf2VepyIjfi2HrOWEi4CzOsfvH3gpz0bo7ra7.0IIbvPcC', NULL, '{\"locale\":\"id\"}', '2021-01-03 16:37:51', '2021-01-09 04:19:43'),
(5, 2, 'raja', 'raja@gmail.com', 'users/default.png', NULL, '$2y$10$Q3IX.WIS1sOeuNQfW.5lzOJem5sDk7LRb16dD4z9vbxwjRni9Xrku', NULL, '{\"locale\":\"id\"}', '2021-01-10 05:45:28', '2021-01-10 05:45:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indeks untuk tabel `comments_post`
--
ALTER TABLE `comments_post`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `comment_forums`
--
ALTER TABLE `comment_forums`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indeks untuk tabel `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forums_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `like_forums`
--
ALTER TABLE `like_forums`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `like_post`
--
ALTER TABLE `like_post`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indeks untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indeks untuk tabel `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `comments_post`
--
ALTER TABLE `comments_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `comment_forums`
--
ALTER TABLE `comment_forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `like_forums`
--
ALTER TABLE `like_forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `like_post`
--
ALTER TABLE `like_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `forums`
--
ALTER TABLE `forums`
  ADD CONSTRAINT `forums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
