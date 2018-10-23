-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2018 at 05:28 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mti-runners`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-10-18 07:20:44', '2018-10-18 07:20:44', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:10021/mti-runners', 'yes'),
(2, 'home', 'http://localhost:10021/mti-runners', 'yes'),
(3, 'blogname', 'MTI Runners', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'reginiqbalmareza@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:370:{s:28:"event-aggregator/(insert)/?$";s:53:"index.php?tribe-aggregator=1&tribe-action=$matches[1]";s:25:"(?:event)/([^/]+)/ical/?$";s:56:"index.php?ical=1&name=$matches[1]&post_type=tribe_events";s:28:"(?:events)/(?:page)/(\\d+)/?$";s:68:"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]";s:41:"(?:events)/(?:featured)/(?:page)/(\\d+)/?$";s:79:"index.php?post_type=tribe_events&featured=1&eventDisplay=list&paged=$matches[1]";s:38:"(?:events)/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?post_type=tribe_events&eventDisplay=list&feed=$matches[1]";s:51:"(?:events)/(?:featured)/(feed|rdf|rss|rss2|atom)/?$";s:78:"index.php?post_type=tribe_events&featured=1&eventDisplay=list&feed=$matches[1]";s:23:"(?:events)/(?:month)/?$";s:51:"index.php?post_type=tribe_events&eventDisplay=month";s:36:"(?:events)/(?:month)/(?:featured)/?$";s:62:"index.php?post_type=tribe_events&eventDisplay=month&featured=1";s:37:"(?:events)/(?:month)/(\\d{4}-\\d{2})/?$";s:73:"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]";s:37:"(?:events)/(?:list)/(?:page)/(\\d+)/?$";s:68:"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]";s:50:"(?:events)/(?:list)/(?:featured)/(?:page)/(\\d+)/?$";s:79:"index.php?post_type=tribe_events&eventDisplay=list&featured=1&paged=$matches[1]";s:22:"(?:events)/(?:list)/?$";s:50:"index.php?post_type=tribe_events&eventDisplay=list";s:35:"(?:events)/(?:list)/(?:featured)/?$";s:61:"index.php?post_type=tribe_events&eventDisplay=list&featured=1";s:23:"(?:events)/(?:today)/?$";s:49:"index.php?post_type=tribe_events&eventDisplay=day";s:36:"(?:events)/(?:today)/(?:featured)/?$";s:60:"index.php?post_type=tribe_events&eventDisplay=day&featured=1";s:27:"(?:events)/(\\d{4}-\\d{2})/?$";s:73:"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]";s:40:"(?:events)/(\\d{4}-\\d{2})/(?:featured)/?$";s:84:"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]&featured=1";s:33:"(?:events)/(\\d{4}-\\d{2}-\\d{2})/?$";s:71:"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]";s:46:"(?:events)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$";s:82:"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]&featured=1";s:26:"(?:events)/(?:featured)/?$";s:43:"index.php?post_type=tribe_events&featured=1";s:13:"(?:events)/?$";s:53:"index.php?post_type=tribe_events&eventDisplay=default";s:18:"(?:events)/ical/?$";s:39:"index.php?post_type=tribe_events&ical=1";s:31:"(?:events)/(?:featured)/ical/?$";s:50:"index.php?post_type=tribe_events&ical=1&featured=1";s:38:"(?:events)/(\\d{4}-\\d{2}-\\d{2})/ical/?$";s:78:"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]";s:47:"(?:events)/(\\d{4}-\\d{2}-\\d{2})/ical/featured/?$";s:89:"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]&featured=1";s:60:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:page)/(\\d+)/?$";s:97:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]";s:73:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/(?:page)/(\\d+)/?$";s:108:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=list&paged=$matches[2]";s:55:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:month)/?$";s:80:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month";s:68:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:month)/(?:featured)/?$";s:91:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&featured=1";s:69:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:page)/(\\d+)/?$";s:97:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]";s:82:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:featured)/(?:page)/(\\d+)/?$";s:108:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&featured=1&paged=$matches[2]";s:54:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/?$";s:79:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list";s:67:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:featured)/?$";s:90:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&featured=1";s:55:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:today)/?$";s:78:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day";s:68:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:today)/(?:featured)/?$";s:89:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&featured=1";s:73:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$";s:100:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:86:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$";s:111:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1";s:59:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/?$";s:102:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]";s:72:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/(?:featured)/?$";s:113:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]&featured=1";s:65:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$";s:100:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:78:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$";s:111:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1";s:50:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/feed/?$";s:89:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&feed=rss2";s:63:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/feed/?$";s:100:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=list&feed=rss2";s:50:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/ical/?$";s:68:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&ical=1";s:63:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/ical/?$";s:79:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&ical=1";s:75:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:78:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&feed=$matches[2]";s:88:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/feed/(feed|rdf|rss|rss2|atom)/?$";s:89:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&feed=$matches[2]";s:58:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/?$";s:93:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=default";s:45:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/?$";s:82:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=default";s:44:"(?:events)/(?:tag)/([^/]+)/(?:page)/(\\d+)/?$";s:84:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]";s:57:"(?:events)/(?:tag)/([^/]+)/(?:featured)/(?:page)/(\\d+)/?$";s:95:"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&eventDisplay=list&paged=$matches[2]";s:39:"(?:events)/(?:tag)/([^/]+)/(?:month)/?$";s:67:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month";s:52:"(?:events)/(?:tag)/([^/]+)/(?:month)/(?:featured)/?$";s:78:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&featured=1";s:53:"(?:events)/(?:tag)/([^/]+)/(?:list)/(?:page)/(\\d+)/?$";s:84:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]";s:66:"(?:events)/(?:tag)/([^/]+)/(?:list)/(?:featured)/(?:page)/(\\d+)/?$";s:95:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&featured=1&paged=$matches[2]";s:38:"(?:events)/(?:tag)/([^/]+)/(?:list)/?$";s:66:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list";s:51:"(?:events)/(?:tag)/([^/]+)/(?:list)/(?:featured)/?$";s:77:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&featured=1";s:39:"(?:events)/(?:tag)/([^/]+)/(?:today)/?$";s:65:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day";s:52:"(?:events)/(?:tag)/([^/]+)/(?:today)/(?:featured)/?$";s:76:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&featured=1";s:57:"(?:events)/(?:tag)/([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$";s:87:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:70:"(?:events)/(?:tag)/([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$";s:98:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1";s:43:"(?:events)/(?:tag)/([^/]+)/(\\d{4}-\\d{2})/?$";s:89:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]";s:56:"(?:events)/(?:tag)/([^/]+)/(\\d{4}-\\d{2})/(?:featured)/?$";s:100:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]&featured=1";s:49:"(?:events)/(?:tag)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$";s:87:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:62:"(?:events)/(?:tag)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$";s:98:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1";s:34:"(?:events)/(?:tag)/([^/]+)/feed/?$";s:76:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2";s:47:"(?:events)/(?:tag)/([^/]+)/(?:featured)/feed/?$";s:87:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2&featured=1";s:34:"(?:events)/(?:tag)/([^/]+)/ical/?$";s:55:"index.php?post_type=tribe_events&tag=$matches[1]&ical=1";s:47:"(?:events)/(?:tag)/([^/]+)/(?:featured)/ical/?$";s:66:"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&ical=1";s:59:"(?:events)/(?:tag)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:65:"index.php?post_type=tribe_events&tag=$matches[1]&feed=$matches[2]";s:72:"(?:events)/(?:tag)/([^/]+)/(?:featured)/feed/(feed|rdf|rss|rss2|atom)/?$";s:76:"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&feed=$matches[2]";s:42:"(?:events)/(?:tag)/([^/]+)/(?:featured)/?$";s:59:"index.php?post_type=tribe_events&tag=$matches[1]&featured=1";s:29:"(?:events)/(?:tag)/([^/]+)/?$";s:69:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=default";s:18:"oi_run_log_post/?$";s:35:"index.php?post_type=oi_run_log_post";s:48:"oi_run_log_post/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=oi_run_log_post&feed=$matches[1]";s:43:"oi_run_log_post/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=oi_run_log_post&feed=$matches[1]";s:35:"oi_run_log_post/page/([0-9]{1,})/?$";s:53:"index.php?post_type=oi_run_log_post&paged=$matches[1]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:8:"event/?$";s:32:"index.php?post_type=tribe_events";s:38:"event/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=tribe_events&feed=$matches[1]";s:33:"event/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=tribe_events&feed=$matches[1]";s:25:"event/page/([0-9]{1,})/?$";s:50:"index.php?post_type=tribe_events&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:43:"oi_run_log_post/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"oi_run_log_post/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"oi_run_log_post/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"oi_run_log_post/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"oi_run_log_post/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"oi_run_log_post/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"oi_run_log_post/([^/]+)/embed/?$";s:48:"index.php?oi_run_log_post=$matches[1]&embed=true";s:36:"oi_run_log_post/([^/]+)/trackback/?$";s:42:"index.php?oi_run_log_post=$matches[1]&tb=1";s:56:"oi_run_log_post/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?oi_run_log_post=$matches[1]&feed=$matches[2]";s:51:"oi_run_log_post/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?oi_run_log_post=$matches[1]&feed=$matches[2]";s:44:"oi_run_log_post/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?oi_run_log_post=$matches[1]&paged=$matches[2]";s:51:"oi_run_log_post/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?oi_run_log_post=$matches[1]&cpage=$matches[2]";s:41:"oi_run_log_post/([^/]+)/wc-api(/(.*))?/?$";s:56:"index.php?oi_run_log_post=$matches[1]&wc-api=$matches[3]";s:47:"oi_run_log_post/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:58:"oi_run_log_post/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:40:"oi_run_log_post/([^/]+)(?:/([0-9]+))?/?$";s:54:"index.php?oi_run_log_post=$matches[1]&page=$matches[2]";s:32:"oi_run_log_post/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"oi_run_log_post/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"oi_run_log_post/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"oi_run_log_post/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"oi_run_log_post/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"oi_run_log_post/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"goal/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?oi_goal_taxonomy=$matches[1]&feed=$matches[2]";s:40:"goal/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?oi_goal_taxonomy=$matches[1]&feed=$matches[2]";s:21:"goal/([^/]+)/embed/?$";s:49:"index.php?oi_goal_taxonomy=$matches[1]&embed=true";s:33:"goal/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?oi_goal_taxonomy=$matches[1]&paged=$matches[2]";s:15:"goal/([^/]+)/?$";s:38:"index.php?oi_goal_taxonomy=$matches[1]";s:45:"gear/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?oi_gear_taxonomy=$matches[1]&feed=$matches[2]";s:40:"gear/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?oi_gear_taxonomy=$matches[1]&feed=$matches[2]";s:21:"gear/([^/]+)/embed/?$";s:49:"index.php?oi_gear_taxonomy=$matches[1]&embed=true";s:33:"gear/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?oi_gear_taxonomy=$matches[1]&paged=$matches[2]";s:15:"gear/([^/]+)/?$";s:38:"index.php?oi_gear_taxonomy=$matches[1]";s:42:"wpum_directory/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"wpum_directory/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"wpum_directory/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wpum_directory/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wpum_directory/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"wpum_directory/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"wpum_directory/([^/]+)/embed/?$";s:47:"index.php?wpum_directory=$matches[1]&embed=true";s:35:"wpum_directory/([^/]+)/trackback/?$";s:41:"index.php?wpum_directory=$matches[1]&tb=1";s:43:"wpum_directory/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?wpum_directory=$matches[1]&paged=$matches[2]";s:50:"wpum_directory/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?wpum_directory=$matches[1]&cpage=$matches[2]";s:40:"wpum_directory/([^/]+)/wc-api(/(.*))?/?$";s:55:"index.php?wpum_directory=$matches[1]&wc-api=$matches[3]";s:46:"wpum_directory/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:57:"wpum_directory/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:39:"wpum_directory/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?wpum_directory=$matches[1]&page=$matches[2]";s:31:"wpum_directory/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"wpum_directory/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"wpum_directory/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wpum_directory/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wpum_directory/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"wpum_directory/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"venue/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"venue/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"venue/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"venue/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"venue/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"venue/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"venue/([^/]+)/embed/?$";s:44:"index.php?tribe_venue=$matches[1]&embed=true";s:26:"venue/([^/]+)/trackback/?$";s:38:"index.php?tribe_venue=$matches[1]&tb=1";s:34:"venue/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?tribe_venue=$matches[1]&paged=$matches[2]";s:41:"venue/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?tribe_venue=$matches[1]&cpage=$matches[2]";s:31:"venue/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?tribe_venue=$matches[1]&wc-api=$matches[3]";s:37:"venue/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:48:"venue/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"venue/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?tribe_venue=$matches[1]&page=$matches[2]";s:22:"venue/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"venue/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"venue/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"venue/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"venue/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"venue/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"organizer/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"organizer/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"organizer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"organizer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"organizer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"organizer/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"organizer/([^/]+)/embed/?$";s:48:"index.php?tribe_organizer=$matches[1]&embed=true";s:30:"organizer/([^/]+)/trackback/?$";s:42:"index.php?tribe_organizer=$matches[1]&tb=1";s:38:"organizer/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?tribe_organizer=$matches[1]&paged=$matches[2]";s:45:"organizer/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?tribe_organizer=$matches[1]&cpage=$matches[2]";s:35:"organizer/([^/]+)/wc-api(/(.*))?/?$";s:56:"index.php?tribe_organizer=$matches[1]&wc-api=$matches[3]";s:41:"organizer/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"organizer/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"organizer/([^/]+)(?:/([0-9]+))?/?$";s:54:"index.php?tribe_organizer=$matches[1]&page=$matches[2]";s:26:"organizer/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"organizer/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"organizer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"organizer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"organizer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"organizer/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"event/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"event/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"event/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"event/([^/]+)/embed/?$";s:45:"index.php?tribe_events=$matches[1]&embed=true";s:26:"event/([^/]+)/trackback/?$";s:39:"index.php?tribe_events=$matches[1]&tb=1";s:46:"event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?tribe_events=$matches[1]&feed=$matches[2]";s:41:"event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?tribe_events=$matches[1]&feed=$matches[2]";s:34:"event/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?tribe_events=$matches[1]&paged=$matches[2]";s:41:"event/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?tribe_events=$matches[1]&cpage=$matches[2]";s:31:"event/([^/]+)/wc-api(/(.*))?/?$";s:53:"index.php?tribe_events=$matches[1]&wc-api=$matches[3]";s:37:"event/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:48:"event/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"event/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?tribe_events=$matches[1]&page=$matches[2]";s:22:"event/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"event/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"event/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:54:"events/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]";s:49:"events/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]";s:30:"events/category/(.+?)/embed/?$";s:49:"index.php?tribe_events_cat=$matches[1]&embed=true";s:42:"events/category/(.+?)/page/?([0-9]{1,})/?$";s:56:"index.php?tribe_events_cat=$matches[1]&paged=$matches[2]";s:24:"events/category/(.+?)/?$";s:38:"index.php?tribe_events_cat=$matches[1]";s:41:"deleted_event/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"deleted_event/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"deleted_event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"deleted_event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"deleted_event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"deleted_event/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"deleted_event/([^/]+)/embed/?$";s:46:"index.php?deleted_event=$matches[1]&embed=true";s:34:"deleted_event/([^/]+)/trackback/?$";s:40:"index.php?deleted_event=$matches[1]&tb=1";s:42:"deleted_event/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?deleted_event=$matches[1]&paged=$matches[2]";s:49:"deleted_event/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?deleted_event=$matches[1]&cpage=$matches[2]";s:39:"deleted_event/([^/]+)/wc-api(/(.*))?/?$";s:54:"index.php?deleted_event=$matches[1]&wc-api=$matches[3]";s:45:"deleted_event/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:56:"deleted_event/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"deleted_event/([^/]+)(?:/([0-9]+))?/?$";s:52:"index.php?deleted_event=$matches[1]&page=$matches[2]";s:30:"deleted_event/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"deleted_event/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"deleted_event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"deleted_event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"deleted_event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"deleted_event/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:19:"run-log/run-log.php";i:1;s:43:"the-events-calendar/the-events-calendar.php";i:2;s:27:"woocommerce/woocommerce.php";i:3;s:53:"wp-exclude-from-homepage/wp-exclude-from-homepage.php";i:4;s:35:"wp-user-manager/wp-user-manager.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:69:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/trending-blog/style.css";i:2;s:0:"";}', 'no'),
(40, 'template', 'galway-lite', 'yes'),
(41, 'stylesheet', 'trending-blog', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:19:"run-log/run-log.php";s:27:"oirl_remove_default_options";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:154:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:25:"read_private_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:24:"edit_others_tribe_events";b:1;s:25:"edit_private_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:26:"delete_others_tribe_events";b:1;s:27:"delete_private_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:25:"read_private_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:24:"edit_others_tribe_venues";b:1;s:25:"edit_private_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:26:"delete_others_tribe_venues";b:1;s:27:"delete_private_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:29:"read_private_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:28:"edit_others_tribe_organizers";b:1;s:29:"edit_private_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:30:"delete_others_tribe_organizers";b:1;s:31:"delete_private_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:31:"read_private_aggregator-records";b:1;s:23:"edit_aggregator-records";b:1;s:30:"edit_others_aggregator-records";b:1;s:31:"edit_private_aggregator-records";b:1;s:33:"edit_published_aggregator-records";b:1;s:25:"delete_aggregator-records";b:1;s:32:"delete_others_aggregator-records";b:1;s:33:"delete_private_aggregator-records";b:1;s:35:"delete_published_aggregator-records";b:1;s:26:"publish_aggregator-records";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:74:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:25:"read_private_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:24:"edit_others_tribe_events";b:1;s:25:"edit_private_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:26:"delete_others_tribe_events";b:1;s:27:"delete_private_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:25:"read_private_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:24:"edit_others_tribe_venues";b:1;s:25:"edit_private_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:26:"delete_others_tribe_venues";b:1;s:27:"delete_private_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:29:"read_private_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:28:"edit_others_tribe_organizers";b:1;s:29:"edit_private_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:30:"delete_others_tribe_organizers";b:1;s:31:"delete_private_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:31:"read_private_aggregator-records";b:1;s:23:"edit_aggregator-records";b:1;s:30:"edit_others_aggregator-records";b:1;s:31:"edit_private_aggregator-records";b:1;s:33:"edit_published_aggregator-records";b:1;s:25:"delete_aggregator-records";b:1;s:32:"delete_others_aggregator-records";b:1;s:33:"delete_private_aggregator-records";b:1;s:35:"delete_published_aggregator-records";b:1;s:26:"publish_aggregator-records";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:30:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:17:"edit_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:17:"edit_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:21:"edit_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:23:"edit_aggregator-records";b:1;s:33:"edit_published_aggregator-records";b:1;s:25:"delete_aggregator-records";b:1;s:35:"delete_published_aggregator-records";b:1;s:26:"publish_aggregator-records";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:13:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:17:"edit_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:17:"edit_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:21:"edit_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:23:"edit_aggregator-records";b:1;s:25:"delete_aggregator-records";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:26:"tribe-events-list-widget-2";}s:10:"slide-menu";a:2:{i:0;s:38:"woocommerce_recently_viewed_products-2";i:1;s:24:"wpum-registration-form-2";}s:14:"footer-col-one";a:1:{i:0;s:25:"woocommerce_widget_cart-2";}s:14:"footer-col-two";a:0:{}s:16:"footer-col-three";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:"nav_menu";i:16;}s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:15:{i:1540151523;a:1:{s:39:"tribe_aggregator_process_insert_records";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:17:"tribe-every15mins";s:4:"args";a:0:{}s:8:"interval";i:900;}}}i:1540153518;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1540155428;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"f895dc1f335924ef681df47ba50790a4";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:108;}}}}i:1540166400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1540171948;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1540190270;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1540192846;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1540192865;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1540192866;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1540193548;a:1:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1540193558;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1540204348;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1540228921;a:1:{s:24:"tribe_common_log_cleanup";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1541462400;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1539983300;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:7:{i:0;s:10:"nav_menu-2";i:1;s:8:"search-2";i:2;s:14:"recent-posts-2";i:3;s:17:"recent-comments-2";i:4;s:10:"archives-2";i:5;s:12:"categories-2";i:6;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"4.9";s:12:"last_checked";i:1540149648;}', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(130, 'woocommerce_store_address', 'Kampus UI', 'yes'),
(131, 'woocommerce_store_address_2', 'Salemba', 'yes'),
(132, 'woocommerce_store_city', 'Jakarta', 'yes'),
(133, 'woocommerce_default_country', 'ID:JK', 'yes'),
(134, 'woocommerce_store_postcode', '10430', 'yes'),
(135, 'woocommerce_allowed_countries', 'all', 'yes'),
(136, 'woocommerce_all_except_countries', '', 'yes'),
(137, 'woocommerce_specific_allowed_countries', '', 'yes'),
(138, 'woocommerce_ship_to_countries', '', 'yes'),
(139, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(140, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(141, 'woocommerce_calc_taxes', 'no', 'yes'),
(142, 'woocommerce_enable_coupons', 'yes', 'yes'),
(143, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(144, 'woocommerce_currency', 'IDR', 'yes'),
(145, 'woocommerce_currency_pos', 'left', 'yes'),
(146, 'woocommerce_price_thousand_sep', ',', 'yes'),
(147, 'woocommerce_price_decimal_sep', '.', 'yes'),
(148, 'woocommerce_price_num_decimals', '2', 'yes'),
(149, 'woocommerce_shop_page_id', '5', 'yes'),
(150, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(151, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(152, 'woocommerce_weight_unit', 'kg', 'yes'),
(153, 'woocommerce_dimension_unit', 'cm', 'yes'),
(154, 'woocommerce_enable_reviews', 'yes', 'yes'),
(155, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(156, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(157, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(158, 'woocommerce_review_rating_required', 'yes', 'no'),
(159, 'woocommerce_manage_stock', 'yes', 'yes'),
(160, 'woocommerce_hold_stock_minutes', '60', 'no'),
(161, 'woocommerce_notify_low_stock', 'yes', 'no'),
(162, 'woocommerce_notify_no_stock', 'yes', 'no'),
(163, 'woocommerce_stock_email_recipient', 'reginiqbalmareza@gmail.com', 'no'),
(164, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(165, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(166, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(167, 'woocommerce_stock_format', '', 'yes'),
(168, 'woocommerce_file_download_method', 'force', 'no'),
(169, 'woocommerce_downloads_require_login', 'no', 'no'),
(170, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(171, 'woocommerce_prices_include_tax', 'no', 'yes'),
(172, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(173, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(174, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(175, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(176, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(177, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(178, 'woocommerce_price_display_suffix', '', 'yes'),
(179, 'woocommerce_tax_total_display', 'itemized', 'no'),
(180, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(181, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(182, 'woocommerce_ship_to_destination', 'billing', 'no'),
(183, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(184, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(185, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(186, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(187, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(188, 'woocommerce_registration_generate_username', 'yes', 'no'),
(189, 'woocommerce_registration_generate_password', 'yes', 'no'),
(190, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(191, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(192, 'wp_page_for_privacy_policy', '', 'yes'),
(193, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(194, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(195, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(196, 'woocommerce_trash_pending_orders', '', 'no'),
(197, 'woocommerce_trash_failed_orders', '', 'no'),
(198, 'woocommerce_trash_cancelled_orders', '', 'no'),
(199, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(200, 'woocommerce_email_from_name', 'MTI Runners', 'no'),
(201, 'woocommerce_email_from_address', 'reginiqbalmareza@gmail.com', 'no'),
(202, 'woocommerce_email_header_image', '', 'no'),
(203, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(204, 'woocommerce_email_base_color', '#96588a', 'no'),
(205, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(206, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(207, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(208, 'woocommerce_cart_page_id', '6', 'yes'),
(209, 'woocommerce_checkout_page_id', '7', 'yes'),
(210, 'woocommerce_myaccount_page_id', '8', 'yes'),
(211, 'woocommerce_terms_page_id', '', 'no'),
(212, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(213, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(214, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(215, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(216, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(217, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(218, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(219, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(220, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(221, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(222, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(223, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(224, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(225, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(226, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(227, 'woocommerce_api_enabled', 'no', 'yes'),
(228, 'woocommerce_single_image_width', '600', 'yes'),
(229, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(230, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(231, 'woocommerce_demo_store', 'no', 'no'),
(232, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(233, 'current_theme_supports_woocommerce', 'no', 'yes'),
(234, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(235, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(237, 'default_product_cat', '15', 'yes'),
(240, 'woocommerce_version', '3.4.6', 'yes'),
(241, 'woocommerce_db_version', '3.4.6', 'yes'),
(242, 'recently_activated', 'a:0:{}', 'yes'),
(243, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:"no_secure_connection";}', 'yes'),
(244, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(245, 'widget_woocommerce_widget_cart', 'a:2:{i:2;a:2:{s:5:"title";s:4:"Cart";s:13:"hide_if_empty";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(246, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(247, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(248, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(249, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(251, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(252, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(253, 'widget_woocommerce_recently_viewed_products', 'a:2:{i:2;a:2:{s:5:"title";s:24:"Recently Viewed Products";s:6:"number";i:10;}s:12:"_multiwidget";i:1;}', 'yes'),
(254, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(256, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(264, '_transient_timeout_external_ip_address_127.0.0.1', '1540452760', 'no'),
(265, '_transient_external_ip_address_127.0.0.1', '0.0.0.0', 'no'),
(266, 'woocommerce_product_type', 'both', 'yes'),
(267, 'woocommerce_sell_in_person', '1', 'yes'),
(268, 'woocommerce_allow_tracking', 'no', 'yes'),
(270, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:"reroute_requests";b:0;s:5:"email";s:26:"reginiqbalmareza@gmail.com";}', 'yes'),
(271, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(272, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(273, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(274, 'woocommerce_admin_notice_ppec_paypal_install_error', 'WooCommerce PayPal Express Checkout Gateway could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href="https://wordpress.org/support/">support forums</a>.). <a href="http://localhost:10021/mti-runners/wp-admin/index.php?wc-install-plugin-redirect=woocommerce-gateway-paypal-express-checkout">Please install it manually by clicking here.</a>', 'yes'),
(280, '_transient_shipping-transient-version', '1539848040', 'yes'),
(281, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:"title";s:9:"Flat rate";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:5:"10000";}', 'yes'),
(282, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(284, 'woocommerce_admin_notice_storefront_install_error', 'storefront could not be installed (Unable to connect to the filesystem. Please confirm your credentials.). <a href="http://localhost:10021/mti-runners/wp-admin/update.php?action=install-theme&#038;theme=storefront&#038;_wpnonce=2d1b2728e5">Please install it manually by clicking here.</a>', 'yes'),
(285, 'woocommerce_admin_notice_mailchimp-for-woocommerce_install_error', 'MailChimp for WooCommerce could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href="https://wordpress.org/support/">support forums</a>.). <a href="http://localhost:10021/mti-runners/wp-admin/index.php?wc-install-plugin-redirect=mailchimp-for-woocommerce">Please install it manually by clicking here.</a>', 'yes'),
(290, '_transient_timeout_external_ip_address_::1', '1540452909', 'no'),
(291, '_transient_external_ip_address_::1', '0.0.0.0', 'no'),
(307, 'theme_mods_shop-isle-pro', 'a:5:{s:16:"shop_isle_slider";s:685:"[{"image_url":"http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/themes\\/shop-isle-pro\\/assets\\/images\\/slide1.jpg","link":"#","text":"Shop Isle","subtext":"WooCommerce Theme","label":"Read more","id":"shop_isle_5bc8447e26b8f"},{"image_url":"http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/themes\\/shop-isle-pro\\/assets\\/images\\/slide2.jpg","link":"#","text":"Shop Isle","subtext":"WooCommerce Theme","label":"Read more","id":"shop_isle_5bc8447e26b8f"},{"image_url":"http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/themes\\/shop-isle-pro\\/assets\\/images\\/slide3.jpg","link":"#","text":"Shop Isle","subtext":"WooCommerce Theme","label":"Read more","id":"shop_isle_5bc8447e26b8f"}]";s:17:"shop_isle_banners";s:481:"[{"image_url":"http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/themes\\/shop-isle-pro\\/assets\\/images\\/banner1.jpg","link":"#","id":"shop_isle_5bc8447e303e7"},{"image_url":"http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/themes\\/shop-isle-pro\\/assets\\/images\\/banner2.jpg","link":"#","id":"shop_isle_5bc8447e303e7"},{"image_url":"http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/themes\\/shop-isle-pro\\/assets\\/images\\/banner3.jpg","link":"#","id":"shop_isle_5bc8447e303e7"}]";s:17:"shop_isle_socials";s:297:"[{"icon_value":"social_facebook","link":"#","id":"shop_isle_5bc8447e4193f"},{"icon_value":"social_twitter","link":"#","id":"shop_isle_5bc8447e4193f"},{"icon_value":"social_dribbble","link":"#","id":"shop_isle_5bc8447e4193f"},{"icon_value":"social_skype","link":"#","id":"shop_isle_5bc8447e4193f"}]";s:22:"shop_isle_team_members";s:1138:"[{"image_url":"http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/themes\\/shop-isle-pro\\/assets\\/images\\/team1.jpg","text":"Eva Bean","subtext":"Developer","description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.","id":"shop_isle_5bc8447e5f5cf"},{"image_url":"http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/themes\\/shop-isle-pro\\/assets\\/images\\/team2.jpg","text":"Maria Woods","subtext":"Designer","description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.","id":"shop_isle_5bc8447e5f5cf"},{"image_url":"http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/themes\\/shop-isle-pro\\/assets\\/images\\/team3.jpg","text":"Booby Stone","subtext":"Director","description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.","id":"shop_isle_5bc8447e5f5cf"},{"image_url":"http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/themes\\/shop-isle-pro\\/assets\\/images\\/team4.jpg","text":"Anna Neaga","subtext":"Art Director","description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.","id":"shop_isle_5bc8447e5f5cf"}]";s:20:"shop_isle_advantages";s:623:"[{"icon_value":"icon_lightbulb","text":"Ideas and concepts","subtext":"Lorem ipsum dolor sit amet, consectetur adipiscing elit.","id":"shop_isle_5bc8447e7c6a7"},{"icon_value":"icon_tools","text":"Designs & interfaces","subtext":"Lorem ipsum dolor sit amet, consectetur adipiscing elit.","id":"shop_isle_5bc8447e7c6a7"},{"icon_value":"icon_cogs","text":"Highly customizable","subtext":"Lorem ipsum dolor sit amet, consectetur adipiscing elit.","id":"shop_isle_5bc8447e7c6a7"},{"icon_value":"icon_like","text":"Easy to use","subtext":"Lorem ipsum dolor sit amet, consectetur adipiscing elit.","id":"shop_isle_5bc8447e7c6a7"}]";}', 'yes'),
(308, 'shop_isle_migrate_translation', '1', 'yes'),
(324, 'wpum_activation_date', '1539929024', 'yes'),
(325, 'wpum_settings', 'a:15:{s:10:"login_page";a:1:{i:0;s:2:"10";}s:22:"password_recovery_page";a:1:{i:0;s:2:"11";}s:17:"registration_page";a:1:{i:0;s:2:"12";}s:12:"account_page";a:1:{i:0;s:2:"13";}s:12:"profile_page";a:1:{i:0;s:2:"14";}s:12:"login_method";s:14:"username_email";s:14:"register_roles";a:3:{i:0;s:8:"customer";i:1;s:6:"author";i:2;s:6:"editor";}s:9:"from_name";s:11:"MTI Runners";s:10:"from_email";s:26:"reginiqbalmareza@gmail.com";s:14:"email_template";s:7:"default";s:24:"guests_can_view_profiles";b:1;s:25:"members_can_view_profiles";b:1;s:14:"login_redirect";a:1:{i:0;s:1:"8";}s:15:"logout_redirect";a:1:{i:0;s:1:"2";}s:21:"registration_redirect";a:1:{i:0;s:2:"13";}}', 'yes'),
(326, 'wpum_permalink', 'username', 'yes'),
(327, 'v202_upgrade', '1', 'yes'),
(328, 'wpum_email', 'a:2:{s:25:"registration_confirmation";a:4:{s:5:"title";s:21:"Welcome to {sitename}";s:6:"footer";s:34:"<a href="{siteurl}">{sitename}</a>";s:7:"content";s:264:"<p>Hello {username}, and welcome to {sitename}. We’re thrilled to have you on board. </p>\n<p>For reference, here''s your login information:</p>\n<p>Username: {username}<br />Login page: {login_page_url}<br />Password: {password}</p>\n<p>Thanks,<br />{sitename}</p>";s:7:"subject";s:21:"Welcome to {sitename}";}s:25:"password_recovery_request";a:4:{s:7:"subject";s:30:"Reset your {sitename} password";s:5:"title";s:30:"Reset your {sitename} password";s:7:"content";s:303:"<p>Hello {username},</p>\n<p>You are receiving this message because you or somebody else has attempted to reset your password on {sitename}.</p>\n<p>If this was a mistake, just ignore this email and nothing will happen.</p>\n<p>To reset your password, visit the following address:</p>\n<p>{recovery_url}</p>";s:6:"footer";s:34:"<a href="{siteurl}">{sitename}</a>";}}', 'yes'),
(329, 'wpum_version', '2.0.7', 'yes'),
(334, 'widget_wpum-login-form', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(335, 'widget_wpum-password-recovery-form', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(336, 'widget_wpum-recent-users', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(337, 'widget_wpum-registration-form', 'a:2:{i:2;a:3:{s:5:"title";s:8:"Register";s:10:"login_link";s:1:"1";s:8:"psw_link";s:1:"1";}s:12:"_multiwidget";i:1;}', 'yes'),
(338, 'wpum_setup_is_complete', '1', 'yes'),
(352, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(357, '_transient_timeout_wc_shipping_method_count_1_1539848040', '1542523992', 'no'),
(358, '_transient_wc_shipping_method_count_1_1539848040', '2', 'no'),
(391, '_transient_product_query-transient-version', '1539987149', 'yes'),
(392, '_transient_product-transient-version', '1539987149', 'yes'),
(413, '_transient_twentyseventeen_categories', '1', 'yes'),
(424, 'portum_backup_settings', '24', 'yes'),
(425, 'epsilon_framework_notices', 'a:1:{i:0;s:20:"notification_testing";}', 'yes'),
(426, 'theme_mods_portum', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1539985815;s:4:"data";a:10:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:7:{i:0;s:10:"nav_menu-2";i:1;s:8:"search-2";i:2;s:14:"recent-posts-2";i:3;s:17:"recent-comments-2";i:4;s:10:"archives-2";i:5;s:12:"categories-2";i:6;s:6:"meta-2";}s:16:"header-sidebar-1";a:0:{}s:16:"header-sidebar-2";a:0:{}s:16:"header-sidebar-3";a:0:{}s:16:"header-sidebar-4";a:0:{}s:16:"footer-sidebar-1";a:0:{}s:16:"footer-sidebar-2";a:0:{}s:16:"footer-sidebar-3";a:0:{}s:16:"footer-sidebar-4";a:0:{}}}}', 'yes'),
(429, 'current_theme', 'Trending Blog', 'yes'),
(430, 'theme_switched', '', 'yes'),
(431, 'theme_switched_via_customizer', '', 'yes'),
(432, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(455, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(471, 'widget_galway-popular-sidebar-layout', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(472, 'widget_galway-author-layout', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(473, 'widget_galway-social-layout', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(474, 'theme_mods_galway-lite', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1539985860;s:4:"data";a:10:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:7:{i:0;s:10:"nav_menu-2";i:1;s:8:"search-2";i:2;s:14:"recent-posts-2";i:3;s:17:"recent-comments-2";i:4;s:10:"archives-2";i:5;s:12:"categories-2";i:6;s:6:"meta-2";}s:16:"header-sidebar-1";a:0:{}s:16:"header-sidebar-2";a:0:{}s:16:"header-sidebar-3";a:0:{}s:16:"header-sidebar-4";a:0:{}s:16:"footer-sidebar-1";a:0:{}s:16:"footer-sidebar-2";a:0:{}s:16:"footer-sidebar-3";a:0:{}s:16:"footer-sidebar-4";a:0:{}}}}', 'yes'),
(477, 'theme_switch_menu_locations', '', 'yes'),
(479, 'theme_mods_trending-blog', 'a:9:{s:18:"custom_css_post_id";i:48;s:18:"nav_menu_locations";a:3:{s:3:"top";i:16;s:7:"primary";i:24;s:6:"social";i:0;}s:15:"breadcrumb_type";s:8:"disabled";s:18:"select_slider_from";s:13:"from-category";s:24:"select_page_for_slider_1";i:10;s:26:"select_category_for_slider";i:0;s:13:"global_layout";s:13:"right-sidebar";s:22:"homepage_layout_option";s:10:"full-width";s:16:"enable_preloader";b:1;}', 'yes'),
(501, 'product_cat_children', 'a:0:{}', 'yes'),
(502, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:1;s:3:"all";i:1;s:8:"approved";s:1:"1";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(503, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(509, '_transient_timeout_wc_low_stock_count', '1542579300', 'no'),
(510, '_transient_wc_low_stock_count', '0', 'no'),
(511, '_transient_timeout_wc_outofstock_count', '1542579300', 'no'),
(512, '_transient_wc_outofstock_count', '0', 'no'),
(513, '_transient_timeout_wc_term_counts', '1542579555', 'no'),
(514, '_transient_wc_term_counts', 'a:3:{i:21;s:1:"1";i:22;s:1:"1";i:23;s:1:"1";}', 'no'),
(559, '_transient_timeout_wpum_get_roles', '1540237374', 'no'),
(560, '_transient_wpum_get_roles', 'a:7:{i:0;a:2:{s:5:"value";s:13:"administrator";s:5:"label";s:13:"Administrator";}i:1;a:2:{s:5:"value";s:6:"editor";s:5:"label";s:6:"Editor";}i:2;a:2:{s:5:"value";s:6:"author";s:5:"label";s:6:"Author";}i:3;a:2:{s:5:"value";s:11:"contributor";s:5:"label";s:11:"Contributor";}i:4;a:2:{s:5:"value";s:10:"subscriber";s:5:"label";s:10:"Subscriber";}i:5;a:2:{s:5:"value";s:8:"customer";s:5:"label";s:8:"Customer";}i:6;a:2:{s:5:"value";s:12:"shop_manager";s:5:"label";s:12:"Shop manager";}}', 'no'),
(568, '_transient_timeout_wc_report_sales_by_date', '1540234668', 'no'),
(569, '_transient_wc_report_sales_by_date', 'a:40:{s:32:"d1561ffe3320de36e85c5b42d4b999d5";a:0:{}s:32:"6b994e2c4eecf48da3af305b22c20728";a:0:{}s:32:"9abd443b56a1fb65c59501d000637b61";a:0:{}s:32:"39287958554e692ee4e5a0d6fe95fbb4";N;s:32:"7ec7c280991b24c233ab54a82c36767e";a:0:{}s:32:"89a2bb33c4a2140c29abbe4191b59ed3";a:0:{}s:32:"3498112d2bb91f5fb8cda9f2a76a5cfa";a:0:{}s:32:"e254ff9d95c86aabea73fd539bcc69f0";a:0:{}s:32:"582a7e0542ab043bec3d3661c0f5a1fd";a:0:{}s:32:"ac6550318687cbca051c964599101311";a:0:{}s:32:"b42445a3163cec58a76919c6df2b8110";a:0:{}s:32:"b285f680b9aa1ab70050bf7b7902cc0e";N;s:32:"7e41c4edf84a3c779502ecfb31becfd1";a:0:{}s:32:"12c8d6618aa498c1929cd60ff890c2cf";a:0:{}s:32:"cf38594000080c3018b92ca7ba1bde9c";a:0:{}s:32:"cb350b792e1154295f4b278b4e320938";a:0:{}s:32:"474cb56dd8a46e544f47a81e1e2be313";a:0:{}s:32:"dbc46c1282636db15a290fa88efd0700";a:0:{}s:32:"10da075c2b6f64f8ea6c5f505b5b818a";a:0:{}s:32:"57d8326995264e544b1a5051319da08b";N;s:32:"69594741d56019e9441cd73ee693f8ef";a:0:{}s:32:"b5de2ffbedb9e881a281113b1a1bdd29";a:0:{}s:32:"a6c458761c2877e8bdc62d50ed84284c";a:0:{}s:32:"82110940412fdf44cdb6443447f21884";a:0:{}s:32:"d39916d948e8dd54d6481e90e98e412f";a:0:{}s:32:"604d9d684e629b12acaa9b4b9ea5b306";a:0:{}s:32:"ab3f7b1a83a849e6e850eee05e40983c";a:0:{}s:32:"70f1e977383f8e96433cac5d6add1302";N;s:32:"d8772d6fafae63c911f4d4561d7d6294";a:0:{}s:32:"0cfe422a640918c5de5bcd941346a2ad";a:0:{}s:32:"29fc9eeeb7a8ae329d3fc201c6642915";a:0:{}s:32:"47519dbe9422358d5c40b5e97bd46479";a:0:{}s:32:"c10c9cfdce9aeeca6004dc5bbdac4233";a:0:{}s:32:"a0eb133769bcb306f670895e64466a9e";a:0:{}s:32:"e516a8cf0b4a2698636a2071a7c6b851";a:0:{}s:32:"279df79c642f522bcdaa25aae5cc2c14";N;s:32:"be639b3a6eae4419100fabc61a9d942f";a:0:{}s:32:"2d028c40ea0cb36c08fd4405062f0886";a:0:{}s:32:"b43e311672e11b1f47b6f921bad7c9cb";a:0:{}s:32:"49f54f51c097a1dcc04d963c1ccf0d07";a:0:{}}', 'no'),
(570, '_transient_timeout_wc_admin_report', '1540225681', 'no'),
(571, '_transient_wc_admin_report', 'a:1:{s:32:"0d865ae31619110d5a4c6083f86d4796";a:0:{}}', 'no'),
(572, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1540182489', 'no'),
(573, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: Failed to connect to wordpress.org port 80: Connection refused</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: Failed to connect to planet.wordpress.org port 443: Connection refused</p></div>', 'no'),
(590, '_transient_timeout__woocommerce_helper_updates', '1540183528', 'no'),
(591, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1540140328;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(592, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1540149654;}', 'no'),
(597, '_transient_timeout_plugin_slugs', '1540234643', 'no'),
(598, '_transient_plugin_slugs', 'a:7:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:19:"run-log/run-log.php";i:3;s:43:"the-events-calendar/the-events-calendar.php";i:4;s:27:"woocommerce/woocommerce.php";i:5;s:53:"wp-exclude-from-homepage/wp-exclude-from-homepage.php";i:6;s:35:"wp-user-manager/wp-user-manager.php";}', 'no'),
(601, 'oi-run-log-options', 'a:7:{s:13:"distance_unit";s:2:"km";s:13:"pace_or_speed";s:4:"pace";s:11:"display_pos";s:3:"top";s:18:"display_on_excerpt";i:0;s:11:"style_theme";s:5:"light";s:10:"gear_links";b:1;s:10:"goal_links";b:1;}', 'yes'),
(602, 'widget_oirl_total_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(609, 'tribe_events_calendar_options', 'a:9:{s:14:"schema-version";s:8:"4.6.24.1";s:27:"recurring_events_are_hidden";s:6:"hidden";s:21:"previous_ecp_versions";a:1:{i:0;s:1:"0";}s:18:"latest_ecp_version";s:8:"4.6.24.1";s:39:"last-update-message-the-events-calendar";s:8:"4.6.24.1";s:13:"earliest_date";s:19:"2018-10-30 00:00:00";s:21:"earliest_date_markers";a:1:{i:0;s:2:"87";}s:11:"latest_date";s:19:"2018-10-31 23:59:59";s:19:"latest_date_markers";a:1:{i:0;s:2:"92";}}', 'yes'),
(610, 'tribe_last_save_post', '1540150974', 'yes'),
(611, 'widget_tribe-events-list-widget', 'a:2:{i:2;a:5:{s:5:"title";s:15:"Upcoming Events";s:5:"limit";s:1:"5";s:18:"no_upcoming_events";b:0;s:20:"featured_events_only";b:0;s:13:"jsonld_enable";i:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(613, '_transient_timeout_tribe_aggregator_services_list', '1540228935', 'no'),
(614, '_transient_tribe_aggregator_services_list', 'a:1:{s:6:"origin";a:1:{i:0;O:8:"stdClass":2:{s:2:"id";s:3:"csv";s:4:"name";s:8:"CSV File";}}}', 'no'),
(616, 'tribe_events_cat_children', 'a:0:{}', 'yes'),
(619, '_transient_timeout_d40e19df1eaad8ae7d7f787a8714a964', '1540146534', 'no'),
(620, '_transient_d40e19df1eaad8ae7d7f787a8714a964', 'a:1:{i:0;O:8:"stdClass":3:{s:2:"ID";s:2:"87";s:14:"EventStartDate";s:19:"2018-10-30 00:00:00";s:12:"EventEndDate";s:19:"2018-10-30 23:59:59";}}', 'no'),
(621, '_transient_timeout_1582ddd037296583986ebe7b87c2e9e1', '1540146534', 'no'),
(622, '_transient_1582ddd037296583986ebe7b87c2e9e1', '<script type="application/ld+json">\r\n[{"@context":"http://schema.org","@type":"Event","name":"Lari Dari Tanggung Jawab","description":"&lt;p&gt;Kuy kita lari bareng dari tanggung jawab kita, bebas sebebas-bebasnya!&lt;/p&gt;\\\\n","image":"http://localhost:10021/mti-runners/wp-content/uploads/2018/10/HAPPY.jpg","url":"http://localhost:10021/mti-runners/event/lari-dari-tanggung-jawab/","startDate":"2018-10-30T00:00:00+00:00","endDate":"2018-10-30T23:59:59+00:00","location":{"@type":"Place","name":"Kampus UI","description":"","url":false,"address":{"@type":"PostalAddress","streetAddress":"Salemba","addressLocality":"Jakarta","addressCountry":"Indonesia"},"telephone":"","sameAs":""},"organizer":{"@type":"Person","name":"Serikat Budak Korporat","description":"","url":false,"telephone":"","email":"","sameAs":""}}]\r\n</script>', 'no'),
(623, '_transient_timeout_b28dc127103cb788eec4d5994f31c9e4', '1540146535', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(624, '_transient_b28dc127103cb788eec4d5994f31c9e4', '\n<div id="tribe-events-content" class="tribe-events-month">\n\n	<!-- Notices -->\n	\n	<!-- Month Header -->\n		<div id="tribe-events-header"  data-title="Events for October 2018 &#8211; MTI Runners" data-viewtitle="Events for October 2018" data-view="month" data-date="2018-10" data-baseurl="http://localhost:10021/mti-runners/events/month/">\n\n		<!-- Header Navigation -->\n		\n\n<nav class="tribe-events-nav-pagination" aria-label="Calendar Month Navigation">\n	<ul class="tribe-events-sub-nav">\n		<li class="tribe-events-nav-previous">\n					</li>\n		<!-- .tribe-events-nav-previous -->\n		<li class="tribe-events-nav-next">\n					</li>\n		<!-- .tribe-events-nav-next -->\n	</ul><!-- .tribe-events-sub-nav -->\n</nav>\n\n	</div>\n	<!-- #tribe-events-header -->\n	\n	<!-- Month Grid -->\n	\n\n\n	<h2 class="tribe-events-visuallyhidden">Calendar of Events</h2>\n\n	<table class="tribe-events-calendar">\n		<caption class="tribe-events-visuallyhidden">Calendar of Events</caption>\n		<thead>\n		<tr>\n							<th id="tribe-events-monday" title="Monday" data-day-abbr="Mon">Monday</th>\n							<th id="tribe-events-tuesday" title="Tuesday" data-day-abbr="Tue">Tuesday</th>\n							<th id="tribe-events-wednesday" title="Wednesday" data-day-abbr="Wed">Wednesday</th>\n							<th id="tribe-events-thursday" title="Thursday" data-day-abbr="Thu">Thursday</th>\n							<th id="tribe-events-friday" title="Friday" data-day-abbr="Fri">Friday</th>\n							<th id="tribe-events-saturday" title="Saturday" data-day-abbr="Sat">Saturday</th>\n							<th id="tribe-events-sunday" title="Sunday" data-day-abbr="Sun">Sunday</th>\n					</tr>\n		</thead>\n		<tbody>\n		<tr>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-01"\n				data-day="2018-10-01"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 1"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-1-0">\n\n			1	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-02"\n				data-day="2018-10-02"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 2"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-2-0">\n\n			2	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-03"\n				data-day="2018-10-03"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 3"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-3-0">\n\n			3	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-04"\n				data-day="2018-10-04"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 4"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-4-0">\n\n			4	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-05 tribe-events-right"\n				data-day="2018-10-05"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 5"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-5-0">\n\n			5	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-06 tribe-events-right"\n				data-day="2018-10-06"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 6"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-6-0">\n\n			6	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-07 tribe-events-right"\n				data-day="2018-10-07"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 7"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-7-0">\n\n			7	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n								</tr>\n		<tr>\n			\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-08"\n				data-day="2018-10-08"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 8"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-8-0">\n\n			8	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-09"\n				data-day="2018-10-09"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 9"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-9-0">\n\n			9	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-10"\n				data-day="2018-10-10"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 10"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-10-0">\n\n			10	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-11"\n				data-day="2018-10-11"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 11"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-11-0">\n\n			11	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-12 tribe-events-right"\n				data-day="2018-10-12"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 12"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-12-0">\n\n			12	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-13 tribe-events-right"\n				data-day="2018-10-13"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 13"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-13-0">\n\n			13	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-14 tribe-events-right"\n				data-day="2018-10-14"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 14"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-14-0">\n\n			14	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n								</tr>\n		<tr>\n			\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-15"\n				data-day="2018-10-15"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 15"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-15-0">\n\n			15	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-16"\n				data-day="2018-10-16"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 16"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-16-0">\n\n			16	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-17"\n				data-day="2018-10-17"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 17"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-17-0">\n\n			17	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-18"\n				data-day="2018-10-18"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 18"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-18-0">\n\n			18	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-19 tribe-events-right"\n				data-day="2018-10-19"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 19"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-19-0">\n\n			19	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-20 tribe-events-right"\n				data-day="2018-10-20"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 20"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-20-0">\n\n			20	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-present mobile-trigger tribe-event-day-21 tribe-events-right"\n				data-day="2018-10-21"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 21"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-21-0">\n\n			21	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n								</tr>\n		<tr>\n			\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-22"\n				data-day="2018-10-22"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 22"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-22-0">\n\n			22	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-23"\n				data-day="2018-10-23"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 23"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-23-0">\n\n			23	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-24"\n				data-day="2018-10-24"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 24"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-24-0">\n\n			24	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-25"\n				data-day="2018-10-25"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 25"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-25-0">\n\n			25	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-26 tribe-events-right"\n				data-day="2018-10-26"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 26"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-26-0">\n\n			26	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-27 tribe-events-right"\n				data-day="2018-10-27"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 27"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-27-0">\n\n			27	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-28 tribe-events-right"\n				data-day="2018-10-28"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 28"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-28-0">\n\n			28	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n								</tr>\n		<tr>\n			\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-29"\n				data-day="2018-10-29"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 29"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-29-0">\n\n			29	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future tribe-events-has-events mobile-trigger tribe-event-day-30"\n				data-day="2018-10-30"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 30"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-30-0">\n\n			30	\n</div>\n\n<!-- Events List -->\n	\n<div id="tribe-events-event-87-2018-10-30" class="tribe-events-category-city-running post-87 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-city-running cat_city-running tribe-events-venue-90 tribe-events-organizer-91 tribe-events-last" data-tribejson=''{&quot;i18n&quot;:{&quot;find_out_more&quot;:&quot;Find out more \\u00bb&quot;,&quot;for_date&quot;:&quot;Events for&quot;},&quot;eventId&quot;:&quot;87-2018-10-30&quot;,&quot;title&quot;:&quot;Lari Dari Tanggung Jawab&quot;,&quot;permalink&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/event\\/lari-dari-tanggung-jawab\\/&quot;,&quot;imageSrc&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/uploads\\/2018\\/10\\/HAPPY-1024x519.jpg&quot;,&quot;dateDisplay&quot;:&quot;October 30&quot;,&quot;imageTooltipSrc&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/uploads\\/2018\\/10\\/HAPPY-300x152.jpg&quot;,&quot;excerpt&quot;:&quot;&lt;p&gt;Kuy kita lari bareng dari tanggung jawab kita, bebas sebebas-bebasnya!&lt;\\/p&gt;&quot;,&quot;categoryClasses&quot;:&quot;tribe-events-category-city-running post-87 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-city-running cat_city-running tribe-events-venue-90 tribe-events-organizer-91 tribe-events-last&quot;,&quot;startTime&quot;:&quot;October 30&quot;,&quot;endTime&quot;:&quot;October 30&quot;}''>\n	<h3 class="tribe-events-month-event-title"><a href="http://localhost:10021/mti-runners/event/lari-dari-tanggung-jawab/" class="url">Lari Dari Tanggung Jawab</a></h3>\n</div><!-- #tribe-events-event-# -->\n\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-31"\n				data-day="2018-10-31"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 31"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-31-0">\n\n			31	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-othermonth tribe-events-future mobile-trigger tribe-event-day-01"\n				data-day="2018-11-01"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"November 1"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-1-1">\n\n			1	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-othermonth tribe-events-future mobile-trigger tribe-event-day-02 tribe-events-right"\n				data-day="2018-11-02"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"November 2"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-2-1">\n\n			2	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-othermonth tribe-events-future mobile-trigger tribe-event-day-03 tribe-events-right"\n				data-day="2018-11-03"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"November 3"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-3-1">\n\n			3	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-othermonth tribe-events-future mobile-trigger tribe-event-day-04 tribe-events-right"\n				data-day="2018-11-04"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"November 4"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-4-1">\n\n			4	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n					</tr>\n		</tbody>\n	</table><!-- .tribe-events-calendar -->\n\n	<!-- Month Footer -->\n		<div id="tribe-events-footer">\n\n		<!-- Footer Navigation -->\n				\n\n<nav class="tribe-events-nav-pagination" aria-label="Calendar Month Navigation">\n	<ul class="tribe-events-sub-nav">\n		<li class="tribe-events-nav-previous">\n					</li>\n		<!-- .tribe-events-nav-previous -->\n		<li class="tribe-events-nav-next">\n					</li>\n		<!-- .tribe-events-nav-next -->\n	</ul><!-- .tribe-events-sub-nav -->\n</nav>\n		\n	</div>\n	<!-- #tribe-events-footer -->\n	<a class="tribe-events-ical tribe-events-button" title="Use this to share calendar data with Google Calendar, Apple iCal and other compatible apps" href="http://localhost:10021/mti-runners/events/?ical=1">+ Export Events</a>\n	\n<script type="text/html" id="tribe_tmpl_month_mobile_day_header">\n	<div class="tribe-mobile-day" data-day="[[=date]]">[[ if(has_events) { ]]\n		<h3 class="tribe-mobile-day-heading">[[=i18n.for_date]] <span>[[=raw date_name]]<\\/span><\\/h3>[[ } ]]\n	<\\/div>\n</script>\n\n<script type="text/html" id="tribe_tmpl_month_mobile">\n	<div class="frhhhhhhhr tribe-events-mobile tribe-clearfix tribe-events-mobile-event-[[=eventId]][[ if(categoryClasses.length) { ]] [[= categoryClasses]][[ } ]]">\n		<h4 class="summary">\n			<a class="url" href="[[=permalink]]" title="[[=title]]" rel="bookmark">[[=raw title]]<\\/a>\n		<\\/h4>\n\n		<div class="tribe-events-event-body">\n			<div class="tribe-events-event-schedule-details">\n				<span class="tribe-event-date-start">[[=dateDisplay]] <\\/span>\n			<\\/div>\n			[[ if(imageSrc.length) { ]]\n			<div class="tribe-events-event-image">\n				<a href="[[=permalink]]" title="[[=title]]">\n					<img src="[[=imageSrc]]" alt="[[=title]]" title="[[=title]]">\n				<\\/a>\n			<\\/div>\n			[[ } ]]\n			[[ if(excerpt.length) { ]]\n			<div class="tribe-event-description"> [[=raw excerpt]] <\\/div>\n			[[ } ]]\n			<a href="[[=permalink]]" class="tribe-events-read-more" rel="bookmark">[[=i18n.find_out_more]]<\\/a>\n		<\\/div>\n	<\\/div>\n</script>\n	\n<script type="text/html" id="tribe_tmpl_tooltip">\n	<div id="tribe-events-tooltip-[[=eventId]]" class="tribe-events-tooltip">\n		<h3 class="entry-title summary">[[=raw title]]<\\/h3>\n\n		<div class="tribe-events-event-body">\n			<div class="tribe-event-duration">\n				<abbr class="tribe-events-abbr tribe-event-date-start">[[=dateDisplay]] <\\/abbr>\n			<\\/div>\n			[[ if(imageTooltipSrc.length) { ]]\n			<div class="tribe-events-event-thumb">\n				<img src="[[=imageTooltipSrc]]" alt="[[=title]]" \\/>\n			<\\/div>\n			[[ } ]]\n			[[ if(excerpt.length) { ]]\n			<div class="tribe-event-description">[[=raw excerpt]]<\\/div>\n			[[ } ]]\n			<span class="tribe-events-arrow"><\\/span>\n		<\\/div>\n	<\\/div>\n</script>\n\n<script type="text/html" id="tribe_tmpl_tooltip_featured">\n	<div id="tribe-events-tooltip-[[=eventId]]" class="tribe-events-tooltip tribe-event-featured">\n		[[ if(imageTooltipSrc.length) { ]]\n			<div class="tribe-events-event-thumb">\n				<img src="[[=imageTooltipSrc]]" alt="[[=title]]" \\/>\n			<\\/div>\n		[[ } ]]\n\n		<h3 class="entry-title summary">[[=raw title]]<\\/h3>\n\n		<div class="tribe-events-event-body">\n			<div class="tribe-event-duration">\n				<abbr class="tribe-events-abbr tribe-event-date-start">[[=dateDisplay]] <\\/abbr>\n			<\\/div>\n\n			[[ if(excerpt.length) { ]]\n			<div class="tribe-event-description">[[=raw excerpt]]<\\/div>\n			[[ } ]]\n			<span class="tribe-events-arrow"><\\/span>\n		<\\/div>\n	<\\/div>\n</script>\n\n</div><!-- #tribe-events-content -->\n', 'no'),
(630, '_transient_timeout_589ace028724ea3b9d6a5fe871e26719', '1540147178', 'no'),
(631, '_transient_589ace028724ea3b9d6a5fe871e26719', 'a:2:{i:0;O:8:"stdClass":3:{s:2:"ID";s:2:"87";s:14:"EventStartDate";s:19:"2018-10-30 00:00:00";s:12:"EventEndDate";s:19:"2018-10-30 23:59:59";}i:1;O:8:"stdClass":3:{s:2:"ID";s:2:"92";s:14:"EventStartDate";s:19:"2018-10-31 00:00:00";s:12:"EventEndDate";s:19:"2018-10-31 23:59:59";}}', 'no'),
(632, '_transient_timeout_c42121ea42c788e40924c34ea7089dbe', '1540147178', 'no'),
(633, '_transient_c42121ea42c788e40924c34ea7089dbe', '<script type="application/ld+json">\r\n[{"@context":"http://schema.org","@type":"Event","name":"Lari Dari Tanggung Jawab","description":"&lt;p&gt;Kuy kita lari bareng dari tanggung jawab kita, bebas sebebas-bebasnya!&lt;/p&gt;\\\\n","image":"http://localhost:10021/mti-runners/wp-content/uploads/2018/10/HAPPY.jpg","url":"http://localhost:10021/mti-runners/event/lari-dari-tanggung-jawab/","startDate":"2018-10-30T00:00:00+00:00","endDate":"2018-10-30T23:59:59+00:00","location":{"@type":"Place","name":"Kampus UI","description":"","url":false,"address":{"@type":"PostalAddress","streetAddress":"Salemba","addressLocality":"Jakarta","addressCountry":"Indonesia"},"telephone":"","sameAs":""},"organizer":{"@type":"Person","name":"Serikat Budak Korporat","description":"","url":false,"telephone":"","email":"","sameAs":""}},{"@context":"http://schema.org","@type":"Event","name":"Naruto Run","description":"&lt;p&gt;Mari ikut kegiatan Naruto Run, karena menjadi ninja adalah jalan ninjaku!&lt;/p&gt;\\\\n","image":"http://localhost:10021/mti-runners/wp-content/uploads/2018/10/naruto.jpg","url":"http://localhost:10021/mti-runners/event/naruto-run/","startDate":"2018-10-31T00:00:00+00:00","endDate":"2018-10-31T23:59:59+00:00","location":{"@type":"Place","name":"Konoha","description":"","url":false,"address":{"@type":"PostalAddress","streetAddress":"KONOHA, Jalan Fachrudin, Kampung Bali, Central Jakarta City, Jakarta"},"telephone":"","sameAs":""},"organizer":{"@type":"Person","name":"Wibu Organizer","description":"","url":false,"telephone":"","email":"","sameAs":""}}]\r\n</script>', 'no'),
(635, '_transient_timeout_2049f17b2cc71dbd94a6add4a55d11b8', '1540147179', 'no'),
(636, '_transient_2049f17b2cc71dbd94a6add4a55d11b8', '\n<div id="tribe-events-content" class="tribe-events-month">\n\n	<!-- Notices -->\n	\n	<!-- Month Header -->\n		<div id="tribe-events-header"  data-title="Events for October 2018 &#8211; MTI Runners" data-viewtitle="Events for October 2018" data-view="month" data-date="2018-10" data-baseurl="http://localhost:10021/mti-runners/events/month/">\n\n		<!-- Header Navigation -->\n		\n\n<nav class="tribe-events-nav-pagination" aria-label="Calendar Month Navigation">\n	<ul class="tribe-events-sub-nav">\n		<li class="tribe-events-nav-previous">\n					</li>\n		<!-- .tribe-events-nav-previous -->\n		<li class="tribe-events-nav-next">\n					</li>\n		<!-- .tribe-events-nav-next -->\n	</ul><!-- .tribe-events-sub-nav -->\n</nav>\n\n	</div>\n	<!-- #tribe-events-header -->\n	\n	<!-- Month Grid -->\n	\n\n\n	<h2 class="tribe-events-visuallyhidden">Calendar of Events</h2>\n\n	<table class="tribe-events-calendar">\n		<caption class="tribe-events-visuallyhidden">Calendar of Events</caption>\n		<thead>\n		<tr>\n							<th id="tribe-events-monday" title="Monday" data-day-abbr="Mon">Monday</th>\n							<th id="tribe-events-tuesday" title="Tuesday" data-day-abbr="Tue">Tuesday</th>\n							<th id="tribe-events-wednesday" title="Wednesday" data-day-abbr="Wed">Wednesday</th>\n							<th id="tribe-events-thursday" title="Thursday" data-day-abbr="Thu">Thursday</th>\n							<th id="tribe-events-friday" title="Friday" data-day-abbr="Fri">Friday</th>\n							<th id="tribe-events-saturday" title="Saturday" data-day-abbr="Sat">Saturday</th>\n							<th id="tribe-events-sunday" title="Sunday" data-day-abbr="Sun">Sunday</th>\n					</tr>\n		</thead>\n		<tbody>\n		<tr>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-01"\n				data-day="2018-10-01"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 1"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-1-0">\n\n			1	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-02"\n				data-day="2018-10-02"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 2"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-2-0">\n\n			2	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-03"\n				data-day="2018-10-03"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 3"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-3-0">\n\n			3	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-04"\n				data-day="2018-10-04"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 4"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-4-0">\n\n			4	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-05 tribe-events-right"\n				data-day="2018-10-05"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 5"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-5-0">\n\n			5	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-06 tribe-events-right"\n				data-day="2018-10-06"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 6"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-6-0">\n\n			6	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-07 tribe-events-right"\n				data-day="2018-10-07"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 7"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-7-0">\n\n			7	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n								</tr>\n		<tr>\n			\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-08"\n				data-day="2018-10-08"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 8"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-8-0">\n\n			8	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-09"\n				data-day="2018-10-09"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 9"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-9-0">\n\n			9	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-10"\n				data-day="2018-10-10"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 10"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-10-0">\n\n			10	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-11"\n				data-day="2018-10-11"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 11"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-11-0">\n\n			11	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-12 tribe-events-right"\n				data-day="2018-10-12"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 12"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-12-0">\n\n			12	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-13 tribe-events-right"\n				data-day="2018-10-13"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 13"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-13-0">\n\n			13	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-14 tribe-events-right"\n				data-day="2018-10-14"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 14"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-14-0">\n\n			14	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n								</tr>\n		<tr>\n			\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-15"\n				data-day="2018-10-15"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 15"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-15-0">\n\n			15	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-16"\n				data-day="2018-10-16"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 16"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-16-0">\n\n			16	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-17"\n				data-day="2018-10-17"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 17"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-17-0">\n\n			17	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-18"\n				data-day="2018-10-18"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 18"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-18-0">\n\n			18	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-19 tribe-events-right"\n				data-day="2018-10-19"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 19"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-19-0">\n\n			19	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-20 tribe-events-right"\n				data-day="2018-10-20"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 20"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-20-0">\n\n			20	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-present mobile-trigger tribe-event-day-21 tribe-events-right"\n				data-day="2018-10-21"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 21"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-21-0">\n\n			21	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n								</tr>\n		<tr>\n			\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-22"\n				data-day="2018-10-22"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 22"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-22-0">\n\n			22	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-23"\n				data-day="2018-10-23"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 23"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-23-0">\n\n			23	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-24"\n				data-day="2018-10-24"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 24"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-24-0">\n\n			24	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-25"\n				data-day="2018-10-25"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 25"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-25-0">\n\n			25	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-26 tribe-events-right"\n				data-day="2018-10-26"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 26"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-26-0">\n\n			26	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-27 tribe-events-right"\n				data-day="2018-10-27"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 27"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-27-0">\n\n			27	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-28 tribe-events-right"\n				data-day="2018-10-28"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 28"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-28-0">\n\n			28	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n								</tr>\n		<tr>\n			\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-29"\n				data-day="2018-10-29"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 29"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-29-0">\n\n			29	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future tribe-events-has-events mobile-trigger tribe-event-day-30"\n				data-day="2018-10-30"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 30"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-30-0">\n\n			30	\n</div>\n\n<!-- Events List -->\n	\n<div id="tribe-events-event-87-2018-10-30" class="tribe-events-category-city-running post-87 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-city-running cat_city-running tribe-events-venue-90 tribe-events-organizer-91 tribe-events-last" data-tribejson=''{&quot;i18n&quot;:{&quot;find_out_more&quot;:&quot;Find out more \\u00bb&quot;,&quot;for_date&quot;:&quot;Events for&quot;},&quot;eventId&quot;:&quot;87-2018-10-30&quot;,&quot;title&quot;:&quot;Lari Dari Tanggung Jawab&quot;,&quot;permalink&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/event\\/lari-dari-tanggung-jawab\\/&quot;,&quot;imageSrc&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/uploads\\/2018\\/10\\/HAPPY-1024x519.jpg&quot;,&quot;dateDisplay&quot;:&quot;October 30&quot;,&quot;imageTooltipSrc&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/uploads\\/2018\\/10\\/HAPPY-300x152.jpg&quot;,&quot;excerpt&quot;:&quot;&lt;p&gt;Kuy kita lari bareng dari tanggung jawab kita, bebas sebebas-bebasnya!&lt;\\/p&gt;&quot;,&quot;categoryClasses&quot;:&quot;tribe-events-category-city-running post-87 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-city-running cat_city-running tribe-events-venue-90 tribe-events-organizer-91 tribe-events-last&quot;,&quot;startTime&quot;:&quot;October 30&quot;,&quot;endTime&quot;:&quot;October 30&quot;}''>\n	<h3 class="tribe-events-month-event-title"><a href="http://localhost:10021/mti-runners/event/lari-dari-tanggung-jawab/" class="url">Lari Dari Tanggung Jawab</a></h3>\n</div><!-- #tribe-events-event-# -->\n\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future tribe-events-has-events mobile-trigger tribe-event-day-31"\n				data-day="2018-10-31"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 31"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-31-0">\n\n			31	\n</div>\n\n<!-- Events List -->\n	\n<div id="tribe-events-event-92-2018-10-31" class="tribe-events-category-city-running post-92 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-city-running cat_city-running tribe-events-venue-95 tribe-events-organizer-96 tribe-events-last" data-tribejson=''{&quot;i18n&quot;:{&quot;find_out_more&quot;:&quot;Find out more \\u00bb&quot;,&quot;for_date&quot;:&quot;Events for&quot;},&quot;eventId&quot;:&quot;92-2018-10-31&quot;,&quot;title&quot;:&quot;Naruto Run&quot;,&quot;permalink&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/event\\/naruto-run\\/&quot;,&quot;imageSrc&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/uploads\\/2018\\/10\\/naruto.jpg&quot;,&quot;dateDisplay&quot;:&quot;October 31&quot;,&quot;imageTooltipSrc&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/uploads\\/2018\\/10\\/naruto-300x161.jpg&quot;,&quot;excerpt&quot;:&quot;&lt;p&gt;Mari ikut kegiatan Naruto Run, karena menjadi ninja adalah jalan ninjaku!&lt;\\/p&gt;&quot;,&quot;categoryClasses&quot;:&quot;tribe-events-category-city-running post-92 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-city-running cat_city-running tribe-events-venue-95 tribe-events-organizer-96 tribe-events-last&quot;,&quot;startTime&quot;:&quot;October 31&quot;,&quot;endTime&quot;:&quot;October 31&quot;}''>\n	<h3 class="tribe-events-month-event-title"><a href="http://localhost:10021/mti-runners/event/naruto-run/" class="url">Naruto Run</a></h3>\n</div><!-- #tribe-events-event-# -->\n\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-othermonth tribe-events-future mobile-trigger tribe-event-day-01"\n				data-day="2018-11-01"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"November 1"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-1-1">\n\n			1	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-othermonth tribe-events-future mobile-trigger tribe-event-day-02 tribe-events-right"\n				data-day="2018-11-02"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"November 2"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-2-1">\n\n			2	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-othermonth tribe-events-future mobile-trigger tribe-event-day-03 tribe-events-right"\n				data-day="2018-11-03"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"November 3"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-3-1">\n\n			3	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-othermonth tribe-events-future mobile-trigger tribe-event-day-04 tribe-events-right"\n				data-day="2018-11-04"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"November 4"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-4-1">\n\n			4	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n					</tr>\n		</tbody>\n	</table><!-- .tribe-events-calendar -->\n\n	<!-- Month Footer -->\n		<div id="tribe-events-footer">\n\n		<!-- Footer Navigation -->\n				\n\n<nav class="tribe-events-nav-pagination" aria-label="Calendar Month Navigation">\n	<ul class="tribe-events-sub-nav">\n		<li class="tribe-events-nav-previous">\n					</li>\n		<!-- .tribe-events-nav-previous -->\n		<li class="tribe-events-nav-next">\n					</li>\n		<!-- .tribe-events-nav-next -->\n	</ul><!-- .tribe-events-sub-nav -->\n</nav>\n		\n	</div>\n	<!-- #tribe-events-footer -->\n	<a class="tribe-events-ical tribe-events-button" title="Use this to share calendar data with Google Calendar, Apple iCal and other compatible apps" href="http://localhost:10021/mti-runners/events/?ical=1">+ Export Events</a>\n	\n<script type="text/html" id="tribe_tmpl_month_mobile_day_header">\n	<div class="tribe-mobile-day" data-day="[[=date]]">[[ if(has_events) { ]]\n		<h3 class="tribe-mobile-day-heading">[[=i18n.for_date]] <span>[[=raw date_name]]<\\/span><\\/h3>[[ } ]]\n	<\\/div>\n</script>\n\n<script type="text/html" id="tribe_tmpl_month_mobile">\n	<div class="frhhhhhhhr tribe-events-mobile tribe-clearfix tribe-events-mobile-event-[[=eventId]][[ if(categoryClasses.length) { ]] [[= categoryClasses]][[ } ]]">\n		<h4 class="summary">\n			<a class="url" href="[[=permalink]]" title="[[=title]]" rel="bookmark">[[=raw title]]<\\/a>\n		<\\/h4>\n\n		<div class="tribe-events-event-body">\n			<div class="tribe-events-event-schedule-details">\n				<span class="tribe-event-date-start">[[=dateDisplay]] <\\/span>\n			<\\/div>\n			[[ if(imageSrc.length) { ]]\n			<div class="tribe-events-event-image">\n				<a href="[[=permalink]]" title="[[=title]]">\n					<img src="[[=imageSrc]]" alt="[[=title]]" title="[[=title]]">\n				<\\/a>\n			<\\/div>\n			[[ } ]]\n			[[ if(excerpt.length) { ]]\n			<div class="tribe-event-description"> [[=raw excerpt]] <\\/div>\n			[[ } ]]\n			<a href="[[=permalink]]" class="tribe-events-read-more" rel="bookmark">[[=i18n.find_out_more]]<\\/a>\n		<\\/div>\n	<\\/div>\n</script>\n	\n<script type="text/html" id="tribe_tmpl_tooltip">\n	<div id="tribe-events-tooltip-[[=eventId]]" class="tribe-events-tooltip">\n		<h3 class="entry-title summary">[[=raw title]]<\\/h3>\n\n		<div class="tribe-events-event-body">\n			<div class="tribe-event-duration">\n				<abbr class="tribe-events-abbr tribe-event-date-start">[[=dateDisplay]] <\\/abbr>\n			<\\/div>\n			[[ if(imageTooltipSrc.length) { ]]\n			<div class="tribe-events-event-thumb">\n				<img src="[[=imageTooltipSrc]]" alt="[[=title]]" \\/>\n			<\\/div>\n			[[ } ]]\n			[[ if(excerpt.length) { ]]\n			<div class="tribe-event-description">[[=raw excerpt]]<\\/div>\n			[[ } ]]\n			<span class="tribe-events-arrow"><\\/span>\n		<\\/div>\n	<\\/div>\n</script>\n\n<script type="text/html" id="tribe_tmpl_tooltip_featured">\n	<div id="tribe-events-tooltip-[[=eventId]]" class="tribe-events-tooltip tribe-event-featured">\n		[[ if(imageTooltipSrc.length) { ]]\n			<div class="tribe-events-event-thumb">\n				<img src="[[=imageTooltipSrc]]" alt="[[=title]]" \\/>\n			<\\/div>\n		[[ } ]]\n\n		<h3 class="entry-title summary">[[=raw title]]<\\/h3>\n\n		<div class="tribe-events-event-body">\n			<div class="tribe-event-duration">\n				<abbr class="tribe-events-abbr tribe-event-date-start">[[=dateDisplay]] <\\/abbr>\n			<\\/div>\n\n			[[ if(excerpt.length) { ]]\n			<div class="tribe-event-description">[[=raw excerpt]]<\\/div>\n			[[ } ]]\n			<span class="tribe-events-arrow"><\\/span>\n		<\\/div>\n	<\\/div>\n</script>\n\n</div><!-- #tribe-events-content -->\n', 'no'),
(639, '_transient_timeout_e5c039528391dcc6b88ca9fa980e1ee7', '1540147221', 'no'),
(640, '_transient_e5c039528391dcc6b88ca9fa980e1ee7', 'a:2:{i:0;O:8:"stdClass":3:{s:2:"ID";s:2:"87";s:14:"EventStartDate";s:19:"2018-10-30 00:00:00";s:12:"EventEndDate";s:19:"2018-10-30 23:59:59";}i:1;O:8:"stdClass":3:{s:2:"ID";s:2:"92";s:14:"EventStartDate";s:19:"2018-10-31 00:00:00";s:12:"EventEndDate";s:19:"2018-10-31 23:59:59";}}', 'no'),
(641, '_transient_timeout_e87f735d80527f12af70e4a3d1f44015', '1540147222', 'no'),
(642, '_transient_e87f735d80527f12af70e4a3d1f44015', '<script type="application/ld+json">\r\n[{"@context":"http://schema.org","@type":"Event","name":"Lari Dari Tanggung Jawab","description":"&lt;p&gt;Kuy kita lari bareng dari tanggung jawab kita, bebas sebebas-bebasnya!&lt;/p&gt;\\\\n","image":"http://localhost:10021/mti-runners/wp-content/uploads/2018/10/HAPPY.jpg","url":"http://localhost:10021/mti-runners/event/lari-dari-tanggung-jawab/","startDate":"2018-10-30T00:00:00+00:00","endDate":"2018-10-30T23:59:59+00:00","location":{"@type":"Place","name":"Kampus UI","description":"","url":false,"address":{"@type":"PostalAddress","streetAddress":"Salemba","addressLocality":"Jakarta","addressCountry":"Indonesia"},"telephone":"","sameAs":""},"organizer":{"@type":"Person","name":"Serikat Budak Korporat","description":"","url":false,"telephone":"","email":"","sameAs":""}},{"@context":"http://schema.org","@type":"Event","name":"Naruto Run","description":"&lt;p&gt;Mari ikut kegiatan Naruto Run, karena menjadi ninja adalah jalan ninjaku!&lt;/p&gt;\\\\n","image":"http://localhost:10021/mti-runners/wp-content/uploads/2018/10/naruto.jpg","url":"http://localhost:10021/mti-runners/event/naruto-run/","startDate":"2018-10-31T00:00:00+00:00","endDate":"2018-10-31T23:59:59+00:00","location":{"@type":"Place","name":"Konoha","description":"","url":false,"address":{"@type":"PostalAddress","streetAddress":"KONOHA, Jalan Fachrudin, Kampung Bali, Central Jakarta City, Jakarta"},"telephone":"","sameAs":""},"organizer":{"@type":"Person","name":"Wibu Organizer","description":"","url":false,"telephone":"","email":"","sameAs":""}}]\r\n</script>', 'no'),
(643, '_transient_timeout_cf1dbcfe7325635233d8ab9737545f78', '1540147222', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(644, '_transient_cf1dbcfe7325635233d8ab9737545f78', '\n<div id="tribe-events-content" class="tribe-events-month">\n\n	<!-- Notices -->\n	\n	<!-- Month Header -->\n		<div id="tribe-events-header"  data-title="Events for October 2018 &#8211; MTI Runners" data-viewtitle="Events for October 2018" data-view="month" data-date="2018-10" data-baseurl="http://localhost:10021/mti-runners/events/month/">\n\n		<!-- Header Navigation -->\n		\n\n<nav class="tribe-events-nav-pagination" aria-label="Calendar Month Navigation">\n	<ul class="tribe-events-sub-nav">\n		<li class="tribe-events-nav-previous">\n					</li>\n		<!-- .tribe-events-nav-previous -->\n		<li class="tribe-events-nav-next">\n					</li>\n		<!-- .tribe-events-nav-next -->\n	</ul><!-- .tribe-events-sub-nav -->\n</nav>\n\n	</div>\n	<!-- #tribe-events-header -->\n	\n	<!-- Month Grid -->\n	\n\n\n	<h2 class="tribe-events-visuallyhidden">Calendar of Events</h2>\n\n	<table class="tribe-events-calendar">\n		<caption class="tribe-events-visuallyhidden">Calendar of Events</caption>\n		<thead>\n		<tr>\n							<th id="tribe-events-monday" title="Monday" data-day-abbr="Mon">Monday</th>\n							<th id="tribe-events-tuesday" title="Tuesday" data-day-abbr="Tue">Tuesday</th>\n							<th id="tribe-events-wednesday" title="Wednesday" data-day-abbr="Wed">Wednesday</th>\n							<th id="tribe-events-thursday" title="Thursday" data-day-abbr="Thu">Thursday</th>\n							<th id="tribe-events-friday" title="Friday" data-day-abbr="Fri">Friday</th>\n							<th id="tribe-events-saturday" title="Saturday" data-day-abbr="Sat">Saturday</th>\n							<th id="tribe-events-sunday" title="Sunday" data-day-abbr="Sun">Sunday</th>\n					</tr>\n		</thead>\n		<tbody>\n		<tr>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-01"\n				data-day="2018-10-01"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 1"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-1-0">\n\n			1	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-02"\n				data-day="2018-10-02"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 2"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-2-0">\n\n			2	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-03"\n				data-day="2018-10-03"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 3"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-3-0">\n\n			3	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-04"\n				data-day="2018-10-04"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 4"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-4-0">\n\n			4	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-05 tribe-events-right"\n				data-day="2018-10-05"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 5"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-5-0">\n\n			5	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-06 tribe-events-right"\n				data-day="2018-10-06"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 6"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-6-0">\n\n			6	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-07 tribe-events-right"\n				data-day="2018-10-07"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 7"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-7-0">\n\n			7	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n								</tr>\n		<tr>\n			\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-08"\n				data-day="2018-10-08"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 8"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-8-0">\n\n			8	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-09"\n				data-day="2018-10-09"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 9"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-9-0">\n\n			9	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-10"\n				data-day="2018-10-10"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 10"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-10-0">\n\n			10	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-11"\n				data-day="2018-10-11"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 11"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-11-0">\n\n			11	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-12 tribe-events-right"\n				data-day="2018-10-12"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 12"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-12-0">\n\n			12	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-13 tribe-events-right"\n				data-day="2018-10-13"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 13"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-13-0">\n\n			13	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-14 tribe-events-right"\n				data-day="2018-10-14"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 14"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-14-0">\n\n			14	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n								</tr>\n		<tr>\n			\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-15"\n				data-day="2018-10-15"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 15"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-15-0">\n\n			15	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-16"\n				data-day="2018-10-16"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 16"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-16-0">\n\n			16	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-17"\n				data-day="2018-10-17"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 17"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-17-0">\n\n			17	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-18"\n				data-day="2018-10-18"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 18"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-18-0">\n\n			18	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-19 tribe-events-right"\n				data-day="2018-10-19"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 19"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-19-0">\n\n			19	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-past mobile-trigger tribe-event-day-20 tribe-events-right"\n				data-day="2018-10-20"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 20"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-20-0">\n\n			20	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-present mobile-trigger tribe-event-day-21 tribe-events-right"\n				data-day="2018-10-21"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 21"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-21-0">\n\n			21	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n								</tr>\n		<tr>\n			\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-22"\n				data-day="2018-10-22"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 22"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-22-0">\n\n			22	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-23"\n				data-day="2018-10-23"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 23"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-23-0">\n\n			23	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-24"\n				data-day="2018-10-24"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 24"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-24-0">\n\n			24	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-25"\n				data-day="2018-10-25"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 25"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-25-0">\n\n			25	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-26 tribe-events-right"\n				data-day="2018-10-26"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 26"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-26-0">\n\n			26	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-27 tribe-events-right"\n				data-day="2018-10-27"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 27"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-27-0">\n\n			27	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-28 tribe-events-right"\n				data-day="2018-10-28"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 28"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-28-0">\n\n			28	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n								</tr>\n		<tr>\n			\n			\n			<td class="tribe-events-thismonth tribe-events-future mobile-trigger tribe-event-day-29"\n				data-day="2018-10-29"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 29"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-29-0">\n\n			29	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future tribe-events-has-events mobile-trigger tribe-event-day-30"\n				data-day="2018-10-30"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 30"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-30-0">\n\n			30	\n</div>\n\n<!-- Events List -->\n	\n<div id="tribe-events-event-87-2018-10-30" class="tribe-events-category-city-running post-87 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-city-running cat_city-running tribe-events-venue-90 tribe-events-organizer-91 tribe-events-last" data-tribejson=''{&quot;i18n&quot;:{&quot;find_out_more&quot;:&quot;Find out more \\u00bb&quot;,&quot;for_date&quot;:&quot;Events for&quot;},&quot;eventId&quot;:&quot;87-2018-10-30&quot;,&quot;title&quot;:&quot;Lari Dari Tanggung Jawab&quot;,&quot;permalink&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/event\\/lari-dari-tanggung-jawab\\/&quot;,&quot;imageSrc&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/uploads\\/2018\\/10\\/HAPPY-1024x519.jpg&quot;,&quot;dateDisplay&quot;:&quot;October 30&quot;,&quot;imageTooltipSrc&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/uploads\\/2018\\/10\\/HAPPY-300x152.jpg&quot;,&quot;excerpt&quot;:&quot;&lt;p&gt;Kuy kita lari bareng dari tanggung jawab kita, bebas sebebas-bebasnya!&lt;\\/p&gt;&quot;,&quot;categoryClasses&quot;:&quot;tribe-events-category-city-running post-87 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-city-running cat_city-running tribe-events-venue-90 tribe-events-organizer-91 tribe-events-last&quot;,&quot;startTime&quot;:&quot;October 30&quot;,&quot;endTime&quot;:&quot;October 30&quot;}''>\n	<h3 class="tribe-events-month-event-title"><a href="http://localhost:10021/mti-runners/event/lari-dari-tanggung-jawab/" class="url">Lari Dari Tanggung Jawab</a></h3>\n</div><!-- #tribe-events-event-# -->\n\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-thismonth tribe-events-future tribe-events-has-events mobile-trigger tribe-event-day-31"\n				data-day="2018-10-31"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"October 31"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-31-0">\n\n			31	\n</div>\n\n<!-- Events List -->\n	\n<div id="tribe-events-event-92-2018-10-31" class="tribe-events-category-city-running post-92 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-city-running cat_city-running tribe-events-venue-95 tribe-events-organizer-96 tribe-events-last" data-tribejson=''{&quot;i18n&quot;:{&quot;find_out_more&quot;:&quot;Find out more \\u00bb&quot;,&quot;for_date&quot;:&quot;Events for&quot;},&quot;eventId&quot;:&quot;92-2018-10-31&quot;,&quot;title&quot;:&quot;Naruto Run&quot;,&quot;permalink&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/event\\/naruto-run\\/&quot;,&quot;imageSrc&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/uploads\\/2018\\/10\\/naruto.jpg&quot;,&quot;dateDisplay&quot;:&quot;October 31&quot;,&quot;imageTooltipSrc&quot;:&quot;http:\\/\\/localhost:10021\\/mti-runners\\/wp-content\\/uploads\\/2018\\/10\\/naruto-300x161.jpg&quot;,&quot;excerpt&quot;:&quot;&lt;p&gt;Mari ikut kegiatan Naruto Run, karena menjadi ninja adalah jalan ninjaku!&lt;\\/p&gt;&quot;,&quot;categoryClasses&quot;:&quot;tribe-events-category-city-running post-92 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-city-running cat_city-running tribe-events-venue-95 tribe-events-organizer-96 tribe-events-last&quot;,&quot;startTime&quot;:&quot;October 31&quot;,&quot;endTime&quot;:&quot;October 31&quot;}''>\n	<h3 class="tribe-events-month-event-title"><a href="http://localhost:10021/mti-runners/event/naruto-run/" class="url">Naruto Run</a></h3>\n</div><!-- #tribe-events-event-# -->\n\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-othermonth tribe-events-future mobile-trigger tribe-event-day-01"\n				data-day="2018-11-01"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"November 1"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-1-1">\n\n			1	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-othermonth tribe-events-future mobile-trigger tribe-event-day-02 tribe-events-right"\n				data-day="2018-11-02"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"November 2"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-2-1">\n\n			2	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-othermonth tribe-events-future mobile-trigger tribe-event-day-03 tribe-events-right"\n				data-day="2018-11-03"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"November 3"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-3-1">\n\n			3	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n						\n			\n			<td class="tribe-events-othermonth tribe-events-future mobile-trigger tribe-event-day-04 tribe-events-right"\n				data-day="2018-11-04"\n				data-tribejson=''{"i18n":{"find_out_more":"Find out more \\u00bb","for_date":"Events for"},"date_name":"November 4"}''\n				>\n				\n<!-- Day Header -->\n<div id="tribe-events-daynum-4-1">\n\n			4	\n</div>\n\n<!-- Events List -->\n\n<!-- View More -->\n			</td>\n					</tr>\n		</tbody>\n	</table><!-- .tribe-events-calendar -->\n\n	<!-- Month Footer -->\n		<div id="tribe-events-footer">\n\n		<!-- Footer Navigation -->\n				\n\n<nav class="tribe-events-nav-pagination" aria-label="Calendar Month Navigation">\n	<ul class="tribe-events-sub-nav">\n		<li class="tribe-events-nav-previous">\n					</li>\n		<!-- .tribe-events-nav-previous -->\n		<li class="tribe-events-nav-next">\n					</li>\n		<!-- .tribe-events-nav-next -->\n	</ul><!-- .tribe-events-sub-nav -->\n</nav>\n		\n	</div>\n	<!-- #tribe-events-footer -->\n	<a class="tribe-events-ical tribe-events-button" title="Use this to share calendar data with Google Calendar, Apple iCal and other compatible apps" href="http://localhost:10021/mti-runners/events/?ical=1">+ Export Events</a>\n	\n<script type="text/html" id="tribe_tmpl_month_mobile_day_header">\n	<div class="tribe-mobile-day" data-day="[[=date]]">[[ if(has_events) { ]]\n		<h3 class="tribe-mobile-day-heading">[[=i18n.for_date]] <span>[[=raw date_name]]<\\/span><\\/h3>[[ } ]]\n	<\\/div>\n</script>\n\n<script type="text/html" id="tribe_tmpl_month_mobile">\n	<div class="frhhhhhhhr tribe-events-mobile tribe-clearfix tribe-events-mobile-event-[[=eventId]][[ if(categoryClasses.length) { ]] [[= categoryClasses]][[ } ]]">\n		<h4 class="summary">\n			<a class="url" href="[[=permalink]]" title="[[=title]]" rel="bookmark">[[=raw title]]<\\/a>\n		<\\/h4>\n\n		<div class="tribe-events-event-body">\n			<div class="tribe-events-event-schedule-details">\n				<span class="tribe-event-date-start">[[=dateDisplay]] <\\/span>\n			<\\/div>\n			[[ if(imageSrc.length) { ]]\n			<div class="tribe-events-event-image">\n				<a href="[[=permalink]]" title="[[=title]]">\n					<img src="[[=imageSrc]]" alt="[[=title]]" title="[[=title]]">\n				<\\/a>\n			<\\/div>\n			[[ } ]]\n			[[ if(excerpt.length) { ]]\n			<div class="tribe-event-description"> [[=raw excerpt]] <\\/div>\n			[[ } ]]\n			<a href="[[=permalink]]" class="tribe-events-read-more" rel="bookmark">[[=i18n.find_out_more]]<\\/a>\n		<\\/div>\n	<\\/div>\n</script>\n	\n<script type="text/html" id="tribe_tmpl_tooltip">\n	<div id="tribe-events-tooltip-[[=eventId]]" class="tribe-events-tooltip">\n		<h3 class="entry-title summary">[[=raw title]]<\\/h3>\n\n		<div class="tribe-events-event-body">\n			<div class="tribe-event-duration">\n				<abbr class="tribe-events-abbr tribe-event-date-start">[[=dateDisplay]] <\\/abbr>\n			<\\/div>\n			[[ if(imageTooltipSrc.length) { ]]\n			<div class="tribe-events-event-thumb">\n				<img src="[[=imageTooltipSrc]]" alt="[[=title]]" \\/>\n			<\\/div>\n			[[ } ]]\n			[[ if(excerpt.length) { ]]\n			<div class="tribe-event-description">[[=raw excerpt]]<\\/div>\n			[[ } ]]\n			<span class="tribe-events-arrow"><\\/span>\n		<\\/div>\n	<\\/div>\n</script>\n\n<script type="text/html" id="tribe_tmpl_tooltip_featured">\n	<div id="tribe-events-tooltip-[[=eventId]]" class="tribe-events-tooltip tribe-event-featured">\n		[[ if(imageTooltipSrc.length) { ]]\n			<div class="tribe-events-event-thumb">\n				<img src="[[=imageTooltipSrc]]" alt="[[=title]]" \\/>\n			<\\/div>\n		[[ } ]]\n\n		<h3 class="entry-title summary">[[=raw title]]<\\/h3>\n\n		<div class="tribe-events-event-body">\n			<div class="tribe-event-duration">\n				<abbr class="tribe-events-abbr tribe-event-date-start">[[=dateDisplay]] <\\/abbr>\n			<\\/div>\n\n			[[ if(excerpt.length) { ]]\n			<div class="tribe-event-description">[[=raw excerpt]]<\\/div>\n			[[ } ]]\n			<span class="tribe-events-arrow"><\\/span>\n		<\\/div>\n	<\\/div>\n</script>\n\n</div><!-- #tribe-events-content -->\n', 'no'),
(648, '_transient_timeout_wpum_get_pages', '1540230898', 'no'),
(649, '_transient_wpum_get_pages', 'a:10:{i:0;a:2:{s:5:"value";i:13;s:5:"label";s:7:"Account";}i:1;a:2:{s:5:"value";i:6;s:5:"label";s:4:"Cart";}i:2;a:2:{s:5:"value";i:7;s:5:"label";s:8:"Checkout";}i:3;a:2:{s:5:"value";i:10;s:5:"label";s:5:"Login";}i:4;a:2:{s:5:"value";i:8;s:5:"label";s:10:"My account";}i:5;a:2:{s:5:"value";i:11;s:5:"label";s:14:"Password Reset";}i:6;a:2:{s:5:"value";i:14;s:5:"label";s:7:"Profile";}i:7;a:2:{s:5:"value";i:12;s:5:"label";s:8:"Register";}i:8;a:2:{s:5:"value";i:2;s:5:"label";s:11:"Sample Page";}i:9;a:2:{s:5:"value";i:5;s:5:"label";s:4:"Shop";}}', 'no'),
(666, '_transient_timeout_files_cede2545b7c4f763a4c6a6719315078ffe1b960f85b966d4f03b4de', '1540150482', 'no'),
(667, '_transient_files_cede2545b7c4f763a4c6a6719315078ffe1b960f85b966d4f03b4de', 'a:91:{s:17:"assets/custom.css";s:77:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/trending-blog/assets/custom.css";s:16:"assets/custom.js";s:76:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/trending-blog/assets/custom.js";s:13:"functions.php";s:73:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/trending-blog/functions.php";s:10:"header.php";s:70:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/trending-blog/header.php";s:20:"inc/hooks/slider.php";s:80:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/trending-blog/inc/hooks/slider.php";s:10:"readme.txt";s:70:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/trending-blog/readme.txt";s:14:"screenshot.png";s:74:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/trending-blog/screenshot.png";s:9:"style.css";s:69:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/trending-blog/style.css";s:7:"404.php";s:65:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/404.php";s:11:"archive.php";s:69:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/archive.php";s:59:"assets/libraries/TGM-Plugin/class-tgm-plugin-activation.php";s:117:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/TGM-Plugin/class-tgm-plugin-activation.php";s:36:"assets/libraries/animate/animate.css";s:94:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/animate/animate.css";s:44:"assets/libraries/bootstrap/css/bootstrap.css";s:102:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/bootstrap/css/bootstrap.css";s:48:"assets/libraries/bootstrap/css/bootstrap.min.css";s:106:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/bootstrap/css/bootstrap.min.css";s:65:"assets/libraries/bootstrap/fonts/glyphicons-halflings-regular.eot";s:123:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/bootstrap/fonts/glyphicons-halflings-regular.eot";s:65:"assets/libraries/bootstrap/fonts/glyphicons-halflings-regular.svg";s:123:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/bootstrap/fonts/glyphicons-halflings-regular.svg";s:65:"assets/libraries/bootstrap/fonts/glyphicons-halflings-regular.ttf";s:123:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/bootstrap/fonts/glyphicons-halflings-regular.ttf";s:66:"assets/libraries/bootstrap/fonts/glyphicons-halflings-regular.woff";s:124:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/bootstrap/fonts/glyphicons-halflings-regular.woff";s:67:"assets/libraries/bootstrap/fonts/glyphicons-halflings-regular.woff2";s:125:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/bootstrap/fonts/glyphicons-halflings-regular.woff2";s:42:"assets/libraries/bootstrap/js/bootstrap.js";s:100:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/bootstrap/js/bootstrap.js";s:46:"assets/libraries/bootstrap/js/bootstrap.min.js";s:104:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/bootstrap/js/bootstrap.min.js";s:44:"assets/libraries/breadcrumbs/breadcrumbs.php";s:102:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/breadcrumbs/breadcrumbs.php";s:42:"assets/libraries/ionicons/css/ionicons.css";s:100:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/ionicons/css/ionicons.css";s:46:"assets/libraries/ionicons/css/ionicons.min.css";s:104:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/ionicons/css/ionicons.min.css";s:44:"assets/libraries/ionicons/fonts/ionicons.eot";s:102:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/ionicons/fonts/ionicons.eot";s:44:"assets/libraries/ionicons/fonts/ionicons.svg";s:102:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/ionicons/fonts/ionicons.svg";s:44:"assets/libraries/ionicons/fonts/ionicons.ttf";s:102:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/ionicons/fonts/ionicons.ttf";s:45:"assets/libraries/ionicons/fonts/ionicons.woff";s:103:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/ionicons/fonts/ionicons.woff";s:61:"assets/libraries/jquery-match-height/js/jquery.matchHeight.js";s:119:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/jquery-match-height/js/jquery.matchHeight.js";s:65:"assets/libraries/jquery-match-height/js/jquery.matchHeight.min.js";s:123:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/jquery-match-height/js/jquery.matchHeight.min.js";s:49:"assets/libraries/owlcarousel/css/owl.carousel.css";s:107:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/owlcarousel/css/owl.carousel.css";s:47:"assets/libraries/owlcarousel/js/owl.carousel.js";s:105:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/owlcarousel/js/owl.carousel.js";s:51:"assets/libraries/owlcarousel/js/owl.carousel.min.js";s:109:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/owlcarousel/js/owl.carousel.min.js";s:46:"assets/libraries/sidr/css/jquery.sidr.dark.css";s:104:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/sidr/css/jquery.sidr.dark.css";s:39:"assets/libraries/sidr/js/jquery.sidr.js";s:97:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/sidr/js/jquery.sidr.js";s:43:"assets/libraries/sidr/js/jquery.sidr.min.js";s:101:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/sidr/js/jquery.sidr.min.js";s:59:"assets/libraries/theiaStickySidebar/theia-sticky-sidebar.js";s:117:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/theiaStickySidebar/theia-sticky-sidebar.js";s:63:"assets/libraries/theiaStickySidebar/theia-sticky-sidebar.min.js";s:121:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/theiaStickySidebar/theia-sticky-sidebar.min.js";s:38:"assets/libraries/vertical/vertical.css";s:96:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/libraries/vertical/vertical.css";s:24:"assets/twp/css/admin.css";s:82:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/twp/css/admin.css";s:31:"assets/twp/css/editor-style.css";s:89:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/twp/css/editor-style.css";s:30:"assets/twp/js/custom-script.js";s:88:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/twp/js/custom-script.js";s:33:"assets/twp/js/customizer-admin.js";s:91:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/twp/js/customizer-admin.js";s:24:"assets/twp/js/widgets.js";s:82:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/assets/twp/js/widgets.js";s:12:"comments.php";s:70:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/comments.php";s:28:"demo-content/galway-lite.dat";s:86:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/demo-content/galway-lite.dat";s:28:"demo-content/galway-lite.wie";s:86:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/demo-content/galway-lite.wie";s:28:"demo-content/galway-lite.xml";s:86:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/demo-content/galway-lite.xml";s:10:"footer.php";s:68:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/footer.php";s:14:"front-page.php";s:72:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/front-page.php";s:30:"inc/common-functions-hooks.php";s:88:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/common-functions-hooks.php";s:32:"inc/customizer/core/callback.php";s:90:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/customizer/core/callback.php";s:31:"inc/customizer/core/control.php";s:89:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/customizer/core/control.php";s:39:"inc/customizer/core/customizer-core.php";s:97:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/customizer/core/customizer-core.php";s:31:"inc/customizer/core/default.php";s:89:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/customizer/core/default.php";s:32:"inc/customizer/core/sanitize.php";s:90:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/customizer/core/sanitize.php";s:29:"inc/customizer/customizer.php";s:87:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/customizer/customizer.php";s:41:"inc/customizer/images/slider-layout-1.png";s:99:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/customizer/images/slider-layout-1.png";s:41:"inc/customizer/images/slider-layout-2.png";s:99:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/customizer/images/slider-layout-2.png";s:41:"inc/customizer/images/slider-layout-3.png";s:99:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/customizer/images/slider-layout-3.png";s:25:"inc/customizer/slider.php";s:83:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/customizer/slider.php";s:31:"inc/customizer/theme-option.php";s:89:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/customizer/theme-option.php";s:14:"inc/extras.php";s:72:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/extras.php";s:25:"inc/hooks/added-style.php";s:83:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/hooks/added-style.php";s:24:"inc/hooks/breadcrumb.php";s:82:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/hooks/breadcrumb.php";s:31:"inc/hooks/header-inner-page.php";s:89:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/hooks/header-inner-page.php";s:24:"inc/hooks/hooks-init.php";s:82:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/hooks/hooks-init.php";s:37:"inc/hooks/layout-meta/layout-meta.php";s:95:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/hooks/layout-meta/layout-meta.php";s:15:"inc/jetpack.php";s:73:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/jetpack.php";s:21:"inc/template-tags.php";s:79:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/template-tags.php";s:19:"inc/widget-init.php";s:77:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/widget-init.php";s:33:"inc/widgets/widget-base-class.php";s:91:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/widgets/widget-base-class.php";s:23:"inc/widgets/widgets.php";s:81:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/inc/widgets/widgets.php";s:9:"index.php";s:67:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/index.php";s:16:"js/customizer.js";s:74:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/js/customizer.js";s:16:"js/navigation.js";s:74:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/js/navigation.js";s:25:"js/skip-link-focus-fix.js";s:83:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/js/skip-link-focus-fix.js";s:25:"languages/galway-lite.pot";s:83:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/languages/galway-lite.pot";s:8:"page.php";s:66:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/page.php";s:10:"search.php";s:68:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/search.php";s:11:"sidebar.php";s:69:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/sidebar.php";s:10:"single.php";s:68:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/single.php";s:32:"template-parts/content-audio.php";s:90:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/template-parts/content-audio.php";s:34:"template-parts/content-gallery.php";s:92:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/template-parts/content-gallery.php";s:32:"template-parts/content-image.php";s:90:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/template-parts/content-image.php";s:31:"template-parts/content-none.php";s:89:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/template-parts/content-none.php";s:31:"template-parts/content-page.php";s:89:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/template-parts/content-page.php";s:33:"template-parts/content-search.php";s:91:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/template-parts/content-search.php";s:33:"template-parts/content-single.php";s:91:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/template-parts/content-single.php";s:32:"template-parts/content-video.php";s:90:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/template-parts/content-video.php";s:26:"template-parts/content.php";s:84:"C:\\xampp\\htdocs\\mti-runners/wp-content/themes/galway-lite/template-parts/content.php";}', 'no'),
(668, 'category_children', 'a:0:{}', 'yes'),
(682, '_site_transient_timeout_theme_roots', '1540150000', 'no'),
(683, '_site_transient_theme_roots', 'a:4:{s:11:"galway-lite";s:7:"/themes";s:6:"portum";s:7:"/themes";s:13:"shop-isle-pro";s:7:"/themes";s:13:"trending-blog";s:7:"/themes";}', 'no'),
(685, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1540149651;}', 'no'),
(686, 'cat-to-exclude-from-homepage', 'a:1:{i:0;s:2:"35";}', 'yes'),
(692, 'oi_goal_taxonomy_children', 'a:0:{}', 'yes'),
(703, '_transient_is_multi_author', '0', 'yes'),
(704, '_transient_galway_lite_categories', '2', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 15, '_edit_lock', '1539989957:1'),
(5, 15, '_edit_last', '1'),
(8, 17, '_menu_item_type', 'post_type'),
(9, 17, '_menu_item_menu_item_parent', '0'),
(10, 17, '_menu_item_object_id', '12'),
(11, 17, '_menu_item_object', 'page'),
(12, 17, '_menu_item_target', ''),
(13, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(14, 17, '_menu_item_xfn', ''),
(15, 17, '_menu_item_url', ''),
(17, 18, '_menu_item_type', 'post_type'),
(18, 18, '_menu_item_menu_item_parent', '0'),
(19, 18, '_menu_item_object_id', '10'),
(20, 18, '_menu_item_object', 'page'),
(21, 18, '_menu_item_target', ''),
(22, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 18, '_menu_item_xfn', ''),
(24, 18, '_menu_item_url', ''),
(26, 17, '_convert_to_logout', ''),
(27, 17, '_link_visibility', ''),
(28, 17, '_link_roles|||0|_empty', ''),
(29, 18, '_convert_to_logout', ''),
(30, 18, '_link_visibility', ''),
(31, 18, '_link_roles|||0|_empty', ''),
(32, 19, '_edit_lock', '1540144442:1'),
(33, 19, '_edit_last', '1'),
(34, 19, '_directory_assigned_roles|||0|value', 'customer'),
(35, 19, '_directory_search_form', ''),
(36, 19, '_directory_excluded_users', ''),
(37, 19, '_directory_profiles_per_page', ''),
(38, 19, '_directory_display_sorter', ''),
(39, 19, '_directory_display_amount_filter', ''),
(40, 19, '_directory_sorting_method', 'newest'),
(41, 19, '_directory_template', 'default'),
(42, 19, '_directory_user_template', 'default'),
(43, 22, '_wc_review_count', '0'),
(44, 22, '_wc_rating_count', 'a:0:{}'),
(45, 22, '_wc_average_rating', '0'),
(46, 22, '_edit_lock', '1539986542:1'),
(47, 22, '_edit_last', '1'),
(48, 22, '_sku', '10'),
(49, 22, '_regular_price', '100000'),
(50, 22, '_sale_price', ''),
(51, 22, '_sale_price_dates_from', ''),
(52, 22, '_sale_price_dates_to', ''),
(53, 22, 'total_sales', '0'),
(54, 22, '_tax_status', 'taxable'),
(55, 22, '_tax_class', ''),
(56, 22, '_manage_stock', 'no'),
(57, 22, '_backorders', 'no'),
(58, 22, '_sold_individually', 'no'),
(59, 22, '_weight', '0.3'),
(60, 22, '_length', '10'),
(61, 22, '_width', '10'),
(62, 22, '_height', '10'),
(63, 22, '_upsell_ids', 'a:0:{}'),
(64, 22, '_crosssell_ids', 'a:0:{}'),
(65, 22, '_purchase_note', 'Tes aja gan, sayang anak'),
(66, 22, '_default_attributes', 'a:0:{}'),
(67, 22, '_virtual', 'no'),
(68, 22, '_downloadable', 'no'),
(69, 22, '_product_image_gallery', '36,37'),
(70, 22, '_download_limit', '-1'),
(71, 22, '_download_expiry', '-1'),
(72, 22, '_stock', NULL),
(73, 22, '_stock_status', 'instock'),
(74, 22, '_product_version', '3.4.6'),
(75, 22, '_price', '100000'),
(78, 25, '_wp_trash_meta_status', 'publish'),
(79, 25, '_wp_trash_meta_time', '1539983303'),
(84, 29, '_wp_trash_meta_status', 'publish'),
(85, 29, '_wp_trash_meta_time', '1539985816'),
(86, 30, '_wp_trash_meta_status', 'publish'),
(87, 30, '_wp_trash_meta_time', '1539985860'),
(88, 31, '_wp_trash_meta_status', 'publish'),
(89, 31, '_wp_trash_meta_time', '1539986003'),
(90, 32, '_wp_trash_meta_status', 'publish'),
(91, 32, '_wp_trash_meta_time', '1539986034'),
(92, 33, '_wp_trash_meta_status', 'publish'),
(93, 33, '_wp_trash_meta_time', '1539986357'),
(94, 35, '_wp_attached_file', '2018/10/sepatu_running_grande.jpg'),
(95, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:424;s:4:"file";s:33:"2018/10/sepatu_running_grande.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"sepatu_running_grande-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"sepatu_running_grande-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:20:"trending-blog-slider";a:4:{s:4:"file";s:33:"sepatu_running_grande-512x424.jpg";s:5:"width";i:512;s:6:"height";i:424;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:33:"sepatu_running_grande-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:33:"sepatu_running_grande-600x424.jpg";s:5:"width";i:600;s:6:"height";i:424;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:33:"sepatu_running_grande-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"sepatu_running_grande-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:33:"sepatu_running_grande-600x424.jpg";s:5:"width";i:600;s:6:"height";i:424;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"sepatu_running_grande-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(96, 36, '_wp_attached_file', '2018/10/gbr.jpeg'),
(97, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:477;s:4:"file";s:16:"2018/10/gbr.jpeg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"gbr-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"gbr-300x239.jpeg";s:5:"width";i:300;s:6:"height";i:239;s:9:"mime-type";s:10:"image/jpeg";}s:20:"trending-blog-slider";a:4:{s:4:"file";s:16:"gbr-512x477.jpeg";s:5:"width";i:512;s:6:"height";i:477;s:9:"mime-type";s:10:"image/jpeg";}s:24:"galway-lite-related-post";a:4:{s:4:"file";s:16:"gbr-600x465.jpeg";s:5:"width";i:600;s:6:"height";i:465;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:16:"gbr-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:16:"gbr-600x477.jpeg";s:5:"width";i:600;s:6:"height";i:477;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"gbr-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"gbr-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"gbr-600x477.jpeg";s:5:"width";i:600;s:6:"height";i:477;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"gbr-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(98, 37, '_wp_attached_file', '2018/10/sandiaga.jpeg'),
(99, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:338;s:6:"height";i:600;s:4:"file";s:21:"2018/10/sandiaga.jpeg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"sandiaga-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"sandiaga-169x300.jpeg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:23:"galway-lite-main-banner";a:4:{s:4:"file";s:21:"sandiaga-338x550.jpeg";s:5:"width";i:338;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:24:"galway-lite-related-post";a:4:{s:4:"file";s:21:"sandiaga-338x465.jpeg";s:5:"width";i:338;s:6:"height";i:465;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:21:"sandiaga-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"sandiaga-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"sandiaga-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"sandiaga-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(100, 22, '_thumbnail_id', '35'),
(101, 38, '_wc_review_count', '0'),
(102, 38, '_wc_rating_count', 'a:0:{}'),
(103, 38, '_wc_average_rating', '0'),
(104, 38, '_edit_lock', '1539987015:1'),
(105, 38, '_edit_last', '1'),
(106, 39, '_wp_attached_file', '2018/10/jaket-jokowi.png'),
(107, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:24:"2018/10/jaket-jokowi.png";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"jaket-jokowi-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"jaket-jokowi-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:20:"trending-blog-slider";a:4:{s:4:"file";s:24:"jaket-jokowi-512x640.png";s:5:"width";i:512;s:6:"height";i:640;s:9:"mime-type";s:9:"image/png";}s:23:"galway-lite-main-banner";a:4:{s:4:"file";s:24:"jaket-jokowi-700x550.png";s:5:"width";i:700;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:24:"galway-lite-related-post";a:4:{s:4:"file";s:24:"jaket-jokowi-700x465.png";s:5:"width";i:700;s:6:"height";i:465;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:24:"jaket-jokowi-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:24:"jaket-jokowi-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"jaket-jokowi-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"jaket-jokowi-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:24:"jaket-jokowi-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"jaket-jokowi-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(108, 40, '_wp_attached_file', '2018/10/jaket-jokowi-2.jpg'),
(109, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:393;s:4:"file";s:26:"2018/10/jaket-jokowi-2.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"jaket-jokowi-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"jaket-jokowi-2-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:20:"trending-blog-slider";a:4:{s:4:"file";s:26:"jaket-jokowi-2-512x393.jpg";s:5:"width";i:512;s:6:"height";i:393;s:9:"mime-type";s:10:"image/jpeg";}s:24:"galway-lite-related-post";a:4:{s:4:"file";s:26:"jaket-jokowi-2-700x393.jpg";s:5:"width";i:700;s:6:"height";i:393;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"jaket-jokowi-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:26:"jaket-jokowi-2-600x337.jpg";s:5:"width";i:600;s:6:"height";i:337;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"jaket-jokowi-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"jaket-jokowi-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"jaket-jokowi-2-600x337.jpg";s:5:"width";i:600;s:6:"height";i:337;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"jaket-jokowi-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(110, 38, '_thumbnail_id', '39'),
(111, 38, '_sku', ''),
(112, 38, '_regular_price', '100000'),
(113, 38, '_sale_price', ''),
(114, 38, '_sale_price_dates_from', ''),
(115, 38, '_sale_price_dates_to', ''),
(116, 38, 'total_sales', '0'),
(117, 38, '_tax_status', 'taxable'),
(118, 38, '_tax_class', ''),
(119, 38, '_manage_stock', 'no'),
(120, 38, '_backorders', 'no'),
(121, 38, '_sold_individually', 'no'),
(122, 38, '_weight', '0.3'),
(123, 38, '_length', '10'),
(124, 38, '_width', '10'),
(125, 38, '_height', '10'),
(126, 38, '_upsell_ids', 'a:0:{}'),
(127, 38, '_crosssell_ids', 'a:0:{}'),
(128, 38, '_purchase_note', 'Anti air, anti api, anti angin, anti tanah, dah kayak avatar'),
(129, 38, '_default_attributes', 'a:0:{}'),
(130, 38, '_virtual', 'no'),
(131, 38, '_downloadable', 'no'),
(132, 38, '_product_image_gallery', '40'),
(133, 38, '_download_limit', '-1'),
(134, 38, '_download_expiry', '-1'),
(135, 38, '_stock', NULL),
(136, 38, '_stock_status', 'instock'),
(137, 38, '_product_version', '3.4.6'),
(138, 38, '_price', '100000'),
(139, 41, '_edit_lock', '1539987754:1'),
(141, 42, '_customize_changeset_uuid', '2beb16b8-05f2-4e7e-bf71-cd177435e14e'),
(150, 41, '_wp_trash_meta_status', 'publish'),
(151, 41, '_wp_trash_meta_time', '1539987756'),
(152, 45, '_menu_item_type', 'post_type'),
(153, 45, '_menu_item_menu_item_parent', '0'),
(154, 45, '_menu_item_object_id', '42'),
(155, 45, '_menu_item_object', 'page'),
(156, 45, '_menu_item_target', ''),
(157, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(158, 45, '_menu_item_xfn', ''),
(159, 45, '_menu_item_url', ''),
(160, 45, '_menu_item_orphaned', '1539987856'),
(161, 46, '_menu_item_type', 'post_type'),
(162, 46, '_menu_item_menu_item_parent', '0'),
(163, 46, '_menu_item_object_id', '5'),
(164, 46, '_menu_item_object', 'page'),
(165, 46, '_menu_item_target', ''),
(166, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(167, 46, '_menu_item_xfn', ''),
(168, 46, '_menu_item_url', ''),
(173, 10, '_edit_lock', '1540139749:1'),
(174, 47, '_wp_trash_meta_status', 'publish'),
(175, 47, '_wp_trash_meta_time', '1539988244'),
(176, 50, '_wp_trash_meta_status', 'publish'),
(177, 50, '_wp_trash_meta_time', '1539988267'),
(178, 12, '_edit_lock', '1539988740:1'),
(179, 1, '_edit_lock', '1539988989:1'),
(180, 53, '_wp_attached_file', '2018/10/0854136-larijogging-780x390.jpg'),
(181, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:780;s:6:"height";i:390;s:4:"file";s:39:"2018/10/0854136-larijogging-780x390.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"0854136-larijogging-780x390-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"0854136-larijogging-780x390-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:39:"0854136-larijogging-780x390-768x384.jpg";s:5:"width";i:768;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:20:"trending-blog-slider";a:4:{s:4:"file";s:39:"0854136-larijogging-780x390-512x390.jpg";s:5:"width";i:512;s:6:"height";i:390;s:9:"mime-type";s:10:"image/jpeg";}s:24:"galway-lite-related-post";a:4:{s:4:"file";s:39:"0854136-larijogging-780x390-700x390.jpg";s:5:"width";i:700;s:6:"height";i:390;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:39:"0854136-larijogging-780x390-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:39:"0854136-larijogging-780x390-600x300.jpg";s:5:"width";i:600;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:39:"0854136-larijogging-780x390-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:39:"0854136-larijogging-780x390-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:39:"0854136-larijogging-780x390-600x300.jpg";s:5:"width";i:600;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:39:"0854136-larijogging-780x390-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(182, 1, '_edit_last', '1'),
(183, 1, '_thumbnail_id', '53'),
(186, 1, '_wp_old_slug', 'hello-world'),
(187, 1, 'galway-lite-meta-checkbox', ''),
(188, 1, 'galway-lite-meta-select-layout', 'left-sidebar'),
(189, 1, 'galway-lite-meta-image-layout', 'full'),
(190, 55, '_edit_lock', '1539989440:1'),
(191, 55, '_wp_trash_meta_status', 'publish'),
(192, 55, '_wp_trash_meta_time', '1539989441'),
(193, 57, '_wp_attached_file', '2018/10/anjing.jpg'),
(194, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:393;s:4:"file";s:18:"2018/10/anjing.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"anjing-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"anjing-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:20:"trending-blog-slider";a:4:{s:4:"file";s:18:"anjing-512x393.jpg";s:5:"width";i:512;s:6:"height";i:393;s:9:"mime-type";s:10:"image/jpeg";}s:24:"galway-lite-related-post";a:4:{s:4:"file";s:18:"anjing-700x393.jpg";s:5:"width";i:700;s:6:"height";i:393;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"anjing-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"anjing-600x337.jpg";s:5:"width";i:600;s:6:"height";i:337;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"anjing-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"anjing-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"anjing-600x337.jpg";s:5:"width";i:600;s:6:"height";i:337;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"anjing-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(195, 15, '_thumbnail_id', '57'),
(198, 15, '_wp_old_slug', 'tes'),
(199, 15, 'galway-lite-meta-checkbox', ''),
(200, 15, 'galway-lite-meta-select-layout', 'left-sidebar'),
(201, 15, 'galway-lite-meta-image-layout', 'full'),
(202, 59, '_edit_lock', '1539990026:1'),
(203, 59, '_edit_last', '1'),
(204, 60, '_wp_attached_file', '2018/10/lari.jpg'),
(205, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:675;s:6:"height";i:389;s:4:"file";s:16:"2018/10/lari.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"lari-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"lari-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:20:"trending-blog-slider";a:4:{s:4:"file";s:16:"lari-512x389.jpg";s:5:"width";i:512;s:6:"height";i:389;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:16:"lari-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:16:"lari-600x346.jpg";s:5:"width";i:600;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"lari-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"lari-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"lari-600x346.jpg";s:5:"width";i:600;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"lari-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:3:"Dok";s:6:"camera";s:0:"";s:7:"caption";s:48:"<p>lomba lari&nbsp;BNI UI Half Marathon 2017</p>";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:4:"NULL";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:4:"NULL";s:11:"orientation";s:1:"0";s:8:"keywords";a:1:{i:0;s:36:"lomba lari BNI UI Half Marathon 2017";}}}'),
(206, 59, '_thumbnail_id', '60'),
(209, 59, 'galway-lite-meta-checkbox', ''),
(210, 59, 'galway-lite-meta-select-layout', 'left-sidebar'),
(211, 59, 'galway-lite-meta-image-layout', 'full'),
(212, 5, '_edit_lock', '1539990157:1'),
(213, 42, '_edit_lock', '1539990301:1'),
(214, 42, '_wp_trash_meta_status', 'publish'),
(215, 42, '_wp_trash_meta_time', '1539990443'),
(216, 42, '_wp_desired_post_slug', 'shop-2'),
(217, 62, '_edit_lock', '1539990500:1'),
(218, 62, '_wp_trash_meta_status', 'publish'),
(219, 62, '_wp_trash_meta_time', '1539990501'),
(220, 64, '_wp_trash_meta_status', 'publish'),
(221, 64, '_wp_trash_meta_time', '1539990617'),
(237, 66, '_menu_item_type', 'taxonomy'),
(238, 66, '_menu_item_menu_item_parent', '0'),
(239, 66, '_menu_item_object_id', '30'),
(240, 66, '_menu_item_object', 'category'),
(241, 66, '_menu_item_target', ''),
(242, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(243, 66, '_menu_item_xfn', ''),
(244, 66, '_menu_item_url', ''),
(264, 67, '_edit_lock', '1540139337:1'),
(265, 67, '_wp_trash_meta_status', 'publish'),
(266, 67, '_wp_trash_meta_time', '1540139338'),
(267, 69, '_wp_trash_meta_status', 'publish'),
(268, 69, '_wp_trash_meta_time', '1540139398'),
(269, 71, '_wp_trash_meta_status', 'publish'),
(270, 71, '_wp_trash_meta_time', '1540139557'),
(271, 73, '_edit_lock', '1540139626:1'),
(272, 73, '_wp_trash_meta_status', 'publish'),
(273, 73, '_wp_trash_meta_time', '1540139627'),
(274, 75, '_wp_trash_meta_status', 'publish'),
(275, 75, '_wp_trash_meta_time', '1540139776'),
(276, 10, '_edit_last', '1'),
(277, 10, 'galway-lite-meta-checkbox', ''),
(278, 10, 'galway-lite-meta-select-layout', 'left-sidebar'),
(279, 10, 'galway-lite-meta-image-layout', 'full'),
(280, 80, '_edit_lock', '1540140201:1'),
(281, 80, '_wp_trash_meta_status', 'publish'),
(282, 80, '_wp_trash_meta_time', '1540140202'),
(283, 82, '_wp_trash_meta_status', 'publish'),
(284, 82, '_wp_trash_meta_time', '1540140531'),
(287, 85, '_edit_lock', '1540142305:1'),
(290, 87, '_EventOrigin', 'events-calendar'),
(291, 87, '_tribe_modified_fields', 'a:22:{s:12:"_EventOrigin";i:1540142547;s:10:"_edit_last";i:1540142565;s:10:"post_title";i:1540142565;s:11:"post_status";i:1540142810;s:12:"post_content";i:1540142647;s:16:"tribe_events_cat";i:1540142809;s:13:"_thumbnail_id";i:1540142809;s:17:"_EventShowMapLink";i:1540142810;s:13:"_EventShowMap";i:1540142810;s:13:"_EventVenueID";i:1540142813;s:17:"_EventOrganizerID";i:1540142814;s:12:"_EventAllDay";i:1540142814;s:15:"_EventStartDate";i:1540142814;s:13:"_EventEndDate";i:1540142814;s:18:"_EventStartDateUTC";i:1540142814;s:16:"_EventEndDateUTC";i:1540142814;s:20:"_EventCurrencySymbol";i:1540142814;s:22:"_EventCurrencyPosition";i:1540142815;s:10:"_EventCost";i:1540142815;s:9:"_EventURL";i:1540142815;s:14:"_EventTimezone";i:1540142815;s:18:"_EventTimezoneAbbr";i:1540142815;}'),
(292, 87, '_edit_lock', '1540142737:1'),
(293, 87, '_edit_last', '1'),
(294, 88, '_wp_attached_file', '2018/10/HAPPY.jpg'),
(295, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1518;s:6:"height";i:769;s:4:"file";s:17:"2018/10/HAPPY.jpg";s:5:"sizes";a:13:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"HAPPY-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"HAPPY-300x152.jpg";s:5:"width";i:300;s:6:"height";i:152;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"HAPPY-768x389.jpg";s:5:"width";i:768;s:6:"height";i:389;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"HAPPY-1024x519.jpg";s:5:"width";i:1024;s:6:"height";i:519;s:9:"mime-type";s:10:"image/jpeg";}s:20:"trending-blog-slider";a:4:{s:4:"file";s:17:"HAPPY-512x640.jpg";s:5:"width";i:512;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:23:"galway-lite-main-banner";a:4:{s:4:"file";s:18:"HAPPY-1370x550.jpg";s:5:"width";i:1370;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:24:"galway-lite-related-post";a:4:{s:4:"file";s:17:"HAPPY-700x465.jpg";s:5:"width";i:700;s:6:"height";i:465;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:17:"HAPPY-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:17:"HAPPY-600x304.jpg";s:5:"width";i:600;s:6:"height";i:304;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:17:"HAPPY-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"HAPPY-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"HAPPY-600x304.jpg";s:5:"width";i:600;s:6:"height";i:304;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"HAPPY-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:18:"Regin Iqbal Mareza";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1540167823";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(296, 87, '_thumbnail_id', '88'),
(297, 89, '_EventShowMapLink', '1'),
(298, 89, '_EventShowMap', '1'),
(299, 89, '_EventAllDay', 'yes'),
(300, 89, '_EventStartDate', '2018-10-30 00:00:00'),
(301, 89, '_EventEndDate', '2018-10-30 23:59:59'),
(302, 89, '_EventStartDateUTC', '2018-10-30 00:00:00'),
(303, 89, '_EventEndDateUTC', '2018-10-30 23:59:59'),
(304, 89, '_EventCurrencySymbol', ''),
(305, 89, '_EventCurrencyPosition', 'prefix'),
(306, 89, '_EventCost', ''),
(307, 89, '_EventURL', ''),
(308, 89, '_EventTimezone', 'UTC+0'),
(309, 89, '_EventTimezoneAbbr', 'UTC+0'),
(310, 87, '_EventShowMapLink', '1'),
(311, 87, '_EventShowMap', '1'),
(312, 90, '_VenueOrigin', 'events-calendar'),
(313, 90, '_tribe_modified_fields', 'a:16:{s:12:"_VenueOrigin";i:1540142811;s:17:"_EventShowMapLink";i:1540142811;s:13:"_EventShowMap";i:1540142811;s:17:"_VenueShowMapLink";i:1540142811;s:13:"_VenueShowMap";i:1540142812;s:13:"_VenueAddress";i:1540142812;s:10:"_VenueCity";i:1540142812;s:13:"_VenueCountry";i:1540142812;s:14:"_VenueProvince";i:1540142812;s:11:"_VenueState";i:1540142812;s:9:"_VenueZip";i:1540142812;s:11:"_VenuePhone";i:1540142812;s:9:"_VenueURL";i:1540142812;s:18:"_VenueEventShowMap";i:1540142813;s:22:"_VenueEventShowMapLink";i:1540142813;s:19:"_VenueStateProvince";i:1540142813;}'),
(314, 90, '_EventShowMapLink', '1'),
(315, 90, '_EventShowMap', '1'),
(316, 90, '_VenueShowMapLink', '1'),
(317, 90, '_VenueShowMap', '1'),
(318, 90, '_VenueAddress', 'Salemba'),
(319, 90, '_VenueCity', 'Jakarta'),
(320, 90, '_VenueCountry', 'Indonesia'),
(321, 90, '_VenueProvince', ''),
(322, 90, '_VenueState', ''),
(323, 90, '_VenueZip', ''),
(324, 90, '_VenuePhone', ''),
(325, 90, '_VenueURL', ''),
(326, 90, '_VenueEventShowMap', '1'),
(327, 90, '_VenueEventShowMapLink', '1'),
(328, 90, '_VenueStateProvince', ''),
(329, 87, '_EventVenueID', '90'),
(330, 91, '_OrganizerOrigin', 'events-calendar'),
(331, 91, '_tribe_modified_fields', 'a:5:{s:16:"_OrganizerOrigin";i:1540142813;s:21:"_OrganizerOrganizerID";i:1540142813;s:15:"_OrganizerPhone";i:1540142813;s:17:"_OrganizerWebsite";i:1540142813;s:15:"_OrganizerEmail";i:1540142814;}'),
(332, 91, '_OrganizerOrganizerID', '0'),
(333, 91, '_OrganizerPhone', ''),
(334, 91, '_OrganizerWebsite', ''),
(335, 91, '_OrganizerEmail', ''),
(336, 87, '_EventOrganizerID', '91'),
(337, 87, '_EventAllDay', 'yes'),
(338, 87, '_EventStartDate', '2018-10-30 00:00:00'),
(339, 87, '_EventEndDate', '2018-10-30 23:59:59'),
(340, 87, '_EventStartDateUTC', '2018-10-30 00:00:00'),
(341, 87, '_EventEndDateUTC', '2018-10-30 23:59:59'),
(342, 87, '_EventCurrencySymbol', ''),
(343, 87, '_EventCurrencyPosition', 'prefix'),
(344, 87, '_EventCost', ''),
(345, 87, '_EventURL', ''),
(346, 87, '_EventTimezone', 'UTC+0'),
(347, 87, '_EventTimezoneAbbr', 'UTC+0'),
(348, 92, '_EventOrigin', 'events-calendar'),
(349, 92, '_tribe_modified_fields', 'a:22:{s:12:"_EventOrigin";i:1540143010;s:10:"_edit_last";i:1540143034;s:10:"post_title";i:1540143260;s:11:"post_status";i:1540143390;s:12:"post_content";i:1540143322;s:16:"tribe_events_cat";i:1540143389;s:13:"_thumbnail_id";i:1540143389;s:17:"_EventShowMapLink";i:1540143390;s:13:"_EventShowMap";i:1540143390;s:13:"_EventVenueID";i:1540143392;s:17:"_EventOrganizerID";i:1540143392;s:12:"_EventAllDay";i:1540143393;s:15:"_EventStartDate";i:1540143393;s:13:"_EventEndDate";i:1540143393;s:18:"_EventStartDateUTC";i:1540143393;s:16:"_EventEndDateUTC";i:1540143393;s:20:"_EventCurrencySymbol";i:1540143393;s:22:"_EventCurrencyPosition";i:1540143393;s:10:"_EventCost";i:1540143393;s:9:"_EventURL";i:1540143394;s:14:"_EventTimezone";i:1540143394;s:18:"_EventTimezoneAbbr";i:1540143394;}'),
(350, 92, '_edit_lock', '1540143471:1'),
(351, 92, '_edit_last', '1'),
(352, 93, '_wp_attached_file', '2018/10/naruto.jpg'),
(353, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:814;s:6:"height";i:438;s:4:"file";s:18:"2018/10/naruto.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"naruto-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"naruto-300x161.jpg";s:5:"width";i:300;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"naruto-768x413.jpg";s:5:"width";i:768;s:6:"height";i:413;s:9:"mime-type";s:10:"image/jpeg";}s:20:"trending-blog-slider";a:4:{s:4:"file";s:18:"naruto-512x438.jpg";s:5:"width";i:512;s:6:"height";i:438;s:9:"mime-type";s:10:"image/jpeg";}s:24:"galway-lite-related-post";a:4:{s:4:"file";s:18:"naruto-700x438.jpg";s:5:"width";i:700;s:6:"height";i:438;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"naruto-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"naruto-600x323.jpg";s:5:"width";i:600;s:6:"height";i:323;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"naruto-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"naruto-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"naruto-600x323.jpg";s:5:"width";i:600;s:6:"height";i:323;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"naruto-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:18:"Regin Iqbal Mareza";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1540168421";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(354, 92, '_thumbnail_id', '93'),
(355, 94, '_EventShowMapLink', '1'),
(356, 94, '_EventShowMap', '1'),
(357, 94, '_EventAllDay', 'yes'),
(358, 94, '_EventStartDate', '2018-10-31 00:00:00'),
(359, 94, '_EventEndDate', '2018-10-31 23:59:59'),
(360, 94, '_EventStartDateUTC', '2018-10-31 00:00:00'),
(361, 94, '_EventEndDateUTC', '2018-10-31 23:59:59'),
(362, 94, '_EventCurrencySymbol', ''),
(363, 94, '_EventCurrencyPosition', 'prefix'),
(364, 94, '_EventCost', ''),
(365, 94, '_EventURL', ''),
(366, 94, '_EventTimezone', 'UTC+0'),
(367, 94, '_EventTimezoneAbbr', 'UTC+0'),
(368, 92, '_EventShowMapLink', '1'),
(369, 92, '_EventShowMap', '1'),
(370, 95, '_VenueOrigin', 'events-calendar'),
(371, 95, '_tribe_modified_fields', 'a:16:{s:12:"_VenueOrigin";i:1540143390;s:17:"_EventShowMapLink";i:1540143390;s:13:"_EventShowMap";i:1540143390;s:17:"_VenueShowMapLink";i:1540143391;s:13:"_VenueShowMap";i:1540143391;s:13:"_VenueAddress";i:1540143391;s:10:"_VenueCity";i:1540143391;s:13:"_VenueCountry";i:1540143391;s:14:"_VenueProvince";i:1540143391;s:11:"_VenueState";i:1540143391;s:9:"_VenueZip";i:1540143391;s:11:"_VenuePhone";i:1540143391;s:9:"_VenueURL";i:1540143391;s:18:"_VenueEventShowMap";i:1540143392;s:22:"_VenueEventShowMapLink";i:1540143392;s:19:"_VenueStateProvince";i:1540143392;}'),
(372, 95, '_EventShowMapLink', '1'),
(373, 95, '_EventShowMap', '1'),
(374, 95, '_VenueShowMapLink', '1'),
(375, 95, '_VenueShowMap', '1'),
(376, 95, '_VenueAddress', 'KONOHA, Jalan Fachrudin, Kampung Bali, Central Jakarta City, Jakarta'),
(377, 95, '_VenueCity', ''),
(378, 95, '_VenueCountry', ''),
(379, 95, '_VenueProvince', ''),
(380, 95, '_VenueState', ''),
(381, 95, '_VenueZip', ''),
(382, 95, '_VenuePhone', ''),
(383, 95, '_VenueURL', ''),
(384, 95, '_VenueEventShowMap', '1'),
(385, 95, '_VenueEventShowMapLink', '1'),
(386, 95, '_VenueStateProvince', ''),
(387, 92, '_EventVenueID', '95'),
(388, 96, '_OrganizerOrigin', 'events-calendar'),
(389, 96, '_tribe_modified_fields', 'a:5:{s:16:"_OrganizerOrigin";i:1540143392;s:21:"_OrganizerOrganizerID";i:1540143392;s:15:"_OrganizerPhone";i:1540143392;s:17:"_OrganizerWebsite";i:1540143392;s:15:"_OrganizerEmail";i:1540143392;}'),
(390, 96, '_OrganizerOrganizerID', ''),
(391, 96, '_OrganizerPhone', ''),
(392, 96, '_OrganizerWebsite', ''),
(393, 96, '_OrganizerEmail', ''),
(394, 92, '_EventOrganizerID', '96'),
(395, 92, '_EventAllDay', 'yes'),
(396, 92, '_EventStartDate', '2018-10-31 00:00:00'),
(397, 92, '_EventEndDate', '2018-10-31 23:59:59'),
(398, 92, '_EventStartDateUTC', '2018-10-31 00:00:00'),
(399, 92, '_EventEndDateUTC', '2018-10-31 23:59:59'),
(400, 92, '_EventCurrencySymbol', ''),
(401, 92, '_EventCurrencyPosition', 'prefix'),
(402, 92, '_EventCost', ''),
(403, 92, '_EventURL', ''),
(404, 92, '_EventTimezone', 'UTC+0'),
(405, 92, '_EventTimezoneAbbr', 'UTC+0'),
(406, 98, '_menu_item_type', 'post_type'),
(407, 98, '_menu_item_menu_item_parent', '0'),
(408, 98, '_menu_item_object_id', '92'),
(409, 98, '_menu_item_object', 'tribe_events'),
(410, 98, '_menu_item_target', ''),
(411, 98, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(412, 98, '_menu_item_xfn', ''),
(413, 98, '_menu_item_url', ''),
(414, 98, '_menu_item_orphaned', '1540143514'),
(415, 99, '_menu_item_type', 'custom'),
(416, 99, '_menu_item_menu_item_parent', '0'),
(417, 99, '_menu_item_object_id', '99'),
(418, 99, '_menu_item_object', 'custom'),
(419, 99, '_menu_item_target', ''),
(420, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(421, 99, '_menu_item_xfn', ''),
(422, 99, '_menu_item_url', 'http://localhost:10021/mti-runners/events/'),
(433, 101, '_edit_lock', '1540147619:1'),
(434, 101, '_edit_last', '1'),
(435, 101, 'oirl-mb-distance', '5'),
(436, 101, 'oirl-mb-duration', '00:45:00'),
(437, 101, 'oirl-mb-embed-external', 'no'),
(438, 104, '_edit_lock', '1540145861:1'),
(439, 105, '_edit_lock', '1540146874:1'),
(440, 106, '_edit_lock', '1540147719:1'),
(441, 106, '_edit_last', '1'),
(444, 106, 'galway-lite-meta-checkbox', ''),
(445, 106, 'galway-lite-meta-select-layout', 'left-sidebar'),
(446, 106, 'galway-lite-meta-image-layout', 'full'),
(447, 106, '_wp_trash_meta_status', 'publish'),
(448, 106, '_wp_trash_meta_time', '1540147996'),
(449, 106, '_wp_desired_post_slug', 'tes'),
(452, 109, '_menu_item_type', 'custom'),
(453, 109, '_menu_item_menu_item_parent', '0'),
(454, 109, '_menu_item_object_id', '109'),
(455, 109, '_menu_item_object', 'custom'),
(456, 109, '_menu_item_target', ''),
(457, 109, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(458, 109, '_menu_item_xfn', ''),
(459, 109, '_menu_item_url', 'http://localhost:10021/mti-runners/oi_run_log_post/'),
(473, 99, '_convert_to_logout', ''),
(474, 99, '_link_visibility', ''),
(475, 99, '_link_roles|||0|_empty', ''),
(476, 66, '_convert_to_logout', ''),
(477, 66, '_link_visibility', ''),
(478, 66, '_link_roles|||0|_empty', ''),
(479, 109, '_convert_to_logout', ''),
(480, 109, '_link_visibility', ''),
(481, 109, '_link_roles|||0|_empty', ''),
(482, 46, '_convert_to_logout', ''),
(483, 46, '_link_visibility', ''),
(484, 46, '_link_roles|||0|_empty', ''),
(485, 110, '_edit_lock', '1540149087:1'),
(486, 111, '_edit_lock', '1540149245:5'),
(487, 112, '_edit_lock', '1540149200:5'),
(488, 112, '_edit_last', '5'),
(489, 112, 'oirl-mb-distance', '10'),
(490, 112, 'oirl-mb-duration', '00:50:00'),
(491, 112, 'oirl-mb-embed-external', 'no'),
(492, 114, '_edit_lock', '1540149590:5'),
(493, 115, '_edit_lock', '1540150974:5'),
(494, 116, '_edit_lock', '1540150904:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-10-18 07:20:44', '2018-10-18 07:20:44', 'Maraton menjadi tren gaya hidup sehat sepanjang 2013. Berbagai perlombaan maraton berlangsung di ibukota juga beberapa kota lainnya. Hidup sehat dengan berolahraga menjadi pemicunya. Pasalnya, lari menjadi cara termudah dan paling sederhana dalam berolahraga. Namun, apakah semudah itu melakukan lari jarak jauh minimal sepanjang lima kilometer ini?\r\n\r\nJika ingin tubuh sehat sebagai hasil akhirnya, perlu ada kiat dan persiapan/latihan tersendiri dalam melakukan lari jarak jauh. Dengan menjalankan pola latihan tepat, bukan hanya sehat, prestasi pun bisa didapat dari lari jarak jauh ini.\r\n\r\nGatot Sudarsono, pelatih beberapa peserta lari 10K yang didukung salah satu merek susu, serta Ketua Umum Indonesia Muda (klub road run), berbagi kiatnya kepada Kompas Health.\r\n\r\n"Tak perlu jadi atlet tapi bisa punya rangking masuk 10 besar dalam lomba maraton misalnya," imbuh mantan atlet nasional ini.\r\n\r\nLantas seperti apa pola latihannya? Berikut penjelasan Gatot sekaligus mengungkap fakta di balik latihan lari yang tepat:\r\n\r\n<strong>* Latihan rutin 30 menit hingga dua jam</strong>.\r\nUntuk bisa mendapatkan banyak manfaat lari, cukup latihan rutin 30 menit hingga maksimal dua jam. Namun, latihan ini tak bisa sembarangan, karena harus terprogram jika ingin mendapatkan manfaat maksimal. Menjalani program inilah yang menjadi tantangan sekaligus menuntut komitmen dari pelari.\r\n\r\n<strong>* Lihat kondisi</strong>.\r\nProgram latihan lari juga bergantung kondisi, kebutuhan, kemampuan, serta tujuan si pelari. Tak ada program yang sifatnya mutlak. Selain itu, program latihan lari juga perlu diperbarui dalam jangka waktu tertentu. Artinya, untuk mendapatkan manfaat maksimal dari lari, Anda tak bisa sekadar lari mengelilingi lapangan misalnya.\r\n\r\n"Program perlu update supaya ada peningkatan setiap kali latihan," tutur Gatot.\r\n\r\n<strong>* Lari, bukan jalan cepat</strong>\r\nSaat Anda lari, jangan pernah mencampurkan latihan dengan jalan kaki.\r\n\r\n"Saat lari dengan kecepatan maksimum sama sekali tidak boleh mencampurnya dengan jalan kaki. Boleh lari lebih pelan tapi jangan jalan," saran Gatot.\r\n\r\nLari yang dicampur dengan jalan kaki menimbulkan sejumlah risiko. Utamanya melemahkan kekuatan otot. Padahal jika kekuatan otot meningkat, kecepatan lari pun bisa bertambah karena jantung dan paru-paru juga meningkat kekuatannya. Dampak positif lainnya jika kekuatan otot meningkat adalah saat lari Anda tidak merasakan nafas terengah-engah. Beban tubuh pun menjadi tidak seberat kalau Anda mencampur lari dengan jalan kaki.\r\n\r\n<strong>* Kecepatan stabil</strong>\r\n"Lari harus dilakukan dengan kecepatan stabil agar kondisi tubuh tetap hangat. Suhu tubuh ini berpengaruh pada kecepatan lari," ungkap Gatot.\r\n\r\nKarenanya, saat lari baik latihan jelang lomba atau olahraga rutin, tetaplah konsisten berlari bukan mengombinasikan dengan jalan kaki. Jika Anda mengganti lari dengan jalan kaki, apalagi jika berhenti berlari, suhu tubuh menjadi dingin. Anda butuh energi lebih besar untuk memulai lari dari nol.\r\n\r\n"Biasanya untuk memulai lari akan timbul rasa malas, kalau suhu tubuh sudah dingin," jelasnya.\r\n\r\nNah, bagaimana bisa Anda mencapai tujuan dari olahraga lari, jika di tengah perjalanan muncul rasa malas. Lari pun tak bisa memberikan manfaat maksimalnya karena rasa malas sudah melanda. Alhasil, harapan memiliki tubuh bugar apalagi niatan menurunkan berat badan, akan semakin sulit tercapai.\r\n<div><strong>* Jangan percaya latihan instan.</strong>\r\nKalau Anda berminat mengikuti berbagai ajang road run, lakukan latihan yang terprogram dengan trainer, bukan yang instan lewat tutorial di internet.</div>\r\nGatot mengatakan banyak pelari yang salah kaprah saat memulai program latihan. Terutama saat menyiapkan diri untuk mengikuti lari 10K misalnya.  Banyak pelari yang mengandalkan program instan yang bisa didapatkan lewat internet.\r\n\r\n“Banyak pelari yang salah kaprah.  Latihan lari dengan buka internet dan menjalani program baku. Padahal latihan lari tidak bisa baku,” jelasnya.\r\n\r\nGatot menjelaskan, kalau latihan dengan membuka internet, kita tidak bisa tahu kemampuan fisik sejauh mana. Sementara kalau latihan terprogram sesuai kebutuhan  dan kondisi dengan bantuan instruktur, kita bisa mengukur kemampuan diri.\r\n\r\nKesalahan yang umum terjadi saat latihan dengan program instan di internet adalah seseorang latihan tak sesuai kemampuan. Atau dengan kata lain dipaksakan latihan padahal tubuhnya tak mampu menjalani pola latihan tersebut.\r\n\r\n<strong>* Latihan bersama instruktur.</strong>\r\nLatihan bersama instruktur bukan hanya bisa merancang program dengan melihat kemampuan tapi juga melihat sisi psikologis, kesehatan fisik, bahkan makanan.\r\n\r\nAgar hasilnya maksimal, Gatot menyarankan sebaiknya cari trainer yang memahami anatomi tubuh. Lagi-lagi, ini diperlukan untuk mencegah terjadinya cedera.\r\n\r\n<strong>* Latihan tepat cegah cedera.</strong>\r\nGatot melanjutkan, program latihan lari yang tepat bukan hanya membantu mencapai garis finish dengan catatan waktu yang baik, namun juga bisa mengurangi risiko cedera setelah lari. Karenanya, Gatot menyarankan untuk tidak memaksakan diri mengikuti marathon jika tak menyiapkan diri dengan baik lewat latihan tepat.\r\n\r\n“Kalau dipaksakan bisa saja mencapai garis finish, namun setelah lomba, otot bisa cedera dan tidak pulih setelah berhari-hari pascalomba, lalu merasa sakit di bagian tertentu terutama kaki, bahkan bisa sakit hampir di semua bagian tubuh,”\r\n\r\nPola latihan yang keliru bisa menyebabkan cedera hingga berbulan-bulan. Akibatnya, aktivitas harian pun terganggu, kesakitan saat naik turun tangga, dan rasa sakit ini tidak kunjung hilang.\r\n\r\n“Kalau sudah sakit berkepanjangan karena cedera akibat pola latihan keliru, tak cukup pijat atau obat, bahkan bisa operasi,” tandasnya.\r\n\r\n<strong>* Lebih efektif hasilnya pada wanita.</strong>\r\nGatot menambahkan melalui olahraga lari sebenarnya perempuan bisa mendapatkan lebih banyak manfaat. Kalau punya komitmen keras, bukan hanya prestasi yang bisa lebih cepat didapat. Manfaat olahraga lari juga bisa lebih cepat terlihat pada perempuan.\r\n\r\n"Dibandingkan pria, perempuan bisa lebih cepat menurunkan berat badan dengan lari," ungkapnya.\r\n\r\nSumber: <a href="https://health.kompas.com/read/2013/12/29/1658565/Mau.Kuat.Lari.Jarak.Jauh.Ini.Rahasianya">Kompas</a>', 'Mau Kuat Lari Jarak Jauh? Ini Rahasianya', '', 'publish', 'open', 'open', '', 'mau-kuat-lari', '', '', '2018-10-19 22:44:47', '2018-10-19 22:44:47', '', 0, 'http://localhost:10021/mti-runners/?p=1', 0, 'post', '', 1),
(2, 1, '2018-10-18 07:20:44', '2018-10-18 07:20:44', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:10021/mti-runners/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-10-18 07:20:44', '2018-10-18 07:20:44', '', 0, 'http://localhost:10021/mti-runners/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-10-18 07:21:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-18 07:21:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?p=3', 0, 'post', '', 0),
(5, 1, '2018-10-18 07:33:29', '2018-10-18 07:33:29', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-10-18 07:33:29', '2018-10-18 07:33:29', '', 0, 'http://localhost:10021/mti-runners/shop/', 0, 'page', '', 0),
(6, 1, '2018-10-18 07:33:29', '2018-10-18 07:33:29', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-10-18 07:33:29', '2018-10-18 07:33:29', '', 0, 'http://localhost:10021/mti-runners/cart/', 0, 'page', '', 0),
(7, 1, '2018-10-18 07:33:30', '2018-10-18 07:33:30', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-10-18 07:33:30', '2018-10-18 07:33:30', '', 0, 'http://localhost:10021/mti-runners/checkout/', 0, 'page', '', 0),
(8, 1, '2018-10-18 07:33:30', '2018-10-18 07:33:30', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-10-18 07:33:30', '2018-10-18 07:33:30', '', 0, 'http://localhost:10021/mti-runners/my-account/', 0, 'page', '', 0),
(10, 1, '2018-10-19 06:03:44', '2018-10-19 06:03:44', '[wpum_login_form psw_link="yes" register_link="yes"]', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2018-10-21 16:38:03', '2018-10-21 16:38:03', '', 0, 'http://localhost:10021/mti-runners/login/', 0, 'page', '', 0),
(11, 1, '2018-10-19 06:03:45', '2018-10-19 06:03:45', '[wpum_password_recovery login_link="yes" register_link="yes"]', 'Password Reset', '', 'publish', 'closed', 'closed', '', 'password-reset', '', '', '2018-10-19 06:03:45', '2018-10-19 06:03:45', '', 0, 'http://localhost:10021/mti-runners/password-reset/', 0, 'page', '', 0),
(12, 1, '2018-10-19 06:03:45', '2018-10-19 06:03:45', '[wpum_register login_link="yes" psw_link="yes"]', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2018-10-19 06:03:45', '2018-10-19 06:03:45', '', 0, 'http://localhost:10021/mti-runners/register/', 0, 'page', '', 0),
(13, 1, '2018-10-19 06:03:45', '2018-10-19 06:03:45', '[wpum_account]', 'Account', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2018-10-19 06:03:45', '2018-10-19 06:03:45', '', 0, 'http://localhost:10021/mti-runners/account/', 0, 'page', '', 0),
(14, 1, '2018-10-19 06:03:45', '2018-10-19 06:03:45', '[wpum_profile]', 'Profile', '', 'publish', 'closed', 'closed', '', 'profile', '', '', '2018-10-19 06:03:45', '2018-10-19 06:03:45', '', 0, 'http://localhost:10021/mti-runners/profile/', 0, 'page', '', 0),
(15, 1, '2018-10-19 06:38:01', '2018-10-19 06:38:01', 'Agak memalukan nih membagi pengalaman pertamaku dikejar anjing,mudah-mudahan sih pengalaman terkahir juga. Demi Una deh aku ceritakan pengalaman memalukan ini sekalian update postingan ya , sekali dayung dua tiga pulau terlampaui :)\r\n\r\nKejadiannya sekitar tahun 1991 waktu aku kelas 2 SMP. Jarak rumah dan SMPku lumayan jauh waktu itu, setiap hari aku ikut bapakku sekalian kerja jadi harus berangkat dari rumah pagi-pagi sekali antara jam 5.30 sampai jam 6.00. Kalau berangkat sendiri bisa lebih siang tapi konsekuensinya macet dan telat.\r\n\r\nBiasanya aku turun dipintu gerbang dan langsung masuk kesekolah melewati kantin dan menuju kelasku di 2B. Tidak tahu kenapa pada saat itu disekolah ada anjing hitam kecil,iiiih melihatnya saja sudah takut. Waktu melihat anjing itu aku sudah ragu-ragu masuk atau gak kekelas.Akhirnya aku putuskan untuk masuk sambil berjalan perlahan, tiba-tiba dari jauh anjing itu lari menghampiri aku. Waduh gawat nih aku udah ketakutan langsung lari aja, kebetulan sekolah masih sepi aku main masuk ada ke kelas orang,yang penting selamat dulu deh. Setelah didalam kelas anjingnya gak mengejar lagi, Allhamdulillah aman pikirku. Aku langsung mengintip untuk keluar menuju kelas, eh ternyata didalam kelas itu ada penguhuninya aku gak terlalu kenal sih itu siapa, tapi cowo-cowo itu malah menertawakan aku yang ketakutan dikejar anjing. Malunya bukan main ternyata aku salah masuk kelas.\r\n\r\nMakanya aku takut banget nih sama anjing, mudah-mudahan pengalaman ini tidak terulang lagi deh.\r\n\r\nSumber: <a href="https://www.fitrian.net/2011/11/pengalaman-pertama-dikejar-anjing.html">fitrian</a>', 'Pengalaman Pertama Lari Dikejar Anjing', '', 'publish', 'open', 'open', '', 'pengalaman-pertama', '', '', '2018-10-19 22:57:56', '2018-10-19 22:57:56', '', 0, 'http://localhost:10021/mti-runners/?p=15', 0, 'post', '', 0),
(16, 1, '2018-10-19 06:38:01', '2018-10-19 06:38:01', 'Holaaa', 'Tes', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-10-19 06:38:01', '2018-10-19 06:38:01', '', 15, 'http://localhost:10021/mti-runners/2018/10/19/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-10-19 06:39:37', '2018-10-19 06:39:37', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-10-19 06:39:37', '2018-10-19 06:39:37', '', 0, 'http://localhost:10021/mti-runners/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2018-10-19 06:39:37', '2018-10-19 06:39:37', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-10-19 06:39:37', '2018-10-19 06:39:37', '', 0, 'http://localhost:10021/mti-runners/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2018-10-19 06:52:17', '2018-10-19 06:52:17', '', 'Tes', '', 'publish', 'closed', 'closed', '', 'tes', '', '', '2018-10-19 06:52:17', '2018-10-19 06:52:17', '', 0, 'http://localhost:10021/mti-runners/?post_type=wpum_directory&#038;p=19', 0, 'wpum_directory', '', 0),
(20, 2, '2018-10-19 17:59:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-19 17:59:30', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?p=20', 0, 'post', '', 0),
(21, 4, '2018-10-19 18:11:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-19 18:11:21', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?p=21', 0, 'post', '', 0),
(22, 4, '2018-10-19 18:11:51', '2018-10-19 18:11:51', 'Sepatu Sandiaga Uno Cyin! Sepatu cawapres mantab jiwa', 'Sepatu Sandiaga Uno', '', 'publish', 'open', 'closed', '', 'produk-coba', '', '', '2018-10-19 22:03:55', '2018-10-19 22:03:55', '', 0, 'http://localhost:10021/mti-runners/?post_type=product&#038;p=22', 0, 'product', '', 0),
(24, 0, '2018-10-19 21:08:21', '0000-00-00 00:00:00', '', 'Portum Backup Settings', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-19 21:08:21', '2018-10-19 21:08:21', '', 0, 'http://localhost:10021/mti-runners/?page_id=24', 0, 'page', '', 0),
(25, 1, '2018-10-19 21:08:20', '2018-10-19 21:08:20', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [],\n            "sidebar-1": [\n                "nav_menu-2",\n                "search-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "archives-2",\n                "categories-2",\n                "meta-2"\n            ],\n            "sidebar-2": [],\n            "sidebar-3": []\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 21:08:20"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '906fa638-1230-47d1-84f8-28b752eb12d0', '', '', '2018-10-19 21:08:20', '2018-10-19 21:08:20', '', 0, 'http://localhost:10021/mti-runners/2018/10/19/906fa638-1230-47d1-84f8-28b752eb12d0/', 0, 'customize_changeset', '', 0),
(26, 1, '2018-10-19 21:08:21', '2018-10-19 21:08:21', '', 'Portum Backup Settings', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-10-19 21:08:21', '2018-10-19 21:08:21', '', 24, 'http://localhost:10021/mti-runners/2018/10/19/24-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-10-19 21:50:16', '2018-10-19 21:50:16', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [],\n            "sidebar": [\n                "nav_menu-2",\n                "search-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "archives-2",\n                "categories-2",\n                "meta-2"\n            ],\n            "header-sidebar-1": [],\n            "header-sidebar-2": [],\n            "header-sidebar-3": [],\n            "header-sidebar-4": [],\n            "footer-sidebar-1": [],\n            "footer-sidebar-2": [],\n            "footer-sidebar-3": [],\n            "footer-sidebar-4": []\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 21:50:15"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2f157a2a-aa26-4b9e-90b0-375a931c6c0d', '', '', '2018-10-19 21:50:16', '2018-10-19 21:50:16', '', 0, 'http://localhost:10021/mti-runners/2018/10/19/2f157a2a-aa26-4b9e-90b0-375a931c6c0d/', 0, 'customize_changeset', '', 0),
(30, 1, '2018-10-19 21:51:00', '2018-10-19 21:51:00', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [],\n            "sidebar": [\n                "nav_menu-2",\n                "search-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "archives-2",\n                "categories-2",\n                "meta-2"\n            ],\n            "header-sidebar-1": [],\n            "header-sidebar-2": [],\n            "header-sidebar-3": [],\n            "header-sidebar-4": [],\n            "footer-sidebar-1": [],\n            "footer-sidebar-2": [],\n            "footer-sidebar-3": [],\n            "footer-sidebar-4": []\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 21:51:00"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0f52e3d0-ecc2-4cf7-bd0e-ac8533ef29d3', '', '', '2018-10-19 21:51:00', '2018-10-19 21:51:00', '', 0, 'http://localhost:10021/mti-runners/2018/10/19/0f52e3d0-ecc2-4cf7-bd0e-ac8533ef29d3/', 0, 'customize_changeset', '', 0),
(31, 1, '2018-10-19 21:53:23', '2018-10-19 21:53:23', '{\n    "trending-blog::nav_menu_locations[top]": {\n        "value": 16,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 21:53:23"\n    },\n    "trending-blog::nav_menu_locations[primary]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 21:53:23"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '521499d9-f9d2-4ade-9ee6-81ada2f5ccf2', '', '', '2018-10-19 21:53:23', '2018-10-19 21:53:23', '', 0, 'http://localhost:10021/mti-runners/2018/10/19/521499d9-f9d2-4ade-9ee6-81ada2f5ccf2/', 0, 'customize_changeset', '', 0),
(32, 1, '2018-10-19 21:53:53', '2018-10-19 21:53:53', '{\n    "sidebars_widgets[slide-menu]": {\n        "value": [\n            "wpum-login-form-3"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 21:53:53"\n    },\n    "widget_wpum-login-form[3]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 21:53:53"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9c6b242a-3c1f-44d7-826b-76288469f16e', '', '', '2018-10-19 21:53:53', '2018-10-19 21:53:53', '', 0, 'http://localhost:10021/mti-runners/2018/10/19/9c6b242a-3c1f-44d7-826b-76288469f16e/', 0, 'customize_changeset', '', 0),
(33, 1, '2018-10-19 21:59:16', '2018-10-19 21:59:16', '{\n    "trending-blog::breadcrumb_type": {\n        "value": "disabled",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 21:59:16"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c6975ff2-d1c3-4c5c-9949-4e679dee71cd', '', '', '2018-10-19 21:59:16', '2018-10-19 21:59:16', '', 0, 'http://localhost:10021/mti-runners/2018/10/19/c6975ff2-d1c3-4c5c-9949-4e679dee71cd/', 0, 'customize_changeset', '', 0),
(34, 1, '2018-10-19 22:02:30', '2018-10-19 22:02:30', 'Sepatu Sandiaga Uno Cyin! Sepatu cawapres mantab jiwa', 'Sepatu Sandiaga Uno', '', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2018-10-19 22:02:30', '2018-10-19 22:02:30', '', 22, 'http://localhost:10021/mti-runners/2018/10/19/22-autosave-v1/', 0, 'revision', '', 0),
(35, 1, '2018-10-19 22:02:41', '2018-10-19 22:02:41', '', 'sepatu_running_grande', '', 'inherit', 'open', 'closed', '', 'sepatu_running_grande', '', '', '2018-10-19 22:02:41', '2018-10-19 22:02:41', '', 22, 'http://localhost:10021/mti-runners/wp-content/uploads/2018/10/sepatu_running_grande.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2018-10-19 22:03:40', '2018-10-19 22:03:40', '', 'gbr', '', 'inherit', 'open', 'closed', '', 'gbr', '', '', '2018-10-19 22:03:40', '2018-10-19 22:03:40', '', 22, 'http://localhost:10021/mti-runners/wp-content/uploads/2018/10/gbr.jpeg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-10-19 22:03:41', '2018-10-19 22:03:41', '', 'sandiaga', '', 'inherit', 'open', 'closed', '', 'sandiaga', '', '', '2018-10-19 22:03:41', '2018-10-19 22:03:41', '', 22, 'http://localhost:10021/mti-runners/wp-content/uploads/2018/10/sandiaga.jpeg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-10-19 22:12:25', '2018-10-19 22:12:25', 'Jaket Asian Games Jokowi ajib coy! Jaket sporty presiden petahana sekaligus cawapres!', 'Jaket Asian Games Jokowi', '', 'publish', 'open', 'closed', '', 'jaket-asian-games-jokowi', '', '', '2018-10-19 22:12:29', '2018-10-19 22:12:29', '', 0, 'http://localhost:10021/mti-runners/?post_type=product&#038;p=38', 0, 'product', '', 0),
(39, 1, '2018-10-19 22:11:18', '2018-10-19 22:11:18', '', 'jaket jokowi', '', 'inherit', 'open', 'closed', '', 'jaket-jokowi', '', '', '2018-10-19 22:11:18', '2018-10-19 22:11:18', '', 38, 'http://localhost:10021/mti-runners/wp-content/uploads/2018/10/jaket-jokowi.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2018-10-19 22:11:30', '2018-10-19 22:11:30', '', 'jaket jokowi 2', '', 'inherit', 'open', 'closed', '', 'jaket-jokowi-2', '', '', '2018-10-19 22:11:30', '2018-10-19 22:11:30', '', 38, 'http://localhost:10021/mti-runners/wp-content/uploads/2018/10/jaket-jokowi-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-10-19 22:22:35', '2018-10-19 22:22:35', '{\n    "trending-blog::nav_menu_locations[primary]": {\n        "value": -411575660,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:21:58"\n    },\n    "nav_menu[-411575660]": {\n        "value": {\n            "name": "Primary Menu",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:21:58"\n    },\n    "nav_menu_item[-954174350]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:22:35"\n    },\n    "nav_menu_item[-944093624]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:22:35"\n    },\n    "nav_menu_item[-27153109]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:22:35"\n    },\n    "nav_menus_created_posts": {\n        "value": [\n            42\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:22:35"\n    },\n    "nav_menu_item[-1455650072]": {\n        "value": {\n            "object_id": 42,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 4,\n            "type": "post_type",\n            "title": "Shop",\n            "url": "http://localhost:10021/mti-runners/?page_id=42",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Shop",\n            "nav_menu_term_id": -411575660,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:22:35"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2beb16b8-05f2-4e7e-bf71-cd177435e14e', '', '', '2018-10-19 22:22:35', '2018-10-19 22:22:35', '', 0, 'http://localhost:10021/mti-runners/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2018-10-19 22:22:35', '2018-10-19 22:22:35', '', 'Shop', '', 'trash', 'closed', 'closed', '', 'shop-2__trashed', '', '', '2018-10-19 23:07:24', '2018-10-19 23:07:24', '', 0, 'http://localhost:10021/mti-runners/?page_id=42', 0, 'page', '', 0),
(43, 1, '2018-10-19 22:22:35', '2018-10-19 22:22:35', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-10-19 22:22:35', '2018-10-19 22:22:35', '', 42, 'http://localhost:10021/mti-runners/2018/10/19/42-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-10-19 22:24:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-19 22:24:15', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2018-10-19 22:25:28', '2018-10-19 22:25:28', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-10-21 19:08:39', '2018-10-21 19:08:39', '', 0, 'http://localhost:10021/mti-runners/?p=46', 4, 'nav_menu_item', '', 0),
(47, 1, '2018-10-19 22:30:44', '2018-10-19 22:30:44', '{\n    "custom_css[trending-blog]": {\n        "value": ".postid-10 .single .entry-meta {\\n    display: none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:30:44"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1937589b-c806-47b1-816f-db0e60ec6d0e', '', '', '2018-10-19 22:30:44', '2018-10-19 22:30:44', '', 0, 'http://localhost:10021/mti-runners/2018/10/19/1937589b-c806-47b1-816f-db0e60ec6d0e/', 0, 'customize_changeset', '', 0),
(48, 1, '2018-10-19 22:30:44', '2018-10-19 22:30:44', '.page-id-10 .inner-meta-info {\n    display: none;\n}\n\n\n.page-id-13 .inner-meta-info {\n    display: none;\n}\n\n.page-id-8 .inner-meta-info {\n    display: none;\n}\n\n\n.page-id-14 .inner-meta-info {\n    display: none;\n}\n\n\n.page-id-12 .inner-meta-info {\n    display: none;\n}\n\n\n.page-id-6 .inner-meta-info {\n    display: none;\n}\n\n\n.page-id-7 .inner-meta-info {\n    display: none;\n}\n\n\n.page-id-11 .inner-meta-info {\n    display: none;\n}\n\n.page-id-5 .inner-meta-info {\n    display: none;\n}\n\n', 'trending-blog', '', 'publish', 'closed', 'closed', '', 'trending-blog', '', '', '2018-10-21 16:48:50', '2018-10-21 16:48:50', '', 0, 'http://localhost:10021/mti-runners/2018/10/19/trending-blog/', 0, 'custom_css', '', 0),
(49, 1, '2018-10-19 22:30:44', '2018-10-19 22:30:44', '.postid-10 .single .entry-meta {\n    display: none;\n}', 'trending-blog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-10-19 22:30:44', '2018-10-19 22:30:44', '', 48, 'http://localhost:10021/mti-runners/2018/10/19/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-10-19 22:31:06', '2018-10-19 22:31:06', '{\n    "custom_css[trending-blog]": {\n        "value": "",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:31:06"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aa5bbbb3-5831-4ea7-870d-48d1ac0cef09', '', '', '2018-10-19 22:31:06', '2018-10-19 22:31:06', '', 0, 'http://localhost:10021/mti-runners/2018/10/19/aa5bbbb3-5831-4ea7-870d-48d1ac0cef09/', 0, 'customize_changeset', '', 0),
(51, 1, '2018-10-19 22:31:07', '2018-10-19 22:31:07', '', 'trending-blog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-10-19 22:31:07', '2018-10-19 22:31:07', '', 48, 'http://localhost:10021/mti-runners/2018/10/19/48-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-10-19 22:44:06', '2018-10-19 22:44:06', 'Maraton menjadi tren gaya hidup sehat sepanjang 2013. Berbagai perlombaan maraton berlangsung di ibukota juga beberapa kota lainnya. Hidup sehat dengan berolahraga menjadi pemicunya. Pasalnya, lari menjadi cara termudah dan paling sederhana dalam berolahraga. Namun, apakah semudah itu melakukan lari jarak jauh minimal sepanjang lima kilometer ini?\n\nJika ingin tubuh sehat sebagai hasil akhirnya, perlu ada kiat dan persiapan/latihan tersendiri dalam melakukan lari jarak jauh. Dengan menjalankan pola latihan tepat, bukan hanya sehat, prestasi pun bisa didapat dari lari jarak jauh ini.\n\nGatot Sudarsono, pelatih beberapa peserta lari 10K yang didukung salah satu merek susu, serta Ketua Umum Indonesia Muda (klub road run), berbagi kiatnya kepada Kompas Health.\n\n"Tak perlu jadi atlet tapi bisa punya rangking masuk 10 besar dalam lomba maraton misalnya," imbuh mantan atlet nasional ini.\n\nLantas seperti apa pola latihannya? Berikut penjelasan Gatot sekaligus mengungkap fakta di balik latihan lari yang tepat:\n\n<strong>* Latihan rutin 30 menit hingga dua jam</strong>.\nUntuk bisa mendapatkan banyak manfaat lari, cukup latihan rutin 30 menit hingga maksimal dua jam. Namun, latihan ini tak bisa sembarangan, karena harus terprogram jika ingin mendapatkan manfaat maksimal. Menjalani program inilah yang menjadi tantangan sekaligus menuntut komitmen dari pelari.\n\n<strong>* Lihat kondisi</strong>.\nProgram latihan lari juga bergantung kondisi, kebutuhan, kemampuan, serta tujuan si pelari. Tak ada program yang sifatnya mutlak. Selain itu, program latihan lari juga perlu diperbarui dalam jangka waktu tertentu. Artinya, untuk mendapatkan manfaat maksimal dari lari, Anda tak bisa sekadar lari mengelilingi lapangan misalnya.\n\n"Program perlu update supaya ada peningkatan setiap kali latihan," tutur Gatot.\n\n<strong>* Lari, bukan jalan cepat</strong>\nSaat Anda lari, jangan pernah mencampurkan latihan dengan jalan kaki.\n\n"Saat lari dengan kecepatan maksimum sama sekali tidak boleh mencampurnya dengan jalan kaki. Boleh lari lebih pelan tapi jangan jalan," saran Gatot.\n\nLari yang dicampur dengan jalan kaki menimbulkan sejumlah risiko. Utamanya melemahkan kekuatan otot. Padahal jika kekuatan otot meningkat, kecepatan lari pun bisa bertambah karena jantung dan paru-paru juga meningkat kekuatannya. Dampak positif lainnya jika kekuatan otot meningkat adalah saat lari Anda tidak merasakan nafas terengah-engah. Beban tubuh pun menjadi tidak seberat kalau Anda mencampur lari dengan jalan kaki.\n\n<strong>* Kecepatan stabil</strong>\n"Lari harus dilakukan dengan kecepatan stabil agar kondisi tubuh tetap hangat. Suhu tubuh ini berpengaruh pada kecepatan lari," ungkap Gatot.\n\nKarenanya, saat lari baik latihan jelang lomba atau olahraga rutin, tetaplah konsisten berlari bukan mengombinasikan dengan jalan kaki. Jika Anda mengganti lari dengan jalan kaki, apalagi jika berhenti berlari, suhu tubuh menjadi dingin. Anda butuh energi lebih besar untuk memulai lari dari nol.\n\n"Biasanya untuk memulai lari akan timbul rasa malas, kalau suhu tubuh sudah dingin," jelasnya.\n\nNah, bagaimana bisa Anda mencapai tujuan dari olahraga lari, jika di tengah perjalanan muncul rasa malas. Lari pun tak bisa memberikan manfaat maksimalnya karena rasa malas sudah melanda. Alhasil, harapan memiliki tubuh bugar apalagi niatan menurunkan berat badan, akan semakin sulit tercapai.\n<div>\n<strong>* Jangan percaya latihan instan.</strong>\nKalau Anda berminat mengikuti berbagai ajang road run, lakukan latihan yang terprogram dengan trainer, bukan yang instan lewat tutorial di internet.</div>\nGatot mengatakan banyak pelari yang salah kaprah saat memulai program latihan. Terutama saat menyiapkan diri untuk mengikuti lari 10K misalnya.  Banyak pelari yang mengandalkan program instan yang bisa didapatkan lewat internet.\n\n“Banyak pelari yang salah kaprah.  Latihan lari dengan buka internet dan menjalani program baku. Padahal latihan lari tidak bisa baku,” jelasnya.\n\nGatot menjelaskan, kalau latihan dengan membuka internet, kita tidak bisa tahu kemampuan fisik sejauh mana. Sementara kalau latihan terprogram sesuai kebutuhan  dan kondisi dengan bantuan instruktur, kita bisa mengukur kemampuan diri.\n\nKesalahan yang umum terjadi saat latihan dengan program instan di internet adalah seseorang latihan tak sesuai kemampuan. Atau dengan kata lain dipaksakan latihan padahal tubuhnya tak mampu menjalani pola latihan tersebut.\n\n<strong>* Latihan bersama instruktur.</strong>\nLatihan bersama instruktur bukan hanya bisa merancang program dengan melihat kemampuan tapi juga melihat sisi psikologis, kesehatan fisik, bahkan makanan.\n\nAgar hasilnya maksimal, Gatot menyarankan sebaiknya cari trainer yang memahami anatomi tubuh. Lagi-lagi, ini diperlukan untuk mencegah terjadinya cedera.\n\n<strong>* Latihan tepat cegah cedera.</strong>\nGatot melanjutkan, program latihan lari yang tepat bukan hanya membantu mencapai garis finish dengan catatan waktu yang baik, namun juga bisa mengurangi risiko cedera setelah lari. Karenanya, Gatot menyarankan untuk tidak memaksakan diri mengikuti marathon jika tak menyiapkan diri dengan baik lewat latihan tepat.\n\n“Kalau dipaksakan bisa saja mencapai garis finish, namun setelah lomba, otot bisa cedera dan tidak pulih setelah berhari-hari pascalomba, lalu merasa sakit di bagian tertentu terutama kaki, bahkan bisa sakit hampir di semua bagian tubuh,”\n\nPola latihan yang keliru bisa menyebabkan cedera hingga berbulan-bulan. Akibatnya, aktivitas harian pun terganggu, kesakitan saat naik turun tangga, dan rasa sakit ini tidak kunjung hilang.\n\n“Kalau sudah sakit berkepanjangan karena cedera akibat pola latihan keliru, tak cukup pijat atau obat, bahkan bisa operasi,” tandasnya.\n\n<strong>* Lebih efektif hasilnya pada wanita.</strong>\nGatot menambahkan melalui olahraga lari sebenarnya perempuan bisa mendapatkan lebih banyak manfaat. Kalau punya komitmen keras, bukan hanya prestasi yang bisa lebih cepat didapat. Manfaat olahraga lari juga bisa lebih cepat terlihat pada perempuan.\n\n"Dibandingkan pria, perempuan bisa lebih cepat menurunkan berat badan dengan lari," ungkapnya.', 'Mau Kuat Lari Jarak Jauh? Ini Rahasianya', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-10-19 22:44:06', '2018-10-19 22:44:06', '', 1, 'http://localhost:10021/mti-runners/2018/10/19/1-autosave-v1/', 0, 'revision', '', 0),
(53, 1, '2018-10-19 22:44:02', '2018-10-19 22:44:02', '', '0854136-larijogging-780x390', '', 'inherit', 'open', 'closed', '', '0854136-larijogging-780x390', '', '', '2018-10-19 22:44:02', '2018-10-19 22:44:02', '', 1, 'http://localhost:10021/mti-runners/wp-content/uploads/2018/10/0854136-larijogging-780x390.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-10-19 22:44:47', '2018-10-19 22:44:47', 'Maraton menjadi tren gaya hidup sehat sepanjang 2013. Berbagai perlombaan maraton berlangsung di ibukota juga beberapa kota lainnya. Hidup sehat dengan berolahraga menjadi pemicunya. Pasalnya, lari menjadi cara termudah dan paling sederhana dalam berolahraga. Namun, apakah semudah itu melakukan lari jarak jauh minimal sepanjang lima kilometer ini?\r\n\r\nJika ingin tubuh sehat sebagai hasil akhirnya, perlu ada kiat dan persiapan/latihan tersendiri dalam melakukan lari jarak jauh. Dengan menjalankan pola latihan tepat, bukan hanya sehat, prestasi pun bisa didapat dari lari jarak jauh ini.\r\n\r\nGatot Sudarsono, pelatih beberapa peserta lari 10K yang didukung salah satu merek susu, serta Ketua Umum Indonesia Muda (klub road run), berbagi kiatnya kepada Kompas Health.\r\n\r\n"Tak perlu jadi atlet tapi bisa punya rangking masuk 10 besar dalam lomba maraton misalnya," imbuh mantan atlet nasional ini.\r\n\r\nLantas seperti apa pola latihannya? Berikut penjelasan Gatot sekaligus mengungkap fakta di balik latihan lari yang tepat:\r\n\r\n<strong>* Latihan rutin 30 menit hingga dua jam</strong>.\r\nUntuk bisa mendapatkan banyak manfaat lari, cukup latihan rutin 30 menit hingga maksimal dua jam. Namun, latihan ini tak bisa sembarangan, karena harus terprogram jika ingin mendapatkan manfaat maksimal. Menjalani program inilah yang menjadi tantangan sekaligus menuntut komitmen dari pelari.\r\n\r\n<strong>* Lihat kondisi</strong>.\r\nProgram latihan lari juga bergantung kondisi, kebutuhan, kemampuan, serta tujuan si pelari. Tak ada program yang sifatnya mutlak. Selain itu, program latihan lari juga perlu diperbarui dalam jangka waktu tertentu. Artinya, untuk mendapatkan manfaat maksimal dari lari, Anda tak bisa sekadar lari mengelilingi lapangan misalnya.\r\n\r\n"Program perlu update supaya ada peningkatan setiap kali latihan," tutur Gatot.\r\n\r\n<strong>* Lari, bukan jalan cepat</strong>\r\nSaat Anda lari, jangan pernah mencampurkan latihan dengan jalan kaki.\r\n\r\n"Saat lari dengan kecepatan maksimum sama sekali tidak boleh mencampurnya dengan jalan kaki. Boleh lari lebih pelan tapi jangan jalan," saran Gatot.\r\n\r\nLari yang dicampur dengan jalan kaki menimbulkan sejumlah risiko. Utamanya melemahkan kekuatan otot. Padahal jika kekuatan otot meningkat, kecepatan lari pun bisa bertambah karena jantung dan paru-paru juga meningkat kekuatannya. Dampak positif lainnya jika kekuatan otot meningkat adalah saat lari Anda tidak merasakan nafas terengah-engah. Beban tubuh pun menjadi tidak seberat kalau Anda mencampur lari dengan jalan kaki.\r\n\r\n<strong>* Kecepatan stabil</strong>\r\n"Lari harus dilakukan dengan kecepatan stabil agar kondisi tubuh tetap hangat. Suhu tubuh ini berpengaruh pada kecepatan lari," ungkap Gatot.\r\n\r\nKarenanya, saat lari baik latihan jelang lomba atau olahraga rutin, tetaplah konsisten berlari bukan mengombinasikan dengan jalan kaki. Jika Anda mengganti lari dengan jalan kaki, apalagi jika berhenti berlari, suhu tubuh menjadi dingin. Anda butuh energi lebih besar untuk memulai lari dari nol.\r\n\r\n"Biasanya untuk memulai lari akan timbul rasa malas, kalau suhu tubuh sudah dingin," jelasnya.\r\n\r\nNah, bagaimana bisa Anda mencapai tujuan dari olahraga lari, jika di tengah perjalanan muncul rasa malas. Lari pun tak bisa memberikan manfaat maksimalnya karena rasa malas sudah melanda. Alhasil, harapan memiliki tubuh bugar apalagi niatan menurunkan berat badan, akan semakin sulit tercapai.\r\n<div><strong>* Jangan percaya latihan instan.</strong>\r\nKalau Anda berminat mengikuti berbagai ajang road run, lakukan latihan yang terprogram dengan trainer, bukan yang instan lewat tutorial di internet.</div>\r\nGatot mengatakan banyak pelari yang salah kaprah saat memulai program latihan. Terutama saat menyiapkan diri untuk mengikuti lari 10K misalnya.  Banyak pelari yang mengandalkan program instan yang bisa didapatkan lewat internet.\r\n\r\n“Banyak pelari yang salah kaprah.  Latihan lari dengan buka internet dan menjalani program baku. Padahal latihan lari tidak bisa baku,” jelasnya.\r\n\r\nGatot menjelaskan, kalau latihan dengan membuka internet, kita tidak bisa tahu kemampuan fisik sejauh mana. Sementara kalau latihan terprogram sesuai kebutuhan  dan kondisi dengan bantuan instruktur, kita bisa mengukur kemampuan diri.\r\n\r\nKesalahan yang umum terjadi saat latihan dengan program instan di internet adalah seseorang latihan tak sesuai kemampuan. Atau dengan kata lain dipaksakan latihan padahal tubuhnya tak mampu menjalani pola latihan tersebut.\r\n\r\n<strong>* Latihan bersama instruktur.</strong>\r\nLatihan bersama instruktur bukan hanya bisa merancang program dengan melihat kemampuan tapi juga melihat sisi psikologis, kesehatan fisik, bahkan makanan.\r\n\r\nAgar hasilnya maksimal, Gatot menyarankan sebaiknya cari trainer yang memahami anatomi tubuh. Lagi-lagi, ini diperlukan untuk mencegah terjadinya cedera.\r\n\r\n<strong>* Latihan tepat cegah cedera.</strong>\r\nGatot melanjutkan, program latihan lari yang tepat bukan hanya membantu mencapai garis finish dengan catatan waktu yang baik, namun juga bisa mengurangi risiko cedera setelah lari. Karenanya, Gatot menyarankan untuk tidak memaksakan diri mengikuti marathon jika tak menyiapkan diri dengan baik lewat latihan tepat.\r\n\r\n“Kalau dipaksakan bisa saja mencapai garis finish, namun setelah lomba, otot bisa cedera dan tidak pulih setelah berhari-hari pascalomba, lalu merasa sakit di bagian tertentu terutama kaki, bahkan bisa sakit hampir di semua bagian tubuh,”\r\n\r\nPola latihan yang keliru bisa menyebabkan cedera hingga berbulan-bulan. Akibatnya, aktivitas harian pun terganggu, kesakitan saat naik turun tangga, dan rasa sakit ini tidak kunjung hilang.\r\n\r\n“Kalau sudah sakit berkepanjangan karena cedera akibat pola latihan keliru, tak cukup pijat atau obat, bahkan bisa operasi,” tandasnya.\r\n\r\n<strong>* Lebih efektif hasilnya pada wanita.</strong>\r\nGatot menambahkan melalui olahraga lari sebenarnya perempuan bisa mendapatkan lebih banyak manfaat. Kalau punya komitmen keras, bukan hanya prestasi yang bisa lebih cepat didapat. Manfaat olahraga lari juga bisa lebih cepat terlihat pada perempuan.\r\n\r\n"Dibandingkan pria, perempuan bisa lebih cepat menurunkan berat badan dengan lari," ungkapnya.\r\n\r\nSumber: <a href="https://health.kompas.com/read/2013/12/29/1658565/Mau.Kuat.Lari.Jarak.Jauh.Ini.Rahasianya">Kompas</a>', 'Mau Kuat Lari Jarak Jauh? Ini Rahasianya', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-10-19 22:44:47', '2018-10-19 22:44:47', '', 1, 'http://localhost:10021/mti-runners/2018/10/19/1-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-10-19 22:50:41', '2018-10-19 22:50:41', '{\n    "trending-blog::select_slider_from": {\n        "value": "from-category",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:46:51"\n    },\n    "trending-blog::select_page_for_slider_1": {\n        "value": "10",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:46:51"\n    },\n    "trending-blog::select_category_for_slider": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:46:51"\n    },\n    "trending-blog::global_layout": {\n        "value": "right-sidebar",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:49:53"\n    },\n    "trending-blog::homepage_layout_option": {\n        "value": "full-width",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:50:41"\n    },\n    "trending-blog::enable_preloader": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 22:50:41"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e52fda88-40fc-4567-a4fd-f307151cf6ae', '', '', '2018-10-19 22:50:41', '2018-10-19 22:50:41', '', 0, 'http://localhost:10021/mti-runners/?p=55', 0, 'customize_changeset', '', 0),
(56, 1, '2018-10-19 22:57:16', '2018-10-19 22:57:16', 'Agak memalukan nih membagi pengalaman pertamaku dikejar anjing,mudah-mudahan sih pengalaman terkahir juga. Demi Una deh aku ceritakan pengalaman memalukan ini sekalian update postingan ya , sekali dayung dua tiga pulau terlampaui :)\n\nKejadiannya sekitar tahun 1991 waktu aku kelas 2 SMP. Jarak rumah dan SMPku lumayan jauh waktu itu, setiap hari aku ikut bapakku sekalian kerja jadi harus berangkat dari rumah pagi-pagi sekali antara jam 5.30 sampai jam 6.00. Kalau berangkat sendiri bisa lebih siang tapi konsekuensinya macet dan telat.\n\nBiasanya aku turun dipintu gerbang dan langsung masuk kesekolah melewati kantin dan menuju kelasku di 2B. Tidak tahu kenapa pada saat itu disekolah ada anjing hitam kecil,iiiih melihatnya saja sudah takut. Waktu melihat anjing itu aku sudah ragu-ragu masuk atau gak kekelas.Akhirnya aku putuskan untuk masuk sambil berjalan perlahan, tiba-tiba dari jauh anjing itu lari menghampiri aku. Waduh gawat nih aku udah ketakutan langsung lari aja, kebetulan sekolah masih sepi aku main masuk ada ke kelas orang,yang penting selamat dulu deh. Setelah didalam kelas anjingnya gak mengejar lagi, Allhamdulillah aman pikirku. Aku langsung mengintip untuk keluar menuju kelas, eh ternyata didalam kelas itu ada penguhuninya aku gak terlalu kenal sih itu siapa, tapi cowo-cowo itu malah menertawakan aku yang ketakutan dikejar anjing. Malunya bukan main ternyata aku salah masuk kelas.\n\nMakanya aku takut banget nih sama anjing, mudah-mudahan pengalaman ini tidak terulang lagi deh.\n\nSumber:', 'Pengalaman Pertama Lari Dikejar Anjing', '', 'inherit', 'closed', 'closed', '', '15-autosave-v1', '', '', '2018-10-19 22:57:16', '2018-10-19 22:57:16', '', 15, 'http://localhost:10021/mti-runners/2018/10/19/15-autosave-v1/', 0, 'revision', '', 0),
(57, 1, '2018-10-19 22:57:48', '2018-10-19 22:57:48', '', 'anjing', '', 'inherit', 'open', 'closed', '', 'anjing', '', '', '2018-10-19 22:57:48', '2018-10-19 22:57:48', '', 15, 'http://localhost:10021/mti-runners/wp-content/uploads/2018/10/anjing.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-10-19 22:57:56', '2018-10-19 22:57:56', 'Agak memalukan nih membagi pengalaman pertamaku dikejar anjing,mudah-mudahan sih pengalaman terkahir juga. Demi Una deh aku ceritakan pengalaman memalukan ini sekalian update postingan ya , sekali dayung dua tiga pulau terlampaui :)\r\n\r\nKejadiannya sekitar tahun 1991 waktu aku kelas 2 SMP. Jarak rumah dan SMPku lumayan jauh waktu itu, setiap hari aku ikut bapakku sekalian kerja jadi harus berangkat dari rumah pagi-pagi sekali antara jam 5.30 sampai jam 6.00. Kalau berangkat sendiri bisa lebih siang tapi konsekuensinya macet dan telat.\r\n\r\nBiasanya aku turun dipintu gerbang dan langsung masuk kesekolah melewati kantin dan menuju kelasku di 2B. Tidak tahu kenapa pada saat itu disekolah ada anjing hitam kecil,iiiih melihatnya saja sudah takut. Waktu melihat anjing itu aku sudah ragu-ragu masuk atau gak kekelas.Akhirnya aku putuskan untuk masuk sambil berjalan perlahan, tiba-tiba dari jauh anjing itu lari menghampiri aku. Waduh gawat nih aku udah ketakutan langsung lari aja, kebetulan sekolah masih sepi aku main masuk ada ke kelas orang,yang penting selamat dulu deh. Setelah didalam kelas anjingnya gak mengejar lagi, Allhamdulillah aman pikirku. Aku langsung mengintip untuk keluar menuju kelas, eh ternyata didalam kelas itu ada penguhuninya aku gak terlalu kenal sih itu siapa, tapi cowo-cowo itu malah menertawakan aku yang ketakutan dikejar anjing. Malunya bukan main ternyata aku salah masuk kelas.\r\n\r\nMakanya aku takut banget nih sama anjing, mudah-mudahan pengalaman ini tidak terulang lagi deh.\r\n\r\nSumber: <a href="https://www.fitrian.net/2011/11/pengalaman-pertama-dikejar-anjing.html">fitrian</a>', 'Pengalaman Pertama Lari Dikejar Anjing', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-10-19 22:57:56', '2018-10-19 22:57:56', '', 15, 'http://localhost:10021/mti-runners/2018/10/19/15-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-10-19 23:01:41', '2018-10-19 23:01:41', 'JAKARTA. Bank Mandiri menjadwalkan ulang penyelenggaraan Mandiri Jakarta City Marathon 2018. Lomba lari marathon internasional sebelumnya dijadwalkan pada 21 Oktober 2018 di kawasan Monumen Nasional (Monas).\r\n\r\n“Kami mohon maaf harus menjadwal ulang pelaksanaan lomba, karena kami ingin memastikan kondisi rute benar-benar baik dan nyaman bagi pelari untuk mengakomodir tingginya antusiasme pendaftar yang telah mencapai lebih dari 9.500 peserta dari dalam dan luar negeri,” kata Vice President Corporate Communication Bank Mandiri Maristella Tri Haryanti, dalam keterangan persnya Kamis (18/10).\r\n\r\nPenyelenggaraan Mandiri Jakarta City Marathon merupakan kolaborasi Bank Mandiri dengan Aliansi Komunitas Lari Jakarta (AKLJ). Tujuannya, untuk meningkatkan pembangunan di bidang pariwisata. Ajang ini juga menjadi rangkaian perayaan ulang tahun Bank Mandiri ke-20.\r\n\r\nMaristella menjelaskan penjadwalan ulang ini perlu dilakukan demi mendapatkan rute atau jalan yang baik. Terkait penjadwalan ulang ini, peserta dapat me-refund dengan melakukan konfirmasi dan verifikasi data di area <em>Race Pack Collection</em>yang terletak di Gedung Menara Mandiri II, lantai 2 Jalan Jenderal Sudirman No. 54-55 Jakarta.\r\n\r\nBagi peserta yang tidak dapat mendatangi lokasi Race Pack Collection, dapat melakukan konfirmasi dengan mengunjungi website <em>www.mandirijakartacitymarathon.com</em> dan mengisi lembar konfirmasi pengembalian.\r\n\r\nPeserta terdaftar yang ingin melakukan <em>refund</em>, harus menyertakan nama, kode registrasi MJCMXXX, dan nomor identitas yang digunakan pada saat mendaftar. “Selanjutnya panitia akan melakukan verifikasi data dan dana refund dapat kembali ke rekening peserta dalam jangka waktu 3-4 minggu sejak konfirmasi dan verifikasi dilakukan,” ujar Maristella.\r\n\r\nSumber: <a href="https://lifestyle.kontan.co.id/news/penyelenggaraan-mandiri-jakarta-city-marathon-2018-diundur">Kontan</a>', 'Penyelenggaraan Mandiri Jakarta City Marathon 2018 Diundur', '', 'publish', 'open', 'open', '', 'penyelenggaraan-mandiri-jakarta-city-marathon-2018-diundur', '', '', '2018-10-19 23:01:41', '2018-10-19 23:01:41', '', 0, 'http://localhost:10021/mti-runners/?p=59', 0, 'post', '', 0),
(60, 1, '2018-10-19 23:01:36', '2018-10-19 23:01:36', '', 'NULL', '<p>lomba lari&nbsp;BNI UI Half Marathon 2017</p>', 'inherit', 'open', 'closed', '', 'null', '', '', '2018-10-19 23:01:36', '2018-10-19 23:01:36', '', 59, 'http://localhost:10021/mti-runners/wp-content/uploads/2018/10/lari.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(61, 1, '2018-10-19 23:01:41', '2018-10-19 23:01:41', 'JAKARTA. Bank Mandiri menjadwalkan ulang penyelenggaraan Mandiri Jakarta City Marathon 2018. Lomba lari marathon internasional sebelumnya dijadwalkan pada 21 Oktober 2018 di kawasan Monumen Nasional (Monas).\r\n\r\n“Kami mohon maaf harus menjadwal ulang pelaksanaan lomba, karena kami ingin memastikan kondisi rute benar-benar baik dan nyaman bagi pelari untuk mengakomodir tingginya antusiasme pendaftar yang telah mencapai lebih dari 9.500 peserta dari dalam dan luar negeri,” kata Vice President Corporate Communication Bank Mandiri Maristella Tri Haryanti, dalam keterangan persnya Kamis (18/10).\r\n\r\nPenyelenggaraan Mandiri Jakarta City Marathon merupakan kolaborasi Bank Mandiri dengan Aliansi Komunitas Lari Jakarta (AKLJ). Tujuannya, untuk meningkatkan pembangunan di bidang pariwisata. Ajang ini juga menjadi rangkaian perayaan ulang tahun Bank Mandiri ke-20.\r\n\r\nMaristella menjelaskan penjadwalan ulang ini perlu dilakukan demi mendapatkan rute atau jalan yang baik. Terkait penjadwalan ulang ini, peserta dapat me-refund dengan melakukan konfirmasi dan verifikasi data di area <em>Race Pack Collection</em>yang terletak di Gedung Menara Mandiri II, lantai 2 Jalan Jenderal Sudirman No. 54-55 Jakarta.\r\n\r\nBagi peserta yang tidak dapat mendatangi lokasi Race Pack Collection, dapat melakukan konfirmasi dengan mengunjungi website <em>www.mandirijakartacitymarathon.com</em> dan mengisi lembar konfirmasi pengembalian.\r\n\r\nPeserta terdaftar yang ingin melakukan <em>refund</em>, harus menyertakan nama, kode registrasi MJCMXXX, dan nomor identitas yang digunakan pada saat mendaftar. “Selanjutnya panitia akan melakukan verifikasi data dan dana refund dapat kembali ke rekening peserta dalam jangka waktu 3-4 minggu sejak konfirmasi dan verifikasi dilakukan,” ujar Maristella.\r\n\r\nSumber: <a href="https://lifestyle.kontan.co.id/news/penyelenggaraan-mandiri-jakarta-city-marathon-2018-diundur">Kontan</a>', 'Penyelenggaraan Mandiri Jakarta City Marathon 2018 Diundur', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-10-19 23:01:41', '2018-10-19 23:01:41', '', 59, 'http://localhost:10021/mti-runners/2018/10/19/59-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-10-19 23:08:20', '2018-10-19 23:08:20', '{\n    "custom_css[trending-blog]": {\n        "value": ".postid-58.single .entry-meta {\\n    display: none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 23:08:20"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1ed88f6f-16fd-49aa-a561-6d74d20292f3', '', '', '2018-10-19 23:08:20', '2018-10-19 23:08:20', '', 0, 'http://localhost:10021/mti-runners/?p=62', 0, 'customize_changeset', '', 0),
(63, 1, '2018-10-19 23:08:20', '2018-10-19 23:08:20', '.postid-58.single .entry-meta {\n    display: none;\n}', 'trending-blog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-10-19 23:08:20', '2018-10-19 23:08:20', '', 48, 'http://localhost:10021/mti-runners/2018/10/19/48-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-10-19 23:10:17', '2018-10-19 23:10:17', '{\n    "custom_css[trending-blog]": {\n        "value": ".postid-58.single .entry-meta {\\n    display: none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-19 23:10:17"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a43a96f3-e627-4ede-9ca9-2f1f492feea6', '', '', '2018-10-19 23:10:17', '2018-10-19 23:10:17', '', 0, 'http://localhost:10021/mti-runners/2018/10/19/a43a96f3-e627-4ede-9ca9-2f1f492feea6/', 0, 'customize_changeset', '', 0),
(66, 1, '2018-10-19 23:11:39', '2018-10-19 23:11:39', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2018-10-21 19:08:37', '2018-10-21 19:08:37', '', 0, 'http://localhost:10021/mti-runners/?p=66', 2, 'nav_menu_item', '', 0),
(67, 1, '2018-10-21 16:28:58', '2018-10-21 16:28:58', '{\n    "custom_css[trending-blog]": {\n        "value": ".postid-58.single .inner-meta-info {\\n    display: none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-21 16:28:55"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a5356e54-dae5-48b6-8a60-0fdb69614293', '', '', '2018-10-21 16:28:58', '2018-10-21 16:28:58', '', 0, 'http://localhost:10021/mti-runners/?p=67', 0, 'customize_changeset', '', 0),
(68, 1, '2018-10-21 16:28:58', '2018-10-21 16:28:58', '.postid-58.single .inner-meta-info {\n    display: none;\n}', 'trending-blog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-10-21 16:28:58', '2018-10-21 16:28:58', '', 48, 'http://localhost:10021/mti-runners/2018/10/21/48-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-10-21 16:29:57', '2018-10-21 16:29:57', '{\n    "custom_css[trending-blog]": {\n        "value": ".postid-58.single .inner-meta-info {\\n    display: none;\\n}\\n\\n.postid-10.single .inner-meta-info {\\n    display: none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-21 16:29:57"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3b372342-ad89-42b4-bdee-06f975d53678', '', '', '2018-10-21 16:29:57', '2018-10-21 16:29:57', '', 0, 'http://localhost:10021/mti-runners/2018/10/21/3b372342-ad89-42b4-bdee-06f975d53678/', 0, 'customize_changeset', '', 0),
(70, 1, '2018-10-21 16:29:57', '2018-10-21 16:29:57', '.postid-58.single .inner-meta-info {\n    display: none;\n}\n\n.postid-10.single .inner-meta-info {\n    display: none;\n}', 'trending-blog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-10-21 16:29:57', '2018-10-21 16:29:57', '', 48, 'http://localhost:10021/mti-runners/2018/10/21/48-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-10-21 16:32:37', '2018-10-21 16:32:37', '{\n    "custom_css[trending-blog]": {\n        "value": ".postid-58.single .inner-meta-info {\\n    display: none;\\n}\\n\\n.page-id-662 .inner-meta-info {\\n    display: none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-21 16:32:37"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a0bd09b6-6457-410d-9a47-636d4a967f97', '', '', '2018-10-21 16:32:37', '2018-10-21 16:32:37', '', 0, 'http://localhost:10021/mti-runners/2018/10/21/a0bd09b6-6457-410d-9a47-636d4a967f97/', 0, 'customize_changeset', '', 0),
(72, 1, '2018-10-21 16:32:37', '2018-10-21 16:32:37', '.postid-58.single .inner-meta-info {\n    display: none;\n}\n\n.page-id-662 .inner-meta-info {\n    display: none;\n}', 'trending-blog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-10-21 16:32:37', '2018-10-21 16:32:37', '', 48, 'http://localhost:10021/mti-runners/2018/10/21/48-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-10-21 16:33:46', '2018-10-21 16:33:46', '{\n    "custom_css[trending-blog]": {\n        "value": ".page-id-10 .inner-meta-info {\\n    display: none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-21 16:33:18"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '22ca65b3-6d98-4a39-abac-67f32b60d940', '', '', '2018-10-21 16:33:46', '2018-10-21 16:33:46', '', 0, 'http://localhost:10021/mti-runners/?p=73', 0, 'customize_changeset', '', 0),
(74, 1, '2018-10-21 16:33:46', '2018-10-21 16:33:46', '.page-id-10 .inner-meta-info {\n    display: none;\n}', 'trending-blog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-10-21 16:33:46', '2018-10-21 16:33:46', '', 48, 'http://localhost:10021/mti-runners/2018/10/21/48-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2018-10-21 16:36:16', '2018-10-21 16:36:16', '{\n    "custom_css[trending-blog]": {\n        "value": ".page-id-10 .inner-meta-info {\\n    display: none;\\n}\\n\\n\\n.page-id-10 .title-seperator {\\n    display: none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-21 16:36:16"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd0c987bc-5177-4f08-8c30-4fb59f5ecde3', '', '', '2018-10-21 16:36:16', '2018-10-21 16:36:16', '', 0, 'http://localhost:10021/mti-runners/2018/10/21/d0c987bc-5177-4f08-8c30-4fb59f5ecde3/', 0, 'customize_changeset', '', 0),
(76, 1, '2018-10-21 16:36:16', '2018-10-21 16:36:16', '.page-id-10 .inner-meta-info {\n    display: none;\n}\n\n\n.page-id-10 .title-seperator {\n    display: none;\n}', 'trending-blog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-10-21 16:36:16', '2018-10-21 16:36:16', '', 48, 'http://localhost:10021/mti-runners/2018/10/21/48-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-10-21 16:36:49', '2018-10-21 16:36:49', '[wpum_login_form psw_link="yes" register_link="yes"]', 'Login to your account', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-10-21 16:36:49', '2018-10-21 16:36:49', '', 10, 'http://localhost:10021/mti-runners/2018/10/21/10-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-10-21 16:37:56', '2018-10-21 16:37:56', '[wpum_login_form psw_link="yes" register_link="yes"]', 'Login', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2018-10-21 16:37:56', '2018-10-21 16:37:56', '', 10, 'http://localhost:10021/mti-runners/2018/10/21/10-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2018-10-21 16:38:03', '2018-10-21 16:38:03', '[wpum_login_form psw_link="yes" register_link="yes"]', 'Login', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-10-21 16:38:03', '2018-10-21 16:38:03', '', 10, 'http://localhost:10021/mti-runners/2018/10/21/10-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-10-21 16:43:21', '2018-10-21 16:43:21', '{\n    "custom_css[trending-blog]": {\n        "value": ".page-id-10 .inner-meta-info {\\n    display: none;\\n}\\n\\n.page-id-10 .title-seperator {\\n    display: none;\\n}\\n\\n.page-id-13 .inner-meta-info {\\n    display: none;\\n}\\n\\n.page-id-13 .title-seperator {\\n    display: none;\\n}\\n\\n.page-id-8 .inner-meta-info {\\n    display: none;\\n}\\n\\n.page-id-8 .title-seperator {\\n    display: none;\\n}\\n\\n.page-id-14 .inner-meta-info {\\n    display: none;\\n}\\n\\n.page-id-14 .title-seperator {\\n    display: none;\\n}\\n\\n.page-id-12 .inner-meta-info {\\n    display: none;\\n}\\n\\n.page-id-12 .title-seperator {\\n    display: none;\\n}\\n\\n.page-id-6 .inner-meta-info {\\n    display: none;\\n}\\n\\n.page-id-6 .title-seperator {\\n    display: none;\\n}\\n\\n.page-id-7 .inner-meta-info {\\n    display: none;\\n}\\n\\n.page-id-7 .title-seperator {\\n    display: none;\\n}\\n\\n.page-id-11 .inner-meta-info {\\n    display: none;\\n}\\n\\n.page-id-11 .title-seperator {\\n    display: none;\\n}\\n\\n.page-id-5 .inner-meta-info {\\n    display: none;\\n}\\n\\n.page-id-5 .title-seperator {\\n    display: none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-21 16:43:21"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd24c239e-1e8b-4dc5-b930-4526352b745b', '', '', '2018-10-21 16:43:21', '2018-10-21 16:43:21', '', 0, 'http://localhost:10021/mti-runners/?p=80', 0, 'customize_changeset', '', 0),
(81, 1, '2018-10-21 16:43:22', '2018-10-21 16:43:22', '.page-id-10 .inner-meta-info {\n    display: none;\n}\n\n.page-id-10 .title-seperator {\n    display: none;\n}\n\n.page-id-13 .inner-meta-info {\n    display: none;\n}\n\n.page-id-13 .title-seperator {\n    display: none;\n}\n\n.page-id-8 .inner-meta-info {\n    display: none;\n}\n\n.page-id-8 .title-seperator {\n    display: none;\n}\n\n.page-id-14 .inner-meta-info {\n    display: none;\n}\n\n.page-id-14 .title-seperator {\n    display: none;\n}\n\n.page-id-12 .inner-meta-info {\n    display: none;\n}\n\n.page-id-12 .title-seperator {\n    display: none;\n}\n\n.page-id-6 .inner-meta-info {\n    display: none;\n}\n\n.page-id-6 .title-seperator {\n    display: none;\n}\n\n.page-id-7 .inner-meta-info {\n    display: none;\n}\n\n.page-id-7 .title-seperator {\n    display: none;\n}\n\n.page-id-11 .inner-meta-info {\n    display: none;\n}\n\n.page-id-11 .title-seperator {\n    display: none;\n}\n\n.page-id-5 .inner-meta-info {\n    display: none;\n}\n\n.page-id-5 .title-seperator {\n    display: none;\n}', 'trending-blog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-10-21 16:43:22', '2018-10-21 16:43:22', '', 48, 'http://localhost:10021/mti-runners/2018/10/21/48-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-10-21 16:48:50', '2018-10-21 16:48:50', '{\n    "custom_css[trending-blog]": {\n        "value": ".page-id-10 .inner-meta-info {\\n    display: none;\\n}\\n\\n\\n.page-id-13 .inner-meta-info {\\n    display: none;\\n}\\n\\n.page-id-8 .inner-meta-info {\\n    display: none;\\n}\\n\\n\\n.page-id-14 .inner-meta-info {\\n    display: none;\\n}\\n\\n\\n.page-id-12 .inner-meta-info {\\n    display: none;\\n}\\n\\n\\n.page-id-6 .inner-meta-info {\\n    display: none;\\n}\\n\\n\\n.page-id-7 .inner-meta-info {\\n    display: none;\\n}\\n\\n\\n.page-id-11 .inner-meta-info {\\n    display: none;\\n}\\n\\n.page-id-5 .inner-meta-info {\\n    display: none;\\n}\\n\\n",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-21 16:48:50"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6e32b847-8f3b-4f93-a798-e7bef1344e49', '', '', '2018-10-21 16:48:50', '2018-10-21 16:48:50', '', 0, 'http://localhost:10021/mti-runners/2018/10/21/6e32b847-8f3b-4f93-a798-e7bef1344e49/', 0, 'customize_changeset', '', 0),
(83, 1, '2018-10-21 16:48:50', '2018-10-21 16:48:50', '.page-id-10 .inner-meta-info {\n    display: none;\n}\n\n\n.page-id-13 .inner-meta-info {\n    display: none;\n}\n\n.page-id-8 .inner-meta-info {\n    display: none;\n}\n\n\n.page-id-14 .inner-meta-info {\n    display: none;\n}\n\n\n.page-id-12 .inner-meta-info {\n    display: none;\n}\n\n\n.page-id-6 .inner-meta-info {\n    display: none;\n}\n\n\n.page-id-7 .inner-meta-info {\n    display: none;\n}\n\n\n.page-id-11 .inner-meta-info {\n    display: none;\n}\n\n.page-id-5 .inner-meta-info {\n    display: none;\n}\n\n', 'trending-blog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-10-21 16:48:50', '2018-10-21 16:48:50', '', 48, 'http://localhost:10021/mti-runners/2018/10/21/48-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-10-21 17:13:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-21 17:13:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?post_type=oi_run_log_post&p=85', 0, 'oi_run_log_post', '', 0),
(87, 1, '2018-10-21 17:26:49', '2018-10-21 17:26:49', 'Kuy kita lari bareng dari tanggung jawab kita, bebas sebebas-bebasnya!', 'Lari Dari Tanggung Jawab', '', 'publish', 'open', 'closed', '', 'lari-dari-tanggung-jawab', '', '', '2018-10-21 17:26:49', '2018-10-21 17:26:49', '', 0, 'http://localhost:10021/mti-runners/?post_type=tribe_events&#038;p=87', 0, 'tribe_events', '', 0),
(88, 1, '2018-10-21 17:26:18', '2018-10-21 17:26:18', '', 'HAPPY', '', 'inherit', 'open', 'closed', '', 'happy', '', '', '2018-10-21 17:26:18', '2018-10-21 17:26:18', '', 87, 'http://localhost:10021/mti-runners/wp-content/uploads/2018/10/HAPPY.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2018-10-21 17:26:49', '2018-10-21 17:26:49', 'Kuy kita lari bareng dari tanggung jawab kita, bebas sebebas-bebasnya!', 'Lari Dari Tanggung Jawab', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-10-21 17:26:49', '2018-10-21 17:26:49', '', 87, 'http://localhost:10021/mti-runners/2018/10/21/87-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-10-21 17:26:50', '2018-10-21 17:26:50', '', 'Kampus UI', '', 'publish', 'closed', 'closed', '', 'kampus-ui', '', '', '2018-10-21 17:26:50', '2018-10-21 17:26:50', '', 0, 'http://localhost:10021/mti-runners/venue/kampus-ui/', 0, 'tribe_venue', '', 0),
(91, 1, '2018-10-21 17:26:53', '2018-10-21 17:26:53', '', 'Serikat Budak Korporat', '', 'publish', 'closed', 'closed', '', 'serikat-budak-korporat', '', '', '2018-10-21 17:26:53', '2018-10-21 17:26:53', '', 0, 'http://localhost:10021/mti-runners/organizer/serikat-budak-korporat/', 0, 'tribe_organizer', '', 0),
(92, 1, '2018-10-21 17:36:28', '2018-10-21 17:36:28', 'Mari ikut kegiatan Naruto Run, karena menjadi ninja adalah jalan ninjaku!', 'Naruto Run', '', 'publish', 'open', 'closed', '', 'naruto-run', '', '', '2018-10-21 17:36:28', '2018-10-21 17:36:28', '', 0, 'http://localhost:10021/mti-runners/?post_type=tribe_events&#038;p=92', 0, 'tribe_events', '', 0),
(93, 1, '2018-10-21 17:35:01', '2018-10-21 17:35:01', '', 'naruto', '', 'inherit', 'open', 'closed', '', 'naruto', '', '', '2018-10-21 17:35:01', '2018-10-21 17:35:01', '', 92, 'http://localhost:10021/mti-runners/wp-content/uploads/2018/10/naruto.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2018-10-21 17:36:28', '2018-10-21 17:36:28', 'Mari ikut kegiatan Naruto Run, karena menjadi ninja adalah jalan ninjaku!', 'Naruto Run', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-10-21 17:36:28', '2018-10-21 17:36:28', '', 92, 'http://localhost:10021/mti-runners/2018/10/21/92-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-10-21 17:36:30', '2018-10-21 17:36:30', '', 'Konoha', '', 'publish', 'closed', 'closed', '', 'konoha', '', '', '2018-10-21 17:36:30', '2018-10-21 17:36:30', '', 0, 'http://localhost:10021/mti-runners/venue/konoha/', 0, 'tribe_venue', '', 0),
(96, 1, '2018-10-21 17:36:32', '2018-10-21 17:36:32', '', 'Wibu Organizer', '', 'publish', 'closed', 'closed', '', 'wibu-organizer', '', '', '2018-10-21 17:36:32', '2018-10-21 17:36:32', '', 0, 'http://localhost:10021/mti-runners/organizer/wibu-organizer/', 0, 'tribe_organizer', '', 0),
(97, 1, '2018-10-21 17:36:41', '2018-10-21 17:36:41', 'Mari ikut kegiatan Naruto Run, karena menjadi ninja adalah jalan ninjaku!', 'Naruto Run', '', 'inherit', 'closed', 'closed', '', '92-autosave-v1', '', '', '2018-10-21 17:36:41', '2018-10-21 17:36:41', '', 92, 'http://localhost:10021/mti-runners/2018/10/21/92-autosave-v1/', 0, 'revision', '', 0),
(98, 1, '2018-10-21 17:38:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-21 17:38:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?p=98', 1, 'nav_menu_item', '', 0),
(99, 1, '2018-10-21 17:40:10', '2018-10-21 17:40:10', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2018-10-21 19:08:37', '2018-10-21 19:08:37', '', 0, 'http://localhost:10021/mti-runners/?p=99', 1, 'nav_menu_item', '', 0),
(100, 5, '2018-10-21 17:53:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-21 17:53:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?p=100', 0, 'post', '', 0),
(101, 5, '2018-10-21 18:01:55', '2018-10-21 18:01:55', 'Prestasi yang bukan prestasi, prestasi yang jangan dicontoh. Kawin lari', 'Kawin Lari', '', 'publish', 'open', 'closed', '', 'kawin-lari', '', '', '2018-10-21 18:35:16', '2018-10-21 18:35:16', '', 0, 'http://localhost:10021/mti-runners/?post_type=oi_run_log_post&#038;p=101', 0, 'oi_run_log_post', '', 0),
(102, 5, '2018-10-21 17:58:44', '2018-10-21 17:58:44', 'Prestasi yang bukan prestasi, prestasi yang jangan dicontoh. Kawin lari', 'Kawin Lari', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-10-21 17:58:44', '2018-10-21 17:58:44', '', 101, 'http://localhost:10021/mti-runners/2018/10/21/101-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-10-21 18:00:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-21 18:00:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?post_type=oi_run_log_post&p=103', 0, 'oi_run_log_post', '', 0),
(104, 1, '2018-10-21 18:06:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-21 18:06:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?post_type=oi_run_log_post&p=104', 0, 'oi_run_log_post', '', 0),
(105, 1, '2018-10-21 18:26:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-21 18:26:33', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?post_type=oi_run_log_post&p=105', 0, 'oi_run_log_post', '', 0),
(106, 1, '2018-10-21 18:49:37', '2018-10-21 18:49:37', 'Tesss', 'Tes', '', 'trash', 'open', 'open', '', 'tes__trashed', '', '', '2018-10-21 18:53:16', '2018-10-21 18:53:16', '', 0, 'http://localhost:10021/mti-runners/?p=106', 0, 'post', '', 0),
(107, 1, '2018-10-21 18:49:37', '2018-10-21 18:49:37', 'Tesss', 'Tes', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-10-21 18:49:37', '2018-10-21 18:49:37', '', 106, 'http://localhost:10021/mti-runners/2018/10/21/106-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-10-21 19:08:34', '2018-10-21 19:08:34', '', 'Runner''s Activity', '', 'publish', 'closed', 'closed', '', 'runners-activity', '', '', '2018-10-21 19:08:38', '2018-10-21 19:08:38', '', 0, 'http://localhost:10021/mti-runners/?p=109', 3, 'nav_menu_item', '', 0),
(110, 1, '2018-10-21 19:10:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-21 19:10:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?post_type=oi_run_log_post&p=110', 0, 'oi_run_log_post', '', 0),
(111, 5, '2018-10-21 19:12:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-21 19:12:58', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?post_type=oi_run_log_post&p=111', 0, 'oi_run_log_post', '', 0),
(112, 5, '2018-10-21 19:15:37', '2018-10-21 19:15:37', 'Aku punya anjing kecil diberi nama heli, heli gukgukguk', 'Lari Bersama Heli', '', 'publish', 'open', 'closed', '', 'lari-bersama-heli', '', '', '2018-10-21 19:15:37', '2018-10-21 19:15:37', '', 0, 'http://localhost:10021/mti-runners/?post_type=oi_run_log_post&#038;p=112', 0, 'oi_run_log_post', '', 0),
(113, 5, '2018-10-21 19:15:37', '2018-10-21 19:15:37', 'Aku punya anjing kecil diberi nama heli, heli gukgukguk', 'Lari Bersama Heli', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-10-21 19:15:37', '2018-10-21 19:15:37', '', 112, 'http://localhost:10021/mti-runners/2018/10/21/112-revision-v1/', 0, 'revision', '', 0),
(114, 5, '2018-10-21 19:18:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-21 19:18:00', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?post_type=oi_run_log_post&p=114', 0, 'oi_run_log_post', '', 0),
(115, 5, '2018-10-21 19:24:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-21 19:24:40', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?p=115', 0, 'post', '', 0),
(116, 1, '2018-10-21 19:33:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-21 19:33:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:10021/mti-runners/?post_type=oi_run_log_post&p=116', 0, 'oi_run_log_post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 17, 'order', '0'),
(3, 18, 'order', '0'),
(4, 18, 'product_count_product_cat', '1'),
(5, 17, 'product_count_product_cat', '1'),
(6, 19, 'product_count_product_tag', '1'),
(7, 20, 'product_count_product_tag', '1'),
(8, 21, 'order', '0'),
(9, 21, 'product_count_product_cat', '1'),
(10, 22, 'product_count_product_tag', '1'),
(11, 23, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Login', 'login', 0),
(17, 'Shoes', 'shoes', 0),
(18, 'Running', 'running', 0),
(19, 'Sepatu lari', 'sepatu-lari', 0),
(20, 'Sandiaga Uno', 'sandiaga-uno', 0),
(21, 'Jacket', 'jacket', 0),
(22, 'Jacket', 'jacket', 0),
(23, 'Joko Widodo', 'joko-widodo', 0),
(24, 'Primary Menu', 'primary-menu', 0),
(25, 'Tips', 'tips', 0),
(26, 'Tips Lari', 'tips-lari', 0),
(27, 'Jarak Jauh', 'jarak-jauh', 0),
(28, 'Running Story', 'running-story', 0),
(29, 'Experience', 'experience', 0),
(30, 'News', 'news', 0),
(32, 'Event', 'event', 0),
(33, 'Marathon', 'marathon', 0),
(34, 'City Running', 'city-running', 0),
(35, 'Personal Record', 'personal-record', 0),
(36, 'Kurus', 'events', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(15, 28, 0),
(15, 29, 0),
(17, 16, 0),
(18, 16, 0),
(22, 2, 0),
(22, 17, 0),
(22, 18, 0),
(22, 19, 0),
(22, 20, 0),
(38, 2, 0),
(38, 21, 0),
(38, 22, 0),
(38, 23, 0),
(46, 24, 0),
(59, 30, 0),
(59, 32, 0),
(59, 33, 0),
(66, 24, 0),
(87, 34, 0),
(92, 34, 0),
(99, 24, 0),
(101, 35, 0),
(106, 35, 0),
(109, 24, 0),
(112, 35, 0),
(112, 36, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 2),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'nav_menu', '', 0, 2),
(17, 17, 'product_cat', '', 0, 1),
(18, 18, 'product_cat', '', 0, 1),
(19, 19, 'product_tag', '', 0, 1),
(20, 20, 'product_tag', '', 0, 1),
(21, 21, 'product_cat', '', 0, 1),
(22, 22, 'product_tag', '', 0, 1),
(23, 23, 'product_tag', '', 0, 1),
(24, 24, 'nav_menu', '', 0, 4),
(25, 25, 'category', '', 0, 1),
(26, 26, 'post_tag', '', 0, 1),
(27, 27, 'post_tag', '', 0, 1),
(28, 28, 'category', '', 0, 1),
(29, 29, 'post_tag', '', 0, 1),
(30, 30, 'category', '', 0, 1),
(32, 32, 'post_tag', '', 0, 1),
(33, 33, 'post_tag', '', 0, 1),
(34, 34, 'tribe_events_cat', '', 0, 2),
(35, 35, 'category', '', 0, 2),
(36, 36, 'oi_goal_taxonomy', 'biar kurus', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'administrator'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"6f42b3a8e03daec019bfa31ac366c3d9a4aa3246c094bc66f1d0ba51a8e3906e";a:4:{s:10:"expiration";i:1540312076;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1540139276;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(19, 1, 'wc_last_active', '1540080000'),
(20, 2, 'nickname', 'lokerbogor'),
(21, 2, 'first_name', 'loker'),
(22, 2, 'last_name', 'bogor'),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'syntax_highlighting', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'locale', ''),
(31, 2, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(32, 2, 'wp_user_level', '2'),
(34, 2, 'dismissed_wp_pointers', ''),
(35, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(36, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:15:"add-product_cat";i:4;s:15:"add-product_tag";}'),
(37, 3, 'nickname', 'tes'),
(38, 3, 'first_name', 'tes'),
(39, 3, 'last_name', 'testes'),
(40, 3, 'description', 'hahaha'),
(41, 3, 'rich_editing', 'true'),
(42, 3, 'syntax_highlighting', 'true'),
(43, 3, 'comment_shortcuts', 'false'),
(44, 3, 'admin_color', 'fresh'),
(45, 3, 'use_ssl', '0'),
(46, 3, 'show_admin_bar_front', 'true'),
(47, 3, 'locale', ''),
(48, 3, 'wp_capabilities', 'a:1:{s:11:"contributor";b:1;}'),
(49, 3, 'wp_user_level', '1'),
(50, 3, 'last_update', '1539931584'),
(52, 2, 'wc_last_active', '1539907200'),
(53, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(55, 2, 'billing_first_name', 'loker'),
(56, 2, 'billing_last_name', 'bogor'),
(57, 2, 'billing_company', ''),
(58, 2, 'billing_address_1', ''),
(59, 2, 'billing_address_2', ''),
(60, 2, 'billing_city', ''),
(61, 2, 'billing_postcode', ''),
(62, 2, 'billing_country', ''),
(63, 2, 'billing_state', ''),
(64, 2, 'billing_phone', ''),
(65, 2, 'billing_email', 'lokerbogor.id@gmail.com'),
(66, 2, 'shipping_first_name', ''),
(67, 2, 'shipping_last_name', ''),
(68, 2, 'shipping_company', ''),
(69, 2, 'shipping_address_1', ''),
(70, 2, 'shipping_address_2', ''),
(71, 2, 'shipping_city', ''),
(72, 2, 'shipping_postcode', ''),
(73, 2, 'shipping_country', ''),
(74, 2, 'shipping_state', ''),
(75, 2, 'last_update', '1539971916'),
(76, 2, '_prevent_password_change', ''),
(78, 2, 'wp_dashboard_quick_press_last_post_id', '20'),
(79, 4, 'nickname', 'penjagatoko'),
(80, 4, 'first_name', 'penjaga'),
(81, 4, 'last_name', 'toko'),
(82, 4, 'description', ''),
(83, 4, 'rich_editing', 'true'),
(84, 4, 'syntax_highlighting', 'true'),
(85, 4, 'comment_shortcuts', 'false'),
(86, 4, 'admin_color', 'fresh'),
(87, 4, 'use_ssl', '0'),
(88, 4, 'show_admin_bar_front', 'true'),
(89, 4, 'locale', ''),
(90, 4, 'wp_capabilities', 'a:1:{s:12:"shop_manager";b:1;}'),
(91, 4, 'wp_user_level', '9'),
(93, 4, 'dismissed_wp_pointers', ''),
(94, 4, 'billing_first_name', 'penjaga'),
(95, 4, 'billing_last_name', 'toko'),
(96, 4, 'billing_company', ''),
(97, 4, 'billing_address_1', ''),
(98, 4, 'billing_address_2', ''),
(99, 4, 'billing_city', ''),
(100, 4, 'billing_postcode', ''),
(101, 4, 'billing_country', ''),
(102, 4, 'billing_state', ''),
(103, 4, 'billing_phone', ''),
(104, 4, 'billing_email', 'iqbaljundullah@gmail.com'),
(105, 4, 'shipping_first_name', ''),
(106, 4, 'shipping_last_name', ''),
(107, 4, 'shipping_company', ''),
(108, 4, 'shipping_address_1', ''),
(109, 4, 'shipping_address_2', ''),
(110, 4, 'shipping_city', ''),
(111, 4, 'shipping_postcode', ''),
(112, 4, 'shipping_country', ''),
(113, 4, 'shipping_state', ''),
(114, 4, 'last_update', '1539972626'),
(115, 4, '_prevent_password_change', ''),
(117, 4, 'wc_last_active', '1539907200'),
(118, 4, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(119, 4, 'wp_dashboard_quick_press_last_post_id', '21'),
(120, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(121, 1, 'wp_user-settings-time', '1539988879'),
(122, 1, 'nav_menu_recently_edited', '24'),
(123, 5, 'nickname', 'penulis1'),
(124, 5, 'first_name', 'penulis'),
(125, 5, 'last_name', 'satu'),
(126, 5, 'description', 'seorang penulis hebat'),
(127, 5, 'rich_editing', 'true'),
(128, 5, 'syntax_highlighting', 'true'),
(129, 5, 'comment_shortcuts', 'false'),
(130, 5, 'admin_color', 'fresh'),
(131, 5, 'use_ssl', '0'),
(132, 5, 'show_admin_bar_front', 'true'),
(133, 5, 'locale', ''),
(134, 5, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(135, 5, 'wp_user_level', '2'),
(136, 5, 'last_update', '1540149130'),
(138, 5, 'wc_last_active', '1540080000'),
(139, 5, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(140, 1, 'tribe_setDefaultNavMenuBoxes', '1'),
(141, 5, 'wp_dashboard_quick_press_last_post_id', '100'),
(142, 5, 'wp_user-settings', ''),
(143, 5, 'wp_user-settings-time', '1540149334'),
(144, 5, 'billing_first_name', 'penulis'),
(145, 5, 'billing_last_name', 'satu'),
(146, 5, 'billing_company', ''),
(147, 5, 'billing_address_1', ''),
(148, 5, 'billing_address_2', ''),
(149, 5, 'billing_city', ''),
(150, 5, 'billing_postcode', ''),
(151, 5, 'billing_country', ''),
(152, 5, 'billing_state', ''),
(153, 5, 'billing_phone', ''),
(154, 5, 'billing_email', 'penulis@lalayeye.com'),
(155, 5, 'shipping_first_name', ''),
(156, 5, 'shipping_last_name', ''),
(157, 5, 'shipping_company', ''),
(158, 5, 'shipping_address_1', ''),
(159, 5, 'shipping_address_2', ''),
(160, 5, 'shipping_city', ''),
(161, 5, 'shipping_postcode', ''),
(162, 5, 'shipping_country', ''),
(163, 5, 'shipping_state', ''),
(164, 5, '_prevent_password_change', ''),
(165, 5, 'session_tokens', 'a:1:{s:64:"ceb94074585ecca48d6524419fd94e3563ae6e6863546b58db8620888f2bb66d";a:4:{s:10:"expiration";i:1540321953;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1540149153;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'administrator', '$P$Brh1VlqcmPNH0Lbp44t6B76Tddcrs9/', 'administrator', 'reginiqbalmareza@gmail.com', '', '2018-10-18 07:20:43', '', 0, 'administrator'),
(2, 'lokerbogor', '$P$BPuZ8srxRb4t2KxCxvSg.ZClzSrlMO/', 'lokerbogor', 'lokerbogor.id@gmail.com', '', '2018-10-19 06:07:16', '1539929238:$P$BRv9Ldp2bgnM68Ew1NhsYoBPMMpBd41', 0, 'loker bogor'),
(3, 'tes', '$P$BITO9Z31EqKCVrjYBAq0hN.76ZuRnq/', 'tes', 'tes@gmail.com', '', '2018-10-19 06:46:23', '', 0, 'tes'),
(4, 'penjagatoko', '$P$B.gpDKDnASWVopZLS08srV66/O64JJ/', 'penjagatoko', 'iqbaljundullah@gmail.com', '', '2018-10-19 18:08:43', '1539972525:$P$BF62yvEzt8ll0a6CjrPebJHTitiI3j/', 0, 'penjaga toko'),
(5, 'penulis1', '$P$BcHRXEmZ58Gteg4/k1yMOMPLRcWCgO/', 'penulis1', 'penulis@lalayeye.com', '', '2018-10-21 17:06:37', '', 0, 'penulis1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(14, '1', 'a:8:{s:8:"customer";s:718:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"JK";s:7:"country";s:2:"ID";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"JK";s:16:"shipping_country";s:2:"ID";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:26:"reginiqbalmareza@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:10:"wc_notices";N;}', 1540160303),
(10, '2', 'a:1:{s:8:"customer";s:751:"a:26:{s:2:"id";s:1:"2";s:13:"date_modified";s:25:"2018-10-19T17:58:36+00:00";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"JK";s:7:"country";s:2:"ID";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"JK";s:16:"shipping_country";s:2:"ID";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:5:"loker";s:9:"last_name";s:5:"bogor";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:23:"lokerbogor.id@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1540145351),
(12, '4', 'a:1:{s:8:"customer";s:753:"a:26:{s:2:"id";s:1:"4";s:13:"date_modified";s:25:"2018-10-19T18:10:26+00:00";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"JK";s:7:"country";s:2:"ID";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"JK";s:16:"shipping_country";s:2:"ID";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:7:"penjaga";s:9:"last_name";s:4:"toko";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:24:"iqbaljundullah@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1540146789),
(17, '5', 'a:7:{s:8:"customer";s:749:"a:26:{s:2:"id";s:1:"5";s:13:"date_modified";s:25:"2018-10-21T19:12:10+00:00";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"JK";s:7:"country";s:2:"ID";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"JK";s:16:"shipping_country";s:2:"ID";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:7:"penulis";s:9:"last_name";s:4:"satu";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:20:"penulis@lalayeye.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";}', 1540321954);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Indonesia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'ID', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpum_fieldmeta`
--

