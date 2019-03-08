-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 08, 2019 at 12:52 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `product_category` varchar(150) NOT NULL,
  `product_image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_price`, `product_category`, `product_image`) VALUES
(1, 'Helly Hansen Men\'s September Propile Jacket', '$169.99', 'Men\'s', 'helly_jacket.png'),
(2, 'Under Armour Men\'s Perpetual Short Sleeve Windbreaker Jacket', '$159.99', 'Men\'s', 'underarmour_jacket.png'),
(3, 'Mountain Hardwear Men\'s Toasty Twill Jacket', '$169.99', 'Men\'s', 'hardwear_jacket.png'),
(4, 'Columbia Men\'s Birch Wood II Full Zip Jacket', '$109.99', 'Men\'s', 'columbia_jacket.png'),
(5, 'Ripzone Men\'s Tommy Bomber Jacket', '$36.97', 'Men\'s', 'ripzone_jacket.png'),
(6, 'Under Armour Women\'s Outrun The Storm Running Jacket', '$109.99', 'Women\'s', 'storm_jacket.png'),
(7, 'Nike Women\'s Run Impossibly Light Geo All Over Print Jacket', '$59.98', 'Women\'s', 'geoprint_jacket.png'),
(8, 'Vans Women\'s Thanks Coach Funday Jacket', '$48.97', 'Women\'s', 'funday_jacket.png'),
(9, 'Hurley Women\'s Wash Windbreaker Long Jacket', '$87.99', 'Women\'s', 'windbreaker_jacket.png'),
(10, 'The North Face Women\'s Flybea Long Bomber Jacket', '$129.99', 'Women\'s', 'flybea_jacket.png'),
(11, 'Firefly Kids\' Truman V2 Insulated Winter Jacket', '$69.98', 'Kid\'s', 'firefly_jacket_kids.png'),
(12, 'Ripzone Kids\' Carter 3-in-1 Insulated Winter Jacket', '$67.48', 'Kid\'s', 'ripzone_jacket_kids.png'),
(13, 'The North Face Kids\' Gordon Lyons Varsity Vest Winter Jacket', '$79.97', 'Kid\'s', 'northface_jacket_kids.png'),
(14, 'Nike Sportswear Kids\' Unicorn Windrunner Jacket', '$95.00', 'Kid\'s', 'unicorn_jacket_kids.png'),
(15, 'adidas Original Kids\' EQT Track Shirt', '$57.97', 'Kid\'s', 'eqt_jacket_kids.png'),
(16, 'adidas Men\'s Ultra Boost Running Shoes', '$249.99', 'Shoes', 'boost_running_shoes.png'),
(17, 'ASICS Women\'s Gel Nimbus 20 Running Shoes', '$199.99', 'Shoes', 'nimbus_running_shoes.png'),
(18, 'Under Armour Women\'s Micro G® Pursuit Running Shoes', '$84.99', 'Shoes', 'pursuit_running_shoes.png'),
(19, 'Emu Toddler Kids\' Creatures Winter Boots', '$69.99', 'Shoes', 'emu_boots_kids.png'),
(20, 'Emu Toddler Creatures Winter Boots', '$69.99', 'Shoes', 'emu_monkey_boots_kids.png'),
(21, 'Under Armour Undeniable 3.0 Medium Duffel Bag', '$44.59', 'Gear', 'underarmour_duffel.png'),
(22, 'Nike Vapor Power Backpack', '$41.88', 'Gear', 'nike_vapor_backpack.png'),
(23, 'Under Armour Women\'s Undeniable Duffel', '$44.99', 'Gear', 'underarmous_undeniable_duffel.png'),
(24, 'Nike Brasilia Gymsack', '$17.00', 'Gear', 'nike_sackpack.png'),
(25, 'adidas Alliance II Sackpack', '$10.88', 'Gear', 'alliance_sackpack.png'),
(26, 'Fitbit Versa Smartwatch', '$249.99', 'Electronics', 'versa_smartwatch.png'),
(27, 'Fitbit Charge 3 Fitness Tracker', '$199.95', 'Electronics', 'fitbit_tracker.png'),
(28, 'GoPro HERO 7 Black Edition Action Camera', '$529.99', 'Electronics', 'gopro_camera.png'),
(29, 'Apple Watch Series 3 GPS, 38mm Silver Aluminum Case with White Sport Band', '$369.00', 'Electronics', 'apple_watch.png'),
(30, 'Garmin vívoactive 3 Smartwatch', '$319.99', 'Electronics', 'garmin_watch.png'),
(31, 'Calgary Flames adidas Authentic 3rd Jersey', '$199.99', 'Fanwear', 'calgary_jersey.png'),
(32, 'Pittsburgh Penguins adidas Authentic 3rd Jersey', '$199.99', 'Fanwear', 'pittsburgh_jersey.png'),
(33, 'Winnipeg Jets adidas Authentic 3rd Jersey', '$199.99', 'Fanwear', 'winnipeg_jersey.png'),
(34, 'Philadelphia Flyers adidas Men\'s Authentic 3rd Jersey', '$199.99', 'Fanwear', 'philadelphia_jersey.png'),
(35, 'Los Angeles Kings adidas Authentic 3rd Jersey', '$199.99', 'Fanwear', 'la_jersey.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
