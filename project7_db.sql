-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 08:09 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project7_db`
--

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
  `id` bigint(20) NOT NULL,
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
(25, 'Can add cnt_tb', 7, 'add_cnt_tb'),
(26, 'Can change cnt_tb', 7, 'change_cnt_tb'),
(27, 'Can delete cnt_tb', 7, 'delete_cnt_tb'),
(28, 'Can view cnt_tb', 7, 'view_cnt_tb'),
(29, 'Can add admin_reg_tb', 8, 'add_admin_reg_tb'),
(30, 'Can change admin_reg_tb', 8, 'change_admin_reg_tb'),
(31, 'Can delete admin_reg_tb', 8, 'delete_admin_reg_tb'),
(32, 'Can view admin_reg_tb', 8, 'view_admin_reg_tb'),
(33, 'Can add productadd_tb', 9, 'add_productadd_tb'),
(34, 'Can change productadd_tb', 9, 'change_productadd_tb'),
(35, 'Can delete productadd_tb', 9, 'delete_productadd_tb'),
(36, 'Can view productadd_tb', 9, 'view_productadd_tb'),
(37, 'Can add reg_tb', 10, 'add_reg_tb'),
(38, 'Can change reg_tb', 10, 'change_reg_tb'),
(39, 'Can delete reg_tb', 10, 'delete_reg_tb'),
(40, 'Can view reg_tb', 10, 'view_reg_tb'),
(41, 'Can add contct_tb', 7, 'add_contct_tb'),
(42, 'Can change contct_tb', 7, 'change_contct_tb'),
(43, 'Can delete contct_tb', 7, 'delete_contct_tb'),
(44, 'Can view contct_tb', 7, 'view_contct_tb');

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
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
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
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'firstapp', 'admin_reg_tb'),
(7, 'firstapp', 'contct_tb'),
(9, 'firstapp', 'productadd_tb'),
(10, 'firstapp', 'reg_tb'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-05 08:21:50.420964'),
(2, 'auth', '0001_initial', '2022-12-05 08:21:57.319553'),
(3, 'admin', '0001_initial', '2022-12-05 08:21:59.428626'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-05 08:21:59.522347'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-05 08:21:59.569032'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-05 08:22:00.131394'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-05 08:22:01.302995'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-05 08:22:01.474834'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-05 08:22:01.584186'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-05 08:22:02.068446'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-05 08:22:02.099687'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-05 08:22:02.162174'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-05 08:22:02.302764'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-05 08:22:02.412299'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-05 08:22:02.568328'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-05 08:22:02.615228'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-05 08:22:02.740371'),
(18, 'firstapp', '0001_initial', '2022-12-05 08:22:02.974484'),
(19, 'firstapp', '0002_rename_contact_tb_cnt_tb', '2022-12-05 08:22:03.177562'),
(20, 'firstapp', '0003_admin_reg_tb', '2022-12-05 08:22:03.396455'),
(21, 'sessions', '0001_initial', '2022-12-05 08:22:04.317915'),
(22, 'firstapp', '0004_productadd_tb', '2022-12-05 08:57:26.050937'),
(23, 'firstapp', '0005_reg_tb', '2022-12-09 09:02:49.717195'),
(24, 'firstapp', '0006_rename_email_reg_tb_useremail_and_more', '2022-12-09 09:17:14.155898'),
(25, 'firstapp', '0007_rename_cnt_tb_contct_tb', '2022-12-19 07:19:55.108266'),
(26, 'firstapp', '0008_rename_name_contct_tb_usrname', '2022-12-19 07:42:10.469826');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `firstapp_admin_reg_tb`
--

CREATE TABLE `firstapp_admin_reg_tb` (
  `id` bigint(20) NOT NULL,
  `inputEmail4` varchar(255) NOT NULL,
  `inputPassword4` varchar(255) NOT NULL,
  `inputAddress` varchar(255) NOT NULL,
  `inputAddress2` varchar(255) NOT NULL,
  `inputCity` varchar(255) NOT NULL,
  `inputState` varchar(255) NOT NULL,
  `inputZip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `firstapp_admin_reg_tb`
--

INSERT INTO `firstapp_admin_reg_tb` (`id`, `inputEmail4`, `inputPassword4`, `inputAddress`, `inputAddress2`, `inputCity`, `inputState`, `inputZip`) VALUES
(1, 'abcd@abcd', 'sAEG', 'WSEG', 'WAgr', 'arsg', 'werg', 'awerg'),
(2, 'aswf@fgj', '675687', '765dyu', 'dgyfdt', 'gfhk', 'gyuki', 'gyi');

-- --------------------------------------------------------

--
-- Table structure for table `firstapp_contct_tb`
--

CREATE TABLE `firstapp_contct_tb` (
  `id` bigint(20) NOT NULL,
  `usrname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `firstapp_contct_tb`
--

INSERT INTO `firstapp_contct_tb` (`id`, `usrname`, `email`, `phone`, `message`) VALUES
(1, 'ADG', 'ada@ewrw', 'ag5', 'sdfgjs'),
(3, 'darh', 'pedcynhqnqrrcyhmwk@tmmbt.com', 'sedg', 'srdg');

-- --------------------------------------------------------

--
-- Table structure for table `firstapp_productadd_tb`
--

CREATE TABLE `firstapp_productadd_tb` (
  `id` bigint(20) NOT NULL,
  `proimage` varchar(100) NOT NULL,
  `proname` varchar(255) NOT NULL,
  `proprice` varchar(255) NOT NULL,
  `prodescrp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `firstapp_productadd_tb`
--

INSERT INTO `firstapp_productadd_tb` (`id`, `proimage`, `proname`, `proprice`, `prodescrp`) VALUES
(19, 'product/productadd/TVS-Apache-RTR-160-4V-130120211625_LnRZWjx.jpg', 'product1', '1', 'dsfg'),
(20, 'product/productadd/tvs-scooty-pep-plus-aqua_fzmcqbI.jpg', 'product2', '2', 'ar'),
(21, 'product/productadd/download_44.jpg', 'product3', '3', 'dsfh'),
(22, 'product/productadd/1-67_yATtXqJ.jpg', 'product4', '4', 'dh');

-- --------------------------------------------------------

--
-- Table structure for table `firstapp_reg_tb`
--

CREATE TABLE `firstapp_reg_tb` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `userphone` varchar(255) NOT NULL,
  `userpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `firstapp_admin_reg_tb`
--
ALTER TABLE `firstapp_admin_reg_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firstapp_contct_tb`
--
ALTER TABLE `firstapp_contct_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firstapp_productadd_tb`
--
ALTER TABLE `firstapp_productadd_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firstapp_reg_tb`
--
ALTER TABLE `firstapp_reg_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `firstapp_admin_reg_tb`
--
ALTER TABLE `firstapp_admin_reg_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `firstapp_contct_tb`
--
ALTER TABLE `firstapp_contct_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `firstapp_productadd_tb`
--
ALTER TABLE `firstapp_productadd_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `firstapp_reg_tb`
--
ALTER TABLE `firstapp_reg_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
