-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 08:16 AM
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
-- Database: `bewellpharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `email` varchar(20) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`email`, `message`) VALUES
('koushal@gmail.com', 'awrffafafas'),
('omkar@gmail.com', ''),
('niand@gamil.com', 'plz add more medicines\r\n\r\n'),
('ilhan@gamil.com', 'add more \r\n'),
('ilhan@gamil.com', 'add more gdrgdrgdgdf\r\n'),
('ilhan@gamil.com', 'add more gdrgdrgdgdf\r\n'),
('ilhan@gamil.com', 'add more gdrgdrgdgdf\r\n'),
('koushal@gmail.com', 'nice service\r\n\r\n'),
('parth@gamil.com', 'hn\'ehjnmdfvdryl;okddrgh\\[gg\'l;gf[pfgf\\[p\r\n'),
('rohit@gmail.com', 'add more medicines\r\n'),
('koushal@gmail.com', 'add hjtyj'),
('yash@gmail.com', 'fefwfrwfsefsdfefeff'),
('aanat@gmail.com', ''),
('parth@gamil.com', 'fkjskjsbksBJCSC');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(1, 'omkar Manoj Kulkarni', 'omkar@gmail.com', '8381057676', 'jarag nagar', 'cod', 'Ensure (5), Mimossa pudica seed(5), Phosphorus(2)', '3240'),
(2, 'Sandeep Suresh Kulkarni ', 'sandeep@gmail.com', '1233365244', ' Pimpari chinchwad PUNE', 'cod', 'Pampers(1), Ensure (1), BRONFREE(1), Much-ease(4), Mimossa Pudica (5), Mimossa pudica seed(3)', '3620'),
(15, 'atharv kulkarni', 'atharv@gmail.com', '6542321346', 'pachgaoan', 'cod', 'vicks(7), Norvasc(1), Arshakalp(3)', '590'),
(16, 'koushal suresh mahadik', 'koushal@gmail.com', '12333652', 'jarag nagar', 'cod', 'Norvasc(1), Pampers(1), Ensure (1), Phosphorus(5)', '830');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`) VALUES
(1, 'Ensure ', '100', 1, 'images/product-1.jpg', 'p1000'),
(2, 'Phosphorus', '120', 1, 'images/product-2.jpg', 'p1001'),
(3, 'Pampers', '50', 1, 'images/product-3.jpg', 'p1002'),
(4, 'First-Aid Kit', '200', 1, 'images/product-4.png', 'p1003'),
(5, 'Much-ease', '80', 1, 'images/product-5.jpeg', 'p1004'),
(6, 'BRONFREE', '150', 1, 'images/product-6.jpeg', 'p1005'),
(7, 'Mimossa Pudica ', '300', 1, 'images/product-7.jpeg', 'p1006'),
(8, 'Mimossa pudica seed', '500', 1, 'images/product-8.jpeg', 'p1007'),
(9, 'salnutamol', '150', 1, 'images/salnutamol.png', 'p1008'),
(10, 'vicks', '30', 1, 'images/vicks.png', 'p1009'),
(11, 'Codeine', '80', 1, 'images/Codeine.png', 'p1010'),
(12, 'paracetomol', '50', 1, 'images/paracetomol.png', 'p1011'),
(13, 'Aloe Vera Gel', '50', 1, 'images/aayurveda_4.png', 'p1012'),
(14, 'Amla-Oil', '100', 1, 'images/aayurveda3.png', 'p1013'),
(15, 'Arshakalp', '100', 1, 'images/aayyuurvrdd.png', 'p1014'),
(16, 'Norvasc', '80', 1, 'images/Norvasc.png', 'p1015');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `user_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`user_id`, `name`, `username`, `email`, `password`, `phone`, `address`) VALUES
(1, 'omkar Manoj Kulkarni', 'omkar', 'omkar@gmail.com', 'admin', 8381198652, 'jarag nagar kolhapur'),
(2, 'Parth pratap Mane', 'parth', 'parth@gmail.com', '12345', 97431237, 'shivaji peth kolhapur'),
(3, 'yash yuvraj gurav', 'yash', 'yash@gmail.com', '12345', 6542321346, 'pachgoan'),
(4, 'Sandeep Suresh Kulka', 'sandeep', 'sandeep@gamil.com', '12345', 12333652, 'jarag nagar'),
(5, 'ninad khadilkar', 'ninad123', 'niand@gamil.com', '12345', 12333652, 'subhash nagar'),
(6, 'ilhan m pirjade ', 'ilhan123', 'ilhan@gamil.com', '12345', 1233365244, 'r k nagar'),
(7, 'manoj shankar kulkar', 'manoj', 'manoj@gmail.com', '12345', 1233365244, 'jarag nagar'),
(8, 'anant dhanajay kulka', 'anant', 'anant@gmaiol.com', 'admin', 12333652, 'chikodi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
