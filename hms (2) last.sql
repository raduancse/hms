-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2018 at 09:27 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(8, 'Dentist', 8, 11, 400, '2018-11-16', '9:45 PM', '2018-11-14 15:38:44', 1, 0, ''),
(9, 'Dentist', 1, 11, 500, '2018-11-16', '9:45 PM', '2018-11-14 15:39:43', 1, 1, ''),
(10, 'Ear-Nose-Throat (Ent) Specialist', 13, 1, 700, '2018-11-28', '12:15 AM', '2018-11-22 18:02:54', 1, 1, ''),
(11, 'General Physician', 14, 8, 700, '2018-11-30', '12:45 AM', '2018-11-22 18:43:55', 1, 1, ''),
(12, 'General Physician', 6, 8, 2500, '2018-11-27', '1:15 AM', '2018-11-22 19:08:53', 1, 1, ''),
(13, 'Ear-Nose-Throat (Ent) Specialist', 13, 8, 700, '2018-11-30', '1:30 AM', '2018-11-22 19:19:26', 1, 1, ''),
(14, 'Pediatrician', 18, 8, 700, '2018-11-24', '1:45 AM', '2018-11-22 19:40:13', 1, 1, ''),
(15, 'Gynecologist/Obstetrician', 11, 8, 600, '2018-11-28', '7:00 PM', '2018-11-23 04:04:19', 1, 1, ''),
(16, 'General Physician', 3, 8, 1200, '2018-12-27', '10:15 AM', '2018-11-23 04:10:11', 1, 1, ''),
(17, 'Ayurveda', 5, 12, 8050, '2018-11-28', '10:15 AM', '2018-11-23 04:12:37', 1, 1, ''),
(18, 'Ear-Nose-Throat (Ent) Specialist', 13, 12, 700, '2018-11-29', '10:15 AM', '2018-11-23 04:14:43', 1, 1, ''),
(19, 'Pediatrician', 10, 12, 500, '2018-11-30', '10:30 AM', '2018-11-23 04:19:58', 1, 1, ''),
(20, 'Orthopedic Surgeon', 17, 8, 700, '2018-11-24', '10:30 AM', '2018-11-23 04:21:20', 1, 1, ''),
(21, 'Dentist', 1, 8, 500, '2018-11-29', '10:30 AM', '2018-11-23 04:23:01', 1, 1, ''),
(22, 'General Physician', 12, 12, 500, '2018-11-30', '10:30 AM', '2018-11-23 04:25:54', 1, 1, ''),
(23, 'General Physician', 6, 11, 2500, '2018-11-30', '11:00 AM', '2018-11-23 04:50:52', 1, 1, ''),
(24, 'Dentist', 8, 8, 400, '2018-11-29', '11:00 AM', '2018-11-23 05:01:17', 1, 1, ''),
(25, 'Gynecologist/Obstetrician', 11, 13, 600, '2018-11-30', '11:15 AM', '2018-11-23 05:10:00', 1, 1, ''),
(26, 'Pediatrician', 10, 8, 500, '2018-11-30', '2:15 PM', '2018-11-29 20:05:27', 1, 1, ''),
(27, 'General Physician', 14, 14, 700, '2018-12-29', '11:15 PM', '2018-12-19 17:06:53', 1, 1, ''),
(28, 'Ear-Nose-Throat (Ent) Specialist', 13, 14, 700, '2018-12-29', '11:15 PM', '2018-12-19 17:16:05', 1, 1, ''),
(29, 'Homeopath', 2, 8, 600, '2018-12-28', '11:30 PM', '2018-12-19 17:17:22', 1, 1, ''),
(30, 'General Physician', 6, 15, 2500, '2018-12-28', '12:30 AM', '2018-12-19 18:27:08', 1, 1, ''),
(31, 'Medicine Specialist', 19, 16, 800, '2019-01-05', '10:15 PM', '2018-12-21 16:06:51', 1, 1, ''),
(32, 'Orthopedic Surgeon', 9, 16, 500, '2018-12-27', '10:15 PM', '2018-12-21 16:08:34', 1, 1, ''),
(33, 'pediatrician', 10, 16, 500, '2018-12-29', '10:15 PM', '2018-12-21 16:10:41', 1, 1, '');

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
(9, 'raju', 'raju@gmail.com', 1812304050, 'hii'),
(10, 'MD RADUAN ISLAM', 'raduan.cse@gmail.com', 1567386215, 'Hii, I need help'),
(11, 'MD RADUAN ISLAM', 'raduan.cse@gmail.com', 1813209179, 'I  Need   help'),
(12, 'MD RADUAN ISLAM', 'raduan.cse@gmail.com', 1912304050, 'Hii, I need Help'),
(13, 'MD RADUAN ISLAM', 'raduan.cse@gmail.com', 1912304050, 'I need doctor');

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
(1, 'Dentist', 'Dr. Sakena Akter', 'Comilla Clinic', '500', 1912305070, 'sakena@gmail.com', '6872edadd43c2a34f3ce1284f425a2f0', '2016-12-29 06:25:37', '04-01-2017 01:27:51 PM'),
(2, 'Homeopath', 'Dr. Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', ''),
(3, 'General Physician', 'Dr. Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', ''),
(4, 'Homeopath', 'Dr.Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', ''),
(6, 'General Physician', 'Dr. Amrita Banik', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', ''),
(7, 'Demo test', 'Dr. Abc ', 'xyz', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', ''),
(8, 'Dentist', 'Dr. Abid Hasan', 'Tangail Clinic', '400', 1912305080, 'abid@gmail.com', '7b47ec1a52f0704f4437070e077ae105', '2018-09-13 18:45:18', ''),
(9, 'Orthopedic Surgeon', 'Dr. Md. Delouar Hossen', 'Jamjam Hospital', '500', 1839101852, 'delour.sshmc@gmail.com', 'f3ca7999bff92f9640adf24ecfc073d3', '2018-10-10 15:43:56', ''),
(10, 'Pediatrician', 'Dr. Mukul', 'Seba clinic, Tangail', '500', 1712201864, 'dmmukul@gmail.com', 'ba5e3f51a592e97df7ad94b2c1cd68fd', '2018-10-10 15:45:33', ''),
(11, 'Gynecologist/Obstetrician', 'Dr. Afroza Akter', 'Tangail Medical College & Hospital', '600', 1915173494, 'afrozakumudini@gmail.com', 'a09417501e2cd205ade459841fb4a9d9', '2018-10-10 15:47:06', ''),
(12, 'General Physician', 'Dr. Helal Miah', 'dhaka', '500', 1839101852, 'helal@gmail.com', 'b5356d03c83357a2c602d9a59a5d9c10', '2018-10-12 07:07:13', ''),
(13, 'Ear-Nose-Throat (Ent) Specialist', 'Dr. Akmol', 'Tangail', '700', 1912304060, 'akmol@gmail.com', 'b1431ea53ebe11b85fd147360ad02972', '2018-11-22 18:00:05', ''),
(14, 'General Physician', 'Dr. Alam', 'Rajshahi', '700', 1912304061, 'alam@gmail.com', '065560e681ee8581be4a054b1948a92b', '2018-11-22 18:05:08', ''),
(15, 'Bones Specialist demo', 'Dr. Hanif Khan', 'Dhaka', '700', 1912304062, 'hanif@gmail.com', 'da40526f219afb8a602e12c727aed58d', '2018-11-22 18:06:18', ''),
(16, 'Gynecologist/Obstetrician', 'Dr. Momo Khatun', 'Rajshahi', '1000', 1716730669, 'momo@gmail.com', '55d6e3b1c7f671534b1fc9c8ffc4077c', '2018-11-22 18:09:50', ''),
(17, 'Orthopedic Surgeon', 'Dr. Ramiz Khan', 'coxsbaar', '700', 1912304064, 'ramiz@gmail.com', '88ecd479a18802361132b736b929e33f', '2018-11-22 18:12:04', ''),
(18, 'pediatrician', 'Dr. Reza Chowdhury', 'Comilla Hospital', '700', 1912304065, 'reza@gmail.com', '3ed6e995474bc6dddef7a6fc9b97c965', '2018-11-22 18:13:25', ''),
(19, 'Medicine Specialist', 'Dr. Kamruzzam', 'BMMSU Hospital', '800', 1912304067, 'kamruzzaman@gmail.com', 'c6008e2c33be240f297561884669a038', '2018-11-22 18:20:59', ''),
(20, 'Dermatologist', 'Dr. Hasan Mahmud', 'Noakhali Hospital', '1000', 1912304068, 'hasan@gmail.com', 'f690d3b8d4b51c1f189d886b7bab26b7', '2018-11-22 18:42:36', ''),
(21, 'General Physician', 'Dr. Hafiz', 'Dhaka clinic', '700', 1912304061, 'hafiz@gmail.com', '7a5bde8adaf60027e794a3af535dcaff', '2018-12-19 18:29:53', ''),
(22, 'Gynecologist/Obstetrician', 'Dr. Fatema Jahan', 'City Clinic', '500', 1572047348, 'fatema@gmail.com', '9aa81edaea4c336ad714db595d73e34f', '2018-12-23 20:21:58', ''),
(23, 'Ayurveda', 'Dr. Hakim Hossen', 'Dhaka Hospital', '700', 1675386216, 'hakim@gmail.com', '308163092187715964aa7d8728cac9ca', '2018-12-23 20:25:50', '');

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
(40, 1, 'momo@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-18 17:03:21', '18-11-2018 10:43:47 PM', 1),
(41, 0, 'momo@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 17:33:08', '', 0),
(42, 0, 'momo@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 17:33:32', '', 0),
(43, 1, 'momo@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 17:33:45', '22-11-2018 11:09:50 PM', 1),
(44, 1, 'momo@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 17:40:09', '', 1),
(45, 1, 'momo@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 17:50:54', '', 1),
(46, 9, 'delour.sshmc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 17:51:17', '22-11-2018 11:21:37 PM', 1),
(47, 9, 'delour.sshmc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 17:54:50', '', 1),
(48, 13, 'akmol@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 18:03:17', '22-11-2018 11:51:05 PM', 1),
(49, 19, 'kamruzzaman@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 18:21:27', '22-11-2018 11:51:31 PM', 1),
(50, 16, 'momo@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:35:55', '23-11-2018 10:06:04 AM', 1),
(51, 0, 'sakena@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:36:28', '', 0),
(52, 16, 'momo@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:36:30', '23-11-2018 10:06:36 AM', 1),
(53, 9, 'delour.sshmc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:36:46', '23-11-2018 10:07:05 AM', 1),
(54, 14, 'alam@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:37:16', '23-11-2018 10:07:23 AM', 1),
(55, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:37:34', '', 1),
(56, 9, 'delour.sshmc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-29 20:06:49', '30-11-2018 01:37:04 AM', 1),
(57, 9, 'delour.sshmc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-29 20:17:54', '', 1),
(58, 9, 'delour.sshmc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-29 20:24:04', '', 1),
(59, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-16 20:12:49', '', 1),
(60, 13, 'akmol@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-19 17:07:48', '19-12-2018 10:38:37 PM', 1),
(61, 13, 'akmol@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-19 18:28:08', '19-12-2018 11:58:42 PM', 1),
(62, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-21 15:45:53', '21-12-2018 09:17:46 PM', 1),
(63, 9, 'delour.sshmc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-21 16:12:34', '21-12-2018 09:44:11 PM', 1),
(64, 13, 'akmol@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-21 16:15:49', '21-12-2018 09:46:09 PM', 1),
(65, 13, 'akmol@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-23 18:15:40', '23-12-2018 11:45:53 PM', 1),
(66, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-23 18:17:49', '23-12-2018 11:51:53 PM', 1),
(67, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-23 18:26:29', '23-12-2018 11:57:51 PM', 1),
(68, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-23 18:30:11', '', 1),
(69, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-23 18:30:12', '', 1),
(70, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-23 18:30:51', '24-12-2018 12:12:19 AM', 1),
(71, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-23 18:50:01', '24-12-2018 12:20:05 AM', 1),
(72, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-23 18:50:10', '24-12-2018 12:20:13 AM', 1),
(73, 8, 'abid@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-23 20:06:17', '24-12-2018 01:36:56 AM', 1);

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
(15, 'Medicine Specialist', '2018-11-22 18:19:34', '');

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
(37, 9, 'raju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-10-12 06:30:16', '22-11-2018 11:25:15 PM', 1),
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
(57, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-19 17:15:18', '', 1),
(58, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-21 18:21:06', '', 1),
(59, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 17:51:55', '', 1),
(60, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 17:57:54', '', 1),
(61, 0, 'kamruzzaman@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 18:22:49', '', 0),
(62, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 18:23:08', '22-11-2018 11:53:12 PM', 1),
(63, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 18:24:19', '22-11-2018 11:55:12 PM', 1),
(64, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 18:25:44', '', 1),
(65, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 18:43:34', '23-11-2018 12:48:55 AM', 1),
(66, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 19:19:03', '23-11-2018 01:07:30 AM', 1),
(67, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 19:38:43', '23-11-2018 01:15:40 AM', 1),
(68, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-22 19:45:45', '', 1),
(69, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:01:59', '', 1),
(70, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:02:28', '', 1),
(71, 12, 'tanvir@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:12:08', '', 1),
(72, 12, 'tanvir@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:14:14', '23-11-2018 09:50:29 AM', 1),
(73, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:20:44', '', 1),
(74, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:22:39', '', 1),
(75, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:25:11', '23-11-2018 09:55:21 AM', 1),
(76, 12, 'tanvir@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:25:37', '23-11-2018 09:56:50 AM', 1),
(77, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 04:50:35', '', 1),
(78, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 05:00:43', '', 1),
(79, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 05:06:47', '23-11-2018 10:37:54 AM', 1),
(80, 13, 'fahima@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-23 05:09:25', '23-11-2018 10:40:30 AM', 1),
(81, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-29 20:04:51', '30-11-2018 01:35:48 AM', 1),
(82, 11, 'mamunboss@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-29 20:06:33', '30-11-2018 01:36:38 AM', 1),
(83, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-16 19:08:35', '', 1),
(84, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-16 19:19:48', '17-12-2018 01:24:54 AM', 1),
(85, 14, 'sobuj@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-19 17:06:10', '19-12-2018 10:37:36 PM', 1),
(86, 14, 'sobuj@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-19 17:15:51', '19-12-2018 10:46:58 PM', 1),
(87, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-19 17:17:08', '19-12-2018 10:47:53 PM', 1),
(88, 9, 'raju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-19 18:01:22', '19-12-2018 11:31:41 PM', 1),
(89, 15, 'tanbir@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-19 18:26:42', '19-12-2018 11:57:56 PM', 1),
(90, 0, 'hafiz@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-21 15:26:17', '', 0),
(91, 0, 'hafiz@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-21 15:26:19', '', 0),
(92, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-21 15:26:31', '21-12-2018 09:11:31 PM', 1),
(93, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-21 15:44:28', '21-12-2018 09:14:36 PM', 1),
(94, 16, 'nur@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-21 16:04:24', '21-12-2018 09:42:24 PM', 1),
(95, 0, 'hafiz@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-23 18:16:03', '', 0),
(96, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-23 18:16:12', '23-12-2018 11:46:17 PM', 1),
(97, 8, 'raduan.iitju@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-23 18:50:24', '24-12-2018 12:20:28 AM', 1),
(98, 16, 'nur@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-23 20:07:10', '24-12-2018 01:37:42 AM', 1);

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
(8, 'Raduan', '01675386216', '13/b,dhanmondi,', 'Dhaka', 'male', 'raduan.iitju@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-13 17:59:24', ''),
(10, 'Habib', '01912998877', '12 dhamray', 'Dhaka', 'male', 'habib@gmail.com', '1391921ec73a2f5dff54e075bbda7487', '2018-10-12 07:11:15', ''),
(11, 'Al Mamun', '01913705269', 'Vuapur', 'Dhaka', 'male', 'mamunboss@gmail.com', '6872edadd43c2a34f3ce1284f425a2f0', '2018-11-11 15:54:12', ''),
(12, 'Tanvir', '01684364755', 'Tangail', 'Dhaka', 'male', 'tanvir@gmail.com', '31b9e0f8d37656b8039a1bcf1c81ff71', '2018-11-23 04:12:04', ''),
(13, 'Fahima Tabassum', '01757109096', 'Dhaka', 'Dhaka', 'female', 'fahima@gmail.com', 'd2f22b7e4d707d28a6aedd04049b3874', '2018-11-23 05:09:19', ''),
(14, 'Sobuj', '01620567878', 'Tangail', 'Dhaka', 'male', 'sobuj@gmail.com', '159c00ea84249a7bb9e062d48ded1a43', '2018-12-19 17:05:59', ''),
(15, 'Tanbir Islam', '01684364755', 'Tangail', 'Dhaka', 'male', 'tanbir@gmail.com', '4aca38e167d4f7d0e988a5e9aee32c3b', '2018-12-19 18:26:36', ''),
(16, 'Nur Mohammad', '01572047348', 'Mohammadpur', 'Dhaka', 'male', 'nur@gmail.com', 'ed1e56ef963bb91c45a14a50c2f3cd95', '2018-12-21 16:04:11', '');

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
(5, 7, '../images/download.png', 8, 11, '2018-11-17 16:57:20'),
(6, 8, '../images/download (1).jpg', 8, 11, '2018-11-21 18:21:49'),
(7, 8, '../images/download.png', 8, 11, '2018-11-21 18:22:03'),
(8, 5, '../images/25593321_930778317080305_1657111814_o.jpg', 9, 8, '2018-11-22 17:52:37'),
(9, 5, '../images/25624374_930778343746969_1235261350_o.jpg', 9, 8, '2018-11-22 17:52:47'),
(10, 5, '../images/images.jpg', 9, 8, '2018-11-22 17:53:38'),
(11, 5, '../images/An-example-of-OpenI-2-chest-x-ray-image-report-and-annotations.png', 9, 8, '2018-11-22 17:54:40'),
(12, 5, '../images/25625509_930778310413639_1466531946_o.jpg', 9, 8, '2018-11-29 20:22:25'),
(13, 5, '../images/25624374_930778343746969_1235261350_o.jpg', 9, 8, '2018-11-29 20:22:43'),
(14, 30, '../images/25593321_930778317080305_1657111814_o.jpg', 6, 15, '2018-12-19 18:27:42');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
