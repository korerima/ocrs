-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 10, 2022 at 06:21 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocrsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cocrenewal`
--

CREATE TABLE `cocrenewal` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `coc_type` varchar(255) NOT NULL,
  `applied_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL,
  `applied_for` int(11) NOT NULL,
  `managerCV` varchar(255) NOT NULL,
  `staffCV` varchar(255) NOT NULL,
  `financialStatement` varchar(255) NOT NULL,
  `officeDocument` varchar(255) NOT NULL,
  `vehicleDocuments` varchar(255) NOT NULL,
  `tradeLicense` varchar(255) NOT NULL,
  `workPermit` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cocrenewal`
--

INSERT INTO `cocrenewal` (`id`, `company_name`, `coc_type`, `applied_date`, `customer_id`, `applied_for`, `managerCV`, `staffCV`, `financialStatement`, `officeDocument`, `vehicleDocuments`, `tradeLicense`, `workPermit`, `status`) VALUES
(2, 'Tesla', 'shipping_agent', '2022-06-10 15:08:42', 32, 1, 'renewals/Tesla(10-06-2022)/chapter two OOP.pdf', 'renewals/Tesla(10-06-2022)/d.txt', 'renewals/Tesla(10-06-2022)/2.txt', 'renewals/Tesla(10-06-2022)/check.txt', 'renewals/Tesla(10-06-2022)/2.txt', 'renewals/Tesla(10-06-2022)/blu.docx', 'renewals/Tesla(10-06-2022)/2.txt', 'canceled'),
(6, 'Hena', 'shipping_agent', '2022-06-10 20:56:24', 33, 5, 'renewals/Hena(10-06-2022)/anu.txt', 'renewals/Hena(10-06-2022)/check.txt', 'renewals/Hena(10-06-2022)/anu.txt', 'renewals/Hena(10-06-2022)/array.docx', 'renewals/Hena(10-06-2022)/borgir.txt', 'renewals/Hena(10-06-2022)/2.txt', 'renewals/Hena(10-06-2022)/chapter one OOP.pdf', 'canceled');

-- --------------------------------------------------------

--
-- Table structure for table `shippingagent`
--

CREATE TABLE `shippingagent` (
  `ID` int(9) NOT NULL,
  `UserID` int(9) NOT NULL,
  `appNumber` int(11) NOT NULL,
  `investmentCatagory` varchar(35) CHARACTER SET utf8 NOT NULL,
  `companyName` varchar(25) CHARACTER SET utf8 NOT NULL,
  `typeOfCompany` varchar(35) CHARACTER SET utf8 NOT NULL,
  `cocType` varchar(50) CHARACTER SET utf8 NOT NULL,
  `generalManager` varchar(40) CHARACTER SET utf8 NOT NULL,
  `nationality` varchar(25) CHARACTER SET utf8 NOT NULL,
  `region` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `subCity` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `woreda` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `houseNumber` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `specificLocationName` varchar(35) DEFAULT NULL,
  `officeTelephone` int(11) DEFAULT NULL,
  `mobileTelephone` int(11) DEFAULT NULL,
  `emailAddress` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `dateOfApplication` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dateOfCOCApproval` date DEFAULT NULL,
  `dateOfCOCIssued` date DEFAULT NULL,
  `dateOfCOCExpire` date DEFAULT NULL,
  `managerCV` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `staffCV` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `financialStatement` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `officeDocument` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `vehicleDocuments` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tradeLicense` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `workPermit` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bankSlip` varchar(255) DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `directorComment` varchar(255) DEFAULT NULL,
  `appliedBy` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `checkedBy` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `approvedBy` varchar(25) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippingagent`
--

INSERT INTO `shippingagent` (`ID`, `UserID`, `appNumber`, `investmentCatagory`, `companyName`, `typeOfCompany`, `cocType`, `generalManager`, `nationality`, `region`, `subCity`, `woreda`, `houseNumber`, `specificLocationName`, `officeTelephone`, `mobileTelephone`, `emailAddress`, `dateOfApplication`, `dateOfCOCApproval`, `dateOfCOCIssued`, `dateOfCOCExpire`, `managerCV`, `staffCV`, `financialStatement`, `officeDocument`, `vehicleDocuments`, `tradeLicense`, `workPermit`, `bankSlip`, `status`, `remark`, `directorComment`, `appliedBy`, `checkedBy`, `approvedBy`) VALUES
(96, 23, 208462181, '', 'zxzxzx', '', 'Shipping Agent & Freight Forwarder', 'zxzxzxzxzx', 'Kenya', 'EASTERN AFRICA', 'Addis Ababa', '02', 'Addis Ababa', NULL, 911691221, 911691221, 'minale2as@gmail.com', '2022-04-20 21:00:00', '2022-05-12', NULL, NULL, 'upload/zxzxzx/Belete CV.docx', 'upload/zxzxzx/Drawing1.pdf', 'upload/zxzxzx/Logical Design.pdf', 'upload/zxzxzx/Logical Design1.pdf', NULL, 'upload/zxzxzx/Logical Design11.pdf', 'upload/zxzxzx/Logical Design12.pdf', NULL, 'Approved', 'bbbb', 'vvvvvv', 'Getachew', 'Test', 'Test'),
(101, 29, 225190240, '', 'Mamo', '', 'Shipping Agent', 'Hilina Minale', 'Ethiopia', 'Addis Ababa', 'Addis Ababa', '11', 'Addis Ababa', NULL, 11111111, 911691221, 'minale2as@gmail.com', '2022-05-04 21:00:00', '2022-05-05', NULL, NULL, 'upload/Mamo/Belete CV.docx', 'upload/Mamo/Date April 28.docx', 'upload/Mamo/Conceptual design.pdf', 'upload/Mamo/Drawing1.pdf', NULL, 'upload/Mamo/Finance specialist.pdf', 'upload/Mamo/Finance specialist.pdf', NULL, 'Approved', 'Accepted', 'vvvvvvvvv', 'asasasas', 'Test', 'Test'),
(108, 12, 340693931, 'Local Investment', 'ABCCCC', 'PLC', 'Shipping Agent', 'ABrree', 'Kenya', 'Addis Ababa', 'Addis Ababa', 'bbb', '1212', 'Tadese Tefera ', 911108871, 911108871, 'minale2as@gmail.com', '2022-05-29 21:00:00', NULL, NULL, NULL, 'upload/ABCCCC/Belete CV.docx', 'upload/ABCCCC/Conceptual design.pdf', 'upload/ABCCCC/Belete CV.docx', 'upload/ABCCCC/Belete CV.docx', 'upload/ABCCCC/Belete CV.docx', 'upload/ABCCCC/Belete CV.docx', 'upload/ABCCCC/Belete CV.docx', NULL, NULL, NULL, NULL, 'Minale', NULL, NULL),
(91, 15, 398061130, '', 'zxzx', '', 'Freight Forwarder', 'Abbeb Alem', 'Ethiopia', 'EASTERN AFRICA', 'Addis Ababa', '02', 'Addis Ababa', NULL, 911691221, 911691221, NULL, '2022-04-19 21:00:00', '2022-04-20', NULL, NULL, 'upload/zxzx/1938.docx', 'upload/zxzx/Leave.docx', 'upload/zxzx/IMG_20210508_175210_996_2.jpg', 'upload/zxzx/IMG_20210508_175202_073_2.jpg', NULL, 'upload/zxzx/minale (2).png', 'upload/zxzx/photo_2021-11-16_14-01-35.jpg', NULL, 'Approved', 'bbbbb', 'vvvv', 'Earmias', 'Test', 'Test'),
(111, 32, 441071343, 'Local Investment', 'Tesla', 'PLC', 'Shipping Agent', 'Elon Musk', 'American', 'New York', 'New York', '01', '100', 'Manhattan ', 117938748, 927834879, 'elonmusk@gmail.com', '2022-06-08 21:00:00', NULL, NULL, NULL, 'upload/Tesla(09-06-2022)/anu.txt', 'upload/Tesla(09-06-2022)/2.txt', 'upload/Tesla(09-06-2022)/blu.docx', 'upload/Tesla(09-06-2022)/2.txt', 'upload/Tesla(09-06-2022)/borgir.txt', 'upload/Tesla(09-06-2022)/2.txt', 'upload/Tesla(09-06-2022)/2.txt', NULL, NULL, NULL, NULL, 'hena', NULL, NULL),
(89, 10, 599375321, '', 'wwwww', '', 'Shipping Agent', 'Minale', 'Ethiopia', 'south', 'Addis Ababa', '02', 'Addis Abab', NULL, 911108871, 911691221, NULL, '2022-04-19 21:00:00', '2022-04-19', NULL, NULL, 'upload/wwwww/minale (2).png', 'upload/wwwww/Leave.docx', 'upload/wwwww/IMG_20210508_175210_996_2.jpg', 'upload/wwwww/minale (2).png', NULL, 'upload/wwwww/photo_2021-11-16_14-01-35.jpg', 'upload/wwwww/1938.docx', NULL, 'Approved', 'assas', 'bbbbbbb', 'ashu', 'Test', 'Test'),
(99, 27, 621131954, '', 'axaxaxa', '', 'Shipping Agent', 'Minale Ashagrie', 'Ethiopia', 'EASTERN AFRICA', 'aa', '11', 'add', NULL, 911691221, 911691221, 'minale2as@gmail.com', '2022-05-05 21:00:00', '2022-05-05', NULL, NULL, 'upload/axaxaxa/Belete CV.docx', 'upload/axaxaxa/Conceptual design.pdf', 'upload/axaxaxa/Date April 28.docx', 'upload/axaxaxa/Doc1.docx', NULL, 'upload/axaxaxa/Drawing1.pdf', 'upload/axaxaxa/Finance specialist.pdf', NULL, 'Approved', 'vvvvv', 'vvvv', 'asasasas', 'Test', 'Test'),
(93, 20, 649298227, '', 'adadad', '', 'Freight Forwarder', 'Abbeb Alem', 'Kenya', 'Addis Ababa', 'arada', '12', '123', NULL, 911108871, 911691221, 'minale2as@gmail.com', '2022-04-19 21:00:00', '2022-05-05', NULL, NULL, 'upload/adadad/1938.docx', 'upload/adadad/Leave.docx', 'upload/adadad/IMG_20210508_175202_073_2.jpg', 'upload/adadad/IMG_20210508_175210_996_2.jpg', NULL, 'upload/adadad/minale (2).png', 'upload/adadad/photo_2021-11-16_14-01-35.jpg', NULL, 'Approved', 'bbbbbbb', 'vvvvv', 'asafa', 'abc', 'Test'),
(112, 33, 679863670, 'Local Investment', 'Hena', 'PLC', 'Shipping Agent', 'Aaron', 'Ethiopian', 'Oromiya', 'Addis Ababa', '01', '100', 'Bole Matemiya', 114753458, 932789478, 'henokyehuludenekew@gmail.com', '2022-06-09 21:00:00', NULL, NULL, NULL, 'upload/Hena(10-06-2022)/2.txt', 'upload/Hena(10-06-2022)/anu.txt', 'upload/Hena(10-06-2022)/Current database trends(Robani).docx', 'upload/Hena(10-06-2022)/blu.docx', 'upload/Hena(10-06-2022)/blu.docx', 'upload/Hena(10-06-2022)/chapter two OOP.pdf', 'upload/Hena(10-06-2022)/chapter two OOP.pdf', NULL, 'Verified', 'Done', NULL, 'Yabsera', 'Test', NULL),
(94, 21, 730659893, '', 'EMA', '', 'Shipping Agent & Freight Forwarder', 'Mengistu Alhege', 'Ethiopia', 'Addis Ababa', 'Lideta', '02', 'New', NULL, 115156468, 940163625, 'mengistu@gmail.com', '2022-04-19 21:00:00', '2022-04-20', NULL, NULL, 'upload/EMA/Belete CV.docx', 'upload/EMA/Drawing1.pdf', 'upload/EMA/Finance specialist.pdf', 'upload/EMA/Conceptual design3.pdf', NULL, 'upload/EMA/Logical Design.pdf', 'upload/EMA/picture.docx', NULL, 'Approved', 'The applicant fulfill all the necessary requirement including site visit', 'accepted ', 'Mengistu', 'Mengistu Alhene', 'Yalew'),
(95, 22, 870472020, '', 'awawaw', '', 'Shipping Agent', 'Hilina Minale', 'Ethiopia', 'Addis Ababa', 'Addis Ababa', '02', 'Addis Abab', NULL, 911108871, 911691221, 'minale2as@gmail.com', '2022-04-19 21:00:00', '2022-04-21', NULL, NULL, 'upload/awawaw/Belete CV.docx', 'upload/awawaw/Doc1.docx', 'upload/awawaw/Logical Design.pdf', 'upload/awawaw/Logical Design11.pdf', NULL, 'upload/awawaw/Logical Design12.pdf', 'upload/awawaw/New appl.pdf', NULL, 'Approved', 'aaaa', 'vvvv', 'alemu', 'Test', 'Test'),
(92, 19, 885120051, '', 'Bago Adragot', '', 'Shipping Agent & Freight Forwarder', 'Hilina Minale', 'Ethiopia', 'Addis Ababa', 'Nefas selek', '02', 'New', NULL, 911691221, 911108871, NULL, '2022-04-18 21:00:00', '2022-04-19', NULL, NULL, 'upload/Bago Adragot/1938.docx', 'upload/Bago Adragot/Leave.docx', 'upload/Bago Adragot/minale (2).png', 'upload/Bago Adragot/photo_2021-11-16_14-01-35.jpg', NULL, 'upload/Bago Adragot/photo_2021-12-13_14-32-06.jpg', 'upload/Bago Adragot/ኢትዮጵያውያን-ለአፍሪካና.jpg', NULL, 'Approved', 'she is okay', 'approved', 'Hilina', 'Test', 'Test'),
(97, 25, 915527597, '', 'EMAA', '', 'Shipping Agent & Freight Forwarder', 'Hailu Tamene', 'Ethiopia', 'Addis Ababa', 'Lideta', '02', 'New', NULL, 123456, 9090909, 'hailu@gmail.com', '2022-04-27 21:00:00', '2022-04-28', NULL, NULL, 'upload/EMAA/Belete CV.docx', 'upload/EMAA/Conceptual design.pdf', 'upload/EMAA/Dear Madam.docx', 'upload/EMAA/Conceptual design3.pdf', NULL, 'upload/EMAA/EMA application.pdf', 'upload/EMAA/Finance specialist.pdf', NULL, 'Approved', 'Meet requirements and able to proceed', 'agreed', 'Hailu', 'abc', 'Test'),
(90, 14, 951154964, '', 'asad', '', 'Freight Forwarder', 'Hilina Minale', 'Kenya', 'EASTERN AFRICA', 'Addis Ababa', '02', 'Addis Ababa', NULL, 911691221, 911108871, NULL, '2022-04-18 21:00:00', '2022-04-21', NULL, NULL, 'upload/asad/1938.docx', 'upload/asad/Leave.docx', 'upload/asad/IMG_20210508_175210_996_2.jpg', 'upload/asad/IMG_20210508_175202_073_2.jpg', NULL, 'upload/asad/minale (2).png', 'upload/asad/photo_2021-11-16_14-01-35.jpg', NULL, 'Approved', 'vvv', 'bbbb', 'abu', 'Test', 'Test'),
(100, 28, 969614845, '', 'Alpha', '', 'Shipping Agent & Freight Forwarder', 'AMAMAMAMA', 'Ethiopia', 'EASTERN AFRICA', 'Addis Ababa', '11', 'Addis Ababa', NULL, 911691221, 911691221, 'minale2as@gmail.com', '2022-05-04 21:00:00', '2022-05-05', NULL, NULL, 'upload/Alpha/Belete CV.docx', 'upload/Alpha/Conceptual design.pdf', 'upload/Alpha/Date April 28.docx', 'upload/Alpha/4 Purchasing Mesk 29.pdf', NULL, 'upload/Alpha/Conceptual design3.pdf', 'upload/Alpha/EMAA.pdf', NULL, 'Approved', 'cccc', 'Accepted', 'AMAMA', 'Test', 'Test'),
(98, 26, 976576430, '', 'ASASA', '', 'Shipping Agent & Freight Forwarder', 'Minale', 'Ethiopia', 'Addis Ababa', 'Addis Ababa', '02', '12', NULL, 911691221, 911691221, 'minale2as@gmail.com', '2022-05-04 21:00:00', '2022-05-12', NULL, NULL, 'upload/ASASA/Belete CV.docx', 'upload/ASASA/Dear Madam.docx', 'upload/ASASA/Date April 28.docx', 'upload/ASASA/Conceptual design.pdf', NULL, 'upload/ASASA/Drawing1.pdf', 'upload/ASASA/Finance specialist.pdf', NULL, 'Approved', 'vvvvv', 'vvv', 'asc', 'Test', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `tableshippingagent`
--

CREATE TABLE `tableshippingagent` (
  `appNumber` int(9) NOT NULL,
  `companyName` varchar(30) NOT NULL,
  `generalManager` varchar(50) NOT NULL,
  `nationality` varchar(25) NOT NULL,
  `region` varchar(25) DEFAULT NULL,
  `subCity` varchar(25) DEFAULT NULL,
  `woreda` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tableshippingagent`
