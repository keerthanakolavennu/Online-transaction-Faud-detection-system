-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 09:10 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinetransactionfrauddetection`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `id` int(11) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`id`, `Password`, `Username`) VALUES
(2, '123', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add admin_details', 7, 'add_admin_details'),
(26, 'Can change admin_details', 7, 'change_admin_details'),
(27, 'Can delete admin_details', 7, 'delete_admin_details'),
(28, 'Can view admin_details', 7, 'view_admin_details'),
(29, 'Can add card_details', 8, 'add_card_details'),
(30, 'Can change card_details', 8, 'change_card_details'),
(31, 'Can delete card_details', 8, 'delete_card_details'),
(32, 'Can view card_details', 8, 'view_card_details'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add order_details', 10, 'add_order_details'),
(38, 'Can change order_details', 10, 'change_order_details'),
(39, 'Can delete order_details', 10, 'delete_order_details'),
(40, 'Can view order_details', 10, 'view_order_details'),
(41, 'Can add products', 11, 'add_products'),
(42, 'Can change products', 11, 'change_products'),
(43, 'Can delete products', 11, 'delete_products'),
(44, 'Can view products', 11, 'view_products'),
(45, 'Can add user_details', 12, 'add_user_details'),
(46, 'Can change user_details', 12, 'change_user_details'),
(47, 'Can delete user_details', 12, 'delete_user_details'),
(48, 'Can view user_details', 12, 'view_user_details'),
(49, 'Can add blockrequest', 13, 'add_blockrequest'),
(50, 'Can change blockrequest', 13, 'change_blockrequest'),
(51, 'Can delete blockrequest', 13, 'delete_blockrequest'),
(52, 'Can view blockrequest', 13, 'view_blockrequest');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blockrequest`
--

CREATE TABLE `blockrequest` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `Card_number` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `Issue` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `id` int(11) NOT NULL,
  `Cid` varchar(20) NOT NULL,
  `Uid` varchar(20) NOT NULL,
  `card_type` varchar(200) NOT NULL,
  `cardno` varchar(200) NOT NULL,
  `cvv` varchar(10) NOT NULL,
  `expiry` varchar(200) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `password` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `Pid` varchar(20) NOT NULL,
  `Pname` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `Uid` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'AppOnlineTransactionFraudDetection', 'admin_details'),
