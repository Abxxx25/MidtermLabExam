-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2025 at 05:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentinfodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `coursetb`
--

CREATE TABLE `coursetb` (
  `courseId` int(11) NOT NULL,
  `courseName` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coursetb`
--

INSERT INTO `coursetb` (`courseId`, `courseName`) VALUES
(1, 'IT'),
(2, 'BSBA'),
(3, 'ABEL'),
(4, 'BPA');

-- --------------------------------------------------------

--
-- Table structure for table `studentrecordtb`
--

CREATE TABLE `studentrecordtb` (
  `studentId` int(11) NOT NULL,
  `firstName` varchar(250) DEFAULT NULL,
  `lastName` varchar(250) DEFAULT NULL,
  `middleName` varchar(250) DEFAULT NULL,
  `houseNo` int(11) DEFAULT NULL,
  `brgyName` varchar(250) DEFAULT NULL,
  `municipality` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `region` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `birthdate` varchar(250) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `studContactNo` varchar(250) DEFAULT NULL,
  `emailAddress` varchar(250) DEFAULT NULL,
  `guardianFirstName` varchar(250) DEFAULT NULL,
  `guardianLastName` varchar(250) DEFAULT NULL,
  `hobbies` varchar(250) DEFAULT NULL,
  `nickname` varchar(250) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `yearId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentrecordtb`
--

INSERT INTO `studentrecordtb` (`studentId`, `firstName`, `lastName`, `middleName`, `houseNo`, `brgyName`, `municipality`, `province`, `region`, `country`, `birthdate`, `age`, `studContactNo`, `emailAddress`, `guardianFirstName`, `guardianLastName`, `hobbies`, `nickname`, `courseId`, `yearId`) VALUES
(1, 'Joy Abigail', 'Eslao', 'B.', 123, 'Brgy 1', 'Manila', 'Metro Manila', 'NCR', 'Philippines', '2000-05-15', 24, '0965264291', 'joyabigail@gmail.com', 'Genesis', NULL, NULL, NULL, NULL, NULL),
(2, 'Maria', 'Santos', 'S.', 456, 'Brgy 2', 'Quezon City', 'Metro Manila', 'NCR', 'Philippines', '2002-07-10', 22, '09234567892', 'maria@gmail.com', 'Ana', NULL, NULL, NULL, NULL, NULL),
(3, 'Pedro', 'Reyes', 'R.', 789, 'Brgy 3', 'Pasig', 'Metro Manila', 'NCR', 'Philippines', '2001-12-20', 23, '09345678901', 'pedro@gmail.com', 'Jose', NULL, NULL, NULL, NULL, NULL),
(101, 'Alice', 'Smith', 'Jane', 123, 'Oakridge', 'Springfield', 'Clark County', 'Midwest', 'USA', '2002-07-15', 21, '555-1234', 'alice.smith@example.com', 'Robert', 'Smith', 'Reading, Hiking', 'Ali', 1, 2),
(102, 'Bob', 'Johnson', 'Michael', 456, 'Pineview', 'Shelbyville', 'Shelby County', 'South', 'USA', '2001-12-03', 22, '555-5678', 'bob.johnson@example.com', 'Linda', 'Johnson', 'Gaming, Music', 'Bobby', 2, 3),
(103, 'Charlie', 'Williams', 'David', 789, 'Maplewood', 'Capital City', 'Franklin County', 'Northeast', 'USA', '2003-04-22', 20, '555-9012', 'charlie.williams@example.com', 'William', 'Williams', 'Sports, Movies', 'Chuck', 3, 1),
(104, 'Diana', 'Brown', 'Lynn', 1011, 'Willow Creek', 'Riverside', 'Jefferson County', 'West', 'USA', '2000-09-10', 23, '555-3456', 'diana.brown@example.com', 'Mary', 'Brown', 'Painting, Writing', 'Di', 4, 4),
(105, 'Ethan', 'Davis', 'Paul', 1213, 'Cedar Point', 'Hilldale', 'Madison County', 'Midwest', 'USA', '2002-01-28', 21, '555-7890', 'ethan.davis@example.com', 'Richard', 'Davis', 'Coding, Travel', 'E', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `yeartb`
--

CREATE TABLE `yeartb` (
  `yearId` int(11) NOT NULL,
  `yearLvl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `yeartb`
--

INSERT INTO `yeartb` (`yearId`, `yearLvl`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coursetb`
--
ALTER TABLE `coursetb`
  ADD PRIMARY KEY (`courseId`);

--
-- Indexes for table `studentrecordtb`
--
ALTER TABLE `studentrecordtb`
  ADD PRIMARY KEY (`studentId`),
  ADD KEY `courseId` (`courseId`),
  ADD KEY `yearId` (`yearId`);

--
-- Indexes for table `yeartb`
--
ALTER TABLE `yeartb`
  ADD PRIMARY KEY (`yearId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `studentrecordtb`
--
ALTER TABLE `studentrecordtb`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `studentrecordtb`
--
ALTER TABLE `studentrecordtb`
  ADD CONSTRAINT `studentrecordtb_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `coursetb` (`courseId`),
  ADD CONSTRAINT `studentrecordtb_ibfk_2` FOREIGN KEY (`yearId`) REFERENCES `yeartb` (`yearId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
