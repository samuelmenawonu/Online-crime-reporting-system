-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 30, 2020 at 01:53 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crime`
--

-- --------------------------------------------------------

--
-- Table structure for table `case_types`
--

DROP TABLE IF EXISTS `case_types`;
CREATE TABLE IF NOT EXISTS `case_types` (
  `case_types_id` int(6) NOT NULL AUTO_INCREMENT,
  `case_name` varchar(255) NOT NULL,
  PRIMARY KEY (`case_types_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `case_types`
--

INSERT INTO `case_types` (`case_types_id`, `case_name`) VALUES
(1, 'Homicide'),
(2, 'Arson'),
(3, 'Robbery'),
(4, 'Rape'),
(5, 'Domestica'),
(0, 'No Case'),
(7, 'Car hjacking'),
(8, 'Jailwalking'),
(9, 'Public sex');

-- --------------------------------------------------------

--
-- Table structure for table `command_dept`
--

DROP TABLE IF EXISTS `command_dept`;
CREATE TABLE IF NOT EXISTS `command_dept` (
  `cd_id` int(11) NOT NULL AUTO_INCREMENT,
  `command_id` int(6) NOT NULL,
  `department_id` int(6) NOT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `command_dept`
--

INSERT INTO `command_dept` (`cd_id`, `command_id`, `department_id`) VALUES
(5, 35, 1),
(6, 35, 2),
(7, 35, 6),
(8, 35, 7),
(9, 35, 8),
(10, 35, 9);

-- --------------------------------------------------------

--
-- Table structure for table `crimes`
--

DROP TABLE IF EXISTS `crimes`;
CREATE TABLE IF NOT EXISTS `crimes` (
  `crime_id` int(6) NOT NULL AUTO_INCREMENT,
  `case_types_id` int(6) NOT NULL,
  `crime_addr` varchar(225) NOT NULL,
  `crime_street` varchar(25) NOT NULL,
  `crime_town` varchar(25) NOT NULL DEFAULT 'Aberdeen',
  `crime_desc` text NOT NULL,
  `ip_addr` varchar(12) NOT NULL,
  `mac_addr` text NOT NULL,
  `location` varchar(225) NOT NULL,
  `browser` varchar(225) NOT NULL,
  `model` varchar(225) NOT NULL,
  `reporter_full_name` varchar(225) NOT NULL,
  `reporter_address` varchar(225) NOT NULL,
  `reporter_street` varchar(25) NOT NULL,
  `reporter_town` varchar(25) NOT NULL,
  `phone` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `police_id` int(6) DEFAULT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Pending',
  `solved` varchar(3) NOT NULL,
  PRIMARY KEY (`crime_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crimes`
--

INSERT INTO `crimes` (`crime_id`, `case_types_id`, `crime_addr`, `crime_street`, `crime_town`, `crime_desc`, `ip_addr`, `mac_addr`, `location`, `browser`, `model`, `reporter_full_name`, `reporter_address`, `reporter_street`, `reporter_town`, `phone`, `created_at`, `police_id`, `status`, `solved`) VALUES
(1, 1, 'hdidfihf', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'uifhfhf', 'hdhhdh', '', '', 89798774, '2020-07-04 23:55:32', 0, 'pending', '0'),
(2, 1, 'sfjhfjkhfjkjk', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'cbbv/kjbxbvx', 'jn/cxnvnvn', '', '', 908490, '2020-07-05 00:13:32', 0, 'pending', '0'),
(3, 4, 'jcbnnlnfg', '', 'Aberdeen', 'The cat was playing in the garden.\r\nbcjvjnkncnxfngkfnfkgfng', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'dflbjbbbbbbjdb', 'nj/sknfnfkn', '', '', 349879, '2020-07-05 00:21:16', 0, 'pending', '0'),
(4, 1, 'hjdjdfkndndknkd', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'jnojkdsmkv', 'siaavamvov', '', '', 4584894, '2020-07-05 20:53:26', 0, 'pending', '0'),
(5, 1, 'dhjdbdfjkbdj', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nznccn', 'bnvnfn', '', '', 78478, '2020-07-05 21:20:16', 0, 'pending', '0'),
(6, 3, 'mmb b', '', 'Aberdeen', 'The cat was playing in the garden.\r\nfd bm bm mb mkb ', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'mc d vd ', 'kmkmkomfo', '', '', 99099909, '2020-07-05 22:05:38', 0, 'pending', '0'),
(7, 3, 'mmb b', '', 'Aberdeen', 'The cat was playing in the garden.\r\nfd bm bm mb mkb ', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'mc d vd ', 'kmkmkomfo', '', '', 99099909, '2020-07-05 22:15:56', 0, 'pending', '0'),
(8, 3, 'mmb b', '', 'Aberdeen', 'The cat was playing in the garden.\r\nfd bm bm mb mkb ', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'mc d vd ', 'kmkmkomfo', '', '', 99099909, '2020-07-05 22:16:45', 0, 'pending', '0'),
(9, 3, 'nncndc ccc n', '', 'Aberdeen', 'The cat was playing in the garden.\r\njnknnnfff', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', '', '', 87934, '2020-07-06 22:41:52', 0, 'pending', '0'),
(10, 3, 'nncndc ccc n', '', 'Aberdeen', 'The cat was playing in the garden.\r\njnknnnfff', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', '', '', 87934, '2020-07-06 22:45:13', 0, 'pending', '0'),
(11, 1, '22 ALade', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'sahdnchc', 'ggxhkjkjvh', '', '', 423267, '2020-07-07 03:16:27', 0, 'pending', '0'),
(12, 1, '22 ALade', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'sahdnchc', 'ggxhkjkjvh', '', '', 423267, '2020-07-07 03:19:35', 0, 'pending', '0'),
(13, 4, 'bjbjbjkbjkb', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', '', '', 87934, '2020-07-07 03:24:02', 0, 'pending', '0'),
(14, 4, 'bjbjbjkbjkb', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', '', '', 87934, '2020-07-07 03:26:50', 0, 'pending', '0'),
(15, 4, 'bjbjbjkbjkb', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', '', '', 87934, '2020-07-07 03:33:05', 0, 'pending', '0'),
(16, 1, 'bjbjbjkbjkb', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', '', '', 44444, '2020-07-07 17:12:02', 0, 'pending', '0'),
(17, 1, 'bjbjbjkbjkb', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', '', '', 44444, '2020-07-07 17:12:17', 0, 'pending', '0'),
(18, 1, 'bjbjbjkbjkb', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', '', '', 44444, '2020-07-07 17:12:42', 0, 'pending', '0'),
(19, 1, 'bjbjbjkbjkb', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'efefef', '', '', 87934, '2020-07-07 22:02:46', 0, 'pending', '0'),
(20, 1, 'bjbjbjkbjkb', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'efefef', '', '', 87934, '2020-07-07 22:06:32', 0, 'pending', '0'),
(21, 1, 'bjbjbjkbjkb', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'efefef', '', '', 87934, '2020-07-07 22:07:07', 0, 'pending', '0'),
(22, 1, 'bjbjbjkbjkb', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'efefef', '', '', 87934, '2020-07-08 01:53:44', 0, 'pending', '0'),
(23, 1, '22 ALade', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'vnnfndfn;dv', 'uiiohohig', '', '', 99099909, '2020-07-08 01:54:05', 0, 'pending', '0'),
(24, 1, 'nncndc ccc n', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'vvhjufyfyf', 'uiiohohig', '', '', 87934, '2020-07-08 01:54:50', 0, 'pending', '0'),
(25, 1, 'nncndc ccc n', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', '4446546456', 'efefef', '', '', 99099909, '2020-07-08 01:59:25', 0, 'pending', '0'),
(26, 1, 'hfi', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'uiiohohig', '', '', 87934, '2020-07-08 08:52:16', 0, 'pending', '0'),
(27, 1, 'hdidfihf', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'vvhjufyfyf', 'uiiohohig', '', '', 87934, '2020-07-08 09:06:16', 0, 'pending', '0'),
(28, 1, 'hdidfihf', '', 'Aberdeen', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'bdbjdjb', '', '', 4555, '2020-07-08 14:50:42', 0, 'pending', '0'),
(29, 1, 'bjbjbjkbjkb', 'Queen Street', '', 'm n  n nbhjbj bjj.jnnn jnn  jjnjnnn ooojjj nnnnnnnn\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'nkkncnnjcx', 'cnncnlCn', 'jnkknjn', 'lkmjkejjn', 990099, '2020-07-28 03:08:57', 0, 'pending', '0'),
(30, 4, '115 Victoria Rd', '115 Victoria Rd', 'Aberdeen', '\r\nvvredzezwxxfxfx', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'jytr', 'bdbjdjb', 'jnkknjn', 'lkmjkejjn', 87934, '2020-07-28 03:18:41', 0, 'pending', '0'),
(31, 5, 'hfi', 'Queen Street', 'Aberdeen', '\r\nvddttdhvcfgvvjv    guguyftfyttujljl jjgjggug', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'vnnfndfn;dv', 'bdbjdjb', 'jnkknjn', 'lkmjkejjn', 44444, '2020-07-28 19:40:54', 1, 'pending', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

DROP TABLE IF EXISTS `police`;
CREATE TABLE IF NOT EXISTS `police` (
  `police_id` int(6) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `department_id` int(6) DEFAULT NULL,
  `police_command_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`police_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`police_id`, `Name`, `role`, `department_id`, `police_command_id`) VALUES
(1, 'MESANME', '', 2, 1),
(2, 'Bambi', 'Sgt', 0, 1),
(3, 'Bambi', 'Sgt', 0, 1),
(4, 'Babi', 'Sgt', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `police_command_areas`
--

DROP TABLE IF EXISTS `police_command_areas`;
CREATE TABLE IF NOT EXISTS `police_command_areas` (
  `command_id` int(6) NOT NULL AUTO_INCREMENT,
  `command_name` varchar(255) NOT NULL,
  `command_division` varchar(25) NOT NULL DEFAULT 'North Division',
  `street` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `postcode` varchar(8) NOT NULL,
  PRIMARY KEY (`command_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_command_areas`
--

INSERT INTO `police_command_areas` (`command_id`, `command_name`, `command_division`, `street`, `town`, `postcode`) VALUES
(1, 'Police Station', 'North Division', 'Queen Street', 'Abaerdeen', 'AB10 1ZA'),
(2, 'Police Station', 'North Division', '20 Winhill Rd', 'Aberdeen', 'AB11 7XH'),
(3, 'Police Station', 'North', '115', 'Aberdeen', 'AB11'),
(4, 'Police', 'Northide', 'Railways', 'Aberdeen', 'AB9'),
(7, 'Seaton', 'North', 'Seaton', 'Aberdeen', 'AB2276'),
(8, 'Police Station', 'North Division', 'FairView Street, 7A Greenfern PI', 'Aberdeen', 'AB16 6JR'),
(10, 'POLICE SOUTH', 'NORTH DIVISION', 'SEATON', 'ABERDEEN', 'AB1 46V'),
(11, 'POLICE SOUTH', 'NORTH DIVISION', 'DANSVILLE', 'ABERDEEN', 'AB1 46V'),
(12, 'POLICE SOUTH', 'NORTH DIVISION', 'DANSVILLE', 'ABERDEEN', 'AB1 76H'),
(13, 'vEHRT', 'gJSDH', 'N FVJC', 'IUEIE', 'HHIFIH'),
(14, 'POLICE SOUTH', 'NORTH DIVISION', 'DANSVILLE', 'IUEIE', 'AB1 76H'),
(15, 'POLICE SOUTH', 'NORTH DIVISION', 'FAIRVILLE', 'IOWA', 'AB7 67JJ'),
(16, 'r', 'r', 'r', 'r', 'r'),
(17, 'Police sta', 'Nrotm', 'darling', 'Aberdreen', 'AB1 48V'),
(18, 'Police sta', 'Nrotm', 'darling', 'IUEIE', 'AB1 48V'),
(19, 'Police sta', 'NORTH DIVISION', 'SEATON', 'jn', 'AB1 46V'),
(20, 'Police sta', 'Nrotm', 'DANSVILLE', 'ABERDEEN', 'AB1 48V'),
(21, 'POLICE SOUTH', 'NORTH DIVISION', 'darling', 'ABERDEEN', 'AB1 76H'),
(22, 'POLICE SOUTH', 'NORTH DIVISION', 'DANSVILLE', 'jn', 'AB1 48V'),
(23, 'POLICE SOUTH', 'NORTH DIVISION', 'FAIRVILLE', 'jn', 'AB1 76H'),
(24, 'POLICE SOUTH', 'NORTH DIVISION', 'DANSVILLEfrew', 'ABERDEEN', 'AB1 48V'),
(25, 'POLICE SOUTH', 'NORTH DIVISION', 'DANSVILLEfrew', 'ABERDEEN', 'AB1 48V'),
(26, 'POLICE SOUTH', 'NORTH DIVISION', 'DANSVILLEfrew', 'ABERDEEN', 'AB1 48V'),
(27, 'POLICE SOUTH', 'NORTH DIVISION', 'DANSVILLEfrew', 'ABERDEEN', 'AB1 48V'),
(28, 'POLICE SOUTH', 'NORTH DIVISION', 'DANSVILLEfrew', 'ABERDEEN', 'AB1 48V'),
(29, 'POLICE SOUTH', 'NORTH DIVISION', 'DANSVILLEfrew', 'ABERDEEN', 'AB1 48V'),
(30, 'POLICE SOUTH', 'NORTH DIVISION', 'DANSVILLEfrew', 'ABERDEEN', 'AB1 48V'),
(31, 'POLICE SOUTH', 'NORTH DIVISION', 'DANSVILLEfrew', 'ABERDEEN', 'AB1 48V'),
(32, 'POLICE SOUTH', 'NORTH DIVISION', 'DANSVILLEfrew', 'ABERDEEN', 'AB1 48V'),
(33, 'POLICE SOUTH', 'NORTH DIVISION', 'SEATONhjy', 'ABERDEENjhbh', 'AB1 46V'),
(35, 'Police Station', 'NORTH DIVISION', 'SEATON', 'ABERDEEN', 'AB1 46V');

-- --------------------------------------------------------

--
-- Table structure for table `police_department`
--

DROP TABLE IF EXISTS `police_department`;
CREATE TABLE IF NOT EXISTS `police_department` (
  `department_id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `case_types_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_department`
--

INSERT INTO `police_department` (`department_id`, `name`, `case_types_id`) VALUES
(0, 'Not Assigned', 0),
(1, 'Robbery', 2),
(2, 'Burglary', 2),
(3, 'Robbery', 2),
(4, 'Burglary', 2),
(6, 'MESANME', 1),
(7, 'PYTHON', 4),
(8, 'Kidnapping', 4),
(9, 'Bribery', 5),
(10, 'Kidnapping', 4),
(11, 'Bribery', 5);

-- --------------------------------------------------------

--
-- Table structure for table `reporter_files`
--

DROP TABLE IF EXISTS `reporter_files`;
CREATE TABLE IF NOT EXISTS `reporter_files` (
  `reporter_files_id` int(11) NOT NULL AUTO_INCREMENT,
  `crime_id` int(6) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  PRIMARY KEY (`reporter_files_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reporter_files`
--

INSERT INTO `reporter_files` (`reporter_files_id`, `crime_id`, `file_path`) VALUES
(1, 1, 'xn n n nxn n'),
(2, 2, 'cbjbcxjbjbxjx'),
(3, 1, 'xn n n nxn n'),
(4, 2, 'cbjbcxjbjbxjx'),
(5, 14, 'uploads/IMG-20190327-WA0002.jpg'),
(6, 15, 'uploads/IMG-20190327-WA0002.jpg'),
(7, 18, 'uploads/eng smith 20181215_230309 - Copy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Sammy', 'sammyd'),
(2, 'Sammy', 'sammyd'),
(3, 'sammyre', '$2y$10$/9JoFQdXl0IaGVi3748wl.M9QnHM7c7YH1pkz/RSw6E4OQ4atnp5C'),
(4, 'asphalt', '$2y$10$Q8WGM4rZxhmFPlNhhFIhhOx4szzAniioYODmVkeHPQiCp2jl9FZO2');

-- --------------------------------------------------------

--
-- Table structure for table `wanted`
--

DROP TABLE IF EXISTS `wanted`;
CREATE TABLE IF NOT EXISTS `wanted` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `crime_id` int(11) NOT NULL,
  `want_name` varchar(25) NOT NULL,
  `want_age` int(11) NOT NULL,
  `descrption` text NOT NULL,
  `last_seen` varchar(40) NOT NULL,
  `want_date` date NOT NULL,
  `image` int(11) NOT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
