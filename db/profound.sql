-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2024 at 12:41 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profound`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `fullname`) VALUES
(1, 'JS', '1234', 'js@ceid.gr', 'John S.');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fullname`, `username`, `password`, `email`) VALUES
(1, 'Natassa K.', 'NK', '1234', 'nk@ceid.gr');

-- --------------------------------------------------------

--
-- Table structure for table `customer_request`
--

CREATE TABLE `customer_request` (
  `id` int(10) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `tp_id` int(11) NOT NULL,
  `tp_service` int(11) NOT NULL,
  `tp_location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_request`
--

INSERT INTO `customer_request` (`id`, `customer_id`, `tp_id`, `tp_service`, `tp_location`) VALUES
(1, 1, 1, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `customer_review`
--

CREATE TABLE `customer_review` (
  `id` int(10) NOT NULL,
  `tp_request` int(10) NOT NULL,
  `review` enum('1 star','2 stars','3 stars','4 stars','5 stars') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_review`
--

INSERT INTO `customer_review` (`id`, `tp_request`, `review`) VALUES
(1, 1, '4 stars');

-- --------------------------------------------------------

--
-- Table structure for table `customer_support`
--

CREATE TABLE `customer_support` (
  `id` int(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_support`
--

INSERT INTO `customer_support` (`id`, `fullname`, `username`, `password`, `email`) VALUES
(1, 'Byron K.', 'BK', '1234', 'bk@ceid.gr');

-- --------------------------------------------------------

--
-- Table structure for table `technicalprofessionalslocation`
--

CREATE TABLE `technicalprofessionalslocation` (
  `id` int(10) NOT NULL,
  `location` enum('Athens Center','Athens North','Athens South','Athens East','Athens West') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `technicalprofessionalslocation`
--

INSERT INTO `technicalprofessionalslocation` (`id`, `location`) VALUES
(1, 'Athens Center'),
(2, 'Athens North'),
(3, 'Athens South'),
(4, 'Athens East'),
(5, 'Athens West');

-- --------------------------------------------------------

--
-- Table structure for table `technicalprofessionalsservices`
--

CREATE TABLE `technicalprofessionalsservices` (
  `id` int(10) NOT NULL,
  `service` enum('Ηydraulic Εngineer','Electrical Engineer','Mechanical Engineer','Refrigeration Engineer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `technicalprofessionalsservices`
--

INSERT INTO `technicalprofessionalsservices` (`id`, `service`) VALUES
(1, 'Ηydraulic Εngineer'),
(2, 'Electrical Engineer'),
(3, 'Mechanical Engineer'),
(4, 'Refrigeration Engineer');

-- --------------------------------------------------------

--
-- Table structure for table `techprof`
--

CREATE TABLE `techprof` (
  `id` int(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `techprof`
--

INSERT INTO `techprof` (`id`, `fullname`, `username`, `password`, `email`, `phone`) VALUES
(1, 'Vassilis L.', 'VL', '1234', 'vl@ceid.gr', 6912345678);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_request`
--
ALTER TABLE `customer_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer` (`customer_id`),
  ADD KEY `tp` (`tp_id`),
  ADD KEY `tploc` (`tp_location`),
  ADD KEY `tpserv` (`tp_service`);

--
-- Indexes for table `customer_review`
--
ALTER TABLE `customer_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cust_req` (`tp_request`);

--
-- Indexes for table `customer_support`
--
ALTER TABLE `customer_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicalprofessionalslocation`
--
ALTER TABLE `technicalprofessionalslocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicalprofessionalsservices`
--
ALTER TABLE `technicalprofessionalsservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `techprof`
--
ALTER TABLE `techprof`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_request`
--
ALTER TABLE `customer_request`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_review`
--
ALTER TABLE `customer_review`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_support`
--
ALTER TABLE `customer_support`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technicalprofessionalslocation`
--
ALTER TABLE `technicalprofessionalslocation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `technicalprofessionalsservices`
--
ALTER TABLE `technicalprofessionalsservices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `techprof`
--
ALTER TABLE `techprof`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_request`
--
ALTER TABLE `customer_request`
  ADD CONSTRAINT `customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tp` FOREIGN KEY (`tp_id`) REFERENCES `techprof` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tploc` FOREIGN KEY (`tp_location`) REFERENCES `technicalprofessionalslocation` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tpserv` FOREIGN KEY (`tp_service`) REFERENCES `technicalprofessionalsservices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_review`
--
ALTER TABLE `customer_review`
  ADD CONSTRAINT `cust_req` FOREIGN KEY (`tp_request`) REFERENCES `customer_request` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technicalprofessionalslocation`
--
ALTER TABLE `technicalprofessionalslocation`
  ADD CONSTRAINT `profuser` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technicalprofessionalsservices`
--
ALTER TABLE `technicalprofessionalsservices`
  ADD CONSTRAINT `user` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
