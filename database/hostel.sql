-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2018 at 09:36 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_doc` (IN `dd` VARCHAR(15))  BEGIN
  SELECT *FROM registration WHERE firstName=`dd`;
  END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'aa@a.a', 'admin', '2016-04-04 20:31:45', '2018-12-03'),
(2, 'bb', 'bb@b.b', 'bb', '2018-12-01 10:44:20', '2018-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `alogs`
--

CREATE TABLE `alogs` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alogs`
--

INSERT INTO `alogs` (`id`, `userid`, `action`, `cdate`) VALUES
(1, 45623, 'update', '2018-12-02 02:24:51'),
(2, 10806121, 'update', '2018-12-03 11:56:26'),
(3, 4562, 'update', '2018-12-03 11:56:37'),
(4, 45623, 'update', '2018-12-03 11:56:49'),
(5, 65874, 'update', '2018-12-03 11:57:02'),
(6, 5684, 'update', '2018-12-03 11:57:13'),
(7, 4562, 'update', '2018-12-04 01:31:11'),
(8, 65874, 'update', '2018-12-04 01:33:14'),
(9, 4562, 'update', '2018-12-04 01:34:34'),
(10, 45623, 'update', '2018-12-04 01:36:02'),
(11, 65874, 'update', '2018-12-04 01:36:48'),
(12, 5684, 'update', '2018-12-04 01:37:38'),
(13, 10806121, 'delete', '2018-12-04 01:48:04'),
(14, 4562, 'delete', '2018-12-04 01:48:04'),
(15, 45623, 'delete', '2018-12-04 01:48:04'),
(16, 65874, 'delete', '2018-12-04 01:48:04'),
(17, 5684, 'update', '2018-12-04 01:48:13'),
(18, 87656, 'insert', '2018-12-04 01:56:07'),
(19, 87656, 'update', '2018-12-04 01:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech ', 'Bachelor  of Technology', '2018-10-11 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2018-10-11 19:32:46'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2018-10-12 19:33:23'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2018-11-11 19:34:18'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2018-11-11 19:34:40'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2018-11-11 19:34:59'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2018-11-11 19:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(1, 104, 5, 2000, 0, '2018-12-16', 4, 'Bachelor Of commerce ', 5684, 'sayan', 'k', 'gosh', 'male', 876543, 'say@s.s', 456789, 'sdfghj', 'nbvc', 0, 'dfghjkbhjsfbvhb', 'blr', 'Andhra Pradesh', 56789, 'dfghjkbhjsfbvhb', 'blr', 'Andhra Pradesh', 56789, '2018-12-01 13:00:47', ''),
(2, 101, 4, 6000, 0, '2018-12-04', 1, 'Master of Business Administration', 87656, 'Himanshu', '', 'Kumar', 'male', 78636482, 'him@h.h', 9845737321, 'C k Sinha', 'Father', 89675728191, 'Whitefield', 'blr', 'Karnataka', 560067, 'Whitefield', 'blr', 'Karnataka', 560067, '2018-12-03 20:26:07', '');

--
-- Triggers `registration`
--
DELIMITER $$
CREATE TRIGGER `regdelete` AFTER DELETE ON `registration` FOR EACH ROW insert into alogs values (null,old.regNO,"delete",now())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reginsert` AFTER INSERT ON `registration` FOR EACH ROW insert into alogs values (null,new.regNO,"insert",now())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `regupdate` AFTER UPDATE ON `registration` FOR EACH ROW insert into alogs values (null,new.regNO,"update",now())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 5, 100, 8000, '2016-04-11 22:45:43'),
(2, 4, 101, 6000, '2016-04-12 01:30:47'),
(3, 2, 102, 6000, '2016-04-12 01:30:58'),
(4, 3, 103, 4000, '2016-04-12 01:31:07'),
(5, 5, 104, 2000, '2016-04-12 01:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'EPE'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `ulogs`
--

CREATE TABLE `ulogs` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ulogs`
--

INSERT INTO `ulogs` (`id`, `userid`, `action`, `cdate`) VALUES
(1, 4562, 'inserted', '0000-00-00 00:00:00'),
(2, 586952, 'update', '0000-00-00 00:00:00'),
(3, 7653, 'update', '2018-12-02 00:57:10'),
(4, 45327, 'deleted', '2018-12-02 01:13:45'),
(5, 7653, 'update', '2018-12-03 11:51:41'),
(6, 5684, 'update', '2018-12-03 11:51:54'),
(7, 8765, 'inserted', '2018-12-03 11:55:04'),
(8, 586952, 'update', '2018-12-04 01:27:25'),
(9, 108061211, 'deleted', '2018-12-04 01:40:23'),
(10, 102355, 'deleted', '2018-12-04 01:40:23'),
(11, 586952, 'deleted', '2018-12-04 01:40:23'),
(12, 4562, 'deleted', '2018-12-04 01:40:23'),
(13, 65874, 'deleted', '2018-12-04 01:40:23'),
(14, 9866, 'deleted', '2018-12-04 01:40:23'),
(15, 7653, 'deleted', '2018-12-04 01:40:23'),
(16, 5684, 'update', '2018-12-04 01:40:51'),
(17, 87656, 'update', '2018-12-04 01:40:59'),
(18, 87656, 'update', '2018-12-04 01:56:54'),
(19, 87656, 'update', '2018-12-04 01:57:17'),
(20, 87656, 'update', '2018-12-04 01:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 1, 'say@s.s', 0x3a3a31, '', '', '2018-12-01 12:58:42'),
(2, 1, 'say@s.s', 0x3a3a31, '', '', '2018-12-01 13:48:13'),
(3, 1, 'say@s.s', 0x3a3a31, '', '', '2018-12-01 17:16:35'),
(4, 1, 'say@s.s', 0x3a3a31, '', '', '2018-12-01 19:07:57'),
(5, 1, 'say@s.s', 0x3a3a31, '', '', '2018-12-02 06:45:57'),
(6, 1, 'say@s.s', 0x3a3a31, '', '', '2018-12-02 06:46:08'),
(7, 2, 'him@h.h', 0x3a3a31, '', '', '2018-12-03 07:43:07'),
(8, 2, 'him@h.h', 0x3a3a31, '', '', '2018-12-03 20:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(1, '5684', 'sayan', 'k', 'gosh', 'male', 876543, 'say@s.s', 'ss', '2018-12-01 11:29:58', '', ''),
(2, '87656', 'Himanshu', '', 'Kumar', 'male', 78636483, 'him@h.h', 'him', '2018-12-03 06:25:04', '04-12-2018 01:58:16', '04-12-2018 01:56:54');

--
-- Triggers `userregistration`
--
DELIMITER $$
CREATE TRIGGER `deletedata` AFTER DELETE ON `userregistration` FOR EACH ROW insert into ulogs values (null,old.regNO,"deleted",now())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertdata` AFTER INSERT ON `userregistration` FOR EACH ROW insert into ulogs values (null,new.regNO,"inserted",now())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updatedata` AFTER UPDATE ON `userregistration` FOR EACH ROW insert into ulogs values (null,new.regNO,"update",now())
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alogs`
--
ALTER TABLE `alogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulogs`
--
ALTER TABLE `ulogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `alogs`
--
ALTER TABLE `alogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ulogs`
--
ALTER TABLE `ulogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
