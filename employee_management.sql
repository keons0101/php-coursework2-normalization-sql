-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2026 at 06:48 AM
-- Server version: 8.0.45
-- PHP Version: 8.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentCode` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `DepartmentName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `LocationID` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentCode`, `DepartmentName`, `LocationID`) VALUES
('D001', 'Human Resources', 'L001'),
('D002', 'Finance', 'L001'),
('D003', 'IT Support', 'L002'),
('D004', 'Marketing', 'L003'),
('D005', 'Sales', 'L004'),
('D006', 'Operations', 'L002');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `EmployeeName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `EmployeeEmail` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `JobTitle` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  `HireDate` date NOT NULL,
  `DepartmentCode` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `EmployeeName`, `EmployeeEmail`, `JobTitle`, `Salary`, `HireDate`, `DepartmentCode`) VALUES
('E001', 'Alice Johnson', 'alice.johnson@company.com', 'HR Specialist', 52000.00, '2021-03-15', 'D001'),
('E002', 'Brian Smith', 'brian.smith@company.com', 'HR Assistant', 47000.00, '2022-07-10', 'D001'),
('E003', 'Catherine Lee', 'catherine.lee@company.com', 'Financial Analyst', 68000.00, '2020-01-20', 'D002'),
('E004', 'David Brown', 'david.brown@company.com', 'Accountant', 61000.00, '2019-11-05', 'D002'),
('E005', 'Emma Wilson', 'emma.wilson@company.com', 'IT Support Specialist', 58000.00, '2023-02-12', 'D003'),
('E006', 'Frank Miller', 'frank.miller@company.com', 'System Administrator', 75000.00, '2021-09-18', 'D003'),
('E007', 'Grace Taylor', 'grace.taylor@company.com', 'Marketing Coordinator', 54000.00, '2022-05-25', 'D004'),
('E008', 'Henry Anderson', 'henry.anderson@company.com', 'Marketing Manager', 72000.00, '2020-08-30', 'D004'),
('E009', 'Isabella Thomas', 'isabella.thomas@company.com', 'Sales Representative', 50000.00, '2023-06-14', 'D005'),
('E010', 'Jack White', 'jack.white@company.com', 'Sales Representative', 51000.00, '2022-04-01', 'D005'),
('E011', 'Karen Harris', 'karen.harris@company.com', 'Sales Manager', 78000.00, '2018-12-11', 'D005'),
('E012', 'Liam Martin', 'liam.martin@company.com', 'Operations Coordinator', 56000.00, '2021-01-09', 'D006'),
('E013', 'Mia Thompson', 'mia.thompson@company.com', 'Operations Manager', 80000.00, '2019-06-21', 'D006'),
('E014', 'Noah Garcia', 'noah.garcia@company.com', 'HR Specialist', 53000.00, '2024-01-17', 'D001'),
('E015', 'Olivia Martinez', 'olivia.martinez@company.com', 'Financial Analyst', 69000.00, '2023-09-03', 'D002'),
('E016', 'Paul Robinson', 'paul.robinson@company.com', 'IT Support Specialist', 59000.00, '2024-02-28', 'D003'),
('E017', 'Queen Davis', 'queen.davis@company.com', 'Marketing Coordinator', 55000.00, '2021-07-19', 'D004'),
('E018', 'Ryan Clark', 'ryan.clark@company.com', 'Sales Representative', 49500.00, '2020-10-07', 'D005'),
('E019', 'Sophia Lewis', 'sophia.lewis@company.com', 'Operations Coordinator', 57000.00, '2022-11-23', 'D006'),
('E020', 'Thomas Walker', 'thomas.walker@company.com', 'System Administrator', 77000.00, '2023-04-16', 'D003');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LocationID` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `City` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LocationID`, `City`) VALUES
('L001', 'Vancouver'),
('L002', 'Burnaby'),
('L003', 'Surrey'),
('L004', 'Richmond');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentCode`),
  ADD KEY `LocationID` (`LocationID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD UNIQUE KEY `EmployeeEmail` (`EmployeeEmail`),
  ADD KEY `DepartmentCode` (`DepartmentCode`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `location` (`LocationID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`DepartmentCode`) REFERENCES `department` (`DepartmentCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