--

INSERT INTO `tableshippingagent` (`appNumber`, `companyName`, `generalManager`, `nationality`, `region`, `subCity`, `woreda`) VALUES
(283029323, 'hilcoe', 'arya', 'Ethiopia', 'Addis Ababa', 'asss', '02'),
(809763246, 'Ethiopian ', 'Abbeb Alem', 'Ethiopia', 'Addis Ababa', 'Addis Ababa', '02');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Category` varchar(25) NOT NULL DEFAULT 'Officer',
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(25) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `Category`, `AdminRegdate`, `status`) VALUES
(1, 'Test', 'admin', 8979555556, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Admin', '2020-02-13 12:05:09', 'Active'),
(4, 'Hilina Minale', 'minalea', 911691221, 'minale2as@gmail.com', '202cb962ac59075b964b07152d234b70', 'Officer', '2022-04-17 21:00:00', 'Active'),
(7, 'Minale Ashagrie Abebe', 'minaleas', 251911691221, 'minaleashagrie@yahoo.com', '202cb962ac59075b964b07152d234b70', 'Officer', '2022-04-19 21:00:00', 'Active'),
(8, 'Hilina Minale', 'asas', 911691221, 'minale2as22@gmail.com', '202cb962ac59075b964b07152d234b70', 'Officer', '2022-04-18 21:00:00', 'Active'),
(9, 'Abebe', 'abebe', 251911691221, 'abebe@gmail.com', '202cb962ac59075b964b07152d234b70', 'Admin', '2022-04-18 21:00:00', 'Active'),
(10, 'mengistu', 'mg', 911691221, 'mengistu@gmail.com', '202cb962ac59075b964b07152d234b70', 'Admin', '2022-04-19 21:00:00', 'Active'),
(11, 'Mengistu Alhene', 'mengistu', 940163625, 'mengistu2@gmail.com', '202cb962ac59075b964b07152d234b70', 'Officer', '2022-04-19 21:00:00', 'Active'),
(12, 'Yalew', 'tyalew', 912005392, 'yalewtesfaye12@gmail.com', '202cb962ac59075b964b07152d234b70', 'Admin', '2022-04-19 21:00:00', 'Active'),
(13, 'abc', 'abc', 12345678, 'abc@gmail.com', '202cb962ac59075b964b07152d234b70', 'Officer', '2022-04-27 21:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext,
  `Password` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Address`, `Password`, `RegDate`) VALUES
