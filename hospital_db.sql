-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3304
-- Generation Time: Mar 31, 2019 at 08:04 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roles_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admins_ibfk_1` (`roles_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `full_name`, `email`, `password`, `roles_id`) VALUES
(1, 'Shehryar Khan', 'shehryarkn@gmail.com', '12345', 1),
(2, 'Ahsan Saeed', 'ahsansaeed067@gmail.com', '12345', 2),
(3, 'Shayan tahir', 'shayan@codinginfinite.com', '12345', 6);


-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gender` int(11) NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `email`, `password`, `phone`, `gender`, `specialist`, `created`) VALUES
(1, 'Jean Pierre', 'ahsansaeed067@gmail.com', 'Vm0xMFlWbFdWWGhVYmxKWFltdHdVRlpzV21GWFJscHlWV3RLVUZWVU1Eaz0=', '03218878961', 0, 'Heart', '2018-05-01 13:07:24'),
(2, 'Tangue', 'tangue@yahoo.fr', 'gallinocoq', '3889400697', 0, 'medecin', '2019-03-30 19:19:02'),
(3, 'sofia', 'sofiamarta@gmail.com', 'sofia@', '3889400697', 0, 'medecin', '2019-03-30 19:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `link_roles_menus`
--

DROP TABLE IF EXISTS `link_roles_menus`;
CREATE TABLE IF NOT EXISTS `link_roles_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roles_id` int(11) NOT NULL,
  `menus_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_id` (`menus_id`),
  KEY `roles_id` (`roles_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link_roles_menus`
--

INSERT INTO `link_roles_menus` (`id`, `roles_id`, `menus_id`) VALUES
(47, 2, 1),
(48, 2, 2),
(49, 2, 4),
(50, 2, 5),
(51, 2, 6),
(52, 2, 7),
(65, 1, 1),
(66, 1, 2),
(67, 1, 3),
(68, 1, 4),
(69, 1, 5),
(70, 1, 6),
(71, 1, 7),
(76, 6, 1),
(77, 6, 2),
(78, 6, 4),
(79, 1, 8),
(80, 1, 9),
(81, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `icon`, `url`, `parent_id`) VALUES
(1, 'Dashboard', 'fa fa-dashboard', '/Home/Index', 0),
(2, 'Admins', 'fa fa-users', '#', 0),
(3, 'Create Admin', 'fa fa-plus', '/Admins/Create', 2),
(4, 'Manage Admins', 'fa fa-users', '/Admins/Index', 2),
(5, 'Roles', 'fa fa-lock', '#', 0),
(6, 'Create Role', 'fa fa-lock', '/Roles/Create', 5),
(7, 'Manage Roles', 'fa fa-lock', '/Roles/Index', 5),
(8, 'Doctors', 'fa fa-users', '#', 0),
(9, 'Create Doctors', 'fa fa-plus', '/Doctors/Create', 8),
(10, 'Manage Doctors', 'fa fa-users', '/Doctors/Index', 8);

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

DROP TABLE IF EXISTS `nurses`;
CREATE TABLE IF NOT EXISTS `nurses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurses`
--

INSERT INTO `nurses` (`id`, `name`, `email`, `password`, `phone`, `created`) VALUES
(1, 'Ahsan', 'ahsansaeed067@gmail.com', 'MTIzNDU=', '03218878961', '2018-06-27 13:39:31'),
(2, '2', 'ABC', 'WFla', '123456789', '2018-07-06 13:50:24'),
(3, 'Shehryar khan', 'shehryar@appryx.com', 'YXBwcnl4', '3433243243', '2018-07-06 18:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
CREATE TABLE IF NOT EXISTS `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gender` int(11) NOT NULL,
  `health_condition` varchar(255) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `nurse_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `nurse_id` (`nurse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `phone`, `gender`, `health_condition`, `doctor_id`, `nurse_id`, `created`) VALUES
(6, 'hjj', '9988596666', 1, 'vbjbb', 1, 1, '2018-06-26 13:12:18'),
(9, '2', '123456789', 1, 'OK', 1, 1, '2018-07-06 13:59:25'),
(10, '2', '123456789', 1, 'OK', 1, 1, '2018-07-06 14:13:13'),
(11, 'shehryar', '123456789', 1, 'OK', 1, 1, '2018-07-06 17:36:08'),
(14, 'Coding Infinite', '3433243243', 0, 'asd', 1, 1, '2018-07-06 18:39:42'),
(15, 'Coding Infinite', '3433243243', 0, 'asd', 1, 1, '2018-07-06 18:40:07'),
(16, 'Coding Infinite', '3433243243', 0, 'asd', 1, 1, '2018-07-06 18:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `description`) VALUES
(1, 'Manager', 'Super Admin with all rights...'),
(2, 'Supervisor', 'Can View Dashboard, Admins & Roles'),
(6, 'Developer', 'Can View Dashboard &  Admins List');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `link_roles_menus`
--
ALTER TABLE `link_roles_menus`
  ADD CONSTRAINT `link_roles_menus_ibfk_1` FOREIGN KEY (`menus_id`) REFERENCES `menus` (`id`),
  ADD CONSTRAINT `link_roles_menus_ibfk_2` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `patients_ibfk_2` FOREIGN KEY (`nurse_id`) REFERENCES `nurses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
