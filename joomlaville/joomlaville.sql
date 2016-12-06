-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 06 2016 г., 20:25
-- Версия сервера: 10.1.16-MariaDB
-- Версия PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `joomlaville`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_assets`
--

CREATE TABLE `sg0we_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_assets`
--

INSERT INTO `sg0we_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 203, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 8, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 9, 10, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 11, 12, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 13, 14, 1, 'com_config', 'com_config', '{}'),
(7, 1, 15, 20, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 21, 78, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 79, 80, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 81, 82, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 83, 84, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 85, 86, 1, 'com_login', 'com_login', '{}'),
(13, 1, 87, 88, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 89, 90, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 91, 92, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 93, 104, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 105, 106, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 107, 164, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 165, 170, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 171, 172, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 173, 174, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 175, 176, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 177, 178, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 179, 182, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 183, 184, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 22, 25, 2, 'com_content.category.2', 'General', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 16, 17, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 166, 167, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 180, 181, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 185, 186, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 187, 188, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 189, 190, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 191, 192, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 193, 194, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 195, 196, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 108, 109, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 110, 111, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 112, 113, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 114, 115, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 116, 117, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 118, 119, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 120, 121, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 122, 123, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 124, 125, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 126, 127, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 128, 129, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 130, 131, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 132, 133, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(52, 18, 134, 135, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 136, 137, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 16, 94, 95, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 8, 26, 33, 2, 'com_content.category.8', 'About', '{}'),
(56, 8, 34, 41, 2, 'com_content.category.9', 'Attractions', '{}'),
(57, 8, 42, 49, 2, 'com_content.category.10', 'Festivals', '{}'),
(58, 8, 50, 57, 2, 'com_content.category.11', 'Transportation', '{}'),
(59, 55, 27, 28, 3, 'com_content.article.1', 'Joomlaville Climate', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(60, 55, 29, 30, 3, 'com_content.article.2', 'Joomlaville Location', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(61, 55, 31, 32, 3, 'com_content.article.3', 'Joomlaville History', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(62, 27, 23, 24, 3, 'com_content.article.4', 'Welcome to Joomlaville', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(63, 56, 35, 36, 3, 'com_content.article.5', 'Zoo', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(64, 56, 39, 40, 3, 'com_content.article.6', 'Aquarium', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(65, 56, 37, 38, 3, 'com_content.article.7', 'Museum', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(66, 57, 43, 44, 3, 'com_content.article.8', 'Independence Day', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(67, 57, 45, 46, 3, 'com_content.article.9', 'New Year''s Day', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(68, 57, 47, 48, 3, 'com_content.article.10', 'Mother''s Day', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(69, 58, 51, 52, 3, 'com_content.article.11', 'Bus Station', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(70, 58, 53, 54, 3, 'com_content.article.12', 'Train Station', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(71, 58, 55, 56, 3, 'com_content.article.13', 'Airport', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(72, 1, 197, 198, 1, '#__ucm_content.1', '#__ucm_content.1', '[]'),
(73, 16, 96, 97, 2, 'com_menus.menu.2', 'About Joomlaville', '{}'),
(74, 18, 138, 139, 2, 'com_modules.module.87', 'About Joomlaville', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(75, 16, 98, 99, 2, 'com_menus.menu.3', 'Joomlaville Attractions', '{}'),
(76, 18, 140, 141, 2, 'com_modules.module.88', 'Joomlaville Attractions', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(77, 16, 100, 101, 2, 'com_menus.menu.4', 'Joomlaville Festivals', '{}'),
(78, 18, 142, 143, 2, 'com_modules.module.89', 'Joomlaville Festivals', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(79, 16, 102, 103, 2, 'com_menus.menu.5', 'Joomlaville Transportation', '{}'),
(80, 18, 144, 145, 2, 'com_modules.module.90', 'Joomlaville Transportation', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(81, 3, 6, 7, 2, 'com_banners.category.12', 'Joomlaville Advertising', '{}'),
(82, 18, 146, 147, 2, 'com_modules.module.91', 'Joomlaville Banners', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(83, 7, 18, 19, 2, 'com_contact.category.13', 'Mayor''s Office', '{}'),
(84, 19, 168, 169, 2, 'com_newsfeeds.category.14', 'Sports', '{}'),
(85, 18, 148, 149, 2, 'com_modules.module.92', 'Search', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(86, 18, 150, 151, 2, 'com_modules.module.93', 'Latest Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(87, 18, 152, 153, 2, 'com_modules.module.94', 'Most Read Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(88, 18, 154, 155, 2, 'com_modules.module.95', 'Welcome to Joomlaville', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(89, 1, 199, 200, 1, '#__languages.2', '#__languages.2', '{}'),
(90, 1, 201, 202, 1, 'com_jce', 'COM_JCE', '{}'),
(91, 18, 156, 157, 2, 'com_modules.module.96', 'Museum Footer', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(92, 18, 158, 159, 2, 'com_modules.module.97', 'Zoo Footer', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(93, 18, 160, 161, 2, 'com_modules.module.98', 'Aquarium Banner', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(94, 18, 162, 163, 2, 'com_modules.module.99', 'Joomlaville Photo', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(95, 96, 59, 60, 3, 'com_content.article.14', 'Joomlaville Board Minutes for May', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(96, 8, 58, 61, 2, 'com_content.category.15', 'Board Minutes', '{}'),
(97, 8, 62, 69, 2, 'com_content.category.16', 'Parks', '{}'),
(98, 97, 63, 64, 3, 'com_content.article.15', 'Wood Park', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(99, 97, 65, 66, 3, 'com_content.article.16', 'City Park', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(100, 97, 67, 68, 3, 'com_content.article.17', 'Lake Park', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(101, 8, 70, 77, 2, 'com_content.category.17', 'News', '{}'),
(102, 101, 71, 72, 3, 'com_content.article.18', 'Sample News Article 1', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(103, 101, 73, 74, 3, 'com_content.article.19', 'Sample News Article 2', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(104, 101, 75, 76, 3, 'com_content.article.20', 'Sample News Article 3', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_associations`
--

CREATE TABLE `sg0we_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_banners`
--

CREATE TABLE `sg0we_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_banners`
--

INSERT INTO `sg0we_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `version`) VALUES
(1, 0, 0, 'Joomlaville Ad 1', 'joomlaville-ad-1', 0, 42, 0, 'http://opensourcematters.com', 1, 12, '', '', 0, 1, '', '{"imageurl":"images\\/banners\\/osmbanner1.png","width":"","height":"","alt":"Open Source Matters Banner"}', 0, '', -1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-06 00:00:00', '2016-12-06 13:22:08', '*', 381, '', '0000-00-00 00:00:00', 0, 1),
(2, 0, 0, 'Joomlaville Ad 2', 'joomlaville-ad-2', 0, 35, 1, 'http://joomla.org', 1, 12, '', '', 0, 2, '', '{"imageurl":"images\\/banners\\/shop-ad-books.jpg","width":"","height":"","alt":"Shop Joomla!"}', 0, '', -1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-06 00:00:00', '2016-12-06 13:23:48', '*', 381, '', '0000-00-00 00:00:00', 0, 1),
(3, 0, 0, 'Welcome Banner', 'welcome-banner', 0, 16, 0, 'http://joomlaville.org', 1, 12, '', '', 0, 3, '', '{"imageurl":"images\\/banners\\/welcome.jpg","width":"","height":"","alt":"Welcome to Our City"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-06 00:00:00', '2016-12-06 17:59:03', '*', 381, '', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_banner_clients`
--

CREATE TABLE `sg0we_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_banner_tracks`
--

CREATE TABLE `sg0we_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_banner_tracks`
--

INSERT INTO `sg0we_banner_tracks` (`track_date`, `track_type`, `banner_id`, `count`) VALUES
('2016-12-06 14:00:00', 1, 1, 18),
('2016-12-06 14:00:00', 1, 2, 14),
('2016-12-06 14:00:00', 2, 2, 1),
('2016-12-06 15:00:00', 1, 1, 10),
('2016-12-06 15:00:00', 1, 2, 8),
('2016-12-06 16:00:00', 1, 2, 1),
('2016-12-06 17:00:00', 1, 1, 2),
('2016-12-06 17:00:00', 1, 2, 3),
('2016-12-06 18:00:00', 1, 1, 11),
('2016-12-06 18:00:00', 1, 2, 6),
('2016-12-06 19:00:00', 1, 1, 1),
('2016-12-06 19:00:00', 1, 2, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_categories`
--

CREATE TABLE `sg0we_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_categories`
--

INSERT INTO `sg0we_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 31, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 381, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'general', 'com_content', 'General', 'general', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 381, '2011-01-01 00:00:01', 381, '2016-12-04 19:37:53', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 381, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 381, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 381, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 381, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 55, 1, 11, 12, 1, 'about', 'com_content', 'About', 'about', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 381, '2016-12-04 19:30:34', 0, '2016-12-04 19:30:34', 0, '*', 1),
(9, 56, 1, 13, 14, 1, 'attractions', 'com_content', 'Attractions', 'attractions', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 381, '2016-12-04 19:30:44', 0, '2016-12-04 19:30:44', 0, '*', 1),
(10, 57, 1, 15, 16, 1, 'festivals', 'com_content', 'Festivals', 'festivals', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 381, '2016-12-04 19:31:04', 0, '2016-12-04 19:31:04', 0, '*', 1),
(11, 58, 1, 17, 18, 1, 'transportation', 'com_content', 'Transportation', 'transportation', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 381, '2016-12-04 19:32:24', 0, '2016-12-04 19:32:24', 0, '*', 1),
(12, 81, 1, 19, 20, 1, 'joomlaville-advertising', 'com_banners', 'Joomlaville Advertising', 'joomlaville-advertising', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 381, '2016-12-06 13:11:31', 0, '2016-12-06 13:11:31', 0, '*', 1),
(13, 83, 1, 21, 22, 1, 'mayors-office', 'com_contact', 'Mayor''s Office', 'mayors-office', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 381, '2016-12-06 14:31:05', 381, '2016-12-06 14:31:44', 0, '*', 1),
(14, 84, 1, 23, 24, 1, 'sports', 'com_newsfeeds', 'Sports', 'sports', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 381, '2016-12-06 15:03:19', 0, '2016-12-06 15:03:19', 0, '*', 1),
(15, 96, 1, 25, 26, 1, 'board-minutes', 'com_content', 'Board Minutes', 'board-minutes', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 381, '2016-12-06 18:47:58', 0, '2016-12-06 18:47:58', 0, '*', 1),
(16, 97, 1, 27, 28, 1, 'parks', 'com_content', 'Parks', 'parks', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 381, '2016-12-06 19:01:42', 381, '2016-12-06 19:06:29', 0, '*', 1),
(17, 101, 1, 29, 30, 1, 'news', 'com_content', 'News', 'news', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 381, '2016-12-06 19:05:56', 381, '2016-12-06 19:07:03', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_contact_details`
--

CREATE TABLE `sg0we_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_contact_details`
--

INSERT INTO `sg0we_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Mayor Steve', 'mayor-steve', 'Mayor of Joomlaville', '555 Joomlaville Way', 'Joomlaville', 'FL', 'USA', '33601', '555-555-5555', '', '<p>Steve is a mayor. He is a great guy!</p>', 'images/users/webmaster.jpg', 'steve@joomlaville.org', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":false,"contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 13, 1, '555-555-5555', 'http://joomlaville.org', '', '', '', '*', '2016-12-06 14:39:40', 381, '', '2016-12-06 14:44:37', 381, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_content`
--

CREATE TABLE `sg0we_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_content`
--

INSERT INTO `sg0we_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 59, 'Joomlaville Climate', 'joomlaville-climate', '<p><strong><img src="images/articles/about/park3.jpg" alt="park3" style="margin: 5px; float: left;" />Joomlaville</strong> is a city located in a <em>great climate</em> at the foothills of the mountains.</p>\r\n<p>There is snow in the winter and plenty of sun during the summer.</p>\r\n<p>No matter time of year you visit, you''ll find that Joomlaville has enjoyable weather.</p>', '', 1, 8, '2016-12-04 19:52:18', 381, '', '2016-12-06 18:16:38', 381, 0, '0000-00-00 00:00:00', '2016-12-04 19:52:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 60, 'Joomlaville Location', 'joomlaville-location', '<p><img src="images/articles/about/news2.jpg" alt="news2" style="margin: 5px; float: left;" />Joomlaville is in the southeast of our country, about a five hour drive from the capital.</p>\r\n<p>It is located near a large mountain range, so there is plenty of opportunity for Joomlaville people to enjoy skiing, kayaking and other outdoor activities.</p>\r\n<p>Joomlaville is also about three hours from the beach, so it''s easy for residents to enjoy a sunny vacation.</p>', '', 1, 8, '2016-12-04 19:53:37', 381, '', '2016-12-06 18:15:48', 381, 0, '0000-00-00 00:00:00', '2016-12-04 19:53:37', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 21, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 61, 'Joomlaville History', 'joomlaville-history', '<p><img src="images/joomlaville.jpg" alt="joomlaville" style="margin: 5px; float: left;" />Joomlaville is a city with a rich history. It started as a market town in the 17th century.</p>\r\n<p>The site was chosen because it was a major crossroads for people traveling through the mountains.</p>\r\n<p>As the city grew in the 19th and 20th centuries, more industries moved and people flocked to Joomlaville looking for work. Many of our residents have now been here for several generations.</p>', '', 1, 8, '2016-12-04 19:54:24', 381, '', '2016-12-06 18:12:02', 381, 0, '0000-00-00 00:00:00', '2016-12-04 19:54:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 3, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 62, 'Welcome to Joomlaville', 'welcome-to-joomlaville', '<p><img src="images/townhall.jpg" alt="Joomlaville Townhall" style="margin: 5px; float: left;" />Thank you for visiting our site for the city of Joomlaville.</p>\r\n<p>It''s a wonderful city to live in, and we hope you''ll visit us soon. The weather is beautyful in the summer and not too cold in the winter, so it is always a good time to visit.</p>\r\n<p>Joomlaville has lots to do. Here are some suggestions if you are new to Joomlaville.</p>\r\n<p>You can visit the Aquarium, the Zoo and the Museum.</p>\r\n<p>You can celebrate with us on New Years Day, Independence Day and Mothers Day.</p>\r\n<p>You can get here via the Airport, Bus Station and Train Station.</p>', '', 1, 2, '2016-12-05 20:17:25', 381, '', '2016-12-06 17:23:31', 381, 0, '0000-00-00 00:00:00', '2016-12-05 20:17:25', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(5, 63, 'Zoo', 'zoo', '<p>Joomlaville Zoo is a wonderful place for families to visit.</p>\r\n<p>There is an aviary for birds and a farm for animals like cows, pigs and geese.</p>\r\n', '\r\n<p>The zoo also has exotic animals such as lions, tigers, giraffe and buffalo.</p>\r\n<p>Overall, it''s a great experience for young children.</p>', 1, 9, '2016-12-05 20:23:16', 381, '', '2016-12-05 21:19:41', 381, 0, '0000-00-00 00:00:00', '2016-12-05 20:23:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 64, 'Aquarium', 'aquarium', '<p>Joomlaville Aquarium is one of the biggest in the country. There is a large penguin exhibit.</p>\r\n<p>You can see them swimming, sunbathing and doing tricks. There are also some large killer whales and sharks in a huge tank in the center of the aquarium.</p>\r\n', '\r\n<p>Please don''t feed these fish!</p>', 1, 9, '2016-12-05 20:24:44', 381, '', '2016-12-05 21:19:10', 381, 0, '0000-00-00 00:00:00', '2016-12-05 20:24:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 65, 'Museum', 'museum', '<p>The Joomlaville Museum contains artifacts from throughout the city''s history.</p>\r\n<p>Here you can ride a steam train, see a house from the 1600s and even see old-fashioned airplanes fly by on the weekends.</p>', '', 1, 9, '2016-12-05 20:25:07', 381, '', '2016-12-06 12:46:13', 381, 0, '0000-00-00 00:00:00', '2016-12-05 20:25:07', '0000-00-00 00:00:00', '{"image_intro":"images\\/articles\\/attractions\\/museum.jpg","float_intro":"none","image_intro_alt":"Joomlaville Museum","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 66, 'Independence Day', 'independence-day', '<p>Independence Day is a big event throughout the country but we celebrate as well as anyone in Joomlaville.</p>\r\n<p>There are parades, fireworks and parties throughout the day.</p>', '', 1, 10, '2016-12-05 20:30:10', 381, '', '2016-12-05 20:30:10', 0, 0, '0000-00-00 00:00:00', '2016-12-05 20:30:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 67, 'New Year''s Day', 'new-years-day', '<p>New Year''s Day is a very good time to visit Joomlaville.</p>\r\n<p>On the day before, lots of restaurants and bars are open for you to celebrate. At the stroke of midknight, a large Joomla logo is dropped from in front of Town Hall.</p>\r\n<p>On the morning of New Year''s Day itself, there is a parade through the center of town with floats and antique cars.</p>', '', 1, 10, '2016-12-05 20:35:57', 381, '', '2016-12-05 20:43:18', 381, 0, '0000-00-00 00:00:00', '2016-12-05 20:35:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 68, 'Mother''s Day', 'mothers-day', '<p>Mother''s Day is a great opportunity for families to enjoy themselves in Joomlaville.</p>\r\n<p>Mothers are invited to a picnic in downtown Joomlaville with their entire families. There are prizes, games and good time for everyone who comes.</p>', '', 1, 10, '2016-12-05 20:39:14', 381, '', '2016-12-06 17:47:58', 381, 0, '0000-00-00 00:00:00', '2016-12-05 20:39:14', '0000-00-00 00:00:00', '{"image_intro":"images\\/articles\\/festivals\\/mothers.jpg","float_intro":"none","image_intro_alt":"Mother''s Day","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 3, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 69, 'Bus Station', 'bus-station', '<p>The Bus Station is a very good way to get to cities around Joomlaville.</p>\r\n<p>The buses leave Joomlaville every hour on weekdays and every two hours on weekends.</p>', '', 1, 11, '2016-12-05 20:40:46', 381, '', '2016-12-05 20:40:46', 0, 0, '0000-00-00 00:00:00', '2016-12-05 20:40:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 70, 'Train Station', 'train-station', '<p>The Joomlaville Train Station is a great way to get to other parts of the country. Our trains are quick, quiet and comfortable.</p>\r\n<p>The Train Station is close to the center of Joomaville and next to the Aquarium.</p>', '', 1, 11, '2016-12-05 20:41:38', 381, '', '2016-12-05 20:41:38', 0, 0, '0000-00-00 00:00:00', '2016-12-05 20:41:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 71, 'Airport', 'airport', '<h3>The Joomlaville Airport is a great place to fly to.</h3>\r\n<p>It is clean, modern and was designed by a team of famous architects.</p>\r\n<p><strong>Terminals</strong></p>\r\n<p>There are two terminals, one for international flights and one for domestic flights.</p>\r\n<p><strong>Destinations</strong></p>\r\n<p>From Joomlaville you can fly directly to major cities in:</p>\r\n<ul>\r\n<li>Europe</li>\r\n<li>Asia</li>\r\n<li>Africa</li>\r\n<li>North and South America.</li>\r\n</ul>\r\n<p><strong>Food</strong></p>\r\n<p>If you''re hungry before your flight, there are lots of restaurants where you can eat.</p>\r\n<p><strong>Location</strong></p>\r\n<p>The airport is located just outside of town, close to the Zoo.</p>\r\n<h3> </h3>', '', 1, 11, '2016-12-05 20:42:47', 381, '', '2016-12-06 12:19:34', 381, 0, '0000-00-00 00:00:00', '2016-12-05 20:42:47', '0000-00-00 00:00:00', '{"image_intro":"images\\/articles\\/transportation\\/airport.jpg","float_intro":"none","image_intro_alt":"Joomlaville Airport","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 3, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 95, 'Joomlaville Board Minutes for May', 'joomlaville-board-minutes-for-may', '<p>Board Minutes</p>', '', 1, 15, '2016-12-06 18:41:47', 381, '', '2016-12-06 18:48:19', 381, 0, '0000-00-00 00:00:00', '2016-12-06 18:41:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 2, '', '', 7, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 98, 'Wood Park', 'wood-park', '<p>Wood Park is located off the major highway in Joomlaville. There is a playground and picnic tables. It has two picnic tables in a beautiful secluded area with gorgeous views of the lake, and then a couple more picnic tables more set off in the woods.</p>', '', 1, 16, '2016-12-06 19:02:27', 381, '', '2016-12-06 19:13:38', 381, 0, '0000-00-00 00:00:00', '2016-12-06 19:02:27', '0000-00-00 00:00:00', '{"image_intro":"images\\/articles\\/parks\\/park3.jpg","float_intro":"none","image_intro_alt":"Wood Park","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 99, 'City Park', 'city-park', '<p>City Park is a small park just off Main Street. It has picnic tables with grills and nice views of downtown. People from local businesses often come here to relax or have lunch.&nbsp;There are also tennis courts for people who want to play during the summer.</p>', '', 1, 16, '2016-12-06 19:03:02', 381, '', '2016-12-06 19:12:51', 381, 0, '0000-00-00 00:00:00', '2016-12-06 19:03:02', '0000-00-00 00:00:00', '{"image_intro":"images\\/articles\\/parks\\/park2.jpg","float_intro":"none","image_intro_alt":"City Park","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 100, 'Lake Park', 'lake-park', '<p>Lake Park is right on Joomlaville Lake. There is a boat ramp if you want to take your boat out. There is it also aa small picnic area, playground, nice views, and good fishing from the banks of the lake.</p>', '', 1, 16, '2016-12-06 19:03:34', 381, '', '2016-12-06 19:11:49', 381, 0, '0000-00-00 00:00:00', '2016-12-06 19:03:34', '0000-00-00 00:00:00', '{"image_intro":"images\\/articles\\/parks\\/park1.jpg","float_intro":"none","image_intro_alt":"Lake Park","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 102, 'Sample News Article 1', 'sample-news-article-1', '<p>There was some big news in Joomlaville recently. Construction of a large new project called 1.6 was finished.</p>\r\n<p>It took the effort of many people in Joomlaville to complete but it was worth the effort. In fact, you''re looking at 1.6 right now. What do you think?</p>', '', 1, 17, '2016-12-06 19:08:29', 381, '', '2016-12-06 19:08:29', 0, 0, '0000-00-00 00:00:00', '2016-12-06 19:08:29', '0000-00-00 00:00:00', '{"image_intro":"images\\/articles\\/news\\/news1.jpg","float_intro":"none","image_intro_alt":"Sample News Article 1","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 103, 'Sample News Article 2', 'sample-news-article-2', '<p>Did you know that Joomlaville is one of the fastest growing cities around?</p>\r\n<p>Every day lots and lots of new people are moving to Joomlaville, attracted by the low cost and high quality of living. Why don''t you pay us a visit and see if you''d like to join us?</p>', '', 1, 17, '2016-12-06 19:09:45', 381, '', '2016-12-06 19:09:45', 0, 0, '0000-00-00 00:00:00', '2016-12-06 19:09:45', '0000-00-00 00:00:00', '{"image_intro":"images\\/articles\\/news\\/news2.jpg","float_intro":"none","image_intro_alt":"Sample News Article 2","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 104, 'Sample News Article 3', 'sample-news-article-3', '<p>Joomlaville is a busy place with events going on all the time.</p>\r\n<p>Almost every month you''ll find more and more Joomla events happening. Be sure to check Joomla.org regularly to see if there''s an event you''d like to attend.</p>', '', 1, 17, '2016-12-06 19:10:26', 381, '', '2016-12-06 19:10:26', 0, 0, '0000-00-00 00:00:00', '2016-12-06 19:10:26', '0000-00-00 00:00:00', '{"image_intro":"images\\/articles\\/news\\/news3.jpg","float_intro":"none","image_intro_alt":"Sample News Article 3","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_contentitem_tag_map`
--

CREATE TABLE `sg0we_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

--
-- Дамп данных таблицы `sg0we_contentitem_tag_map`
--

INSERT INTO `sg0we_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 1, 2, '2016-12-06 18:16:38', 1),
('com_content.article', 1, 1, 3, '2016-12-06 18:16:38', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_content_frontpage`
--

CREATE TABLE `sg0we_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_content_frontpage`
--

INSERT INTO `sg0we_content_frontpage` (`content_id`, `ordering`) VALUES
(4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_content_rating`
--

CREATE TABLE `sg0we_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_content_types`
--

CREATE TABLE `sg0we_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_content_types`
--

INSERT INTO `sg0we_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_core_log_searches`
--

CREATE TABLE `sg0we_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_core_log_searches`
--

INSERT INTO `sg0we_core_log_searches` (`search_term`, `hits`) VALUES
('', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_extensions`
--

CREATE TABLE `sg0we_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_extensions`
--

INSERT INTO `sg0we_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"tabs","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","articles_display_num":"10","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_tags":"1","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_subcat_desc":"1","show_empty_categories":"0","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_subcat_desc_cat":"1","show_empty_categories_cat":"0","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_image_heading":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"1","search_phrases":"1","search_areas":"1","show_date":"1","opensearch_name":"","opensearch_description":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","info_block_show_title":"1","show_category":"0","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_tags":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"0","show_noauth":"0","urls_position":"1","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"1","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"1","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"0","filter_field":"hide","show_headings":"0","list_show_date":"published","date_format":"","list_show_hits":"0","list_show_author":"0","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"8bdeb35a5aebade237ca25dd7e648cf5"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.17.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.4.0","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `sg0we_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 0, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 0, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 0, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 1, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1481047144}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":1480877970,"unique_id":"13618ff02867cbca622ee6596c419f1d880027ea","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"August 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(803, 'French_fr-CA', 'language', 'fr-CA', '', 0, 1, 0, 0, '{"name":"French_fr-CA","type":"language","creationDate":"2016-05-15","author":"Martin Lamothe","copyright":"Copyright (C) 2005-2016 joomla.fr et Open Source Matters. Tous droits r\\u00e9serv\\u00e9s","authorEmail":"admin@wiserweb.com","authorUrl":"www.wiserweb.com","version":"3.5.1.2","description":"fr-CAsite language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(804, 'French_fr-CA', 'language', 'fr-CA', '', 1, 1, 0, 0, '{"name":"French_fr-CA","type":"language","creationDate":"2016-05-15","author":"Martin Lamothe","copyright":"Copyright (C) 2005-2016 joomla.fr et Open Source Matters. Tous droits r\\u00e9serv\\u00e9s","authorEmail":"admin@wiserweb.com","authorUrl":"www.wiserweb.com","version":"3.5.1.2","description":"fr-CAsite language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(805, 'French Canadian Language Pack', 'package', 'pkg_fr-CA', '', 0, 1, 1, 0, '{"name":"French Canadian Language Pack","type":"package","creationDate":"2016-05-15","author":"Martin Lamothe","copyright":"Copyright (C) 2005-2016 joomla.fr et Open Source Matters. Tous droits r\\u00e9serv\\u00e9s","authorEmail":"admin@wiserweb.com","authorUrl":"www.wiserweb.com","version":"3.5.1.2","description":"\\n\\t\\t\\n\\t\\t<div style=\\"text-align:left;\\">\\n\\t\\t<h3>Joomla! Full French Canadian (fr-CA) Language Package <\\/h3>\\n\\t\\t<h3>Paquet de langue Joomla! fran\\u00e7ais canadien (fr-CA) complet <\\/h3>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"pkg_fr-CA"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(806, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"17 February 2016","author":"Joomla! Project","copyright":"Copyright (C) 2013-2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.1.0","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(807, 'COM_JCE', 'component', 'com_jce', '', 1, 1, 0, 0, '{"name":"COM_JCE","type":"component","creationDate":"25-11-2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"@@e-mail@@","authorUrl":"www.joomlacontenteditor.net","version":"2.6.0","description":"COM_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(808, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_jce","type":"plugin","creationDate":"25-11-2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.0","description":"WF_EDITOR_PLUGIN_DESC","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(809, 'plg_content_jce', 'plugin', 'jce', 'content', 0, 1, 1, 0, '{"name":"plg_content_jce","type":"plugin","creationDate":"25-11-2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.0","description":"PLG_CONTENT_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(810, 'plg_extension_jce', 'plugin', 'jce', 'extension', 0, 1, 1, 0, '{"name":"plg_extension_jce","type":"plugin","creationDate":"25-11-2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.0","description":"PLG_EXTENSION_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(811, 'plg_installer_jce', 'plugin', 'jce', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_jce","type":"plugin","creationDate":"25-11-2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.0","description":"PLG_INSTALLER_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(812, 'plg_quickicon_jce', 'plugin', 'jce', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jce","type":"plugin","creationDate":"31-08-2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomalcontenteditor.net","version":"2.6.0-pro-beta3","description":"PLG_QUICKICON_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(813, 'plg_system_jce', 'plugin', 'jce', 'system', 0, 1, 1, 0, '{"name":"plg_system_jce","type":"plugin","creationDate":"25-11-2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.0","description":"PLG_SYSTEM_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(814, 'PKG_JCE', 'package', 'pkg_jce', '', 0, 1, 1, 0, '{"name":"PKG_JCE","type":"package","creationDate":"25-11-2016","author":"Ryan Demmer","copyright":"","authorEmail":"","authorUrl":"","version":"2.6.0","description":"PKG_JCE_XML_DESCRIPTION","group":"","filename":"pkg_jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(815, 'OSTraining: Breeze', 'template', 'ostrainingbreeze', '', 0, 1, 1, 0, '{"name":"OSTraining: Breeze","type":"template","creationDate":"December 2014","author":"OSTraining","copyright":"Copyright (C) 2014 OSTraining.com","authorEmail":"info@ostraining.com","authorUrl":"http:\\/\\/www.ostraining.com","version":"2.1.0","description":"<p>OSTraining Breeze. A beautiful and easy-to-use-template from OSTraining<br\\/><img src=\\"..\\/templates\\/ostrainingbreeze\\/template_thumbnail.png\\" alt=\\"OSTraining\\" \\/><\\/p>","group":"","filename":"templateDetails"}', '{"logoFile":"","googleFont":"1","fontAwesome":"1","mobileMenu":"1","googleFontName":"Open+Sans:400,300,300italic,700,600,800","colorScheme":"#2184CD","hoverColor":"#41A1D6"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_filters`
--

CREATE TABLE `sg0we_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_filters`
--

INSERT INTO `sg0we_finder_filters` (`filter_id`, `title`, `alias`, `state`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `map_count`, `data`, `params`) VALUES
(1, '2016 Attractions', '2016-attractions', 1, '2016-12-06 15:35:01', 381, '', '2016-12-06 15:35:01', 0, 0, '0000-00-00 00:00:00', 2, '19,16', '{"w1":"1","d1":"2016-01-01 00:00:00","w2":"-1","d2":"2017-01-01 00:00:00"}');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links`
--

CREATE TABLE `sg0we_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links`
--

INSERT INTO `sg0we_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1, 'index.php?option=com_tags&view=tag&id=2', 'index.php?option=com_tags&view=tag&id=2:overview', 'overview', '', '2016-12-06 18:23:51', 'e6e5718ec9842fc6e73982d523b60991', 1, 1, 1, '*', '2016-12-05 20:51:31', '2016-12-05 20:51:31', '2016-12-05 20:51:31', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31363a7b733a323a226964223b733a313a2232223b733a353a22616c696173223b733a383a226f76657276696577223b733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b733a333a22333831223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a393a22736570617261746f72223b733a313a222e223b7d733a383a226d6f646966696564223b733a31393a22323031362d31322d30352032303a35313a3331223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a33323a7b733a31303a227461675f6c61796f7574223b733a393a225f3a64656661756c74223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a353b733a31343a2273686f775f7461675f7469746c65223b733a313a2230223b733a32333a227461675f6c6973745f73686f775f7461675f696d616765223b733a313a2230223b733a32393a227461675f6c6973745f73686f775f7461675f6465736372697074696f6e223b733a313a2230223b733a31343a227461675f6c6973745f696d616765223b733a303a22223b733a31383a2273686f775f7461675f6e756d5f6974656d73223b733a313a2230223b733a31363a227461675f6c6973745f6f726465726279223b733a353a227469746c65223b733a32363a227461675f6c6973745f6f7264657262795f646972656374696f6e223b733a333a22415343223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31383a227461675f6c6973745f73686f775f64617465223b733a313a2230223b733a32343a227461675f6c6973745f73686f775f6974656d5f696d616765223b733a313a2230223b733a33303a227461675f6c6973745f73686f775f6974656d5f6465736372697074696f6e223b733a313a2230223b733a33323a227461675f6c6973745f6974656d5f6d6178696d756d5f63686172616374657273223b693a303b733a31373a2272657475726e5f616e795f6f725f616c6c223b733a313a2231223b733a31363a22696e636c7564655f6368696c6472656e223b733a313a2230223b733a373a226d6178696d756d223b693a3230303b733a32343a227461675f6c6973745f6c616e67756167655f66696c746572223b733a333a22616c6c223b733a31313a22746167735f6c61796f7574223b733a393a225f3a64656661756c74223b733a31363a22616c6c5f746167735f6f726465726279223b733a353a227469746c65223b733a32363a22616c6c5f746167735f6f7264657262795f646972656374696f6e223b733a333a22415343223b733a32333a22616c6c5f746167735f73686f775f7461675f696d616765223b733a313a2230223b733a32383a22616c6c5f746167735f73686f775f7461675f64657363726970696f6e223b733a313a2230223b733a33313a22616c6c5f746167735f7461675f6d6178696d756d5f63686172616374657273223b693a32303b733a32323a22616c6c5f746167735f73686f775f7461675f68697473223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a313a2231223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31393a227461675f6669656c645f616a61785f6d6f6465223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31303a22323a6f76657276696577223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a333a22746167223b733a343a2270617468223b733a33393a22696e6465782e7068702f636f6d706f6e656e742f746167732f7461672f322d6f76657276696577223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a393a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a333a7b733a343a2254797065223b613a313a7b733a333a22546167223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a333a22546167223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7461677326766965773d7461672669643d32223b733a353a22726f757465223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f7461677326766965773d7461672669643d323a6f76657276696577223b733a353a227469746c65223b733a383a226f76657276696577223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b733a313a2231223b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30352032303a35313a3331223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22323031362d31322d30352032303a35313a3331223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30352032303a35313a3331223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(2, 'index.php?option=com_tags&view=tag&id=3', 'index.php?option=com_tags&view=tag&id=3:climate', 'climate', '', '2016-12-06 18:23:55', 'dc871c2a081a0f29f84cea16631c2555', 1, 1, 1, '*', '2016-12-05 20:51:31', '2016-12-05 20:51:31', '2016-12-05 20:51:31', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31363a7b733a323a226964223b733a313a2233223b733a353a22616c696173223b733a373a22636c696d617465223b733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b733a333a22333831223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a393a22736570617261746f72223b733a313a222e223b7d733a383a226d6f646966696564223b733a31393a22323031362d31322d30352032303a35313a3331223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a33323a7b733a31303a227461675f6c61796f7574223b733a393a225f3a64656661756c74223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a353b733a31343a2273686f775f7461675f7469746c65223b733a313a2230223b733a32333a227461675f6c6973745f73686f775f7461675f696d616765223b733a313a2230223b733a32393a227461675f6c6973745f73686f775f7461675f6465736372697074696f6e223b733a313a2230223b733a31343a227461675f6c6973745f696d616765223b733a303a22223b733a31383a2273686f775f7461675f6e756d5f6974656d73223b733a313a2230223b733a31363a227461675f6c6973745f6f726465726279223b733a353a227469746c65223b733a32363a227461675f6c6973745f6f7264657262795f646972656374696f6e223b733a333a22415343223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31383a227461675f6c6973745f73686f775f64617465223b733a313a2230223b733a32343a227461675f6c6973745f73686f775f6974656d5f696d616765223b733a313a2230223b733a33303a227461675f6c6973745f73686f775f6974656d5f6465736372697074696f6e223b733a313a2230223b733a33323a227461675f6c6973745f6974656d5f6d6178696d756d5f63686172616374657273223b693a303b733a31373a2272657475726e5f616e795f6f725f616c6c223b733a313a2231223b733a31363a22696e636c7564655f6368696c6472656e223b733a313a2230223b733a373a226d6178696d756d223b693a3230303b733a32343a227461675f6c6973745f6c616e67756167655f66696c746572223b733a333a22616c6c223b733a31313a22746167735f6c61796f7574223b733a393a225f3a64656661756c74223b733a31363a22616c6c5f746167735f6f726465726279223b733a353a227469746c65223b733a32363a22616c6c5f746167735f6f7264657262795f646972656374696f6e223b733a333a22415343223b733a32333a22616c6c5f746167735f73686f775f7461675f696d616765223b733a313a2230223b733a32383a22616c6c5f746167735f73686f775f7461675f64657363726970696f6e223b733a313a2230223b733a33313a22616c6c5f746167735f7461675f6d6178696d756d5f63686172616374657273223b693a32303b733a32323a22616c6c5f746167735f73686f775f7461675f68697473223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a313a2231223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31393a227461675f6669656c645f616a61785f6d6f6465223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a393a22333a636c696d617465223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a333a22746167223b733a343a2270617468223b733a33383a22696e6465782e7068702f636f6d706f6e656e742f746167732f7461672f332d636c696d617465223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a393a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a333a7b733a343a2254797065223b613a313a7b733a333a22546167223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a333a22546167223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7461677326766965773d7461672669643d33223b733a353a22726f757465223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f7461677326766965773d7461672669643d333a636c696d617465223b733a353a227469746c65223b733a373a22636c696d617465223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b733a313a2231223b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30352032303a35313a3331223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22323031362d31322d30352032303a35313a3331223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30352032303a35313a3331223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(3, 'index.php?option=com_content&view=category&id=2', 'index.php?option=com_content&view=category&id=2&Itemid=101', 'General', '', '2016-12-06 18:23:58', 'b14ff18759e1000fd8c5c94afc96c3b3', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2232223b733a353a22616c696173223b733a373a2267656e6572616c223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30342031393a33373a3533223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a313a2231223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a393a22323a67656e6572616c223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a31393a22696e6465782e7068702f322d67656e6572616c223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d32223b733a353a22726f757465223b733a35383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d32264974656d69643d313031223b733a353a227469746c65223b733a373a2247656e6572616c223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(4, 'index.php?option=com_banners&view=category&id=3', '', 'Uncategorised', '', '2016-12-06 18:24:01', '746334f56fec44456e87ffa68b1643b4', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2233223b733a353a22616c696173223b733a31333a22756e63617465676f7269736564223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f62616e6e657273223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a313a2233223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31353a22333a756e63617465676f7269736564223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a303a22223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f62616e6e65727326766965773d63617465676f72792669643d33223b733a353a22726f757465223b733a303a22223b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(5, 'index.php?option=com_contact&view=category&id=4', 'index.php?option=com_contact&view=category&id=4&Itemid=101', 'Uncategorised', '', '2016-12-06 18:24:02', 'ee1360db11adc834312610142fd690ce', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2234223b733a353a22616c696173223b733a31333a22756e63617465676f7269736564223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74616374223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a313a2235223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31353a22343a756e63617465676f7269736564223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a36333a22696e6465782e7068702f636f6d706f6e656e742f636f6e746163742f63617465676f72792f342d756e63617465676f72697365643f4974656d69643d313031223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d63617465676f72792669643d34223b733a353a22726f757465223b733a35383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d63617465676f72792669643d34264974656d69643d313031223b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(6, 'index.php?option=com_newsfeeds&view=category&id=5', 'index.php?option=com_newsfeeds&view=category&id=5&Itemid=101', 'Uncategorised', '', '2016-12-06 18:24:03', '9cc8762df094eba918fda2e1e1d040f4', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2235223b733a353a22616c696173223b733a31333a22756e63617465676f7269736564223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31333a22636f6d5f6e6577736665656473223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a313a2237223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31353a22353a756e63617465676f7269736564223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a36353a22696e6465782e7068702f636f6d706f6e656e742f6e65777366656564732f63617465676f72792f352d756e63617465676f72697365643f4974656d69643d313031223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34393a22696e6465782e7068703f6f7074696f6e3d636f6d5f6e657773666565647326766965773d63617465676f72792669643d35223b733a353a22726f757465223b733a36303a22696e6465782e7068703f6f7074696f6e3d636f6d5f6e657773666565647326766965773d63617465676f72792669643d35264974656d69643d313031223b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(7, 'index.php?option=com_users&view=category&id=7', '', 'Uncategorised', '', '2016-12-06 18:24:04', '4d472b3d7da4ab063c228bb5d8ebb6cc', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2237223b733a353a22616c696173223b733a31333a22756e63617465676f7269736564223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a393a22636f6d5f7573657273223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a313a2239223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31353a22373a756e63617465676f7269736564223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a303a22223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34353a22696e6465782e7068703f6f7074696f6e3d636f6d5f757365727326766965773d63617465676f72792669643d37223b733a353a22726f757465223b733a303a22223b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031312d30312d30312030303a30303a3031223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(8, 'index.php?option=com_content&view=category&id=8', 'index.php?option=com_content&view=category&id=8&Itemid=101', 'About', '', '2016-12-06 18:24:04', '9f805e673f1f275a0bce92b66243547a', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-12-04 19:30:34', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2238223b733a353a22616c696173223b733a353a2261626f7574223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30342031393a33303a3334223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223131223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a373a22383a61626f7574223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a31373a22696e6465782e7068702f382d61626f7574223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d38223b733a353a22726f757465223b733a35383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d38264974656d69643d313031223b733a353a227469746c65223b733a353a2241626f7574223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30342031393a33303a3334223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(9, 'index.php?option=com_content&view=category&id=9', 'index.php?option=com_content&view=category&id=9&Itemid=105', 'Attractions', '', '2016-12-06 18:24:05', '0c72f4a92c5963d8bc0395a1b89c7379', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-12-04 19:30:44', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a313a2239223b733a353a22616c696173223b733a31313a2261747472616374696f6e73223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30342031393a33303a3434223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223133223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31333a22393a61747472616374696f6e73223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a32313a22696e6465782e7068702f61747472616374696f6e73223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d39223b733a353a22726f757465223b733a35383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d39264974656d69643d313035223b733a353a227469746c65223b733a31313a2241747472616374696f6e73223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30342031393a33303a3434223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(10, 'index.php?option=com_content&view=category&id=10', 'index.php?option=com_content&view=category&id=10&Itemid=106', 'Festivals', '', '2016-12-06 18:24:06', 'c9d058490b8b40d546b84ecced80fcf9', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-12-04 19:31:04', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a323a223130223b733a353a22616c696173223b733a393a22666573746976616c73223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30342031393a33313a3034223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223135223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31323a2231303a666573746976616c73223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a33313a22696e6465782e7068702f6a6f6f6d6c6176696c6c652d666573746976616c73223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3130223b733a353a22726f757465223b733a35393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3130264974656d69643d313036223b733a353a227469746c65223b733a393a22466573746976616c73223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30342031393a33313a3034223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);
INSERT INTO `sg0we_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(11, 'index.php?option=com_content&view=category&id=11', 'index.php?option=com_content&view=category&id=11&Itemid=101', 'Transportation', '', '2016-12-06 18:24:06', '073023f8e239a42d6d5a10ec80ef29f7', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-12-04 19:32:24', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a323a223131223b733a353a22616c696173223b733a31343a227472616e73706f72746174696f6e223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30342031393a33323a3234223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223137223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31373a2231313a7472616e73706f72746174696f6e223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a32373a22696e6465782e7068702f31312d7472616e73706f72746174696f6e223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3131223b733a353a22726f757465223b733a35393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3131264974656d69643d313031223b733a353a227469746c65223b733a31343a225472616e73706f72746174696f6e223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30342031393a33323a3234223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(12, 'index.php?option=com_banners&view=category&id=12', '', 'Joomlaville Advertising', '', '2016-12-06 18:24:07', '6ac3cc60bcd21ba45fd551ae201a651d', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-12-06 13:11:31', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a323a223132223b733a353a22616c696173223b733a32333a226a6f6f6d6c6176696c6c652d6164766572746973696e67223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f62616e6e657273223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031333a31313a3331223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223139223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a32363a2231323a6a6f6f6d6c6176696c6c652d6164766572746973696e67223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a303a22223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f62616e6e65727326766965773d63617465676f72792669643d3132223b733a353a22726f757465223b733a303a22223b733a353a227469746c65223b733a32333a224a6f6f6d6c6176696c6c65204164766572746973696e67223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031333a31313a3331223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(13, 'index.php?option=com_contact&view=category&id=13', 'index.php?option=com_contact&view=category&id=13&Itemid=110', 'Mayor''s Office', '', '2016-12-06 18:24:08', '38e3753bd690517a517c2fa38e827be1', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-12-06 14:31:05', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a323a223133223b733a353a22616c696173223b733a31333a226d61796f72732d6f6666696365223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74616374223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031343a33313a3434223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223231223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31363a2231333a6d61796f72732d6f6666696365223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a32303a22696e6465782e7068702f636f6e746163742d7573223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d63617465676f72792669643d3133223b733a353a22726f757465223b733a35393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d63617465676f72792669643d3133264974656d69643d313130223b733a353a227469746c65223b733a31343a224d61796f722773204f6666696365223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031343a33313a3035223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(14, 'index.php?option=com_newsfeeds&view=category&id=14', 'index.php?option=com_newsfeeds&view=category&id=14&Itemid=101', 'Sports', '', '2016-12-06 18:24:09', '9aeace5969346c8c7d2b46f071c9df19', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-12-06 15:03:19', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31393a7b733a323a226964223b733a323a223134223b733a353a22616c696173223b733a363a2273706f727473223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31333a22636f6d5f6e6577736665656473223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031353a30333a3139223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223233223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a393a2231343a73706f727473223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a35393a22696e6465782e7068702f636f6d706f6e656e742f6e65777366656564732f63617465676f72792f31342d73706f7274733f4974656d69643d313031223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a35303a22696e6465782e7068703f6f7074696f6e3d636f6d5f6e657773666565647326766965773d63617465676f72792669643d3134223b733a353a22726f757465223b733a36313a22696e6465782e7068703f6f7074696f6e3d636f6d5f6e657773666565647326766965773d63617465676f72792669643d3134264974656d69643d313031223b733a353a227469746c65223b733a363a2253706f727473223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031353a30333a3139223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(15, 'index.php?option=com_contact&view=contact&id=1', 'index.php?option=com_contact&view=contact&id=1:mayor-steve&catid=13:mayors-office&Itemid=110', 'Mayor Steve', ' Steve is a mayor. He is a great guy! ', '2016-12-06 18:24:10', 'abc6bed1589adae740e4e3f046ed3f15', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-12-06 14:39:40', '0000-00-00 00:00:00', 0, 0, 3, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a33353a7b733a323a226964223b733a313a2231223b733a353a22616c696173223b733a31313a226d61796f722d7374657665223b733a383a22706f736974696f6e223b733a32303a224d61796f72206f66204a6f6f6d6c6176696c6c65223b733a373a2261646472657373223b733a31393a22353535204a6f6f6d6c6176696c6c6520576179223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031343a34343a3337223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b733a32353a227b22726f626f7473223a22222c22726967687473223a22227d223b733a393a22736f72746e616d6531223b733a303a22223b733a393a22736f72746e616d6532223b733a303a22223b733a393a22736f72746e616d6533223b733a303a22223b733a343a2263697479223b733a31313a224a6f6f6d6c6176696c6c65223b733a363a22726567696f6e223b733a323a22464c223b733a373a22636f756e747279223b733a333a22555341223b733a333a227a6970223b733a353a223333363031223b733a393a2274656c6570686f6e65223b733a31323a223535352d3535352d35353535223b733a333a22666178223b733a303a22223b733a373a2273756d6d617279223b733a34333a223c703e53746576652069732061206d61796f722e204865206973206120677265617420677579213c2f703e223b733a353a22656d61696c223b733a32313a227374657665406a6f6f6d6c6176696c6c652e6f7267223b733a363a226d6f62696c65223b733a31323a223535352d3535352d35353535223b733a373a2277656270616765223b733a32323a22687474703a2f2f6a6f6f6d6c6176696c6c652e6f7267223b733a383a226f72646572696e67223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a34323a7b733a32313a2273686f775f636f6e746163745f63617465676f7279223b733a303a22223b733a31373a2273686f775f636f6e746163745f6c697374223b733a303a22223b733a31383a2270726573656e746174696f6e5f7374796c65223b733a303a22223b733a393a2273686f775f74616773223b733a303a22223b733a393a2273686f775f6e616d65223b733a303a22223b733a31333a2273686f775f706f736974696f6e223b733a303a22223b733a31303a2273686f775f656d61696c223b733a303a22223b733a31393a2273686f775f7374726565745f61646472657373223b733a303a22223b733a31313a2273686f775f737562757262223b733a303a22223b733a31303a2273686f775f7374617465223b733a303a22223b733a31333a2273686f775f706f7374636f6465223b733a303a22223b733a31323a2273686f775f636f756e747279223b733a303a22223b733a31343a2273686f775f74656c6570686f6e65223b733a303a22223b733a31313a2273686f775f6d6f62696c65223b733a303a22223b733a383a2273686f775f666178223b733a303a22223b733a31323a2273686f775f77656270616765223b733a303a22223b733a393a2273686f775f6d697363223b733a303a22223b733a31303a2273686f775f696d616765223b733a303a22223b733a31313a22616c6c6f775f7663617264223b733a303a22223b733a31333a2273686f775f61727469636c6573223b733a303a22223b733a32303a2261727469636c65735f646973706c61795f6e756d223b733a303a22223b733a31323a2273686f775f70726f66696c65223b733a303a22223b733a31303a2273686f775f6c696e6b73223b733a303a22223b733a31303a226c696e6b615f6e616d65223b733a303a22223b733a353a226c696e6b61223b623a303b733a31303a226c696e6b625f6e616d65223b733a303a22223b733a353a226c696e6b62223b623a303b733a31303a226c696e6b635f6e616d65223b733a303a22223b733a353a226c696e6b63223b623a303b733a31303a226c696e6b645f6e616d65223b733a303a22223b733a353a226c696e6b64223b623a303b733a31303a226c696e6b655f6e616d65223b733a303a22223b733a353a226c696e6b65223b623a303b733a31343a22636f6e746163745f6c61796f7574223b733a303a22223b733a31353a2273686f775f656d61696c5f666f726d223b733a303a22223b733a31353a2273686f775f656d61696c5f636f7079223b733a303a22223b733a31323a2262616e6e65645f656d61696c223b733a303a22223b733a31343a2262616e6e65645f7375626a656374223b733a303a22223b733a31313a2262616e6e65645f74657874223b733a303a22223b733a31363a2276616c69646174655f73657373696f6e223b733a303a22223b733a31323a22637573746f6d5f7265706c79223b733a303a22223b733a383a227265646972656374223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a353a226361746964223b733a323a223133223b733a383a2263617465676f7279223b733a31343a224d61796f722773204f6666696365223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31333a22313a6d61796f722d7374657665223b733a373a22636174736c7567223b733a31363a2231333a6d61796f72732d6f6666696365223b733a343a226e616d65223b4e3b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a373a22636f6e74616374223b733a343a2270617468223b733a33343a22696e6465782e7068702f636f6e746163742d75732f312d6d61796f722d7374657665223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31353a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a383a22706f736974696f6e223b693a343b733a373a2261646472657373223b693a353b733a343a2263697479223b693a363b733a363a22726567696f6e223b693a373b733a373a22636f756e747279223b693a383b733a333a227a6970223b693a393b733a393a2274656c6570686f6e65223b693a31303b733a333a22666178223b693a31313b733a353a22656d61696c223b693a31323b733a363a226d6f62696c65223b693a31333b733a373a2277656270616765223b693a31343b733a343a2275736572223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a353a7b733a343a2254797065223b613a313a7b733a373a22436f6e74616374223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a22436f6e74616374223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31343a224d61796f722773204f6666696365223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31343a224d61796f722773204f6666696365223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22526567696f6e223b613a313a7b733a323a22464c223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a323a22464c223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a373a22436f756e747279223b613a313a7b733a333a22555341223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a333a22555341223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d636f6e746163742669643d31223b733a353a22726f757465223b733a39323a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d636f6e746163742669643d313a6d61796f722d73746576652663617469643d31333a6d61796f72732d6f6666696365264974656d69643d313130223b733a353a227469746c65223b733a31313a224d61796f72205374657665223b733a31313a226465736372697074696f6e223b733a33383a222053746576652069732061206d61796f722e2048652069732061206772656174206775792120223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b733a313a2231223b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031343a33393a3430223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a333b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(20, 'index.php?option=com_content&view=article&id=5', 'index.php?option=com_content&view=article&id=5:zoo&catid=9&Itemid=105', 'Zoo', ' Joomlaville Zoo is a wonderful place for families to visit. There is an aviary for birds and a farm for animals like cows, pigs and geese. ', '2016-12-06 18:24:24', '3eba7d676a70db93e633cc00b0b16605', 1, 1, 1, '*', '2016-12-05 20:23:16', '0000-00-00 00:00:00', '2016-12-05 20:23:16', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2235223b733a353a22616c696173223b733a333a227a6f6f223b733a373a2273756d6d617279223b733a3135353a223c703e4a6f6f6d6c6176696c6c65205a6f6f206973206120776f6e64657266756c20706c61636520666f722066616d696c69657320746f2076697369742e3c2f703e0d0a3c703e546865726520697320616e2061766961727920666f7220626972647320616e642061206661726d20666f7220616e696d616c73206c696b6520636f77732c207069677320616e642067656573652e3c2f703e0d0a223b733a343a22626f6479223b733a3134353a220d0a3c703e546865207a6f6f20616c736f206861732065786f74696320616e696d616c732073756368206173206c696f6e732c207469676572732c206769726166666520616e642062756666616c6f2e3c2f703e0d0a3c703e4f766572616c6c2c2069742773206120677265617420657870657269656e636520666f7220796f756e67206368696c6472656e2e3c2f703e223b733a353a226361746964223b733a313a2239223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30352032313a31393a3431223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2232223b733a383a226f72646572696e67223b733a313a2231223b733a383a2263617465676f7279223b733a31313a2241747472616374696f6e73223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a353a22353a7a6f6f223b733a373a22636174736c7567223b733a31333a22393a61747472616374696f6e73223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a32373a22696e6465782e7068702f61747472616374696f6e732f352d7a6f6f223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31313a2241747472616374696f6e73223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31313a2241747472616374696f6e73223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d35223b733a353a22726f757465223b733a36393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d353a7a6f6f2663617469643d39264974656d69643d313035223b733a353a227469746c65223b733a333a225a6f6f223b733a31313a226465736372697074696f6e223b733a3134303a22204a6f6f6d6c6176696c6c65205a6f6f206973206120776f6e64657266756c20706c61636520666f722066616d696c69657320746f2076697369742e20546865726520697320616e2061766961727920666f7220626972647320616e642061206661726d20666f7220616e696d616c73206c696b6520636f77732c207069677320616e642067656573652e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30352032303a32333a3136223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30352032303a32333a3136223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(21, 'index.php?option=com_content&view=article&id=6', 'index.php?option=com_content&view=article&id=6:aquarium&catid=9&Itemid=105', 'Aquarium', ' Joomlaville Aquarium is one of the biggest in the country. There is a large penguin exhibit. You can see them swimming, sunbathing and doing tricks. There are also some large killer whales and sharks in a huge tank in the center of the aquarium. ', '2016-12-06 18:24:26', '0419eaa465be462bc4a1779639a980c2', 1, 1, 1, '*', '2016-12-05 20:24:44', '0000-00-00 00:00:00', '2016-12-05 20:24:44', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2236223b733a353a22616c696173223b733a383a22617175617269756d223b733a373a2273756d6d617279223b733a3236323a223c703e4a6f6f6d6c6176696c6c6520417175617269756d206973206f6e65206f6620746865206269676765737420696e2074686520636f756e7472792e2054686572652069732061206c617267652070656e6775696e20657868696269742e3c2f703e0d0a3c703e596f752063616e20736565207468656d207377696d6d696e672c2073756e62617468696e6720616e6420646f696e6720747269636b732e2054686572652061726520616c736f20736f6d65206c61726765206b696c6c6572207768616c657320616e6420736861726b7320696e206120687567652074616e6b20696e207468652063656e746572206f662074686520617175617269756d2e3c2f703e0d0a223b733a343a22626f6479223b733a33383a220d0a3c703e506c6561736520646f6e277420666565642074686573652066697368213c2f703e223b733a353a226361746964223b733a313a2239223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30352032313a31393a3130223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2232223b733a383a226f72646572696e67223b733a313a2232223b733a383a2263617465676f7279223b733a31313a2241747472616374696f6e73223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31303a22363a617175617269756d223b733a373a22636174736c7567223b733a31333a22393a61747472616374696f6e73223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a33323a22696e6465782e7068702f61747472616374696f6e732f362d617175617269756d223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31313a2241747472616374696f6e73223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31313a2241747472616374696f6e73223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d36223b733a353a22726f757465223b733a37343a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d363a617175617269756d2663617469643d39264974656d69643d313035223b733a353a227469746c65223b733a383a22417175617269756d223b733a31313a226465736372697074696f6e223b733a3234373a22204a6f6f6d6c6176696c6c6520417175617269756d206973206f6e65206f6620746865206269676765737420696e2074686520636f756e7472792e2054686572652069732061206c617267652070656e6775696e20657868696269742e20596f752063616e20736565207468656d207377696d6d696e672c2073756e62617468696e6720616e6420646f696e6720747269636b732e2054686572652061726520616c736f20736f6d65206c61726765206b696c6c6572207768616c657320616e6420736861726b7320696e206120687567652074616e6b20696e207468652063656e746572206f662074686520617175617269756d2e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30352032303a32343a3434223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30352032303a32343a3434223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);
INSERT INTO `sg0we_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(22, 'index.php?option=com_content&view=article&id=7', 'index.php?option=com_content&view=article&id=7:museum&catid=9&Itemid=105', 'Museum', ' The Joomlaville Museum contains artifacts from throughout the city''s history. Here you can ride a steam train, see a house from the 1600s and even see old-fashioned airplanes fly by on the weekends. ', '2016-12-06 18:24:27', '53fe08fa18afd9ff3bbb195fe8bcf07e', 1, 1, 1, '*', '2016-12-05 20:25:07', '0000-00-00 00:00:00', '2016-12-05 20:25:07', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2237223b733a353a22616c696173223b733a363a226d757365756d223b733a373a2273756d6d617279223b733a3231333a223c703e546865204a6f6f6d6c6176696c6c65204d757365756d20636f6e7461696e73206172746966616374732066726f6d207468726f7567686f7574207468652063697479277320686973746f72792e3c2f703e0d0a3c703e4865726520796f752063616e2072696465206120737465616d20747261696e2c20736565206120686f7573652066726f6d2074686520313630307320616e64206576656e20736565206f6c642d66617368696f6e656420616972706c616e657320666c79206279206f6e20746865207765656b656e64732e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2239223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031323a34363a3133223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2233223b733a383a226f72646572696e67223b733a313a2233223b733a383a2263617465676f7279223b733a31313a2241747472616374696f6e73223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a383a22373a6d757365756d223b733a373a22636174736c7567223b733a31333a22393a61747472616374696f6e73223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a33303a22696e6465782e7068702f61747472616374696f6e732f372d6d757365756d223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31313a2241747472616374696f6e73223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31313a2241747472616374696f6e73223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d37223b733a353a22726f757465223b733a37323a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d373a6d757365756d2663617469643d39264974656d69643d313035223b733a353a227469746c65223b733a363a224d757365756d223b733a31313a226465736372697074696f6e223b733a3230303a2220546865204a6f6f6d6c6176696c6c65204d757365756d20636f6e7461696e73206172746966616374732066726f6d207468726f7567686f7574207468652063697479277320686973746f72792e204865726520796f752063616e2072696465206120737465616d20747261696e2c20736565206120686f7573652066726f6d2074686520313630307320616e64206576656e20736565206f6c642d66617368696f6e656420616972706c616e657320666c79206279206f6e20746865207765656b656e64732e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30352032303a32353a3037223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30352032303a32353a3037223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(23, 'index.php?option=com_content&view=article&id=8', 'index.php?option=com_content&view=article&id=8:independence-day&catid=10&Itemid=106', 'Independence Day', ' Independence Day is a big event throughout the country but we celebrate as well as anyone in Joomlaville. There are parades, fireworks and parties throughout the day. ', '2016-12-06 18:24:28', '1acb1633488b9b86f98981a215a3e1dd', 1, 1, 1, '*', '2016-12-05 20:30:10', '0000-00-00 00:00:00', '2016-12-05 20:30:10', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2238223b733a353a22616c696173223b733a31363a22696e646570656e64656e63652d646179223b733a373a2273756d6d617279223b733a3138313a223c703e496e646570656e64656e636520446179206973206120626967206576656e74207468726f7567686f75742074686520636f756e747279206275742077652063656c6562726174652061732077656c6c20617320616e796f6e6520696e204a6f6f6d6c6176696c6c652e3c2f703e0d0a3c703e54686572652061726520706172616465732c2066697265776f726b7320616e642070617274696573207468726f7567686f757420746865206461792e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223130223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30352032303a33303a3130223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2231223b733a383a226f72646572696e67223b733a313a2231223b733a383a2263617465676f7279223b733a393a22466573746976616c73223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31383a22383a696e646570656e64656e63652d646179223b733a373a22636174736c7567223b733a31323a2231303a666573746976616c73223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a35303a22696e6465782e7068702f6a6f6f6d6c6176696c6c652d666573746976616c732f382d696e646570656e64656e63652d646179223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a393a22466573746976616c73223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a393a22466573746976616c73223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d38223b733a353a22726f757465223b733a38333a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d383a696e646570656e64656e63652d6461792663617469643d3130264974656d69643d313036223b733a353a227469746c65223b733a31363a22496e646570656e64656e636520446179223b733a31313a226465736372697074696f6e223b733a3136383a2220496e646570656e64656e636520446179206973206120626967206576656e74207468726f7567686f75742074686520636f756e747279206275742077652063656c6562726174652061732077656c6c20617320616e796f6e6520696e204a6f6f6d6c6176696c6c652e2054686572652061726520706172616465732c2066697265776f726b7320616e642070617274696573207468726f7567686f757420746865206461792e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30352032303a33303a3130223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30352032303a33303a3130223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(24, 'index.php?option=com_content&view=article&id=9', 'index.php?option=com_content&view=article&id=9:new-years-day&catid=10&Itemid=106', 'New Year''s Day', ' New Year''s Day is a very good time to visit Joomlaville. On the day before, lots of restaurants and bars are open for you to celebrate. At the stroke of midknight, a large Joomla logo is dropped from in front of Town Hall. On the morning of New Year''s Da', '2016-12-06 18:24:29', '64ca72cf680f1a4abdcf27962eaae58b', 1, 1, 1, '*', '2016-12-05 20:35:57', '0000-00-00 00:00:00', '2016-12-05 20:35:57', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2239223b733a353a22616c696173223b733a31333a226e65772d79656172732d646179223b733a373a2273756d6d617279223b733a3336313a223c703e4e657720596561722773204461792069732061207665727920676f6f642074696d6520746f207669736974204a6f6f6d6c6176696c6c652e3c2f703e0d0a3c703e4f6e2074686520646179206265666f72652c206c6f7473206f662072657374617572616e747320616e64206261727320617265206f70656e20666f7220796f7520746f2063656c6562726174652e20417420746865207374726f6b65206f66206d69646b6e696768742c2061206c61726765204a6f6f6d6c61206c6f676f2069732064726f707065642066726f6d20696e2066726f6e74206f6620546f776e2048616c6c2e3c2f703e0d0a3c703e4f6e20746865206d6f726e696e67206f66204e6577205965617227732044617920697473656c662c207468657265206973206120706172616465207468726f756768207468652063656e746572206f6620746f776e207769746820666c6f61747320616e6420616e746971756520636172732e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223130223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30352032303a34333a3138223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2232223b733a383a226f72646572696e67223b733a313a2232223b733a383a2263617465676f7279223b733a393a22466573746976616c73223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31353a22393a6e65772d79656172732d646179223b733a373a22636174736c7567223b733a31323a2231303a666573746976616c73223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a34373a22696e6465782e7068702f6a6f6f6d6c6176696c6c652d666573746976616c732f392d6e65772d79656172732d646179223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a393a22466573746976616c73223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a393a22466573746976616c73223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d39223b733a353a22726f757465223b733a38303a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d393a6e65772d79656172732d6461792663617469643d3130264974656d69643d313036223b733a353a227469746c65223b733a31343a224e65772059656172277320446179223b733a31313a226465736372697074696f6e223b733a3334303a22204e657720596561722773204461792069732061207665727920676f6f642074696d6520746f207669736974204a6f6f6d6c6176696c6c652e204f6e2074686520646179206265666f72652c206c6f7473206f662072657374617572616e747320616e64206261727320617265206f70656e20666f7220796f7520746f2063656c6562726174652e20417420746865207374726f6b65206f66206d69646b6e696768742c2061206c61726765204a6f6f6d6c61206c6f676f2069732064726f707065642066726f6d20696e2066726f6e74206f6620546f776e2048616c6c2e204f6e20746865206d6f726e696e67206f66204e6577205965617227732044617920697473656c662c207468657265206973206120706172616465207468726f756768207468652063656e746572206f6620746f776e207769746820666c6f61747320616e6420616e746971756520636172732e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30352032303a33353a3537223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30352032303a33353a3537223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(26, 'index.php?option=com_content&view=article&id=11', 'index.php?option=com_content&view=article&id=11:bus-station&catid=11&Itemid=107', 'Bus Station', ' The Bus Station is a very good way to get to cities around Joomlaville. The buses leave Joomlaville every hour on weekdays and every two hours on weekends. ', '2016-12-06 18:24:31', '039c91a56daea6be327b7d053f318cf9', 1, 1, 1, '*', '2016-12-05 20:40:46', '0000-00-00 00:00:00', '2016-12-05 20:40:46', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a323a223131223b733a353a22616c696173223b733a31313a226275732d73746174696f6e223b733a373a2273756d6d617279223b733a3137303a223c703e546865204275732053746174696f6e2069732061207665727920676f6f642077617920746f2067657420746f206369746965732061726f756e64204a6f6f6d6c6176696c6c652e3c2f703e0d0a3c703e546865206275736573206c65617665204a6f6f6d6c6176696c6c6520657665727920686f7572206f6e207765656b6461797320616e642065766572792074776f20686f757273206f6e207765656b656e64732e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223131223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30352032303a34303a3436223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2231223b733a383a226f72646572696e67223b733a313a2231223b733a383a2263617465676f7279223b733a31343a225472616e73706f72746174696f6e223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31343a2231313a6275732d73746174696f6e223b733a373a22636174736c7567223b733a31373a2231313a7472616e73706f72746174696f6e223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a32313a22696e6465782e7068702f6275732d73746174696f6e223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31343a225472616e73706f72746174696f6e223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31343a225472616e73706f72746174696f6e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131223b733a353a22726f757465223b733a37393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31313a6275732d73746174696f6e2663617469643d3131264974656d69643d313037223b733a353a227469746c65223b733a31313a224275732053746174696f6e223b733a31313a226465736372697074696f6e223b733a3135373a2220546865204275732053746174696f6e2069732061207665727920676f6f642077617920746f2067657420746f206369746965732061726f756e64204a6f6f6d6c6176696c6c652e20546865206275736573206c65617665204a6f6f6d6c6176696c6c6520657665727920686f7572206f6e207765656b6461797320616e642065766572792074776f20686f757273206f6e207765656b656e64732e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30352032303a34303a3436223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30352032303a34303a3436223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);
INSERT INTO `sg0we_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(27, 'index.php?option=com_content&view=article&id=12', 'index.php?option=com_content&view=article&id=12:train-station&catid=11&Itemid=108', 'Train Station', ' The Joomlaville Train Station is a great way to get to other parts of the country. Our trains are quick, quiet and comfortable. The Train Station is close to the center of Joomaville and next to the Aquarium. ', '2016-12-06 18:24:33', 'ccbc2914f07931e9051dc17dd4ac099a', 1, 1, 1, '*', '2016-12-05 20:41:38', '0000-00-00 00:00:00', '2016-12-05 20:41:38', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a323a223132223b733a353a22616c696173223b733a31333a22747261696e2d73746174696f6e223b733a373a2273756d6d617279223b733a3232333a223c703e546865204a6f6f6d6c6176696c6c6520547261696e2053746174696f6e20697320612067726561742077617920746f2067657420746f206f74686572207061727473206f662074686520636f756e7472792e204f757220747261696e732061726520717569636b2c20717569657420616e6420636f6d666f727461626c652e3c2f703e0d0a3c703e54686520547261696e2053746174696f6e20697320636c6f736520746f207468652063656e746572206f66204a6f6f6d6176696c6c6520616e64206e65787420746f2074686520417175617269756d2e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223131223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30352032303a34313a3338223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2231223b733a383a226f72646572696e67223b733a313a2232223b733a383a2263617465676f7279223b733a31343a225472616e73706f72746174696f6e223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31363a2231323a747261696e2d73746174696f6e223b733a373a22636174736c7567223b733a31373a2231313a7472616e73706f72746174696f6e223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a32333a22696e6465782e7068702f747261696e2d73746174696f6e223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31343a225472616e73706f72746174696f6e223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31343a225472616e73706f72746174696f6e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3132223b733a353a22726f757465223b733a38313a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31323a747261696e2d73746174696f6e2663617469643d3131264974656d69643d313038223b733a353a227469746c65223b733a31333a22547261696e2053746174696f6e223b733a31313a226465736372697074696f6e223b733a3231303a2220546865204a6f6f6d6c6176696c6c6520547261696e2053746174696f6e20697320612067726561742077617920746f2067657420746f206f74686572207061727473206f662074686520636f756e7472792e204f757220747261696e732061726520717569636b2c20717569657420616e6420636f6d666f727461626c652e2054686520547261696e2053746174696f6e20697320636c6f736520746f207468652063656e746572206f66204a6f6f6d6176696c6c6520616e64206e65787420746f2074686520417175617269756d2e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30352032303a34313a3338223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30352032303a34313a3338223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(28, 'index.php?option=com_content&view=article&id=13', 'index.php?option=com_content&view=article&id=13:airport&catid=11&Itemid=109', 'Airport', ' The Joomlaville Airport is a great place to fly to. It is clean, modern and was designed by a team of famous architects. Terminals There are two terminals, one for international flights and one for domestic flights. Destinations From Joomlaville you can ', '2016-12-06 18:24:34', 'f4b536db00a709e4ac00ae2d809a3b31', 1, 1, 1, '*', '2016-12-05 20:42:47', '0000-00-00 00:00:00', '2016-12-05 20:42:47', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a323a223133223b733a353a22616c696173223b733a373a22616972706f7274223b733a373a2273756d6d617279223b733a3730383a223c68333e546865204a6f6f6d6c6176696c6c6520416972706f7274206973206120677265617420706c61636520746f20666c7920746f2e3c2f68333e0d0a3c703e497420697320636c65616e2c206d6f6465726e20616e64207761732064657369676e65642062792061207465616d206f662066616d6f757320617263686974656374732e3c2f703e0d0a3c703e3c7374726f6e673e5465726d696e616c733c2f7374726f6e673e3c2f703e0d0a3c703e5468657265206172652074776f207465726d696e616c732c206f6e6520666f7220696e7465726e6174696f6e616c20666c696768747320616e64206f6e6520666f7220646f6d657374696320666c69676874732e3c2f703e0d0a3c703e3c7374726f6e673e44657374696e6174696f6e733c2f7374726f6e673e3c2f703e0d0a3c703e46726f6d204a6f6f6d6c6176696c6c6520796f752063616e20666c79206469726563746c7920746f206d616a6f722063697469657320696e3a3c2f703e0d0a3c756c3e0d0a3c6c693e4575726f70653c2f6c693e0d0a3c6c693e417369613c2f6c693e0d0a3c6c693e4166726963613c2f6c693e0d0a3c6c693e4e6f72746820616e6420536f75746820416d65726963612e3c2f6c693e0d0a3c2f756c3e0d0a3c703e3c7374726f6e673e466f6f643c2f7374726f6e673e3c2f703e0d0a3c703e496620796f752772652068756e677279206265666f726520796f757220666c696768742c20746865726520617265206c6f7473206f662072657374617572616e747320776865726520796f752063616e206561742e3c2f703e0d0a3c703e3c7374726f6e673e4c6f636174696f6e3c2f7374726f6e673e3c2f703e0d0a3c703e54686520616972706f7274206973206c6f6361746564206a757374206f757473696465206f6620746f776e2c20636c6f736520746f20746865205a6f6f2e3c2f703e0d0a3c68333ec2a03c2f68333e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223131223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031323a31393a3334223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2235223b733a383a226f72646572696e67223b733a313a2233223b733a383a2263617465676f7279223b733a31343a225472616e73706f72746174696f6e223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31303a2231333a616972706f7274223b733a373a22636174736c7567223b733a31373a2231313a7472616e73706f72746174696f6e223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a31373a22696e6465782e7068702f616972706f7274223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31343a225472616e73706f72746174696f6e223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31343a225472616e73706f72746174696f6e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3133223b733a353a22726f757465223b733a37353a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31333a616972706f72742663617469643d3131264974656d69643d313039223b733a353a227469746c65223b733a373a22416972706f7274223b733a31313a226465736372697074696f6e223b733a3439353a2220546865204a6f6f6d6c6176696c6c6520416972706f7274206973206120677265617420706c61636520746f20666c7920746f2e20497420697320636c65616e2c206d6f6465726e20616e64207761732064657369676e65642062792061207465616d206f662066616d6f757320617263686974656374732e205465726d696e616c73205468657265206172652074776f207465726d696e616c732c206f6e6520666f7220696e7465726e6174696f6e616c20666c696768747320616e64206f6e6520666f7220646f6d657374696320666c69676874732e2044657374696e6174696f6e732046726f6d204a6f6f6d6c6176696c6c6520796f752063616e20666c79206469726563746c7920746f206d616a6f722063697469657320696e3a204575726f7065204173696120416672696361204e6f72746820616e6420536f75746820416d65726963612e20466f6f6420496620796f752772652068756e677279206265666f726520796f757220666c696768742c20746865726520617265206c6f7473206f662072657374617572616e747320776865726520796f752063616e206561742e204c6f636174696f6e2054686520616972706f7274206973206c6f6361746564206a757374206f757473696465206f6620746f776e2c20636c6f736520746f20746865205a6f6f2e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30352032303a34323a3437223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30352032303a34323a3437223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(29, 'index.php?option=com_newsfeeds&view=newsfeed&id=1', 'index.php?option=com_newsfeeds&view=newsfeed&id=1:espn&catid=14:sports&Itemid=111', 'ESPN', '', '2016-12-06 18:24:36', 'b954696afc18d8bbd7d0c8536cc4f104', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-12-06 15:05:52', '0000-00-00 00:00:00', 0, 0, 5, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32323a7b733a323a226964223b733a313a2231223b733a353a226361746964223b733a323a223134223b733a353a22616c696173223b733a343a226573706e223b733a343a226c696e6b223b733a33393a22687474703a2f2f73706f7274732e6573706e2e676f2e636f6d2f6573706e2f7273732f6e657773223b733a383a226f72646572696e67223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a363a7b733a31353a2273686f775f666565645f696d616765223b733a303a22223b733a32313a2273686f775f666565645f6465736372697074696f6e223b733a303a22223b733a32313a2273686f775f6974656d5f6465736372697074696f6e223b733a303a22223b733a32303a22666565645f6368617261637465725f636f756e74223b733a313a2230223b733a31353a226e657773666565645f6c61796f7574223b733a303a22223b733a31383a22666565645f646973706c61795f6f72646572223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031353a30353a3532223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a383a2263617465676f7279223b733a363a2253706f727473223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a363a22313a6573706e223b733a373a22636174736c7567223b733a393a2231343a73706f727473223b733a343a226d696d65223b4e3b733a363a226c61796f7574223b733a383a226e65777366656564223b733a343a2270617468223b733a31343a22696e6465782e7068702f6573706e223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a393a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a333a7b733a343a2254797065223b613a313a7b733a393a224e6577732046656564223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a393a224e6577732046656564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a363a2253706f727473223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a363a2253706f727473223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34393a22696e6465782e7068703f6f7074696f6e3d636f6d5f6e657773666565647326766965773d6e657773666565642669643d31223b733a353a22726f757465223b733a38313a22696e6465782e7068703f6f7074696f6e3d636f6d5f6e657773666565647326766965773d6e657773666565642669643d313a6573706e2663617469643d31343a73706f727473264974656d69643d313131223b733a353a227469746c65223b733a343a224553504e223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b733a313a2231223b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031353a30353a3532223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a353b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(32, 'index.php?option=com_content&view=article&id=4', 'index.php?option=com_content&view=article&id=4:welcome-to-joomlaville&catid=2&Itemid=101', 'Welcome to Joomlaville', ' Thank you for visiting our site for the city of Joomlaville. It''s a wonderful city to live in, and we hope you''ll visit us soon. The weather is beautyful in the summer and not too cold in the winter, so it is always a good time to visit. Joomlaville has ', '2016-12-06 20:23:37', '729400e5a4a59f566306f30600a5ea55', 1, 1, 1, '*', '2016-12-05 20:17:25', '0000-00-00 00:00:00', '2016-12-05 20:17:25', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a313a2234223b733a353a22616c696173223b733a32323a2277656c636f6d652d746f2d6a6f6f6d6c6176696c6c65223b733a373a2273756d6d617279223b733a3635383a223c703e3c696d67207372633d22696d616765732f746f776e68616c6c2e6a70672220616c743d224a6f6f6d6c6176696c6c6520546f776e68616c6c22207374796c653d226d617267696e3a203570783b20666c6f61743a206c6566743b22202f3e5468616e6b20796f7520666f72207669736974696e67206f7572207369746520666f72207468652063697479206f66204a6f6f6d6c6176696c6c652e3c2f703e0d0a3c703e49742773206120776f6e64657266756c206369747920746f206c69766520696e2c20616e6420776520686f706520796f75276c6c20766973697420757320736f6f6e2e2054686520776561746865722069732062656175747966756c20696e207468652073756d6d657220616e64206e6f7420746f6f20636f6c6420696e207468652077696e7465722c20736f20697420697320616c77617973206120676f6f642074696d6520746f2076697369742e3c2f703e0d0a3c703e4a6f6f6d6c6176696c6c6520686173206c6f747320746f20646f2e20486572652061726520736f6d652073756767657374696f6e7320696620796f7520617265206e657720746f204a6f6f6d6c6176696c6c652e3c2f703e0d0a3c703e596f752063616e2076697369742074686520417175617269756d2c20746865205a6f6f20616e6420746865204d757365756d2e3c2f703e0d0a3c703e596f752063616e2063656c6562726174652077697468207573206f6e204e6577205965617273204461792c20496e646570656e64656e63652044617920616e64204d6f7468657273204461792e3c2f703e0d0a3c703e596f752063616e206765742068657265207669612074686520416972706f72742c204275732053746174696f6e20616e6420547261696e2053746174696f6e2e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031373a32333a3331223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2235223b733a383a226f72646572696e67223b733a313a2231223b733a383a2263617465676f7279223b733a373a2247656e6572616c223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32343a22343a77656c636f6d652d746f2d6a6f6f6d6c6176696c6c65223b733a373a22636174736c7567223b733a393a22323a67656e6572616c223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a34343a22696e6465782e7068702f322d67656e6572616c2f342d77656c636f6d652d746f2d6a6f6f6d6c6176696c6c65223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a373a2247656e6572616c223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2247656e6572616c223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d34223b733a353a22726f757465223b733a38383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d343a77656c636f6d652d746f2d6a6f6f6d6c6176696c6c652663617469643d32264974656d69643d313031223b733a353a227469746c65223b733a32323a2257656c636f6d6520746f204a6f6f6d6c6176696c6c65223b733a31313a226465736372697074696f6e223b733a3531393a22205468616e6b20796f7520666f72207669736974696e67206f7572207369746520666f72207468652063697479206f66204a6f6f6d6c6176696c6c652e2049742773206120776f6e64657266756c206369747920746f206c69766520696e2c20616e6420776520686f706520796f75276c6c20766973697420757320736f6f6e2e2054686520776561746865722069732062656175747966756c20696e207468652073756d6d657220616e64206e6f7420746f6f20636f6c6420696e207468652077696e7465722c20736f20697420697320616c77617973206120676f6f642074696d6520746f2076697369742e204a6f6f6d6c6176696c6c6520686173206c6f747320746f20646f2e20486572652061726520736f6d652073756767657374696f6e7320696620796f7520617265206e657720746f204a6f6f6d6c6176696c6c652e20596f752063616e2076697369742074686520417175617269756d2c20746865205a6f6f20616e6420746865204d757365756d2e20596f752063616e2063656c6562726174652077697468207573206f6e204e6577205965617273204461792c20496e646570656e64656e63652044617920616e64204d6f7468657273204461792e20596f752063616e206765742068657265207669612074686520416972706f72742c204275732053746174696f6e20616e6420547261696e2053746174696f6e2e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30352032303a31373a3235223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30352032303a31373a3235223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);
INSERT INTO `sg0we_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(33, 'index.php?option=com_content&view=article&id=10', 'index.php?option=com_content&view=article&id=10:mothers-day&catid=10&Itemid=106', 'Mother''s Day', ' Mother''s Day is a great opportunity for families to enjoy themselves in Joomlaville. Mothers are invited to a picnic in downtown Joomlaville with their entire families. There are prizes, games and good time for everyone who comes. ', '2016-12-06 20:48:04', '23486deb9693fc9efe785c70c4dc49cb', 1, 1, 1, '*', '2016-12-05 20:39:14', '0000-00-00 00:00:00', '2016-12-05 20:39:14', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223130223b733a353a22616c696173223b733a31313a226d6f74686572732d646179223b733a373a2273756d6d617279223b733a3234353a223c703e4d6f746865722773204461792069732061206772656174206f70706f7274756e69747920666f722066616d696c69657320746f20656e6a6f79207468656d73656c76657320696e204a6f6f6d6c6176696c6c652e3c2f703e0d0a3c703e4d6f74686572732061726520696e766974656420746f2061207069636e696320696e20646f776e746f776e204a6f6f6d6c6176696c6c65207769746820746865697220656e746972652066616d696c6965732e20546865726520617265207072697a65732c2067616d657320616e6420676f6f642074696d6520666f722065766572796f6e652077686f20636f6d65732e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223130223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031373a34373a3538223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2233223b733a383a226f72646572696e67223b733a313a2233223b733a383a2263617465676f7279223b733a393a22466573746976616c73223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31343a2231303a6d6f74686572732d646179223b733a373a22636174736c7567223b733a31323a2231303a666573746976616c73223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a34363a22696e6465782e7068702f6a6f6f6d6c6176696c6c652d666573746976616c732f31302d6d6f74686572732d646179223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a393a22466573746976616c73223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a393a22466573746976616c73223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3130223b733a353a22726f757465223b733a37393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31303a6d6f74686572732d6461792663617469643d3130264974656d69643d313036223b733a353a227469746c65223b733a31323a224d6f74686572277320446179223b733a31313a226465736372697074696f6e223b733a3233323a22204d6f746865722773204461792069732061206772656174206f70706f7274756e69747920666f722066616d696c69657320746f20656e6a6f79207468656d73656c76657320696e204a6f6f6d6c6176696c6c652e204d6f74686572732061726520696e766974656420746f2061207069636e696320696e20646f776e746f776e204a6f6f6d6c6176696c6c65207769746820746865697220656e746972652066616d696c6965732e20546865726520617265207072697a65732c2067616d657320616e6420676f6f642074696d6520666f722065766572796f6e652077686f20636f6d65732e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30352032303a33393a3134223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30352032303a33393a3134223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(35, 'index.php?option=com_content&view=article&id=3', 'index.php?option=com_content&view=article&id=3:joomlaville-history&catid=8&Itemid=102', 'Joomlaville History', ' Joomlaville is a city with a rich history. It started as a market town in the 17th century. The site was chosen because it was a major crossroads for people traveling through the mountains. As the city grew in the 19th and 20th centuries, more industries', '2016-12-06 21:12:06', '7345f02caadc5f21cc1f160cfc92b2f6', 1, 1, 1, '*', '2016-12-04 19:54:24', '0000-00-00 00:00:00', '2016-12-04 19:54:24', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a313a2233223b733a353a22616c696173223b733a31393a226a6f6f6d6c6176696c6c652d686973746f7279223b733a373a2273756d6d617279223b733a3438393a223c703e3c696d67207372633d22696d616765732f6a6f6f6d6c6176696c6c652e6a70672220616c743d226a6f6f6d6c6176696c6c6522207374796c653d226d617267696e3a203570783b20666c6f61743a206c6566743b22202f3e4a6f6f6d6c6176696c6c652069732061206369747920776974682061207269636820686973746f72792e20497420737461727465642061732061206d61726b657420746f776e20696e2074686520313774682063656e747572792e3c2f703e0d0a3c703e5468652073697465207761732063686f73656e2062656361757365206974207761732061206d616a6f722063726f7373726f61647320666f722070656f706c652074726176656c696e67207468726f75676820746865206d6f756e7461696e732e3c2f703e0d0a3c703e4173207468652063697479206772657720696e20746865203139746820616e6420323074682063656e7475726965732c206d6f726520696e6475737472696573206d6f76656420616e642070656f706c6520666c6f636b656420746f204a6f6f6d6c6176696c6c65206c6f6f6b696e6720666f7220776f726b2e204d616e79206f66206f7572207265736964656e74732068617665206e6f77206265656e206865726520666f72207365766572616c2067656e65726174696f6e732e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2238223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031383a31323a3032223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2233223b733a383a226f72646572696e67223b733a313a2233223b733a383a2263617465676f7279223b733a353a2241626f7574223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32313a22333a6a6f6f6d6c6176696c6c652d686973746f7279223b733a373a22636174736c7567223b733a373a22383a61626f7574223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a32393a22696e6465782e7068702f6a6f6f6d6c6176696c6c652d686973746f7279223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a353a2241626f7574223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a2241626f7574223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d33223b733a353a22726f757465223b733a38353a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d333a6a6f6f6d6c6176696c6c652d686973746f72792663617469643d38264974656d69643d313032223b733a353a227469746c65223b733a31393a224a6f6f6d6c6176696c6c6520486973746f7279223b733a31313a226465736372697074696f6e223b733a3338303a22204a6f6f6d6c6176696c6c652069732061206369747920776974682061207269636820686973746f72792e20497420737461727465642061732061206d61726b657420746f776e20696e2074686520313774682063656e747572792e205468652073697465207761732063686f73656e2062656361757365206974207761732061206d616a6f722063726f7373726f61647320666f722070656f706c652074726176656c696e67207468726f75676820746865206d6f756e7461696e732e204173207468652063697479206772657720696e20746865203139746820616e6420323074682063656e7475726965732c206d6f726520696e6475737472696573206d6f76656420616e642070656f706c6520666c6f636b656420746f204a6f6f6d6c6176696c6c65206c6f6f6b696e6720666f7220776f726b2e204d616e79206f66206f7572207265736964656e74732068617665206e6f77206265656e206865726520666f72207365766572616c2067656e65726174696f6e732e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30342031393a35343a3234223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30342031393a35343a3234223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(36, 'index.php?option=com_content&view=article&id=2', 'index.php?option=com_content&view=article&id=2:joomlaville-location&catid=8&Itemid=103', 'Joomlaville Location', ' Joomlaville is in the southeast of our country, about a five hour drive from the capital. It is located near a large mountain range, so there is plenty of opportunity for Joomlaville people to enjoy skiing, kayaking and other outdoor activities. Joomlavi', '2016-12-06 21:15:56', 'b42513df52c81231e964dafccc1a14f5', 1, 1, 1, '*', '2016-12-04 19:53:37', '0000-00-00 00:00:00', '2016-12-04 19:53:37', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a313a2232223b733a353a22616c696173223b733a32303a226a6f6f6d6c6176696c6c652d6c6f636174696f6e223b733a373a2273756d6d617279223b733a3436373a223c703e3c696d67207372633d22696d616765732f61727469636c65732f61626f75742f6e657773322e6a70672220616c743d226e6577733222207374796c653d226d617267696e3a203570783b20666c6f61743a206c6566743b22202f3e4a6f6f6d6c6176696c6c6520697320696e2074686520736f75746865617374206f66206f757220636f756e7472792c2061626f75742061206669766520686f75722064726976652066726f6d20746865206361706974616c2e3c2f703e0d0a3c703e4974206973206c6f6361746564206e6561722061206c61726765206d6f756e7461696e2072616e67652c20736f20746865726520697320706c656e7479206f66206f70706f7274756e69747920666f72204a6f6f6d6c6176696c6c652070656f706c6520746f20656e6a6f7920736b69696e672c206b6179616b696e6720616e64206f74686572206f7574646f6f7220616374697669746965732e3c2f703e0d0a3c703e4a6f6f6d6c6176696c6c6520697320616c736f2061626f757420746872656520686f7572732066726f6d207468652062656163682c20736f2069742773206561737920666f72207265736964656e747320746f20656e6a6f7920612073756e6e79207661636174696f6e2e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2238223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031383a31353a3438223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2232223b733a383a226f72646572696e67223b733a313a2232223b733a383a2263617465676f7279223b733a353a2241626f7574223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32323a22323a6a6f6f6d6c6176696c6c652d6c6f636174696f6e223b733a373a22636174736c7567223b733a373a22383a61626f7574223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a33303a22696e6465782e7068702f6a6f6f6d6c6176696c6c652d6c6f636174696f6e223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a353a2241626f7574223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a2241626f7574223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32223b733a353a22726f757465223b733a38363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d323a6a6f6f6d6c6176696c6c652d6c6f636174696f6e2663617469643d38264974656d69643d313033223b733a353a227469746c65223b733a32303a224a6f6f6d6c6176696c6c65204c6f636174696f6e223b733a31313a226465736372697074696f6e223b733a3335353a22204a6f6f6d6c6176696c6c6520697320696e2074686520736f75746865617374206f66206f757220636f756e7472792c2061626f75742061206669766520686f75722064726976652066726f6d20746865206361706974616c2e204974206973206c6f6361746564206e6561722061206c61726765206d6f756e7461696e2072616e67652c20736f20746865726520697320706c656e7479206f66206f70706f7274756e69747920666f72204a6f6f6d6c6176696c6c652070656f706c6520746f20656e6a6f7920736b69696e672c206b6179616b696e6720616e64206f74686572206f7574646f6f7220616374697669746965732e204a6f6f6d6c6176696c6c6520697320616c736f2061626f757420746872656520686f7572732066726f6d207468652062656163682c20736f2069742773206561737920666f72207265736964656e747320746f20656e6a6f7920612073756e6e79207661636174696f6e2e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30342031393a35333a3337223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30342031393a35333a3337223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(37, 'index.php?option=com_content&view=article&id=1', 'index.php?option=com_content&view=article&id=1:joomlaville-climate&catid=8&Itemid=104', 'Joomlaville Climate', ' Joomlaville is a city located in a great climate at the foothills of the mountains. There is snow in the winter and plenty of sun during the summer. No matter time of year you visit, you''ll find that Joomlaville has enjoyable weather. ', '2016-12-06 21:16:46', 'b63310e7bae51ac28b0dc65073768f49', 1, 1, 1, '*', '2016-12-04 19:52:18', '0000-00-00 00:00:00', '2016-12-04 19:52:18', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a313a2231223b733a353a22616c696173223b733a31393a226a6f6f6d6c6176696c6c652d636c696d617465223b733a373a2273756d6d617279223b733a3337343a223c703e3c7374726f6e673e3c696d67207372633d22696d616765732f61727469636c65732f61626f75742f7061726b332e6a70672220616c743d227061726b3322207374796c653d226d617267696e3a203570783b20666c6f61743a206c6566743b22202f3e4a6f6f6d6c6176696c6c653c2f7374726f6e673e20697320612063697479206c6f636174656420696e2061203c656d3e677265617420636c696d6174653c2f656d3e2061742074686520666f6f7468696c6c73206f6620746865206d6f756e7461696e732e3c2f703e0d0a3c703e546865726520697320736e6f7720696e207468652077696e74657220616e6420706c656e7479206f662073756e20647572696e67207468652073756d6d65722e3c2f703e0d0a3c703e4e6f206d61747465722074696d65206f66207965617220796f752076697369742c20796f75276c6c2066696e642074686174204a6f6f6d6c6176696c6c652068617320656e6a6f7961626c6520776561746865722e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2238223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031383a31363a3338223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2233223b733a383a226f72646572696e67223b733a313a2231223b733a383a2263617465676f7279223b733a353a2241626f7574223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32313a22313a6a6f6f6d6c6176696c6c652d636c696d617465223b733a373a22636174736c7567223b733a373a22383a61626f7574223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a33303a22696e6465782e7068702f6a6f6f6d6c6176696c6c652d6f76657276696577223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a353a2241626f7574223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a2241626f7574223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31223b733a353a22726f757465223b733a38353a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d313a6a6f6f6d6c6176696c6c652d636c696d6174652663617469643d38264974656d69643d313034223b733a353a227469746c65223b733a31393a224a6f6f6d6c6176696c6c6520436c696d617465223b733a31313a226465736372697074696f6e223b733a3233363a22204a6f6f6d6c6176696c6c6520697320612063697479206c6f636174656420696e206120677265617420636c696d6174652061742074686520666f6f7468696c6c73206f6620746865206d6f756e7461696e732e20546865726520697320736e6f7720696e207468652077696e74657220616e6420706c656e7479206f662073756e20647572696e67207468652073756d6d65722e204e6f206d61747465722074696d65206f66207965617220796f752076697369742c20796f75276c6c2066696e642074686174204a6f6f6d6c6176696c6c652068617320656e6a6f7961626c6520776561746865722e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30342031393a35323a3138223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30342031393a35323a3138223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);
INSERT INTO `sg0we_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(40, 'index.php?option=com_content&view=category&id=15', 'index.php?option=com_content&view=category&id=15&Itemid=101', 'Board Minutes', '', '2016-12-06 21:47:59', 'b137221b451127ed83b9fc8cd67ad60b', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-12-06 18:47:58', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31383a7b733a323a226964223b733a323a223135223b733a353a22616c696173223b733a31333a22626f6172642d6d696e75746573223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031383a34373a3538223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223235223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31363a2231353a626f6172642d6d696e75746573223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a32363a22696e6465782e7068702f31352d626f6172642d6d696e75746573223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3135223b733a353a22726f757465223b733a35393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3135264974656d69643d313031223b733a353a227469746c65223b733a31333a22426f617264204d696e75746573223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031383a34373a3538223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(41, 'index.php?option=com_content&view=article&id=14', 'index.php?option=com_content&view=article&id=14:joomlaville-board-minutes-for-may&catid=15&Itemid=101', 'Joomlaville Board Minutes for May', ' Board Minutes ', '2016-12-06 21:48:25', '90960acf89c00c9ae011e48d9136103e', 1, 1, 7, '*', '2016-12-06 18:41:47', '0000-00-00 00:00:00', '2016-12-06 18:41:47', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223134223b733a353a22616c696173223b733a33333a226a6f6f6d6c6176696c6c652d626f6172642d6d696e757465732d666f722d6d6179223b733a373a2273756d6d617279223b733a32303a223c703e426f617264204d696e757465733c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223135223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031383a34383a3139223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2231223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2233223b733a383a226f72646572696e67223b733a313a2232223b733a383a2263617465676f7279223b733a31333a22426f617264204d696e75746573223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a33363a2231343a6a6f6f6d6c6176696c6c652d626f6172642d6d696e757465732d666f722d6d6179223b733a373a22636174736c7567223b733a31363a2231353a626f6172642d6d696e75746573223b733a363a22617574686f72223b733a31303a22526f64204d617274696e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a36333a22696e6465782e7068702f31352d626f6172642d6d696e757465732f31342d6a6f6f6d6c6176696c6c652d626f6172642d6d696e757465732d666f722d6d6179223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a22526f64204d617274696e223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a22526f64204d617274696e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22426f617264204d696e75746573223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22426f617264204d696e75746573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3134223b733a353a22726f757465223b733a3130313a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31343a6a6f6f6d6c6176696c6c652d626f6172642d6d696e757465732d666f722d6d61792663617469643d3135264974656d69643d313031223b733a353a227469746c65223b733a33333a224a6f6f6d6c6176696c6c6520426f617264204d696e7574657320666f72204d6179223b733a31313a226465736372697074696f6e223b733a31353a2220426f617264204d696e7574657320223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2237223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30362031383a34313a3437223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031383a34313a3437223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(42, 'index.php?option=com_content&view=category&id=16', 'index.php?option=com_content&view=category&id=16&Itemid=101', 'Parks', '', '2016-12-06 22:06:30', '73396931a66ccb8bccd918d5a8d64f6c', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-12-06 19:01:42', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31383a7b733a323a226964223b733a323a223136223b733a353a22616c696173223b733a353a227061726b73223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031393a30363a3239223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223237223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a383a2231363a7061726b73223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a31383a22696e6465782e7068702f31362d7061726b73223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3136223b733a353a22726f757465223b733a35393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3136264974656d69643d313031223b733a353a227469746c65223b733a353a225061726b73223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031393a30313a3432223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(46, 'index.php?option=com_content&view=category&id=17', 'index.php?option=com_content&view=category&id=17&Itemid=101', 'News', '', '2016-12-06 22:07:04', 'a8a4023c08c09fe51d6f1c8b94df0672', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-12-06 19:05:56', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31383a7b733a323a226964223b733a323a223137223b733a353a22616c696173223b733a343a226e657773223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22333831223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031393a30373a3033223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223239223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a373a2231373a6e657773223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a31373a22696e6465782e7068702f31372d6e657773223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3137223b733a353a22726f757465223b733a35393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3137264974656d69643d313031223b733a353a227469746c65223b733a343a224e657773223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031393a30353a3536223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(47, 'index.php?option=com_content&view=article&id=18', 'index.php?option=com_content&view=article&id=18:sample-news-article-1&catid=17&Itemid=101', 'Sample News Article 1', ' There was some big news in Joomlaville recently. Construction of a large new project called 1.6 was finished. It took the effort of many people in Joomlaville to complete but it was worth the effort. In fact, you''re looking at 1.6 right now. What do you ', '2016-12-06 22:08:30', '220a412372bcbfea1bf12256bd094867', 1, 1, 1, '*', '2016-12-06 19:08:29', '0000-00-00 00:00:00', '2016-12-06 19:08:29', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223138223b733a353a22616c696173223b733a32313a2273616d706c652d6e6577732d61727469636c652d31223b733a373a2273756d6d617279223b733a3237353a223c703e54686572652077617320736f6d6520626967206e65777320696e204a6f6f6d6c6176696c6c6520726563656e746c792e20436f6e737472756374696f6e206f662061206c61726765206e65772070726f6a6563742063616c6c656420312e36207761732066696e69736865642e3c2f703e0d0a3c703e497420746f6f6b20746865206566666f7274206f66206d616e792070656f706c6520696e204a6f6f6d6c6176696c6c6520746f20636f6d706c657465206275742069742077617320776f72746820746865206566666f72742e20496e20666163742c20796f75277265206c6f6f6b696e6720617420312e36207269676874206e6f772e205768617420646f20796f75207468696e6b3f3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223137223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031393a30383a3239223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2231223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2231223b733a383a226f72646572696e67223b733a313a2231223b733a383a2263617465676f7279223b733a343a224e657773223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32343a2231383a73616d706c652d6e6577732d61727469636c652d31223b733a373a22636174736c7567223b733a373a2231373a6e657773223b733a363a22617574686f72223b733a31303a22526f64204d617274696e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a34323a22696e6465782e7068702f31372d6e6577732f31382d73616d706c652d6e6577732d61727469636c652d31223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a22526f64204d617274696e223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a22526f64204d617274696e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a343a224e657773223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a343a224e657773223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3138223b733a353a22726f757465223b733a38393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31383a73616d706c652d6e6577732d61727469636c652d312663617469643d3137264974656d69643d313031223b733a353a227469746c65223b733a32313a2253616d706c65204e6577732041727469636c652031223b733a31313a226465736372697074696f6e223b733a3236323a222054686572652077617320736f6d6520626967206e65777320696e204a6f6f6d6c6176696c6c6520726563656e746c792e20436f6e737472756374696f6e206f662061206c61726765206e65772070726f6a6563742063616c6c656420312e36207761732066696e69736865642e20497420746f6f6b20746865206566666f7274206f66206d616e792070656f706c6520696e204a6f6f6d6c6176696c6c6520746f20636f6d706c657465206275742069742077617320776f72746820746865206566666f72742e20496e20666163742c20796f75277265206c6f6f6b696e6720617420312e36207269676874206e6f772e205768617420646f20796f75207468696e6b3f20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30362031393a30383a3239223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031393a30383a3239223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(48, 'index.php?option=com_content&view=article&id=19', 'index.php?option=com_content&view=article&id=19:sample-news-article-2&catid=17&Itemid=101', 'Sample News Article 2', ' Did you know that Joomlaville is one of the fastest growing cities around? Every day lots and lots of new people are moving to Joomlaville, attracted by the low cost and high quality of living. Why don''t you pay us a visit and see if you''d like to join u', '2016-12-06 22:09:45', '117b0e34cda28780e196159f7d1f5488', 1, 1, 1, '*', '2016-12-06 19:09:45', '0000-00-00 00:00:00', '2016-12-06 19:09:45', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223139223b733a353a22616c696173223b733a32313a2273616d706c652d6e6577732d61727469636c652d32223b733a373a2273756d6d617279223b733a3237313a223c703e44696420796f75206b6e6f772074686174204a6f6f6d6c6176696c6c65206973206f6e65206f662074686520666173746573742067726f77696e67206369746965732061726f756e643f3c2f703e0d0a3c703e457665727920646179206c6f747320616e64206c6f7473206f66206e65772070656f706c6520617265206d6f76696e6720746f204a6f6f6d6c6176696c6c652c2061747472616374656420627920746865206c6f7720636f737420616e642068696768207175616c697479206f66206c6976696e672e2057687920646f6e277420796f7520706179207573206120766973697420616e642073656520696620796f752764206c696b6520746f206a6f696e2075733f3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223137223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031393a30393a3435223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2231223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2231223b733a383a226f72646572696e67223b733a313a2232223b733a383a2263617465676f7279223b733a343a224e657773223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32343a2231393a73616d706c652d6e6577732d61727469636c652d32223b733a373a22636174736c7567223b733a373a2231373a6e657773223b733a363a22617574686f72223b733a31303a22526f64204d617274696e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a34323a22696e6465782e7068702f31372d6e6577732f31392d73616d706c652d6e6577732d61727469636c652d32223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a22526f64204d617274696e223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a22526f64204d617274696e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a343a224e657773223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a343a224e657773223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3139223b733a353a22726f757465223b733a38393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31393a73616d706c652d6e6577732d61727469636c652d322663617469643d3137264974656d69643d313031223b733a353a227469746c65223b733a32313a2253616d706c65204e6577732041727469636c652032223b733a31313a226465736372697074696f6e223b733a3235383a222044696420796f75206b6e6f772074686174204a6f6f6d6c6176696c6c65206973206f6e65206f662074686520666173746573742067726f77696e67206369746965732061726f756e643f20457665727920646179206c6f747320616e64206c6f7473206f66206e65772070656f706c6520617265206d6f76696e6720746f204a6f6f6d6c6176696c6c652c2061747472616374656420627920746865206c6f7720636f737420616e642068696768207175616c697479206f66206c6976696e672e2057687920646f6e277420796f7520706179207573206120766973697420616e642073656520696620796f752764206c696b6520746f206a6f696e2075733f20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30362031393a30393a3435223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031393a30393a3435223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);
INSERT INTO `sg0we_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(49, 'index.php?option=com_content&view=article&id=20', 'index.php?option=com_content&view=article&id=20:sample-news-article-3&catid=17&Itemid=101', 'Sample News Article 3', ' Joomlaville is a busy place with events going on all the time. Almost every month you''ll find more and more Joomla events happening. Be sure to check Joomla.org regularly to see if there''s an event you''d like to attend. ', '2016-12-06 22:10:26', '2969bc576a7be1cfd6f14bd046c6a63b', 1, 1, 1, '*', '2016-12-06 19:10:26', '0000-00-00 00:00:00', '2016-12-06 19:10:26', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223230223b733a353a22616c696173223b733a32313a2273616d706c652d6e6577732d61727469636c652d33223b733a373a2273756d6d617279223b733a3233343a223c703e4a6f6f6d6c6176696c6c652069732061206275737920706c6163652077697468206576656e747320676f696e67206f6e20616c6c207468652074696d652e3c2f703e0d0a3c703e416c6d6f7374206576657279206d6f6e746820796f75276c6c2066696e64206d6f726520616e64206d6f7265204a6f6f6d6c61206576656e74732068617070656e696e672e204265207375726520746f20636865636b204a6f6f6d6c612e6f726720726567756c61726c7920746f20736565206966207468657265277320616e206576656e7420796f752764206c696b6520746f20617474656e642e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223137223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031393a31303a3236223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2231223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2231223b733a383a226f72646572696e67223b733a313a2233223b733a383a2263617465676f7279223b733a343a224e657773223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32343a2232303a73616d706c652d6e6577732d61727469636c652d33223b733a373a22636174736c7567223b733a373a2231373a6e657773223b733a363a22617574686f72223b733a31303a22526f64204d617274696e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a34323a22696e6465782e7068702f31372d6e6577732f32302d73616d706c652d6e6577732d61727469636c652d33223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a22526f64204d617274696e223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a22526f64204d617274696e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a343a224e657773223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a343a224e657773223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3230223b733a353a22726f757465223b733a38393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32303a73616d706c652d6e6577732d61727469636c652d332663617469643d3137264974656d69643d313031223b733a353a227469746c65223b733a32313a2253616d706c65204e6577732041727469636c652033223b733a31313a226465736372697074696f6e223b733a3232313a22204a6f6f6d6c6176696c6c652069732061206275737920706c6163652077697468206576656e747320676f696e67206f6e20616c6c207468652074696d652e20416c6d6f7374206576657279206d6f6e746820796f75276c6c2066696e64206d6f726520616e64206d6f7265204a6f6f6d6c61206576656e74732068617070656e696e672e204265207375726520746f20636865636b204a6f6f6d6c612e6f726720726567756c61726c7920746f20736565206966207468657265277320616e206576656e7420796f752764206c696b6520746f20617474656e642e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30362031393a31303a3236223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031393a31303a3236223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(50, 'index.php?option=com_content&view=article&id=17', 'index.php?option=com_content&view=article&id=17:lake-park&catid=16&Itemid=101', 'Lake Park', ' Lake Park is right on Joomlaville Lake. There is a boat ramp if you want to take your boat out. There is it also aa small picnic area, playground, nice views, and good fishing from the banks of the lake. ', '2016-12-06 22:11:52', '35553ed83d2269d7784e0b2d0e9a6b9c', 1, 1, 1, '*', '2016-12-06 19:03:34', '0000-00-00 00:00:00', '2016-12-06 19:03:34', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223137223b733a353a22616c696173223b733a393a226c616b652d7061726b223b733a373a2273756d6d617279223b733a3231303a223c703e4c616b65205061726b206973207269676874206f6e204a6f6f6d6c6176696c6c65204c616b652e205468657265206973206120626f61742072616d7020696620796f752077616e7420746f2074616b6520796f757220626f6174206f75742e20546865726520697320697420616c736f20616120736d616c6c207069636e696320617265612c20706c617967726f756e642c206e6963652076696577732c20616e6420676f6f642066697368696e672066726f6d207468652062616e6b73206f6620746865206c616b652e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223136223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031393a31313a3439223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2231223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2232223b733a383a226f72646572696e67223b733a313a2233223b733a383a2263617465676f7279223b733a353a225061726b73223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31323a2231373a6c616b652d7061726b223b733a373a22636174736c7567223b733a383a2231363a7061726b73223b733a363a22617574686f72223b733a31303a22526f64204d617274696e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a33313a22696e6465782e7068702f31362d7061726b732f31372d6c616b652d7061726b223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a22526f64204d617274696e223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a22526f64204d617274696e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a353a225061726b73223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a225061726b73223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3137223b733a353a22726f757465223b733a37373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31373a6c616b652d7061726b2663617469643d3136264974656d69643d313031223b733a353a227469746c65223b733a393a224c616b65205061726b223b733a31313a226465736372697074696f6e223b733a3230353a22204c616b65205061726b206973207269676874206f6e204a6f6f6d6c6176696c6c65204c616b652e205468657265206973206120626f61742072616d7020696620796f752077616e7420746f2074616b6520796f757220626f6174206f75742e20546865726520697320697420616c736f20616120736d616c6c207069636e696320617265612c20706c617967726f756e642c206e6963652076696577732c20616e6420676f6f642066697368696e672066726f6d207468652062616e6b73206f6620746865206c616b652e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30362031393a30333a3334223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031393a30333a3334223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(51, 'index.php?option=com_content&view=article&id=16', 'index.php?option=com_content&view=article&id=16:city-park&catid=16&Itemid=101', 'City Park', ' City Park is a small park just off Main Street. It has picnic tables with grills and nice views of downtown. People from local businesses often come here to relax or have lunch. There are also tennis courts for people who want to play during the summer. ', '2016-12-06 22:12:53', 'cb94bc65680ac6c2a8a6a2cb92162326', 1, 1, 1, '*', '2016-12-06 19:03:02', '0000-00-00 00:00:00', '2016-12-06 19:03:02', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223136223b733a353a22616c696173223b733a393a22636974792d7061726b223b733a373a2273756d6d617279223b733a3236353a223c703e43697479205061726b206973206120736d616c6c207061726b206a757374206f6666204d61696e205374726565742e20497420686173207069636e6963207461626c65732077697468206772696c6c7320616e64206e696365207669657773206f6620646f776e746f776e2e2050656f706c652066726f6d206c6f63616c20627573696e6573736573206f6674656e20636f6d65206865726520746f2072656c6178206f722068617665206c756e63682e266e6273703b54686572652061726520616c736f2074656e6e697320636f7572747320666f722070656f706c652077686f2077616e7420746f20706c617920647572696e67207468652073756d6d65722e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223136223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031393a31323a3531223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2231223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2232223b733a383a226f72646572696e67223b733a313a2232223b733a383a2263617465676f7279223b733a353a225061726b73223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31323a2231363a636974792d7061726b223b733a373a22636174736c7567223b733a383a2231363a7061726b73223b733a363a22617574686f72223b733a31303a22526f64204d617274696e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a33313a22696e6465782e7068702f31362d7061726b732f31362d636974792d7061726b223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a22526f64204d617274696e223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a22526f64204d617274696e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a353a225061726b73223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a225061726b73223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3136223b733a353a22726f757465223b733a37373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31363a636974792d7061726b2663617469643d3136264974656d69643d313031223b733a353a227469746c65223b733a393a2243697479205061726b223b733a31313a226465736372697074696f6e223b733a3235353a222043697479205061726b206973206120736d616c6c207061726b206a757374206f6666204d61696e205374726565742e20497420686173207069636e6963207461626c65732077697468206772696c6c7320616e64206e696365207669657773206f6620646f776e746f776e2e2050656f706c652066726f6d206c6f63616c20627573696e6573736573206f6674656e20636f6d65206865726520746f2072656c6178206f722068617665206c756e63682e2054686572652061726520616c736f2074656e6e697320636f7572747320666f722070656f706c652077686f2077616e7420746f20706c617920647572696e67207468652073756d6d65722e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30362031393a30333a3032223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031393a30333a3032223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(52, 'index.php?option=com_content&view=article&id=15', 'index.php?option=com_content&view=article&id=15:wood-park&catid=16&Itemid=101', 'Wood Park', ' Wood Park is located off the major highway in Joomlaville. There is a playground and picnic tables. It has two picnic tables in a beautiful secluded area with gorgeous views of the lake, and then a couple more picnic tables more set off in the woods. ', '2016-12-06 22:13:42', 'd931be25375f39a08f8af82b701389f2', 1, 1, 1, '*', '2016-12-06 19:02:27', '0000-00-00 00:00:00', '2016-12-06 19:02:27', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223135223b733a353a22616c696173223b733a393a22776f6f642d7061726b223b733a373a2273756d6d617279223b733a3235373a223c703e576f6f64205061726b206973206c6f6361746564206f666620746865206d616a6f72206869676877617920696e204a6f6f6d6c6176696c6c652e205468657265206973206120706c617967726f756e6420616e64207069636e6963207461626c65732e204974206861732074776f207069636e6963207461626c657320696e20612062656175746966756c207365636c756465642061726561207769746820676f7267656f7573207669657773206f6620746865206c616b652c20616e64207468656e206120636f75706c65206d6f7265207069636e6963207461626c6573206d6f726520736574206f666620696e2074686520776f6f64732e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223136223b733a31303a22637265617465645f6279223b733a333a22333831223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031362d31322d30362031393a31333a3338223b733a31313a226d6f6469666965645f6279223b733a333a22333831223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a37363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2231223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2231223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2231223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a393a227075626c6973686564223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a323a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2232223b733a383a226f72646572696e67223b733a313a2231223b733a383a2263617465676f7279223b733a353a225061726b73223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31323a2231353a776f6f642d7061726b223b733a373a22636174736c7567223b733a383a2231363a7061726b73223b733a363a22617574686f72223b733a31303a22526f64204d617274696e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a33313a22696e6465782e7068702f31362d7061726b732f31352d776f6f642d7061726b223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a22526f64204d617274696e223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a22526f64204d617274696e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a353a225061726b73223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a225061726b73223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3135223b733a353a22726f757465223b733a37373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31353a776f6f642d7061726b2663617469643d3136264974656d69643d313031223b733a353a227469746c65223b733a393a22576f6f64205061726b223b733a31313a226465736372697074696f6e223b733a3235323a2220576f6f64205061726b206973206c6f6361746564206f666620746865206d616a6f72206869676877617920696e204a6f6f6d6c6176696c6c652e205468657265206973206120706c617967726f756e6420616e64207069636e6963207461626c65732e204974206861732074776f207069636e6963207461626c657320696e20612062656175746966756c207365636c756465642061726561207769746820676f7267656f7573207669657773206f6620746865206c616b652c20616e64207468656e206120636f75706c65206d6f7265207069636e6963207461626c6573206d6f726520736574206f666620696e2074686520776f6f64732e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031362d31322d30362031393a30323a3237223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031362d31322d30362031393a30323a3237223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_terms0`
--

CREATE TABLE `sg0we_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_terms0`
--

INSERT INTO `sg0we_finder_links_terms0` (`link_id`, `term_id`, `weight`) VALUES
(1, 5, 0.79992),
(2, 5, 0.79992),
(20, 5, 0.79992),
(21, 5, 0.79992),
(22, 5, 0.79992),
(23, 5, 0.79992),
(24, 5, 0.79992),
(26, 5, 0.79992),
(27, 5, 0.79992),
(28, 5, 0.79992),
(32, 5, 0.79992),
(33, 5, 0.79992),
(35, 5, 0.79992),
(36, 5, 0.79992),
(37, 5, 0.79992),
(1, 6, 3.19992),
(2, 6, 3.19992),
(20, 6, 3.19992),
(21, 6, 3.19992),
(22, 6, 3.19992),
(23, 6, 3.19992),
(24, 6, 3.19992),
(26, 6, 3.19992),
(27, 6, 3.19992),
(28, 6, 3.19992),
(32, 6, 3.19992),
(33, 6, 3.19992),
(35, 6, 3.19992),
(36, 6, 3.19992),
(37, 6, 3.19992),
(35, 27, 0.39996),
(37, 27, 0.39996),
(36, 27, 0.86658),
(8, 27, 1.23321),
(20, 30, 0.87996),
(21, 30, 0.87996),
(22, 30, 0.87996),
(9, 30, 2.71321),
(12, 39, 2.71321),
(29, 53, 0.96),
(14, 53, 1.48),
(23, 61, 0.04669),
(26, 61, 0.04669),
(27, 61, 0.04669),
(47, 61, 0.04669),
(48, 61, 0.04669),
(49, 61, 0.04669),
(50, 61, 0.04669),
(51, 61, 0.04669),
(15, 61, 0.09338),
(21, 61, 0.09338),
(22, 61, 0.09338),
(28, 61, 0.09338),
(32, 61, 0.09338),
(33, 61, 0.09338),
(37, 61, 0.09338),
(20, 61, 0.14007),
(24, 61, 0.14007),
(36, 61, 0.14007),
(52, 61, 0.14007),
(35, 61, 0.18676),
(15, 62, 0.86331),
(20, 62, 0.86331),
(27, 62, 0.86331),
(28, 62, 0.86331),
(33, 62, 0.86331),
(37, 62, 0.86331),
(15, 63, 0.95669),
(15, 64, 0.86331),
(15, 65, 0.93331),
(15, 92, 1.86648),
(15, 93, 0.88669),
(15, 94, 0.93331),
(15, 95, 1.88004),
(15, 96, 2.04),
(35, 118, 0.84),
(37, 118, 0.84),
(22, 121, 0.14),
(23, 121, 0.14),
(26, 121, 0.14),
(33, 121, 0.14),
(36, 121, 0.14),
(37, 121, 0.14),
(49, 121, 0.14),
(50, 121, 0.14),
(51, 121, 0.14),
(21, 121, 0.28),
(24, 121, 0.28),
(27, 121, 0.28),
(35, 121, 0.28),
(52, 121, 0.28),
(20, 121, 0.42),
(28, 121, 0.42),
(48, 121, 0.42),
(32, 121, 0.7),
(20, 124, 0.56004),
(21, 124, 0.56004),
(22, 124, 0.56004),
(23, 124, 0.56004),
(24, 124, 0.56004),
(26, 124, 0.56004),
(27, 124, 0.56004),
(28, 124, 0.56004),
(32, 124, 0.56004),
(33, 124, 0.56004),
(35, 124, 0.56004),
(36, 124, 0.56004),
(37, 124, 0.56004),
(41, 124, 0.56004),
(50, 124, 0.56004),
(51, 124, 0.56004),
(52, 124, 0.56004),
(47, 124, 2.28683),
(48, 124, 2.28683),
(49, 124, 2.28683),
(24, 125, 0.09331),
(37, 125, 0.09331),
(47, 125, 0.09331),
(24, 126, 0.84),
(37, 126, 0.84),
(32, 186, 0.28),
(37, 186, 0.28),
(51, 186, 0.28),
(21, 247, 0.86331),
(24, 247, 0.86331),
(36, 247, 0.86331),
(47, 247, 0.86331),
(20, 258, 0.18669),
(21, 258, 0.18669),
(36, 258, 0.18669),
(50, 258, 0.18669),
(51, 258, 0.18669),
(32, 365, 0.09331),
(36, 365, 0.18662),
(20, 520, 0.09331),
(23, 520, 0.18662),
(35, 520, 0.18662),
(32, 618, 0.18669),
(35, 618, 0.18669),
(20, 757, 0.95669),
(32, 757, 0.95669),
(32, 759, 0.32669),
(28, 759, 2.38017),
(27, 775, 0.37331),
(32, 775, 0.37331),
(21, 775, 2.71983),
(21, 778, 0.14),
(23, 778, 0.14),
(24, 778, 0.14),
(27, 778, 0.14),
(48, 778, 0.14),
(51, 778, 0.14),
(28, 778, 0.28),
(32, 778, 0.28),
(33, 778, 0.28),
(21, 886, 0.18669),
(32, 886, 0.18669),
(47, 886, 0.18669),
(32, 892, 0.65338),
(26, 892, 2.05348),
(27, 892, 2.38017),
(20, 1010, 0.84),
(20, 1011, 0.93331),
(20, 1012, 1.12),
(20, 1013, 1.09669),
(20, 1014, 0.88669),
(20, 1015, 1.05),
(20, 1016, 0.09331),
(49, 1016, 0.09331),
(20, 1017, 0.91),
(20, 1018, 1.00331),
(20, 1019, 0.81669),
(20, 1020, 0.93331),
(20, 1021, 0.95669),
(20, 1022, 1.14331),
(20, 1023, 0.91),
(20, 1024, 0.65338),
(20, 1025, 0.98),
(20, 1026, 1.09669),
(20, 1027, 0.98),
(20, 1028, 1.05),
(20, 1029, 0.88669),
(20, 1030, 1.05),
(20, 1031, 0.28),
(20, 1032, 0.93331),
(20, 1033, 1.07331),
(20, 1093, 0.18669),
(20, 1094, 0.86331),
(20, 1095, 1.00331),
(21, 1138, 0.84),
(21, 1139, 0.95669),
(21, 1140, 1.05),
(21, 1141, 0.91),
(21, 1142, 1.05),
(21, 1143, 0.91),
(21, 1144, 1.07331),
(21, 1145, 0.93331),
(21, 1146, 1.00331),
(21, 1147, 0.95669),
(21, 1148, 1.05),
(21, 1149, 0.88669),
(51, 1149, 0.88669),
(21, 1150, 1.00331),
(21, 1203, 0.14),
(48, 1203, 0.14),
(49, 1203, 0.14),
(22, 1203, 0.28),
(21, 1204, 0.88669),
(21, 1205, 1.09669),
(21, 1206, 0.28),
(21, 1207, 0.91),
(21, 1208, 0.95669),
(21, 1209, 0.93331),
(21, 1210, 1.09669),
(21, 1211, 0.46669),
(21, 1212, 1.02669),
(21, 1213, 1.16669),
(21, 1214, 0.37331),
(21, 1215, 1.14331),
(21, 1216, 1.23669),
(22, 1267, 0.86331),
(22, 1268, 0.98),
(22, 1269, 0.86331),
(22, 1270, 1.00331),
(22, 1271, 0.42),
(22, 1272, 1.00331),
(22, 1273, 1.07331),
(22, 1274, 0.88669),
(22, 1275, 0.98),
(22, 1276, 0.42),
(22, 1277, 1.02669),
(22, 1278, 1.28331),
(22, 1318, 0.81669),
(22, 1319, 0.95669),
(22, 1320, 1.09669),
(22, 1321, 1.33),
(22, 1322, 0.23331),
(22, 1323, 0.95669),
(22, 1324, 1.05),
(23, 1391, 0.81669),
(23, 1392, 0.95669),
(23, 1393, 0.95669),
(23, 1394, 1.21331),
(23, 1395, 0.28),
(23, 1396, 0.91),
(23, 1397, 1.19),
(23, 1398, 0.95669),
(23, 1399, 1.19),
(23, 1400, 0.91),
(23, 1401, 0.98),
(23, 1402, 0.86331),
(23, 1403, 0.93331),
(24, 1454, 1.02669),
(24, 1455, 0.88669),
(24, 1456, 1.07331),
(24, 1457, 0.84),
(26, 1457, 0.84),
(24, 1458, 0.95669),
(26, 1458, 0.95669),
(24, 1459, 0.95669),
(24, 1460, 1.07331),
(24, 1461, 0.88669),
(24, 1462, 0.98),
(24, 1463, 0.32669),
(24, 1464, 0.98),
(24, 1465, 0.88669),
(24, 1466, 0.98),
(24, 1467, 1.00331),
(24, 1547, 0.28),
(24, 1548, 0.91),
(24, 1549, 1.14331),
(26, 1708, 0.91),
(26, 1709, 1.00331),
(26, 1710, 0.28),
(48, 1710, 0.28),
(26, 1711, 1.12),
(26, 1712, 1.21331),
(26, 1743, 0.93331),
(27, 1743, 1.86662),
(26, 1744, 0.98),
(27, 1744, 0.98),
(27, 1771, 0.95669),
(27, 1772, 1.05),
(27, 1773, 1.14331),
(27, 1774, 0.88669),
(27, 1775, 0.95669),
(27, 1776, 0.91),
(27, 1777, 1.05),
(27, 1816, 1.07331),
(28, 1834, 1.00331),
(28, 1835, 0.84),
(28, 1836, 0.91),
(28, 1837, 0.28),
(28, 1838, 0.98),
(28, 1839, 1.07331),
(28, 1840, 1.86662),
(28, 1841, 0.98),
(28, 1842, 1.12),
(28, 1843, 0.32669),
(28, 1844, 0.98),
(28, 1845, 1.05),
(28, 1846, 0.86331),
(28, 1847, 0.95669),
(28, 1848, 0.91),
(28, 1849, 1.09669),
(28, 1850, 0.86331),
(28, 1851, 1.07331),
(28, 1852, 0.46669),
(28, 1853, 1.16669),
(28, 1854, 1.30669),
(28, 1855, 0.88669),
(28, 1856, 0.95669),
(28, 1857, 0.86331),
(28, 1858, 1.09669),
(28, 1859, 0.18669),
(28, 1860, 0.95669),
(28, 1861, 1.09669),
(28, 1964, 0.23331),
(28, 1965, 1.00331),
(28, 1966, 1.12),
(29, 2106, 1.64004),
(29, 2107, 1.76004),
(32, 2630, 0.84),
(32, 2631, 0.95669),
(32, 2632, 1.07331),
(32, 2633, 0.95669),
(32, 2634, 1.14331),
(32, 2635, 0.28),
(32, 2636, 0.88669),
(32, 2637, 1.00331),
(32, 2638, 0.95669),
(32, 2639, 1.05),
(32, 2640, 0.86331),
(32, 2641, 0.95669),
(32, 2642, 0.86331),
(32, 2643, 1.02669),
(32, 2644, 0.91),
(32, 2645, 1.09669),
(32, 2646, 0.84),
(32, 2647, 0.95669),
(32, 2648, 0.98),
(32, 2649, 1.07331),
(32, 2650, 0.86331),
(32, 2651, 0.93331),
(32, 2652, 0.88669),
(32, 2653, 1.16669),
(32, 2730, 0.88669),
(32, 2731, 0.98),
(32, 2732, 0.81669),
(32, 2733, 0.88669),
(32, 2734, 1.07331),
(32, 2735, 1.14331),
(32, 2736, 0.18669),
(32, 2737, 0.88669),
(32, 2738, 1.07331),
(32, 2739, 0.95669),
(32, 2740, 1.09669),
(32, 2741, 0.51331),
(32, 2742, 1.02669),
(32, 2743, 1.12),
(32, 2744, 0.93331),
(32, 2745, 1.02669),
(33, 2885, 1.14331),
(33, 2886, 0.88669),
(33, 2887, 0.95669),
(33, 2888, 0.88669),
(50, 2888, 0.88669),
(33, 2889, 1.00331),
(33, 2890, 0.95669),
(33, 2891, 1.02669),
(33, 2892, 0.93331),
(33, 2893, 1.07331),
(35, 3276, 0.95669),
(35, 3277, 0.86331),
(35, 3278, 1.12),
(35, 3279, 0.88669),
(35, 3280, 1.00331),
(35, 3281, 0.84),
(35, 3282, 1.02669),
(35, 3283, 0.88669),
(35, 3284, 1.12),
(35, 3285, 0.93331),
(35, 3286, 1.12),
(35, 3287, 0.79331),
(35, 3288, 0.95669),
(35, 3289, 0.84),
(35, 3290, 0.95669),
(35, 3379, 0.32669),
(35, 3380, 1.14331),
(35, 3381, 0.88669),
(35, 3382, 1.05),
(35, 3383, 0.32669),
(35, 3384, 0.93331),
(35, 3385, 0.98),
(36, 3522, 0.84),
(36, 3523, 0.95669),
(36, 3524, 1.07331),
(36, 3525, 0.86331),
(36, 3526, 1.07331),
(36, 3527, 0.86331),
(36, 3528, 0.98),
(36, 3529, 0.95669),
(36, 3530, 1.09669),
(36, 3531, 0.46669),
(36, 3532, 1.21331),
(36, 3533, 1.28331),
(36, 3534, 0.93331),
(36, 3535, 1.07331),
(36, 3536, 0.91),
(36, 3537, 1.09669),
(36, 3617, 0.28),
(36, 3618, 1.05),
(36, 3619, 1.14331),
(36, 3620, 0.86331),
(36, 3621, 0.98),
(36, 3622, 0.88669),
(36, 3623, 0.95669),
(36, 3624, 0.42),
(36, 3625, 0.98),
(36, 3626, 1.07331),
(36, 3627, 0.23331),
(36, 3628, 1.02669),
(37, 3649, 1.02669),
(37, 3650, 1.05),
(37, 3651, 0.93331),
(37, 3652, 1.00331),
(37, 3653, 1.07331),
(37, 3694, 0.18669),
(37, 3695, 0.86331),
(37, 3696, 0.95669),
(37, 3697, 0.91),
(37, 3698, 1.07331),
(37, 3699, 0.14),
(37, 3700, 0.93331),
(37, 3701, 1.02669),
(47, 3839, 0.95669),
(47, 3840, 4.81),
(47, 3841, 0.84),
(47, 3842, 0.98),
(47, 3909, 1.48),
(48, 3909, 1.48),
(49, 3909, 1.48),
(47, 3910, 5.05679),
(48, 3910, 5.05679),
(49, 3910, 5.05679),
(47, 3911, 6.04321),
(48, 3911, 6.04321),
(49, 3911, 6.04321),
(47, 3912, 0.88669),
(47, 3913, 1.00331),
(48, 3961, 0.86331),
(48, 3962, 0.95669),
(48, 3963, 0.88669),
(48, 3964, 1.07331),
(48, 3965, 0.88669),
(48, 3966, 0.95669),
(48, 3967, 0.86331),
(48, 3968, 0.93331),
(48, 3969, 0.93331),
(48, 3970, 1.00331),
(48, 3971, 0.98),
(48, 3972, 1.07331),
(48, 3973, 4.81),
(48, 3974, 0.42),
(48, 3975, 0.98),
(48, 3976, 1.07331),
(48, 4040, 0.84),
(49, 4040, 0.84),
(48, 4041, 0.98),
(49, 4088, 0.84),
(49, 4089, 0.98),
(49, 4090, 0.14),
(49, 4091, 0.86331),
(49, 4092, 0.98),
(49, 4093, 0.28),
(49, 4094, 0.98),
(49, 4095, 1.12),
(49, 4096, 0.88669),
(49, 4097, 1.02669),
(49, 4098, 0.88669),
(49, 4099, 1.05),
(49, 4100, 4.81),
(49, 4101, 0.28),
(49, 4153, 1.02669),
(49, 4154, 0.18669),
(49, 4155, 0.86331),
(49, 4156, 1.00331),
(50, 4214, 0.84),
(50, 4215, 0.95669),
(50, 4216, 0.09331),
(50, 4217, 0.88669),
(50, 4218, 1.05),
(50, 4219, 0.86331),
(50, 4220, 1.00331),
(50, 4221, 1.07331),
(50, 4222, 0.18669),
(52, 4222, 0.18669),
(50, 4223, 1.05),
(50, 4224, 1.16669),
(50, 4275, 0.23331),
(51, 4275, 0.23331),
(50, 4276, 0.98),
(50, 4277, 1.09669),
(51, 4341, 0.86331),
(51, 4342, 0.98),
(51, 4343, 0.95669),
(51, 4344, 1.12),
(51, 4345, 0.88669),
(51, 4346, 1.02669),
(51, 4347, 1.05),
(51, 4414, 0.93331),
(51, 4415, 1.05),
(51, 4416, 0.28),
(51, 4417, 0.91),
(51, 4418, 1.00331),
(52, 4468, 0.95669),
(52, 4469, 1.16669),
(52, 4470, 0.88669),
(52, 4471, 1.00331),
(52, 4472, 0.98),
(52, 4473, 1.07331),
(52, 4474, 0.93331),
(52, 4475, 1.09669),
(52, 4476, 0.88669),
(52, 4477, 0.93331),
(52, 4478, 0.91),
(52, 4479, 1.12),
(52, 4520, 0.37331),
(52, 4521, 1.00331),
(52, 4522, 1.12),
(52, 4523, 0.14),
(52, 4524, 0.86331),
(52, 4525, 0.93331);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_terms1`
--

CREATE TABLE `sg0we_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_terms1`
--

INSERT INTO `sg0we_finder_links_terms1` (`link_id`, `term_id`, `weight`) VALUES
(21, 1137, 0.17);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_terms2`
--

CREATE TABLE `sg0we_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_terms2`
--

INSERT INTO `sg0we_finder_links_terms2` (`link_id`, `term_id`, `weight`) VALUES
(15, 71, 0.09331),
(15, 72, 0.81669),
(15, 73, 0.86331),
(15, 74, 0.32004),
(29, 74, 0.32004),
(15, 75, 1.83996),
(15, 76, 2.00004),
(20, 146, 0.14),
(32, 146, 0.14),
(37, 146, 0.14),
(51, 146, 0.14),
(52, 146, 0.14),
(28, 162, 0.32669),
(36, 162, 0.32669),
(37, 162, 0.32669),
(52, 162, 0.32669),
(26, 295, 0.18669),
(36, 295, 0.18669),
(26, 298, 0.23331),
(36, 298, 0.23331),
(24, 324, 0.23331),
(36, 324, 0.23331),
(47, 324, 0.23331),
(21, 324, 0.46662),
(28, 329, 0.37331),
(36, 329, 1.97321),
(22, 563, 0.18669),
(35, 563, 0.18669),
(51, 563, 0.18669),
(32, 563, 0.37338),
(22, 566, 0.32669),
(35, 566, 2.05348),
(24, 859, 0.18669),
(28, 859, 0.18669),
(32, 859, 0.18669),
(48, 859, 0.37338),
(20, 1070, 0.93331),
(20, 1071, 1.12),
(20, 1078, 0.18669),
(48, 1078, 0.18669),
(49, 1078, 0.18669),
(20, 1079, 0.91),
(20, 1080, 1.02669),
(20, 1081, 0.23331),
(20, 1082, 0.98),
(20, 1083, 1.16669),
(21, 1174, 0.18669),
(21, 1175, 0.91),
(21, 1176, 0.98),
(21, 1188, 0.98),
(21, 1189, 1.14331),
(21, 1190, 1.00331),
(21, 1191, 1.19),
(22, 1299, 0.88669),
(22, 1300, 0.98),
(22, 1301, 0.98),
(22, 1302, 1.07331),
(22, 1303, 0.23331),
(22, 1304, 0.93331),
(22, 1305, 1.02669),
(24, 1495, 0.18669),
(24, 1496, 0.86331),
(24, 1497, 0.95669),
(24, 1512, 0.98),
(24, 1513, 1.09669),
(24, 1514, 0.18669),
(24, 1515, 0.86331),
(24, 1516, 1.05),
(24, 1517, 0.86331),
(28, 1517, 0.86331),
(48, 1517, 0.86331),
(24, 1518, 1.14331),
(28, 1518, 1.14331),
(26, 1729, 0.86331),
(26, 1730, 1.07331),
(26, 1731, 0.88669),
(26, 1732, 1.09669),
(26, 1737, 0.23331),
(26, 1738, 1.09669),
(26, 1739, 1.23669),
(28, 1919, 0.28),
(28, 1920, 1.00331),
(28, 1921, 1.12),
(28, 1938, 0.98),
(28, 1939, 1.16669),
(28, 1940, 0.98),
(28, 1941, 1.16669),
(29, 2100, 1.64004),
(29, 2101, 1.83996),
(32, 2688, 0.88669),
(32, 2689, 0.95669),
(32, 2690, 0.88669),
(32, 2691, 1.00331),
(32, 2692, 0.88669),
(32, 2693, 0.98),
(32, 2694, 0.18669),
(32, 2695, 0.95669),
(32, 2696, 1.09669),
(32, 2712, 0.18669),
(32, 2713, 0.86331),
(32, 2714, 0.95669),
(32, 2715, 0.86331),
(32, 2716, 0.93331),
(35, 3326, 0.18669),
(51, 3326, 0.18669),
(35, 3327, 0.88669),
(35, 3328, 1.00331),
(35, 3329, 0.88669),
(35, 3330, 1.07331),
(35, 3331, 0.93331),
(35, 3332, 1.12),
(35, 3345, 0.32669),
(47, 3345, 0.32669),
(35, 3346, 0.95669),
(35, 3347, 1.07331),
(36, 3565, 0.93331),
(36, 3566, 1.05),
(36, 3567, 0.93331),
(36, 3568, 1.02669),
(36, 3588, 1.02669),
(36, 3589, 1.16669),
(36, 3590, 0.98),
(36, 3591, 1.02669),
(37, 3671, 1.00331),
(37, 3672, 1.19),
(37, 3678, 0.93331),
(37, 3679, 0.98),
(47, 3880, 0.91),
(47, 3881, 1.09669),
(47, 3882, 0.93331),
(47, 3883, 1.02669),
(48, 3998, 0.18669),
(48, 3999, 0.98),
(48, 4000, 1.05),
(48, 4011, 0.86331),
(49, 4011, 0.86331),
(48, 4012, 0.98),
(48, 4013, 0.28),
(48, 4014, 0.93331),
(48, 4015, 1.07331),
(48, 4016, 0.88669),
(48, 4017, 1.00331),
(48, 4018, 0.95669),
(48, 4019, 0.14),
(48, 4020, 0.88669),
(48, 4021, 0.98),
(49, 4125, 0.42),
(49, 4126, 0.98),
(49, 4127, 1.09669),
(49, 4135, 1.02669),
(52, 4249, 0.18669),
(50, 4249, 1.54686),
(50, 4250, 5.72),
(50, 4251, 0.98),
(50, 4252, 0.93331),
(50, 4253, 1.00331),
(51, 4367, 0.93331),
(51, 4368, 1.09669),
(51, 4369, 0.93331),
(51, 4370, 1.07331),
(51, 4371, 0.86331),
(51, 4372, 1.00331),
(51, 4378, 0.23331),
(51, 4379, 1.07331),
(51, 4380, 1.21331),
(51, 4381, 0.23331),
(51, 4382, 0.95669),
(51, 4383, 1.05),
(52, 4489, 0.86331),
(52, 4490, 1.02669),
(52, 4491, 0.32669),
(52, 4492, 0.93331),
(52, 4493, 1.21331),
(52, 4500, 0.88669),
(52, 4501, 1.00331),
(52, 4502, 0.95669),
(52, 4503, 1.05);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_terms3`
--

CREATE TABLE `sg0we_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_terms3`
--

INSERT INTO `sg0we_finder_links_terms3` (`link_id`, `term_id`, `weight`) VALUES
(20, 40, 0.51331),
(21, 40, 0.51331),
(22, 40, 0.51331),
(23, 40, 0.51331),
(24, 40, 0.51331),
(27, 40, 0.51331),
(49, 40, 0.51331),
(50, 40, 0.51331),
(52, 40, 0.51331),
(26, 40, 1.02662),
(28, 40, 1.02662),
(33, 40, 1.02662),
(47, 40, 1.02662),
(48, 40, 1.02662),
(12, 40, 2.71321),
(41, 40, 2.71321),
(35, 40, 3.73983),
(37, 40, 3.73983),
(32, 40, 4.25314),
(36, 40, 4.25314),
(15, 40, 4.3998),
(12, 41, 6.53679),
(15, 81, 3.6),
(15, 82, 1.8),
(32, 158, 1.05),
(37, 158, 1.05),
(35, 160, 1.02669),
(37, 160, 1.02669),
(48, 160, 1.02669),
(49, 160, 1.02669),
(36, 160, 2.05338),
(35, 161, 1.07331),
(37, 161, 1.07331),
(49, 161, 1.07331),
(28, 854, 1.05),
(32, 854, 1.05),
(28, 855, 1.14331),
(32, 855, 1.14331),
(20, 1076, 1.05),
(20, 1077, 1.12),
(21, 1183, 1.16669),
(21, 1184, 1.23669),
(22, 1306, 1.12),
(22, 1307, 1.33),
(23, 1426, 1.09669),
(52, 1426, 1.09669),
(23, 1427, 1.19),
(24, 1507, 0.28),
(49, 1507, 0.56),
(24, 1508, 0.95669),
(24, 1509, 1.02669),
(24, 1510, 1.02669),
(24, 1511, 1.12),
(26, 1733, 1.09669),
(26, 1734, 1.21331),
(26, 1735, 1.05),
(26, 1736, 1.19),
(27, 1792, 0.46669),
(27, 1793, 1.02669),
(27, 1794, 1.14331),
(27, 1795, 1.09669),
(27, 1796, 1.28331),
(28, 1933, 1.14331),
(28, 1934, 1.21331),
(28, 1935, 0.18669),
(51, 1935, 0.18669),
(28, 1936, 0.98),
(28, 1937, 1.05),
(32, 2709, 1.16669),
(32, 2710, 1.07331),
(32, 2711, 1.12),
(33, 2923, 1.14331),
(33, 2924, 1.23669),
(33, 2925, 1.07331),
(33, 2926, 1.21331),
(35, 3342, 6.04321),
(35, 3343, 1.14331),
(35, 3344, 1.23669),
(36, 3580, 1.14331),
(36, 3581, 1.09669),
(36, 3582, 6.16679),
(36, 3583, 1.12),
(36, 3584, 1.19),
(37, 3676, 6.04321),
(37, 3677, 1.28331),
(41, 3809, 5.79679),
(41, 3810, 6.78321),
(47, 3876, 1.16669),
(47, 3877, 1.4),
(47, 3878, 1.02669),
(47, 3879, 1.23669),
(48, 4003, 0.18669),
(48, 4004, 0.86331),
(48, 4005, 1.19),
(48, 4006, 1.26),
(48, 4007, 1.12),
(49, 4131, 1.00331),
(49, 4132, 1.23669),
(49, 4133, 0.93331),
(49, 4134, 1.16669),
(50, 4247, 1.07331),
(50, 4248, 1.21331),
(51, 4376, 0.88669),
(51, 4377, 1.00331),
(52, 4499, 1.16669);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_terms4`
--

CREATE TABLE `sg0we_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_terms4`
--

INSERT INTO `sg0we_finder_links_terms4` (`link_id`, `term_id`, `weight`) VALUES
(2, 17, 1.72679),
(37, 17, 2.05348),
(3, 19, 0.63996),
(4, 19, 0.63996),
(5, 19, 0.63996),
(6, 19, 0.63996),
(7, 19, 0.63996),
(8, 19, 0.63996),
(9, 19, 0.63996),
(10, 19, 0.63996),
(11, 19, 0.63996),
(12, 19, 0.63996),
(13, 19, 0.63996),
(14, 19, 0.63996),
(40, 19, 0.63996),
(42, 19, 0.63996),
(46, 19, 0.63996),
(9, 29, 0.17),
(24, 29, 0.17),
(15, 66, 0.56004),
(37, 128, 0.18669),
(32, 128, 0.37338),
(35, 128, 0.37338),
(51, 128, 1.17348),
(21, 220, 0.14),
(22, 220, 0.14),
(24, 220, 0.14),
(37, 220, 0.14),
(47, 220, 0.14),
(50, 220, 0.14),
(28, 220, 0.28),
(48, 220, 0.28),
(32, 220, 0.7),
(32, 223, 0.28),
(37, 223, 0.28),
(49, 223, 0.28),
(21, 269, 0.32669),
(23, 269, 0.32669),
(27, 269, 0.32669),
(36, 269, 0.32669),
(35, 359, 0.42),
(36, 359, 0.42),
(21, 789, 0.14),
(22, 789, 0.14),
(28, 789, 0.28),
(32, 789, 0.42),
(23, 796, 0.42),
(24, 796, 0.42),
(32, 796, 0.42),
(32, 962, 0.23331),
(24, 962, 0.6666),
(32, 963, 0.91),
(24, 963, 2.6),
(21, 967, 0.86331),
(22, 967, 0.86331),
(28, 967, 1.72662),
(32, 967, 2.58993),
(20, 1040, 0.37331),
(20, 1041, 0.18669),
(20, 1042, 0.91),
(20, 1043, 1.00331),
(20, 1106, 0.23331),
(20, 1107, 1.02669),
(21, 1154, 0.86331),
(21, 1155, 0.98),
(21, 1156, 0.28),
(24, 1156, 0.28),
(27, 1156, 0.28),
(21, 1157, 0.91),
(24, 1157, 0.91),
(27, 1157, 0.91),
(21, 1158, 1.00331),
(21, 1159, 1.00331),
(21, 1160, 1.07331),
(21, 1240, 0.95669),
(22, 1282, 0.88669),
(22, 1283, 0.93331),
(22, 1284, 0.28),
(22, 1285, 1.02669),
(22, 1286, 1.14331),
(22, 1287, 0.37331),
(22, 1288, 1.12),
(22, 1289, 1.23669),
(22, 1315, 0.18669),
(22, 1316, 0.84),
(22, 1317, 0.98),
(22, 1338, 0.98),
(23, 1410, 0.98),
(23, 1411, 1.09669),
(23, 1412, 0.95669),
(23, 1413, 1.02669),
(24, 1474, 0.18669),
(24, 1475, 0.98),
(24, 1476, 1.07331),
(24, 1477, 1.02669),
(24, 1544, 0.51331),
(28, 1544, 0.51331),
(24, 1545, 1.05),
(24, 1546, 1.16669),
(24, 1568, 1.24),
(24, 1569, 4.13323),
(24, 1570, 1.00331),
(24, 1571, 1.09669),
(24, 1572, 0.84),
(24, 1573, 1.07331),
(26, 1717, 0.28),
(28, 1717, 0.28),
(48, 1717, 0.28),
(26, 1718, 1.00331),
(48, 1718, 1.00331),
(26, 1719, 1.28331),
(27, 1778, 1.16669),
(27, 1779, 0.23331),
(28, 1779, 0.23331),
(27, 1780, 0.88669),
(28, 1780, 0.88669),
(27, 1781, 0.98),
(28, 1781, 0.98),
(27, 1782, 0.51331),
(27, 1783, 1.05),
(27, 1784, 1.19),
(27, 1785, 0.95669),
(27, 1786, 1.12),
(28, 1866, 0.86331),
(28, 1867, 1.07331),
(28, 1868, 0.86331),
(28, 1869, 1.07331),
(28, 1870, 0.91),
(28, 1871, 1.07331),
(28, 1872, 0.23331),
(28, 1873, 0.98),
(28, 1874, 1.07331),
(28, 1962, 1.09669),
(28, 1963, 1.19),
(28, 1995, 0.95669),
(28, 1996, 0.95669),
(28, 1997, 0.28),
(47, 1997, 0.28),
(28, 1998, 1.00331),
(28, 1999, 1.16669),
(28, 2000, 0.18669),
(50, 2000, 0.18669),
(28, 2001, 0.95669),
(28, 2002, 1.09669),
(29, 2089, 0.24),
(29, 2090, 1.52004),
(29, 2091, 1.68),
(29, 2104, 0.24),
(29, 2105, 1.52004),
(32, 2658, 1.00331),
(32, 2659, 1.12),
(32, 2660, 0.86331),
(32, 2661, 0.98),
(32, 2662, 0.91),
(32, 2663, 1.00331),
(32, 2664, 1.02669),
(32, 2665, 1.09669),
(32, 2666, 0.86331),
(32, 2667, 1.14331),
(32, 2668, 0.86331),
(32, 2669, 0.98),
(32, 2670, 0.18669),
(32, 2671, 0.86331),
(32, 2672, 0.95669),
(32, 2796, 1.21331),
(32, 2797, 0.86331),
(32, 2798, 0.95669),
(32, 2799, 1.09669),
(32, 2800, 0.95669),
(32, 2801, 1.00331),
(32, 2802, 0.86331),
(32, 2803, 1.07331),
(32, 2804, 0.98),
(32, 2805, 1.05),
(33, 2894, 0.23331),
(35, 3297, 0.42),
(35, 3298, 1.02669),
(35, 3299, 1.28331),
(35, 3300, 0.32669),
(35, 3301, 0.95669),
(35, 3302, 1.07331),
(35, 3303, 0.28),
(35, 3304, 1.02669),
(35, 3305, 1.09669),
(35, 3306, 0.91),
(35, 3307, 0.98),
(35, 3308, 0.91),
(35, 3309, 0.95669),
(35, 3310, 0.46669),
(35, 3311, 1.02669),
(35, 3312, 1.19),
(35, 3374, 1.02669),
(35, 3375, 1.12),
(35, 3376, 0.18669),
(35, 3377, 0.98),
(35, 3378, 1.05),
(36, 3541, 0.32669),
(36, 3542, 0.93331),
(36, 3543, 1.00331),
(36, 3544, 1.00331),
(36, 3545, 1.05),
(36, 3612, 0.23331),
(36, 3613, 0.88669),
(36, 3614, 1.02669),
(36, 3615, 0.98),
(36, 3616, 1.12),
(37, 3654, 0.98),
(37, 3655, 1.05),
(37, 3656, 0.93331),
(37, 3657, 1.02669),
(37, 3717, 0.18669),
(37, 3718, 0.88669),
(37, 3719, 1.02669),
(37, 3720, 0.91),
(37, 3721, 1.07331),
(37, 3722, 0.95669),
(49, 3722, 0.95669),
(37, 3723, 1.07331),
(41, 3815, 0.48),
(47, 3815, 0.48),
(48, 3815, 0.48),
(49, 3815, 0.48),
(50, 3815, 0.48),
(51, 3815, 0.48),
(52, 3815, 0.48),
(41, 3816, 3.19992),
(47, 3816, 3.19992),
(48, 3816, 3.19992),
(49, 3816, 3.19992),
(50, 3816, 3.19992),
(51, 3816, 3.19992),
(52, 3816, 3.19992),
(47, 3847, 0.28),
(47, 3848, 0.93331),
(47, 3849, 1.02669),
(47, 3850, 0.37331),
(47, 3851, 0.98),
(47, 3852, 1.05),
(47, 3853, 0.56),
(47, 3854, 1.05),
(47, 3855, 1.09669),
(47, 3903, 0.37331),
(47, 3904, 1.19),
(47, 3905, 1.26),
(47, 3906, 0.23331),
(50, 3906, 0.23331),
(47, 3907, 0.91),
(47, 3908, 1.02669),
(47, 3937, 0.91),
(47, 3938, 1.02669),
(47, 3939, 1.09669),
(48, 3979, 1.14331),
(48, 3980, 0.18669),
(48, 3981, 0.88669),
(48, 3982, 1.00331),
(48, 4057, 0.88669),
(48, 4058, 1.00331),
(48, 4059, 0.86331),
(48, 4060, 0.93331),
(48, 4061, 0.23331),
(49, 4061, 0.23331),
(48, 4062, 0.93331),
(49, 4062, 0.93331),
(48, 4063, 1.00331),
(49, 4063, 1.00331),
(49, 4108, 0.23331),
(49, 4109, 0.98),
(49, 4110, 1.07331),
(49, 4150, 0.42),
(49, 4151, 0.98),
(49, 4152, 1.07331),
(49, 4171, 1.07331),
(50, 4270, 0.18669),
(50, 4271, 0.86331),
(50, 4272, 0.95669),
(50, 4273, 0.88669),
(50, 4274, 1.16669),
(50, 4293, 0.88669),
(50, 4294, 0.95669),
(50, 4295, 0.91),
(50, 4296, 1.00331),
(51, 4351, 5.72),
(51, 4352, 0.98),
(51, 4353, 0.18669),
(51, 4354, 0.91),
(51, 4355, 0.98),
(51, 4356, 0.28),
(51, 4357, 0.93331),
(51, 4358, 1.09669),
(51, 4411, 0.23331),
(51, 4412, 0.88669),
(51, 4413, 1.00331),
(52, 4483, 0.28),
(52, 4484, 0.95669),
(52, 4485, 1.12);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_terms5`
--

CREATE TABLE `sg0we_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_terms6`
--

CREATE TABLE `sg0we_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_terms6`
--

INSERT INTO `sg0we_finder_links_terms6` (`link_id`, `term_id`, `weight`) VALUES
(15, 46, 0.56004),
(13, 46, 0.79339),
(15, 47, 1.76004),
(13, 47, 2.49339),
(13, 48, 0.8),
(13, 49, 2.8666),
(15, 83, 1.86648),
(15, 84, 0.88669),
(15, 85, 0.95669),
(15, 86, 1.52004),
(15, 87, 2.00004),
(15, 88, 5.05679),
(35, 168, 0.42),
(37, 168, 0.42),
(28, 584, 0.23331),
(35, 584, 0.23331),
(52, 584, 0.23331),
(32, 862, 0.32669),
(33, 862, 1.26009),
(32, 863, 0.95669),
(33, 863, 2.7334),
(32, 865, 0.28),
(22, 865, 1.76),
(22, 1308, 1.05),
(22, 1309, 1.28331),
(24, 1519, 0.42),
(24, 1520, 0.95669),
(24, 1521, 1.09669),
(24, 1522, 0.32669),
(24, 1523, 0.93331),
(24, 1524, 1.02669),
(28, 1942, 0.98),
(28, 1943, 1.05),
(28, 1944, 0.28),
(28, 1945, 0.93331),
(28, 1946, 1.02669),
(32, 2717, 1.05),
(32, 2718, 0.93331),
(32, 2719, 1.02669),
(33, 2927, 1.27992),
(33, 2928, 3.36),
(33, 2929, 1.05),
(33, 2930, 0.95669),
(33, 2931, 1.14331),
(35, 3348, 1.07331),
(35, 3349, 1.16669),
(35, 3350, 0.18669),
(47, 3350, 0.18669),
(35, 3351, 0.86331),
(35, 3352, 0.95669),
(35, 3353, 0.28),
(35, 3354, 0.95669),
(35, 3355, 1.02669),
(35, 3356, 0.18669),
(49, 3356, 0.37338),
(52, 3356, 0.37338),
(35, 3357, 1.05),
(35, 3358, 1.19),
(35, 3359, 0.98),
(35, 3360, 1.07331),
(35, 3361, 0.23331),
(35, 3362, 0.91),
(35, 3363, 1.07331),
(36, 3592, 0.37331),
(36, 3593, 1.02669),
(36, 3594, 1.09669),
(37, 3680, 0.28),
(37, 3681, 0.95669),
(37, 3682, 1.02669),
(37, 3683, 1.05),
(37, 3684, 1.12),
(40, 3799, 1.72679),
(41, 3799, 2.61352),
(41, 3811, 0.96),
(47, 3811, 0.96),
(48, 3811, 0.96),
(49, 3811, 0.96),
(50, 3811, 0.96),
(51, 3811, 0.96),
(52, 3811, 0.96),
(41, 3812, 0.74),
(41, 3813, 5.05679),
(41, 3814, 5.55),
(47, 3884, 0.95669),
(47, 3885, 1.02669),
(48, 4022, 0.28),
(48, 4023, 0.91),
(48, 4024, 1.19),
(49, 4136, 0.23331),
(49, 4137, 0.98),
(49, 4138, 1.09669),
(49, 4139, 0.88669),
(49, 4140, 1.00331),
(49, 4141, 0.95669),
(49, 4142, 1.12),
(51, 4384, 0.18669),
(51, 4385, 0.95669),
(51, 4386, 1.02669),
(52, 4504, 1.00331),
(52, 4505, 1.07331),
(52, 4506, 0.95669),
(52, 4507, 1.12),
(52, 4508, 0.88669),
(52, 4509, 0.98);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_terms7`
--

CREATE TABLE `sg0we_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_terms7`
--

INSERT INTO `sg0we_finder_links_terms7` (`link_id`, `term_id`, `weight`) VALUES
(1, 8, 0.64008),
(2, 8, 0.64008),
(20, 8, 0.64008),
(21, 8, 0.64008),
(22, 8, 0.64008),
(23, 8, 0.64008),
(24, 8, 0.64008),
(26, 8, 0.64008),
(27, 8, 0.64008),
(28, 8, 0.64008),
(32, 8, 0.64008),
(33, 8, 0.64008),
(35, 8, 0.64008),
(36, 8, 0.64008),
(37, 8, 0.64008),
(4, 22, 3.20679),
(5, 22, 3.20679),
(6, 22, 3.20679),
(7, 22, 3.20679),
(15, 97, 0.48),
(47, 868, 0.14),
(48, 868, 0.14),
(32, 868, 0.28),
(24, 868, 1.02),
(32, 871, 0.91),
(24, 871, 2.6),
(32, 872, 1.00331),
(24, 872, 2.8666),
(24, 1525, 4.13323),
(24, 1526, 4.54677),
(27, 1797, 0.18669),
(27, 1798, 0.86331),
(27, 1799, 0.95669),
(27, 1810, 0.23331),
(27, 1811, 0.95669),
(27, 1812, 1.05),
(27, 1813, 0.23331),
(27, 1814, 0.91),
(27, 1815, 1.19),
(28, 1947, 0.23331),
(28, 1948, 0.91),
(28, 1949, 1.05),
(29, 2102, 0.64008),
(46, 2102, 0.98679),
(48, 2102, 1.30683),
(49, 2102, 1.30683),
(47, 2102, 1.49352),
(29, 2103, 1.56),
(32, 2720, 0.84),
(32, 2721, 1.12),
(32, 2722, 0.14),
(32, 2723, 0.86331),
(32, 2724, 0.98),
(32, 2767, 0.18662),
(48, 2767, 0.18662),
(32, 2768, 0.81669),
(32, 2769, 0.91),
(32, 2770, 0.86331),
(32, 2771, 0.95669),
(35, 3364, 0.14),
(47, 3364, 0.14),
(35, 3365, 0.88669),
(35, 3366, 1.00331),
(36, 3595, 0.18669),
(36, 3596, 0.84),
(36, 3597, 0.98),
(37, 3685, 0.09331),
(37, 3686, 0.91),
(37, 3687, 1.02669),
(47, 3886, 0.95669),
(47, 3887, 1.12),
(47, 3888, 5.18),
(48, 3888, 5.18),
(49, 3888, 5.18),
(47, 3889, 5.42679),
(47, 3890, 0.86331),
(47, 3891, 1.14331),
(47, 3892, 0.88669),
(47, 3893, 0.95669),
(48, 4025, 0.93331),
(48, 4026, 1.02669),
(48, 4027, 5.42679),
(48, 4037, 0.32669),
(48, 4038, 0.93331),
(48, 4039, 1.09669),
(48, 4050, 0.79331),
(48, 4051, 0.93331),
(49, 4143, 5.42679),
(50, 4254, 0.18669),
(51, 4254, 0.18669),
(50, 4255, 0.93331),
(51, 4255, 0.93331),
(50, 4256, 1.02669),
(51, 4387, 1.00331);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_terms8`
--

CREATE TABLE `sg0we_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_terms8`
--

INSERT INTO `sg0we_finder_links_terms8` (`link_id`, `term_id`, `weight`) VALUES
(1, 3, 0.6666),
(2, 3, 0.6666),
(3, 3, 0.6666),
(5, 3, 0.6666),
(6, 3, 0.6666),
(8, 3, 0.6666),
(9, 3, 0.6666),
(10, 3, 0.6666),
(11, 3, 0.6666),
(13, 3, 0.6666),
(14, 3, 0.6666),
(15, 3, 0.6666),
(20, 3, 0.6666),
(21, 3, 0.6666),
(22, 3, 0.6666),
(23, 3, 0.6666),
(24, 3, 0.6666),
(26, 3, 0.6666),
(27, 3, 0.6666),
(28, 3, 0.6666),
(29, 3, 0.6666),
(32, 3, 0.6666),
(33, 3, 0.6666),
(35, 3, 0.6666),
(36, 3, 0.6666),
(37, 3, 0.6666),
(40, 3, 0.6666),
(41, 3, 0.6666),
(42, 3, 0.6666),
(46, 3, 0.6666),
(47, 3, 0.6666),
(48, 3, 0.6666),
(49, 3, 0.6666),
(50, 3, 0.6666),
(51, 3, 0.6666),
(52, 3, 0.6666),
(7, 25, 0.17),
(22, 25, 0.17),
(23, 33, 0.72),
(24, 33, 0.72),
(33, 33, 0.72),
(10, 33, 2.22),
(15, 67, 0.31992),
(23, 77, 0.09331),
(26, 77, 0.09331),
(33, 77, 0.09331),
(35, 77, 0.09331),
(48, 77, 0.09331),
(49, 77, 0.09331),
(51, 77, 0.09331),
(15, 77, 0.18662),
(20, 77, 0.18662),
(21, 77, 0.18662),
(27, 77, 0.18662),
(32, 77, 0.18662),
(37, 77, 0.18662),
(52, 77, 0.18662),
(24, 77, 0.27993),
(28, 77, 0.27993),
(50, 77, 0.27993),
(36, 77, 0.37324),
(20, 78, 0.79331),
(21, 78, 0.79331),
(23, 78, 0.79331),
(26, 78, 0.79331),
(27, 78, 0.79331),
(28, 78, 0.79331),
(33, 78, 0.79331),
(35, 78, 0.79331),
(37, 78, 0.79331),
(49, 78, 0.79331),
(50, 78, 0.79331),
(51, 78, 0.79331),
(52, 78, 0.79331),
(15, 78, 1.58662),
(24, 78, 1.58662),
(15, 79, 0.93331),
(27, 79, 0.93331),
(28, 79, 0.93331),
(33, 79, 0.93331),
(15, 80, 0.93331),
(23, 149, 0.09331),
(24, 149, 0.09331),
(28, 149, 0.09331),
(36, 149, 0.09331),
(33, 149, 0.18662),
(35, 149, 0.18662),
(37, 149, 0.18662),
(21, 149, 0.27993),
(32, 149, 0.27993),
(47, 149, 0.27993),
(52, 149, 0.27993),
(21, 150, 0.79331),
(37, 150, 0.79331),
(52, 150, 0.79331),
(36, 152, 0.84),
(37, 152, 0.84),
(52, 152, 0.84),
(21, 152, 1.68),
(32, 152, 1.68),
(35, 152, 1.68),
(32, 153, 1.00331),
(37, 153, 1.00331),
(35, 154, 0.91),
(37, 154, 0.91),
(36, 180, 0.28),
(37, 180, 0.28),
(36, 181, 0.91),
(37, 181, 0.91),
(24, 286, 0.14),
(51, 286, 0.14),
(28, 286, 0.28),
(32, 286, 0.28),
(33, 286, 0.28),
(36, 286, 0.28),
(35, 286, 0.42),
(20, 286, 0.56),
(41, 286, 0.74),
(24, 291, 0.18669),
(28, 291, 0.18669),
(50, 291, 0.18669),
(51, 291, 0.18669),
(22, 291, 0.37338),
(36, 291, 0.37338),
(22, 292, 0.88669),
(50, 292, 0.88669),
(36, 292, 1.77338),
(28, 306, 0.93331),
(36, 306, 0.93331),
(52, 306, 0.93331),
(28, 310, 0.09331),
(32, 310, 0.09331),
(36, 310, 0.09331),
(50, 310, 0.09331),
(51, 310, 0.09331),
(52, 310, 0.09331),
(35, 310, 0.18662),
(47, 310, 0.18662),
(28, 311, 0.81669),
(32, 311, 0.81669),
(36, 311, 0.81669),
(20, 313, 0.18669),
(32, 313, 0.18669),
(36, 313, 0.18669),
(36, 352, 0.28),
(47, 352, 0.28),
(48, 352, 0.28),
(35, 352, 0.56),
(51, 352, 0.56),
(48, 806, 0.14),
(32, 806, 0.42),
(33, 806, 0.88),
(23, 806, 1.02),
(24, 806, 1.16),
(28, 835, 0.09331),
(32, 835, 0.09331),
(48, 835, 0.09331),
(49, 835, 0.09331),
(50, 835, 0.09331),
(32, 841, 0.56),
(23, 841, 3.52),
(32, 842, 1.07331),
(23, 842, 6.74652),
(20, 849, 0.84),
(32, 849, 0.84),
(20, 1050, 0.37331),
(33, 1050, 0.74662),
(20, 1051, 0.95669),
(33, 1051, 0.95669),
(20, 1052, 1.09669),
(20, 1053, 0.18669),
(20, 1054, 0.88669),
(20, 1055, 1.07331),
(20, 1056, 0.95669),
(20, 1057, 1.07331),
(20, 1058, 0.91),
(20, 1059, 1.00331),
(20, 1060, 0.98),
(33, 1060, 0.98),
(20, 1061, 1.05),
(33, 1061, 1.05),
(20, 1062, 0.91),
(20, 1063, 1.12),
(20, 1072, 1.02669),
(20, 1073, 0.81669),
(20, 1074, 0.98),
(20, 1075, 0.98),
(20, 1087, 0.18669),
(20, 1088, 0.88669),
(20, 1089, 1.02669),
(20, 1090, 0.23331),
(28, 1090, 0.23331),
(49, 1090, 0.23331),
(20, 1091, 0.91),
(20, 1092, 1.12),
(21, 1161, 0.23331),
(21, 1162, 0.98),
(21, 1163, 1.12),
(21, 1164, 0.23331),
(48, 1164, 0.23331),
(21, 1165, 0.93331),
(21, 1166, 1.07331),
(21, 1170, 0.18669),
(29, 1170, 0.32004),
(21, 1171, 0.93331),
(21, 1172, 1.05),
(21, 1173, 0.18669),
(21, 1177, 0.91),
(21, 1178, 1.00331),
(21, 1179, 1.02669),
(21, 1180, 0.93331),
(21, 1181, 0.84),
(48, 1181, 0.84),
(21, 1182, 0.91),
(48, 1182, 0.91),
(21, 1185, 0.28),
(21, 1186, 1.00331),
(21, 1187, 1.09669),
(21, 1197, 0.32669),
(21, 1198, 1.05),
(21, 1199, 1.14331),
(21, 1200, 0.28),
(21, 1201, 0.98),
(21, 1202, 1.09669),
(22, 1293, 0.14),
(28, 1293, 0.28),
(22, 1294, 0.84),
(22, 1295, 0.91),
(22, 1296, 1.02669),
(22, 1297, 1.05),
(22, 1298, 1.14331),
(23, 1414, 0.84),
(24, 1414, 0.84),
(33, 1414, 0.84),
(23, 1415, 0.88669),
(24, 1415, 0.88669),
(33, 1415, 0.88669),
(23, 1419, 0.42),
(23, 1420, 1.00331),
(23, 1421, 1.19),
(23, 1422, 1.02669),
(33, 1422, 1.02669),
(52, 1422, 1.02669),
(47, 1422, 2.05338),
(23, 1423, 1.16669),
(52, 1423, 1.16669),
(23, 1424, 1.14331),
(23, 1425, 0.88669),
(23, 1428, 0.32669),
(23, 1429, 1.09669),
(23, 1430, 1.19),
(23, 1431, 0.32669),
(23, 1432, 1.12),
(23, 1433, 1.21331),
(24, 1478, 0.93331),
(24, 1479, 1.05),
(24, 1480, 0.93331),
(24, 1481, 1.07331),
(24, 1482, 0.32669),
(24, 1483, 0.98),
(24, 1484, 1.05),
(24, 1485, 0.28),
(24, 1486, 0.93331),
(24, 1487, 1.12),
(24, 1488, 0.86331),
(24, 1489, 0.93331),
(24, 1490, 0.86331),
(24, 1491, 1.00331),
(24, 1492, 0.23331),
(24, 1493, 0.88669),
(24, 1494, 1.00331),
(24, 1498, 0.88669),
(24, 1499, 0.95669),
(24, 1500, 0.95669),
(24, 1501, 0.91),
(26, 1501, 0.91),
(24, 1502, 0.93331),
(24, 1503, 1.05),
(24, 1504, 0.28),
(24, 1505, 0.98),
(24, 1506, 1.05),
(24, 1541, 0.28),
(24, 1542, 1.02669),
(24, 1543, 1.12),
(27, 1790, 0.88669),
(27, 1791, 0.95669),
(27, 1807, 0.23331),
(27, 1808, 0.88669),
(27, 1809, 0.98),
(28, 1875, 0.37331),
(28, 1876, 0.95669),
(28, 1877, 1.00331),
(28, 1878, 0.56),
(28, 1879, 1.09669),
(28, 1880, 1.37669),
(28, 1881, 0.37331),
(28, 1882, 0.95669),
(28, 1883, 1.09669),
(28, 1884, 0.37331),
(28, 1885, 1.07331),
(28, 1886, 1.37669),
(28, 1893, 0.28),
(28, 1894, 1.09669),
(28, 1895, 1.33),
(28, 1896, 0.28),
(28, 1897, 0.98),
(28, 1898, 1.07331),
(28, 1899, 0.65338),
(28, 1900, 0.95669),
(28, 1901, 1.05),
(28, 1902, 1.16669),
(28, 1903, 1.28331),
(28, 1904, 0.98),
(28, 1905, 1.05),
(28, 1906, 0.84),
(28, 1907, 0.91),
(28, 1908, 0.18669),
(28, 1909, 0.86331),
(28, 1910, 1.02669),
(28, 1911, 0.98),
(28, 1912, 1.16669),
(28, 1913, 1.09669),
(28, 1914, 1.28331),
(28, 1915, 1.07331),
(28, 1916, 1.16669),
(28, 1922, 0.91),
(28, 1923, 1.07331),
(28, 1924, 0.91),
(28, 1925, 1.02669),
(28, 1926, 0.60669),
(28, 1927, 1.19),
(28, 1928, 1.28331),
(28, 1929, 0.88669),
(28, 1930, 1.05),
(28, 1931, 1.05),
(28, 1932, 0.95669),
(28, 1960, 0.88669),
(28, 1961, 0.98),
(32, 2673, 0.86331),
(32, 2674, 1.05),
(32, 2675, 1.07331),
(32, 2676, 1.16669),
(32, 2677, 0.86331),
(32, 2678, 0.95669),
(32, 2679, 0.09331),
(47, 2679, 0.09331),
(32, 2680, 0.86331),
(32, 2681, 0.95669),
(32, 2682, 0.86331),
(32, 2683, 0.98),
(32, 2684, 0.98),
(32, 2685, 1.07331),
(32, 2697, 0.84),
(50, 2697, 0.84),
(32, 2698, 0.93331),
(32, 2699, 0.84),
(32, 2700, 0.91),
(32, 2701, 1.00331),
(32, 2702, 1.16669),
(32, 2703, 0.91),
(32, 2704, 0.95669),
(32, 2705, 0.98),
(32, 2706, 1.05),
(32, 2707, 0.98),
(32, 2708, 1.07331),
(33, 2895, 0.37331),
(51, 2895, 0.37331),
(33, 2896, 1.16669),
(33, 2897, 1.28331),
(33, 2906, 1.02669),
(33, 2907, 1.12),
(33, 2908, 1.09669),
(33, 2909, 0.98),
(33, 2910, 1.07331),
(33, 2917, 0.95669),
(33, 2918, 1.23669),
(33, 2919, 1.21331),
(33, 2920, 0.32669),
(33, 2921, 0.93331),
(33, 2922, 0.98),
(33, 2933, 0.28),
(50, 2933, 0.28),
(51, 2933, 0.28),
(52, 2933, 0.84),
(33, 2934, 0.91),
(33, 2935, 1.12),
(33, 2936, 0.28),
(33, 2937, 0.98),
(33, 2938, 1.07331),
(35, 3313, 0.32669),
(35, 3314, 0.93331),
(35, 3315, 1.21331),
(35, 3316, 0.93331),
(51, 3316, 0.93331),
(35, 3317, 1.16669),
(35, 3318, 0.95669),
(35, 3319, 1.23669),
(35, 3320, 0.88669),
(35, 3321, 1.00331),
(35, 3333, 0.95669),
(35, 3334, 0.95669),
(35, 3335, 0.46669),
(35, 3336, 1.07331),
(35, 3337, 1.16669),
(35, 3338, 0.93331),
(35, 3339, 1.00331),
(35, 3340, 0.84),
(47, 3340, 0.84),
(35, 3341, 0.88669),
(35, 3370, 1.02669),
(35, 3371, 1.09669),
(35, 3372, 1.07331),
(35, 3373, 1.26),
(36, 3546, 0.23331),
(36, 3547, 0.93331),
(36, 3548, 1.02669),
(36, 3556, 0.18669),
(36, 3557, 0.91),
(36, 3558, 1.05),
(36, 3559, 1.05),
(36, 3560, 1.21331),
(36, 3561, 1.00331),
(36, 3562, 1.07331),
(36, 3563, 1.02669),
(36, 3564, 1.07331),
(36, 3569, 1.07331),
(36, 3570, 0.86331),
(36, 3571, 1.00331),
(36, 3572, 0.81669),
(36, 3573, 0.91),
(36, 3574, 1.05),
(36, 3575, 0.91),
(36, 3576, 0.98),
(36, 3577, 1.00331),
(36, 3578, 0.91),
(36, 3579, 1.00331),
(36, 3585, 0.37331),
(36, 3586, 0.98),
(36, 3587, 1.12),
(36, 3609, 0.91),
(36, 3610, 1.05),
(36, 3611, 1.19),
(37, 3658, 0.28),
(51, 3658, 0.28),
(37, 3659, 0.93331),
(51, 3659, 0.93331),
(37, 3660, 1.09669),
(51, 3660, 1.09669),
(37, 3663, 0.18669),
(49, 3663, 0.18669),
(37, 3664, 0.91),
(37, 3665, 1.19),
(37, 3666, 0.42),
(37, 3667, 0.98),
(37, 3668, 1.07331),
(37, 3673, 0.93331),
(37, 3674, 0.86331),
(37, 3675, 0.93331),
(37, 3693, 1.00331),
(41, 3808, 4.56321),
(50, 3824, 0.39996),
(51, 3824, 0.39996),
(52, 3824, 0.39996),
(42, 3824, 1.23321),
(50, 3825, 1.17348),
(52, 3825, 1.17348),
(51, 3825, 1.36017),
(47, 3856, 0.84),
(47, 3857, 0.98),
(47, 3863, 0.18669),
(47, 3864, 0.95669),
(47, 3865, 1.14331),
(47, 3866, 0.37331),
(47, 3867, 0.95669),
(47, 3868, 1.07331),
(47, 3869, 0.86331),
(47, 3870, 1.02669),
(47, 3871, 1.23669),
(47, 3872, 1.09669),
(47, 3873, 0.86331),
(47, 3874, 0.95669),
(47, 3875, 0.98),
(47, 3898, 0.91),
(47, 3899, 1.19),
(47, 3900, 0.32669),
(47, 3901, 1.02669),
(47, 3902, 1.12),
(48, 3983, 0.88669),
(48, 3984, 0.98),
(48, 3985, 0.14),
(48, 3986, 0.86331),
(48, 3987, 0.98),
(48, 3988, 0.91),
(48, 3989, 1.00331),
(48, 3992, 0.32669),
(48, 3993, 1.05),
(48, 3994, 1.21331),
(48, 4001, 0.88669),
(48, 4002, 1.00331),
(48, 4008, 0.18669),
(48, 4009, 0.91),
(48, 4010, 1.19),
(48, 4032, 0.14),
(48, 4033, 0.84),
(48, 4034, 0.88669),
(48, 4035, 0.93331),
(48, 4036, 1.09669),
(49, 4120, 0.91),
(49, 4121, 1.00331),
(49, 4128, 0.93331),
(49, 4129, 1.00331),
(49, 4130, 0.91),
(49, 4148, 0.93331),
(49, 4149, 1.09669),
(50, 4233, 0.32669),
(50, 4234, 0.98),
(50, 4235, 1.07331),
(50, 4236, 1.02669),
(50, 4239, 0.95669),
(50, 4240, 0.91),
(50, 4241, 0.81669),
(50, 4242, 0.93331),
(50, 4243, 0.88669),
(50, 4244, 0.95669),
(50, 4245, 0.86331),
(50, 4246, 0.93331),
(50, 4263, 0.86331),
(51, 4263, 0.86331),
(52, 4263, 0.86331),
(50, 4264, 1.00331),
(50, 4265, 0.95669),
(50, 4266, 1.21331),
(50, 4267, 0.46669),
(52, 4267, 0.46669),
(50, 4268, 1.05),
(50, 4269, 1.19),
(51, 4359, 1.05),
(51, 4360, 1.16669),
(51, 4361, 1.02669),
(51, 4362, 0.93331),
(51, 4363, 1.19),
(51, 4373, 0.93331),
(51, 4374, 0.84),
(52, 4374, 0.84),
(51, 4375, 1.00331),
(51, 4399, 0.91),
(51, 4400, 0.91),
(51, 4401, 1.00331),
(51, 4402, 0.95669),
(51, 4403, 1.09669),
(51, 4404, 0.93331),
(51, 4405, 1.05),
(51, 4406, 1.00331),
(52, 4406, 3.00993),
(51, 4407, 1.12),
(51, 4408, 0.18669),
(51, 4409, 0.95669),
(51, 4410, 1.05),
(52, 4494, 1.02669),
(52, 4495, 0.98),
(52, 4496, 1.05),
(52, 4497, 1.02669),
(52, 4498, 0.93331),
(52, 4514, 1.05),
(52, 4515, 1.07331),
(52, 4516, 1.07331),
(52, 4517, 1.12),
(52, 4518, 1.02669),
(52, 4519, 1.19);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_terms9`
--

CREATE TABLE `sg0we_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_terms9`
--

INSERT INTO `sg0we_finder_links_terms9` (`link_id`, `term_id`, `weight`) VALUES
(20, 210, 0.23331),
(24, 210, 0.23331),
(37, 210, 0.23331),
(48, 210, 0.23331),
(32, 210, 0.69993),
(32, 786, 0.14),
(26, 786, 0.88),
(32, 787, 0.95669),
(26, 787, 6.01348),
(24, 938, 1.09669),
(32, 938, 1.09669),
(20, 1034, 0.23331),
(20, 1035, 0.91),
(20, 1036, 0.95669),
(20, 1037, 0.32669),
(20, 1038, 1.05),
(20, 1039, 1.16669),
(20, 1102, 0.95669),
(20, 1103, 1.02669),
(21, 1151, 0.32669),
(21, 1152, 0.93331),
(21, 1153, 1.02669),
(22, 1279, 0.09331),
(28, 1279, 0.09331),
(48, 1279, 0.09331),
(22, 1280, 0.81669),
(22, 1281, 0.91),
(23, 1404, 0.14),
(47, 1404, 0.14),
(23, 1405, 0.91),
(23, 1406, 1.16669),
(23, 1407, 0.14),
(47, 1407, 0.14),
(23, 1408, 0.84),
(23, 1409, 1.07331),
(24, 1468, 0.18669),
(24, 1469, 0.88669),
(24, 1470, 1.00331),
(24, 1471, 0.28),
(28, 1471, 0.28),
(24, 1472, 0.95669),
(24, 1473, 1.02669),
(24, 1562, 0.18669),
(26, 1562, 0.18669),
(24, 1563, 0.91),
(26, 1563, 0.91),
(24, 1564, 1.02669),
(24, 1565, 1.16669),
(26, 1713, 1.02669),
(26, 1714, 0.23331),
(26, 1715, 0.95669),
(26, 1716, 1.23669),
(26, 1756, 1.00331),
(28, 1862, 0.95669),
(28, 1863, 1.12),
(28, 1864, 0.79331),
(28, 1865, 0.91),
(32, 2654, 0.42),
(32, 2655, 0.98),
(32, 2656, 1.07331),
(32, 2657, 1.05),
(32, 2772, 0.14),
(32, 2773, 0.86331),
(32, 2774, 1.05),
(32, 2775, 1.19),
(32, 2776, 0.91),
(32, 2777, 1.12),
(32, 2778, 0.88669),
(32, 2779, 1.00331),
(32, 2780, 0.37331),
(32, 2781, 0.98),
(32, 2782, 1.09669),
(35, 3291, 0.32669),
(35, 3292, 0.93331),
(35, 3293, 1.02669),
(35, 3294, 0.18669),
(35, 3295, 0.91),
(35, 3296, 1.00331),
(36, 3538, 0.23331),
(36, 3539, 0.88669),
(36, 3540, 1.00331),
(36, 3641, 0.37331),
(37, 3713, 0.98),
(37, 3714, 1.09669),
(40, 3791, 1.23321),
(41, 3791, 1.86648),
(40, 3792, 5.30321),
(41, 3792, 8.02648),
(41, 3807, 5.79679),
(47, 3843, 0.88669),
(47, 3844, 0.95669),
(47, 3845, 0.84),
(47, 3846, 0.93331),
(48, 3977, 0.84),
(48, 3978, 0.93331),
(48, 4052, 0.91),
(48, 4053, 1.00331),
(49, 4102, 0.09331),
(49, 4103, 0.86331),
(49, 4104, 0.93331),
(49, 4105, 0.18669),
(49, 4106, 0.93331),
(49, 4107, 1.05),
(50, 4225, 0.23331),
(50, 4226, 0.88669),
(50, 4227, 0.98),
(50, 4228, 0.37338),
(50, 4229, 0.88669),
(50, 4230, 1.02669),
(50, 4231, 0.91),
(50, 4232, 0.98),
(50, 4287, 0.23331),
(51, 4287, 0.23331),
(52, 4287, 0.23331),
(50, 4288, 0.91),
(50, 4289, 1.02669),
(51, 4348, 0.46669),
(51, 4349, 1.07331),
(51, 4350, 1.19),
(51, 4429, 0.88669),
(52, 4429, 0.88669),
(51, 4430, 1.09669),
(52, 4480, 0.42),
(52, 4481, 1.12),
(52, 4482, 1.23669),
(52, 4541, 0.98);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_termsa`
--

CREATE TABLE `sg0we_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_termsa`
--

INSERT INTO `sg0we_finder_links_termsa` (`link_id`, `term_id`, `weight`) VALUES
(5, 23, 0.17),
(32, 23, 0.17);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_termsb`
--

CREATE TABLE `sg0we_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_termsb`
--

INSERT INTO `sg0we_finder_links_termsb` (`link_id`, `term_id`, `weight`) VALUES
(32, 20, 0.56004),
(3, 20, 1.72679),
(15, 68, 0.23331),
(20, 68, 0.23331),
(27, 68, 0.23331),
(28, 68, 0.23331),
(33, 68, 0.23331),
(37, 68, 0.23331),
(15, 69, 0.91),
(15, 70, 0.14),
(26, 820, 0.14),
(27, 820, 0.14),
(32, 820, 0.14),
(24, 823, 0.18669),
(26, 823, 0.18669),
(32, 823, 0.18669),
(33, 823, 0.18669),
(50, 823, 0.18669),
(24, 824, 0.91),
(32, 824, 0.91),
(33, 824, 0.91),
(24, 825, 0.98),
(32, 825, 0.98),
(20, 1064, 0.23331),
(20, 1065, 0.32669),
(20, 1066, 0.95669),
(20, 1067, 1.14331),
(20, 1068, 1.07331),
(20, 1069, 1.16669),
(26, 1725, 0.84),
(27, 1725, 0.84),
(26, 1726, 1.00331),
(26, 1727, 0.88669),
(26, 1728, 0.95669),
(27, 1787, 0.98),
(27, 1788, 0.91),
(27, 1789, 0.98),
(28, 1917, 0.95669),
(28, 1918, 1.02669),
(29, 2097, 0.15996),
(29, 2098, 1.44),
(29, 2099, 1.64004),
(32, 2686, 0.88669),
(32, 2687, 0.98),
(33, 2911, 0.23331),
(33, 2912, 0.91),
(33, 2913, 1.02669),
(33, 2914, 1.00331),
(33, 2915, 1.09669),
(33, 2916, 1.19),
(35, 3322, 0.51331),
(35, 3323, 0.18669),
(35, 3324, 0.86331),
(35, 3325, 0.95669),
(37, 3669, 1.00331),
(37, 3670, 1.07331),
(48, 3995, 0.32669),
(48, 3996, 1.02669),
(48, 3997, 1.19),
(49, 4122, 0.23331),
(49, 4123, 0.88669),
(49, 4124, 0.98),
(50, 4237, 0.98),
(50, 4238, 1.09669),
(51, 4364, 0.28),
(51, 4365, 0.93331),
(51, 4366, 1.05),
(52, 4486, 0.37331),
(52, 4487, 1.02669),
(52, 4488, 1.09669);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_termsc`
--

CREATE TABLE `sg0we_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_termsc`
--

INSERT INTO `sg0we_finder_links_termsc` (`link_id`, `term_id`, `weight`) VALUES
(1, 2, 0.17),
(3, 2, 0.17),
(36, 2, 0.17),
(48, 2, 0.37),
(8, 26, 0.17),
(23, 26, 0.17),
(10, 32, 0.34),
(33, 32, 0.34),
(11, 35, 0.34),
(26, 35, 0.34),
(12, 38, 0.34),
(27, 38, 0.34),
(13, 45, 0.34),
(28, 45, 0.34),
(14, 52, 0.34),
(41, 52, 0.34),
(15, 55, 0.17),
(29, 55, 0.17),
(37, 55, 0.17),
(47, 55, 0.37),
(22, 1264, 0.23331),
(22, 1265, 0.91),
(22, 1266, 1.02669),
(35, 3267, 0.18669),
(35, 3268, 0.98),
(35, 3269, 1.07331),
(35, 3270, 0.18669),
(35, 3271, 0.88669),
(35, 3272, 1.00331),
(35, 3273, 0.18669),
(35, 3274, 1.02669),
(35, 3275, 1.14331),
(40, 3806, 0.34),
(52, 3806, 0.34),
(42, 3822, 0.34),
(51, 3822, 0.34),
(46, 3829, 0.34),
(50, 3829, 0.34),
(47, 3833, 0.42),
(47, 3834, 0.91),
(47, 3835, 1.00331),
(47, 3836, 0.86331),
(47, 3837, 1.07331),
(47, 3838, 0.34),
(48, 3960, 0.34),
(49, 4087, 0.34);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_termsd`
--

CREATE TABLE `sg0we_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_termsd`
--

INSERT INTO `sg0we_finder_links_termsd` (`link_id`, `term_id`, `weight`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 0),
(7, 1, 0),
(8, 1, 0),
(9, 1, 0),
(10, 1, 0),
(11, 1, 0),
(12, 1, 0),
(13, 1, 0),
(14, 1, 0),
(15, 1, 0),
(20, 1, 0),
(21, 1, 0),
(22, 1, 0),
(23, 1, 0),
(24, 1, 0),
(26, 1, 0),
(27, 1, 0),
(28, 1, 0),
(29, 1, 0),
(32, 1, 0),
(33, 1, 0),
(35, 1, 0),
(36, 1, 0),
(37, 1, 0),
(40, 1, 0),
(41, 1, 0),
(42, 1, 0),
(46, 1, 0),
(47, 1, 0),
(48, 1, 0),
(49, 1, 0),
(50, 1, 0),
(51, 1, 0),
(52, 1, 0),
(1, 4, 1.97321),
(15, 50, 0.48),
(13, 50, 1.48),
(32, 89, 0.09331),
(35, 89, 0.09331),
(50, 89, 0.09331),
(51, 89, 0.09331),
(52, 89, 0.09331),
(15, 89, 0.15996),
(21, 89, 0.18662),
(27, 89, 0.18662),
(36, 89, 0.18662),
(47, 89, 0.18662),
(28, 89, 0.27993),
(37, 89, 0.27993),
(48, 89, 0.27993),
(24, 89, 0.46655),
(32, 90, 1.02669),
(15, 90, 1.76004),
(49, 91, 0.14),
(15, 91, 0.48),
(27, 176, 0.84),
(37, 176, 0.84),
(48, 176, 0.84),
(50, 176, 0.84),
(52, 176, 0.84),
(21, 176, 1.68),
(35, 338, 0.84),
(36, 338, 0.84),
(33, 340, 0.51331),
(36, 340, 0.51331),
(33, 341, 1.05),
(36, 341, 1.05),
(27, 343, 0.23331),
(36, 343, 0.23331),
(27, 346, 0.14),
(32, 346, 0.14),
(35, 346, 0.14),
(36, 346, 0.14),
(22, 877, 0.09331),
(32, 877, 0.09331),
(49, 877, 0.09331),
(50, 877, 0.09331),
(24, 877, 0.18662),
(26, 877, 0.18662),
(20, 1084, 0.32669),
(20, 1085, 0.98),
(20, 1086, 1.02669),
(21, 1192, 1.05),
(21, 1193, 1.02669),
(21, 1194, 0.14),
(48, 1194, 0.14),
(28, 1194, 0.28),
(21, 1195, 0.84),
(48, 1195, 0.84),
(21, 1196, 0.93331),
(48, 1196, 0.93331),
(22, 1310, 0.60669),
(22, 1311, 1.23669),
(22, 1312, 1.33),
(22, 1313, 0.84),
(24, 1313, 1.68),
(22, 1314, 1.05),
(24, 1527, 0.98),
(24, 1528, 1.02669),
(24, 1529, 0.84),
(48, 1529, 0.84),
(24, 1530, 1.00331),
(24, 1531, 1.02669),
(28, 1531, 1.02669),
(24, 1532, 1.12),
(28, 1533, 0.86331),
(24, 1533, 1.72662),
(24, 1534, 0.98),
(24, 1535, 0.98),
(24, 1536, 0.93331),
(24, 1537, 1.02669),
(24, 1538, 0.18669),
(24, 1539, 0.88669),
(24, 1540, 0.98),
(26, 1740, 0.95669),
(26, 1741, 1.05),
(26, 1742, 0.95669),
(27, 1800, 1.00331),
(27, 1801, 1.09669),
(27, 1802, 1.02669),
(27, 1803, 0.95669),
(27, 1804, 1.02669),
(27, 1805, 0.93331),
(27, 1806, 1.02669),
(28, 1950, 0.91),
(28, 1951, 1.16669),
(28, 1952, 1.16669),
(28, 1953, 1.00331),
(28, 1954, 1.72662),
(28, 1955, 1.07331),
(28, 1956, 1.19),
(28, 1957, 0.32669),
(28, 1958, 0.93331),
(28, 1959, 1.05),
(32, 2725, 1.14331),
(32, 2726, 0.84),
(32, 2727, 0.98),
(32, 2728, 0.88669),
(32, 2729, 0.98),
(33, 2932, 1.26),
(35, 3367, 1.07331),
(35, 3368, 1.00331),
(35, 3369, 1.12),
(36, 3598, 1.02669),
(36, 3599, 1.12),
(36, 3600, 1.02669),
(36, 3601, 1.33),
(36, 3602, 1.00331),
(36, 3603, 1.26),
(36, 3604, 0.95669),
(36, 3605, 1.09669),
(36, 3606, 0.32669),
(36, 3607, 1.12),
(36, 3608, 1.4),
(37, 3688, 0.84),
(37, 3689, 1.00331),
(37, 3690, 1.07331),
(37, 3691, 0.86331),
(37, 3692, 0.95669),
(47, 3894, 0.79331),
(47, 3895, 0.93331),
(47, 3896, 0.86331),
(47, 3897, 1.02669),
(48, 4028, 0.91),
(48, 4029, 1.00331),
(48, 4030, 1.00331),
(48, 4031, 1.02669),
(49, 4144, 0.84),
(49, 4145, 0.93331),
(49, 4146, 1.00331),
(49, 4147, 1.07331),
(50, 4257, 0.95669),
(52, 4257, 0.95669),
(50, 4258, 1.02669),
(50, 4259, 1.14331),
(50, 4260, 0.14),
(50, 4261, 0.91),
(50, 4262, 0.98),
(51, 4388, 0.95669),
(51, 4389, 1.12),
(51, 4390, 0.14),
(52, 4390, 0.28),
(51, 4391, 0.88669),
(51, 4392, 1.05),
(51, 4393, 0.23331),
(51, 4394, 0.93331),
(51, 4395, 1.05),
(51, 4396, 0.09331),
(51, 4397, 0.86331),
(51, 4398, 1.00331),
(52, 4510, 0.84),
(52, 4511, 0.93331),
(52, 4512, 0.86331),
(52, 4513, 1.00331);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_termse`
--

CREATE TABLE `sg0we_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_termse`
--

INSERT INTO `sg0we_finder_links_termse` (`link_id`, `term_id`, `weight`) VALUES
(1, 7, 0.24),
(2, 7, 0.24),
(2, 16, 0.17),
(4, 16, 0.17),
(35, 16, 0.17),
(49, 16, 0.37),
(6, 24, 0.17),
(20, 24, 0.17),
(26, 36, 1.11996),
(27, 36, 1.11996),
(28, 36, 1.11996),
(11, 36, 3.45321),
(15, 56, 0.6),
(15, 57, 0.36),
(15, 58, 1.8),
(15, 59, 1.95996),
(15, 60, 2.88),
(20, 195, 0.14),
(49, 195, 0.14),
(51, 195, 0.14),
(23, 195, 0.28),
(26, 195, 0.28),
(47, 195, 0.28),
(48, 195, 0.28),
(50, 195, 0.28),
(28, 195, 0.42),
(36, 195, 0.42),
(52, 195, 0.42),
(21, 195, 0.56),
(22, 195, 0.56),
(24, 195, 0.56),
(37, 195, 0.56),
(27, 195, 0.7),
(35, 195, 0.7),
(32, 195, 1.12),
(35, 198, 1.00331),
(37, 198, 1.00331),
(32, 200, 0.93331),
(37, 200, 0.93331),
(51, 200, 0.93331),
(32, 202, 0.93331),
(37, 202, 0.93331),
(20, 204, 0.23331),
(23, 204, 0.23331),
(24, 204, 0.23331),
(33, 204, 0.23331),
(36, 204, 0.23331),
(37, 204, 0.23331),
(47, 204, 0.23331),
(51, 204, 0.23331),
(52, 204, 0.23331),
(21, 204, 0.46662),
(28, 204, 0.46662),
(50, 204, 0.46662),
(20, 205, 0.88669),
(21, 205, 0.88669),
(24, 205, 0.88669),
(36, 205, 0.88669),
(37, 205, 0.88669),
(52, 205, 0.88669),
(50, 205, 1.77338),
(24, 207, 0.18669),
(32, 207, 0.18669),
(33, 207, 0.18669),
(37, 207, 0.18669),
(49, 207, 0.18669),
(33, 278, 0.23331),
(36, 278, 0.46662),
(20, 385, 0.09331),
(35, 385, 0.09331),
(47, 385, 0.09331),
(50, 385, 0.09331),
(24, 385, 0.18662),
(26, 385, 0.18662),
(33, 385, 0.18662),
(36, 385, 0.18662),
(48, 385, 0.18662),
(51, 385, 0.18662),
(49, 385, 0.27993),
(27, 385, 0.37324),
(28, 385, 0.37324),
(32, 385, 0.86645),
(33, 386, 0.88669),
(36, 386, 1.77338),
(32, 628, 0.88669),
(35, 628, 0.88669),
(24, 633, 0.32669),
(35, 633, 0.32669),
(24, 634, 0.95669),
(35, 634, 0.95669),
(35, 636, 1.02669),
(48, 636, 1.02669),
(32, 636, 6.45348),
(28, 638, 0.18669),
(35, 638, 0.18669),
(24, 638, 0.37338),
(28, 903, 0.95669),
(32, 903, 0.95669),
(21, 905, 0.98),
(27, 905, 0.98),
(32, 905, 0.98),
(20, 914, 0.86331),
(28, 914, 0.86331),
(32, 914, 0.86331),
(24, 916, 0.86331),
(32, 916, 0.86331),
(24, 917, 1.00331),
(32, 917, 1.00331),
(20, 923, 0.88669),
(24, 923, 0.88669),
(32, 923, 0.88669),
(24, 924, 1.16669),
(32, 924, 1.16669),
(22, 928, 0.23331),
(32, 928, 0.23331),
(27, 928, 1.69983),
(32, 929, 1.00331),
(27, 929, 7.30983),
(20, 1044, 0.28),
(20, 1045, 1.02669),
(20, 1046, 1.14331),
(20, 1047, 0.46669),
(20, 1048, 1.02669),
(20, 1049, 1.16669),
(20, 1096, 0.98),
(20, 1097, 0.95669),
(20, 1098, 0.28),
(20, 1099, 1.02669),
(20, 1100, 1.12),
(20, 1101, 1.02669),
(21, 1167, 0.32669),
(21, 1168, 0.95669),
(21, 1169, 1.05),
(21, 1217, 0.18669),
(21, 1218, 0.86331),
(21, 1219, 0.95669),
(21, 1220, 0.95669),
(21, 1221, 1.02669),
(21, 1222, 0.93331),
(24, 1222, 0.93331),
(27, 1222, 0.93331),
(21, 1223, 1.00331),
(24, 1223, 1.00331),
(27, 1223, 1.00331),
(21, 1224, 0.95669),
(23, 1224, 0.95669),
(27, 1224, 0.95669),
(21, 1225, 1.09669),
(21, 1226, 0.18669),
(21, 1227, 1.00331),
(21, 1228, 1.26),
(21, 1229, 0.91),
(23, 1229, 0.91),
(33, 1229, 0.91),
(51, 1229, 0.91),
(28, 1229, 1.82),
(21, 1230, 1.02669),
(51, 1230, 1.02669),
(21, 1231, 0.93331),
(24, 1231, 0.93331),
(50, 1231, 0.93331),
(52, 1231, 0.93331),
(21, 1232, 0.23331),
(21, 1233, 0.93331),
(21, 1234, 0.28),
(21, 1235, 0.98),
(21, 1236, 1.07331),
(22, 1290, 0.18669),
(22, 1291, 0.88669),
(22, 1292, 1.21331),
(22, 1325, 0.91),
(22, 1326, 1.00331),
(22, 1327, 0.93331),
(22, 1328, 1.12),
(22, 1329, 1.05),
(27, 1329, 1.05),
(28, 1329, 1.05),
(22, 1330, 1.21331),
(22, 1331, 0.98),
(22, 1332, 0.46669),
(23, 1332, 0.93338),
(22, 1333, 1.02669),
(23, 1333, 2.05338),
(22, 1334, 1.19),
(22, 1335, 0.91),
(22, 1336, 0.95669),
(23, 1416, 0.23331),
(49, 1416, 0.23331),
(23, 1417, 1.07331),
(23, 1418, 1.16669),
(23, 1434, 1.05),
(23, 1435, 0.86331),
(24, 1435, 0.86331),
(23, 1436, 1.09669),
(23, 1437, 1.21331),
(23, 1438, 1.12),
(24, 1550, 1.02669),
(24, 1551, 0.95669),
(24, 1552, 1.02669),
(24, 1553, 0.93331),
(24, 1554, 1.00331),
(24, 1555, 1.12),
(24, 1556, 0.98),
(24, 1557, 1.05),
(24, 1558, 0.91),
(24, 1559, 0.98),
(24, 1560, 0.91),
(24, 1561, 1.07331),
(48, 1720, 0.23331),
(49, 1720, 0.23331),
(26, 1720, 0.46662),
(26, 1721, 0.93331),
(26, 1722, 1.00331),
(26, 1723, 0.91),
(26, 1724, 1.05),
(26, 1745, 0.86331),
(26, 1746, 1.05),
(26, 1747, 0.91),
(26, 1748, 1.05),
(26, 1749, 0.91),
(26, 1750, 1.07331),
(26, 1751, 0.84),
(27, 1751, 0.84),
(26, 1752, 0.91),
(27, 1752, 0.91),
(26, 1753, 0.14),
(28, 1753, 0.14),
(52, 1753, 0.14),
(26, 1754, 0.91),
(26, 1755, 0.98),
(27, 1817, 1.05),
(27, 1818, 1.19),
(27, 1819, 0.91),
(27, 1820, 1.09669),
(27, 1821, 0.88669),
(27, 1822, 1.02669),
(28, 1823, 0.84),
(27, 1823, 1.68),
(27, 1824, 1.05),
(27, 1825, 1.00331),
(27, 1826, 2.14662),
(27, 1827, 0.28),
(27, 1828, 0.93331),
(27, 1829, 1.07331),
(28, 1887, 0.14),
(28, 1888, 0.98),
(28, 1889, 1.07331),
(28, 1890, 0.28),
(28, 1891, 0.95669),
(28, 1892, 1.12),
(28, 1967, 0.18669),
(28, 1968, 0.86331),
(28, 1969, 1.02669),
(28, 1970, 0.84),
(28, 1971, 1.00331),
(28, 1972, 1.09669),
(28, 1973, 1.05),
(28, 1974, 1.14331),
(28, 1975, 1.02669),
(28, 1976, 1.23669),
(28, 1977, 1.02669),
(28, 1978, 1.00331),
(28, 1979, 0.84),
(28, 1980, 0.91),
(28, 1981, 0.81669),
(28, 1982, 0.88669),
(28, 1983, 0.88669),
(28, 1984, 1.05),
(28, 1985, 0.93331),
(28, 1986, 0.93331),
(28, 1987, 1.00331),
(28, 1988, 1.00331),
(28, 1989, 1.09669),
(29, 2092, 1.62687),
(29, 2093, 1.47996),
(29, 2094, 1.64004),
(29, 2095, 1.52004),
(29, 2096, 1.71996),
(32, 2746, 0.23331),
(32, 2747, 0.91),
(32, 2748, 1.00331),
(32, 2749, 1.05),
(32, 2750, 1.07331),
(32, 2751, 0.95669),
(32, 2752, 0.93331),
(32, 2753, 1.02669),
(32, 2754, 1.02669),
(32, 2755, 0.95669),
(32, 2756, 1.02669),
(32, 2757, 1.00331),
(32, 2758, 0.95669),
(32, 2759, 0.81669),
(32, 2760, 0.93331),
(32, 2761, 1.12),
(32, 2762, 0.86331),
(32, 2763, 0.93331),
(32, 2764, 0.14),
(32, 2765, 0.88669),
(32, 2766, 0.95669),
(33, 2898, 1.07331),
(33, 2899, 1.14331),
(33, 2900, 0.28),
(33, 2901, 1.05),
(33, 2902, 1.19),
(33, 2903, 0.37331),
(33, 2904, 0.98),
(33, 2905, 1.12),
(33, 2939, 0.23331),
(33, 2940, 0.98),
(33, 2941, 1.19),
(33, 2942, 0.46669),
(33, 2943, 1.00331),
(33, 2944, 1.28331),
(33, 2945, 1.07331),
(33, 2946, 0.88669),
(33, 2947, 1.09669),
(33, 2948, 0.79331),
(33, 2949, 0.95669),
(33, 2950, 1.14331),
(35, 3386, 0.88669),
(35, 3387, 1.07331),
(35, 3388, 0.88669),
(35, 3389, 0.98),
(35, 3390, 1.00331),
(35, 3391, 1.07331),
(35, 3392, 0.88669),
(35, 3393, 0.98),
(35, 3394, 1.19),
(35, 3395, 1.21331),
(35, 3396, 0.86331),
(35, 3397, 0.95669),
(35, 3398, 0.42),
(35, 3399, 1.09669),
(35, 3400, 1.19),
(36, 3549, 0.18669),
(36, 3550, 0.88669),
(36, 3551, 1.12),
(36, 3552, 0.86331),
(36, 3553, 1.00331),
(36, 3554, 0.98),
(36, 3555, 1.19),
(36, 3629, 0.91),
(36, 3630, 0.98),
(36, 3631, 0.95669),
(36, 3632, 1.02669),
(36, 3633, 1.00331),
(36, 3634, 1.07331),
(36, 3635, 1.05),
(36, 3636, 0.23331),
(36, 3637, 0.95669),
(36, 3638, 1.07331),
(36, 3639, 0.93331),
(36, 3640, 1.05),
(37, 3661, 0.42),
(37, 3662, 1.09669),
(37, 3702, 0.18669),
(48, 3702, 0.18669),
(37, 3703, 1.07331),
(48, 3703, 1.07331),
(37, 3704, 1.16669),
(37, 3705, 1.00331),
(37, 3706, 1.07331),
(37, 3707, 1.14331),
(37, 3708, 1.00331),
(37, 3709, 1.02669),
(37, 3710, 1.00331),
(37, 3711, 0.86331),
(37, 3712, 0.98),
(47, 3858, 0.56),
(47, 3859, 0.91),
(47, 3860, 1.02669),
(47, 3861, 0.91),
(47, 3862, 1.02669),
(47, 3914, 1.86662),
(47, 3915, 1.00331),
(47, 3916, 1.00331),
(47, 3917, 0.91),
(47, 3918, 1.02669),
(47, 3919, 0.23331),
(47, 3920, 0.95669),
(47, 3921, 1.05),
(47, 3922, 0.18669),
(47, 3923, 0.88669),
(47, 3924, 1.05),
(48, 3990, 0.91),
(48, 3991, 1.02669),
(48, 4042, 1.14331),
(48, 4043, 0.95669),
(48, 4044, 1.14331),
(48, 4045, 0.86331),
(48, 4046, 0.98),
(48, 4047, 0.86331),
(48, 4048, 0.93331),
(48, 4049, 1.26),
(49, 4111, 0.95669),
(49, 4112, 1.07331),
(49, 4113, 0.56),
(49, 4114, 0.98),
(49, 4115, 1.05),
(49, 4116, 1.07331),
(49, 4117, 1.14331),
(49, 4118, 0.95669),
(49, 4119, 1.12),
(49, 4157, 0.88669),
(49, 4158, 1.05),
(49, 4159, 0.32669),
(49, 4160, 0.93331),
(49, 4161, 1.07331),
(49, 4162, 0.95669),
(49, 4163, 1.09669),
(49, 4164, 0.91),
(49, 4165, 0.88669),
(49, 4166, 1.05),
(49, 4167, 0.84),
(49, 4168, 0.91),
(50, 4278, 0.18669),
(50, 4279, 0.91),
(50, 4280, 1.02669),
(50, 4281, 0.91),
(50, 4282, 0.98),
(50, 4283, 0.88669),
(52, 4283, 0.88669),
(50, 4284, 0.95669),
(50, 4285, 0.86331),
(50, 4286, 0.98),
(51, 4419, 0.28),
(52, 4419, 0.84),
(51, 4420, 0.95669),
(51, 4421, 1.12),
(51, 4422, 0.28),
(51, 4423, 1.00331),
(51, 4424, 1.09669),
(51, 4425, 0.86331),
(51, 4426, 1.02669),
(51, 4427, 0.88669),
(51, 4428, 0.95669),
(52, 4526, 0.91),
(52, 4527, 0.95669),
(52, 4528, 0.91),
(52, 4529, 1.00331),
(52, 4530, 0.95669),
(52, 4531, 1.05),
(52, 4532, 0.98),
(52, 4533, 0.91),
(52, 4534, 1.09669),
(52, 4535, 0.91),
(52, 4536, 0.18669),
(52, 4537, 0.84),
(52, 4538, 1.00331),
(52, 4539, 0.93331),
(52, 4540, 1.09669);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_links_termsf`
--

CREATE TABLE `sg0we_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_links_termsf`
--

INSERT INTO `sg0we_finder_links_termsf` (`link_id`, `term_id`, `weight`) VALUES
(26, 98, 0.14),
(27, 98, 0.14),
(15, 98, 0.24),
(32, 213, 0.32669),
(37, 213, 0.32669),
(32, 214, 0.28),
(37, 214, 0.28),
(28, 644, 0.14),
(35, 644, 0.28),
(47, 644, 0.42),
(24, 649, 0.18669),
(32, 649, 0.18669),
(33, 649, 0.18669),
(35, 649, 0.18669),
(49, 649, 0.18669),
(51, 649, 0.18669),
(52, 649, 0.18669),
(23, 947, 0.09331),
(32, 947, 0.09331),
(20, 959, 0.42),
(32, 959, 0.42),
(28, 975, 0.14),
(32, 975, 0.14),
(20, 975, 1.02),
(20, 1104, 1.05),
(20, 1105, 1.14331),
(20, 1108, 0.88669),
(20, 1109, 0.98),
(20, 1110, 0.84),
(20, 1111, 0.88669),
(21, 1237, 0.28),
(21, 1238, 0.93331),
(21, 1239, 1.09669),
(22, 1337, 0.37331),
(26, 1337, 0.37331),
(23, 1439, 0.98),
(23, 1440, 1.05),
(23, 1441, 0.18669),
(23, 1442, 0.86331),
(23, 1443, 1.02669),
(24, 1566, 0.95669),
(24, 1567, 1.05),
(26, 1757, 0.84),
(27, 1757, 0.84),
(26, 1758, 0.93331),
(27, 1758, 0.93331),
(26, 1759, 0.37331),
(26, 1760, 0.98),
(26, 1761, 1.12),
(28, 1990, 0.98),
(28, 1991, 1.05),
(28, 1992, 0.23331),
(28, 1993, 0.91),
(28, 1994, 1.00331),
(32, 2783, 0.86331),
(32, 2784, 1.02669),
(32, 2785, 0.93331),
(32, 2786, 1.16669),
(32, 2787, 1.72679),
(32, 2788, 4.93321),
(32, 2789, 6.41321),
(32, 2790, 0.91),
(32, 2791, 0.98),
(32, 2792, 0.86331),
(32, 2793, 0.93331),
(32, 2794, 1.02669),
(32, 2795, 1.09669),
(32, 2806, 0.86331),
(32, 2807, 0.95669),
(33, 2951, 0.14),
(51, 2951, 0.14),
(33, 2952, 0.91),
(33, 2953, 0.93331),
(33, 2954, 1.09669),
(35, 3401, 0.81669),
(35, 3402, 0.95669),
(35, 3403, 0.93331),
(35, 3404, 1.12),
(35, 3405, 0.84),
(35, 3406, 0.95669),
(35, 3407, 0.18669),
(35, 3408, 0.91),
(35, 3409, 0.98),
(37, 3715, 0.93331),
(37, 3716, 1.09669),
(47, 3925, 0.98),
(47, 3926, 1.05),
(47, 3927, 0.88669),
(47, 3928, 0.98),
(47, 3929, 0.91),
(47, 3930, 1.00331),
(47, 3931, 0.18669),
(47, 3932, 0.86331),
(47, 3933, 0.95669),
(47, 3934, 0.23331),
(47, 3935, 0.91),
(47, 3936, 1.07331),
(48, 4054, 0.14),
(48, 4055, 0.91),
(48, 4056, 1.00331),
(49, 4169, 0.95669),
(49, 4170, 1.09669),
(50, 4290, 0.18669),
(51, 4290, 0.18669),
(50, 4291, 0.86331),
(51, 4291, 0.86331),
(50, 4292, 0.98),
(51, 4431, 0.98),
(51, 4432, 0.88669),
(51, 4433, 0.95669),
(51, 4434, 0.95669),
(51, 4435, 1.05),
(52, 4542, 1.00331),
(52, 4543, 1.14331),
(52, 4544, 1.17348),
(52, 4545, 5.72),
(52, 4546, 0.98),
(52, 4547, 0.23331);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_taxonomy`
--

CREATE TABLE `sg0we_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_taxonomy`
--

INSERT INTO `sg0we_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0),
(2, 1, 'Type', 1, 1, 0),
(3, 2, 'Tag', 1, 1, 0),
(4, 1, 'Author', 1, 1, 0),
(5, 4, 'Super User', 1, 1, 0),
(6, 1, 'Language', 1, 1, 0),
(7, 6, '*', 1, 1, 0),
(8, 2, 'Category', 1, 1, 0),
(9, 2, 'Contact', 1, 1, 0),
(10, 1, 'Category', 1, 1, 0),
(11, 10, 'Mayor''s Office', 1, 1, 0),
(12, 1, 'Region', 1, 1, 0),
(13, 12, 'FL', 1, 1, 0),
(14, 1, 'Country', 1, 1, 0),
(15, 14, 'USA', 1, 1, 0),
(16, 2, 'Article', 1, 1, 0),
(17, 10, 'About', 1, 1, 0),
(19, 10, 'Attractions', 1, 1, 0),
(20, 10, 'Festivals', 1, 1, 0),
(21, 10, 'Transportation', 1, 1, 0),
(22, 2, 'News Feed', 1, 1, 0),
(23, 10, 'Sports', 1, 1, 0),
(26, 10, 'General', 1, 1, 0),
(29, 4, 'Rod Martin', 1, 1, 0),
(30, 10, 'Board Minutes', 1, 1, 0),
(32, 10, 'News', 1, 1, 0),
(33, 10, 'Parks', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_taxonomy_map`
--

CREATE TABLE `sg0we_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_taxonomy_map`
--

INSERT INTO `sg0we_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1, 3),
(1, 5),
(1, 7),
(2, 3),
(2, 5),
(2, 7),
(3, 7),
(3, 8),
(4, 7),
(4, 8),
(5, 7),
(5, 8),
(6, 7),
(6, 8),
(7, 7),
(7, 8),
(8, 7),
(8, 8),
(9, 7),
(9, 8),
(10, 7),
(10, 8),
(11, 7),
(11, 8),
(12, 7),
(12, 8),
(13, 7),
(13, 8),
(14, 7),
(14, 8),
(15, 7),
(15, 9),
(15, 11),
(15, 13),
(15, 15),
(20, 5),
(20, 7),
(20, 16),
(20, 19),
(21, 5),
(21, 7),
(21, 16),
(21, 19),
(22, 5),
(22, 7),
(22, 16),
(22, 19),
(23, 5),
(23, 7),
(23, 16),
(23, 20),
(24, 5),
(24, 7),
(24, 16),
(24, 20),
(26, 5),
(26, 7),
(26, 16),
(26, 21),
(27, 5),
(27, 7),
(27, 16),
(27, 21),
(28, 5),
(28, 7),
(28, 16),
(28, 21),
(29, 7),
(29, 22),
(29, 23),
(32, 5),
(32, 7),
(32, 16),
(32, 26),
(33, 5),
(33, 7),
(33, 16),
(33, 20),
(35, 5),
(35, 7),
(35, 16),
(35, 17),
(36, 5),
(36, 7),
(36, 16),
(36, 17),
(37, 5),
(37, 7),
(37, 16),
(37, 17),
(40, 7),
(40, 8),
(41, 7),
(41, 16),
(41, 29),
(41, 30),
(42, 7),
(42, 8),
(46, 7),
(46, 8),
(47, 7),
(47, 16),
(47, 29),
(47, 32),
(48, 7),
(48, 16),
(48, 29),
(48, 32),
(49, 7),
(49, 16),
(49, 29),
(49, 32),
(50, 7),
(50, 16),
(50, 29),
(50, 33),
(51, 7),
(51, 16),
(51, 29),
(51, 33),
(52, 7),
(52, 16),
(52, 29),
(52, 33);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_terms`
--

CREATE TABLE `sg0we_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_terms`
--

INSERT INTO `sg0we_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(1, '', '', 0, 0, 0, '', 42, '*'),
(2, '2', '2', 0, 0, 0.1, '', 4, '*'),
(3, 'index', 'index', 0, 0, 0.3333, 'I532', 39, '*'),
(4, 'overview', 'overview', 0, 0, 0.5333, 'O161', 1, '*'),
(5, 'super', 'super', 0, 0, 0.3333, 'S160', 15, '*'),
(6, 'super user', 'super user', 0, 1, 1.3333, 'S1626', 15, '*'),
(7, 'tag', 'tag', 0, 0, 0.2, 'T200', 2, '*'),
(8, 'user', 'user', 0, 0, 0.2667, 'U260', 15, '*'),
(16, '3', '3', 0, 0, 0.1, '', 4, '*'),
(17, 'climate', 'climate', 0, 0, 0.4667, 'C453', 2, '*'),
(19, 'category', 'category', 0, 0, 0.5333, 'C326', 18, '*'),
(20, 'general', 'general', 0, 0, 0.4667, 'G564', 2, '*'),
(22, 'uncategorised', 'uncategorised', 0, 0, 0.8667, 'U5232623', 4, '*'),
(23, '4', '4', 0, 0, 0.1, '', 2, '*'),
(24, '5', '5', 0, 0, 0.1, '', 2, '*'),
(25, '7', '7', 0, 0, 0.1, '', 2, '*'),
(26, '8', '8', 0, 0, 0.1, '', 2, '*'),
(27, 'about', 'about', 0, 0, 0.3333, 'A130', 4, '*'),
(29, '9', '9', 0, 0, 0.1, '', 2, '*'),
(30, 'attractions', 'attractions', 0, 0, 0.7333, 'A362352', 4, '*'),
(32, '10', '10', 0, 0, 0.2, '', 2, '*'),
(33, 'festivals', 'festivals', 0, 0, 0.6, 'F23142', 4, '*'),
(35, '11', '11', 0, 0, 0.2, '', 2, '*'),
(36, 'transportation', 'transportation', 0, 0, 0.9333, 'T6521635', 4, '*'),
(38, '12', '12', 0, 0, 0.2, '', 2, '*'),
(39, 'advertising', 'advertising', 0, 0, 0.7333, 'A3163252', 1, '*'),
(40, 'joomlaville', 'joomlaville', 0, 0, 0.7333, 'J5414', 24, '*'),
(41, 'joomlaville advertising', 'joomlaville advertising', 0, 1, 1.7667, 'J54143163252', 1, '*'),
(45, '13', '13', 0, 0, 0.2, '', 2, '*'),
(46, 'mayor''s', 'mayor', 0, 0, 0.4667, 'M620', 2, '*'),
(47, 'mayor''s office', 'mayor office', 0, 1, 1.4667, 'M6212', 2, '*'),
(48, 'mayors', 'mayors', 0, 0, 0.4, 'M620', 1, '*'),
(49, 'mayors office', 'mayors office', 0, 1, 1.4333, 'M6212', 1, '*'),
(50, 'office', 'office', 0, 0, 0.4, 'O120', 2, '*'),
(52, '14', '14', 0, 0, 0.2, '', 2, '*'),
(53, 'sports', 'sports', 0, 0, 0.4, 'S1632', 2, '*'),
(55, '1', '1', 0, 0, 0.1, '', 4, '*'),
(56, '33601', '33601', 0, 0, 0.5, '', 1, '*'),
(57, '555', '555', 0, 0, 0.3, '', 1, '*'),
(58, '555 joomlaville', '555 joomlaville', 0, 1, 1.5, 'J5414', 1, '*'),
(59, '555 joomlaville way', '555 joomlaville way', 0, 1, 1.6333, 'J5414', 1, '*'),
(60, '555-555-5555', '555-555-5555', 0, 0, 1.2, '', 1, '*'),
(61, 'a', 'a', 0, 0, 0.0667, 'A000', 20, '*'),
(62, 'a great', 'a great', 0, 1, 1.2333, 'A263', 6, '*'),
(63, 'a great guy', 'a great guy', 0, 1, 1.3667, 'A2632', 1, '*'),
(64, 'a mayor', 'a mayor', 0, 1, 1.2333, 'A560', 1, '*'),
(65, 'a mayor he', 'a mayor he', 0, 1, 1.3333, 'A560', 1, '*'),
(66, 'contact', 'contact', 0, 0, 0.4667, 'C5323', 1, '*'),
(67, 'fl', 'fl', 0, 0, 0.1333, 'F400', 1, '*'),
(68, 'great', 'great', 0, 0, 0.3333, 'G630', 6, '*'),
(69, 'great guy', 'great guy', 0, 1, 1.3, 'G632', 1, '*'),
(70, 'guy', 'guy', 0, 0, 0.2, 'G000', 1, '*'),
(71, 'he', 'he', 0, 0, 0.1333, 'H000', 1, '*'),
(72, 'he is', 'he is', 0, 1, 1.1667, 'H200', 1, '*'),
(73, 'he is a', 'he is a', 0, 1, 1.2333, 'H200', 1, '*'),
(74, 'http', 'http', 0, 0, 0.2667, 'H310', 2, '*'),
(75, 'http joomlaville', 'http joomlaville', 0, 1, 1.5333, 'H3125414', 1, '*'),
(76, 'http joomlaville org', 'http joomlaville org', 0, 1, 1.6667, 'H312541462', 1, '*'),
(77, 'is', 'is', 0, 0, 0.1333, 'I200', 18, '*'),
(78, 'is a', 'is a', 0, 1, 1.1333, 'I200', 15, '*'),
(79, 'is a great', 'is a great', 0, 1, 1.3333, 'I263', 4, '*'),
(80, 'is a mayor', 'is a mayor', 0, 1, 1.3333, 'I256', 1, '*'),
(81, 'joomlaville org', 'joomlaville org', 0, 1, 1.5, 'J541462', 1, '*'),
(82, 'joomlaville way', 'joomlaville way', 0, 1, 1.5, 'J5414', 1, '*'),
(83, 'mayor', 'mayor', 0, 0, 0.3333, 'M600', 1, '*'),
(84, 'mayor he', 'mayor he', 0, 1, 1.2667, 'M600', 1, '*'),
(85, 'mayor he is', 'mayor he is', 0, 1, 1.3667, 'M620', 1, '*'),
(86, 'mayor of', 'mayor of', 0, 1, 1.2667, 'M610', 1, '*'),
(87, 'mayor of joomlaville', 'mayor of joomlaville', 0, 1, 1.6667, 'M6125414', 1, '*'),
(88, 'mayor steve', 'mayor steve', 0, 1, 1.3667, 'M6231', 1, '*'),
(89, 'of', 'of', 0, 0, 0.1333, 'O100', 14, '*'),
(90, 'of joomlaville', 'of joomlaville', 0, 1, 1.4667, 'O125414', 2, '*'),
(91, 'org', 'org', 0, 0, 0.2, 'O620', 2, '*'),
(92, 'steve', 'steve', 0, 0, 0.3333, 'S310', 1, '*'),
(93, 'steve is', 'steve is', 0, 1, 1.2667, 'S312', 1, '*'),
(94, 'steve is a', 'steve is a', 0, 1, 1.3333, 'S312', 1, '*'),
(95, 'steve joomlaville', 'steve joomlaville', 0, 1, 1.5667, 'S3125414', 1, '*'),
(96, 'steve joomlaville org', 'steve joomlaville org', 0, 1, 1.7, 'S312541462', 1, '*'),
(97, 'usa', 'usa', 0, 0, 0.2, 'U200', 1, '*'),
(98, 'way', 'way', 0, 0, 0.2, 'W000', 3, '*'),
(118, 'a city', 'a city', 0, 1, 1.2, 'A230', 2, '*'),
(121, 'and', 'and', 0, 0, 0.2, 'A530', 18, '*'),
(124, 'article', 'article', 0, 0, 0.4667, 'A6324', 20, '*'),
(125, 'at', 'at', 0, 0, 0.1333, 'A300', 3, '*'),
(126, 'at the', 'at the', 0, 1, 1.2, 'A300', 2, '*'),
(128, 'city', 'city', 0, 0, 0.2667, 'C300', 4, '*'),
(146, 'has', 'has', 0, 0, 0.2, 'H200', 5, '*'),
(149, 'in', 'in', 0, 0, 0.1333, 'I500', 11, '*'),
(150, 'in a', 'in a', 0, 1, 1.1333, 'I500', 3, '*'),
(152, 'in the', 'in the', 0, 1, 1.2, 'I530', 6, '*'),
(153, 'in the winter', 'in the winter', 0, 1, 1.4333, 'I53536', 2, '*'),
(154, 'is a city', 'is a city', 0, 1, 1.3, 'I230', 2, '*'),
(158, 'joomlaville has', 'joomlaville has', 0, 1, 1.5, 'J54142', 2, '*'),
(160, 'joomlaville is', 'joomlaville is', 0, 1, 1.4667, 'J54142', 5, '*'),
(161, 'joomlaville is a', 'joomlaville is a', 0, 1, 1.5333, 'J54142', 3, '*'),
(162, 'located', 'located', 0, 0, 0.4667, 'L230', 4, '*'),
(168, 'mountains', 'mountains', 0, 0, 0.6, 'M352', 2, '*'),
(176, 'of the', 'of the', 0, 1, 1.2, 'O130', 6, '*'),
(180, 'plenty', 'plenty', 0, 0, 0.4, 'P453', 2, '*'),
(181, 'plenty of', 'plenty of', 0, 1, 1.3, 'P4531', 2, '*'),
(186, 'summer', 'summer', 0, 0, 0.4, 'S560', 3, '*'),
(195, 'the', 'the', 0, 0, 0.2, 'T000', 18, '*'),
(198, 'the mountains', 'the mountains', 0, 1, 1.4333, 'T5352', 2, '*'),
(200, 'the summer', 'the summer', 0, 1, 1.3333, 'T256', 3, '*'),
(202, 'the winter', 'the winter', 0, 1, 1.3333, 'T536', 2, '*'),
(204, 'there', 'there', 0, 0, 0.3333, 'T600', 12, '*'),
(205, 'there is', 'there is', 0, 1, 1.2667, 'T620', 7, '*'),
(207, 'time', 'time', 0, 0, 0.2667, 'T500', 5, '*'),
(210, 'visit', 'visit', 0, 0, 0.3333, 'V230', 5, '*'),
(213, 'weather', 'weather', 0, 0, 0.4667, 'W360', 2, '*'),
(214, 'winter', 'winter', 0, 0, 0.4, 'W536', 2, '*'),
(220, 'you', 'you', 0, 0, 0.2, 'Y000', 9, '*'),
(223, 'you''ll', 'you', 0, 0, 0.4, 'Y400', 3, '*'),
(247, 'a large', 'a large', 0, 1, 1.2333, 'A462', 4, '*'),
(258, 'also', 'also', 0, 0, 0.2667, 'A420', 5, '*'),
(269, 'country', 'country', 0, 0, 0.4667, 'C536', 4, '*'),
(278, 'enjoy', 'enjoy', 0, 0, 0.3333, 'E520', 2, '*'),
(286, 'for', 'for', 0, 0, 0.2, 'F600', 9, '*'),
(291, 'from', 'from', 0, 0, 0.2667, 'F650', 6, '*'),
(292, 'from the', 'from the', 0, 1, 1.2667, 'F653', 3, '*'),
(295, 'hour', 'hour', 0, 0, 0.2667, 'H600', 2, '*'),
(298, 'hours', 'hours', 0, 0, 0.3333, 'H620', 2, '*'),
(306, 'is located', 'is located', 0, 1, 1.3333, 'I2423', 3, '*'),
(310, 'it', 'it', 0, 0, 0.1333, 'I300', 8, '*'),
(311, 'it is', 'it is', 0, 1, 1.1667, 'I320', 3, '*'),
(313, 'it''s', 'it', 0, 0, 0.2667, 'I320', 3, '*'),
(324, 'large', 'large', 0, 0, 0.3333, 'L620', 4, '*'),
(329, 'location', 'location', 0, 0, 0.5333, 'L235', 2, '*'),
(338, 'of our', 'of our', 0, 1, 1.2, 'O160', 2, '*'),
(340, 'opportunity', 'opportunity', 0, 0, 0.7333, 'O16353', 2, '*'),
(341, 'opportunity for', 'opportunity for', 0, 1, 1.5, 'O1635316', 2, '*'),
(343, 'other', 'other', 0, 0, 0.3333, 'O360', 2, '*'),
(346, 'our', 'our', 0, 0, 0.2, 'O600', 4, '*'),
(352, 'people', 'people', 0, 0, 0.4, 'P400', 5, '*'),
(359, 'residents', 'residents', 0, 0, 0.6, 'R23532', 2, '*'),
(365, 'so', 'so', 0, 0, 0.1333, 'S000', 2, '*'),
(385, 'to', 'to', 0, 0, 0.1333, 'T000', 14, '*'),
(386, 'to enjoy', 'to enjoy', 0, 1, 1.2667, 'T520', 2, '*'),
(520, 'as', 'as', 0, 0, 0.1333, 'A200', 3, '*'),
(563, 'here', 'here', 0, 0, 0.2667, 'H600', 4, '*'),
(566, 'history', 'history', 0, 0, 0.4667, 'H236', 2, '*'),
(584, 'major', 'major', 0, 0, 0.3333, 'M260', 3, '*'),
(618, 'site', 'site', 0, 0, 0.2667, 'S300', 2, '*'),
(628, 'the city', 'the city', 0, 1, 1.2667, 'T230', 2, '*'),
(633, 'through', 'through', 0, 0, 0.4667, 'T620', 2, '*'),
(634, 'through the', 'through the', 0, 1, 1.3667, 'T623', 2, '*'),
(636, 'to joomlaville', 'to joomlaville', 0, 1, 1.4667, 'T25414', 3, '*'),
(638, 'town', 'town', 0, 0, 0.2667, 'T500', 3, '*'),
(644, 'was', 'was', 0, 0, 0.2, 'W200', 3, '*'),
(649, 'with', 'with', 0, 0, 0.2667, 'W300', 7, '*'),
(757, 'a wonderful', 'a wonderful', 0, 1, 1.3667, 'A53614', 2, '*'),
(759, 'airport', 'airport', 0, 0, 0.4667, 'A6163', 2, '*'),
(775, 'aquarium', 'aquarium', 0, 0, 0.5333, 'A265', 3, '*'),
(778, 'are', 'are', 0, 0, 0.2, 'A600', 9, '*'),
(786, 'bus', 'bus', 0, 0, 0.2, 'B200', 2, '*'),
(787, 'bus station', 'bus station', 0, 1, 1.3667, 'B235', 2, '*'),
(789, 'can', 'can', 0, 0, 0.2, 'C500', 4, '*'),
(796, 'celebrate', 'celebrate', 0, 0, 0.6, 'C4163', 3, '*'),
(806, 'day', 'day', 0, 0, 0.2, 'D000', 5, '*'),
(820, 'get', 'get', 0, 0, 0.2, 'G300', 3, '*'),
(823, 'good', 'good', 0, 0, 0.2667, 'G300', 5, '*'),
(824, 'good time', 'good time', 0, 1, 1.3, 'G350', 3, '*'),
(825, 'good time to', 'good time to', 0, 1, 1.4, 'G353', 2, '*'),
(835, 'if', 'if', 0, 0, 0.1333, 'I100', 5, '*'),
(841, 'independence', 'independence', 0, 0, 0.8, 'I5315352', 2, '*'),
(842, 'independence day', 'independence day', 0, 1, 1.5333, 'I53153523', 2, '*'),
(849, 'it''s a', 'it a', 0, 1, 1.2, 'I320', 2, '*'),
(854, 'joomlaville you', 'joomlaville you', 0, 1, 1.5, 'J5414', 2, '*'),
(855, 'joomlaville you can', 'joomlaville you can', 0, 1, 1.6333, 'J541425', 2, '*'),
(859, 'lots', 'lots', 0, 0, 0.2667, 'L320', 4, '*'),
(862, 'mothers', 'mothers', 0, 0, 0.4667, 'M362', 2, '*'),
(863, 'mothers day', 'mothers day', 0, 1, 1.3667, 'M3623', 2, '*'),
(865, 'museum', 'museum', 0, 0, 0.4, 'M250', 2, '*'),
(868, 'new', 'new', 0, 0, 0.2, 'N000', 4, '*'),
(871, 'new years', 'new years', 0, 1, 1.3, 'N620', 2, '*'),
(872, 'new years day', 'new years day', 0, 1, 1.4333, 'N623', 2, '*'),
(877, 'on', 'on', 0, 0, 0.1333, 'O500', 6, '*'),
(886, 'some', 'some', 0, 0, 0.2667, 'S500', 3, '*'),
(892, 'station', 'station', 0, 0, 0.4667, 'S350', 3, '*'),
(903, 'the airport', 'the airport', 0, 1, 1.3667, 'T6163', 2, '*'),
(905, 'the aquarium', 'the aquarium', 0, 1, 1.4, 'T265', 3, '*'),
(914, 'the zoo', 'the zoo', 0, 1, 1.2333, 'T200', 3, '*'),
(916, 'time to', 'time to', 0, 1, 1.2333, 'T530', 2, '*'),
(917, 'time to visit', 'time to visit', 0, 1, 1.4333, 'T53123', 2, '*'),
(923, 'to visit', 'to visit', 0, 1, 1.2667, 'T123', 3, '*'),
(924, 'to visit joomlaville', 'to visit joomlaville', 0, 1, 1.6667, 'T12325414', 2, '*'),
(928, 'train', 'train', 0, 0, 0.3333, 'T650', 3, '*'),
(929, 'train station', 'train station', 0, 1, 1.4333, 'T65235', 2, '*'),
(938, 'visit joomlaville', 'visit joomlaville', 0, 1, 1.5667, 'V2325414', 2, '*'),
(947, 'we', 'we', 0, 0, 0.1333, 'W000', 2, '*'),
(959, 'wonderful', 'wonderful', 0, 0, 0.6, 'W53614', 2, '*'),
(962, 'years', 'years', 0, 0, 0.3333, 'Y620', 2, '*'),
(963, 'years day', 'years day', 0, 1, 1.3, 'Y623', 2, '*'),
(967, 'you can', 'you can', 0, 1, 1.2333, 'Y250', 4, '*'),
(975, 'zoo', 'zoo', 0, 0, 0.2, 'Z000', 3, '*'),
(1010, 'a farm', 'a farm', 0, 1, 1.2, 'A165', 1, '*'),
(1011, 'a farm for', 'a farm for', 0, 1, 1.3333, 'A16516', 1, '*'),
(1012, 'a great experience', 'a great experience', 0, 1, 1.6, 'A26321652', 1, '*'),
(1013, 'a wonderful place', 'a wonderful place', 0, 1, 1.5667, 'A53614142', 1, '*'),
(1014, 'also has', 'also has', 0, 1, 1.2667, 'A420', 1, '*'),
(1015, 'also has exotic', 'also has exotic', 0, 1, 1.5, 'A4232', 1, '*'),
(1016, 'an', 'an', 0, 0, 0.1333, 'A500', 2, '*'),
(1017, 'an aviary', 'an aviary', 0, 1, 1.3, 'A516', 1, '*'),
(1018, 'an aviary for', 'an aviary for', 0, 1, 1.4333, 'A51616', 1, '*'),
(1019, 'and a', 'and a', 0, 1, 1.1667, 'A530', 1, '*'),
(1020, 'and a farm', 'and a farm', 0, 1, 1.3333, 'A53165', 1, '*'),
(1021, 'and buffalo', 'and buffalo', 0, 1, 1.3667, 'A5314', 1, '*'),
(1022, 'and buffalo overall', 'and buffalo overall', 0, 1, 1.6333, 'A5314164', 1, '*'),
(1023, 'and geese', 'and geese', 0, 1, 1.3, 'A532', 1, '*'),
(1024, 'animals', 'animals', 0, 0, 0.4667, 'A542', 1, '*'),
(1025, 'animals like', 'animals like', 0, 1, 1.4, 'A54242', 1, '*'),
(1026, 'animals like cows', 'animals like cows', 0, 1, 1.5667, 'A54242', 1, '*'),
(1027, 'animals such', 'animals such', 0, 1, 1.4, 'A542', 1, '*'),
(1028, 'animals such as', 'animals such as', 0, 1, 1.5, 'A542', 1, '*'),
(1029, 'as lions', 'as lions', 0, 1, 1.2667, 'A2452', 1, '*'),
(1030, 'as lions tigers', 'as lions tigers', 0, 1, 1.5, 'A24523262', 1, '*'),
(1031, 'aviary', 'aviary', 0, 0, 0.4, 'A160', 1, '*'),
(1032, 'aviary for', 'aviary for', 0, 1, 1.3333, 'A1616', 1, '*'),
(1033, 'aviary for birds', 'aviary for birds', 0, 1, 1.5333, 'A16161632', 1, '*'),
(1034, 'birds', 'birds', 0, 0, 0.3333, 'B632', 1, '*'),
(1035, 'birds and', 'birds and', 0, 1, 1.3, 'B63253', 1, '*'),
(1036, 'birds and a', 'birds and a', 0, 1, 1.3667, 'B63253', 1, '*'),
(1037, 'buffalo', 'buffalo', 0, 0, 0.4667, 'B400', 1, '*'),
(1038, 'buffalo overall', 'buffalo overall', 0, 1, 1.5, 'B4164', 1, '*'),
(1039, 'buffalo overall it''s', 'buffalo overall it', 0, 1, 1.6667, 'B416432', 1, '*'),
(1040, 'children', 'children', 0, 0, 0.5333, 'C4365', 1, '*'),
(1041, 'cows', 'cows', 0, 0, 0.2667, 'C000', 1, '*'),
(1042, 'cows pigs', 'cows pigs', 0, 1, 1.3, 'C120', 1, '*'),
(1043, 'cows pigs and', 'cows pigs and', 0, 1, 1.4333, 'C1253', 1, '*'),
(1044, 'exotic', 'exotic', 0, 0, 0.4, 'E232', 1, '*'),
(1045, 'exotic animals', 'exotic animals', 0, 1, 1.4667, 'E232542', 1, '*'),
(1046, 'exotic animals such', 'exotic animals such', 0, 1, 1.6333, 'E232542', 1, '*'),
(1047, 'experience', 'experience', 0, 0, 0.6667, 'E21652', 1, '*'),
(1048, 'experience for', 'experience for', 0, 1, 1.4667, 'E2165216', 1, '*'),
(1049, 'experience for young', 'experience for young', 0, 1, 1.6667, 'E216521652', 1, '*'),
(1050, 'families', 'families', 0, 0, 0.5333, 'F542', 2, '*'),
(1051, 'families to', 'families to', 0, 1, 1.3667, 'F5423', 2, '*'),
(1052, 'families to visit', 'families to visit', 0, 1, 1.5667, 'F5423123', 1, '*'),
(1053, 'farm', 'farm', 0, 0, 0.2667, 'F650', 1, '*'),
(1054, 'farm for', 'farm for', 0, 1, 1.2667, 'F6516', 1, '*'),
(1055, 'farm for animals', 'farm for animals', 0, 1, 1.5333, 'F6516542', 1, '*'),
(1056, 'for animals', 'for animals', 0, 1, 1.3667, 'F6542', 1, '*'),
(1057, 'for animals like', 'for animals like', 0, 1, 1.5333, 'F654242', 1, '*'),
(1058, 'for birds', 'for birds', 0, 1, 1.3, 'F61632', 1, '*'),
(1059, 'for birds and', 'for birds and', 0, 1, 1.4333, 'F6163253', 1, '*'),
(1060, 'for families', 'for families', 0, 1, 1.4, 'F61542', 2, '*'),
(1061, 'for families to', 'for families to', 0, 1, 1.5, 'F615423', 2, '*'),
(1062, 'for young', 'for young', 0, 1, 1.3, 'F652', 1, '*'),
(1063, 'for young children', 'for young children', 0, 1, 1.6, 'F6524365', 1, '*'),
(1064, 'geese', 'geese', 0, 0, 0.3333, 'G000', 1, '*'),
(1065, 'giraffe', 'giraffe', 0, 0, 0.4667, 'G610', 1, '*'),
(1066, 'giraffe and', 'giraffe and', 0, 1, 1.3667, 'G6153', 1, '*'),
(1067, 'giraffe and buffalo', 'giraffe and buffalo', 0, 1, 1.6333, 'G615314', 1, '*'),
(1068, 'great experience', 'great experience', 0, 1, 1.5333, 'G6321652', 1, '*'),
(1069, 'great experience for', 'great experience for', 0, 1, 1.6667, 'G632165216', 1, '*'),
(1070, 'has exotic', 'has exotic', 0, 1, 1.3333, 'H232', 1, '*'),
(1071, 'has exotic animals', 'has exotic animals', 0, 1, 1.6, 'H232542', 1, '*'),
(1072, 'is a wonderful', 'is a wonderful', 0, 1, 1.4667, 'I253614', 1, '*'),
(1073, 'is an', 'is an', 0, 1, 1.1667, 'I250', 1, '*'),
(1074, 'is an aviary', 'is an aviary', 0, 1, 1.4, 'I2516', 1, '*'),
(1075, 'it''s a great', 'it a great', 0, 1, 1.4, 'I3263', 1, '*'),
(1076, 'joomlaville zoo', 'joomlaville zoo', 0, 1, 1.5, 'J54142', 1, '*'),
(1077, 'joomlaville zoo is', 'joomlaville zoo is', 0, 1, 1.6, 'J54142', 1, '*'),
(1078, 'like', 'like', 0, 0, 0.2667, 'L200', 3, '*'),
(1079, 'like cows', 'like cows', 0, 1, 1.3, 'L200', 1, '*'),
(1080, 'like cows pigs', 'like cows pigs', 0, 1, 1.4667, 'L212', 1, '*'),
(1081, 'lions', 'lions', 0, 0, 0.3333, 'L520', 1, '*'),
(1082, 'lions tigers', 'lions tigers', 0, 1, 1.4, 'L523262', 1, '*'),
(1083, 'lions tigers giraffe', 'lions tigers giraffe', 0, 1, 1.6667, 'L52326261', 1, '*'),
(1084, 'overall', 'overall', 0, 0, 0.4667, 'O164', 1, '*'),
(1085, 'overall it''s', 'overall it', 0, 1, 1.4, 'O16432', 1, '*'),
(1086, 'overall it''s a', 'overall it a', 0, 1, 1.4667, 'O16432', 1, '*'),
(1087, 'pigs', 'pigs', 0, 0, 0.2667, 'P200', 1, '*'),
(1088, 'pigs and', 'pigs and', 0, 1, 1.2667, 'P253', 1, '*'),
(1089, 'pigs and geese', 'pigs and geese', 0, 1, 1.4667, 'P2532', 1, '*'),
(1090, 'place', 'place', 0, 0, 0.3333, 'P420', 3, '*'),
(1091, 'place for', 'place for', 0, 1, 1.3, 'P4216', 1, '*'),
(1092, 'place for families', 'place for families', 0, 1, 1.6, 'P42161542', 1, '*'),
(1093, 'such', 'such', 0, 0, 0.2667, 'S000', 1, '*'),
(1094, 'such as', 'such as', 0, 1, 1.2333, 'S000', 1, '*'),
(1095, 'such as lions', 'such as lions', 0, 1, 1.4333, 'S452', 1, '*'),
(1096, 'the zoo also', 'the zoo also', 0, 1, 1.4, 'T242', 1, '*'),
(1097, 'there is an', 'there is an', 0, 1, 1.3667, 'T625', 1, '*'),
(1098, 'tigers', 'tigers', 0, 0, 0.4, 'T262', 1, '*'),
(1099, 'tigers giraffe', 'tigers giraffe', 0, 1, 1.4667, 'T26261', 1, '*'),
(1100, 'tigers giraffe and', 'tigers giraffe and', 0, 1, 1.6, 'T2626153', 1, '*'),
(1101, 'to visit there', 'to visit there', 0, 1, 1.4667, 'T1236', 1, '*'),
(1102, 'visit there', 'visit there', 0, 1, 1.3667, 'V236', 1, '*'),
(1103, 'visit there is', 'visit there is', 0, 1, 1.4667, 'V2362', 1, '*'),
(1104, 'wonderful place', 'wonderful place', 0, 1, 1.5, 'W53614142', 1, '*'),
(1105, 'wonderful place for', 'wonderful place for', 0, 1, 1.6333, 'W5361414216', 1, '*'),
(1106, 'young', 'young', 0, 0, 0.3333, 'Y520', 1, '*'),
(1107, 'young children', 'young children', 0, 1, 1.4667, 'Y524365', 1, '*'),
(1108, 'zoo also', 'zoo also', 0, 1, 1.2667, 'Z420', 1, '*'),
(1109, 'zoo also has', 'zoo also has', 0, 1, 1.4, 'Z420', 1, '*'),
(1110, 'zoo is', 'zoo is', 0, 1, 1.2, 'Z000', 1, '*'),
(1111, 'zoo is a', 'zoo is a', 0, 1, 1.2667, 'Z000', 1, '*'),
(1137, '6', '6', 0, 0, 0.1, '', 1, '*'),
(1138, 'a huge', 'a huge', 0, 1, 1.2, 'A200', 1, '*'),
(1139, 'a huge tank', 'a huge tank', 0, 1, 1.3667, 'A2352', 1, '*'),
(1140, 'a large penguin', 'a large penguin', 0, 1, 1.5, 'A4621525', 1, '*'),
(1141, 'also some', 'also some', 0, 1, 1.3, 'A425', 1, '*'),
(1142, 'also some large', 'also some large', 0, 1, 1.5, 'A425462', 1, '*'),
(1143, 'and doing', 'and doing', 0, 1, 1.3, 'A5352', 1, '*'),
(1144, 'and doing tricks', 'and doing tricks', 0, 1, 1.5333, 'A5352362', 1, '*'),
(1145, 'and sharks', 'and sharks', 0, 1, 1.3333, 'A53262', 1, '*'),
(1146, 'and sharks in', 'and sharks in', 0, 1, 1.4333, 'A532625', 1, '*'),
(1147, 'aquarium is', 'aquarium is', 0, 1, 1.3667, 'A2652', 1, '*'),
(1148, 'aquarium is one', 'aquarium is one', 0, 1, 1.5, 'A26525', 1, '*'),
(1149, 'are also', 'are also', 0, 1, 1.2667, 'A642', 2, '*'),
(1150, 'are also some', 'are also some', 0, 1, 1.4333, 'A6425', 1, '*'),
(1151, 'biggest', 'biggest', 0, 0, 0.4667, 'B230', 1, '*'),
(1152, 'biggest in', 'biggest in', 0, 1, 1.3333, 'B235', 1, '*'),
(1153, 'biggest in the', 'biggest in the', 0, 1, 1.4667, 'B2353', 1, '*'),
(1154, 'can see', 'can see', 0, 1, 1.2333, 'C520', 1, '*'),
(1155, 'can see them', 'can see them', 0, 1, 1.4, 'C5235', 1, '*'),
(1156, 'center', 'center', 0, 0, 0.4, 'C536', 3, '*'),
(1157, 'center of', 'center of', 0, 1, 1.3, 'C5361', 3, '*'),
(1158, 'center of the', 'center of the', 0, 1, 1.4333, 'C53613', 1, '*'),
(1159, 'country there', 'country there', 0, 1, 1.4333, 'C53636', 1, '*'),
(1160, 'country there is', 'country there is', 0, 1, 1.5333, 'C536362', 1, '*'),
(1161, 'doing', 'doing', 0, 0, 0.3333, 'D520', 1, '*'),
(1162, 'doing tricks', 'doing tricks', 0, 1, 1.4, 'D52362', 1, '*'),
(1163, 'doing tricks there', 'doing tricks there', 0, 1, 1.6, 'D5236236', 1, '*'),
(1164, 'don''t', 'don', 0, 0, 0.3333, 'D530', 2, '*'),
(1165, 'don''t feed', 'don feed', 0, 1, 1.3333, 'D5313', 1, '*'),
(1166, 'don''t feed these', 'don feed these', 0, 1, 1.5333, 'D53132', 1, '*'),
(1167, 'exhibit', 'exhibit', 0, 0, 0.4667, 'E213', 1, '*'),
(1168, 'exhibit you', 'exhibit you', 0, 1, 1.3667, 'E213', 1, '*'),
(1169, 'exhibit you can', 'exhibit you can', 0, 1, 1.5, 'E21325', 1, '*'),
(1170, 'feed', 'feed', 0, 0, 0.2667, 'F300', 2, '*'),
(1171, 'feed these', 'feed these', 0, 1, 1.3333, 'F320', 1, '*'),
(1172, 'feed these fish', 'feed these fish', 0, 1, 1.5, 'F3212', 1, '*'),
(1173, 'fish', 'fish', 0, 0, 0.2667, 'F200', 1, '*'),
(1174, 'huge', 'huge', 0, 0, 0.2667, 'H200', 1, '*'),
(1175, 'huge tank', 'huge tank', 0, 1, 1.3, 'H2352', 1, '*'),
(1176, 'huge tank in', 'huge tank in', 0, 1, 1.4, 'H23525', 1, '*'),
(1177, 'in a huge', 'in a huge', 0, 1, 1.3, 'I520', 1, '*'),
(1178, 'in the center', 'in the center', 0, 1, 1.4333, 'I532536', 1, '*'),
(1179, 'in the country', 'in the country', 0, 1, 1.4667, 'I532536', 1, '*'),
(1180, 'is a large', 'is a large', 0, 1, 1.3333, 'I2462', 1, '*'),
(1181, 'is one', 'is one', 0, 1, 1.2, 'I250', 2, '*'),
(1182, 'is one of', 'is one of', 0, 1, 1.3, 'I251', 2, '*'),
(1183, 'joomlaville aquarium', 'joomlaville aquarium', 0, 1, 1.6667, 'J5414265', 1, '*'),
(1184, 'joomlaville aquarium is', 'joomlaville aquarium is', 0, 1, 1.7667, 'J54142652', 1, '*'),
(1185, 'killer', 'killer', 0, 0, 0.4, 'K460', 1, '*'),
(1186, 'killer whales', 'killer whales', 0, 1, 1.4333, 'K4642', 1, '*'),
(1187, 'killer whales and', 'killer whales and', 0, 1, 1.5667, 'K464253', 1, '*'),
(1188, 'large killer', 'large killer', 0, 1, 1.4, 'L6246', 1, '*'),
(1189, 'large killer whales', 'large killer whales', 0, 1, 1.6333, 'L624642', 1, '*'),
(1190, 'large penguin', 'large penguin', 0, 1, 1.4333, 'L621525', 1, '*'),
(1191, 'large penguin exhibit', 'large penguin exhibit', 0, 1, 1.7, 'L621525213', 1, '*'),
(1192, 'of the aquarium', 'of the aquarium', 0, 1, 1.5, 'O13265', 1, '*'),
(1193, 'of the biggest', 'of the biggest', 0, 1, 1.4667, 'O13123', 1, '*'),
(1194, 'one', 'one', 0, 0, 0.2, 'O500', 3, '*'),
(1195, 'one of', 'one of', 0, 1, 1.2, 'O510', 2, '*'),
(1196, 'one of the', 'one of the', 0, 1, 1.3333, 'O513', 2, '*'),
(1197, 'penguin', 'penguin', 0, 0, 0.4667, 'P525', 1, '*'),
(1198, 'penguin exhibit', 'penguin exhibit', 0, 1, 1.5, 'P525213', 1, '*'),
(1199, 'penguin exhibit you', 'penguin exhibit you', 0, 1, 1.6333, 'P525213', 1, '*'),
(1200, 'please', 'please', 0, 0, 0.4, 'P420', 1, '*'),
(1201, 'please don''t', 'please don', 0, 1, 1.4, 'P42353', 1, '*'),
(1202, 'please don''t feed', 'please don feed', 0, 1, 1.5667, 'P4235313', 1, '*'),
(1203, 'see', 'see', 0, 0, 0.2, 'S000', 4, '*'),
(1204, 'see them', 'see them', 0, 1, 1.2667, 'S350', 1, '*'),
(1205, 'see them swimming', 'see them swimming', 0, 1, 1.5667, 'S35252', 1, '*'),
(1206, 'sharks', 'sharks', 0, 0, 0.4, 'S620', 1, '*'),
(1207, 'sharks in', 'sharks in', 0, 1, 1.3, 'S625', 1, '*'),
(1208, 'sharks in a', 'sharks in a', 0, 1, 1.3667, 'S625', 1, '*'),
(1209, 'some large', 'some large', 0, 1, 1.3333, 'S5462', 1, '*'),
(1210, 'some large killer', 'some large killer', 0, 1, 1.5667, 'S546246', 1, '*'),
(1211, 'sunbathing', 'sunbathing', 0, 0, 0.6667, 'S51352', 1, '*'),
(1212, 'sunbathing and', 'sunbathing and', 0, 1, 1.4667, 'S5135253', 1, '*'),
(1213, 'sunbathing and doing', 'sunbathing and doing', 0, 1, 1.6667, 'S513525352', 1, '*'),
(1214, 'swimming', 'swimming', 0, 0, 0.5333, 'S520', 1, '*'),
(1215, 'swimming sunbathing', 'swimming sunbathing', 0, 1, 1.6333, 'S5251352', 1, '*'),
(1216, 'swimming sunbathing and', 'swimming sunbathing and', 0, 1, 1.7667, 'S525135253', 1, '*'),
(1217, 'tank', 'tank', 0, 0, 0.2667, 'T520', 1, '*'),
(1218, 'tank in', 'tank in', 0, 1, 1.2333, 'T525', 1, '*'),
(1219, 'tank in the', 'tank in the', 0, 1, 1.3667, 'T5253', 1, '*'),
(1220, 'the biggest', 'the biggest', 0, 1, 1.3667, 'T123', 1, '*'),
(1221, 'the biggest in', 'the biggest in', 0, 1, 1.4667, 'T1235', 1, '*'),
(1222, 'the center', 'the center', 0, 1, 1.3333, 'T2536', 3, '*'),
(1223, 'the center of', 'the center of', 0, 1, 1.4333, 'T25361', 3, '*'),
(1224, 'the country', 'the country', 0, 1, 1.3667, 'T2536', 3, '*'),
(1225, 'the country there', 'the country there', 0, 1, 1.5667, 'T253636', 1, '*'),
(1226, 'them', 'them', 0, 0, 0.2667, 'T500', 1, '*'),
(1227, 'them swimming', 'them swimming', 0, 1, 1.4333, 'T5252', 1, '*'),
(1228, 'them swimming sunbathing', 'them swimming sunbathing', 0, 1, 1.8, 'T525251352', 1, '*'),
(1229, 'there are', 'there are', 0, 1, 1.3, 'T600', 5, '*'),
(1230, 'there are also', 'there are also', 0, 1, 1.4667, 'T642', 2, '*'),
(1231, 'there is a', 'there is a', 0, 1, 1.3333, 'T620', 4, '*'),
(1232, 'these', 'these', 0, 0, 0.3333, 'T200', 1, '*'),
(1233, 'these fish', 'these fish', 0, 1, 1.3333, 'T212', 1, '*'),
(1234, 'tricks', 'tricks', 0, 0, 0.4, 'T620', 1, '*'),
(1235, 'tricks there', 'tricks there', 0, 1, 1.4, 'T6236', 1, '*'),
(1236, 'tricks there are', 'tricks there are', 0, 1, 1.5333, 'T6236', 1, '*'),
(1237, 'whales', 'whales', 0, 0, 0.4, 'W420', 1, '*'),
(1238, 'whales and', 'whales and', 0, 1, 1.3333, 'W4253', 1, '*'),
(1239, 'whales and sharks', 'whales and sharks', 0, 1, 1.5667, 'W4253262', 1, '*'),
(1240, 'you can see', 'you can see', 0, 1, 1.3667, 'Y252', 1, '*'),
(1264, '1600s', '1600s', 0, 0, 0.3333, 'S000', 1, '*'),
(1265, '1600s and', '1600s and', 0, 1, 1.3, 'S530', 1, '*'),
(1266, '1600s and even', '1600s and even', 0, 1, 1.4667, 'S5315', 1, '*'),
(1267, 'a house', 'a house', 0, 1, 1.2333, 'A200', 1, '*'),
(1268, 'a house from', 'a house from', 0, 1, 1.4, 'A2165', 1, '*'),
(1269, 'a steam', 'a steam', 0, 1, 1.2333, 'A235', 1, '*'),
(1270, 'a steam train', 'a steam train', 0, 1, 1.4333, 'A235365', 1, '*'),
(1271, 'airplanes', 'airplanes', 0, 0, 0.6, 'A61452', 1, '*'),
(1272, 'airplanes fly', 'airplanes fly', 0, 1, 1.4333, 'A6145214', 1, '*'),
(1273, 'airplanes fly by', 'airplanes fly by', 0, 1, 1.5333, 'A61452141', 1, '*'),
(1274, 'and even', 'and even', 0, 1, 1.2667, 'A5315', 1, '*'),
(1275, 'and even see', 'and even see', 0, 1, 1.4, 'A53152', 1, '*'),
(1276, 'artifacts', 'artifacts', 0, 0, 0.6, 'A631232', 1, '*'),
(1277, 'artifacts from', 'artifacts from', 0, 1, 1.4667, 'A631232165', 1, '*'),
(1278, 'artifacts from throughout', 'artifacts from throughout', 0, 1, 1.8333, 'A6312321653623', 1, '*'),
(1279, 'by', 'by', 0, 0, 0.1333, 'B000', 3, '*'),
(1280, 'by on', 'by on', 0, 1, 1.1667, 'B500', 1, '*'),
(1281, 'by on the', 'by on the', 0, 1, 1.3, 'B530', 1, '*'),
(1282, 'can ride', 'can ride', 0, 1, 1.2667, 'C563', 1, '*'),
(1283, 'can ride a', 'can ride a', 0, 1, 1.3333, 'C563', 1, '*'),
(1284, 'city''s', 'city', 0, 0, 0.4, 'C320', 1, '*'),
(1285, 'city''s history', 'city history', 0, 1, 1.4667, 'C3236', 1, '*'),
(1286, 'city''s history here', 'city history here', 0, 1, 1.6333, 'C3236', 1, '*'),
(1287, 'contains', 'contains', 0, 0, 0.5333, 'C5352', 1, '*'),
(1288, 'contains artifacts', 'contains artifacts', 0, 1, 1.6, 'C5352631232', 1, '*'),
(1289, 'contains artifacts from', 'contains artifacts from', 0, 1, 1.7667, 'C5352631232165', 1, '*'),
(1290, 'even', 'even', 0, 0, 0.2667, 'E150', 1, '*'),
(1291, 'even see', 'even see', 0, 1, 1.2667, 'E152', 1, '*'),
(1292, 'even see old-fashioned', 'even see old-fashioned', 0, 1, 1.7333, 'E152431253', 1, '*'),
(1293, 'fly', 'fly', 0, 0, 0.2, 'F400', 2, '*'),
(1294, 'fly by', 'fly by', 0, 1, 1.2, 'F410', 1, '*'),
(1295, 'fly by on', 'fly by on', 0, 1, 1.3, 'F415', 1, '*'),
(1296, 'from the 1600s', 'from the 1600s', 0, 1, 1.4667, 'F6532', 1, '*'),
(1297, 'from throughout', 'from throughout', 0, 1, 1.5, 'F653623', 1, '*'),
(1298, 'from throughout the', 'from throughout the', 0, 1, 1.6333, 'F653623', 1, '*'),
(1299, 'here you', 'here you', 0, 1, 1.2667, 'H600', 1, '*'),
(1300, 'here you can', 'here you can', 0, 1, 1.4, 'H625', 1, '*'),
(1301, 'history here', 'history here', 0, 1, 1.4, 'H236', 1, '*'),
(1302, 'history here you', 'history here you', 0, 1, 1.5333, 'H236', 1, '*'),
(1303, 'house', 'house', 0, 0, 0.3333, 'H200', 1, '*'),
(1304, 'house from', 'house from', 0, 1, 1.3333, 'H2165', 1, '*'),
(1305, 'house from the', 'house from the', 0, 1, 1.4667, 'H21653', 1, '*'),
(1306, 'joomlaville museum', 'joomlaville museum', 0, 1, 1.6, 'J5414525', 1, '*'),
(1307, 'joomlaville museum contains', 'joomlaville museum contains', 0, 1, 1.9, 'J541452525352', 1, '*'),
(1308, 'museum contains', 'museum contains', 0, 1, 1.5, 'M2525352', 1, '*'),
(1309, 'museum contains artifacts', 'museum contains artifacts', 0, 1, 1.8333, 'M2525352631232', 1, '*'),
(1310, 'old-fashioned', 'old-fashioned', 0, 0, 0.8667, 'O431253', 1, '*'),
(1311, 'old-fashioned airplanes', 'old-fashioned airplanes', 0, 1, 1.7667, 'O43125361452', 1, '*'),
(1312, 'old-fashioned airplanes fly', 'old-fashioned airplanes fly', 0, 1, 1.9, 'O4312536145214', 1, '*'),
(1313, 'on the', 'on the', 0, 1, 1.2, 'O530', 2, '*'),
(1314, 'on the weekends', 'on the weekends', 0, 1, 1.5, 'O532532', 1, '*'),
(1315, 'ride', 'ride', 0, 0, 0.2667, 'R300', 1, '*'),
(1316, 'ride a', 'ride a', 0, 1, 1.2, 'R300', 1, '*'),
(1317, 'ride a steam', 'ride a steam', 0, 1, 1.4, 'R3235', 1, '*'),
(1318, 'see a', 'see a', 0, 1, 1.1667, 'S000', 1, '*'),
(1319, 'see a house', 'see a house', 0, 1, 1.3667, 'S000', 1, '*'),
(1320, 'see old-fashioned', 'see old-fashioned', 0, 1, 1.5667, 'S431253', 1, '*'),
(1321, 'see old-fashioned airplanes', 'see old-fashioned airplanes', 0, 1, 1.9, 'S43125361452', 1, '*'),
(1322, 'steam', 'steam', 0, 0, 0.3333, 'S350', 1, '*'),
(1323, 'steam train', 'steam train', 0, 1, 1.3667, 'S35365', 1, '*'),
(1324, 'steam train see', 'steam train see', 0, 1, 1.5, 'S353652', 1, '*'),
(1325, 'the 1600s', 'the 1600s', 0, 1, 1.3, 'T200', 1, '*'),
(1326, 'the 1600s and', 'the 1600s and', 0, 1, 1.4333, 'T253', 1, '*'),
(1327, 'the city''s', 'the city', 0, 1, 1.3333, 'T232', 1, '*'),
(1328, 'the city''s history', 'the city history', 0, 1, 1.6, 'T23236', 1, '*'),
(1329, 'the joomlaville', 'the joomlaville', 0, 1, 1.5, 'T25414', 3, '*'),
(1330, 'the joomlaville museum', 'the joomlaville museum', 0, 1, 1.7333, 'T25414525', 1, '*'),
(1331, 'the weekends', 'the weekends', 0, 1, 1.4, 'T2532', 1, '*'),
(1332, 'throughout', 'throughout', 0, 0, 0.6667, 'T623', 2, '*'),
(1333, 'throughout the', 'throughout the', 0, 1, 1.4667, 'T623', 2, '*'),
(1334, 'throughout the city''s', 'throughout the city', 0, 1, 1.7, 'T623232', 1, '*'),
(1335, 'train see', 'train see', 0, 1, 1.3, 'T652', 1, '*'),
(1336, 'train see a', 'train see a', 0, 1, 1.3667, 'T652', 1, '*'),
(1337, 'weekends', 'weekends', 0, 0, 0.5333, 'W2532', 2, '*'),
(1338, 'you can ride', 'you can ride', 0, 1, 1.4, 'Y2563', 1, '*'),
(1391, 'a big', 'a big', 0, 1, 1.1667, 'A120', 1, '*'),
(1392, 'a big event', 'a big event', 0, 1, 1.3667, 'A12153', 1, '*'),
(1393, 'and parties', 'and parties', 0, 1, 1.3667, 'A531632', 1, '*'),
(1394, 'and parties throughout', 'and parties throughout', 0, 1, 1.7333, 'A5316323623', 1, '*'),
(1395, 'anyone', 'anyone', 0, 0, 0.4, 'A500', 1, '*'),
(1396, 'anyone in', 'anyone in', 0, 1, 1.3, 'A500', 1, '*'),
(1397, 'anyone in joomlaville', 'anyone in joomlaville', 0, 1, 1.7, 'A525414', 1, '*'),
(1398, 'are parades', 'are parades', 0, 1, 1.3667, 'A61632', 1, '*'),
(1399, 'are parades fireworks', 'are parades fireworks', 0, 1, 1.7, 'A61632162', 1, '*'),
(1400, 'as anyone', 'as anyone', 0, 1, 1.3, 'A250', 1, '*'),
(1401, 'as anyone in', 'as anyone in', 0, 1, 1.4, 'A250', 1, '*'),
(1402, 'as well', 'as well', 0, 1, 1.2333, 'A240', 1, '*'),
(1403, 'as well as', 'as well as', 0, 1, 1.3333, 'A242', 1, '*'),
(1404, 'big', 'big', 0, 0, 0.2, 'B200', 2, '*'),
(1405, 'big event', 'big event', 0, 1, 1.3, 'B2153', 1, '*'),
(1406, 'big event throughout', 'big event throughout', 0, 1, 1.6667, 'B2153623', 1, '*'),
(1407, 'but', 'but', 0, 0, 0.2, 'B300', 2, '*'),
(1408, 'but we', 'but we', 0, 1, 1.2, 'B300', 1, '*'),
(1409, 'but we celebrate', 'but we celebrate', 0, 1, 1.5333, 'B324163', 1, '*'),
(1410, 'celebrate as', 'celebrate as', 0, 1, 1.4, 'C41632', 1, '*'),
(1411, 'celebrate as well', 'celebrate as well', 0, 1, 1.5667, 'C416324', 1, '*'),
(1412, 'country but', 'country but', 0, 1, 1.3667, 'C53613', 1, '*'),
(1413, 'country but we', 'country but we', 0, 1, 1.4667, 'C53613', 1, '*'),
(1414, 'day is', 'day is', 0, 1, 1.2, 'D200', 3, '*'),
(1415, 'day is a', 'day is a', 0, 1, 1.2667, 'D200', 3, '*'),
(1416, 'event', 'event', 0, 0, 0.3333, 'E153', 2, '*'),
(1417, 'event throughout', 'event throughout', 0, 1, 1.5333, 'E153623', 1, '*'),
(1418, 'event throughout the', 'event throughout the', 0, 1, 1.6667, 'E153623', 1, '*'),
(1419, 'fireworks', 'fireworks', 0, 0, 0.6, 'F620', 1, '*'),
(1420, 'fireworks and', 'fireworks and', 0, 1, 1.4333, 'F6253', 1, '*'),
(1421, 'fireworks and parties', 'fireworks and parties', 0, 1, 1.7, 'F62531632', 1, '*'),
(1422, 'in joomlaville', 'in joomlaville', 0, 1, 1.4667, 'I525414', 4, '*'),
(1423, 'in joomlaville there', 'in joomlaville there', 0, 1, 1.6667, 'I52541436', 2, '*'),
(1424, 'independence day is', 'independence day is', 0, 1, 1.6333, 'I531535232', 1, '*'),
(1425, 'is a big', 'is a big', 0, 1, 1.2667, 'I212', 1, '*'),
(1426, 'joomlaville there', 'joomlaville there', 0, 1, 1.5667, 'J541436', 2, '*'),
(1427, 'joomlaville there are', 'joomlaville there are', 0, 1, 1.7, 'J541436', 1, '*'),
(1428, 'parades', 'parades', 0, 0, 0.4667, 'P632', 1, '*'),
(1429, 'parades fireworks', 'parades fireworks', 0, 1, 1.5667, 'P632162', 1, '*'),
(1430, 'parades fireworks and', 'parades fireworks and', 0, 1, 1.7, 'P63216253', 1, '*'),
(1431, 'parties', 'parties', 0, 0, 0.4667, 'P632', 1, '*'),
(1432, 'parties throughout', 'parties throughout', 0, 1, 1.6, 'P6323623', 1, '*'),
(1433, 'parties throughout the', 'parties throughout the', 0, 1, 1.7333, 'P6323623', 1, '*'),
(1434, 'the country but', 'the country but', 0, 1, 1.5, 'T253613', 1, '*'),
(1435, 'the day', 'the day', 0, 1, 1.2333, 'T000', 2, '*'),
(1436, 'there are parades', 'there are parades', 0, 1, 1.5667, 'T61632', 1, '*'),
(1437, 'throughout the country', 'throughout the country', 0, 1, 1.7333, 'T6232536', 1, '*'),
(1438, 'throughout the day', 'throughout the day', 0, 1, 1.6, 'T623', 1, '*'),
(1439, 'we celebrate', 'we celebrate', 0, 1, 1.4, 'W24163', 1, '*'),
(1440, 'we celebrate as', 'we celebrate as', 0, 1, 1.5, 'W241632', 1, '*'),
(1441, 'well', 'well', 0, 0, 0.2667, 'W400', 1, '*'),
(1442, 'well as', 'well as', 0, 1, 1.2333, 'W420', 1, '*'),
(1443, 'well as anyone', 'well as anyone', 0, 1, 1.4667, 'W425', 1, '*'),
(1454, 'a large joomla', 'a large joomla', 0, 1, 1.4667, 'A46254', 1, '*'),
(1455, 'a parade', 'a parade', 0, 1, 1.2667, 'A163', 1, '*'),
(1456, 'a parade through', 'a parade through', 0, 1, 1.5333, 'A16362', 1, '*'),
(1457, 'a very', 'a very', 0, 1, 1.2, 'A160', 2, '*'),
(1458, 'a very good', 'a very good', 0, 1, 1.3667, 'A1623', 2, '*'),
(1459, 'and antique', 'and antique', 0, 1, 1.3667, 'A53532', 1, '*'),
(1460, 'and antique cars', 'and antique cars', 0, 1, 1.5333, 'A5353262', 1, '*'),
(1461, 'and bars', 'and bars', 0, 1, 1.2667, 'A53162', 1, '*'),
(1462, 'and bars are', 'and bars are', 0, 1, 1.4, 'A531626', 1, '*'),
(1463, 'antique', 'antique', 0, 0, 0.4667, 'A532', 1, '*'),
(1464, 'antique cars', 'antique cars', 0, 1, 1.4, 'A53262', 1, '*'),
(1465, 'are open', 'are open', 0, 1, 1.2667, 'A615', 1, '*'),
(1466, 'are open for', 'are open for', 0, 1, 1.4, 'A61516', 1, '*'),
(1467, 'at the stroke', 'at the stroke', 0, 1, 1.4333, 'A32362', 1, '*'),
(1468, 'bars', 'bars', 0, 0, 0.2667, 'B620', 1, '*'),
(1469, 'bars are', 'bars are', 0, 1, 1.2667, 'B626', 1, '*'),
(1470, 'bars are open', 'bars are open', 0, 1, 1.4333, 'B62615', 1, '*'),
(1471, 'before', 'before', 0, 0, 0.4, 'B600', 2, '*'),
(1472, 'before lots', 'before lots', 0, 1, 1.3667, 'B6432', 1, '*'),
(1473, 'before lots of', 'before lots of', 0, 1, 1.4667, 'B64321', 1, '*'),
(1474, 'cars', 'cars', 0, 0, 0.2667, 'C620', 1, '*'),
(1475, 'celebrate at', 'celebrate at', 0, 1, 1.4, 'C4163', 1, '*'),
(1476, 'celebrate at the', 'celebrate at the', 0, 1, 1.5333, 'C4163', 1, '*'),
(1477, 'center of town', 'center of town', 0, 1, 1.4667, 'C536135', 1, '*'),
(1478, 'day before', 'day before', 0, 1, 1.3333, 'D160', 1, '*'),
(1479, 'day before lots', 'day before lots', 0, 1, 1.5, 'D16432', 1, '*'),
(1480, 'day itself', 'day itself', 0, 1, 1.3333, 'D241', 1, '*'),
(1481, 'day itself there', 'day itself there', 0, 1, 1.5333, 'D24136', 1, '*'),
(1482, 'dropped', 'dropped', 0, 0, 0.4667, 'D613', 1, '*'),
(1483, 'dropped from', 'dropped from', 0, 1, 1.4, 'D613165', 1, '*'),
(1484, 'dropped from in', 'dropped from in', 0, 1, 1.5, 'D613165', 1, '*'),
(1485, 'floats', 'floats', 0, 0, 0.4, 'F432', 1, '*'),
(1486, 'floats and', 'floats and', 0, 1, 1.3333, 'F43253', 1, '*'),
(1487, 'floats and antique', 'floats and antique', 0, 1, 1.6, 'F43253532', 1, '*'),
(1488, 'for you', 'for you', 0, 1, 1.2333, 'F600', 1, '*'),
(1489, 'for you to', 'for you to', 0, 1, 1.3333, 'F630', 1, '*'),
(1490, 'from in', 'from in', 0, 1, 1.2333, 'F650', 1, '*'),
(1491, 'from in front', 'from in front', 0, 1, 1.4333, 'F651653', 1, '*'),
(1492, 'front', 'front', 0, 0, 0.3333, 'F653', 1, '*'),
(1493, 'front of', 'front of', 0, 1, 1.2667, 'F6531', 1, '*'),
(1494, 'front of town', 'front of town', 0, 1, 1.4333, 'F653135', 1, '*'),
(1495, 'hall', 'hall', 0, 0, 0.2667, 'H400', 1, '*'),
(1496, 'hall on', 'hall on', 0, 1, 1.2333, 'H450', 1, '*'),
(1497, 'hall on the', 'hall on the', 0, 1, 1.3667, 'H453', 1, '*'),
(1498, 'in front', 'in front', 0, 1, 1.2667, 'I51653', 1, '*'),
(1499, 'in front of', 'in front of', 0, 1, 1.3667, 'I516531', 1, '*'),
(1500, 'is a parade', 'is a parade', 0, 1, 1.3667, 'I2163', 1, '*'),
(1501, 'is a very', 'is a very', 0, 1, 1.3, 'I216', 2, '*'),
(1502, 'is dropped', 'is dropped', 0, 1, 1.3333, 'I23613', 1, '*'),
(1503, 'is dropped from', 'is dropped from', 0, 1, 1.5, 'I23613165', 1, '*'),
(1504, 'itself', 'itself', 0, 0, 0.4, 'I3241', 1, '*'),
(1505, 'itself there', 'itself there', 0, 1, 1.4, 'I324136', 1, '*'),
(1506, 'itself there is', 'itself there is', 0, 1, 1.5, 'I3241362', 1, '*'),
(1507, 'joomla', 'joomla', 0, 0, 0.4, 'J540', 2, '*'),
(1508, 'joomla logo', 'joomla logo', 0, 1, 1.3667, 'J542', 1, '*'),
(1509, 'joomla logo is', 'joomla logo is', 0, 1, 1.4667, 'J542', 1, '*'),
(1510, 'joomlaville on', 'joomlaville on', 0, 1, 1.4667, 'J54145', 1, '*'),
(1511, 'joomlaville on the', 'joomlaville on the', 0, 1, 1.6, 'J541453', 1, '*'),
(1512, 'large joomla', 'large joomla', 0, 1, 1.4, 'L6254', 1, '*'),
(1513, 'large joomla logo', 'large joomla logo', 0, 1, 1.5667, 'L62542', 1, '*'),
(1514, 'logo', 'logo', 0, 0, 0.2667, 'L200', 1, '*'),
(1515, 'logo is', 'logo is', 0, 1, 1.2333, 'L200', 1, '*'),
(1516, 'logo is dropped', 'logo is dropped', 0, 1, 1.5, 'L23613', 1, '*'),
(1517, 'lots of', 'lots of', 0, 1, 1.2333, 'L321', 3, '*'),
(1518, 'lots of restaurants', 'lots of restaurants', 0, 1, 1.6333, 'L3216236532', 2, '*'),
(1519, 'midknight', 'midknight', 0, 0, 0.6, 'M32523', 1, '*'),
(1520, 'midknight a', 'midknight a', 0, 1, 1.3667, 'M32523', 1, '*'),
(1521, 'midknight a large', 'midknight a large', 0, 1, 1.5667, 'M32523462', 1, '*'),
(1522, 'morning', 'morning', 0, 0, 0.4667, 'M652', 1, '*'),
(1523, 'morning of', 'morning of', 0, 1, 1.3333, 'M6521', 1, '*'),
(1524, 'morning of new', 'morning of new', 0, 1, 1.4667, 'M65215', 1, '*'),
(1525, 'new year''s', 'new year', 0, 1, 1.3333, 'N620', 1, '*'),
(1526, 'new year''s day', 'new year day', 0, 1, 1.4667, 'N623', 1, '*'),
(1527, 'of midknight', 'of midknight', 0, 1, 1.4, 'O1532523', 1, '*'),
(1528, 'of midknight a', 'of midknight a', 0, 1, 1.4667, 'O1532523', 1, '*'),
(1529, 'of new', 'of new', 0, 1, 1.2, 'O150', 2, '*'),
(1530, 'of new year''s', 'of new year', 0, 1, 1.4333, 'O1562', 1, '*'),
(1531, 'of restaurants', 'of restaurants', 0, 1, 1.4667, 'O16236532', 2, '*'),
(1532, 'of restaurants and', 'of restaurants and', 0, 1, 1.6, 'O1623653253', 1, '*'),
(1533, 'of town', 'of town', 0, 1, 1.2333, 'O135', 2, '*'),
(1534, 'of town hall', 'of town hall', 0, 1, 1.4, 'O1354', 1, '*'),
(1535, 'of town with', 'of town with', 0, 1, 1.4, 'O1353', 1, '*'),
(1536, 'on the day', 'on the day', 0, 1, 1.3333, 'O530', 1, '*'),
(1537, 'on the morning', 'on the morning', 0, 1, 1.4667, 'O535652', 1, '*'),
(1538, 'open', 'open', 0, 0, 0.2667, 'O150', 1, '*'),
(1539, 'open for', 'open for', 0, 1, 1.2667, 'O1516', 1, '*'),
(1540, 'open for you', 'open for you', 0, 1, 1.4, 'O1516', 1, '*'),
(1541, 'parade', 'parade', 0, 0, 0.4, 'P630', 1, '*'),
(1542, 'parade through', 'parade through', 0, 1, 1.4667, 'P6362', 1, '*'),
(1543, 'parade through the', 'parade through the', 0, 1, 1.6, 'P63623', 1, '*'),
(1544, 'restaurants', 'restaurants', 0, 0, 0.7333, 'R236532', 2, '*'),
(1545, 'restaurants and', 'restaurants and', 0, 1, 1.5, 'R23653253', 1, '*'),
(1546, 'restaurants and bars', 'restaurants and bars', 0, 1, 1.6667, 'R23653253162', 1, '*'),
(1547, 'stroke', 'stroke', 0, 0, 0.4, 'S362', 1, '*'),
(1548, 'stroke of', 'stroke of', 0, 1, 1.3, 'S3621', 1, '*'),
(1549, 'stroke of midknight', 'stroke of midknight', 0, 1, 1.6333, 'S3621532523', 1, '*'),
(1550, 'the day before', 'the day before', 0, 1, 1.4667, 'T160', 1, '*'),
(1551, 'the morning', 'the morning', 0, 1, 1.3667, 'T5652', 1, '*'),
(1552, 'the morning of', 'the morning of', 0, 1, 1.4667, 'T56521', 1, '*'),
(1553, 'the stroke', 'the stroke', 0, 1, 1.3333, 'T2362', 1, '*'),
(1554, 'the stroke of', 'the stroke of', 0, 1, 1.4333, 'T23621', 1, '*'),
(1555, 'through the center', 'through the center', 0, 1, 1.6, 'T6232536', 1, '*'),
(1556, 'to celebrate', 'to celebrate', 0, 1, 1.4, 'T24163', 1, '*'),
(1557, 'to celebrate at', 'to celebrate at', 0, 1, 1.5, 'T24163', 1, '*'),
(1558, 'town hall', 'town hall', 0, 1, 1.3, 'T540', 1, '*'),
(1559, 'town hall on', 'town hall on', 0, 1, 1.4, 'T545', 1, '*'),
(1560, 'town with', 'town with', 0, 1, 1.3, 'T530', 1, '*'),
(1561, 'town with floats', 'town with floats', 0, 1, 1.5333, 'T531432', 1, '*'),
(1562, 'very', 'very', 0, 0, 0.2667, 'V600', 2, '*'),
(1563, 'very good', 'very good', 0, 1, 1.3, 'V623', 2, '*'),
(1564, 'very good time', 'very good time', 0, 1, 1.4667, 'V6235', 1, '*'),
(1565, 'visit joomlaville on', 'visit joomlaville on', 0, 1, 1.6667, 'V23254145', 1, '*'),
(1566, 'with floats', 'with floats', 0, 1, 1.3667, 'W31432', 1, '*'),
(1567, 'with floats and', 'with floats and', 0, 1, 1.5, 'W3143253', 1, '*'),
(1568, 'year''s', 'year', 0, 0, 0.4, 'Y620', 1, '*'),
(1569, 'year''s day', 'year day', 0, 1, 1.3333, 'Y623', 1, '*'),
(1570, 'year''s day is', 'year day is', 0, 1, 1.4333, 'Y6232', 1, '*'),
(1571, 'year''s day itself', 'year day itself', 0, 1, 1.5667, 'Y623241', 1, '*'),
(1572, 'you to', 'you to', 0, 1, 1.2, 'Y300', 1, '*'),
(1573, 'you to celebrate', 'you to celebrate', 0, 1, 1.5333, 'Y324163', 1, '*'),
(1708, 'and every', 'and every', 0, 1, 1.3, 'A5316', 1, '*'),
(1709, 'and every two', 'and every two', 0, 1, 1.4333, 'A53163', 1, '*'),
(1710, 'around', 'around', 0, 0, 0.4, 'A653', 2, '*'),
(1711, 'around joomlaville', 'around joomlaville', 0, 1, 1.6, 'A65325414', 1, '*'),
(1712, 'around joomlaville the', 'around joomlaville the', 0, 1, 1.7333, 'A653254143', 1, '*'),
(1713, 'bus station is', 'bus station is', 0, 1, 1.4667, 'B2352', 1, '*'),
(1714, 'buses', 'buses', 0, 0, 0.3333, 'B200', 1, '*'),
(1715, 'buses leave', 'buses leave', 0, 1, 1.3667, 'B241', 1, '*'),
(1716, 'buses leave joomlaville', 'buses leave joomlaville', 0, 1, 1.7667, 'B24125414', 1, '*'),
(1717, 'cities', 'cities', 0, 0, 0.4, 'C320', 3, '*'),
(1718, 'cities around', 'cities around', 0, 1, 1.4333, 'C32653', 2, '*'),
(1719, 'cities around joomlaville', 'cities around joomlaville', 0, 1, 1.8333, 'C3265325414', 1, '*'),
(1720, 'every', 'every', 0, 0, 0.3333, 'E160', 3, '*'),
(1721, 'every hour', 'every hour', 0, 1, 1.3333, 'E160', 1, '*'),
(1722, 'every hour on', 'every hour on', 0, 1, 1.4333, 'E165', 1, '*'),
(1723, 'every two', 'every two', 0, 1, 1.3, 'E163', 1, '*'),
(1724, 'every two hours', 'every two hours', 0, 1, 1.5, 'E16362', 1, '*'),
(1725, 'get to', 'get to', 0, 1, 1.2, 'G300', 2, '*'),
(1726, 'get to cities', 'get to cities', 0, 1, 1.4333, 'G3232', 1, '*'),
(1727, 'good way', 'good way', 0, 1, 1.2667, 'G300', 1, '*'),
(1728, 'good way to', 'good way to', 0, 1, 1.3667, 'G300', 1, '*'),
(1729, 'hour on', 'hour on', 0, 1, 1.2333, 'H650', 1, '*'),
(1730, 'hour on weekdays', 'hour on weekdays', 0, 1, 1.5333, 'H65232', 1, '*'),
(1731, 'hours on', 'hours on', 0, 1, 1.2667, 'H625', 1, '*'),
(1732, 'hours on weekends', 'hours on weekends', 0, 1, 1.5667, 'H6252532', 1, '*'),
(1733, 'joomlaville every', 'joomlaville every', 0, 1, 1.5667, 'J541416', 1, '*'),
(1734, 'joomlaville every hour', 'joomlaville every hour', 0, 1, 1.7333, 'J541416', 1, '*'),
(1735, 'joomlaville the', 'joomlaville the', 0, 1, 1.5, 'J54143', 1, '*'),
(1736, 'joomlaville the buses', 'joomlaville the buses', 0, 1, 1.7, 'J5414312', 1, '*'),
(1737, 'leave', 'leave', 0, 0, 0.3333, 'L100', 1, '*'),
(1738, 'leave joomlaville', 'leave joomlaville', 0, 1, 1.5667, 'L125414', 1, '*'),
(1739, 'leave joomlaville every', 'leave joomlaville every', 0, 1, 1.7667, 'L12541416', 1, '*'),
(1740, 'on weekdays', 'on weekdays', 0, 1, 1.3667, 'O5232', 1, '*'),
(1741, 'on weekdays and', 'on weekdays and', 0, 1, 1.5, 'O523253', 1, '*'),
(1742, 'on weekends', 'on weekends', 0, 1, 1.3667, 'O52532', 1, '*'),
(1743, 'station is', 'station is', 0, 1, 1.3333, 'S352', 2, '*'),
(1744, 'station is a', 'station is a', 0, 1, 1.4, 'S352', 2, '*'),
(1745, 'the bus', 'the bus', 0, 1, 1.2333, 'T120', 1, '*'),
(1746, 'the bus station', 'the bus station', 0, 1, 1.5, 'T1235', 1, '*'),
(1747, 'the buses', 'the buses', 0, 1, 1.3, 'T120', 1, '*'),
(1748, 'the buses leave', 'the buses leave', 0, 1, 1.5, 'T1241', 1, '*'),
(1749, 'to cities', 'to cities', 0, 1, 1.3, 'T232', 1, '*'),
(1750, 'to cities around', 'to cities around', 0, 1, 1.5333, 'T232653', 1, '*'),
(1751, 'to get', 'to get', 0, 1, 1.2, 'T230', 2, '*'),
(1752, 'to get to', 'to get to', 0, 1, 1.3, 'T230', 2, '*'),
(1753, 'two', 'two', 0, 0, 0.2, 'T000', 3, '*'),
(1754, 'two hours', 'two hours', 0, 1, 1.3, 'T620', 1, '*'),
(1755, 'two hours on', 'two hours on', 0, 1, 1.4, 'T625', 1, '*'),
(1756, 'very good way', 'very good way', 0, 1, 1.4333, 'V623', 1, '*'),
(1757, 'way to', 'way to', 0, 1, 1.2, 'W300', 2, '*'),
(1758, 'way to get', 'way to get', 0, 1, 1.3333, 'W323', 2, '*'),
(1759, 'weekdays', 'weekdays', 0, 0, 0.5333, 'W232', 1, '*'),
(1760, 'weekdays and', 'weekdays and', 0, 1, 1.4, 'W23253', 1, '*'),
(1761, 'weekdays and every', 'weekdays and every', 0, 1, 1.6, 'W2325316', 1, '*'),
(1771, 'a great way', 'a great way', 0, 1, 1.3667, 'A263', 1, '*'),
(1772, 'and comfortable', 'and comfortable', 0, 1, 1.5, 'A532516314', 1, '*'),
(1773, 'and comfortable the', 'and comfortable the', 0, 1, 1.6333, 'A5325163143', 1, '*'),
(1774, 'and next', 'and next', 0, 1, 1.2667, 'A53523', 1, '*'),
(1775, 'and next to', 'and next to', 0, 1, 1.3667, 'A53523', 1, '*'),
(1776, 'are quick', 'are quick', 0, 1, 1.3, 'A620', 1, '*'),
(1777, 'are quick quiet', 'are quick quiet', 0, 1, 1.5, 'A623', 1, '*'),
(1778, 'center of joomaville', 'center of joomaville', 0, 1, 1.6667, 'C53612514', 1, '*'),
(1779, 'close', 'close', 0, 0, 0.3333, 'C420', 2, '*'),
(1780, 'close to', 'close to', 0, 1, 1.2667, 'C423', 2, '*'),
(1781, 'close to the', 'close to the', 0, 1, 1.4, 'C423', 2, '*'),
(1782, 'comfortable', 'comfortable', 0, 0, 0.7333, 'C516314', 1, '*'),
(1783, 'comfortable the', 'comfortable the', 0, 1, 1.5, 'C5163143', 1, '*'),
(1784, 'comfortable the train', 'comfortable the train', 0, 1, 1.7, 'C516314365', 1, '*'),
(1785, 'country our', 'country our', 0, 1, 1.3667, 'C536', 1, '*'),
(1786, 'country our trains', 'country our trains', 0, 1, 1.6, 'C5363652', 1, '*'),
(1787, 'get to other', 'get to other', 0, 1, 1.4, 'G360', 1, '*'),
(1788, 'great way', 'great way', 0, 1, 1.3, 'G630', 1, '*'),
(1789, 'great way to', 'great way to', 0, 1, 1.4, 'G630', 1, '*'),
(1790, 'is close', 'is close', 0, 1, 1.2667, 'I242', 1, '*'),
(1791, 'is close to', 'is close to', 0, 1, 1.3667, 'I2423', 1, '*'),
(1792, 'joomaville', 'joomaville', 0, 0, 0.6667, 'J514', 1, '*'),
(1793, 'joomaville and', 'joomaville and', 0, 1, 1.4667, 'J51453', 1, '*'),
(1794, 'joomaville and next', 'joomaville and next', 0, 1, 1.6333, 'J51453523', 1, '*'),
(1795, 'joomlaville train', 'joomlaville train', 0, 1, 1.5667, 'J5414365', 1, '*'),
(1796, 'joomlaville train station', 'joomlaville train station', 0, 1, 1.8333, 'J5414365235', 1, '*'),
(1797, 'next', 'next', 0, 0, 0.2667, 'N230', 1, '*'),
(1798, 'next to', 'next to', 0, 1, 1.2333, 'N230', 1, '*'),
(1799, 'next to the', 'next to the', 0, 1, 1.3667, 'N230', 1, '*'),
(1800, 'of joomaville', 'of joomaville', 0, 1, 1.4333, 'O12514', 1, '*'),
(1801, 'of joomaville and', 'of joomaville and', 0, 1, 1.5667, 'O1251453', 1, '*'),
(1802, 'of the country', 'of the country', 0, 1, 1.4667, 'O132536', 1, '*'),
(1803, 'other parts', 'other parts', 0, 1, 1.3667, 'O361632', 1, '*'),
(1804, 'other parts of', 'other parts of', 0, 1, 1.4667, 'O3616321', 1, '*'),
(1805, 'our trains', 'our trains', 0, 1, 1.3333, 'O63652', 1, '*'),
(1806, 'our trains are', 'our trains are', 0, 1, 1.4667, 'O636526', 1, '*'),
(1807, 'parts', 'parts', 0, 0, 0.3333, 'P632', 1, '*'),
(1808, 'parts of', 'parts of', 0, 1, 1.2667, 'P6321', 1, '*'),
(1809, 'parts of the', 'parts of the', 0, 1, 1.4, 'P63213', 1, '*'),
(1810, 'quick', 'quick', 0, 0, 0.3333, 'Q000', 1, '*'),
(1811, 'quick quiet', 'quick quiet', 0, 1, 1.3667, 'Q300', 1, '*'),
(1812, 'quick quiet and', 'quick quiet and', 0, 1, 1.5, 'Q353', 1, '*'),
(1813, 'quiet', 'quiet', 0, 0, 0.3333, 'Q300', 1, '*'),
(1814, 'quiet and', 'quiet and', 0, 1, 1.3, 'Q353', 1, '*'),
(1815, 'quiet and comfortable', 'quiet and comfortable', 0, 1, 1.7, 'Q3532516314', 1, '*'),
(1816, 'station is close', 'station is close', 0, 1, 1.5333, 'S35242', 1, '*'),
(1817, 'the country our', 'the country our', 0, 1, 1.5, 'T2536', 1, '*'),
(1818, 'the joomlaville train', 'the joomlaville train', 0, 1, 1.7, 'T25414365', 1, '*'),
(1819, 'the train', 'the train', 0, 1, 1.3, 'T650', 1, '*'),
(1820, 'the train station', 'the train station', 0, 1, 1.5667, 'T65235', 1, '*'),
(1821, 'to other', 'to other', 0, 1, 1.2667, 'T600', 1, '*'),
(1822, 'to other parts', 'to other parts', 0, 1, 1.4667, 'T61632', 1, '*'),
(1823, 'to the', 'to the', 0, 1, 1.2, 'T000', 2, '*'),
(1824, 'to the aquarium', 'to the aquarium', 0, 1, 1.5, 'T265', 1, '*'),
(1825, 'to the center', 'to the center', 0, 1, 1.4333, 'T2536', 1, '*'),
(1826, 'train station is', 'train station is', 0, 1, 1.5333, 'T652352', 1, '*'),
(1827, 'trains', 'trains', 0, 0, 0.4, 'T652', 1, '*'),
(1828, 'trains are', 'trains are', 0, 1, 1.3333, 'T6526', 1, '*'),
(1829, 'trains are quick', 'trains are quick', 0, 1, 1.5333, 'T65262', 1, '*'),
(1834, 'a great place', 'a great place', 0, 1, 1.4333, 'A263142', 1, '*'),
(1835, 'a team', 'a team', 0, 1, 1.2, 'A350', 1, '*');
INSERT INTO `sg0we_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(1836, 'a team of', 'a team of', 0, 1, 1.3, 'A351', 1, '*'),
(1837, 'africa', 'africa', 0, 0, 0.4, 'A162', 1, '*'),
(1838, 'africa north', 'africa north', 0, 1, 1.4, 'A162563', 1, '*'),
(1839, 'africa north and', 'africa north and', 0, 1, 1.5333, 'A16256353', 1, '*'),
(1840, 'airport is', 'airport is', 0, 1, 1.3333, 'A61632', 1, '*'),
(1841, 'airport is a', 'airport is a', 0, 1, 1.4, 'A61632', 1, '*'),
(1842, 'airport is located', 'airport is located', 0, 1, 1.6, 'A61632423', 1, '*'),
(1843, 'america', 'america', 0, 0, 0.4667, 'A562', 1, '*'),
(1844, 'america food', 'america food', 0, 1, 1.4, 'A56213', 1, '*'),
(1845, 'america food if', 'america food if', 0, 1, 1.5, 'A562131', 1, '*'),
(1846, 'and one', 'and one', 0, 1, 1.2333, 'A535', 1, '*'),
(1847, 'and one for', 'and one for', 0, 1, 1.3667, 'A53516', 1, '*'),
(1848, 'and south', 'and south', 0, 1, 1.3, 'A5323', 1, '*'),
(1849, 'and south america', 'and south america', 0, 1, 1.5667, 'A5323562', 1, '*'),
(1850, 'and was', 'and was', 0, 1, 1.2333, 'A532', 1, '*'),
(1851, 'and was designed', 'and was designed', 0, 1, 1.5333, 'A5323253', 1, '*'),
(1852, 'architects', 'architects', 0, 0, 0.6667, 'A623232', 1, '*'),
(1853, 'architects terminals', 'architects terminals', 0, 1, 1.6667, 'A62323236542', 1, '*'),
(1854, 'architects terminals there', 'architects terminals there', 0, 1, 1.8667, 'A6232323654236', 1, '*'),
(1855, 'are lots', 'are lots', 0, 1, 1.2667, 'A6432', 1, '*'),
(1856, 'are lots of', 'are lots of', 0, 1, 1.3667, 'A64321', 1, '*'),
(1857, 'are two', 'are two', 0, 1, 1.2333, 'A630', 1, '*'),
(1858, 'are two terminals', 'are two terminals', 0, 1, 1.5667, 'A636542', 1, '*'),
(1859, 'asia', 'asia', 0, 0, 0.2667, 'A200', 1, '*'),
(1860, 'asia africa', 'asia africa', 0, 1, 1.3667, 'A2162', 1, '*'),
(1861, 'asia africa north', 'asia africa north', 0, 1, 1.5667, 'A2162563', 1, '*'),
(1862, 'before your', 'before your', 0, 1, 1.3667, 'B600', 1, '*'),
(1863, 'before your flight', 'before your flight', 0, 1, 1.6, 'B61423', 1, '*'),
(1864, 'by a', 'by a', 0, 1, 1.1333, 'B000', 1, '*'),
(1865, 'by a team', 'by a team', 0, 1, 1.3, 'B350', 1, '*'),
(1866, 'can eat', 'can eat', 0, 1, 1.2333, 'C530', 1, '*'),
(1867, 'can eat location', 'can eat location', 0, 1, 1.5333, 'C534235', 1, '*'),
(1868, 'can fly', 'can fly', 0, 1, 1.2333, 'C514', 1, '*'),
(1869, 'can fly directly', 'can fly directly', 0, 1, 1.5333, 'C51436234', 1, '*'),
(1870, 'cities in', 'cities in', 0, 1, 1.3, 'C325', 1, '*'),
(1871, 'cities in europe', 'cities in europe', 0, 1, 1.5333, 'C32561', 1, '*'),
(1872, 'clean', 'clean', 0, 0, 0.3333, 'C450', 1, '*'),
(1873, 'clean modern', 'clean modern', 0, 1, 1.4, 'C45365', 1, '*'),
(1874, 'clean modern and', 'clean modern and', 0, 1, 1.5333, 'C453653', 1, '*'),
(1875, 'designed', 'designed', 0, 0, 0.5333, 'D253', 1, '*'),
(1876, 'designed by', 'designed by', 0, 1, 1.3667, 'D2531', 1, '*'),
(1877, 'designed by a', 'designed by a', 0, 1, 1.4333, 'D2531', 1, '*'),
(1878, 'destinations', 'destinations', 0, 0, 0.8, 'D235352', 1, '*'),
(1879, 'destinations from', 'destinations from', 0, 1, 1.5667, 'D235352165', 1, '*'),
(1880, 'destinations from joomlaville', 'destinations from joomlaville', 0, 1, 1.9667, 'D23535216525414', 1, '*'),
(1881, 'directly', 'directly', 0, 0, 0.5333, 'D6234', 1, '*'),
(1882, 'directly to', 'directly to', 0, 1, 1.3667, 'D62343', 1, '*'),
(1883, 'directly to major', 'directly to major', 0, 1, 1.5667, 'D62343526', 1, '*'),
(1884, 'domestic', 'domestic', 0, 0, 0.5333, 'D5232', 1, '*'),
(1885, 'domestic flights', 'domestic flights', 0, 1, 1.5333, 'D523214232', 1, '*'),
(1886, 'domestic flights destinations', 'domestic flights destinations', 0, 1, 1.9667, 'D5232142323235352', 1, '*'),
(1887, 'eat', 'eat', 0, 0, 0.2, 'E300', 1, '*'),
(1888, 'eat location', 'eat location', 0, 1, 1.4, 'E34235', 1, '*'),
(1889, 'eat location the', 'eat location the', 0, 1, 1.5333, 'E342353', 1, '*'),
(1890, 'europe', 'europe', 0, 0, 0.4, 'E610', 1, '*'),
(1891, 'europe asia', 'europe asia', 0, 1, 1.3667, 'E612', 1, '*'),
(1892, 'europe asia africa', 'europe asia africa', 0, 1, 1.6, 'E612162', 1, '*'),
(1893, 'famous', 'famous', 0, 0, 0.4, 'F520', 1, '*'),
(1894, 'famous architects', 'famous architects', 0, 1, 1.5667, 'F52623232', 1, '*'),
(1895, 'famous architects terminals', 'famous architects terminals', 0, 1, 1.9, 'F5262323236542', 1, '*'),
(1896, 'flight', 'flight', 0, 0, 0.4, 'F423', 1, '*'),
(1897, 'flight there', 'flight there', 0, 1, 1.4, 'F4236', 1, '*'),
(1898, 'flight there are', 'flight there are', 0, 1, 1.5333, 'F4236', 1, '*'),
(1899, 'flights', 'flights', 0, 0, 0.4667, 'F4232', 1, '*'),
(1900, 'flights and', 'flights and', 0, 1, 1.3667, 'F423253', 1, '*'),
(1901, 'flights and one', 'flights and one', 0, 1, 1.5, 'F4232535', 1, '*'),
(1902, 'flights destinations', 'flights destinations', 0, 1, 1.6667, 'F42323235352', 1, '*'),
(1903, 'flights destinations from', 'flights destinations from', 0, 1, 1.8333, 'F42323235352165', 1, '*'),
(1904, 'fly directly', 'fly directly', 0, 1, 1.4, 'F436234', 1, '*'),
(1905, 'fly directly to', 'fly directly to', 0, 1, 1.5, 'F4362343', 1, '*'),
(1906, 'fly to', 'fly to', 0, 1, 1.2, 'F430', 1, '*'),
(1907, 'fly to it', 'fly to it', 0, 1, 1.3, 'F430', 1, '*'),
(1908, 'food', 'food', 0, 0, 0.2667, 'F300', 1, '*'),
(1909, 'food if', 'food if', 0, 1, 1.2333, 'F310', 1, '*'),
(1910, 'food if you''re', 'food if you', 0, 1, 1.4667, 'F316', 1, '*'),
(1911, 'for domestic', 'for domestic', 0, 1, 1.4, 'F635232', 1, '*'),
(1912, 'for domestic flights', 'for domestic flights', 0, 1, 1.6667, 'F63523214232', 1, '*'),
(1913, 'for international', 'for international', 0, 1, 1.5667, 'F65365354', 1, '*'),
(1914, 'for international flights', 'for international flights', 0, 1, 1.8333, 'F6536535414232', 1, '*'),
(1915, 'from joomlaville', 'from joomlaville', 0, 1, 1.5333, 'F6525414', 1, '*'),
(1916, 'from joomlaville you', 'from joomlaville you', 0, 1, 1.6667, 'F6525414', 1, '*'),
(1917, 'great place', 'great place', 0, 1, 1.3667, 'G63142', 1, '*'),
(1918, 'great place to', 'great place to', 0, 1, 1.4667, 'G631423', 1, '*'),
(1919, 'hungry', 'hungry', 0, 0, 0.4, 'H526', 1, '*'),
(1920, 'hungry before', 'hungry before', 0, 1, 1.4333, 'H52616', 1, '*'),
(1921, 'hungry before your', 'hungry before your', 0, 1, 1.6, 'H52616', 1, '*'),
(1922, 'if you''re', 'if you', 0, 1, 1.3, 'I160', 1, '*'),
(1923, 'if you''re hungry', 'if you hungry', 0, 1, 1.5333, 'I16526', 1, '*'),
(1924, 'in europe', 'in europe', 0, 1, 1.3, 'I561', 1, '*'),
(1925, 'in europe asia', 'in europe asia', 0, 1, 1.4667, 'I5612', 1, '*'),
(1926, 'international', 'international', 0, 0, 0.8667, 'I5365354', 1, '*'),
(1927, 'international flights', 'international flights', 0, 1, 1.7, 'I536535414232', 1, '*'),
(1928, 'international flights and', 'international flights and', 0, 1, 1.8333, 'I53653541423253', 1, '*'),
(1929, 'is clean', 'is clean', 0, 1, 1.2667, 'I245', 1, '*'),
(1930, 'is clean modern', 'is clean modern', 0, 1, 1.5, 'I245365', 1, '*'),
(1931, 'is located just', 'is located just', 0, 1, 1.5, 'I242323', 1, '*'),
(1932, 'it is clean', 'it is clean', 0, 1, 1.3667, 'I3245', 1, '*'),
(1933, 'joomlaville airport', 'joomlaville airport', 0, 1, 1.6333, 'J54146163', 1, '*'),
(1934, 'joomlaville airport is', 'joomlaville airport is', 0, 1, 1.7333, 'J541461632', 1, '*'),
(1935, 'just', 'just', 0, 0, 0.2667, 'J300', 2, '*'),
(1936, 'just outside', 'just outside', 0, 1, 1.4, 'J323', 1, '*'),
(1937, 'just outside of', 'just outside of', 0, 1, 1.5, 'J3231', 1, '*'),
(1938, 'located just', 'located just', 0, 1, 1.4, 'L2323', 1, '*'),
(1939, 'located just outside', 'located just outside', 0, 1, 1.6667, 'L232323', 1, '*'),
(1940, 'location the', 'location the', 0, 1, 1.4, 'L2353', 1, '*'),
(1941, 'location the airport', 'location the airport', 0, 1, 1.6667, 'L23536163', 1, '*'),
(1942, 'major cities', 'major cities', 0, 1, 1.4, 'M26232', 1, '*'),
(1943, 'major cities in', 'major cities in', 0, 1, 1.5, 'M262325', 1, '*'),
(1944, 'modern', 'modern', 0, 0, 0.4, 'M365', 1, '*'),
(1945, 'modern and', 'modern and', 0, 1, 1.3333, 'M3653', 1, '*'),
(1946, 'modern and was', 'modern and was', 0, 1, 1.4667, 'M36532', 1, '*'),
(1947, 'north', 'north', 0, 0, 0.3333, 'N630', 1, '*'),
(1948, 'north and', 'north and', 0, 1, 1.3, 'N6353', 1, '*'),
(1949, 'north and south', 'north and south', 0, 1, 1.5, 'N635323', 1, '*'),
(1950, 'of famous', 'of famous', 0, 1, 1.3, 'O152', 1, '*'),
(1951, 'of famous architects', 'of famous architects', 0, 1, 1.6667, 'O152623232', 1, '*'),
(1952, 'of restaurants where', 'of restaurants where', 0, 1, 1.6667, 'O162365326', 1, '*'),
(1953, 'of town close', 'of town close', 0, 1, 1.4333, 'O135242', 1, '*'),
(1954, 'one for', 'one for', 0, 1, 1.2333, 'O516', 1, '*'),
(1955, 'one for domestic', 'one for domestic', 0, 1, 1.5333, 'O51635232', 1, '*'),
(1956, 'one for international', 'one for international', 0, 1, 1.7, 'O5165365354', 1, '*'),
(1957, 'outside', 'outside', 0, 0, 0.4667, 'O323', 1, '*'),
(1958, 'outside of', 'outside of', 0, 1, 1.3333, 'O3231', 1, '*'),
(1959, 'outside of town', 'outside of town', 0, 1, 1.5, 'O323135', 1, '*'),
(1960, 'place to', 'place to', 0, 1, 1.2667, 'P423', 1, '*'),
(1961, 'place to fly', 'place to fly', 0, 1, 1.4, 'P42314', 1, '*'),
(1962, 'restaurants where', 'restaurants where', 0, 1, 1.5667, 'R2365326', 1, '*'),
(1963, 'restaurants where you', 'restaurants where you', 0, 1, 1.7, 'R2365326', 1, '*'),
(1964, 'south', 'south', 0, 0, 0.3333, 'S300', 1, '*'),
(1965, 'south america', 'south america', 0, 1, 1.4333, 'S3562', 1, '*'),
(1966, 'south america food', 'south america food', 0, 1, 1.6, 'S356213', 1, '*'),
(1967, 'team', 'team', 0, 0, 0.2667, 'T500', 1, '*'),
(1968, 'team of', 'team of', 0, 1, 1.2333, 'T510', 1, '*'),
(1969, 'team of famous', 'team of famous', 0, 1, 1.4667, 'T5152', 1, '*'),
(1970, 'terminals', 'terminals', 0, 0, 0.6, 'T6542', 1, '*'),
(1971, 'terminals one', 'terminals one', 0, 1, 1.4333, 'T65425', 1, '*'),
(1972, 'terminals one for', 'terminals one for', 0, 1, 1.5667, 'T6542516', 1, '*'),
(1973, 'terminals there', 'terminals there', 0, 1, 1.5, 'T654236', 1, '*'),
(1974, 'terminals there are', 'terminals there are', 0, 1, 1.6333, 'T654236', 1, '*'),
(1975, 'the airport is', 'the airport is', 0, 1, 1.4667, 'T61632', 1, '*'),
(1976, 'the joomlaville airport', 'the joomlaville airport', 0, 1, 1.7667, 'T254146163', 1, '*'),
(1977, 'there are lots', 'there are lots', 0, 1, 1.4667, 'T6432', 1, '*'),
(1978, 'there are two', 'there are two', 0, 1, 1.4333, 'T630', 1, '*'),
(1979, 'to fly', 'to fly', 0, 1, 1.2, 'T140', 1, '*'),
(1980, 'to fly to', 'to fly to', 0, 1, 1.3, 'T143', 1, '*'),
(1981, 'to it', 'to it', 0, 1, 1.1667, 'T000', 1, '*'),
(1982, 'to it is', 'to it is', 0, 1, 1.2667, 'T200', 1, '*'),
(1983, 'to major', 'to major', 0, 1, 1.2667, 'T526', 1, '*'),
(1984, 'to major cities', 'to major cities', 0, 1, 1.5, 'T526232', 1, '*'),
(1985, 'to the zoo', 'to the zoo', 0, 1, 1.3333, 'T200', 1, '*'),
(1986, 'town close', 'town close', 0, 1, 1.3333, 'T5242', 1, '*'),
(1987, 'town close to', 'town close to', 0, 1, 1.4333, 'T52423', 1, '*'),
(1988, 'two terminals', 'two terminals', 0, 1, 1.4333, 'T6542', 1, '*'),
(1989, 'two terminals one', 'two terminals one', 0, 1, 1.5667, 'T65425', 1, '*'),
(1990, 'was designed', 'was designed', 0, 1, 1.4, 'W23253', 1, '*'),
(1991, 'was designed by', 'was designed by', 0, 1, 1.5, 'W232531', 1, '*'),
(1992, 'where', 'where', 0, 0, 0.3333, 'W600', 1, '*'),
(1993, 'where you', 'where you', 0, 1, 1.3, 'W600', 1, '*'),
(1994, 'where you can', 'where you can', 0, 1, 1.4333, 'W625', 1, '*'),
(1995, 'you can eat', 'you can eat', 0, 1, 1.3667, 'Y253', 1, '*'),
(1996, 'you can fly', 'you can fly', 0, 1, 1.3667, 'Y2514', 1, '*'),
(1997, 'you''re', 'you', 0, 0, 0.4, 'Y600', 2, '*'),
(1998, 'you''re hungry', 'you hungry', 0, 1, 1.4333, 'Y6526', 1, '*'),
(1999, 'you''re hungry before', 'you hungry before', 0, 1, 1.6667, 'Y652616', 1, '*'),
(2000, 'your', 'your', 0, 0, 0.2667, 'Y600', 2, '*'),
(2001, 'your flight', 'your flight', 0, 1, 1.3667, 'Y61423', 1, '*'),
(2002, 'your flight there', 'your flight there', 0, 1, 1.5667, 'Y614236', 1, '*'),
(2089, 'com', 'com', 0, 0, 0.2, 'C500', 1, '*'),
(2090, 'com espn', 'com espn', 0, 1, 1.2667, 'C5215', 1, '*'),
(2091, 'com espn rss', 'com espn rss', 0, 1, 1.4, 'C521562', 1, '*'),
(2092, 'espn', 'espn', 0, 0, 0.2667, 'E215', 1, '*'),
(2093, 'espn go', 'espn go', 0, 1, 1.2333, 'E2152', 1, '*'),
(2094, 'espn go com', 'espn go com', 0, 1, 1.3667, 'E21525', 1, '*'),
(2095, 'espn rss', 'espn rss', 0, 1, 1.2667, 'E21562', 1, '*'),
(2096, 'espn rss news', 'espn rss news', 0, 1, 1.4333, 'E2156252', 1, '*'),
(2097, 'go', 'go', 0, 0, 0.1333, 'G000', 1, '*'),
(2098, 'go com', 'go com', 0, 1, 1.2, 'G500', 1, '*'),
(2099, 'go com espn', 'go com espn', 0, 1, 1.3667, 'G5215', 1, '*'),
(2100, 'http sports', 'http sports', 0, 1, 1.3667, 'H3121632', 1, '*'),
(2101, 'http sports espn', 'http sports espn', 0, 1, 1.5333, 'H312163215', 1, '*'),
(2102, 'news', 'news', 0, 0, 0.2667, 'N200', 7, '*'),
(2103, 'news feed', 'news feed', 0, 1, 1.3, 'N213', 1, '*'),
(2104, 'rss', 'rss', 0, 0, 0.2, 'R200', 1, '*'),
(2105, 'rss news', 'rss news', 0, 1, 1.2667, 'R252', 1, '*'),
(2106, 'sports espn', 'sports espn', 0, 1, 1.3667, 'S163215', 1, '*'),
(2107, 'sports espn go', 'sports espn go', 0, 1, 1.4667, 'S1632152', 1, '*'),
(2630, 'a good', 'a good', 0, 1, 1.2, 'A230', 1, '*'),
(2631, 'a good time', 'a good time', 0, 1, 1.3667, 'A235', 1, '*'),
(2632, 'a wonderful city', 'a wonderful city', 0, 1, 1.5333, 'A5361423', 1, '*'),
(2633, 'airport bus', 'airport bus', 0, 1, 1.3667, 'A616312', 1, '*'),
(2634, 'airport bus station', 'airport bus station', 0, 1, 1.6333, 'A61631235', 1, '*'),
(2635, 'always', 'always', 0, 0, 0.4, 'A420', 1, '*'),
(2636, 'always a', 'always a', 0, 1, 1.2667, 'A420', 1, '*'),
(2637, 'always a good', 'always a good', 0, 1, 1.4333, 'A423', 1, '*'),
(2638, 'and mothers', 'and mothers', 0, 1, 1.3667, 'A535362', 1, '*'),
(2639, 'and mothers day', 'and mothers day', 0, 1, 1.5, 'A5353623', 1, '*'),
(2640, 'and not', 'and not', 0, 1, 1.2333, 'A5353', 1, '*'),
(2641, 'and not too', 'and not too', 0, 1, 1.3667, 'A5353', 1, '*'),
(2642, 'and the', 'and the', 0, 1, 1.2333, 'A530', 1, '*'),
(2643, 'and the museum', 'and the museum', 0, 1, 1.4667, 'A53525', 1, '*'),
(2644, 'and train', 'and train', 0, 1, 1.3, 'A5365', 1, '*'),
(2645, 'and train station', 'and train station', 0, 1, 1.5667, 'A5365235', 1, '*'),
(2646, 'and we', 'and we', 0, 1, 1.2, 'A530', 1, '*'),
(2647, 'and we hope', 'and we hope', 0, 1, 1.3667, 'A531', 1, '*'),
(2648, 'aquarium the', 'aquarium the', 0, 1, 1.4, 'A2653', 1, '*'),
(2649, 'aquarium the zoo', 'aquarium the zoo', 0, 1, 1.5333, 'A26532', 1, '*'),
(2650, 'are new', 'are new', 0, 1, 1.2333, 'A650', 1, '*'),
(2651, 'are new to', 'are new to', 0, 1, 1.3333, 'A653', 1, '*'),
(2652, 'are some', 'are some', 0, 1, 1.2667, 'A625', 1, '*'),
(2653, 'are some suggestions', 'are some suggestions', 0, 1, 1.6667, 'A6252352', 1, '*'),
(2654, 'beautyful', 'beautyful', 0, 0, 0.6, 'B314', 1, '*'),
(2655, 'beautyful in', 'beautyful in', 0, 1, 1.4, 'B3145', 1, '*'),
(2656, 'beautyful in the', 'beautyful in the', 0, 1, 1.5333, 'B31453', 1, '*'),
(2657, 'bus station and', 'bus station and', 0, 1, 1.5, 'B2353', 1, '*'),
(2658, 'can celebrate', 'can celebrate', 0, 1, 1.4333, 'C524163', 1, '*'),
(2659, 'can celebrate with', 'can celebrate with', 0, 1, 1.6, 'C524163', 1, '*'),
(2660, 'can get', 'can get', 0, 1, 1.2333, 'C523', 1, '*'),
(2661, 'can get here', 'can get here', 0, 1, 1.4, 'C5236', 1, '*'),
(2662, 'can visit', 'can visit', 0, 1, 1.3, 'C5123', 1, '*'),
(2663, 'can visit the', 'can visit the', 0, 1, 1.4333, 'C5123', 1, '*'),
(2664, 'celebrate with', 'celebrate with', 0, 1, 1.4667, 'C4163', 1, '*'),
(2665, 'celebrate with us', 'celebrate with us', 0, 1, 1.5667, 'C41632', 1, '*'),
(2666, 'city of', 'city of', 0, 1, 1.2333, 'C310', 1, '*'),
(2667, 'city of joomlaville', 'city of joomlaville', 0, 1, 1.6333, 'C3125414', 1, '*'),
(2668, 'city to', 'city to', 0, 1, 1.2333, 'C300', 1, '*'),
(2669, 'city to live', 'city to live', 0, 1, 1.4, 'C341', 1, '*'),
(2670, 'cold', 'cold', 0, 0, 0.2667, 'C430', 1, '*'),
(2671, 'cold in', 'cold in', 0, 1, 1.2333, 'C435', 1, '*'),
(2672, 'cold in the', 'cold in the', 0, 1, 1.3667, 'C4353', 1, '*'),
(2673, 'day and', 'day and', 0, 1, 1.2333, 'D530', 1, '*'),
(2674, 'day and mothers', 'day and mothers', 0, 1, 1.5, 'D535362', 1, '*'),
(2675, 'day independence', 'day independence', 0, 1, 1.5333, 'D5315352', 1, '*'),
(2676, 'day independence day', 'day independence day', 0, 1, 1.6667, 'D53153523', 1, '*'),
(2677, 'day you', 'day you', 0, 1, 1.2333, 'D000', 1, '*'),
(2678, 'day you can', 'day you can', 0, 1, 1.3667, 'D250', 1, '*'),
(2679, 'do', 'do', 0, 0, 0.1333, 'D000', 2, '*'),
(2680, 'do here', 'do here', 0, 1, 1.2333, 'D600', 1, '*'),
(2681, 'do here are', 'do here are', 0, 1, 1.3667, 'D600', 1, '*'),
(2682, 'for the', 'for the', 0, 1, 1.2333, 'F630', 1, '*'),
(2683, 'for the city', 'for the city', 0, 1, 1.4, 'F6323', 1, '*'),
(2684, 'for visiting', 'for visiting', 0, 1, 1.4, 'F612352', 1, '*'),
(2685, 'for visiting our', 'for visiting our', 0, 1, 1.5333, 'F6123526', 1, '*'),
(2686, 'get here', 'get here', 0, 1, 1.2667, 'G360', 1, '*'),
(2687, 'get here via', 'get here via', 0, 1, 1.4, 'G361', 1, '*'),
(2688, 'has lots', 'has lots', 0, 1, 1.2667, 'H2432', 1, '*'),
(2689, 'has lots to', 'has lots to', 0, 1, 1.3667, 'H24323', 1, '*'),
(2690, 'here are', 'here are', 0, 1, 1.2667, 'H600', 1, '*'),
(2691, 'here are some', 'here are some', 0, 1, 1.4333, 'H625', 1, '*'),
(2692, 'here via', 'here via', 0, 1, 1.2667, 'H610', 1, '*'),
(2693, 'here via the', 'here via the', 0, 1, 1.4, 'H613', 1, '*'),
(2694, 'hope', 'hope', 0, 0, 0.2667, 'H100', 1, '*'),
(2695, 'hope you''ll', 'hope you', 0, 1, 1.3667, 'H140', 1, '*'),
(2696, 'hope you''ll visit', 'hope you visit', 0, 1, 1.5667, 'H14123', 1, '*'),
(2697, 'if you', 'if you', 0, 1, 1.2, 'I100', 2, '*'),
(2698, 'if you are', 'if you are', 0, 1, 1.3333, 'I160', 1, '*'),
(2699, 'in and', 'in and', 0, 1, 1.2, 'I530', 1, '*'),
(2700, 'in and we', 'in and we', 0, 1, 1.3, 'I530', 1, '*'),
(2701, 'in the summer', 'in the summer', 0, 1, 1.4333, 'I53256', 1, '*'),
(2702, 'independence day and', 'independence day and', 0, 1, 1.6667, 'I5315352353', 1, '*'),
(2703, 'is always', 'is always', 0, 1, 1.3, 'I242', 1, '*'),
(2704, 'is always a', 'is always a', 0, 1, 1.3667, 'I242', 1, '*'),
(2705, 'is beautyful', 'is beautyful', 0, 1, 1.4, 'I21314', 1, '*'),
(2706, 'is beautyful in', 'is beautyful in', 0, 1, 1.5, 'I213145', 1, '*'),
(2707, 'it is always', 'it is always', 0, 1, 1.4, 'I3242', 1, '*'),
(2708, 'it''s a wonderful', 'it a wonderful', 0, 1, 1.5333, 'I3253614', 1, '*'),
(2709, 'joomlaville has lots', 'joomlaville has lots', 0, 1, 1.6667, 'J54142432', 1, '*'),
(2710, 'joomlaville it''s', 'joomlaville it', 0, 1, 1.5333, 'J541432', 1, '*'),
(2711, 'joomlaville it''s a', 'joomlaville it a', 0, 1, 1.6, 'J541432', 1, '*'),
(2712, 'live', 'live', 0, 0, 0.2667, 'L100', 1, '*'),
(2713, 'live in', 'live in', 0, 1, 1.2333, 'L150', 1, '*'),
(2714, 'live in and', 'live in and', 0, 1, 1.3667, 'L153', 1, '*'),
(2715, 'lots to', 'lots to', 0, 1, 1.2333, 'L323', 1, '*'),
(2716, 'lots to do', 'lots to do', 0, 1, 1.3333, 'L323', 1, '*'),
(2717, 'mothers day you', 'mothers day you', 0, 1, 1.5, 'M3623', 1, '*'),
(2718, 'museum you', 'museum you', 0, 1, 1.3333, 'M250', 1, '*'),
(2719, 'museum you can', 'museum you can', 0, 1, 1.4667, 'M2525', 1, '*'),
(2720, 'new to', 'new to', 0, 1, 1.2, 'N300', 1, '*'),
(2721, 'new to joomlaville', 'new to joomlaville', 0, 1, 1.6, 'N325414', 1, '*'),
(2722, 'not', 'not', 0, 0, 0.2, 'N300', 1, '*'),
(2723, 'not too', 'not too', 0, 1, 1.2333, 'N300', 1, '*'),
(2724, 'not too cold', 'not too cold', 0, 1, 1.4, 'N3243', 1, '*'),
(2725, 'of joomlaville it''s', 'of joomlaville it', 0, 1, 1.6333, 'O12541432', 1, '*'),
(2726, 'on new', 'on new', 0, 1, 1.2, 'O500', 1, '*'),
(2727, 'on new years', 'on new years', 0, 1, 1.4, 'O562', 1, '*'),
(2728, 'our site', 'our site', 0, 1, 1.2667, 'O623', 1, '*'),
(2729, 'our site for', 'our site for', 0, 1, 1.4, 'O62316', 1, '*'),
(2730, 'site for', 'site for', 0, 1, 1.2667, 'S316', 1, '*'),
(2731, 'site for the', 'site for the', 0, 1, 1.4, 'S3163', 1, '*'),
(2732, 'so it', 'so it', 0, 1, 1.1667, 'S300', 1, '*'),
(2733, 'so it is', 'so it is', 0, 1, 1.2667, 'S320', 1, '*'),
(2734, 'some suggestions', 'some suggestions', 0, 1, 1.5333, 'S52352', 1, '*'),
(2735, 'some suggestions if', 'some suggestions if', 0, 1, 1.6333, 'S523521', 1, '*'),
(2736, 'soon', 'soon', 0, 0, 0.2667, 'S500', 1, '*'),
(2737, 'soon the', 'soon the', 0, 1, 1.2667, 'S530', 1, '*'),
(2738, 'soon the weather', 'soon the weather', 0, 1, 1.5333, 'S536', 1, '*'),
(2739, 'station and', 'station and', 0, 1, 1.3667, 'S353', 1, '*'),
(2740, 'station and train', 'station and train', 0, 1, 1.5667, 'S35365', 1, '*'),
(2741, 'suggestions', 'suggestions', 0, 0, 0.7333, 'S352', 1, '*'),
(2742, 'suggestions if', 'suggestions if', 0, 1, 1.4667, 'S3521', 1, '*'),
(2743, 'suggestions if you', 'suggestions if you', 0, 1, 1.6, 'S3521', 1, '*'),
(2744, 'summer and', 'summer and', 0, 1, 1.3333, 'S5653', 1, '*'),
(2745, 'summer and not', 'summer and not', 0, 1, 1.4667, 'S565353', 1, '*'),
(2746, 'thank', 'thank', 0, 0, 0.3333, 'T520', 1, '*'),
(2747, 'thank you', 'thank you', 0, 1, 1.3, 'T520', 1, '*'),
(2748, 'thank you for', 'thank you for', 0, 1, 1.4333, 'T5216', 1, '*'),
(2749, 'the airport bus', 'the airport bus', 0, 1, 1.5, 'T616312', 1, '*'),
(2750, 'the aquarium the', 'the aquarium the', 0, 1, 1.5333, 'T2653', 1, '*'),
(2751, 'the city of', 'the city of', 0, 1, 1.3667, 'T231', 1, '*'),
(2752, 'the museum', 'the museum', 0, 1, 1.3333, 'T525', 1, '*'),
(2753, 'the museum you', 'the museum you', 0, 1, 1.4667, 'T525', 1, '*'),
(2754, 'the summer and', 'the summer and', 0, 1, 1.4667, 'T25653', 1, '*'),
(2755, 'the weather', 'the weather', 0, 1, 1.3667, 'T600', 1, '*'),
(2756, 'the weather is', 'the weather is', 0, 1, 1.4667, 'T620', 1, '*'),
(2757, 'the winter so', 'the winter so', 0, 1, 1.4333, 'T5362', 1, '*'),
(2758, 'the zoo and', 'the zoo and', 0, 1, 1.3667, 'T253', 1, '*'),
(2759, 'to do', 'to do', 0, 1, 1.1667, 'T000', 1, '*'),
(2760, 'to do here', 'to do here', 0, 1, 1.3333, 'T600', 1, '*'),
(2761, 'to joomlaville you', 'to joomlaville you', 0, 1, 1.6, 'T25414', 1, '*'),
(2762, 'to live', 'to live', 0, 1, 1.2333, 'T410', 1, '*'),
(2763, 'to live in', 'to live in', 0, 1, 1.3333, 'T415', 1, '*'),
(2764, 'too', 'too', 0, 0, 0.2, 'T000', 1, '*'),
(2765, 'too cold', 'too cold', 0, 1, 1.2667, 'T243', 1, '*'),
(2766, 'too cold in', 'too cold in', 0, 1, 1.3667, 'T2435', 1, '*'),
(2767, 'us', 'us', 0, 0, 0.1333, 'U200', 2, '*'),
(2768, 'us on', 'us on', 0, 1, 1.1667, 'U250', 1, '*'),
(2769, 'us on new', 'us on new', 0, 1, 1.3, 'U250', 1, '*'),
(2770, 'us soon', 'us soon', 0, 1, 1.2333, 'U250', 1, '*'),
(2771, 'us soon the', 'us soon the', 0, 1, 1.3667, 'U253', 1, '*'),
(2772, 'via', 'via', 0, 0, 0.2, 'V000', 1, '*'),
(2773, 'via the', 'via the', 0, 1, 1.2333, 'V300', 1, '*'),
(2774, 'via the airport', 'via the airport', 0, 1, 1.5, 'V36163', 1, '*'),
(2775, 'visit joomlaville has', 'visit joomlaville has', 0, 1, 1.7, 'V23254142', 1, '*'),
(2776, 'visit the', 'visit the', 0, 1, 1.3, 'V230', 1, '*'),
(2777, 'visit the aquarium', 'visit the aquarium', 0, 1, 1.6, 'V23265', 1, '*'),
(2778, 'visit us', 'visit us', 0, 1, 1.2667, 'V232', 1, '*'),
(2779, 'visit us soon', 'visit us soon', 0, 1, 1.4333, 'V2325', 1, '*'),
(2780, 'visiting', 'visiting', 0, 0, 0.5333, 'V2352', 1, '*'),
(2781, 'visiting our', 'visiting our', 0, 1, 1.4, 'V23526', 1, '*'),
(2782, 'visiting our site', 'visiting our site', 0, 1, 1.5667, 'V2352623', 1, '*'),
(2783, 'we hope', 'we hope', 0, 1, 1.2333, 'W100', 1, '*'),
(2784, 'we hope you''ll', 'we hope you', 0, 1, 1.4667, 'W140', 1, '*'),
(2785, 'weather is', 'weather is', 0, 1, 1.3333, 'W362', 1, '*'),
(2786, 'weather is beautyful', 'weather is beautyful', 0, 1, 1.6667, 'W3621314', 1, '*'),
(2787, 'welcome', 'welcome', 0, 0, 0.4667, 'W425', 1, '*'),
(2788, 'welcome to', 'welcome to', 0, 1, 1.3333, 'W4253', 1, '*'),
(2789, 'welcome to joomlaville', 'welcome to joomlaville', 0, 1, 1.7333, 'W425325414', 1, '*'),
(2790, 'winter so', 'winter so', 0, 1, 1.3, 'W5362', 1, '*'),
(2791, 'winter so it', 'winter so it', 0, 1, 1.4, 'W53623', 1, '*'),
(2792, 'with us', 'with us', 0, 1, 1.2333, 'W320', 1, '*'),
(2793, 'with us on', 'with us on', 0, 1, 1.3333, 'W325', 1, '*'),
(2794, 'wonderful city', 'wonderful city', 0, 1, 1.4667, 'W5361423', 1, '*'),
(2795, 'wonderful city to', 'wonderful city to', 0, 1, 1.5667, 'W5361423', 1, '*'),
(2796, 'years day independence', 'years day independence', 0, 1, 1.7333, 'Y6235315352', 1, '*'),
(2797, 'you are', 'you are', 0, 1, 1.2333, 'Y600', 1, '*'),
(2798, 'you are new', 'you are new', 0, 1, 1.3667, 'Y650', 1, '*'),
(2799, 'you can celebrate', 'you can celebrate', 0, 1, 1.5667, 'Y2524163', 1, '*'),
(2800, 'you can get', 'you can get', 0, 1, 1.3667, 'Y2523', 1, '*'),
(2801, 'you can visit', 'you can visit', 0, 1, 1.4333, 'Y25123', 1, '*'),
(2802, 'you for', 'you for', 0, 1, 1.2333, 'Y160', 1, '*'),
(2803, 'you for visiting', 'you for visiting', 0, 1, 1.5333, 'Y1612352', 1, '*'),
(2804, 'you''ll visit', 'you visit', 0, 1, 1.4, 'Y4123', 1, '*'),
(2805, 'you''ll visit us', 'you visit us', 0, 1, 1.5, 'Y41232', 1, '*'),
(2806, 'zoo and', 'zoo and', 0, 1, 1.2333, 'Z530', 1, '*'),
(2807, 'zoo and the', 'zoo and the', 0, 1, 1.3667, 'Z530', 1, '*'),
(2885, 'a great opportunity', 'a great opportunity', 0, 1, 1.6333, 'A26316353', 1, '*'),
(2886, 'a picnic', 'a picnic', 0, 1, 1.2667, 'A1252', 1, '*'),
(2887, 'a picnic in', 'a picnic in', 0, 1, 1.3667, 'A12525', 1, '*'),
(2888, 'and good', 'and good', 0, 1, 1.2667, 'A5323', 2, '*'),
(2889, 'and good time', 'and good time', 0, 1, 1.4333, 'A53235', 1, '*'),
(2890, 'are invited', 'are invited', 0, 1, 1.3667, 'A6513', 1, '*'),
(2891, 'are invited to', 'are invited to', 0, 1, 1.4667, 'A6513', 1, '*'),
(2892, 'are prizes', 'are prizes', 0, 1, 1.3333, 'A6162', 1, '*'),
(2893, 'are prizes games', 'are prizes games', 0, 1, 1.5333, 'A616252', 1, '*'),
(2894, 'comes', 'comes', 0, 0, 0.3333, 'C520', 1, '*'),
(2895, 'downtown', 'downtown', 0, 0, 0.5333, 'D535', 2, '*'),
(2896, 'downtown joomlaville', 'downtown joomlaville', 0, 1, 1.6667, 'D53525414', 1, '*'),
(2897, 'downtown joomlaville with', 'downtown joomlaville with', 0, 1, 1.8333, 'D535254143', 1, '*'),
(2898, 'enjoy themselves', 'enjoy themselves', 0, 1, 1.5333, 'E52352412', 1, '*'),
(2899, 'enjoy themselves in', 'enjoy themselves in', 0, 1, 1.6333, 'E523524125', 1, '*'),
(2900, 'entire', 'entire', 0, 0, 0.4, 'E536', 1, '*'),
(2901, 'entire families', 'entire families', 0, 1, 1.5, 'E5361542', 1, '*'),
(2902, 'entire families there', 'entire families there', 0, 1, 1.7, 'E536154236', 1, '*'),
(2903, 'everyone', 'everyone', 0, 0, 0.5333, 'E165', 1, '*'),
(2904, 'everyone who', 'everyone who', 0, 1, 1.4, 'E165', 1, '*'),
(2905, 'everyone who comes', 'everyone who comes', 0, 1, 1.6, 'E165252', 1, '*'),
(2906, 'families there', 'families there', 0, 1, 1.4667, 'F54236', 1, '*'),
(2907, 'families there are', 'families there are', 0, 1, 1.6, 'F54236', 1, '*'),
(2908, 'families to enjoy', 'families to enjoy', 0, 1, 1.5667, 'F542352', 1, '*'),
(2909, 'for everyone', 'for everyone', 0, 1, 1.4, 'F6165', 1, '*'),
(2910, 'for everyone who', 'for everyone who', 0, 1, 1.5333, 'F6165', 1, '*'),
(2911, 'games', 'games', 0, 0, 0.3333, 'G520', 1, '*'),
(2912, 'games and', 'games and', 0, 1, 1.3, 'G5253', 1, '*'),
(2913, 'games and good', 'games and good', 0, 1, 1.4667, 'G525323', 1, '*'),
(2914, 'good time for', 'good time for', 0, 1, 1.4333, 'G3516', 1, '*'),
(2915, 'great opportunity', 'great opportunity', 0, 1, 1.5667, 'G6316353', 1, '*'),
(2916, 'great opportunity for', 'great opportunity for', 0, 1, 1.7, 'G631635316', 1, '*'),
(2917, 'in downtown', 'in downtown', 0, 1, 1.3667, 'I53535', 1, '*'),
(2918, 'in downtown joomlaville', 'in downtown joomlaville', 0, 1, 1.7667, 'I5353525414', 1, '*'),
(2919, 'in joomlaville mothers', 'in joomlaville mothers', 0, 1, 1.7333, 'I5254145362', 1, '*'),
(2920, 'invited', 'invited', 0, 0, 0.4667, 'I513', 1, '*'),
(2921, 'invited to', 'invited to', 0, 1, 1.3333, 'I513', 1, '*'),
(2922, 'invited to a', 'invited to a', 0, 1, 1.4, 'I513', 1, '*'),
(2923, 'joomlaville mothers', 'joomlaville mothers', 0, 1, 1.6333, 'J54145362', 1, '*'),
(2924, 'joomlaville mothers are', 'joomlaville mothers are', 0, 1, 1.7667, 'J541453626', 1, '*'),
(2925, 'joomlaville with', 'joomlaville with', 0, 1, 1.5333, 'J54143', 1, '*'),
(2926, 'joomlaville with their', 'joomlaville with their', 0, 1, 1.7333, 'J541436', 1, '*'),
(2927, 'mother''s', 'mother', 0, 0, 0.5333, 'M362', 1, '*'),
(2928, 'mother''s day', 'mother day', 0, 1, 1.4, 'M3623', 1, '*'),
(2929, 'mother''s day is', 'mother day is', 0, 1, 1.5, 'M36232', 1, '*'),
(2930, 'mothers are', 'mothers are', 0, 1, 1.3667, 'M3626', 1, '*'),
(2931, 'mothers are invited', 'mothers are invited', 0, 1, 1.6333, 'M3626513', 1, '*'),
(2932, 'opportunity for families', 'opportunity for families', 0, 1, 1.8, 'O16353161542', 1, '*'),
(2933, 'picnic', 'picnic', 0, 0, 0.4, 'P252', 4, '*'),
(2934, 'picnic in', 'picnic in', 0, 1, 1.3, 'P2525', 1, '*'),
(2935, 'picnic in downtown', 'picnic in downtown', 0, 1, 1.6, 'P25253535', 1, '*'),
(2936, 'prizes', 'prizes', 0, 0, 0.4, 'P620', 1, '*'),
(2937, 'prizes games', 'prizes games', 0, 1, 1.4, 'P6252', 1, '*'),
(2938, 'prizes games and', 'prizes games and', 0, 1, 1.5333, 'P625253', 1, '*'),
(2939, 'their', 'their', 0, 0, 0.3333, 'T600', 1, '*'),
(2940, 'their entire', 'their entire', 0, 1, 1.4, 'T6536', 1, '*'),
(2941, 'their entire families', 'their entire families', 0, 1, 1.7, 'T65361542', 1, '*'),
(2942, 'themselves', 'themselves', 0, 0, 0.6667, 'T52412', 1, '*'),
(2943, 'themselves in', 'themselves in', 0, 1, 1.4333, 'T524125', 1, '*'),
(2944, 'themselves in joomlaville', 'themselves in joomlaville', 0, 1, 1.8333, 'T52412525414', 1, '*'),
(2945, 'there are prizes', 'there are prizes', 0, 1, 1.5333, 'T6162', 1, '*'),
(2946, 'time for', 'time for', 0, 1, 1.2667, 'T516', 1, '*'),
(2947, 'time for everyone', 'time for everyone', 0, 1, 1.5667, 'T516165', 1, '*'),
(2948, 'to a', 'to a', 0, 1, 1.1333, 'T000', 1, '*'),
(2949, 'to a picnic', 'to a picnic', 0, 1, 1.3667, 'T1252', 1, '*'),
(2950, 'to enjoy themselves', 'to enjoy themselves', 0, 1, 1.6333, 'T52352412', 1, '*'),
(2951, 'who', 'who', 0, 0, 0.2, 'W000', 2, '*'),
(2952, 'who comes', 'who comes', 0, 1, 1.3, 'W252', 1, '*'),
(2953, 'with their', 'with their', 0, 1, 1.3333, 'W360', 1, '*'),
(2954, 'with their entire', 'with their entire', 0, 1, 1.5667, 'W36536', 1, '*'),
(3267, '17th', '17th', 0, 0, 0.2667, 'T000', 1, '*'),
(3268, '17th century', '17th century', 0, 1, 1.4, 'T2536', 1, '*'),
(3269, '17th century the', '17th century the', 0, 1, 1.5333, 'T25363', 1, '*'),
(3270, '19th', '19th', 0, 0, 0.2667, 'T000', 1, '*'),
(3271, '19th and', '19th and', 0, 1, 1.2667, 'T530', 1, '*'),
(3272, '19th and 20th', '19th and 20th', 0, 1, 1.4333, 'T530', 1, '*'),
(3273, '20th', '20th', 0, 0, 0.2667, 'T000', 1, '*'),
(3274, '20th centuries', '20th centuries', 0, 1, 1.4667, 'T25362', 1, '*'),
(3275, '20th centuries more', '20th centuries more', 0, 1, 1.6333, 'T2536256', 1, '*'),
(3276, 'a city with', 'a city with', 0, 1, 1.3667, 'A230', 1, '*'),
(3277, 'a major', 'a major', 0, 1, 1.2333, 'A526', 1, '*'),
(3278, 'a major crossroads', 'a major crossroads', 0, 1, 1.6, 'A526262632', 1, '*'),
(3279, 'a market', 'a market', 0, 1, 1.2667, 'A5623', 1, '*'),
(3280, 'a market town', 'a market town', 0, 1, 1.4333, 'A56235', 1, '*'),
(3281, 'a rich', 'a rich', 0, 1, 1.2, 'A620', 1, '*'),
(3282, 'a rich history', 'a rich history', 0, 1, 1.4667, 'A6236', 1, '*'),
(3283, 'and 20th', 'and 20th', 0, 1, 1.2667, 'A530', 1, '*'),
(3284, 'and 20th centuries', 'and 20th centuries', 0, 1, 1.6, 'A5325362', 1, '*'),
(3285, 'and people', 'and people', 0, 1, 1.3333, 'A5314', 1, '*'),
(3286, 'and people flocked', 'and people flocked', 0, 1, 1.6, 'A53141423', 1, '*'),
(3287, 'as a', 'as a', 0, 1, 1.1333, 'A200', 1, '*'),
(3288, 'as a market', 'as a market', 0, 1, 1.3667, 'A25623', 1, '*'),
(3289, 'as the', 'as the', 0, 1, 1.2, 'A230', 1, '*'),
(3290, 'as the city', 'as the city', 0, 1, 1.3667, 'A2323', 1, '*'),
(3291, 'because', 'because', 0, 0, 0.4667, 'B200', 1, '*'),
(3292, 'because it', 'because it', 0, 1, 1.3333, 'B230', 1, '*'),
(3293, 'because it was', 'because it was', 0, 1, 1.4667, 'B232', 1, '*'),
(3294, 'been', 'been', 0, 0, 0.2667, 'B500', 1, '*'),
(3295, 'been here', 'been here', 0, 1, 1.3, 'B560', 1, '*'),
(3296, 'been here for', 'been here for', 0, 1, 1.4333, 'B5616', 1, '*'),
(3297, 'centuries', 'centuries', 0, 0, 0.6, 'C5362', 1, '*'),
(3298, 'centuries more', 'centuries more', 0, 1, 1.4667, 'C536256', 1, '*'),
(3299, 'centuries more industries', 'centuries more industries', 0, 1, 1.8333, 'C536256532362', 1, '*'),
(3300, 'century', 'century', 0, 0, 0.4667, 'C536', 1, '*'),
(3301, 'century the', 'century the', 0, 1, 1.3667, 'C5363', 1, '*'),
(3302, 'century the site', 'century the site', 0, 1, 1.5333, 'C536323', 1, '*'),
(3303, 'chosen', 'chosen', 0, 0, 0.4, 'C500', 1, '*'),
(3304, 'chosen because', 'chosen because', 0, 1, 1.4667, 'C512', 1, '*'),
(3305, 'chosen because it', 'chosen because it', 0, 1, 1.5667, 'C5123', 1, '*'),
(3306, 'city grew', 'city grew', 0, 1, 1.3, 'C326', 1, '*'),
(3307, 'city grew in', 'city grew in', 0, 1, 1.4, 'C3265', 1, '*'),
(3308, 'city with', 'city with', 0, 1, 1.3, 'C300', 1, '*'),
(3309, 'city with a', 'city with a', 0, 1, 1.3667, 'C300', 1, '*'),
(3310, 'crossroads', 'crossroads', 0, 0, 0.6667, 'C62632', 1, '*'),
(3311, 'crossroads for', 'crossroads for', 0, 1, 1.4667, 'C6263216', 1, '*'),
(3312, 'crossroads for people', 'crossroads for people', 0, 1, 1.7, 'C626321614', 1, '*'),
(3313, 'flocked', 'flocked', 0, 0, 0.4667, 'F423', 1, '*'),
(3314, 'flocked to', 'flocked to', 0, 1, 1.3333, 'F423', 1, '*'),
(3315, 'flocked to joomlaville', 'flocked to joomlaville', 0, 1, 1.7333, 'F42325414', 1, '*'),
(3316, 'for people', 'for people', 0, 1, 1.3333, 'F614', 2, '*'),
(3317, 'for people traveling', 'for people traveling', 0, 1, 1.6667, 'F614361452', 1, '*'),
(3318, 'for several', 'for several', 0, 1, 1.3667, 'F62164', 1, '*'),
(3319, 'for several generations', 'for several generations', 0, 1, 1.7667, 'F62164256352', 1, '*'),
(3320, 'for work', 'for work', 0, 1, 1.2667, 'F620', 1, '*'),
(3321, 'for work many', 'for work many', 0, 1, 1.4333, 'F625', 1, '*'),
(3322, 'generations', 'generations', 0, 0, 0.7333, 'G56352', 1, '*'),
(3323, 'grew', 'grew', 0, 0, 0.2667, 'G600', 1, '*'),
(3324, 'grew in', 'grew in', 0, 1, 1.2333, 'G650', 1, '*'),
(3325, 'grew in the', 'grew in the', 0, 1, 1.3667, 'G653', 1, '*'),
(3326, 'have', 'have', 0, 0, 0.2667, 'H100', 2, '*'),
(3327, 'have now', 'have now', 0, 1, 1.2667, 'H150', 1, '*'),
(3328, 'have now been', 'have now been', 0, 1, 1.4333, 'H1515', 1, '*'),
(3329, 'here for', 'here for', 0, 1, 1.2667, 'H616', 1, '*'),
(3330, 'here for several', 'here for several', 0, 1, 1.5333, 'H6162164', 1, '*'),
(3331, 'history it', 'history it', 0, 1, 1.3333, 'H2363', 1, '*'),
(3332, 'history it started', 'history it started', 0, 1, 1.6, 'H23632363', 1, '*'),
(3333, 'in the 17th', 'in the 17th', 0, 1, 1.3667, 'I530', 1, '*'),
(3334, 'in the 19th', 'in the 19th', 0, 1, 1.3667, 'I530', 1, '*'),
(3335, 'industries', 'industries', 0, 0, 0.6667, 'I532362', 1, '*'),
(3336, 'industries moved', 'industries moved', 0, 1, 1.5333, 'I532362513', 1, '*'),
(3337, 'industries moved and', 'industries moved and', 0, 1, 1.6667, 'I53236251353', 1, '*'),
(3338, 'it started', 'it started', 0, 1, 1.3333, 'I32363', 1, '*'),
(3339, 'it started as', 'it started as', 0, 1, 1.4333, 'I323632', 1, '*'),
(3340, 'it was', 'it was', 0, 1, 1.2, 'I320', 2, '*'),
(3341, 'it was a', 'it was a', 0, 1, 1.2667, 'I320', 1, '*'),
(3342, 'joomlaville history', 'joomlaville history', 0, 1, 1.6333, 'J5414236', 1, '*'),
(3343, 'joomlaville looking', 'joomlaville looking', 0, 1, 1.6333, 'J5414252', 1, '*'),
(3344, 'joomlaville looking for', 'joomlaville looking for', 0, 1, 1.7667, 'J541425216', 1, '*'),
(3345, 'looking', 'looking', 0, 0, 0.4667, 'L252', 2, '*'),
(3346, 'looking for', 'looking for', 0, 1, 1.3667, 'L25216', 1, '*'),
(3347, 'looking for work', 'looking for work', 0, 1, 1.5333, 'L252162', 1, '*'),
(3348, 'major crossroads', 'major crossroads', 0, 1, 1.5333, 'M26262632', 1, '*'),
(3349, 'major crossroads for', 'major crossroads for', 0, 1, 1.6667, 'M2626263216', 1, '*'),
(3350, 'many', 'many', 0, 0, 0.2667, 'M000', 2, '*'),
(3351, 'many of', 'many of', 0, 1, 1.2333, 'M100', 1, '*'),
(3352, 'many of our', 'many of our', 0, 1, 1.3667, 'M160', 1, '*'),
(3353, 'market', 'market', 0, 0, 0.4, 'M623', 1, '*'),
(3354, 'market town', 'market town', 0, 1, 1.3667, 'M6235', 1, '*'),
(3355, 'market town in', 'market town in', 0, 1, 1.4667, 'M6235', 1, '*'),
(3356, 'more', 'more', 0, 0, 0.2667, 'M600', 3, '*'),
(3357, 'more industries', 'more industries', 0, 1, 1.5, 'M6532362', 1, '*'),
(3358, 'more industries moved', 'more industries moved', 0, 1, 1.7, 'M6532362513', 1, '*'),
(3359, 'mountains as', 'mountains as', 0, 1, 1.4, 'M352', 1, '*'),
(3360, 'mountains as the', 'mountains as the', 0, 1, 1.5333, 'M3523', 1, '*'),
(3361, 'moved', 'moved', 0, 0, 0.3333, 'M130', 1, '*'),
(3362, 'moved and', 'moved and', 0, 1, 1.3, 'M1353', 1, '*'),
(3363, 'moved and people', 'moved and people', 0, 1, 1.5333, 'M135314', 1, '*'),
(3364, 'now', 'now', 0, 0, 0.2, 'N000', 2, '*'),
(3365, 'now been', 'now been', 0, 1, 1.2667, 'N150', 1, '*'),
(3366, 'now been here', 'now been here', 0, 1, 1.4333, 'N156', 1, '*'),
(3367, 'of our residents', 'of our residents', 0, 1, 1.5333, 'O1623532', 1, '*'),
(3368, 'our residents', 'our residents', 0, 1, 1.4333, 'O623532', 1, '*'),
(3369, 'our residents have', 'our residents have', 0, 1, 1.6, 'O6235321', 1, '*'),
(3370, 'people flocked', 'people flocked', 0, 1, 1.4667, 'P41423', 1, '*'),
(3371, 'people flocked to', 'people flocked to', 0, 1, 1.5667, 'P41423', 1, '*'),
(3372, 'people traveling', 'people traveling', 0, 1, 1.5333, 'P4361452', 1, '*'),
(3373, 'people traveling through', 'people traveling through', 0, 1, 1.8, 'P4361452362', 1, '*'),
(3374, 'residents have', 'residents have', 0, 1, 1.4667, 'R235321', 1, '*'),
(3375, 'residents have now', 'residents have now', 0, 1, 1.6, 'R2353215', 1, '*'),
(3376, 'rich', 'rich', 0, 0, 0.2667, 'R200', 1, '*'),
(3377, 'rich history', 'rich history', 0, 1, 1.4, 'R236', 1, '*'),
(3378, 'rich history it', 'rich history it', 0, 1, 1.5, 'R2363', 1, '*'),
(3379, 'several', 'several', 0, 0, 0.4667, 'S164', 1, '*'),
(3380, 'several generations', 'several generations', 0, 1, 1.6333, 'S164256352', 1, '*'),
(3381, 'site was', 'site was', 0, 1, 1.2667, 'S320', 1, '*'),
(3382, 'site was chosen', 'site was chosen', 0, 1, 1.5, 'S325', 1, '*'),
(3383, 'started', 'started', 0, 0, 0.4667, 'S363', 1, '*'),
(3384, 'started as', 'started as', 0, 1, 1.3333, 'S3632', 1, '*'),
(3385, 'started as a', 'started as a', 0, 1, 1.4, 'S3632', 1, '*'),
(3386, 'the 17th', 'the 17th', 0, 1, 1.2667, 'T000', 1, '*'),
(3387, 'the 17th century', 'the 17th century', 0, 1, 1.5333, 'T2536', 1, '*'),
(3388, 'the 19th', 'the 19th', 0, 1, 1.2667, 'T000', 1, '*'),
(3389, 'the 19th and', 'the 19th and', 0, 1, 1.4, 'T530', 1, '*'),
(3390, 'the city grew', 'the city grew', 0, 1, 1.4333, 'T2326', 1, '*'),
(3391, 'the mountains as', 'the mountains as', 0, 1, 1.5333, 'T5352', 1, '*'),
(3392, 'the site', 'the site', 0, 1, 1.2667, 'T230', 1, '*'),
(3393, 'the site was', 'the site was', 0, 1, 1.4, 'T232', 1, '*'),
(3394, 'through the mountains', 'through the mountains', 0, 1, 1.7, 'T6235352', 1, '*'),
(3395, 'to joomlaville looking', 'to joomlaville looking', 0, 1, 1.7333, 'T25414252', 1, '*'),
(3396, 'town in', 'town in', 0, 1, 1.2333, 'T500', 1, '*'),
(3397, 'town in the', 'town in the', 0, 1, 1.3667, 'T530', 1, '*'),
(3398, 'traveling', 'traveling', 0, 0, 0.6, 'T61452', 1, '*'),
(3399, 'traveling through', 'traveling through', 0, 1, 1.5667, 'T61452362', 1, '*'),
(3400, 'traveling through the', 'traveling through the', 0, 1, 1.7, 'T614523623', 1, '*'),
(3401, 'was a', 'was a', 0, 1, 1.1667, 'W200', 1, '*'),
(3402, 'was a major', 'was a major', 0, 1, 1.3667, 'W2526', 1, '*'),
(3403, 'was chosen', 'was chosen', 0, 1, 1.3333, 'W250', 1, '*'),
(3404, 'was chosen because', 'was chosen because', 0, 1, 1.6, 'W2512', 1, '*'),
(3405, 'with a', 'with a', 0, 1, 1.2, 'W300', 1, '*'),
(3406, 'with a rich', 'with a rich', 0, 1, 1.3667, 'W362', 1, '*'),
(3407, 'work', 'work', 0, 0, 0.2667, 'W620', 1, '*'),
(3408, 'work many', 'work many', 0, 1, 1.3, 'W625', 1, '*'),
(3409, 'work many of', 'work many of', 0, 1, 1.4, 'W6251', 1, '*'),
(3522, 'a five', 'a five', 0, 1, 1.2, 'A100', 1, '*'),
(3523, 'a five hour', 'a five hour', 0, 1, 1.3667, 'A160', 1, '*'),
(3524, 'a large mountain', 'a large mountain', 0, 1, 1.5333, 'A462535', 1, '*'),
(3525, 'a sunny', 'a sunny', 0, 1, 1.2333, 'A250', 1, '*'),
(3526, 'a sunny vacation', 'a sunny vacation', 0, 1, 1.5333, 'A251235', 1, '*'),
(3527, 'about a', 'about a', 0, 1, 1.2333, 'A130', 1, '*'),
(3528, 'about a five', 'about a five', 0, 1, 1.4, 'A131', 1, '*'),
(3529, 'about three', 'about three', 0, 1, 1.3667, 'A136', 1, '*'),
(3530, 'about three hours', 'about three hours', 0, 1, 1.5667, 'A1362', 1, '*'),
(3531, 'activities', 'activities', 0, 0, 0.6667, 'A23132', 1, '*'),
(3532, 'activities joomlaville', 'activities joomlaville', 0, 1, 1.7333, 'A231325414', 1, '*'),
(3533, 'activities joomlaville is', 'activities joomlaville is', 0, 1, 1.8333, 'A2313254142', 1, '*'),
(3534, 'also about', 'also about', 0, 1, 1.3333, 'A4213', 1, '*'),
(3535, 'also about three', 'also about three', 0, 1, 1.5333, 'A42136', 1, '*'),
(3536, 'and other', 'and other', 0, 1, 1.3, 'A536', 1, '*'),
(3537, 'and other outdoor', 'and other outdoor', 0, 1, 1.5667, 'A53636', 1, '*'),
(3538, 'beach', 'beach', 0, 0, 0.3333, 'B200', 1, '*'),
(3539, 'beach so', 'beach so', 0, 1, 1.2667, 'B200', 1, '*'),
(3540, 'beach so it''s', 'beach so it', 0, 1, 1.4333, 'B232', 1, '*'),
(3541, 'capital', 'capital', 0, 0, 0.4667, 'C134', 1, '*'),
(3542, 'capital it', 'capital it', 0, 1, 1.3333, 'C1343', 1, '*'),
(3543, 'capital it is', 'capital it is', 0, 1, 1.4333, 'C13432', 1, '*'),
(3544, 'country about', 'country about', 0, 1, 1.4333, 'C53613', 1, '*'),
(3545, 'country about a', 'country about a', 0, 1, 1.5, 'C53613', 1, '*'),
(3546, 'drive', 'drive', 0, 0, 0.3333, 'D610', 1, '*'),
(3547, 'drive from', 'drive from', 0, 1, 1.3333, 'D6165', 1, '*'),
(3548, 'drive from the', 'drive from the', 0, 1, 1.4667, 'D61653', 1, '*'),
(3549, 'easy', 'easy', 0, 0, 0.2667, 'E200', 1, '*'),
(3550, 'easy for', 'easy for', 0, 1, 1.2667, 'E216', 1, '*'),
(3551, 'easy for residents', 'easy for residents', 0, 1, 1.6, 'E21623532', 1, '*'),
(3552, 'enjoy a', 'enjoy a', 0, 1, 1.2333, 'E520', 1, '*'),
(3553, 'enjoy a sunny', 'enjoy a sunny', 0, 1, 1.4333, 'E525', 1, '*'),
(3554, 'enjoy skiing', 'enjoy skiing', 0, 1, 1.4, 'E5252', 1, '*'),
(3555, 'enjoy skiing kayaking', 'enjoy skiing kayaking', 0, 1, 1.7, 'E525252', 1, '*'),
(3556, 'five', 'five', 0, 0, 0.2667, 'F000', 1, '*'),
(3557, 'five hour', 'five hour', 0, 1, 1.3, 'F600', 1, '*'),
(3558, 'five hour drive', 'five hour drive', 0, 1, 1.5, 'F6361', 1, '*'),
(3559, 'for joomlaville', 'for joomlaville', 0, 1, 1.5, 'F625414', 1, '*'),
(3560, 'for joomlaville people', 'for joomlaville people', 0, 1, 1.7333, 'F62541414', 1, '*'),
(3561, 'for residents', 'for residents', 0, 1, 1.4333, 'F623532', 1, '*'),
(3562, 'for residents to', 'for residents to', 0, 1, 1.5333, 'F6235323', 1, '*'),
(3563, 'from the beach', 'from the beach', 0, 1, 1.4667, 'F65312', 1, '*'),
(3564, 'from the capital', 'from the capital', 0, 1, 1.5333, 'F6532134', 1, '*'),
(3565, 'hour drive', 'hour drive', 0, 1, 1.3333, 'H6361', 1, '*'),
(3566, 'hour drive from', 'hour drive from', 0, 1, 1.5, 'H636165', 1, '*'),
(3567, 'hours from', 'hours from', 0, 1, 1.3333, 'H62165', 1, '*'),
(3568, 'hours from the', 'hours from the', 0, 1, 1.4667, 'H621653', 1, '*'),
(3569, 'in the southeast', 'in the southeast', 0, 1, 1.5333, 'I532323', 1, '*'),
(3570, 'is also', 'is also', 0, 1, 1.2333, 'I242', 1, '*'),
(3571, 'is also about', 'is also about', 0, 1, 1.4333, 'I24213', 1, '*'),
(3572, 'is in', 'is in', 0, 1, 1.1667, 'I250', 1, '*'),
(3573, 'is in the', 'is in the', 0, 1, 1.3, 'I253', 1, '*'),
(3574, 'is located near', 'is located near', 0, 1, 1.5, 'I242356', 1, '*'),
(3575, 'is plenty', 'is plenty', 0, 1, 1.3, 'I21453', 1, '*'),
(3576, 'is plenty of', 'is plenty of', 0, 1, 1.4, 'I214531', 1, '*'),
(3577, 'it is located', 'it is located', 0, 1, 1.4333, 'I32423', 1, '*'),
(3578, 'it''s easy', 'it easy', 0, 1, 1.3, 'I320', 1, '*'),
(3579, 'it''s easy for', 'it easy for', 0, 1, 1.4333, 'I3216', 1, '*'),
(3580, 'joomlaville is also', 'joomlaville is also', 0, 1, 1.6333, 'J5414242', 1, '*'),
(3581, 'joomlaville is in', 'joomlaville is in', 0, 1, 1.5667, 'J541425', 1, '*'),
(3582, 'joomlaville location', 'joomlaville location', 0, 1, 1.6667, 'J5414235', 1, '*'),
(3583, 'joomlaville people', 'joomlaville people', 0, 1, 1.6, 'J541414', 1, '*'),
(3584, 'joomlaville people to', 'joomlaville people to', 0, 1, 1.7, 'J5414143', 1, '*'),
(3585, 'kayaking', 'kayaking', 0, 0, 0.5333, 'K520', 1, '*'),
(3586, 'kayaking and', 'kayaking and', 0, 1, 1.4, 'K5253', 1, '*'),
(3587, 'kayaking and other', 'kayaking and other', 0, 1, 1.6, 'K52536', 1, '*'),
(3588, 'large mountain', 'large mountain', 0, 1, 1.4667, 'L62535', 1, '*'),
(3589, 'large mountain range', 'large mountain range', 0, 1, 1.6667, 'L62535652', 1, '*'),
(3590, 'located near', 'located near', 0, 1, 1.4, 'L2356', 1, '*'),
(3591, 'located near a', 'located near a', 0, 1, 1.4667, 'L2356', 1, '*'),
(3592, 'mountain', 'mountain', 0, 0, 0.5333, 'M350', 1, '*'),
(3593, 'mountain range', 'mountain range', 0, 1, 1.4667, 'M35652', 1, '*'),
(3594, 'mountain range so', 'mountain range so', 0, 1, 1.5667, 'M35652', 1, '*'),
(3595, 'near', 'near', 0, 0, 0.2667, 'N600', 1, '*'),
(3596, 'near a', 'near a', 0, 1, 1.2, 'N600', 1, '*'),
(3597, 'near a large', 'near a large', 0, 1, 1.4, 'N6462', 1, '*'),
(3598, 'of opportunity', 'of opportunity', 0, 1, 1.4667, 'O16353', 1, '*'),
(3599, 'of opportunity for', 'of opportunity for', 0, 1, 1.6, 'O1635316', 1, '*'),
(3600, 'of our country', 'of our country', 0, 1, 1.4667, 'O162536', 1, '*'),
(3601, 'opportunity for joomlaville', 'opportunity for joomlaville', 0, 1, 1.9, 'O163531625414', 1, '*'),
(3602, 'other outdoor', 'other outdoor', 0, 1, 1.4333, 'O3636', 1, '*'),
(3603, 'other outdoor activities', 'other outdoor activities', 0, 1, 1.8, 'O363623132', 1, '*'),
(3604, 'our country', 'our country', 0, 1, 1.3667, 'O62536', 1, '*'),
(3605, 'our country about', 'our country about', 0, 1, 1.5667, 'O6253613', 1, '*'),
(3606, 'outdoor', 'outdoor', 0, 0, 0.4667, 'O360', 1, '*'),
(3607, 'outdoor activities', 'outdoor activities', 0, 1, 1.6, 'O3623132', 1, '*'),
(3608, 'outdoor activities joomlaville', 'outdoor activities joomlaville', 0, 1, 2, 'O36231325414', 1, '*'),
(3609, 'people to', 'people to', 0, 1, 1.3, 'P430', 1, '*'),
(3610, 'people to enjoy', 'people to enjoy', 0, 1, 1.5, 'P4352', 1, '*'),
(3611, 'plenty of opportunity', 'plenty of opportunity', 0, 1, 1.7, 'P45316353', 1, '*'),
(3612, 'range', 'range', 0, 0, 0.3333, 'R520', 1, '*'),
(3613, 'range so', 'range so', 0, 1, 1.2667, 'R520', 1, '*'),
(3614, 'range so there', 'range so there', 0, 1, 1.4667, 'R5236', 1, '*'),
(3615, 'residents to', 'residents to', 0, 1, 1.4, 'R235323', 1, '*'),
(3616, 'residents to enjoy', 'residents to enjoy', 0, 1, 1.6, 'R23532352', 1, '*'),
(3617, 'skiing', 'skiing', 0, 0, 0.4, 'S520', 1, '*'),
(3618, 'skiing kayaking', 'skiing kayaking', 0, 1, 1.5, 'S5252', 1, '*'),
(3619, 'skiing kayaking and', 'skiing kayaking and', 0, 1, 1.6333, 'S525253', 1, '*'),
(3620, 'so it''s', 'so it', 0, 1, 1.2333, 'S320', 1, '*'),
(3621, 'so it''s easy', 'so it easy', 0, 1, 1.4, 'S320', 1, '*'),
(3622, 'so there', 'so there', 0, 1, 1.2667, 'S360', 1, '*'),
(3623, 'so there is', 'so there is', 0, 1, 1.3667, 'S362', 1, '*'),
(3624, 'southeast', 'southeast', 0, 0, 0.6, 'S323', 1, '*'),
(3625, 'southeast of', 'southeast of', 0, 1, 1.4, 'S3231', 1, '*'),
(3626, 'southeast of our', 'southeast of our', 0, 1, 1.5333, 'S32316', 1, '*'),
(3627, 'sunny', 'sunny', 0, 0, 0.3333, 'S500', 1, '*'),
(3628, 'sunny vacation', 'sunny vacation', 0, 1, 1.4667, 'S51235', 1, '*'),
(3629, 'the beach', 'the beach', 0, 1, 1.3, 'T120', 1, '*'),
(3630, 'the beach so', 'the beach so', 0, 1, 1.4, 'T120', 1, '*'),
(3631, 'the capital', 'the capital', 0, 1, 1.3667, 'T2134', 1, '*'),
(3632, 'the capital it', 'the capital it', 0, 1, 1.4667, 'T21343', 1, '*'),
(3633, 'the southeast', 'the southeast', 0, 1, 1.4333, 'T2323', 1, '*'),
(3634, 'the southeast of', 'the southeast of', 0, 1, 1.5333, 'T23231', 1, '*'),
(3635, 'there is plenty', 'there is plenty', 0, 1, 1.5, 'T621453', 1, '*'),
(3636, 'three', 'three', 0, 0, 0.3333, 'T600', 1, '*'),
(3637, 'three hours', 'three hours', 0, 1, 1.3667, 'T620', 1, '*'),
(3638, 'three hours from', 'three hours from', 0, 1, 1.5333, 'T62165', 1, '*'),
(3639, 'to enjoy a', 'to enjoy a', 0, 1, 1.3333, 'T520', 1, '*'),
(3640, 'to enjoy skiing', 'to enjoy skiing', 0, 1, 1.5, 'T5252', 1, '*'),
(3641, 'vacation', 'vacation', 0, 0, 0.5333, 'V235', 1, '*'),
(3649, 'a city located', 'a city located', 0, 1, 1.4667, 'A23423', 1, '*'),
(3650, 'a great climate', 'a great climate', 0, 1, 1.5, 'A2632453', 1, '*'),
(3651, 'and plenty', 'and plenty', 0, 1, 1.3333, 'A531453', 1, '*'),
(3652, 'and plenty of', 'and plenty of', 0, 1, 1.4333, 'A5314531', 1, '*'),
(3653, 'at the foothills', 'at the foothills', 0, 1, 1.5333, 'A31342', 1, '*'),
(3654, 'city located', 'city located', 0, 1, 1.4, 'C3423', 1, '*'),
(3655, 'city located in', 'city located in', 0, 1, 1.5, 'C34235', 1, '*'),
(3656, 'climate at', 'climate at', 0, 1, 1.3333, 'C453', 1, '*'),
(3657, 'climate at the', 'climate at the', 0, 1, 1.4667, 'C453', 1, '*'),
(3658, 'during', 'during', 0, 0, 0.4, 'D652', 2, '*'),
(3659, 'during the', 'during the', 0, 1, 1.3333, 'D6523', 2, '*'),
(3660, 'during the summer', 'during the summer', 0, 1, 1.5667, 'D6523256', 2, '*'),
(3661, 'enjoyable', 'enjoyable', 0, 0, 0.6, 'E5214', 1, '*'),
(3662, 'enjoyable weather', 'enjoyable weather', 0, 1, 1.5667, 'E521436', 1, '*'),
(3663, 'find', 'find', 0, 0, 0.2667, 'F530', 2, '*'),
(3664, 'find that', 'find that', 0, 1, 1.3, 'F530', 1, '*'),
(3665, 'find that joomlaville', 'find that joomlaville', 0, 1, 1.7, 'F5325414', 1, '*'),
(3666, 'foothills', 'foothills', 0, 0, 0.6, 'F342', 1, '*'),
(3667, 'foothills of', 'foothills of', 0, 1, 1.4, 'F3421', 1, '*'),
(3668, 'foothills of the', 'foothills of the', 0, 1, 1.5333, 'F34213', 1, '*'),
(3669, 'great climate', 'great climate', 0, 1, 1.4333, 'G632453', 1, '*'),
(3670, 'great climate at', 'great climate at', 0, 1, 1.5333, 'G632453', 1, '*');
INSERT INTO `sg0we_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(3671, 'has enjoyable', 'has enjoyable', 0, 1, 1.4333, 'H25214', 1, '*'),
(3672, 'has enjoyable weather', 'has enjoyable weather', 0, 1, 1.7, 'H2521436', 1, '*'),
(3673, 'in a great', 'in a great', 0, 1, 1.3333, 'I5263', 1, '*'),
(3674, 'is snow', 'is snow', 0, 1, 1.2333, 'I250', 1, '*'),
(3675, 'is snow in', 'is snow in', 0, 1, 1.3333, 'I250', 1, '*'),
(3676, 'joomlaville climate', 'joomlaville climate', 0, 1, 1.6333, 'J54142453', 1, '*'),
(3677, 'joomlaville has enjoyable', 'joomlaville has enjoyable', 0, 1, 1.8333, 'J541425214', 1, '*'),
(3678, 'located in', 'located in', 0, 1, 1.3333, 'L235', 1, '*'),
(3679, 'located in a', 'located in a', 0, 1, 1.4, 'L235', 1, '*'),
(3680, 'matter', 'matter', 0, 0, 0.4, 'M360', 1, '*'),
(3681, 'matter time', 'matter time', 0, 1, 1.3667, 'M3635', 1, '*'),
(3682, 'matter time of', 'matter time of', 0, 1, 1.4667, 'M36351', 1, '*'),
(3683, 'mountains there', 'mountains there', 0, 1, 1.5, 'M35236', 1, '*'),
(3684, 'mountains there is', 'mountains there is', 0, 1, 1.6, 'M352362', 1, '*'),
(3685, 'no', 'no', 0, 0, 0.1333, 'N000', 1, '*'),
(3686, 'no matter', 'no matter', 0, 1, 1.3, 'N360', 1, '*'),
(3687, 'no matter time', 'no matter time', 0, 1, 1.4667, 'N3635', 1, '*'),
(3688, 'of sun', 'of sun', 0, 1, 1.2, 'O125', 1, '*'),
(3689, 'of sun during', 'of sun during', 0, 1, 1.4333, 'O1253652', 1, '*'),
(3690, 'of the mountains', 'of the mountains', 0, 1, 1.5333, 'O135352', 1, '*'),
(3691, 'of year', 'of year', 0, 1, 1.2333, 'O160', 1, '*'),
(3692, 'of year you', 'of year you', 0, 1, 1.3667, 'O160', 1, '*'),
(3693, 'plenty of sun', 'plenty of sun', 0, 1, 1.4333, 'P453125', 1, '*'),
(3694, 'snow', 'snow', 0, 0, 0.2667, 'S500', 1, '*'),
(3695, 'snow in', 'snow in', 0, 1, 1.2333, 'S500', 1, '*'),
(3696, 'snow in the', 'snow in the', 0, 1, 1.3667, 'S530', 1, '*'),
(3697, 'summer no', 'summer no', 0, 1, 1.3, 'S565', 1, '*'),
(3698, 'summer no matter', 'summer no matter', 0, 1, 1.5333, 'S56536', 1, '*'),
(3699, 'sun', 'sun', 0, 0, 0.2, 'S500', 1, '*'),
(3700, 'sun during', 'sun during', 0, 1, 1.3333, 'S53652', 1, '*'),
(3701, 'sun during the', 'sun during the', 0, 1, 1.4667, 'S536523', 1, '*'),
(3702, 'that', 'that', 0, 0, 0.2667, 'T000', 2, '*'),
(3703, 'that joomlaville', 'that joomlaville', 0, 1, 1.5333, 'T25414', 2, '*'),
(3704, 'that joomlaville has', 'that joomlaville has', 0, 1, 1.6667, 'T254142', 1, '*'),
(3705, 'the foothills', 'the foothills', 0, 1, 1.4333, 'T1342', 1, '*'),
(3706, 'the foothills of', 'the foothills of', 0, 1, 1.5333, 'T13421', 1, '*'),
(3707, 'the mountains there', 'the mountains there', 0, 1, 1.6333, 'T535236', 1, '*'),
(3708, 'the summer no', 'the summer no', 0, 1, 1.4333, 'T2565', 1, '*'),
(3709, 'the winter and', 'the winter and', 0, 1, 1.4667, 'T53653', 1, '*'),
(3710, 'there is snow', 'there is snow', 0, 1, 1.4333, 'T625', 1, '*'),
(3711, 'time of', 'time of', 0, 1, 1.2333, 'T510', 1, '*'),
(3712, 'time of year', 'time of year', 0, 1, 1.4, 'T516', 1, '*'),
(3713, 'visit you''ll', 'visit you', 0, 1, 1.4, 'V234', 1, '*'),
(3714, 'visit you''ll find', 'visit you find', 0, 1, 1.5667, 'V234153', 1, '*'),
(3715, 'winter and', 'winter and', 0, 1, 1.3333, 'W53653', 1, '*'),
(3716, 'winter and plenty', 'winter and plenty', 0, 1, 1.5667, 'W536531453', 1, '*'),
(3717, 'year', 'year', 0, 0, 0.2667, 'Y600', 1, '*'),
(3718, 'year you', 'year you', 0, 1, 1.2667, 'Y600', 1, '*'),
(3719, 'year you visit', 'year you visit', 0, 1, 1.4667, 'Y6123', 1, '*'),
(3720, 'you visit', 'you visit', 0, 1, 1.3, 'Y123', 1, '*'),
(3721, 'you visit you''ll', 'you visit you', 0, 1, 1.5333, 'Y1234', 1, '*'),
(3722, 'you''ll find', 'you find', 0, 1, 1.3667, 'Y4153', 2, '*'),
(3723, 'you''ll find that', 'you find that', 0, 1, 1.5333, 'Y4153', 1, '*'),
(3791, 'board', 'board', 0, 0, 0.3333, 'B630', 2, '*'),
(3792, 'board minutes', 'board minutes', 0, 1, 1.4333, 'B63532', 2, '*'),
(3799, 'minutes', 'minutes', 0, 0, 0.4667, 'M320', 2, '*'),
(3806, '15', '15', 0, 0, 0.2, '', 2, '*'),
(3807, 'board minutes for', 'board minutes for', 0, 1, 1.5667, 'B6353216', 1, '*'),
(3808, 'for may', 'for may', 0, 1, 1.2333, 'F650', 1, '*'),
(3809, 'joomlaville board', 'joomlaville board', 0, 1, 1.5667, 'J5414163', 1, '*'),
(3810, 'joomlaville board minutes', 'joomlaville board minutes', 0, 1, 1.8333, 'J5414163532', 1, '*'),
(3811, 'martin', 'martin', 0, 0, 0.4, 'M635', 7, '*'),
(3812, 'may', 'may', 0, 0, 0.2, 'M000', 1, '*'),
(3813, 'minutes for', 'minutes for', 0, 1, 1.3667, 'M3216', 1, '*'),
(3814, 'minutes for may', 'minutes for may', 0, 1, 1.5, 'M32165', 1, '*'),
(3815, 'rod', 'rod', 0, 0, 0.2, 'R300', 7, '*'),
(3816, 'rod martin', 'rod martin', 0, 1, 1.3333, 'R35635', 7, '*'),
(3822, '16', '16', 0, 0, 0.2, '', 3, '*'),
(3823, 'joomlaville parks', 'joomlaville parks', 0, 1, 1.5667, 'J5414162', 1, '*'),
(3824, 'parks', 'parks', 0, 0, 0.3333, 'P620', 5, '*'),
(3825, 'park', 'park', 0, 0, 0.2667, 'P620', 3, '*'),
(3829, '17', '17', 0, 0, 0.2, '', 4, '*'),
(3832, 'joomlaville news', 'joomlaville news', 0, 1, 1.5333, 'J541452', 2, '*'),
(3833, '1.6', '1.6', 0, 0, 0.3, '', 1, '*'),
(3834, '1.6 right', '1.6 right', 0, 1, 1.3, 'R230', 1, '*'),
(3835, '1.6 right now', '1.6 right now', 0, 1, 1.4333, 'R235', 1, '*'),
(3836, '1.6 was', '1.6 was', 0, 1, 1.2333, 'W200', 1, '*'),
(3837, '1.6 was finished', '1.6 was finished', 0, 1, 1.5333, 'W21523', 1, '*'),
(3838, '18', '18', 0, 0, 0.2, '', 1, '*'),
(3839, 'a large new', 'a large new', 0, 1, 1.3667, 'A4625', 1, '*'),
(3840, 'article 1', 'article 1', 0, 1, 1.3, 'A6324', 1, '*'),
(3841, 'at 1.6', 'at 1.6', 0, 1, 1.2, 'A300', 1, '*'),
(3842, 'at 1.6 right', 'at 1.6 right', 0, 1, 1.4, 'A3623', 1, '*'),
(3843, 'big news', 'big news', 0, 1, 1.2667, 'B252', 1, '*'),
(3844, 'big news in', 'big news in', 0, 1, 1.3667, 'B2525', 1, '*'),
(3845, 'but it', 'but it', 0, 1, 1.2, 'B300', 1, '*'),
(3846, 'but it was', 'but it was', 0, 1, 1.3333, 'B320', 1, '*'),
(3847, 'called', 'called', 0, 0, 0.4, 'C430', 1, '*'),
(3848, 'called 1.6', 'called 1.6', 0, 1, 1.3333, 'C430', 1, '*'),
(3849, 'called 1.6 was', 'called 1.6 was', 0, 1, 1.4667, 'C432', 1, '*'),
(3850, 'complete', 'complete', 0, 0, 0.5333, 'C5143', 1, '*'),
(3851, 'complete but', 'complete but', 0, 1, 1.4, 'C514313', 1, '*'),
(3852, 'complete but it', 'complete but it', 0, 1, 1.5, 'C514313', 1, '*'),
(3853, 'construction', 'construction', 0, 0, 0.8, 'C5236235', 1, '*'),
(3854, 'construction of', 'construction of', 0, 1, 1.5, 'C52362351', 1, '*'),
(3855, 'construction of a', 'construction of a', 0, 1, 1.5667, 'C52362351', 1, '*'),
(3856, 'do you', 'do you', 0, 1, 1.2, 'D000', 1, '*'),
(3857, 'do you think', 'do you think', 0, 1, 1.4, 'D520', 1, '*'),
(3858, 'effort', 'effort', 0, 0, 0.4, 'E163', 1, '*'),
(3859, 'effort in', 'effort in', 0, 1, 1.3, 'E1635', 1, '*'),
(3860, 'effort in fact', 'effort in fact', 0, 1, 1.4667, 'E1635123', 1, '*'),
(3861, 'effort of', 'effort of', 0, 1, 1.3, 'E1631', 1, '*'),
(3862, 'effort of many', 'effort of many', 0, 1, 1.4667, 'E16315', 1, '*'),
(3863, 'fact', 'fact', 0, 0, 0.2667, 'F230', 1, '*'),
(3864, 'fact you''re', 'fact you', 0, 1, 1.3667, 'F236', 1, '*'),
(3865, 'fact you''re looking', 'fact you looking', 0, 1, 1.6333, 'F2364252', 1, '*'),
(3866, 'finished', 'finished', 0, 0, 0.5333, 'F523', 1, '*'),
(3867, 'finished it', 'finished it', 0, 1, 1.3667, 'F523', 1, '*'),
(3868, 'finished it took', 'finished it took', 0, 1, 1.5333, 'F5232', 1, '*'),
(3869, 'in fact', 'in fact', 0, 1, 1.2333, 'I5123', 1, '*'),
(3870, 'in fact you''re', 'in fact you', 0, 1, 1.4667, 'I51236', 1, '*'),
(3871, 'in joomlaville recently', 'in joomlaville recently', 0, 1, 1.7667, 'I52541462534', 1, '*'),
(3872, 'in joomlaville to', 'in joomlaville to', 0, 1, 1.5667, 'I5254143', 1, '*'),
(3873, 'it took', 'it took', 0, 1, 1.2333, 'I320', 1, '*'),
(3874, 'it took the', 'it took the', 0, 1, 1.3667, 'I323', 1, '*'),
(3875, 'it was worth', 'it was worth', 0, 1, 1.4, 'I3263', 1, '*'),
(3876, 'joomlaville recently', 'joomlaville recently', 0, 1, 1.6667, 'J541462534', 1, '*'),
(3877, 'joomlaville recently construction', 'joomlaville recently construction', 0, 1, 2, 'J54146253425236235', 1, '*'),
(3878, 'joomlaville to', 'joomlaville to', 0, 1, 1.4667, 'J54143', 1, '*'),
(3879, 'joomlaville to complete', 'joomlaville to complete', 0, 1, 1.7667, 'J5414325143', 1, '*'),
(3880, 'large new', 'large new', 0, 1, 1.3, 'L625', 1, '*'),
(3881, 'large new project', 'large new project', 0, 1, 1.5667, 'L6251623', 1, '*'),
(3882, 'looking at', 'looking at', 0, 1, 1.3333, 'L2523', 1, '*'),
(3883, 'looking at 1.6', 'looking at 1.6', 0, 1, 1.4667, 'L2523', 1, '*'),
(3884, 'many people', 'many people', 0, 1, 1.3667, 'M140', 1, '*'),
(3885, 'many people in', 'many people in', 0, 1, 1.4667, 'M145', 1, '*'),
(3886, 'new project', 'new project', 0, 1, 1.3667, 'N1623', 1, '*'),
(3887, 'new project called', 'new project called', 0, 1, 1.6, 'N1623243', 1, '*'),
(3888, 'news article', 'news article', 0, 1, 1.4, 'N26324', 3, '*'),
(3889, 'news article 1', 'news article 1', 0, 1, 1.4667, 'N26324', 1, '*'),
(3890, 'news in', 'news in', 0, 1, 1.2333, 'N250', 1, '*'),
(3891, 'news in joomlaville', 'news in joomlaville', 0, 1, 1.6333, 'N2525414', 1, '*'),
(3892, 'now what', 'now what', 0, 1, 1.2667, 'N300', 1, '*'),
(3893, 'now what do', 'now what do', 0, 1, 1.3667, 'N300', 1, '*'),
(3894, 'of a', 'of a', 0, 1, 1.1333, 'O100', 1, '*'),
(3895, 'of a large', 'of a large', 0, 1, 1.3333, 'O1462', 1, '*'),
(3896, 'of many', 'of many', 0, 1, 1.2333, 'O150', 1, '*'),
(3897, 'of many people', 'of many people', 0, 1, 1.4667, 'O1514', 1, '*'),
(3898, 'people in', 'people in', 0, 1, 1.3, 'P450', 1, '*'),
(3899, 'people in joomlaville', 'people in joomlaville', 0, 1, 1.7, 'P4525414', 1, '*'),
(3900, 'project', 'project', 0, 0, 0.4667, 'P623', 1, '*'),
(3901, 'project called', 'project called', 0, 1, 1.4667, 'P623243', 1, '*'),
(3902, 'project called 1.6', 'project called 1.6', 0, 1, 1.6, 'P623243', 1, '*'),
(3903, 'recently', 'recently', 0, 0, 0.5333, 'R2534', 1, '*'),
(3904, 'recently construction', 'recently construction', 0, 1, 1.7, 'R253425236235', 1, '*'),
(3905, 'recently construction of', 'recently construction of', 0, 1, 1.8, 'R2534252362351', 1, '*'),
(3906, 'right', 'right', 0, 0, 0.3333, 'R230', 2, '*'),
(3907, 'right now', 'right now', 0, 1, 1.3, 'R235', 1, '*'),
(3908, 'right now what', 'right now what', 0, 1, 1.4667, 'R2353', 1, '*'),
(3909, 'sample', 'sample', 0, 0, 0.4, 'S514', 3, '*'),
(3910, 'sample news', 'sample news', 0, 1, 1.3667, 'S51452', 3, '*'),
(3911, 'sample news article', 'sample news article', 0, 1, 1.6333, 'S514526324', 3, '*'),
(3912, 'some big', 'some big', 0, 1, 1.2667, 'S512', 1, '*'),
(3913, 'some big news', 'some big news', 0, 1, 1.4333, 'S51252', 1, '*'),
(3914, 'the effort', 'the effort', 0, 1, 1.3333, 'T163', 1, '*'),
(3915, 'the effort in', 'the effort in', 0, 1, 1.4333, 'T1635', 1, '*'),
(3916, 'the effort of', 'the effort of', 0, 1, 1.4333, 'T1631', 1, '*'),
(3917, 'there was', 'there was', 0, 1, 1.3, 'T620', 1, '*'),
(3918, 'there was some', 'there was some', 0, 1, 1.4667, 'T625', 1, '*'),
(3919, 'think', 'think', 0, 0, 0.3333, 'T520', 1, '*'),
(3920, 'to complete', 'to complete', 0, 1, 1.3667, 'T25143', 1, '*'),
(3921, 'to complete but', 'to complete but', 0, 1, 1.5, 'T2514313', 1, '*'),
(3922, 'took', 'took', 0, 0, 0.2667, 'T200', 1, '*'),
(3923, 'took the', 'took the', 0, 1, 1.2667, 'T230', 1, '*'),
(3924, 'took the effort', 'took the effort', 0, 1, 1.5, 'T23163', 1, '*'),
(3925, 'was finished', 'was finished', 0, 1, 1.4, 'W21523', 1, '*'),
(3926, 'was finished it', 'was finished it', 0, 1, 1.5, 'W21523', 1, '*'),
(3927, 'was some', 'was some', 0, 1, 1.2667, 'W250', 1, '*'),
(3928, 'was some big', 'was some big', 0, 1, 1.4, 'W2512', 1, '*'),
(3929, 'was worth', 'was worth', 0, 1, 1.3, 'W263', 1, '*'),
(3930, 'was worth the', 'was worth the', 0, 1, 1.4333, 'W263', 1, '*'),
(3931, 'what', 'what', 0, 0, 0.2667, 'W300', 1, '*'),
(3932, 'what do', 'what do', 0, 1, 1.2333, 'W300', 1, '*'),
(3933, 'what do you', 'what do you', 0, 1, 1.3667, 'W300', 1, '*'),
(3934, 'worth', 'worth', 0, 0, 0.3333, 'W630', 1, '*'),
(3935, 'worth the', 'worth the', 0, 1, 1.3, 'W630', 1, '*'),
(3936, 'worth the effort', 'worth the effort', 0, 1, 1.5333, 'W63163', 1, '*'),
(3937, 'you think', 'you think', 0, 1, 1.3, 'Y352', 1, '*'),
(3938, 'you''re looking', 'you looking', 0, 1, 1.4667, 'Y64252', 1, '*'),
(3939, 'you''re looking at', 'you looking at', 0, 1, 1.5667, 'Y642523', 1, '*'),
(3960, '19', '19', 0, 0, 0.2, '', 1, '*'),
(3961, 'a visit', 'a visit', 0, 1, 1.2333, 'A123', 1, '*'),
(3962, 'a visit and', 'a visit and', 0, 1, 1.3667, 'A12353', 1, '*'),
(3963, 'and high', 'and high', 0, 1, 1.2667, 'A532', 1, '*'),
(3964, 'and high quality', 'and high quality', 0, 1, 1.5333, 'A53243', 1, '*'),
(3965, 'and lots', 'and lots', 0, 1, 1.2667, 'A53432', 1, '*'),
(3966, 'and lots of', 'and lots of', 0, 1, 1.3667, 'A534321', 1, '*'),
(3967, 'and see', 'and see', 0, 1, 1.2333, 'A532', 1, '*'),
(3968, 'and see if', 'and see if', 0, 1, 1.3333, 'A5321', 1, '*'),
(3969, 'are moving', 'are moving', 0, 1, 1.3333, 'A65152', 1, '*'),
(3970, 'are moving to', 'are moving to', 0, 1, 1.4333, 'A651523', 1, '*'),
(3971, 'around every', 'around every', 0, 1, 1.4, 'A65316', 1, '*'),
(3972, 'around every day', 'around every day', 0, 1, 1.5333, 'A653163', 1, '*'),
(3973, 'article 2', 'article 2', 0, 1, 1.3, 'A6324', 1, '*'),
(3974, 'attracted', 'attracted', 0, 0, 0.6, 'A3623', 1, '*'),
(3975, 'attracted by', 'attracted by', 0, 1, 1.4, 'A36231', 1, '*'),
(3976, 'attracted by the', 'attracted by the', 0, 1, 1.5333, 'A362313', 1, '*'),
(3977, 'by the', 'by the', 0, 1, 1.2, 'B300', 1, '*'),
(3978, 'by the low', 'by the low', 0, 1, 1.3333, 'B340', 1, '*'),
(3979, 'cities around every', 'cities around every', 0, 1, 1.6333, 'C3265316', 1, '*'),
(3980, 'cost', 'cost', 0, 0, 0.2667, 'C300', 1, '*'),
(3981, 'cost and', 'cost and', 0, 1, 1.2667, 'C353', 1, '*'),
(3982, 'cost and high', 'cost and high', 0, 1, 1.4333, 'C3532', 1, '*'),
(3983, 'day lots', 'day lots', 0, 1, 1.2667, 'D432', 1, '*'),
(3984, 'day lots and', 'day lots and', 0, 1, 1.4, 'D43253', 1, '*'),
(3985, 'did', 'did', 0, 0, 0.2, 'D000', 1, '*'),
(3986, 'did you', 'did you', 0, 1, 1.2333, 'D000', 1, '*'),
(3987, 'did you know', 'did you know', 0, 1, 1.4, 'D250', 1, '*'),
(3988, 'don''t you', 'don you', 0, 1, 1.3, 'D530', 1, '*'),
(3989, 'don''t you pay', 'don you pay', 0, 1, 1.4333, 'D531', 1, '*'),
(3990, 'every day', 'every day', 0, 1, 1.3, 'E163', 1, '*'),
(3991, 'every day lots', 'every day lots', 0, 1, 1.4667, 'E163432', 1, '*'),
(3992, 'fastest', 'fastest', 0, 0, 0.4667, 'F2323', 1, '*'),
(3993, 'fastest growing', 'fastest growing', 0, 1, 1.5, 'F23232652', 1, '*'),
(3994, 'fastest growing cities', 'fastest growing cities', 0, 1, 1.7333, 'F2323265232', 1, '*'),
(3995, 'growing', 'growing', 0, 0, 0.4667, 'G652', 1, '*'),
(3996, 'growing cities', 'growing cities', 0, 1, 1.4667, 'G65232', 1, '*'),
(3997, 'growing cities around', 'growing cities around', 0, 1, 1.7, 'G65232653', 1, '*'),
(3998, 'high', 'high', 0, 0, 0.2667, 'H200', 1, '*'),
(3999, 'high quality', 'high quality', 0, 1, 1.4, 'H243', 1, '*'),
(4000, 'high quality of', 'high quality of', 0, 1, 1.5, 'H2431', 1, '*'),
(4001, 'if you''d', 'if you', 0, 1, 1.2667, 'I130', 1, '*'),
(4002, 'if you''d like', 'if you like', 0, 1, 1.4333, 'I1342', 1, '*'),
(4003, 'join', 'join', 0, 0, 0.2667, 'J500', 1, '*'),
(4004, 'join us', 'join us', 0, 1, 1.2333, 'J520', 1, '*'),
(4005, 'joomlaville attracted', 'joomlaville attracted', 0, 1, 1.7, 'J54143623', 1, '*'),
(4006, 'joomlaville attracted by', 'joomlaville attracted by', 0, 1, 1.8, 'J541436231', 1, '*'),
(4007, 'joomlaville is one', 'joomlaville is one', 0, 1, 1.6, 'J541425', 1, '*'),
(4008, 'know', 'know', 0, 0, 0.2667, 'K500', 1, '*'),
(4009, 'know that', 'know that', 0, 1, 1.3, 'K530', 1, '*'),
(4010, 'know that joomlaville', 'know that joomlaville', 0, 1, 1.7, 'K5325414', 1, '*'),
(4011, 'like to', 'like to', 0, 1, 1.2333, 'L230', 2, '*'),
(4012, 'like to join', 'like to join', 0, 1, 1.4, 'L2325', 1, '*'),
(4013, 'living', 'living', 0, 0, 0.4, 'L152', 1, '*'),
(4014, 'living why', 'living why', 0, 1, 1.3333, 'L152', 1, '*'),
(4015, 'living why don''t', 'living why don', 0, 1, 1.5333, 'L152353', 1, '*'),
(4016, 'lots and', 'lots and', 0, 1, 1.2667, 'L3253', 1, '*'),
(4017, 'lots and lots', 'lots and lots', 0, 1, 1.4333, 'L3253432', 1, '*'),
(4018, 'lots of new', 'lots of new', 0, 1, 1.3667, 'L3215', 1, '*'),
(4019, 'low', 'low', 0, 0, 0.2, 'L000', 1, '*'),
(4020, 'low cost', 'low cost', 0, 1, 1.2667, 'L230', 1, '*'),
(4021, 'low cost and', 'low cost and', 0, 1, 1.4, 'L2353', 1, '*'),
(4022, 'moving', 'moving', 0, 0, 0.4, 'M152', 1, '*'),
(4023, 'moving to', 'moving to', 0, 1, 1.3, 'M1523', 1, '*'),
(4024, 'moving to joomlaville', 'moving to joomlaville', 0, 1, 1.7, 'M152325414', 1, '*'),
(4025, 'new people', 'new people', 0, 1, 1.3333, 'N140', 1, '*'),
(4026, 'new people are', 'new people are', 0, 1, 1.4667, 'N146', 1, '*'),
(4027, 'news article 2', 'news article 2', 0, 1, 1.4667, 'N26324', 1, '*'),
(4028, 'of living', 'of living', 0, 1, 1.3, 'O14152', 1, '*'),
(4029, 'of living why', 'of living why', 0, 1, 1.4333, 'O14152', 1, '*'),
(4030, 'of new people', 'of new people', 0, 1, 1.4333, 'O1514', 1, '*'),
(4031, 'of the fastest', 'of the fastest', 0, 1, 1.4667, 'O1312323', 1, '*'),
(4032, 'pay', 'pay', 0, 0, 0.2, 'P000', 1, '*'),
(4033, 'pay us', 'pay us', 0, 1, 1.2, 'P200', 1, '*'),
(4034, 'pay us a', 'pay us a', 0, 1, 1.2667, 'P200', 1, '*'),
(4035, 'people are', 'people are', 0, 1, 1.3333, 'P460', 1, '*'),
(4036, 'people are moving', 'people are moving', 0, 1, 1.5667, 'P465152', 1, '*'),
(4037, 'quality', 'quality', 0, 0, 0.4667, 'Q430', 1, '*'),
(4038, 'quality of', 'quality of', 0, 1, 1.3333, 'Q431', 1, '*'),
(4039, 'quality of living', 'quality of living', 0, 1, 1.5667, 'Q4314152', 1, '*'),
(4040, 'see if', 'see if', 0, 1, 1.2, 'S100', 2, '*'),
(4041, 'see if you''d', 'see if you', 0, 1, 1.4, 'S130', 1, '*'),
(4042, 'that joomlaville is', 'that joomlaville is', 0, 1, 1.6333, 'T254142', 1, '*'),
(4043, 'the fastest', 'the fastest', 0, 1, 1.3667, 'T12323', 1, '*'),
(4044, 'the fastest growing', 'the fastest growing', 0, 1, 1.6333, 'T123232652', 1, '*'),
(4045, 'the low', 'the low', 0, 1, 1.2333, 'T400', 1, '*'),
(4046, 'the low cost', 'the low cost', 0, 1, 1.4, 'T423', 1, '*'),
(4047, 'to join', 'to join', 0, 1, 1.2333, 'T250', 1, '*'),
(4048, 'to join us', 'to join us', 0, 1, 1.3333, 'T252', 1, '*'),
(4049, 'to joomlaville attracted', 'to joomlaville attracted', 0, 1, 1.8, 'T254143623', 1, '*'),
(4050, 'us a', 'us a', 0, 1, 1.1333, 'U200', 1, '*'),
(4051, 'us a visit', 'us a visit', 0, 1, 1.3333, 'U2123', 1, '*'),
(4052, 'visit and', 'visit and', 0, 1, 1.3, 'V2353', 1, '*'),
(4053, 'visit and see', 'visit and see', 0, 1, 1.4333, 'V23532', 1, '*'),
(4054, 'why', 'why', 0, 0, 0.2, 'W000', 1, '*'),
(4055, 'why don''t', 'why don', 0, 1, 1.3, 'W353', 1, '*'),
(4056, 'why don''t you', 'why don you', 0, 1, 1.4333, 'W353', 1, '*'),
(4057, 'you know', 'you know', 0, 1, 1.2667, 'Y250', 1, '*'),
(4058, 'you know that', 'you know that', 0, 1, 1.4333, 'Y253', 1, '*'),
(4059, 'you pay', 'you pay', 0, 1, 1.2333, 'Y100', 1, '*'),
(4060, 'you pay us', 'you pay us', 0, 1, 1.3333, 'Y120', 1, '*'),
(4061, 'you''d', 'you', 0, 0, 0.3333, 'Y300', 2, '*'),
(4062, 'you''d like', 'you like', 0, 1, 1.3333, 'Y342', 2, '*'),
(4063, 'you''d like to', 'you like to', 0, 1, 1.4333, 'Y3423', 2, '*'),
(4087, '20', '20', 0, 0, 0.2, '', 1, '*'),
(4088, 'a busy', 'a busy', 0, 1, 1.2, 'A120', 1, '*'),
(4089, 'a busy place', 'a busy place', 0, 1, 1.4, 'A12142', 1, '*'),
(4090, 'all', 'all', 0, 0, 0.2, 'A400', 1, '*'),
(4091, 'all the', 'all the', 0, 1, 1.2333, 'A430', 1, '*'),
(4092, 'all the time', 'all the time', 0, 1, 1.4, 'A435', 1, '*'),
(4093, 'almost', 'almost', 0, 0, 0.4, 'A4523', 1, '*'),
(4094, 'almost every', 'almost every', 0, 1, 1.4, 'A452316', 1, '*'),
(4095, 'almost every month', 'almost every month', 0, 1, 1.6, 'A45231653', 1, '*'),
(4096, 'an event', 'an event', 0, 1, 1.2667, 'A5153', 1, '*'),
(4097, 'an event you''d', 'an event you', 0, 1, 1.4667, 'A5153', 1, '*'),
(4098, 'and more', 'and more', 0, 1, 1.2667, 'A5356', 1, '*'),
(4099, 'and more joomla', 'and more joomla', 0, 1, 1.5, 'A5356254', 1, '*'),
(4100, 'article 3', 'article 3', 0, 1, 1.3, 'A6324', 1, '*'),
(4101, 'attend', 'attend', 0, 0, 0.4, 'A353', 1, '*'),
(4102, 'be', 'be', 0, 0, 0.1333, 'B000', 1, '*'),
(4103, 'be sure', 'be sure', 0, 1, 1.2333, 'B260', 1, '*'),
(4104, 'be sure to', 'be sure to', 0, 1, 1.3333, 'B263', 1, '*'),
(4105, 'busy', 'busy', 0, 0, 0.2667, 'B200', 1, '*'),
(4106, 'busy place', 'busy place', 0, 1, 1.3333, 'B2142', 1, '*'),
(4107, 'busy place with', 'busy place with', 0, 1, 1.5, 'B21423', 1, '*'),
(4108, 'check', 'check', 0, 0, 0.3333, 'C000', 1, '*'),
(4109, 'check joomla', 'check joomla', 0, 1, 1.4, 'C540', 1, '*'),
(4110, 'check joomla org', 'check joomla org', 0, 1, 1.5333, 'C5462', 1, '*'),
(4111, 'event you''d', 'event you', 0, 1, 1.3667, 'E153', 1, '*'),
(4112, 'event you''d like', 'event you like', 0, 1, 1.5333, 'E15342', 1, '*'),
(4113, 'events', 'events', 0, 0, 0.4, 'E1532', 1, '*'),
(4114, 'events going', 'events going', 0, 1, 1.4, 'E153252', 1, '*'),
(4115, 'events going on', 'events going on', 0, 1, 1.5, 'E1532525', 1, '*'),
(4116, 'events happening', 'events happening', 0, 1, 1.5333, 'E1532152', 1, '*'),
(4117, 'events happening be', 'events happening be', 0, 1, 1.6333, 'E15321521', 1, '*'),
(4118, 'every month', 'every month', 0, 1, 1.3667, 'E1653', 1, '*'),
(4119, 'every month you''ll', 'every month you', 0, 1, 1.6, 'E16534', 1, '*'),
(4120, 'find more', 'find more', 0, 1, 1.3, 'F5356', 1, '*'),
(4121, 'find more and', 'find more and', 0, 1, 1.4333, 'F535653', 1, '*'),
(4122, 'going', 'going', 0, 0, 0.3333, 'G520', 1, '*'),
(4123, 'going on', 'going on', 0, 1, 1.2667, 'G525', 1, '*'),
(4124, 'going on all', 'going on all', 0, 1, 1.4, 'G5254', 1, '*'),
(4125, 'happening', 'happening', 0, 0, 0.6, 'H152', 1, '*'),
(4126, 'happening be', 'happening be', 0, 1, 1.4, 'H1521', 1, '*'),
(4127, 'happening be sure', 'happening be sure', 0, 1, 1.5667, 'H152126', 1, '*'),
(4128, 'if there''s', 'if there', 0, 1, 1.3333, 'I1362', 1, '*'),
(4129, 'if there''s an', 'if there an', 0, 1, 1.4333, 'I13625', 1, '*'),
(4130, 'is a busy', 'is a busy', 0, 1, 1.3, 'I212', 1, '*'),
(4131, 'joomla events', 'joomla events', 0, 1, 1.4333, 'J541532', 1, '*'),
(4132, 'joomla events happening', 'joomla events happening', 0, 1, 1.7667, 'J541532152', 1, '*'),
(4133, 'joomla org', 'joomla org', 0, 1, 1.3333, 'J5462', 1, '*'),
(4134, 'joomla org regularly', 'joomla org regularly', 0, 1, 1.6667, 'J546262464', 1, '*'),
(4135, 'like to attend', 'like to attend', 0, 1, 1.4667, 'L2353', 1, '*'),
(4136, 'month', 'month', 0, 0, 0.3333, 'M300', 1, '*'),
(4137, 'month you''ll', 'month you', 0, 1, 1.4, 'M340', 1, '*'),
(4138, 'month you''ll find', 'month you find', 0, 1, 1.5667, 'M34153', 1, '*'),
(4139, 'more and', 'more and', 0, 1, 1.2667, 'M653', 1, '*'),
(4140, 'more and more', 'more and more', 0, 1, 1.4333, 'M65356', 1, '*'),
(4141, 'more joomla', 'more joomla', 0, 1, 1.3667, 'M6254', 1, '*'),
(4142, 'more joomla events', 'more joomla events', 0, 1, 1.6, 'M62541532', 1, '*'),
(4143, 'news article 3', 'news article 3', 0, 1, 1.4667, 'N26324', 1, '*'),
(4144, 'on all', 'on all', 0, 1, 1.2, 'O540', 1, '*'),
(4145, 'on all the', 'on all the', 0, 1, 1.3333, 'O543', 1, '*'),
(4146, 'org regularly', 'org regularly', 0, 1, 1.4333, 'O6262464', 1, '*'),
(4147, 'org regularly to', 'org regularly to', 0, 1, 1.5333, 'O62624643', 1, '*'),
(4148, 'place with', 'place with', 0, 1, 1.3333, 'P423', 1, '*'),
(4149, 'place with events', 'place with events', 0, 1, 1.5667, 'P4231532', 1, '*'),
(4150, 'regularly', 'regularly', 0, 0, 0.6, 'R2464', 1, '*'),
(4151, 'regularly to', 'regularly to', 0, 1, 1.4, 'R24643', 1, '*'),
(4152, 'regularly to see', 'regularly to see', 0, 1, 1.5333, 'R246432', 1, '*'),
(4153, 'see if there''s', 'see if there', 0, 1, 1.4667, 'S1362', 1, '*'),
(4154, 'sure', 'sure', 0, 0, 0.2667, 'S600', 1, '*'),
(4155, 'sure to', 'sure to', 0, 1, 1.2333, 'S630', 1, '*'),
(4156, 'sure to check', 'sure to check', 0, 1, 1.4333, 'S632', 1, '*'),
(4157, 'the time', 'the time', 0, 1, 1.2667, 'T500', 1, '*'),
(4158, 'the time almost', 'the time almost', 0, 1, 1.5, 'T54523', 1, '*'),
(4159, 'there''s', 'there', 0, 0, 0.4667, 'T620', 1, '*'),
(4160, 'there''s an', 'there an', 0, 1, 1.3333, 'T625', 1, '*'),
(4161, 'there''s an event', 'there an event', 0, 1, 1.5333, 'T625153', 1, '*'),
(4162, 'time almost', 'time almost', 0, 1, 1.3667, 'T54523', 1, '*'),
(4163, 'time almost every', 'time almost every', 0, 1, 1.5667, 'T5452316', 1, '*'),
(4164, 'to attend', 'to attend', 0, 1, 1.3, 'T530', 1, '*'),
(4165, 'to check', 'to check', 0, 1, 1.2667, 'T200', 1, '*'),
(4166, 'to check joomla', 'to check joomla', 0, 1, 1.5, 'T254', 1, '*'),
(4167, 'to see', 'to see', 0, 1, 1.2, 'T200', 1, '*'),
(4168, 'to see if', 'to see if', 0, 1, 1.3, 'T210', 1, '*'),
(4169, 'with events', 'with events', 0, 1, 1.3667, 'W31532', 1, '*'),
(4170, 'with events going', 'with events going', 0, 1, 1.5667, 'W3153252', 1, '*'),
(4171, 'you''ll find more', 'you find more', 0, 1, 1.5333, 'Y415356', 1, '*'),
(4214, 'a boat', 'a boat', 0, 1, 1.2, 'A130', 1, '*'),
(4215, 'a boat ramp', 'a boat ramp', 0, 1, 1.3667, 'A13651', 1, '*'),
(4216, 'aa', 'aa', 0, 0, 0.1333, 'A000', 1, '*'),
(4217, 'aa small', 'aa small', 0, 1, 1.2667, 'A254', 1, '*'),
(4218, 'aa small picnic', 'aa small picnic', 0, 1, 1.5, 'A2541252', 1, '*'),
(4219, 'also aa', 'also aa', 0, 1, 1.2333, 'A420', 1, '*'),
(4220, 'also aa small', 'also aa small', 0, 1, 1.4333, 'A4254', 1, '*'),
(4221, 'and good fishing', 'and good fishing', 0, 1, 1.5333, 'A53231252', 1, '*'),
(4222, 'area', 'area', 0, 0, 0.2667, 'A600', 2, '*'),
(4223, 'area playground', 'area playground', 0, 1, 1.5, 'A6142653', 1, '*'),
(4224, 'area playground nice', 'area playground nice', 0, 1, 1.6667, 'A614265352', 1, '*'),
(4225, 'banks', 'banks', 0, 0, 0.3333, 'B520', 1, '*'),
(4226, 'banks of', 'banks of', 0, 1, 1.2667, 'B521', 1, '*'),
(4227, 'banks of the', 'banks of the', 0, 1, 1.4, 'B5213', 1, '*'),
(4228, 'boat', 'boat', 0, 0, 0.2667, 'B300', 1, '*'),
(4229, 'boat out', 'boat out', 0, 1, 1.2667, 'B300', 1, '*'),
(4230, 'boat out there', 'boat out there', 0, 1, 1.4667, 'B360', 1, '*'),
(4231, 'boat ramp', 'boat ramp', 0, 1, 1.3, 'B3651', 1, '*'),
(4232, 'boat ramp if', 'boat ramp if', 0, 1, 1.4, 'B3651', 1, '*'),
(4233, 'fishing', 'fishing', 0, 0, 0.4667, 'F252', 1, '*'),
(4234, 'fishing from', 'fishing from', 0, 1, 1.4, 'F252165', 1, '*'),
(4235, 'fishing from the', 'fishing from the', 0, 1, 1.5333, 'F2521653', 1, '*'),
(4236, 'from the banks', 'from the banks', 0, 1, 1.4667, 'F653152', 1, '*'),
(4237, 'good fishing', 'good fishing', 0, 1, 1.4, 'G31252', 1, '*'),
(4238, 'good fishing from', 'good fishing from', 0, 1, 1.5667, 'G31252165', 1, '*'),
(4239, 'if you want', 'if you want', 0, 1, 1.3667, 'I153', 1, '*'),
(4240, 'is a boat', 'is a boat', 0, 1, 1.3, 'I213', 1, '*'),
(4241, 'is it', 'is it', 0, 1, 1.1667, 'I230', 1, '*'),
(4242, 'is it also', 'is it also', 0, 1, 1.3333, 'I2342', 1, '*'),
(4243, 'is right', 'is right', 0, 1, 1.2667, 'I2623', 1, '*'),
(4244, 'is right on', 'is right on', 0, 1, 1.3667, 'I26235', 1, '*'),
(4245, 'it also', 'it also', 0, 1, 1.2333, 'I342', 1, '*'),
(4246, 'it also aa', 'it also aa', 0, 1, 1.3333, 'I342', 1, '*'),
(4247, 'joomlaville lake', 'joomlaville lake', 0, 1, 1.5333, 'J54142', 1, '*'),
(4248, 'joomlaville lake there', 'joomlaville lake there', 0, 1, 1.7333, 'J5414236', 1, '*'),
(4249, 'lake', 'lake', 0, 0, 0.2667, 'L200', 2, '*'),
(4250, 'lake park', 'lake park', 0, 1, 1.3, 'L2162', 1, '*'),
(4251, 'lake park is', 'lake park is', 0, 1, 1.4, 'L2162', 1, '*'),
(4252, 'lake there', 'lake there', 0, 1, 1.3333, 'L236', 1, '*'),
(4253, 'lake there is', 'lake there is', 0, 1, 1.4333, 'L2362', 1, '*'),
(4254, 'nice', 'nice', 0, 0, 0.2667, 'N200', 2, '*'),
(4255, 'nice views', 'nice views', 0, 1, 1.3333, 'N212', 2, '*'),
(4256, 'nice views and', 'nice views and', 0, 1, 1.4667, 'N21253', 1, '*'),
(4257, 'of the lake', 'of the lake', 0, 1, 1.3667, 'O1342', 2, '*'),
(4258, 'on joomlaville', 'on joomlaville', 0, 1, 1.4667, 'O525414', 1, '*'),
(4259, 'on joomlaville lake', 'on joomlaville lake', 0, 1, 1.6333, 'O5254142', 1, '*'),
(4260, 'out', 'out', 0, 0, 0.2, 'O300', 1, '*'),
(4261, 'out there', 'out there', 0, 1, 1.3, 'O360', 1, '*'),
(4262, 'out there is', 'out there is', 0, 1, 1.4, 'O362', 1, '*'),
(4263, 'park is', 'park is', 0, 1, 1.2333, 'P620', 3, '*'),
(4264, 'park is right', 'park is right', 0, 1, 1.4333, 'P62623', 1, '*'),
(4265, 'picnic area', 'picnic area', 0, 1, 1.3667, 'P2526', 1, '*'),
(4266, 'picnic area playground', 'picnic area playground', 0, 1, 1.7333, 'P2526142653', 1, '*'),
(4267, 'playground', 'playground', 0, 0, 0.6667, 'P42653', 2, '*'),
(4268, 'playground nice', 'playground nice', 0, 1, 1.5, 'P4265352', 1, '*'),
(4269, 'playground nice views', 'playground nice views', 0, 1, 1.7, 'P426535212', 1, '*'),
(4270, 'ramp', 'ramp', 0, 0, 0.2667, 'R510', 1, '*'),
(4271, 'ramp if', 'ramp if', 0, 1, 1.2333, 'R510', 1, '*'),
(4272, 'ramp if you', 'ramp if you', 0, 1, 1.3667, 'R510', 1, '*'),
(4273, 'right on', 'right on', 0, 1, 1.2667, 'R235', 1, '*'),
(4274, 'right on joomlaville', 'right on joomlaville', 0, 1, 1.6667, 'R23525414', 1, '*'),
(4275, 'small', 'small', 0, 0, 0.3333, 'S540', 2, '*'),
(4276, 'small picnic', 'small picnic', 0, 1, 1.4, 'S541252', 1, '*'),
(4277, 'small picnic area', 'small picnic area', 0, 1, 1.5667, 'S5412526', 1, '*'),
(4278, 'take', 'take', 0, 0, 0.2667, 'T200', 1, '*'),
(4279, 'take your', 'take your', 0, 1, 1.3, 'T260', 1, '*'),
(4280, 'take your boat', 'take your boat', 0, 1, 1.4667, 'T2613', 1, '*'),
(4281, 'the banks', 'the banks', 0, 1, 1.3, 'T152', 1, '*'),
(4282, 'the banks of', 'the banks of', 0, 1, 1.4, 'T1521', 1, '*'),
(4283, 'the lake', 'the lake', 0, 1, 1.2667, 'T420', 2, '*'),
(4284, 'there is it', 'there is it', 0, 1, 1.3667, 'T623', 1, '*'),
(4285, 'to take', 'to take', 0, 1, 1.2333, 'T200', 1, '*'),
(4286, 'to take your', 'to take your', 0, 1, 1.4, 'T260', 1, '*'),
(4287, 'views', 'views', 0, 0, 0.3333, 'V200', 3, '*'),
(4288, 'views and', 'views and', 0, 1, 1.3, 'V253', 1, '*'),
(4289, 'views and good', 'views and good', 0, 1, 1.4667, 'V25323', 1, '*'),
(4290, 'want', 'want', 0, 0, 0.2667, 'W530', 2, '*'),
(4291, 'want to', 'want to', 0, 1, 1.2333, 'W530', 2, '*'),
(4292, 'want to take', 'want to take', 0, 1, 1.4, 'W532', 1, '*'),
(4293, 'you want', 'you want', 0, 1, 1.2667, 'Y530', 1, '*'),
(4294, 'you want to', 'you want to', 0, 1, 1.3667, 'Y530', 1, '*'),
(4295, 'your boat', 'your boat', 0, 1, 1.3, 'Y613', 1, '*'),
(4296, 'your boat out', 'your boat out', 0, 1, 1.4333, 'Y613', 1, '*'),
(4341, 'a small', 'a small', 0, 1, 1.2333, 'A254', 1, '*'),
(4342, 'a small park', 'a small park', 0, 1, 1.4, 'A254162', 1, '*'),
(4343, 'also tennis', 'also tennis', 0, 1, 1.3667, 'A42352', 1, '*'),
(4344, 'also tennis courts', 'also tennis courts', 0, 1, 1.6, 'A42352632', 1, '*'),
(4345, 'and nice', 'and nice', 0, 1, 1.2667, 'A5352', 1, '*'),
(4346, 'and nice views', 'and nice views', 0, 1, 1.4667, 'A535212', 1, '*'),
(4347, 'are also tennis', 'are also tennis', 0, 1, 1.5, 'A642352', 1, '*'),
(4348, 'businesses', 'businesses', 0, 0, 0.6667, 'B252', 1, '*'),
(4349, 'businesses often', 'businesses often', 0, 1, 1.5333, 'B252135', 1, '*'),
(4350, 'businesses often come', 'businesses often come', 0, 1, 1.7, 'B25213525', 1, '*'),
(4351, 'city park', 'city park', 0, 1, 1.3, 'C3162', 1, '*'),
(4352, 'city park is', 'city park is', 0, 1, 1.4, 'C3162', 1, '*'),
(4353, 'come', 'come', 0, 0, 0.2667, 'C500', 1, '*'),
(4354, 'come here', 'come here', 0, 1, 1.3, 'C560', 1, '*'),
(4355, 'come here to', 'come here to', 0, 1, 1.4, 'C563', 1, '*'),
(4356, 'courts', 'courts', 0, 0, 0.4, 'C632', 1, '*'),
(4357, 'courts for', 'courts for', 0, 1, 1.3333, 'C63216', 1, '*'),
(4358, 'courts for people', 'courts for people', 0, 1, 1.5667, 'C6321614', 1, '*'),
(4359, 'downtown people', 'downtown people', 0, 1, 1.5, 'D53514', 1, '*'),
(4360, 'downtown people from', 'downtown people from', 0, 1, 1.6667, 'D53514165', 1, '*'),
(4361, 'for people who', 'for people who', 0, 1, 1.4667, 'F614', 1, '*'),
(4362, 'from local', 'from local', 0, 1, 1.3333, 'F65424', 1, '*'),
(4363, 'from local businesses', 'from local businesses', 0, 1, 1.7, 'F654241252', 1, '*'),
(4364, 'grills', 'grills', 0, 0, 0.4, 'G642', 1, '*'),
(4365, 'grills and', 'grills and', 0, 1, 1.3333, 'G64253', 1, '*'),
(4366, 'grills and nice', 'grills and nice', 0, 1, 1.5, 'G6425352', 1, '*'),
(4367, 'has picnic', 'has picnic', 0, 1, 1.3333, 'H21252', 1, '*'),
(4368, 'has picnic tables', 'has picnic tables', 0, 1, 1.5667, 'H212523142', 1, '*'),
(4369, 'have lunch', 'have lunch', 0, 1, 1.3333, 'H1452', 1, '*'),
(4370, 'have lunch there', 'have lunch there', 0, 1, 1.5333, 'H145236', 1, '*'),
(4371, 'here to', 'here to', 0, 1, 1.2333, 'H630', 1, '*'),
(4372, 'here to relax', 'here to relax', 0, 1, 1.4333, 'H63642', 1, '*'),
(4373, 'is a small', 'is a small', 0, 1, 1.3333, 'I254', 1, '*'),
(4374, 'it has', 'it has', 0, 1, 1.2, 'I320', 2, '*'),
(4375, 'it has picnic', 'it has picnic', 0, 1, 1.4333, 'I321252', 1, '*'),
(4376, 'just off', 'just off', 0, 1, 1.2667, 'J310', 1, '*'),
(4377, 'just off main', 'just off main', 0, 1, 1.4333, 'J315', 1, '*'),
(4378, 'local', 'local', 0, 0, 0.3333, 'L240', 1, '*'),
(4379, 'local businesses', 'local businesses', 0, 1, 1.5333, 'L241252', 1, '*'),
(4380, 'local businesses often', 'local businesses often', 0, 1, 1.7333, 'L241252135', 1, '*'),
(4381, 'lunch', 'lunch', 0, 0, 0.3333, 'L520', 1, '*'),
(4382, 'lunch there', 'lunch there', 0, 1, 1.3667, 'L5236', 1, '*'),
(4383, 'lunch there are', 'lunch there are', 0, 1, 1.5, 'L5236', 1, '*'),
(4384, 'main', 'main', 0, 0, 0.2667, 'M000', 1, '*'),
(4385, 'main street', 'main street', 0, 1, 1.3667, 'M2363', 1, '*'),
(4386, 'main street it', 'main street it', 0, 1, 1.4667, 'M2363', 1, '*'),
(4387, 'nice views of', 'nice views of', 0, 1, 1.4333, 'N2121', 1, '*'),
(4388, 'of downtown', 'of downtown', 0, 1, 1.3667, 'O13535', 1, '*'),
(4389, 'of downtown people', 'of downtown people', 0, 1, 1.6, 'O1353514', 1, '*'),
(4390, 'off', 'off', 0, 0, 0.2, 'O100', 2, '*'),
(4391, 'off main', 'off main', 0, 1, 1.2667, 'O150', 1, '*'),
(4392, 'off main street', 'off main street', 0, 1, 1.5, 'O152363', 1, '*'),
(4393, 'often', 'often', 0, 0, 0.3333, 'O135', 1, '*'),
(4394, 'often come', 'often come', 0, 1, 1.3333, 'O13525', 1, '*'),
(4395, 'often come here', 'often come here', 0, 1, 1.5, 'O135256', 1, '*'),
(4396, 'or', 'or', 0, 0, 0.1333, 'O600', 1, '*'),
(4397, 'or have', 'or have', 0, 1, 1.2333, 'O610', 1, '*'),
(4398, 'or have lunch', 'or have lunch', 0, 1, 1.4333, 'O61452', 1, '*'),
(4399, 'park is a', 'park is a', 0, 1, 1.3, 'P620', 1, '*'),
(4400, 'park just', 'park just', 0, 1, 1.3, 'P623', 1, '*'),
(4401, 'park just off', 'park just off', 0, 1, 1.4333, 'P6231', 1, '*'),
(4402, 'people from', 'people from', 0, 1, 1.3667, 'P4165', 1, '*'),
(4403, 'people from local', 'people from local', 0, 1, 1.5667, 'P4165424', 1, '*'),
(4404, 'people who', 'people who', 0, 1, 1.3333, 'P400', 1, '*'),
(4405, 'people who want', 'people who want', 0, 1, 1.5, 'P453', 1, '*'),
(4406, 'picnic tables', 'picnic tables', 0, 1, 1.4333, 'P2523142', 2, '*'),
(4407, 'picnic tables with', 'picnic tables with', 0, 1, 1.6, 'P25231423', 1, '*'),
(4408, 'play', 'play', 0, 0, 0.2667, 'P400', 1, '*'),
(4409, 'play during', 'play during', 0, 1, 1.3667, 'P43652', 1, '*'),
(4410, 'play during the', 'play during the', 0, 1, 1.5, 'P436523', 1, '*'),
(4411, 'relax', 'relax', 0, 0, 0.3333, 'R420', 1, '*'),
(4412, 'relax or', 'relax or', 0, 1, 1.2667, 'R426', 1, '*'),
(4413, 'relax or have', 'relax or have', 0, 1, 1.4333, 'R4261', 1, '*'),
(4414, 'small park', 'small park', 0, 1, 1.3333, 'S54162', 1, '*'),
(4415, 'small park just', 'small park just', 0, 1, 1.5, 'S541623', 1, '*'),
(4416, 'street', 'street', 0, 0, 0.4, 'S363', 1, '*'),
(4417, 'street it', 'street it', 0, 1, 1.3, 'S363', 1, '*'),
(4418, 'street it has', 'street it has', 0, 1, 1.4333, 'S3632', 1, '*'),
(4419, 'tables', 'tables', 0, 0, 0.4, 'T142', 2, '*'),
(4420, 'tables with', 'tables with', 0, 1, 1.3667, 'T1423', 1, '*'),
(4421, 'tables with grills', 'tables with grills', 0, 1, 1.6, 'T14232642', 1, '*'),
(4422, 'tennis', 'tennis', 0, 0, 0.4, 'T520', 1, '*'),
(4423, 'tennis courts', 'tennis courts', 0, 1, 1.4333, 'T52632', 1, '*'),
(4424, 'tennis courts for', 'tennis courts for', 0, 1, 1.5667, 'T5263216', 1, '*'),
(4425, 'to play', 'to play', 0, 1, 1.2333, 'T140', 1, '*'),
(4426, 'to play during', 'to play during', 0, 1, 1.4667, 'T143652', 1, '*'),
(4427, 'to relax', 'to relax', 0, 1, 1.2667, 'T642', 1, '*'),
(4428, 'to relax or', 'to relax or', 0, 1, 1.3667, 'T6426', 1, '*'),
(4429, 'views of', 'views of', 0, 1, 1.2667, 'V210', 2, '*'),
(4430, 'views of downtown', 'views of downtown', 0, 1, 1.5667, 'V213535', 1, '*'),
(4431, 'want to play', 'want to play', 0, 1, 1.4, 'W5314', 1, '*'),
(4432, 'who want', 'who want', 0, 1, 1.2667, 'W530', 1, '*'),
(4433, 'who want to', 'who want to', 0, 1, 1.3667, 'W530', 1, '*'),
(4434, 'with grills', 'with grills', 0, 1, 1.3667, 'W32642', 1, '*'),
(4435, 'with grills and', 'with grills and', 0, 1, 1.5, 'W3264253', 1, '*'),
(4468, 'a beautiful', 'a beautiful', 0, 1, 1.3667, 'A1314', 1, '*'),
(4469, 'a beautiful secluded', 'a beautiful secluded', 0, 1, 1.6667, 'A1314243', 1, '*'),
(4470, 'a couple', 'a couple', 0, 1, 1.2667, 'A214', 1, '*'),
(4471, 'a couple more', 'a couple more', 0, 1, 1.4333, 'A21456', 1, '*'),
(4472, 'a playground', 'a playground', 0, 1, 1.4, 'A142653', 1, '*'),
(4473, 'a playground and', 'a playground and', 0, 1, 1.5333, 'A14265353', 1, '*'),
(4474, 'and picnic', 'and picnic', 0, 1, 1.3333, 'A531252', 1, '*'),
(4475, 'and picnic tables', 'and picnic tables', 0, 1, 1.5667, 'A5312523142', 1, '*'),
(4476, 'and then', 'and then', 0, 1, 1.2667, 'A535', 1, '*'),
(4477, 'and then a', 'and then a', 0, 1, 1.3333, 'A535', 1, '*'),
(4478, 'area with', 'area with', 0, 1, 1.3, 'A630', 1, '*'),
(4479, 'area with gorgeous', 'area with gorgeous', 0, 1, 1.6, 'A63262', 1, '*'),
(4480, 'beautiful', 'beautiful', 0, 0, 0.6, 'B314', 1, '*'),
(4481, 'beautiful secluded', 'beautiful secluded', 0, 1, 1.6, 'B314243', 1, '*'),
(4482, 'beautiful secluded area', 'beautiful secluded area', 0, 1, 1.7667, 'B3142436', 1, '*'),
(4483, 'couple', 'couple', 0, 0, 0.4, 'C140', 1, '*'),
(4484, 'couple more', 'couple more', 0, 1, 1.3667, 'C1456', 1, '*'),
(4485, 'couple more picnic', 'couple more picnic', 0, 1, 1.6, 'C14561252', 1, '*'),
(4486, 'gorgeous', 'gorgeous', 0, 0, 0.5333, 'G620', 1, '*'),
(4487, 'gorgeous views', 'gorgeous views', 0, 1, 1.4667, 'G6212', 1, '*'),
(4488, 'gorgeous views of', 'gorgeous views of', 0, 1, 1.5667, 'G62121', 1, '*'),
(4489, 'has two', 'has two', 0, 1, 1.2333, 'H230', 1, '*'),
(4490, 'has two picnic', 'has two picnic', 0, 1, 1.4667, 'H231252', 1, '*'),
(4491, 'highway', 'highway', 0, 0, 0.4667, 'H200', 1, '*'),
(4492, 'highway in', 'highway in', 0, 1, 1.3333, 'H250', 1, '*'),
(4493, 'highway in joomlaville', 'highway in joomlaville', 0, 1, 1.7333, 'H2525414', 1, '*'),
(4494, 'in a beautiful', 'in a beautiful', 0, 1, 1.4667, 'I51314', 1, '*'),
(4495, 'in the woods', 'in the woods', 0, 1, 1.4, 'I532', 1, '*'),
(4496, 'is a playground', 'is a playground', 0, 1, 1.5, 'I2142653', 1, '*'),
(4497, 'is located off', 'is located off', 0, 1, 1.4667, 'I24231', 1, '*'),
(4498, 'it has two', 'it has two', 0, 1, 1.3333, 'I323', 1, '*'),
(4499, 'joomlaville there is', 'joomlaville there is', 0, 1, 1.6667, 'J5414362', 1, '*'),
(4500, 'lake and', 'lake and', 0, 1, 1.2667, 'L253', 1, '*'),
(4501, 'lake and then', 'lake and then', 0, 1, 1.4333, 'L2535', 1, '*'),
(4502, 'located off', 'located off', 0, 1, 1.3667, 'L231', 1, '*'),
(4503, 'located off the', 'located off the', 0, 1, 1.5, 'L2313', 1, '*'),
(4504, 'major highway', 'major highway', 0, 1, 1.4333, 'M262', 1, '*'),
(4505, 'major highway in', 'major highway in', 0, 1, 1.5333, 'M2625', 1, '*'),
(4506, 'more picnic', 'more picnic', 0, 1, 1.3667, 'M61252', 1, '*'),
(4507, 'more picnic tables', 'more picnic tables', 0, 1, 1.6, 'M612523142', 1, '*'),
(4508, 'more set', 'more set', 0, 1, 1.2667, 'M623', 1, '*'),
(4509, 'more set off', 'more set off', 0, 1, 1.4, 'M6231', 1, '*'),
(4510, 'off in', 'off in', 0, 1, 1.2, 'O150', 1, '*'),
(4511, 'off in the', 'off in the', 0, 1, 1.3333, 'O153', 1, '*'),
(4512, 'off the', 'off the', 0, 1, 1.2333, 'O130', 1, '*'),
(4513, 'off the major', 'off the major', 0, 1, 1.4333, 'O13526', 1, '*'),
(4514, 'park is located', 'park is located', 0, 1, 1.5, 'P62423', 1, '*'),
(4515, 'picnic tables in', 'picnic tables in', 0, 1, 1.5333, 'P25231425', 1, '*'),
(4516, 'picnic tables it', 'picnic tables it', 0, 1, 1.5333, 'P25231423', 1, '*'),
(4517, 'picnic tables more', 'picnic tables more', 0, 1, 1.6, 'P252314256', 1, '*'),
(4518, 'playground and', 'playground and', 0, 1, 1.4667, 'P4265353', 1, '*'),
(4519, 'playground and picnic', 'playground and picnic', 0, 1, 1.7, 'P42653531252', 1, '*'),
(4520, 'secluded', 'secluded', 0, 0, 0.5333, 'S430', 1, '*'),
(4521, 'secluded area', 'secluded area', 0, 1, 1.4333, 'S436', 1, '*'),
(4522, 'secluded area with', 'secluded area with', 0, 1, 1.6, 'S4363', 1, '*'),
(4523, 'set', 'set', 0, 0, 0.2, 'S300', 1, '*'),
(4524, 'set off', 'set off', 0, 1, 1.2333, 'S310', 1, '*'),
(4525, 'set off in', 'set off in', 0, 1, 1.3333, 'S315', 1, '*'),
(4526, 'tables in', 'tables in', 0, 1, 1.3, 'T1425', 1, '*'),
(4527, 'tables in a', 'tables in a', 0, 1, 1.3667, 'T1425', 1, '*'),
(4528, 'tables it', 'tables it', 0, 1, 1.3, 'T1423', 1, '*'),
(4529, 'tables it has', 'tables it has', 0, 1, 1.4333, 'T14232', 1, '*'),
(4530, 'tables more', 'tables more', 0, 1, 1.3667, 'T14256', 1, '*'),
(4531, 'tables more set', 'tables more set', 0, 1, 1.5, 'T1425623', 1, '*'),
(4532, 'the lake and', 'the lake and', 0, 1, 1.4, 'T4253', 1, '*'),
(4533, 'the major', 'the major', 0, 1, 1.3, 'T526', 1, '*'),
(4534, 'the major highway', 'the major highway', 0, 1, 1.5667, 'T5262', 1, '*'),
(4535, 'the woods', 'the woods', 0, 1, 1.3, 'T200', 1, '*'),
(4536, 'then', 'then', 0, 0, 0.2667, 'T500', 1, '*'),
(4537, 'then a', 'then a', 0, 1, 1.2, 'T500', 1, '*'),
(4538, 'then a couple', 'then a couple', 0, 1, 1.4333, 'T5214', 1, '*'),
(4539, 'two picnic', 'two picnic', 0, 1, 1.3333, 'T1252', 1, '*'),
(4540, 'two picnic tables', 'two picnic tables', 0, 1, 1.5667, 'T12523142', 1, '*'),
(4541, 'views of the', 'views of the', 0, 1, 1.4, 'V213', 1, '*'),
(4542, 'with gorgeous', 'with gorgeous', 0, 1, 1.4333, 'W3262', 1, '*'),
(4543, 'with gorgeous views', 'with gorgeous views', 0, 1, 1.6333, 'W326212', 1, '*'),
(4544, 'wood', 'wood', 0, 0, 0.2667, 'W300', 1, '*'),
(4545, 'wood park', 'wood park', 0, 1, 1.3, 'W3162', 1, '*'),
(4546, 'wood park is', 'wood park is', 0, 1, 1.4, 'W3162', 1, '*'),
(4547, 'woods', 'woods', 0, 0, 0.3333, 'W320', 1, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_terms_common`
--

CREATE TABLE `sg0we_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_terms_common`
--

INSERT INTO `sg0we_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_tokens`
--

CREATE TABLE `sg0we_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_tokens_aggregate`
--

CREATE TABLE `sg0we_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_finder_types`
--

CREATE TABLE `sg0we_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sg0we_finder_types`
--

INSERT INTO `sg0we_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Tag', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', '');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_languages`
--

CREATE TABLE `sg0we_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_languages`
--

INSERT INTO `sg0we_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 89, 'fr-CA', 'French Canadian', 'French Canadian', 'fr-ca', 'fr_ca', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_menu`
--

CREATE TABLE `sg0we_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_menu`
--

INSERT INTO `sg0we_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 77, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 31, 36, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 32, 33, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 34, 35, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 37, 40, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 38, 39, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 41, 46, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 42, 43, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 44, 45, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 47, 48, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 49, 50, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 51, 52, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 53, 54, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 55, 56, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 57, 58, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 1, '*', 0),
(102, 'about', 'Joomlaville History', 'joomlaville-history', '', 'joomlaville-history', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 27, 28, 0, '*', 0),
(103, 'about', 'Joomlaville Location', 'joomlaville-location', '', 'joomlaville-location', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 0, '*', 0),
(104, 'about', 'Joomlaville Overview', 'joomlaville-overview', '', 'joomlaville-overview', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 25, 26, 0, '*', 0),
(105, 'attractions', 'Attractions', 'attractions', '', 'attractions', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"1","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_featured":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(106, 'festivals', 'Joomlaville Festivals', 'joomlaville-festivals', '', 'joomlaville-festivals', 'index.php?option=com_content&view=category&id=10', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"published","date_format":"","list_show_hits":"0","list_show_author":"0","orderby_pri":"","orderby_sec":"alpha","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(107, 'transportation', 'Bus Station', 'bus-station', '', 'bus-station', 'index.php?option=com_content&view=article&id=11', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 64, 0, '*', 0),
(108, 'transportation', 'Train Station', 'train-station', '', 'train-station', 'index.php?option=com_content&view=article&id=12', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(109, 'transportation', 'Airport', 'airport', '', 'airport', 'index.php?option=com_content&view=article&id=13', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 68, 0, '*', 0),
(110, 'mainmenu', 'Contact Us', 'contact-us', '', 'contact-us', 'index.php?option=com_contact&view=category&id=13', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_items":"","filter_field":"","show_pagination_limit":"","show_headings":"","show_image_heading":"","show_position_headings":"","show_email_headings":"","show_telephone_headings":"","show_mobile_headings":"","show_fax_headings":"","show_suburb_headings":"","show_state_headings":"","show_country_headings":"","show_pagination":"","show_pagination_results":"","initial_sort":"","presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 24, 0, '*', 0),
(111, 'mainmenu', 'ESPN', 'espn', '', 'espn', 'index.php?option=com_newsfeeds&view=newsfeed&id=1', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_feed_image":"","show_feed_description":"","show_item_description":"","show_tags":"","feed_character_count":"0","feed_display_order":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(112, 'mainmenu', 'Search', 'search', '', 'search', 'index.php?option=com_search&view=search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"search_phrases":"","search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
(113, 'main', 'COM_JCE', 'com-jce', '', 'com-jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 807, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '{}', 69, 76, 0, '', 1),
(114, 'main', 'COM_JCE_MENU_CPANEL', 'com-jce-menu-cpanel', '', 'com-jce/com-jce-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 113, 2, 807, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 70, 71, 0, '', 1),
(115, 'main', 'COM_JCE_MENU_CONFIG', 'com-jce-menu-config', '', 'com-jce/com-jce-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 113, 2, 807, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 72, 73, 0, '', 1),
(116, 'main', 'COM_JCE_MENU_PROFILES', 'com-jce-menu-profiles', '', 'com-jce/com-jce-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 113, 2, 807, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 74, 75, 0, '', 1),
(117, 'mainmenu', 'Board Minutes', 'board-minutes', '', 'board-minutes', 'index.php?option=com_content&view=category&id=15', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 7, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(118, 'mainmenu', 'News', 'news', '', 'news', 'index.php?option=com_content&view=category&id=17', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
(119, 'mainmenu', 'Parks', 'parks', '', 'parks', 'index.php?option=com_content&view=category&id=16', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_menu_types`
--

CREATE TABLE `sg0we_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_menu_types`
--

INSERT INTO `sg0we_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 73, 'about', 'About Joomlaville', ''),
(3, 75, 'attractions', 'Joomlaville Attractions', ''),
(4, 77, 'festivals', 'Joomlaville Festivals', ''),
(5, 79, 'transportation', 'Joomlaville Transportation', '');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_messages`
--

CREATE TABLE `sg0we_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_messages`
--

INSERT INTO `sg0we_messages` (`message_id`, `user_id_from`, `user_id_to`, `folder_id`, `date_time`, `state`, `priority`, `subject`, `message`) VALUES
(1, 381, 382, 0, '2016-12-06 15:01:22', 0, 0, 'hi bob', '<p>this is a message</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_messages_cfg`
--

CREATE TABLE `sg0we_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_modules`
--

CREATE TABLE `sg0we_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_modules`
--

INSERT INTO `sg0we_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 2, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"ostrainingbreeze:mainmenu","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 4, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 2, 'bodytop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"1","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"0","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 74, 'About Joomlaville', '', '', 2, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"about","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 76, 'Joomlaville Attractions', '', '', 4, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"attractions","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 78, 'Joomlaville Festivals', '', '', 5, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"festivals","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 80, 'Joomlaville Transportation', '', '', 2, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"transportation","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 82, 'Joomlaville Banners', '', '', 1, 'bodybottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":1,"cid":"0","catid":["12"],"tag_search":"0","ordering":"random","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 85, 'Search', '', '', 1, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_finder', 1, 0, '{"searchfilter":"1","show_autosuggest":"1","show_advanced":"0","field_size":25,"show_label":"1","label_pos":"left","alt_label":"","show_button":"0","button_pos":"left","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 86, 'Latest Articles', '', '', 5, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":[""],"count":"5","show_featured":"0","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 87, 'Most Read Articles', '', '', 3, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"catid":[""],"count":"5","show_front":"0","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 88, 'Welcome to Joomlaville', '', '<p>Welcome to our site!</p>\r\n<p>Thanks for stopping by.</p>', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 5, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 91, 'Museum Footer', '', '<p><img src="images/articles/attractions/museum-2.jpg" alt="museum 2" style="margin: 5px;" /></p>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 92, 'Zoo Footer', '', '<p><img src="images/articles/attractions/zoo.jpg" alt="zoo" style="margin: 5px;" /></p>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 93, 'Aquarium Banner', '', '<p><img src="images/articles/attractions/aquarium.jpg" alt="aquarium" style="margin: 5px;" /></p>', 1, 'footer-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 94, 'Joomlaville Photo', '', '<p><img src="images/homepage.jpg" alt="homepage" style="vertical-align: top;" /></p>', 1, 'bodytop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_modules_menu`
--

CREATE TABLE `sg0we_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_modules_menu`
--

INSERT INTO `sg0we_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 101),
(94, 0),
(95, 101),
(96, 105),
(97, 105),
(98, 105),
(99, 101);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_newsfeeds`
--

CREATE TABLE `sg0we_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_newsfeeds`
--

INSERT INTO `sg0we_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`, `access`, `language`, `params`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `xreference`, `publish_up`, `publish_down`, `description`, `version`, `hits`, `images`) VALUES
(14, 1, 'ESPN', 'espn', 'http://sports.espn.go.com/espn/rss/news', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0, 1, '*', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2016-12-06 15:05:52', 381, '', '2016-12-06 15:05:52', 0, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 1, '{"image_first":"","float_first":"","image_first_alt":"","image_first_caption":"","image_second":"","float_second":"","image_second_alt":"","image_second_caption":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_overrider`
--

CREATE TABLE `sg0we_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_postinstall_messages`
--

CREATE TABLE `sg0we_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_postinstall_messages`
--

INSERT INTO `sg0we_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_redirect_links`
--

CREATE TABLE `sg0we_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_redirect_links`
--

INSERT INTO `sg0we_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`, `header`) VALUES
(1, 'http://localhost/index.php/joomlaville-locations', 'http://localhost/index.php/joomlaville-location', '', '', 1, 1, '2016-12-06 15:14:14', '2016-12-06 15:15:31', 301);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_schemas`
--

CREATE TABLE `sg0we_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_schemas`
--

INSERT INTO `sg0we_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.0-2016-06-05');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_session`
--

CREATE TABLE `sg0we_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_session`
--

INSERT INTO `sg0we_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('99nqgsm91iu6bnjv6ilgeahh57', 1, 0, '1481051823', 'joomla|s:8804:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo2OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo5NTU7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNDgwODc3OTUxO3M6NDoibGFzdCI7aToxNDgxMDUxODA3O3M6Mzoibm93IjtpOjE0ODEwNTE4MjE7fXM6NToidG9rZW4iO3M6MzI6IlhMUkE0UXN5cFBpTU9MRkl5N214enpiZ2QzS1QzNzJwIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE4OntzOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjo0OntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO3M6OToibGFuZ3VhZ2VzIjtPOjg6InN0ZENsYXNzIjozOntzOjY6ImZpbHRlciI7YToxOntzOjY6InNlYXJjaCI7czowOiIiO31zOjQ6Imxpc3QiO2E6Mjp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjg6Im5hbWUgQVNDIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjt9czoxMDoibGltaXRzdGFydCI7aToyMDt9czoxMjoicmVkaXJlY3RfdXJsIjtOO31zOjEwOiJjb21fY29uZmlnIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6ImNvbmZpZyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJnbG9iYWwiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9fX1zOjE0OiJjb21fY2F0ZWdvcmllcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMDoiY2F0ZWdvcmllcyI7Tzo4OiJzdGRDbGFzcyI6NDp7czo3OiJjb250ZW50IjtPOjg6InN0ZENsYXNzIjoyOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJleHRlbnNpb24iO3M6MTE6ImNvbV9jb250ZW50Ijt9czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319czo3OiJiYW5uZXJzIjtPOjg6InN0ZENsYXNzIjoyOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJleHRlbnNpb24iO3M6MTE6ImNvbV9iYW5uZXJzIjt9czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319czo3OiJjb250YWN0IjtPOjg6InN0ZENsYXNzIjoyOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJleHRlbnNpb24iO3M6MTE6ImNvbV9jb250YWN0Ijt9czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319czo5OiJuZXdzZmVlZHMiO086ODoic3RkQ2xhc3MiOjI6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6ImV4dGVuc2lvbiI7czoxMzoiY29tX25ld3NmZWVkcyI7fXM6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO3M6MjoiMjAiO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6ODoiY2F0ZWdvcnkiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjA6e319fX1zOjExOiJjb21fY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImFydGljbGUiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjA6e319fXM6ODoiYXJ0aWNsZXMiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjthOjM6e3M6MTE6ImNhdGVnb3J5X2lkIjtzOjI6IjE2IjtzOjk6InB1Ymxpc2hlZCI7czoxOiIxIjtzOjU6ImxldmVsIjtzOjE6IjEiO31zOjQ6Imxpc3QiO2E6Mjp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjk6ImEuaWQgREVTQyI7czo1OiJsaW1pdCI7czoyOiIyMCI7fXM6MTA6ImxpbWl0c3RhcnQiO2k6MDt9fXM6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjU6Iml0ZW1zIjtPOjg6InN0ZENsYXNzIjo1OntzOjk6InB1Ymxpc2hlZCI7czoxOiIxIjtzOjg6Im1lbnV0eXBlIjtzOjg6Im1haW5tZW51IjtzOjY6ImZpbHRlciI7YToxOntzOjk6InB1Ymxpc2hlZCI7czoxOiIxIjt9czoxMDoibGltaXRzdGFydCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO3M6MjoiMjAiO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJtZW51IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fXM6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6NTp7czo0OiJkYXRhIjtOO3M6NDoidHlwZSI7TjtzOjQ6ImxpbmsiO047czo4OiJtZW51dHlwZSI7czo4OiJtYWlubWVudSI7czoyOiJpZCI7YTowOnt9fX19czo0OiJpdGVtIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo4OiJtZW51dHlwZSI7czo4OiJtYWlubWVudSI7fX1zOjExOiJjb21fbW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJkYXRhIjtOO3M6MjoiaWQiO2E6MDp7fX19czozOiJhZGQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjEyOiJleHRlbnNpb25faWQiO047czo2OiJwYXJhbXMiO047fX1zOjc6Im1vZHVsZXMiO086ODoic3RkQ2xhc3MiOjQ6e3M6NjoiZmlsdGVyIjthOjc6e3M6Njoic2VhcmNoIjtzOjA6IiI7czo1OiJzdGF0ZSI7czowOiIiO3M6ODoicG9zaXRpb24iO3M6MDoiIjtzOjY6Im1vZHVsZSI7czowOiIiO3M6ODoibWVudWl0ZW0iO3M6MDoiIjtzOjY6ImFjY2VzcyI7czowOiIiO3M6ODoibGFuZ3VhZ2UiO3M6MDoiIjt9czo5OiJjbGllbnRfaWQiO2k6MDtzOjQ6Imxpc3QiO2E6Mjp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjE0OiJhLm9yZGVyaW5nIEFTQyI7czo1OiJsaW1pdCI7czoyOiIyMCI7fXM6MTA6ImxpbWl0c3RhcnQiO2k6MDt9fXM6NToibWVkaWEiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoibGlzdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJsYXlvdXQiO3M6NjoidGh1bWJzIjt9fXM6MTE6ImNvbV9iYW5uZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiYmFubmVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19czoxMToiY29tX2NvbnRhY3QiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJjb250YWN0IjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fX19czo5OiJjb21fdXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo0OiJ1c2VyIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fXM6NToiZ3JvdXAiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9czo1OiJsZXZlbCI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319fXM6MTI6ImNvbV9tZXNzYWdlcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjc6Im1lc3NhZ2UiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9fX1zOjEzOiJjb21fbmV3c2ZlZWRzIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6ODoibmV3c2ZlZWQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9fX1zOjExOiJjb21fcGx1Z2lucyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJwbHVnaW5zIjtPOjg6InN0ZENsYXNzIjozOntzOjY6ImZpbHRlciI7YTo0OntzOjY6InNlYXJjaCI7czowOiIiO3M6NzoiZW5hYmxlZCI7czowOiIiO3M6NjoiZm9sZGVyIjtzOjA6IiI7czo2OiJhY2Nlc3MiO3M6MDoiIjt9czo0OiJsaXN0IjthOjQ6e3M6MTI6ImZ1bGxvcmRlcmluZyI7czoxMDoiZm9sZGVyIEFTQyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo5OiJzb3J0VGFibGUiO3M6NjoiZm9sZGVyIjtzOjE0OiJkaXJlY3Rpb25UYWJsZSI7czozOiJBU0MiO31zOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fX1zOjEyOiJjb21fcmVkaXJlY3QiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJsaW5rIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX19czoxMDoiY29tX2ZpbmRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO319fXM6MTM6ImNvbV9sYW5ndWFnZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo4OiJsYW5ndWFnZSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO319czo5OiJvdmVycmlkZXMiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjY6ImNsaWVudCI7czoxOiIwIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuLUdCIjt9fX1zOjEzOiJjb21fdGVtcGxhdGVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NToic3R5bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fX19czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7czozOiIzODEiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7Tjt9czo5OiJjb21fbWVkaWEiO086ODoic3RkQ2xhc3MiOjE6e3M6MTA6InJldHVybl91cmwiO3M6MTA3OiJpbmRleC5waHA/b3B0aW9uPWNvbV9tZWRpYSZ2aWV3PWltYWdlcyZ0bXBsPWNvbXBvbmVudCZmaWVsZGlkPSZlX25hbWU9amZvcm1fYXJ0aWNsZXRleHQmYXNzZXQ9NjImYXV0aG9yPTM4MSI7fXM6NzoiX2ZpbmRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJzdGF0ZSI7Tzo3OiJKT2JqZWN0IjoxMDp7czoxMDoiACoAX2Vycm9ycyI7YTowOnt9czo3OiJvcHRpb25zIjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MTg6e3M6MTY6InNob3dfZGVzY3JpcHRpb24iO3M6MToiMSI7czoxODoiZGVzY3JpcHRpb25fbGVuZ3RoIjtpOjI1NTtzOjE3OiJhbGxvd19lbXB0eV9xdWVyeSI7czoxOiIwIjtzOjg6InNob3dfdXJsIjtzOjE6IjEiO3M6MTM6InNob3dfYWR2YW5jZWQiO3M6MToiMSI7czoxNToiZXhwYW5kX2FkdmFuY2VkIjtzOjE6IjAiO3M6MTc6InNob3dfZGF0ZV9maWx0ZXJzIjtzOjE6IjAiO3M6MTU6ImhpZ2hsaWdodF90ZXJtcyI7czoxOiIxIjtzOjE1OiJvcGVuc2VhcmNoX25hbWUiO3M6MDoiIjtzOjIyOiJvcGVuc2VhcmNoX2Rlc2NyaXB0aW9uIjtzOjA6IiI7czoxMDoiYmF0Y2hfc2l6ZSI7czoyOiI1MCI7czoxODoibWVtb3J5X3RhYmxlX2xpbWl0IjtpOjMwMDAwO3M6MTY6InRpdGxlX211bHRpcGxpZXIiO3M6MzoiMS43IjtzOjE1OiJ0ZXh0X211bHRpcGxpZXIiO3M6MzoiMC43IjtzOjE1OiJtZXRhX211bHRpcGxpZXIiO3M6MzoiMS4yIjtzOjE1OiJwYXRoX211bHRpcGxpZXIiO3M6MzoiMi4wIjtzOjE1OiJtaXNjX211bHRpcGxpZXIiO3M6MzoiMC4zIjtzOjc6InN0ZW1tZXIiO3M6ODoic25vd2JhbGwiO31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo3OiJ3ZWlnaHRzIjthOjU6e2k6MTtkOjEuNztpOjI7ZDowLjY5OTk5OTk5OTk5OTk5OTk2O2k6MztkOjEuMjtpOjQ7ZDoyO2k6NTtkOjAuMjk5OTk5OTk5OTk5OTk5OTk7fXM6OToic3RhcnRUaW1lIjtzOjE5OiIyMDE2LTEyLTA2IDE1OjIzOjUwIjtzOjk6ImJhdGNoU2l6ZSI7aTo1MDtzOjExOiJiYXRjaE9mZnNldCI7aTozMztzOjEwOiJ0b3RhbEl0ZW1zIjtpOjA7czoxMToicGx1Z2luU3RhdGUiO2E6NTp7czo0OiJUYWdzIjthOjI6e3M6NToidG90YWwiO2k6NjtzOjY6Im9mZnNldCI7aTo2O31zOjEwOiJDYXRlZ29yaWVzIjthOjI6e3M6NToidG90YWwiO2k6MTI7czo2OiJvZmZzZXQiO2k6MTI7fXM6ODoiQ29udGFjdHMiO2E6Mjp7czo1OiJ0b3RhbCI7aToxO3M6Njoib2Zmc2V0IjtpOjE7fXM6NzoiQ29udGVudCI7YToyOntzOjU6InRvdGFsIjtpOjEzO3M6Njoib2Zmc2V0IjtpOjEzO31zOjk6Ik5ld3NmZWVkcyI7YToyOntzOjU6InRvdGFsIjtpOjE7czo2OiJvZmZzZXQiO2k6MTt9fXM6NToic3RhcnQiO2k6MDtzOjg6ImNvbXBsZXRlIjtpOjE7fX19fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 381, 'admin'),
('ssjf0tkavqfonfqg3klqfgo2f3', 0, 1, '1481051851', 'joomla|s:1384:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxNDY7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNDgwODc3OTk4O3M6NDoibGFzdCI7aToxNDgxMDUxODQ4O3M6Mzoibm93IjtpOjE0ODEwNTE4NTE7fXM6NToidG9rZW4iO3M6MzI6Ik9QNm9rWFdKdGx2QlZHM2NuT1gxQnlmVEs1YTU3Qm1lIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6MTA6ImNvbV9tYWlsdG8iO086ODoic3RkQ2xhc3MiOjE6e3M6NToibGlua3MiO2E6Mzp7czo0MDoiMmRlNzZiZTM3NGEwMmQ0MzBhNWQ5MGU5YWY0ZGE1NTAzYTZiZTM2NyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJsaW5rIjtzOjYxOiJodHRwOi8vbG9jYWxob3N0L2luZGV4LnBocC8yLWdlbmVyYWwvNC13ZWxjb21lLXRvLWpvb21sYXZpbGxlIjtzOjY6ImV4cGlyeSI7aToxNDgxMDUxODUxO31zOjQwOiIxNDc4NDU3ZWYxNzhmYWZhODAxMGRjMTk4ZTNiYzQ0MGM4ZmYzNDQxIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImxpbmsiO3M6NTY6Imh0dHA6Ly9sb2NhbGhvc3QvaW5kZXgucGhwL25ld3MvMjAtc2FtcGxlLW5ld3MtYXJ0aWNsZS0zIjtzOjY6ImV4cGlyeSI7aToxNDgxMDUxODM5O31zOjQwOiIzZGJkYWU3NDEwZGY0ZDQ5Zjk4NjZkMTBjYTg3Mzk4MTliZWViZmYxIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImxpbmsiO3M6NDU6Imh0dHA6Ly9sb2NhbGhvc3QvaW5kZXgucGhwL3BhcmtzLzE3LWxha2UtcGFyayI7czo2OiJleHBpcnkiO2k6MTQ4MTA1MTg0NTt9fX19fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_tags`
--

CREATE TABLE `sg0we_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_tags`
--

INSERT INTO `sg0we_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 5, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 381, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'overview', 'overview', 'overview', '', '', 1, 0, '2016-12-05 20:51:31', 1, '{}', '', '', '{}', 381, '2016-12-05 20:51:31', '', 0, '2016-12-05 20:51:31', '{}', '{}', 0, '*', 1, '2016-12-05 20:51:31', '2016-12-05 20:51:31'),
(3, 1, 3, 4, 1, 'climate', 'climate', 'climate', '', '', 1, 0, '2016-12-05 20:51:31', 1, '{}', '', '', '{}', 381, '2016-12-05 20:51:31', '', 0, '2016-12-05 20:51:31', '{}', '{}', 0, '*', 1, '2016-12-05 20:51:31', '2016-12-05 20:51:31');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_template_styles`
--

CREATE TABLE `sg0we_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_template_styles`
--

INSERT INTO `sg0we_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'ostrainingbreeze', 0, '1', 'OSTraining: Breeze - Default', '{"logoFile":"images\\/logo.png","googleFont":"1","fontAwesome":"1","mobileMenu":"1","googleFontName":"Open+Sans:400,300,300italic,700,600,800","colorScheme":"#2184cd","hoverColor":"#41a1d6"}');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_ucm_base`
--

CREATE TABLE `sg0we_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_ucm_base`
--

INSERT INTO `sg0we_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_ucm_content`
--

CREATE TABLE `sg0we_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

--
-- Дамп данных таблицы `sg0we_ucm_content`
--

INSERT INTO `sg0we_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'Joomlaville Climate', 'joomlaville-climate', '<p><strong><img src="images/articles/about/park3.jpg" alt="park3" style="margin: 5px; float: left;" />Joomlaville</strong> is a city located in a <em>great climate</em> at the foothills of the mountains.</p>\r\n<p>There is snow in the winter and plenty of sun during the summer.</p>\r\n<p>No matter time of year you visit, you''ll find that Joomlaville has enjoyable weather.</p>', 1, '', 0, 1, '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 0, '{"robots":"","author":"","rights":"","xreference":""}', 381, '', '2016-12-04 19:52:18', 381, '2016-12-06 18:16:38', '*', '2016-12-04 19:52:18', '0000-00-00 00:00:00', 1, 72, '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', 11, 3, 1, '', '', 8, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_ucm_history`
--

CREATE TABLE `sg0we_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_ucm_history`
--

INSERT INTO `sg0we_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 8, 5, '', '2016-12-04 19:30:34', 381, 547, '47a7b41d3b98a3f5ae50b61abaaab044b29123b5', '{"id":8,"asset_id":55,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"About","alias":"about","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-04 19:30:34","modified_user_id":null,"modified_time":"2016-12-04 19:30:34","hits":"0","language":"*","version":null}', 0),
(2, 9, 5, '', '2016-12-04 19:30:44', 381, 559, 'b08cf4a381b29c0e74b6849ab938388713124dfb', '{"id":9,"asset_id":56,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"Attractions","alias":"attractions","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-04 19:30:44","modified_user_id":null,"modified_time":"2016-12-04 19:30:44","hits":"0","language":"*","version":null}', 0),
(3, 10, 5, '', '2016-12-04 19:31:04', 381, 556, 'edd2bbf33fa0fb61bdd075299e4f80e7d8bf00b7', '{"id":10,"asset_id":57,"parent_id":"1","lft":"15","rgt":16,"level":1,"path":null,"extension":"com_content","title":"Festivals","alias":"festivals","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-04 19:31:04","modified_user_id":null,"modified_time":"2016-12-04 19:31:04","hits":"0","language":"*","version":null}', 0),
(4, 11, 5, '', '2016-12-04 19:32:24', 381, 566, '713172f726c94cc050bcb742245fd30d327efc3a', '{"id":11,"asset_id":58,"parent_id":"1","lft":"17","rgt":18,"level":1,"path":null,"extension":"com_content","title":"Transportation","alias":"transportation","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-04 19:32:24","modified_user_id":null,"modified_time":"2016-12-04 19:32:24","hits":"0","language":"*","version":null}', 0),
(5, 2, 5, '', '2016-12-04 19:37:53', 381, 584, '9906c1586624614521851277bf458788167c7748', '{"id":2,"asset_id":"27","parent_id":"1","lft":"1","rgt":"2","level":"1","path":"uncategorised","extension":"com_content","title":"General","alias":"general","note":"","description":"","published":"1","checked_out":"381","checked_out_time":"2016-12-04 19:37:37","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2011-01-01 00:00:01","modified_user_id":"381","modified_time":"2016-12-04 19:37:53","hits":"0","language":"*","version":"1"}', 0),
(6, 1, 1, '', '2016-12-04 19:52:18', 381, 1970, '73d9a52a00a8a8231b90443d54a415153d082c5a', '{"id":1,"asset_id":59,"title":"Joomlaville Climate","alias":"joomlaville-climate","introtext":"<p>Joomlaville is a city located in a great climate at the foothills of the mountains.<\\/p>\\r\\n<p>There is snow in the winter and plenty of sun during the summer.<\\/p>\\r\\n<p>No matter time of year you visit, you''ll find that Joomlaville has enjoyable weather.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-12-04 19:52:18","created_by":"381","created_by_alias":"","modified":"2016-12-04 19:52:18","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-04 19:52:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 2, 1, '', '2016-12-04 19:53:37', 381, 2091, 'f8f4bf124a41786911f40d8e0c0db865220a1eeb', '{"id":2,"asset_id":60,"title":"Joomlaville Location","alias":"joomlaville-location","introtext":"<p>Joomlaville is in the southeast of our country, about a five hour drive from the capital.<\\/p>\\r\\n<p>It is located near a large mountain range, so there is plenty of opportunity for Joomlaville people to enjoy skiing, kayaking and other outdoor activities.<\\/p>\\r\\n<p>Joomlaville is also about three hours from the beach, so it''s easy for residents to enjoy a sunny vacation.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-12-04 19:53:37","created_by":"381","created_by_alias":"","modified":"2016-12-04 19:53:37","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-04 19:53:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 3, 1, '', '2016-12-04 19:54:24', 381, 2114, '4fedb7c76a7e2029dad32ab24dad9b70af29942a', '{"id":3,"asset_id":61,"title":"Joomlaville History","alias":"joomlaville-history","introtext":"<p>Joomlaville is a city with a rich history. It started as a market town in the 17th century.<\\/p>\\r\\n<p>The site was chosen because it was a major crossroads for people traveling through the mountains.<\\/p>\\r\\n<p>As the city grew in the 19th and 20th centuries, more industries moved and people flocked to Joomlaville looking for work. Many of our residents have now been here for several generations.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-12-04 19:54:24","created_by":"381","created_by_alias":"","modified":"2016-12-04 19:54:24","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-04 19:54:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":3,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 4, 1, '', '2016-12-05 20:17:25', 381, 2189, 'c753136bb11c673b2f987a2e4b047f73d26c4ebf', '{"id":4,"asset_id":62,"title":"Welcome to Joomlaville","alias":"welcome-to-joomlaville","introtext":"<p>Thank you for visiting our site for the city of Joomlaville.<\\/p>\\r\\n<p>It''s a wonderful city to live in, and we hope you''ll visit us soon. The weather is beautyful in the summer and not too cold in the winter, so it is always a good time to visit.<\\/p>\\r\\n<p>Joomlaville has lots to do. Here are some suggestions if you are new to Joomlaville.<\\/p>\\r\\n<p>You can visit the Aquarium, the Zoom and the Museum. You can get here via Airport, Bus Station and Train Station.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-12-05 20:17:25","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:17:25","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-05 20:17:25","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(10, 5, 1, '', '2016-12-05 20:23:16', 381, 1982, '24960238d40c98bd294ad1916a55944fcb0ac0b0', '{"id":5,"asset_id":63,"title":"Zoo","alias":"zoo","introtext":"<p>Joomlaville Zoo is a wonderful place for families to visit.<\\/p>\\r\\n<p>There is an aviary for birds and a farm for animals like cows, pigs and geese.<\\/p>\\r\\n<p>The zoo also has exotic animals such as lions, tigers, giraffe and buffalo.<\\/p>\\r\\n<p>Overall, it''s a great experience for young children.<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-12-05 20:23:16","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:23:16","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-05 20:23:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 6, 1, '', '2016-12-05 20:24:44', 381, 1989, '26d5a1fe67fdab53bc218a75083b2363ef59c4a7', '{"id":6,"asset_id":64,"title":"Aquarium","alias":"aquarium","introtext":"<p>Joomlaville Aquarium is one of the biggest in the country.<\\/p>\\r\\n<p>There is a large penguin exhibit. You can see them swimming, sunbathing and doing tricks.<\\/p>\\r\\n<p>There are also some large killer whales and sharks in a huge tank in the center of the aquarium. Please don''t feed these fish!<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-12-05 20:24:44","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:24:44","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-05 20:24:44","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 7, 1, '', '2016-12-05 20:25:07', 381, 1897, '1fca00ee6b78b4bc9597f79061f8b5c913b92ddb', '{"id":7,"asset_id":65,"title":"Museum","alias":"museum","introtext":"<p>The Joomlaville Museum contains artifacts from throughout the city''s history.<\\/p>\\r\\n<p>Here you can ride a steam train, see a house from the 1600s and even see old-fashioned airplanes fly by on the weekends.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-12-05 20:25:07","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:25:07","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-05 20:25:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":3,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 7, 1, '', '2016-12-05 20:25:45', 381, 1921, 'f5f396903605a58ea924c8c4f42b7097e109b9f6', '{"id":"7","asset_id":"65","title":"Museum","alias":"museum","introtext":"<p>The Joomlaville Museum contains artifacts from throughout the city''s history.<\\/p>\\r\\n<p>Here you can ride a steam train, see a house from the 1600s and even see old-fashioned airplanes fly by on the weekends.<\\/p>","fulltext":"","state":"1","catid":9,"created":"2016-12-05 20:25:07","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:25:45","modified_by":"381","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2016-12-05 20:25:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"1","ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 6, 1, '', '2016-12-05 20:25:45', 381, 2013, '14973935bd3dcb21a6ed313d4610db46f249bb93', '{"id":"6","asset_id":"64","title":"Aquarium","alias":"aquarium","introtext":"<p>Joomlaville Aquarium is one of the biggest in the country.<\\/p>\\r\\n<p>There is a large penguin exhibit. You can see them swimming, sunbathing and doing tricks.<\\/p>\\r\\n<p>There are also some large killer whales and sharks in a huge tank in the center of the aquarium. Please don''t feed these fish!<\\/p>","fulltext":"","state":"1","catid":9,"created":"2016-12-05 20:24:44","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:25:45","modified_by":"381","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2016-12-05 20:24:44","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"1","ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 8, 1, '', '2016-12-05 20:30:10', 381, 1886, 'e1d86b394eb8852f9095f8c2b293c4db89d71122', '{"id":8,"asset_id":66,"title":"Independence Day","alias":"independence-day","introtext":"<p>Independence Day is a big event throughout the country but we celebrate as well as anyone in Joomlaville.<\\/p>\\r\\n<p>There are parades, fireworks and parties throughout the day.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2016-12-05 20:30:10","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:30:10","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-05 20:30:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(16, 9, 1, '', '2016-12-05 20:35:57', 381, 2065, '5f9ee3018faa7cad6643af117197da11b450d78b', '{"id":9,"asset_id":67,"title":"New Year''s Day","alias":"new-year-s-day","introtext":"<p>New Year''s Day is a very good time to visit Joomlaville.<\\/p>\\r\\n<p>On the day before, lots of restaurants and bars are open for you to celebrate. At the stroke of midknight, a large Joomla logo is dropped from in front of Town Hall.<\\/p>\\r\\n<p>On the morning of New Year''s Day itself, there is a parade through the center of town with floats and antique cars.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2016-12-05 20:35:57","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:35:57","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-05 20:35:57","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 10, 1, '', '2016-12-05 20:39:14', 381, 1943, '8a9c46dad557459897df229c82d0c813039307da', '{"id":10,"asset_id":68,"title":"Mother''s Day","alias":"mother-s-day","introtext":"<p>Mother''s Day is a great opportunity for families to enjoy themselves in Joomlaville.<\\/p>\\r\\n<p>Mothers are invited to a picnic in downtown Joomlaville with their entire families. There are prizes, games and good time for everyone who comes.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2016-12-05 20:39:14","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:39:14","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-05 20:39:14","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":3,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(18, 11, 1, '', '2016-12-05 20:40:46', 381, 1866, '18f5e4ea2b5827c37333bb134665fe5e1d924678', '{"id":11,"asset_id":69,"title":"Bus Station","alias":"bus-station","introtext":"<p>The Bus Station is a very good way to get to cities around Joomlaville.<\\/p>\\r\\n<p>The buses leave Joomlaville every hour on weekdays and every two hours on weekends.<\\/p>","fulltext":"","state":1,"catid":"11","created":"2016-12-05 20:40:46","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:40:46","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-05 20:40:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 12, 1, '', '2016-12-05 20:41:38', 381, 1923, 'cbf8498c302fe2c583eb45a2baaa8f4bb3b3744b', '{"id":12,"asset_id":70,"title":"Train Station","alias":"train-station","introtext":"<p>The Joomlaville Train Station is a great way to get to other parts of the country. Our trains are quick, quiet and comfortable.<\\/p>\\r\\n<p>The Train Station is close to the center of Joomaville and next to the Aquarium.<\\/p>","fulltext":"","state":1,"catid":"11","created":"2016-12-05 20:41:38","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:41:38","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-05 20:41:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(20, 13, 1, '', '2016-12-05 20:42:47', 381, 1908, '9dc11cc2d821e85e168d22239ad23d09e3672b66', '{"id":13,"asset_id":71,"title":"Airport","alias":"airport","introtext":"<p>The Joomlaville Airport is a great place to fly to. It is clean, modern and was designed by a team of famous architects.<\\/p>\\r\\n<p>There are two terminals, one for international flights and one for domestic flights.<\\/p>","fulltext":"","state":1,"catid":"11","created":"2016-12-05 20:42:47","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:42:47","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-05 20:42:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":3,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 10, 1, '', '2016-12-05 20:43:04', 381, 1964, '5f0d4a34e639761f873e3c958a5c209c30ae8fba', '{"id":10,"asset_id":"68","title":"Mother''s Day","alias":"mothers-day","introtext":"<p>Mother''s Day is a great opportunity for families to enjoy themselves in Joomlaville.<\\/p>\\r\\n<p>Mothers are invited to a picnic in downtown Joomlaville with their entire families. There are prizes, games and good time for everyone who comes.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2016-12-05 20:39:14","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:43:04","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-05 20:42:56","publish_up":"2016-12-05 20:39:14","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(22, 9, 1, '', '2016-12-05 20:43:18', 381, 2086, '0687a018570379d08b79ab96a73b672df55ad5a5', '{"id":9,"asset_id":"67","title":"New Year''s Day","alias":"new-years-day","introtext":"<p>New Year''s Day is a very good time to visit Joomlaville.<\\/p>\\r\\n<p>On the day before, lots of restaurants and bars are open for you to celebrate. At the stroke of midknight, a large Joomla logo is dropped from in front of Town Hall.<\\/p>\\r\\n<p>On the morning of New Year''s Day itself, there is a parade through the center of town with floats and antique cars.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2016-12-05 20:35:57","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:43:18","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-05 20:43:09","publish_up":"2016-12-05 20:35:57","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(23, 2, 8, '', '2016-12-05 20:51:31', 381, 560, '863290ee434c2e8834d105fab17894e35cbad18f', '{"id":2,"parent_id":"1","lft":"1","rgt":2,"level":1,"path":"overview","title":"overview","alias":"overview","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2016-12-05 20:51:31","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"381","created_time":"2016-12-05 20:51:31","created_by_alias":"","modified_user_id":"0","modified_time":"2016-12-05 20:51:31","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2016-12-05 20:51:31","publish_down":"2016-12-05 20:51:31"}', 0),
(24, 3, 8, '', '2016-12-05 20:51:31', 381, 557, '205a15e73e2fd6340a37e11419ed39eb19cf59cd', '{"id":3,"parent_id":"1","lft":"3","rgt":4,"level":1,"path":"climate","title":"climate","alias":"climate","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2016-12-05 20:51:31","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"381","created_time":"2016-12-05 20:51:31","created_by_alias":"","modified_user_id":"0","modified_time":"2016-12-05 20:51:31","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2016-12-05 20:51:31","publish_down":"2016-12-05 20:51:31"}', 0),
(25, 1, 1, '', '2016-12-05 20:51:31', 381, 2020, '18af440653d158f85ce94c4c964cd8d44269745a', '{"id":1,"asset_id":"59","title":"Joomlaville Climate","alias":"joomlaville-climate","introtext":"<p><strong>Joomlaville<\\/strong> is a city located in a <em>great climate<\\/em> at the foothills of the mountains.<\\/p>\\r\\n<p>There is snow in the winter and plenty of sun during the summer.<\\/p>\\r\\n<p>No matter time of year you visit, you''ll find that Joomlaville has enjoyable weather.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-12-04 19:52:18","created_by":"381","created_by_alias":"","modified":"2016-12-05 20:51:31","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-05 20:45:38","publish_up":"2016-12-04 19:52:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(26, 6, 1, '', '2016-12-05 21:19:10', 381, 2015, '6bedb2d148d90d52023671dab83066f621798e6a', '{"id":6,"asset_id":"64","title":"Aquarium","alias":"aquarium","introtext":"<p>Joomlaville Aquarium is one of the biggest in the country. There is a large penguin exhibit.<\\/p>\\r\\n<p>You can see them swimming, sunbathing and doing tricks. There are also some large killer whales and sharks in a huge tank in the center of the aquarium.<\\/p>\\r\\n","fulltext":"\\r\\n<p>Please don''t feed these fish!<\\/p>","state":1,"catid":"9","created":"2016-12-05 20:24:44","created_by":"381","created_by_alias":"","modified":"2016-12-05 21:19:10","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-05 21:17:39","publish_up":"2016-12-05 20:24:44","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `sg0we_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(27, 5, 1, '', '2016-12-05 21:19:41', 381, 2008, 'e12b46cf19095ed77b6685bd3571e2fabbcfbafd', '{"id":5,"asset_id":"63","title":"Zoo","alias":"zoo","introtext":"<p>Joomlaville Zoo is a wonderful place for families to visit.<\\/p>\\r\\n<p>There is an aviary for birds and a farm for animals like cows, pigs and geese.<\\/p>\\r\\n","fulltext":"\\r\\n<p>The zoo also has exotic animals such as lions, tigers, giraffe and buffalo.<\\/p>\\r\\n<p>Overall, it''s a great experience for young children.<\\/p>","state":1,"catid":"9","created":"2016-12-05 20:23:16","created_by":"381","created_by_alias":"","modified":"2016-12-05 21:19:41","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-05 21:19:15","publish_up":"2016-12-05 20:23:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(28, 4, 1, '', '2016-12-05 21:33:10', 381, 2314, '8a9cfe259277931a76c8b8785b277ef4d298920d', '{"id":4,"asset_id":"62","title":"Welcome to Joomlaville","alias":"welcome-to-joomlaville","introtext":"<p>Thank you for visiting our site for the city of Joomlaville.<\\/p>\\r\\n<p>It''s a wonderful city to live in, and we hope you''ll visit us soon. The weather is beautyful in the summer and not too cold in the winter, so it is always a good time to visit.<\\/p>\\r\\n<p>Joomlaville has lots to do. Here are some suggestions if you are new to Joomlaville.<\\/p>\\r\\n<p>You can visit the Aquarium, the Zoo and the Museum.<\\/p>\\r\\n<p>You can celebrate with us on New Years Day, Independence Day and Mothers Day.<\\/p>\\r\\n<p>You can get here via the Airport, Bus Station and Train Station.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-12-05 20:17:25","created_by":"381","created_by_alias":"","modified":"2016-12-05 21:33:10","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-05 21:32:45","publish_up":"2016-12-05 20:17:25","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(29, 13, 1, '', '2016-12-06 12:07:28', 381, 2450, '5a7adf12b406183ac9a5132b0c68ed5a6222ec37', '{"id":13,"asset_id":"71","title":"Airport","alias":"airport","introtext":"<h3>The Joomlaville Airport is a great place to fly to.<\\/h3>\\r\\n<p>It is clean, modern and was designed by a team of famous architects.<\\/p>\\r\\n<p><strong>Terminals<\\/strong><\\/p>\\r\\n<p>There are two terminals, one for international flights and one for domestic flights.<\\/p>\\r\\n<p><strong>Destinations<\\/strong><\\/p>\\r\\n<p>From Joomlaville you can fly directly to major cities in:<\\/p>\\r\\n<ul>\\r\\n<li>Europe<\\/li>\\r\\n<li>Asia<\\/li>\\r\\n<li>Africa<\\/li>\\r\\n<li>North and South America.<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>Food<\\/strong><\\/p>\\r\\n<p>If you''re hungry before your flight, there are lots of restaurants where you can eat.<\\/p>\\r\\n<p><strong>Location<\\/strong><\\/p>\\r\\n<p>The airport is located just outside of town, close to the Zoo.<\\/p>","fulltext":"","state":1,"catid":"11","created":"2016-12-05 20:42:47","created_by":"381","created_by_alias":"","modified":"2016-12-06 12:07:28","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 11:58:19","publish_up":"2016-12-05 20:42:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(30, 13, 1, '', '2016-12-06 12:16:32', 381, 2590, 'b5b1494dd240d2a075130c9011822b80203e0087', '{"id":13,"asset_id":"71","title":"Airport","alias":"airport","introtext":"<h3><img class=\\"pull-left\\" title=\\"Joomlaville Airport\\" src=\\"images\\/articles\\/transportation\\/airport.jpg\\" alt=\\"Joomlaville Airport\\" \\/>The Joomlaville Airport is a great place to fly to.<\\/h3>\\r\\n<p>It is clean, modern and was designed by a team of famous architects.<\\/p>\\r\\n<p><strong>Terminals<\\/strong><\\/p>\\r\\n<p>There are two terminals, one for international flights and one for domestic flights.<\\/p>\\r\\n<p><strong>Destinations<\\/strong><\\/p>\\r\\n<p>From Joomlaville you can fly directly to major cities in:<\\/p>\\r\\n<ul>\\r\\n<li>Europe<\\/li>\\r\\n<li>Asia<\\/li>\\r\\n<li>Africa<\\/li>\\r\\n<li>North and South America.<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>Food<\\/strong><\\/p>\\r\\n<p>If you''re hungry before your flight, there are lots of restaurants where you can eat.<\\/p>\\r\\n<p><strong>Location<\\/strong><\\/p>\\r\\n<p>The airport is located just outside of town, close to the Zoo.<\\/p>","fulltext":"","state":1,"catid":"11","created":"2016-12-05 20:42:47","created_by":"381","created_by_alias":"","modified":"2016-12-06 12:16:32","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 12:13:56","publish_up":"2016-12-05 20:42:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(31, 13, 1, '', '2016-12-06 12:17:40', 381, 2604, 'c97c897c80373d1e096de85c456c3a4bd4a195ad', '{"id":13,"asset_id":"71","title":"Airport","alias":"airport","introtext":"<h3>The Joomlaville Airport is a great place to fly to.<\\/h3>\\r\\n<p>It is clean, modern and was designed by a team of famous architects.<\\/p>\\r\\n<p><strong>Terminals<\\/strong><\\/p>\\r\\n<p>There are two terminals, one for international flights and one for domestic flights.<\\/p>\\r\\n<p><strong>Destinations<\\/strong><\\/p>\\r\\n<p>From Joomlaville you can fly directly to major cities in:<\\/p>\\r\\n<ul>\\r\\n<li>Europe<\\/li>\\r\\n<li>Asia<\\/li>\\r\\n<li>Africa<\\/li>\\r\\n<li>North and South America.<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>Food<\\/strong><\\/p>\\r\\n<p>If you''re hungry before your flight, there are lots of restaurants where you can eat.<\\/p>\\r\\n<p><strong>Location<\\/strong><\\/p>\\r\\n<p>The airport is located just outside of town, close to the Zoo.<\\/p>\\r\\n<h3><img class=\\"pull-left\\" title=\\"Joomlaville Airport\\" src=\\"images\\/articles\\/transportation\\/airport.jpg\\" alt=\\"Joomlaville Airport\\" \\/><\\/h3>","fulltext":"","state":1,"catid":"11","created":"2016-12-05 20:42:47","created_by":"381","created_by_alias":"","modified":"2016-12-06 12:17:40","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 12:16:32","publish_up":"2016-12-05 20:42:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(32, 13, 1, '', '2016-12-06 12:19:34', 381, 2544, 'bf23a1503c7d36134411e549178c8cf240ead4b0', '{"id":13,"asset_id":"71","title":"Airport","alias":"airport","introtext":"<h3>The Joomlaville Airport is a great place to fly to.<\\/h3>\\r\\n<p>It is clean, modern and was designed by a team of famous architects.<\\/p>\\r\\n<p><strong>Terminals<\\/strong><\\/p>\\r\\n<p>There are two terminals, one for international flights and one for domestic flights.<\\/p>\\r\\n<p><strong>Destinations<\\/strong><\\/p>\\r\\n<p>From Joomlaville you can fly directly to major cities in:<\\/p>\\r\\n<ul>\\r\\n<li>Europe<\\/li>\\r\\n<li>Asia<\\/li>\\r\\n<li>Africa<\\/li>\\r\\n<li>North and South America.<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>Food<\\/strong><\\/p>\\r\\n<p>If you''re hungry before your flight, there are lots of restaurants where you can eat.<\\/p>\\r\\n<p><strong>Location<\\/strong><\\/p>\\r\\n<p>The airport is located just outside of town, close to the Zoo.<\\/p>\\r\\n<h3>\\u00a0<\\/h3>","fulltext":"","state":1,"catid":"11","created":"2016-12-05 20:42:47","created_by":"381","created_by_alias":"","modified":"2016-12-06 12:19:34","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 12:17:40","publish_up":"2016-12-05 20:42:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/articles\\\\\\/transportation\\\\\\/airport.jpg\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"Joomlaville Airport\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(33, 7, 1, '', '2016-12-06 12:44:54', 381, 1988, '1d1fc10b47ba7d728023516225a9045771802794', '{"id":7,"asset_id":"65","title":"Museum","alias":"museum","introtext":"<p>The Joomlaville Museum contains artifacts from throughout the city''s history.<\\/p>\\r\\n<p>Here you can ride a steam train, see a house from the 1600s and even see old-fashioned airplanes fly by on the weekends.<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-12-05 20:25:07","created_by":"381","created_by_alias":"","modified":"2016-12-06 12:44:54","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 12:22:51","publish_up":"2016-12-05 20:25:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/articles\\\\\\/attractions\\\\\\/museum.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Joomlaville Museum\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(34, 7, 1, '', '2016-12-06 12:46:13', 381, 1988, '22ba0c92da879ac5300907924915d59b38a6f1dc', '{"id":7,"asset_id":"65","title":"Museum","alias":"museum","introtext":"<p>The Joomlaville Museum contains artifacts from throughout the city''s history.<\\/p>\\r\\n<p>Here you can ride a steam train, see a house from the 1600s and even see old-fashioned airplanes fly by on the weekends.<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-12-05 20:25:07","created_by":"381","created_by_alias":"","modified":"2016-12-06 12:46:13","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 12:46:01","publish_up":"2016-12-05 20:25:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/articles\\\\\\/attractions\\\\\\/museum.jpg\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"Joomlaville Museum\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(35, 12, 10, '', '2016-12-06 13:11:31', 381, 584, '748395815814977ebc9de5abec001d55733fec57', '{"id":12,"asset_id":81,"parent_id":"1","lft":"19","rgt":20,"level":1,"path":null,"extension":"com_banners","title":"Joomlaville Advertising","alias":"joomlaville-advertising","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-06 13:11:31","modified_user_id":null,"modified_time":"2016-12-06 13:11:31","hits":"0","language":"*","version":null}', 0),
(36, 1, 9, '', '2016-12-06 13:22:08', 381, 803, '0ba54dd2c3d0f98537e281f6311cab1373a630a0', '{"id":1,"cid":"0","type":"0","name":"Joomlaville Ad 1","alias":"joomlaville-ad-1","imptotal":0,"impmade":"0","clicks":"0","clickurl":"http:\\/\\/opensourcematters.com","state":"1","catid":"12","description":"","custombannercode":"","sticky":"0","ordering":1,"metakey":"","params":"{\\"imageurl\\":\\"images\\\\\\/banners\\\\\\/osmbanner1.png\\",\\"width\\":\\"\\",\\"height\\":\\"\\",\\"alt\\":\\"Open Source Matters Banner\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"1","track_impressions":"1","checked_out":null,"checked_out_time":null,"publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","reset":"2017-01-06 00:00:00","created":"2016-12-06 13:22:08","language":"*","created_by":"381","created_by_alias":"","modified":"0000-00-00 00:00:00","modified_by":null,"version":1}', 0),
(37, 2, 9, '', '2016-12-06 13:23:48', 381, 781, '8a5794b78106d72ac74b28515d44fcaf36b168f7', '{"id":2,"cid":"0","type":"0","name":"Joomlaville Ad 2","alias":"joomlaville-ad-2","imptotal":0,"impmade":"0","clicks":"0","clickurl":"http:\\/\\/joomla.org","state":"1","catid":"12","description":"","custombannercode":"","sticky":"0","ordering":2,"metakey":"","params":"{\\"imageurl\\":\\"images\\\\\\/banners\\\\\\/shop-ad-books.jpg\\",\\"width\\":\\"\\",\\"height\\":\\"\\",\\"alt\\":\\"Shop Joomla!\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"1","track_impressions":"1","checked_out":null,"checked_out_time":null,"publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","reset":"2017-01-06 00:00:00","created":"2016-12-06 13:23:48","language":"*","created_by":"381","created_by_alias":"","modified":"0000-00-00 00:00:00","modified_by":null,"version":1}', 0),
(38, 13, 6, '', '2016-12-06 14:31:05', 381, 566, 'f3f685efc9defa44b750f75e05f26a91ae2eb6fe', '{"id":13,"asset_id":83,"parent_id":"1","lft":"21","rgt":22,"level":1,"path":null,"extension":"com_contact","title":"Mayor''s Office","alias":"mayor-s-office","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-06 14:31:05","modified_user_id":null,"modified_time":"2016-12-06 14:31:05","hits":"0","language":"*","version":null}', 0),
(39, 13, 6, '', '2016-12-06 14:31:44', 381, 601, '12abe416d26b74f5ae7fd92497e2828f61981fd5', '{"id":13,"asset_id":"83","parent_id":"1","lft":"21","rgt":"22","level":"1","path":"mayor-s-office","extension":"com_contact","title":"Mayor''s Office","alias":"mayors-office","note":"","description":"","published":"1","checked_out":"381","checked_out_time":"2016-12-06 14:31:10","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-06 14:31:05","modified_user_id":"381","modified_time":"2016-12-06 14:31:44","hits":"0","language":"*","version":"1"}', 0),
(40, 1, 2, '', '2016-12-06 14:39:40', 381, 1822, 'ef07c7641e21013f1cdd8e429c6941133f9a84e8', '{"id":1,"name":"Mayor Steve","alias":"mayor-steve","con_position":"Mayor of Joomlaville","address":"555 Joomlaville Way","suburb":"Joomlaville","state":"FL","country":"USA","postcode":"33601","telephone":"555-555-5555","fax":"","misc":"<p>Steve is a mayor. He is a great guy!<\\/p>","image":"","email_to":"steve@joomlaville.org","default_con":0,"published":"1","checked_out":null,"checked_out_time":null,"ordering":1,"params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":0,"catid":"4","access":"1","mobile":"555-555-5555","webpage":"http:\\/\\/joomlaville.org","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2016-12-06 14:39:40","created_by":"381","created_by_alias":"","modified":"2016-12-06 14:39:40","modified_by":null,"metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":1,"hits":null}', 0),
(41, 1, 2, '', '2016-12-06 14:40:38', 381, 1870, '60136fda6c9b8c8a65a95538c34365d3f3d7d8ae', '{"id":1,"name":"Mayor Steve","alias":"mayor-steve","con_position":"Mayor of Joomlaville","address":"555 Joomlaville Way","suburb":"Joomlaville","state":"FL","country":"USA","postcode":"33601","telephone":"555-555-5555","fax":"","misc":"<p>Steve is a mayor. He is a great guy!<\\/p>","image":"images\\/users\\/webmaster.jpg","email_to":"steve@joomlaville.org","default_con":0,"published":"1","checked_out":"381","checked_out_time":"2016-12-06 14:40:05","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":0,"catid":"4","access":"1","mobile":"555-555-5555","webpage":"http:\\/\\/joomlaville.org","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2016-12-06 14:39:40","created_by":"381","created_by_alias":"","modified":"2016-12-06 14:40:38","modified_by":"381","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":2,"hits":"0"}', 0),
(42, 1, 2, '', '2016-12-06 14:44:37', 381, 1871, 'a19789e037da804fb3066eb9d0a965cf1d098543', '{"id":1,"name":"Mayor Steve","alias":"mayor-steve","con_position":"Mayor of Joomlaville","address":"555 Joomlaville Way","suburb":"Joomlaville","state":"FL","country":"USA","postcode":"33601","telephone":"555-555-5555","fax":"","misc":"<p>Steve is a mayor. He is a great guy!<\\/p>","image":"images\\/users\\/webmaster.jpg","email_to":"steve@joomlaville.org","default_con":0,"published":"1","checked_out":"381","checked_out_time":"2016-12-06 14:44:29","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":0,"catid":"13","access":"1","mobile":"555-555-5555","webpage":"http:\\/\\/joomlaville.org","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2016-12-06 14:39:40","created_by":"381","created_by_alias":"","modified":"2016-12-06 14:44:37","modified_by":"381","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":3,"hits":"0"}', 0),
(43, 14, 7, '', '2016-12-06 15:03:19', 381, 552, '75355e595e6aa3e71a9311481ef62b8690af9677', '{"id":14,"asset_id":84,"parent_id":"1","lft":"23","rgt":24,"level":1,"path":null,"extension":"com_newsfeeds","title":"Sports","alias":"sports","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-06 15:03:19","modified_user_id":null,"modified_time":"2016-12-06 15:03:19","hits":"0","language":"*","version":null}', 0),
(44, 1, 3, '', '2016-12-06 15:05:52', 381, 935, 'c8c8e0d77b0a07c866e9bf73b274ef46864dd120', '{"catid":"14","id":1,"name":"ESPN","alias":"espn","link":"http:\\/\\/sports.espn.go.com\\/espn\\/rss\\/news","published":"1","numarticles":"5","cache_time":"3600","checked_out":null,"checked_out_time":null,"ordering":1,"rtl":"0","access":"1","language":"*","params":"{\\"show_feed_image\\":\\"\\",\\"show_feed_description\\":\\"\\",\\"show_item_description\\":\\"\\",\\"feed_character_count\\":\\"0\\",\\"newsfeed_layout\\":\\"\\",\\"feed_display_order\\":\\"\\"}","created":"2016-12-06 15:05:52","created_by":"381","created_by_alias":"","modified":"2016-12-06 15:05:52","modified_by":null,"metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","xreference":"","publish_up":"","publish_down":"","description":"","version":1,"hits":null,"images":"{\\"image_first\\":\\"\\",\\"float_first\\":\\"\\",\\"image_first_alt\\":\\"\\",\\"image_first_caption\\":\\"\\",\\"image_second\\":\\"\\",\\"float_second\\":\\"\\",\\"image_second_alt\\":\\"\\",\\"image_second_caption\\":\\"\\"}"}', 0),
(45, 4, 1, '', '2016-12-06 16:07:35', 381, 2366, '6918acb05824a053d56b32dbc29befff994868d2', '{"id":4,"asset_id":"62","title":"Welcome to Joomlaville","alias":"welcome-to-joomlaville","introtext":"<p>Thank you for visiting our site for the city of Joomlaville.<\\/p>\\r\\n<p>It''s a wonderful city to live in, and we hope you''ll visit us soon. The weather is beautyful in the summer and not too cold in the winter, so it is always a good time to visit.<\\/p>\\r\\n<p>Joomlaville has lots to do. Here are some suggestions if you are new to Joomlaville.<\\/p>\\r\\n<p>You can visit the Aquarium, the Zoo and the Museum.<\\/p>\\r\\n<p>You can celebrate with us on New Years Day, Independence Day and Mothers Day.<\\/p>\\r\\n<p>You can get here via the Airport, Bus Station and Train Station.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>{loadposition welcome}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-12-05 20:17:25","created_by":"381","created_by_alias":"","modified":"2016-12-06 16:07:35","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 16:06:37","publish_up":"2016-12-05 20:17:25","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(46, 4, 1, '', '2016-12-06 17:08:59', 381, 2450, 'a561e73fb0b04b0e7affcfa54e2f5909e67f80f9', '{"id":4,"asset_id":"62","title":"Welcome to Joomlaville","alias":"welcome-to-joomlaville","introtext":"<p><img src=\\"images\\/townhall.jpg\\" alt=\\"Joomlaville Townhall\\" style=\\"margin: 5px; float: left;\\" \\/>Thank you for visiting our site for the city of Joomlaville.<\\/p>\\r\\n<p>It''s a wonderful city to live in, and we hope you''ll visit us soon. The weather is beautyful in the summer and not too cold in the winter, so it is always a good time to visit.<\\/p>\\r\\n<p>Joomlaville has lots to do. Here are some suggestions if you are new to Joomlaville.<\\/p>\\r\\n<p>You can visit the Aquarium, the Zoo and the Museum.<\\/p>\\r\\n<p>You can celebrate with us on New Years Day, Independence Day and Mothers Day.<\\/p>\\r\\n<p>You can get here via the Airport, Bus Station and Train Station.<\\/p>\\r\\n<p>{loadposition welcome}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-12-05 20:17:25","created_by":"381","created_by_alias":"","modified":"2016-12-06 17:08:59","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 17:06:30","publish_up":"2016-12-05 20:17:25","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(47, 4, 1, '', '2016-12-06 17:23:31', 381, 2416, '1ff218b1484292d721aa89f748424c4300121dac', '{"id":4,"asset_id":"62","title":"Welcome to Joomlaville","alias":"welcome-to-joomlaville","introtext":"<p><img src=\\"images\\/townhall.jpg\\" alt=\\"Joomlaville Townhall\\" style=\\"margin: 5px; float: left;\\" \\/>Thank you for visiting our site for the city of Joomlaville.<\\/p>\\r\\n<p>It''s a wonderful city to live in, and we hope you''ll visit us soon. The weather is beautyful in the summer and not too cold in the winter, so it is always a good time to visit.<\\/p>\\r\\n<p>Joomlaville has lots to do. Here are some suggestions if you are new to Joomlaville.<\\/p>\\r\\n<p>You can visit the Aquarium, the Zoo and the Museum.<\\/p>\\r\\n<p>You can celebrate with us on New Years Day, Independence Day and Mothers Day.<\\/p>\\r\\n<p>You can get here via the Airport, Bus Station and Train Station.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-12-05 20:17:25","created_by":"381","created_by_alias":"","modified":"2016-12-06 17:23:31","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 17:23:19","publish_up":"2016-12-05 20:17:25","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(48, 10, 1, '', '2016-12-06 17:47:58', 381, 2026, '1c057ca22aa4961faf11ee0b4316d28c5b01ef83', '{"id":10,"asset_id":"68","title":"Mother''s Day","alias":"mothers-day","introtext":"<p>Mother''s Day is a great opportunity for families to enjoy themselves in Joomlaville.<\\/p>\\r\\n<p>Mothers are invited to a picnic in downtown Joomlaville with their entire families. There are prizes, games and good time for everyone who comes.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2016-12-05 20:39:14","created_by":"381","created_by_alias":"","modified":"2016-12-06 17:47:58","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 17:45:01","publish_up":"2016-12-05 20:39:14","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/articles\\\\\\/festivals\\\\\\/mothers.jpg\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"Mother''s Day\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(49, 3, 9, '', '2016-12-06 17:59:03', 381, 783, 'e8f90b57ed6950b7c1b691b8560f9b43e20b7927', '{"id":3,"cid":"0","type":"0","name":"Welcome Banner","alias":"welcome-banner","imptotal":0,"impmade":"0","clicks":"0","clickurl":"http:\\/\\/joomlaville.org","state":"1","catid":"12","description":"","custombannercode":"","sticky":"0","ordering":3,"metakey":"","params":"{\\"imageurl\\":\\"images\\\\\\/banners\\\\\\/welcome.jpg\\",\\"width\\":\\"\\",\\"height\\":\\"\\",\\"alt\\":\\"Welcome to Our City\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0","checked_out":null,"checked_out_time":null,"publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","reset":"2017-01-06 00:00:00","created":"2016-12-06 17:59:03","language":"*","created_by":"381","created_by_alias":"","modified":"0000-00-00 00:00:00","modified_by":null,"version":1}', 0),
(50, 3, 1, '', '2016-12-06 18:09:36', 381, 2176, 'b2ec2c597e904e4d83126240ffcdd594f5df296a', '{"id":3,"asset_id":"61","title":"Joomlaville History","alias":"joomlaville-history","introtext":"<p>Joomlaville is a city with a rich history. It started as a market town in the 17th century.<\\/p>\\r\\n<p>The site was chosen because it was a major crossroads for people traveling through the mountains.<\\/p>\\r\\n<p>As the city grew in the 19th and 20th centuries, more industries moved and people flocked to Joomlaville looking for work. Many of our residents have now been here for several generations.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-12-04 19:54:24","created_by":"381","created_by_alias":"","modified":"2016-12-06 18:09:36","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 18:08:43","publish_up":"2016-12-04 19:54:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/joomlaville.jpg\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"Joomlaville\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"8","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(51, 3, 1, '', '2016-12-06 18:12:02', 381, 2237, '0c40ea25183eeac290b492c045660c3e6f09c153', '{"id":3,"asset_id":"61","title":"Joomlaville History","alias":"joomlaville-history","introtext":"<p><img src=\\"images\\/joomlaville.jpg\\" alt=\\"joomlaville\\" style=\\"margin: 5px; float: left;\\" \\/>Joomlaville is a city with a rich history. It started as a market town in the 17th century.<\\/p>\\r\\n<p>The site was chosen because it was a major crossroads for people traveling through the mountains.<\\/p>\\r\\n<p>As the city grew in the 19th and 20th centuries, more industries moved and people flocked to Joomlaville looking for work. Many of our residents have now been here for several generations.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-12-04 19:54:24","created_by":"381","created_by_alias":"","modified":"2016-12-06 18:12:02","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 18:10:53","publish_up":"2016-12-04 19:54:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"10","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `sg0we_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(52, 2, 1, '', '2016-12-06 18:15:48', 381, 2215, '7f72d5cac1192415e8dbd9db528305f2fb14de1e', '{"id":2,"asset_id":"60","title":"Joomlaville Location","alias":"joomlaville-location","introtext":"<p><img src=\\"images\\/articles\\/about\\/news2.jpg\\" alt=\\"news2\\" style=\\"margin: 5px; float: left;\\" \\/>Joomlaville is in the southeast of our country, about a five hour drive from the capital.<\\/p>\\r\\n<p>It is located near a large mountain range, so there is plenty of opportunity for Joomlaville people to enjoy skiing, kayaking and other outdoor activities.<\\/p>\\r\\n<p>Joomlaville is also about three hours from the beach, so it''s easy for residents to enjoy a sunny vacation.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-12-04 19:53:37","created_by":"381","created_by_alias":"","modified":"2016-12-06 18:15:48","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 18:15:15","publish_up":"2016-12-04 19:53:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"20","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(53, 1, 1, '', '2016-12-06 18:16:38', 381, 2122, 'da9ace19db734279bddc4aae582a291fb2fbd752', '{"id":1,"asset_id":"59","title":"Joomlaville Climate","alias":"joomlaville-climate","introtext":"<p><strong><img src=\\"images\\/articles\\/about\\/park3.jpg\\" alt=\\"park3\\" style=\\"margin: 5px; float: left;\\" \\/>Joomlaville<\\/strong> is a city located in a <em>great climate<\\/em> at the foothills of the mountains.<\\/p>\\r\\n<p>There is snow in the winter and plenty of sun during the summer.<\\/p>\\r\\n<p>No matter time of year you visit, you''ll find that Joomlaville has enjoyable weather.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-12-04 19:52:18","created_by":"381","created_by_alias":"","modified":"2016-12-06 18:16:38","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 18:16:14","publish_up":"2016-12-04 19:52:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(54, 14, 1, '', '2016-12-06 18:41:47', 381, 1756, '68add193e76f30ffd857563373ddc9e1108dfab3', '{"id":14,"asset_id":95,"title":"Joomlaville Board Minutes for May","alias":"joomlaville-board-minutes-for-may","introtext":"<p>Board Minutes<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-12-06 18:41:47","created_by":"381","created_by_alias":"","modified":"2016-12-06 18:41:47","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-06 18:41:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(55, 14, 1, '', '2016-12-06 18:46:45', 381, 1778, '286daf52bdd544f812befbf372beb81400576845', '{"id":14,"asset_id":"95","title":"Joomlaville Board Minutes for May","alias":"joomlaville-board-minutes-for-may","introtext":"<p>Board Minutes<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-12-06 18:41:47","created_by":"381","created_by_alias":"","modified":"2016-12-06 18:46:45","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 18:46:37","publish_up":"2016-12-06 18:41:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"7","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(56, 15, 5, '', '2016-12-06 18:47:58', 381, 564, '6f6367a9949a7ff5ff7c8ec51847c86ed042e42f', '{"id":15,"asset_id":96,"parent_id":"1","lft":"25","rgt":26,"level":1,"path":null,"extension":"com_content","title":"Board Minutes","alias":"board-minutes","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-06 18:47:58","modified_user_id":null,"modified_time":"2016-12-06 18:47:58","hits":"0","language":"*","version":null}', 0),
(57, 14, 1, '', '2016-12-06 18:48:19', 381, 1779, '10e9b6d4dd79373dc15ebef9035ff44db26d49e1', '{"id":14,"asset_id":"95","title":"Joomlaville Board Minutes for May","alias":"joomlaville-board-minutes-for-may","introtext":"<p>Board Minutes<\\/p>","fulltext":"","state":1,"catid":"15","created":"2016-12-06 18:41:47","created_by":"381","created_by_alias":"","modified":"2016-12-06 18:48:19","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 18:48:08","publish_up":"2016-12-06 18:41:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"2","metakey":"","metadesc":"","access":"7","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(58, 16, 5, '', '2016-12-06 19:01:42', 381, 572, '3cb7c50d4afe2eb6d430c81894402f1a0a41c472', '{"id":16,"asset_id":97,"parent_id":"1","lft":"27","rgt":28,"level":1,"path":null,"extension":"com_content","title":"Joomlaville Parks","alias":"joomlaville-parks","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-06 19:01:42","modified_user_id":null,"modified_time":"2016-12-06 19:01:42","hits":"0","language":"*","version":null}', 0),
(59, 15, 1, '', '2016-12-06 19:02:27', 381, 1705, 'b515c231be3079036673ad3a891eda5b036416be', '{"id":15,"asset_id":98,"title":"Wood Park","alias":"wood-park","introtext":"<p>Wood Park<\\/p>","fulltext":"","state":1,"catid":"16","created":"2016-12-06 19:02:27","created_by":"381","created_by_alias":"","modified":"2016-12-06 19:02:27","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-06 19:02:27","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(60, 16, 1, '', '2016-12-06 19:03:02', 381, 1705, 'd3d24715658162d6df32ff78f9e231d271501e0b', '{"id":16,"asset_id":99,"title":"City Park","alias":"city-park","introtext":"<p>City Park<\\/p>","fulltext":"","state":1,"catid":"16","created":"2016-12-06 19:03:02","created_by":"381","created_by_alias":"","modified":"2016-12-06 19:03:02","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-06 19:03:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(61, 17, 1, '', '2016-12-06 19:03:34', 381, 1706, '9c9e2f33669c58bc675add99708ecdcd5626a5b2', '{"id":17,"asset_id":100,"title":"Lake Park","alias":"lake-park","introtext":"<p>Lake Park<\\/p>","fulltext":"","state":1,"catid":"16","created":"2016-12-06 19:03:34","created_by":"381","created_by_alias":"","modified":"2016-12-06 19:03:34","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-06 19:03:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":3,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(62, 17, 5, '', '2016-12-06 19:05:56', 381, 571, 'ad1a6d0ce06de48bcef737902d0098d3e5e3ec05', '{"id":17,"asset_id":101,"parent_id":"1","lft":"29","rgt":30,"level":1,"path":null,"extension":"com_content","title":"Joomlaville News","alias":"joomlaville-news","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-06 19:05:56","modified_user_id":null,"modified_time":"2016-12-06 19:05:56","hits":"0","language":"*","version":null}', 0),
(63, 16, 5, '', '2016-12-06 19:06:29', 381, 587, '1476b10cc1b3f797b350e96b3f285ac8a853db1f', '{"id":16,"asset_id":"97","parent_id":"1","lft":"27","rgt":"28","level":"1","path":"joomlaville-parks","extension":"com_content","title":"Parks","alias":"parks","note":"","description":"","published":"1","checked_out":"381","checked_out_time":"2016-12-06 19:06:15","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-06 19:01:42","modified_user_id":"381","modified_time":"2016-12-06 19:06:29","hits":"0","language":"*","version":"1"}', 0),
(64, 17, 5, '', '2016-12-06 19:06:48', 381, 597, 'bd6c1d0a44d2bbc27ce797f8ac76955a6ff9171e', '{"id":17,"asset_id":"101","parent_id":"1","lft":"29","rgt":"30","level":"1","path":"joomlaville-news","extension":"com_content","title":"News","alias":"joomlaville-news","note":"","description":"","published":"1","checked_out":"381","checked_out_time":"2016-12-06 19:06:37","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-06 19:05:56","modified_user_id":"381","modified_time":"2016-12-06 19:06:48","hits":"0","language":"*","version":"1"}', 0),
(65, 17, 5, '', '2016-12-06 19:07:03', 381, 585, 'b601ba91bfaa83e1bbc0c4607f3e9d41bb0d8697', '{"id":17,"asset_id":"101","parent_id":"1","lft":"29","rgt":"30","level":"1","path":"joomlaville-news","extension":"com_content","title":"News","alias":"news","note":"","description":"","published":"1","checked_out":"381","checked_out_time":"2016-12-06 19:06:54","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"381","created_time":"2016-12-06 19:05:56","modified_user_id":"381","modified_time":"2016-12-06 19:07:03","hits":"0","language":"*","version":"1"}', 0),
(66, 18, 1, '', '2016-12-06 19:08:29', 381, 2056, 'e0ae1ca4180a47b0b2f1b5d71bb11f130ba2a3f1', '{"id":18,"asset_id":102,"title":"Sample News Article 1","alias":"sample-news-article-1","introtext":"<p>There was some big news in Joomlaville recently. Construction of a large new project called 1.6 was finished.<\\/p>\\r\\n<p>It took the effort of many people in Joomlaville to complete but it was worth the effort. In fact, you''re looking at 1.6 right now. What do you think?<\\/p>","fulltext":"","state":1,"catid":"17","created":"2016-12-06 19:08:29","created_by":"381","created_by_alias":"","modified":"2016-12-06 19:08:29","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-06 19:08:29","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/articles\\\\\\/news\\\\\\/news1.jpg\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"Sample News Article 1\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(67, 19, 1, '', '2016-12-06 19:09:45', 381, 2052, 'bf0e6d270a828bbedd4516325639c4208b943b9e', '{"id":19,"asset_id":103,"title":"Sample News Article 2","alias":"sample-news-article-2","introtext":"<p>Did you know that Joomlaville is one of the fastest growing cities around?<\\/p>\\r\\n<p>Every day lots and lots of new people are moving to Joomlaville, attracted by the low cost and high quality of living. Why don''t you pay us a visit and see if you''d like to join us?<\\/p>","fulltext":"","state":1,"catid":"17","created":"2016-12-06 19:09:45","created_by":"381","created_by_alias":"","modified":"2016-12-06 19:09:45","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-06 19:09:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/articles\\\\\\/news\\\\\\/news2.jpg\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"Sample News Article 2\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(68, 20, 1, '', '2016-12-06 19:10:26', 381, 2015, '2f9a4af5a4478ed7c8517c1cc8d34d3652877a3b', '{"id":20,"asset_id":104,"title":"Sample News Article 3","alias":"sample-news-article-3","introtext":"<p>Joomlaville is a busy place with events going on all the time.<\\/p>\\r\\n<p>Almost every month you''ll find more and more Joomla events happening. Be sure to check Joomla.org regularly to see if there''s an event you''d like to attend.<\\/p>","fulltext":"","state":1,"catid":"17","created":"2016-12-06 19:10:26","created_by":"381","created_by_alias":"","modified":"2016-12-06 19:10:26","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-12-06 19:10:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/articles\\\\\\/news\\\\\\/news3.jpg\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"Sample News Article 3\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":3,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(69, 17, 1, '', '2016-12-06 19:11:49', 381, 1975, 'f2297dd56d725d23ae62b60de29507b8d1e7511e', '{"id":17,"asset_id":"100","title":"Lake Park","alias":"lake-park","introtext":"<p>Lake Park is right on Joomlaville Lake. There is a boat ramp if you want to take your boat out. There is it also aa small picnic area, playground, nice views, and good fishing from the banks of the lake.<\\/p>","fulltext":"","state":1,"catid":"16","created":"2016-12-06 19:03:34","created_by":"381","created_by_alias":"","modified":"2016-12-06 19:11:49","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 19:11:08","publish_up":"2016-12-06 19:03:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/articles\\\\\\/parks\\\\\\/park1.jpg\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"Lake Park\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(70, 16, 1, '', '2016-12-06 19:12:51', 381, 2029, '0de67dbbddea1dfa392dee9b9f681c82a87705f4', '{"id":16,"asset_id":"99","title":"City Park","alias":"city-park","introtext":"<p>City Park is a small park just off Main Street. It has picnic tables with grills and nice views of downtown. People from local businesses often come here to relax or have lunch.&nbsp;There are also tennis courts for people who want to play during the summer.<\\/p>","fulltext":"","state":1,"catid":"16","created":"2016-12-06 19:03:02","created_by":"381","created_by_alias":"","modified":"2016-12-06 19:12:51","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 19:12:09","publish_up":"2016-12-06 19:03:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/articles\\\\\\/parks\\\\\\/park2.jpg\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"City Park\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(71, 15, 1, '', '2016-12-06 19:13:38', 381, 2021, 'e953c128867861c84881cdd9e44b59ee5b2c4ec5', '{"id":15,"asset_id":"98","title":"Wood Park","alias":"wood-park","introtext":"<p>Wood Park is located off the major highway in Joomlaville. There is a playground and picnic tables. It has two picnic tables in a beautiful secluded area with gorgeous views of the lake, and then a couple more picnic tables more set off in the woods.<\\/p>","fulltext":"","state":1,"catid":"16","created":"2016-12-06 19:02:27","created_by":"381","created_by_alias":"","modified":"2016-12-06 19:13:38","modified_by":"381","checked_out":"381","checked_out_time":"2016-12-06 19:13:12","publish_up":"2016-12-06 19:02:27","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/articles\\\\\\/parks\\\\\\/park3.jpg\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"Wood Park\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_updates`
--

CREATE TABLE `sg0we_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Дамп данных таблицы `sg0we_updates`
--

INSERT INTO `sg0we_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.6.4', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', ''),
(2, 3, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(3, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(4, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(5, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(6, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(7, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(8, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(9, 3, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(10, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.6.3.2', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(11, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(12, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(13, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.6.4.2', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(25, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(26, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(27, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(28, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(29, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(30, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(31, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(32, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(33, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(34, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.6.4.3', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(35, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(36, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(37, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(38, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(39, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(40, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(41, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(42, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(43, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(44, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(45, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(46, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(47, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(48, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(49, 3, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(50, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(51, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(52, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(53, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(54, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(55, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(56, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(57, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(58, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(59, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(60, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(61, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(62, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(63, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(64, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(65, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(66, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(67, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(68, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(69, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(70, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(71, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(72, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(73, 3, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(74, 7, 814, 'JCE Editor', '', 'pkg_jce', 'package', '', 0, '2.6.1', '', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&file=pkg_jce.xml', 'https://www.joomlacontenteditor.net/news/696-jce-pro-261-released', '');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_update_sites`
--

CREATE TABLE `sg0we_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Дамп данных таблицы `sg0we_update_sites`
--

INSERT INTO `sg0we_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1481050537, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 1, 1481050538, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1481050543, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1481050544, ''),
(5, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1481050545, ''),
(6, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1481050546, ''),
(7, 'JCE Editor Package', 'collection', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&file=pkg_jce.xml', 1, 1481050547, '');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_update_sites_extensions`
--

CREATE TABLE `sg0we_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `sg0we_update_sites_extensions`
--

INSERT INTO `sg0we_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(4, 28),
(5, 805),
(6, 806),
(7, 814);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_usergroups`
--

CREATE TABLE `sg0we_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_usergroups`
--

INSERT INTO `sg0we_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 8, 17, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 18, 19, 'Super Users'),
(9, 1, 2, 3, 'Guest'),
(10, 2, 15, 16, 'Board Members');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_users`
--

CREATE TABLE `sg0we_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_users`
--

INSERT INTO `sg0we_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(381, 'Rod Martin', 'admin', 'makushatnik@yandex.ru', '$2y$10$JF2xsWlnjWRJ7thSyhkMRO1soqTJA/DGbKPyEfDngKooA4Ntt5Xem', 0, 1, '2016-12-04 18:58:49', '2016-12-04 18:59:25', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(382, 'Bob', 'bob', 'makushatnik@gmail.com', '$2y$10$74D8CY6DorlI5ynE.ToC.u2PNwrTyCDou/4DbClU3sgzd8uYgT9mO', 0, 0, '2016-12-06 14:58:39', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_user_keys`
--

CREATE TABLE `sg0we_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_user_notes`
--

CREATE TABLE `sg0we_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_user_profiles`
--

CREATE TABLE `sg0we_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_user_usergroup_map`
--

CREATE TABLE `sg0we_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_user_usergroup_map`
--

INSERT INTO `sg0we_user_usergroup_map` (`user_id`, `group_id`) VALUES
(381, 8),
(382, 2),
(382, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_utf8_conversion`
--

CREATE TABLE `sg0we_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_utf8_conversion`
--

INSERT INTO `sg0we_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_viewlevels`
--

CREATE TABLE `sg0we_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sg0we_viewlevels`
--

INSERT INTO `sg0we_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]'),
(7, 'Board Members', 0, '[7,10,8]');

-- --------------------------------------------------------

--
-- Структура таблицы `sg0we_wf_profiles`
--

CREATE TABLE `sg0we_wf_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sg0we_wf_profiles`
--

INSERT INTO `sg0we_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,fontcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,print,searchreplace,spacer,table,style,xhtmlxtras;visualaid,visualchars,visualblocks,nonbreaking,anchor,unlink,link,imgmanager,imgmanager_ext,mediamanager,filemanager,templatemanager,caption,microdata,spellchecker,article', 'formatselect,styleselect,cleanup,fontselect,fontsizeselect,fontcolor,clipboard,lists,textcase,charmap,hr,directionality,fullscreen,print,searchreplace,table,style,xhtmlxtras,visualchars,visualblocks,nonbreaking,anchor,link,imgmanager,imgmanager_ext,mediamanager,filemanager,templatemanager,caption,microdata,spellchecker,article,spellchecker,article,browser,contextmenu,inlinepopups,media,preview,source,textpattern', 1, 1, 0, '0000-00-00 00:00:00', ''),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,hr', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect,textpattern', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect,textpattern', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}'),
(5, 'Markdown', 'Sample Markdown Profile', '', '6,7,3,4,5,8', '', 0, 'desktop,tablet,phone', 'fullscreen,justifyleft,justifycenter,justifyfull,justifyright,link,unlink,imgmanager,styleselect', 'fullscreen,link,imgmanager,styleselect,inlinepopups,media,textpattern', 0, 5, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile"}}');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `sg0we_assets`
--
ALTER TABLE `sg0we_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Индексы таблицы `sg0we_associations`
--
ALTER TABLE `sg0we_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Индексы таблицы `sg0we_banners`
--
ALTER TABLE `sg0we_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `sg0we_banner_clients`
--
ALTER TABLE `sg0we_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Индексы таблицы `sg0we_banner_tracks`
--
ALTER TABLE `sg0we_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Индексы таблицы `sg0we_categories`
--
ALTER TABLE `sg0we_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `sg0we_contact_details`
--
ALTER TABLE `sg0we_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `sg0we_content`
--
ALTER TABLE `sg0we_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `sg0we_contentitem_tag_map`
--
ALTER TABLE `sg0we_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Индексы таблицы `sg0we_content_frontpage`
--
ALTER TABLE `sg0we_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `sg0we_content_rating`
--
ALTER TABLE `sg0we_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `sg0we_content_types`
--
ALTER TABLE `sg0we_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Индексы таблицы `sg0we_extensions`
--
ALTER TABLE `sg0we_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Индексы таблицы `sg0we_finder_filters`
--
ALTER TABLE `sg0we_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `sg0we_finder_links`
--
ALTER TABLE `sg0we_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Индексы таблицы `sg0we_finder_links_terms0`
--
ALTER TABLE `sg0we_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_terms1`
--
ALTER TABLE `sg0we_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_terms2`
--
ALTER TABLE `sg0we_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_terms3`
--
ALTER TABLE `sg0we_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_terms4`
--
ALTER TABLE `sg0we_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_terms5`
--
ALTER TABLE `sg0we_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_terms6`
--
ALTER TABLE `sg0we_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_terms7`
--
ALTER TABLE `sg0we_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_terms8`
--
ALTER TABLE `sg0we_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_terms9`
--
ALTER TABLE `sg0we_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_termsa`
--
ALTER TABLE `sg0we_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_termsb`
--
ALTER TABLE `sg0we_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_termsc`
--
ALTER TABLE `sg0we_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_termsd`
--
ALTER TABLE `sg0we_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_termse`
--
ALTER TABLE `sg0we_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_links_termsf`
--
ALTER TABLE `sg0we_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `sg0we_finder_taxonomy`
--
ALTER TABLE `sg0we_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Индексы таблицы `sg0we_finder_taxonomy_map`
--
ALTER TABLE `sg0we_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Индексы таблицы `sg0we_finder_terms`
--
ALTER TABLE `sg0we_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Индексы таблицы `sg0we_finder_terms_common`
--
ALTER TABLE `sg0we_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Индексы таблицы `sg0we_finder_tokens`
--
ALTER TABLE `sg0we_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Индексы таблицы `sg0we_finder_tokens_aggregate`
--
ALTER TABLE `sg0we_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Индексы таблицы `sg0we_finder_types`
--
ALTER TABLE `sg0we_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `sg0we_languages`
--
ALTER TABLE `sg0we_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Индексы таблицы `sg0we_menu`
--
ALTER TABLE `sg0we_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `sg0we_menu_types`
--
ALTER TABLE `sg0we_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Индексы таблицы `sg0we_messages`
--
ALTER TABLE `sg0we_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Индексы таблицы `sg0we_messages_cfg`
--
ALTER TABLE `sg0we_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Индексы таблицы `sg0we_modules`
--
ALTER TABLE `sg0we_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `sg0we_modules_menu`
--
ALTER TABLE `sg0we_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Индексы таблицы `sg0we_newsfeeds`
--
ALTER TABLE `sg0we_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `sg0we_overrider`
--
ALTER TABLE `sg0we_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sg0we_postinstall_messages`
--
ALTER TABLE `sg0we_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Индексы таблицы `sg0we_redirect_links`
--
ALTER TABLE `sg0we_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Индексы таблицы `sg0we_schemas`
--
ALTER TABLE `sg0we_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Индексы таблицы `sg0we_session`
--
ALTER TABLE `sg0we_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `sg0we_tags`
--
ALTER TABLE `sg0we_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `sg0we_template_styles`
--
ALTER TABLE `sg0we_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Индексы таблицы `sg0we_ucm_base`
--
ALTER TABLE `sg0we_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Индексы таблицы `sg0we_ucm_content`
--
ALTER TABLE `sg0we_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Индексы таблицы `sg0we_ucm_history`
--
ALTER TABLE `sg0we_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Индексы таблицы `sg0we_updates`
--
ALTER TABLE `sg0we_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Индексы таблицы `sg0we_update_sites`
--
ALTER TABLE `sg0we_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Индексы таблицы `sg0we_update_sites_extensions`
--
ALTER TABLE `sg0we_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Индексы таблицы `sg0we_usergroups`
--
ALTER TABLE `sg0we_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Индексы таблицы `sg0we_users`
--
ALTER TABLE `sg0we_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `sg0we_user_keys`
--
ALTER TABLE `sg0we_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `sg0we_user_notes`
--
ALTER TABLE `sg0we_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Индексы таблицы `sg0we_user_profiles`
--
ALTER TABLE `sg0we_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Индексы таблицы `sg0we_user_usergroup_map`
--
ALTER TABLE `sg0we_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Индексы таблицы `sg0we_viewlevels`
--
ALTER TABLE `sg0we_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Индексы таблицы `sg0we_wf_profiles`
--
ALTER TABLE `sg0we_wf_profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `sg0we_assets`
--
ALTER TABLE `sg0we_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT для таблицы `sg0we_banners`
--
ALTER TABLE `sg0we_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `sg0we_banner_clients`
--
ALTER TABLE `sg0we_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `sg0we_categories`
--
ALTER TABLE `sg0we_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `sg0we_contact_details`
--
ALTER TABLE `sg0we_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `sg0we_content`
--
ALTER TABLE `sg0we_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `sg0we_content_types`
--
ALTER TABLE `sg0we_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `sg0we_extensions`
--
ALTER TABLE `sg0we_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=816;
--
-- AUTO_INCREMENT для таблицы `sg0we_finder_filters`
--
ALTER TABLE `sg0we_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `sg0we_finder_links`
--
ALTER TABLE `sg0we_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT для таблицы `sg0we_finder_taxonomy`
--
ALTER TABLE `sg0we_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT для таблицы `sg0we_finder_terms`
--
ALTER TABLE `sg0we_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4595;
--
-- AUTO_INCREMENT для таблицы `sg0we_finder_types`
--
ALTER TABLE `sg0we_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `sg0we_languages`
--
ALTER TABLE `sg0we_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `sg0we_menu`
--
ALTER TABLE `sg0we_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT для таблицы `sg0we_menu_types`
--
ALTER TABLE `sg0we_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `sg0we_messages`
--
ALTER TABLE `sg0we_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `sg0we_modules`
--
ALTER TABLE `sg0we_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT для таблицы `sg0we_newsfeeds`
--
ALTER TABLE `sg0we_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `sg0we_overrider`
--
ALTER TABLE `sg0we_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT для таблицы `sg0we_postinstall_messages`
--
ALTER TABLE `sg0we_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `sg0we_redirect_links`
--
ALTER TABLE `sg0we_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `sg0we_tags`
--
ALTER TABLE `sg0we_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `sg0we_template_styles`
--
ALTER TABLE `sg0we_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `sg0we_ucm_content`
--
ALTER TABLE `sg0we_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `sg0we_ucm_history`
--
ALTER TABLE `sg0we_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT для таблицы `sg0we_updates`
--
ALTER TABLE `sg0we_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT для таблицы `sg0we_update_sites`
--
ALTER TABLE `sg0we_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `sg0we_usergroups`
--
ALTER TABLE `sg0we_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `sg0we_users`
--
ALTER TABLE `sg0we_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;
--
-- AUTO_INCREMENT для таблицы `sg0we_user_keys`
--
ALTER TABLE `sg0we_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `sg0we_user_notes`
--
ALTER TABLE `sg0we_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `sg0we_viewlevels`
--
ALTER TABLE `sg0we_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `sg0we_wf_profiles`
--
ALTER TABLE `sg0we_wf_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