(5, 'Minale', 'Ashagrie', 911691221, 'minale2as@gmail.com', 'a9f0a078a5fcb852a9a9ad6a79a4144c', '2022-02-03 10:30:02'),
(7, 'Test', 'Test', 123456789, 'test123', 'f925916e2754e5e03f75dd58a5733251', '2022-02-11 19:08:02'),
(8, 'Hilina', 'Minale', 121212121, 'Addis Ababa', 'f925916e2754e5e03f75dd58a5733251', '2022-02-15 09:03:28'),
(9, 'Minale', 'Ashagrie', 21212121, 'Addis Ababa', 'f925916e2754e5e03f75dd58a5733251', '2022-02-17 12:02:30'),
(10, 'ashu', 'abea', 11111111, 'addis', '0192023a7bbd73250516f069df18b500', '2022-03-02 12:25:57'),
(11, 'Getachew', 'Shumeye', 911131090, 'Addis', 'e10adc3949ba59abbe56e057f20f883e', '2022-03-03 12:02:14'),
(12, 'Minale', 'Ashagrie', 12121212, '11', '81dc9bdb52d04dc20036dbd8313ed055', '2022-04-12 16:12:49'),
(13, 'mina', 'aa', 333333333, '12121212', '202cb962ac59075b964b07152d234b70', '2022-04-16 06:48:40'),
(14, 'abu', 'aa', 444444444, '11', '202cb962ac59075b964b07152d234b70', '2022-04-16 07:56:27'),
(15, 'Earmias', 'Ashagrie', 999999999, 'addis ababa', '202cb962ac59075b964b07152d234b70', '2022-04-16 15:33:34'),
(16, 'zxc', 'asdfa', 323232323, '11111111', '202cb962ac59075b964b07152d234b70', '2022-03-17 13:49:24'),
(17, 'Abebe', 'Ashagrie', 222222222, '11111111', '202cb962ac59075b964b07152d234b70', '2022-04-17 06:33:59'),
(18, 'Minale', 'Ashagrie', 777777777, 'q', '202cb962ac59075b964b07152d234b70', '2022-04-19 10:12:49'),
(19, 'Hilina', 'Minale', 911108871, 'admin', '202cb962ac59075b964b07152d234b70', '2022-04-19 13:34:35'),
(20, 'asafa', 'adane', 123123123, 'admin', '202cb962ac59075b964b07152d234b70', '2022-04-19 13:56:53'),
(21, 'Mengistu', 'Alhene', 940163625, 'Addis', '202cb962ac59075b964b07152d234b70', '2022-04-20 07:07:37'),
(22, 'alemu', 'abebe', 321321321, 'admin', '202cb962ac59075b964b07152d234b70', '2022-04-21 08:21:21'),
(23, 'Getachew', 'Shumeye', 555555555, 'qw', '202cb962ac59075b964b07152d234b70', '2022-04-21 08:25:04'),
(24, 'asasasas', 'aaa', 34343434, 'aaa', '202cb962ac59075b964b07152d234b70', '2022-04-26 22:11:01'),
(25, 'Hailu', 'Tamene', 9090909, 'Addis ', '202cb962ac59075b964b07152d234b70', '2022-04-28 13:43:54'),
(26, 'asc', 'ass', 1234123412, 'aa', '202cb962ac59075b964b07152d234b70', '2022-05-05 13:51:40'),
(27, 'asasasas', 'asasas', 1111112222, 'admin', '202cb962ac59075b964b07152d234b70', '2022-05-05 14:05:11'),
(28, 'AMAMA', 'AMAM', 4444444444, 'admin', '202cb962ac59075b964b07152d234b70', '2022-05-05 16:43:11'),
(29, 'asasasas', 'asasa', 1234567891, 'aa', '202cb962ac59075b964b07152d234b70', '2022-05-05 17:02:44'),
(30, 'aaaaaaddddd', 'addddddddd', 6543211234, 'aa', '202cb962ac59075b964b07152d234b70', '2022-05-05 17:12:28'),
(31, 'Misganaw', 'Mekonene', 930573280, '12121212', '202cb962ac59075b964b07152d234b70', '2022-05-30 11:40:29'),
(32, 'hena', 'Yehulu', 939581589, 'Bole Matemiya', '81dc9bdb52d04dc20036dbd8313ed055', '2022-06-08 11:14:26'),
(33, 'Yabsera', 'Lema', 930561904, 'Bole', '81dc9bdb52d04dc20036dbd8313ed055', '2022-06-10 17:13:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cocrenewal`
--
ALTER TABLE `cocrenewal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippingagent`
--
ALTER TABLE `shippingagent`
  ADD PRIMARY KEY (`appNumber`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `appNumber` (`appNumber`),
  ADD UNIQUE KEY `companyName` (`companyName`);

--
-- Indexes for table `tableshippingagent`
--
ALTER TABLE `tableshippingagent`
  ADD PRIMARY KEY (`appNumber`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cocrenewal`
--
ALTER TABLE `cocrenewal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shippingagent`
--
ALTER TABLE `shippingagent`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
