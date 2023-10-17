-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 07:22 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `username` varchar(15) NOT NULL,
  `passward` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(40) NOT NULL,
  `details` varchar(200) NOT NULL,
  `Date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `details`, `Date`) VALUES
('suraj', 'there is no fan in room no f120', '2023-10-11');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(40) NOT NULL,
  `Mobile_no` varchar(10) NOT NULL,
  `fees_paid` varchar(5) NOT NULL,
  `remaing_fees` varchar(5) NOT NULL,
  `photo` blob NOT NULL,
  `date` varchar(10) NOT NULL,
  `year` varchar(5) NOT NULL,
  `branch` varchar(40) NOT NULL,
  `room_no` varchar(5) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `Mobile_no`, `fees_paid`, `remaing_fees`, `photo`, `date`, `year`, `branch`, `room_no`, `address`) VALUES
('manju', '8861759896', '50000', '10000', 0x6261736176616e6e612070686f746f2e6a7067, '2023-10-15', '4', 'cse', '2', 'at:yogikoppa tq:hirekerur di:haveri');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
