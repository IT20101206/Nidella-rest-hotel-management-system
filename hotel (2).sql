-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 07:20 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `approval` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventbook`
--

CREATE TABLE `eventbook` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `members` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `dec` varchar(200) DEFAULT NULL,
  `meal` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `stime` varchar(200) DEFAULT NULL,
  `etime` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventbook`
--

INSERT INTO `eventbook` (`id`, `title`, `fname`, `lname`, `members`, `phone`, `email`, `name`, `dec`, `meal`, `date`, `stime`, `etime`) VALUES
(1, 'Prof.', 'Malki', 'Bilingahawaththa', '45', '0772946083', 'malkichathuranga97@gmail.com', 'mda', 'sams', '4', '2022-04-26', '13:25', '13:25');

-- --------------------------------------------------------

--
-- Table structure for table `eventmanage`
--

CREATE TABLE `eventmanage` (
  `id` int(11) NOT NULL,
  `ename` varchar(200) NOT NULL,
  `decoration` varchar(200) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `bedding` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `cusid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`id`, `type`, `bedding`, `place`, `cusid`) VALUES
(8, 'Guest House', 'Double', 'Free', 0),
(9, 'Guest House', 'Double', 'Free', 0),
(10, 'Guest House', 'Double', 'Free', 0),
(11, '', 'Double', 'Free', 0),
(12, '', 'Quad', 'Free', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hallbook`
--

CREATE TABLE `hallbook` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `members` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `meal` varchar(200) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `stime` varchar(200) DEFAULT NULL,
  `etime` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hallbook`
--

INSERT INTO `hallbook` (`id`, `title`, `fname`, `lname`, `members`, `phone`, `email`, `type`, `qty`, `meal`, `date`, `stime`, `etime`) VALUES
(1, 'Dr.', 'Malki', 'Bilingahawaththa', '23', '0772946083', 'malkichathuranga97@gmail.com', 'Ball', '1', '3', '2022-04-16', '14:07', '19:06'),
(2, 'Miss.', 'Malki', 'Bilingahawaththa', '45', '0772946083', 'malkichathuranga98@gmail.com', 'Party', '1', '2', '2022-04-14', '15:23', '18:28'),
(3, 'Rev .', 'Malki', 'Bilingahawaththa', '45', '0772946083', 'malkichathuranga97@gmail.com', 'Ball', '4', '3', '2022-04-02', '22:17', '15:15');

-- --------------------------------------------------------

--
-- Table structure for table `hallmanage`
--

CREATE TABLE `hallmanage` (
  `id` int(11) NOT NULL,
  `hno` varchar(200) NOT NULL,
  `htype` varchar(200) NOT NULL,
  `htable` varchar(200) NOT NULL,
  `chair` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hallmanage`
--

INSERT INTO `hallmanage` (`id`, `hno`, `htype`, `htable`, `chair`, `price`) VALUES
(2, 'Wedding', 'Fresh Flower', 'Malki', '0779803792', '67000'),
(3, 'Wedding', 'Decoration 1', 'Malki', '0779803792', '200'),
(4, 'Batch Party', 'Decoration 1', 'Malki', '0779803792', '6700'),
(6, 'H08', 'Wedding', '15', '12', '200');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(1, 'Admin', '1234'),
(3, 'Malki', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `newsletterlog`
--

CREATE TABLE `newsletterlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(52) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `news` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletterlog`
--

INSERT INTO `newsletterlog` (`id`, `title`, `subject`, `news`) VALUES
(1, 'Malki', 'Room', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `tbed` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `meal` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `tbed`, `nroom`, `cin`, `cout`, `ttot`, `fintot`, `mepr`, `meal`, `btot`, `noofdays`) VALUES
(2, 'Mr.', 'Malki', 'Bilingahawaththa', 'Deluxe Room', 'Triple', 1, '2022-04-20', '2022-04-04', -3520.00, -3625.60, 0.00, 'Room only', -105.60, -16),
(3, 'Prof.', 'Malki', 'Bilingahawaththa', 'Deluxe Room', 'Quad', 1, '2022-04-07', '2022-04-30', 5060.00, 5869.60, 607.20, 'Half Board', 202.40, 23),
(4, 'Mrs.', 'Malki', 'Bilingahawaththa', 'Guest House', 'Double', 1, '2022-04-01', '2022-04-21', 3600.00, 3816.00, 144.00, 'Breakfast', 72.00, 20),
(5, 'Miss.', 'ma', 'mks', 'Guest House', 'Double', 1, '2022-05-31', '2022-05-18', -2340.00, -2480.40, -93.60, 'Breakfast', -46.80, -13);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `bedding` varchar(10) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `bedding`, `place`, `cusid`) VALUES
(18, 'Single Room', 'Double', 'Free', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(5) DEFAULT NULL,
  `FName` text DEFAULT NULL,
  `LName` text DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `National` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` text DEFAULT NULL,
  `TRoom` varchar(20) DEFAULT NULL,
  `Bed` varchar(10) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`id`, `Title`, `FName`, `LName`, `Email`, `National`, `Country`, `Phone`, `TRoom`, `Bed`, `NRoom`, `Meal`, `cin`, `cout`, `stat`, `nodays`) VALUES
(4, 'Mrs.', 'Malki', 'Bilingahawaththa', 'malkichaiiga97@gmail.com', 'Sri Lankan', 'Sri Lanka', '0772946083', 'Guest House', 'Double', '1', 'Breakfast', '2022-04-01', '2022-04-21', 'Conform', 20),
(6, 'Prof.', 'Malki', 'Bilingahawaththa', 'm@gmail.com', 'Sri Lankan', 'Sri Lanka', '0772946083', 'Guest House', 'Triple', '1', 'Breakfast', '2022-06-01', '2022-06-03', 'Not Conform', 2);

-- --------------------------------------------------------

--
-- Table structure for table `roommanage`
--

CREATE TABLE `roommanage` (
  `id` int(11) NOT NULL,
  `rno` varchar(100) NOT NULL,
  `rtype` varchar(100) NOT NULL,
  `bed` varchar(100) NOT NULL,
  `meal` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roommanage`
--

INSERT INTO `roommanage` (`id`, `rno`, `rtype`, `bed`, `meal`, `price`) VALUES
(2, 'R001', 'Luxury', 'Single', 'Chinese', '7000'),
(4, 'R002', 'Deluxury', 'King', 'Indian', '8000'),
(5, 'R003', 'Master', 'Queen', 'Chinese', '9000'),
(6, 'R001', 'Luxury', 'Single', 'Chinese', '200');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(9, 'malki', 'malkichathuranga97@gmail.com', '0f5cdf34b6d262ea06888e99da17d018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventbook`
--
ALTER TABLE `eventbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventmanage`
--
ALTER TABLE `eventmanage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hallbook`
--
ALTER TABLE `hallbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hallmanage`
--
ALTER TABLE `hallmanage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roommanage`
--
ALTER TABLE `roommanage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eventbook`
--
ALTER TABLE `eventbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eventmanage`
--
ALTER TABLE `eventmanage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hall`
--
ALTER TABLE `hall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hallbook`
--
ALTER TABLE `hallbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hallmanage`
--
ALTER TABLE `hallmanage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roommanage`
--
ALTER TABLE `roommanage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
