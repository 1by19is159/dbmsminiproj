-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2022 at 07:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `couriermanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `courierdetails`
--

CREATE TABLE `courierdetails` (
  `bid` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `name` text NOT NULL,
  `phnumber` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `pincode` text NOT NULL,
  `courierweight` text NOT NULL,
  `couriertype` text NOT NULL,
  `amount` text NOT NULL,
  `rname` text NOT NULL,
  `rphnumber` text NOT NULL,
  `address2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courierdetails`
--

INSERT INTO `courierdetails` (`bid`, `date`, `name`, `phnumber`, `address`, `pincode`, `courierweight`, `couriertype`, `amount`, `rname`, `rphnumber`, `address2`) VALUES
(5, '2022-01-13 19:46:00', 'srujan', '7894561230', 'abcd', '560064', '5kg', 'nnn', '200', 'subh', '9638527410', 'mmm'),
(6, '2022-01-13 20:08:00', 'Vikas', '741852963', 'asd', '789456', '2kg', 'nnn', '100', 'Virat', '9638527410', 'zzz');

-- --------------------------------------------------------

--
-- Table structure for table `deliverydetails`
--

CREATE TABLE `deliverydetails` (
  `did` int(11) NOT NULL,
  `couriernumber` int(11) NOT NULL,
  `branchname` text NOT NULL,
  `staffname` text NOT NULL,
  `deliveredto` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliverydetails`
--

INSERT INTO `deliverydetails` (`did`, `couriernumber`, `branchname`, `staffname`, `deliveredto`, `date`) VALUES
(2, 1111, 'pp', 'Sumit', 'subh', '2022-01-14 19:53:00'),
(4, 1112, 'Bangalore', 'Subhadip', 'Vikas', '2022-01-14 09:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `scheduletable`
--

CREATE TABLE `scheduletable` (
  `shid` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `cournum` int(11) NOT NULL,
  `brcode` text NOT NULL,
  `staffname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scheduletable`
--

INSERT INTO `scheduletable` (`shid`, `date`, `cournum`, `brcode`, `staffname`) VALUES
(11, '2022-01-13 22:49:00', 1111, '1234', 'Sumit'),
(12, '2022-01-13 22:14:00', 1112, '560064', 'Subhadip'),
(13, '2022-01-14 11:29:00', 123, '1456', 'ggl');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sid` int(11) NOT NULL,
  `branchcode` text NOT NULL,
  `branchname` varchar(50) NOT NULL,
  `branchaddress` varchar(50) NOT NULL,
  `branchpincode` int(11) NOT NULL,
  `staffname` text NOT NULL,
  `phnumber` text NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `branchcode`, `branchname`, `branchaddress`, `branchpincode`, `staffname`, `phnumber`, `address`) VALUES
(2, '1234', 'pp', 'abcd', 560064, 'Sumit', '7894561230', 'abcd'),
(3, '1122', 'Bangalore', 'abcd', 560064, 'Subhadip', '7894561230', 'abcd'),
(4, '560064', 'Mumbai', 'abcd', 560064, 'Subhadip p', '7894561230', 'asd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courierdetails`
--
ALTER TABLE `courierdetails`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `couriernumber` (`couriernumber`);

--
-- Indexes for table `scheduletable`
--
ALTER TABLE `scheduletable`
  ADD PRIMARY KEY (`shid`),
  ADD UNIQUE KEY `cournum` (`cournum`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courierdetails`
--
ALTER TABLE `courierdetails`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scheduletable`
--
ALTER TABLE `scheduletable`
  MODIFY `shid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
