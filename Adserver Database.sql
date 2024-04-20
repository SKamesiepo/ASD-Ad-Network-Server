-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2024 at 12:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asd`
--

-- --------------------------------------------------------

--
-- Table structure for table `rv_accounts`
--

CREATE TABLE `rv_accounts` (
  `account_id` mediumint(9) NOT NULL,
  `account_type` varchar(16) NOT NULL DEFAULT '',
  `account_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_accounts`
--

INSERT INTO `rv_accounts` (`account_id`, `account_type`, `account_name`) VALUES
(1, 'ADMIN', 'Administrator account'),
(2, 'MANAGER', 'Default manager'),
(3, 'ADVERTISER', 'Dynamic Odyssey'),
(4, 'TRAFFICKER', 'dynamic-odyssey.com/'),
(5, 'ADVERTISER', 'Billboard'),
(6, 'ADVERTISER', 'Youtube'),
(7, 'TRAFFICKER', 'Youtube.com/'),
(8, 'TRAFFICKER', 'www.billboard.com/');

-- --------------------------------------------------------

--
-- Table structure for table `rv_account_preference_assoc`
--

CREATE TABLE `rv_account_preference_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `preference_id` mediumint(9) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_account_preference_assoc`
--

INSERT INTO `rv_account_preference_assoc` (`account_id`, `preference_id`, `value`) VALUES
(1, 1, ''),
(1, 2, ''),
(1, 3, '1'),
(1, 4, '1'),
(1, 5, '1'),
(1, 6, '100'),
(1, 7, '1'),
(1, 8, ''),
(1, 9, ''),
(1, 10, '1'),
(1, 11, '100'),
(1, 12, '1'),
(1, 13, '1'),
(1, 14, '100'),
(1, 15, '1'),
(1, 16, 'Africa/Johannesburg'),
(1, 17, '4'),
(1, 18, '1'),
(1, 19, ''),
(1, 20, '1'),
(1, 21, '1'),
(1, 22, ''),
(1, 23, ''),
(1, 24, '1'),
(1, 25, ''),
(1, 26, ''),
(1, 27, '1'),
(1, 28, ''),
(1, 29, ''),
(1, 30, '1'),
(1, 31, '1'),
(1, 32, '2'),
(1, 33, '1'),
(1, 34, ''),
(1, 35, '4'),
(1, 36, ''),
(1, 37, ''),
(1, 38, '0'),
(1, 39, ''),
(1, 40, ''),
(1, 41, '0'),
(1, 42, ''),
(1, 43, ''),
(1, 44, '0'),
(1, 45, ''),
(1, 46, ''),
(1, 47, '0'),
(1, 48, ''),
(1, 49, ''),
(1, 50, '0'),
(1, 51, ''),
(1, 52, ''),
(1, 53, '0'),
(1, 54, ''),
(1, 55, ''),
(1, 56, '0'),
(1, 57, ''),
(1, 58, ''),
(1, 59, '0'),
(1, 60, ''),
(1, 61, ''),
(1, 62, '0'),
(1, 63, '1'),
(1, 64, ''),
(1, 65, '5'),
(1, 66, ''),
(1, 67, ''),
(1, 68, '0'),
(1, 69, ''),
(1, 70, ''),
(1, 71, '0'),
(1, 72, ''),
(1, 73, ''),
(1, 74, '0'),
(1, 75, ''),
(1, 76, ''),
(1, 77, '0'),
(1, 78, '1'),
(1, 79, ''),
(1, 80, '1'),
(1, 81, '1'),
(1, 82, ''),
(1, 83, '2'),
(1, 84, '1'),
(1, 85, ''),
(1, 86, '3'),
(1, 87, ''),
(1, 88, ''),
(1, 89, '0'),
(1, 90, ''),
(1, 91, ''),
(1, 92, '0'),
(1, 93, ''),
(1, 94, ''),
(1, 95, '0'),
(1, 96, ''),
(1, 97, ''),
(1, 98, '0'),
(2, 8, '1'),
(2, 9, '1');

-- --------------------------------------------------------

--
-- Table structure for table `rv_account_user_assoc`
--

CREATE TABLE `rv_account_user_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `linked` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_account_user_assoc`
--

INSERT INTO `rv_account_user_assoc` (`account_id`, `user_id`, `linked`) VALUES
(1, 1, '2024-04-20 21:17:19'),
(2, 1, '2024-04-20 21:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `rv_account_user_permission_assoc`
--

CREATE TABLE `rv_account_user_permission_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `permission_id` mediumint(9) NOT NULL,
  `is_allowed` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_acls`
--

CREATE TABLE `rv_acls` (
  `bannerid` mediumint(9) NOT NULL DEFAULT 0,
  `logical` varchar(3) NOT NULL DEFAULT 'and',
  `type` varchar(255) NOT NULL DEFAULT '',
  `comparison` char(2) NOT NULL DEFAULT '==',
  `data` text NOT NULL,
  `executionorder` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_acls_channel`
--

