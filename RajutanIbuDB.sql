-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2015 at 09:35 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rajutanibu`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'is_customer_note', '0'),
(2, 3, 'is_customer_note', '0'),
(3, 4, 'is_customer_note', '0'),
(4, 5, 'is_customer_note', '0'),
(5, 6, 'is_customer_note', '0'),
(6, 7, 'is_customer_note', '0'),
(7, 8, 'is_customer_note', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-01-19 09:14:18', '2015-01-19 09:14:18', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0),
(2, 18, 'admin', 'bayu.eighted@gmail.com', '', '', '2015-02-02 05:19:00', '2015-02-02 05:19:00', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 18, 'admin', 'bayu.eighted@gmail.com', '', '', '2015-02-02 05:19:03', '2015-02-02 05:19:03', 'Item #12 stock reduced from 5 to 4.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 18, 'admin', 'bayu.eighted@gmail.com', '', '', '2015-02-02 05:19:03', '2015-02-02 05:19:03', 'Order item stock reduced successfully.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 18, 'admin', 'bayu.eighted@gmail.com', '', '', '2015-02-02 05:21:43', '2015-02-02 05:21:43', 'Order status changed from On Hold to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 52, 'admin', 'bayu.eighted@gmail.com', '', '', '2015-05-09 04:45:56', '2015-05-09 04:45:56', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 52, 'admin', 'bayu.eighted@gmail.com', '', '', '2015-05-09 04:45:59', '2015-05-09 04:45:59', 'Item #12 stock reduced from 4 to 3.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 52, 'admin', 'bayu.eighted@gmail.com', '', '', '2015-05-09 04:45:59', '2015-05-09 04:45:59', 'Order item stock reduced successfully.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_duplicator_packages`
--

