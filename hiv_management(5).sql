-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 04:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hiv_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `daily_hisab`
--

CREATE TABLE `daily_hisab` (
  `daily_hisab_id` int(11) NOT NULL,
  `id_no` varchar(200) NOT NULL,
  `poriman` int(11) NOT NULL,
  `office_khoroj` int(11) NOT NULL,
  `beton_vata` int(11) NOT NULL,
  `poribohon_khoroj` int(11) NOT NULL,
  `bibidh` int(11) NOT NULL,
  `total_aday` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `new_customer_name` varchar(300) NOT NULL,
  `new_customer_id` int(11) NOT NULL,
  `new_customer_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `everydaytask`
--

CREATE TABLE `everydaytask` (
  `task_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `bank_image` text NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(1) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email_address` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `access_label` int(11) DEFAULT NULL,
  `permission` int(11) NOT NULL,
  `user_identify_number` varchar(11) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `company_number` varchar(11) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `location` text NOT NULL,
  `entry_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email_address`, `password`, `access_label`, `permission`, `user_identify_number`, `phone_number`, `company_number`, `designation`, `location`, `entry_date`) VALUES
(1, 'Administrator', 'admin@gmail.com', '123456789', 1, 1, 'admin', 2147483647, '01744821552', 'Adminstrator', '2633 Scheuvront Drive\r\nDenver, CO 80202', '2021-11-18'),
(4, 'Receiptionist', 'r@gmail.com', '123456', 2, 2, 'Themn1967', 2147483647, '30353082', 'Receiptionist', '2633 Scheuvront Drive\r\nDenver, CO 80202 ', '2021-11-18'),
(13, 'Clinicians', 'c@gmail.com', '123456', 3, 3, 'Clinicians1', 1722222, '1232', 'Clinicians ', '2633 Scheuvront Drive\r\nDenver, CO 80202', '2021-11-21'),
(12, 'Counselor', 'co@gmail.com', '123456', 4, 4, 'admin', 1740014536, '11', 'counselor', '4283 Mandan Road\r\nColumbia, MO 65201 ', '2021-11-21'),
(18, 'Physician Employee', 'p@gmail.com', '123456', 5, 0, 'physicians0', 2147483647, '01744821552', 'Physician', 'Dhaka', '2021-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baki`
--

CREATE TABLE `tbl_baki` (
  `dokandarer_id` int(11) NOT NULL,
  `shop_name` text NOT NULL,
  `maliker_name` text NOT NULL,
  `market_name` text NOT NULL,
  `mobile_number` text NOT NULL,
  `action` tinyint(4) NOT NULL DEFAULT 1,
  `baki_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_baki`
--

INSERT INTO `tbl_baki` (`dokandarer_id`, `shop_name`, `maliker_name`, `market_name`, `mobile_number`, `action`, `baki_date`) VALUES
(20, 'prachurjo store', 'chayan ', 'bishnupur', '01744821552', 1, '2021-08-03 06:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_beton_vata`
--

CREATE TABLE `tbl_beton_vata` (
  `beton_vata_id` int(11) NOT NULL,
  `employee_name` varchar(300) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `employee_designation` text NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `taka` int(11) NOT NULL,
  `note` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_beton_vata`
--

INSERT INTO `tbl_beton_vata` (`beton_vata_id`, `employee_name`, `employee_id`, `employee_designation`, `mobile_no`, `taka`, `note`, `date`) VALUES
(11, 'mofijul islam', '1', 'DSR', 1710907986, 35, 'nasta babod', '2021-07-08 09:04:03'),
(12, 'mofijul islam', '1', 'DSR', 171097986, 35, 'nasta babod', '2021-07-08 09:05:40'),
(13, 'mofijul islam', '1', 'DSR', 171097986, 35, 'nasta babod', '2021-07-08 09:05:52'),
(14, 'mofijul islam', '1', 'DSR', 0, 35, 'nasta babod', '2021-07-09 20:55:50'),
(15, 'mofijul islam', '1', 'DSR', 171097986, 35, 'nasta babod', '2021-07-11 15:42:13'),
(16, 'mofijul islam', '1', 'DSR', 0, 35, 'nasta babod', '2021-07-14 11:29:53'),
(17, 'mofijul islam', '1', 'DSR', 0, 35, 'nasta babod', '2021-07-14 11:30:08'),
(18, 'mofijul islam', '1', 'DSR', 0, 35, 'nasta babod', '2021-07-15 12:35:11'),
(19, 'mofijul islam', '1', 'DSR', 0, 60, 'DSr er personal khoroj', '2021-07-15 12:35:34'),
(20, 'mofijul islam', '1', 'DSR', 0, 100, 'personal vabe niche .rat 12 tar dik delivery deyar por.', '2021-07-15 12:36:07'),
(21, 'mofijul islam', '1', 'DSR', 0, 42, 'personal khoroj\r\n', '2021-07-19 09:37:12'),
(22, 'mofijul islam', '1', 'DSR', 0, 35, 'nasta babod\r\n', '2021-07-19 09:37:25'),
(23, 'mofijul islam', '1', 'DSR', 0, 1500, 'beton babod 20/7/21', '2021-07-21 10:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(5) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `client_id_no` int(11) NOT NULL,
  `address` text NOT NULL,
  `ks` text NOT NULL,
  `area` int(11) NOT NULL,
  `customer_nid` int(11) NOT NULL,
  `father_husband_name` varchar(400) NOT NULL,
  `mother_name` varchar(300) NOT NULL,
  `date_of_birth` varchar(100) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `date_of_join` varchar(40) NOT NULL,
  `nomini_name` varchar(30) NOT NULL,
  `nomini_nid` int(50) NOT NULL,
  `customer_soncoy` varchar(100) NOT NULL,
  `loan_er_poriman` int(11) NOT NULL,
  `munafa` int(11) NOT NULL,
  `binioger_dofa` varchar(100) NOT NULL,
  `ponner_name` varchar(200) NOT NULL,
  `porisodher_tarikh` varchar(50) NOT NULL,
  `loan_period` varchar(50) NOT NULL,
  `loan_scheme` varchar(60) NOT NULL,
  `jamanot_taka` int(11) NOT NULL,
  `zuki_tohobil` int(11) NOT NULL,
  `others_fee` int(11) NOT NULL,
  `customer_action` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_main_daily_hisab`
--

CREATE TABLE `tbl_customer_main_daily_hisab` (
  `daily_hisab_main_id` int(11) NOT NULL,
  `office_khoroj` int(11) NOT NULL,
  `poribohon_khoroj` int(11) NOT NULL,
  `bibidh` int(11) NOT NULL,
  `total_aday` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_main_data`
--

CREATE TABLE `tbl_customer_main_data` (
  `serial_no` int(11) NOT NULL,
  `client_id_no` int(11) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `kisti` int(11) NOT NULL,
  `soncoy` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `customer_name` varchar(400) CHARACTER SET utf8 NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dealer_product`
--

CREATE TABLE `tbl_dealer_product` (
  `dealer_product_id` int(11) NOT NULL,
  `product_quantity` varchar(11) NOT NULL,
  `product_dealer_price` varchar(11) NOT NULL,
  `product_shop_price` varchar(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `dealer_action` tinyint(4) NOT NULL DEFAULT 1,
  `product_dealer_lav_price` varchar(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_challan_no` text NOT NULL,
  `quantity_dealer_total_price` text NOT NULL,
  `pich_proti_dealer_lav` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_dealer_product`
--

INSERT INTO `tbl_dealer_product` (`dealer_product_id`, `product_quantity`, `product_dealer_price`, `product_shop_price`, `date`, `dealer_action`, `product_dealer_lav_price`, `product_id`, `product_challan_no`, `quantity_dealer_total_price`, `pich_proti_dealer_lav`) VALUES
(158, '501', '17.45', '20', '2021-07-07 10:04:47', 1, '1277.55', 78, '7/7/21', '8742.45', '2.55'),
(159, '224', '37.83', '40', '2021-07-07 10:05:11', 1, '486.08', 79, '7/7/21', '8473.92', '2.17'),
(160, '90', '72.85', '80', '2021-07-07 10:05:34', 1, '643.5', 80, '7/7/21', '6556.5', '7.15'),
(161, '192', '19.55', '22', '2021-07-07 10:06:01', 1, '470.4', 82, '7/7/21', '3753.6', '2.45'),
(162, '230', '39', '40', '2021-07-07 12:18:23', 1, '230', 83, '7/7/21', '8970', '1'),
(163, '4', '192.7', '200', '2021-07-07 12:19:11', 1, '29.2', 85, '7/7/21', '770.8', '7.3'),
(164, '5', '157.91', '170', '2021-07-07 12:19:52', 1, '60.45', 81, '7/7/21', '789.55', '12.09'),
(165, '48', '75.20', '80', '2021-07-07 12:21:45', 1, '230.4', 84, '7/7/21', '3609.6', '4.8'),
(166, '23', '17.30', '17', '2021-07-07 12:22:22', 1, '-6.9', 88, '7/7/21', '397.9', '-0.3'),
(167, '570', '14', '13.50', '2021-07-07 12:24:20', 1, '-285', 90, '7/7/21', '7980', '-0.5'),
(168, '204', '7.48', '7.66', '2021-07-07 12:24:57', 1, '36.72', 91, '7/7/21', '1525.92', '0.18'),
(169, '480', '10.20', '12', '2021-07-07 12:25:29', 1, '864', 92, '7/7/21', '4896', '1.8'),
(170, '110', '13.50', '16', '2021-07-07 12:26:05', 1, '275', 86, '7/7/21', '1485', '2.5'),
(171, '97', '6.11', '6.50', '2021-07-07 12:26:38', 1, '37.83', 93, '7/7/21', '592.67', '0.39'),
(172, '326', '7.36', '8', '2021-07-07 12:27:13', 1, '208.64', 94, '7/7/21', '2399.36', '0.64'),
(173, '104', '14.15', '15.50', '2021-07-07 12:27:59', 1, '140.4', 95, '7/7/21', '1471.6', '1.35'),
(174, '22', '46.25', '48', '2021-07-07 12:30:54', 1, '38.5', 97, '7/7/21', '1017.5', '1.75'),
(175, '1608', '3.91', '4', '2021-07-07 12:31:27', 1, '144.72', 98, '7/7/21', '6287.28', '0.09'),
(176, '24', '48', '50', '2021-07-07 12:32:22', 1, '48', 99, '7/7/21', '1152', '2'),
(177, '2782', '3.75', '4', '2021-07-07 12:32:54', 1, '695.5', 100, '7/7/21', '10432.5', '0.25'),
(178, '2830', '6.84', '7', '2021-07-07 12:33:48', 1, '452.8', 101, '7/7/21', '19357.2', '0.16'),
(179, '178', '14', '15', '2021-07-07 12:35:03', 1, '178', 103, '7/7/21', '2492', '1'),
(180, '47', '24.70', '26', '2021-07-07 12:35:37', 1, '61.1', 104, '7/7/21', '1160.9', '1.3'),
(181, '4', '24', '25', '2021-07-07 12:36:05', 1, '4', 102, '7/7/21', '96', '1'),
(182, '530', '39', '40', '2021-07-07 12:37:32', 1, '530', 105, '7/7/21', '20670', '1'),
(183, '72', '39', '40', '2021-07-07 12:38:02', 1, '72', 107, '7/7/21', '2808', '1'),
(184, '72', '39', '40', '2021-07-07 12:38:25', 1, '72', 108, '7/7/21', '2808', '1'),
(185, '15', '92', '100', '2021-07-07 12:40:49', 1, '120', 109, '7/7/21', '1380', '8'),
(186, '11', '17.45', '20', '2021-07-07 12:41:42', 1, '28.05', 78, '7/7/21', '191.95', '2.55'),
(187, '9', '19.55', '22', '2021-07-07 12:42:04', 1, '22.05', 82, '7/7/21', '175.95', '2.45'),
(188, '1', '42.55', '43', '2021-07-07 12:42:29', 1, '0.45', 83, '7/7/21', '42.55', '0.45'),
(189, '2', '13.5', '16', '2021-07-07 12:43:33', 1, '5', 86, '7/7/21', '27', '2.5'),
(190, '18', '7.36', '8', '2021-07-07 12:44:06', 1, '11.52', 94, '7/7/21', '132.48', '0.64'),
(191, '4', '23.85', '23', '2021-07-07 12:44:35', 1, '-3.4', 96, '7/7/21', '95.4', '-0.85'),
(192, '19', '3.91', '4', '2021-07-07 12:45:01', 1, '1.71', 98, '7/7/21', '74.29', '0.09'),
(193, '46', '6.84', '7', '2021-07-07 12:45:26', 1, '7.36', 101, '7/7/21', '314.64', '0.16'),
(194, '3', '39', '40', '2021-07-07 12:47:04', 1, '3', 105, '7/7/21', '117', '1'),
(195, '19', '7.68', '8', '2021-07-07 12:47:53', 1, '6.08', 115, '7/7/21', '145.92', '0.32'),
(196, '5', '330', '340', '2021-07-07 12:48:53', 1, '50', 131, '7/7/21', '1650', '10'),
(197, '4', '425', '435', '2021-07-07 12:49:15', 1, '40', 132, '7/7/21', '1700', '10'),
(198, '32', '21', '25', '2021-07-07 12:49:39', 1, '128', 111, '7/7/21', '672', '4'),
(199, '2', '195', '200', '2021-07-07 12:50:37', 1, '10', 113, '7/7/21', '390', '5'),
(200, '27', '37', '40', '2021-07-07 12:51:20', 1, '81', 114, '7/7/21', '999', '3'),
(201, '100', '7.68', '8', '2021-07-07 12:51:45', 1, '32', 115, '7/7/21', '768', '0.32'),
(202, '223', '7.66', '8', '2021-07-07 12:52:31', 1, '75.82', 118, '7/7/21', '1708.18', '0.34'),
(203, '26', '135', '150', '2021-07-07 12:53:28', 1, '390', 119, '7/7/21', '3510', '15'),
(204, '246', '7.57', '8', '2021-07-07 12:53:48', 1, '105.78', 120, '7/7/21', '1862.22', '0.43'),
(205, '17', '47', '48', '2021-07-07 12:54:11', 1, '17', 121, '7/7/21', '799', '1'),
(206, '71', '150', '155', '2021-07-07 12:54:43', 1, '355', 123, '7/7/21', '10650', '5'),
(207, '50', '200', '220', '2021-07-07 12:55:13', 1, '1000', 126, '7/7/21', '10000', '20'),
(208, '960', '3.21', '3.50', '2021-07-07 12:56:10', 1, '278.4', 128, '7/7/21', '3081.6', '0.29'),
(209, '166', '23.85', '23', '2021-07-08 09:23:34', 1, '-141.1', 96, '7/7/21', '3959.1', '-0.85'),
(210, '192', '22.13', '22', '2021-07-11 10:39:52', 1, '-24.96', 78, '8/7/21', '4248.96', '-0.13'),
(211, '48', '35.52', '40', '2021-07-11 10:40:18', 1, '215.04', 79, '8/7/21', '1704.96', '4.48'),
(212, '24', '72.85', '80', '2021-07-11 10:40:42', 1, '171.6', 80, '8/7/21', '1748.4', '7.15'),
(213, '12', '157.91', '170', '2021-07-11 10:41:08', 1, '145.08', 81, '8/7/21', '1894.92', '12.09'),
(214, '288', '23.40', '23', '2021-07-11 10:41:56', 1, '-115.2', 82, '8/7/21', '6739.2', '-0.4'),
(215, '48', '79.91', '80', '2021-07-11 10:42:41', 1, '4.320000000', 84, '8/7/21', '3835.68', '0.090000000000003'),
(216, '96', '42.54', '40', '2021-07-11 10:43:43', 1, '-243.84', 83, '8/7/21', '4083.84', '-2.54'),
(217, '12', '192.66', '200', '2021-07-11 10:44:08', 1, '88.08', 85, '8/7/21', '2311.92', '7.34'),
(218, '418', '17.30', '18', '2021-07-11 10:49:22', 1, '292.6', 89, '8/7/21', '7231.4', '0.7'),
(219, '288', '14', '15', '2021-07-11 10:50:07', 1, '288', 90, '8/7/21', '4032', '1'),
(220, '720', '11.20', '11', '2021-07-11 10:51:33', 1, '-144', 92, '8/7/21', '8064', '-0.2'),
(221, '3240', '7.47', '8', '2021-07-11 10:52:27', 1, '1717.2', 94, '8/7/21', '24202.8', '0.53'),
(222, '180', '23.60', '23', '2021-07-11 10:53:04', 1, '-108', 96, '8/7/21', '4248', '-0.6'),
(223, '2660', '3.93', '4', '2021-07-11 10:54:02', 1, '186.2', 98, '8/7/21', '10453.8', '0.07'),
(224, '5120', '6.83', '7', '2021-07-11 10:55:26', 1, '870.4', 101, '8/7/21', '34969.6', '0.17'),
(225, '75', '14', '15', '2021-07-11 10:56:14', 1, '75', 103, '08-07-21', '1050', '1'),
(226, '250', '25.2', '26', '2021-07-11 10:56:39', 1, '200', 104, '8/7/21', '6300', '0.8'),
(227, '3240', '7.47', '8', '2021-07-15 11:16:10', 1, '1717.2', 94, '12-7-21', '24202.8', '0.53'),
(228, '80', '47.85', '50.72', '2021-07-15 11:17:02', 1, '229.6', 97, '12-7-21', '3828', '2.87'),
(229, '1900', '3.93', '4', '2021-07-15 11:17:57', 1, '133', 98, '12-7-21', '7467', '0.07'),
(230, '1920', '3.75', '4', '2021-07-15 11:20:08', 1, '480', 100, '12-7-21', '7200', '0.25'),
(231, '144', '25.90', '27.50', '2021-07-15 11:21:04', 1, '230.4', 102, '12-7-21', '3729.6', '1.6'),
(232, '756', '39.33', '42', '2021-07-15 11:22:01', 1, '2018.52', 105, '12-7-21', '29733.48', '2.67'),
(233, '120', '21', '22', '2021-07-15 11:22:56', 1, '120', 111, '12-7-21', '2520', '1'),
(234, '108', '37.84', '40', '2021-07-15 11:23:30', 1, '233.28', 114, '12-7-21', '4086.72', '2.16'),
(235, '4800', '6.83', '7', '2021-07-15 11:23:57', 1, '816', 101, '12-7-21', '32784', '0.17'),
(236, '96', '60.50', '65', '2021-07-15 11:25:19', 1, '432', 134, '12-7-21', '5808', '4.5'),
(237, '24', '92', '100', '2021-07-16 10:23:47', 1, '192', 110, '12-07-21', '2208', '8'),
(238, '192', '17.48', '18.70', '2021-07-18 22:24:01', 1, '234.24', 86, '17/7/21', '3356.16', '1.22'),
(239, '24', '79.95', '85.54', '2021-07-19 09:24:54', 1, '134.16', 84, '17/7/21', '1918.8', '5.59'),
(240, '2160', '7.48', '8', '2021-07-19 09:26:04', 1, '1123.2', 94, '17/7/21', '16156.8', '0.52'),
(241, '180', '23.60', '25.15', '2021-07-19 09:27:09', 1, '279', 96, '17/7/21', '4248', '1.55'),
(242, '80', '47.85', '51.19', '2021-07-19 09:28:29', 1, '267.2', 97, '17/7/21', '3828', '3.34'),
(243, '1900', '3.93', '4', '2021-07-19 09:29:51', 1, '133', 98, '17/7/21', '7467', '0.07'),
(244, '3920', '6.83', '7', '2021-07-19 09:31:02', 1, '666.4', 101, '17/7/21', '26773.6', '0.17'),
(245, '96', '25.9', '28', '2021-07-19 09:32:03', 1, '201.6', 102, '17/7/21', '2486.4', '2.1'),
(246, '240', '7.58', '8', '2021-07-19 09:32:38', 1, '100.8', 120, '17/7/21', '1819.2', '0.42'),
(247, '12', '150', '160', '2021-07-19 09:33:30', 1, '120', 123, '17/7/21', '1800', '10'),
(248, '24', '214.5', '220', '2021-07-19 09:34:28', 1, '132', 127, '17/7/21', '5148', '5.5'),
(249, '20', '219', '240', '2021-07-19 09:35:46', 1, '420', 135, '17/7/21', '4380', '21'),
(250, '24', '92', '100', '2021-07-19 10:11:05', 1, '192', 110, '17/7/21', '2208', '8'),
(251, '3240', '7.47', '8', '2021-07-26 09:46:45', 1, '1717.2', 94, '25-7-21', '24202.8', '0.53'),
(252, '120', '23.60', '25', '2021-07-26 09:47:23', 1, '168', 96, '25/7/21', '2832', '1.4'),
(253, '192', '25.90', '28', '2021-07-26 09:48:23', 1, '403.2', 102, '25/7/21', '4972.8', '2.1'),
(254, '4000', '6.83', '7', '2021-07-26 10:19:22', 1, '680', 101, '25/7/21', '27320', '0.17'),
(255, '20', '219', '240', '2021-07-26 10:19:50', 1, '420', 135, '25/7/21', '4380', '21'),
(256, '1800', '3.93', '4', '2021-07-26 10:20:57', 1, '126', 98, '25/7/21', '7074', '0.07'),
(257, '1800', '3.76', '4', '2021-07-26 10:21:22', 1, '432', 100, '25/7/21', '6768', '0.24'),
(258, '36', '39', '42', '2021-07-29 15:24:02', 1, '108', 136, '7/7/21', '1404', '3'),
(259, '432', '14', '14.5', '2021-07-30 13:40:53', 1, '216', 90, '29/7/21', '6048', '0.5'),
(260, '360', '15.08', '16', '2021-07-30 13:41:42', 1, '331.2', 95, '29/7/21', '5428.8', '0.92'),
(261, '180', '23.6', '24', '2021-07-30 13:42:28', 1, '72', 96, '29/7/21', '4248', '0.4'),
(262, '3800', '3.93', '4', '2021-07-30 13:43:08', 1, '266', 98, '29/7/21', '14934', '0.07'),
(263, '3072', '3.77', '4', '2021-07-30 13:43:42', 1, '706.56', 100, '29/7/21', '11581.44', '0.23'),
(264, '5600', '6.83', '7', '2021-07-30 13:44:15', 1, '952', 101, '29/7/21', '38248', '0.17'),
(265, '480', '25.90', '27', '2021-07-30 13:44:37', 1, '528', 102, '29/7/21', '12432', '1.1'),
(266, '657', '39', '42', '2021-07-30 13:46:35', 1, '1971', 105, '29/7/21', '25623', '3'),
(267, '195', '39', '42', '2021-07-30 13:46:59', 1, '585', 107, '29/7/21', '7605', '3'),
(268, '3240', '7.47', '8', '2021-08-04 18:45:57', 1, '1717.2', 94, '03/08/21', '24202.8', '0.53'),
(269, '744', '3.75', '4', '2021-08-04 18:48:58', 1, '186', 100, '03/08/21', '2790', '0.25'),
(270, '2400', '6.84', '7', '2021-08-04 18:49:23', 1, '384', 101, '03/08/21', '16416', '0.16'),
(271, '120', '25.2', '26', '2021-08-04 18:49:55', 1, '96', 104, '03/08/21', '3024', '0.8'),
(272, '312', '37.84', '40', '2021-08-04 18:50:33', 1, '673.92', 114, '03/08/21', '11806.08', '2.16'),
(273, '432', '11.2', '11.80', '2021-08-10 10:15:36', 1, '259.2', 92, '08/08/21', '4838.4', '0.6'),
(274, '4800', '6.84', '7', '2021-08-10 10:17:09', 1, '768', 101, '08/08/21', '32832', '0.16'),
(275, '3240', '7.47', '8', '2021-08-10 10:17:57', 1, '1717.2', 94, '08/08/21', '24202.8', '0.53'),
(276, '240', '23.6', '24', '2021-08-10 10:18:56', 1, '96', 96, '08/08/21', '5664', '0.4'),
(277, '3040', '3.93', '4', '2021-08-10 10:19:36', 1, '212.8', 98, '08/08/21', '11947.2', '0.07'),
(278, '4632', '3.75', '4', '2021-08-10 10:20:20', 1, '1158', 100, '08/08/21', '17370', '0.25'),
(279, '10', '219.24', '240', '2021-08-10 10:20:40', 1, '207.6', 135, '08/08/21', '2192.4', '20.76'),
(280, '936', '7.66', '8', '2021-08-10 10:22:41', 1, '318.24', 117, '08/08/21', '7169.76', '0.34'),
(281, '156', '37.84', '40', '2021-08-10 10:23:53', 1, '336.96', 114, '08/08/21', '5903.04', '2.16'),
(282, '216', '7.47', '8', '2021-08-10 10:24:15', 1, '114.48', 94, '08/08/21', '1613.52', '0.53'),
(283, '60', '88.16', '93.5', '2021-08-22 08:48:46', 1, '320.4', 137, '19/8/21', '5289.6', '5.34'),
(284, '432', '11.20', '11.60', '2021-08-22 08:49:33', 1, '172.8', 92, '19/08/21', '4838.4', '0.4'),
(285, '2160', '7.48', '8', '2021-08-22 08:50:01', 1, '1123.2', 94, '19/08/21', '16156.8', '0.52'),
(286, '120', '15.10', '11.50', '2021-08-22 08:50:19', 1, '-432', 95, '19/08/21', '1812', '-3.6'),
(287, '60', '47.85', '50', '2021-08-22 08:50:40', 1, '129', 97, '19/08/21', '2871', '2.15'),
(288, '1080', '3.93', '4', '2021-08-22 08:51:38', 1, '75.6', 98, '19/08/21', '4244.4', '0.07'),
(289, '60', '78', '82.64', '2021-08-22 08:52:01', 1, '278.4', 138, '19/08/21', '4680', '4.64'),
(290, '60', '200', '212', '2021-08-22 08:52:15', 1, '720', 139, '19/08/21', '12000', '12'),
(291, '3200', '6.84', '7', '2021-08-22 08:52:49', 1, '512', 101, '19/08/21', '21888', '0.16'),
(292, '24', '92', '100', '2021-08-22 08:54:04', 1, '192', 109, '19/08/21', '2208', '8'),
(293, '20', '219.24', '240', '2021-08-22 08:54:29', 1, '415.2', 135, '19/08/21', '4384.8', '20.76'),
(294, '3240', '7.47', '8', '2021-09-08 09:08:01', 1, '1717.2', 94, '29/08/21', '24202.8', '0.53'),
(295, '120', '15.10', '15.50', '2021-09-08 09:09:15', 1, '48', 95, '29/08/21', '1812', '0.4'),
(296, '33', '23.60', '24', '2021-09-08 09:09:47', 1, '13.2', 96, '29/08/21', '778.8', '0.4'),
(297, '22', '47.85', '50', '2021-09-08 09:10:22', 1, '47.3', 97, '29/08/21', '1052.7', '2.15'),
(298, '1900', '3.93', '4', '2021-09-08 09:11:04', 1, '133', 98, '29/08/21', '7467', '0.07'),
(299, '5200', '6.84', '7', '2021-09-08 09:11:23', 1, '832', 101, '29/08/21', '35568', '0.16'),
(300, '750', '25.5', '27', '2021-09-08 09:11:45', 1, '1125', 102, '29/08/21', '19125', '1.5'),
(301, '150', '25.2', '27', '2021-09-08 09:12:10', 1, '270', 104, '29/08/21', '3780', '1.8'),
(302, '360', '39', '40', '2021-09-08 09:12:39', 1, '360', 107, '29/08/21', '14040', '1'),
(303, '24', '92', '100', '2021-09-08 09:12:51', 1, '192', 105, '29/08/21', '2208', '8'),
(304, '104', '46.85', '47', '2021-09-08 09:14:17', 1, '15.6', 140, '29/08/21', '4872.4', '0.15'),
(305, '52', '21.56', '22', '2021-09-08 09:14:41', 1, '22.88', 141, '29/08/21', '1121.12', '0.44'),
(306, '20', '219.24', '240', '2021-09-08 09:14:57', 1, '415.2', 135, '29/08/21', '4384.8', '20.76'),
(307, '192', '22.13', '23', '2021-09-08 09:15:35', 1, '167.04', 78, '06/09/21', '4248.96', '0.87'),
(308, '288', '23.40', '24', '2021-09-08 09:16:00', 1, '172.8', 82, '06/09/21', '6739.2', '0.6'),
(309, '96', '17.48', '18', '2021-09-08 09:16:23', 1, '49.92', 86, '06/09/21', '1678.08', '0.52'),
(310, '192', '17.30', '18', '2021-09-08 09:16:52', 1, '134.4', 88, '06/09/21', '3321.6', '0.7'),
(311, '432', '14', '14', '2021-09-08 09:17:09', 1, '0', 90, '06/09/21', '6048', '0'),
(312, '432', '11.20', '12', '2021-09-08 09:17:35', 1, '345.6', 92, '06/09/21', '4838.4', '0.8'),
(313, '3240', '7.47', '8', '2021-09-08 09:17:55', 1, '1717.2', 94, '06/09/21', '24202.8', '0.53'),
(314, '6000', '6.84', '7', '2021-09-08 09:18:13', 1, '960', 101, '06/09/21', '41040', '0.16'),
(315, '576', '39', '41', '2021-09-08 09:18:44', 1, '1152', 105, '06/09/21', '22464', '2'),
(316, '216', '39', '41', '2021-09-08 09:19:02', 1, '432', 107, '06/09/21', '8424', '2'),
(317, '20', '219.24', '240', '2021-09-08 09:19:15', 1, '415.2', 135, '06/09/21', '4384.8', '20.76');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dokandarer_baki`
--

CREATE TABLE `tbl_dokandarer_baki` (
  `baki_id` int(11) NOT NULL,
  `dokandarer_id` int(11) NOT NULL,
  `memo_serial` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `joma` int(11) NOT NULL,
  `baki_taka` int(11) NOT NULL,
  `total_baki` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `action` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dps`
--

CREATE TABLE `tbl_dps` (
  `serial_no` int(11) NOT NULL,
  `c_name` varchar(400) NOT NULL,
  `dps_id` varchar(200) NOT NULL,
  `c_nid` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `dps_name` varchar(400) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `dps_amount` int(11) NOT NULL,
  `dps_year` varchar(300) NOT NULL,
  `dps_profit` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hiv_patient`
--

CREATE TABLE `tbl_hiv_patient` (
  `hiv_patient_id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `identifynumber` text DEFAULT NULL,
  `patientphonenumber` int(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `kinname` varchar(11) DEFAULT NULL,
  `kinphonenumber` int(12) DEFAULT NULL,
  `kinaddress` text DEFAULT NULL,
  `relationship` text DEFAULT NULL,
  `patient_value` text DEFAULT NULL,
  `treatment_start_date` text DEFAULT NULL,
  `hiv_status` text DEFAULT NULL,
  `last_hiv_test_date` text DEFAULT NULL,
  `tb_screening_linkage_to_care` text DEFAULT NULL,
  `ipt_start` int(11) DEFAULT NULL,
  `notify24hours` text DEFAULT NULL,
  `art_start` int(11) DEFAULT NULL,
  `date` date DEFAULT current_timestamp(),
  `test_refused` text DEFAULT NULL,
  `test_details` text DEFAULT NULL,
  `tv_screening_treatment_page` text DEFAULT NULL,
  `diabetes` text DEFAULT NULL,
  `hypertension` varchar(11) DEFAULT NULL,
  `hypertension2` varchar(11) NOT NULL,
  `pregnancy` int(11) NOT NULL,
  `first_line_regimen` int(11) NOT NULL,
  `second_line_regimen` int(11) NOT NULL,
  `viral_load_due_annual` text NOT NULL,
  `on_ipt` int(11) NOT NULL,
  `ipt_start_treatment` int(11) NOT NULL,
  `presumptive` varchar(11) NOT NULL,
  `notify_after_two_weeks` varchar(11) NOT NULL,
  `reffered_admitted_hospital` varchar(11) NOT NULL,
  `not_ready_for_art` varchar(11) NOT NULL,
  `refused` varchar(11) NOT NULL,
  `drug_stock_out` varchar(11) NOT NULL,
  `others` varchar(11) NOT NULL,
  `specify_others` text NOT NULL,
  `art_initiation` varchar(11) NOT NULL,
  `recent_test_result` varchar(11) NOT NULL,
  `image` text NOT NULL,
  `next_test_date_consent` varchar(11) NOT NULL,
  `no_index_contact` varchar(11) NOT NULL,
  `art_re_initiation` int(11) NOT NULL,
  `customer_image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `tb_screening_defaulter` text NOT NULL,
  `patient_age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hiv_patient`
--

INSERT INTO `tbl_hiv_patient` (`hiv_patient_id`, `name`, `gender`, `identifynumber`, `patientphonenumber`, `address`, `kinname`, `kinphonenumber`, `kinaddress`, `relationship`, `patient_value`, `treatment_start_date`, `hiv_status`, `last_hiv_test_date`, `tb_screening_linkage_to_care`, `ipt_start`, `notify24hours`, `art_start`, `date`, `test_refused`, `test_details`, `tv_screening_treatment_page`, `diabetes`, `hypertension`, `hypertension2`, `pregnancy`, `first_line_regimen`, `second_line_regimen`, `viral_load_due_annual`, `on_ipt`, `ipt_start_treatment`, `presumptive`, `notify_after_two_weeks`, `reffered_admitted_hospital`, `not_ready_for_art`, `refused`, `drug_stock_out`, `others`, `specify_others`, `art_initiation`, `recent_test_result`, `image`, `next_test_date_consent`, `no_index_contact`, `art_re_initiation`, `customer_image`, `status`, `tb_screening_defaulter`, `patient_age`) VALUES
(29, 'Louis A. Ezell', '1', 'patient1', 1744821552, '1492 Byers Lane Herlong, CA 96113 ', 'Elaine D. J', 2147483647, '3054 Burwell Heights Road Milam, TX 75959 ', 'Mother', 'Defaulter', '2021-11-01', '1', '2021-10-05', '1', 1, '1', 1, '2021-11-22', '1', 'demo comment', 'Yes', '1', '1', 'Yes', 2, 1, 1, 'Viral Load Due-Annual', 1, 1, '1', '1', '1', '1', '1', '1', '', 'dcddd', '', '1', 'http://localhost:8080/hivnew/./images/world-bank-announces-deal-to-fund-vaccines-for-south-africa-bloomberg.jpg', '2021-11-16', '1', 0, 'http://localhost:8080/hivnew/./images/1.jpg', 1, '0', 744466666),
(30, 'Sherry M. Lewis', '1', 'Patient2', 468054680, '1143 Cessna Drive Fort Wayne, IN 46805 ', 'Maria M. Su', 18593910, '4166 Eagle Lane Bemidji, MN 56601 ', 'Sister', NULL, '2021-11-19', '2', '2021-11-04', NULL, NULL, '1', 1, '2021-11-22', '1', NULL, NULL, NULL, NULL, '', 1, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'http://localhost:8080/hivnew/./images/21.png', 1, '1', 10),
(31, 'Mary E. Reedy', '2', 'patient3', 1783937889, '4537 Whiteman Street Pemberton, NJ 08068 ', 'Melody G. D', 1744821552, '2633 Scheuvront Drive Denver, CO 80202 ', 'Sister', '3', '2021-11-25', '1', '2021-11-02', NULL, NULL, '1', 2, '2021-11-22', '0', NULL, NULL, NULL, '1', '', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'http://localhost:8080/hivnew/./images/3.jpg', 1, '', 100),
(32, 'Rosela', '1', '1023839', 1744821552, 'Dhaka gulsan', 'Kulsum', 1982383929, 'dhaka rangpur', 'Brother', NULL, '2021-11-22', '1', '2021-11-17', NULL, NULL, '0', NULL, '2021-11-23', '1', NULL, NULL, NULL, NULL, '', 1, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'http://localhost:8080/hivnew/./images/images.jpg', 1, '', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_index`
--

CREATE TABLE `tbl_index` (
  `tbl_index_id` int(11) NOT NULL,
  `index_name` varchar(11) DEFAULT NULL,
  `index_gender` varchar(11) DEFAULT NULL,
  `index_identifynumber` varchar(11) DEFAULT NULL,
  `index_patientphonenumber` varchar(11) DEFAULT NULL,
  `index_address` text DEFAULT NULL,
  `index_patient_care` varchar(11) DEFAULT NULL,
  `index_age` int(11) DEFAULT NULL,
  `index_partner_name` varchar(11) DEFAULT NULL,
  `index_partner_identify_number` text DEFAULT NULL,
  `index_partner_contact_number` varchar(11) DEFAULT NULL,
  `index_partner_physical_address` varchar(11) DEFAULT NULL,
  `index_partner_gender` varchar(11) DEFAULT NULL,
  `index_partner_age` varchar(11) DEFAULT NULL,
  `index_positve_yes_no` varchar(11) DEFAULT NULL,
  `index_unknown` int(11) DEFAULT NULL,
  `index_hct_outcome` varchar(11) DEFAULT NULL,
  `index_text_date_time` varchar(11) DEFAULT NULL,
  `index_test_result` varchar(11) DEFAULT NULL,
  `index_comments` text DEFAULT NULL,
  `index_entry_date` date DEFAULT current_timestamp(),
  `index_slip` varchar(11) DEFAULT NULL,
  `hiv_patient_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_index`
--

INSERT INTO `tbl_index` (`tbl_index_id`, `index_name`, `index_gender`, `index_identifynumber`, `index_patientphonenumber`, `index_address`, `index_patient_care`, `index_age`, `index_partner_name`, `index_partner_identify_number`, `index_partner_contact_number`, `index_partner_physical_address`, `index_partner_gender`, `index_partner_age`, `index_positve_yes_no`, `index_unknown`, `index_hct_outcome`, `index_text_date_time`, `index_test_result`, `index_comments`, `index_entry_date`, `index_slip`, `hiv_patient_id`) VALUES
(12, 'index name', 'male', '22', '2211111111', 'Physical Address(Land marks)', 'Patient Car', 11, 'Partner Nam', '433E34', '2211', 'Physical ad', 'male', 'Adult', 'Yes', 0, 'HCT(testing', '2021-12-15', 'Known Posit', 'Comments', '2021-12-11', 'INDEX SLIP1', 29);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kisti_soncoy`
--

CREATE TABLE `tbl_kisti_soncoy` (
  `serial_no` int(11) NOT NULL,
  `client_id_no` int(11) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `kisti` int(11) NOT NULL,
  `soncoy` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `customer_name` varchar(400) CHARACTER SET utf8 NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_book`
--

CREATE TABLE `tbl_order_book` (
  `order_book_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_size` text NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_shop_price` varchar(11) NOT NULL,
  `order_product_dealer_price` text NOT NULL,
  `amader_invest_taka` text NOT NULL,
  `dokandarer_total_price` text NOT NULL,
  `percentage` text NOT NULL,
  `total_lav` text NOT NULL,
  `order_date` text NOT NULL,
  `action` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_book`
--

INSERT INTO `tbl_order_book` (`order_book_id`, `product_id`, `product_size`, `product_quantity`, `product_shop_price`, `order_product_dealer_price`, `amader_invest_taka`, `dokandarer_total_price`, `percentage`, `total_lav`, `order_date`, `action`) VALUES
(401, 78, '50 gram', 10, '2044', '17.45', '174.5', '20440', '2026.55', '20265.5', '2021-07-03', 1),
(402, 80, '0', 12, '75', '72.85', '874.2', '900', '2.15', '25.8', '2021-07-03', 1),
(403, 82, '0', 28, '22', '19.55', '547.4', '616', '2.45', '68.6', '2021-07-03', 1),
(404, 84, '200 gram', 12, '80', '75.20', '902.4', '960', '4.8', '57.6', '2021-07-03', 1),
(405, 83, '0', 22, '40', '39', '858', '880', '1', '22', '2021-07-03', 1),
(406, 92, '0', 10, '11', '12', '122.4', '112.2', '-1', '-10.2', '2021-07-03', 1),
(407, 94, '0', 214, '8', '7.36', '1575.04', '1712', '0.64', '136.96', '2021-07-03', 1),
(408, 96, '140 gram', 30, '23', '20.85', '625.5', '690', '2.15', '64.5', '2021-07-03', 1),
(409, 97, '0', 6, '48', '46.25', '277.5', '288', '1.75', '10.5', '2021-07-03', 1),
(410, 98, '0', 576, '4', '3.91', '2252.16', '2304', '0.09', '51.84', '2021-07-03', 1),
(411, 100, '0', 394, '4', '3.75', '1477.5', '1576', '0.25', '98.5', '2021-07-03', 1),
(412, 101, '0', 350, '7', '6.84', '2394', '2450', '0.16', '56', '2021-07-03', 1),
(413, 103, '0', 24, '15', '14', '336', '360', '1', '24', '2021-07-03', 1),
(414, 105, '0', 26, '42', '39', '1014', '1092', '3', '78', '2021-07-03', 1),
(415, 107, '20 gram', 1, '42', '39', '39', '42', '3', '3', '2021-07-03', 1),
(416, 120, '0', 48, '8', '7.57', '363.36', '384', '0.43', '20.64', '2021-07-03', 1),
(417, 123, '0', 2, '160', '150', '300', '320', '10', '20', '2021-07-03', 1),
(418, 126, '0', 2, '215', '200', '400', '430', '15', '30', '2021-07-03', 1),
(419, 101, '0', 20, '7', '6.84', '136.8', '140', '0.16', '3.2', '2021-07-03', 1),
(420, 100, '0', 40, '4', '3.75', '150', '160', '0.25', '10', '2021-07-03', 1),
(421, 98, '0', 72, '4', '3.91', '281.52', '288', '0.09', '6.48', '2021-07-03', 1),
(422, 105, '0', 6, '42', '39', '234', '252', '3', '18', '2021-07-03', 1),
(423, 126, '0', 1, '220', '200', '200', '220', '20', '20', '2021-07-03', 1),
(424, 123, '0', 1, '150', '150', '150', '150', '0', '0', '2021-07-03', 1),
(425, 94, '0', 36, '8', '7.36', '264.96', '288', '0.64', '23.04', '2021-07-03', 1),
(426, 82, '50 gram', 36, '22', '19.55', '703.8', '792', '2.45', '88.2', '2021-07-07', 1),
(427, 86, '50 gram', 12, '16', '13.50', '162', '192', '2.5', '30', '2021-07-07', 1),
(428, 88, '50 gram', 11, '17', '17.30', '190.3', '187', '-0.3', '-3.3', '2021-07-07', 1),
(429, 89, '50 gram', 12, '17', '17.30', '207.6', '204', '-0.3', '-3.6', '2021-07-07', 1),
(430, 90, '20 gram', 12, '13.50', '14', '168', '162', '-0.5', '-6', '2021-07-07', 1),
(431, 92, '20 gram', 228, '12', '11.20', '2553.6', '2736', '0.8', '182.4', '2021-07-07', 1),
(432, 93, '30 gram', 20, '6.75', '6.11', '122.2', '135', '0.64', '12.8', '2021-07-07', 1),
(433, 96, '140 gram', 21, '23', '23.60', '495.6', '483', '-0.6', '-12.6', '2021-07-07', 1),
(434, 100, '20 gram', 396, '4', '3.75', '1485', '1584', '0.25', '99', '2021-07-07', 1),
(435, 101, '22 gram', 710, '7.1', '6.83', '4849.3', '5041', '0.27', '191.7', '2021-07-07', 1),
(436, 104, '200 gram', 12, '26', '24.70', '296.4', '312', '1.3', '15.6', '2021-07-07', 1),
(437, 105, '20 gram', 56, '42', '39', '2184', '2352', '3', '168', '2021-07-07', 1),
(438, 107, '20 gram', 3, '42', '39', '117', '126', '3', '9', '2021-07-07', 1),
(439, 120, '40 gram', 48, '8', '7.57', '363.36', '384', '0.43', '20.64', '2021-07-07', 1),
(440, 123, '2.5 gram', 2, '160', '150', '300', '320', '10', '20', '2021-07-07', 1),
(441, 126, '4 gram', 2, '220', '200', '400', '440', '20', '40', '2021-07-07', 1),
(442, 94, '40 gram', 36, '8', '7.36', '264.96', '288', '0.64', '23.04', '2021-07-05', 1),
(443, 95, '85 gram', 24, '15.50', '14.15', '339.6', '372', '1.35', '32.4', '2021-07-05', 1),
(444, 96, '140 gram', 6, '23', '23.85', '143.1', '138', '-0.85', '-5.1', '2021-07-05', 1),
(445, 98, '20 gram', 612, '4', '3.91', '2392.92', '2448', '0.09', '55.08', '2021-07-05', 1),
(446, 100, '20 gram', 144, '4', '3.75', '540', '576', '0.25', '36', '2021-07-05', 1),
(447, 101, '22 gram', 520, '7', '6.84', '3556.8', '3640', '0.16', '83.2', '2021-07-05', 1),
(448, 105, '20 gram', 44, '42', '39', '1716', '1848', '3', '132', '2021-07-05', 1),
(449, 107, '20 gram', 9, '42', '39', '351', '378', '3', '27', '2021-07-05', 1),
(450, 111, '10 gram', 6, '21', '21', '126', '126', '0', '0', '2021-07-05', 1),
(451, 126, '4 gram', 1, '220', '200', '200', '220', '20', '20', '2021-07-05', 1),
(452, 101, '22 gram', 1120, '7', '6.84', '7660.8', '7840', '0.16', '179.2', '2021-07-07', 1),
(453, 82, '50 gram', 11, '22', '19.55', '215.05', '242', '2.45', '26.95', '2021-07-07', 1),
(454, 86, '50 gram', 12, '16', '13.50', '162', '192', '2.5', '30', '2021-07-07', 1),
(455, 89, '50 gram', 12, '17', '17.30', '207.6', '204', '-0.3', '-3.6', '2021-07-07', 1),
(456, 96, '140 gram', 12, '23', '23.60', '283.2', '276', '-0.6', '-7.2', '2021-07-07', 1),
(457, 98, '20 gram', 288, '4', '3.91', '1126.08', '1152', '0.09', '25.92', '2021-07-07', 1),
(458, 100, '20 gram', 108, '4', '3.75', '405', '432', '0.25', '27', '2021-07-07', 1),
(459, 103, '150 gram', 8, '15', '14', '112', '120', '1', '8', '2021-07-07', 1),
(460, 105, '20 gram', 26, '42', '39', '1014', '1092', '3', '78', '2021-07-07', 1),
(461, 107, '20 gram', 3, '42', '39', '117', '126', '3', '9', '2021-07-07', 1),
(462, 114, '300 gram', 6, '40', '37', '222', '240', '3', '18', '2021-07-07', 1),
(463, 114, '300 gram', 6, '40', '37', '222', '240', '3', '18', '2021-07-07', 1),
(464, 121, '150 gram', 3, '50', '47', '141', '150', '3', '9', '2021-07-07', 1),
(466, 82, '50 gram', 36, '22', '19.55', '703.8', '792', '2.45', '88.2', '2021-07-10', 1),
(467, 89, '50 gram', 48, '17', '17.30', '830.4', '816', '-0.3', '-14.4', '2021-07-10', 1),
(468, 90, '20 gram', 72, '13.5', '14', '1008', '972', '-0.5', '-36', '2021-07-10', 1),
(469, 91, '20 gram', 12, '7.66', '7.48', '89.76', '91.92', '0.18', '2.16', '2021-07-10', 1),
(470, 92, '20 gram', 108, '12', '11.20', '1209.6', '1296', '0.8', '86.4', '2021-07-10', 1),
(471, 94, '40 gram', 612, '8', '7.36', '4504.32', '4896', '0.64', '391.68', '2021-07-10', 1),
(472, 96, '140 gram', 8, '23', '23.60', '188.8', '184', '-0.6', '-4.8', '2021-07-10', 1),
(473, 98, '20 gram', 360, '4', '3.91', '1407.6', '1440', '0.09', '32.4', '2021-07-10', 1),
(474, 100, '20 gram', 432, '4', '3.75', '1620', '1728', '0.25', '108', '2021-07-10', 1),
(475, 101, '22 gram', 780, '7', '6.84', '5335.2', '5460', '0.16', '124.8', '2021-07-10', 1),
(476, 105, '20 gram', 62, '42', '39', '2418', '2604', '3', '186', '2021-07-10', 1),
(477, 107, '20 gram', 15, '42', '39', '585', '630', '3', '45', '2021-07-10', 1),
(478, 114, '300 gram', 12, '40', '37', '444', '480', '3', '36', '2021-07-10', 1),
(479, 78, '50 gram', 18, '20', '22.13', '398.34', '360', '-2.13', '-38.34', '2021-07-10', 1),
(482, 83, '100 gram', 36, '41.25', '42.54', '1531.44', '1485', '-1.29', '-46.44', '2021-07-10', 1),
(484, 89, '50 gram', 24, '17', '17.30', '415.2', '408', '-0.3', '-7.2', '2021-07-10', 1),
(485, 90, '20 gram', 12, '13.50', '14', '168', '162', '-0.5', '-6', '2021-07-10', 1),
(486, 92, '20 gram', 12, '11', '11.20', '134.4', '132', '-0.2', '-2.4', '2021-07-10', 1),
(487, 78, '50 gram', 36, '20', '22.13', '796.68', '720', '-2.13', '-76.68', '2021-07-10', 1),
(488, 79, '100 gram', 12, '40', '35.52', '426.24', '480', '4.48', '53.76', '2021-07-10', 1),
(489, 82, '50 gram', 12, '23', '23.40', '280.8', '276', '-0.4', '-4.8', '2021-07-10', 1),
(490, 83, '100 gram', 36, '40', '42.54', '1531.44', '1440', '-2.54', '-91.44', '2021-07-10', 1),
(491, 86, '50 gram', 24, '16', '13.50', '324', '384', '2.5', '60', '2021-07-10', 1),
(492, 89, '50 gram', 24, '17', '17.3', '415.2', '408', '-0.3', '-7.2', '2021-07-10', 1),
(493, 94, '40 gram', 684, '8', '7.47', '5109.48', '5472', '0.53', '362.52', '2021-07-10', 1),
(494, 95, '85 gram', 1, '15.50', '14.15', '14.15', '15.5', '1.35', '1.35', '2021-07-10', 1),
(495, 98, '20 gram', 720, '4', '3.91', '2815.2', '2880', '0.09', '64.8', '2021-07-10', 1),
(496, 100, '20 gram', 180, '4', '3.75', '675', '720', '0.25', '45', '2021-07-10', 1),
(497, 101, '22 gram', 1020, '7', '6.84', '6976.8', '7140', '0.16', '163.2', '2021-07-10', 1),
(498, 105, '20 gram', 16, '42', '39', '624', '672', '3', '48', '2021-07-10', 1),
(499, 123, '2.5 gram', 1, '150', '150', '150', '150', '0', '0', '2021-07-10', 1),
(500, 126, '4 gram', 1, '220', '200', '200', '220', '20', '20', '2021-07-10', 1),
(501, 78, '50 gram', 12, '22.13', '21', '252', '265.56', '1.13', '13.56', '2021-07-12', 1),
(502, 81, '500 gram', 2, '170', '157.91', '315.82', '340', '12.09', '24.18', '2021-07-12', 1),
(503, 82, '50 gram', 24, '23', '23.40', '561.6', '552', '-0.4', '-9.6', '2021-07-12', 1),
(504, 85, '500 gram', 2, '200', '192.7', '385.4', '400', '7.3', '14.6', '2021-07-12', 1),
(505, 90, '20 gram', 12, '13.50', '14', '168', '162', '-0.5', '-6', '2021-07-12', 1),
(506, 90, '20 gram', 24, '11.33', '13.50', '324', '271.92', '-2.17', '-52.08', '2021-07-12', 1),
(507, 92, '20 gram', 6, '11', '11.20', '67.2', '66', '-0.2', '-1.2', '2021-07-12', 1),
(508, 94, '40 gram', 648, '8', '7.47', '4840.56', '5184', '0.53', '343.44', '2021-07-12', 1),
(509, 95, '85 gram', 45, '15.50', '14.15', '636.75', '697.5', '1.35', '60.75', '2021-07-12', 1),
(510, 96, '140 gram', 7, '23', '23.60', '165.2', '161', '-0.6', '-4.2', '2021-07-12', 1),
(511, 98, '20 gram', 900, '4', '3.93', '3537', '3600', '0.07', '63', '2021-07-12', 1),
(512, 100, '20 gram', 684, '4', '3.74', '2558.16', '2736', '0.26', '177.84', '2021-07-12', 1),
(513, 101, '22 gram', 960, '7', '6.83', '6556.8', '6720', '0.17', '163.2', '2021-07-12', 1),
(514, 103, '150 gram', 4, '15', '14', '56', '60', '1', '4', '2021-07-12', 1),
(515, 104, '200 gram', 24, '26', '25.2', '604.8', '624', '0.8', '19.2', '2021-07-12', 1),
(516, 105, '20 gram', 33, '42', '39', '1287', '1386', '3', '99', '2021-07-12', 1),
(517, 94, '40 gram', 36, '8', '7.47', '268.92', '288', '0.53', '19.08', '2021-07-12', 1),
(518, 105, '20 gram', 24, '42', '39', '936', '1008', '3', '72', '2021-07-12', 1),
(519, 79, '100 gram', 12, '40', '35.52', '426.24', '480', '4.48', '53.76', '2021-07-13', 1),
(520, 82, '50 gram', 12, '23', '23.40', '280.8', '276', '-0.4', '-4.8', '2021-07-13', 1),
(521, 83, '100 gram', 9, '42', '42.54', '382.86', '378', '-0.54', '-4.86', '2021-07-13', 1),
(522, 83, '100 gram', 12, '45', '42.54', '510.48', '540', '2.46', '29.52', '2021-07-13', 1),
(523, 86, '50 gram', 24, '16', '13.50', '324', '384', '2.5', '60', '2021-07-13', 1),
(524, 88, '50 gram', 12, '18', '17.30', '207.6', '216', '0.7', '8.4', '2021-07-13', 1),
(525, 90, '20 gram', 24, '13.75', '14', '336', '330', '-0.25', '-6', '2021-07-13', 1),
(526, 90, '20 gram', 132, '14', '14', '1848', '1848', '0', '0', '2021-07-13', 1),
(527, 92, '20 gram', 144, '12', '11.20', '1612.8', '1728', '0.8', '115.2', '2021-07-13', 1),
(528, 94, '40 gram', 924, '8', '7.47', '6902.28', '7392', '0.53', '489.72', '2021-07-13', 1),
(529, 97, '300 gram', 6, '48', '46.25', '277.5', '288', '1.75', '10.5', '2021-07-13', 1),
(530, 96, '140 gram', 39, '23', '23.60', '920.4', '897', '-0.6', '-23.4', '2021-07-13', 1),
(531, 98, '20 gram', 684, '4', '3.93', '2688.12', '2736', '0.07', '47.88', '2021-07-13', 1),
(532, 101, '22 gram', 1520, '7', '6.83', '10381.6', '10640', '0.17', '258.4', '2021-07-13', 1),
(533, 103, '150 gram', 24, '15', '14', '336', '360', '1', '24', '2021-07-13', 1),
(534, 105, '20 gram', 48, '42', '39', '1872', '2016', '3', '144', '2021-07-13', 1),
(535, 114, '300 gram', 12, '40', '37.84', '454.08', '480', '2.16', '25.92', '2021-07-13', 1),
(536, 85, '500 gram', 2, '200', '192', '384', '400', '8', '16', '2021-07-14', 1),
(538, 78, '50 gram', 12, '22', '22.13', '265.56', '264', '-0.13', '-1.56', '2021-07-14', 1),
(539, 79, '100 gram', 12, '42', '35.52', '426.24', '504', '6.48', '77.76', '2021-07-14', 1),
(540, 82, '50 gram', 72, '23', '23.40', '1684.8', '1656', '-0.4', '-28.8', '2021-07-14', 1),
(541, 83, '100 gram', 24, '43', '42.54', '1020.96', '1032', '0.46', '11.04', '2021-07-14', 1),
(542, 89, '50 gram', 12, '18', '17.30', '207.6', '216', '0.7', '8.4', '2021-07-14', 1),
(543, 90, '20 gram', 12, '14', '14', '168', '168', '0', '0', '2021-07-14', 1),
(544, 92, '20 gram', 12, '12', '11.20', '134.4', '144', '0.8', '9.6', '2021-07-14', 1),
(545, 94, '40 gram', 1368, '8', '7.47', '10218.96', '10944', '0.53', '725.04', '2021-07-14', 1),
(546, 96, '140 gram', 18, '23', '23.60', '424.8', '414', '-0.6', '-10.8', '2021-07-14', 1),
(547, 98, '20 gram', 540, '4', '3.93', '2122.2', '2160', '0.07', '37.8', '2021-07-14', 1),
(548, 100, '20 gram', 360, '4', '3.75', '1350', '1440', '0.25', '90', '2021-07-14', 1),
(549, 101, '22 gram', 3100, '7', '6.84', '21204', '21700', '0.16', '496', '2021-07-14', 1),
(550, 103, '150 gram', 2, '15', '14', '28', '30', '1', '2', '2021-07-14', 1),
(551, 104, '200 gram', 72, '26', '25.2', '1814.4', '1872', '0.8', '57.6', '2021-07-14', 1),
(552, 105, '20 gram', 15, '42', '39', '585', '630', '3', '45', '2021-07-14', 1),
(553, 107, '20 gram', 3, '42', '39', '117', '126', '3', '9', '2021-07-14', 1),
(554, 109, '500 gram', 1, '100', '92', '92', '100', '8', '8', '2021-07-14', 1),
(555, 110, '500 gram', 1, '100', '92', '92', '100', '8', '8', '2021-07-14', 1),
(556, 111, '10 gram', 5, '22', '21', '105', '110', '1', '5', '2021-07-14', 1),
(557, 111, '10 gram', 5, '22', '21', '105', '110', '1', '5', '2021-07-14', 1),
(558, 114, '300 gram', 30, '40', '37.84', '1135.2', '1200', '2.16', '64.8', '2021-07-14', 1),
(559, 86, '50 gram', 12, '16', '13.50', '162', '192', '2.5', '30', '2021-07-15', 1),
(560, 90, '20 gram', 96, '14', '14', '1344', '1344', '0', '0', '2021-07-15', 1),
(561, 92, '20 gram', 168, '12', '11.20', '1881.6', '2016', '0.8', '134.4', '2021-07-15', 1),
(562, 94, '40 gram', 36, '7.94', '7.47', '268.92', '285.84', '0.47', '16.92', '2021-07-15', 1),
(563, 94, '40 gram', 540, '8', '7.47', '4033.8', '4320', '0.53', '286.2', '2021-07-15', 1),
(564, 96, '140 gram', 15, '23', '23.60', '354', '345', '-0.6', '-9', '2021-07-15', 1),
(566, 98, '20 gram', 828, '4', '3.93', '3254.04', '3312', '0.07', '57.96', '2021-07-15', 1),
(567, 100, '20 gram', 504, '4', '3.75', '1890', '2016', '0.25', '126', '2021-07-15', 1),
(568, 101, '22 gram', 840, '7', '6.84', '5745.6', '5880', '0.16', '134.4', '2021-07-15', 1),
(569, 102, '200 gram', 24, '28', '25.9', '621.6', '672', '2.1', '50.4', '2021-07-15', 1),
(570, 103, '150 gram', 48, '15', '14', '672', '720', '1', '48', '2021-07-15', 1),
(571, 104, '200 gram', 12, '26', '25.2', '302.4', '312', '0.8', '9.6', '2021-07-15', 1),
(572, 105, '20 gram', 39, '42', '39', '1521', '1638', '3', '117', '2021-07-15', 1),
(573, 107, '20 gram', 7, '42', '39', '273', '294', '3', '21', '2021-07-15', 1),
(574, 109, '500 gram', 2, '100', '92', '184', '200', '8', '16', '2021-07-15', 1),
(575, 110, '500 gram', 2, '100', '92', '184', '200', '8', '16', '2021-07-15', 1),
(576, 114, '300 gram', 6, '40', '37.84', '227.04', '240', '2.16', '12.96', '2021-07-15', 1),
(577, 126, '4 gram', 2, '220', '200', '400', '440', '20', '40', '2021-07-15', 1),
(578, 101, '22 gram', 80, '7', '6.87', '549.6', '560', '0.13', '10.4', '2021-07-14', 1),
(579, 104, '200 gram', 6, '26', '25.2', '151.2', '156', '0.8', '4.8', '2021-07-14', 1),
(580, 90, '20 gram', 12, '14', '14', '168', '168', '0', '0', '2021-07-16', 1),
(581, 90, '20 gram', 12, '13.75', '14', '168', '165', '-0.25', '-3', '2021-07-16', 1),
(582, 92, '20 gram', 12, '12', '11.20', '134.4', '144', '0.8', '9.6', '2021-07-16', 1),
(583, 94, '40 gram', 576, '8', '7.47', '4302.72', '4608', '0.53', '305.28', '2021-07-16', 1),
(584, 96, '140 gram', 21, '23', '23.60', '495.6', '483', '-0.6', '-12.6', '2021-07-16', 1),
(585, 98, '20 gram', 288, '4', '3.93', '1131.84', '1152', '0.07', '20.16', '2021-07-16', 1),
(586, 100, '20 gram', 108, '4', '3.75', '405', '432', '0.25', '27', '2021-07-16', 1),
(587, 101, '22 gram', 1260, '7', '6.84', '8618.4', '8820', '0.16', '201.6', '2021-07-16', 1),
(588, 102, '200 gram', 52, '28', '25.9', '1346.8', '1456', '2.1', '109.2', '2021-07-16', 1),
(589, 103, '150 gram', 12, '15', '14', '168', '180', '1', '12', '2021-07-16', 1),
(590, 104, '200 gram', 18, '26', '25.2', '453.6', '468', '0.8', '14.4', '2021-07-16', 1),
(591, 105, '20 gram', 21, '42', '39', '819', '882', '3', '63', '2021-07-16', 1),
(592, 107, '20 gram', 6, '42', '39', '234', '252', '3', '18', '2021-07-16', 1),
(593, 109, '500 gram', 3, '100', '92', '276', '300', '8', '24', '2021-07-16', 1),
(594, 110, '500 gram', 3, '100', '92', '276', '300', '8', '24', '2021-07-16', 1),
(595, 114, '300 gram', 12, '40', '37.84', '454.08', '480', '2.16', '25.92', '2021-07-16', 1),
(596, 123, '2.5 gram', 2, '160', '150', '300', '320', '10', '20', '2021-07-16', 1),
(597, 126, '4 gram', 1, '220', '200', '200', '220', '20', '20', '2021-07-16', 1),
(598, 78, '50 gram', 12, '22', '22.13', '265.56', '264', '-0.13', '-1.56', '2021-07-17', 1),
(599, 79, '100 gram', 12, '42', '35.52', '426.24', '504', '6.48', '77.76', '2021-07-17', 1),
(600, 81, '500 gram', 2, '170', '157.91', '315.82', '340', '12.09', '24.18', '2021-07-17', 1),
(601, 82, '50 gram', 36, '23', '23.40', '842.4', '828', '-0.4', '-14.4', '2021-07-17', 1),
(602, 83, '100 gram', 12, '43', '42.54', '510.48', '516', '0.46', '5.52', '2021-07-17', 1),
(603, 90, '20 gram', 60, '14', '14', '840', '840', '0', '0', '2021-07-17', 1),
(604, 92, '20 gram', 48, '12', '11.20', '537.6', '576', '0.8', '38.4', '2021-07-17', 1),
(605, 94, '40 gram', 444, '8', '7.47', '3316.68', '3552', '0.53', '235.32', '2021-07-17', 1),
(606, 96, '140 gram', 6, '24', '23.60', '141.6', '144', '0.4', '2.4', '2021-07-17', 1),
(607, 98, '20 gram', 648, '4', '3.93', '2546.64', '2592', '0.07', '45.36', '2021-07-17', 1),
(608, 101, '22 gram', 320, '7', '6.84', '2188.8', '2240', '0.16', '51.2', '2021-07-17', 1),
(609, 102, '200 gram', 36, '28', '25.9', '932.4', '1008', '2.1', '75.6', '2021-07-17', 1),
(610, 103, '150 gram', 48, '15', '14', '672', '720', '1', '48', '2021-07-17', 1),
(611, 105, '20 gram', 42, '41', '29', '1218', '1722', '12', '504', '2021-07-17', 1),
(612, 107, '20 gram', 3, '42', '39', '117', '126', '3', '9', '2021-07-17', 1),
(613, 119, '40 gram', 1, '150', '135', '135', '150', '15', '15', '2021-07-17', 1),
(614, 110, '500 gram', 6, '100', '92', '552', '600', '8', '48', '2021-07-17', 1),
(615, 123, '2.5 gram', 2, '160', '150', '300', '320', '10', '20', '2021-07-17', 1),
(616, 101, '22 gram', 17, '7.20', '6.87', '116.79', '122.4', '0.33', '5.61', '2021-07-17', 1),
(617, 101, '22 gram', 800, '7', '6.87', '5496', '5600', '0.13', '104', '2021-07-18', 1),
(618, 78, '50 gram', 12, '22', '22.13', '265.56', '264', '-0.13', '-1.56', '2021-07-18', 1),
(619, 90, '20 gram', 12, '14', '14', '168', '168', '0', '0', '2021-07-18', 1),
(620, 94, '40 gram', 180, '8', '7.47', '1344.6', '1440', '0.53', '95.4', '2021-07-18', 1),
(621, 96, '140 gram', 21, '23', '23.60', '495.6', '483', '-0.6', '-12.6', '2021-07-18', 1),
(622, 97, '300 gram', 6, '48', '47.85', '287.1', '288', '0.15', '0.89999999999999', '2021-07-18', 1),
(623, 98, '0', 180, '4', '3.93', '707.4', '720', '0.07', '12.6', '2021-07-18', 1),
(624, 94, '40 gram', 216, '8', '7.47', '1613.52', '1728', '0.53', '114.48', '2021-07-18', 1),
(625, 100, '20 gram', 72, '4', '3.75', '270', '288', '0.25', '18', '2021-07-18', 1),
(626, 101, '22 gram', 1240, '7', '6.87', '8518.8', '8680', '0.13', '161.2', '2021-07-18', 1),
(627, 102, '200 gram', 30, '28', '25.9', '777', '840', '2.1', '63', '2021-07-18', 1),
(628, 105, '20 gram', 70, '41', '39', '2730', '2870', '2', '140', '2021-07-18', 1),
(629, 107, '20 gram', 1, '42', '39', '39', '42', '3', '3', '2021-07-18', 1),
(630, 114, '300 gram', 12, '40', '37.84', '454.08', '480', '2.16', '25.92', '2021-07-18', 1),
(631, 121, '150 gram', 3, '50', '47', '141', '150', '3', '9', '2021-07-18', 1),
(632, 80, '200 gram', 12, '80', '72.85', '874.2', '960', '7.15', '85.8', '2021-07-19', 1),
(633, 90, '20 gram', 36, '14', '14', '504', '504', '0', '0', '2021-07-19', 1),
(634, 90, '20 gram', 144, '14.86', '14', '2016', '2139.84', '0.86', '123.84', '2021-07-19', 1),
(635, 92, '20 gram', 36, '11.25', '11.20', '403.2', '405', '0.050000000000001', '1.8', '2021-07-19', 1),
(636, 94, '40 gram', 324, '8', '7.47', '2420.28', '2592', '0.53', '171.72', '2021-07-19', 1),
(637, 94, '40 gram', 144, '7.77', '7.47', '1075.68', '1118.88', '0.3', '43.2', '2021-07-19', 1),
(638, 94, '40 gram', 216, '7.77', '7.47', '1613.52', '1678.32', '0.3', '64.8', '2021-07-19', 1),
(639, 94, '40 gram', 72, '7.91', '7.47', '537.84', '569.52', '0.44', '31.68', '2021-07-19', 1),
(640, 96, '140 gram', 30, '23', '23.60', '708', '690', '-0.6', '-18', '2021-07-19', 1),
(641, 98, '20 gram', 432, '4', '3.93', '1697.76', '1728', '0.07', '30.24', '2021-07-19', 1),
(642, 98, '20 gram', 180, '3.91', '3.93', '707.4', '703.8', '-0.02', '-3.6', '2021-07-19', 1),
(643, 100, '20 gram', 108, '4', '3.75', '405', '432', '0.25', '27', '2021-07-19', 1),
(644, 101, '22 gram', 1040, '7', '6.84', '7113.6', '7280', '0.16', '166.4', '2021-07-19', 1),
(645, 101, '22 gram', 40, '7', '6.84', '273.6', '280', '0.16', '6.4', '2021-07-19', 1),
(646, 104, '200 gram', 24, '26', '25.2', '604.8', '624', '0.8', '19.2', '2021-07-19', 1),
(647, 105, '20 gram', 6, '42', '39', '234', '252', '3', '18', '2021-07-19', 1),
(648, 105, '20 gram', 54, '38.88', '39', '2106', '2099.52', '-0.12', '-6.4799999999999', '2021-07-19', 1),
(649, 105, '20 gram', 6, '41.66', '39', '234', '249.96', '2.66', '15.96', '2021-07-19', 1),
(650, 107, '20 gram', 1, '38.88', '39', '39', '38.88', '-0.12', '-0.12', '2021-07-19', 1),
(651, 107, '20 gram', 3, '42', '39', '117', '126', '3', '9', '2021-07-19', 1),
(652, 114, '300 gram', 12, '40', '37.84', '454.08', '480', '2.16', '25.92', '2021-07-19', 1),
(653, 123, '2.5 gram', 3, '160', '150', '450', '480', '10', '30', '2021-07-19', 1),
(654, 126, '4 gram', 1, '210', '214.5', '214.5', '210', '-4.5', '-4.5', '2021-07-19', 1),
(655, 82, '50 gram', 12, '23', '23.40', '280.8', '276', '-0.4', '-4.8', '2021-07-20', 1),
(656, 83, '100 gram', 12, '42', '42.54', '510.48', '504', '-0.54', '-6.48', '2021-07-20', 1),
(657, 89, '50 gram', 22, '18', '17.30', '380.6', '396', '0.7', '15.4', '2021-07-20', 1),
(658, 90, '20 gram', 48, '14', '14', '672', '672', '0', '0', '2021-07-20', 1),
(659, 94, '40 gram', 432, '7.99', '7.47', '3227.04', '3451.68', '0.52', '224.64', '2021-07-20', 1),
(660, 94, '40 gram', 648, '7.87', '7.47', '4840.56', '5099.76', '0.4', '259.2', '2021-07-20', 1),
(661, 96, '140 gram', 6, '23', '23.60', '141.6', '138', '-0.6', '-3.6', '2021-07-20', 1),
(662, 98, '20 gram', 684, '4', '3.93', '2688.12', '2736', '0.07', '47.88', '2021-07-20', 1),
(663, 100, '20 gram', 72, '4', '3.75', '270', '288', '0.25', '18', '2021-07-20', 1),
(664, 101, '22 gram', 1080, '7', '6.84', '7387.2', '7560', '0.16', '172.8', '2021-07-20', 1),
(665, 104, '200 gram', 24, '26', '25.20', '604.8', '624', '0.8', '19.2', '2021-07-20', 1),
(666, 105, '20 gram', 64, '41', '39', '2496', '2624', '2', '128', '2021-07-20', 1),
(667, 107, '20 gram', 5, '42', '39', '195', '210', '3', '15', '2021-07-20', 1),
(668, 109, '500 gram', 5, '100', '92', '460', '500', '8', '40', '2021-07-20', 1),
(669, 110, '500 gram', 2, '100', '92', '184', '200', '8', '16', '2021-07-20', 1),
(670, 135, '20 gram', 1, '240', '219', '219', '240', '21', '21', '2021-07-20', 1),
(671, 114, '300 gram', 21, '40', '37.84', '794.64', '840', '2.16', '45.36', '2021-07-20', 1),
(673, 100, '20 gram', 466, '4', '3.75', '1747.5', '1864', '0.25', '116.5', '2021-07-21', 1),
(674, 104, '200 gram', 24, '26', '25.2', '604.8', '624', '0.8', '19.2', '2021-07-21', 1),
(675, 102, '200 gram', 3, '28', '26', '78', '84', '2', '6', '2021-07-21', 1),
(676, 119, '40 gram', 1, '170', '140', '140', '170', '30', '30', '2021-07-22', 1),
(677, 90, '20 gram', 12, '14', '14', '168', '168', '0', '0', '2021-07-26', 1),
(678, 94, '40 gram', 432, '8', '7.47', '3227.04', '3456', '0.53', '228.96', '2021-07-26', 1),
(679, 96, '140 gram', 21, '24', '23.60', '495.6', '504', '0.4', '8.4', '2021-07-26', 1),
(680, 97, '300 gram', 10, '48', '47.85', '478.5', '480', '0.15', '1.5', '2021-07-26', 1),
(681, 98, '20 gram', 252, '4', '3.93', '990.36', '1008', '0.07', '17.64', '2021-07-26', 1),
(682, 100, '20 gram', 252, '4', '3.75', '945', '1008', '0.25', '63', '2021-07-26', 1),
(683, 101, '22 gram', 680, '7', '6.84', '4651.2', '4760', '0.16', '108.8', '2021-07-26', 1),
(684, 105, '20 gram', 87, '40', '39', '3393', '3480', '1', '87', '2021-07-26', 1),
(685, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-07-26', 1),
(686, 126, '4 gram', 1, '220', '214.5', '214.5', '220', '5.5', '5.5', '2021-07-26', 1),
(687, 90, '20 gram', 12, '14', '14', '168', '168', '0', '0', '2021-07-27', 1),
(688, 92, '20 gram', 12, '12', '11.20', '134.4', '144', '0.8', '9.6', '2021-07-27', 1),
(689, 94, '40 gram', 216, '7.77', '7.47', '1613.52', '1678.32', '0.3', '64.8', '2021-07-27', 1),
(690, 94, '40 gram', 144, '8', '7.47', '1075.68', '1152', '0.53', '76.32', '2021-07-27', 1),
(691, 96, '140 gram', 21, '24', '23.60', '495.6', '504', '0.4', '8.4', '2021-07-27', 1),
(692, 98, '20 gram', 288, '4', '3.93', '1131.84', '1152', '0.07', '20.16', '2021-07-27', 1),
(693, 100, '20 gram', 72, '4', '3.75', '270', '288', '0.25', '18', '2021-07-27', 1),
(694, 101, '22 gram', 480, '7', '6.84', '3283.2', '3360', '0.16', '76.8', '2021-07-27', 1),
(695, 102, '200 gram', 12, '28', '26', '312', '336', '2', '24', '2021-07-27', 1),
(696, 103, '150 gram', 24, '15', '14', '336', '360', '1', '24', '2021-07-27', 1),
(697, 104, '200 gram', 24, '26', '25.2', '604.8', '624', '0.8', '19.2', '2021-07-27', 1),
(698, 105, '20 gram', 9, '42', '39', '351', '378', '3', '27', '2021-07-27', 1),
(699, 126, '4 gram', 1, '220', '214.5', '214.5', '220', '5.5', '5.5', '2021-07-27', 1),
(700, 78, '50 gram', 12, '22', '22.13', '265.56', '264', '-0.13', '-1.56', '2021-07-25', 1),
(701, 79, '100 gram', 12, '41', '35.52', '426.24', '492', '5.48', '65.76', '2021-07-25', 1),
(702, 82, '50 gram', 36, '23', '23.40', '842.4', '828', '-0.4', '-14.4', '2021-07-25', 1),
(703, 135, '20 gram', 1, '240', '219', '219', '240', '21', '21', '2021-07-25', 1),
(704, 86, '50 gram', 36, '18', '17.48', '629.28', '648', '0.52', '18.72', '2021-07-25', 1),
(705, 89, '50 gram', 12, '18', '17.30', '207.6', '216', '0.7', '8.4', '2021-07-25', 1),
(706, 90, '20 gram', 48, '14', '14', '672', '672', '0', '0', '2021-07-25', 1),
(707, 92, '20 gram', 24, '12', '11.20', '268.8', '288', '0.8', '19.2', '2021-07-25', 1),
(708, 94, '40 gram', 324, '7.94', '7.47', '2420.28', '2572.56', '0.47', '152.28', '2021-07-25', 1),
(709, 96, '140 gram', 54, '23', '23.60', '1274.4', '1242', '-0.6', '-32.4', '2021-07-25', 1),
(710, 97, '300 gram', 25, '48', '47.85', '1196.25', '1200', '0.15', '3.75', '2021-07-25', 1),
(711, 98, '20 gram', 396, '4', '3.93', '1556.28', '1584', '0.07', '27.72', '2021-07-25', 1),
(712, 101, '22 gram', 1860, '7', '6.84', '12722.4', '13020', '0.16', '297.6', '2021-07-25', 1),
(713, 102, '200 gram', 90, '28', '26', '2340', '2520', '2', '180', '2021-07-25', 1),
(714, 105, '20 gram', 13, '41.6', '39', '507', '540.8', '2.6', '33.8', '2021-07-25', 1),
(715, 111, '10 gram', 12, '22', '21', '252', '264', '1', '12', '2021-07-25', 1),
(716, 80, '200 gram', 6, '80', '72.85', '437.1', '480', '7.15', '42.9', '2021-07-28', 1),
(717, 86, '50 gram', 12, '18', '17.48', '209.76', '216', '0.52', '6.24', '2021-07-28', 1),
(718, 89, '50 gram', 60, '18', '17.30', '1038', '1080', '0.7', '42', '2021-07-28', 1),
(719, 90, '20 gram', 144, '15', '14', '2016', '2160', '1', '144', '2021-07-28', 1),
(720, 94, '40 gram', 684, '7.77', '7.47', '5109.48', '5314.68', '0.3', '205.2', '2021-07-28', 1),
(721, 96, '140 gram', 39, '23.90', '23.60', '920.4', '932.1', '0.3', '11.7', '2021-07-28', 1),
(722, 97, '300 gram', 14, '50', '47.85', '669.9', '700', '2.15', '30.1', '2021-07-28', 1),
(723, 98, '20 gram', 864, '4', '3.93', '3395.52', '3456', '0.07', '60.48', '2021-07-28', 1),
(724, 100, '20 gram', 936, '3.99', '3.75', '3510', '3734.64', '0.24', '224.64', '2021-07-28', 1),
(725, 101, '22 gram', 640, '7', '6.84', '4377.6', '4480', '0.16', '102.4', '2021-07-28', 1),
(726, 102, '200 gram', 132, '28', '26', '3432', '3696', '2', '264', '2021-07-28', 1),
(727, 104, '200 gram', 24, '26', '25.2', '604.8', '624', '0.8', '19.2', '2021-07-28', 1),
(728, 105, '20 gram', 103, '41', '39', '4017', '4223', '2', '206', '2021-07-28', 1),
(729, 136, '20 gram', 2, '42', '39', '78', '84', '3', '6', '2021-07-28', 1),
(730, 121, '150 gram', 3, '50', '47', '141', '150', '3', '9', '2021-07-28', 1),
(731, 126, '4 gram', 1, '220', '214.5', '214.5', '220', '5.5', '5.5', '2021-07-28', 1),
(732, 135, '20 gram', 5, '235', '219', '1095', '1175', '16', '80', '2021-07-28', 1),
(733, 96, '140 gram', 15, '24', '23.60', '354', '360', '0.4', '6', '2021-07-29', 1),
(734, 82, '50 gram', 12, '23', '23.40', '280.8', '276', '-0.4', '-4.8', '2021-07-29', 1),
(735, 94, '40 gram', 180, '7.92', '7.47', '1344.6', '1425.6', '0.45', '81', '2021-07-29', 1),
(736, 82, '50 gram', 12, '23', '23.40', '280.8', '276', '-0.4', '-4.8', '2021-07-29', 1),
(737, 89, '50 gram', 12, '18', '17.30', '207.6', '216', '0.7', '8.4', '2021-07-29', 1),
(738, 135, '20 gram', 3, '235', '219', '657', '705', '16', '48', '2021-07-29', 1),
(739, 98, '20 gram', 36, '4', '3.93', '141.48', '144', '0.07', '2.52', '2021-07-29', 1),
(740, 110, '500 gram', 1, '100', '92', '92', '100', '8', '8', '2021-07-29', 1),
(741, 109, '500 gram', 1, '100', '92', '92', '100', '8', '8', '2021-07-29', 1),
(742, 135, '20 gram', 1, '240', '219', '219', '240', '21', '21', '2021-07-29', 1),
(743, 104, '200 gram', 16, '28', '25.2', '403.2', '448', '2.8', '44.8', '2021-07-29', 1),
(744, 82, '50 gram', 12, '23', '23.40', '280.8', '276', '-0.4', '-4.8', '2021-07-31', 1),
(745, 92, '20 gram', 12, '12', '11.20', '134.4', '144', '0.8', '9.6', '2021-07-31', 1),
(746, 94, '40 gram', 504, '8', '7.47', '3764.88', '4032', '0.53', '267.12', '2021-07-31', 1),
(747, 96, '140 gram', 15, '24', '23.60', '354', '360', '0.4', '6', '2021-07-31', 1),
(748, 98, '20 gram', 396, '4', '3.93', '1556.28', '1584', '0.07', '27.72', '2021-07-31', 1),
(749, 101, '22 gram', 840, '7', '6.84', '5745.6', '5880', '0.16', '134.4', '2021-07-31', 1),
(750, 105, '20 gram', 34, '42', '39', '1326', '1428', '3', '102', '2021-07-31', 1),
(751, 107, '20 gram', 12, '42', '39', '468', '504', '3', '36', '2021-07-31', 1),
(752, 136, '20 gram', 2, '42', '39', '78', '84', '3', '6', '2021-07-31', 1),
(753, 135, '20 gram', 4, '240', '219', '876', '960', '21', '84', '2021-07-31', 1),
(754, 118, '160 ml', 36, '7.50', '7.66', '275.76', '270', '-0.16', '-5.76', '2021-07-31', 1),
(755, 78, '50 gram', 12, '22', '22.13', '265.56', '264', '-0.13', '-1.56', '2021-08-01', 1),
(756, 83, '100 gram', 12, '41.66', '42.54', '510.48', '499.92', '-0.88', '-10.56', '2021-08-01', 1),
(757, 94, '40 gram', 1080, '7.90', '7.47', '8067.6', '8532', '0.43', '464.4', '2021-08-01', 1),
(758, 96, '140 gram', 27, '24', '23.60', '637.2', '648', '0.4', '10.8', '2021-08-01', 1),
(759, 97, '300 gram', 12, '50', '47.85', '574.2', '600', '2.15', '25.8', '2021-08-01', 1),
(760, 98, '20 gram', 180, '4', '3.93', '707.4', '720', '0.07', '12.6', '2021-08-01', 1),
(761, 100, '20 gram', 216, '4', '3.75', '810', '864', '0.25', '54', '2021-08-01', 1),
(762, 101, '22 gram', 1500, '7', '6.84', '10260', '10500', '0.16', '240', '2021-08-01', 1),
(763, 102, '200 gram', 84, '28', '26', '2184', '2352', '2', '168', '2021-08-01', 1),
(764, 105, '20 gram', 14, '41.8', '39', '546', '585.2', '2.8', '39.2', '2021-08-01', 1),
(765, 107, '20 gram', 4, '42', '39', '156', '168', '3', '12', '2021-08-01', 1),
(766, 118, '160 ml', 24, '7.66', '7.66', '183.84', '183.84', '0', '0', '2021-08-01', 1),
(767, 119, '40 gram', 1, '170', '150', '150', '170', '20', '20', '2021-08-01', 1),
(768, 123, '2.5 gram', 2, '160', '150', '300', '320', '10', '20', '2021-08-01', 1),
(769, 126, '4 gram', 1, '220', '214.5', '214.5', '220', '5.5', '5.5', '2021-08-01', 1),
(770, 135, '20 gram', 3, '240', '219', '657', '720', '21', '63', '2021-08-01', 1),
(771, 86, '50 gram', 12, '18', '17.48', '209.76', '216', '0.52', '6.24', '2021-08-02', 1),
(772, 89, '50 gram', 12, '18', '17.30', '207.6', '216', '0.7', '8.4', '2021-08-02', 1),
(773, 90, '20 gram', 72, '14', '14', '1008', '1008', '0', '0', '2021-08-02', 1),
(774, 92, '20 gram', 48, '12', '11.20', '537.6', '576', '0.8', '38.4', '2021-08-02', 1),
(775, 94, '40 gram', 468, '7.90', '7.47', '3495.96', '3697.2', '0.43', '201.24', '2021-08-02', 1),
(776, 96, '140 gram', 21, '23.90', '23.60', '495.6', '501.9', '0.3', '6.2999999999999', '2021-08-02', 1),
(777, 97, '300 gram', 12, '50', '47.85', '574.2', '600', '2.15', '25.8', '2021-08-02', 1),
(778, 98, '20 gram', 288, '4', '3.93', '1131.84', '1152', '0.07', '20.16', '2021-08-02', 1),
(779, 100, '20 gram', 108, '4', '3.75', '405', '432', '0.25', '27', '2021-08-02', 1),
(780, 101, '22 gram', 1940, '7', '6.84', '13269.6', '13580', '0.16', '310.4', '2021-08-02', 1),
(781, 102, '200 gram', 96, '27.5', '25.9', '2486.4', '2640', '1.6', '153.6', '2021-08-02', 1),
(782, 103, '150 gram', 24, '15', '14', '336', '360', '1', '24', '2021-08-02', 1),
(783, 105, '20 gram', 69, '41.2', '39', '2691', '2842.8', '2.2', '151.8', '2021-08-02', 1),
(784, 135, '20 gram', 2, '240', '219', '438', '480', '21', '42', '2021-08-02', 1),
(785, 118, '160 ml', 24, '8', '7.66', '183.84', '192', '0.34', '8.16', '2021-08-02', 1),
(786, 82, '50 gram', 24, '23', '23.40', '561.6', '552', '-0.4', '-9.6', '2021-08-03', 1),
(787, 89, '50 gram', 36, '18', '17.30', '622.8', '648', '0.7', '25.2', '2021-08-03', 1),
(788, 96, '140 gram', 6, '24', '23.60', '141.6', '144', '0.4', '2.4', '2021-08-03', 1),
(789, 97, '300 gram', 6, '50', '47.85', '287.1', '300', '2.15', '12.9', '2021-08-03', 1),
(790, 100, '20 gram', 144, '4', '3.74', '538.56', '576', '0.26', '37.44', '2021-08-03', 1),
(791, 101, '22 gram', 1040, '7', '6.84', '7113.6', '7280', '0.16', '166.4', '2021-08-03', 1),
(792, 102, '200 gram', 12, '28', '26', '312', '336', '2', '24', '2021-08-03', 1),
(793, 105, '20 gram', 57, '41.4', '39', '2223', '2359.8', '2.4', '136.8', '2021-08-03', 1),
(794, 107, '20 gram', 9, '42', '39', '351', '378', '3', '27', '2021-08-03', 1),
(795, 110, '500 gram', 3, '100', '92', '276', '300', '8', '24', '2021-08-03', 1),
(796, 135, '20 gram', 5, '240', '219', '1095', '1200', '21', '105', '2021-08-03', 1),
(797, 123, '2.5 gram', 1, '150', '150', '150', '150', '0', '0', '2021-08-03', 1),
(798, 114, '300 gram', 6, '40', '37.5', '225', '240', '2.5', '15', '2021-08-03', 1),
(799, 82, '50 gram', 36, '23', '23.40', '842.4', '828', '-0.4', '-14.4', '2021-08-04', 1),
(800, 86, '50 gram', 24, '18', '17.48', '419.52', '432', '0.52', '12.48', '2021-08-04', 1),
(801, 89, '50 gram', 36, '18', '17.30', '622.8', '648', '0.7', '25.2', '2021-08-04', 1),
(802, 90, '20 gram', 12, '14', '14', '168', '168', '0', '0', '2021-08-04', 1),
(803, 92, '20 gram', 12, '12', '11.20', '134.4', '144', '0.8', '9.6', '2021-08-04', 1),
(804, 94, '40 gram', 600, '7.96', '7.47', '4482', '4776', '0.49', '294', '2021-08-04', 1),
(805, 95, '85 gram', 30, '15.50', '15.10', '453', '465', '0.4', '12', '2021-08-04', 1),
(806, 96, '140 gram', 21, '24', '23.60', '495.6', '504', '0.4', '8.4', '2021-08-04', 1),
(807, 98, '20 gram', 216, '4', '3.93', '848.88', '864', '0.07', '15.12', '2021-08-04', 1),
(808, 100, '20 gram', 144, '4', '3.75', '540', '576', '0.25', '36', '2021-08-04', 1),
(809, 101, '22 gram', 580, '7', '6.84', '3967.2', '4060', '0.16', '92.8', '2021-08-04', 1),
(810, 102, '200 gram', 42, '28', '25.5', '1071', '1176', '2.5', '105', '2021-08-04', 1),
(811, 103, '150 gram', 30, '15', '14', '420', '450', '1', '30', '2021-08-04', 1),
(812, 105, '20 gram', 39, '42', '39', '1521', '1638', '3', '117', '2021-08-04', 1),
(813, 107, '20 gram', 6, '42', '39', '234', '252', '3', '18', '2021-08-04', 1),
(814, 136, '20 gram', 13, '42', '39', '507', '546', '3', '39', '2021-08-04', 1),
(815, 135, '20 gram', 10, '240', '219', '2190', '2400', '21', '210', '2021-08-04', 1),
(816, 114, '300 gram', 12, '40', '37.84', '454.08', '480', '2.16', '25.92', '2021-08-04', 1),
(817, 118, '160 ml', 24, '8', '7.66', '183.84', '192', '0.34', '8.16', '2021-08-04', 1),
(818, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-08-04', 1),
(819, 128, '7 gram', 48, '3.5', '3.21', '154.08', '168', '0.29', '13.92', '2021-08-04', 1),
(820, 94, '40 gram', 684, '7.90', '7.47', '5109.48', '5403.6', '0.43', '294.12', '2021-08-05', 1),
(821, 95, '85 gram', 60, '15.50', '15.10', '906', '930', '0.4', '24', '2021-08-05', 1),
(822, 96, '140 gram', 45, '24', '23.60', '1062', '1080', '0.4', '18', '2021-08-05', 1),
(823, 98, '20 gram', 216, '4', '3.93', '848.88', '864', '0.07', '15.12', '2021-08-05', 1),
(824, 100, '20 gram', 216, '4', '3.75', '810', '864', '0.25', '54', '2021-08-05', 1),
(825, 101, '22 gram', 580, '7', '6.84', '3967.2', '4060', '0.16', '92.8', '2021-08-05', 1),
(826, 102, '200 gram', 48, '28', '26', '1248', '1344', '2', '96', '2021-08-05', 1),
(827, 105, '20 gram', 30, '41', '39', '1170', '1230', '2', '60', '2021-08-05', 1),
(828, 107, '20 gram', 3, '41', '39', '117', '123', '2', '6', '2021-08-05', 1),
(829, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-08-05', 1),
(830, 126, '4 gram', 1, '220', '114.5', '114.5', '220', '105.5', '105.5', '2021-08-05', 1),
(831, 135, '20 gram', 1, '240', '219', '219', '240', '21', '21', '2021-08-05', 1),
(832, 78, '50 gram', 12, '23.33', '22.13', '265.56', '279.96', '1.2', '14.4', '2021-08-07', 1),
(833, 82, '50 gram', 24, '23', '23.40', '561.6', '552', '-0.4', '-9.6', '2021-08-07', 1),
(834, 89, '50 gram', 96, '17.91', '17.30', '1660.8', '1719.36', '0.61', '58.56', '2021-08-07', 1),
(835, 92, '20 gram', 12, '12', '11.20', '134.4', '144', '0.8', '9.6', '2021-08-07', 1),
(836, 94, '40 gram', 432, '8', '7.47', '3227.04', '3456', '0.53', '228.96', '2021-08-07', 1),
(837, 96, '140 gram', 41, '24', '23.60', '967.6', '984', '0.4', '16.4', '2021-08-07', 1),
(838, 97, '300 gram', 15, '50', '47.85', '717.75', '750', '2.15', '32.25', '2021-08-07', 1),
(839, 98, '20 gram', 252, '4', '3.93', '990.36', '1008', '0.07', '17.64', '2021-08-07', 1),
(840, 100, '20 gram', 396, '4', '3.75', '1485', '1584', '0.25', '99', '2021-08-07', 1),
(841, 101, '22 gram', 400, '7', '6.84', '2736', '2800', '0.16', '64', '2021-08-07', 1),
(842, 105, '20 gram', 41, '40', '39', '1599', '1640', '1', '41', '2021-08-07', 1),
(843, 107, '20 gram', 13, '40', '39', '507', '520', '1', '13', '2021-08-07', 1),
(844, 135, '20 gram', 2, '240', '219', '438', '480', '21', '42', '2021-08-07', 1),
(845, 114, '300 gram', 6, '40', '37.84', '227.04', '240', '2.16', '12.96', '2021-08-07', 1),
(846, 118, '160 ml', 6, '8', '7.66', '45.96', '48', '0.34', '2.04', '2021-08-07', 1),
(847, 126, '4 gram', 1, '220', '114.5', '114.5', '220', '105.5', '105.5', '2021-08-07', 1),
(848, 82, '50 gram', 24, '23', '23.40', '561.6', '552', '-0.4', '-9.6', '2021-08-8', 1),
(850, 88, '50 gram', 46, '18', '17.30', '795.8', '828', '0.7', '32.2', '2021-08-08', 1),
(851, 92, '20 gram', 36, '12', '11.20', '403.2', '432', '0.8', '28.8', '2021-08-08', 1),
(852, 94, '40 gram', 432, '7.92', '7.47', '3227.04', '3421.44', '0.45', '194.4', '2021-08-08', 1),
(853, 96, '140 gram', 38, '24', '23.60', '896.8', '912', '0.4', '15.2', '2021-08-08', 1),
(854, 98, '20 gram', 684, '4', '3.93', '2688.12', '2736', '0.07', '47.88', '2021-08-08', 1),
(855, 100, '20 gram', 72, '4', '3.75', '270', '288', '0.25', '18', '2021-08-08', 1),
(856, 101, '22 gram', 800, '7', '6.84', '5472', '5600', '0.16', '128', '2021-08-08', 1),
(857, 105, '20 gram', 15, '40', '39', '585', '600', '1', '15', '2021-08-08', 1),
(858, 107, '20 gram', 5, '41', '39', '195', '205', '2', '10', '2021-08-08', 1),
(859, 109, '500 gram', 4, '100', '92', '368', '400', '8', '32', '2021-08-08', 1),
(860, 111, '10 gram', 18, '22', '21', '378', '396', '1', '18', '2021-08-08', 1),
(861, 114, '300 gram', 62, '40', '37.84', '2346.08', '2480', '2.16', '133.92', '2021-08-08', 1),
(862, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-08-08', 1),
(863, 126, '4 gram', 1, '220', '214.5', '214.5', '220', '5.5', '5.5', '2021-08-08', 1),
(864, 78, '50 gram', 12, '22', '22.13', '265.56', '264', '-0.13', '-1.56', '2021-08-09', 1),
(865, 82, '50 gram', 12, '23', '23.40', '280.8', '276', '-0.4', '-4.8', '2021-08-09', 1),
(866, 83, '100 gram', 12, '41.66', '42.54', '510.48', '499.92', '-0.88', '-10.56', '2021-08-09', 1),
(867, 86, '50 gram', 48, '18', '17.48', '839.04', '864', '0.52', '24.96', '2021-08-09', 1),
(868, 90, '20 gram', 12, '14', '14', '168', '168', '0', '0', '2021-08-09', 1),
(869, 92, '20 gram', 36, '12', '11.20', '403.2', '432', '0.8', '28.8', '2021-08-09', 1),
(870, 94, '40 gram', 684, '7.93', '7.47', '5109.48', '5424.12', '0.46', '314.64', '2021-08-09', 1),
(871, 96, '140 gram', 30, '24', '23.60', '708', '720', '0.4', '12', '2021-08-09', 1),
(872, 98, '20 gram', 216, '4', '3.93', '848.88', '864', '0.07', '15.12', '2021-08-09', 1),
(873, 100, '20 gram', 144, '4', '3.75', '540', '576', '0.25', '36', '2021-08-09', 1),
(874, 101, '22 gram', 940, '7', '6.84', '6429.6', '6580', '0.16', '150.4', '2021-08-09', 1),
(875, 102, '200 gram', 109, '28', '25.6', '2790.4', '3052', '2.4', '261.6', '2021-08-09', 1),
(876, 104, '200 gram', 18, '26', '25', '450', '468', '1', '18', '2021-08-09', 1),
(877, 105, '20 gram', 171, '40', '39', '6669', '6840', '1', '171', '2021-08-09', 1),
(878, 107, '20 gram', 10, '41', '39', '390', '410', '2', '20', '2021-08-09', 1),
(879, 111, '10 gram', 6, '22', '21', '126', '132', '1', '6', '2021-08-09', 1),
(880, 114, '300 gram', 12, '40', '37.84', '454.08', '480', '2.16', '25.92', '2021-08-09', 1),
(881, 117, '160 ml', 48, '8', '7.66', '367.68', '384', '0.34', '16.32', '2021-08-09', 1),
(882, 78, '50 gram', 12, '22', '22.13', '265.56', '264', '-0.13', '-1.56', '2021-08-10', 1),
(883, 79, '100 gram', 36, '41', '35.52', '1278.72', '1476', '5.48', '197.28', '2021-08-10', 1),
(884, 80, '200 gram', 12, '78', '72.85', '874.2', '936', '5.15', '61.8', '2021-08-10', 1),
(885, 82, '50 gram', 23, '23', '23.40', '538.2', '529', '-0.4', '-9.2', '2021-08-10', 1),
(886, 83, '100 gram', 12, '43', '42.54', '510.48', '516', '0.46', '5.52', '2021-08-10', 1),
(887, 84, '200 gram', 12, '83', '79.91', '958.92', '996', '3.09', '37.08', '2021-08-10', 1),
(888, 90, '20 gram', 12, '14', '14', '168', '168', '0', '0', '2021-08-10', 1),
(889, 92, '20 gram', 36, '12', '11.20', '403.2', '432', '0.8', '28.8', '2021-08-10', 1),
(890, 94, '40 gram', 576, '7.98', '7.47', '4302.72', '4596.48', '0.51', '293.76', '2021-08-10', 1),
(891, 95, '85 gram', 30, '15.50', '15.10', '453', '465', '0.4', '12', '2021-08-10', 1),
(892, 97, '300 gram', 6, '50', '47.85', '287.1', '300', '2.15', '12.9', '2021-08-10', 1),
(893, 98, '20 gram', 180, '3.98', '3.93', '707.4', '716.4', '0.05', '9', '2021-08-10', 1),
(894, 100, '20 gram', 90, '4', '3.75', '337.5', '360', '0.25', '22.5', '2021-08-10', 1),
(895, 101, '22 gram', 920, '7', '6.84', '6292.8', '6440', '0.16', '147.2', '2021-08-10', 1),
(896, 102, '200 gram', 12, '28', '25.9', '310.8', '336', '2.1', '25.2', '2021-08-10', 1),
(897, 105, '20 gram', 36, '41', '39', '1404', '1476', '2', '72', '2021-08-10', 1),
(898, 107, '20 gram', 3, '41', '39', '117', '123', '2', '6', '2021-08-10', 1),
(899, 109, '500 gram', 2, '100', '92', '184', '200', '8', '16', '2021-08-10', 1),
(900, 135, '20 gram', 4, '240', '219.14', '876.56', '960', '20.86', '83.44', '2021-08-10', 1),
(901, 114, '300 gram', 21, '40', '37.84', '794.64', '840', '2.16', '45.36', '2021-08-10', 1),
(902, 117, '160 ml', 24, '8', '7.66', '183.84', '192', '0.34', '8.16', '2021-08-10', 1),
(903, 123, '2.5 gram', 3, '160', '150', '450', '480', '10', '30', '2021-08-10', 1),
(904, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-08-10', 1),
(905, 126, '4 gram', 1, '220', '214.5', '214.5', '220', '5.5', '5.5', '2021-08-10', 1),
(906, 78, '50 gram', 12, '22', '22.13', '265.56', '264', '-0.13', '-1.56', '2021-08-11', 1),
(908, 79, '100 gram', 12, '42', '35.52', '426.24', '504', '6.48', '77.76', '2021-08-11', 1),
(909, 83, '100 gram', 12, '43', '42.54', '510.48', '516', '0.46', '5.52', '2021-08-11', 1),
(910, 86, '50 gram', 12, '18', '17.48', '209.76', '216', '0.52', '6.24', '2021-08-11', 1),
(911, 90, '20 gram', 12, '14', '14', '168', '168', '0', '0', '2021-08-11', 1),
(912, 92, '20 gram', 12, '12', '11.20', '134.4', '144', '0.8', '9.6', '2021-08-11', 1),
(913, 94, '40 gram', 612, '7.92', '7.47', '4571.64', '4847.04', '0.45', '275.4', '2021-08-11', 1),
(914, 95, '85 gram', 30, '15.50', '15.10', '453', '465', '0.4', '12', '2021-08-11', 1),
(915, 96, '140 gram', 45, '24', '23.60', '1062', '1080', '0.4', '18', '2021-08-11', 1),
(916, 97, '300 gram', 6, '50', '47.85', '287.1', '300', '2.15', '12.9', '2021-08-11', 1),
(917, 98, '20 gram', 216, '4', '3.93', '848.88', '864', '0.07', '15.12', '2021-08-11', 1),
(918, 100, '20 gram', 144, '4', '3.75', '540', '576', '0.25', '36', '2021-08-11', 1),
(919, 101, '22 gram', 760, '7', '6.84', '5198.4', '5320', '0.16', '121.6', '2021-08-11', 1),
(920, 104, '200 gram', 36, '27', '25.2', '907.2', '972', '1.8', '64.8', '2021-08-11', 1),
(921, 105, '20 gram', 28, '41', '39', '1092', '1148', '2', '56', '2021-08-11', 1),
(922, 107, '20 gram', 7, '41', '39', '273', '287', '2', '14', '2021-08-11', 1),
(923, 128, '300 gram', 36, '40', '37.84', '1362.24', '1440', '2.16', '77.76', '2021-08-11', 1),
(924, 117, '160 ml', 12, '8', '7.66', '91.92', '96', '0.34', '4.08', '2021-08-11', 1),
(925, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-08-11', 1),
(926, 90, '20 gram', 12, '14', '14', '168', '168', '0', '0', '2021-08-12', 1),
(927, 92, '20 gram', 12, '12', '11.20', '134.4', '144', '0.8', '9.6', '2021-08-12', 1),
(928, 94, '40 gram', 432, '7.95', '7.47', '3227.04', '3434.4', '0.48', '207.36', '2021-08-12', 1),
(929, 95, '85 gram', 30, '15.50', '15.10', '453', '465', '0.4', '12', '2021-08-12', 1),
(930, 96, '140 gram', 42, '24', '23.60', '991.2', '1008', '0.4', '16.8', '2021-08-12', 1),
(931, 97, '300 gram', 6, '50', '47.85', '287.1', '300', '2.15', '12.9', '2021-08-12', 1),
(932, 98, '20 gram', 288, '4', '3.93', '1131.84', '1152', '0.07', '20.16', '2021-08-12', 1),
(933, 100, '20 gram', 252, '4', '3.75', '945', '1008', '0.25', '63', '2021-08-12', 1),
(934, 101, '22 gram', 480, '7', '6.84', '3283.2', '3360', '0.16', '76.8', '2021-08-12', 1),
(935, 104, '200 gram', 60, '28', '25.2', '1512', '1680', '2.8', '168', '2021-08-12', 1),
(936, 105, '20 gram', 9, '41', '39', '351', '369', '2', '18', '2021-08-12', 1),
(937, 105, '20 gram', 3, '41', '39', '117', '123', '2', '6', '2021-08-12', 1),
(938, 123, '2.5 gram', 2, '160', '150', '300', '320', '10', '20', '2021-08-12', 1),
(939, 117, '160 ml', 24, '8', '7.66', '183.84', '192', '0.34', '8.16', '2021-08-12', 1),
(940, 90, '20 gram', 36, '14', '14', '504', '504', '0', '0', '2021-08-14', 1),
(941, 92, '20 gram', 96, '12', '11.20', '1075.2', '1152', '0.8', '76.8', '2021-08-14', 1),
(942, 94, '40 gram', 324, '7.90', '7.47', '2420.28', '2559.6', '0.43', '139.32', '2021-08-14', 1),
(943, 95, '85 gram', 24, '15.50', '15.10', '362.4', '372', '0.4', '9.6', '2021-08-14', 1),
(944, 96, '140 gram', 6, '24', '23.60', '141.6', '144', '0.4', '2.4', '2021-08-14', 1),
(945, 98, '20 gram', 180, '4', '3.93', '707.4', '720', '0.07', '12.6', '2021-08-14', 1),
(946, 100, '20 gram', 144, '4', '3.75', '540', '576', '0.25', '36', '2021-08-14', 1),
(947, 101, '22 gram', 600, '7', '6.84', '4104', '4200', '0.16', '96', '2021-08-14', 1),
(948, 102, '200 gram', 26, '24', '28', '728', '624', '-4', '-104', '2021-08-14', 1),
(949, 104, '200 gram', 24, '27', '25.2', '604.8', '648', '1.8', '43.2', '2021-08-14', 1),
(950, 105, '20 gram', 44, '41', '39', '1716', '1804', '2', '88', '2021-08-14', 1),
(951, 114, '300 gram', 18, '40', '37.84', '681.12', '720', '2.16', '38.88', '2021-08-14', 1),
(952, 117, '160 ml', 12, '8', '7.66', '91.92', '96', '0.34', '4.08', '2021-08-14', 1),
(953, 119, '40 gram', 1, '170', '160', '160', '170', '10', '10', '2021-08-14', 1),
(954, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-08-14', 1),
(955, 79, '100 gram', 6, '40', '35.52', '213.12', '240', '4.48', '26.88', '2021-08-16', 1),
(956, 80, '200 gram', 6, '79', '72.85', '437.1', '474', '6.15', '36.9', '2021-08-16', 1),
(957, 81, '500 gram', 2, '170', '157.91', '315.82', '340', '12.09', '24.18', '2021-08-16', 1),
(958, 84, '200 gram', 6, '80', '79.91', '479.46', '480', '0.090000000000003', '0.54000000000002', '2021-08-16', 1),
(959, 86, '50 gram', 60, '18', '17.48', '1048.8', '1080', '0.52', '31.2', '2021-08-16', 1),
(960, 89, '50 gram', 120, '18', '17.30', '2076', '2160', '0.7', '84', '2021-08-16', 1),
(961, 90, '20 gram', 36, '14', '14', '504', '504', '0', '0', '2021-08-16', 1),
(962, 92, '20 gram', 84, '11.80', '11.20', '940.8', '991.2', '0.6', '50.4', '2021-08-16', 1),
(963, 94, '40 gram', 648, '7.97', '7.47', '4840.56', '5164.56', '0.5', '324', '2021-08-16', 1),
(964, 95, '85 gram', 24, '15.50', '15.10', '362.4', '372', '0.4', '9.6', '2021-08-16', 1),
(965, 96, '140 gram', 42, '24', '23.60', '991.2', '1008', '0.4', '16.8', '2021-08-16', 1),
(966, 98, '20 gram', 216, '4', '3.93', '848.88', '864', '0.07', '15.12', '2021-08-16', 1),
(967, 97, '300 gram', 14, '50', '47.85', '669.9', '700', '2.15', '30.1', '2021-08-16', 1),
(968, 100, '20 gram', 180, '4', '3.75', '675', '720', '0.25', '45', '2021-08-16', 1),
(969, 101, '22 gram', 1000, '7', '6.84', '6840', '7000', '0.16', '160', '2021-08-16', 1),
(970, 101, '22 gram', 160, '7', '6.84', '1094.4', '1120', '0.16', '25.6', '2021-08-16', 1),
(971, 105, '20 gram', 7, '41', '39', '273', '287', '2', '14', '2021-08-16', 1),
(972, 107, '20 gram', 4, '41', '39', '156', '164', '2', '8', '2021-08-16', 1),
(973, 113, '5 gram', 1, '200', '195', '195', '200', '5', '5', '2021-08-16', 1),
(974, 114, '300 gram', 18, '40', '37.84', '681.12', '720', '2.16', '38.88', '2021-08-16', 1),
(975, 117, '160 ml', 72, '7.90', '7.66', '551.52', '568.8', '0.24', '17.28', '2021-08-16', 1),
(976, 119, '40 gram', 1, '170', '160', '160', '170', '10', '10', '2021-08-16', 1),
(977, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-08-16', 1),
(978, 126, '4 gram', 2, '220', '214.5', '429', '440', '5.5', '11', '2021-08-16', 1),
(980, 79, '100 gram', 24, '41', '35.52', '852.48', '984', '5.48', '131.52', '2021-08-15', 1),
(981, 81, '500 gram', 3, '170', '157.91', '473.73', '510', '12.09', '36.27', '2021-08-15', 1),
(982, 82, '50 gram', 96, '23', '23.40', '2246.4', '2208', '-0.4', '-38.4', '2021-08-15', 1),
(983, 83, '100 gram', 24, '43', '42.54', '1020.96', '1032', '0.46', '11.04', '2021-08-15', 1),
(984, 85, '500 gram', 3, '200', '192.7', '578.1', '600', '7.3', '21.9', '2021-08-15', 1),
(985, 86, '50 gram', 36, '18', '17.48', '629.28', '648', '0.52', '18.72', '2021-08-15', 1),
(986, 89, '50 gram', 48, '18', '17.30', '830.4', '864', '0.7', '33.6', '2021-08-15', 1);
INSERT INTO `tbl_order_book` (`order_book_id`, `product_id`, `product_size`, `product_quantity`, `product_shop_price`, `order_product_dealer_price`, `amader_invest_taka`, `dokandarer_total_price`, `percentage`, `total_lav`, `order_date`, `action`) VALUES
(987, 90, '20 gram', 36, '14', '14', '504', '504', '0', '0', '2021-08-15', 1),
(988, 92, '20 gram', 168, '11.60', '11.20', '1881.6', '1948.8', '0.4', '67.2', '2021-08-15', 1),
(989, 94, '40 gram', 1128, '7.90', '7.47', '8426.16', '8911.2', '0.43', '485.04', '2021-08-15', 1),
(990, 95, '85 gram', 30, '15.50', '15.10', '453', '465', '0.4', '12', '2021-08-15', 1),
(991, 96, '140 gram', 39, '24', '23.60', '920.4', '936', '0.4', '15.6', '2021-08-15', 1),
(992, 97, '300 gram', 23, '50', '47.85', '1100.55', '1150', '2.15', '49.45', '2021-08-15', 1),
(993, 98, '20 gram', 684, '3.95', '3.93', '2688.12', '2701.8', '0.02', '13.68', '2021-08-15', 1),
(994, 100, '20 gram', 144, '4', '3.75', '540', '576', '0.25', '36', '2021-08-15', 1),
(995, 101, '22 gram', 1180, '7', '6.84', '8071.2', '8260', '0.16', '188.8', '2021-08-15', 1),
(996, 104, '200 gram', 6, '28', '26', '156', '168', '2', '12', '2021-08-15', 1),
(997, 105, '20 gram', 20, '41', '39', '780', '820', '2', '40', '2021-08-15', 1),
(998, 107, '20 gram', 14, '41', '39', '546', '574', '2', '28', '2021-08-15', 1),
(999, 131, '3 kg', 18, '22', '21', '378', '396', '1', '18', '2021-08-15', 1),
(1000, 114, '300 gram', 27, '40', '37.84', '1021.68', '1080', '2.16', '58.32', '2021-08-15', 1),
(1001, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-08-15', 1),
(1002, 78, '50 gram', 36, '23', '22.13', '796.68', '828', '0.87', '31.32', '2021-08-17', 1),
(1003, 82, '50 gram', 36, '23', '23.40', '842.4', '828', '-0.4', '-14.4', '2021-08-17', 1),
(1004, 86, '50 gram', 36, '18', '17.48', '629.28', '648', '0.52', '18.72', '2021-08-17', 1),
(1005, 89, '50 gram', 48, '18', '17.30', '830.4', '864', '0.7', '33.6', '2021-08-17', 1),
(1006, 94, '40 gram', 504, '7.97', '7.47', '3764.88', '4016.88', '0.5', '252', '2021-08-17', 1),
(1007, 95, '85 gram', 30, '15.50', '15.10', '453', '465', '0.4', '12', '2021-08-17', 1),
(1008, 96, '140 gram', 15, '24', '23.60', '354', '360', '0.4', '6', '2021-08-17', 1),
(1009, 98, '20 gram', 432, '4', '3.93', '1697.76', '1728', '0.07', '30.24', '2021-08-17', 1),
(1010, 100, '20 gram', 324, '4', '3.75', '1215', '1296', '0.25', '81', '2021-08-17', 1),
(1011, 101, '22 gram', 720, '7', '6.84', '4924.8', '5040', '0.16', '115.2', '2021-08-17', 1),
(1012, 105, '20 gram', 33, '41', '39', '1287', '1353', '2', '66', '2021-08-17', 1),
(1013, 107, '20 gram', 3, '41', '39', '117', '123', '2', '6', '2021-08-17', 1),
(1014, 114, '300 gram', 12, '40', '37.84', '454.08', '480', '2.16', '25.92', '2021-08-17', 1),
(1015, 117, '160 ml', 24, '8', '7.68', '184.32', '192', '0.32', '7.68', '2021-08-17', 1),
(1016, 120, '40 gram', 48, '8', '7.57', '363.36', '384', '0.43', '20.64', '2021-08-17', 1),
(1017, 82, '50 gram', 48, '23', '23.40', '1123.2', '1104', '-0.4', '-19.2', '2021-08-18', 1),
(1018, 86, '50 gram', 12, '18', '17.48', '209.76', '216', '0.52', '6.24', '2021-08-18', 1),
(1019, 88, '50 gram', 24, '18', '17.30', '415.2', '432', '0.7', '16.8', '2021-08-18', 1),
(1020, 90, '20 gram', 12, '14', '14', '168', '168', '0', '0', '2021-08-18', 1),
(1022, 92, '20 gram', 12, '12', '11.20', '134.4', '144', '0.8', '9.6', '2021-08-18', 1),
(1023, 94, '40 gram', 216, '7.98', '7.47', '1613.52', '1723.68', '0.51', '110.16', '2021-08-18', 1),
(1024, 98, '20 gram', 72, '4', '3.93', '282.96', '288', '0.07', '5.04', '2021-08-18', 1),
(1025, 100, '20 gram', 180, '4', '3.75', '675', '720', '0.25', '45', '2021-08-18', 1),
(1026, 101, '22 gram', 640, '7', '6.84', '4377.6', '4480', '0.16', '102.4', '2021-08-18', 1),
(1027, 104, '200 gram', 6, '28', '26', '156', '168', '2', '12', '2021-08-18', 1),
(1028, 105, '20 gram', 9, '41', '39', '351', '369', '2', '18', '2021-08-18', 1),
(1029, 126, '4 gram', 1, '220', '114.5', '114.5', '220', '105.5', '105.5', '2021-08-18', 1),
(1030, 82, '50 gram', 12, '23', '23.40', '280.8', '276', '-0.4', '-4.8', '2021-08-19', 1),
(1031, 88, '50 gram', 12, '18', '17.30', '207.6', '216', '0.7', '8.4', '2021-08-19', 1),
(1032, 94, '40 gram', 612, '7.90', '7.47', '4571.64', '4834.8', '0.43', '263.16', '2021-08-19', 1),
(1033, 95, '85 gram', 30, '15.50', '15.10', '453', '465', '0.4', '12', '2021-08-19', 1),
(1034, 96, '140 gram', 15, '24', '23.60', '354', '360', '0.4', '6', '2021-08-19', 1),
(1035, 98, '20 gram', 576, '3.98', '3.93', '2263.68', '2292.48', '0.05', '28.8', '2021-08-19', 1),
(1036, 100, '20 gram', 180, '4', '3.75', '675', '720', '0.25', '45', '2021-08-19', 1),
(1037, 101, '22 gram', 420, '7', '6.84', '2872.8', '2940', '0.16', '67.2', '2021-08-19', 1),
(1038, 104, '200 gram', 24, '28', '26', '624', '672', '2', '48', '2021-08-19', 1),
(1039, 105, '20 gram', 12, '41', '39', '468', '492', '2', '24', '2021-08-19', 1),
(1040, 107, '20 gram', 3, '41', '39', '117', '123', '2', '6', '2021-08-19', 1),
(1041, 114, '300 gram', 6, '40', '37.84', '227.04', '240', '2.16', '12.96', '2021-08-19', 1),
(1042, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-08-19', 1),
(1043, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-08-19', 1),
(1044, 135, '20 gram', 3, '238', '219', '657', '714', '19', '57', '2021-08-19', 1),
(1045, 137, '250 gram', 8, '95', '88.16', '705.28', '760', '6.84', '54.72', '2021-08-22', 1),
(1046, 82, '50 gram', 24, '23', '23.40', '561.6', '552', '-0.4', '-9.6', '2021-08-22', 1),
(1047, 86, '50 gram', 12, '18', '17.48', '209.76', '216', '0.52', '6.24', '2021-08-22', 1),
(1048, 138, '250 gram', 3, '85', '78', '234', '255', '7', '21', '2021-08-22', 1),
(1049, 139, '250 gram', 3, '210', '200', '600', '630', '10', '30', '2021-08-22', 1),
(1050, 88, '50 gram', 12, '18', '17.30', '207.6', '216', '0.7', '8.4', '2021-08-22', 1),
(1051, 92, '20 gram', 84, '11.30', '11.20', '940.8', '949.2', '0.1', '8.4000000000001', '2021-08-22', 1),
(1052, 94, '40 gram', 540, '7.95', '7.47', '4033.8', '4293', '0.48', '259.2', '2021-08-22', 1),
(1053, 96, '140 gram', 6, '24', '23.60', '141.6', '144', '0.4', '2.4', '2021-08-22', 1),
(1054, 97, '300 gram', 10, '50', '47.85', '478.5', '500', '2.15', '21.5', '2021-08-22', 1),
(1055, 98, '20 gram', 216, '4', '3.93', '848.88', '864', '0.07', '15.12', '2021-08-22', 1),
(1056, 100, '20 gram', 144, '4', '3.75', '540', '576', '0.25', '36', '2021-08-22', 1),
(1057, 101, '22 gram', 740, '7', '6.84', '5061.6', '5180', '0.16', '118.4', '2021-08-22', 1),
(1058, 105, '20 gram', 20, '41', '39', '780', '820', '2', '40', '2021-08-22', 1),
(1059, 107, '20 gram', 9, '41', '39', '351', '369', '2', '18', '2021-08-22', 1),
(1060, 109, '500 gram', 2, '100', '92', '184', '200', '8', '16', '2021-08-22', 1),
(1061, 111, '10 gram', 6, '22', '21', '126', '132', '1', '6', '2021-08-22', 1),
(1062, 114, '300 gram', 24, '40', '37.84', '908.16', '960', '2.16', '51.84', '2021-08-22', 1),
(1063, 135, '20 gram', 2, '240', '219', '438', '480', '21', '42', '2021-08-22', 1),
(1064, 92, '20 gram', 72, '11.50', '11.20', '806.4', '828', '0.3', '21.6', '2021-08-21', 1),
(1065, 94, '40 gram', 570, '7.90', '7.47', '4257.9', '4503', '0.43', '245.1', '2021-08-21', 1),
(1066, 98, '20 gram', 360, '4', '3.93', '1414.8', '1440', '0.07', '25.2', '2021-08-21', 1),
(1067, 100, '20 gram', 180, '4', '3.75', '675', '720', '0.25', '45', '2021-08-21', 1),
(1068, 101, '22 gram', 200, '7', '6.84', '1368', '1400', '0.16', '32', '2021-08-21', 1),
(1069, 102, '200 gram', 3, '27', '25', '75', '81', '2', '6', '2021-08-21', 1),
(1070, 104, '200 gram', 12, '28', '26', '312', '336', '2', '24', '2021-08-21', 1),
(1071, 105, '20 gram', 6, '41', '39', '234', '246', '2', '12', '2021-08-21', 1),
(1072, 107, '20 gram', 6, '41', '39', '234', '246', '2', '12', '2021-08-21', 1),
(1073, 135, '20 gram', 4, '240', '219', '876', '960', '21', '84', '2021-08-21', 1),
(1074, 114, '300 gram', 18, '40', '38', '684', '720', '2', '36', '2021-08-21', 1),
(1075, 117, '160 ml', 84, '8', '7.66', '643.44', '672', '0.34', '28.56', '2021-08-21', 1),
(1076, 80, '200 gram', 3, '79', '72.85', '218.55', '237', '6.15', '18.45', '2021-08-23', 1),
(1077, 137, '250 gram', 6, '92', '88.16', '528.96', '552', '3.84', '23.04', '2021-08-23', 1),
(1078, 82, '50 gram', 24, '23', '23.40', '561.6', '552', '-0.4', '-9.6', '2021-08-23', 1),
(1079, 84, '200 gram', 2, '80', '79.91', '159.82', '160', '0.090000000000003', '0.18000000000001', '2021-08-23', 1),
(1080, 86, '50 gram', 12, '18', '17.48', '209.76', '216', '0.52', '6.24', '2021-08-23', 1),
(1081, 138, '250 gram', 12, '82', '78', '936', '984', '4', '48', '2021-08-23', 1),
(1082, 139, '250 gram', 3, '210', '200', '600', '630', '10', '30', '2021-08-23', 1),
(1084, 88, '50 gram', 48, '18', '17.30', '830.4', '864', '0.7', '33.6', '2021-08-23', 1),
(1085, 94, '40 gram', 720, '7.95', '7.47', '5378.4', '5724', '0.48', '345.6', '2021-08-23', 1),
(1086, 96, '140 gram', 27, '24', '23.60', '637.2', '648', '0.4', '10.8', '2021-08-23', 1),
(1087, 97, '300 gram', 3, '50', '47.85', '143.55', '150', '2.15', '6.45', '2021-08-23', 1),
(1088, 98, '20 gram', 108, '4', '3.93', '424.44', '432', '0.07', '7.56', '2021-08-23', 1),
(1089, 100, '20 gram', 72, '4', '3.75', '270', '288', '0.25', '18', '2021-08-23', 1),
(1090, 101, '22 gram', 700, '7', '6.84', '4788', '4900', '0.16', '112', '2021-08-23', 1),
(1091, 104, '200 gram', 6, '28', '26', '156', '168', '2', '12', '2021-08-23', 1),
(1092, 105, '20 gram', 55, '40', '39', '2145', '2200', '1', '55', '2021-08-23', 1),
(1093, 114, '300 gram', 27, '40', '37.84', '1021.68', '1080', '2.16', '58.32', '2021-08-23', 1),
(1094, 123, '2.5 gram', 2, '160', '150', '300', '320', '10', '20', '2021-08-23', 1),
(1095, 80, '200 gram', 12, '80', '72.85', '874.2', '960', '7.15', '85.8', '2021-08-24', 1),
(1096, 137, '250 gram', 3, '95', '88.16', '264.48', '285', '6.84', '20.52', '2021-08-24', 1),
(1097, 82, '50 gram', 12, '23', '23.40', '280.8', '276', '-0.4', '-4.8', '2021-08-24', 1),
(1098, 84, '200 gram', 12, '80', '79.91', '958.92', '960', '0.090000000000003', '1.08', '2021-08-24', 1),
(1099, 88, '50 gram', 12, '18', '17.30', '207.6', '216', '0.7', '8.4', '2021-08-24', 1),
(1100, 94, '40 gram', 612, '7.90', '7.47', '4571.64', '4834.8', '0.43', '263.16', '2021-08-24', 1),
(1101, 98, '20 gram', 396, '3.97', '3.93', '1556.28', '1572.12', '0.04', '15.84', '2021-08-24', 1),
(1102, 100, '20 gram', 324, '4', '3.75', '1215', '1296', '0.25', '81', '2021-08-24', 1),
(1103, 101, '22 gram', 640, '7', '6.84', '4377.6', '4480', '0.16', '102.4', '2021-08-24', 1),
(1104, 104, '200 gram', 18, '28', '26', '468', '504', '2', '36', '2021-08-24', 1),
(1105, 105, '20 gram', 60, '40', '39', '2340', '2400', '1', '60', '2021-08-24', 1),
(1106, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-08-24', 1),
(1107, 126, '4 gram', 1, '220', '215', '215', '220', '5', '5', '2021-08-24', 1),
(1108, 137, '250 gram', 6, '93.5', '88.16', '528.96', '561', '5.34', '32.04', '2021-08-26', 1),
(1109, 82, '50 gram', 12, '23', '23.40', '280.8', '276', '-0.4', '-4.8', '2021-08-26', 1),
(1110, 138, '250 gram', 6, '82', '78', '468', '492', '4', '24', '2021-08-26', 1),
(1111, 139, '250 gram', 3, '212', '200', '600', '636', '12', '36', '2021-08-26', 1),
(1112, 88, '50 gram', 12, '18', '17.30', '207.6', '216', '0.7', '8.4', '2021-08-26', 1),
(1113, 90, '20 gram', 36, '14', '14', '504', '504', '0', '0', '2021-08-26', 1),
(1114, 92, '20 gram', 48, '11.50', '11.20', '537.6', '552', '0.3', '14.4', '2021-08-26', 1),
(1115, 135, '20 gram', 3, '240', '219', '657', '720', '21', '63', '2021-08-26', 1),
(1116, 94, '40 gram', 612, '7.90', '7.47', '4571.64', '4834.8', '0.43', '263.16', '2021-08-26', 1),
(1117, 96, '140 gram', 15, '24', '23.60', '354', '360', '0.4', '6', '2021-08-26', 1),
(1118, 98, '20 gram', 720, '3.96', '3.93', '2829.6', '2851.2', '0.03', '21.6', '2021-08-26', 1),
(1119, 100, '20 gram', 72, '4', '3.75', '270', '288', '0.25', '18', '2021-08-26', 1),
(1120, 101, '22 gram', 660, '7', '6.84', '4514.4', '4620', '0.16', '105.6', '2021-08-26', 1),
(1121, 104, '200 gram', 52, '25.2', '25.2', '1310.4', '1310.4', '0', '0', '2021-08-26', 1),
(1122, 105, '20 gram', 65, '40', '39', '2535', '2600', '1', '65', '2021-08-26', 1),
(1123, 114, '300 gram', 24, '40', '37.40', '897.6', '960', '2.6', '62.4', '2021-08-26', 1),
(1124, 120, '40 gram', 48, '8', '7.57', '363.36', '384', '0.43', '20.64', '2021-08-26', 1),
(1125, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-08-26', 1),
(1126, 92, '20 gram', 48, '11.90', '11.20', '537.6', '571.2', '0.7', '33.6', '2021-08-28', 1),
(1127, 94, '40 gram', 108, '8', '7.47', '806.76', '864', '0.53', '57.24', '2021-08-28', 1),
(1128, 98, '20 gram', 36, '4', '3.93', '141.48', '144', '0.07', '2.52', '2021-08-28', 1),
(1129, 100, '20 gram', 108, '4', '3.75', '405', '432', '0.25', '27', '2021-08-28', 1),
(1130, 101, '22 gram', 20, '7', '6.84', '136.8', '140', '0.16', '3.2', '2021-08-28', 1),
(1131, 105, '20 gram', 19, '41', '39', '741', '779', '2', '38', '2021-08-28', 1),
(1132, 107, '20 gram', 2, '41', '39', '78', '82', '2', '4', '2021-08-28', 1),
(1133, 117, '160 ml', 24, '8', '7.66', '183.84', '192', '0.34', '8.16', '2021-08-28', 1),
(1134, 123, '2.5 gram', 2, '160', '150', '300', '320', '10', '20', '2021-08-28', 1),
(1135, 82, '50 gram', 12, '23', '23.40', '280.8', '276', '-0.4', '-4.8', '2021-08-30', 1),
(1136, 90, '20 gram', 12, '14', '14', '168', '168', '0', '0', '2021-08-30', 1),
(1137, 94, '40 gram', 672, '7.90', '7.47', '5019.84', '5308.8', '0.43', '288.96', '2021-08-30', 1),
(1138, 96, '140 gram', 30, '24', '23.60', '708', '720', '0.4', '12', '2021-08-30', 1),
(1139, 98, '20 gram', 540, '3.97', '3.93', '2122.2', '2143.8', '0.04', '21.6', '2021-08-30', 1),
(1140, 100, '20 gram', 288, '4', '3.75', '1080', '1152', '0.25', '72', '2021-08-30', 1),
(1141, 101, '22 gram', 480, '7', '6.84', '3283.2', '3360', '0.16', '76.8', '2021-08-30', 1),
(1142, 102, '200 gram', 96, '28', '25', '2400', '2688', '3', '288', '2021-08-30', 1),
(1143, 105, '20 gram', 116, '40', '39', '4524', '4640', '1', '116', '2021-08-30', 1),
(1144, 114, '300 gram', 6, '39', '37.5', '225', '234', '1.5', '9', '2021-08-30', 1),
(1145, 79, '100 gram', 24, '40', '35.52', '852.48', '960', '4.48', '107.52', '2021-08-29', 1),
(1146, 137, '250 gram', 2, '93', '88.16', '176.32', '186', '4.84', '9.68', '2021-08-29', 1),
(1147, 138, '250 gram', 2, '82', '78', '156', '164', '4', '8', '2021-08-29', 1),
(1148, 88, '50 gram', 36, '18', '17.30', '622.8', '648', '0.7', '25.2', '2021-08-29', 1),
(1149, 90, '20 gram', 120, '14', '14', '1680', '1680', '0', '0', '2021-08-29', 1),
(1150, 92, '20 gram', 108, '11.60', '11.20', '1209.6', '1252.8', '0.4', '43.2', '2021-08-29', 1),
(1151, 135, '20 gram', 1, '240', '219', '219', '240', '21', '21', '2021-08-29', 1),
(1152, 94, '40 gram', 432, '7.95', '7.47', '3227.04', '3434.4', '0.48', '207.36', '2021-08-29', 1),
(1153, 96, '140 gram', 45, '24', '23.84', '1072.8', '1080', '0.16', '7.2', '2021-08-29', 1),
(1154, 98, '20 gram', 756, '3.97', '3.93', '2971.08', '3001.32', '0.04', '30.24', '2021-08-29', 1),
(1155, 97, '300 gram', 10, '49', '47.85', '478.5', '490', '1.15', '11.5', '2021-08-29', 1),
(1156, 100, '20 gram', 252, '4', '3.75', '945', '1008', '0.25', '63', '2021-08-29', 1),
(1157, 101, '22 gram', 1720, '7', '6.84', '11764.8', '12040', '0.16', '275.2', '2021-08-29', 1),
(1158, 109, '500 gram', 1, '100', '92', '92', '100', '8', '8', '2021-08-29', 1),
(1159, 105, '20 gram', 84, '40', '39', '3276', '3360', '1', '84', '2021-08-29', 1),
(1160, 109, '500 gram', 1, '100', '92', '92', '100', '8', '8', '2021-08-29', 1),
(1161, 110, '500 gram', 4, '100', '92', '368', '400', '8', '32', '2021-08-29', 1),
(1162, 114, '300 gram', 30, '40', '37.84', '1135.2', '1200', '2.16', '64.8', '2021-08-29', 1),
(1163, 123, '2.5 gram', 1, '160', '150', '150', '160', '10', '10', '2021-08-29', 1),
(1164, 78, '50 gram', 12, '23', '22.13', '265.56', '276', '0.87', '10.44', '2021-08-31', 1),
(1165, 79, '100 gram', 24, '40', '37.83', '907.92', '960', '2.17', '52.08', '2021-08-31', 1),
(1166, 82, '50 gram', 24, '23', '23.40', '561.6', '552', '-0.4', '-9.6', '2021-08-31', 1),
(1167, 83, '100 gram', 24, '43', '42.54', '1020.96', '1032', '0.46', '11.04', '2021-08-31', 1),
(1168, 90, '20 gram', 24, '14', '14', '336', '336', '0', '0', '2021-08-31', 1),
(1169, 92, '20 gram', 48, '11.60', '11.20', '537.6', '556.8', '0.4', '19.2', '2021-08-31', 1),
(1170, 94, '40 gram', 252, '7.95', '7.47', '1882.44', '2003.4', '0.48', '120.96', '2021-08-31', 1),
(1171, 95, '85 gram', 30, '15.50', '15.10', '453', '465', '0.4', '12', '2021-08-31', 1),
(1172, 96, '140 gram', 15, '24', '23.85', '357.75', '360', '0.15', '2.25', '2021-08-31', 1),
(1173, 98, '20 gram', 324, '4', '3.93', '1273.32', '1296', '0.07', '22.68', '2021-08-31', 1),
(1174, 100, '20 gram', 252, '4', '3.75', '945', '1008', '0.25', '63', '2021-08-31', 1),
(1175, 101, '22 gram', 760, '7', '6.84', '5198.4', '5320', '0.16', '121.6', '2021-08-31', 1),
(1176, 102, '200 gram', 12, '28', '25', '300', '336', '3', '36', '2021-08-31', 1),
(1177, 105, '20 gram', 33, '40', '39', '1287', '1320', '1', '33', '2021-08-31', 1),
(1178, 107, '20 gram', 3, '40', '39', '117', '120', '1', '3', '2021-08-31', 1),
(1179, 109, '500 gram', 2, '100', '92', '184', '200', '8', '16', '2021-08-31', 1),
(1180, 86, '50 gram', 12, '18', '17.48', '209.76', '216', '0.52', '6.24', '2021-09-01', 1),
(1181, 90, '20 gram', 24, '14', '14', '336', '336', '0', '0', '2021-09-01', 1),
(1182, 92, '20 gram', 24, '11.80', '11.20', '268.8', '283.2', '0.6', '14.4', '2021-09-01', 1),
(1183, 94, '40 gram', 252, '8', '7.47', '1882.44', '2016', '0.53', '133.56', '2021-09-01', 1),
(1184, 96, '140 gram', 12, '24', '23.60', '283.2', '288', '0.4', '4.8', '2021-09-01', 1),
(1185, 98, '20 gram', 108, '4', '3.93', '424.44', '432', '0.07', '7.56', '2021-09-01', 1),
(1186, 100, '20 gram', 108, '4', '3.75', '405', '432', '0.25', '27', '2021-09-01', 1),
(1187, 101, '22 gram', 460, '7', '6.84', '3146.4', '3220', '0.16', '73.6', '2021-09-01', 1),
(1188, 102, '200 gram', 24, '27', '25.5', '612', '648', '1.5', '36', '2021-09-01', 1),
(1189, 105, '20 gram', 18, '40', '39', '702', '720', '1', '18', '2021-09-01', 1),
(1190, 135, '20 gram', 3, '240', '219', '657', '720', '21', '63', '2021-09-01', 1),
(1191, 114, '300 gram', 6, '39', '37', '222', '234', '2', '12', '2021-09-01', 1),
(1192, 120, '40 gram', 48, '8', '7.57', '363.36', '384', '0.43', '20.64', '2021-09-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_size` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `product_action` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_size`, `date`, `product_action`) VALUES
(78, 'guro holud', '50 gram', '2021-04-30 11:57:07', 1),
(79, 'guro holud', '100 gram', '2021-04-30 11:58:07', 1),
(80, 'guro holud', '200 gram', '2021-04-30 11:58:26', 1),
(81, 'guro holud', '500 gram', '2021-04-30 11:58:37', 1),
(82, 'guro morich', '50 gram', '2021-04-30 11:58:54', 1),
(83, 'guro morich', '100 gram', '2021-04-30 11:59:05', 1),
(84, 'guro morich', '200 gram', '2021-04-30 11:59:13', 1),
(85, 'guro morich', '500 gram', '2021-04-30 11:59:24', 1),
(86, 'guro dhoniya', '50 gram', '2021-04-30 11:59:38', 1),
(87, 'guro jira', '50 gram', '2021-04-30 11:59:48', 1),
(88, 'pachforon dana', '50 gram', '2021-04-30 12:00:11', 1),
(89, 'pachforon paudar', '50 gram', '2021-04-30 12:03:22', 1),
(90, 'guro beep mosla', '20 gram', '2021-04-30 12:04:08', 1),
(91, 'guro fish mosla', '20 gram', '2021-04-30 12:04:25', 1),
(92, 'guro firm chiken mosla', '20 gram', '2021-04-30 12:04:52', 1),
(93, 'zal muri ', '30 gram', '2021-04-30 12:05:12', 1),
(94, 'canachur ', '40 gram', '2021-04-30 12:05:39', 1),
(95, 'canachur', '85 gram', '2021-04-30 12:05:53', 1),
(96, 'canachur', '140 gram', '2021-04-30 12:06:04', 1),
(97, 'canachur', '300 gram', '2021-04-30 12:06:13', 1),
(98, 'canachur zal ', '20 gram', '2021-04-30 12:06:42', 1),
(99, 'bar b-q', '300 gram', '2021-04-30 12:07:05', 1),
(100, 'motor vaza', '20 gram', '2021-04-30 12:07:22', 1),
(101, 'potato', '22 gram', '2021-04-30 12:08:56', 1),
(102, 'lachha semai ', '200 gram', '2021-04-30 12:09:14', 1),
(103, 'bib varmicili semai', '150 gram', '2021-04-30 12:09:34', 1),
(104, 'varmicili semai', '200 gram', '2021-04-30 12:09:49', 1),
(105, 'catni tetul', '20 gram', '2021-04-30 12:10:42', 1),
(106, 'catni mango', '20 gram', '2021-04-30 12:10:57', 1),
(107, 'catni boroi', '20 gram', '2021-04-30 12:11:07', 1),
(108, 'catni jolpai', '20 gram', '2021-04-30 12:11:21', 1),
(109, 'catni boroi', '500 gram', '2021-04-30 12:11:42', 1),
(110, 'catni tetul', '500 gram', '2021-04-30 12:11:53', 1),
(111, 'tomato sos', '10 gram', '2021-04-30 12:12:07', 1),
(112, 'orange jeli ', '250 gram', '2021-04-30 12:12:21', 1),
(113, 'isopgul vusi', '5 gram', '2021-04-30 12:12:38', 1),
(114, 'toast biskut', '300 gram', '2021-04-30 12:12:57', 1),
(115, 'mini batar toast biskut', '45 gram', '2021-04-30 12:13:19', 1),
(116, 'zal toast biskut ', '45 gram', '2021-04-30 12:13:34', 1),
(117, 'orange drink', '160 ml', '2021-04-30 12:13:49', 1),
(118, 'lichi drink ', '160 ml', '2021-04-30 12:14:04', 1),
(119, 'coko coko zar ', '40 gram', '2021-04-30 12:14:17', 1),
(120, 'dry cake', '40 gram', '2021-04-30 12:14:28', 1),
(121, 'dry cake', '150 gram', '2021-04-30 12:14:37', 1),
(122, 'green mango candy', '2.5 gram', '2021-04-30 12:14:54', 1),
(123, 'hani milk candy', '2.5 gram', '2021-04-30 12:15:16', 1),
(124, 'hani lichi candy', '2.5 gram', '2021-04-30 12:15:33', 1),
(125, 'hani orange candy', '2.5 gram', '2021-04-30 12:15:44', 1),
(126, 'zakkas mango candy', '4 gram', '2021-04-30 12:16:03', 1),
(127, 'zakkas tetul candy', '4 gram', '2021-04-30 12:16:15', 1),
(128, 'top-c orange', '7 gram', '2021-04-30 12:16:31', 1),
(129, 'top-c mango ', '7 gram', '2021-04-30 12:16:47', 1),
(130, 'hani green mango candy', '2.5 gram', '2021-04-30 12:51:52', 1),
(131, 'tomato sos ', '3 kg', '2021-04-30 14:04:04', 1),
(132, 'tomato sos', '4.5 kg', '2021-04-30 22:19:18', 1),
(133, 'pachforon paudar', '50 gram', '2021-07-11 13:03:20', 1),
(134, 'Gorom mosla', '50 gram', '2021-07-15 11:24:43', 1),
(135, 'Double Toast', '20 gram', '2021-07-19 09:35:12', 1),
(136, 'catni mixed', '20 gram', '2021-07-29 15:23:41', 1),
(137, 'holud jar', '250 gram', '2021-08-22 08:47:12', 1),
(138, 'dhoniya jar', '250 gram', '2021-08-22 08:47:32', 1),
(139, 'jira jar', '250 gram', '2021-08-22 08:47:42', 1),
(140, 'Sorisar tel', '200 ml', '2021-09-08 09:13:16', 1),
(141, 'Sorisar tel', '80 ml', '2021-09-08 09:13:24', 1),
(142, 'dhngv', 'KDFJB', '2021-11-17 09:29:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_share_holder`
--

CREATE TABLE `tbl_share_holder` (
  `tbl_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `invest_taka` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `notice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE `tbl_user_role` (
  `rol_id` int(11) NOT NULL,
  `role_name` varchar(11) DEFAULT NULL,
  `role_status` int(11) DEFAULT NULL,
  `role_extra_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily_hisab`
--
ALTER TABLE `daily_hisab`
  ADD PRIMARY KEY (`daily_hisab_id`);

--
-- Indexes for table `everydaytask`
--
ALTER TABLE `everydaytask`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_baki`
--
ALTER TABLE `tbl_baki`
  ADD PRIMARY KEY (`dokandarer_id`);

--
-- Indexes for table `tbl_beton_vata`
--
ALTER TABLE `tbl_beton_vata`
  ADD PRIMARY KEY (`beton_vata_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_customer_main_daily_hisab`
--
ALTER TABLE `tbl_customer_main_daily_hisab`
  ADD PRIMARY KEY (`daily_hisab_main_id`);

--
-- Indexes for table `tbl_customer_main_data`
--
ALTER TABLE `tbl_customer_main_data`
  ADD PRIMARY KEY (`serial_no`);

--
-- Indexes for table `tbl_dealer_product`
--
ALTER TABLE `tbl_dealer_product`
  ADD PRIMARY KEY (`dealer_product_id`);

--
-- Indexes for table `tbl_dokandarer_baki`
--
ALTER TABLE `tbl_dokandarer_baki`
  ADD PRIMARY KEY (`baki_id`);

--
-- Indexes for table `tbl_dps`
--
ALTER TABLE `tbl_dps`
  ADD PRIMARY KEY (`serial_no`);

--
-- Indexes for table `tbl_hiv_patient`
--
ALTER TABLE `tbl_hiv_patient`
  ADD PRIMARY KEY (`hiv_patient_id`);

--
-- Indexes for table `tbl_index`
--
ALTER TABLE `tbl_index`
  ADD PRIMARY KEY (`tbl_index_id`);

--
-- Indexes for table `tbl_kisti_soncoy`
--
ALTER TABLE `tbl_kisti_soncoy`
  ADD PRIMARY KEY (`serial_no`);

--
-- Indexes for table `tbl_order_book`
--
ALTER TABLE `tbl_order_book`
  ADD PRIMARY KEY (`order_book_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_share_holder`
--
ALTER TABLE `tbl_share_holder`
  ADD PRIMARY KEY (`tbl_id`);

--
-- Indexes for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD PRIMARY KEY (`rol_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daily_hisab`
--
ALTER TABLE `daily_hisab`
  MODIFY `daily_hisab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `everydaytask`
--
ALTER TABLE `everydaytask`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_baki`
--
ALTER TABLE `tbl_baki`
  MODIFY `dokandarer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_beton_vata`
--
ALTER TABLE `tbl_beton_vata`
  MODIFY `beton_vata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `tbl_customer_main_daily_hisab`
--
ALTER TABLE `tbl_customer_main_daily_hisab`
  MODIFY `daily_hisab_main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_customer_main_data`
--
ALTER TABLE `tbl_customer_main_data`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `tbl_dealer_product`
--
ALTER TABLE `tbl_dealer_product`
  MODIFY `dealer_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `tbl_dokandarer_baki`
--
ALTER TABLE `tbl_dokandarer_baki`
  MODIFY `baki_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_dps`
--
ALTER TABLE `tbl_dps`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hiv_patient`
--
ALTER TABLE `tbl_hiv_patient`
  MODIFY `hiv_patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_index`
--
ALTER TABLE `tbl_index`
  MODIFY `tbl_index_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_kisti_soncoy`
--
ALTER TABLE `tbl_kisti_soncoy`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_order_book`
--
ALTER TABLE `tbl_order_book`
  MODIFY `order_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1193;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `tbl_share_holder`
--
ALTER TABLE `tbl_share_holder`
  MODIFY `tbl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