CREATE TABLE `wp_wpum_fieldmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `wpum_field_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wpum_fieldmeta`
--

INSERT INTO `wp_wpum_fieldmeta` (`meta_id`, `wpum_field_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'required', '1'),
(2, 1, 'visibility', 'public'),
(3, 1, 'user_meta_key', 'username'),
(4, 2, 'required', '1'),
(5, 2, 'visibility', 'public'),
(6, 2, 'editing', 'public'),
(7, 2, 'user_meta_key', 'user_email'),
(8, 3, 'required', '1'),
(9, 3, 'user_meta_key', 'user_password'),
(10, 4, 'visibility', 'public'),
(11, 4, 'editing', 'public'),
(12, 4, 'user_meta_key', 'firstname'),
(13, 5, 'visibility', 'public'),
(14, 5, 'editing', 'public'),
(15, 5, 'user_meta_key', 'lastname'),
(16, 6, 'required', '1'),
(17, 6, 'visibility', 'public'),
(18, 6, 'editing', 'public'),
(19, 6, 'user_meta_key', 'nickname'),
(20, 7, 'required', '1'),
(21, 7, 'visibility', 'public'),
(22, 7, 'editing', 'public'),
(23, 7, 'user_meta_key', 'display_name'),
(24, 8, 'visibility', 'public'),
(25, 8, 'editing', 'public'),
(26, 8, 'user_meta_key', 'user_url'),
(27, 9, 'visibility', 'public'),
(28, 9, 'editing', 'public'),
(29, 9, 'user_meta_key', 'description'),
(30, 10, 'visibility', 'public'),
(31, 10, 'editing', 'public'),
(32, 10, 'user_meta_key', 'current_user_avatar'),
(33, 11, 'user_meta_key', 'user_cover'),
(34, 11, 'editing', 'public'),
(35, 11, 'visibility', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpum_fields`
--

CREATE TABLE `wp_wpum_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `field_order` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wpum_fields`
--

INSERT INTO `wp_wpum_fields` (`id`, `group_id`, `field_order`, `type`, `name`, `description`) VALUES
(1, 1, 1, 'username', 'Username', ''),
(2, 1, 2, 'user_email', 'Email', ''),
(3, 1, 3, 'user_password', 'Password', ''),
(4, 1, 4, 'user_firstname', 'First name', ''),
(5, 1, 5, 'user_lastname', 'Last name', ''),
(6, 1, 6, 'user_nickname', 'Nickname', ''),
(7, 1, 7, 'user_displayname', 'Display name', ''),
(8, 1, 8, 'user_website', 'Website', ''),
(9, 1, 9, 'user_description', 'Description', ''),
(10, 1, 10, 'user_avatar', 'Profile picture', ''),
(11, 1, 0, 'user_cover', 'Profile cover image', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpum_fieldsgroups`
--

CREATE TABLE `wp_wpum_fieldsgroups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_order` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wpum_fieldsgroups`
--

INSERT INTO `wp_wpum_fieldsgroups` (`id`, `group_order`, `is_primary`, `name`, `description`) VALUES
(1, 0, 0, 'Primary fields', 'Tes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpum_registration_formmeta`
--

CREATE TABLE `wp_wpum_registration_formmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `wpum_registration_form_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wpum_registration_formmeta`
--

INSERT INTO `wp_wpum_registration_formmeta` (`meta_id`, `wpum_registration_form_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'default', '1'),
(2, 1, 'role', 'author'),
(3, 1, 'fields', 'a:6:{i:0;i:1;i:1;i:3;i:2;i:2;i:3;i:4;i:4;i:5;i:5;i:9;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpum_registration_forms`
--

CREATE TABLE `wp_wpum_registration_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wpum_registration_forms`
--

INSERT INTO `wp_wpum_registration_forms` (`id`, `name`) VALUES
(1, 'Default registration form');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpum_search_fields`
--

CREATE TABLE `wp_wpum_search_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wpum_search_fields`
--

INSERT INTO `wp_wpum_search_fields` (`id`, `meta_key`) VALUES
(1, 'first_name'),
(2, 'last_name');

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_wpum_fieldmeta`
--
ALTER TABLE `wp_wpum_fieldmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `wpum_field_id` (`wpum_field_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_wpum_fields`
--
ALTER TABLE `wp_wpum_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `field_order` (`field_order`);

--
-- Indexes for table `wp_wpum_fieldsgroups`
--
ALTER TABLE `wp_wpum_fieldsgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(191)),
  ADD KEY `group_order` (`group_order`);

--
-- Indexes for table `wp_wpum_registration_formmeta`
--
ALTER TABLE `wp_wpum_registration_formmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `wpum_registration_form_id` (`wpum_registration_form_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_wpum_registration_forms`
--
ALTER TABLE `wp_wpum_registration_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpum_search_fields`
--
ALTER TABLE `wp_wpum_search_fields`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=705;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpum_fieldmeta`
--
ALTER TABLE `wp_wpum_fieldmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `wp_wpum_fields`
--
ALTER TABLE `wp_wpum_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wp_wpum_fieldsgroups`
--
ALTER TABLE `wp_wpum_fieldsgroups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wpum_registration_formmeta`
--
ALTER TABLE `wp_wpum_registration_formmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_wpum_registration_forms`
--
ALTER TABLE `wp_wpum_registration_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wpum_search_fields`
--
ALTER TABLE `wp_wpum_search_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
