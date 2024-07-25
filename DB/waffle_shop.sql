-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 07:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `waffle_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `prod_id` varchar(100) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` double NOT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `em_username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_id`, `prod_id`, `prod_name`, `type`, `quantity`, `price`, `date`, `image`, `em_username`) VALUES
(1, 1, '01', 'Money', 'Drinks', 2, 200, '2024-05-08', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Capture.PNG', 'admin'),
(2, 1, '01', 'Money', 'Drinks', 2, 200, '2024-05-08', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Capture.PNG', 'admin'),
(3, 1, '01', 'Money', 'Drinks', 3, 300, '2024-05-08', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Capture.PNG', 'admin'),
(4, 1, '01', 'Money', 'Drinks', 6, 600, '2024-05-08', 'C:\\\\\\\\\\\\\\\\Users\\\\\\\\\\\\\\\\Ahmed Rafi\\\\\\\\\\\\\\\\Desktop\\\\\\\\\\\\\\\\Capture.PNG', 'admin'),
(5, 1, '01', 'Money', 'Drinks', 2, 200, '2024-05-08', 'C:\\\\\\\\\\\\\\\\Users\\\\\\\\\\\\\\\\Ahmed Rafi\\\\\\\\\\\\\\\\Desktop\\\\\\\\\\\\\\\\Capture.PNG', 'admin'),
(6, 1, '0205', 'Nothing', 'Drinks', 2, 320, '2024-05-08', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Capture2.PNG', 'admin'),
(7, 1, '01', 'Money', 'Drinks', 2, 200, '2024-05-08', 'C:\\\\\\\\\\\\\\\\Users\\\\\\\\\\\\\\\\Ahmed Rafi\\\\\\\\\\\\\\\\Desktop\\\\\\\\\\\\\\\\Capture.PNG', 'admin'),
(8, 1, '0205', 'Nothing', 'Drinks', 2, 320, '2024-05-08', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Capture2.PNG', 'admin'),
(9, 1, '01', 'Money', 'Drinks', 2, 200, '2024-05-08', 'C:\\\\\\\\\\\\\\\\Users\\\\\\\\\\\\\\\\Ahmed Rafi\\\\\\\\\\\\\\\\Desktop\\\\\\\\\\\\\\\\Capture.PNG', 'admin'),
(10, 1, '0205', 'Nothing', 'Drinks', 2, 320, '2024-05-08', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Capture2.PNG', 'admin'),
(11, 1, '01', 'Money', 'Drinks', 2, 200, '2024-05-08', 'C:\\\\\\\\\\\\\\\\Users\\\\\\\\\\\\\\\\Ahmed Rafi\\\\\\\\\\\\\\\\Desktop\\\\\\\\\\\\\\\\Capture.PNG', 'admin'),
(12, 1, '05', 'Red velvet', 'Waffle', 2, 1320, '2024-05-08', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Jamuna1.jpg', 'admin'),
(13, 2, '01', 'Money', 'Drinks', 2, 200, '2024-05-08', 'C:\\\\\\\\\\\\\\\\Users\\\\\\\\\\\\\\\\Ahmed Rafi\\\\\\\\\\\\\\\\Desktop\\\\\\\\\\\\\\\\Capture.PNG', 'admin'),
(14, 2, '0205', 'Nothing', 'Drinks', 3, 480, '2024-05-08', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Capture2.PNG', 'admin'),
(17, 3, '01', 'Money', 'Drinks', 3, 300, '2024-05-08', 'C:\\\\\\\\\\\\\\\\Users\\\\\\\\\\\\\\\\Ahmed Rafi\\\\\\\\\\\\\\\\Desktop\\\\\\\\\\\\\\\\Capture.PNG', 'admin'),
(18, 3, '0205', 'Nothing', 'Drinks', 5, 800, '2024-05-08', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Capture2.PNG', 'admin'),
(22, 4, '07', 'NUTELLA', 'Waffle', 2, 320, '2024-05-09', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Images\\\\\\\\Nutellaa.PNG', 'admin'),
(23, 4, '10', 'COKE', 'Drinks', 1, 60, '2024-05-09', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Images\\\\\\\\coke.jpg', 'admin'),
(24, 5, '01', 'DEATHBY NUTELLA', 'Waffle', 3, 510, '2024-05-09', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Images\\\\\\\\Death by nutella.png', 'rafee'),
(25, 5, '02', 'BANANATELLA & NUTS', 'Waffle', 2, 320, '2024-05-09', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Images\\\\\\\\Bananatella.png', 'rafee'),
(26, 5, '01', 'DEATHBY NUTELLA', 'Waffle', 3, 510, '2024-05-09', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Images\\\\\\\\Death by nutella.png', 'admin'),
(27, 5, '02', 'BANANATELLA & NUTS', 'Waffle', 5, 800, '2024-05-09', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Images\\\\\\\\Bananatella.png', 'admin'),
(28, 5, '10', 'COKE', 'Drinks', 3, 180, '2024-05-09', 'C:\\\\\\\\Users\\\\\\\\Ahmed Rafi\\\\\\\\Desktop\\\\\\\\Images\\\\\\\\coke.jpg', 'admin'),
(34, 6, '01', 'DEATHBY NUTELLA', 'Waffle', 2, 340, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Death by nutella.png', 'admin'),
(35, 6, '01', 'DEATHBY NUTELLA', 'Waffle', 2, 340, '2024-07-20', 'D:\\\\\\\\University_Projects\\\\\\\\AOOP Project\\\\\\\\Images\\\\\\\\Death by nutella.png', 'admin'),
(36, 7, '01', 'DEATHBY NUTELLA', 'Waffle', 1, 170, '2024-07-20', 'D:\\\\\\\\University_Projects\\\\\\\\AOOP Project\\\\\\\\Images\\\\\\\\Death by nutella.png', 'admin'),
(37, 7, '02', 'BANANATELLA & NUTS', 'Waffle', 1, 160, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Bananatella.png', 'admin'),
(38, 7, '03', 'FRUITY BLISS', 'Waffle', 1, 240, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Fruty Bliss.png', 'admin'),
(39, 7, '04', 'STRAWBERRY BANANA& NUTELLA', 'Waffle', 1, 175, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Straawberry.png', 'admin'),
(40, 7, '05', 'BANGLA PIZZA', 'Waffle', 1, 175, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Bangla pizza.png', 'admin'),
(41, 7, '06', 'NUTELLA', 'Waffle', 1, 160, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Nutellaa.PNG', 'admin'),
(42, 7, '07', 'RED VELVET', 'Waffle', 1, 160, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Red Velvet.PNG', 'admin'),
(43, 7, '09', 'COKE', 'Drinks', 1, 60, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\coke.jpg', 'admin'),
(44, 7, '10', 'Very Very Strawberry', 'Waffle', 1, 175, '2024-07-20', 'D:\\\\\\\\University_Projects\\\\\\\\AOOP Project\\\\\\\\Images\\\\\\\\very Strawberry.png', 'admin'),
(46, 8, '02', 'BANANATELLA & NUTS', 'Waffle', 1, 160, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Bananatella.png', 'admin'),
(47, 8, '04', 'STRAWBERRY BANANA& NUTELLA', 'Waffle', 1, 175, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Straawberry.png', 'admin'),
(48, 8, '05', 'BANGLA PIZZA', 'Waffle', 5, 875, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Bangla pizza.png', 'admin'),
(49, 8, '09', 'COKE', 'Drinks', 1, 60, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\coke.jpg', 'admin'),
(50, 8, '07', 'RED VELVET', 'Waffle', 5, 800, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Red Velvet.PNG', 'admin'),
(51, 8, '04', 'STRAWBERRY BANANA& NUTELLA', 'Waffle', 5, 875, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Straawberry.png', 'admin'),
(52, 9, '01', 'DEATHBY NUTELLA', 'Waffle', 5, 850, '2024-07-20', 'D:\\\\\\\\University_Projects\\\\\\\\AOOP Project\\\\\\\\Images\\\\\\\\Death by nutella.png', 'admin'),
(54, 9, '05', 'BANGLA PIZZA', 'Waffle', 5, 875, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Bangla pizza.png', 'admin'),
(55, 9, '04', 'STRAWBERRY BANANA& NUTELLA', 'Waffle', 3, 525, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Straawberry.png', 'admin'),
(56, 9, '10', 'Very Very Strawberry', 'Waffle', 1, 175, '2024-07-20', 'D:\\\\\\\\University_Projects\\\\\\\\AOOP Project\\\\\\\\Images\\\\\\\\very Strawberry.png', 'admin'),
(57, 9, '07', 'RED VELVET', 'Waffle', 2, 320, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Red Velvet.PNG', 'admin'),
(58, 9, '09', 'COKE', 'Drinks', 5, 300, '2024-07-20', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\coke.jpg', 'admin'),
(59, 9, '10', 'Very Very Strawberry', 'Waffle', 5, 875, '2024-07-20', 'D:\\\\\\\\University_Projects\\\\\\\\AOOP Project\\\\\\\\Images\\\\\\\\very Strawberry.png', 'admin'),
(61, 10, '06', 'NUTELLA', 'Waffle', 3, 480, '2024-07-21', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Nutellaa.PNG', 'admin01'),
(62, 10, '01', 'DEATHBY NUTELLA', 'Waffle', 3, 510, '2024-07-21', 'D:\\\\\\\\University_Projects\\\\\\\\AOOP Project\\\\\\\\Images\\\\\\\\Death by nutella.png', 'admin01'),
(63, 10, '09', 'COKE', 'Drinks', 3, 180, '2024-07-21', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\coke.jpg', 'admin01');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `username`, `password`, `question`, `answer`, `date`) VALUES
(1, 'admin', 'admin', 'What is your favorite Color?', 'red', NULL),
(2, 'admin01', 'admin01', 'What is your favorite movie?', 'Inception', '2024-04-13'),
(4, 'anik', 'anik123', 'What is your favorite Color?', 'Red', '2024-05-04'),
(5, 'anik', 'anik123', 'What is your favorite Color?', 'Red', '2024-05-04'),
(6, 'rafee', 'rafee123', 'What is your favorite movie?', 'Inception', '2024-05-09'),
(7, 'rafee', 'rafee123', 'What is your favorite movie?', 'Inception', '2024-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `prod_id` varchar(100) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `prod_id`, `prod_name`, `type`, `stock`, `price`, `status`, `image`, `date`) VALUES
(7, '01', 'DEATHBY NUTELLA', 'Waffle', 77, 170, 'Available', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Death by nutella.png', '2024-05-09'),
(8, '02', 'BANANATELLA & NUTS', 'Waffle', 86, 160, 'Available', 'D:\\University_Projects\\AOOP Project\\Images\\Bananatella.png', '2024-05-09'),
(9, '03', 'FRUITY BLISS', 'Waffle', 95, 240, 'Available', 'D:\\University_Projects\\AOOP Project\\Images\\Fruty Bliss.png', '2024-05-09'),
(10, '04', 'STRAWBERRY BANANA& NUTELLA', 'Waffle', 82, 175, 'Available', 'D:\\University_Projects\\AOOP Project\\Images\\Straawberry.png', '2024-05-09'),
(13, '05', 'NUTELLA', 'Waffle', 94, 160, 'Available', 'D:\\University_Projects\\AOOP Project\\Images\\Nutellaa.PNG', '2024-05-09'),
(14, '06', 'RED VELVET', 'Waffle', 92, 160, 'Available', 'D:\\University_Projects\\AOOP Project\\Images\\Red Velvet.PNG', '2024-05-09'),
(16, '07', 'COKE', 'Waffle', 86, 60, 'Available', 'D:\\University_Projects\\AOOP Project\\Images\\coke.jpg', '2024-05-09'),
(19, '08', 'Very Very Strawberry', 'Waffle', 93, 175, 'Available', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\very Strawberry.png', '2024-07-20'),
(21, '09', 'REGULAR', 'Waffle', 93, 175, 'Available', 'D:\\\\University_Projects\\\\AOOP Project\\\\Images\\\\Bangla pizza.png', '2024-07-21');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `total` double NOT NULL,
  `date` date DEFAULT NULL,
  `em_username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id`, `customer_id`, `total`, `date`, `em_username`) VALUES
(1, 1, 4380, '2024-05-08', 'admin'),
(2, 2, 680, '2024-05-08', 'admin'),
(3, 3, 1100, '2024-05-08', 'admin'),
(4, 4, 380, '2024-05-09', 'admin'),
(5, 5, 2320, '2024-05-09', 'admin'),
(6, 6, 680, '2024-07-20', 'admin'),
(7, 7, 1475, '2024-07-20', 'admin'),
(8, 8, 2945, '2024-07-20', 'admin'),
(9, 9, 3920, '2024-07-20', 'admin'),
(10, 10, 1170, '2024-07-21', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
