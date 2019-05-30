-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2019 at 05:29 PM
-- Server version: 5.7.23-log
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
-- Database: `try1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `Bno` varchar(5) NOT NULL,
  `Bname` varchar(20) NOT NULL,
  `Baddress` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`Bno`, `Bname`, `Baddress`) VALUES
('B001', 'Citi Bank', 'Koramangala'),
('B002', 'Indian Bank', 'HSR Layout'),
('B003', 'Canara Bank', 'MG Road'),
('B004', 'ICICI Bank', 'Bellandur'),
('B005', 'Yes Bank', 'HSR Layout'),
('B006', 'Vijaya Bank', 'MG Road'),
('B007', 'Citi Bank', 'MG Road'),
('B008', 'Indian Bank', 'Bellandur'),
('B009', 'ICICI Bank', 'KR Circle'),
('B010', 'IDBI Bank', 'Whitefield'),
('B011', 'Yes Bank', 'Koramangala'),
('B012', 'IDBI Bank', 'HSR Layout'),
('B013', 'Syndicate Bank', 'Bellandur'),
('B014', 'ICICI Bank', 'Koramangala'),
('B015', 'Vijaya Bank', 'JP Nagar'),
('B016', 'UCO Bank', 'Jayanagar'),
('B017', 'Yes Bank', 'JP Nagar'),
('B018', 'IDBI Bank', 'Jayanagar'),
('B019', 'Citi Bank', 'Whitefield'),
('B020', 'Vijaya Bank', 'HSR Layout');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `Cid` varchar(5) NOT NULL,
  `Coll_name` varchar(20) NOT NULL,
  `Coll_add` varchar(20) DEFAULT NULL,
  `No_of_seats` int(4) DEFAULT NULL,
  `Cutoff` int(5) DEFAULT NULL,
  `Deg_code` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`Cid`, `Coll_name`, `Coll_add`, `No_of_seats`, `Cutoff`, `Deg_code`) VALUES
('A001', 'BGS', 'KR Circle', 7, 50, 'ARC'),
('A002', 'OAC', 'Bomanahalli', 7, 70, 'ARC'),
('A003', 'ASA', 'Devanahalli', 5, 130, 'ARC'),
('A004', 'BMSCA', 'Basavanagudi', 5, 150, 'ARC'),
('A005', 'RVCA', 'Mysore Road', 5, 170, 'ARC'),
('A006', 'CMRCA', 'Whitefield', 10, 100, 'ARC'),
('E001', 'UVCE', 'KR Circle', 10, 80, 'ENG'),
('E002', 'BMSCE', 'Basavanagudi', 5, 160, 'ENG'),
('E003', 'MSRIT', 'MSR Nagar', 7, 150, 'ENG'),
('E004', 'NHCE', 'Bellandur', 15, 100, 'ENG'),
('E005', 'BIT', 'VV Puram', 6, 130, 'ENG'),
('E006', 'NITTE', 'Whitefield', 10, 50, 'ENG'),
('E007', 'RVCE', 'Mysore Road', 5, 170, 'ENG'),
('M001', 'BMC', 'KR Circle', 5, 175, 'MED'),
('M002', 'KIMS', 'Banashankari', 4, 150, 'MED'),
('M003', 'VIMSRC', 'Whitefield', 10, 100, 'MED'),
('M004', 'MMC', 'Mysore', 7, 120, 'MED'),
('M005', 'KMC', 'Manipal', 5, 130, 'MED'),
('M006', 'AMC', 'Banashankari', 15, 80, 'MED'),
('M007', 'MVJMC', 'Hoskote', 20, 40, 'MED');

-- --------------------------------------------------------

--
-- Table structure for table `coll_course`
--

CREATE TABLE `coll_course` (
  `Coll_id` varchar(5) NOT NULL,
  `Course_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coll_course`
--

INSERT INTO `coll_course` (`Coll_id`, `Course_id`) VALUES
('A001', 'AAD'),
('A004', 'AAD'),
('E004', 'AUE'),
('E006', 'AUE'),
('M006', 'BAMS'),
('M007', 'BAMS'),
('A001', 'BARC'),
('A004', 'BARC'),
('A006', 'BARC'),
('M001', 'BDS'),
('M004', 'BDS'),
('M007', 'BDS'),
('M003', 'BHMS'),
('M007', 'BHMS'),
('M005', 'BOT'),
('M006', 'BOT'),
('M007', 'BOT'),
('M003', 'BPH'),
('M007', 'BPH'),
('A001', 'BPL'),
('A002', 'BPL'),
('A004', 'BPL'),
('M002', 'BTP'),
('M007', 'BTP'),
('E003', 'CIV'),
('E006', 'CIV'),
('E001', 'CSE'),
('E004', 'CSE'),
('E006', 'CSE'),
('E007', 'CSE'),
('E001', 'ECE'),
('E005', 'ECE'),
('E006', 'ECE'),
('E002', 'EEE'),
('E006', 'EEE'),
('E007', 'EEE'),
('A001', 'HATP'),
('A002', 'HATP'),
('A005', 'HATP'),
('A001', 'IAD'),
('A003', 'IAD'),
('A005', 'IAD'),
('E002', 'ISE'),
('E006', 'ISE'),
('M001', 'MBBS'),
('M002', 'MBBS'),
('M004', 'MBBS'),
('M005', 'MBBS'),
('M007', 'MBBS'),
('E003', 'MEE'),
('E005', 'MEE'),
('E006', 'MEE'),
('A001', 'NAS'),
('A003', 'NAS'),
('A005', 'NAS');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Ccode` varchar(5) NOT NULL,
  `Cname` varchar(50) DEFAULT NULL,
  `Deg_code` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Ccode`, `Cname`, `Deg_code`) VALUES
('AAD', 'Advanced Architectural Design', 'ARC'),
('AUE', 'Automobile', 'ENG'),
('BAMS', 'Bachelor of Ayurvedic Medicine and Surgery', 'MED'),
('BARC', 'Bachelor of Architecture', 'ARC'),
('BDS', 'Bachelor of Dental Surgery', 'MED'),
('BHMS', 'Homeopathy', 'MED'),
('BOT', 'Bachelor of Occupational Therapy', 'MED'),
('BPH', 'Bachelor of Pharmacy', 'MED'),
('BPL', 'Bachelor of Planning', 'ARC'),
('BTP', 'Physiotherapy', 'MED'),
('CIV', 'Civil', 'ENG'),
('CSE', 'Computer Science', 'ENG'),
('ECE', 'Electronics and Communication', 'ENG'),
('EEE', 'Electrical', 'ENG'),
('HATP', 'History and Town Planning', 'ARC'),
('IAD', 'Interior Architecture and Design', 'ARC'),
('ISE', 'Information Science', 'ENG'),
('MBBS', 'Bachelor of Medicine', 'MED'),
('MEE', 'Mechanical', 'ENG'),
('NAS', 'Naval Architecture and Shipbuilding', 'ARC');

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE `degree` (
  `Dcode` varchar(5) NOT NULL,
  `Dname` varchar(20) NOT NULL,
  `Duration` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`Dcode`, `Dname`, `Duration`) VALUES
('ARC', 'Architecture', 5),
('ENG', 'Engineering', 4),
('MED', 'Medical', 5);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Sid` varchar(5) NOT NULL,
  `Fname` varchar(10) NOT NULL,
  `Mname` varchar(10),
  `Lname` varchar(10) NOT NULL,
  `Gender` char(2) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Mobno` bigint(10) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Annual_Inc` int(8) DEFAULT NULL,
  `Caste` varchar(10) DEFAULT NULL,
  `Mark_10` int(3) NOT NULL,
  `Mark_12` int(3) NOT NULL,
  `Phys` int(3) DEFAULT NULL,
  `Chem` int(3) DEFAULT NULL,
  `Math` int(3) DEFAULT NULL,
  `Bio` int(3) DEFAULT NULL,
  `Houseno` int(4) DEFAULT NULL,
  `State` varchar(15) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `Pin` int(6) UNSIGNED ZEROFILL DEFAULT NULL,
  `Degree` varchar(5) DEFAULT NULL,
  `Course` varchar(5) DEFAULT NULL,
  `Chosen_College` varchar(5) DEFAULT NULL,
  `Bank_paid` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Sid`, `Fname`, `Mname`, `Lname`, `Gender`, `DOB`, `Mobno`, `Email`, `Annual_Inc`, `Caste`, `Mark_10`, `Mark_12`, `Phys`, `Chem`, `Math`, `Bio`, `Houseno`, `State`, `City`, `Pin`, `Degree`, `Course`, `Chosen_College`, `Bank_paid`) VALUES
('ST001', 'AKSHATA', 'M', 'KAMATH', 'F', '2000-09-09', 9780655789, 'AMK@gmail.com', 600000, 'GM', 90, 89, 169, 156, 160, 178, 345, 'Karanataka', 'Bangalore', 560098, 'ENG', 'ISE', 'E002', 'B002'),
('ST002', 'VISHAL ', 'N', 'RAO', 'M', '2001-10-19', 9780655776, 'vishr@gmail.com', 500000, 'GM', 80, 70, 111, 98, 50, 120, 555, 'Karanataka', 'Bidar', 560066, 'ENG', 'MEE', 'E006', 'B019'),
('ST003', 'ADITI', '', 'C', 'F', '2001-01-20', 9721655443, 'aditic@gmail.com', 120000, 'SCST', 99, 95, 169, 177, 160, 179, 232, 'Karanataka', 'Bangalore', 560022, 'MED', 'MBBS', 'M002', 'B017'),
('ST004', 'MYRA', 'S', 'JACOB', 'F', '2001-06-20', 9721655421, 'mcmc@gmail.com', 1200000, 'GM', 95, 93, 160, 157, 140, 170, 909, 'Kerala', 'Kochi', 560023, 'ARC', 'BARC', 'A004', 'B008'),
('ST005', 'TARUN', 'B', 'L', 'M', '2000-06-12', 8970922567, 'tarunbl@gmail.com', 45000, 'SCST', 80, 70, 143, 137, 123, 101, 988, 'Maharashtra', 'Mumbai', 560021, 'ARC', 'IAD', 'A001', 'B011'),
('ST006', 'SHREYA', '', 'BHAT', 'F', '2000-09-02', 8970922543, '', 450000, 'GM', 88, 90, 178, 176, 156, 168, 966, 'Maharashtra', 'Pune', 560033, 'MED', 'BTP', 'M002', 'B012'),
('ST007', 'MATHEW', 'C', 'NAIR', 'M', '2001-08-02', 8970922555, 'mcn@gmail.com', 950000, 'GM', 78, 99, 123, 145, 177, 120, 765, 'Karanataka', 'Mangalore', 560065, 'ARC', 'NAS', 'A003', 'B016'),
('ST008', 'ERA', '', 'GUPTA', 'F', '2001-10-10', 8970922871, 'erag@gmail.com', 240000, 'GM', 78, 75, 110, 120, 80, 165, 433, 'Karanataka', 'Bangalore', 560011, 'ENG', 'ECE', 'E001', 'B006'),
('ST009', 'MAITHILI', '', 'SETHIA', 'F', '2001-09-10', 7665908745, 'ms@gmail.com', 50000, 'GM', 90, 78, 120, 98, 77, 179, 877, 'Karanataka', 'Udupi', 560010, 'MED', 'BAMS', 'M006', 'B018'),
('ST010', 'DEEPAK', '', 'SETHIA', 'M', '2000-05-04', 7665906665, 'deep@gmail.com', 600000, 'GM', 90, 89, 123, 148, 169, 145, 32, 'Karanataka', 'Bangalore', 560034, 'ARC', 'AAD', 'A001', 'B004'),
('ST011', 'AMRITA', 'S', 'SHARMA', 'F', '2000-09-13', 7665932467, 'amss@gmail.com', 600000, 'GM', 66, 77, 120, 110, 98, 144, 7, 'Karanataka', 'Bangalore', 560030, 'MED', 'BHMS', 'M003', 'B001'),
('ST012', 'PRAVEEN', '', 'KUMAR', 'M', '2001-12-17', 7009342689, 'PR@gmail.com', 6000000, 'GM', 84, 81, 167, 156, 100, 166, 71, 'Kerala', 'Trivandrum', 560132, 'ENG', 'AUE', 'E004', 'B002'),
('ST013', 'SHEEBA', '', 'ABDUL', 'F', '2001-12-18', 7009342654, '', 6000000, 'GM', 78, 77, 100, 98, 67, 133, 888, 'Maharashtra', 'Mumbai', 560999, 'ARC', 'BPL', 'A002', 'B004'),
('ST014', 'DEEPAK', '', 'GIRI', 'M', '2000-11-18', 7009222654, 'dgiri@gmail.com', 45000, 'SCST', 90, 88, 127, 119, 134, 163, 459, 'Karanataka', 'Mangalore', 560976, 'MED', 'BOT', 'M005', 'B007'),
('ST015', 'AJAY', '', 'KUMAR', 'M', '2000-07-05', 9056411897, 'ajay@gmail.com', 450000, 'SCST', 93, 88, 142, 133, 111, 166, 11, 'Kerala', 'Calicut', 570097, 'MED', 'BPH', 'M003', 'B020'),
('ST016', 'VIJAY', 'R', 'JAIN', 'M', '2001-07-15', 9056414399, 'vijay@gmail.com', 1200000, 'GM', 80, 80, 66, 85, 40, 89, 6589, 'Maharashtra', 'Pune', 570123, 'ENG', 'CSE', 'E006', 'B017'),
('ST017', 'MEDHA', 'K', 'RAO', 'F', '2001-11-27', 9056412943, 'MKR@gmail.com', 50000, 'SCST', 94, 86, 174, 165, 91, 177, 765, 'Maharashtra', 'Mumbai', 570923, 'ENG', 'EEE', 'E006', 'B015'),
('ST018', 'LEELA', '', 'CHOUDHARY', 'F', '2001-10-23', 8956733200, 'leela@gmail.com', 800000, 'GM', 94, 89, 123, 178, 177, 120, 89, 'Karanataka', 'Bangalore', 560024, 'ARC', 'HATP', 'A002', 'B015'),
('ST019', 'AMAN', 'C', 'BHATT', 'M', '2001-05-09', 7889076809, 'acb@gmail.com', 750000, 'GM', 90, 89, 179, 178, 177, 180, 6, 'Karanataka', 'Bangalore', 560025, 'MED', 'BDS', 'M001', 'B013'),
('ST020', 'PREETI', 'C', 'ROCHE', 'F', '2001-05-10', 7889076708, 'pree@gmail.com', 9500000, 'GM', 88, 86, 179, 177, 174, 180, 98, 'Karanataka', 'Bangalore', 560026, 'ARC', 'NAS', 'A005', 'B013');

--
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `t1` BEFORE INSERT ON `student` FOR EACH ROW begin if new.Phys>180 || new.Chem>180 || new.Math>180 || new.Bio>180 then signal sqlstate '45000' set message_text='Marks should be lesser than 180'; end if; end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `t2` BEFORE INSERT ON `student` FOR EACH ROW if new.Mark_10>100 then set new.Mark_10=100; end if
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `t6` BEFORE UPDATE ON `student` FOR EACH ROW begin if ((new.Phys+new.Chem+new.Math+new.Bio)/4)<(select Cutoff from college where new.Chosen_College=Cid) then signal sqlstate '45000' set message_text='Cutoff of chosen college is higher'; elseif(new.Course not in(select Course_id from coll_course where Coll_id=new.Chosen_College)) then signal sqlstate '45000' set message_text='course not available available'; end if; end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `AGE` int(11) NOT NULL,
  `RANK` int(11) NOT NULL,
  `m1` int(3) DEFAULT NULL,
  `m2` int(3) DEFAULT NULL,
  `m3` int(3) DEFAULT NULL,
  `aver` int(3) DEFAULT NULL,
  `College` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`ID`, `NAME`, `AGE`, `RANK`, `m1`, `m2`, `m3`, `aver`, `College`) VALUES
(10, 'Sonal', 79, 44, 89, 89, 99, NULL, NULL),
(20, 'Maria', 20, 45, 99, 79, 59, NULL, NULL),
(23, 'John', 20, 22, 80, 90, 89, NULL, NULL),
(30, 'j', 33, 12, 66, 89, 89, NULL, NULL),
(45, 'Anton', 21, 89, 120, 90, 100, NULL, 'E003'),
(99, 'Mark', 21, 12, 178, 177, 140, NULL, 'E001'),
(777, 'dd', 22, 44, 100, 100, 100, NULL, 'E001'),
(1234, 'efvr', 22, 44, 135, 135, 135, NULL, 'E002'),
(7583, 'jaaaa', 33, 12, 66, 89, 89, NULL, 'E003'),
(7732, 'JEDKAJ', 33, 12, 66, 89, 89, NULL, 'E003'),
(7779, 'dd', 22, 44, 100, 100, 100, NULL, 'E001');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v1`
-- (See below for the actual view)
--
CREATE TABLE `v1` (
`Cid` varchar(5)
,`Coll_name` varchar(20)
,`Coll_add` varchar(20)
,`No_of_seats` int(4)
,`Cutoff` int(5)
,`Deg_code` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v2`
-- (See below for the actual view)
--
CREATE TABLE `v2` (
`Cid` varchar(5)
,`Coll_name` varchar(20)
,`Coll_add` varchar(20)
,`No_of_seats` int(4)
,`Cutoff` int(5)
,`Deg_code` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v4`
-- (See below for the actual view)
--
CREATE TABLE `v4` (
`Cid` varchar(5)
,`Coll_name` varchar(20)
,`Coll_add` varchar(20)
,`No_of_seats` int(4)
,`Cutoff` int(5)
,`Deg_code` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v7`
-- (See below for the actual view)
--
CREATE TABLE `v7` (
`Cid` varchar(5)
,`Coll_name` varchar(20)
,`Coll_add` varchar(20)
,`No_of_seats` int(4)
,`Cutoff` int(5)
,`Deg_code` varchar(5)
,`Course_id` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v8`
-- (See below for the actual view)
--
CREATE TABLE `v8` (
`Cid` varchar(5)
,`Coll_name` varchar(20)
,`Coll_add` varchar(20)
,`No_of_seats` int(4)
,`Cutoff` int(5)
,`Deg_code` varchar(5)
,`Course_id` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v9`
-- (See below for the actual view)
--
CREATE TABLE `v9` (
`Cid` varchar(5)
,`Coll_name` varchar(20)
,`Coll_add` varchar(20)
,`No_of_seats` int(4)
,`Cutoff` int(5)
,`Deg_code` varchar(5)
,`Course_id` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v18`
-- (See below for the actual view)
--
CREATE TABLE `v18` (
`Cid` varchar(5)
,`Coll_name` varchar(20)
,`Coll_add` varchar(20)
,`No_of_seats` int(4)
,`Cutoff` int(5)
,`Deg_code` varchar(5)
,`Allotted` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v19`
-- (See below for the actual view)
--
CREATE TABLE `v19` (
`Cid` varchar(5)
,`Coll_name` varchar(20)
,`Coll_add` varchar(20)
,`No_of_seats` int(4)
,`Cutoff` int(5)
,`Deg_code` varchar(5)
,`Allotted` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v20`
-- (See below for the actual view)
--
CREATE TABLE `v20` (
`Cid` varchar(5)
,`Coll_name` varchar(20)
,`Coll_add` varchar(20)
,`No_of_seats` int(4)
,`Cutoff` int(5)
,`Deg_code` varchar(5)
,`Allotted` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `v1`
--
DROP TABLE IF EXISTS `v1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v1`  AS  select `college`.`Cid` AS `Cid`,`college`.`Coll_name` AS `Coll_name`,`college`.`Coll_add` AS `Coll_add`,`college`.`No_of_seats` AS `No_of_seats`,`college`.`Cutoff` AS `Cutoff`,`college`.`Deg_code` AS `Deg_code` from `college` where (`college`.`Deg_code` = 'ENG') order by `college`.`Cutoff` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v2`
--
DROP TABLE IF EXISTS `v2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v2`  AS  select `college`.`Cid` AS `Cid`,`college`.`Coll_name` AS `Coll_name`,`college`.`Coll_add` AS `Coll_add`,`college`.`No_of_seats` AS `No_of_seats`,`college`.`Cutoff` AS `Cutoff`,`college`.`Deg_code` AS `Deg_code` from `college` where (`college`.`Deg_code` = 'MED') order by `college`.`Cutoff` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v4`
--
DROP TABLE IF EXISTS `v4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v4`  AS  select `college`.`Cid` AS `Cid`,`college`.`Coll_name` AS `Coll_name`,`college`.`Coll_add` AS `Coll_add`,`college`.`No_of_seats` AS `No_of_seats`,`college`.`Cutoff` AS `Cutoff`,`college`.`Deg_code` AS `Deg_code` from `college` where (`college`.`Deg_code` = 'ARC') order by `college`.`Cutoff` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v7`
--
DROP TABLE IF EXISTS `v7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v7`  AS  select `college`.`Cid` AS `Cid`,`college`.`Coll_name` AS `Coll_name`,`college`.`Coll_add` AS `Coll_add`,`college`.`No_of_seats` AS `No_of_seats`,`college`.`Cutoff` AS `Cutoff`,`college`.`Deg_code` AS `Deg_code`,`coll_course`.`Course_id` AS `Course_id` from (`college` join `coll_course`) where ((`college`.`Deg_code` = 'ENG') and (`coll_course`.`Coll_id` = `college`.`Cid`)) order by `college`.`Cutoff` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v8`
--
DROP TABLE IF EXISTS `v8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v8`  AS  select `college`.`Cid` AS `Cid`,`college`.`Coll_name` AS `Coll_name`,`college`.`Coll_add` AS `Coll_add`,`college`.`No_of_seats` AS `No_of_seats`,`college`.`Cutoff` AS `Cutoff`,`college`.`Deg_code` AS `Deg_code`,`coll_course`.`Course_id` AS `Course_id` from (`college` join `coll_course`) where ((`college`.`Deg_code` = 'MED') and (`coll_course`.`Coll_id` = `college`.`Cid`)) order by `college`.`Cutoff` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v9`
--
DROP TABLE IF EXISTS `v9`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v9`  AS  select `college`.`Cid` AS `Cid`,`college`.`Coll_name` AS `Coll_name`,`college`.`Coll_add` AS `Coll_add`,`college`.`No_of_seats` AS `No_of_seats`,`college`.`Cutoff` AS `Cutoff`,`college`.`Deg_code` AS `Deg_code`,`coll_course`.`Course_id` AS `Course_id` from (`college` join `coll_course`) where ((`college`.`Deg_code` = 'ARC') and (`coll_course`.`Coll_id` = `college`.`Cid`)) order by `college`.`Cutoff` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v18`
--
DROP TABLE IF EXISTS `v18`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v18`  AS  select `c`.`Cid` AS `Cid`,`c`.`Coll_name` AS `Coll_name`,`c`.`Coll_add` AS `Coll_add`,`c`.`No_of_seats` AS `No_of_seats`,`c`.`Cutoff` AS `Cutoff`,`c`.`Deg_code` AS `Deg_code`,count(`s`.`Sid`) AS `Allotted` from (`college` `c` left join `student` `s` on((`s`.`Chosen_College` = `c`.`Cid`))) where (`c`.`Deg_code` = 'ARC') group by `c`.`Cid` order by `c`.`Cutoff` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v19`
--
DROP TABLE IF EXISTS `v19`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v19`  AS  select `c`.`Cid` AS `Cid`,`c`.`Coll_name` AS `Coll_name`,`c`.`Coll_add` AS `Coll_add`,`c`.`No_of_seats` AS `No_of_seats`,`c`.`Cutoff` AS `Cutoff`,`c`.`Deg_code` AS `Deg_code`,count(`s`.`Sid`) AS `Allotted` from (`college` `c` left join `student` `s` on((`s`.`Chosen_College` = `c`.`Cid`))) where (`c`.`Deg_code` = 'ENG') group by `c`.`Cid` order by `c`.`Cutoff` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v20`
--
DROP TABLE IF EXISTS `v20`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v20`  AS  select `c`.`Cid` AS `Cid`,`c`.`Coll_name` AS `Coll_name`,`c`.`Coll_add` AS `Coll_add`,`c`.`No_of_seats` AS `No_of_seats`,`c`.`Cutoff` AS `Cutoff`,`c`.`Deg_code` AS `Deg_code`,count(`s`.`Sid`) AS `Allotted` from (`college` `c` left join `student` `s` on((`s`.`Chosen_College` = `c`.`Cid`))) where (`c`.`Deg_code` = 'MED') group by `c`.`Cid` order by `c`.`Cutoff` desc ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`Bno`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`Cid`),
  ADD UNIQUE KEY `Coll_name` (`Coll_name`),
  ADD KEY `Deg_code` (`Deg_code`);

--
-- Indexes for table `coll_course`
--
ALTER TABLE `coll_course`
  ADD PRIMARY KEY (`Coll_id`,`Course_id`),
  ADD KEY `Course_id` (`Course_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Ccode`),
  ADD KEY `Deg_code` (`Deg_code`);

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`Dcode`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Sid`),
  ADD KEY `Degree` (`Degree`),
  ADD KEY `Course` (`Course`),
  ADD KEY `Chosen_College` (`Chosen_College`),
  ADD KEY `Bank_paid` (`Bank_paid`);

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `College` (`College`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table1`
--
ALTER TABLE `table1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7780;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `college`
--
ALTER TABLE `college`
  ADD CONSTRAINT `college_ibfk_1` FOREIGN KEY (`Deg_code`) REFERENCES `degree` (`Dcode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coll_course`
--
ALTER TABLE `coll_course`
  ADD CONSTRAINT `coll_course_ibfk_1` FOREIGN KEY (`Coll_id`) REFERENCES `college` (`Cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coll_course_ibfk_2` FOREIGN KEY (`Course_id`) REFERENCES `course` (`Ccode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`Deg_code`) REFERENCES `degree` (`Dcode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Degree`) REFERENCES `degree` (`Dcode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`Course`) REFERENCES `course` (`Ccode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`Chosen_College`) REFERENCES `college` (`Cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_4` FOREIGN KEY (`Bank_paid`) REFERENCES `bank` (`Bno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `table1`
--
ALTER TABLE `table1`
  ADD CONSTRAINT `table1_ibfk_1` FOREIGN KEY (`College`) REFERENCES `college` (`Cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