CREATE TABLE IF NOT EXISTS `wp_duplicator_packages` (
`id` bigint(20) unsigned NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_duplicator_packages`
--

INSERT INTO `wp_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20150514_rajutanibu', '5553f34832cca3809150514005848', 100, '2015-05-14 00:59:51', 'admin', 0x4f3a31313a224455505f5061636b616765223a31363a7b733a323a224944223b693a313b733a343a224e616d65223b733a31393a2232303135303531345f72616a7574616e696275223b733a343a2248617368223b733a32393a223535353366333438333263636133383039313530353134303035383438223b733a383a224e616d6548617368223b733a34393a2232303135303531345f72616a7574616e6962755f3535353366333438333263636133383039313530353134303035383438223b733a373a2256657273696f6e223b733a363a22302e352e3138223b733a343a2254797065223b693a303b733a353a224e6f746573223b733a303a22223b733a393a2253746f726550617468223b733a34333a22443a2f78616d70702f6874646f63732f72616a7574616e6962752f77702d736e617073686f74732f746d70223b733a383a2253746f726555524c223b733a34313a22687474703a2f2f6c6f63616c686f73742f72616a7574616e6962752f77702d736e617073686f74732f223b733a383a225363616e46696c65223b733a35393a2232303135303531345f72616a7574616e6962755f35353533663334383332636361333830393135303531343030353834385f7363616e2e6a736f6e223b733a373a2252756e74696d65223b733a31303a2232392e3939207365632e223b733a373a2245786553697a65223b733a383a223331362e39324b42223b733a373a225a697053697a65223b733a373a2232312e34324d42223b733a373a2241726368697665223b4f3a31313a224455505f41726368697665223a31373a7b733a31303a2246696c74657244697273223b733a303a22223b733a31303a2246696c74657245787473223b733a303a22223b733a383a2246696c7465724f6e223b693a303b733a343a2246696c65223b733a36313a2232303135303531345f72616a7574616e6962755f35353533663334383332636361333830393135303531343030353834385f617263686976652e7a6970223b733a363a22466f726d6174223b733a333a225a4950223b733a373a225061636b446972223b733a32363a22443a2f78616d70702f6874646f63732f72616a7574616e696275223b733a343a2253697a65223b693a32323436353337303b733a31323a225761726e46696c6553697a65223b613a303a7b7d733a31323a225761726e46696c654e616d65223b613a303a7b7d733a343a2244697273223b613a303a7b7d733a353a2246696c6573223b613a303a7b7d733a353a224c696e6b73223b613a303a7b7d733a383a224f6d697444697273223b613a303a7b7d733a393a224f6d697446696c6573223b613a303a7b7d733a31303a22002a005061636b616765223b723a313b733a32383a22004455505f417263686976650066696c746572446972734172726179223b613a303a7b7d733a32383a22004455505f417263686976650066696c746572457874734172726179223b613a303a7b7d7d733a393a22496e7374616c6c6572223b4f3a31333a224455505f496e7374616c6c6572223a31313a7b733a343a2246696c65223b733a36333a2232303135303531345f72616a7574616e6962755f35353533663334383332636361333830393135303531343030353834385f696e7374616c6c65722e706870223b733a343a2253697a65223b693a3332343532353b733a31303a224f7074734442486f7374223b733a303a22223b733a31303a224f70747344424e616d65223b733a32313a226b323330303232345f72616a7574616e6962754442223b733a31303a224f707473444255736572223b733a31363a226b323330303232345f6261796469776f223b733a31323a224f70747353534c41646d696e223b693a303b733a31323a224f70747353534c4c6f67696e223b693a303b733a31313a224f70747343616368655750223b693a303b733a31333a224f707473436163686550617468223b693a303b733a31303a224f70747355524c4e6577223b733a32313a22687474703a2f2f72616a7574616e6962752e636f6d223b733a31303a22002a005061636b616765223b723a313b7d733a383a224461746162617365223b4f3a31323a224455505f4461746162617365223a31313a7b733a343a2254797065223b733a353a224d7953514c223b733a343a2253697a65223b693a3235303034353b733a343a2246696c65223b733a36323a2232303135303531345f72616a7574616e6962755f35353533663334383332636361333830393135303531343030353834385f64617461626173652e73716c223b733a343a2250617468223b4e3b733a31323a2246696c7465725461626c6573223b733a303a22223b733a383a2246696c7465724f6e223b693a303b733a343a224e616d65223b4e3b733a31303a22002a005061636b616765223b723a313b733a32353a22004455505f446174616261736500646253746f726550617468223b733a3130363a22443a2f78616d70702f6874646f63732f72616a7574616e6962752f77702d736e617073686f74732f746d702f32303135303531345f72616a7574616e6962755f35353533663334383332636361333830393135303531343030353834385f64617461626173652e73716c223b733a32333a22004455505f446174616261736500454f464d61726b6572223b733a303a22223b733a32363a22004455505f4461746162617365006e6574776f726b466c757368223b623a303b7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=625 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/rajutanibu', 'yes'),
(2, 'home', 'http://localhost/rajutanibu', 'yes'),
(3, 'blogname', 'Rajutan Ibu', 'yes'),
(4, 'blogdescription', 'Aseli rajutan tangan', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'bayu.eighted@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:25:"duplicator/duplicator.php";i:1;s:37:"homepage-control/homepage-control.php";i:2;s:19:"jetpack/jetpack.php";i:3;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:4;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:69:"D:\\xampp\\htdocs\\rajutanibu/wp-content/themes/storefront/functions.php";i:1;s:65:"D:\\xampp\\htdocs\\rajutanibu/wp-content/themes/storefront/style.css";i:2;s:68:"D:\\xampp\\htdocs\\rajutanibu/wp-content/themes/storefront/comments.php";i:3;s:64:"D:\\xampp\\htdocs\\rajutanibu/wp-content/themes/storefront/page.php";i:4;s:67:"D:\\xampp\\htdocs\\rajutanibu/wp-content/themes/storefront/content.php";}', 'no'),
(41, 'template', 'storefront', 'yes'),
(42, 'stylesheet', 'storefront', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'customer', 'yes'),
(49, 'db_version', '30135', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '271', 'yes'),
(60, 'thumbnail_size_h', '182', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '370', 'yes'),
(63, 'medium_size_h', '250', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '670', 'yes'),
(66, 'large_size_h', '450', 'yes'),
(67, 'image_default_link_type', '', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:4:{i:4;a:4:{s:5:"title";s:8:"Kategori";s:5:"count";i:0;s:12:"hierarchical";i:1;s:8:"dropdown";i:0;}i:5;a:0:{}i:6;a:4:{s:5:"title";s:12:"Kategori Tas";s:5:"count";i:1;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '4', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:132:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:2:{i:0;s:12:"categories-4";i:1;s:12:"categories-5";}s:9:"sidebar-1";a:2:{i:0;s:22:"woocommerce_products-3";i:1;s:32:"woocommerce_product_categories-3";}s:8:"header-1";a:1:{i:0;s:12:"categories-6";}s:8:"footer-1";a:1:{i:0;s:6:"meta-2";}s:8:"footer-2";a:1:{i:0;s:7:"pages-2";}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:9:{i:1436073654;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1436073724;a:1:{s:20:"jetpack_clean_nonces";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1436082360;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1436087673;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1436087734;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1436087984;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1436088394;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1436140800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(104, '_transient_random_seed', '5a91113a5d5a2a1fb415851956faad25', 'yes'),
(126, 'current_theme', 'Storefront', 'yes'),
(127, 'theme_mods_storefront', 'a:7:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:0;}s:17:"storefront_layout";s:4:"left";s:16:"background_color";s:6:"ffffff";s:12:"header_image";s:13:"remove-header";s:23:"storefront_accent_color";s:7:"#1e73be";s:34:"storefront_button_background_color";s:7:"#1e73be";}', 'yes'),
(128, 'theme_switched', '', 'yes'),
(139, '_version', '', 'yes'),
(140, 'recently_activated', 'a:0:{}', 'yes'),
(141, 'jetpack_activated', '1', 'yes'),
(142, 'jetpack_options', 'a:4:{s:7:"version";s:14:"3.3:1421659324";s:11:"old_version";s:14:"3.3:1421659324";s:28:"fallback_no_verify_ssl_certs";i:0;s:9:"time_diff";i:1;}', 'yes'),
(147, 'woocommerce_default_country', 'ID:JK', 'yes'),
(148, 'woocommerce_allowed_countries', 'specific', 'yes'),
(149, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:"ID";}', 'yes'),
(150, 'woocommerce_demo_store', 'no', 'yes'),
(151, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes — no orders shall be fulfilled.', 'no'),
(152, 'woocommerce_api_enabled', 'yes', 'yes'),
(153, 'woocommerce_currency', 'IDR', 'yes'),
(154, 'woocommerce_currency_pos', 'left_space', 'yes'),
(155, 'woocommerce_price_thousand_sep', '.', 'yes'),
(156, 'woocommerce_price_decimal_sep', ',', 'yes'),
(157, 'woocommerce_price_num_decimals', '2', 'yes'),
(158, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(159, 'woocommerce_enable_chosen', 'yes', 'no'),
(160, 'woocommerce_shop_page_id', '7', 'yes'),
(161, 'woocommerce_shop_page_display', '', 'yes'),
(162, 'woocommerce_category_archive_display', '', 'yes'),
(163, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(164, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(165, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(166, 'woocommerce_weight_unit', 'kg', 'yes'),
(167, 'woocommerce_dimension_unit', 'cm', 'yes'),
(168, 'woocommerce_enable_review_rating', 'yes', 'no'),
(169, 'woocommerce_review_rating_required', 'yes', 'no'),
(170, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(171, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(172, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"270";s:6:"height";s:3:"180";s:4:"crop";s:1:"1";}', 'yes'),
(173, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"570";s:6:"height";s:3:"380";s:4:"crop";s:1:"1";}', 'yes'),
(174, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"100";s:6:"height";s:2:"65";s:4:"crop";s:1:"1";}', 'yes'),
(175, 'woocommerce_file_download_method', 'force', 'no'),
(176, 'woocommerce_downloads_require_login', 'no', 'no'),
(177, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(178, 'woocommerce_manage_stock', 'yes', 'yes'),
(179, 'woocommerce_hold_stock_minutes', '60', 'no'),
(180, 'woocommerce_notify_low_stock', 'yes', 'no'),
(181, 'woocommerce_notify_no_stock', 'yes', 'no'),
(182, 'woocommerce_stock_email_recipient', 'bayu.eighted@gmail.com', 'no'),
(183, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(184, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(185, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(186, 'woocommerce_stock_format', '', 'yes'),
(187, 'woocommerce_calc_taxes', 'no', 'yes'),
(188, 'woocommerce_prices_include_tax', 'no', 'yes'),
(189, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(190, 'woocommerce_default_customer_address', 'base', 'yes'),
(191, 'woocommerce_shipping_tax_class', '', 'yes'),
(192, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(193, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(194, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(195, 'woocommerce_price_display_suffix', '', 'yes'),
(196, 'woocommerce_tax_display_cart', 'excl', 'no'),
(197, 'woocommerce_tax_total_display', 'itemized', 'no'),
(198, 'woocommerce_enable_coupons', 'yes', 'no'),
(199, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(200, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(201, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(202, 'woocommerce_cart_page_id', '8', 'yes'),
(203, 'woocommerce_checkout_page_id', '9', 'yes'),
(204, 'woocommerce_terms_page_id', '', 'no'),
(205, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(206, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(207, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(208, 'woocommerce_calc_shipping', 'yes', 'yes'),
(209, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(210, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(211, 'woocommerce_shipping_method_format', '', 'no'),
(212, 'woocommerce_ship_to_destination', 'shipping', 'no'),
(213, 'woocommerce_ship_to_countries', '', 'yes'),
(214, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(215, 'woocommerce_myaccount_page_id', '10', 'yes'),
(216, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(217, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(218, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(219, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(220, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(221, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(222, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(223, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(224, 'woocommerce_registration_generate_username', 'yes', 'no'),
(225, 'woocommerce_registration_generate_password', 'yes', 'no'),
(226, 'woocommerce_email_from_name', 'Rajutan Ibu', 'no'),
(227, 'woocommerce_email_from_address', 'bayu.eighted@gmail.com', 'no'),
(228, 'woocommerce_email_header_image', '', 'no'),
(229, 'woocommerce_email_footer_text', 'Rajutan Ibu - Powered by WooCommerce', 'no'),
(230, 'woocommerce_email_base_color', '#557da1', 'no'),
(231, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(232, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(233, 'woocommerce_email_text_color', '#505050', 'no'),
(234, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(235, 'woocommerce_db_version', '2.2.10', 'yes'),
(236, 'woocommerce_version', '2.2.10', 'yes'),
(242, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(251, 'woocommerce_default_shipping_method', '', 'yes'),
(252, 'woocommerce_shipping_method_order', 'a:5:{s:9:"flat_rate";i:0;s:13:"free_shipping";i:1;s:22:"international_delivery";i:2;s:14:"local_delivery";i:3;s:12:"local_pickup";i:4;}', 'yes'),
(258, 'product_cat_children', 'a:0:{}', 'yes'),
(259, '_transient_product_query-transient-version', '1431136919', 'yes'),
(261, '_transient_timeout_wc_rating_count_12', '1454390236', 'no'),
(262, '_transient_wc_rating_count_12', '0', 'no'),
(263, '_transient_timeout_wc_average_rating_12', '1454390236', 'no'),
(264, '_transient_wc_average_rating_12', '', 'no'),
(276, 'woocommerce_bacs_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:5:"title";s:20:"Direct Bank Transfer";s:11:"description";s:173:"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won''t be shipped until the funds have cleared in our account.";s:12:"instructions";s:173:"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won''t be shipped until the funds have cleared in our account.";s:15:"account_details";s:0:"";}', 'yes'),
(277, 'woocommerce_bacs_accounts', 'a:2:{i:0;a:6:{s:12:"account_name";s:10:"Murbantoro";s:14:"account_number";s:10:"0123456789";s:9:"bank_name";s:7:"Mandiri";s:9:"sort_code";s:3:"008";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}i:1;a:6:{s:12:"account_name";s:17:"Endang Priyantini";s:14:"account_number";s:10:"1234567890";s:9:"bank_name";s:3:"BCA";s:9:"sort_code";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}}', 'yes'),
(287, '_transient_timeout_wc_rating_count_28', '1454391010', 'no'),
(288, '_transient_wc_rating_count_28', '0', 'no'),
(289, '_transient_timeout_wc_average_rating_28', '1454391010', 'no'),
(290, '_transient_wc_average_rating_28', '', 'no'),
(291, '_transient_timeout_wc_rating_count_27', '1454391010', 'no'),
(292, '_transient_wc_rating_count_27', '0', 'no'),
(293, '_transient_timeout_wc_average_rating_27', '1454391010', 'no'),
(294, '_transient_wc_average_rating_27', '', 'no'),
(295, '_transient_timeout_wc_rating_count_26', '1454391010', 'no'),
(296, '_transient_wc_rating_count_26', '0', 'no'),
(297, '_transient_timeout_wc_average_rating_26', '1454391010', 'no'),
(298, '_transient_wc_average_rating_26', '', 'no'),
(299, '_transient_timeout_wc_rating_count_25', '1454391011', 'no'),
(300, '_transient_wc_rating_count_25', '0', 'no'),
(301, '_transient_timeout_wc_average_rating_25', '1454391011', 'no'),
(302, '_transient_wc_average_rating_25', '', 'no'),
(305, 'widget_woocommerce_products', 'a:2:{i:3;a:7:{s:5:"title";s:8:"Products";s:6:"number";s:1:"6";s:4:"show";s:0:"";s:7:"orderby";s:4:"date";s:5:"order";s:4:"desc";s:9:"hide_free";i:0;s:11:"show_hidden";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(306, 'widget_woocommerce_product_categories', 'a:2:{i:3;a:6:{s:5:"title";s:15:"Kategori Produk";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";s:1:"1";s:18:"show_children_only";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(307, 'site_logo', 'a:3:{s:2:"id";i:0;s:5:"sizes";a:0:{}s:3:"url";s:0:"";}', 'yes'),
(308, 'theme_mods_twentyfourteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1422855799;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";a:1:{i:0;s:32:"woocommerce_product_categories-3";}s:8:"footer-1";a:0:{}s:8:"footer-2";N;s:8:"footer-3";N;s:8:"footer-4";N;}}}', 'yes'),
(309, 'theme_switched_via_customizer', '', 'yes'),
(314, '_transient_timeout_wc_rating_count_20', '1454391755', 'no'),
(315, '_transient_wc_rating_count_20', '0', 'no'),
(316, '_transient_timeout_wc_average_rating_20', '1454391755', 'no'),
(317, '_transient_wc_average_rating_20', '', 'no'),
(318, '_transient_timeout_wc_rating_count_21', '1454391755', 'no'),
(319, '_transient_wc_rating_count_21', '0', 'no'),
(320, '_transient_timeout_wc_average_rating_21', '1454391755', 'no'),
(321, '_transient_wc_average_rating_21', '', 'no'),
(322, '_transient_timeout_wc_rating_count_22', '1454391755', 'no'),
(323, '_transient_wc_rating_count_22', '0', 'no'),
(324, '_transient_timeout_wc_average_rating_22', '1454391755', 'no'),
(325, '_transient_wc_average_rating_22', '', 'no'),
(326, '_transient_timeout_wc_rating_count_23', '1454391756', 'no'),
(327, '_transient_wc_rating_count_23', '0', 'no'),
(328, '_transient_timeout_wc_average_rating_23', '1454391756', 'no'),
(329, '_transient_wc_average_rating_23', '', 'no'),
(330, '_transient_timeout_wc_rating_count_24', '1454391756', 'no'),
(331, '_transient_wc_rating_count_24', '0', 'no'),
(332, '_transient_timeout_wc_average_rating_24', '1454391756', 'no'),
(333, '_transient_wc_average_rating_24', '', 'no'),
(334, 'woocommerce_admin_notices', 'a:2:{i:0;s:14:"template_files";i:1;s:13:"theme_support";}', 'yes'),
(335, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(336, 'widget_pages', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"sortby";s:10:"menu_order";s:7:"exclude";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(341, 'WPLANG', '', 'yes'),
(344, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:19:"/shop/%product_cat%";}', 'yes'),
(346, 'jetpack_file_data', 'a:1:{s:3:"3.3";a:46:{s:32:"bf71a7908c091837b4de524e5996a469";a:10:{s:4:"name";s:20:"Spelling and Grammar";s:11:"description";s:89:"Check your spelling, style, and grammar with the After the Deadline proofreading service.";s:4:"sort";s:1:"6";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";}s:32:"143634e5a7f68e1701b5afb1072bb27a";a:10:{s:4:"name";s:8:"Carousel";s:11:"description";s:63:"Transform standard image galleries into full-screen slideshows.";s:4:"sort";s:2:"22";s:10:"introduced";s:3:"1.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";}s:32:"c61092986232757c22bfae73642256d1";a:10:{s:4:"name";s:16:"Jetpack Comments";s:11:"description";s:79:"Let readers comment with WordPress.com, Twitter, Facebook, or Google+ accounts.";s:4:"sort";s:2:"20";s:10:"introduced";s:3:"1.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";}s:32:"ffb482f194cd50ffcef5db416da0264a";a:10:{s:4:"name";s:12:"Contact Form";s:11:"description";s:44:"Insert a contact form anywhere on your site.";s:4:"sort";s:2:"15";s:10:"introduced";s:3:"1.3";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";}s:32:"83895834eab022cb6102d7dcb55b2c50";a:10:{s:4:"name";s:20:"Custom Content Types";s:11:"description";s:92:"Organize and display different types of content on your site, separate from posts and pages.";s:4:"sort";s:2:"34";s:10:"introduced";s:3:"3.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";}s:32:"482778d22ffb2a4b882ca008a79df676";a:10:{s:4:"name";s:10:"Custom CSS";s:11:"description";s:57:"Customize your site’s CSS without modifying your theme.";s:4:"sort";s:1:"2";s:10:"introduced";s:3:"1.7";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";}s:32:"2bae3c7b9224a06af17c790833517ae2";a:10:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";}s:32:"98f1d88b5aef77993a9d7277574a97b8";a:10:{s:4:"name";s:21:"Enhanced Distribution";s:11:"description";s:74:"Share your public posts and comments to search engines and other services.";s:4:"sort";s:1:"5";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:7:"Writing";}s:32:"818be355be0e16f68cdea6fb630b838c";a:10:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";}s:32:"0fd75c093ea8f43bb66ec99faa79020d";a:10:{s:4:"name";s:19:"Gravatar Hovercards";s:11:"description";s:58:"Enable pop-up business cards over commenters’ Gravatars.";s:4:"sort";s:2:"11";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";}s:32:"e13edb0a55da29309b50c4002d0795ad";a:10:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:10:"introduced";s:8:"2.0.3 ??";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";}s:32:"598991e3aadeb9fb82941f2f1291fa8f";a:10:{s:4:"name";s:15:"Infinite Scroll";s:11:"description";s:46:"Add support for infinite scroll to your theme.";s:4:"sort";s:2:"26";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Appearance";}s:32:"73462799e011c26a962f0b4fb2b9c6e4";a:10:{s:4:"name";s:8:"JSON API";s:11:"description";s:69:"Allow applications to securely access your content through the cloud.";s:4:"sort";s:2:"19";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:19:"Writing, Developers";}s:32:"e5c4e181aa36e8715196b324c48be98b";a:10:{s:4:"name";s:14:"Beautiful Math";s:11:"description";s:85:"Use LaTeX markup language in posts and pages for complex equations and other geekery.";s:4:"sort";s:2:"12";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";}s:32:"ea78518aedf1c233a3abd1f9008a3df3";a:10:{s:4:"name";s:5:"Likes";s:11:"description";s:70:"Give visitors an easy way to show their appreciation for your content.";s:4:"sort";s:2:"23";s:10:"introduced";s:3:"2.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";}s:32:"8076d1f3a2dd7f10ef146fb0f7970da4";a:10:{s:4:"name";s:8:"Markdown";s:11:"description";s:51:"Write posts or pages in plain-text Markdown syntax.";s:4:"sort";s:2:"31";s:10:"introduced";s:3:"2.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";}s:32:"488b7ad4767ff128e4dd713b0ebb55ba";a:10:{s:4:"name";s:12:"Mobile Theme";s:11:"description";s:64:"Optimize your site with a mobile-friendly theme for smartphones.";s:4:"sort";s:2:"21";s:10:"introduced";s:3:"1.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:18:"Appearance, Mobile";}s:32:"5e31670a24725b0d2530b6b3c061db0e";a:10:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";}s:32:"bac92a22f95b4b3c6a2988faee73c025";a:10:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";}s:32:"d5aedabc98b6cc60c3f4e34414fb36d8";a:10:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";}s:32:"72c0d2df82326ec726ed8fca16241d1d";a:10:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";}s:32:"b4a2b2114a7fbc7f572bc4c3b76f94df";a:10:{s:4:"name";s:7:"Monitor";s:11:"description";s:88:"Receive notifications from Jetpack if your site goes offline — and when it it returns.";s:4:"sort";s:2:"28";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";}s:32:"1e9cfff99ee8441206ea3985e656c109";a:10:{s:4:"name";s:13:"Notifications";s:11:"description";s:84:"Receive notification of site activity via the admin toolbar and your Mobile devices.";s:4:"sort";s:2:"13";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";}s:32:"29117eabe5ab50cbb39ac941c1555b4e";a:10:{s:4:"name";s:10:"Omnisearch";s:11:"description";s:66:"Search your entire database from a single field in your Dashboard.";s:4:"sort";s:2:"16";s:10:"introduced";s:3:"2.3";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Developers";}s:32:"d20940ab7c556fc1088ddfdc394b2ec0";a:10:{s:4:"name";s:6:"Photon";s:11:"description";s:66:"Accelerate your site by loading images from the WordPress.com CDN.";s:4:"sort";s:2:"25";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:29:"Photos and Videos, Appearance";}s:32:"f77db22d060afae2529ec2f50d9638ff";a:10:{s:4:"name";s:13:"Post by Email";s:11:"description";s:58:"Publish posts by email, using any device and email client.";s:4:"sort";s:2:"14";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";}s:32:"e282f58b5ecddddfa4d5e331a4968fae";a:10:{s:4:"name";s:9:"Publicize";s:11:"description";s:55:"Share new posts on social media networks automatically.";s:4:"sort";s:2:"10";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";}s:32:"780757d6e510d56807555b11e5dbd86f";a:10:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";}s:32:"a02e2fc34d52163d010b190e2c7d8685";a:10:{s:4:"name";s:13:"Related Posts";s:11:"description";s:60:"Display links to your related content under posts and pages.";s:4:"sort";s:2:"29";s:10:"introduced";s:3:"2.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";}s:32:"66359462865a7771afb856851617f933";a:10:{s:4:"name";s:7:"Sharing";s:11:"description";s:81:"Allow visitors to share your content on Facebook, Twitter, and more with a click.";s:4:"sort";s:1:"7";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";}s:32:"4fcb3e9b93bed1fab91e81799daaa8c3";a:10:{s:4:"name";s:16:"Shortcode Embeds";s:11:"description";s:77:"Embed content from YouTube, Vimeo, SlideShare, and more, no coding necessary.";s:4:"sort";s:1:"3";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:46:"Photos and Videos, Social, Writing, Appearance";}s:32:"96dbbfc269f8344ea6bdf11c513e9377";a:10:{s:4:"name";s:16:"WP.me Shortlinks";s:11:"description";s:56:"Enable WP.me-powered shortlinks for all posts and pages.";s:4:"sort";s:1:"8";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";}s:32:"a54ee47a79d22a1b2b89d9a947fcc7d3";a:10:{s:4:"name";s:9:"Site Icon";s:11:"description";s:29:"Add a site icon to your site.";s:4:"sort";s:2:"22";s:10:"introduced";s:3:"3.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:5:"Other";}s:32:"7740175dd37d0e0e25a7612c807d53ee";a:10:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";}s:32:"d556a1d23b304e01ac20152e98f1f59d";a:10:{s:4:"name";s:22:"Jetpack Single Sign On";s:11:"description";s:62:"Allow your users to log in using their WordPress.com accounts.";s:4:"sort";s:2:"30";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Developers";}s:32:"5103d66ab1535ee8a73bfc5bac9fd5c1";a:10:{s:4:"name";s:19:"WordPress.com Stats";s:11:"description";s:85:"Monitor your stats with clear, concise reports and no additional load on your server.";s:4:"sort";s:1:"1";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:19:"WordPress.com Stats";}s:32:"37ccfaf98b890c870cccf3a5b962a2eb";a:10:{s:4:"name";s:13:"Subscriptions";s:11:"description";s:88:"Allow users to subscribe to your posts and comments and receive notifications via email.";s:4:"sort";s:1:"9";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";}s:32:"ff96e56bd96c2d93a46344fd91df7231";a:10:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";}s:32:"fceebc7cb6bc8ba879780a2b86e8e401";a:10:{s:4:"name";s:15:"Tiled Galleries";s:11:"description";s:73:"Display your image galleries in a variety of sleek, graphic arrangements.";s:4:"sort";s:2:"24";s:10:"introduced";s:3:"2.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";}s:32:"68c9ecab32e3ccd9f4a3c082fc028b72";a:10:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";}s:32:"d6e34147825568ba08719f6a78139ec4";a:10:{s:4:"name";s:10:"VaultPress";s:11:"description";s:85:"Protect your site with automatic backups and security scans. (Subscription required.)";s:4:"sort";s:2:"32";s:10:"introduced";s:5:"0:1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:5:"false";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";}s:32:"35cf6f408a3778c27d3ba3d897b33794";a:10:{s:4:"name";s:17:"Site Verification";s:11:"description";s:78:"Verify your site or domain with Google Webmaster Tools, Pinterest, and others.";s:4:"sort";s:2:"33";s:10:"introduced";s:3:"3.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";}s:32:"1eb0ce616f2bbc2b8d5fbb47537373ca";a:10:{s:4:"name";s:10:"VideoPress";s:11:"description";s:68:"Upload and embed videos right on your site. (Subscription required.)";s:4:"sort";s:2:"27";s:10:"introduced";s:3:"2.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:17:"Photos and Videos";}s:32:"a4b767bc714e488656e004386228d0a4";a:10:{s:4:"name";s:17:"Widget Visibility";s:11:"description";s:57:"Specify which widgets appear on which pages of your site.";s:4:"sort";s:2:"17";s:10:"introduced";s:3:"2.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";}s:32:"88c1b7274fd613c7d26ba2e0d58cba28";a:10:{s:4:"name";s:21:"Extra Sidebar Widgets";s:11:"description";s:79:"Add images, Twitter streams, your site’s RSS links, and more to your sidebar.";s:4:"sort";s:1:"4";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";}s:32:"1d069ffce7856add0fb4472dbc32fbd1";a:10:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";}}}', 'yes'),
(347, 'jetpack_available_modules', 'a:1:{s:3:"3.3";a:34:{s:18:"after-the-deadline";s:3:"1.1";s:8:"carousel";s:3:"1.5";s:8:"comments";s:3:"1.4";s:12:"contact-form";s:3:"1.3";s:20:"custom-content-types";s:3:"3.1";s:10:"custom-css";s:3:"1.7";s:21:"enhanced-distribution";s:3:"1.2";s:19:"gravatar-hovercards";s:3:"1.1";s:15:"infinite-scroll";s:3:"2.0";s:8:"json-api";s:3:"1.9";s:5:"latex";s:3:"1.1";s:5:"likes";s:3:"2.2";s:8:"markdown";s:3:"2.8";s:9:"minileven";s:3:"1.8";s:7:"monitor";s:3:"2.6";s:5:"notes";s:3:"1.9";s:10:"omnisearch";s:3:"2.3";s:6:"photon";s:3:"2.0";s:13:"post-by-email";s:3:"2.0";s:9:"publicize";s:3:"2.0";s:13:"related-posts";s:3:"2.9";s:10:"sharedaddy";s:3:"1.1";s:10:"shortcodes";s:3:"1.1";s:10:"shortlinks";s:3:"1.1";s:9:"site-icon";s:3:"3.2";s:3:"sso";s:3:"2.6";s:5:"stats";s:3:"1.1";s:13:"subscriptions";s:3:"1.2";s:13:"tiled-gallery";s:3:"2.1";s:10:"vaultpress";s:5:"0:1.2";s:18:"verification-tools";s:3:"3.0";s:10:"videopress";s:3:"2.5";s:17:"widget-visibility";s:3:"2.4";s:7:"widgets";s:3:"1.2";}}', 'yes'),
(348, 'jetpack_log', 'a:4:{i:0;a:5:{s:4:"time";i:1422856657;s:7:"user_id";i:1;s:7:"blog_id";b:0;s:4:"code";s:8:"activate";s:4:"data";s:8:"carousel";}i:1;a:5:{s:4:"time";i:1422856787;s:7:"user_id";i:1;s:7:"blog_id";b:0;s:4:"code";s:8:"activate";s:4:"data";s:12:"contact-form";}i:2;a:5:{s:4:"time";i:1422856787;s:7:"user_id";i:1;s:7:"blog_id";b:0;s:4:"code";s:8:"activate";s:4:"data";s:10:"sharedaddy";}i:3;a:5:{s:4:"time";i:1422856788;s:7:"user_id";i:1;s:7:"blog_id";b:0;s:4:"code";s:8:"activate";s:4:"data";s:9:"site-icon";}}', 'no'),
(349, 'jetpack_active_modules', 'a:4:{i:0;s:8:"carousel";i:1;s:12:"contact-form";i:2;s:10:"sharedaddy";i:3;s:9:"site-icon";}', 'yes'),
(352, 'sharing-options', 'a:1:{s:6:"global";a:5:{s:12:"button_style";s:4:"icon";s:13:"sharing_label";b:0;s:10:"open_links";s:4:"same";s:4:"show";a:3:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:7:"product";}s:6:"custom";a:0:{}}}', 'yes'),
(354, '_transient_timeout_wc_rating_count_30', '1454393039', 'no'),
(355, '_transient_wc_rating_count_30', '0', 'no'),
(356, '_transient_timeout_wc_average_rating_30', '1454393040', 'no'),
(357, '_transient_wc_average_rating_30', '', 'no'),
(360, 'sharing-services', 'a:2:{s:7:"visible";a:6:{i:0;s:5:"email";i:1;s:8:"facebook";i:2;s:7:"twitter";i:3;s:13:"google-plus-1";i:4;s:9:"pinterest";i:5;s:6:"pocket";}s:6:"hidden";a:0:{}}', 'yes'),
(361, 'sharedaddy_disable_resources', '0', 'yes'),
(362, 'jetpack-twitter-cards-site-tag', '', 'yes'),
(419, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:22:"bayu.eighted@gmail.com";s:7:"version";s:5:"4.2.2";s:9:"timestamp";i:1431564916;}', 'yes'),
(454, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1424481481;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:7:{i:0;s:7:"pages-2";i:1;s:12:"categories-4";i:2;s:12:"categories-5";i:3;s:22:"woocommerce_products-3";i:4;s:26:"woocommerce_price_filter-2";i:5;s:32:"woocommerce_product_categories-3";i:6;s:32:"woocommerce_product_categories-4";}s:9:"sidebar-1";a:2:{i:0;s:8:"search-2";i:1;s:6:"meta-2";}}}}', 'yes'),
(455, 'theme_mods_photolab', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1424481525;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:7:{i:0;s:7:"pages-2";i:1;s:12:"categories-4";i:2;s:12:"categories-5";i:3;s:22:"woocommerce_products-3";i:4;s:26:"woocommerce_price_filter-2";i:5;s:32:"woocommerce_product_categories-3";i:6;s:32:"woocommerce_product_categories-4";}s:9:"sidebar-1";a:2:{i:0;s:8:"search-2";i:1;s:6:"meta-2";}s:6:"footer";N;}}}', 'yes'),
(481, 'carousel_background_color', 'white', 'yes'),
(482, 'carousel_display_exif', '1', 'yes'),
(486, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=8";i:1;s:5:"/cart";i:2;s:3:"p=9";i:3;s:9:"/checkout";i:4;s:4:"p=10";i:5;s:11:"/my-account";}', 'yes'),
(522, 'db_upgraded', '', 'yes'),
(523, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":13:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";s:12:"notify_email";s:1:"1";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1436070063;s:15:"version_checked";s:5:"4.1.5";s:12:"translations";a:0:{}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(526, 'rewrite_rules', 'a:168:{s:22:"^wc-api/v([1-2]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-2]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:36:"shop/.+?/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"shop/.+?/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"shop/.+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"shop/.+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"shop/.+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"shop/(.+?)/([^/]+)/trackback/?$";s:58:"index.php?product_cat=$matches[1]&product=$matches[2]&tb=1";s:51:"shop/(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:70:"index.php?product_cat=$matches[1]&product=$matches[2]&feed=$matches[3]";s:46:"shop/(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:70:"index.php?product_cat=$matches[1]&product=$matches[2]&feed=$matches[3]";s:39:"shop/(.+?)/([^/]+)/page/?([0-9]{1,})/?$";s:71:"index.php?product_cat=$matches[1]&product=$matches[2]&paged=$matches[3]";s:46:"shop/(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$";s:71:"index.php?product_cat=$matches[1]&product=$matches[2]&cpage=$matches[3]";s:36:"shop/(.+?)/([^/]+)/wc-api(/(.*))?/?$";s:72:"index.php?product_cat=$matches[1]&product=$matches[2]&wc-api=$matches[4]";s:40:"shop/.+?/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"shop/.+?/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:31:"shop/(.+?)/([^/]+)(/[0-9]+)?/?$";s:70:"index.php?product_cat=$matches[1]&product=$matches[2]&page=$matches[3]";s:25:"shop/.+?/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"shop/.+?/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"shop/.+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"shop/.+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"shop/.+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"product_variation/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"shop_order_refund/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:47:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"([0-9]{4})/([0-9]{1,2})/([^/]+)/trackback/?$";s:69:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&tb=1";s:64:"([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:52:"([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&paged=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&cpage=$matches[4]";s:49:"([0-9]{4})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:83:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&wc-api=$matches[5]";s:51:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:62:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]";s:36:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(527, '_site_transient_timeout_browser_8573ab448203183ab7511e8ef5367263', '1431741070', 'yes'),
(528, '_site_transient_browser_8573ab448203183ab7511e8ef5367263', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"37.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(531, 'can_compress_scripts', '1', 'yes'),
(542, '_transient_timeout_plugin_slugs', '1431651426', 'no'),
(543, '_transient_plugin_slugs', 'a:7:{i:0;s:19:"akismet/akismet.php";i:1;s:25:"duplicator/duplicator.php";i:2;s:9:"hello.php";i:3;s:37:"homepage-control/homepage-control.php";i:4;s:19:"jetpack/jetpack.php";i:5;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:6;s:27:"woocommerce/woocommerce.php";}', 'no'),
(549, '_transient_timeout_wc_rating_count_43', '1462672650', 'no'),
(550, '_transient_wc_rating_count_43', '0', 'no'),
(551, '_transient_timeout_wc_average_rating_43', '1462672650', 'no'),
(552, '_transient_wc_average_rating_43', '', 'no'),
(559, '_transient_timeout_wc_term_counts', '1462672927', 'no'),
(560, '_transient_wc_term_counts', 'a:2:{i:8;s:1:"9";i:7;s:2:"11";}', 'no'),
(564, '_transient_timeout_wc_uf_pid_78a02809b2ec2d2864abea75fd321cf4', '1462678521', 'no'),
(565, '_transient_wc_uf_pid_78a02809b2ec2d2864abea75fd321cf4', 'a:11:{i:0;i:43;i:1;i:28;i:2;i:27;i:3;i:26;i:4;i:25;i:5;i:24;i:6;i:23;i:7;i:22;i:8;i:21;i:9;i:20;i:10;i:12;}', 'no'),
(567, '_transient_timeout_wc_uf_pid_19c414cfad2723f2d74e5137df563326', '1462680952', 'no'),
(568, '_transient_wc_uf_pid_19c414cfad2723f2d74e5137df563326', 'a:11:{i:0;i:43;i:1;i:28;i:2;i:27;i:3;i:26;i:4;i:25;i:5;i:24;i:6;i:23;i:7;i:22;i:8;i:21;i:9;i:20;i:10;i:12;}', 'no'),
(574, '_transient_timeout_wc_ship_2302f6b881d86f0493e98c696117aa17', '1431149724', 'no'),
(575, '_transient_wc_ship_2302f6b881d86f0493e98c696117aa17', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";d:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(576, '_transient_timeout_wc_ship_7c52b0f7626a3775bcd431a1e769db47', '1431150321', 'no'),
(577, '_transient_wc_ship_7c52b0f7626a3775bcd431a1e769db47', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";d:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(578, '_transient_timeout_wc_ship_adca3b2c4bc8095f1849b2694044b827', '1431150330', 'no'),
(579, '_transient_wc_ship_adca3b2c4bc8095f1849b2694044b827', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";d:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(580, '_transient_is_multi_author', '0', 'yes'),
(581, '_transient_timeout_wc_uf_pid_0f80589452aea7a50c1307e85046cf14_s', '1462682779', 'no'),
(582, '_transient_wc_uf_pid_0f80589452aea7a50c1307e85046cf14_s', 'a:1:{i:0;i:43;}', 'no'),
(589, '_site_transient_timeout_browser_a344c581ee2eff9c9c4fcdf9997f17a9', '1432169721', 'yes'),
(590, '_site_transient_browser_a344c581ee2eff9c9c4fcdf9997f17a9', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"42.0.2311.135";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(591, '_transient_timeout_wc_admin_report', '1431651323', 'no'),
(592, '_transient_wc_admin_report', 'a:2:{s:32:"56b59a71d26bfa07d0a759a2a0dc7bac";a:1:{i:0;O:8:"stdClass":2:{s:15:"sparkline_value";s:6:"150000";s:9:"post_date";s:19:"2015-05-09 04:45:56";}}s:32:"5d7df7cfcd4dcaef92b5172aa5e871a1";a:1:{i:0;O:8:"stdClass":3:{s:10:"product_id";s:2:"12";s:15:"sparkline_value";s:1:"1";s:9:"post_date";s:19:"2015-05-09 04:45:56";}}}', 'no'),
(593, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1431608129', 'no'),
(594, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1431608130', 'no'),
(595, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1431564930', 'no'),
(596, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1431575730', 'yes'),
(597, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5159";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3241";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3155";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2699";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2482";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1984";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1856";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1817";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1763";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1752";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1716";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1708";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1599";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1404";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1347";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1259";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1206";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1149";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1136";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1001";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"967";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"920";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"891";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"884";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"858";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"849";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"800";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"778";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"752";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"730";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"727";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"717";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"689";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"678";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"673";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"667";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"638";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"635";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"632";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"630";}}', 'yes'),
(598, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1431608132', 'no'),
(599, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1431608133', 'no'),
(600, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1431564933', 'no'),
(601, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1431608134', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(602, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 May 2015 00:26:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:28:"Your WordPress, Streamlined.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WordPress SEO by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast&#039;s WordPress SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Displays Google Analytics reports and real-time statistics in your WordPress Dashboard. Inserts the latest tracking code in every page of your site.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:137:"Wordfence Security is a free enterprise class security and performance plugin that makes your site up to 50 times faster and more secure.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Google Analytics by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:23:"MailChimp for WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/mailchimp-for-wp/#post-54377";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 10 Jun 2013 17:32:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"54377@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"The best MailChimp plugin to get more email subscribers. Easily add MailChimp sign-up forms and sign-up checkboxes to your WordPress site.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Danny van Kooten";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"UpdraftPlus Backup and Restoration";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"WPtouch Mobile Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wptouch/#post-5468";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 May 2008 04:58:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5468@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:67:"Make your WordPress website mobile-friendly with just a few clicks.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"BraveNewCode Inc.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Broken Link Checker";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/broken-link-checker/#post-2441";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 08 Oct 2007 21:35:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2441@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"This plugin will check your posts, comments and other content for broken links and missing images, and notify you if any are found.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Janis Elsts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Captcha by BestWebSoft";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/captcha/#post-26129";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Apr 2011 05:53:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26129@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:79:"This plugin allows you to implement super security captcha form into web forms.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"bestwebsoft";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26607@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:13:"Photo Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/photo-gallery/#post-63299";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 27 Jan 2014 15:58:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"63299@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:143:"Photo Gallery is an advanced plugin with a list of tools and options for adding and editing images for different views. It is fully responsive.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"webdorado";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Fast Secure Contact Form";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/si-contact-form/#post-12636";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Aug 2009 01:20:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"12636@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"An easy and powerful form builder that lets your visitors send you email. Blocks all automated spammers. No templates to mess with.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Mike Challis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 12 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"EWWW Image Optimizer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/ewww-image-optimizer/#post-38780";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 06 Jun 2012 19:30:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38780@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"Reduce file sizes for images in WordPress including NextGEN, GRAND FlAGallery and more using lossless/lossy methods and image format conversion.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"nosilver4u";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP User Avatar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/wp-user-avatar/#post-48017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 12 Jan 2013 05:17:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"48017@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Use any image from your WordPress Media Library as a custom user avatar. Add your own Default Avatar.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Bangbay Siboliban";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Contact Form by BestWebSoft";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/plugins/contact-form-plugin/#post-26890";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 26 May 2011 07:34:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26890@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:43:"Add Contact Form to your WordPress website.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"bestwebsoft";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Share Buttons by AddToAny";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wordpress.org/plugins/add-to-any/#post-498";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 17 Mar 2007 23:08:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"498@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:142:"Share buttons for WordPress including AddToAny&#039;s universal sharing button, Facebook, Twitter, Google+, Pinterest, WhatsApp and many more.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"micropat";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"ManageWP Worker";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/worker/#post-24528";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 18 Feb 2011 13:06:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"24528@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:103:"ManageWP is the ultimate WordPress productivity tool, allowing you to efficiently manage your websites.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Vladimir Prelovac";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Thu, 14 May 2015 00:55:34 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Thu, 14 May 2015 01:01:10 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Thu, 14 May 2015 00:26:10 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}s:5:"build";s:14:"20130911040210";}', 'no'),
(603, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1431608135', 'no'),
(604, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1431564935', 'no'),
(605, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1431608135', 'no'),
(606, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2015/05/wordpress-4-2-2/''>WordPress 4.2.2 Security and Maintenance Release</a> <span class="rss-date">May 7, 2015</span><div class="rssSummary">WordPress 4.2.2 is now available. This is a critical security release for all previous versions and we strongly encourage you to update your sites immediately. Version 4.2.2 addresses two security issues: The Genericons icon font package, which is used in a number of popular themes and plugins, contained an HTML file vulnerable to a cross-site [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://wptavern.com/wp-engine-rolls-out-wp-cli-support-to-select-partners-for-beta-testing''>WPTavern: WP Engine Rolls Out WP-CLI Support to Select Partners for Beta Testing</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/wp-rollback-provides-basic-versioning-for-wordpress-org-plugins-and-themes''>WPTavern: WP Rollback Provides Basic Versioning for WordPress.org Plugins and Themes</a></li><li><a class=''rsswidget'' href=''http://ma.tt/2015/05/advanced-hindsight/''>Matt: Advanced Hindsight</a></li></ul></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Popular Plugin:</span> <a href=''https://wordpress.org/plugins/siteorigin-panels/'' class=''dashboard-news-plugin-link''>Page Builder by SiteOrigin</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=siteorigin-panels&amp;_wpnonce=888d525bbb&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Page Builder by SiteOrigin''>Install</a>)</span></li></ul></div>', 'no'),
(608, 'duplicator_settings', 'a:10:{s:7:"version";s:6:"0.5.18";s:18:"uninstall_settings";b:1;s:15:"uninstall_files";b:1;s:16:"uninstall_tables";b:1;s:13:"package_debug";b:0;s:17:"package_mysqldump";b:0;s:22:"package_mysqldump_path";s:0:"";s:24:"package_phpdump_qrylimit";s:3:"100";s:17:"package_zip_flush";b:0;s:20:"storage_htaccess_off";b:0;}', 'yes'),
(609, 'duplicator_version_plugin', '0.5.18', 'yes'),
(610, 'duplicator_ui_view_state', 'a:4:{s:14:"dup-wpnotice01";b:1;s:22:"dup-pack-storage-panel";s:1:"0";s:22:"dup-pack-archive-panel";s:1:"0";s:24:"dup-pack-installer-panel";s:1:"1";}', 'yes'),
(611, '_transient_timeout_wc_upgrade_notice_2.2.10', '1431651428', 'no'),
(612, '_transient_wc_upgrade_notice_2.2.10', '<div class="wc_plugin_upgrade_notice">2.3.0 is a major update so it is important that you make backups, test extensions and your theme prior to updating, and ensure extensions are 2.3 compatible. Developers should catch up with <a href="http://develop.woothemes.com/">develop.woothemes.com</a> to see what has been happening in core.</div> ', 'no'),
(613, 'duplicator_package_active', 'O:11:"DUP_Package":16:{s:2:"ID";N;s:4:"Name";s:19:"20150514_rajutanibu";s:4:"Hash";s:29:"5553f34832cca3809150514005848";s:8:"NameHash";s:49:"20150514_rajutanibu_5553f34832cca3809150514005848";s:7:"Version";s:6:"0.5.18";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:43:"D:/xampp/htdocs/rajutanibu/wp-snapshots/tmp";s:8:"StoreURL";s:41:"http://localhost/rajutanibu/wp-snapshots/";s:8:"ScanFile";s:59:"20150514_rajutanibu_5553f34832cca3809150514005848_scan.json";s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:7:"Archive";O:11:"DUP_Archive":17:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:8:"FilterOn";i:0;s:4:"File";N;s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:26:"D:/xampp/htdocs/rajutanibu";s:4:"Size";i:0;s:12:"WarnFileSize";a:0:{}s:12:"WarnFileName";a:0:{}s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:5:"Links";a:0:{}s:8:"OmitDirs";a:0:{}s:9:"OmitFiles";a:0:{}s:10:"\0*\0Package";O:11:"DUP_Package":16:{s:2:"ID";N;s:4:"Name";s:19:"20150514_rajutanibu";s:4:"Hash";s:29:"5553f34832cca3809150514005848";s:8:"NameHash";s:49:"20150514_rajutanibu_5553f34832cca3809150514005848";s:7:"Version";s:6:"0.5.18";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:43:"D:/xampp/htdocs/rajutanibu/wp-snapshots/tmp";s:8:"StoreURL";s:41:"http://localhost/rajutanibu/wp-snapshots/";s:8:"ScanFile";N;s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:7:"Archive";r:15;s:9:"Installer";O:13:"DUP_Installer":11:{s:4:"File";N;s:4:"Size";i:0;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBName";s:21:"k2300224_rajutanibuDB";s:10:"OptsDBUser";s:16:"k2300224_baydiwo";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:21:"http://rajutanibu.com";s:10:"\0*\0Package";r:30;}s:8:"Database";O:12:"DUP_Database":11:{s:4:"Type";s:5:"MySQL";s:4:"Size";N;s:4:"File";N;s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"\0*\0Package";r:30;s:25:"\0DUP_Database\0dbStorePath";N;s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}s:28:"\0DUP_Archive\0filterDirsArray";a:0:{}s:28:"\0DUP_Archive\0filterExtsArray";a:0:{}}s:9:"Installer";r:45;s:8:"Database";r:57;}', 'yes'),
(616, '_site_transient_timeout_theme_roots', '1436071861', 'yes'),
(617, '_site_transient_theme_roots', 'a:5:{s:8:"photolab";s:7:"/themes";s:10:"storefront";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(618, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1436070069;s:7:"checked";a:5:{s:8:"photolab";s:5:"1.0.1";s:10:"storefront";s:5:"1.3.0";s:13:"twentyfifteen";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.3";s:14:"twentythirteen";s:3:"1.4";}s:8:"response";a:5:{s:8:"photolab";a:4:{s:5:"theme";s:8:"photolab";s:11:"new_version";s:5:"1.1.0";s:3:"url";s:38:"https://wordpress.org/themes/photolab/";s:7:"package";s:56:"https://downloads.wordpress.org/theme/photolab.1.1.0.zip";}s:10:"storefront";a:4:{s:5:"theme";s:10:"storefront";s:11:"new_version";s:5:"1.4.6";s:3:"url";s:40:"https://wordpress.org/themes/storefront/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/storefront.1.4.6.zip";}s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.2.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.4.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentythirteen.1.5.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(619, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1436070067;s:8:"response";a:5:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.2.zip";}s:25:"duplicator/duplicator.php";O:8:"stdClass":6:{s:2:"id";s:5:"22600";s:4:"slug";s:10:"duplicator";s:6:"plugin";s:25:"duplicator/duplicator.php";s:11:"new_version";s:6:"0.5.22";s:3:"url";s:41:"https://wordpress.org/plugins/duplicator/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/duplicator.0.5.22.zip";}s:37:"homepage-control/homepage-control.php";O:8:"stdClass":6:{s:2:"id";s:5:"48570";s:4:"slug";s:16:"homepage-control";s:6:"plugin";s:37:"homepage-control/homepage-control.php";s:11:"new_version";s:5:"2.0.1";s:3:"url";s:47:"https://wordpress.org/plugins/homepage-control/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/homepage-control.2.0.1.zip";}s:19:"jetpack/jetpack.php";O:8:"stdClass":6:{s:2:"id";s:5:"20101";s:4:"slug";s:7:"jetpack";s:6:"plugin";s:19:"jetpack/jetpack.php";s:11:"new_version";s:5:"3.5.3";s:3:"url";s:38:"https://wordpress.org/plugins/jetpack/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/jetpack.3.5.3.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:6:"2.3.11";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/woocommerce.2.3.11.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":7:{s:2:"id";s:4:"4437";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"2.2.4";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";s:14:"upgrade_notice";s:124:"Better AJAX response error handling in the JavaScript. This should fix a long-standing bug in this plugin. Props Hew Sutton.";}}}', 'yes'),
(621, '_wc_session_3661f0f4c60f5b97d34bbf8c56c5c4fb', 'a:24:{s:4:"cart";s:933:"a:3:{s:32:"4e732ced3463d06de0ca9a15b6153677";a:9:{s:10:"product_id";i:26;s:12:"variation_id";s:0:"";s:9:"variation";s:0:"";s:8:"quantity";i:1;s:10:"line_total";d:150000;s:8:"line_tax";i:0;s:13:"line_subtotal";i:150000;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"33e75ff09dd601bbe69f351039152189";a:9:{s:10:"product_id";i:28;s:12:"variation_id";s:0:"";s:9:"variation";s:0:"";s:8:"quantity";i:1;s:10:"line_total";d:150000;s:8:"line_tax";i:0;s:13:"line_subtotal";i:150000;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"c20ad4d76fe97759aa27a0c99bff6710";a:9:{s:10:"product_id";i:12;s:12:"variation_id";s:0:"";s:9:"variation";s:0:"";s:8:"quantity";i:1;s:10:"line_total";d:150000;s:8:"line_tax";i:0;s:13:"line_subtotal";i:150000;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:10:"wc_notices";N;s:23:"chosen_shipping_methods";s:31:"a:1:{i:0;s:13:"free_shipping";}";s:22:"shipping_method_counts";s:14:"a:1:{i:0;i:1;}";s:21:"chosen_payment_method";s:4:"bacs";s:8:"customer";s:375:"a:14:{s:7:"country";s:2:"ID";s:5:"state";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:16:"shipping_country";s:2:"ID";s:14:"shipping_state";s:0:"";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:19:"cart_contents_total";d:450000;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:3;s:17:"cart_contents_tax";i:0;s:5:"total";d:450000;s:8:"subtotal";i:450000;s:15:"subtotal_ex_tax";i:450000;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:14:"discount_total";i:0;s:14:"shipping_total";d:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";}', 'no'),
(622, '_wc_session_expires_3661f0f4c60f5b97d34bbf8c56c5c4fb', '1436242980', 'no'),
(623, '_transient_timeout_wc_ship_5f4e03ccb1b261fc2b223fbe39dfa8cf', '1436073820', 'no'),
(624, '_transient_wc_ship_5f4e03ccb1b261fc2b223fbe39dfa8cf', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";d:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=481 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1424488382:1'),
(4, 4, '_wp_page_template', 'template-homepage.php'),
(5, 13, '_wp_attached_file', '2015/02/MG_3588.jpg'),
(6, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:480;s:4:"file";s:19:"2015/02/MG_3588.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"MG_3588-271x182.jpg";s:5:"width";i:271;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"MG_3588-370x247.jpg";s:5:"width";i:370;s:6:"height";i:247;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"MG_3588-670x447.jpg";s:5:"width";i:670;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"MG_3588-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"MG_3588-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"MG_3588-570x380.jpg";s:5:"width";i:570;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:22;s:6:"credit";s:0:"";s:6:"camera";s:15:"Canon EOS 1100D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420979198;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";i:8;}}'),
(7, 14, '_wp_attached_file', '2015/02/MG_3582.jpg'),
(8, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:480;s:4:"file";s:19:"2015/02/MG_3582.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"MG_3582-271x182.jpg";s:5:"width";i:271;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"MG_3582-370x247.jpg";s:5:"width";i:370;s:6:"height";i:247;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"MG_3582-670x447.jpg";s:5:"width";i:670;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"MG_3582-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"MG_3582-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"MG_3582-570x380.jpg";s:5:"width";i:570;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:4.5;s:6:"credit";s:0:"";s:6:"camera";s:15:"Canon EOS 1100D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420979037;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"21";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";i:8;}}'),
(9, 15, '_wp_attached_file', '2015/02/MG_3583.jpg'),
(10, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:720;s:4:"file";s:19:"2015/02/MG_3583.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"MG_3583-271x182.jpg";s:5:"width";i:271;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"MG_3583-167x250.jpg";s:5:"width";i:167;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"MG_3583-300x450.jpg";s:5:"width";i:300;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"MG_3583-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"MG_3583-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"MG_3583-480x380.jpg";s:5:"width";i:480;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:15:"Canon EOS 1100D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420979061;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"20";s:3:"iso";s:3:"160";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(11, 16, '_wp_attached_file', '2015/02/MG_3584.jpg'),
(12, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:480;s:4:"file";s:19:"2015/02/MG_3584.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"MG_3584-271x182.jpg";s:5:"width";i:271;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"MG_3584-370x247.jpg";s:5:"width";i:370;s:6:"height";i:247;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"MG_3584-670x447.jpg";s:5:"width";i:670;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"MG_3584-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"MG_3584-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"MG_3584-570x380.jpg";s:5:"width";i:570;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:15:"Canon EOS 1100D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420979086;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"20";s:3:"iso";s:3:"160";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:0:"";s:11:"orientation";i:8;}}'),
(14, 17, '_wp_attached_file', '2015/02/MG_35881.jpg'),
(15, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:480;s:4:"file";s:20:"2015/02/MG_35881.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"MG_35881-271x182.jpg";s:5:"width";i:271;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"MG_35881-370x247.jpg";s:5:"width";i:370;s:6:"height";i:247;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"MG_35881-670x447.jpg";s:5:"width";i:670;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"MG_35881-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"MG_35881-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"MG_35881-570x380.jpg";s:5:"width";i:570;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:22;s:6:"credit";s:0:"";s:6:"camera";s:15:"Canon EOS 1100D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420979198;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";i:8;}}'),
(16, 12, '_thumbnail_id', '13'),
(17, 12, '_product_attributes', 'a:1:{s:5:"warna";a:6:{s:4:"name";s:5:"Warna";s:5:"value";s:15:"Rante | Abu-abu";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(18, 12, '_edit_lock', '1422854225:1'),
(19, 12, '_edit_last', '1'),
(20, 12, '_visibility', 'visible'),
(21, 12, '_stock_status', 'instock'),
(22, 12, 'total_sales', '2'),
(23, 12, '_downloadable', 'no'),
(24, 12, '_virtual', 'no'),
(25, 12, '_regular_price', '150000'),
(26, 12, '_sale_price', ''),
(27, 12, '_purchase_note', ''),
(28, 12, '_featured', 'yes'),
(29, 12, '_weight', ''),
(30, 12, '_length', ''),
(31, 12, '_width', ''),
(32, 12, '_height', ''),
(33, 12, '_sku', '12'),
(34, 12, '_sale_price_dates_from', ''),
(35, 12, '_sale_price_dates_to', ''),
(36, 12, '_price', '150000'),
(37, 12, '_sold_individually', 'yes'),
(38, 12, '_manage_stock', 'yes'),
(39, 12, '_backorders', 'notify'),
(40, 12, '_stock', '3'),
(41, 12, '_product_image_gallery', '13,14,15,16'),
(42, 18, '_order_key', 'wc_order_54cf08c43d81c'),
(43, 18, '_order_currency', 'IDR'),
(44, 18, '_prices_include_tax', 'no'),
(45, 18, '_customer_ip_address', '::1'),
(46, 18, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0'),
(47, 18, '_customer_user', '1'),
(48, 18, '_order_shipping', '0'),
(49, 18, '_billing_country', 'ID'),
(50, 18, '_billing_first_name', 'bayu'),
(51, 18, '_billing_last_name', 'adi'),
(52, 18, '_billing_company', ''),
(53, 18, '_billing_address_1', 'kodam'),
(54, 18, '_billing_address_2', ''),
(55, 18, '_billing_city', 'jakarta'),
(56, 18, '_billing_state', 'JK'),
(57, 18, '_billing_postcode', '13620'),
(58, 18, '_billing_email', 'bayu.eighted@gmail.com'),
(59, 18, '_billing_phone', '0812888888888'),
(60, 18, '_shipping_country', 'ID'),
(61, 18, '_shipping_first_name', 'bayu'),
(62, 18, '_shipping_last_name', 'adi'),
(63, 18, '_shipping_company', ''),
(64, 18, '_shipping_address_1', 'kodam'),
(65, 18, '_shipping_address_2', ''),
(66, 18, '_shipping_city', 'jakarta'),
(67, 18, '_shipping_state', 'JK'),
(68, 18, '_shipping_postcode', '13620'),
(69, 18, '_payment_method', 'bacs'),
(70, 18, '_payment_method_title', 'Direct Bank Transfer'),
(71, 18, '_order_discount', '0'),
(72, 18, '_cart_discount', '0'),
(73, 18, '_order_tax', '0'),
(74, 18, '_order_shipping_tax', '0'),
(75, 18, '_order_total', '150000.00'),
(76, 18, '_recorded_sales', 'yes'),
(77, 18, '_recorded_coupon_usage_counts', 'yes'),
(78, 18, '_download_permissions_granted', '1'),
(79, 18, '_edit_lock', '1422854513:1'),
(80, 20, '_thumbnail_id', '13'),
(81, 20, '_product_attributes', 'a:1:{s:5:"warna";a:6:{s:4:"name";s:5:"Warna";s:5:"value";s:15:"Rante | Abu-abu";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(82, 20, '_edit_lock', '1422854559:1'),
(83, 20, '_edit_last', '1'),
(84, 20, '_visibility', 'visible'),
(85, 20, '_stock_status', 'instock'),
(86, 20, 'total_sales', '1'),
(87, 20, '_downloadable', 'no'),
(88, 20, '_virtual', 'no'),
(89, 20, '_regular_price', '150000'),
(90, 20, '_sale_price', ''),
(91, 20, '_purchase_note', ''),
(92, 20, '_featured', 'yes'),
(93, 20, '_weight', ''),
(94, 20, '_length', ''),
(95, 20, '_width', ''),
(96, 20, '_height', ''),
(97, 20, '_sku', '12'),
(98, 20, '_sale_price_dates_from', ''),
(99, 20, '_sale_price_dates_to', ''),
(100, 20, '_price', '150000'),
(101, 20, '_sold_individually', 'yes'),
(102, 20, '_manage_stock', 'yes'),
(103, 20, '_backorders', 'notify'),
(104, 20, '_stock', '4'),
(105, 20, '_product_image_gallery', '13,14,15,16'),
(111, 21, '_thumbnail_id', '13'),
(112, 21, '_product_attributes', 'a:1:{s:5:"warna";a:6:{s:4:"name";s:5:"Warna";s:5:"value";s:15:"Rante | Abu-abu";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(113, 21, '_edit_lock', '1422854575:1'),
(114, 21, '_edit_last', '1'),
(115, 21, '_visibility', 'visible'),
(116, 21, '_stock_status', 'instock'),
(117, 21, 'total_sales', '1'),
(118, 21, '_downloadable', 'no'),
(119, 21, '_virtual', 'no'),
(120, 21, '_regular_price', '150000'),
(121, 21, '_sale_price', ''),
(122, 21, '_purchase_note', ''),
(123, 21, '_featured', 'yes'),
(124, 21, '_weight', ''),
(125, 21, '_length', ''),
(126, 21, '_width', ''),
(127, 21, '_height', ''),
(128, 21, '_sku', '12'),
(129, 21, '_sale_price_dates_from', ''),
(130, 21, '_sale_price_dates_to', ''),
(131, 21, '_price', '150000'),
(132, 21, '_sold_individually', 'yes'),
(133, 21, '_manage_stock', 'yes'),
(134, 21, '_backorders', 'notify'),
(135, 21, '_stock', '4'),
(136, 21, '_product_image_gallery', '13,14,15,16'),
(142, 22, '_thumbnail_id', '13'),
(143, 22, '_product_attributes', 'a:1:{s:5:"warna";a:6:{s:4:"name";s:5:"Warna";s:5:"value";s:15:"Rante | Abu-abu";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(144, 22, '_edit_lock', '1422854590:1'),
(145, 22, '_edit_last', '1'),
(146, 22, '_visibility', 'visible'),
(147, 22, '_stock_status', 'instock'),
(148, 22, 'total_sales', '1'),
(149, 22, '_downloadable', 'no'),
(150, 22, '_virtual', 'no'),
(151, 22, '_regular_price', '150000'),
(152, 22, '_sale_price', ''),
(153, 22, '_purchase_note', ''),
(154, 22, '_featured', 'yes'),
(155, 22, '_weight', ''),
(156, 22, '_length', ''),
(157, 22, '_width', ''),
(158, 22, '_height', ''),
(159, 22, '_sku', '12'),
(160, 22, '_sale_price_dates_from', ''),
(161, 22, '_sale_price_dates_to', ''),
(162, 22, '_price', '150000'),
(163, 22, '_sold_individually', 'yes'),
(164, 22, '_manage_stock', 'yes'),
(165, 22, '_backorders', 'notify'),
(166, 22, '_stock', '4'),
(167, 22, '_product_image_gallery', '13,14,15,16'),
(173, 23, '_thumbnail_id', '13'),
(174, 23, '_product_attributes', 'a:1:{s:5:"warna";a:6:{s:4:"name";s:5:"Warna";s:5:"value";s:15:"Rante | Abu-abu";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(175, 23, '_edit_lock', '1422854609:1'),
(176, 23, '_edit_last', '1'),
(177, 23, '_visibility', 'visible'),
(178, 23, '_stock_status', 'instock'),
(179, 23, 'total_sales', '1'),
(180, 23, '_downloadable', 'no'),
(181, 23, '_virtual', 'no'),
(182, 23, '_regular_price', '150000'),
(183, 23, '_sale_price', ''),
(184, 23, '_purchase_note', ''),
(185, 23, '_featured', 'yes'),
(186, 23, '_weight', ''),
(187, 23, '_length', ''),
(188, 23, '_width', ''),
(189, 23, '_height', ''),
(190, 23, '_sku', '12'),
(191, 23, '_sale_price_dates_from', ''),
(192, 23, '_sale_price_dates_to', ''),
(193, 23, '_price', '150000'),
(194, 23, '_sold_individually', 'yes'),
(195, 23, '_manage_stock', 'yes'),
(196, 23, '_backorders', 'notify'),
(197, 23, '_stock', '4'),
(198, 23, '_product_image_gallery', '13,14,15,16'),
(204, 24, '_thumbnail_id', '13'),
(205, 24, '_product_attributes', 'a:1:{s:5:"warna";a:6:{s:4:"name";s:5:"Warna";s:5:"value";s:15:"Rante | Abu-abu";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(206, 24, '_edit_lock', '1422854623:1'),
(207, 24, '_edit_last', '1'),
(208, 24, '_visibility', 'visible'),
(209, 24, '_stock_status', 'instock'),
(210, 24, 'total_sales', '1'),
(211, 24, '_downloadable', 'no'),
(212, 24, '_virtual', 'no'),
(213, 24, '_regular_price', '150000'),
(214, 24, '_sale_price', ''),
(215, 24, '_purchase_note', ''),
(216, 24, '_featured', 'yes'),
(217, 24, '_weight', ''),
(218, 24, '_length', ''),
(219, 24, '_width', ''),
(220, 24, '_height', ''),
(221, 24, '_sku', '12'),
(222, 24, '_sale_price_dates_from', ''),
(223, 24, '_sale_price_dates_to', ''),
(224, 24, '_price', '150000'),
(225, 24, '_sold_individually', 'yes'),
(226, 24, '_manage_stock', 'yes'),
(227, 24, '_backorders', 'notify'),
(228, 24, '_stock', '4'),
(229, 24, '_product_image_gallery', '13,14,15,16'),
(235, 25, '_thumbnail_id', '13'),
(236, 25, '_product_attributes', 'a:1:{s:5:"warna";a:6:{s:4:"name";s:5:"Warna";s:5:"value";s:15:"Rante | Abu-abu";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(237, 25, '_edit_lock', '1422854750:1'),
(238, 25, '_edit_last', '1'),
(239, 25, '_visibility', 'visible'),
(240, 25, '_stock_status', 'instock'),
(241, 25, 'total_sales', '1'),
(242, 25, '_downloadable', 'no'),
(243, 25, '_virtual', 'no'),
(244, 25, '_regular_price', '150000'),
(245, 25, '_sale_price', ''),
(246, 25, '_purchase_note', ''),
(247, 25, '_featured', 'yes'),
(248, 25, '_weight', ''),
(249, 25, '_length', ''),
(250, 25, '_width', ''),
(251, 25, '_height', ''),
(252, 25, '_sku', '12'),
(253, 25, '_sale_price_dates_from', ''),
(254, 25, '_sale_price_dates_to', ''),
(255, 25, '_price', '150000'),
(256, 25, '_sold_individually', 'yes'),
(257, 25, '_manage_stock', 'yes'),
(258, 25, '_backorders', 'notify'),
(259, 25, '_stock', '4'),
(260, 25, '_product_image_gallery', '13,14,15,16'),
(266, 26, '_thumbnail_id', '13'),
(267, 26, '_product_attributes', 'a:1:{s:5:"warna";a:6:{s:4:"name";s:5:"Warna";s:5:"value";s:15:"Rante | Abu-abu";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(268, 26, '_edit_lock', '1422854774:1'),
(269, 26, '_edit_last', '1'),
(270, 26, '_visibility', 'visible'),
(271, 26, '_stock_status', 'instock'),
(272, 26, 'total_sales', '1'),
(273, 26, '_downloadable', 'no'),
(274, 26, '_virtual', 'no'),
(275, 26, '_regular_price', '150000'),
(276, 26, '_sale_price', ''),
(277, 26, '_purchase_note', ''),
(278, 26, '_featured', 'yes'),
(279, 26, '_weight', ''),
(280, 26, '_length', ''),
(281, 26, '_width', ''),
(282, 26, '_height', ''),
(283, 26, '_sku', '12'),
(284, 26, '_sale_price_dates_from', ''),
(285, 26, '_sale_price_dates_to', ''),
(286, 26, '_price', '150000'),
(287, 26, '_sold_individually', 'yes'),
(288, 26, '_manage_stock', 'yes'),
(289, 26, '_backorders', 'notify'),
(290, 26, '_stock', '4'),
(291, 26, '_product_image_gallery', '13,14,15,16'),
(297, 27, '_thumbnail_id', '13'),
(298, 27, '_product_attributes', 'a:1:{s:5:"warna";a:6:{s:4:"name";s:5:"Warna";s:5:"value";s:15:"Rante | Abu-abu";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(299, 27, '_edit_lock', '1422854788:1'),
(300, 27, '_edit_last', '1'),
(301, 27, '_visibility', 'visible'),
(302, 27, '_stock_status', 'instock'),
(303, 27, 'total_sales', '1'),
(304, 27, '_downloadable', 'no'),
(305, 27, '_virtual', 'no'),
(306, 27, '_regular_price', '150000'),
(307, 27, '_sale_price', ''),
(308, 27, '_purchase_note', ''),
(309, 27, '_featured', 'no'),
(310, 27, '_weight', ''),
(311, 27, '_length', ''),
(312, 27, '_width', ''),
(313, 27, '_height', ''),
(314, 27, '_sku', '12'),
(315, 27, '_sale_price_dates_from', ''),
(316, 27, '_sale_price_dates_to', ''),
(317, 27, '_price', '150000'),
(318, 27, '_sold_individually', 'yes'),
(319, 27, '_manage_stock', 'yes'),
(320, 27, '_backorders', 'notify'),
(321, 27, '_stock', '4'),
(322, 27, '_product_image_gallery', '13,14,15,16'),
(328, 28, '_thumbnail_id', '13'),
(329, 28, '_product_attributes', 'a:1:{s:5:"warna";a:6:{s:4:"name";s:5:"Warna";s:5:"value";s:15:"Rante | Abu-abu";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(330, 28, '_edit_lock', '1422854984:1'),
(331, 28, '_edit_last', '1'),
(332, 28, '_visibility', 'visible'),
(333, 28, '_stock_status', 'instock'),
(334, 28, 'total_sales', '1'),
(335, 28, '_downloadable', 'no'),
(336, 28, '_virtual', 'no'),
(337, 28, '_regular_price', '150000'),
(338, 28, '_sale_price', ''),
(339, 28, '_purchase_note', ''),
(340, 28, '_featured', 'no'),
(341, 28, '_weight', ''),
(342, 28, '_length', ''),
(343, 28, '_width', ''),
(344, 28, '_height', ''),
(345, 28, '_sku', '12'),
(346, 28, '_sale_price_dates_from', ''),
(347, 28, '_sale_price_dates_to', ''),
(348, 28, '_price', '150000'),
(349, 28, '_sold_individually', 'yes'),
(350, 28, '_manage_stock', 'yes'),
(351, 28, '_backorders', 'notify'),
(352, 28, '_stock', '4'),
(353, 28, '_product_image_gallery', '13,14,15,16'),
(359, 28, '_tax_status', 'taxable'),
(360, 28, '_tax_class', ''),
(361, 27, '_tax_status', 'taxable'),
(362, 26, '_tax_status', 'taxable'),
(363, 25, '_tax_status', 'taxable'),
(364, 24, '_tax_status', 'taxable'),
(365, 23, '_tax_status', 'taxable'),
(366, 29, '_wp_attached_file', '2015/02/cropped-MG_3583.jpg'),
(367, 29, '_wp_attachment_context', 'custom-header'),
(368, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:418;s:6:"height";i:180;s:4:"file";s:27:"2015/02/cropped-MG_3583.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"cropped-MG_3583-271x180.jpg";s:5:"width";i:271;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"cropped-MG_3583-370x159.jpg";s:5:"width";i:370;s:6:"height";i:159;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"cropped-MG_3583-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"cropped-MG_3583-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(398, 31, '_edit_last', '1'),
(399, 31, '_edit_lock', '1422858151:1'),
(400, 31, '_wp_page_template', 'default'),
(401, 31, 'sharing_disabled', '1'),
(402, 4, 'sharing_disabled', '1'),
(403, 43, '_edit_last', '1'),
(404, 43, '_edit_lock', '1431136920:1'),
(405, 44, '_wp_attached_file', '2015/05/BA-001.jpg'),
(406, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:18:"2015/05/BA-001.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"BA-001-271x182.jpg";s:5:"width";i:271;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"BA-001-333x250.jpg";s:5:"width";i:333;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"BA-001-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"BA-001-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"BA-001-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"BA-001-570x380.jpg";s:5:"width";i:570;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:52:"SAMSUNG ES70, ES71 / VLUU ES70, ES71 / SAMSUNG SL600";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1429379100;s:9:"copyright";s:15:"COPYRIGHT, 2010";s:12:"focal_length";s:3:"4.9";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:17:"0.066666666666667";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(407, 43, '_thumbnail_id', '44'),
(408, 43, '_visibility', 'visible'),
(409, 43, '_stock_status', 'instock'),
(410, 43, 'total_sales', '0'),
(411, 43, '_downloadable', 'no'),
(412, 43, '_virtual', 'no'),
(413, 43, '_regular_price', '295000'),
(414, 43, '_sale_price', '295000'),
(415, 43, '_purchase_note', 'bca : 12345\r\nmandiri : 45678'),
(416, 43, '_featured', 'no'),
(417, 43, '_weight', '1'),
(418, 43, '_length', '30'),
(419, 43, '_width', '20'),
(420, 43, '_height', '10'),
(421, 43, '_sku', '10'),
(422, 43, '_product_attributes', 'a:1:{s:5:"rajut";a:6:{s:4:"name";s:5:"rajut";s:5:"value";s:5:"merah";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(423, 43, '_sale_price_dates_from', ''),
(424, 43, '_sale_price_dates_to', ''),
(425, 43, '_price', '295000'),
(426, 43, '_sold_individually', ''),
(427, 43, '_manage_stock', 'no'),
(428, 43, '_backorders', 'no'),
(429, 43, '_stock', ''),
(430, 43, '_product_image_gallery', '45,46,47,48,49,50,51'),
(431, 45, '_wp_attached_file', '2015/05/BB-004.jpg'),
(432, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:18:"2015/05/BB-004.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"BB-004-271x182.jpg";s:5:"width";i:271;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"BB-004-333x250.jpg";s:5:"width";i:333;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"BB-004-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"BB-004-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"BB-004-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"BB-004-570x380.jpg";s:5:"width";i:570;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:52:"SAMSUNG ES70, ES71 / VLUU ES70, ES71 / SAMSUNG SL600";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1429380174;s:9:"copyright";s:15:"COPYRIGHT, 2010";s:12:"focal_length";s:3:"4.9";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:17:"0.066666666666667";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(433, 46, '_wp_attached_file', '2015/05/BA-002.jpg'),
(434, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:18:"2015/05/BA-002.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"BA-002-271x182.jpg";s:5:"width";i:271;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"BA-002-333x250.jpg";s:5:"width";i:333;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"BA-002-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"BA-002-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"BA-002-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"BA-002-570x380.jpg";s:5:"width";i:570;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:52:"SAMSUNG ES70, ES71 / VLUU ES70, ES71 / SAMSUNG SL600";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1429379146;s:9:"copyright";s:15:"COPYRIGHT, 2010";s:12:"focal_length";s:3:"4.9";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:17:"0.066666666666667";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(435, 47, '_wp_attached_file', '2015/05/BA-003.jpg'),
(436, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:18:"2015/05/BA-003.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"BA-003-271x182.jpg";s:5:"width";i:271;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"BA-003-333x250.jpg";s:5:"width";i:333;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"BA-003-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"BA-003-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"BA-003-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"BA-003-570x380.jpg";s:5:"width";i:570;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:52:"SAMSUNG ES70, ES71 / VLUU ES70, ES71 / SAMSUNG SL600";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1429379232;s:9:"copyright";s:15:"COPYRIGHT, 2010";s:12:"focal_length";s:3:"4.9";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:17:"0.066666666666667";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(437, 48, '_wp_attached_file', '2015/05/BA-004.jpg'),
(438, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:18:"2015/05/BA-004.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"BA-004-271x182.jpg";s:5:"width";i:271;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"BA-004-333x250.jpg";s:5:"width";i:333;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"BA-004-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"BA-004-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"BA-004-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"BA-004-570x380.jpg";s:5:"width";i:570;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:52:"SAMSUNG ES70, ES71 / VLUU ES70, ES71 / SAMSUNG SL600";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1429379255;s:9:"copyright";s:15:"COPYRIGHT, 2010";s:12:"focal_length";s:3:"4.9";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:3:"0.1";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(439, 49, '_wp_attached_file', '2015/05/BB-001.jpg'),
(440, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:18:"2015/05/BB-001.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"BB-001-271x182.jpg";s:5:"width";i:271;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"BB-001-333x250.jpg";s:5:"width";i:333;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"BB-001-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"BB-001-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"BB-001-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"BB-001-570x380.jpg";s:5:"width";i:570;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:52:"SAMSUNG ES70, ES71 / VLUU ES70, ES71 / SAMSUNG SL600";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1429379799;s:9:"copyright";s:15:"COPYRIGHT, 2010";s:12:"focal_length";s:3:"4.9";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:17:"0.066666666666667";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(441, 50, '_wp_attached_file', '2015/05/BB-002.jpg'),
(442, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:18:"2015/05/BB-002.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"BB-002-271x182.jpg";s:5:"width";i:271;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"BB-002-333x250.jpg";s:5:"width";i:333;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"BB-002-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"BB-002-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"BB-002-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"BB-002-570x380.jpg";s:5:"width";i:570;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:52:"SAMSUNG ES70, ES71 / VLUU ES70, ES71 / SAMSUNG SL600";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1429379983;s:9:"copyright";s:15:"COPYRIGHT, 2010";s:12:"focal_length";s:3:"4.9";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:17:"0.066666666666667";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(443, 51, '_wp_attached_file', '2015/05/BB-003.jpg'),
(444, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:18:"2015/05/BB-003.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"BB-003-271x182.jpg";s:5:"width";i:271;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"BB-003-333x250.jpg";s:5:"width";i:333;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"BB-003-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"BB-003-100x65.jpg";s:5:"width";i:100;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"BB-003-270x180.jpg";s:5:"width";i:270;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"BB-003-570x380.jpg";s:5:"width";i:570;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:52:"SAMSUNG ES70, ES71 / VLUU ES70, ES71 / SAMSUNG SL600";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1429380061;s:9:"copyright";s:15:"COPYRIGHT, 2010";s:12:"focal_length";s:3:"4.9";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:3:"0.1";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(445, 52, '_order_key', 'wc_order_554d910425a0c'),
(446, 52, '_order_currency', 'IDR'),
(447, 52, '_prices_include_tax', 'no'),
(448, 52, '_customer_ip_address', '::1'),
(449, 52, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0'),
(450, 52, '_customer_user', '1'),
(451, 52, '_order_shipping', '0'),
(452, 52, '_billing_country', 'ID'),
(453, 52, '_billing_first_name', 'bayu'),
(454, 52, '_billing_last_name', 'adi'),
(455, 52, '_billing_company', ''),
(456, 52, '_billing_address_1', 'kodam'),
(457, 52, '_billing_address_2', ''),
(458, 52, '_billing_city', 'jakarta'),
(459, 52, '_billing_state', 'JK'),
(460, 52, '_billing_postcode', '13620'),
(461, 52, '_billing_email', 'bayu.eighted@gmail.com'),
(462, 52, '_billing_phone', '0812888888888'),
(463, 52, '_shipping_country', 'ID'),
(464, 52, '_shipping_first_name', 'bayu'),
(465, 52, '_shipping_last_name', 'adi'),
(466, 52, '_shipping_company', ''),
(467, 52, '_shipping_address_1', 'kodam'),
(468, 52, '_shipping_address_2', ''),
(469, 52, '_shipping_city', 'jakarta'),
(470, 52, '_shipping_state', 'JK'),
(471, 52, '_shipping_postcode', '13620'),
(472, 52, '_payment_method', 'bacs'),
(473, 52, '_payment_method_title', 'Direct Bank Transfer'),
(474, 52, '_order_discount', '0'),
(475, 52, '_cart_discount', '0'),
(476, 52, '_order_tax', '0'),
(477, 52, '_order_shipping_tax', '0'),
(478, 52, '_order_total', '150000.00'),
(479, 52, '_recorded_sales', 'yes'),
(480, 52, '_recorded_coupon_usage_counts', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-01-19 09:14:18', '2015-01-19 09:14:18', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-01-19 09:14:18', '2015-01-19 09:14:18', '', 0, 'http://localhost/rajutanibu/?p=1', 0, 'post', '', 1),
(2, 1, '2015-01-19 09:14:18', '2015-01-19 09:14:18', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/rajutanibu/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-01-19 09:14:18', '2015-01-19 09:14:18', '', 0, 'http://localhost/rajutanibu/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-01-19 09:20:07', '2015-01-19 09:20:07', '<div class="page-description">\r\n\r\nHai, selamat datang di Rajutanibu.com!\r\n\r\nKami toko online yang menyediakan berbagai macam hasil rajut merajut seperti tas, baju, dompet, taplak meja, sarung galon aqua, dan lain-lain.\r\nSemua produk di website ini adalah murni hasil rajutan tangan.\r\nJika ini kunjungan pertama Anda, silahkan telepon Rajutanibu.com di no 081219707458, atau kungjungi halaman tentang kami.\r\n\r\nSelamat berbelanja.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Selamat datang!', '', 'publish', 'open', 'open', '', 'homepage', '', '', '2015-02-21 03:14:49', '2015-02-21 03:14:49', '', 0, 'http://localhost/rajutanibu/?page_id=4', 0, 'page', '', 0),
(5, 1, '2015-01-19 09:20:07', '2015-01-19 09:20:07', '', 'Homepage', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-01-19 09:20:07', '2015-01-19 09:20:07', '', 4, 'http://localhost/rajutanibu/?p=5', 0, 'revision', '', 0),
(7, 1, '2015-02-02 04:48:18', '2015-02-02 04:48:18', '', 'Shop', '', 'publish', 'closed', 'open', '', 'shop', '', '', '2015-02-02 04:48:18', '2015-02-02 04:48:18', '', 0, 'http://localhost/rajutanibu/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-02-02 04:48:19', '2015-02-02 04:48:19', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'open', '', 'cart', '', '', '2015-02-02 04:48:19', '2015-02-02 04:48:19', '', 0, 'http://localhost/rajutanibu/?page_id=8', 0, 'page', '', 0),
(9, 1, '2015-02-02 04:48:21', '2015-02-02 04:48:21', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'open', '', 'checkout', '', '', '2015-02-02 04:48:21', '2015-02-02 04:48:21', '', 0, 'http://localhost/rajutanibu/?page_id=9', 0, 'page', '', 0),
(10, 1, '2015-02-02 04:48:22', '2015-02-02 04:48:22', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'open', '', 'my-account', '', '', '2015-02-02 04:48:22', '2015-02-02 04:48:22', '', 0, 'http://localhost/rajutanibu/?page_id=10', 0, 'page', '', 0),
(12, 1, '2015-02-02 05:17:02', '2015-02-02 05:17:02', 'box content', 'Tas Kecil', 'Product short description box', 'publish', 'open', 'closed', '', 'tas-kecil', '', '', '2015-02-02 05:17:02', '2015-02-02 05:17:02', '', 0, 'http://localhost/rajutanibu/?post_type=product&#038;p=12', 0, 'product', '', 0),
(13, 1, '2015-02-02 05:11:10', '2015-02-02 05:11:10', '', '_MG_3588', '', 'inherit', 'open', 'open', '', '_mg_3588', '', '', '2015-02-02 05:11:10', '2015-02-02 05:11:10', '', 12, 'http://localhost/rajutanibu/wp-content/uploads/2015/02/MG_3588.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2015-02-02 05:11:12', '2015-02-02 05:11:12', '', '_MG_3582', '', 'inherit', 'open', 'open', '', '_mg_3582', '', '', '2015-02-02 05:11:12', '2015-02-02 05:11:12', '', 12, 'http://localhost/rajutanibu/wp-content/uploads/2015/02/MG_3582.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2015-02-02 05:11:14', '2015-02-02 05:11:14', '', '_MG_3583', '', 'inherit', 'open', 'open', '', '_mg_3583', '', '', '2015-02-02 05:11:14', '2015-02-02 05:11:14', '', 12, 'http://localhost/rajutanibu/wp-content/uploads/2015/02/MG_3583.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2015-02-02 05:11:15', '2015-02-02 05:11:15', '', '_MG_3584', '', 'inherit', 'open', 'open', '', '_mg_3584', '', '', '2015-02-02 05:11:15', '2015-02-02 05:11:15', '', 12, 'http://localhost/rajutanibu/wp-content/uploads/2015/02/MG_3584.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2015-02-02 05:12:02', '2015-02-02 05:12:02', '', '_MG_3588', '', 'inherit', 'open', 'open', '', '_mg_3588-2', '', '', '2015-02-02 05:12:02', '2015-02-02 05:12:02', '', 12, 'http://localhost/rajutanibu/wp-content/uploads/2015/02/MG_35881.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2015-02-02 05:19:00', '2015-02-02 05:19:00', '', 'Order &ndash; February 2, 2015 @ 05:19 AM', '', 'wc-processing', 'open', 'closed', 'order_54cf08c432944', 'order-feb-02-2015-0519-am', '', '', '2015-02-02 05:21:42', '2015-02-02 05:21:42', '', 0, 'http://localhost/rajutanibu/?post_type=shop_order&#038;p=18', 0, 'shop_order', '', 4),
(20, 1, '2015-02-02 05:24:30', '2015-02-02 05:24:30', 'box content', 'Tas Kecil 2', 'Product short description box', 'publish', 'open', 'closed', '', 'tas-kecil-2', '', '', '2015-02-02 05:24:47', '2015-02-02 05:24:47', '', 0, 'http://localhost/rajutanibu/?product=tas-kecil-2', 0, 'product', '', 0),
(21, 1, '2015-02-02 05:25:02', '2015-02-02 05:25:02', 'box content', 'Tas Kecil 3', 'Product short description box', 'publish', 'open', 'closed', '', 'tas-kecil-3', '', '', '2015-02-02 05:25:11', '2015-02-02 05:25:11', '', 0, 'http://localhost/rajutanibu/?product=tas-kecil-3', 0, 'product', '', 0),
(22, 1, '2015-02-02 05:25:16', '2015-02-02 05:25:16', 'box content', 'Tas Kecil 4', 'Product short description box', 'publish', 'open', 'closed', '', 'tas-kecil-4', '', '', '2015-02-02 05:25:25', '2015-02-02 05:25:25', '', 0, 'http://localhost/rajutanibu/?product=tas-kecil-4', 0, 'product', '', 0),
(23, 1, '2015-02-02 05:25:32', '2015-02-02 05:25:32', 'box content', 'Tas Kecil 5', 'Product short description box', 'publish', 'open', 'closed', '', 'tas-kecil-5', '', '', '2015-02-02 05:30:01', '2015-02-02 05:30:01', '', 0, 'http://localhost/rajutanibu/?product=tas-kecil-5', 0, 'product', '', 0),
(24, 1, '2015-02-02 05:25:51', '2015-02-02 05:25:51', 'box content', 'Tas Kecil 6', 'Product short description box', 'publish', 'open', 'closed', '', 'tas-kecil-6', '', '', '2015-02-02 05:29:59', '2015-02-02 05:29:59', '', 0, 'http://localhost/rajutanibu/?product=tas-kecil-6', 0, 'product', '', 0),
(25, 1, '2015-02-02 05:26:06', '2015-02-02 05:26:06', 'box content', 'Tas Kecil 7', 'Product short description box', 'publish', 'open', 'closed', '', 'tas-kecil-7', '', '', '2015-02-02 05:29:58', '2015-02-02 05:29:58', '', 0, 'http://localhost/rajutanibu/?product=tas-kecil-7', 0, 'product', '', 0),
(26, 1, '2015-02-02 05:28:12', '2015-02-02 05:28:12', 'box content', 'Tas Kecil 8', 'Product short description box', 'publish', 'open', 'closed', '', 'tas-kecil-8', '', '', '2015-02-02 05:29:57', '2015-02-02 05:29:57', '', 0, 'http://localhost/rajutanibu/?product=tas-kecil-8', 0, 'product', '', 0),
(27, 1, '2015-02-02 05:28:36', '2015-02-02 05:28:36', 'box content', 'Tas Kecil 9', 'Product short description box', 'publish', 'open', 'closed', '', 'tas-kecil-9', '', '', '2015-02-02 05:29:56', '2015-02-02 05:29:56', '', 0, 'http://localhost/rajutanibu/?product=tas-kecil-9', 0, 'product', '', 0),
(28, 1, '2015-02-02 05:28:51', '2015-02-02 05:28:51', '<p>box content</p>\n', 'Tas Kecil 10', '<p>Product short description box</p>\n', 'publish', 'open', 'closed', '', 'tas-kecil-10', '', '', '2015-02-02 05:29:43', '2015-02-02 05:29:43', '', 0, 'http://localhost/rajutanibu/?product=tas-kecil-10', 0, 'product', '', 0),
(29, 1, '2015-02-02 05:40:14', '2015-02-02 05:40:14', 'http://localhost/rajutanibu/wp-content/uploads/2015/02/cropped-MG_3583.jpg', 'cropped-MG_3583.jpg', '', 'inherit', 'open', 'open', '', 'cropped-mg_3583-jpg', '', '', '2015-02-02 05:40:14', '2015-02-02 05:40:14', '', 0, 'http://localhost/rajutanibu/wp-content/uploads/2015/02/cropped-MG_3583.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2015-02-02 06:22:29', '2015-02-02 06:22:29', '[contact-form subject=''Rajutan Ibu Contact Form''][contact-field label=''Name'' type=''name'' required=''1''/][contact-field label=''Email'' type=''email'' required=''1''/][contact-field label=''Comment'' type=''textarea'' required=''1''/][/contact-form]', 'Hubungi Kami', '', 'publish', 'open', 'open', '', 'hubungi-kami', '', '', '2015-02-02 06:22:29', '2015-02-02 06:22:29', '', 0, 'http://localhost/rajutanibu/?page_id=31', 0, 'page', '', 0),
(32, 1, '2015-02-02 06:22:29', '2015-02-02 06:22:29', '[contact-form subject=''Rajutan Ibu Contact Form''][contact-field label=''Name'' type=''name'' required=''1''/][contact-field label=''Email'' type=''email'' required=''1''/][contact-field label=''Comment'' type=''textarea'' required=''1''/][/contact-form]', 'Hubungi Kami', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2015-02-02 06:22:29', '2015-02-02 06:22:29', '', 31, 'http://localhost/rajutanibu/2015/02/31-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2015-02-21 03:02:05', '2015-02-21 03:02:05', '<div class="page-description">\n\nHai, selamat datang di Rajutanibu.com!\n\nKami toko online yang menyediakan berbagai macam hasil rajut merajut seperti tas, baju, dompet, taplak meja, sarung galon aqua, dan lain-lain.\n\nSemua produk di website ini adalah murni hasil rajutan tangan.\n\nJika ini kunjungan pertama Anda, silahkan baca tentang <a title="Cara belanja di Maya Crafts" href="http://www.mayacrafts.asia/cara-belanja/">Cara Berbelanja</a>, <a href="http://www.mayacrafts.asia/?p=7699">Tanya Jawab</a> &amp; <a href="http://www.mayacrafts.asia/syarat-dan-kondisi/" target="_blank">Syarat &amp; Ketentuan</a>. Selamat berbelanja!\n\n</div>', 'Homepage', '', 'inherit', 'closed', 'closed', '', '4-autosave-v1', '', '', '2015-02-21 03:02:05', '2015-02-21 03:02:05', '', 4, 'http://localhost/rajutanibu/2015/02/4-autosave-v1/', 0, 'revision', '', 0),
(35, 1, '2015-02-21 03:03:43', '2015-02-21 03:03:43', '<div class="page-description">\r\n\r\nHai, selamat datang di Rajutanibu.com!\r\n\r\nKami toko online yang menyediakan berbagai macam hasil rajut merajut seperti tas, baju, dompet, taplak meja, sarung galon aqua, dan lain-lain.\r\n\r\nSemua produk di website ini adalah murni hasil rajutan tangan.\r\n\r\nJika ini kunjungan pertama Anda, silahkan telepon Rajutanibu.com di no 081219707458, atau kungjungi halaman tentang kami.\r\n\r\nSelamat berbelanja.\r\n\r\n</div>', 'Homepage', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2015-02-21 03:03:43', '2015-02-21 03:03:43', '', 4, 'http://localhost/rajutanibu/2015/02/4-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2015-02-21 03:10:04', '2015-02-21 03:10:04', '<div class="page-description">\r\n\r\nHai, selamat datang di Rajutanibu.com!\r\n\r\nKami toko online yang menyediakan berbagai macam hasil rajut merajut seperti tas, baju, dompet, taplak meja, sarung galon aqua, dan lain-lain.\r\n\r\nSemua produk di website ini adalah murni hasil rajutan tangan.\r\n\r\nJika ini kunjungan pertama Anda, silahkan telepon Rajutanibu.com di no 081219707458, atau kungjungi halaman tentang kami.\r\n\r\nSelamat berbelanja.\r\n\r\n</div>', 'Selamat datang!', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2015-02-21 03:10:04', '2015-02-21 03:10:04', '', 4, 'http://localhost/rajutanibu/2015/02/4-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2015-02-21 03:14:34', '2015-02-21 03:14:34', '<div class="page-description">\r\n\r\nHai, selamat datang di Rajutanibu.com!\r\n\r\nKami toko online yang menyediakan berbagai macam hasil rajut merajut seperti tas, baju, dompet, taplak meja, sarung galon aqua, dan lain-lain.\r\nSemua produk di website ini adalah murni hasil rajutan tangan.\r\nJika ini kunjungan pertama Anda, silahkan telepon Rajutanibu.com di no 081219707458, atau kungjungi halaman tentang kami.\r\n\r\nSelamat berbelanja.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Selamat datang!', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2015-02-21 03:14:34', '2015-02-21 03:14:34', '', 4, 'http://localhost/rajutanibu/2015/02/4-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2015-02-21 03:14:49', '2015-02-21 03:14:49', '<div class="page-description">\r\n\r\nHai, selamat datang di Rajutanibu.com!\r\n\r\nKami toko online yang menyediakan berbagai macam hasil rajut merajut seperti tas, baju, dompet, taplak meja, sarung galon aqua, dan lain-lain.\r\nSemua produk di website ini adalah murni hasil rajutan tangan.\r\nJika ini kunjungan pertama Anda, silahkan telepon Rajutanibu.com di no 081219707458, atau kungjungi halaman tentang kami.\r\n\r\nSelamat berbelanja.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Selamat datang!', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2015-02-21 03:14:49', '2015-02-21 03:14:49', '', 4, 'http://localhost/rajutanibu/2015/02/4-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2015-05-09 01:57:22', '2015-05-09 01:57:22', 'SERIA Stp crochet bag by TRiSAN\r\ncolor : benhur-peach\r\nmaterials : polyester crochet mix virotex\r\nsize (cm) : 40 x 35 x 12', 'Tas Rajut Tali Rante', 'nama : namanya\r\n\r\nwarna : merah\r\n\r\ntali : rante', 'publish', 'open', 'closed', '', 'tas-rajut-tali-rante', '', '', '2015-05-09 02:01:58', '2015-05-09 02:01:58', '', 0, 'http://localhost/rajutanibu/?post_type=product&#038;p=43', 0, 'product', '', 0),
(44, 1, '2015-05-09 01:55:21', '2015-05-09 01:55:21', '', 'BA 001', '', 'inherit', 'closed', 'closed', '', 'ba-001', '', '', '2015-05-09 01:55:21', '2015-05-09 01:55:21', '', 43, 'http://localhost/rajutanibu/wp-content/uploads/2015/05/BA-001.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2015-05-09 01:58:16', '2015-05-09 01:58:16', '', 'BB 004', '', 'inherit', 'closed', 'closed', '', 'bb-004', '', '', '2015-05-09 01:58:16', '2015-05-09 01:58:16', '', 43, 'http://localhost/rajutanibu/wp-content/uploads/2015/05/BB-004.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2015-05-09 01:58:17', '2015-05-09 01:58:17', '', 'BA 002', '', 'inherit', 'closed', 'closed', '', 'ba-002', '', '', '2015-05-09 01:58:17', '2015-05-09 01:58:17', '', 43, 'http://localhost/rajutanibu/wp-content/uploads/2015/05/BA-002.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2015-05-09 01:58:18', '2015-05-09 01:58:18', '', 'BA 003', '', 'inherit', 'closed', 'closed', '', 'ba-003', '', '', '2015-05-09 01:58:18', '2015-05-09 01:58:18', '', 43, 'http://localhost/rajutanibu/wp-content/uploads/2015/05/BA-003.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2015-05-09 01:58:19', '2015-05-09 01:58:19', '', 'BA 004', '', 'inherit', 'closed', 'closed', '', 'ba-004', '', '', '2015-05-09 01:58:19', '2015-05-09 01:58:19', '', 43, 'http://localhost/rajutanibu/wp-content/uploads/2015/05/BA-004.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2015-05-09 01:58:20', '2015-05-09 01:58:20', '', 'BB 001', '', 'inherit', 'closed', 'closed', '', 'bb-001', '', '', '2015-05-09 01:58:20', '2015-05-09 01:58:20', '', 43, 'http://localhost/rajutanibu/wp-content/uploads/2015/05/BB-001.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2015-05-09 01:58:21', '2015-05-09 01:58:21', '', 'BB 002', '', 'inherit', 'closed', 'closed', '', 'bb-002', '', '', '2015-05-09 01:58:21', '2015-05-09 01:58:21', '', 43, 'http://localhost/rajutanibu/wp-content/uploads/2015/05/BB-002.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2015-05-09 01:58:23', '2015-05-09 01:58:23', '', 'BB 003', '', 'inherit', 'closed', 'closed', '', 'bb-003', '', '', '2015-05-09 01:58:23', '2015-05-09 01:58:23', '', 43, 'http://localhost/rajutanibu/wp-content/uploads/2015/05/BB-003.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2015-05-09 04:45:56', '2015-05-09 04:45:56', '', 'Order &ndash; May 9, 2015 @ 04:45 AM', '', 'wc-on-hold', 'closed', 'closed', 'order_554d9104126f1', 'order-may-09-2015-0445-am', '', '', '2015-05-09 04:45:56', '2015-05-09 04:45:56', '', 0, 'http://localhost/rajutanibu/?post_type=shop_order&#038;p=52', 0, 'shop_order', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary', 'primary', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(7, 'Tas', 'tas', 0),
(8, 'Dompet', 'dompet', 0),
(9, 'Abu-abu', 'abu-abu', 0),
(10, 'Tas', 'tas', 0),
(11, 'Tas Kecil', 'tas-kecil', 0),
(12, 'rajut', 'rajut', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 3, 0),
(12, 7, 0),
(12, 9, 0),
(12, 10, 0),
(12, 11, 0),
(20, 3, 0),
(20, 7, 0),
(20, 8, 0),
(20, 9, 0),
(20, 10, 0),
(20, 11, 0),
(21, 3, 0),
(21, 7, 0),
(21, 8, 0),
(21, 9, 0),
(21, 10, 0),
(21, 11, 0),
(22, 3, 0),
(22, 7, 0),
(22, 8, 0),
(22, 9, 0),
(22, 10, 0),
(22, 11, 0),
(23, 3, 0),
(23, 7, 0),
(23, 8, 0),
(23, 9, 0),
(23, 10, 0),
(23, 11, 0),
(24, 3, 0),
(24, 7, 0),
(24, 8, 0),
(24, 9, 0),
(24, 10, 0),
(24, 11, 0),
(25, 3, 0),
(25, 7, 0),
(25, 8, 0),
(25, 9, 0),
(25, 10, 0),
(25, 11, 0),
(26, 3, 0),
(26, 7, 0),
(26, 8, 0),
(26, 9, 0),
(26, 10, 0),
(26, 11, 0),
(27, 3, 0),
(27, 7, 0),
(27, 8, 0),
(27, 9, 0),
(27, 10, 0),
(27, 11, 0),
(28, 3, 0),
(28, 7, 0),
(28, 8, 0),
(28, 9, 0),
(28, 10, 0),
(28, 11, 0),
(43, 3, 0),
(43, 7, 0),
(43, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 0),
(3, 3, 'product_type', '', 0, 11),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_cat', '', 0, 11),
(8, 8, 'product_cat', '', 0, 9),
(9, 9, 'product_tag', '', 0, 10),
(10, 10, 'product_tag', '', 0, 10),
(11, 11, 'product_tag', '', 0, 10),
(12, 12, 'product_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '40'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(18, 2, 'session_tokens', 'a:1:{s:64:"8b7900467107ddf4bdd571faefcb7be7d1cf9f8d5bc56efe8f4fbae57069754a";a:4:{s:10:"expiration";i:1423024537;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0";s:5:"login";i:1422851737;}}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1424488456'),
(22, 1, 'billing_country', 'ID'),
(23, 1, 'billing_first_name', 'bayu'),
(24, 1, 'billing_last_name', 'adi'),
(25, 1, 'billing_company', ''),
(26, 1, 'billing_address_1', 'kodam'),
(27, 1, 'billing_address_2', ''),
(28, 1, 'billing_city', 'jakarta'),
(29, 1, 'billing_state', 'JK'),
(30, 1, 'billing_postcode', '13620'),
(31, 1, 'billing_email', 'bayu.eighted@gmail.com'),
(32, 1, 'billing_phone', '0812888888888'),
(33, 1, 'shipping_country', 'ID'),
(34, 1, 'shipping_first_name', 'bayu'),
(35, 1, 'shipping_last_name', 'adi'),
(36, 1, 'shipping_company', ''),
(37, 1, 'shipping_address_1', 'kodam'),
(38, 1, 'shipping_address_2', ''),
(39, 1, 'shipping_city', 'jakarta'),
(40, 1, 'shipping_state', 'JK'),
(41, 1, 'shipping_postcode', '13620'),
(44, 1, 'session_tokens', 'a:1:{s:64:"ac4760cddc3a409755b0e03aea0d48aa596c0b1906f06024a75b1a095ec29ae6";a:4:{s:10:"expiration";i:1431737718;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36";s:5:"login";i:1431564918;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BXitxiIHXyx6X34j0qmh.LAo.xxWH31', 'admin', 'bayu.eighted@gmail.com', '', '2014-12-31 02:41:56', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
`attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` longtext,
  `attribute_type` varchar(200) NOT NULL,
  `attribute_orderby` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
`permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
`meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_qty', '1'),
(2, 1, '_tax_class', ''),
(3, 1, '_product_id', '12'),
(4, 1, '_variation_id', '0'),
(5, 1, '_line_subtotal', '150000'),
(6, 1, '_line_total', '150000'),
(7, 1, '_line_subtotal_tax', '0'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(10, 2, 'method_id', 'free_shipping'),
(11, 2, 'cost', '0'),
(12, 2, 'taxes', 'a:0:{}'),
(13, 3, '_qty', '1'),
(14, 3, '_tax_class', ''),
(15, 3, '_product_id', '12'),
(16, 3, '_variation_id', '0'),
(17, 3, '_line_subtotal', '150000'),
(18, 3, '_line_total', '150000'),
(19, 3, '_line_subtotal_tax', '0'),
(20, 3, '_line_tax', '0'),
(21, 3, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(22, 4, 'method_id', 'free_shipping'),
(23, 4, 'cost', '0'),
(24, 4, 'taxes', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
`order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Tas Kecil', 'line_item', 18),
(2, 'Free Shipping', 'shipping', 18),
(3, 'Tas Kecil', 'line_item', 52),
(4, 'Free Shipping', 'shipping', 52);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
`tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
`location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_termmeta` (
`meta_id` bigint(20) NOT NULL,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `wp_woocommerce_termmeta`
--

INSERT INTO `wp_woocommerce_termmeta` (`meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 7, 'order', '0'),
(2, 7, 'display_type', ''),
(3, 7, 'thumbnail_id', '0'),
(4, 8, 'order', '0'),
(5, 8, 'display_type', ''),
(6, 8, 'thumbnail_id', '0'),
(7, 7, 'product_count_product_cat', '11'),
(8, 9, 'product_count_product_tag', '10'),
(9, 10, 'product_count_product_tag', '10'),
(10, 11, 'product_count_product_tag', '10'),
(11, 8, 'product_count_product_cat', '9'),
(12, 12, 'product_count_product_tag', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
 ADD PRIMARY KEY (`id`), ADD KEY `hash` (`hash`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
 ADD PRIMARY KEY (`attribute_id`), ADD KEY `attribute_name` (`attribute_name`);

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
 ADD PRIMARY KEY (`permission_id`), ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`,`download_id`), ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `order_item_id` (`order_item_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
 ADD PRIMARY KEY (`order_item_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
 ADD PRIMARY KEY (`tax_rate_id`), ADD KEY `tax_rate_country` (`tax_rate_country`), ADD KEY `tax_rate_state` (`tax_rate_state`), ADD KEY `tax_rate_class` (`tax_rate_class`), ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
 ADD PRIMARY KEY (`location_id`), ADD KEY `tax_rate_id` (`tax_rate_id`), ADD KEY `location_type` (`location_type`), ADD KEY `location_type_code` (`location_type`,`location_code`);

--
-- Indexes for table `wp_woocommerce_termmeta`
--
ALTER TABLE `wp_woocommerce_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `woocommerce_term_id` (`woocommerce_term_id`), ADD KEY `meta_key` (`meta_key`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=625;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=481;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_termmeta`
--
ALTER TABLE `wp_woocommerce_termmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
