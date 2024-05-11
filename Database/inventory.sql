-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: May 11, 2024 at 11:18 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_pk` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`category_pk`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_pk`, `name`) VALUES
(1, 'Fruit');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_pk` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`customer_pk`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_pk`, `name`, `mobileNumber`, `email`) VALUES
(1, 'Nuzki', '0768202725', 'nuzkifaiz81@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE IF NOT EXISTS `orderdetail` (
  `order_pk` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(200) DEFAULT NULL,
  `customer_fk` int(11) DEFAULT NULL,
  `orderDate` varchar(200) DEFAULT NULL,
  `totalPaid` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_pk`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`order_pk`, `orderId`, `customer_fk`, `orderDate`, `totalPaid`) VALUES
(1, 'Bill6468430613100', 1, '11-05-2024', 500),
(2, 'Bill6630648110900', 1, '11-05-2024', 500),
(3, 'Bill6724583266300', 1, '11-05-2024', 8000),
(4, 'Bill7082720517700', 1, '11-05-2024', 500),
(5, 'Bill7170350020600', 1, '11-05-2024', 250),
(6, 'Bill7170350020600', 1, '11-05-2024', 250),
(7, 'Bill7197930395900', 1, '11-05-2024', 250),
(8, 'Bill7197930395900', 1, '11-05-2024', 250),
(9, 'Bill7250833017000', 1, '11-05-2024', 250),
(10, 'Bill7368696606600', 1, '11-05-2024', 250),
(11, 'Bill7388133885400', 1, '11-05-2024', 250),
(12, 'Bill7427358228700', 1, '11-05-2024', 250),
(13, 'Bill7635876604800', 1, '11-05-2024', 250),
(14, 'Bill7871805935700', 1, '11-05-2024', 500),
(15, 'Bill7907277898400', 1, '11-05-2024', 500),
(16, 'Bill7998976852300', 1, '11-05-2024', 250),
(17, 'Bill8015662807100', 1, '11-05-2024', 250),
(18, 'Bill8052406468700', 1, '11-05-2024', 250),
(19, 'Bill8178591225300', 1, '11-05-2024', 250),
(20, 'Bill8232938445199', 1, '11-05-2024', 5000),
(21, 'Bill8523562387000', 1, '11-05-2024', 250),
(22, 'Bill8810796867300', 1, '11-05-2024', 250),
(23, 'Bill8915962803500', 1, '11-05-2024', 250),
(24, 'Bill9021747470600', 1, '11-05-2024', 250),
(25, 'Bill9113333397900', 1, '11-05-2024', 250),
(26, 'Bill13827672055900', 1, '11-05-2024', 250);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_pk` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `category_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_pk`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_pk`, `name`, `quantity`, `price`, `description`, `category_fk`) VALUES
(1, 'Apple', 14, 250, 'it is an ordinary Apple', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_pk` int(11) NOT NULL AUTO_INCREMENT,
  `userRole` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_pk`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_pk`, `userRole`, `name`, `mobileNumber`, `email`, `password`, `address`, `status`) VALUES
(1, 'SuperAdmin', 'admin', '0768202725', 'mf9233678@gmail.com', '123', 'Sri_Lanka', 'true'),
(6, 'User', 'test', '123465798', 'test@gmail.com', '123', 'testADD', 'true'),
(7, 'User', 'test2', '1235465790', 'test2@gmail.com', '123', 'TEST', 'true');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
