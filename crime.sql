-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 09, 2020 at 04:39 PM
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
  `department_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`case_types_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `case_types`
--

INSERT INTO `case_types` (`case_types_id`, `case_name`, `department_id`) VALUES
(1, 'Homicide', NULL),
(2, 'Arson', NULL),
(3, 'Robbery', NULL),
(4, 'Rape', NULL),
(5, 'Domestic violence', NULL),
(6, 'Burglary', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crimes`
--

DROP TABLE IF EXISTS `crimes`;
CREATE TABLE IF NOT EXISTS `crimes` (
  `crime_id` int(6) NOT NULL AUTO_INCREMENT,
  `case_types_id` int(6) NOT NULL,
  `crime_addr` varchar(225) NOT NULL,
  `crime_desc` text NOT NULL,
  `ip_addr` varchar(12) NOT NULL,
  `mac_addr` text NOT NULL,
  `location` varchar(225) NOT NULL,
  `browser` varchar(225) NOT NULL,
  `model` varchar(225) NOT NULL,
  `reporter_full_name` varchar(225) NOT NULL,
  `reporter_address` varchar(225) NOT NULL,
  `phone` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`crime_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crimes`
--

INSERT INTO `crimes` (`crime_id`, `case_types_id`, `crime_addr`, `crime_desc`, `ip_addr`, `mac_addr`, `location`, `browser`, `model`, `reporter_full_name`, `reporter_address`, `phone`, `created_at`) VALUES
(1, 1, 'hdidfihf', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'uifhfhf', 'hdhhdh', 89798774, '2020-07-04 23:55:32'),
(2, 1, 'sfjhfjkhfjkjk', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'cbbv/kjbxbvx', 'jn/cxnvnvn', 908490, '2020-07-05 00:13:32'),
(3, 4, 'jcbnnlnfg', 'The cat was playing in the garden.\r\nbcjvjnkncnxfngkfnfkgfng', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'dflbjbbbbbbjdb', 'nj/sknfnfkn', 349879, '2020-07-05 00:21:16'),
(4, 1, 'hjdjdfkndndknkd', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'jnojkdsmkv', 'siaavamvov', 4584894, '2020-07-05 20:53:26'),
(5, 1, 'dhjdbdfjkbdj', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nznccn', 'bnvnfn', 78478, '2020-07-05 21:20:16'),
(6, 3, 'mmb b', 'The cat was playing in the garden.\r\nfd bm bm mb mkb ', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'mc d vd ', 'kmkmkomfo', 99099909, '2020-07-05 22:05:38'),
(7, 3, 'mmb b', 'The cat was playing in the garden.\r\nfd bm bm mb mkb ', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'mc d vd ', 'kmkmkomfo', 99099909, '2020-07-05 22:15:56'),
(8, 3, 'mmb b', 'The cat was playing in the garden.\r\nfd bm bm mb mkb ', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'mc d vd ', 'kmkmkomfo', 99099909, '2020-07-05 22:16:45'),
(9, 3, 'nncndc ccc n', 'The cat was playing in the garden.\r\njnknnnfff', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', 87934, '2020-07-06 22:41:52'),
(10, 3, 'nncndc ccc n', 'The cat was playing in the garden.\r\njnknnnfff', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', 87934, '2020-07-06 22:45:13'),
(11, 1, '22 ALade', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'sahdnchc', 'ggxhkjkjvh', 423267, '2020-07-07 03:16:27'),
(12, 1, '22 ALade', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'sahdnchc', 'ggxhkjkjvh', 423267, '2020-07-07 03:19:35'),
(13, 4, 'bjbjbjkbjkb', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', 87934, '2020-07-07 03:24:02'),
(14, 4, 'bjbjbjkbjkb', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', 87934, '2020-07-07 03:26:50'),
(15, 4, 'bjbjbjkbjkb', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', 87934, '2020-07-07 03:33:05'),
(16, 1, 'bjbjbjkbjkb', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', 44444, '2020-07-07 17:12:02'),
(17, 1, 'bjbjbjkbjkb', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', 44444, '2020-07-07 17:12:17'),
(18, 1, 'bjbjbjkbjkb', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'cnncnlCn', 44444, '2020-07-07 17:12:42'),
(19, 1, 'bjbjbjkbjkb', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'efefef', 87934, '2020-07-07 22:02:46'),
(20, 1, 'bjbjbjkbjkb', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'efefef', 87934, '2020-07-07 22:06:32'),
(21, 1, 'bjbjbjkbjkb', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'efefef', 87934, '2020-07-07 22:07:07'),
(22, 1, 'bjbjbjkbjkb', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'efefef', 87934, '2020-07-08 01:53:44'),
(23, 1, '22 ALade', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'vnnfndfn;dv', 'uiiohohig', 99099909, '2020-07-08 01:54:05'),
(24, 1, 'nncndc ccc n', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'vvhjufyfyf', 'uiiohohig', 87934, '2020-07-08 01:54:50'),
(25, 1, 'nncndc ccc n', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', '4446546456', 'efefef', 99099909, '2020-07-08 01:59:25'),
(26, 1, 'hfi', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'uiiohohig', 87934, '2020-07-08 08:52:16'),
(27, 1, 'hdidfihf', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'vvhjufyfyf', 'uiiohohig', 87934, '2020-07-08 09:06:16'),
(28, 1, 'hdidfihf', 'The cat was playing in the garden.\r\n', '::1', '90-48-9A-A4-F2-9C   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', 'nkkncnnjcx', 'bdbjdjb', 4555, '2020-07-08 14:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

DROP TABLE IF EXISTS `police`;
CREATE TABLE IF NOT EXISTS `police` (
  `police_id` int(6) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `department_id` int(6) NOT NULL,
  PRIMARY KEY (`police_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_command_areas`
--

INSERT INTO `police_command_areas` (`command_id`, `command_name`, `command_division`, `street`, `town`, `postcode`) VALUES
(1, 'Police Station', 'North Division', 'Queen Street', 'Abaerdeen', 'AB10 1ZA'),
(2, 'Police Station', 'North Division', '20 Winhill Rd', 'Aberdeen', 'AB11 7XH'),
(3, 'Police Station', 'North Division', '115 Victoria Rd', 'Aberdeen', 'AB11 9LX'),
(4, 'Police Station', 'North Division', 'Railway Station, Guild Street', 'Aberdeen', 'AB9 2DQ'),
(5, 'Police Station', 'North Division', 'Nelson Street', 'Aberdeen', 'AB24 5EQ'),
(6, 'Police Station', 'North Division', '230 Abbotswell Cres', 'Aberdeen', 'AB12 3JD'),
(7, 'Seaton Police Station', 'North Division', 'Seaton Police Station PI E', 'Aberdeen', 'AB22 8ZP'),
(8, 'Police Station', 'North Division', 'FairView Street, 7A Greenfern PI', 'Aberdeen', 'AB16 6JR');

-- --------------------------------------------------------

--
-- Table structure for table `police_department`
--

DROP TABLE IF EXISTS `police_department`;
CREATE TABLE IF NOT EXISTS `police_department` (
  `department_id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `police_command_id` int(6) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(7, 18, 'uploads/IMG-20190327-WA0003.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
