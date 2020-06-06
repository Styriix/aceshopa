-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 19, 2019 at 06:31 PM
-- Server version: 5.7.26
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gofresh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_payment`
--

DROP TABLE IF EXISTS `admin_payment`;
CREATE TABLE IF NOT EXISTS `admin_payment` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_request`
--

DROP TABLE IF EXISTS `admin_request`;
CREATE TABLE IF NOT EXISTS `admin_request` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `from_date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_date` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_share` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by_admin` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_to` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_to_store_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_transaction`
--

DROP TABLE IF EXISTS `admin_transaction`;
CREATE TABLE IF NOT EXISTS `admin_transaction` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_date` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
CREATE TABLE IF NOT EXISTS `ads` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `ads_key` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `app_dashboard_banner`
--

DROP TABLE IF EXISTS `app_dashboard_banner`;
CREATE TABLE IF NOT EXISTS `app_dashboard_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_title` varchar(100) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_dashboard_banner`
--

INSERT INTO `app_dashboard_banner` (`id`, `slider_title`, `slider_image`, `slider_status`) VALUES
(1, 'first banner', '11.jpg', 1),
(2, 'second banner', '2.jpg', 1),
(3, 'third banner', '3.jpg', 1),
(6, 'forth slider', '4.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_password` longtext NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_bdate` date NOT NULL,
  `is_email_varified` int(11) NOT NULL,
  `varified_token` varchar(255) NOT NULL,
  `user_gcm_code` longtext NOT NULL,
  `user_ios_token` longtext NOT NULL,
  `user_status` int(11) NOT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_city` int(11) NOT NULL,
  `user_login_status` int(11) NOT NULL DEFAULT '0',
  `lat` varchar(200) NOT NULL,
  `lon` varchar(200) NOT NULL,
  `profit_percent` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_fullname`, `user_password`, `user_type_id`, `user_bdate`, `is_email_varified`, `varified_token`, `user_gcm_code`, `user_ios_token`, `user_status`, `user_image`, `user_city`, `user_login_status`, `lat`, `lon`, `profit_percent`) VALUES
