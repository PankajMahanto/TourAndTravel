-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 05:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(72, 41, 29, 'Cox\'s Bazar', 15000, 1, 'cox3.jpg'),
(82, 45, 30, 'Bandarban', 18000, 1, 'ban5.jpg'),
(86, 47, 31, 'Sajek', 20000, 1, 's6.jfif'),
(87, 47, 32, 'Luxury Hotel in Dhaka', 25000, 1, 'h1.jpg'),
(88, 45, 33, 'Cox\'s Bazar Beach Tour', 5000, 1, 'c2.jpg');


-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--
INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(22, 52, 'Pankaj Mahanto', '01632645891', 'arynapankaj78@gmail.com', 'cash on delivery', 'flat no. 77 15 Dhaka Dhaka Bangladesh - ', 'Cox\'s Bazar ( 1 )', 15000, '2024-05-26', 'completed'),
(23, 52, 'Irteja Mahmud', '01402953630', 'irti@gmail.com', 'cash on delivery', 'flat no. 54 Lichubagan Basundhara Dhaka Bangladesh - ', 'Bandarban ( 1 )', 18000, '2024-05-28', 'pending');


-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--


INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES

(29, 'Cox\'s Bazar', 'Cox', 'Cox\'s Bazar is a town on the southeast coast of Bangladesh, known for having the world’s longest natural sandy sea beach.', 15000, 'cox1.jpg'),
(30, 'Bandarban', 'Bandarban', 'Bandarban is a district in southeastern Bangladesh, known for its breathtaking hilly landscapes, waterfalls, and tribal culture.', 18000, 'bandarban.jfif'),
(31, 'Sajek', 'Sajek', 'Sajek Valley is one of the most popular tourist destinations in Bangladesh, located in the hill tracts, known for its serene landscapes and indigenous culture.', 20000, 's1.jfif'),
(32, 'Luxury Hotel in Dhaka', 'Hotel', 'Stay at a luxurious 5-star hotel in Dhaka with all modern amenities and excellent service.', 25000, 'h4.avif'),

(33, 'Cox\'s Bazar Beach Cox', 'Cox', 'Enjoy a full day at Cox\'s Bazar beach with guided tours and water activities.', 5000, 'cox2.jpg'),
(34, 'Cox\'s Bazar Marine Drive', 'Cox', 'Experience the scenic Marine Drive along the coast of Cox\'s Bazar.', 7000, 'cox3.jpg'),
(35, 'Cox\'s Bazar Himchari', 'Cox', 'Explore the natural beauty of Himchari National Park near Cox\'s Bazar.', 6000, 'cox4.jpg'),
(36, 'Cox\'s Bazar Inani Beach', 'Cox', 'Visit Inani Beach, known for its clear blue water and coral stones.', 5500, 'cox5.jpg'),

(37, 'Bandarban Nilgiri Tour', 'Bandarban', 'Visit Nilgiri, one of the highest points in Bandarban with stunning views.', 800, 'ban1.jpg'),
(38, 'Bandarban Boga Lake', 'Bandarban', 'Explore Boga Lake, a high-altitude lake in Bandarban surrounded by hills.', 850, 'ban2.jpg'),
(39, 'Bandarban Nafakhum', 'Bandarban', 'Discover Nafakhum, one of the largest waterfalls in Bangladesh, located in Bandarban.', 900, 'ban3.jpg'),
(40, 'Bandarban Tribal Village', 'Bandarban', 'Visit a tribal village in Bandarban to experience local culture and traditions.', 750, 'ban5.jpg'),

(41, 'Sajek Valley Sunrise', 'Sajek', 'Witness the stunning sunrise at Sajek Valley from the highest viewpoints.', 1000, 's2.jfif'),
(42, 'Sajek Valley Hiking', 'Sajek', 'Enjoy guided hiking tours through the scenic trails of Sajek Valley.', 1200, 's1.jfif'),
(43, 'Sajek Valley Local Cuisine', 'Sajek', 'Experience the local cuisine of Sajek Valley with a guided food tour.', 3000, 's3.jfif'),
(44, 'Sajek Valley Cultural Show', 'Sajek', 'Attend a cultural show featuring traditional performances in Sajek Valley.', 2000, 's4.jfif'),

(45, 'Luxury Hotel Dhaka Suite', 'Hotel', 'Book a suite in a luxurious 5-star hotel in Dhaka with top-notch amenities.', 3000, 'h1.jpg'),
(46, 'Luxury Hotel Dhaka Spa', 'Hotel', 'Enjoy a relaxing spa day at a luxury hotel in Dhaka.', 2000, 'h2.jpg'),
(47, 'Luxury Hotel Dhaka Dining', 'Hotel', 'Experience fine dining at a top restaurant in a luxury hotel in Dhaka.', 1500, 'h3.jpg'),
(48, 'Luxury Hotel Dhaka Business', 'Hotel', 'Utilize business facilities and services at a luxury hotel in Dhaka.', 2500, 'h4.jpg'),


(49, 'Bandarban Hill View', 'Bandarban', 'Visit a Hill village in Bandarban to experience local culture and traditions.', 750, 'ban5.jfif'),

(50, 'Sajek Valley Hiking', 'Sajek', 'Enjoy guided hiking tours through the scenic trails of Sajek Valley.', 1200, 'ss.jfif'),
(56, 'Sajek Valley Local Cuisine', 'Sajek', 'Experience the local cuisine of Sajek Valley with a guided food tour.', 3000, 's5.jfif'),
(77, 'Sajek Valley Cultural Show', 'Sajek', 'Attend a cultural show featuring traditional performances in Sajek Valley.', 2000, 's6.jfif'),


(55, 'Sajek Valley Cultural Show', 'Sajek', 'Attend a cultural show featuring traditional performances in Sajek Valley.', 2000, 'kaptai.jfif');



-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `reviews` varchar(300) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `reviews`, `userid`) VALUES
(8, 'Tanjim', 'Had an amazing time at Cox\'s Bazar. The beach is beautiful and the tour was very well organized. Highly recommend!', 1),
(9, 'Abid', 'Bandarban is stunning with its hilly landscapes and waterfalls. The tour guide was very knowledgeable. A wonderful travel experience.', 2),
(10, 'Nazmul', 'Sajek Valley is a must-visit destination. The serene landscapes and the local culture are truly captivating.', 3),
(11, 'Pankaj', 'Stayed at a luxury hotel in Dhaka. The amenities and services were top-notch. Would love to visit again.', 52);



-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(50, 'Admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'pankaj.png'),
(51, 'Joy', 'joyarya2022@gmail.com', 'b8338bfdd797c08f8e5d7b2f22d0b854', 'user', 'joy.jpg'),
(52, 'Pankaj', 'arynapankaj78@gmail.com', 'fe418b78efe16089c1da72559c875f9b', 'user', 'pankaj.png');


-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(63, 49, 29, 'Cox\'s Bazar', 15000, 'cox4.jpg'),
(64, 49, 30, 'Bandarban', 18000, 'bandarban.jfif');



--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
