-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2020 at 03:43 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leave`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `id` int(11) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `mobile` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`id`, `firstname`, `lastname`, `nic`, `gender`, `mobile`, `email`, `address`, `username`, `password`) VALUES
(2, 'Narmiga', 'Kunapala', '97561292V', 'female', 761928167, 'narmiga@gmail.com', 'udaiyarkaddu north', 'narmi', '1234'),
(6, 'Kalpa', 'Kunapala', '215655485v', 'female', 716523462, 'narmiga@gmail.com', 'udaiyarkaddu north', 'kalp', '12sd'),
(7, 'Thenu', 'Anathan', '975163283', 'Female', 75216821, 'nanthumiga@gmail.com', 'puthukudiyiruppu ,Mullaitivu', 'Thenu', 't'),
(8, 'u', 'u', '653245879', 'Male', 21546589, 'nanthumiga@gmail.com', 'jhgytfdresa', 'na', 'na'),
(9, 's', 's', '1245366596', 'Female', 75263656, 'nanthumiga@gmail.com', 'edgebseyjsrw', 'sa', 'sa'),
(10, 's', 's', '1245366596', 'Female', 75263656, 'nanthumiga@gmail.com', 'edgebseyjsrw', 'sa', 'sa');

-- --------------------------------------------------------

--
-- Table structure for table `leaveapplication`
--

CREATE TABLE `leaveapplication` (
  `Emp_Name` varchar(200) NOT NULL,
  `Emp_ID` varchar(200) NOT NULL,
  `Gender` varchar(200) NOT NULL,
  `Contact` int(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Leave_Type` varchar(200) NOT NULL,
  `Start_Date` varchar(200) NOT NULL,
  `No_Of_Days` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaveapplication`
--

INSERT INTO `leaveapplication` (`Emp_Name`, `Emp_ID`, `Gender`, `Contact`, `Email`, `Leave_Type`, `Start_Date`, `No_Of_Days`) VALUES
('Kalpana Dissanayake', 'Ad001', 'Female', 712345678, 'Kalpana@gmail.com', 'Official', '2020.01.20', 3),
('Kalpana Dissanayake', 'Ad001', 'Female', 712345678, 'Kalpana@gmail.com', 'Official', '2020.01.20', 3),
('Thenuja', 'Ad002', 'Female', 712345678, 'Thenuja@gmail.com', 'Official', '2020.01.16', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
