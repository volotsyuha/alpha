-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 20, 2022 at 04:33 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alpha`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '1'),
(2, 1, '_wp_trash_meta_time', '1667590651');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Коментатор WordPress', 'wapuu@wordpress.example', 'https://uk.wordpress.org/', '', '2022-11-02 22:25:54', '2022-11-02 20:25:54', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://uk.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_is_inverted_index`
--

CREATE TABLE `wp_is_inverted_index` (
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `term` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `term_reverse` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `score` mediumint(9) NOT NULL DEFAULT '0',
  `title` mediumint(9) NOT NULL DEFAULT '0',
  `content` mediumint(9) NOT NULL DEFAULT '0',
  `excerpt` mediumint(9) NOT NULL DEFAULT '0',
  `comment` mediumint(9) NOT NULL DEFAULT '0',
  `author` mediumint(9) NOT NULL DEFAULT '0',
  `category` mediumint(9) NOT NULL DEFAULT '0',
  `tag` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy` mediumint(9) NOT NULL DEFAULT '0',
  `customfield` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy_detail` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customfield_detail` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(210) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `lang` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/alpha', 'yes'),
(2, 'home', 'http://localhost:8888/alpha', 'yes'),
(3, 'blogname', 'alpha', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'volocjyga89@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/archives/%post_id%', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:56:\"archives/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:32:\"archives/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:44:\"archives/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:53:\"archives/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:48:\"archives/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:29:\"archives/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:41:\"archives/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:23:\"archives/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:54:\"archives/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:49:\"archives/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:30:\"archives/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:42:\"archives/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:24:\"archives/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=102&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:56:\"archives/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:32:\"archives/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:44:\"archives/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:83:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:78:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:59:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:71:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:53:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:70:\"archives/date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:65:\"archives/date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:46:\"archives/date/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:58:\"archives/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:40:\"archives/date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:57:\"archives/date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:52:\"archives/date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:33:\"archives/date/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:45:\"archives/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:27:\"archives/date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:37:\"archives/[0-9]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"archives/[0-9]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"archives/[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"archives/[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"archives/[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"archives/[0-9]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"archives/([0-9]+)/embed/?$\";s:34:\"index.php?p=$matches[1]&embed=true\";s:30:\"archives/([0-9]+)/trackback/?$\";s:28:\"index.php?p=$matches[1]&tb=1\";s:50:\"archives/([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:45:\"archives/([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:38:\"archives/([0-9]+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&paged=$matches[2]\";s:45:\"archives/([0-9]+)/comment-page-([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&cpage=$matches[2]\";s:34:\"archives/([0-9]+)(?:/([0-9]+))?/?$\";s:40:\"index.php?p=$matches[1]&page=$matches[2]\";s:26:\"archives/[0-9]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"archives/[0-9]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"archives/[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"archives/[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"archives/[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"archives/[0-9]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:41:\"add-search-to-menu/add-search-to-menu.php\";i:1;s:32:\"wp-google-fonts/google-fonts.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:65:\"/Applications/MAMP/htdocs/alpha/wp-content/themes/alpha/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'alpha', 'yes'),
(41, 'stylesheet', 'alpha', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Kiev', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '102', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1682972753', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'uk', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:3;a:1:{s:7:\"content\";s:46:\"<a href=\"tel:+12263700170\">+1 226-370-0170</a>\";}i:4;a:1:{s:7:\"content\";s:712:\"<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"typography\":{\"textTransform\":\"uppercase\"},\"color\":{\"text\":\"#344265\",\"background\":\"#faff00\"},\"border\":{\"radius\":\"12px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\" style=\"text-transform:uppercase\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"border-radius:12px;color:#344265;background-color:#faff00\">book onli<img class=\"wp-image-96\" style=\"width: 18px;\" src=\"http://localhost:8888/alpha/wp-content/uploads/2022/11/Settings-icon.png\" alt=\"\">ne</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\";}i:5;a:1:{s:7:\"content\";s:129:\"<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>Unit 4, 5267 Explorer drive,\nToronto, On L4W 4T7</code></pre>\n<!-- /wp:code -->\";}i:6;a:1:{s:7:\"content\";s:110:\"<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>info@appliancerepairexpert.ca</code></pre>\n<!-- /wp:code -->\";}i:8;a:1:{s:7:\"content\";s:638:\"<!-- wp:social-links {\"customIconColor\":\"#344265\",\"iconColorValue\":\"#344265\",\"iconBackgroundColor\":\"white\",\"iconBackgroundColorValue\":\"#ffffff\",\"size\":\"has-small-icon-size\",\"align\":\"center\",\"className\":\"ci\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"right\"}} -->\n<ul class=\"wp-block-social-links aligncenter has-small-icon-size has-icon-color has-icon-background-color ci\"><!-- wp:social-link {\"url\":\"/\",\"service\":\"youtube\"} /-->\n\n<!-- wp:social-link {\"url\":\"/\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"/\",\"service\":\"pinterest\"} /-->\n\n<!-- wp:social-link {\"url\":\"/\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:6:\"number\";a:1:{i:0;s:7:\"block-3\";}s:6:\"button\";a:1:{i:0;s:7:\"block-4\";}s:7:\"address\";a:1:{i:0;s:7:\"block-5\";}s:4:\"mail\";a:1:{i:0;s:7:\"block-6\";}s:6:\"social\";a:1:{i:0;s:7:\"block-8\";}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:6:{i:1668965154;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1668975954;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1668975972;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1668975973;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1669321554;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:34:\"HTTPS запит невдалий.\";}}', 'yes'),
(127, 'theme_mods_twentytwentythree', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1667591377;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(136, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.1.zip\";s:6:\"locale\";s:2:\"uk\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.1\";s:7:\"version\";s:3:\"6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1668958564;s:15:\"version_checked\";s:3:\"6.1\";s:12:\"translations\";a:0:{}}', 'no'),
(148, 'can_compress_scripts', '1', 'no'),
(161, 'finished_updating_comment_type', '1', 'yes'),
(164, 'current_theme', 'alpha', 'yes'),
(165, 'theme_mods_alpha', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:6:{s:6:\"menu-1\";i:3;s:11:\"header-menu\";i:3;s:11:\"footer-menu\";i:5;s:17:\"footer-menu-about\";i:4;s:20:\"footer-menu-services\";i:5;s:19:\"footer-menu-support\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1667590797;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(166, 'theme_switched', '', 'yes'),
(197, 'hm_wp_scss__scss_location', '/sass/', 'yes'),
(198, 'hm_wp_scss__css_location', '/', 'yes'),
(199, 'hm_wp_scss__adv_path_scss', '', 'yes'),
(200, 'hm_wp_scss__adv_path_css', '', 'yes'),
(201, 'hm_wp_scss__compilation_time', 'Always', 'yes'),
(202, 'hm_wp_scss__compilation_mode', 'Expanded', 'yes'),
(203, 'hm_wp_scss__source_map_file', '1', 'yes'),
(204, 'hm_wp_scss__errors_display', 'If Admin Logged In', 'yes'),
(205, 'hm_wp_scss__no_compilation_underscore', '1', 'yes'),
(206, 'hm_wp_scss__enqueuing', '1', 'yes'),
(221, 'category_children', 'a:0:{}', 'yes'),
(231, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":8,\"critical\":2}', 'yes'),
(265, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1668958564;s:7:\"checked\";a:1:{s:5:\"alpha\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:5:\"alpha\";a:6:{s:5:\"theme\";s:5:\"alpha\";s:11:\"new_version\";s:5:\"0.3.1\";s:3:\"url\";s:35:\"https://wordpress.org/themes/alpha/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/alpha.0.3.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(268, 'recently_activated', 'a:2:{s:33:\"search-exclude/search-exclude.php\";i:1667661295;s:43:\"happy-scss-compiler/happy-scss-compiler.php\";i:1667584662;}', 'yes'),
(273, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(292, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(317, 'theme_mods_alpha-2', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1667591369;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(358, 'auto_update_themes', 'a:1:{i:0;s:5:\"alpha\";}', 'no'),
(376, 'recovery_mode_email_last_sent', '1667681988', 'yes'),
(477, 'sep_exclude', 'a:0:{}', 'yes'),
(510, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:36:\"add-search-to-menu/includes/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.4.5\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1667661349;s:11:\"plugin_path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}}s:7:\"abspath\";s:32:\"/Applications/MAMP/htdocs/alpha/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:8:\"sdk_path\";s:36:\"add-search-to-menu/includes/freemius\";s:7:\"version\";s:5:\"2.4.5\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1667661349;}}', 'yes'),
(511, 'fs_debug_mode', '', 'yes'),
(512, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:2086;a:3:{s:4:\"slug\";s:18:\"add-search-to-menu\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}}s:11:\"plugin_data\";a:1:{s:18:\"add-search-to-menu\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1667661349;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.5\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:6:\"5.4.10\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"localhost:8888\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1667661349;s:7:\"version\";s:6:\"5.4.10\";}s:15:\"prev_is_premium\";b:0;s:21:\"is_pending_activation\";b:1;}}s:13:\"file_slug_map\";a:1:{s:41:\"add-search-to-menu/add-search-to-menu.php\";s:18:\"add-search-to-menu\";}s:7:\"plugins\";a:1:{s:18:\"add-search-to-menu\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:12:\"Ivory Search\";s:4:\"slug\";s:18:\"add-search-to-menu\";s:12:\"premium_slug\";s:26:\"add-search-to-menu-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:7:\"version\";s:6:\"5.4.10\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_e05b040b84ff5014d0f0955127743\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"2086\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"3774c9b8827e219cb4ea55402ed6f151\";s:13:\"admin_notices\";a:1:{s:18:\"add-search-to-menu\";a:1:{s:18:\"activation_pending\";a:8:{s:7:\"message\";s:199:\"You should receive an activation email for <b>Ivory Search</b> to your mailbox at <b>volocjyga89@gmail.com</b>. Please make sure you click the activation button in that email to complete the install.\";s:5:\"title\";s:7:\"Thanks!\";s:4:\"type\";s:7:\"success\";s:6:\"sticky\";b:1;s:2:\"id\";s:18:\"activation_pending\";s:10:\"manager_id\";s:18:\"add-search-to-menu\";s:6:\"plugin\";s:12:\"Ivory Search\";s:10:\"wp_user_id\";N;}}}}', 'yes'),
(513, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(514, 'fs_api_cache', 'a:0:{}', 'no'),
(517, 'widget_is_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(518, 'is_install', '2022-11-05', 'yes'),
(534, 'is_search_88', 'a:8:{s:16:\"placeholder-text\";s:24:\"Enter City / Postal Code\";s:11:\"text-box-bg\";s:7:\"#f8f8f8\";s:10:\"form-style\";s:15:\"is-form-style-3\";s:15:\"search-btn-text\";s:0:\"\";s:13:\"text-box-text\";s:7:\"#485982\";s:20:\"submit-button-border\";s:7:\"#f8f8f8\";s:18:\"submit-button-text\";s:7:\"#485982\";s:16:\"submit-button-bg\";s:7:\"#f8f8f8\";}', 'yes'),
(572, 'is_db_version', '1.0.4', 'yes'),
(889, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1668958564;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:41:\"add-search-to-menu/add-search-to-menu.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/add-search-to-menu\";s:4:\"slug\";s:18:\"add-search-to-menu\";s:6:\"plugin\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:11:\"new_version\";s:6:\"5.4.10\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/add-search-to-menu/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/add-search-to-menu.5.4.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/add-search-to-menu/assets/icon-256x256.png?rev=2077748\";s:2:\"1x\";s:71:\"https://ps.w.org/add-search-to-menu/assets/icon-128x128.png?rev=2077748\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/add-search-to-menu/assets/banner-1544x500.png?rev=2077748\";s:2:\"1x\";s:73:\"https://ps.w.org/add-search-to-menu/assets/banner-772x250.png?rev=2317518\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.9\";}s:32:\"wp-google-fonts/google-fonts.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/wp-google-fonts\";s:4:\"slug\";s:15:\"wp-google-fonts\";s:6:\"plugin\";s:32:\"wp-google-fonts/google-fonts.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wp-google-fonts/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-google-fonts.3.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-google-fonts/assets/icon-256x256.png?rev=2223099\";s:2:\"1x\";s:68:\"https://ps.w.org/wp-google-fonts/assets/icon-128x128.png?rev=2223099\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/wp-google-fonts/assets/banner-772x250.png?rev=2223099\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"2.0.2\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"5.0.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:6:\"5.4.10\";s:32:\"wp-google-fonts/google-fonts.php\";s:5:\"3.1.5\";}}', 'no'),
(890, 'googlefonts_options', 'a:75:{s:17:\"googlefonts_font1\";s:0:\"\";s:17:\"googlefonts_font2\";s:0:\"\";s:17:\"googlefonts_font3\";s:0:\"\";s:17:\"googlefonts_font4\";s:0:\"\";s:17:\"googlefonts_font5\";s:0:\"\";s:17:\"googlefonts_font6\";s:0:\"\";s:15:\"googlefont1_css\";s:1:\" \";s:20:\"googlefont1_heading1\";s:9:\"unchecked\";s:20:\"googlefont1_heading2\";s:9:\"unchecked\";s:20:\"googlefont1_heading3\";s:9:\"unchecked\";s:20:\"googlefont1_heading4\";s:9:\"unchecked\";s:20:\"googlefont1_heading5\";s:9:\"unchecked\";s:20:\"googlefont1_heading6\";s:9:\"unchecked\";s:16:\"googlefont1_body\";s:7:\"checked\";s:22:\"googlefont1_blockquote\";s:9:\"unchecked\";s:13:\"googlefont1_p\";s:9:\"unchecked\";s:14:\"googlefont1_li\";s:9:\"unchecked\";s:15:\"googlefont2_css\";s:1:\" \";s:20:\"googlefont2_heading1\";s:9:\"unchecked\";s:20:\"googlefont2_heading2\";s:9:\"unchecked\";s:20:\"googlefont2_heading3\";s:9:\"unchecked\";s:20:\"googlefont2_heading4\";s:9:\"unchecked\";s:20:\"googlefont2_heading5\";s:9:\"unchecked\";s:20:\"googlefont2_heading6\";s:9:\"unchecked\";s:16:\"googlefont2_body\";s:9:\"unchecked\";s:22:\"googlefont2_blockquote\";s:9:\"unchecked\";s:13:\"googlefont2_p\";s:9:\"unchecked\";s:14:\"googlefont2_li\";s:9:\"unchecked\";s:15:\"googlefont3_css\";s:1:\" \";s:20:\"googlefont3_heading1\";s:9:\"unchecked\";s:20:\"googlefont3_heading2\";s:9:\"unchecked\";s:20:\"googlefont3_heading3\";s:9:\"unchecked\";s:20:\"googlefont3_heading4\";s:9:\"unchecked\";s:20:\"googlefont3_heading5\";s:9:\"unchecked\";s:20:\"googlefont3_heading6\";s:9:\"unchecked\";s:16:\"googlefont3_body\";s:9:\"unchecked\";s:22:\"googlefont3_blockquote\";s:9:\"unchecked\";s:13:\"googlefont3_p\";s:9:\"unchecked\";s:14:\"googlefont3_li\";s:9:\"unchecked\";s:15:\"googlefont4_css\";s:1:\" \";s:20:\"googlefont4_heading1\";s:9:\"unchecked\";s:20:\"googlefont4_heading2\";s:9:\"unchecked\";s:20:\"googlefont4_heading3\";s:9:\"unchecked\";s:20:\"googlefont4_heading4\";s:9:\"unchecked\";s:20:\"googlefont4_heading5\";s:9:\"unchecked\";s:20:\"googlefont4_heading6\";s:9:\"unchecked\";s:16:\"googlefont4_body\";s:9:\"unchecked\";s:22:\"googlefont4_blockquote\";s:9:\"unchecked\";s:13:\"googlefont4_p\";s:9:\"unchecked\";s:14:\"googlefont4_li\";s:9:\"unchecked\";s:15:\"googlefont5_css\";s:1:\" \";s:20:\"googlefont5_heading1\";s:9:\"unchecked\";s:20:\"googlefont5_heading2\";s:9:\"unchecked\";s:20:\"googlefont5_heading3\";s:9:\"unchecked\";s:20:\"googlefont5_heading4\";s:9:\"unchecked\";s:20:\"googlefont5_heading5\";s:9:\"unchecked\";s:20:\"googlefont5_heading6\";s:9:\"unchecked\";s:16:\"googlefont5_body\";s:9:\"unchecked\";s:22:\"googlefont5_blockquote\";s:9:\"unchecked\";s:13:\"googlefont5_p\";s:9:\"unchecked\";s:14:\"googlefont5_li\";s:9:\"unchecked\";s:15:\"googlefont6_css\";s:1:\" \";s:20:\"googlefont6_heading1\";s:9:\"unchecked\";s:20:\"googlefont6_heading2\";s:9:\"unchecked\";s:20:\"googlefont6_heading3\";s:9:\"unchecked\";s:20:\"googlefont6_heading4\";s:9:\"unchecked\";s:20:\"googlefont6_heading5\";s:9:\"unchecked\";s:20:\"googlefont6_heading6\";s:9:\"unchecked\";s:16:\"googlefont6_body\";s:9:\"unchecked\";s:22:\"googlefont6_blockquote\";s:9:\"unchecked\";s:13:\"googlefont6_p\";s:9:\"unchecked\";s:14:\"googlefont6_li\";s:9:\"unchecked\";s:20:\"googlefont_data_time\";i:1667941297;s:21:\"googlefont_selections\";a:6:{s:11:\"googlefont1\";a:3:{s:6:\"family\";s:17:\"Plus-Jakarta-Sans\";s:8:\"variants\";a:7:{i:0;s:3:\"200\";i:1;s:3:\"300\";i:2;s:7:\"regular\";i:3;s:3:\"500\";i:4;s:3:\"600\";i:5;s:3:\"700\";i:6;s:3:\"800\";}s:7:\"subsets\";a:4:{i:0;s:10:\"vietnamese\";i:1;s:9:\"latin-ext\";i:2;s:5:\"latin\";i:3;s:12:\"cyrillic-ext\";}}s:11:\"googlefont2\";a:3:{s:6:\"family\";s:0:\"\";s:8:\"variants\";a:0:{}s:7:\"subsets\";a:0:{}}s:11:\"googlefont3\";a:3:{s:6:\"family\";s:0:\"\";s:8:\"variants\";a:0:{}s:7:\"subsets\";a:0:{}}s:11:\"googlefont4\";a:3:{s:6:\"family\";s:0:\"\";s:8:\"variants\";a:0:{}s:7:\"subsets\";a:0:{}}s:11:\"googlefont5\";a:3:{s:6:\"family\";s:0:\"\";s:8:\"variants\";a:0:{}s:7:\"subsets\";a:0:{}}s:11:\"googlefont6\";a:3:{s:6:\"family\";s:0:\"\";s:8:\"variants\";a:0:{}s:7:\"subsets\";a:0:{}}}s:25:\"googlefont_data_converted\";b:1;}', 'yes'),
(891, 'wp_google_fonts_global_notification', '0', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(976, '_site_transient_timeout_theme_roots', '1668960364', 'no'),
(977, '_site_transient_theme_roots', 'a:1:{s:5:\"alpha\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1667679791:1'),
(4, 7, '_edit_lock', '1667587564:1'),
(6, 8, '_customize_changeset_uuid', '3b5e2273-7313-477e-9f31-46a1d7c03d0e'),
(8, 9, '_customize_changeset_uuid', '3b5e2273-7313-477e-9f31-46a1d7c03d0e'),
(10, 10, '_customize_changeset_uuid', '3b5e2273-7313-477e-9f31-46a1d7c03d0e'),
(12, 11, '_customize_changeset_uuid', '3b5e2273-7313-477e-9f31-46a1d7c03d0e'),
(14, 12, '_customize_changeset_uuid', '3b5e2273-7313-477e-9f31-46a1d7c03d0e'),
(16, 13, '_customize_changeset_uuid', '3b5e2273-7313-477e-9f31-46a1d7c03d0e'),
(17, 14, '_menu_item_type', 'custom'),
(18, 14, '_menu_item_menu_item_parent', '0'),
(19, 14, '_menu_item_object_id', '14'),
(20, 14, '_menu_item_object', 'custom'),
(21, 14, '_menu_item_target', ''),
(22, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 14, '_menu_item_xfn', ''),
(24, 14, '_menu_item_url', 'http://localhost:8888/alpha'),
(25, 21, '_menu_item_type', 'post_type'),
(26, 21, '_menu_item_menu_item_parent', '0'),
(27, 21, '_menu_item_object_id', '8'),
(28, 21, '_menu_item_object', 'page'),
(29, 21, '_menu_item_target', ''),
(30, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 21, '_menu_item_xfn', ''),
(32, 21, '_menu_item_url', ''),
(49, 24, '_menu_item_type', 'post_type'),
(50, 24, '_menu_item_menu_item_parent', '0'),
(51, 24, '_menu_item_object_id', '9'),
(52, 24, '_menu_item_object', 'page'),
(53, 24, '_menu_item_target', ''),
(54, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 24, '_menu_item_xfn', ''),
(56, 24, '_menu_item_url', ''),
(57, 25, '_menu_item_type', 'post_type'),
(58, 25, '_menu_item_menu_item_parent', '0'),
(59, 25, '_menu_item_object_id', '10'),
(60, 25, '_menu_item_object', 'page'),
(61, 25, '_menu_item_target', ''),
(62, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 25, '_menu_item_xfn', ''),
(64, 25, '_menu_item_url', ''),
(65, 26, '_menu_item_type', 'post_type'),
(66, 26, '_menu_item_menu_item_parent', '0'),
(67, 26, '_menu_item_object_id', '11'),
(68, 26, '_menu_item_object', 'page'),
(69, 26, '_menu_item_target', ''),
(70, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 26, '_menu_item_xfn', ''),
(72, 26, '_menu_item_url', ''),
(73, 27, '_menu_item_type', 'post_type'),
(74, 27, '_menu_item_menu_item_parent', '0'),
(75, 27, '_menu_item_object_id', '12'),
(76, 27, '_menu_item_object', 'page'),
(77, 27, '_menu_item_target', ''),
(78, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 27, '_menu_item_xfn', ''),
(80, 27, '_menu_item_url', ''),
(81, 28, '_menu_item_type', 'post_type'),
(82, 28, '_menu_item_menu_item_parent', '0'),
(83, 28, '_menu_item_object_id', '13'),
(84, 28, '_menu_item_object', 'page'),
(85, 28, '_menu_item_target', ''),
(86, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 28, '_menu_item_xfn', ''),
(88, 28, '_menu_item_url', ''),
(89, 7, '_wp_trash_meta_status', 'publish'),
(90, 7, '_wp_trash_meta_time', '1667587574'),
(91, 29, '_edit_lock', '1667590506:1'),
(93, 30, '_customize_changeset_uuid', '15efe08a-4028-42ce-b655-7dc21e872161'),
(95, 31, '_customize_changeset_uuid', '15efe08a-4028-42ce-b655-7dc21e872161'),
(97, 32, '_customize_changeset_uuid', '15efe08a-4028-42ce-b655-7dc21e872161'),
(99, 33, '_customize_changeset_uuid', '15efe08a-4028-42ce-b655-7dc21e872161'),
(101, 34, '_customize_changeset_uuid', '15efe08a-4028-42ce-b655-7dc21e872161'),
(103, 35, '_customize_changeset_uuid', '15efe08a-4028-42ce-b655-7dc21e872161'),
(105, 36, '_customize_changeset_uuid', '15efe08a-4028-42ce-b655-7dc21e872161'),
(107, 38, '_customize_changeset_uuid', '15efe08a-4028-42ce-b655-7dc21e872161'),
(109, 39, '_customize_changeset_uuid', '15efe08a-4028-42ce-b655-7dc21e872161'),
(111, 40, '_customize_changeset_uuid', '15efe08a-4028-42ce-b655-7dc21e872161'),
(113, 42, '_customize_changeset_uuid', '15efe08a-4028-42ce-b655-7dc21e872161'),
(115, 43, '_customize_changeset_uuid', '15efe08a-4028-42ce-b655-7dc21e872161'),
(116, 45, '_menu_item_type', 'post_type'),
(117, 45, '_menu_item_menu_item_parent', '0'),
(118, 45, '_menu_item_object_id', '9'),
(119, 45, '_menu_item_object', 'page'),
(120, 45, '_menu_item_target', ''),
(121, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 45, '_menu_item_xfn', ''),
(123, 45, '_menu_item_url', ''),
(124, 46, '_menu_item_type', 'post_type'),
(125, 46, '_menu_item_menu_item_parent', '0'),
(126, 46, '_menu_item_object_id', '10'),
(127, 46, '_menu_item_object', 'page'),
(128, 46, '_menu_item_target', ''),
(129, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 46, '_menu_item_xfn', ''),
(131, 46, '_menu_item_url', ''),
(132, 47, '_menu_item_type', 'post_type'),
(133, 47, '_menu_item_menu_item_parent', '0'),
(134, 47, '_menu_item_object_id', '11'),
(135, 47, '_menu_item_object', 'page'),
(136, 47, '_menu_item_target', ''),
(137, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(138, 47, '_menu_item_xfn', ''),
(139, 47, '_menu_item_url', ''),
(140, 60, '_menu_item_type', 'post_type'),
(141, 60, '_menu_item_menu_item_parent', '0'),
(142, 60, '_menu_item_object_id', '30'),
(143, 60, '_menu_item_object', 'page'),
(144, 60, '_menu_item_target', ''),
(145, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(146, 60, '_menu_item_xfn', ''),
(147, 60, '_menu_item_url', ''),
(148, 61, '_menu_item_type', 'post_type'),
(149, 61, '_menu_item_menu_item_parent', '0'),
(150, 61, '_menu_item_object_id', '31'),
(151, 61, '_menu_item_object', 'page'),
(152, 61, '_menu_item_target', ''),
(153, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 61, '_menu_item_xfn', ''),
(155, 61, '_menu_item_url', ''),
(156, 62, '_menu_item_type', 'post_type'),
(157, 62, '_menu_item_menu_item_parent', '0'),
(158, 62, '_menu_item_object_id', '32'),
(159, 62, '_menu_item_object', 'page'),
(160, 62, '_menu_item_target', ''),
(161, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(162, 62, '_menu_item_xfn', ''),
(163, 62, '_menu_item_url', ''),
(164, 63, '_menu_item_type', 'post_type'),
(165, 63, '_menu_item_menu_item_parent', '0'),
(166, 63, '_menu_item_object_id', '33'),
(167, 63, '_menu_item_object', 'page'),
(168, 63, '_menu_item_target', ''),
(169, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 63, '_menu_item_xfn', ''),
(171, 63, '_menu_item_url', ''),
(172, 64, '_menu_item_type', 'post_type'),
(173, 64, '_menu_item_menu_item_parent', '0'),
(174, 64, '_menu_item_object_id', '34'),
(175, 64, '_menu_item_object', 'page'),
(176, 64, '_menu_item_target', ''),
(177, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(178, 64, '_menu_item_xfn', ''),
(179, 64, '_menu_item_url', ''),
(180, 65, '_menu_item_type', 'post_type'),
(181, 65, '_menu_item_menu_item_parent', '0'),
(182, 65, '_menu_item_object_id', '35'),
(183, 65, '_menu_item_object', 'page'),
(184, 65, '_menu_item_target', ''),
(185, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(186, 65, '_menu_item_xfn', ''),
(187, 65, '_menu_item_url', ''),
(188, 66, '_menu_item_type', 'post_type'),
(189, 66, '_menu_item_menu_item_parent', '0'),
(190, 66, '_menu_item_object_id', '36'),
(191, 66, '_menu_item_object', 'page'),
(192, 66, '_menu_item_target', ''),
(193, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(194, 66, '_menu_item_xfn', ''),
(195, 66, '_menu_item_url', ''),
(196, 67, '_menu_item_type', 'post_type'),
(197, 67, '_menu_item_menu_item_parent', '0'),
(198, 67, '_menu_item_object_id', '38'),
(199, 67, '_menu_item_object', 'page'),
(200, 67, '_menu_item_target', ''),
(201, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(202, 67, '_menu_item_xfn', ''),
(203, 67, '_menu_item_url', ''),
(204, 68, '_menu_item_type', 'post_type'),
(205, 68, '_menu_item_menu_item_parent', '0'),
(206, 68, '_menu_item_object_id', '39'),
(207, 68, '_menu_item_object', 'page'),
(208, 68, '_menu_item_target', ''),
(209, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(210, 68, '_menu_item_xfn', ''),
(211, 68, '_menu_item_url', ''),
(212, 69, '_menu_item_type', 'post_type'),
(213, 69, '_menu_item_menu_item_parent', '0'),
(214, 69, '_menu_item_object_id', '40'),
(215, 69, '_menu_item_object', 'page'),
(216, 69, '_menu_item_target', ''),
(217, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(218, 69, '_menu_item_xfn', ''),
(219, 69, '_menu_item_url', ''),
(220, 70, '_menu_item_type', 'post_type'),
(221, 70, '_menu_item_menu_item_parent', '0'),
(222, 70, '_menu_item_object_id', '43'),
(223, 70, '_menu_item_object', 'page'),
(224, 70, '_menu_item_target', ''),
(225, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 70, '_menu_item_xfn', ''),
(227, 70, '_menu_item_url', ''),
(228, 29, '_wp_trash_meta_status', 'publish'),
(229, 29, '_wp_trash_meta_time', '1667590519'),
(230, 72, '_wp_trash_meta_status', 'publish'),
(231, 72, '_wp_trash_meta_time', '1667591886'),
(233, 73, '_edit_lock', '1667592225:1'),
(242, 73, '_wp_trash_meta_status', 'publish'),
(243, 73, '_wp_trash_meta_time', '1667592233'),
(244, 3, '_edit_lock', '1667592157:1'),
(255, 78, '_wp_trash_meta_status', 'publish'),
(256, 78, '_wp_trash_meta_time', '1667592600'),
(257, 12, '_edit_lock', '1667928851:1'),
(258, 80, '_wp_trash_meta_status', 'publish'),
(259, 80, '_wp_trash_meta_time', '1667592992'),
(260, 81, '_wp_trash_meta_status', 'publish'),
(261, 81, '_wp_trash_meta_time', '1667593004'),
(262, 82, '_wp_trash_meta_status', 'publish'),
(263, 82, '_wp_trash_meta_time', '1667598185'),
(264, 45, '_wp_old_date', '2022-11-04'),
(265, 46, '_wp_old_date', '2022-11-04'),
(266, 47, '_wp_old_date', '2022-11-04'),
(267, 60, '_wp_old_date', '2022-11-04'),
(268, 61, '_wp_old_date', '2022-11-04'),
(269, 62, '_wp_old_date', '2022-11-04'),
(270, 63, '_wp_old_date', '2022-11-04'),
(271, 64, '_wp_old_date', '2022-11-04'),
(272, 65, '_wp_old_date', '2022-11-04'),
(273, 66, '_wp_old_date', '2022-11-04'),
(274, 67, '_wp_old_date', '2022-11-04'),
(275, 68, '_wp_old_date', '2022-11-04'),
(276, 69, '_wp_old_date', '2022-11-04'),
(277, 70, '_wp_old_date', '2022-11-04'),
(278, 14, '_wp_old_date', '2022-11-04'),
(279, 21, '_wp_old_date', '2022-11-04'),
(280, 24, '_wp_old_date', '2022-11-04'),
(281, 25, '_wp_old_date', '2022-11-04'),
(282, 26, '_wp_old_date', '2022-11-04'),
(283, 27, '_wp_old_date', '2022-11-04'),
(284, 28, '_wp_old_date', '2022-11-04'),
(285, 2, '_edit_lock', '1667639540:1'),
(287, 84, '_is_includes', 'a:5:{s:9:\"post_type\";a:3:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";s:10:\"attachment\";s:10:\"attachment\";}s:12:\"search_title\";i:1;s:14:\"search_content\";i:1;s:14:\"search_excerpt\";i:1;s:11:\"post_status\";a:2:{s:7:\"publish\";s:7:\"publish\";s:7:\"inherit\";s:7:\"inherit\";}}'),
(288, 84, '_is_excludes', ''),
(289, 84, '_is_settings', 'a:2:{s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"DESC\";}'),
(290, 84, '_is_ajax', NULL),
(291, 84, '_is_customize', NULL),
(292, 84, '_is_locale', 'en_US'),
(293, 85, '_is_includes', 'a:5:{s:9:\"post_type\";a:2:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";}s:12:\"search_title\";i:1;s:14:\"search_content\";i:1;s:14:\"search_excerpt\";i:1;s:11:\"post_status\";a:2:{s:7:\"publish\";s:7:\"publish\";s:7:\"inherit\";s:7:\"inherit\";}}'),
(294, 85, '_is_excludes', ''),
(295, 85, '_is_settings', 'a:2:{s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"DESC\";}'),
(296, 85, '_is_ajax', NULL),
(297, 85, '_is_customize', NULL),
(298, 85, '_is_locale', 'en_US'),
(299, 86, '_is_includes', 'a:5:{s:9:\"post_type\";a:3:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";s:10:\"attachment\";s:10:\"attachment\";}s:12:\"search_title\";i:1;s:14:\"search_content\";i:1;s:14:\"search_excerpt\";i:1;s:11:\"post_status\";a:2:{s:7:\"publish\";s:7:\"publish\";s:7:\"inherit\";s:7:\"inherit\";}}'),
(300, 86, '_is_excludes', ''),
(301, 86, '_is_settings', 'a:2:{s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"DESC\";}'),
(302, 86, '_is_ajax', 'a:17:{s:11:\"enable_ajax\";i:1;s:16:\"show_description\";i:1;s:18:\"description_source\";s:7:\"excerpt\";s:18:\"description_length\";i:20;s:10:\"show_image\";i:1;s:17:\"min_no_for_search\";i:1;s:21:\"result_box_max_height\";i:400;s:18:\"nothing_found_text\";s:13:\"Nothing found\";s:16:\"show_more_result\";i:1;s:16:\"more_result_text\";s:14:\"More Results..\";s:14:\"search_results\";s:4:\"both\";s:10:\"show_price\";i:1;s:24:\"show_matching_categories\";i:1;s:16:\"show_details_box\";i:1;s:12:\"product_list\";s:3:\"all\";s:8:\"order_by\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";}'),
(303, 86, '_is_customize', NULL),
(304, 86, '_is_locale', 'en_US'),
(305, 87, '_is_includes', 'a:5:{s:9:\"post_type\";a:1:{s:7:\"product\";s:7:\"product\";}s:12:\"search_title\";i:1;s:14:\"search_content\";i:1;s:14:\"search_excerpt\";i:1;s:11:\"post_status\";a:2:{s:7:\"publish\";s:7:\"publish\";s:7:\"inherit\";s:7:\"inherit\";}}'),
(306, 87, '_is_excludes', ''),
(307, 87, '_is_settings', 'a:2:{s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"DESC\";}'),
(308, 87, '_is_ajax', 'a:17:{s:11:\"enable_ajax\";i:1;s:16:\"show_description\";i:1;s:18:\"description_source\";s:7:\"excerpt\";s:18:\"description_length\";i:20;s:10:\"show_image\";i:1;s:17:\"min_no_for_search\";i:1;s:21:\"result_box_max_height\";i:400;s:18:\"nothing_found_text\";s:13:\"Nothing found\";s:16:\"show_more_result\";i:1;s:16:\"more_result_text\";s:14:\"More Results..\";s:14:\"search_results\";s:4:\"both\";s:10:\"show_price\";i:1;s:24:\"show_matching_categories\";i:1;s:16:\"show_details_box\";i:1;s:12:\"product_list\";s:3:\"all\";s:8:\"order_by\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";}'),
(309, 87, '_is_customize', NULL),
(310, 87, '_is_locale', 'en_US'),
(311, 88, '_is_includes', 'a:8:{s:9:\"post_type\";a:3:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";s:10:\"attachment\";s:10:\"attachment\";}s:13:\"tax_post_type\";a:1:{s:8:\"category\";s:4:\"post\";}s:12:\"search_title\";s:1:\"1\";s:14:\"search_content\";s:1:\"1\";s:14:\"search_excerpt\";s:1:\"1\";s:11:\"post_status\";a:2:{s:7:\"publish\";s:7:\"publish\";s:7:\"inherit\";s:7:\"inherit\";}s:12:\"has_password\";s:4:\"null\";s:10:\"date_query\";a:2:{s:5:\"after\";a:1:{s:4:\"date\";s:0:\"\";}s:6:\"before\";a:1:{s:4:\"date\";s:0:\"\";}}}'),
(312, 88, '_is_excludes', ''),
(313, 88, '_is_settings', ''),
(314, 88, '_is_ajax', ''),
(315, 88, '_is_customize', ''),
(316, 88, '_is_locale', 'uk'),
(317, 89, '_edit_lock', '1667662402:1'),
(318, 89, '_wp_trash_meta_status', 'publish'),
(319, 89, '_wp_trash_meta_time', '1667662408'),
(320, 90, '_edit_lock', '1667662462:1'),
(321, 90, '_wp_trash_meta_status', 'publish'),
(322, 90, '_wp_trash_meta_time', '1667662468'),
(323, 91, '_wp_trash_meta_status', 'publish'),
(324, 91, '_wp_trash_meta_time', '1667665845'),
(330, 38, '_edit_lock', '1667676894:1'),
(331, 40, '_edit_lock', '1667676795:1'),
(332, 42, '_wp_trash_meta_status', 'publish'),
(333, 42, '_wp_trash_meta_time', '1667676948'),
(334, 42, '_wp_desired_post_slug', 'privacy-policy-3'),
(335, 96, '_wp_attached_file', '2022/11/Settings-icon.png'),
(336, 96, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:18;s:6:\"height\";i:18;s:4:\"file\";s:25:\"2022/11/Settings-icon.png\";s:8:\"filesize\";i:718;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(337, 97, '_edit_lock', '1668374490:1'),
(340, 1, '_wp_trash_meta_status', 'publish'),
(341, 1, '_wp_trash_meta_time', '1667929292'),
(342, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82'),
(343, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:5:\"trash\";}'),
(344, 99, '_wp_attached_file', '2022/11/call.png'),
(345, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:18;s:6:\"height\";i:18;s:4:\"file\";s:16:\"2022/11/call.png\";s:8:\"filesize\";i:290;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 102, '_edit_lock', '1668453298:1'),
(362, 113, '_wp_trash_meta_status', 'publish'),
(363, 113, '_wp_trash_meta_time', '1668374619'),
(369, 119, '_wp_attached_file', '2022/11/img.png'),
(370, 119, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:618;s:6:\"height\";i:426;s:4:\"file\";s:15:\"2022/11/img.png\";s:8:\"filesize\";i:390790;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"img-300x207.png\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:94402;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38146;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(371, 102, '_thumbnail_id', '119');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-11-02 22:25:54', '2022-11-02 20:25:54', '', 'Привіт, світ!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82__trashed', '', '', '2022-11-08 19:41:32', '2022-11-08 17:41:32', '', 0, 'http://localhost:8888/alpha/?p=1', 0, 'post', '', 0),
(2, 1, '2022-11-02 22:25:54', '2022-11-02 20:25:54', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці &laquo;Деталі&raquo; власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері &#8212; перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія &laquo;Штучки XYZ&raquo; була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://localhost:8888/alpha/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-11-02 22:25:54', '2022-11-02 20:25:54', '', 0, 'http://localhost:8888/alpha/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-11-02 22:25:54', '2022-11-02 20:25:54', '<!-- wp:heading --><h2>Хто ми</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Наша адреса сайту: http://localhost:8888/alpha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Коментарі</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коли відвідувачі залишають коментарі на сайті, ми збираємо дані, що відображаються у формі коментарів, а також IP-адреси відвідувачів та рядку агента-браузера користувача, щоб допомогти виявити спам.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонімний рядок, створений за вашою адресою електронної пошти (також називається хеш), може бути наданий службі Gravatar, щоб дізнатись, чи ви його використовуєте. Політика конфіденційності служби Gravatar доступна тут: https://automattic.com/privacy/. Після схвалення вашого коментаря, ваше зображення профілю буде видно для громадськості в контексті вашого коментарю.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медіафайли</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви завантажуєте зображення на сайт, вам слід уникати завантаження зображень із вбудованими даними про місцезнаходження (EXIF GPS). Відвідувачі сайту можуть завантажувати та витягувати будь-які дані про місцезнаходження із зображень на сайті.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар на нашому сайті, ви можете ввімкнути збереження свого імені, електронної адреси та сайту в файлах cookie. Це для вашої зручності, так що вам не потрібно буде повторно заповнювати ваші дані, коли ви залишатимете наступний коментар. Ці файли cookie зберігатимуться 1 рік.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо у вас є обліковий запис на сайті і ви ввійдете в нього, ми встановимо тимчасовий cookie для визначення підтримки cookies вашим браузером, cookie не містить ніякої особистої інформації і віддаляється при закритті вашого браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Коли ви ввійдете в систему, ми також встановимо декілька файлів cookie, щоб зберегти інформацію про ваш логін та налаштування екрана. Cookie-файли для входу зберігаються 2 дні, а файли cookie-файлів налаштувань екрану - 1 рік. Якщо ви виберете &quot;Запам\'ятати мене&quot;, ваш логін буде зберігатися протягом 2 тижнів. Якщо ви вийдете зі свого облікового запису, файли cookie логіну будуть видалені.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо ви редагуєте або публікуєте статтю, у вашому веб-переглядачі буде збережений додатковий файл cookie. Цей файл cookie не містить особистих даних і просто вказує ідентифікатор статті, яку ви щойно редагували. Його термін дії закінчується через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Вбудований вміст з інших веб-сайтів</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Статті на цьому сайті можуть містити вбудований вміст (наприклад: відео, зображення, статті тощо). Вбудований вміст з інших сайтів веде себе так само, як би користувач відвідав інший сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ці сайти можуть збирати дані про вас, використовувати файли cookie, вбудовані додатки відстеження третіх сторін та стежити за вашою взаємодією з цим вбудованим вмістом. Зокрема відстежувати взаємодію з вбудованим вмістом, якщо у вас є обліковий запис і ви увійшли на цей сайт.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>З ким ми ділимося вашими даними</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви запросите скидання паролю, ваш IP буде вказано в email-повідомленні про скидання.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Як довго ми зберігаємо ваші дані</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар, він та його метадані зберігаються протягом невизначеного терміну. Таким чином, ми можемо автоматично визначати та затверджувати кожен наступний коментар замість того, щоб тримати їх у черзі на модерації.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для користувачів, які реєструються на нашому сайті (якщо такі є), ми зберігаємо надану ними персональну інформацію у їхньому профілі користувача. Всі користувачі можуть переглядати, редагувати або видаляти свої особисті дані в будь-який час (за винятком того, що вони не можуть змінити своє ім\'я користувача). Адміністратори сайту також можуть переглядати та редагувати цю інформацію.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Які права ви маєте відносно своїх даних</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо у вас є обліковий запис на цьому сайті або ви залишили коментарі, ви можете подати запит на отримання експортованого файлу особистих даних які ми зберігаємо про вас, включаючи всі дані, які ви надали нам. Ви також можете вимагати, щоб ми стерли будь-які особисті дані, які ми маємо щодо вас. Це не включає будь-які дані, які ми зобов\'язані зберігати в адміністративних, правових та цілях безпеки.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куди відправляються ваші дані</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коментарі відвідувачів можуть бути перевірені за допомогою служби автоматичного виявлення спаму.</p><!-- /wp:paragraph -->', 'Політика конфіденційності', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-11-02 22:25:54', '2022-11-02 20:25:54', '', 0, 'http://localhost:8888/alpha/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-11-04 20:19:26', '2022-11-04 18:19:26', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-alpha', '', '', '2022-11-04 20:19:26', '2022-11-04 18:19:26', '', 0, 'http://localhost:8888/alpha/2022/11/04/wp-global-styles-alpha/', 0, 'wp_global_styles', '', 0),
(7, 1, '2022-11-04 20:46:13', '2022-11-04 18:46:13', '{\n    \"nav_menu[-4432212288325021700]\": {\n        \"value\": {\n            \"name\": \"menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:43:26\"\n    },\n    \"nav_menu_item[-7274389551824911000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Appliance Service\",\n            \"url\": \"http://localhost:8888/alpha\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430\",\n            \"nav_menu_term_id\": -4432212288325021700,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041a\\u043e\\u0440\\u0438\\u0441\\u0442\\u0443\\u0432\\u0430\\u0446\\u044c\\u043a\\u0435 \\u043f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:44:26\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            8,\n            9,\n            10,\n            11,\n            12,\n            13\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:46:13\"\n    },\n    \"nav_menu_item[-7059076566582942000]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Brands\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=8\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Brands\",\n            \"nav_menu_term_id\": -4432212288325021700,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:45:26\"\n    },\n    \"nav_menu_item[-2915803221674513400]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430\",\n            \"url\": \"http://localhost:8888/alpha\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430\",\n            \"nav_menu_term_id\": -4432212288325021700,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041a\\u043e\\u0440\\u0438\\u0441\\u0442\\u0443\\u0432\\u0430\\u0446\\u044c\\u043a\\u0435 \\u043f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:45:26\"\n    },\n    \"nav_menu_item[-2102059313481481200]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430\",\n            \"url\": \"http://localhost:8888/alpha\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430\",\n            \"nav_menu_term_id\": -4432212288325021700,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041a\\u043e\\u0440\\u0438\\u0441\\u0442\\u0443\\u0432\\u0430\\u0446\\u044c\\u043a\\u0435 \\u043f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:45:26\"\n    },\n    \"nav_menu_item[-3331278503096405000]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Maintance Plans\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=9\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Maintance Plans\",\n            \"nav_menu_term_id\": -4432212288325021700,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:45:26\"\n    },\n    \"nav_menu_item[-7345715301818906000]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Coupons\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=10\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Coupons\",\n            \"nav_menu_term_id\": -4432212288325021700,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:45:26\"\n    },\n    \"nav_menu_item[-5299779170532978000]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"Reviews\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=11\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Reviews\",\n            \"nav_menu_term_id\": -4432212288325021700,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:45:26\"\n    },\n    \"nav_menu_item[-8583110303073114000]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=12\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -4432212288325021700,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:45:26\"\n    },\n    \"nav_menu_item[-2864674221643628500]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 9,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=13\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -4432212288325021700,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:46:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3b5e2273-7313-477e-9f31-46a1d7c03d0e', '', '', '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 0, 'http://localhost:8888/alpha/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 'Brands', '', 'publish', 'closed', 'closed', '', 'brands', '', '', '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 0, 'http://localhost:8888/alpha/?page_id=8', 0, 'page', '', 0),
(9, 1, '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 'Maintance Plans', '', 'publish', 'closed', 'closed', '', 'maintance-plans', '', '', '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 0, 'http://localhost:8888/alpha/?page_id=9', 0, 'page', '', 0),
(10, 1, '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 'Coupons', '', 'publish', 'closed', 'closed', '', 'coupons', '', '', '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 0, 'http://localhost:8888/alpha/?page_id=10', 0, 'page', '', 0),
(11, 1, '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 'Reviews', '', 'publish', 'closed', 'closed', '', 'reviews', '', '', '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 0, 'http://localhost:8888/alpha/?page_id=11', 0, 'page', '', 0),
(12, 1, '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 0, 'http://localhost:8888/alpha/?page_id=12', 0, 'page', '', 0),
(13, 1, '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 0, 'http://localhost:8888/alpha/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-11-05 11:13:45', '2022-11-04 18:46:13', '', 'Appliance Service', '', 'publish', 'closed', 'closed', '', 'appliance-service', '', '', '2022-11-05 11:13:45', '2022-11-05 09:13:45', '', 0, 'http://localhost:8888/alpha/2022/11/04/appliance-service/', 1, 'nav_menu_item', '', 0),
(15, 1, '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 'Brands', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 8, 'http://localhost:8888/alpha/?p=15', 0, 'revision', '', 0),
(16, 1, '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 'Maintance Plans', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 9, 'http://localhost:8888/alpha/?p=16', 0, 'revision', '', 0),
(17, 1, '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 'Coupons', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 10, 'http://localhost:8888/alpha/?p=17', 0, 'revision', '', 0),
(18, 1, '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 'Reviews', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 11, 'http://localhost:8888/alpha/?p=18', 0, 'revision', '', 0),
(19, 1, '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 12, 'http://localhost:8888/alpha/?p=19', 0, 'revision', '', 0),
(20, 1, '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-11-04 20:46:13', '2022-11-04 18:46:13', '', 13, 'http://localhost:8888/alpha/?p=20', 0, 'revision', '', 0),
(21, 1, '2022-11-05 11:13:45', '2022-11-04 18:46:13', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2022-11-05 11:13:45', '2022-11-05 09:13:45', '', 0, 'http://localhost:8888/alpha/2022/11/04/21/', 2, 'nav_menu_item', '', 0),
(24, 1, '2022-11-05 11:13:45', '2022-11-04 18:46:13', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2022-11-05 11:13:45', '2022-11-05 09:13:45', '', 0, 'http://localhost:8888/alpha/2022/11/04/24/', 3, 'nav_menu_item', '', 0),
(25, 1, '2022-11-05 11:13:45', '2022-11-04 18:46:13', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2022-11-05 11:13:45', '2022-11-05 09:13:45', '', 0, 'http://localhost:8888/alpha/2022/11/04/25/', 4, 'nav_menu_item', '', 0),
(26, 1, '2022-11-05 11:13:45', '2022-11-04 18:46:13', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2022-11-05 11:13:45', '2022-11-05 09:13:45', '', 0, 'http://localhost:8888/alpha/2022/11/04/26/', 5, 'nav_menu_item', '', 0),
(27, 1, '2022-11-05 11:13:45', '2022-11-04 18:46:13', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2022-11-05 11:13:45', '2022-11-05 09:13:45', '', 0, 'http://localhost:8888/alpha/2022/11/04/27/', 6, 'nav_menu_item', '', 0),
(28, 1, '2022-11-05 11:13:45', '2022-11-04 18:46:14', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2022-11-05 11:13:45', '2022-11-05 09:13:45', '', 0, 'http://localhost:8888/alpha/2022/11/04/28/', 7, 'nav_menu_item', '', 0),
(29, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '{\n    \"nav_menu[-5052440340945861000]\": {\n        \"value\": {\n            \"name\": \"ABOUT COMPANY\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:48:26\"\n    },\n    \"nav_menu_item[-1420221904776398800]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Maintance Plans\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=9\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Maintance Plans\",\n            \"nav_menu_term_id\": -5052440340945861000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:49:26\"\n    },\n    \"nav_menu_item[-2202030601044161500]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Coupons\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=10\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Coupons\",\n            \"nav_menu_term_id\": -5052440340945861000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:49:26\"\n    },\n    \"nav_menu_item[-6881135541153457000]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Reviews\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=11\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Reviews\",\n            \"nav_menu_term_id\": -5052440340945861000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:49:26\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            30,\n            31,\n            32,\n            33,\n            34,\n            35,\n            36,\n            38,\n            39,\n            40,\n            42,\n            43\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:09:54\"\n    },\n    \"nav_menu_item[-7229548095974772000]\": {\n        \"value\": {\n            \"object_id\": 30,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"FAQ\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=30\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"FAQ\",\n            \"nav_menu_term_id\": -5052440340945861000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:50:26\"\n    },\n    \"nav_menu_item[-2107395416276996000]\": {\n        \"value\": {\n            \"object_id\": 31,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=31\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -5052440340945861000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:50:26\"\n    },\n    \"nav_menu_item[-3470400166171139000]\": {\n        \"value\": {\n            \"object_id\": 32,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=32\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -5052440340945861000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 18:50:26\"\n    },\n    \"nav_menu[-2076226735931968500]\": {\n        \"value\": {\n            \"name\": \"CUSTOMER SERVICES\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:08:47\"\n    },\n    \"nav_menu_item[-1686020801786353700]\": {\n        \"value\": {\n            \"object_id\": 33,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Residential\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=33\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Residential\",\n            \"nav_menu_term_id\": -2076226735931968500,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:08:47\"\n    },\n    \"nav_menu_item[-8252591003628307000]\": {\n        \"value\": {\n            \"object_id\": 34,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Commercial\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=34\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Commercial\",\n            \"nav_menu_term_id\": -2076226735931968500,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:08:47\"\n    },\n    \"nav_menu_item[-8363029046572457000]\": {\n        \"value\": {\n            \"object_id\": 35,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Repair\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=35\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Repair\",\n            \"nav_menu_term_id\": -2076226735931968500,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:08:47\"\n    },\n    \"nav_menu_item[-8277826963959685000]\": {\n        \"value\": {\n            \"object_id\": 36,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Installation\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=36\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Installation\",\n            \"nav_menu_term_id\": -2076226735931968500,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:08:47\"\n    },\n    \"nav_menu[-2741385467489893400]\": {\n        \"value\": {\n            \"name\": \"HELP AND SUPPORT\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:09:54\"\n    },\n    \"nav_menu_item[-8847924791949157000]\": {\n        \"value\": {\n            \"object_id\": 38,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Appliance Repair Warranty\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=38\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Appliance Repair Warranty\",\n            \"nav_menu_term_id\": -2741385467489893400,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:09:54\"\n    },\n    \"nav_menu_item[-742781907635059700]\": {\n        \"value\": {\n            \"object_id\": 39,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Cancellation Policy\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=39\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Cancellation Policy\",\n            \"nav_menu_term_id\": -2741385467489893400,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:09:54\"\n    },\n    \"nav_menu_item[-8305505846742333000]\": {\n        \"value\": {\n            \"object_id\": 40,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Privacy Policy\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=40\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Privacy Policy\",\n            \"nav_menu_term_id\": -2741385467489893400,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:09:54\"\n    },\n    \"nav_menu_item[-8144719024071700000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:09:54\"\n    },\n    \"nav_menu_item[-3823832162639680500]\": {\n        \"value\": {\n            \"object_id\": 43,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Careers\",\n            \"url\": \"http://localhost:8888/alpha/?page_id=43\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Careers\",\n            \"nav_menu_term_id\": -2741385467489893400,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:09:54\"\n    },\n    \"nav_menu_item[22]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:35:06\"\n    },\n    \"nav_menu_item[23]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:35:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '15efe08a-4028-42ce-b655-7dc21e872161', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 0, 'http://localhost:8888/alpha/?p=29', 0, 'customize_changeset', '', 0),
(30, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 0, 'http://localhost:8888/alpha/?page_id=30', 0, 'page', '', 0),
(31, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 0, 'http://localhost:8888/alpha/?page_id=31', 0, 'page', '', 0),
(32, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact-2', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 0, 'http://localhost:8888/alpha/?page_id=32', 0, 'page', '', 0),
(33, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Residential', '', 'publish', 'closed', 'closed', '', 'residential', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 0, 'http://localhost:8888/alpha/?page_id=33', 0, 'page', '', 0),
(34, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Commercial', '', 'publish', 'closed', 'closed', '', 'commercial', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 0, 'http://localhost:8888/alpha/?page_id=34', 0, 'page', '', 0),
(35, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Repair', '', 'publish', 'closed', 'closed', '', 'repair', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 0, 'http://localhost:8888/alpha/?page_id=35', 0, 'page', '', 0),
(36, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Installation', '', 'publish', 'closed', 'closed', '', 'installation', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 0, 'http://localhost:8888/alpha/?page_id=36', 0, 'page', '', 0),
(38, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Appliance Repair Warranty', '', 'publish', 'closed', 'closed', '', 'appliance-repair-warranty', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 0, 'http://localhost:8888/alpha/?page_id=38', 0, 'page', '', 0),
(39, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Cancellation Policy', '', 'publish', 'closed', 'closed', '', 'cancellation-policy', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 0, 'http://localhost:8888/alpha/?page_id=39', 0, 'page', '', 0),
(40, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy-2', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 0, 'http://localhost:8888/alpha/?page_id=40', 0, 'page', '', 0),
(42, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Privacy Policy', '', 'trash', 'closed', 'closed', '', 'privacy-policy-3__trashed', '', '', '2022-11-05 21:35:48', '2022-11-05 19:35:48', '', 0, 'http://localhost:8888/alpha/?page_id=42', 0, 'page', '', 0),
(43, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Careers', '', 'publish', 'closed', 'closed', '', 'careers', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 0, 'http://localhost:8888/alpha/?page_id=43', 0, 'page', '', 0),
(45, 1, '2022-11-05 10:50:11', '2022-11-04 19:35:18', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2022-11-05 10:50:11', '2022-11-05 08:50:11', '', 0, 'http://localhost:8888/alpha/2022/11/04/45/', 1, 'nav_menu_item', '', 0),
(46, 1, '2022-11-05 10:50:11', '2022-11-04 19:35:18', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2022-11-05 10:50:11', '2022-11-05 08:50:11', '', 0, 'http://localhost:8888/alpha/2022/11/04/46/', 2, 'nav_menu_item', '', 0),
(47, 1, '2022-11-05 10:50:11', '2022-11-04 19:35:18', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2022-11-05 10:50:11', '2022-11-05 08:50:11', '', 0, 'http://localhost:8888/alpha/2022/11/04/47/', 3, 'nav_menu_item', '', 0),
(48, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 30, 'http://localhost:8888/alpha/?p=48', 0, 'revision', '', 0),
(49, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 31, 'http://localhost:8888/alpha/?p=49', 0, 'revision', '', 0),
(50, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 32, 'http://localhost:8888/alpha/?p=50', 0, 'revision', '', 0),
(51, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Residential', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 33, 'http://localhost:8888/alpha/?p=51', 0, 'revision', '', 0),
(52, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Commercial', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 34, 'http://localhost:8888/alpha/?p=52', 0, 'revision', '', 0),
(53, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Repair', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 35, 'http://localhost:8888/alpha/?p=53', 0, 'revision', '', 0),
(54, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Installation', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 36, 'http://localhost:8888/alpha/?p=54', 0, 'revision', '', 0),
(55, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Appliance Repair Warranty', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 38, 'http://localhost:8888/alpha/?p=55', 0, 'revision', '', 0),
(56, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Cancellation Policy', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 39, 'http://localhost:8888/alpha/?p=56', 0, 'revision', '', 0),
(57, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 40, 'http://localhost:8888/alpha/?p=57', 0, 'revision', '', 0),
(58, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 42, 'http://localhost:8888/alpha/?p=58', 0, 'revision', '', 0),
(59, 1, '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 'Careers', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2022-11-04 21:35:18', '2022-11-04 19:35:18', '', 43, 'http://localhost:8888/alpha/?p=59', 0, 'revision', '', 0),
(60, 1, '2022-11-05 10:50:11', '2022-11-04 19:35:18', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2022-11-05 10:50:11', '2022-11-05 08:50:11', '', 0, 'http://localhost:8888/alpha/2022/11/04/60/', 4, 'nav_menu_item', '', 0),
(61, 1, '2022-11-05 10:50:11', '2022-11-04 19:35:18', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2022-11-05 10:50:11', '2022-11-05 08:50:11', '', 0, 'http://localhost:8888/alpha/2022/11/04/61/', 5, 'nav_menu_item', '', 0),
(62, 1, '2022-11-05 10:50:11', '2022-11-04 19:35:18', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2022-11-05 10:50:11', '2022-11-05 08:50:11', '', 0, 'http://localhost:8888/alpha/2022/11/04/62/', 6, 'nav_menu_item', '', 0),
(63, 1, '2022-11-05 10:50:30', '2022-11-04 19:35:18', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2022-11-05 10:50:30', '2022-11-05 08:50:30', '', 0, 'http://localhost:8888/alpha/2022/11/04/63/', 1, 'nav_menu_item', '', 0),
(64, 1, '2022-11-05 10:50:30', '2022-11-04 19:35:18', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2022-11-05 10:50:30', '2022-11-05 08:50:30', '', 0, 'http://localhost:8888/alpha/2022/11/04/64/', 2, 'nav_menu_item', '', 0),
(65, 1, '2022-11-05 10:50:30', '2022-11-04 19:35:18', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2022-11-05 10:50:30', '2022-11-05 08:50:30', '', 0, 'http://localhost:8888/alpha/2022/11/04/65/', 3, 'nav_menu_item', '', 0),
(66, 1, '2022-11-05 10:50:30', '2022-11-04 19:35:18', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2022-11-05 10:50:30', '2022-11-05 08:50:30', '', 0, 'http://localhost:8888/alpha/2022/11/04/66/', 4, 'nav_menu_item', '', 0),
(67, 1, '2022-11-05 10:50:45', '2022-11-04 19:35:18', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2022-11-05 10:50:45', '2022-11-05 08:50:45', '', 0, 'http://localhost:8888/alpha/2022/11/04/67/', 1, 'nav_menu_item', '', 0),
(68, 1, '2022-11-05 10:50:45', '2022-11-04 19:35:19', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2022-11-05 10:50:45', '2022-11-05 08:50:45', '', 0, 'http://localhost:8888/alpha/2022/11/04/68/', 2, 'nav_menu_item', '', 0),
(69, 1, '2022-11-05 10:50:45', '2022-11-04 19:35:19', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2022-11-05 10:50:45', '2022-11-05 08:50:45', '', 0, 'http://localhost:8888/alpha/2022/11/04/69/', 3, 'nav_menu_item', '', 0),
(70, 1, '2022-11-05 10:50:45', '2022-11-04 19:35:19', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2022-11-05 10:50:45', '2022-11-05 08:50:45', '', 0, 'http://localhost:8888/alpha/2022/11/04/70/', 4, 'nav_menu_item', '', 0),
(71, 1, '2022-11-04 21:47:19', '2022-11-04 19:47:19', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-alpha-2', '', '', '2022-11-04 21:47:19', '2022-11-04 19:47:19', '', 0, 'http://localhost:8888/alpha/2022/11/04/wp-global-styles-alpha-2/', 0, 'wp_global_styles', '', 0),
(72, 1, '2022-11-04 21:58:06', '2022-11-04 19:58:06', '{\n    \"nav_menu_item[14]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 14,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041a\\u043e\\u0440\\u0438\\u0441\\u0442\\u0443\\u0432\\u0430\\u0446\\u044c\\u043a\\u0435 \\u043f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f\",\n            \"title\": \"Appliance Service\",\n            \"url\": \"http://localhost:8888/alpha/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 19:58:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cf1dfe3a-6fbd-498b-bb49-8dc1e626d83b', '', '', '2022-11-04 21:58:06', '2022-11-04 19:58:06', '', 0, 'http://localhost:8888/alpha/2022/11/04/cf1dfe3a-6fbd-498b-bb49-8dc1e626d83b/', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(73, 1, '2022-11-04 22:03:53', '2022-11-04 20:03:53', '{\n    \"nav_menu_item[-6472932228397052000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430\",\n            \"url\": \"http://localhost:8888/alpha\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430\",\n            \"nav_menu_term_id\": 5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041a\\u043e\\u0440\\u0438\\u0441\\u0442\\u0443\\u0432\\u0430\\u0446\\u044c\\u043a\\u0435 \\u043f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 20:03:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e727aaf8-6de6-4eee-91fc-3af32826e6cb', '', '', '2022-11-04 22:03:53', '2022-11-04 20:03:53', '', 0, 'http://localhost:8888/alpha/?p=73', 0, 'customize_changeset', '', 0),
(75, 1, '2022-11-04 22:05:24', '2022-11-04 20:05:24', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-11-04 22:05:24', '2022-11-04 20:05:24', '', 1, 'http://localhost:8888/alpha/?p=75', 0, 'revision', '', 0),
(76, 1, '2022-11-04 22:06:11', '2022-11-04 20:06:11', '', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-11-04 22:06:11', '2022-11-04 20:06:11', '', 1, 'http://localhost:8888/alpha/?p=76', 0, 'revision', '', 0),
(77, 1, '2022-11-05 11:18:20', '2022-11-05 09:18:20', '<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2022-11-05 11:18:20', '2022-11-05 09:18:20', '', 1, 'http://localhost:8888/alpha/?p=77', 0, 'revision', '', 0),
(78, 1, '2022-11-04 22:10:00', '2022-11-04 20:10:00', '{\n    \"nav_menu[-9171675850025329000]\": {\n        \"value\": {\n            \"name\": \"jhhjhj\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 20:10:00\"\n    },\n    \"nav_menu_item[-5142574668284649000]\": {\n        \"value\": {\n            \"object_id\": 40,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Privacy Policy\",\n            \"url\": \"http://localhost:8888/alpha/privacy-policy-2/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Privacy Policy\",\n            \"nav_menu_term_id\": -9171675850025329000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 20:10:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c130598a-cc6a-4826-9639-cc8c4ae4ed8a', '', '', '2022-11-04 22:10:00', '2022-11-04 20:10:00', '', 0, 'http://localhost:8888/alpha/2022/11/04/c130598a-cc6a-4826-9639-cc8c4ae4ed8a/', 0, 'customize_changeset', '', 0),
(80, 1, '2022-11-04 22:16:32', '2022-11-04 20:16:32', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 20:16:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5d66c536-7814-41f8-b161-067c1a3dc5c7', '', '', '2022-11-04 22:16:32', '2022-11-04 20:16:32', '', 0, 'http://localhost:8888/alpha/archives/80', 0, 'customize_changeset', '', 0),
(81, 1, '2022-11-04 22:16:44', '2022-11-04 20:16:44', '{\n    \"nav_menu[8]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 20:16:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '99c8af9b-95d4-4923-bcd2-665844ac4e50', '', '', '2022-11-04 22:16:44', '2022-11-04 20:16:44', '', 0, 'http://localhost:8888/alpha/archives/81', 0, 'customize_changeset', '', 0),
(82, 1, '2022-11-04 23:43:05', '2022-11-04 21:43:05', '{\n    \"nav_menu[3]\": {\n        \"value\": {\n            \"name\": \"menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-04 21:43:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5827a88c-bc2a-47f1-9bb6-e791c88abf86', '', '', '2022-11-04 23:43:05', '2022-11-04 21:43:05', '', 0, 'http://localhost:8888/alpha/archives/82', 0, 'customize_changeset', '', 0),
(84, 1, '2022-11-05 17:15:51', '2022-11-05 15:15:51', 'post\npage\nattachment\n1\n1\n1\npublish\ninherit\n\ndate\nDESC', 'Custom Search Form', '', 'publish', 'closed', 'closed', '', 'custom-search-form', '', '', '2022-11-05 17:15:51', '2022-11-05 15:15:51', '', 0, 'http://localhost:8888/alpha/?p=84', 0, 'is_search_form', '', 0),
(85, 1, '2022-11-05 17:15:51', '2022-11-05 15:15:51', 'post\npage\n1\n1\n1\npublish\ninherit\n\ndate\nDESC', 'Default Search Form', '', 'publish', 'closed', 'closed', '', 'default-search-form', '', '', '2022-11-05 17:15:51', '2022-11-05 15:15:51', '', 0, 'http://localhost:8888/alpha/?p=85', 0, 'is_search_form', '', 0),
(86, 1, '2022-11-05 17:15:51', '2022-11-05 15:15:51', 'post\npage\nattachment\n1\n1\n1\npublish\ninherit\n\ndate\nDESC\n1\n1\nexcerpt\n20\n1\n1\n400\nNothing found\n1\nMore Results..\nboth\n1\n1\n1\nall\ndate\ndesc', 'AJAX Search Form', '', 'publish', 'closed', 'closed', '', 'ajax-search-form', '', '', '2022-11-05 17:15:51', '2022-11-05 15:15:51', '', 0, 'http://localhost:8888/alpha/?p=86', 0, 'is_search_form', '', 0),
(87, 1, '2022-11-05 17:15:51', '2022-11-05 15:15:51', 'product\n1\n1\n1\npublish\ninherit\n\ndate\nDESC\n1\n1\nexcerpt\n20\n1\n1\n400\nNothing found\n1\nMore Results..\nboth\n1\n1\n1\nall\ndate\ndesc', 'AJAX Search Form for WooCommerce', '', 'publish', 'closed', 'closed', '', 'ajax-search-form-for-woocommerce', '', '', '2022-11-05 17:15:51', '2022-11-05 15:15:51', '', 0, 'http://localhost:8888/alpha/?p=87', 0, 'is_search_form', '', 0),
(88, 1, '2022-11-05 17:21:03', '2022-11-05 15:21:03', 'post\npage\nattachment\npost\n1\n1\n1\npublish\ninherit\nnull', 'search-header', '', 'publish', 'closed', 'closed', '', 'search-header', '', '', '2022-11-05 17:21:03', '2022-11-05 15:21:03', '', 0, 'http://localhost:8888/alpha/?post_type=is_search_form&p=88', 0, 'is_search_form', '', 0),
(89, 1, '2022-11-05 17:33:28', '2022-11-05 15:33:28', '{\n    \"is_search_88[placeholder-text]\": {\n        \"value\": \"Enter City / Postal Code\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-05 15:29:22\"\n    },\n    \"is_search_88[text-box-bg]\": {\n        \"value\": \"#f8f8f8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-05 15:29:22\"\n    },\n    \"is_search_88[form-style]\": {\n        \"value\": \"is-form-style-3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-05 15:32:22\"\n    },\n    \"is_search_88[search-btn-text]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-05 15:32:22\"\n    },\n    \"is_search_88[text-box-text]\": {\n        \"value\": \"#485982\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-05 15:32:22\"\n    },\n    \"is_search_88[submit-button-border]\": {\n        \"value\": \"#485982\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-05 15:33:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ea3dd6be-00a5-4669-91cc-32d5c6f35789', '', '', '2022-11-05 17:33:28', '2022-11-05 15:33:28', '', 0, 'http://localhost:8888/alpha/?p=89', 0, 'customize_changeset', '', 0),
(90, 1, '2022-11-05 17:34:28', '2022-11-05 15:34:28', '{\n    \"is_search_88[submit-button-text]\": {\n        \"value\": \"#485982\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-05 15:34:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0e217168-b40c-40d1-bf6c-e617a8ec0c0d', '', '', '2022-11-05 17:34:28', '2022-11-05 15:34:28', '', 0, 'http://localhost:8888/alpha/?p=90', 0, 'customize_changeset', '', 0),
(91, 1, '2022-11-05 18:30:45', '2022-11-05 16:30:45', '{\n    \"is_search_88[submit-button-bg]\": {\n        \"value\": \"#f8f8f8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-05 16:30:45\"\n    },\n    \"is_search_88[submit-button-border]\": {\n        \"value\": \"#f8f8f8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-05 16:30:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b9ebcb75-6f67-45d9-8b85-f1c97b91d501', '', '', '2022-11-05 18:30:45', '2022-11-05 16:30:45', '', 0, 'http://localhost:8888/alpha/archives/91', 0, 'customize_changeset', '', 0),
(95, 1, '2022-11-05 21:34:54', '2022-11-05 19:34:54', '', 'Appliance Repair Warranty', '', 'inherit', 'closed', 'closed', '', '38-autosave-v1', '', '', '2022-11-05 21:34:54', '2022-11-05 19:34:54', '', 38, 'http://localhost:8888/alpha/?p=95', 0, 'revision', '', 0),
(96, 1, '2022-11-05 22:33:13', '2022-11-05 20:33:13', '', 'Settings icon', '', 'inherit', 'open', 'closed', '', 'settings-icon', '', '', '2022-11-05 22:33:13', '2022-11-05 20:33:13', '', 0, 'http://localhost:8888/alpha/wp-content/uploads/2022/11/Settings-icon.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2022-11-08 19:41:13', '2022-11-08 17:41:13', '<!-- wp:paragraph -->\n<p>Your Local Appliance Repair Company</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Repair of any complexity of all brands of equipment</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Affordable rates for various appliance repairs</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Licensed, trained techs with years of experience</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Same/next-day appointment</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"textColor\":\"white\",\"style\":{\"color\":{\"background\":\"#485982\"}}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-white-color has-text-color has-background wp-element-button\" style=\"background-color:#485982\"><img class=\"wp-image-99\" style=\"width: 18px;\" src=\"http://localhost:8888/alpha/wp-content/uploads/2022/11/call.png\" alt=\"\">Request a call</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Appliance Repair Service', '', 'publish', 'closed', 'open', '', 'appliance-repair-service', '', '', '2022-11-13 23:15:22', '2022-11-13 21:15:22', '', 0, 'http://localhost:8888/alpha/?p=97', 0, 'post', '', 0),
(98, 1, '2022-11-08 19:41:13', '2022-11-08 17:41:13', '<!-- wp:paragraph -->\n<p>Your Local Appliance Repair Company</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Repair of any complexity of all brands of equipment</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Affordable rates for various appliance repairs</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Licensed, trained techs with years of experience</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Same/next-day appointment</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">Request a call</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Appliance Repair Service', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2022-11-08 19:41:13', '2022-11-08 17:41:13', '', 97, 'http://localhost:8888/alpha/?p=98', 0, 'revision', '', 0),
(99, 1, '2022-11-08 19:44:27', '2022-11-08 17:44:27', '', 'call', '', 'inherit', 'open', 'closed', '', 'call', '', '', '2022-11-08 19:44:27', '2022-11-08 17:44:27', '', 97, 'http://localhost:8888/alpha/wp-content/uploads/2022/11/call.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2022-11-08 19:45:38', '2022-11-08 17:45:38', '<!-- wp:paragraph -->\n<p>Your Local Appliance Repair Company</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Repair of any complexity of all brands of equipment</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Affordable rates for various appliance repairs</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Licensed, trained techs with years of experience</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Same/next-day appointment</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"textColor\":\"white\",\"style\":{\"color\":{\"background\":\"#485982\"}}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-white-color has-text-color has-background wp-element-button\" style=\"background-color:#485982\"><img class=\"wp-image-99\" style=\"width: 18px;\" src=\"http://localhost:8888/alpha/wp-content/uploads/2022/11/call.png\" alt=\"\">Request a call</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Appliance Repair Service', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2022-11-08 19:45:38', '2022-11-08 17:45:38', '', 97, 'http://localhost:8888/alpha/?p=101', 0, 'revision', '', 0),
(102, 1, '2022-11-08 20:18:51', '2022-11-08 18:18:51', '<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#485982\"}},\"className\":\"sub-title\",\"fontSize\":\"medium\"} -->\n<p class=\"sub-title has-text-color has-medium-font-size\" style=\"color:#485982\">Your Local Appliance Repair Company</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Repair of any complexity of all brands of equipment</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Affordable rates for various appliance repairs</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Licensed, trained techs with years of experience</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Same/next-day appointment</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"typography\":{\"fontSize\":\"16px\"},\"border\":{\"radius\":\"12px\"},\"color\":{\"background\":\"#485982\"}},\"className\":\"btn-content\"} -->\n<div class=\"wp-block-button has-custom-font-size btn-content\" style=\"font-size:16px\"><a class=\"wp-block-button__link has-background wp-element-button\" style=\"border-radius:12px;background-color:#485982\"><strong><mark style=\"background-color:rgba(0, 0, 0, 0)\" class=\"has-inline-color has-white-color\"><img class=\"wp-image-99\" style=\"width: 16px;\" src=\"http://localhost:8888/alpha/wp-content/uploads/2022/11/call.png\" alt=\"\">Request a call</mark></strong></a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Appliance Repair Service', '', 'publish', 'closed', 'closed', '', 'appliance-repair-service', '', '', '2022-11-14 21:06:10', '2022-11-14 19:06:10', '', 0, 'http://localhost:8888/alpha/?page_id=102', 0, 'page', '', 0),
(103, 1, '2022-11-08 20:18:51', '2022-11-08 18:18:51', '<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#485982\"}},\"fontSize\":\"medium\"} -->\n<p class=\"has-text-color has-medium-font-size\" style=\"color:#485982\">Your Local Appliance Repair Company</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Repair of any complexity of all brands of equipment</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Affordable rates for various appliance repairs</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Licensed, trained techs with years of experience</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Same/next-day appointment</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"typography\":{\"fontSize\":\"16px\"},\"border\":{\"radius\":\"12px\"},\"color\":{\"background\":\"#485982\"}}} -->\n<div class=\"wp-block-button has-custom-font-size\" style=\"font-size:16px\"><a class=\"wp-block-button__link has-background wp-element-button\" style=\"border-radius:12px;background-color:#485982\"><strong><mark style=\"background-color:rgba(0, 0, 0, 0)\" class=\"has-inline-color has-white-color\"><img class=\"wp-image-99\" style=\"width: 16px;\" src=\"http://localhost:8888/alpha/wp-content/uploads/2022/11/call.png\" alt=\"\">Request a call</mark></strong></a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Appliance Repair Service', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2022-11-08 20:18:51', '2022-11-08 18:18:51', '', 102, 'http://localhost:8888/alpha/?p=103', 0, 'revision', '', 0),
(113, 1, '2022-11-13 23:23:39', '2022-11-13 21:23:39', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-13 21:23:39\"\n    },\n    \"page_on_front\": {\n        \"value\": \"102\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-11-13 21:23:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c1c32009-29c6-4fa4-988e-9185ac2c1ac2', '', '', '2022-11-13 23:23:39', '2022-11-13 21:23:39', '', 0, 'http://localhost:8888/alpha/archives/113', 0, 'customize_changeset', '', 0),
(115, 1, '2022-11-14 19:58:55', '2022-11-14 17:58:55', '<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#485982\"}},\"className\":\"sub-title\",\"fontSize\":\"medium\"} -->\n<p class=\"sub-title has-text-color has-medium-font-size\" style=\"color:#485982\">Your Local Appliance Repair Company</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Repair of any complexity of all brands of equipment</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Affordable rates for various appliance repairs</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Licensed, trained techs with years of experience</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Same/next-day appointment</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"typography\":{\"fontSize\":\"16px\"},\"border\":{\"radius\":\"12px\"},\"color\":{\"background\":\"#485982\"}}} -->\n<div class=\"wp-block-button has-custom-font-size\" style=\"font-size:16px\"><a class=\"wp-block-button__link has-background wp-element-button\" style=\"border-radius:12px;background-color:#485982\"><strong><mark style=\"background-color:rgba(0, 0, 0, 0)\" class=\"has-inline-color has-white-color\"><img class=\"wp-image-99\" style=\"width: 16px;\" src=\"http://localhost:8888/alpha/wp-content/uploads/2022/11/call.png\" alt=\"\">Request a call</mark></strong></a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Appliance Repair Service', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2022-11-14 19:58:55', '2022-11-14 17:58:55', '', 102, 'http://localhost:8888/alpha/?p=115', 0, 'revision', '', 0),
(116, 1, '2022-11-14 20:01:25', '2022-11-14 18:01:25', '<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#485982\"}},\"className\":\"sub-title\",\"fontSize\":\"medium\"} -->\n<p class=\"sub-title has-text-color has-medium-font-size\" style=\"color:#485982\">Your Local Appliance Repair Company</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Repair of any complexity of all brands of equipment</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Affordable rates for various appliance repairs</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Licensed, trained techs with years of experience</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Same/next-day appointment</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"typography\":{\"fontSize\":\"16px\"},\"border\":{\"radius\":\"12px\"},\"color\":{\"background\":\"#485982\"}},\"className\":\"btn-content\"} -->\n<div class=\"wp-block-button has-custom-font-size btn-content\" style=\"font-size:16px\"><a class=\"wp-block-button__link has-background wp-element-button\" style=\"border-radius:12px;background-color:#485982\"><strong><mark style=\"background-color:rgba(0, 0, 0, 0)\" class=\"has-inline-color has-white-color\"><img class=\"wp-image-99\" style=\"width: 16px;\" src=\"http://localhost:8888/alpha/wp-content/uploads/2022/11/call.png\" alt=\"\">Request a call</mark></strong></a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Appliance Repair Service', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2022-11-14 20:01:25', '2022-11-14 18:01:25', '', 102, 'http://localhost:8888/alpha/?p=116', 0, 'revision', '', 0),
(119, 1, '2022-11-14 21:06:04', '2022-11-14 19:06:04', '', 'img', '', 'inherit', 'open', 'closed', '', 'img', '', '', '2022-11-14 21:06:04', '2022-11-14 19:06:04', '', 102, 'http://localhost:8888/alpha/wp-content/uploads/2022/11/img.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категорії', '%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97', 0),
(2, 'alpha', 'alpha', 0),
(3, 'menu', 'menu', 0),
(4, 'ABOUT COMPANY', 'about-company', 0),
(5, 'CUSTOMER SERVICES', 'customer-services', 0),
(6, 'HELP AND SUPPORT', 'help-and-support', 0),
(7, 'alpha-2', 'alpha-2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(14, 3, 0),
(21, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(45, 4, 0),
(46, 4, 0),
(47, 4, 0),
(60, 4, 0),
(61, 4, 0),
(62, 4, 0),
(63, 5, 0),
(64, 5, 0),
(65, 5, 0),
(66, 5, 0),
(67, 6, 0),
(68, 6, 0),
(69, 6, 0),
(70, 6, 0),
(71, 7, 0),
(97, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 6),
(5, 5, 'nav_menu', '', 0, 4),
(6, 6, 'nav_menu', '', 0, 4),
(7, 7, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '112'),
(18, 1, 'wp_persisted_preferences', 'a:3:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:6:{i:0;s:12:\"post-excerpt\";i:1;s:11:\"post-status\";i:2;s:23:\"taxonomy-panel-category\";i:3;s:16:\"discussion-panel\";i:4;s:14:\"featured-image\";i:5;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2022-11-09T21:07:01.925Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1667587238'),
(21, 1, 'nav_menu_recently_edited', '3'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'session_tokens', 'a:1:{s:64:\"bcb9e1cdd986108f02988b5a834edcb00e9e66f728b3793ab36f97079b5fbbad\";a:4:{s:10:\"expiration\";i:1669583000;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36\";s:5:\"login\";i:1668373400;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B50WU/VVY4HRnHf8oocReCSVGVpmuk0', 'admin', 'volocjyga89@gmail.com', 'http://localhost:8888/alpha', '2022-11-02 20:25:54', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_is_inverted_index`
--
ALTER TABLE `wp_is_inverted_index`
  ADD PRIMARY KEY (`post_id`,`term`),
  ADD KEY `term` (`term`(20)),
  ADD KEY `termrev` (`term_reverse`(10)),
  ADD KEY `score` (`score`),
  ADD KEY `lang` (`lang`(5)),
  ADD KEY `type` (`type`(20));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=979;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;