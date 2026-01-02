-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 02:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `res_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_chair`
--

CREATE TABLE `booking_chair` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `chair_id` int(11) DEFAULT NULL,
  `chair_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_chair`
--

INSERT INTO `booking_chair` (`id`, `booking_id`, `chair_id`, `chair_no`) VALUES
(1, '5ccbd8f5609b3', 38, 'TBL-4-1'),
(2, '5ccbd8f5609b3', 39, 'TBL-4-2');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `res_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `make_date` date DEFAULT NULL,
  `make_time` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(30) DEFAULT NULL,
  `bill` float DEFAULT NULL,
  `transactionid` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0- reject, 1-confirmed',
  `reject` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `booking_id`, `res_id`, `c_id`, `make_date`, `make_time`, `name`, `phone`, `booking_date`, `booking_time`, `bill`, `transactionid`, `status`, `reject`) VALUES
(1, '5ccbd8f5609b3', 1, 34, '2023-03-23', '12:00:21pm', 'helly', '01516189260', '2019-05-04', '1:15pm', 0, 'trxoodkf', 1, 0),
(2, '5ccbd8f5609b3', 27, 34, '2023-03-31', '12:00:21pm', 'helly', '01516189260', '2019-05-04', '1:15pm', 0, 'trxoodkf', 1, 0),
(3, '5ccbd8f5609b3', 27, 34, '2023-03-31', '12:00:21pm', 'helly', '01516189260', '2019-05-04', '1:15pm', 0, 'trxoodkf', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`) VALUES
(1, 'Anand'),
(4, 'Vadodara'),
(7, 'Rajkot'),
(11, 'Gandhinagar ');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL,
  `res_id` int(11) DEFAULT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `madeby` varchar(300) DEFAULT NULL,
  `food_type` varchar(100) NOT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `res_id`, `item_name`, `madeby`, `food_type`, `price`, `image`) VALUES
