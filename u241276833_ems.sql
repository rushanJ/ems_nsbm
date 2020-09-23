-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 05:34 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u241276833_ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowance`
--

CREATE TABLE `allowance` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowance`
--

INSERT INTO `allowance` (`id`, `name`) VALUES
(7, 'vehical'),
(8, 'medical'),
(9, 'fuel'),
(10, 'food'),
(11, 'transport'),
(12, 'vehicle'),
(13, '1250'),
(14, 'B1'),
(15, 'B1');

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `employee` int(11) NOT NULL,
  `inTiime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `outTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`id`, `date`, `employee`, `inTiime`, `outTime`) VALUES
(1, '2020-09-02', 6, '2020-09-02 09:00:51', '2020-09-02 17:10:20'),
(2, '2020-09-03', 6, '2020-09-02 08:20:51', '2020-09-02 17:20:20'),
(3, '2020-09-02', 7, '2020-09-02 09:00:51', '2020-09-02 18:20:20'),
(4, '2020-09-03', 7, '2020-09-23 07:28:33', '2020-09-02 14:20:20'),
(5, '2020-09-02', 8, '2020-09-02 09:00:51', '2020-09-02 14:20:20'),
(6, '2020-09-03', 8, '2020-09-02 08:45:51', '2020-09-02 19:20:20'),
(7, '2020-09-02', 8, '2020-09-02 09:03:51', '2020-09-02 16:12:20'),
(8, '2020-09-02', 9, '2020-09-02 08:10:51', '2020-09-02 17:10:20'),
(9, '2020-09-03', 9, '2020-09-02 09:00:51', '2020-09-02 18:20:20'),
(10, '2020-09-02', 10, '2020-09-02 09:12:51', '2020-09-02 17:20:20'),
(11, '2020-09-03', 10, '2020-09-02 09:00:51', '2020-09-02 14:20:20'),
(12, '2020-09-02', 11, '2020-09-02 07:10:51', '2020-09-02 17:10:20'),
(13, '2020-09-03', 11, '2020-09-02 08:10:51', '2020-09-02 16:12:20'),
(14, '2020-09-02', 12, '2020-09-02 09:00:51', '2020-09-02 19:20:20'),
(15, '2020-09-03', 12, '2020-09-02 09:12:51', '2020-09-02 17:10:20'),
(16, '2020-09-02', 13, '2020-09-02 09:00:51', '2020-09-02 14:20:20'),
(17, '2020-09-03', 13, '2020-09-02 09:00:51', '2020-09-02 18:20:20'),
(18, '2020-09-02', 14, '2020-09-23 07:46:01', '2020-09-02 17:20:20'),
(19, '2020-09-03', 14, '2020-09-02 08:10:51', '2020-09-02 18:20:20'),
(20, '2020-09-02', 15, '2020-09-02 09:00:51', '2020-09-02 17:20:20'),
(21, '2020-09-03', 15, '2020-09-02 09:00:51', '2020-09-02 14:20:20'),
(22, '2020-09-02', 16, '2020-09-02 09:00:51', '2020-09-02 16:12:20'),
(23, '2020-09-03', 16, '2020-09-02 09:00:51', '2020-09-02 14:20:20'),
(24, '2020-09-02', 17, '2020-09-02 08:10:51', '2020-09-02 17:20:20'),
(25, '2020-09-03', 17, '2020-09-02 08:10:51', '2020-09-02 19:20:20'),
(26, '2020-09-02', 18, '2020-09-02 09:00:51', '2020-09-02 17:10:20'),
(27, '2020-09-02', 18, '2020-09-02 09:00:51', '2020-09-02 17:20:20'),
(28, '2020-09-03', 18, '2020-09-02 09:00:51', '2020-09-02 16:12:20'),
(29, '2020-09-02', 19, '2020-09-02 09:00:51', '2020-09-02 18:20:20'),
(30, '2020-09-02', 19, '2020-09-02 09:00:51', '2020-09-02 17:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `deduction`
--

CREATE TABLE `deduction` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deduction`
--

INSERT INTO `deduction` (`id`, `name`) VALUES
(6, 'EPF'),
(7, 'ETF'),
(8, 'ABC Union'),
(9, 'DEF Union '),
(10, 'qwe');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Applied Science'),
(5, ''),
(6, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `empleave`
--

CREATE TABLE `empleave` (
  `id` int(11) NOT NULL,
  `type` enum('MEDICAL','STANDERD','SHORTLEAVE','HALFDAY','MATERNITY') NOT NULL,
  `requestedDate` date NOT NULL DEFAULT current_timestamp(),
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `status` enum('WAITING','ACCEPTED','REJECTED') NOT NULL,
  `remark` text NOT NULL,
  `employee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empleave`
--

INSERT INTO `empleave` (`id`, `type`, `requestedDate`, `startDate`, `endDate`, `status`, `remark`, `employee`) VALUES
(1, 'MEDICAL', '2020-09-01', '2020-09-06', '2020-09-08', 'WAITING', 'jjbhhjb', 6),
(2, 'SHORTLEAVE', '2020-09-10', '2020-09-10', '2020-09-10', 'REJECTED', 'h hhjjh hj', 10),
(3, 'HALFDAY', '2020-09-01', '2020-09-01', '2020-09-01', 'WAITING', 'hbhjjhj', 14),
(4, 'STANDERD', '2020-09-03', '2020-09-10', '2020-09-14', 'ACCEPTED', 'hghjbj', 15),
(5, 'MEDICAL', '0000-00-00', '2020-09-23', '2020-09-23', 'WAITING', '        mcjnch', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `epfNo` varchar(30) NOT NULL,
  `etfNo` varchar(30) NOT NULL,
  `name` varchar(70) NOT NULL,
  `address` text NOT NULL,
  `bank` varchar(30) NOT NULL,
  `bankAccount` int(11) NOT NULL,
  `contactNo` int(11) NOT NULL,
  `title` enum('Mr.','Mrs','Miss','') NOT NULL,
  `basic` decimal(7,2) NOT NULL,
  `department` int(11) NOT NULL,
  `manager` int(11) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` enum('ADMIN','MANAGER','ACCOUNTENT','EMPLOYEE') NOT NULL,
  `status` enum('ACTIVE','INACTIVE','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `nic`, `epfNo`, `etfNo`, `name`, `address`, `bank`, `bankAccount`, `contactNo`, `title`, `basic`, `department`, `manager`, `email`, `password`, `role`, `status`) VALUES
(1, '9712232935', '23332asdd', 'qda2222', 'Rushan', 'Kegalle', 'BOC', 1233234345, 25525, 'Mr.', '35000.00', 0, 1, 'rushanthasindu10@gmail.com', 'rushan', 'ADMIN', 'ACTIVE'),
(6, '9976545654v', '543', '4576', 'Trilaksha sewwandi', '345/5,\r\ngalahitiywa,\r\nbathramulla', 'sampath', 1254875896, 775847512, 'Miss', '45300.00', 1, 1, 'thrilaksha@hmail.com', 'tt11123', 'MANAGER', 'ACTIVE'),
(7, '5254882652v', '589', '898', 'amandi', '78/5,\r\ngodagama', 'sampath', 2545288, 702545254, 'Miss', '58485.00', 2, 1, 'hasjuybhd@gmail.com', 'aa1111', 'MANAGER', 'ACTIVE'),
(8, '2541554v', '586', '985', 'sithira', '56/8,\r\ngodagama', 'boc', 8574778, 77854221, 'Mr.', '48741.00', 3, 1, 'pgdghsndj@gmail.com', 'aa2222', 'MANAGER', 'ACTIVE'),
(9, '254155v', '785', '965', 'mewan', '249/9,\r\nwijayarama rd,\r\ngmapaha', 'sampath', 5515444, 702883479, 'Mr.', '36484.00', 4, 1, 'hasddk@gmail.com', 'pp111', 'MANAGER', 'ACTIVE'),
(10, '678789V', '2586', '588', 'pasindu', '56/9\r\nhomagama', 'sampath', 5874581, 75845751, 'Mr.', '20000.00', 1, 6, 'mhhdkdkjk@gmail.com', 'mm111', 'EMPLOYEE', 'ACTIVE'),
(11, '5875425v', '487', '895', 'sew', '254/7\r\nbadulla,\r\nhali ela', 'sampath', 8754562, 762266991, 'Mrs', '19000.00', 1, 6, 'ggfvt@gmail.com', 'mm6985', 'EMPLOYEE', 'ACTIVE'),
(13, '65847852v', '7786', '9855', 'chalani', '890/8\r\nmaharagama', 'BOC', 45878541, 725458514, 'Mrs', '20000.00', 2, 7, 'fmngjtgnj@gmail.com', 'ppt222', 'EMPLOYEE', 'ACTIVE'),
(14, '', '897', '963', 'ramindu', '687/7\r\nganemulla', 'BOC', 8575521, 70589654, 'Mrs', '20000.00', 2, 7, 'fhvbhvbfv@gmail.com', 'lkl54', 'EMPLOYEE', 'ACTIVE'),
(15, '88755554v', '784', '889', 'kavinga', '56/9\r\njfhhfb', 'sampath', 4415110, 70254852, 'Mr.', '20000.00', 3, 8, 'gdhdhjkn@gmail.com', 'gt1254', 'ACCOUNTENT', 'ACTIVE'),
(17, '78542541v', '12', '254', 'shavindya', '254/12\r\nnuwaraeliya', 'BOC', 215445, 7541544, 'Mrs', '20000.00', 3, 8, 'sabsahdb@gmail.com', 'kk555', 'ACCOUNTENT', 'ACTIVE'),
(18, '5284684v', '444', '222', 'jazz', '45/4\r\nkandy', 'BOC', 1654515, 7584255, 'Mrs', '25000.00', 4, 9, 'jdbch@gmail.com', 'bh552', 'EMPLOYEE', 'ACTIVE'),
(19, '151442v', '552', '335', 'sew', '45/5,\r\nkandy', 'sampath', 545120145, 702554875, 'Mrs', '20000.00', 4, 9, 'hsdhdv@gmail.com ', 'jbh222', 'EMPLOYEE', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `employeeallowance`
--

CREATE TABLE `employeeallowance` (
  `id` int(11) NOT NULL,
  `employee` int(11) NOT NULL,
  `allowance` int(11) NOT NULL,
  `ammount` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeallowance`
--

INSERT INTO `employeeallowance` (`id`, `employee`, `allowance`, `ammount`) VALUES
(1, 1, 1, '4000.00'),
(3, 1, 2, '3000.00'),
(4, 1, 3, '5000.00'),
(5, 5, 2, '4000.00'),
(7, 7, 1, '5000.00'),
(6, 9, 2, '7000.00'),
(9, 15, 1, '7500.00');

-- --------------------------------------------------------

--
-- Table structure for table `employeedeductions`
--

CREATE TABLE `employeedeductions` (
  `id` int(11) NOT NULL,
  `employee` int(11) NOT NULL,
  `deductions` int(11) NOT NULL,
  `ammount` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeedeductions`
--

INSERT INTO `employeedeductions` (`id`, `employee`, `deductions`, `ammount`) VALUES
(1, 1, 1, '3000.00'),
(2, 1, 2, '400.00');

-- --------------------------------------------------------

--
-- Table structure for table `loanemployee`
--

CREATE TABLE `loanemployee` (
  `id` int(11) NOT NULL,
  `employee` int(11) NOT NULL,
  `loan` int(11) NOT NULL,
  `date` date NOT NULL,
  `ammount` decimal(7,2) NOT NULL,
  `status` enum('ONGOING','FINISHED','FINISHED BY EMPLOYEE') NOT NULL,
  `installments` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanemployee`
--

INSERT INTO `loanemployee` (`id`, `employee`, `loan`, `date`, `ammount`, `status`, `installments`) VALUES
(1, 7, 1, '2020-09-02', '50000.00', 'FINISHED', 4500),
(2, 10, 2, '2020-09-02', '99999.99', 'ONGOING', 10000),
(3, 14, 1, '2020-09-02', '50000.00', 'FINISHED', 5500);

-- --------------------------------------------------------

--
-- Table structure for table `loanmaster`
--

CREATE TABLE `loanmaster` (
  `id` int(11) NOT NULL,
  `type` enum('REDUCING BALANCE','FIXED') NOT NULL,
  `name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanmaster`
--

INSERT INTO `loanmaster` (`id`, `type`, `name`) VALUES
(1, 'FIXED', 'housing'),
(2, 'FIXED', 'personal'),
(3, 'FIXED', 'vehical');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowance`
--
ALTER TABLE `allowance`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction`
--
ALTER TABLE `deduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empleave`
--
ALTER TABLE `empleave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nic` (`nic`),
  ADD UNIQUE KEY `epfNo` (`epfNo`),
  ADD UNIQUE KEY `etfNo` (`etfNo`),
  ADD UNIQUE KEY `bankAccount` (`bankAccount`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employeeallowance`
--
ALTER TABLE `employeeallowance`
  ADD PRIMARY KEY (`employee`,`allowance`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `employeedeductions`
--
ALTER TABLE `employeedeductions`
  ADD PRIMARY KEY (`employee`,`deductions`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `loanemployee`
--
ALTER TABLE `loanemployee`
  ADD PRIMARY KEY (`employee`,`loan`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `loanmaster`
--
ALTER TABLE `loanmaster`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allowance`
--
ALTER TABLE `allowance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `deduction`
--
ALTER TABLE `deduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `empleave`
--
ALTER TABLE `empleave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employeeallowance`
--
ALTER TABLE `employeeallowance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employeedeductions`
--
ALTER TABLE `employeedeductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loanemployee`
--
ALTER TABLE `loanemployee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loanmaster`
--
ALTER TABLE `loanmaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