CREATE TABLE `rv_acls_channel` (
  `channelid` mediumint(9) NOT NULL DEFAULT 0,
  `logical` varchar(3) NOT NULL DEFAULT 'and',
  `type` varchar(255) NOT NULL DEFAULT '',
  `comparison` char(2) NOT NULL DEFAULT '==',
  `data` text NOT NULL,
  `executionorder` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_ad_category_assoc`
--

CREATE TABLE `rv_ad_category_assoc` (
  `ad_category_assoc_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `ad_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_ad_zone_assoc`
--

CREATE TABLE `rv_ad_zone_assoc` (
  `ad_zone_assoc_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) DEFAULT NULL,
  `ad_id` mediumint(9) DEFAULT NULL,
  `priority` double DEFAULT 0,
  `link_type` smallint(6) NOT NULL DEFAULT 1,
  `priority_factor` double DEFAULT 0,
  `to_be_delivered` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_ad_zone_assoc`
--

INSERT INTO `rv_ad_zone_assoc` (`ad_zone_assoc_id`, `zone_id`, `ad_id`, `priority`, `link_type`, `priority_factor`, `to_be_delivered`) VALUES
(1, 0, 1, 0, 0, 1, 1),
(2, 1, 1, 1, 1, 1, 1),
(3, 0, 2, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rv_affiliates`
--

CREATE TABLE `rv_affiliates` (
  `affiliateid` mediumint(9) NOT NULL,
  `agencyid` mediumint(9) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `mnemonic` varchar(5) NOT NULL DEFAULT '',
  `comments` text DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `website` varchar(255) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `oac_country_code` char(2) NOT NULL DEFAULT '',
  `oac_language_id` int(11) DEFAULT NULL,
  `oac_category_id` int(11) DEFAULT NULL,
  `account_id` mediumint(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_affiliates`
--

INSERT INTO `rv_affiliates` (`affiliateid`, `agencyid`, `name`, `mnemonic`, `comments`, `contact`, `email`, `website`, `updated`, `oac_country_code`, `oac_language_id`, `oac_category_id`, `account_id`) VALUES
(1, 1, 'dynamic-odyssey.com/', '', '', 'Shaun', 'skamesiepo@gmail.com', 'https://dynamic-odyssey.com/', '2024-04-20 20:20:13', '', NULL, NULL, 4),
(2, 1, 'Youtube.com/', '', '', 'Shaun', 'skamesiepo@gmail.com', 'https://www.Youtube.com/', '2024-04-20 22:11:49', '', NULL, NULL, 7),
(3, 1, 'www.billboard.com/', '', '', 'Revaldo', 'rgertze@gmail.com', 'https://www.billboard.com/', '2024-04-20 22:09:50', '', NULL, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `rv_affiliates_extra`
--

CREATE TABLE `rv_affiliates_extra` (
  `affiliateid` mediumint(9) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postcode` varchar(64) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `fax` varchar(64) DEFAULT NULL,
  `account_contact` varchar(255) DEFAULT NULL,
  `payee_name` varchar(255) DEFAULT NULL,
  `tax_id` varchar(64) DEFAULT NULL,
  `mode_of_payment` varchar(64) DEFAULT NULL,
  `currency` varchar(64) DEFAULT NULL,
  `unique_users` int(11) DEFAULT NULL,
  `unique_views` int(11) DEFAULT NULL,
  `page_rank` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `help_file` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_agency`
--

CREATE TABLE `rv_agency` (
  `agencyid` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `logout_url` varchar(255) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `account_id` mediumint(9) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_agency`
--

INSERT INTO `rv_agency` (`agencyid`, `name`, `contact`, `email`, `logout_url`, `updated`, `account_id`, `status`) VALUES
(1, 'Default manager', NULL, 'erastusmatheus3@gmail.com', NULL, '2024-04-20 19:17:19', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rv_application_variable`
--

CREATE TABLE `rv_application_variable` (
  `name` varchar(250) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_application_variable`
--

INSERT INTO `rv_application_variable` (`name`, `value`) VALUES
('tables_core', '627'),
('oa_version', '5.5.2'),
('admin_account_id', '1'),
('oxHtml_version', '1.6.1'),
('oxText_version', '1.6.1'),
('Client_version', '5.0.8'),
('Geo_version', '5.0.8'),
('Site_version', '5.0.8'),
('Time_version', '5.0.8'),
('oxReportsStandard_version', '1.6.2'),
('oxReportsAdmin_version', '1.6.2'),
('oxCacheFile_version', '1.5.0'),
('oxMemcached_version', '1.5.0'),
('oxInvocationTags_version', '1.8.1'),
('tables_oxDeliveryDataPrepare', '002'),
('oxDeliveryDataPrepare_version', '1.5.0'),
('oxLogClick_version', '1.5.0'),
('oxLogConversion_version', '1.5.0'),
('oxLogImpression_version', '1.5.0'),
('oxLogRequest_version', '1.5.0'),
('tables_vastbannertypehtml', '013'),
('vastInlineBannerTypeHtml_version', '1.14.0'),
('vastOverlayBannerTypeHtml_version', '1.14.0'),
('oxLogVast_version', '1.14.0'),
('vastServeVideoPlayer_version', '1.14.0'),
('videoReport_version', '1.14.0'),
('rvMaxMindGeoIP2_version', '1.2.0'),
('rvMaxMindGeoIP2Maintenance_version', '1.2.0'),
('tables_apVideo', '006'),
('apVideo_version', '1.7.5'),
('apVideoUI_version', '1.7.5'),
('platform_hash', 'c53134a2a45b0d5c38b37736d29c9c3956871bd4'),
('sync_last_run', '2024-04-20 21:50:31'),
('sync_cache', 'b:0;'),
('sync_timestamp', '1713642631');

-- --------------------------------------------------------

--
-- Table structure for table `rv_audit`
--

CREATE TABLE `rv_audit` (
  `auditid` mediumint(9) NOT NULL,
  `actionid` mediumint(9) NOT NULL,
  `context` varchar(200) NOT NULL DEFAULT '',
  `contextid` mediumint(9) DEFAULT NULL,
  `parentid` mediumint(9) DEFAULT NULL,
  `details` text NOT NULL,
  `userid` mediumint(9) NOT NULL DEFAULT 0,
  `username` varchar(64) DEFAULT NULL,
  `usertype` tinyint(4) NOT NULL DEFAULT 0,
  `updated` datetime DEFAULT NULL,
  `account_id` mediumint(9) NOT NULL,
  `advertiser_account_id` mediumint(9) DEFAULT NULL,
  `website_account_id` mediumint(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_audit`
--

INSERT INTO `rv_audit` (`auditid`, `actionid`, `context`, `contextid`, `parentid`, `details`, `userid`, `username`, `usertype`, `updated`, `account_id`, `advertiser_account_id`, `website_account_id`) VALUES
(1, 1, 'accounts', 1, NULL, 'a:4:{s:10:\"account_id\";i:1;s:12:\"account_type\";s:5:\"ADMIN\";s:12:\"account_name\";s:21:\"Administrator account\";s:8:\"key_desc\";s:21:\"Administrator account\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(2, 1, 'accounts', 2, NULL, 'a:4:{s:10:\"account_id\";i:2;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:8:\"key_desc\";s:15:\"Default manager\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 2, NULL, NULL),
(3, 1, 'agency', 1, NULL, 'a:9:{s:8:\"agencyid\";i:1;s:4:\"name\";s:15:\"Default manager\";s:7:\"contact\";N;s:5:\"email\";s:25:\"erastusmatheus3@gmail.com\";s:10:\"logout_url\";N;s:7:\"updated\";s:19:\"2024-04-20 19:17:19\";s:10:\"account_id\";i:2;s:6:\"status\";i:0;s:8:\"key_desc\";s:15:\"Default manager\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 2, NULL, NULL),
(4, 1, 'users', 1, NULL, 'a:14:{s:7:\"user_id\";i:1;s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:25:\"erastusmatheus3@gmail.com\";s:8:\"username\";s:9:\"asd_admin\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";i:2;s:8:\"comments\";N;s:6:\"active\";s:4:\"null\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2024-04-20 19:17:19\";s:15:\"date_last_login\";N;s:13:\"email_updated\";s:19:\"2024-04-20 19:17:19\";s:8:\"key_desc\";s:9:\"asd_admin\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(5, 1, 'account_user_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:7:\"user_id\";i:1;s:6:\"linked\";s:19:\"2024-04-20 21:17:19\";s:8:\"key_desc\";s:21:\"Account #1 -> User #1\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(6, 1, 'account_user_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:2;s:7:\"user_id\";i:1;s:6:\"linked\";s:19:\"2024-04-20 21:17:19\";s:8:\"key_desc\";s:21:\"Account #2 -> User #1\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 2, NULL, NULL),
(7, 1, 'preferences', 1, NULL, 'a:4:{s:13:\"preference_id\";i:1;s:15:\"preference_name\";s:24:\"default_banner_image_url\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:24:\"default_banner_image_url\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(8, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:1;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #1\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(9, 1, 'preferences', 2, NULL, 'a:4:{s:13:\"preference_id\";i:2;s:15:\"preference_name\";s:30:\"default_banner_destination_url\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:30:\"default_banner_destination_url\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(10, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:2;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #2\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(11, 1, 'preferences', 3, NULL, 'a:4:{s:13:\"preference_id\";i:3;s:15:\"preference_name\";s:21:\"default_banner_weight\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"default_banner_weight\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(12, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:3;s:5:\"value\";i:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #3\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(13, 1, 'preferences', 4, NULL, 'a:4:{s:13:\"preference_id\";i:4;s:15:\"preference_name\";s:23:\"default_campaign_weight\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:23:\"default_campaign_weight\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(14, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:4;s:5:\"value\";i:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #4\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(15, 1, 'preferences', 5, NULL, 'a:4:{s:13:\"preference_id\";i:5;s:15:\"preference_name\";s:16:\"warn_email_admin\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:16:\"warn_email_admin\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(16, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:5;s:5:\"value\";b:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #5\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(17, 1, 'preferences', 6, NULL, 'a:4:{s:13:\"preference_id\";i:6;s:15:\"preference_name\";s:33:\"warn_email_admin_impression_limit\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:33:\"warn_email_admin_impression_limit\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(18, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:6;s:5:\"value\";i:100;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #6\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(19, 1, 'preferences', 7, NULL, 'a:4:{s:13:\"preference_id\";i:7;s:15:\"preference_name\";s:26:\"warn_email_admin_day_limit\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:26:\"warn_email_admin_day_limit\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(20, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:7;s:5:\"value\";i:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #7\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(21, 1, 'preferences', 8, NULL, 'a:4:{s:13:\"preference_id\";i:8;s:15:\"preference_name\";s:21:\"campaign_ecpm_enabled\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"campaign_ecpm_enabled\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(22, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:8;s:5:\"value\";b:0;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #8\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(23, 1, 'preferences', 9, NULL, 'a:4:{s:13:\"preference_id\";i:9;s:15:\"preference_name\";s:21:\"contract_ecpm_enabled\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"contract_ecpm_enabled\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(24, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:9;s:5:\"value\";b:0;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #9\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(25, 1, 'preferences', 10, NULL, 'a:4:{s:13:\"preference_id\";i:10;s:15:\"preference_name\";s:18:\"warn_email_manager\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"warn_email_manager\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(26, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:10;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #10\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(27, 1, 'preferences', 11, NULL, 'a:4:{s:13:\"preference_id\";i:11;s:15:\"preference_name\";s:35:\"warn_email_manager_impression_limit\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:35:\"warn_email_manager_impression_limit\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(28, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:11;s:5:\"value\";i:100;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #11\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(29, 1, 'preferences', 12, NULL, 'a:4:{s:13:\"preference_id\";i:12;s:15:\"preference_name\";s:28:\"warn_email_manager_day_limit\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:28:\"warn_email_manager_day_limit\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(30, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:12;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #12\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(31, 1, 'preferences', 13, NULL, 'a:4:{s:13:\"preference_id\";i:13;s:15:\"preference_name\";s:21:\"warn_email_advertiser\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"warn_email_advertiser\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(32, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:13;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #13\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(33, 1, 'preferences', 14, NULL, 'a:4:{s:13:\"preference_id\";i:14;s:15:\"preference_name\";s:38:\"warn_email_advertiser_impression_limit\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:38:\"warn_email_advertiser_impression_limit\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(34, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:14;s:5:\"value\";i:100;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #14\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(35, 1, 'preferences', 15, NULL, 'a:4:{s:13:\"preference_id\";i:15;s:15:\"preference_name\";s:31:\"warn_email_advertiser_day_limit\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:31:\"warn_email_advertiser_day_limit\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(36, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:15;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #15\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(37, 1, 'preferences', 16, NULL, 'a:4:{s:13:\"preference_id\";i:16;s:15:\"preference_name\";s:8:\"timezone\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:8:\"timezone\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(38, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:16;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #16\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(39, 1, 'preferences', 17, NULL, 'a:4:{s:13:\"preference_id\";i:17;s:15:\"preference_name\";s:22:\"tracker_default_status\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"tracker_default_status\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(40, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:17;s:5:\"value\";i:4;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #17\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(41, 1, 'preferences', 18, NULL, 'a:4:{s:13:\"preference_id\";i:18;s:15:\"preference_name\";s:20:\"tracker_default_type\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:20:\"tracker_default_type\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(42, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:18;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #18\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(43, 1, 'preferences', 19, NULL, 'a:4:{s:13:\"preference_id\";i:19;s:15:\"preference_name\";s:22:\"tracker_link_campaigns\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"tracker_link_campaigns\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(44, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:19;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #19\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(45, 1, 'preferences', 20, NULL, 'a:4:{s:13:\"preference_id\";i:20;s:15:\"preference_name\";s:21:\"ui_show_campaign_info\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"ui_show_campaign_info\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(46, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:20;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #20\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(47, 1, 'preferences', 21, NULL, 'a:4:{s:13:\"preference_id\";i:21;s:15:\"preference_name\";s:19:\"ui_show_banner_info\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:19:\"ui_show_banner_info\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(48, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:21;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #21\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(49, 1, 'preferences', 22, NULL, 'a:4:{s:13:\"preference_id\";i:22;s:15:\"preference_name\";s:24:\"ui_show_campaign_preview\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:24:\"ui_show_campaign_preview\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(50, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:22;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #22\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(51, 1, 'preferences', 23, NULL, 'a:4:{s:13:\"preference_id\";i:23;s:15:\"preference_name\";s:19:\"ui_show_banner_html\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:19:\"ui_show_banner_html\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(52, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:23;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #23\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(53, 1, 'preferences', 24, NULL, 'a:4:{s:13:\"preference_id\";i:24;s:15:\"preference_name\";s:22:\"ui_show_banner_preview\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"ui_show_banner_preview\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(54, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:24;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #24\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(55, 1, 'preferences', 25, NULL, 'a:4:{s:13:\"preference_id\";i:25;s:15:\"preference_name\";s:22:\"ui_html_wyswyg_enabled\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:22:\"ui_html_wyswyg_enabled\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(56, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:25;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #25\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(57, 1, 'preferences', 26, NULL, 'a:4:{s:13:\"preference_id\";i:26;s:15:\"preference_name\";s:16:\"ui_hide_inactive\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:16:\"ui_hide_inactive\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(58, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:26;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #26\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(59, 1, 'preferences', 27, NULL, 'a:4:{s:13:\"preference_id\";i:27;s:15:\"preference_name\";s:24:\"ui_show_matching_banners\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:24:\"ui_show_matching_banners\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(60, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:27;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #27\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(61, 1, 'preferences', 28, NULL, 'a:4:{s:13:\"preference_id\";i:28;s:15:\"preference_name\";s:32:\"ui_show_matching_banners_parents\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:32:\"ui_show_matching_banners_parents\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(62, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:28;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #28\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(63, 1, 'preferences', 29, NULL, 'a:4:{s:13:\"preference_id\";i:29;s:15:\"preference_name\";s:17:\"ui_show_entity_id\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:17:\"ui_show_entity_id\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(64, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:29;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #29\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(65, 1, 'preferences', 30, NULL, 'a:4:{s:13:\"preference_id\";i:30;s:15:\"preference_name\";s:14:\"ui_novice_user\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:14:\"ui_novice_user\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(66, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:30;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #30\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(67, 1, 'preferences', 31, NULL, 'a:4:{s:13:\"preference_id\";i:31;s:15:\"preference_name\";s:17:\"ui_week_start_day\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:17:\"ui_week_start_day\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(68, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:31;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #31\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(69, 1, 'preferences', 32, NULL, 'a:4:{s:13:\"preference_id\";i:32;s:15:\"preference_name\";s:22:\"ui_percentage_decimals\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:22:\"ui_percentage_decimals\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(70, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:32;s:5:\"value\";i:2;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #32\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(71, 1, 'preferences', 33, NULL, 'a:4:{s:13:\"preference_id\";i:33;s:15:\"preference_name\";s:17:\"ui_column_revenue\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_revenue\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(72, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:33;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #33\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(73, 1, 'preferences', 34, NULL, 'a:4:{s:13:\"preference_id\";i:34;s:15:\"preference_name\";s:23:\"ui_column_revenue_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_revenue_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(74, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:34;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #34\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(75, 1, 'preferences', 35, NULL, 'a:4:{s:13:\"preference_id\";i:35;s:15:\"preference_name\";s:22:\"ui_column_revenue_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_revenue_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(76, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:35;s:5:\"value\";i:4;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #35\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(77, 1, 'preferences', 36, NULL, 'a:4:{s:13:\"preference_id\";i:36;s:15:\"preference_name\";s:12:\"ui_column_bv\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:12:\"ui_column_bv\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(78, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:36;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #36\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(79, 1, 'preferences', 37, NULL, 'a:4:{s:13:\"preference_id\";i:37;s:15:\"preference_name\";s:18:\"ui_column_bv_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_bv_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(80, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:37;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #37\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(81, 1, 'preferences', 38, NULL, 'a:4:{s:13:\"preference_id\";i:38;s:15:\"preference_name\";s:17:\"ui_column_bv_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_bv_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(82, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:38;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #38\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(83, 1, 'preferences', 39, NULL, 'a:4:{s:13:\"preference_id\";i:39;s:15:\"preference_name\";s:19:\"ui_column_num_items\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_num_items\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(84, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:39;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #39\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(85, 1, 'preferences', 40, NULL, 'a:4:{s:13:\"preference_id\";i:40;s:15:\"preference_name\";s:25:\"ui_column_num_items_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:25:\"ui_column_num_items_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(86, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:40;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #40\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(87, 1, 'preferences', 41, NULL, 'a:4:{s:13:\"preference_id\";i:41;s:15:\"preference_name\";s:24:\"ui_column_num_items_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_num_items_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(88, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:41;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #41\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(89, 1, 'preferences', 42, NULL, 'a:4:{s:13:\"preference_id\";i:42;s:15:\"preference_name\";s:16:\"ui_column_revcpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:16:\"ui_column_revcpc\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(90, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:42;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #42\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(91, 1, 'preferences', 43, NULL, 'a:4:{s:13:\"preference_id\";i:43;s:15:\"preference_name\";s:22:\"ui_column_revcpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_revcpc_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(92, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:43;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #43\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(93, 1, 'preferences', 44, NULL, 'a:4:{s:13:\"preference_id\";i:44;s:15:\"preference_name\";s:21:\"ui_column_revcpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_revcpc_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(94, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:44;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #44\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(95, 1, 'preferences', 45, NULL, 'a:4:{s:13:\"preference_id\";i:45;s:15:\"preference_name\";s:14:\"ui_column_erpm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erpm\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(96, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:45;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #45\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(97, 1, 'preferences', 46, NULL, 'a:4:{s:13:\"preference_id\";i:46;s:15:\"preference_name\";s:20:\"ui_column_erpm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erpm_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(98, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:46;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #46\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(99, 1, 'preferences', 47, NULL, 'a:4:{s:13:\"preference_id\";i:47;s:15:\"preference_name\";s:19:\"ui_column_erpm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erpm_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(100, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:47;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #47\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(101, 1, 'preferences', 48, NULL, 'a:4:{s:13:\"preference_id\";i:48;s:15:\"preference_name\";s:14:\"ui_column_erpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erpc\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(102, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:48;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #48\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(103, 1, 'preferences', 49, NULL, 'a:4:{s:13:\"preference_id\";i:49;s:15:\"preference_name\";s:20:\"ui_column_erpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erpc_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(104, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:49;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #49\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(105, 1, 'preferences', 50, NULL, 'a:4:{s:13:\"preference_id\";i:50;s:15:\"preference_name\";s:19:\"ui_column_erpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erpc_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(106, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:50;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #50\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(107, 1, 'preferences', 51, NULL, 'a:4:{s:13:\"preference_id\";i:51;s:15:\"preference_name\";s:14:\"ui_column_erps\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erps\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(108, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:51;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #51\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(109, 1, 'preferences', 52, NULL, 'a:4:{s:13:\"preference_id\";i:52;s:15:\"preference_name\";s:20:\"ui_column_erps_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erps_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(110, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:52;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #52\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(111, 1, 'preferences', 53, NULL, 'a:4:{s:13:\"preference_id\";i:53;s:15:\"preference_name\";s:19:\"ui_column_erps_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erps_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(112, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:53;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #53\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(113, 1, 'preferences', 54, NULL, 'a:4:{s:13:\"preference_id\";i:54;s:15:\"preference_name\";s:14:\"ui_column_eipm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eipm\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(114, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:54;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #54\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(115, 1, 'preferences', 55, NULL, 'a:4:{s:13:\"preference_id\";i:55;s:15:\"preference_name\";s:20:\"ui_column_eipm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eipm_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(116, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:55;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #55\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(117, 1, 'preferences', 56, NULL, 'a:4:{s:13:\"preference_id\";i:56;s:15:\"preference_name\";s:19:\"ui_column_eipm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eipm_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(118, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:56;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #56\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(119, 1, 'preferences', 57, NULL, 'a:4:{s:13:\"preference_id\";i:57;s:15:\"preference_name\";s:14:\"ui_column_eipc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eipc\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(120, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:57;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #57\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(121, 1, 'preferences', 58, NULL, 'a:4:{s:13:\"preference_id\";i:58;s:15:\"preference_name\";s:20:\"ui_column_eipc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eipc_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(122, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:58;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #58\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(123, 1, 'preferences', 59, NULL, 'a:4:{s:13:\"preference_id\";i:59;s:15:\"preference_name\";s:19:\"ui_column_eipc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eipc_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(124, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:59;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #59\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(125, 1, 'preferences', 60, NULL, 'a:4:{s:13:\"preference_id\";i:60;s:15:\"preference_name\";s:14:\"ui_column_eips\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eips\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(126, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:60;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #60\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(127, 1, 'preferences', 61, NULL, 'a:4:{s:13:\"preference_id\";i:61;s:15:\"preference_name\";s:20:\"ui_column_eips_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eips_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(128, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:61;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #61\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(129, 1, 'preferences', 62, NULL, 'a:4:{s:13:\"preference_id\";i:62;s:15:\"preference_name\";s:19:\"ui_column_eips_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eips_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(130, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:62;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #62\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(131, 1, 'preferences', 63, NULL, 'a:4:{s:13:\"preference_id\";i:63;s:15:\"preference_name\";s:14:\"ui_column_ecpm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecpm\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(132, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:63;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #63\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(133, 1, 'preferences', 64, NULL, 'a:4:{s:13:\"preference_id\";i:64;s:15:\"preference_name\";s:20:\"ui_column_ecpm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecpm_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(134, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:64;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #64\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(135, 1, 'preferences', 65, NULL, 'a:4:{s:13:\"preference_id\";i:65;s:15:\"preference_name\";s:19:\"ui_column_ecpm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecpm_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(136, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:65;s:5:\"value\";i:5;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #65\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(137, 1, 'preferences', 66, NULL, 'a:4:{s:13:\"preference_id\";i:66;s:15:\"preference_name\";s:14:\"ui_column_ecpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecpc\";}', 0, 'Installer', 0, '2024-04-20 19:17:19', 1, NULL, NULL),
(138, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:66;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #66\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(139, 1, 'preferences', 67, NULL, 'a:4:{s:13:\"preference_id\";i:67;s:15:\"preference_name\";s:20:\"ui_column_ecpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecpc_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(140, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:67;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #67\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(141, 1, 'preferences', 68, NULL, 'a:4:{s:13:\"preference_id\";i:68;s:15:\"preference_name\";s:19:\"ui_column_ecpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecpc_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(142, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:68;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #68\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(143, 1, 'preferences', 69, NULL, 'a:4:{s:13:\"preference_id\";i:69;s:15:\"preference_name\";s:14:\"ui_column_ecps\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecps\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(144, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:69;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #69\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(145, 1, 'preferences', 70, NULL, 'a:4:{s:13:\"preference_id\";i:70;s:15:\"preference_name\";s:20:\"ui_column_ecps_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecps_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(146, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:70;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #70\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(147, 1, 'preferences', 71, NULL, 'a:4:{s:13:\"preference_id\";i:71;s:15:\"preference_name\";s:19:\"ui_column_ecps_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecps_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(148, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:71;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #71\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(149, 1, 'preferences', 72, NULL, 'a:4:{s:13:\"preference_id\";i:72;s:15:\"preference_name\";s:12:\"ui_column_id\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:12:\"ui_column_id\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(150, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:72;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #72\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(151, 1, 'preferences', 73, NULL, 'a:4:{s:13:\"preference_id\";i:73;s:15:\"preference_name\";s:18:\"ui_column_id_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_id_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(152, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:73;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #73\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(153, 1, 'preferences', 74, NULL, 'a:4:{s:13:\"preference_id\";i:74;s:15:\"preference_name\";s:17:\"ui_column_id_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_id_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(154, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:74;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #74\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(155, 1, 'preferences', 75, NULL, 'a:4:{s:13:\"preference_id\";i:75;s:15:\"preference_name\";s:18:\"ui_column_requests\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_requests\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(156, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:75;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #75\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(157, 1, 'preferences', 76, NULL, 'a:4:{s:13:\"preference_id\";i:76;s:15:\"preference_name\";s:24:\"ui_column_requests_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_requests_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(158, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:76;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #76\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(159, 1, 'preferences', 77, NULL, 'a:4:{s:13:\"preference_id\";i:77;s:15:\"preference_name\";s:23:\"ui_column_requests_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_requests_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(160, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:77;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #77\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(161, 1, 'preferences', 78, NULL, 'a:4:{s:13:\"preference_id\";i:78;s:15:\"preference_name\";s:21:\"ui_column_impressions\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_impressions\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(162, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:78;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #78\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(163, 1, 'preferences', 79, NULL, 'a:4:{s:13:\"preference_id\";i:79;s:15:\"preference_name\";s:27:\"ui_column_impressions_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:27:\"ui_column_impressions_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(164, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:79;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #79\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(165, 1, 'preferences', 80, NULL, 'a:4:{s:13:\"preference_id\";i:80;s:15:\"preference_name\";s:26:\"ui_column_impressions_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:26:\"ui_column_impressions_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(166, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:80;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #80\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(167, 1, 'preferences', 81, NULL, 'a:4:{s:13:\"preference_id\";i:81;s:15:\"preference_name\";s:16:\"ui_column_clicks\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:16:\"ui_column_clicks\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(168, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:81;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #81\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(169, 1, 'preferences', 82, NULL, 'a:4:{s:13:\"preference_id\";i:82;s:15:\"preference_name\";s:22:\"ui_column_clicks_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_clicks_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(170, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:82;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #82\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(171, 1, 'preferences', 83, NULL, 'a:4:{s:13:\"preference_id\";i:83;s:15:\"preference_name\";s:21:\"ui_column_clicks_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_clicks_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(172, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:83;s:5:\"value\";i:2;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #83\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(173, 1, 'preferences', 84, NULL, 'a:4:{s:13:\"preference_id\";i:84;s:15:\"preference_name\";s:13:\"ui_column_ctr\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:13:\"ui_column_ctr\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(174, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:84;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #84\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(175, 1, 'preferences', 85, NULL, 'a:4:{s:13:\"preference_id\";i:85;s:15:\"preference_name\";s:19:\"ui_column_ctr_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ctr_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(176, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:85;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #85\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(177, 1, 'preferences', 86, NULL, 'a:4:{s:13:\"preference_id\";i:86;s:15:\"preference_name\";s:18:\"ui_column_ctr_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_ctr_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(178, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:86;s:5:\"value\";i:3;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #86\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(179, 1, 'preferences', 87, NULL, 'a:4:{s:13:\"preference_id\";i:87;s:15:\"preference_name\";s:21:\"ui_column_conversions\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_conversions\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(180, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:87;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #87\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(181, 1, 'preferences', 88, NULL, 'a:4:{s:13:\"preference_id\";i:88;s:15:\"preference_name\";s:27:\"ui_column_conversions_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:27:\"ui_column_conversions_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(182, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:88;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #88\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(183, 1, 'preferences', 89, NULL, 'a:4:{s:13:\"preference_id\";i:89;s:15:\"preference_name\";s:26:\"ui_column_conversions_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:26:\"ui_column_conversions_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(184, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:89;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #89\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(185, 1, 'preferences', 90, NULL, 'a:4:{s:13:\"preference_id\";i:90;s:15:\"preference_name\";s:29:\"ui_column_conversions_pending\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:29:\"ui_column_conversions_pending\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(186, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:90;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #90\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(187, 1, 'preferences', 91, NULL, 'a:4:{s:13:\"preference_id\";i:91;s:15:\"preference_name\";s:35:\"ui_column_conversions_pending_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:35:\"ui_column_conversions_pending_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(188, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:91;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #91\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(189, 1, 'preferences', 92, NULL, 'a:4:{s:13:\"preference_id\";i:92;s:15:\"preference_name\";s:34:\"ui_column_conversions_pending_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:34:\"ui_column_conversions_pending_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(190, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:92;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #92\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(191, 1, 'preferences', 93, NULL, 'a:4:{s:13:\"preference_id\";i:93;s:15:\"preference_name\";s:18:\"ui_column_sr_views\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_sr_views\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(192, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:93;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #93\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(193, 1, 'preferences', 94, NULL, 'a:4:{s:13:\"preference_id\";i:94;s:15:\"preference_name\";s:24:\"ui_column_sr_views_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_sr_views_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(194, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:94;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #94\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL);
INSERT INTO `rv_audit` (`auditid`, `actionid`, `context`, `contextid`, `parentid`, `details`, `userid`, `username`, `usertype`, `updated`, `account_id`, `advertiser_account_id`, `website_account_id`) VALUES
(195, 1, 'preferences', 95, NULL, 'a:4:{s:13:\"preference_id\";i:95;s:15:\"preference_name\";s:23:\"ui_column_sr_views_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_sr_views_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(196, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:95;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #95\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(197, 1, 'preferences', 96, NULL, 'a:4:{s:13:\"preference_id\";i:96;s:15:\"preference_name\";s:19:\"ui_column_sr_clicks\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_sr_clicks\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(198, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:96;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #96\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(199, 1, 'preferences', 97, NULL, 'a:4:{s:13:\"preference_id\";i:97;s:15:\"preference_name\";s:25:\"ui_column_sr_clicks_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:25:\"ui_column_sr_clicks_label\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(200, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:97;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #97\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(201, 1, 'preferences', 98, NULL, 'a:4:{s:13:\"preference_id\";i:98;s:15:\"preference_name\";s:24:\"ui_column_sr_clicks_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_sr_clicks_rank\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(202, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:98;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #98\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(203, 2, 'account_preference_assoc', 0, NULL, 'a:2:{s:5:\"value\";a:2:{s:3:\"was\";s:0:\"\";s:2:\"is\";s:19:\"Africa/Johannesburg\";}s:8:\"key_desc\";s:28:\"Account #1 -> Preference #16\";}', 0, 'Installer', 0, '2024-04-20 19:17:20', 1, NULL, NULL),
(204, 2, 'users', 1, NULL, 'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";N;s:2:\"is\";s:19:\"2024-04-20 19:30:06\";}s:8:\"key_desc\";s:9:\"asd_admin\";}', 0, NULL, 0, '2024-04-20 19:30:06', 1, NULL, NULL),
(205, 1, 'accounts', 3, NULL, 'a:4:{s:10:\"account_id\";i:3;s:12:\"account_type\";s:10:\"ADVERTISER\";s:12:\"account_name\";s:15:\"Dynamic Odyssey\";s:8:\"key_desc\";s:15:\"Dynamic Odyssey\";}', 1, 'asd_admin', 0, '2024-04-20 20:06:01', 1, 3, NULL),
(206, 1, 'clients', 1, NULL, 'a:15:{s:8:\"clientid\";i:1;s:8:\"agencyid\";i:1;s:10:\"clientname\";s:15:\"Dynamic Odyssey\";s:7:\"contact\";s:5:\"Shaun\";s:5:\"email\";s:20:\"skamesiepo@gmail.com\";s:6:\"report\";s:1:\"t\";s:14:\"reportinterval\";i:2;s:14:\"reportlastdate\";s:10:\"2024-04-20\";s:16:\"reportdeactivate\";s:1:\"t\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2024-04-20 20:06:01\";s:10:\"account_id\";i:3;s:21:\"advertiser_limitation\";s:5:\"false\";s:4:\"type\";i:0;s:8:\"key_desc\";s:15:\"Dynamic Odyssey\";}', 1, 'asd_admin', 0, '2024-04-20 20:06:01', 2, 3, NULL),
(207, 1, 'accounts', 4, NULL, 'a:4:{s:10:\"account_id\";i:4;s:12:\"account_type\";s:10:\"TRAFFICKER\";s:12:\"account_name\";s:20:\"dynamic-odyssey.com/\";s:8:\"key_desc\";s:20:\"dynamic-odyssey.com/\";}', 1, 'asd_admin', 0, '2024-04-20 20:20:13', 1, NULL, 4),
(208, 1, 'affiliates', 1, NULL, 'a:14:{s:11:\"affiliateid\";i:1;s:8:\"agencyid\";i:1;s:4:\"name\";s:20:\"dynamic-odyssey.com/\";s:8:\"mnemonic\";N;s:8:\"comments\";s:0:\"\";s:7:\"contact\";s:5:\"Shaun\";s:5:\"email\";s:20:\"skamesiepo@gmail.com\";s:7:\"website\";s:28:\"https://dynamic-odyssey.com/\";s:7:\"updated\";s:19:\"2024-04-20 20:20:13\";s:16:\"oac_country_code\";N;s:15:\"oac_language_id\";i:0;s:15:\"oac_category_id\";i:0;s:10:\"account_id\";i:4;s:8:\"key_desc\";s:20:\"dynamic-odyssey.com/\";}', 1, 'asd_admin', 0, '2024-04-20 20:20:13', 2, NULL, 4),
(209, 1, 'zones', 1, NULL, 'a:33:{s:6:\"zoneid\";i:1;s:11:\"affiliateid\";i:1;s:8:\"zonename\";s:30:\"dynamic-odyssey.com/ - Default\";s:11:\"description\";s:8:\"Text-Ads\";s:8:\"delivery\";i:3;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:0;s:6:\"height\";i:0;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";N;s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";N;s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2024-04-20 20:22:28\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";N;s:4:\"rate\";i:0;s:7:\"pricing\";N;s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";N;s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:30:\"dynamic-odyssey.com/ - Default\";}', 1, 'asd_admin', 0, '2024-04-20 20:22:28', 2, NULL, 4),
(210, 1, 'campaigns', 1, NULL, 'a:33:{s:10:\"campaignid\";i:1;s:12:\"campaignname\";s:34:\"Dynamic Odyssey - Default Campaign\";s:8:\"clientid\";i:1;s:5:\"views\";i:-1;s:6:\"clicks\";i:-1;s:11:\"conversions\";i:-1;s:8:\"priority\";i:0;s:6:\"weight\";i:3;s:17:\"target_impression\";i:0;s:12:\"target_click\";i:0;s:17:\"target_conversion\";i:0;s:9:\"anonymous\";s:1:\"f\";s:9:\"companion\";i:0;s:8:\"comments\";s:46:\"Test campaign for primary text ads - CPC model\";s:7:\"revenue\";i:0;s:12:\"revenue_type\";i:1;s:7:\"updated\";s:19:\"2024-04-20 20:27:41\";s:5:\"block\";i:86400;s:7:\"capping\";i:3;s:15:\"session_capping\";i:1;s:6:\"status\";i:0;s:12:\"hosted_views\";i:0;s:13:\"hosted_clicks\";i:0;s:10:\"viewwindow\";i:0;s:11:\"clickwindow\";i:0;s:4:\"ecpm\";i:0;s:15:\"min_impressions\";i:100;s:12:\"ecpm_enabled\";i:0;s:13:\"activate_time\";s:19:\"2024-04-19 22:00:00\";s:11:\"expire_time\";s:4:\"NULL\";s:4:\"type\";i:0;s:21:\"show_capped_no_cookie\";i:1;s:8:\"key_desc\";s:34:\"Dynamic Odyssey - Default Campaign\";}', 1, 'asd_admin', 0, '2024-04-20 20:27:41', 2, 3, NULL),
(211, 2, 'zones', 1, NULL, 'a:5:{s:8:\"delivery\";a:2:{s:3:\"was\";i:3;s:2:\"is\";i:0;}s:5:\"width\";a:2:{s:3:\"was\";i:0;s:2:\"is\";i:-1;}s:6:\"height\";a:2:{s:3:\"was\";i:0;s:2:\"is\";i:-1;}s:8:\"key_desc\";s:30:\"dynamic-odyssey.com/ - Default\";s:11:\"affiliateid\";s:1:\"1\";}', 1, 'asd_admin', 0, '2024-04-20 20:30:11', 2, NULL, 4),
(212, 1, 'banners', 1, NULL, 'a:41:{s:8:\"bannerid\";i:1;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"1fc98cfaa9a7feb413a749002e7a5b91.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:6:\"_blank\";s:3:\"url\";s:28:\"https://dynamic-odyssey.com/\";s:3:\"alt\";s:16:\"AR is the future\";s:10:\"statustext\";s:27:\"Click Now to see the future\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:14:\"testing-banner\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";N;s:11:\"acl_plugins\";N;s:6:\"append\";N;s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2024-04-20 20:32:49\";s:12:\"acls_updated\";N;s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:6:\"status\";i:0;s:14:\"ext_bannertype\";N;s:7:\"prepend\";N;s:15:\"iframe_friendly\";s:5:\"false\";s:8:\"key_desc\";s:14:\"testing-banner\";}', 1, 'asd_admin', 0, '2024-04-20 20:32:49', 2, 3, NULL),
(213, 1, 'ad_zone_assoc', 1, NULL, 'a:8:{s:16:\"ad_zone_assoc_id\";i:1;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:1;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #1 -> Zone #0\";}', 1, 'asd_admin', 0, '2024-04-20 20:32:49', 2, 3, NULL),
(214, 2, 'campaigns', 1, NULL, 'a:2:{s:8:\"key_desc\";s:34:\"Dynamic Odyssey - Default Campaign\";s:8:\"clientid\";s:1:\"1\";}', 1, 'asd_admin', 0, '2024-04-20 20:33:42', 2, 3, NULL),
(215, 2, 'campaigns', 1, NULL, 'a:2:{s:8:\"key_desc\";s:34:\"Dynamic Odyssey - Default Campaign\";s:8:\"clientid\";s:1:\"1\";}', 1, 'asd_admin', 0, '2024-04-20 20:33:49', 2, 3, NULL),
(216, 1, 'trackers', 1, NULL, 'a:14:{s:9:\"trackerid\";i:1;s:11:\"trackername\";s:23:\"Dynamic Odyssey Tracker\";s:11:\"description\";s:0:\"\";s:8:\"clientid\";i:1;s:10:\"viewwindow\";i:0;s:11:\"clickwindow\";i:0;s:11:\"blockwindow\";i:0;s:6:\"status\";s:1:\"2\";s:4:\"type\";s:1:\"2\";s:13:\"linkcampaigns\";s:1:\"f\";s:14:\"variablemethod\";N;s:10:\"appendcode\";N;s:7:\"updated\";s:19:\"2024-04-20 20:36:05\";s:8:\"key_desc\";s:23:\"Dynamic Odyssey Tracker\";}', 1, 'asd_admin', 0, '2024-04-20 20:36:05', 2, 3, NULL),
(217, 1, 'campaigns_trackers', 1, NULL, 'a:5:{s:18:\"campaign_trackerid\";i:1;s:10:\"campaignid\";i:1;s:9:\"trackerid\";i:1;s:6:\"status\";s:1:\"2\";s:8:\"key_desc\";s:25:\"Campaign #1 -> Tracker #1\";}', 1, 'asd_admin', 0, '2024-04-20 20:36:12', 2, 3, NULL),
(218, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:2;s:13:\"preference_id\";i:8;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:27:\"Account #2 -> Preference #8\";}', 1, 'asd_admin', 0, '2024-04-20 21:15:14', 2, NULL, NULL),
(219, 1, 'account_preference_assoc', 0, NULL, 'a:4:{s:10:\"account_id\";i:2;s:13:\"preference_id\";i:9;s:5:\"value\";s:1:\"1\";s:8:\"key_desc\";s:27:\"Account #2 -> Preference #9\";}', 1, 'asd_admin', 0, '2024-04-20 21:15:14', 2, NULL, NULL),
(220, 2, 'campaigns', 1, NULL, 'a:3:{s:8:\"priority\";a:2:{s:3:\"was\";i:0;s:2:\"is\";i:-2;}s:8:\"key_desc\";s:34:\"Dynamic Odyssey - Default Campaign\";s:8:\"clientid\";s:1:\"1\";}', 1, 'asd_admin', 0, '2024-04-20 21:15:15', 2, 3, NULL),
(221, 2, 'campaigns', 1, NULL, 'a:2:{s:8:\"key_desc\";s:34:\"Dynamic Odyssey - Default Campaign\";s:8:\"clientid\";s:1:\"1\";}', 1, 'asd_admin', 0, '2024-04-20 21:15:16', 2, 3, NULL),
(222, 1, 'accounts', 5, NULL, 'a:4:{s:10:\"account_id\";i:5;s:12:\"account_type\";s:10:\"ADVERTISER\";s:12:\"account_name\";s:6:\"Google\";s:8:\"key_desc\";s:6:\"Google\";}', 1, 'asd_admin', 0, '2024-04-20 21:48:50', 1, 5, NULL),
(223, 1, 'clients', 2, NULL, 'a:15:{s:8:\"clientid\";i:2;s:8:\"agencyid\";i:1;s:10:\"clientname\";s:6:\"Google\";s:7:\"contact\";s:7:\"Erastus\";s:5:\"email\";s:25:\"erastusmatheus3@gmail.com\";s:6:\"report\";s:1:\"t\";s:14:\"reportinterval\";i:2;s:14:\"reportlastdate\";s:10:\"2024-04-20\";s:16:\"reportdeactivate\";s:1:\"t\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2024-04-20 21:48:50\";s:10:\"account_id\";i:5;s:21:\"advertiser_limitation\";s:5:\"false\";s:4:\"type\";i:0;s:8:\"key_desc\";s:6:\"Google\";}', 1, 'asd_admin', 0, '2024-04-20 21:48:50', 2, 5, NULL),
(224, 1, 'campaigns', 2, NULL, 'a:33:{s:10:\"campaignid\";i:2;s:12:\"campaignname\";s:25:\"Google - Default Campaign\";s:8:\"clientid\";i:2;s:5:\"views\";i:-1;s:6:\"clicks\";i:-1;s:11:\"conversions\";i:-1;s:8:\"priority\";i:-1;s:6:\"weight\";i:1;s:17:\"target_impression\";i:0;s:12:\"target_click\";i:0;s:17:\"target_conversion\";i:0;s:9:\"anonymous\";s:1:\"f\";s:9:\"companion\";i:0;s:8:\"comments\";s:0:\"\";s:7:\"revenue\";i:0;s:12:\"revenue_type\";i:1;s:7:\"updated\";s:19:\"2024-04-20 21:58:15\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:6:\"status\";i:0;s:12:\"hosted_views\";i:0;s:13:\"hosted_clicks\";i:0;s:10:\"viewwindow\";i:0;s:11:\"clickwindow\";i:0;s:4:\"ecpm\";i:0;s:15:\"min_impressions\";i:100;s:12:\"ecpm_enabled\";i:0;s:13:\"activate_time\";s:19:\"2024-04-19 22:00:00\";s:11:\"expire_time\";s:4:\"NULL\";s:4:\"type\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:25:\"Google - Default Campaign\";}', 1, 'asd_admin', 0, '2024-04-20 21:58:15', 2, 5, NULL),
(225, 1, 'zones', 2, NULL, 'a:33:{s:6:\"zoneid\";i:2;s:11:\"affiliateid\";i:1;s:8:\"zonename\";s:12:\"Google Zone1\";s:11:\"description\";s:8:\"Text-Ads\";s:8:\"delivery\";i:3;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:0;s:6:\"height\";i:0;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";N;s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";N;s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2024-04-20 22:03:50\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";N;s:4:\"rate\";i:0;s:7:\"pricing\";N;s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";N;s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:12:\"Google Zone1\";}', 1, 'asd_admin', 0, '2024-04-20 22:03:50', 2, NULL, 4),
(226, 2, 'campaigns', 2, NULL, 'a:3:{s:12:\"campaignname\";a:2:{s:3:\"was\";s:25:\"Google - Default Campaign\";s:2:\"is\";s:16:\"Google  Campaign\";}s:8:\"key_desc\";s:16:\"Google  Campaign\";s:8:\"clientid\";s:1:\"2\";}', 1, 'asd_admin', 0, '2024-04-20 22:04:25', 2, 5, NULL),
(227, 1, 'accounts', 6, NULL, 'a:4:{s:10:\"account_id\";i:6;s:12:\"account_type\";s:10:\"ADVERTISER\";s:12:\"account_name\";s:7:\"Youtube\";s:8:\"key_desc\";s:7:\"Youtube\";}', 1, 'asd_admin', 0, '2024-04-20 22:04:50', 1, 6, NULL),
(228, 1, 'clients', 3, NULL, 'a:15:{s:8:\"clientid\";i:3;s:8:\"agencyid\";i:1;s:10:\"clientname\";s:7:\"Youtube\";s:7:\"contact\";s:7:\"Revaldo\";s:5:\"email\";s:17:\"rgertze@gmail.com\";s:6:\"report\";s:1:\"t\";s:14:\"reportinterval\";i:7;s:14:\"reportlastdate\";s:10:\"2024-04-21\";s:16:\"reportdeactivate\";s:1:\"t\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2024-04-20 22:04:50\";s:10:\"account_id\";i:6;s:21:\"advertiser_limitation\";s:5:\"false\";s:4:\"type\";i:0;s:8:\"key_desc\";s:7:\"Youtube\";}', 1, 'asd_admin', 0, '2024-04-20 22:04:50', 2, 6, NULL),
(229, 1, 'trackers', 2, NULL, 'a:14:{s:9:\"trackerid\";i:2;s:11:\"trackername\";s:15:\"Youtube tracker\";s:11:\"description\";s:20:\"Tracking Conversions\";s:8:\"clientid\";i:3;s:10:\"viewwindow\";i:0;s:11:\"clickwindow\";i:0;s:11:\"blockwindow\";i:0;s:6:\"status\";s:1:\"4\";s:4:\"type\";s:1:\"3\";s:13:\"linkcampaigns\";s:1:\"f\";s:14:\"variablemethod\";N;s:10:\"appendcode\";N;s:7:\"updated\";s:19:\"2024-04-20 22:05:54\";s:8:\"key_desc\";s:15:\"Youtube tracker\";}', 1, 'asd_admin', 0, '2024-04-20 22:05:54', 2, 6, NULL),
(230, 1, 'zones', 3, NULL, 'a:33:{s:6:\"zoneid\";i:3;s:11:\"affiliateid\";i:1;s:8:\"zonename\";s:13:\"Youtube Zone1\";s:11:\"description\";s:10:\"Video Zone\";s:8:\"delivery\";i:6;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:-3;s:6:\"height\";i:-3;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";N;s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";N;s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2024-04-20 22:06:34\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";N;s:4:\"rate\";i:0;s:7:\"pricing\";N;s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";N;s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:13:\"Youtube Zone1\";}', 1, 'asd_admin', 0, '2024-04-20 22:06:34', 2, NULL, 4),
(231, 1, 'accounts', 7, NULL, 'a:4:{s:10:\"account_id\";i:7;s:12:\"account_type\";s:10:\"TRAFFICKER\";s:12:\"account_name\";s:12:\"Youtube.com/\";s:8:\"key_desc\";s:12:\"Youtube.com/\";}', 1, 'asd_admin', 0, '2024-04-20 22:07:49', 1, NULL, 7),
(232, 1, 'affiliates', 2, NULL, 'a:14:{s:11:\"affiliateid\";i:2;s:8:\"agencyid\";i:1;s:4:\"name\";s:12:\"Youtube.com/\";s:8:\"mnemonic\";N;s:8:\"comments\";s:0:\"\";s:7:\"contact\";s:5:\"Shaun\";s:5:\"email\";s:20:\"skamesiepo@gmail.com\";s:7:\"website\";s:20:\"https://Youtube.com/\";s:7:\"updated\";s:19:\"2024-04-20 22:07:49\";s:16:\"oac_country_code\";N;s:15:\"oac_language_id\";i:0;s:15:\"oac_category_id\";i:0;s:10:\"account_id\";i:7;s:8:\"key_desc\";s:12:\"Youtube.com/\";}', 1, 'asd_admin', 0, '2024-04-20 22:07:49', 2, NULL, 7),
(233, 3, 'zones', 3, NULL, 'a:33:{s:6:\"zoneid\";i:3;s:11:\"affiliateid\";i:1;s:8:\"zonename\";s:13:\"Youtube Zone1\";s:11:\"description\";s:10:\"Video Zone\";s:8:\"delivery\";i:6;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:-3;s:6:\"height\";i:-3;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:1:\"f\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";N;s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2024-04-20 22:06:34\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";s:0:\"\";s:4:\"rate\";i:0;s:7:\"pricing\";s:3:\"CPM\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";N;s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:13:\"Youtube Zone1\";}', 1, 'asd_admin', 0, '2024-04-20 22:08:43', 2, NULL, 4),
(234, 1, 'zones', 4, NULL, 'a:33:{s:6:\"zoneid\";i:4;s:11:\"affiliateid\";i:2;s:8:\"zonename\";s:17:\"Youtube.com Zone1\";s:11:\"description\";s:10:\"Youtube Z1\";s:8:\"delivery\";i:6;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:-3;s:6:\"height\";i:-3;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";N;s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";N;s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2024-04-20 22:08:59\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";N;s:4:\"rate\";i:0;s:7:\"pricing\";N;s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";N;s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:17:\"Youtube.com Zone1\";}', 1, 'asd_admin', 0, '2024-04-20 22:08:59', 2, NULL, 7),
(235, 1, 'accounts', 8, NULL, 'a:4:{s:10:\"account_id\";i:8;s:12:\"account_type\";s:10:\"TRAFFICKER\";s:12:\"account_name\";s:18:\"www.billboard.com/\";s:8:\"key_desc\";s:18:\"www.billboard.com/\";}', 1, 'asd_admin', 0, '2024-04-20 22:09:50', 1, NULL, 8),
(236, 1, 'affiliates', 3, NULL, 'a:14:{s:11:\"affiliateid\";i:3;s:8:\"agencyid\";i:1;s:4:\"name\";s:18:\"www.billboard.com/\";s:8:\"mnemonic\";N;s:8:\"comments\";s:0:\"\";s:7:\"contact\";s:7:\"Revaldo\";s:5:\"email\";s:17:\"rgertze@gmail.com\";s:7:\"website\";s:26:\"https://www.billboard.com/\";s:7:\"updated\";s:19:\"2024-04-20 22:09:50\";s:16:\"oac_country_code\";N;s:15:\"oac_language_id\";i:0;s:15:\"oac_category_id\";i:0;s:10:\"account_id\";i:8;s:8:\"key_desc\";s:18:\"www.billboard.com/\";}', 1, 'asd_admin', 0, '2024-04-20 22:09:50', 2, NULL, 8),
(237, 2, 'clients', 2, NULL, 'a:2:{s:10:\"clientname\";a:2:{s:3:\"was\";s:6:\"Google\";s:2:\"is\";s:9:\"Billboard\";}s:8:\"key_desc\";s:9:\"Billboard\";}', 1, 'asd_admin', 0, '2024-04-20 22:10:10', 2, 5, NULL),
(238, 2, 'accounts', 5, NULL, 'a:2:{s:12:\"account_name\";a:2:{s:3:\"was\";s:6:\"Google\";s:2:\"is\";s:9:\"Billboard\";}s:8:\"key_desc\";s:9:\"Billboard\";}', 1, 'asd_admin', 0, '2024-04-20 22:10:10', 2, 5, NULL),
(239, 1, 'trackers', 3, NULL, 'a:14:{s:9:\"trackerid\";i:3;s:11:\"trackername\";s:17:\"Billboard Tracker\";s:11:\"description\";s:17:\"Tracking Sign ups\";s:8:\"clientid\";i:2;s:10:\"viewwindow\";i:0;s:11:\"clickwindow\";i:0;s:11:\"blockwindow\";i:0;s:6:\"status\";s:1:\"4\";s:4:\"type\";s:1:\"3\";s:13:\"linkcampaigns\";s:1:\"f\";s:14:\"variablemethod\";N;s:10:\"appendcode\";N;s:7:\"updated\";s:19:\"2024-04-20 22:10:29\";s:8:\"key_desc\";s:17:\"Billboard Tracker\";}', 1, 'asd_admin', 0, '2024-04-20 22:10:29', 2, 5, NULL),
(240, 2, 'affiliates', 2, NULL, 'a:2:{s:7:\"website\";a:2:{s:3:\"was\";s:20:\"https://Youtube.com/\";s:2:\"is\";s:26:\"https://www.billboard.com/\";}s:8:\"key_desc\";s:12:\"Youtube.com/\";}', 1, 'asd_admin', 0, '2024-04-20 22:10:41', 2, NULL, 7),
(241, 2, 'affiliates', 2, NULL, 'a:2:{s:4:\"name\";a:2:{s:3:\"was\";s:12:\"Youtube.com/\";s:2:\"is\";s:9:\"Billboard\";}s:8:\"key_desc\";s:9:\"Billboard\";}', 1, 'asd_admin', 0, '2024-04-20 22:10:51', 2, NULL, 7),
(242, 2, 'accounts', 7, NULL, 'a:2:{s:12:\"account_name\";a:2:{s:3:\"was\";s:12:\"Youtube.com/\";s:2:\"is\";s:9:\"Billboard\";}s:8:\"key_desc\";s:9:\"Billboard\";}', 1, 'asd_admin', 0, '2024-04-20 22:10:51', 2, NULL, 7),
(243, 2, 'affiliates', 2, NULL, 'a:1:{s:8:\"key_desc\";s:9:\"Billboard\";}', 1, 'asd_admin', 0, '2024-04-20 22:10:52', 2, NULL, 7),
(244, 2, 'zones', 4, NULL, 'a:3:{s:8:\"zonename\";a:2:{s:3:\"was\";s:17:\"Youtube.com Zone1\";s:2:\"is\";s:14:\"Billboard Zone\";}s:8:\"key_desc\";s:14:\"Billboard Zone\";s:11:\"affiliateid\";s:1:\"2\";}', 1, 'asd_admin', 0, '2024-04-20 22:11:04', 2, NULL, 7),
(245, 2, 'affiliates', 2, NULL, 'a:3:{s:4:\"name\";a:2:{s:3:\"was\";s:9:\"Billboard\";s:2:\"is\";s:12:\"Youtube.com/\";}s:7:\"website\";a:2:{s:3:\"was\";s:26:\"https://www.billboard.com/\";s:2:\"is\";s:24:\"https://www.Youtube.com/\";}s:8:\"key_desc\";s:12:\"Youtube.com/\";}', 1, 'asd_admin', 0, '2024-04-20 22:11:49', 2, NULL, 7),
(246, 2, 'accounts', 7, NULL, 'a:2:{s:12:\"account_name\";a:2:{s:3:\"was\";s:9:\"Billboard\";s:2:\"is\";s:12:\"Youtube.com/\";}s:8:\"key_desc\";s:12:\"Youtube.com/\";}', 1, 'asd_admin', 0, '2024-04-20 22:11:49', 2, NULL, 7),
(247, 1, 'campaigns', 3, NULL, 'a:33:{s:10:\"campaignid\";i:3;s:12:\"campaignname\";s:26:\"Youtube - Default Campaign\";s:8:\"clientid\";i:3;s:5:\"views\";i:-1;s:6:\"clicks\";i:-1;s:11:\"conversions\";i:-1;s:8:\"priority\";i:-1;s:6:\"weight\";i:15;s:17:\"target_impression\";i:0;s:12:\"target_click\";i:0;s:17:\"target_conversion\";i:0;s:9:\"anonymous\";s:1:\"f\";s:9:\"companion\";i:0;s:8:\"comments\";s:0:\"\";s:7:\"revenue\";i:5;s:12:\"revenue_type\";i:1;s:7:\"updated\";s:19:\"2024-04-20 22:12:57\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:6:\"status\";i:0;s:12:\"hosted_views\";i:0;s:13:\"hosted_clicks\";i:0;s:10:\"viewwindow\";i:0;s:11:\"clickwindow\";i:0;s:4:\"ecpm\";i:0;s:15:\"min_impressions\";i:100;s:12:\"ecpm_enabled\";i:0;s:13:\"activate_time\";s:19:\"2024-04-20 22:00:00\";s:11:\"expire_time\";s:4:\"NULL\";s:4:\"type\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:26:\"Youtube - Default Campaign\";}', 1, 'asd_admin', 0, '2024-04-20 22:12:57', 2, 6, NULL),
(248, 2, 'campaigns', 1, NULL, 'a:3:{s:12:\"campaignname\";a:2:{s:3:\"was\";s:34:\"Dynamic Odyssey - Default Campaign\";s:2:\"is\";s:24:\"Dynamic Odyssey Campaign\";}s:8:\"key_desc\";s:24:\"Dynamic Odyssey Campaign\";s:8:\"clientid\";s:1:\"1\";}', 1, 'asd_admin', 0, '2024-04-20 22:13:41', 2, 3, NULL),
(249, 2, 'campaigns', 3, NULL, 'a:2:{s:8:\"key_desc\";s:26:\"Youtube - Default Campaign\";s:8:\"clientid\";s:1:\"3\";}', 1, 'asd_admin', 0, '2024-04-20 22:13:59', 2, 6, NULL),
(250, 2, 'zones', 4, NULL, 'a:3:{s:8:\"zonename\";a:2:{s:3:\"was\";s:14:\"Billboard Zone\";s:2:\"is\";s:13:\"Youtube Zone1\";}s:8:\"key_desc\";s:13:\"Youtube Zone1\";s:11:\"affiliateid\";s:1:\"2\";}', 1, 'asd_admin', 0, '2024-04-20 22:14:12', 2, NULL, 7),
(251, 2, 'campaigns', 2, NULL, 'a:3:{s:12:\"campaignname\";a:2:{s:3:\"was\";s:16:\"Google  Campaign\";s:2:\"is\";s:19:\"Billboard  Campaign\";}s:8:\"key_desc\";s:19:\"Billboard  Campaign\";s:8:\"clientid\";s:1:\"2\";}', 1, 'asd_admin', 0, '2024-04-20 22:14:46', 2, 5, NULL),
(252, 2, 'campaigns', 3, NULL, 'a:3:{s:12:\"campaignname\";a:2:{s:3:\"was\";s:26:\"Youtube - Default Campaign\";s:2:\"is\";s:16:\"Youtube Campaign\";}s:8:\"key_desc\";s:16:\"Youtube Campaign\";s:8:\"clientid\";s:1:\"3\";}', 1, 'asd_admin', 0, '2024-04-20 22:15:00', 2, 6, NULL),
(253, 1, 'banners', 2, NULL, 'a:41:{s:8:\"bannerid\";i:2;s:10:\"campaignid\";i:3;s:11:\"contenttype\";s:4:\"webp\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:37:\"25e5263cc5af2dfc2c55512fb699ed47.webp\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:1235;s:6:\"height\";i:1600;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:6:\"_blank\";s:3:\"url\";s:139:\"https://www.billboard.com/music/music-news/taylor-swift-tortured-poets-department-spotify-record-300-million-streams-single-day-1235661939/\";s:3:\"alt\";s:20:\"News on Taylor Swift\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:14:\"Youtube Banner\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";N;s:11:\"acl_plugins\";N;s:6:\"append\";N;s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2024-04-20 22:17:06\";s:12:\"acls_updated\";N;s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:6:\"status\";i:0;s:14:\"ext_bannertype\";N;s:7:\"prepend\";N;s:15:\"iframe_friendly\";s:5:\"false\";s:8:\"key_desc\";s:14:\"Youtube Banner\";}', 1, 'asd_admin', 0, '2024-04-20 22:17:06', 2, 6, NULL),
(254, 1, 'ad_zone_assoc', 3, NULL, 'a:8:{s:16:\"ad_zone_assoc_id\";i:3;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:2;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #2 -> Zone #0\";}', 1, 'asd_admin', 0, '2024-04-20 22:17:06', 2, 6, NULL),
(255, 1, 'zones', 5, NULL, 'a:33:{s:6:\"zoneid\";i:5;s:11:\"affiliateid\";i:3;s:8:\"zonename\";s:24:\"www.billboard.com/ Zone1\";s:11:\"description\";s:14:\"Billboard Zone\";s:8:\"delivery\";i:7;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:-2;s:6:\"height\";i:-2;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";N;s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";N;s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2024-04-20 22:18:37\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";N;s:4:\"rate\";i:0;s:7:\"pricing\";N;s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";N;s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:24:\"www.billboard.com/ Zone1\";}', 1, 'asd_admin', 0, '2024-04-20 22:18:37', 2, NULL, 8),
(256, 3, 'zones', 2, NULL, 'a:33:{s:6:\"zoneid\";i:2;s:11:\"affiliateid\";i:1;s:8:\"zonename\";s:12:\"Google Zone1\";s:11:\"description\";s:8:\"Text-Ads\";s:8:\"delivery\";i:3;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:0;s:6:\"height\";i:0;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:1:\"f\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";N;s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2024-04-20 22:03:50\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";s:0:\"\";s:4:\"rate\";i:0;s:7:\"pricing\";s:3:\"CPM\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";N;s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:12:\"Google Zone1\";}', 1, 'asd_admin', 0, '2024-04-20 22:18:45', 2, NULL, 4),
(257, 2, 'zones', 1, NULL, 'a:3:{s:8:\"zonename\";a:2:{s:3:\"was\";s:30:\"dynamic-odyssey.com/ - Default\";s:2:\"is\";s:20:\"dynamic-odyssey.com/\";}s:8:\"key_desc\";s:20:\"dynamic-odyssey.com/\";s:11:\"affiliateid\";s:1:\"1\";}', 1, 'asd_admin', 0, '2024-04-20 22:18:50', 2, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `rv_banners`
--

CREATE TABLE `rv_banners` (
  `bannerid` mediumint(9) NOT NULL,
  `campaignid` mediumint(9) NOT NULL DEFAULT 0,
  `contenttype` varchar(8) NOT NULL DEFAULT 'gif',
  `pluginversion` mediumint(9) NOT NULL DEFAULT 0,
  `storagetype` varchar(16) NOT NULL DEFAULT 'sql',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `imageurl` varchar(255) NOT NULL DEFAULT '',
  `htmltemplate` mediumtext NOT NULL,
  `htmlcache` mediumtext NOT NULL,
  `width` smallint(6) NOT NULL DEFAULT 0,
  `height` smallint(6) NOT NULL DEFAULT 0,
  `weight` tinyint(4) NOT NULL DEFAULT 1,
  `seq` tinyint(4) NOT NULL DEFAULT 0,
  `target` varchar(16) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `statustext` varchar(255) NOT NULL DEFAULT '',
  `bannertext` text NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `adserver` varchar(255) NOT NULL DEFAULT '',
  `block` int(11) NOT NULL DEFAULT 0,
  `capping` int(11) NOT NULL DEFAULT 0,
  `session_capping` int(11) NOT NULL DEFAULT 0,
  `compiledlimitation` text NOT NULL,
  `acl_plugins` text DEFAULT NULL,
  `append` text NOT NULL,
  `bannertype` tinyint(4) NOT NULL DEFAULT 0,
  `alt_filename` varchar(255) NOT NULL DEFAULT '',
  `alt_imageurl` varchar(255) NOT NULL DEFAULT '',
  `alt_contenttype` varchar(8) NOT NULL DEFAULT 'gif',
  `comments` text DEFAULT NULL,
  `updated` datetime NOT NULL,
  `acls_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `transparent` tinyint(1) NOT NULL DEFAULT 0,
  `parameters` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `ext_bannertype` varchar(255) DEFAULT NULL,
  `prepend` text NOT NULL,
  `iframe_friendly` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_banners`
--

INSERT INTO `rv_banners` (`bannerid`, `campaignid`, `contenttype`, `pluginversion`, `storagetype`, `filename`, `imageurl`, `htmltemplate`, `htmlcache`, `width`, `height`, `weight`, `seq`, `target`, `url`, `alt`, `statustext`, `bannertext`, `description`, `adserver`, `block`, `capping`, `session_capping`, `compiledlimitation`, `acl_plugins`, `append`, `bannertype`, `alt_filename`, `alt_imageurl`, `alt_contenttype`, `comments`, `updated`, `acls_updated`, `keyword`, `transparent`, `parameters`, `status`, `ext_bannertype`, `prepend`, `iframe_friendly`) VALUES
(1, 1, 'jpeg', 0, 'web', '1fc98cfaa9a7feb413a749002e7a5b91.jpg', '', '', '', 1920, 1080, 1, 0, '_blank', 'https://dynamic-odyssey.com/', 'AR is the future', 'Click Now to see the future', '', 'testing-banner', '', 0, 0, 0, '', NULL, '', 0, '', '', '', '', '2024-04-20 20:32:49', '0000-00-00 00:00:00', '', 0, 'N;', 0, NULL, '', 0),
(2, 3, 'webp', 0, 'web', '25e5263cc5af2dfc2c55512fb699ed47.webp', '', '', '', 1235, 1600, 1, 0, '_blank', 'https://www.billboard.com/music/music-news/taylor-swift-tortured-poets-department-spotify-record-300-million-streams-single-day-1235661939/', 'News on Taylor Swift', '', '', 'Youtube Banner', '', 0, 0, 0, '', NULL, '', 0, '', '', '', '', '2024-04-20 22:17:06', '0000-00-00 00:00:00', '', 0, 'N;', 0, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rv_banner_vast_element`
--

CREATE TABLE `rv_banner_vast_element` (
  `banner_vast_element_id` mediumint(9) NOT NULL,
  `banner_id` mediumint(9) NOT NULL,
  `vast_element_type` varchar(16) NOT NULL DEFAULT '',
  `vast_video_id` varchar(100) DEFAULT NULL,
  `vast_video_duration` mediumint(9) DEFAULT NULL,
  `vast_video_delivery` varchar(20) DEFAULT NULL,
  `vast_video_type` varchar(20) DEFAULT NULL,
  `vast_video_bitrate` varchar(20) DEFAULT NULL,
  `vast_video_height` mediumint(9) DEFAULT NULL,
  `vast_video_width` mediumint(9) DEFAULT NULL,
  `vast_video_outgoing_filename` text DEFAULT NULL,
  `vast_companion_banner_id` mediumint(9) DEFAULT NULL,
  `vast_overlay_height` mediumint(9) DEFAULT NULL,
  `vast_overlay_width` mediumint(9) DEFAULT NULL,
  `vast_video_clickthrough_url` text DEFAULT NULL,
  `vast_overlay_action` varchar(20) DEFAULT NULL,
  `vast_overlay_format` varchar(20) DEFAULT NULL,
  `vast_overlay_text_title` text DEFAULT NULL,
  `vast_overlay_text_description` text DEFAULT NULL,
  `vast_overlay_text_call` text DEFAULT NULL,
  `vast_creative_type` varchar(20) DEFAULT NULL,
  `vast_thirdparty_impression` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_campaigns`
--

CREATE TABLE `rv_campaigns` (
  `campaignid` mediumint(9) NOT NULL,
  `campaignname` varchar(255) NOT NULL DEFAULT '',
  `clientid` mediumint(9) NOT NULL DEFAULT 0,
  `views` int(11) DEFAULT -1,
  `clicks` int(11) DEFAULT -1,
  `conversions` int(11) DEFAULT -1,
  `priority` int(11) NOT NULL DEFAULT 0,
  `weight` tinyint(4) NOT NULL DEFAULT 1,
  `target_impression` int(11) NOT NULL DEFAULT 0,
  `target_click` int(11) NOT NULL DEFAULT 0,
  `target_conversion` int(11) NOT NULL DEFAULT 0,
  `anonymous` enum('t','f') NOT NULL DEFAULT 'f',
  `companion` smallint(1) DEFAULT 0,
  `comments` text DEFAULT NULL,
  `revenue` decimal(10,4) DEFAULT NULL,
  `revenue_type` smallint(6) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `block` int(11) NOT NULL DEFAULT 0,
  `capping` int(11) NOT NULL DEFAULT 0,
  `session_capping` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `hosted_views` int(11) NOT NULL DEFAULT 0,
  `hosted_clicks` int(11) NOT NULL DEFAULT 0,
  `viewwindow` mediumint(9) NOT NULL DEFAULT 0,
  `clickwindow` mediumint(9) NOT NULL DEFAULT 0,
  `ecpm` decimal(10,4) DEFAULT NULL,
  `min_impressions` int(11) NOT NULL DEFAULT 0,
  `ecpm_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `activate_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `show_capped_no_cookie` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_campaigns`
--

INSERT INTO `rv_campaigns` (`campaignid`, `campaignname`, `clientid`, `views`, `clicks`, `conversions`, `priority`, `weight`, `target_impression`, `target_click`, `target_conversion`, `anonymous`, `companion`, `comments`, `revenue`, `revenue_type`, `updated`, `block`, `capping`, `session_capping`, `status`, `hosted_views`, `hosted_clicks`, `viewwindow`, `clickwindow`, `ecpm`, `min_impressions`, `ecpm_enabled`, `activate_time`, `expire_time`, `type`, `show_capped_no_cookie`) VALUES
(1, 'Dynamic Odyssey Campaign', 1, -1, -1, -1, -2, 3, 0, 0, 0, 'f', 0, 'Test campaign for primary text ads - CPC model', 0.5000, 1, '2024-04-20 22:13:41', 86400, 3, 1, 0, 0, 0, 0, 0, 0.5000, 100, 0, '2024-04-19 22:00:00', NULL, 0, 1),
(2, 'Billboard  Campaign', 2, -1, -1, -1, -1, 1, 0, 0, 0, 'f', 0, '', 0.1500, 1, '2024-04-20 22:14:46', 0, 0, 0, 0, 0, 0, 0, 0, NULL, 100, 0, '2024-04-19 22:00:00', NULL, 0, 0),
(3, 'Youtube Campaign', 3, -1, -1, -1, -1, 15, 0, 0, 0, 'f', 0, '', 5.0000, 1, '2024-04-20 22:15:00', 0, 0, 0, 0, 0, 0, 0, 0, NULL, 100, 0, '2024-04-20 22:00:00', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rv_campaigns_trackers`
--

CREATE TABLE `rv_campaigns_trackers` (
  `campaign_trackerid` mediumint(9) NOT NULL,
  `campaignid` mediumint(9) NOT NULL DEFAULT 0,
  `trackerid` mediumint(9) NOT NULL DEFAULT 0,
  `status` smallint(1) UNSIGNED NOT NULL DEFAULT 4
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_campaigns_trackers`
--

INSERT INTO `rv_campaigns_trackers` (`campaign_trackerid`, `campaignid`, `trackerid`, `status`) VALUES
(1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rv_category`
--

CREATE TABLE `rv_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_channel`
--

CREATE TABLE `rv_channel` (
  `channelid` mediumint(9) NOT NULL,
  `agencyid` mediumint(9) NOT NULL DEFAULT 0,
  `affiliateid` mediumint(9) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `compiledlimitation` text NOT NULL,
  `acl_plugins` text DEFAULT NULL,
  `active` smallint(1) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `updated` datetime NOT NULL,
  `acls_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_clients`
--

CREATE TABLE `rv_clients` (
  `clientid` mediumint(9) NOT NULL,
  `agencyid` mediumint(9) NOT NULL DEFAULT 0,
  `clientname` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `report` enum('t','f') NOT NULL DEFAULT 'f',
  `reportinterval` mediumint(9) NOT NULL DEFAULT 7,
  `reportlastdate` date NOT NULL DEFAULT '0000-00-00',
  `reportdeactivate` enum('t','f') NOT NULL DEFAULT 'f',
  `comments` text DEFAULT NULL,
  `updated` datetime NOT NULL,
  `account_id` mediumint(9) DEFAULT NULL,
  `advertiser_limitation` tinyint(1) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_clients`
--

INSERT INTO `rv_clients` (`clientid`, `agencyid`, `clientname`, `contact`, `email`, `report`, `reportinterval`, `reportlastdate`, `reportdeactivate`, `comments`, `updated`, `account_id`, `advertiser_limitation`, `type`) VALUES
(1, 1, 'Dynamic Odyssey', 'Shaun', 'skamesiepo@gmail.com', 't', 2, '2024-04-20', 't', '', '2024-04-20 20:06:01', 3, 0, 0),
(2, 1, 'Billboard', 'Erastus', 'erastusmatheus3@gmail.com', 't', 2, '2024-04-20', 't', '', '2024-04-20 22:10:10', 5, 0, 0),
(3, 1, 'Youtube', 'Revaldo', 'rgertze@gmail.com', 't', 7, '2024-04-21', 't', '', '2024-04-20 22:04:50', 6, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rv_database_action`
--

CREATE TABLE `rv_database_action` (
  `database_action_id` int(10) UNSIGNED NOT NULL,
  `upgrade_action_id` int(10) UNSIGNED DEFAULT 0,
  `schema_name` varchar(64) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `timing` int(2) NOT NULL,
  `action` int(2) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `tablename` varchar(64) DEFAULT NULL,
  `tablename_backup` varchar(64) DEFAULT NULL,
  `table_backup_schema` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_database_action`
--

INSERT INTO `rv_database_action` (`database_action_id`, `upgrade_action_id`, `schema_name`, `version`, `timing`, `action`, `info1`, `info2`, `tablename`, `tablename_backup`, `table_backup_schema`, `updated`) VALUES
(1, 20, 'oxDeliveryDataPrepare', 2, 0, 59, 'CREATE SUCCEEDED', NULL, 'data_bkt_c', NULL, NULL, '2024-04-20 19:17:43'),
(2, 20, 'oxDeliveryDataPrepare', 2, 0, 59, 'CREATE SUCCEEDED', NULL, 'data_bkt_m', NULL, NULL, '2024-04-20 19:17:43'),
(3, 20, 'oxDeliveryDataPrepare', 2, 0, 59, 'CREATE SUCCEEDED', NULL, 'data_bkt_r', NULL, NULL, '2024-04-20 19:17:43'),
(4, 20, 'oxDeliveryDataPrepare', 2, 0, 59, 'CREATE SUCCEEDED', NULL, 'data_bkt_a', NULL, NULL, '2024-04-20 19:17:43'),
(5, 20, 'oxDeliveryDataPrepare', 2, 0, 59, 'CREATE SUCCEEDED', NULL, 'data_bkt_a_var', NULL, NULL, '2024-04-20 19:17:43'),
(6, 26, 'vastbannertypehtml', 13, 0, 59, 'CREATE SUCCEEDED', NULL, 'banner_vast_element', NULL, NULL, '2024-04-20 19:17:46'),
(7, 26, 'vastbannertypehtml', 13, 0, 59, 'CREATE SUCCEEDED', NULL, 'data_bkt_vast_e', NULL, NULL, '2024-04-20 19:17:46'),
(8, 26, 'vastbannertypehtml', 13, 0, 59, 'CREATE SUCCEEDED', NULL, 'stats_vast', NULL, NULL, '2024-04-20 19:17:46'),
(9, 35, 'tables_apVideo', 6, 0, 59, 'CREATE SUCCEEDED', NULL, 'ext_ap_video', NULL, NULL, '2024-04-20 19:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_bkt_a`
--

CREATE TABLE `rv_data_bkt_a` (
  `server_conv_id` bigint(20) NOT NULL,
  `server_ip` varchar(16) NOT NULL DEFAULT '',
  `tracker_id` mediumint(9) NOT NULL,
  `date_time` datetime NOT NULL,
  `action_date_time` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '',
  `action` int(10) DEFAULT NULL,
  `window` int(10) DEFAULT NULL,
  `status` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_bkt_a_var`
--

CREATE TABLE `rv_data_bkt_a_var` (
  `server_conv_id` bigint(20) NOT NULL,
  `server_ip` varchar(16) NOT NULL DEFAULT '',
  `tracker_variable_id` mediumint(9) NOT NULL,
  `value` text DEFAULT NULL,
  `date_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_bkt_c`
--

CREATE TABLE `rv_data_bkt_c` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_bkt_m`
--

CREATE TABLE `rv_data_bkt_m` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_bkt_r`
--

CREATE TABLE `rv_data_bkt_r` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_bkt_vast_e`
--

CREATE TABLE `rv_data_bkt_vast_e` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(20) NOT NULL,
  `zone_id` mediumint(20) NOT NULL,
  `vast_event_id` mediumint(20) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_intermediate_ad`
--

CREATE TABLE `rv_data_intermediate_ad` (
  `data_intermediate_ad_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL,
  `operation_interval` int(10) UNSIGNED NOT NULL,
  `operation_interval_id` int(10) UNSIGNED NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `ad_id` int(10) UNSIGNED NOT NULL,
  `creative_id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `requests` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `impressions` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `clicks` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `conversions` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_basket_value` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `total_num_items` int(11) NOT NULL DEFAULT 0,
  `updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_intermediate_ad_connection`
--

CREATE TABLE `rv_data_intermediate_ad_connection` (
  `data_intermediate_ad_connection_id` bigint(20) NOT NULL,
  `server_raw_ip` varchar(16) NOT NULL DEFAULT '',
  `server_raw_tracker_impression_id` bigint(20) NOT NULL,
  `viewer_id` varchar(32) DEFAULT NULL,
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `tracker_date_time` datetime NOT NULL,
  `connection_date_time` datetime DEFAULT NULL,
  `tracker_id` int(10) UNSIGNED NOT NULL,
  `ad_id` int(10) UNSIGNED NOT NULL,
  `creative_id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `tracker_channel` varchar(255) DEFAULT NULL,
  `connection_channel` varchar(255) DEFAULT NULL,
  `tracker_channel_ids` varchar(64) DEFAULT NULL,
  `connection_channel_ids` varchar(64) DEFAULT NULL,
  `tracker_language` varchar(13) DEFAULT NULL,
  `connection_language` varchar(13) DEFAULT NULL,
  `tracker_ip_address` varchar(16) DEFAULT NULL,
  `connection_ip_address` varchar(16) DEFAULT NULL,
  `tracker_host_name` varchar(255) DEFAULT NULL,
  `connection_host_name` varchar(255) DEFAULT NULL,
  `tracker_country` char(2) DEFAULT NULL,
  `connection_country` char(2) DEFAULT NULL,
  `tracker_https` int(10) UNSIGNED DEFAULT NULL,
  `connection_https` int(10) UNSIGNED DEFAULT NULL,
  `tracker_domain` varchar(255) DEFAULT NULL,
  `connection_domain` varchar(255) DEFAULT NULL,
  `tracker_page` varchar(255) DEFAULT NULL,
  `connection_page` varchar(255) DEFAULT NULL,
  `tracker_query` varchar(255) DEFAULT NULL,
  `connection_query` varchar(255) DEFAULT NULL,
  `tracker_referer` varchar(255) DEFAULT NULL,
  `connection_referer` varchar(255) DEFAULT NULL,
  `tracker_search_term` varchar(255) DEFAULT NULL,
  `connection_search_term` varchar(255) DEFAULT NULL,
  `tracker_user_agent` varchar(255) DEFAULT NULL,
  `connection_user_agent` varchar(255) DEFAULT NULL,
  `tracker_os` varchar(32) DEFAULT NULL,
  `connection_os` varchar(32) DEFAULT NULL,
  `tracker_browser` varchar(32) DEFAULT NULL,
  `connection_browser` varchar(32) DEFAULT NULL,
  `connection_action` int(10) UNSIGNED DEFAULT NULL,
  `connection_window` int(10) UNSIGNED DEFAULT NULL,
  `connection_status` int(10) UNSIGNED NOT NULL DEFAULT 4,
  `inside_window` tinyint(1) NOT NULL DEFAULT 0,
  `comments` text DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_intermediate_ad_variable_value`
--

CREATE TABLE `rv_data_intermediate_ad_variable_value` (
  `data_intermediate_ad_variable_value_id` bigint(20) NOT NULL,
  `data_intermediate_ad_connection_id` bigint(20) NOT NULL,
  `tracker_variable_id` int(11) NOT NULL,
  `value` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_raw_ad_click`
--

CREATE TABLE `rv_data_raw_ad_click` (
  `viewer_id` varchar(32) DEFAULT NULL,
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) UNSIGNED NOT NULL,
  `creative_id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `channel_ids` varchar(64) DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `https` tinyint(1) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `search_term` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `browser` varchar(32) DEFAULT NULL,
  `max_https` tinyint(1) DEFAULT NULL,
  `geo_region` varchar(50) DEFAULT NULL,
  `geo_city` varchar(50) DEFAULT NULL,
  `geo_postal_code` varchar(10) DEFAULT NULL,
  `geo_latitude` decimal(8,4) DEFAULT NULL,
  `geo_longitude` decimal(8,4) DEFAULT NULL,
  `geo_dma_code` varchar(50) DEFAULT NULL,
  `geo_area_code` varchar(50) DEFAULT NULL,
  `geo_organisation` varchar(50) DEFAULT NULL,
  `geo_netspeed` varchar(20) DEFAULT NULL,
  `geo_continent` varchar(13) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_raw_ad_impression`
--

CREATE TABLE `rv_data_raw_ad_impression` (
  `viewer_id` varchar(32) DEFAULT NULL,
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) UNSIGNED NOT NULL,
  `creative_id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `channel_ids` varchar(64) DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `https` tinyint(1) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `search_term` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `browser` varchar(32) DEFAULT NULL,
  `max_https` tinyint(1) DEFAULT NULL,
  `geo_region` varchar(50) DEFAULT NULL,
  `geo_city` varchar(50) DEFAULT NULL,
  `geo_postal_code` varchar(10) DEFAULT NULL,
  `geo_latitude` decimal(8,4) DEFAULT NULL,
  `geo_longitude` decimal(8,4) DEFAULT NULL,
  `geo_dma_code` varchar(50) DEFAULT NULL,
  `geo_area_code` varchar(50) DEFAULT NULL,
  `geo_organisation` varchar(50) DEFAULT NULL,
  `geo_netspeed` varchar(20) DEFAULT NULL,
  `geo_continent` varchar(13) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_raw_ad_request`
--

CREATE TABLE `rv_data_raw_ad_request` (
  `viewer_id` varchar(32) DEFAULT NULL,
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) UNSIGNED NOT NULL,
  `creative_id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `channel_ids` varchar(64) DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `https` tinyint(1) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `search_term` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `browser` varchar(32) DEFAULT NULL,
  `max_https` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_raw_tracker_impression`
--

CREATE TABLE `rv_data_raw_tracker_impression` (
  `server_raw_tracker_impression_id` bigint(20) NOT NULL,
  `server_raw_ip` varchar(16) NOT NULL DEFAULT '',
  `viewer_id` varchar(32) NOT NULL DEFAULT '',
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `tracker_id` int(10) UNSIGNED NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `channel_ids` varchar(64) DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `https` int(10) UNSIGNED DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `search_term` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `browser` varchar(32) DEFAULT NULL,
  `max_https` int(10) UNSIGNED DEFAULT NULL,
  `geo_region` varchar(50) DEFAULT NULL,
  `geo_city` varchar(50) DEFAULT NULL,
  `geo_postal_code` varchar(10) DEFAULT NULL,
  `geo_latitude` decimal(8,4) DEFAULT NULL,
  `geo_longitude` decimal(8,4) DEFAULT NULL,
  `geo_dma_code` varchar(50) DEFAULT NULL,
  `geo_area_code` varchar(50) DEFAULT NULL,
  `geo_organisation` varchar(50) DEFAULT NULL,
  `geo_netspeed` varchar(20) DEFAULT NULL,
  `geo_continent` varchar(13) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_raw_tracker_variable_value`
--

CREATE TABLE `rv_data_raw_tracker_variable_value` (
  `server_raw_tracker_impression_id` bigint(20) NOT NULL,
  `server_raw_ip` varchar(16) NOT NULL DEFAULT '',
  `tracker_variable_id` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_summary_ad_hourly`
--

CREATE TABLE `rv_data_summary_ad_hourly` (
  `data_summary_ad_hourly_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) UNSIGNED NOT NULL,
  `creative_id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `requests` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `impressions` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `clicks` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `conversions` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_basket_value` decimal(10,4) DEFAULT NULL,
  `total_num_items` int(11) DEFAULT NULL,
  `total_revenue` decimal(10,4) DEFAULT NULL,
  `total_cost` decimal(10,4) DEFAULT NULL,
  `total_techcost` decimal(10,4) DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_summary_ad_zone_assoc`
--

CREATE TABLE `rv_data_summary_ad_zone_assoc` (
  `data_summary_ad_zone_assoc_id` bigint(20) NOT NULL,
  `operation_interval` int(10) UNSIGNED NOT NULL,
  `operation_interval_id` int(10) UNSIGNED NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `ad_id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `required_impressions` int(10) UNSIGNED NOT NULL,
  `requested_impressions` int(10) UNSIGNED NOT NULL,
  `priority` double NOT NULL,
  `priority_factor` double DEFAULT NULL,
  `priority_factor_limited` smallint(6) NOT NULL DEFAULT 0,
  `past_zone_traffic_fraction` double DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `expired` datetime DEFAULT NULL,
  `expired_by` int(10) UNSIGNED DEFAULT NULL,
  `to_be_delivered` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_summary_channel_daily`
--

CREATE TABLE `rv_data_summary_channel_daily` (
  `data_summary_channel_daily_id` bigint(20) NOT NULL,
  `day` date NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `forecast_impressions` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `actual_impressions` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_data_summary_zone_impression_history`
--

CREATE TABLE `rv_data_summary_zone_impression_history` (
  `data_summary_zone_impression_history_id` bigint(20) NOT NULL,
  `operation_interval` int(10) UNSIGNED NOT NULL,
  `operation_interval_id` int(10) UNSIGNED NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `forecast_impressions` int(10) UNSIGNED DEFAULT NULL,
  `actual_impressions` int(10) UNSIGNED DEFAULT NULL,
  `est` smallint(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_ext_ap_video`
--

CREATE TABLE `rv_ext_ap_video` (
  `ad_id` mediumint(9) NOT NULL,
  `alt_media` text NOT NULL,
  `impression_trackers` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_images`
--

CREATE TABLE `rv_images` (
  `filename` varchar(128) NOT NULL DEFAULT '',
  `contents` longblob NOT NULL,
  `t_stamp` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_log_maintenance_forecasting`
--

CREATE TABLE `rv_log_maintenance_forecasting` (
  `log_maintenance_forecasting_id` int(11) NOT NULL,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `operation_interval` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `updated_to` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_log_maintenance_priority`
--

CREATE TABLE `rv_log_maintenance_priority` (
  `log_maintenance_priority_id` int(11) NOT NULL,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `operation_interval` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `run_type` tinyint(3) UNSIGNED NOT NULL,
  `updated_to` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_log_maintenance_priority`
--

INSERT INTO `rv_log_maintenance_priority` (`log_maintenance_priority_id`, `start_run`, `end_run`, `operation_interval`, `duration`, `run_type`, `updated_to`) VALUES
(1, '2024-04-20 22:32:50', '2024-04-20 22:32:50', 60, 0, 1, NULL),
(2, '2024-04-20 22:32:50', '2024-04-20 22:32:50', 60, 0, 2, NULL),
(3, '2024-04-20 22:32:50', '2024-04-20 22:32:50', 60, 0, 2, NULL),
(4, '2024-04-20 23:15:20', '2024-04-20 23:15:21', 60, 1, 1, NULL),
(5, '2024-04-20 23:15:21', '2024-04-20 23:15:21', 60, 0, 2, NULL),
(6, '2024-04-20 23:15:21', '2024-04-20 23:15:21', 60, 0, 2, NULL),
(7, '2024-04-21 00:17:07', '2024-04-21 00:17:08', 60, 1, 1, NULL),
(8, '2024-04-21 00:17:08', '2024-04-21 00:17:08', 60, 0, 2, NULL),
(9, '2024-04-21 00:17:08', '2024-04-21 00:17:08', 60, 0, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rv_log_maintenance_statistics`
--

CREATE TABLE `rv_log_maintenance_statistics` (
  `log_maintenance_statistics_id` int(11) NOT NULL,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `adserver_run_type` int(2) DEFAULT NULL,
  `search_run_type` int(2) DEFAULT NULL,
  `tracker_run_type` int(2) DEFAULT NULL,
  `updated_to` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_password_recovery`
--

CREATE TABLE `rv_password_recovery` (
  `user_type` varchar(64) NOT NULL DEFAULT '',
  `user_id` int(10) NOT NULL,
  `recovery_id` varchar(64) NOT NULL DEFAULT '',
  `updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_placement_zone_assoc`
--

CREATE TABLE `rv_placement_zone_assoc` (
  `placement_zone_assoc_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) DEFAULT NULL,
  `placement_id` mediumint(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_placement_zone_assoc`
--

INSERT INTO `rv_placement_zone_assoc` (`placement_zone_assoc_id`, `zone_id`, `placement_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rv_preferences`
--

CREATE TABLE `rv_preferences` (
  `preference_id` mediumint(9) NOT NULL,
  `preference_name` varchar(64) NOT NULL DEFAULT '',
  `account_type` varchar(16) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_preferences`
--

INSERT INTO `rv_preferences` (`preference_id`, `preference_name`, `account_type`) VALUES
(1, 'default_banner_image_url', 'TRAFFICKER'),
(2, 'default_banner_destination_url', 'TRAFFICKER'),
(3, 'default_banner_weight', 'ADVERTISER'),
(4, 'default_campaign_weight', 'ADVERTISER'),
(5, 'warn_email_admin', 'ADMIN'),
(6, 'warn_email_admin_impression_limit', 'ADMIN'),
(7, 'warn_email_admin_day_limit', 'ADMIN'),
(8, 'campaign_ecpm_enabled', 'MANAGER'),
(9, 'contract_ecpm_enabled', 'MANAGER'),
(10, 'warn_email_manager', 'MANAGER'),
(11, 'warn_email_manager_impression_limit', 'MANAGER'),
(12, 'warn_email_manager_day_limit', 'MANAGER'),
(13, 'warn_email_advertiser', 'ADVERTISER'),
(14, 'warn_email_advertiser_impression_limit', 'ADVERTISER'),
(15, 'warn_email_advertiser_day_limit', 'ADVERTISER'),
(16, 'timezone', 'MANAGER'),
(17, 'tracker_default_status', 'ADVERTISER'),
(18, 'tracker_default_type', 'ADVERTISER'),
(19, 'tracker_link_campaigns', 'ADVERTISER'),
(20, 'ui_show_campaign_info', 'ADVERTISER'),
(21, 'ui_show_banner_info', 'ADVERTISER'),
(22, 'ui_show_campaign_preview', 'ADVERTISER'),
(23, 'ui_show_banner_html', 'ADVERTISER'),
(24, 'ui_show_banner_preview', 'ADVERTISER'),
(25, 'ui_html_wyswyg_enabled', ''),
(26, 'ui_hide_inactive', ''),
(27, 'ui_show_matching_banners', 'TRAFFICKER'),
(28, 'ui_show_matching_banners_parents', 'TRAFFICKER'),
(29, 'ui_show_entity_id', ''),
(30, 'ui_novice_user', ''),
(31, 'ui_week_start_day', ''),
(32, 'ui_percentage_decimals', ''),
(33, 'ui_column_revenue', 'MANAGER'),
(34, 'ui_column_revenue_label', 'MANAGER'),
(35, 'ui_column_revenue_rank', 'MANAGER'),
(36, 'ui_column_bv', 'MANAGER'),
(37, 'ui_column_bv_label', 'MANAGER'),
(38, 'ui_column_bv_rank', 'MANAGER'),
(39, 'ui_column_num_items', 'MANAGER'),
(40, 'ui_column_num_items_label', 'MANAGER'),
(41, 'ui_column_num_items_rank', 'MANAGER'),
(42, 'ui_column_revcpc', 'MANAGER'),
(43, 'ui_column_revcpc_label', 'MANAGER'),
(44, 'ui_column_revcpc_rank', 'MANAGER'),
(45, 'ui_column_erpm', 'MANAGER'),
(46, 'ui_column_erpm_label', 'MANAGER'),
(47, 'ui_column_erpm_rank', 'MANAGER'),
(48, 'ui_column_erpc', 'MANAGER'),
(49, 'ui_column_erpc_label', 'MANAGER'),
(50, 'ui_column_erpc_rank', 'MANAGER'),
(51, 'ui_column_erps', 'MANAGER'),
(52, 'ui_column_erps_label', 'MANAGER'),
(53, 'ui_column_erps_rank', 'MANAGER'),
(54, 'ui_column_eipm', 'MANAGER'),
(55, 'ui_column_eipm_label', 'MANAGER'),
(56, 'ui_column_eipm_rank', 'MANAGER'),
(57, 'ui_column_eipc', 'MANAGER'),
(58, 'ui_column_eipc_label', 'MANAGER'),
(59, 'ui_column_eipc_rank', 'MANAGER'),
(60, 'ui_column_eips', 'MANAGER'),
(61, 'ui_column_eips_label', 'MANAGER'),
(62, 'ui_column_eips_rank', 'MANAGER'),
(63, 'ui_column_ecpm', 'MANAGER'),
(64, 'ui_column_ecpm_label', 'MANAGER'),
(65, 'ui_column_ecpm_rank', 'MANAGER'),
(66, 'ui_column_ecpc', 'MANAGER'),
(67, 'ui_column_ecpc_label', 'MANAGER'),
(68, 'ui_column_ecpc_rank', 'MANAGER'),
(69, 'ui_column_ecps', 'MANAGER'),
(70, 'ui_column_ecps_label', 'MANAGER'),
(71, 'ui_column_ecps_rank', 'MANAGER'),
(72, 'ui_column_id', 'MANAGER'),
(73, 'ui_column_id_label', 'MANAGER'),
(74, 'ui_column_id_rank', 'MANAGER'),
(75, 'ui_column_requests', 'MANAGER'),
(76, 'ui_column_requests_label', 'MANAGER'),
(77, 'ui_column_requests_rank', 'MANAGER'),
(78, 'ui_column_impressions', 'MANAGER'),
(79, 'ui_column_impressions_label', 'MANAGER'),
(80, 'ui_column_impressions_rank', 'MANAGER'),
(81, 'ui_column_clicks', 'MANAGER'),
(82, 'ui_column_clicks_label', 'MANAGER'),
(83, 'ui_column_clicks_rank', 'MANAGER'),
(84, 'ui_column_ctr', 'MANAGER'),
(85, 'ui_column_ctr_label', 'MANAGER'),
(86, 'ui_column_ctr_rank', 'MANAGER'),
(87, 'ui_column_conversions', 'MANAGER'),
(88, 'ui_column_conversions_label', 'MANAGER'),
(89, 'ui_column_conversions_rank', 'MANAGER'),
(90, 'ui_column_conversions_pending', 'MANAGER'),
(91, 'ui_column_conversions_pending_label', 'MANAGER'),
(92, 'ui_column_conversions_pending_rank', 'MANAGER'),
(93, 'ui_column_sr_views', 'MANAGER'),
(94, 'ui_column_sr_views_label', 'MANAGER'),
(95, 'ui_column_sr_views_rank', 'MANAGER'),
(96, 'ui_column_sr_clicks', 'MANAGER'),
(97, 'ui_column_sr_clicks_label', 'MANAGER'),
(98, 'ui_column_sr_clicks_rank', 'MANAGER');

-- --------------------------------------------------------

--
-- Table structure for table `rv_session`
--

CREATE TABLE `rv_session` (
  `sessionid` varchar(32) NOT NULL DEFAULT '',
  `sessiondata` text NOT NULL,
  `lastused` datetime DEFAULT NULL,
  `user_id` mediumint(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_session`
--

INSERT INTO `rv_session` (`sessionid`, `sessiondata`, `lastused`, `user_id`) VALUES
('1c03d631a60f1b515c8b57af4a95724e', 'a:11:{s:13:\"__authentic__\";b:1;s:5:\"token\";s:32:\"51e345dd214f5838a96d67cbb36d1f2a\";s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:14:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:25:\"erastusmatheus3@gmail.com\";s:8:\"username\";s:9:\"asd_admin\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2024-04-20 19:17:19\";s:15:\"date_last_login\";s:19:\"2024-04-20 19:30:06\";s:13:\"email_updated\";s:19:\"2024-04-20 19:17:19\";s:8:\"is_admin\";b:1;s:15:\"unsafe_password\";b:0;}s:8:\"aAccount\";a:5:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:17:\"notificationQueue\";a:0:{}s:18:\"security_check_ver\";s:5:\"5.5.2\";s:5:\"prefs\";a:15:{s:7:\"GLOBALS\";a:7:{s:13:\"period_preset\";s:5:\"today\";s:12:\"period_start\";s:10:\"2024-04-20\";s:10:\"period_end\";s:10:\"2024-04-20\";s:20:\"report_period_preset\";s:10:\"last_month\";s:23:\"report_scope_advertiser\";s:3:\"all\";s:22:\"report_scope_publisher\";s:3:\"all\";s:15:\"report_campaign\";s:1:\"1\";}s:9:\"stats.php\";a:5:{s:9:\"listorder\";s:4:\"name\";s:14:\"orderdirection\";s:2:\"up\";s:10:\"startlevel\";i:0;s:5:\"nodes\";s:0:\"\";s:12:\"hideinactive\";b:0;}s:20:\"advertiser-index.php\";a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}s:17:\"website-index.php\";a:2:{s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}s:16:\"agency-index.php\";a:4:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";s:5:\"nodes\";s:0:\"\";}s:18:\"inventory_entities\";a:1:{i:1;a:3:{s:8:\"clientid\";s:1:\"2\";s:10:\"campaignid\";a:3:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:11:\"affiliateid\";s:1:\"1\";}}s:24:\"advertiser-campaigns.php\";a:3:{i:1;a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}i:2;a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}i:3;a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}}s:20:\"campaign-banners.php\";a:4:{i:-1;a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}i:1;a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}i:2;a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}i:3;a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}}s:23:\"advertiser-trackers.php\";a:2:{s:9:\"listorder\";s:4:\"name\";s:14:\"orderdirection\";s:4:\"down\";}s:19:\"affiliate-zones.php\";a:2:{s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}s:16:\"zone-include.php\";a:6:{s:12:\"hideinactive\";b:0;s:11:\"showbanners\";b:1;s:13:\"showcampaigns\";b:0;s:9:\"listorder\";s:4:\"name\";s:14:\"orderdirection\";s:2:\"up\";s:4:\"view\";s:9:\"placement\";}s:21:\"campaign-trackers.php\";a:2:{s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}s:21:\"tracker-campaigns.php\";a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}s:21:\"tracker-variables.php\";a:2:{s:9:\"variables\";a:0:{}s:9:\"trackerid\";s:1:\"1\";}s:17:\"userlog-index.php\";a:7:{s:12:\"advertiserId\";i:0;s:10:\"campaignId\";i:0;s:11:\"publisherId\";i:0;s:6:\"zoneId\";i:0;s:13:\"period_preset\";s:10:\"all_events\";s:9:\"listorder\";s:7:\"updated\";s:14:\"orderdirection\";s:2:\"up\";}}s:9:\"messageId\";i:1713641611;s:12:\"messageQueue\";a:0:{}s:20:\"recentlyUsedAccounts\";a:2:{s:2:\"a2\";s:1:\"2\";s:2:\"a1\";s:1:\"1\";}s:15:\"maint_update_js\";b:1;s:9:\"mpe_token\";N;}', '2024-04-20 22:19:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rv_stats_vast`
--

CREATE TABLE `rv_stats_vast` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(20) NOT NULL,
  `zone_id` mediumint(20) NOT NULL,
  `vast_event_id` mediumint(20) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_targetstats`
--

CREATE TABLE `rv_targetstats` (
  `day` date NOT NULL DEFAULT '0000-00-00',
  `campaignid` mediumint(9) NOT NULL DEFAULT 0,
  `target` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `modified` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_trackers`
--

CREATE TABLE `rv_trackers` (
  `trackerid` mediumint(9) NOT NULL,
  `trackername` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `clientid` mediumint(9) NOT NULL DEFAULT 0,
  `viewwindow` mediumint(9) NOT NULL DEFAULT 0,
  `clickwindow` mediumint(9) NOT NULL DEFAULT 0,
  `blockwindow` mediumint(9) NOT NULL DEFAULT 0,
  `status` smallint(1) UNSIGNED NOT NULL DEFAULT 4,
  `type` smallint(1) UNSIGNED NOT NULL DEFAULT 1,
  `linkcampaigns` enum('t','f') NOT NULL DEFAULT 'f',
  `variablemethod` enum('default','js','dom','custom') NOT NULL DEFAULT 'default',
  `appendcode` text NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_trackers`
--

INSERT INTO `rv_trackers` (`trackerid`, `trackername`, `description`, `clientid`, `viewwindow`, `clickwindow`, `blockwindow`, `status`, `type`, `linkcampaigns`, `variablemethod`, `appendcode`, `updated`) VALUES
(1, 'Dynamic Odyssey Tracker', '', 1, 0, 0, 0, 2, 2, 'f', 'default', '', '2024-04-20 20:36:05'),
(2, 'Youtube tracker', 'Tracking Conversions', 3, 0, 0, 0, 4, 3, 'f', 'default', '', '2024-04-20 22:05:54'),
(3, 'Billboard Tracker', 'Tracking Sign ups', 2, 0, 0, 0, 4, 3, 'f', 'default', '', '2024-04-20 22:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `rv_tracker_append`
--

CREATE TABLE `rv_tracker_append` (
  `tracker_append_id` int(11) NOT NULL,
  `tracker_id` mediumint(9) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  `tagcode` text NOT NULL,
  `paused` enum('t','f') NOT NULL DEFAULT 'f',
  `autotrack` enum('t','f') NOT NULL DEFAULT 'f'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_upgrade_action`
--

CREATE TABLE `rv_upgrade_action` (
  `upgrade_action_id` int(10) UNSIGNED NOT NULL,
  `upgrade_name` varchar(128) DEFAULT NULL,
  `version_to` varchar(64) NOT NULL DEFAULT '',
  `version_from` varchar(64) DEFAULT NULL,
  `action` int(2) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `logfile` varchar(128) DEFAULT NULL,
  `confbackup` varchar(128) DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_upgrade_action`
--

INSERT INTO `rv_upgrade_action` (`upgrade_action_id`, `upgrade_name`, `version_to`, `version_from`, `action`, `description`, `logfile`, `confbackup`, `updated`) VALUES
(1, 'install_5.5.2', '5.5.2', '0', 1, 'UPGRADE_COMPLETE', 'install.log', NULL, '2024-04-20 21:16:12'),
(2, 'install_openXBannerTypes', '1.6.1', '0', 4, 'PACKAGE INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:21'),
(3, 'install_oxHtml', '1.6.1', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:21'),
(4, 'install_oxText', '1.6.1', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:21'),
(5, 'install_openXDeliveryLimitations', '5.0.8', '0', 4, 'PACKAGE INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:24'),
(6, 'install_Client', '5.0.8', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:24'),
(7, 'install_Geo', '5.0.8', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:24'),
(8, 'install_Site', '5.0.8', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:24'),
(9, 'install_Time', '5.0.8', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:24'),
(10, 'install_openXReports', '1.6.2', '0', 4, 'PACKAGE INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:34'),
(11, 'install_oxReportsStandard', '1.6.2', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:34'),
(12, 'install_oxReportsAdmin', '1.6.2', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:34'),
(13, 'install_openXDeliveryCacheStore', '1.5.0', '0', 4, 'PACKAGE INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:37'),
(14, 'install_oxCacheFile', '1.5.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:37'),
(15, 'install_oxMemcached', '1.5.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:37'),
(16, 'install_openXInvocationTags', '1.8.1', '0', 4, 'PACKAGE INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:40'),
(17, 'install_oxInvocationTags', '1.8.1', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:40'),
(18, 'install_openXDeliveryLog', '1.5.0', '0', 4, 'PACKAGE INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:43'),
(19, 'install_oxDeliveryDataPrepare', '1.5.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:43'),
(20, 'install_oxLogClick', '1.5.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:43'),
(21, 'install_oxLogConversion', '1.5.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:43'),
(22, 'install_oxLogImpression', '1.5.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:43'),
(23, 'install_oxLogRequest', '1.5.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:43'),
(24, 'install_openXVideoAds', '1.14.0', '0', 4, 'PACKAGE INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:46'),
(25, 'install_vastInlineBannerTypeHtml', '1.14.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:46'),
(26, 'install_vastOverlayBannerTypeHtml', '1.14.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:46'),
(27, 'install_oxLogVast', '1.14.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:46'),
(28, 'install_vastServeVideoPlayer', '1.14.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:46'),
(29, 'install_videoReport', '1.14.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:46'),
(30, 'install_reviveMaxMindGeoIP2', '1.2.0', '0', 4, 'PACKAGE INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:49'),
(31, 'install_rvMaxMindGeoIP2', '1.2.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:49'),
(32, 'install_rvMaxMindGeoIP2Maintenance', '1.2.0', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:49'),
(33, 'install_apVideo', '1.7.5', '0', 4, 'PACKAGE INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:56'),
(34, 'install_apVideo', '1.7.5', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:56'),
(35, 'install_apVideoUI', '1.7.5', '0', 4, 'PLUGIN INSTALL COMPLETE', 'plugins.log', NULL, '2024-04-20 19:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `rv_userlog`
--

CREATE TABLE `rv_userlog` (
  `userlogid` mediumint(9) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `usertype` tinyint(4) NOT NULL DEFAULT 0,
  `userid` mediumint(9) NOT NULL DEFAULT 0,
  `action` mediumint(9) NOT NULL DEFAULT 0,
  `object` mediumint(9) DEFAULT NULL,
  `details` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_users`
--

CREATE TABLE `rv_users` (
  `user_id` mediumint(9) NOT NULL,
  `contact_name` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(64) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `language` varchar(5) DEFAULT NULL,
  `default_account_id` mediumint(9) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `sso_user_id` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_last_login` datetime DEFAULT NULL,
  `email_updated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_users`
--

INSERT INTO `rv_users` (`user_id`, `contact_name`, `email_address`, `username`, `password`, `language`, `default_account_id`, `comments`, `active`, `sso_user_id`, `date_created`, `date_last_login`, `email_updated`) VALUES
(1, 'Administrator', 'erastusmatheus3@gmail.com', 'asd_admin', '$2y$10$QyFu/.go3SaxE7/IugDyle0zhuGpQKoH0Yx5hbloVpmrPmzOxaAv2', 'en', 2, NULL, 1, NULL, '2024-04-20 19:17:19', '2024-04-20 19:30:06', '2024-04-20 19:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `rv_variables`
--

CREATE TABLE `rv_variables` (
  `variableid` mediumint(9) UNSIGNED NOT NULL,
  `trackerid` mediumint(9) NOT NULL DEFAULT 0,
  `name` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) DEFAULT NULL,
  `datatype` enum('numeric','string','date') NOT NULL DEFAULT 'numeric',
  `purpose` enum('basket_value','num_items','post_code') DEFAULT NULL,
  `reject_if_empty` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_unique` int(11) NOT NULL DEFAULT 0,
  `unique_window` int(11) NOT NULL DEFAULT 0,
  `variablecode` varchar(255) NOT NULL DEFAULT '',
  `hidden` enum('t','f') NOT NULL DEFAULT 'f',
  `updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_variable_publisher`
--

CREATE TABLE `rv_variable_publisher` (
  `variable_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rv_zones`
--

CREATE TABLE `rv_zones` (
  `zoneid` mediumint(9) NOT NULL,
  `affiliateid` mediumint(9) DEFAULT NULL,
  `zonename` varchar(245) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `delivery` smallint(6) NOT NULL DEFAULT 0,
  `zonetype` smallint(6) NOT NULL DEFAULT 0,
  `category` text NOT NULL,
  `width` smallint(6) NOT NULL DEFAULT 0,
  `height` smallint(6) NOT NULL DEFAULT 0,
  `ad_selection` text NOT NULL,
  `chain` text NOT NULL,
  `prepend` text NOT NULL,
  `append` text NOT NULL,
  `appendtype` tinyint(4) NOT NULL DEFAULT 0,
  `forceappend` enum('t','f') DEFAULT 'f',
  `inventory_forecast_type` smallint(6) NOT NULL DEFAULT 0,
  `comments` text DEFAULT NULL,
  `cost` decimal(10,4) DEFAULT NULL,
  `cost_type` smallint(6) DEFAULT NULL,
  `cost_variable_id` varchar(255) DEFAULT NULL,
  `technology_cost` decimal(10,4) DEFAULT NULL,
  `technology_cost_type` smallint(6) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `block` int(11) NOT NULL DEFAULT 0,
  `capping` int(11) NOT NULL DEFAULT 0,
  `session_capping` int(11) NOT NULL DEFAULT 0,
  `what` text NOT NULL,
  `rate` decimal(19,2) DEFAULT NULL,
  `pricing` varchar(50) NOT NULL DEFAULT 'CPM',
  `oac_category_id` int(11) DEFAULT NULL,
  `ext_adselection` varchar(255) DEFAULT NULL,
  `show_capped_no_cookie` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rv_zones`
--

INSERT INTO `rv_zones` (`zoneid`, `affiliateid`, `zonename`, `description`, `delivery`, `zonetype`, `category`, `width`, `height`, `ad_selection`, `chain`, `prepend`, `append`, `appendtype`, `forceappend`, `inventory_forecast_type`, `comments`, `cost`, `cost_type`, `cost_variable_id`, `technology_cost`, `technology_cost_type`, `updated`, `block`, `capping`, `session_capping`, `what`, `rate`, `pricing`, `oac_category_id`, `ext_adselection`, `show_capped_no_cookie`) VALUES
(1, 1, 'dynamic-odyssey.com/', 'Text-Ads', 0, 3, '', -1, -1, '', '', '', '', 0, 'f', 0, '', NULL, NULL, NULL, NULL, NULL, '2024-04-20 22:18:50', 0, 0, 0, '', NULL, 'CPM', NULL, NULL, 0),
(4, 2, 'Youtube Zone1', 'Youtube Z1', 6, 3, '', -3, -3, '', '', '', '', 0, 'f', 0, '', NULL, NULL, NULL, NULL, NULL, '2024-04-20 22:14:12', 0, 0, 0, '', NULL, 'CPM', NULL, NULL, 0),
(5, 3, 'www.billboard.com/ Zone1', 'Billboard Zone', 7, 3, '', -2, -2, '', '', '', '', 0, 'f', 0, '', NULL, NULL, NULL, NULL, NULL, '2024-04-20 22:18:37', 0, 0, 0, '', NULL, 'CPM', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rv_accounts`
--
ALTER TABLE `rv_accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `rv_accounts_account_type` (`account_type`);

--
-- Indexes for table `rv_account_preference_assoc`
--
ALTER TABLE `rv_account_preference_assoc`
  ADD PRIMARY KEY (`account_id`,`preference_id`);

--
-- Indexes for table `rv_account_user_assoc`
--
ALTER TABLE `rv_account_user_assoc`
  ADD PRIMARY KEY (`account_id`,`user_id`),
  ADD KEY `rv_account_user_assoc_user_id` (`user_id`);

--
-- Indexes for table `rv_account_user_permission_assoc`
--
ALTER TABLE `rv_account_user_permission_assoc`
  ADD PRIMARY KEY (`account_id`,`user_id`,`permission_id`);

--
-- Indexes for table `rv_acls`
--
ALTER TABLE `rv_acls`
  ADD UNIQUE KEY `rv_acls_bannerid_executionorder` (`bannerid`,`executionorder`),
  ADD KEY `rv_acls_bannerid` (`bannerid`);

--
-- Indexes for table `rv_acls_channel`
--
ALTER TABLE `rv_acls_channel`
  ADD UNIQUE KEY `rv_acls_channel_channelid_executionorder` (`channelid`,`executionorder`),
  ADD KEY `rv_acls_channel_channelid` (`channelid`);

--
-- Indexes for table `rv_ad_category_assoc`
--
ALTER TABLE `rv_ad_category_assoc`
  ADD PRIMARY KEY (`ad_category_assoc_id`);

--
-- Indexes for table `rv_ad_zone_assoc`
--
ALTER TABLE `rv_ad_zone_assoc`
  ADD PRIMARY KEY (`ad_zone_assoc_id`),
  ADD KEY `rv_ad_zone_assoc_zone_id` (`zone_id`),
  ADD KEY `rv_ad_zone_assoc_ad_id` (`ad_id`);

--
-- Indexes for table `rv_affiliates`
--
ALTER TABLE `rv_affiliates`
  ADD PRIMARY KEY (`affiliateid`),
  ADD UNIQUE KEY `rv_affiliates_account_id` (`account_id`),
  ADD KEY `rv_affiliates_agencyid` (`agencyid`);

--
-- Indexes for table `rv_affiliates_extra`
--
ALTER TABLE `rv_affiliates_extra`
  ADD PRIMARY KEY (`affiliateid`);

--
-- Indexes for table `rv_agency`
--
ALTER TABLE `rv_agency`
  ADD PRIMARY KEY (`agencyid`),
  ADD UNIQUE KEY `rv_agency_account_id` (`account_id`);

--
-- Indexes for table `rv_application_variable`
--
ALTER TABLE `rv_application_variable`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `rv_audit`
--
ALTER TABLE `rv_audit`
  ADD PRIMARY KEY (`auditid`),
  ADD KEY `rv_audit_parentid_contextid` (`parentid`,`contextid`),
  ADD KEY `rv_audit_updated` (`updated`),
  ADD KEY `rv_audit_usertype` (`usertype`),
  ADD KEY `rv_audit_username` (`username`),
  ADD KEY `rv_audit_context_actionid` (`context`,`actionid`),
  ADD KEY `rv_audit_account_id` (`account_id`),
  ADD KEY `rv_audit_advertiser_account_id` (`advertiser_account_id`),
  ADD KEY `rv_audit_website_account_id` (`website_account_id`);

--
-- Indexes for table `rv_banners`
--
ALTER TABLE `rv_banners`
  ADD PRIMARY KEY (`bannerid`),
  ADD KEY `rv_banners_campaignid` (`campaignid`);

--
-- Indexes for table `rv_banner_vast_element`
--
ALTER TABLE `rv_banner_vast_element`
  ADD KEY `rv_banner_vast_element_banner_vast_banner_vast_element_id` (`banner_vast_element_id`);

--
-- Indexes for table `rv_campaigns`
--
ALTER TABLE `rv_campaigns`
  ADD PRIMARY KEY (`campaignid`),
  ADD KEY `rv_campaigns_clientid` (`clientid`);

--
-- Indexes for table `rv_campaigns_trackers`
--
ALTER TABLE `rv_campaigns_trackers`
  ADD PRIMARY KEY (`campaign_trackerid`),
  ADD KEY `rv_campaigns_trackers_campaignid` (`campaignid`),
  ADD KEY `rv_campaigns_trackers_trackerid` (`trackerid`);

--
-- Indexes for table `rv_category`
--
ALTER TABLE `rv_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `rv_channel`
--
ALTER TABLE `rv_channel`
  ADD PRIMARY KEY (`channelid`);

--
-- Indexes for table `rv_clients`
--
ALTER TABLE `rv_clients`
  ADD PRIMARY KEY (`clientid`),
  ADD UNIQUE KEY `rv_clients_account_id` (`account_id`),
  ADD KEY `rv_clients_agencyid_type` (`agencyid`,`type`);

--
-- Indexes for table `rv_database_action`
--
ALTER TABLE `rv_database_action`
  ADD PRIMARY KEY (`database_action_id`),
  ADD KEY `rv_database_action_upgrade_action_id` (`upgrade_action_id`,`database_action_id`),
  ADD KEY `rv_database_action_schema_version_timing_action` (`schema_name`,`version`,`timing`,`action`),
  ADD KEY `rv_database_action_updated` (`updated`);

--
-- Indexes for table `rv_data_bkt_a`
--
ALTER TABLE `rv_data_bkt_a`
  ADD PRIMARY KEY (`server_conv_id`,`server_ip`);

--
-- Indexes for table `rv_data_bkt_a_var`
--
ALTER TABLE `rv_data_bkt_a_var`
  ADD PRIMARY KEY (`server_conv_id`,`server_ip`,`tracker_variable_id`);

--
-- Indexes for table `rv_data_bkt_c`
--
ALTER TABLE `rv_data_bkt_c`
  ADD PRIMARY KEY (`interval_start`,`creative_id`,`zone_id`);

--
-- Indexes for table `rv_data_bkt_m`
--
ALTER TABLE `rv_data_bkt_m`
  ADD PRIMARY KEY (`interval_start`,`creative_id`,`zone_id`);

--
-- Indexes for table `rv_data_bkt_r`
--
ALTER TABLE `rv_data_bkt_r`
  ADD PRIMARY KEY (`interval_start`,`creative_id`,`zone_id`);

--
-- Indexes for table `rv_data_bkt_vast_e`
--
ALTER TABLE `rv_data_bkt_vast_e`
  ADD PRIMARY KEY (`interval_start`,`creative_id`,`zone_id`,`vast_event_id`);

--
-- Indexes for table `rv_data_intermediate_ad`
--
ALTER TABLE `rv_data_intermediate_ad`
  ADD PRIMARY KEY (`data_intermediate_ad_id`),
  ADD KEY `rv_data_intermediate_ad_ad_id_date_time` (`ad_id`,`date_time`),
  ADD KEY `rv_data_intermediate_ad_zone_id_date_time` (`zone_id`,`date_time`),
  ADD KEY `rv_data_intermediate_ad_date_time` (`date_time`),
  ADD KEY `rv_data_intermediate_ad_interval_start` (`interval_start`);

--
-- Indexes for table `rv_data_intermediate_ad_connection`
--
ALTER TABLE `rv_data_intermediate_ad_connection`
  ADD PRIMARY KEY (`data_intermediate_ad_connection_id`),
  ADD KEY `rv_data_intermediate_ad_connection_tracker_date_time` (`tracker_date_time`),
  ADD KEY `rv_data_intermediate_ad_connection_tracker_id` (`tracker_id`),
  ADD KEY `rv_data_intermediate_ad_connection_ad_id` (`ad_id`),
  ADD KEY `rv_data_intermediate_ad_connection_zone_id` (`zone_id`),
  ADD KEY `rv_data_intermediate_ad_connection_viewer_id` (`viewer_id`);

--
-- Indexes for table `rv_data_intermediate_ad_variable_value`
--
ALTER TABLE `rv_data_intermediate_ad_variable_value`
  ADD PRIMARY KEY (`data_intermediate_ad_variable_value_id`),
  ADD KEY `rv_data_intermediate_ad_variable_value_data_intermediate_ad_con` (`data_intermediate_ad_connection_id`),
  ADD KEY `rv_data_intermediate_ad_variable_value_tracker_variable_id` (`tracker_variable_id`),
  ADD KEY `rv_data_intermediate_ad_variable_value_tracker_value` (`value`);

--
-- Indexes for table `rv_data_raw_ad_click`
--
ALTER TABLE `rv_data_raw_ad_click`
  ADD KEY `rv_data_raw_ad_click_viewer_id` (`viewer_id`),
  ADD KEY `rv_data_raw_ad_click_date_time` (`date_time`),
  ADD KEY `rv_data_raw_ad_click_ad_id` (`ad_id`),
  ADD KEY `rv_data_raw_ad_click_zone_id` (`zone_id`);

--
-- Indexes for table `rv_data_raw_ad_impression`
--
ALTER TABLE `rv_data_raw_ad_impression`
  ADD KEY `rv_data_raw_ad_impression_viewer_id` (`viewer_id`),
  ADD KEY `rv_data_raw_ad_impression_date_time` (`date_time`),
  ADD KEY `rv_data_raw_ad_impression_ad_id` (`ad_id`),
  ADD KEY `rv_data_raw_ad_impression_zone_id` (`zone_id`);

--
-- Indexes for table `rv_data_raw_ad_request`
--
ALTER TABLE `rv_data_raw_ad_request`
  ADD KEY `rv_data_raw_ad_request_viewer_id` (`viewer_id`),
  ADD KEY `rv_data_raw_ad_request_date_time` (`date_time`),
  ADD KEY `rv_data_raw_ad_request_ad_id` (`ad_id`),
  ADD KEY `rv_data_raw_ad_request_zone_id` (`zone_id`);

--
-- Indexes for table `rv_data_raw_tracker_impression`
--
ALTER TABLE `rv_data_raw_tracker_impression`
  ADD PRIMARY KEY (`server_raw_tracker_impression_id`,`server_raw_ip`),
  ADD KEY `rv_data_raw_tracker_impression_viewer_id` (`viewer_id`),
  ADD KEY `rv_data_raw_tracker_impression_date_time` (`date_time`);

--
-- Indexes for table `rv_data_raw_tracker_variable_value`
--
ALTER TABLE `rv_data_raw_tracker_variable_value`
  ADD PRIMARY KEY (`server_raw_tracker_impression_id`,`server_raw_ip`,`tracker_variable_id`);

--
-- Indexes for table `rv_data_summary_ad_hourly`
--
ALTER TABLE `rv_data_summary_ad_hourly`
  ADD PRIMARY KEY (`data_summary_ad_hourly_id`),
  ADD KEY `rv_data_summary_ad_hourly_date_time` (`date_time`),
  ADD KEY `rv_data_summary_ad_hourly_ad_id_date_time` (`ad_id`,`date_time`),
  ADD KEY `rv_data_summary_ad_hourly_zone_id_date_time` (`zone_id`,`date_time`);

--
-- Indexes for table `rv_data_summary_ad_zone_assoc`
--
ALTER TABLE `rv_data_summary_ad_zone_assoc`
  ADD PRIMARY KEY (`data_summary_ad_zone_assoc_id`),
  ADD KEY `rv_data_summary_ad_zone_assoc_interval_start` (`interval_start`),
  ADD KEY `rv_data_summary_ad_zone_assoc_interval_end` (`interval_end`),
  ADD KEY `rv_data_summary_ad_zone_assoc_ad_id` (`ad_id`),
  ADD KEY `rv_data_summary_ad_zone_assoc_zone_id` (`zone_id`),
  ADD KEY `rv_data_summary_ad_zone_assoc_expired` (`expired`);

--
-- Indexes for table `rv_data_summary_channel_daily`
--
ALTER TABLE `rv_data_summary_channel_daily`
  ADD PRIMARY KEY (`data_summary_channel_daily_id`),
  ADD KEY `rv_data_summary_channel_daily_day` (`day`),
  ADD KEY `rv_data_summary_channel_daily_channel_id` (`channel_id`),
  ADD KEY `rv_data_summary_channel_daily_zone_id` (`zone_id`);

--
-- Indexes for table `rv_data_summary_zone_impression_history`
--
ALTER TABLE `rv_data_summary_zone_impression_history`
  ADD PRIMARY KEY (`data_summary_zone_impression_history_id`),
  ADD KEY `rv_data_summary_zone_impression_history_operation_interval_id` (`operation_interval_id`),
  ADD KEY `rv_data_summary_zone_impression_history_zone_id` (`zone_id`);

--
-- Indexes for table `rv_ext_ap_video`
--
ALTER TABLE `rv_ext_ap_video`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `rv_images`
--
ALTER TABLE `rv_images`
  ADD PRIMARY KEY (`filename`);

--
-- Indexes for table `rv_log_maintenance_forecasting`
--
ALTER TABLE `rv_log_maintenance_forecasting`
  ADD PRIMARY KEY (`log_maintenance_forecasting_id`);

--
-- Indexes for table `rv_log_maintenance_priority`
--
ALTER TABLE `rv_log_maintenance_priority`
  ADD PRIMARY KEY (`log_maintenance_priority_id`);

--
-- Indexes for table `rv_log_maintenance_statistics`
--
ALTER TABLE `rv_log_maintenance_statistics`
  ADD PRIMARY KEY (`log_maintenance_statistics_id`);

--
-- Indexes for table `rv_password_recovery`
--
ALTER TABLE `rv_password_recovery`
  ADD PRIMARY KEY (`user_type`,`user_id`),
  ADD UNIQUE KEY `rv_password_recovery_recovery_id` (`recovery_id`);

--
-- Indexes for table `rv_placement_zone_assoc`
--
ALTER TABLE `rv_placement_zone_assoc`
  ADD PRIMARY KEY (`placement_zone_assoc_id`),
  ADD KEY `rv_placement_zone_assoc_zone_id` (`zone_id`),
  ADD KEY `rv_placement_zone_assoc_placement_id` (`placement_id`);

--
-- Indexes for table `rv_preferences`
--
ALTER TABLE `rv_preferences`
  ADD PRIMARY KEY (`preference_id`),
  ADD UNIQUE KEY `rv_preferences_preference_name` (`preference_name`),
  ADD KEY `rv_preferences_account_type` (`account_type`);

--
-- Indexes for table `rv_session`
--
ALTER TABLE `rv_session`
  ADD PRIMARY KEY (`sessionid`),
  ADD KEY `rv_session_user_id_key` (`user_id`),
  ADD KEY `rv_session_lastused_key` (`lastused`);

--
-- Indexes for table `rv_stats_vast`
--
ALTER TABLE `rv_stats_vast`
  ADD KEY `rv_stats_vast_creativekey` (`interval_start`,`creative_id`),
  ADD KEY `rv_stats_vast_zonekey` (`interval_start`,`zone_id`);

--
-- Indexes for table `rv_trackers`
--
ALTER TABLE `rv_trackers`
  ADD PRIMARY KEY (`trackerid`),
  ADD KEY `rv_trackers_clientid` (`clientid`);

--
-- Indexes for table `rv_tracker_append`
--
ALTER TABLE `rv_tracker_append`
  ADD PRIMARY KEY (`tracker_append_id`),
  ADD KEY `rv_tracker_append_tracker_id` (`tracker_id`,`rank`);

--
-- Indexes for table `rv_upgrade_action`
--
ALTER TABLE `rv_upgrade_action`
  ADD PRIMARY KEY (`upgrade_action_id`),
  ADD KEY `rv_upgrade_action_updated` (`updated`);

--
-- Indexes for table `rv_userlog`
--
ALTER TABLE `rv_userlog`
  ADD PRIMARY KEY (`userlogid`);

--
-- Indexes for table `rv_users`
--
ALTER TABLE `rv_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `rv_users_username` (`username`),
  ADD UNIQUE KEY `rv_users_sso_user_id` (`sso_user_id`);

--
-- Indexes for table `rv_variables`
--
ALTER TABLE `rv_variables`
  ADD PRIMARY KEY (`variableid`),
  ADD KEY `rv_variables_is_unique` (`is_unique`),
  ADD KEY `rv_variables_trackerid` (`trackerid`);

--
-- Indexes for table `rv_variable_publisher`
--
ALTER TABLE `rv_variable_publisher`
  ADD PRIMARY KEY (`variable_id`,`publisher_id`);

--
-- Indexes for table `rv_zones`
--
ALTER TABLE `rv_zones`
  ADD PRIMARY KEY (`zoneid`),
  ADD KEY `rv_zones_zonenameid` (`zonename`,`zoneid`),
  ADD KEY `rv_zones_affiliateid` (`affiliateid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rv_accounts`
--
ALTER TABLE `rv_accounts`
  MODIFY `account_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rv_ad_category_assoc`
--
ALTER TABLE `rv_ad_category_assoc`
  MODIFY `ad_category_assoc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_ad_zone_assoc`
--
ALTER TABLE `rv_ad_zone_assoc`
  MODIFY `ad_zone_assoc_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rv_affiliates`
--
ALTER TABLE `rv_affiliates`
  MODIFY `affiliateid` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rv_agency`
--
ALTER TABLE `rv_agency`
  MODIFY `agencyid` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rv_audit`
--
ALTER TABLE `rv_audit`
  MODIFY `auditid` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `rv_banners`
--
ALTER TABLE `rv_banners`
  MODIFY `bannerid` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rv_campaigns`
--
ALTER TABLE `rv_campaigns`
  MODIFY `campaignid` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rv_campaigns_trackers`
--
ALTER TABLE `rv_campaigns_trackers`
  MODIFY `campaign_trackerid` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rv_category`
--
ALTER TABLE `rv_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_channel`
--
ALTER TABLE `rv_channel`
  MODIFY `channelid` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_clients`
--
ALTER TABLE `rv_clients`
  MODIFY `clientid` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rv_database_action`
--
ALTER TABLE `rv_database_action`
  MODIFY `database_action_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rv_data_bkt_a`
--
ALTER TABLE `rv_data_bkt_a`
  MODIFY `server_conv_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_data_bkt_a_var`
--
ALTER TABLE `rv_data_bkt_a_var`
  MODIFY `server_conv_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_data_intermediate_ad`
--
ALTER TABLE `rv_data_intermediate_ad`
  MODIFY `data_intermediate_ad_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_data_intermediate_ad_connection`
--
ALTER TABLE `rv_data_intermediate_ad_connection`
  MODIFY `data_intermediate_ad_connection_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_data_intermediate_ad_variable_value`
--
ALTER TABLE `rv_data_intermediate_ad_variable_value`
  MODIFY `data_intermediate_ad_variable_value_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_data_raw_tracker_impression`
--
ALTER TABLE `rv_data_raw_tracker_impression`
  MODIFY `server_raw_tracker_impression_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_data_summary_ad_hourly`
--
ALTER TABLE `rv_data_summary_ad_hourly`
  MODIFY `data_summary_ad_hourly_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_data_summary_ad_zone_assoc`
--
ALTER TABLE `rv_data_summary_ad_zone_assoc`
  MODIFY `data_summary_ad_zone_assoc_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_data_summary_channel_daily`
--
ALTER TABLE `rv_data_summary_channel_daily`
  MODIFY `data_summary_channel_daily_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_data_summary_zone_impression_history`
--
ALTER TABLE `rv_data_summary_zone_impression_history`
  MODIFY `data_summary_zone_impression_history_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_log_maintenance_forecasting`
--
ALTER TABLE `rv_log_maintenance_forecasting`
  MODIFY `log_maintenance_forecasting_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_log_maintenance_priority`
--
ALTER TABLE `rv_log_maintenance_priority`
  MODIFY `log_maintenance_priority_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rv_log_maintenance_statistics`
--
ALTER TABLE `rv_log_maintenance_statistics`
  MODIFY `log_maintenance_statistics_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_placement_zone_assoc`
--
ALTER TABLE `rv_placement_zone_assoc`
  MODIFY `placement_zone_assoc_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rv_preferences`
--
ALTER TABLE `rv_preferences`
  MODIFY `preference_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `rv_trackers`
--
ALTER TABLE `rv_trackers`
  MODIFY `trackerid` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rv_tracker_append`
--
ALTER TABLE `rv_tracker_append`
  MODIFY `tracker_append_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_upgrade_action`
--
ALTER TABLE `rv_upgrade_action`
  MODIFY `upgrade_action_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `rv_userlog`
--
ALTER TABLE `rv_userlog`
  MODIFY `userlogid` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_users`
--
ALTER TABLE `rv_users`
  MODIFY `user_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rv_variables`
--
ALTER TABLE `rv_variables`
  MODIFY `variableid` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rv_zones`
--
ALTER TABLE `rv_zones`
  MODIFY `zoneid` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
