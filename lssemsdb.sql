-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 10:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lssemsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7558197355, 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-04-03 12:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `Category`, `CreationDate`) VALUES
(1, 'Maid', '2024-05-01 00:41:22'),
(2, 'Driver', '2024-05-01 00:41:22'),
(3, 'Cook', '2024-05-01 00:41:22'),
(4, 'Milkman', '2024-05-01 00:41:22'),
(5, 'Paperboy', '2024-05-01 00:41:22'),
(6, 'Car Cleaning', '2024-05-01 00:41:22'),
(7, 'Nanny', '2024-05-01 00:41:22'),
(8, 'Tuition Teacher', '2024-05-01 00:41:22'),
(9, 'Gym Instructor', '2024-05-01 00:41:22'),
(10, 'Plumber', '2024-05-01 00:41:22'),
(11, 'Basketball Instructor', '2024-05-01 00:41:22'),
(12, 'Electrician', '2024-05-01 00:41:22'),
(13, 'Fitting', '2024-05-01 00:41:22'),
(14, 'Carpenter', '2024-05-01 00:41:22'),
(15, 'House Cleaning', '2024-05-01 00:41:22'),
(16, 'Painter', '2024-05-01 00:41:22'),
(17, 'Grocery Shop', '2024-05-01 00:41:22'),
(18, 'Doctor', '2024-05-01 00:41:22'),
(19, 'Physiotherapist', '2024-05-01 00:41:22'),
(20, 'Nurse', '2024-05-01 00:41:22'),
(21, 'Laundry', '2024-05-01 00:41:22'),
(22, 'Gardener', '2024-05-01 00:41:22'),
(23, 'Flower Delivery', '2024-05-01 00:41:22'),
(24, 'Tailor', '2024-05-01 00:41:22'),
(25, 'Other', '2024-05-01 00:41:22'),
(26, 'Test category', '2024-05-01 00:41:22'),
(27, 'Delivery', '2024-10-25 04:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(50) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', '', '<span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif; font-size: 18px;\">Welcome to Helphive, your trusted platform for finding local service providers. Our mission is to make it easy to connect with reliable services like plumbing and cleaning.\nWith a user-friendly interface, you can search for providers, read reviews, and book appointments effortlessly. Our team verifies all providers to ensure quality and transparency.\nJoin us in building a stronger community! Feel free to reach out with any questions or feedback. Thank you for choosing Helphive!</span>', NULL, NULL, '2024-10-25 13:34:45'),
(2, 'contactus', 'Contact Us', 'dubai,dubai main road,dubai kurukku santhu,dubai-420', 'helphive@gmail.com', 8072691981, '2024-10-25 04:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblperson`
--

CREATE TABLE `tblperson` (
  `ID` int(10) NOT NULL,
  `Category` varchar(200) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Picture` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `City` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblperson`
--

INSERT INTO `tblperson` (`ID`, `Category`, `Name`, `Picture`, `MobileNumber`, `Address`, `City`, `RegDate`) VALUES
(23, 'Maid', 'Mariam', '72a7bdc88fc821388ac9ba95050c26121729831516.jpg', 8954612235, 'saravanampatti', 'Coimbatore', '2024-10-25 04:45:16'),
(24, 'Maid', 'Emma', '186d66f12c343a3968aac572269ff9381729832371.jpg', 6354286545, 'kunnam', 'Perambalur', '2024-10-25 04:59:31'),
(25, 'Maid', 'Mia', 'c9156c48a00e666db2549b00c06840381729832519.jpg', 6954578851, 'Boys company', 'Ooty', '2024-10-25 05:01:59'),
(26, 'Driver', 'Light Yagami', '748528c793ea52f8f6de35e97eab71b71729833088.jpg', 6352879847, 'Kunnathur', 'Coimbatore', '2024-10-25 05:11:28'),
(27, 'Driver', 'Logan', '46a562bcfbab77a87fd0348344e88d9b1729833495.jpg', 9877618292, 'God Street', 'Perambalur', '2024-10-25 05:18:15'),
(28, 'Driver', 'Zai', '420b5cbaef71837efcf1b0c9758e3fb81729833615.jpg', 9826588711, 'Children street', 'Ooty', '2024-10-25 05:20:15'),
(29, 'Cook', 'Obito', 'd9171dd08b68f776d96dfb0143d7b0f41729834016.jpg', 9632153247, 'Neru Street', 'Coimbatore', '2024-10-25 05:26:56'),
(30, 'Cook', 'Ben', 'afb9a21fd420e7578ae5ce8fab187af71729834255.jpg', 9699782130, 'Near Rovar Public School', 'Perambalur', '2024-10-25 05:30:55'),
(31, 'Cook', 'Luffy', 'd663ad6a118fe615edf0625d6a2967fe1729837169.jpg', 9632524647, 'Good Shepard School', 'Ooty', '2024-10-25 06:19:29'),
(32, 'Milkman', 'John', 'c6c68dcb961fc56ce285315a24f083871729837909.jpg', 9942806528, 'Milk Hut', 'Coimbatore', '2024-10-25 06:31:49'),
(33, 'Milkman', 'Luna', '921f26533ec7780810d1e065610a4a7d1729838041.jpg', 7754682310, 'A2d milk', 'Perambalur', '2024-10-25 06:34:01'),
(34, 'Paperboy', 'James', '5701b97fe22b3d6f3d8a549f010438d71729838229.jpg', 9994039564, 'News Time', 'Coimbatore', '2024-10-25 06:37:09'),
(35, 'Paperboy', 'Ava', '702f89b51cd3da207157a9aa147eeb681729838398.jpg', 8898124532, 'Thina thandhi', 'Perambalur', '2024-10-25 06:39:58'),
(36, 'Car Cleaning', 'Henry', 'f18ed72494a9f1bfc355b7e4c80d3e031729838881.jpg', 9638546441, 'West Street', 'Perambalur', '2024-10-25 06:48:01'),
(37, 'Car Cleaning', 'Leo', 'a68e815585f4106e45da9486cca6f7911729849752.jpg', 9899652314, 'Ganapathy Street', 'Perambalur', '2024-10-25 09:49:12'),
(38, 'Nanny', 'Lilly', '4149c6b6455d9fd6009bb60cc4c8ef301729849932.jpg', 9998546752, 'Gokulam Street', 'Coimbatore', '2024-10-25 09:52:12'),
(39, 'Nanny', 'Lotus', '9fa78b49195625a6c245813d1f8438c11729850289.jpg', 9810034266, 'South Street', 'Perambalur', '2024-10-25 09:58:09'),
(40, 'Plumber', 'Emma', '6c14f7bc983928006e0b74efbda377c81729850601.jpg', 7841254101, 'Kalvi Nagar', 'Coimbatore', '2024-10-25 10:03:21'),
(41, 'Electrician', 'Sam', 'a223e1f61132c147b90bf723c9d444bb1729850762.jpg', 6312487213, 'Y-NOT Shop', 'Coimbatore', '2024-10-25 10:06:03'),
(42, 'Plumber', 'Mia', 'b20598b746890b45166c118a63f753731729851288.jpg', 7548796213, 'Pathma Street', 'Perambalur', '2024-10-25 10:14:48'),
(43, 'Electrician', 'Mark', '0b118fd169f39eec0d4897b55db009701729851853.jpg', 9940652101, 'Kamal Street', 'Perambalur', '2024-10-25 10:24:13'),
(44, 'Carpenter', 'John', '708912ae0b85ec56a72e2c80ac02a2a61729852155.jpg', 7477898561, 'Dom Street', 'Coimbatore', '2024-10-25 10:29:15'),
(45, 'Carpenter', 'Jack', '1f55af6c844781a002bfba99e2105abf1729852324.jpg', 6524897650, 'PN Street', 'Perambalur', '2024-10-25 10:32:04'),
(46, 'Painter', 'Mariam', 'edad4aab680ff13e10bf2f79cdd3d7181729852561.jpg', 6325478910, 'Lotus Street', 'Coimbatore', '2024-10-25 10:36:01'),
(47, 'Doctor', 'Julius', 'e1a96a17f9cace33a230cb98ea74e6f01729865313.jpg', 7989745135, 'RS Clinic', 'Coimbatore', '2024-10-25 14:08:33'),
(48, 'Doctor', 'Isabella', '069572abe4df1e83f52e56088fec44771729866517.jpg', 9698543215, 'JK Clinic', 'Perambalur', '2024-10-25 14:28:37'),
(49, 'Delivery', 'Ashok', '4591929b7d4e391c9b0f6f17c0a1a4911729866702.jpg', 6394785120, 'BlueDart Courier Service', 'Coimbatore', '2024-10-25 14:31:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category` (`Category`),
  ADD KEY `CreationDate` (`CreationDate`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblperson`
--
ALTER TABLE `tblperson`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category` (`Category`),
  ADD KEY `Category_2` (`Category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblperson`
--
ALTER TABLE `tblperson`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