(13, 'AppOnlineTransactionFraudDetection', 'blockrequest'),
(8, 'AppOnlineTransactionFraudDetection', 'card_details'),
(9, 'AppOnlineTransactionFraudDetection', 'cart'),
(10, 'AppOnlineTransactionFraudDetection', 'order_details'),
(11, 'AppOnlineTransactionFraudDetection', 'products'),
(12, 'AppOnlineTransactionFraudDetection', 'user_details'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'AppOnlineTransactionFraudDetection', '0001_initial', '2021-03-21 06:48:31.958633'),
(2, 'AppOnlineTransactionFraudDetection', '0002_auto_20191023_1637', '2021-03-21 06:48:32.209960'),
(3, 'AppOnlineTransactionFraudDetection', '0003_auto_20191028_1601', '2021-03-21 06:48:32.338620'),
(4, 'AppOnlineTransactionFraudDetection', '0004_auto_20191102_1206', '2021-03-21 06:48:32.506208'),
(5, 'AppOnlineTransactionFraudDetection', '0005_auto_20191102_1210', '2021-03-21 06:48:32.834293'),
(6, 'AppOnlineTransactionFraudDetection', '0006_auto_20191102_1856', '2021-03-21 06:48:32.969166'),
(7, 'AppOnlineTransactionFraudDetection', '0007_auto_20191104_1833', '2021-03-21 06:48:33.529707'),
(8, 'AppOnlineTransactionFraudDetection', '0008_auto_20191104_1901', '2021-03-21 06:48:33.701247'),
(9, 'AppOnlineTransactionFraudDetection', '0009_auto_20191105_1545', '2021-03-21 06:48:33.922657'),
(10, 'AppOnlineTransactionFraudDetection', '0010_user_details_attempts', '2021-03-21 06:48:33.966501'),
(11, 'AppOnlineTransactionFraudDetection', '0011_auto_20191105_1928', '2021-03-21 06:48:33.979514'),
(12, 'AppOnlineTransactionFraudDetection', '0012_user_details_status', '2021-03-21 06:48:34.028375'),
(13, 'AppOnlineTransactionFraudDetection', '0013_auto_20191105_1940', '2021-03-21 06:48:34.042562'),
(14, 'AppOnlineTransactionFraudDetection', '0014_auto_20191106_1902', '2021-03-21 06:48:34.099141'),
(15, 'AppOnlineTransactionFraudDetection', '0015_blockrequest', '2021-03-21 06:48:34.162138'),
(16, 'AppOnlineTransactionFraudDetection', '0016_auto_20191107_1210', '2021-03-21 06:48:34.261751'),
(17, 'AppOnlineTransactionFraudDetection', '0017_auto_20200226_1133', '2021-03-21 06:48:35.046648'),
(18, 'AppOnlineTransactionFraudDetection', '0018_auto_20200530_1456', '2021-03-21 06:48:35.550539'),
(19, 'AppOnlineTransactionFraudDetection', '0019_remove_user_details_maxtransamount', '2021-03-21 06:48:35.601222'),
(20, 'contenttypes', '0001_initial', '2021-03-21 06:48:36.112817'),
(21, 'auth', '0001_initial', '2021-03-21 06:48:36.359193'),
(22, 'admin', '0001_initial', '2021-03-21 06:48:38.369782'),
(23, 'admin', '0002_logentry_remove_auto_add', '2021-03-21 06:48:38.716313'),
(24, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-21 06:48:38.732810'),
(25, 'contenttypes', '0002_remove_content_type_name', '2021-03-21 06:48:38.845508'),
(26, 'auth', '0002_alter_permission_name_max_length', '2021-03-21 06:48:38.970176'),
(27, 'auth', '0003_alter_user_email_max_length', '2021-03-21 06:48:38.996107'),
(28, 'auth', '0004_alter_user_username_opts', '2021-03-21 06:48:39.009072'),
(29, 'auth', '0005_alter_user_last_login_null', '2021-03-21 06:48:39.111800'),
(30, 'auth', '0006_require_contenttypes_0002', '2021-03-21 06:48:39.118779'),
(31, 'auth', '0007_alter_validators_add_error_messages', '2021-03-21 06:48:39.129834'),
(32, 'auth', '0008_alter_user_username_max_length', '2021-03-21 06:48:39.152723'),
(33, 'auth', '0009_alter_user_last_name_max_length', '2021-03-21 06:48:39.178620'),
(34, 'auth', '0010_alter_group_name_max_length', '2021-03-21 06:48:39.203552'),
(35, 'auth', '0011_update_proxy_permissions', '2021-03-21 06:48:39.222626'),
(36, 'auth', '0012_alter_user_first_name_max_length', '2021-03-21 06:48:39.251556'),
(37, 'sessions', '0001_initial', '2021-03-21 06:48:39.296305');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('vfg6ysfgutlixnbrwq25q4xun35k6g0k', '.eJyrVnLKyU_OTk1RslLyy1fSUQotTi2KzwRxDYG8ksqCVAgPJA4UKAVSeYm5qUCR7NTUIpCanPz0zDwgPzK1GMgLAak2NKgFANV2Gxs:1lbFvZ:fRVSu1Ey6FQh9MH_phNXZnbBcY8Wt3po3qxX5ucrm-0', '2021-05-11 05:06:29.128181');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `Tid` varchar(20) NOT NULL,
  `Uid` varchar(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `TotalAmount` int(11) DEFAULT NULL,
  `productList` varchar(500) NOT NULL,
  `quantity` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `Tid`, `Uid`, `date`, `status`, `TotalAmount`, `productList`, `quantity`) VALUES
(1, '1', '1', '07/04/2021', 'Ordered', 2433, 'Adidas Mens Argecy', '1'),
(2, '2', '1', '07/04/2021', 'Ordered', 2000, 'Nike Mens Air Jordan1 Retro', '1'),
(3, '3', '1', '07/04/2021', 'Ordered', 4000, 'Nike Mens Air Jordan1 Retro', '2'),
(4, '4', '1', '11/04/2021', 'Ordered', 450, 'Instyle Foundation &amp; Conceler', '3'),
(5, '5', '1', '11/04/2021', 'Ordered', 1999, 'Adidas Mens Furio LITE', '1'),
(6, '6', '1', '11/04/2021', 'Pending', 3998, 'Adidas Mens Furio LITE', '2'),
(7, '7', '1', '26/04/2021', 'Ordered', 5997, 'Adidas Mens Furio LITE', '3'),
(8, '8', '1', '27/04/2021', 'Ordered', 5997, 'Adidas Mens Furio LITE', '3'),
(9, '9', '1', '27/04/2021', 'Pending', 1999, 'Adidas Mens Furio LITE', '1'),
(10, '10', '1', '27/04/2021', 'Ordered', 2000, 'Nike Mens Air Jordan1 Retro', '1'),
(11, '10', '1', '27/04/2021', 'Ordered', 1999, 'Adidas Mens Furio LITE', '1'),
(12, '10', '1', '27/04/2021', 'Pending', 1999, 'Adidas Mens Furio LITE', '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `Pid` varchar(200) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `subcategory` varchar(10) NOT NULL,
  `cost` int(11) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Pid`, `pname`, `category`, `subcategory`, `cost`, `desc`, `quantity`, `image`) VALUES
(1, '001', 'Adidas Mens Argecy', 'Footware', 'sneakers', 2433, 'Closure: Lace Up Material\r\nType : Hesh \r\nLifestyle : Casual Closure \r\nType : Lace-up', '20', 'img/images/adidas1.jpg'),
(2, '002', 'Adidas Mens Furio LITE', 'footware', 'sneakers', 1999, '', '30', 'img/images/adidas2.jpg'),
(3, '003', 'Nike Mens Air Jordan1 Retro', 'footware', 'sneakers', 2000, 'Product colour: Footwear White, Core Black and Glory Grey\r\nZoned mesh upper\r\nResponse Foam midsole with Boost insert\r\nAdibouncy EVA sockliner\r\nTPU heel construction and rubber outsole\r\nSupportive runn', '25', 'img/images/nike2.jpg'),
(4, '004', 'Precision IV Lace-Up Sports Shoes', 'Sports Shoe', 'sneakers', 4516, 'Wipe with a clean, dry cloth when needed\r\nLace Fastening\r\n6-month warranty against manufacturing defects and not valid on more then 20% discounted products\r\nSynthetic upper\r\nRubber sole', '48', 'img/images/nike3.jpg'),
(5, '005', 'Instyle Foundation & Conceler', 'Makeup', 'Facial', 150, 'High Definition Foundation makes the skin smooth and flawless. Its active ingredients help the skin in revitalizing and correcting visible signs of ageing. Once applied on skin, due to its feather sof', '56', 'img/images/Foundation.png');

-- --------------------------------------------------------

--
-- Stand-in structure for view `test`
-- (See below for the actual view)
--
CREATE TABLE `test` (
`id` int(11)
,`Password` varchar(100)
,`Username` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `Expirydate` varchar(100) NOT NULL,
  `Card_number` varchar(100) NOT NULL,
  `cvv` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `Securityanswer1` varchar(200) NOT NULL,
  `Securityanswer2` varchar(200) NOT NULL,
  `Securityanswer3` varchar(200) NOT NULL,
  `Securityquestion1` varchar(500) NOT NULL,
  `Securityquestion2` varchar(500) NOT NULL,
  `Securityquestion3` varchar(500) NOT NULL,
  `attempts` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `Expirydate`, `Card_number`, `cvv`, `mobile`, `Securityanswer1`, `Securityanswer2`, `Securityanswer3`, `Securityquestion1`, `Securityquestion2`, `Securityquestion3`, `attempts`, `status`, `Email`, `FirstName`, `LastName`, `Password`, `Username`) VALUES
(1, '0228', '123', '480', '08074618920', 'keer', 'railyway', 'hi', 'what is your name ?', 'wht is your father?', 'hello', 2, 'Unblocked', 'keerthanakolavennu26@gmail.com', 'Kolavennu', 'Keerthana', '1234', 'keer1'),
(2, '022023', '584567143359', '489', '7981108999', 'India', 'Blue & Black', 'BTS', 'What is ur nation?', 'Favourite colour?', 'Favourite K-Pop army name?', 0, 'Unblocked', 'naveensai.jale@gmail.com', 'Jale', 'Naveen Sai', 'Keerthana@12', 'Naveen');

-- --------------------------------------------------------

--
-- Structure for view `test`
--
DROP TABLE IF EXISTS `test`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `test`  AS SELECT `admin_details`.`id` AS `id`, `admin_details`.`Password` AS `Password`, `admin_details`.`Username` AS `Username` FROM `admin_details` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blockrequest`
--
ALTER TABLE `blockrequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blockrequest`
--
ALTER TABLE `blockrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_details`
--
ALTER TABLE `card_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
