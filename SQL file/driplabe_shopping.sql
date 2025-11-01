-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2025 at 04:56 PM
-- Server version: 10.11.14-MariaDB-cll-lve
-- PHP Version: 8.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `driplabe_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '0ae1dd3954ee840075de1395771b6c9c', '2024-12-31 19:21:18', '14-10-2025 09:45:47 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'CASUAL WEAR', 'casual clothes', '2025-01-01 07:17:37', NULL),
(4, 'STREET WEAR', 'Street clothes', '2025-01-01 07:17:37', ''),
(5, 'NEW ARRIVAL', 'New stock', '2025-01-01 07:17:37', ''),
(6, 'FOOTWEAR', 'Fashion', '2025-01-01 07:17:37', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(3, 6, '2', 1, '2025-10-14 11:04:58', 'M-PESA', 'Delivered'),
(4, 6, '2', 1, '2025-10-14 17:51:29', 'MPESA', 'Delivered'),
(5, 6, '2', 1, '2025-10-15 06:59:47', 'MPESA', 'Delivered'),
(6, 6, '2', 1, '2025-10-20 16:12:39', 'MPESA', 'Delivered'),
(7, 6, '2', 1, '2025-10-20 16:23:09', 'MPESA', 'Delivered'),
(8, 1, '2', 1, '2025-10-20 16:39:47', 'MPESA', NULL),
(9, 6, '2', 1, '2025-10-22 15:12:52', 'MPESA', 'Delivered'),
(10, 6, '2', 1, '2025-10-22 17:59:46', 'MPESA', 'Delivered'),
(11, 8, '5', 1, '2025-10-23 10:36:57', NULL, 'Delivered'),
(12, 6, '2', 1, '2025-10-23 12:23:47', NULL, NULL),
(13, 9, '19', 1, '2025-10-29 19:48:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'in Process', 'Project is packed and ready for shipping', '2025-01-02 09:12:41'),
(2, 1, 'in Process', 'Product is in transit', '2025-01-02 09:12:56'),
(3, 1, 'Delivered', 'Delivered to the customer', '2025-01-02 09:13:07'),
(4, 2, 'in Process', 'Product is packed and shipped.', '2025-01-02 09:18:50'),
(5, 2, 'Delivered', 'Delivered to to customer', '2025-01-02 09:19:07'),
(6, 4, 'Delivered', 'Thanks alot', '2025-10-14 17:52:47'),
(7, 3, 'in Process', 'Packed for shipment', '2025-10-14 17:53:35'),
(8, 3, 'in Process', 'Packed for shipment', '2025-10-14 17:54:02'),
(9, 3, 'Delivered', 'Thanks', '2025-10-22 16:36:34'),
(10, 5, 'Delivered', 'Thanks', '2025-10-22 16:37:09'),
(11, 6, 'Delivered', 'Thanks', '2025-10-22 16:37:37'),
(12, 7, 'Delivered', 'Thanks', '2025-10-22 16:38:04'),
(13, 9, 'Delivered', 'Thanks', '2025-10-22 16:38:33'),
(14, 10, 'Delivered', 'Enjoy', '2025-10-22 18:02:11'),
(15, 11, 'in Process', 'Being shipped ', '2025-10-23 10:40:02'),
(16, 11, 'Delivered', 'Shipped ', '2025-10-23 10:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Cargo Pants', 'pants', 2599, 3000, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div>\r\n\r\n<ul style=\"box-sizing: border-box; margin-bottom: 0; margin-left: 0; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sales Package\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        1 Trouser\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Model Name\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        ClassicFit SidePocket 2025\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Fabric\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Cotton Blend\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Fit Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Regular Fit\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Pockets\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        2 Side Pockets, 1 Back Pocket\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Occasion\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Casual / Office Wear\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n</ul>\r\n', 'Pants1.jpg', 'Pants1.jpg', 'Pants1.jpg', 1200, 'In Stock', '2025-01-01 01:54:35', ''),
(2, 4, 4, 'Dark Navy Tshirt', 'tshirt', 1000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">\r\n  General\r\n</div>\r\n\r\n<ul style=\"box-sizing: border-box; margin-bottom: 0; margin-left: 0; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sales Package\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        1 T-shirt\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Model Name\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        StreetWear Classic Tee 2025\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Fabric\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        100% Cotton\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sleeve Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Half Sleeve\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Neck Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Round Neck\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Pattern\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Solid Color\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Occasion\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Casual / Daily Wear\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n</ul>\r\n', 'Tshirt1.jpg', 'Tshirt1.jpg', 'Tshirt1.jpg', 0, 'In Stock', '2025-01-01 01:54:35', ''),
(3, 4, 4, 'Brown Tshirt', 'tshirt', 1000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">\r\n  General\r\n</div>\r\n\r\n<ul style=\"box-sizing: border-box; margin-bottom: 0; margin-left: 0; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sales Package\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        1 T-shirt\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Model Name\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        StreetWear Classic Tee 2025\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Fabric\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        100% Cotton\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sleeve Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Half Sleeve\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Neck Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Round Neck\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Pattern\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Solid Color\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Occasion\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Casual / Daily Wear\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n</ul>\r\n', 'Tshirt2.jpg', 'Tshirt2.jpg', 'Tshirt2.jpg', 0, 'In Stock', '2025-01-01 01:54:35', ''),
(4, 4, 4, 'Black Tshirt', 'tshirt', 1000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">\r\n  General\r\n</div>\r\n\r\n<ul style=\"box-sizing: border-box; margin-bottom: 0; margin-left: 0; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sales Package\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        1 T-shirt\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Model Name\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        StreetWear Classic Tee 2025\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Fabric\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        100% Cotton\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sleeve Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Half Sleeve\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Neck Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Round Neck\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Pattern\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Solid Color\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Occasion\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Casual / Daily Wear\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n</ul>\r\n', 'Tshirt3.jpg', 'Tshirt3.jpg', 'Tshirt3.jpg', 45, 'In Stock', '2025-01-01 01:54:35', ''),
(5, 4, 4, 'White Tshirt', 'tshirt', 1000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">\r\n  General\r\n</div>\r\n\r\n<ul style=\"box-sizing: border-box; margin-bottom: 0; margin-left: 0; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sales Package\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        1 T-shirt\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Model Name\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        StreetWear Classic Tee 2025\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Fabric\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        100% Cotton\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sleeve Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Half Sleeve\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Neck Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Round Neck\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Pattern\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Solid Color\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Occasion\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Casual / Daily Wear\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n</ul>\r\n', 'Tshirt4.jpg', 'Tshirt4.jpg', 'Tshirt4.jpg', 0, 'In Stock', '2025-01-01 01:54:35', ''),
(6, 4, 4, 'AUMD Black Tshirt', 'tshirt', 1000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">\r\n  General\r\n</div>\r\n\r\n<ul style=\"box-sizing: border-box; margin-bottom: 0; margin-left: 0; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sales Package\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        1 T-shirt\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Model Name\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        StreetWear Classic Tee 2025\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Fabric\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        100% Cotton\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sleeve Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Half Sleeve\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Neck Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Round Neck\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Pattern\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Solid Color\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Occasion\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Casual / Daily Wear\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n</ul>\r\n', 'Tshirt5.jpg', 'Tshirt5.jpg', 'Tshirt5.jpg', 35, 'In Stock', '2025-01-01 01:54:35', ''),
(7, 4, 4, 'White Oversized Men\'s Tshirt', 'tshirt', 1000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">\r\n  General\r\n</div>\r\n\r\n<ul style=\"box-sizing: border-box; margin-bottom: 0; margin-left: 0; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sales Package\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        1 T-shirt\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Model Name\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        StreetWear Classic Tee 2025\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Fabric\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        100% Cotton\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sleeve Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Half Sleeve\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Neck Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Round Neck\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Pattern\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Solid Color\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Occasion\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Casual / Daily Wear\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n</ul>\r\n', 'Tshirt6.jpg', 'Tshirt6.jpg', 'Tshirt6.jpg', 20, 'In Stock', '2025-01-01 01:54:35', ''),
(8, 4, 4, 'DAZY Men\'s Tshirt', 'tshirt', 1000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">\r\n  General\r\n</div>\r\n\r\n<ul style=\"box-sizing: border-box; margin-bottom: 0; margin-left: 0; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sales Package\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        1 T-shirt\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Model Name\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        StreetWear Classic Tee 2025\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Fabric\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        100% Cotton\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sleeve Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Half Sleeve\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Neck Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Round Neck\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Pattern\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Solid Color\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Occasion\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Casual / Daily Wear\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n</ul>\r\n', 'Tshirt7.jpg', 'Tshirt7.jpg', 'Tshirt7.jpg', 0, 'In Stock', '2025-01-01 01:54:35', ''),
(9, 4, 5, 'Girls Casual Sweatshirt', 'top', 1000, 0, '<ul>\r\n  <li>Type: Casual Top<br></li>\r\n  <li>Fit: Regular Fit<br></li>\r\n  <li>Sleeve Type: Short Sleeve<br></li>\r\n  <li>Neck Type: Round Neck<br></li>\r\n  <li>Fabric: Cotton Blend<br></li>\r\n  <li>Pattern: Solid<br></li>\r\n  <li>Occasion: Casual / Everyday Wear<br></li>\r\n  <li>Color: Pink<br></li>\r\n  <li>Closure: Pullover<br></li>\r\n  <li>Fabric Care: Machine Wash Cold, Do Not Bleach<br></li>\r\n</ul>\r\n', 'Tops1.jpg', 'Tops1.jpg', 'Tops1.jpg', 10, 'In Stock', '2025-01-01 01:54:35', ''),
(11, 4, 6, 'Denim Jeans Shorts', 'short', 1000, 0, '<ul>\r\n  <li>Type: Denim Shorts<br></li>\r\n  <li>Fit: Slim Fit<br></li>\r\n  <li>Fabric: 98% Cotton, 2% Elastane<br></li>\r\n  <li>Pattern: Faded<br></li>\r\n  <li>Waist Type: Mid Rise<br></li>\r\n  <li>Length: Above Knee<br></li>\r\n  <li>Pockets: 5 Pockets (2 Front, 2 Back, 1 Coin Pocket)<br></li>\r\n  <li>Closure: Button and Zip Fly<br></li>\r\n  <li>Color: Light Blue<br></li>\r\n  <li>Occasion: Casual / Outdoor Wear<br></li>\r\n  <li>Fabric Care: Machine Wash Cold, Wash Inside Out, Do Not Bleach<br></li>\r\n</ul>\r\n', 'short1.jpg', 'short1.jpg', 'short1.jpg', 0, 'In Stock', '2025-01-01 01:54:35', ''),
(12, 4, 6, 'Denim shorts', 'short', 1000, 0, '<ul>\r\n  <li>Type: Denim Shorts<br></li>\r\n  <li>Fit: Slim Fit<br></li>\r\n  <li>Fabric: 98% Cotton, 2% Elastane<br></li>\r\n  <li>Pattern: Faded<br></li>\r\n  <li>Waist Type: Mid Rise<br></li>\r\n  <li>Length: Above Knee<br></li>\r\n  <li>Pockets: 5 Pockets (2 Front, 2 Back, 1 Coin Pocket)<br></li>\r\n  <li>Closure: Button and Zip Fly<br></li>\r\n  <li>Color: Light Blue<br></li>\r\n  <li>Occasion: Casual / Outdoor Wear<br></li>\r\n  <li>Fabric Care: Machine Wash Cold, Wash Inside Out, Do Not Bleach<br></li>\r\n</ul>\r\n', 'short2.jpg', 'short2.jpg', 'short2.jpg', 0, 'In Stock', '2025-01-01 01:54:35', ''),
(13, 4, 6, 'Denim Jeans Short', 'short', 1000, 0, '<ul>\r\n  <li>Type: Denim Shorts<br></li>\r\n  <li>Fit: Slim Fit<br></li>\r\n  <li>Fabric: 98% Cotton, 2% Elastane<br></li>\r\n  <li>Pattern: Faded<br></li>\r\n  <li>Waist Type: Mid Rise<br></li>\r\n  <li>Length: Above Knee<br></li>\r\n  <li>Pockets: 5 Pockets (2 Front, 2 Back, 1 Coin Pocket)<br></li>\r\n  <li>Closure: Button and Zip Fly<br></li>\r\n  <li>Color: Light Blue<br></li>\r\n  <li>Occasion: Casual / Outdoor Wear<br></li>\r\n  <li>Fabric Care: Machine Wash Cold, Wash Inside Out, Do Not Bleach<br></li>\r\n</ul>\r\n', 'short3.jpg', 'short3.jpg', 'short3.jpg', 0, 'In Stock', '2025-01-01 01:54:35', ''),
(14, 4, 6, 'Gucci Denim Shorts', 'short', 1000, 0, '<ul>\r\n  <li>Type: Denim Shorts<br></li>\r\n  <li>Fit: Slim Fit<br></li>\r\n  <li>Fabric: 98% Cotton, 2% Elastane<br></li>\r\n  <li>Pattern: Faded<br></li>\r\n  <li>Waist Type: Mid Rise<br></li>\r\n  <li>Length: Above Knee<br></li>\r\n  <li>Pockets: 5 Pockets (2 Front, 2 Back, 1 Coin Pocket)<br></li>\r\n  <li>Closure: Button and Zip Fly<br></li>\r\n  <li>Color: Light Blue<br></li>\r\n  <li>Occasion: Casual / Outdoor Wear<br></li>\r\n  <li>Fabric Care: Machine Wash Cold, Wash Inside Out, Do Not Bleach<br></li>\r\n</ul>\r\n', 'short4.jpg', 'short4.jpg', 'short4.jpg', 0, 'In Stock', '2025-01-01 01:54:35', ''),
(15, 3, 8, 'Adidas Tracksuit', 'pants', 1000, 250, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">\r\n  General\r\n</div>\r\n\r\n<ul style=\"box-sizing: border-box; margin-bottom: 0; margin-left: 0; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sales Package\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        1 Pair of Casual Pants\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Model Name\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        UrbanEase Relaxed Fit 2025\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Fabric\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Cotton Twill Blend\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Fit Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Regular / Relaxed Fit\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Waistband Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Elastic Waistband with Drawstring\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Pockets\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        2 Side Pockets, 1 Back Pocket\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Occasion\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Casual / Outdoor / Lounge Wear\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Pattern\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Solid / Minimal Design\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n</ul>\r\n', 'pants11.jpg', 'pants11.jpg', 'pants11.jpg', 50, 'In Stock', '2025-01-01 01:54:35', ''),
(16, 3, 8, 'Sweatshirt Hoody', 'hoody', 1000, 0, '<ul>\r\n  <li>Type: Casual Hoody<br></li>\r\n  <li>Fit: Regular Fit<br></li>\r\n  <li>Neck Type: Round Neck<br></li>\r\n  <li>Fabric: Cotton Blend<br></li>\r\n  <li>Pattern: Solid<br></li>\r\n  <li>Occasion: Casual / Everyday Wear<br></li>\r\n  <li>Color: Brown<br></li>\r\n  <li>Closure: Pullover<br></li>\r\n  <li>Fabric Care: Machine Wash Cold, Do Not Bleach<br></li>\r\n</ul>\r\n', 'hoody1.jpg', 'hoody1.jpg', 'hoody1.jpg', 30, 'In Stock', '2025-01-01 01:54:35', '');
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(17, 5, 9, 'Cargo Pants', 'pants', 1000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div>\r\n\r\n<ul style=\"box-sizing: border-box; margin-bottom: 0; margin-left: 0; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Sales Package\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        1 Trouser\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Model Name\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        ClassicFit SidePocket 2025\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Fabric\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Cotton Blend\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Fit Type\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Regular Fit\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Pockets\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        2 Side Pockets, 1 Back Pocket\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n  <li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0; padding: 0 0 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\">\r\n    <div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; padding: 0 8px 0 0; width: 182.75px; color: rgb(135, 135, 135);\">\r\n      Occasion\r\n    </div>\r\n    <ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0; width: 548.25px; line-height: 1.4;\">\r\n      <li class=\"sNqDog\" style=\"box-sizing: border-box; list-style: none;\">\r\n        Casual / Office Wear\r\n      </li>\r\n    </ul>\r\n  </li>\r\n\r\n</ul>\r\n', 'Pants3.jpg', 'Pants3.jpg', 'Pants3.jpg', 0, 'In Stock', '2025-01-01 01:54:35', ''),
(18, 5, 10, 'Women\'s Jeans', 'pants', 1000, 0, '<ul>\r\n  <li>Type: Jeans Trouser<br></li>\r\n  <li>Fit: Slim Fit<br></li>\r\n  <li>Fabric: 98% Cotton, 2% Lycra<br></li>\r\n  <li>Color: Blue<br></li>\r\n  <li>Pattern: Solid<br></li>\r\n  <li>Rise: Mid Rise<br></li>\r\n  <li>Length: Full Length<br></li>\r\n  <li>Pockets: 5 Pockets (2 Front, 2 Back, 1 Coin Pocket)<br></li>\r\n  <li>Closure: Button and Zip Fly<br></li>\r\n  <li>Stretch Type: Stretchable<br></li>\r\n  <li>Waistband: With Belt Loops<br></li>\r\n  <li>Occasion: Casual / Everyday Wear<br></li>\r\n  <li>Fabric Care: Machine Wash Cold, Do Not Bleach, Iron on Low Heat<br></li>\r\n</ul>\r\n', 'Pants18L.jpg', 'Pants18L.jpg', 'Pants18L.jpg', 0, 'In Stock', '2025-01-01 01:54:35', ''),
(19, 6, 12, 'Nike Airmax', 'sneaker', 1000, 0, '<div class=\"section-title\" style=\"font-size:18px; font-weight:bold; margin-bottom:8px;\">General</div>\r\n<ul>\r\n  <li>Type: Sneakers<br></li>\r\n  <li>Ideal For: Men & Women<br></li>\r\n  <li>Occasion: Casual / Streetwear<br></li>\r\n  <li>Color: White<br></li>\r\n  <li>Outer Material: Synthetic Leather<br></li>\r\n  <li>Sole Material: Rubber<br></li>\r\n  <li>Closure: Lace-Up<br></li>\r\n  <li>Heel Type: Flat<br></li>\r\n  <li>Weight: 320 g (per single shoe) – Weight of the product may vary depending on size<br></li>\r\n  <li>Pack of: 1 Pair<br></li>\r\n  <li>Season: All Season<br></li>\r\n  <li>Care Instructions: Wipe with a clean dry cloth, Do not machine wash<br></li>\r\n</ul>\r\n', 'shoe1.jpg', 'shoe1.jpg', 'shoe1.jpg', 45, 'In Stock', '2025-01-01 01:54:35', ''),
(20, 6, 12, 'Adidas Airmax', 'shoe', 1000, 5000, '<div class=\"section-title\" style=\"font-size:18px; font-weight:bold; margin-bottom:8px;\">General</div>\r\n<ul>\r\n  <li>Type: Sneakers<br></li>\r\n  <li>Ideal For: Men & Women<br></li>\r\n  <li>Occasion: Casual / Streetwear<br></li>\r\n  <li>Color: White<br></li>\r\n  <li>Outer Material: Synthetic Leather<br></li>\r\n  <li>Sole Material: Rubber<br></li>\r\n  <li>Closure: Lace-Up<br></li>\r\n  <li>Heel Type: Flat<br></li>\r\n  <li>Weight: 320 g (per single shoe) – Weight of the product may vary depending on size<br></li>\r\n  <li>Pack of: 1 Pair<br></li>\r\n  <li>Season: All Season<br></li>\r\n  <li>Care Instructions: Wipe with a clean dry cloth, Do not machine wash<br></li>\r\n</ul>\r\n', 'shoe2.jpg', 'shoe2.jpg', 'shoe2.jpg', 0, 'In Stock', '2025-01-01 01:54:35', ''),
(22, 4, 4, 'Tshirt9', 'polo', 1200, 1500, 'Mens Tshirt<div>Comfortable</div><div>Extra Large</div>', 'Tshirt11.jpg', 'Tshirt11.jpg', 'Tshirt11.jpg', 250, 'In Stock', '2025-10-23 12:54:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'HOODIES', '2025-01-01 07:24:52', NULL),
(3, 4, 'PANTS', '2025-01-01 07:24:52', ''),
(4, 4, 'TSHIRTS', '2025-01-01 07:24:52', ''),
(5, 4, 'TOPS', '2025-01-01 07:24:52', ''),
(6, 4, 'SHORTS', '2025-01-01 07:24:52', ''),
(7, 4, 'SNEAKERS', '2025-01-01 07:24:52', ''),
(8, 3, 'CASUALS', '2025-01-01 07:24:52', ''),
(9, 5, 'MEN\'S FASHION', '2025-01-01 07:24:52', ''),
(10, 5, 'WOMEN\'S FASHION', '2025-01-01 07:24:52', ''),
(11, 5, 'CHILDREN\'S FASHION', '2025-01-01 07:24:52', ''),
(12, 6, 'SNEAKERS', '2025-01-01 07:24:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `MerchantRequestID` varchar(100) DEFAULT NULL,
  `CheckoutRequestID` varchar(100) DEFAULT NULL,
  `ResultCode` int(11) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `MpesaReceiptNumber` varchar(50) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `MerchantRequestID`, `CheckoutRequestID`, `ResultCode`, `Amount`, `MpesaReceiptNumber`, `PhoneNumber`, `Date`) VALUES
(1, 'd6cf-44e7-b3a0-c8178af1472716409', 'ws_CO_22102025191119776701502683', 0, 1.00, 'TJM4M86AJR', '254701502683', '2025-10-22 16:11:26'),
(2, 'd6cf-44e7-b3a0-c8178af1472717641', 'ws_CO_22102025210014595701502683', 0, 2.00, 'TJM4M86MAQ', '254701502683', '2025-10-22 18:00:24'),
(3, '5b65-43dd-b2ba-5fea49a390e842604', 'ws_CO_23102025133725934721354525', 0, 1.00, 'TJNQ280JGB', '254721354525', '2025-10-23 10:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'orodiblessings@gmail.com', 0x3a3a3100000000000000000000000000, '2025-10-14 11:04:40', NULL, 1),
(6, 'orodiblessings@gmail.com', 0x3a3a3100000000000000000000000000, '2025-10-14 17:50:32', NULL, 1),
(7, 'orodiblessings@gmail.com', 0x3a3a3100000000000000000000000000, '2025-10-15 06:59:16', NULL, 1),
(8, 'orodiblessings@gmail.com', 0x34352e38342e3130372e313700000000, '2025-10-20 16:11:27', '20-10-2025 09:49:58 PM', 1),
(9, 'briankevin071@gmail.com', 0x3132392e3232322e3134372e39000000, '2025-10-20 16:20:36', NULL, 1),
(10, 'orodiblessings@gmail.com', 0x3139372e3233322e36302e3136320000, '2025-10-20 16:22:40', NULL, 1),
(11, 'orodiblessings@gmail.com', 0x3139372e3233322e36302e3136320000, '2025-10-22 15:12:07', NULL, 1),
(12, 'orodiblessings@gmail.com', 0x3130352e3136312e3136392e32323300, '2025-10-22 17:55:31', NULL, 1),
(13, 'samadermis65@gmail.com', 0x34312e38392e39392e34000000000000, '2025-10-23 10:34:17', NULL, 1),
(14, 'samadermis65@gmail.com', 0x34312e38392e39392e34000000000000, '2025-10-23 10:34:20', NULL, 1),
(15, 'samadermis65@gmail.com', 0x34312e38392e39392e34000000000000, '2025-10-23 10:34:34', NULL, 1),
(16, 'samadermis65@gmail.com', 0x3135342e3135392e3233372e34300000, '2025-10-23 10:40:36', NULL, 1),
(17, 'orodiblessings@gmail.com', 0x34312e38392e39392e34000000000000, '2025-10-23 12:23:11', NULL, 1),
(18, 'emax27348@gmail.com', 0x34312e3133392e3139342e3234390000, '2025-10-29 19:47:33', NULL, 1),
(19, 'emax27348@gmail.com', 0x34312e3133392e3139342e3234390000, '2025-11-01 11:02:17', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(6, 'Ephrem orodi', 'orodiblessings@gmail.com', 701502683, 'e5616abe192a9157e640c643fbf8a8a5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-14 11:04:34', NULL),
(7, 'Brian ', 'briankevin071@gmail.com', 718462696, '28248e50ff3129f212cbf11ea924f10a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-20 16:20:24', NULL),
(8, 'Ken', 'samadermis65@gmail.com', 788835911, '5f83040c3fc2e75972898e402218e68e', 'Hshs', 'Hshs', 'Ehsh', 3636, 'Shhd', 'Hshs', 'Sheh', 0, '2025-10-23 10:34:08', NULL),
(9, 'Eliezer', 'emax27348@gmail.com', 113899517, '7d62a275027741d98073d42b8f735c68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-29 19:47:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
