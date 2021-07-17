-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2021 at 06:23 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(6, 'SUMIT KUMAR DAS', '0000000000', 'sumitkumardas090@gmail.com', 'Male', 22, 'AB+', 'Rourkela', ' Ready to give', '2021-07-16 02:33:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(9, 'A+', '2021-07-17 12:13:07'),
(10, 'A-', '2021-07-17 12:13:14'),
(11, 'B+', '2021-07-17 12:13:18'),
(12, 'B-', '2021-07-17 12:13:25'),
(13, 'AB+', '2021-07-17 12:13:32'),
(14, 'AB-', '2021-07-17 12:13:38'),
(15, 'O+', '2021-07-17 12:13:42'),
(16, 'O-', '2021-07-17 12:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Demo test demo																									', 'test@test.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(5, 'SUMIT KUMAR DAS', 'sumitkumardas090@gmail.com', '+9181149505', 'Hi everyone', '2021-07-16 02:34:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '																																																																						<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">There are many reasons to donate blood. Some of them are:-</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><ul><li><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"font-weight: 700; font-family: &quot;Playfair Display&quot;, sans-serif; font-size: 15px; text-align: start;\">Reduce the risk of heart attacks and liver ailments.</span></span></li><li><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"font-weight: 700; font-family: &quot;Playfair Display&quot;, sans-serif; font-size: 15px; text-align: start;\">Lower the risk of cancer.<br></span></span></li><li><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"font-weight: 700; font-family: &quot;Playfair Display&quot;, sans-serif; font-size: 15px; text-align: start;\">Generation of new blood cells.<br></span></span></li><li><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"font-weight: 700; font-family: &quot;Playfair Display&quot;, sans-serif; font-size: 15px; text-align: start;\">Reduced risk of hemochromatosis.<br></span></span></li><li><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"font-weight: 700; font-family: &quot;Playfair Display&quot;, sans-serif; font-size: 15px; text-align: start;\">Helps prevent premature aging.<br></span></span></li><li><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"font-weight: 700; font-family: &quot;Playfair Display&quot;, sans-serif; font-size: 15px; text-align: start;\">Speeds up the healing process<br></span></span></li><li><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"font-weight: 700; font-family: &quot;Playfair Display&quot;, sans-serif; font-size: 15px; text-align: start;\">Lower cholesterol level.</span></span></li></ul><div style=\"text-align: start;\"><img src=\"http://www.centurypa.com/images/blog/Blood%20donation.jpg\" alt=\"Blood Donation is a service to humanity.\" align=\"none\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Playfair Display&quot;, sans-serif; font-size: 15px; font-weight: 700;\"><br></span></div></div>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(3, 'About Us ', 'aboutus', '																																								<div style=\"text-align: justify;\"><span style=\"font-size: 1em; font-weight: bold; font-style: italic;\">Shreemit Advance Blood Care Unit</span><span style=\"font-size: 1em;\"> enforces Drug &amp; Cosmetic Act, National blood policy standards and guidelines ensuring proper collection &amp; donation, effective management, and monitoring the quality and quantity of the donated blood. Considering the future national rollout, </span><span style=\"font-size: 1em; font-weight: bold; font-style: italic;\">Shreemit Advance Blood Care Unit</span><span style=\"font-size: 1em;\">&nbsp;has been developed with a modular and scalable approach with configurable rule-based architecture allowing customization to easily incorporate specific requirements from nationwide stakeholders.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1em;\"><br></span></div>																				<div><p align=\"justify\" style=\"margin-bottom: 10px; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(41, 41, 41);\"><span style=\"margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-decoration-line: underline; font-size: large; font-family: verdana;\"><span style=\"color: rgb(62, 63, 58);\">Shreemit Advance Blood Care Unit</span>&nbsp;(will be having) six major components for the management of the blood donation life cycle:</span></p><ul style=\"border: none; outline: 0px; color: rgb(41, 41, 41); font-family: &quot;Droid Sans&quot;, sans-serif; font-size: 16px;\"><li style=\"text-align: justify; border: none; outline: 0px; list-style-position: inside; list-style-type: disc;\">The biometric Donor Management System for identifying, tracking, and blocking donors based on donor\'s health, donation history, etc.</li><li style=\"text-align: justify; border: none; outline: 0px; list-style-position: inside; list-style-type: disc;\">It provides features such as blood grouping, TTI screening, antibody screening, component preparation, etc. as per the defined processes and rules.</li><li style=\"text-align: justify; border: none; outline: 0px; list-style-position: inside; list-style-type: disc;\">A centralized Blood Inventory Management System for keeping track of the bloodstock across numerous blood banks.</li><li style=\"text-align: justify; border: none; outline: 0px; list-style-position: inside; list-style-type: disc;\">Bio-Medical Waste Management System for disposal of discarded blood and other waste generated during this process.</li><li style=\"text-align: justify; border: none; outline: 0px; list-style-position: inside; list-style-type: disc;\">Generation of rare blood group donor registries and the generation of regular repeat donors</li><li style=\"text-align: justify; border: none; outline: 0px; list-style-position: inside; list-style-type: disc;\">Alert and Notification System</li></ul><div style=\"text-align: justify; \"><span style=\"color: rgb(41, 41, 41); font-family: &quot;Droid Sans&quot;, sans-serif; font-size: 16px;\"><br></span></div></div><div><span style=\"font-weight: bold; font-family: verdana; font-size: large;\">These are some of the future objectives of our system:</span></div><div><br></div><div><ul style=\"border: none; outline: 0px; list-style-type: disc; color: rgb(41, 41, 41); font-family: &quot;Droid Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(245, 245, 245);\"><li style=\"list-style-type: disc; border: none; outline: 0px;\">Safe and Adequate Blood Supplies</li><li style=\"border: none; outline: 0px; list-style-type: disc;\">Reduced Turnaround Time</li><li style=\"border: none; outline: 0px; list-style-type: disc;\">Preventing Wastage of Blood</li><li style=\"border: none; outline: 0px; list-style-type: disc;\">Restrict Professional Donors</li><li style=\"border: none; outline: 0px; list-style-type: disc;\">Networking of Blood Banks</li><li style=\"border: none; outline: 0px; list-style-type: disc;\">Donor Repository</li></ul></div><div><br></div><div></div><div><span style=\"color: rgb(41, 41, 41); font-family: &quot;Droid Sans&quot;, sans-serif; font-size: 16px;\"><br></span></div>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
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
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
