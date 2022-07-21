-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 06:26 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin123', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'Dentist', 1, 1, 500, '2016-12-31', '09:25', '2017-01-01 00:29:02', 1, 0, ''),
(2, 'Homeopath', 4, 5, 700, '2017-01-11', '14:10', '2017-01-07 08:02:58', 0, 1, ''),
(3, 'Dentist', 1, 8, 500, '2018-09-26', '11:00 AM', '2018-09-13 18:00:46', 0, 1, ''),
(4, 'Dentist', 8, 8, 400, '2018-09-25', '12:00 PM', '2018-09-13 18:48:00', 1, 0, ''),
(5, 'Orthopedic Surgeon', 9, 8, 500, '2018-10-23', '8:00 PM', '2018-10-10 15:48:20', 1, 1, ''),
(6, 'Gynecologist/Obstetrician', 11, 8, 600, '2018-10-24', '1:15 PM', '2018-10-12 07:13:20', 1, 1, ''),
(7, 'Dentist', 8, 11, 400, '2018-11-16', '9:45 PM', '2018-11-14 15:34:20', 1, 1, ''),
(8, 'Dentist', 8, 11, 400, '2018-11-16', '9:45 PM', '2018-11-14 15:38:44', 1, 1, ''),
(9, 'Dentist', 1, 11, 500, '2018-11-16', '9:45 PM', '2018-11-14 15:39:43', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mobile_number`, `comment`) VALUES
(6, 'Imran Khan', 'imran.iit@gmail.com', 1812304050, ''),
(7, 'Rahat', 'raduan.cse@gmail.com', 1812304050, 'hii'),
(8, 'Raju', 'raju@gmail.com', 1812304050, 'I want to be a member.'),
(9, 'raju', 'raju@gmail.com', 1812304050, 'hii');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'momo@gmail.com', '6872edadd43c2a34f3ce1284f425a2f0', '2016-12-29 06:25:37', '04-01-2017 01:27:51 PM'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', ''),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', ''),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', ''),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', ''),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', ''),
(7, 'Demo test', 'abc ', 'xyz', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', ''),
(8, 'Dentist', 'Dr. Abid Hasan', 'Tangail Clinic', '400', 1912305080, 'abid@gmail.com', '7b47ec1a52f0704f4437070e077ae105', '2018-09-13 18:45:18', ''),
(9, 'Orthopedic Surgeon', 'Dr. Md. Delouar Hossen', 'Jamjam Hospital', '500', 1839101852, 'delour.sshmc@gmail.com', 'f3ca7999bff92f9640adf24ecfc073d3', '2018-10-10 15:43:56', ''),
(10, 'Pediatrician', 'Dr. Mukul', 'Seba clinic, Tangail', '500', 1712201864, 'dmmukul@gmail.com', 'ba5e3f51a592e97df7ad94b2c1cd68fd', '2018-10-10 15:45:33', ''),
(11, 'Gynecologist/Obstetrician', 'Dr. Afroza Akter', 'Tangail Medical College & Hospital', '600', 1915173494, 'afrozakumudini@gmail.com', 'a09417501e2cd205ade459841fb4a9d9', '2018-10-10 15:47:06', ''),
(12, 'General Physician', 'Dr helal', 'dhaka', '500', 1839101852, 'helal@gmail.com', 'b5356d03c83357a2c602d9a59a5d9c10', '2018-10-12 07:07:13', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 2, 'sarita@gmail.com', 0x30000000000000000000000000000000, '2017-01-06 05:53:31', '', 1),
(2, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:07', '', 0),
(3, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:37', '06/01/2017 07:36:45', 1),
(4, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:41:33', '12:11:46', 1),
(5, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:55:16', '06-01-2017 12:27:47 PM', 1),
(6, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:12', '', 0),
(7, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:42', '', 0),
(8, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:55', '', 0),
(9, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:05:54', '07-01-2017 01:36:28 PM', 1),
(10, 0, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-07 18:28:38', '', 0),
(11, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-13 18:46:44', '14-09-2018 12:19:20 AM', 1),
(12, 0, 'admin', 0x3a3a3100000000000000000000000000, '2018-09-25 14:12:09', '', 0),
(13, 0, 'admin', 0x3a3a3100000000000000000000000000, '2018-10-09 18:41:03', '', 0),
(14, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-09 18:43:01', '', 1),
(15, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-09 18:43:04', '', 1),
(16, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-09 18:54:51', '10-10-2018 12:28:09 AM', 1),
(17, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-09 18:58:13', '10-10-2018 12:31:19 AM', 1),
(18, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-10 15:21:10', '', 1),
(19, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-10 15:35:11', '10-10-2018 09:05:45 PM', 1),
(20, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-10 15:48:58', '10-10-2018 09:20:07 PM', 1),
(21, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-11 17:51:26', '11-10-2018 11:21:46 PM', 1),
(22, 0, 'delouar@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-11 17:52:17', '', 0),
(23, 0, 'delouar@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-11 17:52:31', '', 0),
(24, 9, 'delour.sshmc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-11 17:58:38', '11-10-2018 11:28:45 PM', 1),
(25, 9, 'delour.sshmc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-11 17:58:56', '11-10-2018 11:30:09 PM', 1),
(26, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-11 18:00:18', '11-10-2018 11:30:22 PM', 1),
(27, 0, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-11 18:00:26', '', 0),
(28, 9, 'delour.sshmc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-11 18:00:31', '11-10-2018 11:30:34 PM', 1),
(29, 9, 'delour.sshmc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-12 06:28:27', '12-10-2018 11:58:59 AM', 1),
(30, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-12 07:09:26', '12-10-2018 12:40:08 PM', 1),
(31, 0, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-11 15:29:54', '', 0),
(32, 0, 'delour.sshmc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-11 15:30:48', '', 0),
(33, 0, 'admin', 0x3a3a3100000000000000000000000000, '2018-11-11 15:35:23', '', 0),
(34, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-11 16:02:49', '', 1),
(35, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-14 15:37:01', '', 1),
(36, 1, 'momo@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-17 17:15:44', '17-11-2018 11:47:30 PM', 1),
(37, 0, ' momo@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-18 17:01:48', '', 0),
(38, 0, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-18 17:01:58', '', 0),
(39, 0, ' momo@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-18 17:02:16', '', 0),
(40, 1, 'momo@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-18 17:03:21', '18-11-2018 10:43:47 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', ''),
(2, 'General Physician', '2016-12-28 06:38:12', ''),
(3, 'Dermatologist', '2016-12-28 06:38:48', ''),
(4, 'Homeopath', '2016-12-28 06:39:26', ''),
(5, 'Ayurveda', '2016-12-28 06:39:51', ''),
(6, 'Dentist', '2016-12-28 06:40:08', ''),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', ''),
(9, 'Demo test', '2016-12-28 07:37:39', '28-12-2016 01:28:42 PM'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '07-01-2017 01:38:04 PM'),
(11, 'Pediatrician', '2018-10-10 15:37:41', '10-10-2018 09:08:35 PM'),
(12, 'Orthopedic Surgeon', '2018-10-10 15:41:46', ''),
(13, '', '2018-10-12 06:26:32', ''),
(14, 'pediatrician', '2018-10-12 07:05:55', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 1, '', 0x3a3a3100000000000000000000000000, '2017-01-06 07:02:28', '', 1),
(7, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:04:28', '', 1),
(8, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:41', '06-01-2017 12:38:09 PM', 0),
(9, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:08:01', '', 1),
(10, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:10:09', '06-01-2017 12:41:43 PM', 1),
(11, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:18', '07-01-2017 01:27:34 PM', 1),
(12, 0, 'asdad', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:44', '', 0),
(13, 0, 'xyz@test.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:59:43', '', 0),
(14, 5, 'amit12@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:00:44', '07-01-2017 01:34:19 PM', 1),
(15, 0, 'admin', 0x3a3a3100000000000000000000000000, '2018-07-20 20:48:08', '', 0),
(16, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2018-07-20 20:49:06', '21-07-2018 02:19:21 AM', 1),
(17, 0, 'admin', 0x3a3a3100000000000000000000000000, '2018-07-20 20:49:59', '', 0),
(18, 0, 'admin', 0x3a3a3100000000000000000000000000, '2018-07-20 20:50:20', '21-07-2018 03:07:29 AM', 0),
(19, 0, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2018-07-20 21:39:36', '', 0),
(20, 0, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2018-07-20 21:39:38', '', 0),
(21, 0, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-07 18:21:05', '', 0),
(22, 0, 'raduan.cse@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-13 17:57:23', '', 0),
(23, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-13 17:59:47', '13-09-2018 11:32:15 PM', 1),
(24, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-13 18:47:29', '', 1),
(25, 0, 'admin', 0x3a3a3100000000000000000000000000, '2018-09-25 14:12:47', '', 0),
(26, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-09 18:44:33', '10-10-2018 12:15:06 AM', 1),
(27, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-09 18:54:36', '', 1),
(28, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-10 15:06:41', '10-10-2018 08:37:54 PM', 1),
(29, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-10 15:21:33', '10-10-2018 08:54:26 PM', 1),
(30, 0, 'admin', 0x3a3a3100000000000000000000000000, '2018-10-10 15:24:31', '', 0),
(31, 0, 'admin', 0x3a3a3100000000000000000000000000, '2018-10-10 15:24:37', '', 0),
(32, 0, 'admin', 0x3a3a3100000000000000000000000000, '2018-10-10 15:24:50', '', 0),
(33, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-10 15:47:35', '10-10-2018 09:18:46 PM', 1),
(34, 9, 'raju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-11 17:43:25', '11-10-2018 11:13:50 PM', 1),
(35, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-12 06:29:26', '', 1),
(36, 0, 'raju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-12 06:29:59', '', 0),
(37, 9, 'raju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-12 06:30:16', '12-10-2018 12:00:34 PM', 1),
(38, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-12 06:30:38', '12-10-2018 12:00:46 PM', 1),
(39, 0, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-12 07:12:23', '', 0),
(40, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-12 07:12:29', '12-10-2018 12:43:46 PM', 1),
(41, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-11 13:18:10', '11-11-2018 08:56:49 PM', 1),
(42, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-11 15:33:56', '', 1),
(43, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-11 15:38:44', '', 1),
(44, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-11 15:54:40', '', 1),
(45, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-14 15:32:53', '', 1),
(46, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-14 15:35:55', '', 0),
(47, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-14 16:09:28', '', 1),
(48, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-15 17:25:33', '', 1),
(49, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-17 16:29:30', '', 1),
(50, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-17 17:13:27', '', 0),
(51, 0, 'momo@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-17 17:14:41', '', 0),
(52, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-17 18:20:32', '17-11-2018 11:54:01 PM', 1),
(53, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-17 18:25:23', '17-11-2018 11:56:03 PM', 1),
(54, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-18 17:02:32', '18-11-2018 11:22:14 PM', 1),
(55, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-19 16:13:33', '', 1),
(56, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-19 17:05:28', '', 1),
(57, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-19 17:15:18', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `phone`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(8, 'Raduan', NULL, '13/b,dhanmondi,', 'Dhaka', 'male', 'raduan.iitju@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-13 17:59:24', ''),
(9, 'Raju', NULL, '23/B, Mirpur.', 'Dhaka', 'male', 'raju@gmail.com', '67719c4c2dae2189c6a83110e9461c15', '2018-10-11 17:43:00', ''),
(10, 'Habib', NULL, '12 dhamray', 'Dhaka', 'male', 'habib@gmail.com', '1391921ec73a2f5dff54e075bbda7487', '2018-10-12 07:11:15', ''),
(11, 'Al Mamun', NULL, 'Vuapur', 'Dhaka', 'male', 'mamunboss@gmail.com', '6872edadd43c2a34f3ce1284f425a2f0', '2018-11-11 15:54:12', ''),
(12, '12121', '01913705269', 'asas', 'asas', 'female', 'almamun214@gmail.com', '4297f44b13955235245b2497399d7a93', '2018-11-18 18:06:22', ''),
(13, 'sds', '01913705269', 'sds', 'qwq', 'female', 'almamun2133334@gmail.com', '4297f44b13955235245b2497399d7a93', '2018-11-18 18:10:02', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `appointment` int(11) DEFAULT NULL,
  `prescription_image` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `appointment`, `prescription_image`, `doctorId`, `userId`, `date`) VALUES
(1, 7, '../images/download (1).jpg', 8, 11, '2018-11-15 20:08:40'),
(2, 7, '../images/download.png', 8, 11, '2018-11-15 20:08:46'),
(3, 7, '../images/download.jpg', 8, 11, '2018-11-15 20:12:21'),
(4, 7, '../images/45658230_992457724296099_7217656540512124928_n.jpg', 8, 11, '2018-11-17 16:57:05'),
(5, 7, '../images/download.png', 8, 11, '2018-11-17 16:57:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
