-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 01:50 PM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `userType` enum('Customer','Technical Professional','Customer Support','System Admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `fullname`, `userType`) VALUES
('BC', '1234', 'Byron Caberos', 'Customer Support'),
('JS', '1234', 'John  Stathias', 'System Admin'),
('NK', '1234', 'Natassa Karampetsou', 'Customer'),
('VL', '1234', 'Vasilis Liotas', 'Technical Professional');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