(4, 4, 'Barbecue chicken (Quarter)', 'Broiler Chicken', 'Fast Food', 90, 'barbecue.jpg'),
(5, 4, 'Naan', 'Wheat flour (Atta, Maida)', 'Fast Food', 25, 'naan.jpg'),
(6, 4, 'Chicken Biryani', 'Rice and Chicken', 'Fast Food', 120, 'chicken birayni.jpg'),
(7, 5, 'Rice (Normal)', 'Rice', 'Fast Food', 30, 'rice.jpg'),
(8, 5, 'Moong Dal', 'Moong dal', 'Fast Food', 30, 'moong dal.jpg'),
(9, 5, 'Fish Curry', 'Rui Fish', 'Fast Food', 120, 'fish curry.jpg'),
(10, 27, 'cake', 'Bhumi Patel', 'Dessert', 250, 'dessert-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(15) NOT NULL,
  `Name` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Email` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Phone` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `address` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `Password` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `logo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `Name`, `Email`, `Phone`, `address`, `Password`, `logo`) VALUES
(1, 'Bhumi', 'b@gmail.com', '7894561231', 'Bbit', '123', 0x6176617461722d30332e6a7067),
(2, 'Prachi ', 'p@gmail.com', '9876543213', 'BBit', '123', 0x6176617461722d30332e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_chair`
--

CREATE TABLE `restaurant_chair` (
  `id` int(11) NOT NULL,
  `tbl_id` int(11) DEFAULT NULL,
  `chair_no` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_chair`
--

INSERT INTO `restaurant_chair` (`id`, `tbl_id`, `chair_no`) VALUES
(24, 3, 'TBL-1-1'),
(25, 3, 'TBL-1-2'),
(26, 3, 'TBL-1-3'),
(27, 3, 'TBL-1-4'),
(28, 3, 'TBL-1-5'),
(29, 3, 'TBL-1-6'),
(30, 5, 'TBL-1-1'),
(31, 6, 'TBL-1-2'),
(32, 12, 'TBL-1-3'),
(33, 13, 'TBL-1-4'),
(34, 5, 'TBL-3-1'),
(35, 5, 'TBL-3-2'),
(36, 5, 'TBL-2-3'),
(37, 5, 'TBL-1-4'),
(38, 6, 'TBL-4-1'),
(39, 6, 'TBL-4-2'),
(40, 6, 'TBL-4-3'),
(41, 7, 'TBL-1-1'),
(42, 13, 'TBL-3-1'),
(43, 7, 'TBL-1-3'),
(44, 7, 'TBL-1-4'),
(46, 15, 'TBL-2-1'),
(47, 14, 'TBL-2-2'),
(48, 15, 'TBL-2-3'),
(49, 9, 'TBL-3-1'),
(50, 9, 'TBL-3-2'),
(51, 9, 'TBL-3-3'),
(52, 9, 'TBL-3-4'),
(53, 10, 'TBL-4-1'),
(54, 10, 'TBL-4-2'),
(55, 11, 'TBL-1-1'),
(56, 11, 'TBL-1-2'),
(57, 11, 'TBL-1-3'),
(58, 11, 'TBL-1-4'),
(59, 14, 'Table 1-1'),
(61, 14, 'Table 1-2'),
(62, 17, 'table 4-1'),
(64, 17, 'table 4-2'),
(65, 17, 'table 4-3'),
(66, 18, 'tabel 7-1'),
(67, 18, 'tabel 7-2'),
(68, 18, 'tabel 7-3'),
(69, 18, 'tabel 7-4'),
(71, 18, 'tabel 7-6'),
(72, 19, 'table 27-1'),
(73, 19, 'table 27-2'),
(74, 19, 'table 27-3'),
(75, 19, 'table 27-4'),
(76, 19, 'table 27-5'),
(77, 19, 'table 27-6');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_info`
--

CREATE TABLE `restaurant_info` (
  `id` int(11) NOT NULL,
  `restaurent_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `logo` blob DEFAULT NULL,
  `location` int(11) NOT NULL,
  `Open-Close Timing` varchar(15) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `bkashnumber` varchar(20) DEFAULT NULL,
  `approve_status` int(11) NOT NULL DEFAULT 0 COMMENT '0-not approve,1-approve ',
  `role` int(20) DEFAULT NULL COMMENT '1 = restaurant, 2 = customer '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_info`
--

INSERT INTO `restaurant_info` (`id`, `restaurent_name`, `email`, `phone`, `address`, `logo`, `location`, `Open-Close Timing`, `password`, `bkashnumber`, `approve_status`, `role`) VALUES
(1, 'Dolphin Restaurant', 'dolphin@gmail.com', '9687338385', 'Anand-Vidhyanagar, Road, near Panchal Hall, Anand, Gujarat 388001', 0x646f6c7068696e2e706e67, 1, '', '123', NULL, 0, 2),
(27, 'Alpha Restaurant ', 'alpha@gmail.com', '7211122777', 'alpha restaurant Anand - Vidyanagar Road Anand, Gujarat 388001', 0x616c7068612e706e67, 1, '', '123', NULL, 0, 1),
(28, 'Kathiyawadi Darbar Restaurant', 'kathiyawadi@gmail.com', '9824318383', 'First floor, shop no. 1,2,3&4, Kamalraj complex, Mota bazar, Iskon temple, Vallabh Vidyanagar, Anand, ', 0x6b6174687961776164692e706e67, 1, '', '123', NULL, 0, 2),
(29, 'Adarsh Restaurant', 'adarsh@gmail.com', '9879580608', 'HXH9+MP6, Samarkha Chokdi, NH 48, Anand, Gujarat 388001', 0x6164617273682e706e67, 1, '', '123', NULL, 0, 2),
(30, 'Sarita Restaurant', 'sarita@gmail.com', '9898805801', 'Railway Station Rd, opp. Railway Station, Raja Ranchod Market, Ganesh Chokdi, Sardar Ganj, Anand, Gujarat 388001', 0x7361726974612e706e67, 1, '', '123', NULL, 0, 2),
(33, 'Rudra', 'R@gmail.com', '7894561230', 'bbit', 0x61626f75742d322e6a7067, 0, '', '123', NULL, 0, 2),
(34, 'helly', 'helly@gmail.com', '7895462131', 'bbit', 0x626c6f672d30322e6a7067, 0, '', '123', NULL, 0, 2),
(42, 'Blueberry Restaurant', 'blue@gmail.com', '7845129632', 'Plot No. 316,1st Floor ,Gh-4,above Indian Bank,Sector 16,Gandhinagar, Gujarat ', 0x62675f322e6a7067, 11, '', '123', NULL, 0, 1),
(44, 'Balista Restaurant', 'balista@gmail.com', '9874568529', '24, Pramukh cyprus, opp. aska hospital, Kudasan, Gandhinagar, Gujarat ', 0x62675f322e6a7067, 11, '', '123', NULL, 0, 1),
(45, 'Dhani Restaurant ', 'Dhani@gmail.com', '8456213789', 'Jamnagar Road chouki Dhani Resort, Rajkot   ', 0x73732e706e67, 7, '', '123', NULL, 0, 1),
(46, 'Red pepper', 'Redp@gmail.com', '8451623794', 'Kalawad Road, Rajkot', 0x62675f312e6a7067, 7, '', '123', NULL, 0, 2),
(47, 'Sankalp Restaurant', 'sankalp@gmail.com', '7894569871', '7th Floor, Sankalp Square 3 -A, Taj Skyline, Sindhubhavan Road, vadodra', 0x62672d30312e6a7067, 4, '', '123', NULL, 0, 2),
(48, 'Dawat Restaurant', 'dawat@gmail.com', '8745965845', 'Lalbagh Rd, Opposite Shreyas School, Manjalpur Naka, ShreePalli society, Manjalpur, Vadodara, Gujarat 390011', 0x62675f322e6a7067, 4, '', '123', NULL, 0, 1),
(49, 'Bhumi', 'bpatel@gmail.com', '9999900000', 'bbit vvn', 0x6176617461722d30332e6a7067, 0, '', '123', NULL, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_tables`
--

CREATE TABLE `restaurant_tables` (
  `id` int(11) NOT NULL,
  `res_id` int(11) DEFAULT NULL,
  `table_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_tables`
--

INSERT INTO `restaurant_tables` (`id`, `res_id`, `table_name`) VALUES
(3, 1, 'TBL-1'),
(4, 1, 'TBL-2'),
(5, 4, 'TBL-1'),
(6, 4, 'TBL-2'),
(7, 7, 'TBL-1'),
(8, 1, 'TBL-3'),
(9, 1, 'TBL-4'),
(10, 7, 'TBL-1'),
(11, 11, 'TBL-1'),
(12, 4, 'TBL-1'),
(13, 4, 'Table 3'),
(14, 27, 'Table 1'),
(15, 27, 'table 2'),
(16, 27, 'tabel 5'),
(17, 27, 'table 4'),
(18, 27, 'tabel 7'),
(19, 27, 'table 27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_chair`
--
ALTER TABLE `booking_chair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_chair`
--
ALTER TABLE `restaurant_chair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`restaurent_name`,`email`,`phone`,`address`,`location`,`Open-Close Timing`,`password`,`bkashnumber`,`approve_status`,`role`),
  ADD KEY `restaurent_name` (`restaurent_name`,`email`,`phone`,`address`,`Open-Close Timing`,`password`,`bkashnumber`,`approve_status`,`role`);

--
-- Indexes for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_chair`
--
ALTER TABLE `booking_chair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restaurant_chair`
--
ALTER TABLE `restaurant_chair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
