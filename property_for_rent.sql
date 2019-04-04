-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2019 at 02:52 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `std_6102041510038`
--

-- --------------------------------------------------------

--
-- Table structure for table `property_for_rent`
--

CREATE TABLE `property_for_rent` (
  `id` int(11) NOT NULL,
  `property_no` varchar(5) DEFAULT NULL,
  `street` text,
  `city` text,
  `postcode` varchar(10) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `rooms` int(5) DEFAULT NULL,
  `rent` float(7,2) DEFAULT NULL,
  `private_owner_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `property_for_rent`
--
ALTER TABLE `property_for_rent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `private_owner_id` (`private_owner_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `property_for_rent`
--
ALTER TABLE `property_for_rent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `property_for_rent`
--
ALTER TABLE `property_for_rent`
  ADD CONSTRAINT `property_for_rent_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  ADD CONSTRAINT `property_for_rent_ibfk_2` FOREIGN KEY (`private_owner_id`) REFERENCES `private_owner` (`id`),
  ADD CONSTRAINT `property_for_rent_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