(1, 'Sub Admin', 'subadmin@dvs.com', '5678904443', '0', '25d55ad283aa400af464c76d713c07ad', 0, '0000-00-00', 0, '', '', '', 1, '3Cscreencapture-1556622659301.png', 0, 1, '51.3812676', '11.6041294', 'surajpur');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_title` varchar(100) NOT NULL,
  `slider_url` varchar(100) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `sub_cat` int(11) NOT NULL,
  `slider_status` int(11) NOT NULL,
  `store_id_login` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(200) NOT NULL AUTO_INCREMENT,
  `qty` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `store_id` varchar(200) NOT NULL,
  `store_name` varchar(200) NOT NULL,
  `product_id` int(200) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `arb_title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `parent` int(50) NOT NULL,
  `leval` int(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image2_status` varchar(300) NOT NULL,
  `status` varchar(100) NOT NULL,
  `store_id_login` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(200) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('4jlbagg9v22i38hsmi6770o71oe9jr5t', '::1', 1566168903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363136383832373b),
('l6ncfbmd6or3ugnqmbfbk5pqislqjsbo', '::1', 1566169586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363136393336303b),
('4tb8pk5ivtj8njm1lofou0hl3qe44376', '::1', 1566169958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363136393636343b61646d696e5f646174617c613a353a7b733a393a22757365725f6e616d65223b733a31303a224d722e2076656e6b6174223b733a31303a22757365725f656d61696c223b733a31383a227465636d616e696340676d61696c2e636f6d223b733a393a226c6f676765645f696e223b623a313b733a373a22757365725f6964223b733a313a2231223b733a31323a22757365725f747970655f6964223b733a313a2230223b7d),
('c5tc7g6p40gn9in68opjm9o7ohjcic2u', '::1', 1566170271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363136393937363b61646d696e5f646174617c613a353a7b733a393a22757365725f6e616d65223b733a31303a224d722e2076656e6b6174223b733a31303a22757365725f656d61696c223b733a31383a227465636d616e696340676d61696c2e636f6d223b733a393a226c6f676765645f696e223b623a313b733a373a22757365725f6964223b733a313a2231223b733a31323a22757365725f747970655f6964223b733a313a2230223b7d),
('ibugqabsnre836cs5f6tkhami7vvi0ks', '::1', 1566170352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363137303331323b61646d696e5f646174617c613a353a7b733a393a22757365725f6e616d65223b733a31303a224d722e2076656e6b6174223b733a31303a22757365725f656d61696c223b733a31333a2261646d696e406476732e636f6d223b733a393a226c6f676765645f696e223b623a313b733a373a22757365725f6964223b733a313a2231223b733a31323a22757365725f747970655f6964223b733a313a2230223b7d),
('ru7oegg6ar229trpfu8mld915ei4k4p6', '::1', 1566173682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363137333638323b61646d696e5f646174617c613a353a7b733a393a22757365725f6e616d65223b733a31303a224d722e2076656e6b6174223b733a31303a22757365725f656d61696c223b733a31333a2261646d696e406476732e636f6d223b733a393a226c6f676765645f696e223b623a313b733a373a22757365725f6964223b733a313a2231223b733a31323a22757365725f747970655f6964223b733a313a2230223b7d),
('56ol6kc8l7756vo8utddd99kmfvkdss8', '::1', 1566237211, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363233373231313b),
('lvfc5pne4n2sj6kb2c855e5p275pajj0', '::1', 1566237568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363233373536383b61646d696e5f646174617c613a353a7b733a393a22757365725f6e616d65223b733a31333a225572696168204176696e617368223b733a31303a22757365725f656d61696c223b733a31333a2261646d696e406476732e636f6d223b733a393a226c6f676765645f696e223b623a313b733a373a22757365725f6964223b733a313a2231223b733a31323a22757365725f747970655f6964223b733a313a2230223b7d),
('4s3fdn2h1dr0f6kf2chjcqtb5akoihvj', '::1', 1566237885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363233373838353b61646d696e5f646174617c613a353a7b733a393a22757365725f6e616d65223b733a31333a225572696168204176696e617368223b733a31303a22757365725f656d61696c223b733a31333a2261646d696e406476732e636f6d223b733a393a226c6f676765645f696e223b623a313b733a373a22757365725f6964223b733a313a2231223b733a31323a22757365725f747970655f6964223b733a313a2230223b7d),
('8ij88svnd00hu47g2is4slsodtlsu0mf', '::1', 1566238253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363233383235333b7375625f61646d696e7c613a353a7b733a393a22757365725f6e616d65223b733a393a225375622041646d696e223b733a31303a22757365725f656d61696c223b733a31383a2273756261646d696e40676d61696c2e636f6d223b733a393a226c6f676765645f696e223b623a313b733a373a22757365725f6964223b733a313a2231223b733a31323a22757365725f747970655f6964223b733a313a2230223b7d),
('3oqksb05go5hj9u94nidgp47k3sjpotr', '::1', 1566238587, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363233383538373b),
('ei2i4v0b8r7nql98ofq2alkccn07jkd8', '::1', 1566239030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363233393033303b),
('rum1490tf6d2p33bt3s02l83eb0mrs1j', '::1', 1566238872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363233383837323b),
('vol4f4anqtjkt3je6ah9ddh2bjdvjr5q', '::1', 1566239215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536363233393033303b61646d696e5f646174617c613a353a7b733a393a22757365725f6e616d65223b733a31333a225572696168204176696e617368223b733a31303a22757365725f656d61696c223b733a31333a2261646d696e406476732e636f6d223b733a393a226c6f676765645f696e223b623a313b733a373a22757365725f6964223b733a313a2231223b733a31323a22757365725f747970655f6964223b733a313a2230223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `closing_hours`
--

DROP TABLE IF EXISTS `closing_hours`;
CREATE TABLE IF NOT EXISTS `closing_hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `store_id` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

DROP TABLE IF EXISTS `commission`;
CREATE TABLE IF NOT EXISTS `commission` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `store_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(200) NOT NULL,
  `admin_share` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'cod & sp=0,online=1,2=db',
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_request` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

DROP TABLE IF EXISTS `complain`;
CREATE TABLE IF NOT EXISTS `complain` (
  `complain_id` int(200) NOT NULL AUTO_INCREMENT,
  `complain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`complain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(200) NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `valid_from` varchar(20) NOT NULL,
  `valid_to` varchar(20) NOT NULL,
  `validity_type` varchar(50) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `discount_type` varchar(50) NOT NULL,
  `discount_value` int(11) NOT NULL,
  `cart_value` int(11) NOT NULL,
  `uses_restriction` int(11) NOT NULL,
  `store_id_login` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `currency_setting`
--

DROP TABLE IF EXISTS `currency_setting`;
CREATE TABLE IF NOT EXISTS `currency_setting` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `currency_type` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_setting`
--

INSERT INTO `currency_setting` (`id`, `currency_type`) VALUES
(1, 'Rs.');

-- --------------------------------------------------------

--
-- Table structure for table `deal_product`
--

DROP TABLE IF EXISTS `deal_product`;
CREATE TABLE IF NOT EXISTS `deal_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `deal_price` varchar(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `start_time` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `end_time` varchar(200) NOT NULL,
  `store_id_login` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deelofday`
--

DROP TABLE IF EXISTS `deelofday`;
CREATE TABLE IF NOT EXISTS `deelofday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_price` varchar(500) NOT NULL,
  `image_title` varchar(200) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivered_order`
--

DROP TABLE IF EXISTS `delivered_order`;
CREATE TABLE IF NOT EXISTS `delivered_order` (
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `on_date` date NOT NULL,
  `delivery_time_from` varchar(200) NOT NULL,
  `delivery_time_to` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `note` longtext NOT NULL,
  `is_paid` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `total_rewards` varchar(200) NOT NULL,
  `total_kg` double NOT NULL,
  `total_items` double NOT NULL,
  `socity_id` int(11) NOT NULL,
  `delivery_address` longtext NOT NULL,
  `location_id` int(11) NOT NULL,
  `delivery_charge` double NOT NULL,
  `new_store_id` varchar(200) NOT NULL DEFAULT '0',
  `assign_to` int(11) NOT NULL DEFAULT '0',
  `payment_method` varchar(200) NOT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_assign_store`
--

DROP TABLE IF EXISTS `delivery_assign_store`;
CREATE TABLE IF NOT EXISTS `delivery_assign_store` (
  `assign_id` int(200) NOT NULL AUTO_INCREMENT,
  `boy_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`assign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

DROP TABLE IF EXISTS `delivery_boy`;
CREATE TABLE IF NOT EXISTS `delivery_boy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_phone` varchar(200) NOT NULL,
  `user_status` varchar(200) NOT NULL,
  `work_status` varchar(200) NOT NULL,
  `user_lat` varchar(500) NOT NULL,
  `user_lng` varchar(500) NOT NULL,
  `charge` varchar(500) NOT NULL,
  `store_id` varchar(500) NOT NULL,
  `device_id` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charge`
--

DROP TABLE IF EXISTS `delivery_charge`;
CREATE TABLE IF NOT EXISTS `delivery_charge` (
  `charge_id` int(200) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_from` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_to` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge_amount` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`charge_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_charge`
--

INSERT INTO `delivery_charge` (`charge_id`, `store_id`, `cart_from`, `cart_to`, `charge_amount`) VALUES
(1, '292', '1', '99', '40'),
(2, '292', '100', '499', '35'),
(3, '292', '500', '1000', '30'),
(4, '292', '1000', '5000', '20'),
(5, '293', '1', '99', '40'),
(6, '293', '100', '499', '35'),
(7, '293', '500', '1000', '30'),
(8, '293', '1000', '5000', '20'),
(9, '294', '1', '99', '40'),
(10, '294', '100', '499', '35'),
(11, '294', '500', '1000', '30'),
(12, '294', '1000', '5000', '20');

-- --------------------------------------------------------

--
-- Table structure for table `feature_slider`
--

DROP TABLE IF EXISTS `feature_slider`;
CREATE TABLE IF NOT EXISTS `feature_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_title` varchar(100) NOT NULL,
  `slider_url` varchar(100) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `sub_cat` int(200) NOT NULL,
  `slider_status` int(11) NOT NULL,
  `store_id_login` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feature_slider`
--

INSERT INTO `feature_slider` (`id`, `slider_title`, `slider_url`, `slider_image`, `sub_cat`, `slider_status`, `store_id_login`) VALUES
(16, 'featured', '', 'Paperboat_Banner_750X375pix.jpg', 0, 1, 0),
(17, 'test12', '', 'banner11.jpg', 32, 1, 0),
(18, 'test', '', 'banner4.jpg', 26, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `header_categories`
--

DROP TABLE IF EXISTS `header_categories`;
CREATE TABLE IF NOT EXISTS `header_categories` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `parent` int(50) NOT NULL,
  `leval` int(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `header_products`
--

DROP TABLE IF EXISTS `header_products`;
CREATE TABLE IF NOT EXISTS `header_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `product_description` longtext NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `unit_value` double NOT NULL,
  `unit` varchar(10) NOT NULL,
  `increament` double NOT NULL,
  `rewards` varchar(200) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

DROP TABLE IF EXISTS `icons`;
CREATE TABLE IF NOT EXISTS `icons` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `service` varchar(500) NOT NULL,
  `image_name` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `instamojo`
--

DROP TABLE IF EXISTS `instamojo`;
CREATE TABLE IF NOT EXISTS `instamojo` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instamojo`
--

INSERT INTO `instamojo` (`id`, `api_key`, `status`) VALUES
(1, 'rez_test_JzclM3LTkxBGXs', '1');

-- --------------------------------------------------------

--
-- Table structure for table `language_setting`
--

DROP TABLE IF EXISTS `language_setting`;
CREATE TABLE IF NOT EXISTS `language_setting` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language_setting`
--

INSERT INTO `language_setting` (`id`, `status`) VALUES
(1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
CREATE TABLE IF NOT EXISTS `membership` (
  `plan_id` int(200) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_amount` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_time` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_time_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`plan_id`, `plan_name`, `plan_amount`, `plan_time`, `plan_time_type`, `plan_desc`) VALUES
(1, 'Basic Plan', '999', '30', '1', 'this is basic plan'),
(2, 'stand Plan', '1999', '60', '', 'this is second plan'),
(3, 'premium Plan', '2999', '90', '', 'this is basic plan'),
(4, 'dimand Plan', '3999', '365', '', 'this is second plan'),
(5, 'King Plan new', '10,000', '6', '2', 'update_array  update_array update_array     update_array\r\nupdate_array\r\nupdate_array\r\nupdate_array\r\nupdate_array');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `store_id` int(200) NOT NULL,
  `msg_register` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `msg_new_order` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `msg_order_assign` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `msg_complete_order` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `mail_register` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `mail_new_order` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `mail_order_assign` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `mail_complete_order` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `msg_cancel` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_cancel` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_pickupby_dboy` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_pickupby_dboy` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `store_id`, `msg_register`, `msg_new_order`, `msg_order_assign`, `msg_complete_order`, `mail_register`, `mail_new_order`, `mail_order_assign`, `mail_complete_order`, `msg_cancel`, `mail_cancel`, `msg_pickupby_dboy`, `mail_pickupby_dboy`) VALUES
(1, 0, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pageapp`
--

DROP TABLE IF EXISTS `pageapp`;
CREATE TABLE IF NOT EXISTS `pageapp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pg_title` varchar(200) NOT NULL,
  `pg_slug` varchar(100) NOT NULL,
  `pg_descri` longtext NOT NULL,
  `pg_status` int(50) NOT NULL,
  `pg_foot` int(50) NOT NULL,
  `crated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pageapp`
--

INSERT INTO `pageapp` (`id`, `pg_title`, `pg_slug`, `pg_descri`, `pg_status`, `pg_foot`, `crated_date`) VALUES
(4, 'FAQ', 'faq', '', 0, 0, '2019-08-07 05:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `paypal`
--

DROP TABLE IF EXISTS `paypal`;
CREATE TABLE IF NOT EXISTS `paypal` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(200) NOT NULL,
  `sb_id` varchar(200) NOT NULL,
  `status` int(10) NOT NULL,
  `store_id_login` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paypal`
--

INSERT INTO `paypal` (`id`, `client_id`, `sb_id`, `status`, `store_id_login`) VALUES
(1, 'hgvjbn@gmail.com', 'facilitator@tecmanic.com', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

DROP TABLE IF EXISTS `pincode`;
CREATE TABLE IF NOT EXISTS `pincode` (
  `pincode` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `product_arb_name` varchar(200) NOT NULL,
  `product_description` longtext NOT NULL,
  `product_arb_description` longtext NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `mrp` int(200) NOT NULL,
  `unit_value` double NOT NULL,
  `unit` varchar(10) NOT NULL,
  `arb_unit` varchar(200) DEFAULT NULL,
  `increament` double NOT NULL,
  `rewards` varchar(200) NOT NULL DEFAULT '0',
  `tax` int(100) NOT NULL,
  `store_id_login` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_complain`
--

DROP TABLE IF EXISTS `products_complain`;
CREATE TABLE IF NOT EXISTS `products_complain` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complain` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

DROP TABLE IF EXISTS `products_images`;
CREATE TABLE IF NOT EXISTS `products_images` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `unit` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `store` varchar(200) NOT NULL,
  `store_id_login` varchar(200) NOT NULL,
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_plan`
--

DROP TABLE IF EXISTS `purchase_plan`;
CREATE TABLE IF NOT EXISTS `purchase_plan` (
  `purchase_id` int(200) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `razorpay`
--

DROP TABLE IF EXISTS `razorpay`;
CREATE TABLE IF NOT EXISTS `razorpay` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `store_id_login` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `razorpay`
--

INSERT INTO `razorpay` (`id`, `api_key`, `status`, `store_id_login`) VALUES
(1, '1', '0', '7');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

DROP TABLE IF EXISTS `registers`;
CREATE TABLE IF NOT EXISTS `registers` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_phone` varchar(15) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `socity_id` int(11) NOT NULL,
  `house_no` longtext NOT NULL,
  `mobile_verified` int(11) NOT NULL,
  `user_gcm_code` longtext NOT NULL,
  `user_ios_token` longtext NOT NULL,
  `varified_token` varchar(500) NOT NULL,
  `status` int(11) NOT NULL,
  `reg_code` int(6) NOT NULL,
  `wallet` int(11) NOT NULL,
  `rewards` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE IF NOT EXISTS `request` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `from_date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_share` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by_store_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_to` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

DROP TABLE IF EXISTS `rewards`;
CREATE TABLE IF NOT EXISTS `rewards` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `point` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `point`) VALUES
(1, '9');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `on_date` date NOT NULL,
  `delivery_time_from` varchar(200) NOT NULL,
  `delivery_time_to` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `note` longtext NOT NULL,
  `is_paid` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `total_rewards` varchar(200) NOT NULL,
  `total_kg` double NOT NULL,
  `total_items` double NOT NULL,
  `socity_id` int(11) NOT NULL,
  `delivery_address` longtext NOT NULL,
  `location_id` int(11) NOT NULL,
  `delivery_charge` double NOT NULL,
  `new_store_id` varchar(200) NOT NULL DEFAULT '0',
  `assign_to` varchar(30) NOT NULL DEFAULT '0',
  `payment_method` varchar(200) NOT NULL,
  `previous_amount` varchar(200) NOT NULL DEFAULT '0',
  `coupon_code` varchar(200) NOT NULL DEFAULT '0',
  `used_amount` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

DROP TABLE IF EXISTS `sale_items`;
CREATE TABLE IF NOT EXISTS `sale_items` (
  `sale_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `qty` double NOT NULL,
  `unit` enum('gram','kg','nos') NOT NULL,
  `unit_value` double NOT NULL,
  `price` double NOT NULL,
  `qty_in_kg` double NOT NULL,
  `rewards` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  PRIMARY KEY (`sale_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `value`) VALUES
('1', 'minmum order amount', '1'),
('2', 'maxmum order amount', '7000');

-- --------------------------------------------------------

--
-- Table structure for table `signature`
--

DROP TABLE IF EXISTS `signature`;
CREATE TABLE IF NOT EXISTS `signature` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(200) NOT NULL,
  `signature` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_title` varchar(100) NOT NULL,
  `slider_url` varchar(100) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `sub_cat` int(200) NOT NULL,
  `slider_status` int(11) NOT NULL,
  `store_id_login` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slider_title`, `slider_url`, `slider_image`, `sub_cat`, `slider_status`, `store_id_login`) VALUES
(1, 'easy day', '', 'sliderofed.jpg', 0, 1, 263),
(2, 'slider2', '', 'slider.jpg', 0, 1, 263),
(4, 'big bazaar1', '', 'bbslider.jpg', 0, 1, 264),
(5, 'slider', '', 'reliance-freshlider.jpg', 0, 1, 265),
(6, 'slidermain1', '', 'slider_reliance.jpg', 0, 1, 265),
(7, 'slider', '', 'walmartslider.jpg', 0, 1, 266),
(8, 'slidermain1', '', 'walmartslider2.jpg', 0, 1, 266),
(9, 'main slider1', '', 'banner_(1).png', 0, 1, 264),
(11, 'Nasi goreng', '', 'ic_launcher.png', 0, 1, 282),
(12, 'Nasi goreng', '', 'ic_launcher1.png', 0, 1, 282),
(13, 'Vegetables', '', 'fresh_vegetables_hhp_stores.jpg', 0, 1, 292),
(14, 'Grocery & Staples', '', 'grocery_banner.jpg', 0, 1, 293);

-- --------------------------------------------------------

--
-- Table structure for table `socity`
--

DROP TABLE IF EXISTS `socity`;
CREATE TABLE IF NOT EXISTS `socity` (
  `socity_id` int(11) NOT NULL AUTO_INCREMENT,
  `socity_name` varchar(200) NOT NULL,
  `pincode` varchar(15) NOT NULL,
  `delivery_charge` double NOT NULL,
  `store_id` varchar(500) NOT NULL,
  PRIMARY KEY (`socity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `socity`
--

INSERT INTO `socity` (`socity_id`, `socity_name`, `pincode`, `delivery_charge`, `store_id`) VALUES
(7, 'nangla', '06268', 50, ''),
(8, 'abc', '282007', 40, '');

-- --------------------------------------------------------

--
-- Table structure for table `store_login`
--

DROP TABLE IF EXISTS `store_login`;
CREATE TABLE IF NOT EXISTS `store_login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_password` longtext NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_bdate` date NOT NULL,
  `is_email_varified` int(11) NOT NULL,
  `varified_token` varchar(255) NOT NULL,
  `user_gcm_code` longtext NOT NULL,
  `user_ios_token` longtext NOT NULL,
  `user_status` int(11) NOT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_main_banner` varchar(500) NOT NULL,
  `delivery_range` varchar(500) NOT NULL,
  `user_city` varchar(200) NOT NULL,
  `user_login_status` int(11) NOT NULL DEFAULT '0',
  `lat` varchar(200) NOT NULL,
  `lon` varchar(200) NOT NULL,
  `profit_percent` varchar(200) NOT NULL,
  `create_by` varchar(500) NOT NULL,
  `account_type` varchar(500) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `store_paid`
--

DROP TABLE IF EXISTS `store_paid`;
CREATE TABLE IF NOT EXISTS `store_paid` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commision_id` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_transaction`
--

DROP TABLE IF EXISTS `store_transaction`;
CREATE TABLE IF NOT EXISTS `store_transaction` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_date` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_transaction`
--

INSERT INTO `store_transaction` (`id`, `store_id`, `store_name`, `from_date`, `to_date`, `amount`, `transaction_id`) VALUES
(10, '264', 'Big Bazar', '2019-07-16', '2019-07-17', '23.04', '46565');

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

DROP TABLE IF EXISTS `time_slots`;
CREATE TABLE IF NOT EXISTS `time_slots` (
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL,
  `time_slot` int(11) NOT NULL,
  `store_id` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `top_selling`
--

DROP TABLE IF EXISTS `top_selling`;
CREATE TABLE IF NOT EXISTS `top_selling` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `product_price` varchar(1000) NOT NULL,
  `image_title` varchar(1000) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_password` longtext NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_bdate` date NOT NULL,
  `is_email_varified` int(11) NOT NULL,
  `varified_token` varchar(255) NOT NULL,
  `user_gcm_code` longtext NOT NULL,
  `user_ios_token` longtext NOT NULL,
  `user_status` int(11) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_city` varchar(200) NOT NULL,
  `user_login_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_fullname`, `user_password`, `user_type_id`, `user_bdate`, `is_email_varified`, `varified_token`, `user_gcm_code`, `user_ios_token`, `user_status`, `user_image`, `user_city`, `user_login_status`) VALUES
(1, 'Avinash', 'admin@dvs.com', '9876534321', 'Uriah Avinash', '25d55ad283aa400af464c76d713c07ad', 0, '0000-00-00', 0, '', '', '', 1, '19.png', 'noida', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_complain`
--

DROP TABLE IF EXISTS `user_complain`;
CREATE TABLE IF NOT EXISTS `user_complain` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_contact` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complain_id` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_location`
--

DROP TABLE IF EXISTS `user_location`;
CREATE TABLE IF NOT EXISTS `user_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `socity_id` int(11) NOT NULL,
  `house_no` longtext NOT NULL,
  `address` varchar(300) NOT NULL,
  `lat` varchar(300) NOT NULL,
  `lng` varchar(300) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `receiver_mobile` varchar(15) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
CREATE TABLE IF NOT EXISTS `user_types` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_title` varchar(30) NOT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_type_id`, `user_type_title`) VALUES
(1, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user_type_access`
--

DROP TABLE IF EXISTS `user_type_access`;
CREATE TABLE IF NOT EXISTS `user_type_access` (
  `user_type_id` int(11) NOT NULL,
  `class` varchar(30) NOT NULL,
  `method` varchar(30) NOT NULL,
  `access` int(11) NOT NULL,
  UNIQUE KEY `user_type_id` (`user_type_id`,`class`,`method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_type_access`
--

INSERT INTO `user_type_access` (`user_type_id`, `class`, `method`, `access`) VALUES
(0, 'admin', '*', 1),
(0, 'child', '*', 1),
(0, 'parents', '*', 1),
(0, 'timeline', '*', 1),
(0, 'users', '*', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
