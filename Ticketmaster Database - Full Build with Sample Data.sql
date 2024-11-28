-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 29, 2024 at 09:10 PM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticketmaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int NOT NULL,
  `account_creation_id` date NOT NULL,
  `account_deletion_id` date DEFAULT NULL,
  `account_last_login_date` date NOT NULL,
  `country_id` int NOT NULL,
  `customer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `account_creation_id`, `account_deletion_id`, `account_last_login_date`, `country_id`, `customer_id`) VALUES
(32, '2024-10-28', NULL, '2024-10-28', 2, 44),
(33, '2024-10-28', NULL, '2024-10-28', 2, 46),
(34, '2024-10-28', NULL, '2024-10-28', 2, 47),
(35, '2024-10-28', NULL, '2024-10-28', 2, 48),
(36, '2024-10-28', NULL, '2024-10-28', 2, 49),
(37, '2024-10-28', NULL, '2024-10-28', 2, 50),
(38, '2024-10-28', NULL, '2024-10-28', 2, 51),
(39, '2024-10-28', NULL, '2024-10-28', 2, 52),
(40, '2024-10-28', NULL, '2024-10-28', 2, 53),
(41, '2024-10-28', NULL, '2024-10-28', 2, 54),
(42, '2024-10-28', NULL, '2024-10-28', 2, 55),
(43, '2024-10-28', NULL, '2024-10-28', 2, 56),
(44, '2024-10-28', NULL, '2024-10-28', 2, 57),
(45, '2024-10-28', NULL, '2024-10-28', 2, 58);

-- --------------------------------------------------------

--
-- Table structure for table `additional_extra`
--

CREATE TABLE `additional_extra` (
  `additional_extra_id` int NOT NULL,
  `additional_extra_name` varchar(255) NOT NULL,
  `additional_extra_description` text NOT NULL,
  `additional_extra_price` double(10,2) NOT NULL,
  `currency_id` int NOT NULL,
  `event_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `additional_extra`
--

INSERT INTO `additional_extra` (`additional_extra_id`, `additional_extra_name`, `additional_extra_description`, `additional_extra_price`, `currency_id`, `event_id`) VALUES
(1, 'Souvenir Ticket', 'Souvenir Ticket of the Big Day', 12.00, 1, 26),
(2, 'Ticket Insurance', 'Cover for all Tickets on the booking', 15.00, 1, 26),
(3, 'Meet The Players', 'Meet the Players Post Game (All tickets on the booking)', 21.00, 1, 26);

-- --------------------------------------------------------

--
-- Table structure for table `billing_address`
--

CREATE TABLE `billing_address` (
  `billing_address_id` int NOT NULL,
  `billing_address_line_1` varchar(2550) NOT NULL,
  `billing_address_line_2` varchar(2550) DEFAULT NULL,
  `billing_address_postcode` varchar(255) NOT NULL,
  `city_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `billing_address`
--

INSERT INTO `billing_address` (`billing_address_id`, `billing_address_line_1`, `billing_address_line_2`, `billing_address_postcode`, `city_id`) VALUES
(29, '63 Ladybrook Cresent', NULL, 'BT11 9EP', 1),
(30, '63 Ladybrook Cresent', NULL, 'BT11 9EP', 1),
(31, '45 Malone Road', NULL, 'BT9 5NA', 1),
(32, '12 Windsor Avenue', NULL, 'BT9 6DD', 1),
(33, '89 Donegall Road', NULL, 'BT12 6HT', 1),
(34, '34 Cavehill Road', NULL, 'BT15 5JZ', 1),
(35, '56 Andersonstown Road', NULL, 'BT11 9FE', 1),
(36, '22 Stranmillis Road', NULL, 'BT9 5AJ', 1),
(37, '15 Victoria Square', NULL, 'BT1 4QG', 1),
(38, '98 Ormeau Road', NULL, 'BT7 3GG', 1),
(39, '21 Royal Avenue', NULL, 'BT1 1DD', 1),
(40, '5 Belmont Avenue', NULL, 'BT4 3FQ', 1),
(41, '12 Cregagh Road', NULL, 'BT6 9EQ', 1),
(42, '78 Antrim Road', NULL, 'BT15 2BJ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int NOT NULL,
  `booking_date_time_sold` datetime NOT NULL,
  `booking_barcode` varchar(2550) NOT NULL,
  `payment_reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `delivery_method_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `booking_status_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_date_time_sold`, `booking_barcode`, `payment_reference`, `delivery_method_id`, `customer_id`, `booking_status_id`) VALUES
(35, '2024-10-29 13:59:19', 'Barcode_created', 'SJV 1285', 1, 44, 2),
(36, '2024-10-29 14:02:06', 'Barcode_created', 'PJC 1245', 1, 44, 3),
(38, '2024-10-29 14:51:21', 'Barcode_created', 'ABS 1248', 1, 49, 3),
(40, '2024-10-29 15:02:28', 'Barcode_created', 'PVC 1248', 1, 46, 3),
(77, '2024-10-29 17:21:05', 'Barcode_created', 'SGI 1235', 1, 58, 2);

-- --------------------------------------------------------

--
-- Table structure for table `booking_additonal_extra`
--

CREATE TABLE `booking_additonal_extra` (
  `booking_additional_extra_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `additional_extra_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking_additonal_extra`
--

INSERT INTO `booking_additonal_extra` (`booking_additional_extra_id`, `booking_id`, `additional_extra_id`) VALUES
(64, 35, 1),
(65, 35, 2),
(66, 35, 3),
(67, 36, 1),
(68, 36, 2),
(69, 36, 3),
(73, 38, 1),
(74, 38, 2),
(75, 38, 3),
(78, 40, 1),
(79, 40, 3);

-- --------------------------------------------------------

--
-- Table structure for table `booking_line_item`
--

CREATE TABLE `booking_line_item` (
  `booking_line_item_id` int NOT NULL,
  `line_item_name` varchar(255) NOT NULL,
  `line_item_description` text NOT NULL,
  `line_item_price_paid` double(10,2) NOT NULL,
  `currency_paid_id` int NOT NULL,
  `booking_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking_line_item`
--

INSERT INTO `booking_line_item` (`booking_line_item_id`, `line_item_name`, `line_item_description`, `line_item_price_paid`, `currency_paid_id`, `booking_id`) VALUES
(179, 'Full Price Ticket - - - - - Promenade Terrace', 'Ulster vs Zebre - Kingspan Stadium - 2024-11-01 19:35:00', 23.00, 1, 35),
(180, 'Ulster vs Zebre - Souvenir Ticket', 'Souvenir Ticket of the Big Day', 12.00, 1, 35),
(181, 'Ulster vs Zebre - Ticket Insurance', 'Cover for all Tickets on the booking', 15.00, 1, 35),
(182, 'Ulster vs Zebre - Meet The Players', 'Meet the Players Post Game (All tickets on the booking)', 21.00, 1, 35),
(183, 'Full Price Ticket - - - - - Promenade Terrace', 'Ulster vs Zebre - Kingspan Stadium - 2024-11-01 19:35:00', 23.00, 1, 36),
(184, 'Ulster vs Zebre - Souvenir Ticket', 'Souvenir Ticket of the Big Day', 12.00, 1, 36),
(185, 'Ulster vs Zebre - Ticket Insurance', 'Cover for all Tickets on the booking', 15.00, 1, 36),
(186, 'Ulster vs Zebre - Meet The Players', 'Meet the Players Post Game (All tickets on the booking)', 21.00, 1, 36),
(197, 'Full Price Ticket - A - 4 - Family Stand 1', 'Ulster vs Zebre - Kingspan Stadium - 2024-11-01 19:35:00', 23.00, 1, 38),
(198, 'Full Price Ticket - A - 3 - Family Stand 1', 'Ulster vs Zebre - Kingspan Stadium - 2024-11-01 19:35:00', 23.00, 1, 38),
(199, 'Child (16 & Under) - A - 2 - Family Stand 1', 'Ulster vs Zebre - Kingspan Stadium - 2024-11-01 19:35:00', 13.00, 1, 38),
(200, 'Child (16 & Under) - A - 1 - Family Stand 1', 'Ulster vs Zebre - Kingspan Stadium - 2024-11-01 19:35:00', 13.00, 1, 38),
(204, 'Ulster vs Zebre - Souvenir Ticket', 'Souvenir Ticket of the Big Day', 12.00, 1, 38),
(205, 'Ulster vs Zebre - Ticket Insurance', 'Cover for all Tickets on the booking', 15.00, 1, 38),
(206, 'Ulster vs Zebre - Meet The Players', 'Meet the Players Post Game (All tickets on the booking)', 21.00, 1, 38),
(213, 'Full Price Ticket - - - - - Promenade Terrace', 'Ulster vs Zebre - Kingspan Stadium - 2024-11-01 19:35:00', 23.00, 1, 40),
(214, 'Full Price Ticket - - - - - Promenade Terrace', 'Ulster vs Zebre - Kingspan Stadium - 2024-11-01 19:35:00', 23.00, 1, 40),
(216, 'Ulster vs Zebre - Souvenir Ticket', 'Souvenir Ticket of the Big Day', 12.00, 1, 40),
(217, 'Ulster vs Zebre - Meet The Players', 'Meet the Players Post Game (All tickets on the booking)', 21.00, 1, 40);

-- --------------------------------------------------------

--
-- Table structure for table `booking_multiday_ticket_price`
--

CREATE TABLE `booking_multiday_ticket_price` (
  `booking_multiday_ticket_price_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `multiday_ticket_price_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking_multiday_ticket_price`
--

INSERT INTO `booking_multiday_ticket_price` (`booking_multiday_ticket_price_id`, `booking_id`, `multiday_ticket_price_id`) VALUES
(37, 77, 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking_status`
--

CREATE TABLE `booking_status` (
  `booking_status_id` int NOT NULL,
  `booking_status_label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking_status`
--

INSERT INTO `booking_status` (`booking_status_id`, `booking_status_label`) VALUES
(1, 'Active'),
(2, 'Complete'),
(3, 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `booking_ticket_price`
--

CREATE TABLE `booking_ticket_price` (
  `booking_ticket_price_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `ticket_price_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking_ticket_price`
--

INSERT INTO `booking_ticket_price` (`booking_ticket_price_id`, `booking_id`, `ticket_price_id`) VALUES
(114, 35, 19),
(115, 36, 19),
(120, 38, 54),
(121, 38, 55),
(122, 38, 60),
(123, 38, 61),
(126, 40, 19),
(127, 40, 24);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` text NOT NULL,
  `macro_category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `macro_category_id`) VALUES
(1, 'Rock/ Pop', '-', 1),
(2, 'Rugby Union', '-', 2),
(3, 'Ice Hockey', '-', 2),
(4, 'GAA', '-', 2),
(5, 'Comedy', '-', 3),
(6, 'Ice Shows', '-', 4);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Belfast'),
(2, 'Dublin'),
(3, 'Cork'),
(4, 'Limerick'),
(5, 'Galway'),
(6, 'Waterford'),
(7, 'Kilkenny'),
(8, 'London'),
(9, 'Manchester'),
(10, 'Birmingham'),
(11, 'Liverpool'),
(12, 'Leeds'),
(13, 'Newcastle');

-- --------------------------------------------------------

--
-- Table structure for table `city_region`
--

CREATE TABLE `city_region` (
  `city_region_id` int NOT NULL,
  `city_id` int NOT NULL,
  `region_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `city_region`
--

INSERT INTO `city_region` (`city_region_id`, `city_id`, `region_id`) VALUES
(1, 1, 8),
(2, 1, 9),
(3, 4, 7),
(4, 5, 7),
(5, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int NOT NULL,
  `country_name` varchar(2550) NOT NULL,
  `country_short_code` varchar(255) NOT NULL,
  `country_flag_image_url` varchar(2550) DEFAULT NULL,
  `country_base_url` varchar(2550) NOT NULL,
  `postcode_format` varchar(255) DEFAULT NULL,
  `currency_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `country_short_code`, `country_flag_image_url`, `country_base_url`, `postcode_format`, `currency_id`) VALUES
(1, 'Ireland', 'IRL', '/ire-flag', 'https://www.ticketmaster.ie', 'Aircode', 2),
(2, 'United Kingdom of Great Britain and Northern Ireland', 'GBR', '/uk-flag', 'https://www.ticketmaster.co.uk', 'XXXX-XXX', 1),
(3, 'United States of America', 'USA', '/usa-flag', 'https://www.ticketmaster.com', 'Zip Code', 3),
(4, 'Germany', 'DEU', '/deu-flag', 'https://www.ticketmaster.de', 'XXXXX', 2);

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE `credit_card` (
  `credit_card_id` int NOT NULL,
  `credit_card_holder_name` varchar(255) NOT NULL,
  `credit_card_number` varbinary(255) NOT NULL,
  `credit_card_expiration_date` varbinary(255) NOT NULL,
  `credit_card_cvv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `credit_card_precedence` int DEFAULT NULL,
  `credit_card_type_id` int NOT NULL,
  `billing_address_id` int NOT NULL,
  `customer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`credit_card_id`, `credit_card_holder_name`, `credit_card_number`, `credit_card_expiration_date`, `credit_card_cvv`, `credit_card_precedence`, `credit_card_type_id`, `billing_address_id`, `customer_id`) VALUES
(28, 'Mrs Una Meabh O Hanlon', 0xce46ebbd36652a18a887734396826640f2911d5d44da67f8753d5bae811bff03, 0x47c3ee887f5ec2cb4f7e305028a31486, NULL, 1, 2, 29, 44),
(29, 'Mr John McKee', 0xce46ebbd36652a18a887734396826640f2911d5d44da67f8753d5bae811bff03, 0x47c3ee887f5ec2cb4f7e305028a31486, NULL, 1, 2, 30, 46),
(30, 'John McCarthy', 0x04155e0493106ca465f1398a66aea99ce97531fc62c23a15c0967e653500c0f0, 0x25f01e9b37b9565ef50a5cfc348192d4, NULL, 1, 2, 31, 47),
(31, 'Mary O\'Neill', 0xcfdfe6538829c1eae79a3d03c7768e64b5d0ab1c141fbf0d8430e009015a598d, 0x763e5fcb9ff0edb17ea5d81c1ca32aa3, NULL, 1, 2, 32, 48),
(32, 'Sean Gallagher', 0xa3b4318441a49939158aa43ab75b88994ed9e5e90fca33d3d78e3dedb9f6f319, 0xcbe383df3a399e67bef0b13337ae0082, NULL, 1, 2, 33, 49),
(33, 'Niamh Maguire', 0xa3b4318441a49939158aa43ab75b88994ed9e5e90fca33d3d78e3dedb9f6f319, 0xcbe383df3a399e67bef0b13337ae0082, NULL, 1, 2, 34, 50),
(34, 'Eoin Doherty', 0xa3b4318441a49939158aa43ab75b88994ed9e5e90fca33d3d78e3dedb9f6f319, 0xcbe383df3a399e67bef0b13337ae0082, NULL, 1, 2, 35, 51),
(35, 'Aoife Murphy', 0xa239c0a79e11f6ef3b930fbc2000d8894f245d468abe4b01aa28fbcd1dc089df, 0x008d450e801070ad53f12ac31632ee1f, NULL, 1, 2, 36, 52),
(36, 'Patrick Kelly', 0xdbe313d2576847f86d739985804d6552f2911d5d44da67f8753d5bae811bff03, 0x2a61d7ccdf699840adc7e31d1638461c, NULL, 1, 2, 37, 53),
(37, 'Siobhan O\'Donnell', 0xb69eeae966f22dc674a634002eb21657f0a66bd4f838a9e430ffd9a3ba73891b, 0xc6d11f3309459524e67384c668d9a386, NULL, 1, 2, 38, 54),
(38, 'Darragh Byrne', 0xf6400712adff8c0a6b08997c90927324d373a40cef486b7556d1d495cba8bf0a, 0x8f096ce38d8a1cc5885d1a6e93fb4e1b, NULL, 1, 2, 39, 55),
(39, 'Fiona Brady', 0x39d5c114dd5f1764d1e47fb12a63d6d2fd0a968f28e40ea0e138c5216b92f499, 0xdf1a81d331d1b27a1c2b2f98a3fc3f80, NULL, 1, 2, 40, 56),
(40, 'Liam Hughes', 0xa65dda75de762d235ab75bbe96b69fa9f3fae04f8adc2a13823c35d192de8fa2, 0xbdf2239773101b58253cd84276b0cc74, NULL, 1, 2, 41, 57),
(41, 'Emma Farrell', 0xd0d5fedbf14830090aab567becf549d1dd37d257ffe51144b14aab158bf06525, 0x4fa06d0ca5e6572f197740b7623d4be2, NULL, 1, 2, 42, 58);

-- --------------------------------------------------------

--
-- Table structure for table `credit_card_type`
--

CREATE TABLE `credit_card_type` (
  `credit_card_type_id` int NOT NULL,
  `credit_card_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `credit_card_type`
--

INSERT INTO `credit_card_type` (`credit_card_type_id`, `credit_card_type_name`) VALUES
(1, 'Visa'),
(2, 'MasterCard'),
(3, 'American Express'),
(4, 'Discover'),
(5, 'Diners Club'),
(6, 'JCB'),
(7, 'Visa Debit');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL,
  `currency_short_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_name`, `currency_symbol`, `currency_short_code`) VALUES
(1, 'The Pound Sterling', '£', 'GBP'),
(2, 'The Euro', '€', 'Euro'),
(3, 'The Dollar', '$', 'Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `currency_fx`
--

CREATE TABLE `currency_fx` (
  `currency_fx_id` int NOT NULL,
  `currency_customer_payment_id` int NOT NULL,
  `currency_vendor_preferred_currency_id` int NOT NULL,
  `fx_rate` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `customer_first_name` varchar(255) NOT NULL,
  `customer_last_name` varchar(255) NOT NULL,
  `customer_date_of_birth` date NOT NULL,
  `customer_email_address` varchar(2550) NOT NULL,
  `customer_phone_number` varchar(255) NOT NULL,
  `customer_postcode` varchar(255) NOT NULL,
  `customer_home_country_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_date_of_birth`, `customer_email_address`, `customer_phone_number`, `customer_postcode`, `customer_home_country_id`) VALUES
(44, 'Una Meabh', 'O\'Hanlon', '1986-01-18', 'unameabh@gmail.com', '02890646885', 'BT10 0QQ', 2),
(46, 'John', 'Mc Kee', '1986-08-18', 'john@gmail.com', '02890646885', 'BT11 9EP', 2),
(47, 'John', 'McCarthy', '1990-03-12', 'john.mccarthy@example.com', '02890234567', 'BT15 4LR', 2),
(48, 'Mary', 'O\'Neill', '1988-07-22', 'mary.oneill@example.com', '02890345678', 'BT7 3FD', 2),
(49, 'Sean', 'Gallagher', '1975-02-05', 'sean.gallagher@example.com', '02890123456', 'BT12 6TT', 2),
(50, 'Niamh', 'Maguire', '1993-05-13', 'niamh.maguire@example.com', '02890567890', 'BT10 4TR', 2),
(51, 'Eoin', 'Doherty', '1982-08-25', 'eoin.doherty@example.com', '02890654321', 'BT8 8GH', 2),
(52, 'Aoife', 'Murphy', '1991-09-15', 'aoife.murphy@example.com', '02890211234', 'BT9 2DR', 2),
(53, 'Patrick', 'Kelly', '1980-04-18', 'patrick.kelly@example.com', '02890765432', 'BT1 1AA', 2),
(54, 'Siobhan', 'O\'Donnell', '1985-06-12', 'siobhan.odonnell@example.com', '02890987654', 'BT5 3HZ', 2),
(55, 'Darragh', 'Byrne', '1992-10-20', 'darragh.byrne@example.com', '02890321098', 'BT2 8BY', 2),
(56, 'Fiona', 'Brady', '1983-12-05', 'fiona.brady@example.com', '02890432109', 'BT4 2DN', 2),
(57, 'Liam', 'Hughes', '1995-11-03', 'liam.hughes@example.com', '02890678901', 'BT6 1AZ', 2),
(58, 'Emma', 'Farrell', '1998-04-09', 'emma.farrell@example.com', '02890546789', 'BT14 5QA', 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer_category`
--

CREATE TABLE `customer_category` (
  `customer_category_id` int NOT NULL,
  `alert_start_date` int NOT NULL,
  `alert_end_date` int DEFAULT NULL,
  `customer_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer_category`
--

INSERT INTO `customer_category` (`customer_category_id`, `alert_start_date`, `alert_end_date`, `customer_id`, `category_id`) VALUES
(46, 20241028, NULL, 44, 4),
(47, 20241028, NULL, 44, 5),
(48, 20241028, NULL, 44, 1),
(49, 20241028, NULL, 46, 4),
(50, 20241028, NULL, 46, 5),
(51, 20241028, NULL, 46, 2),
(52, 20241028, NULL, 47, 4),
(53, 20241028, NULL, 47, 5),
(54, 20241028, NULL, 47, 4),
(55, 20241028, NULL, 48, 4),
(56, 20241028, NULL, 48, 5),
(57, 20241028, NULL, 48, 2),
(58, 20241028, NULL, 49, 4),
(59, 20241028, NULL, 49, 5),
(60, 20241028, NULL, 49, 6),
(61, 20241028, NULL, 50, 4),
(62, 20241028, NULL, 50, 5),
(63, 20241028, NULL, 50, 2),
(64, 20241028, NULL, 51, 4),
(65, 20241028, NULL, 51, 5),
(66, 20241028, NULL, 51, 2),
(67, 20241028, NULL, 52, 4),
(68, 20241028, NULL, 52, 5),
(69, 20241028, NULL, 52, 2),
(70, 20241028, NULL, 53, 4),
(71, 20241028, NULL, 53, 5),
(72, 20241028, NULL, 53, 2),
(73, 20241028, NULL, 54, 4),
(74, 20241028, NULL, 54, 5),
(75, 20241028, NULL, 54, 2),
(76, 20241028, NULL, 55, 4),
(77, 20241028, NULL, 55, 5),
(78, 20241028, NULL, 55, 2),
(79, 20241028, NULL, 56, 4),
(80, 20241028, NULL, 56, 5),
(81, 20241028, NULL, 56, 2),
(82, 20241028, NULL, 57, 4),
(83, 20241028, NULL, 57, 5),
(84, 20241028, NULL, 57, 2),
(85, 20241028, NULL, 58, 4),
(86, 20241028, NULL, 58, 5),
(87, 20241028, NULL, 58, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer_performer`
--

CREATE TABLE `customer_performer` (
  `customer_performer_id` int NOT NULL,
  `alert_start_date` date NOT NULL,
  `alert_end_date` date DEFAULT NULL,
  `customer_id` int NOT NULL,
  `performer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer_performer`
--

INSERT INTO `customer_performer` (`customer_performer_id`, `alert_start_date`, `alert_end_date`, `customer_id`, `performer_id`) VALUES
(43, '2024-10-28', NULL, 44, 3),
(44, '2024-10-28', NULL, 44, 4),
(45, '2024-10-28', NULL, 44, 1),
(46, '2024-10-28', NULL, 46, 3),
(47, '2024-10-28', NULL, 46, 4),
(48, '2024-10-28', NULL, 46, 15),
(49, '2024-10-28', NULL, 47, 3),
(50, '2024-10-28', NULL, 47, 4),
(51, '2024-10-28', NULL, 47, 15),
(52, '2024-10-28', NULL, 48, 1),
(53, '2024-10-28', NULL, 48, 4),
(54, '2024-10-28', NULL, 48, 15),
(55, '2024-10-28', NULL, 49, 3),
(56, '2024-10-28', NULL, 49, 4),
(57, '2024-10-28', NULL, 49, 1),
(58, '2024-10-28', NULL, 50, 3),
(59, '2024-10-28', NULL, 50, 4),
(60, '2024-10-28', NULL, 50, 15),
(61, '2024-10-28', NULL, 51, 3),
(62, '2024-10-28', NULL, 51, 1),
(63, '2024-10-28', NULL, 51, 15),
(64, '2024-10-28', NULL, 52, 3),
(65, '2024-10-28', NULL, 52, 4),
(66, '2024-10-28', NULL, 52, 15),
(67, '2024-10-28', NULL, 53, 1),
(68, '2024-10-28', NULL, 53, 4),
(69, '2024-10-28', NULL, 53, 1),
(70, '2024-10-28', NULL, 54, 3),
(71, '2024-10-28', NULL, 54, 4),
(72, '2024-10-28', NULL, 54, 15),
(73, '2024-10-28', NULL, 55, 3),
(74, '2024-10-28', NULL, 55, 1),
(75, '2024-10-28', NULL, 55, 15),
(76, '2024-10-28', NULL, 56, 3),
(77, '2024-10-28', NULL, 56, 4),
(78, '2024-10-28', NULL, 56, 15),
(79, '2024-10-28', NULL, 57, 3),
(80, '2024-10-28', NULL, 57, 4),
(81, '2024-10-28', NULL, 57, 15),
(82, '2024-10-28', NULL, 58, 3),
(83, '2024-10-28', NULL, 58, 4),
(84, '2024-10-28', NULL, 58, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_venue`
--

CREATE TABLE `customer_venue` (
  `customer_venue_id` int NOT NULL,
  `alert_start_date` date NOT NULL,
  `alert_end_date` date DEFAULT NULL,
  `customer_id` int NOT NULL,
  `venue_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer_venue`
--

INSERT INTO `customer_venue` (`customer_venue_id`, `alert_start_date`, `alert_end_date`, `customer_id`, `venue_id`) VALUES
(49, '2024-10-28', NULL, 44, 4),
(50, '2024-10-28', NULL, 44, 7),
(51, '2024-10-28', NULL, 44, 5),
(52, '2024-10-28', NULL, 46, 4),
(53, '2024-10-28', NULL, 46, 7),
(54, '2024-10-28', NULL, 46, 5),
(55, '2024-10-28', NULL, 47, 4),
(56, '2024-10-28', NULL, 47, 7),
(57, '2024-10-28', NULL, 47, 5),
(58, '2024-10-28', NULL, 48, 4),
(59, '2024-10-28', NULL, 48, 7),
(60, '2024-10-28', NULL, 48, 5),
(61, '2024-10-28', NULL, 49, 4),
(62, '2024-10-28', NULL, 49, 7),
(63, '2024-10-28', NULL, 49, 10),
(64, '2024-10-28', NULL, 50, 4),
(65, '2024-10-28', NULL, 50, 7),
(66, '2024-10-28', NULL, 50, 7),
(67, '2024-10-28', NULL, 51, 4),
(68, '2024-10-28', NULL, 51, 7),
(69, '2024-10-28', NULL, 51, 5),
(70, '2024-10-28', NULL, 52, 4),
(71, '2024-10-28', NULL, 52, 7),
(72, '2024-10-28', NULL, 52, 9),
(73, '2024-10-28', NULL, 53, 4),
(74, '2024-10-28', NULL, 53, 7),
(75, '2024-10-28', NULL, 53, 5),
(76, '2024-10-28', NULL, 54, 4),
(77, '2024-10-28', NULL, 54, 7),
(78, '2024-10-28', NULL, 54, 5),
(79, '2024-10-28', NULL, 55, 4),
(80, '2024-10-28', NULL, 55, 7),
(81, '2024-10-28', NULL, 55, 5),
(82, '2024-10-28', NULL, 56, 4),
(83, '2024-10-28', NULL, 56, 7),
(84, '2024-10-28', NULL, 56, 5),
(85, '2024-10-28', NULL, 57, 4),
(86, '2024-10-28', NULL, 57, 7),
(87, '2024-10-28', NULL, 57, 5),
(88, '2024-10-28', NULL, 58, 4),
(89, '2024-10-28', NULL, 58, 7),
(90, '2024-10-28', NULL, 58, 5);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_method`
--

CREATE TABLE `delivery_method` (
  `delivery_method_id` int NOT NULL,
  `delivery_method_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `delivery_method`
--

INSERT INTO `delivery_method` (`delivery_method_id`, `delivery_method_description`) VALUES
(1, 'E-ticket'),
(2, 'Postage');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int NOT NULL,
  `event_name` varchar(510) NOT NULL,
  `event_image` varchar(255) NOT NULL,
  `event_start_date_time` datetime NOT NULL,
  `event_end_date_time` datetime NOT NULL,
  `event_description` text NOT NULL,
  `event_age_restriction` int NOT NULL,
  `facility_layout_id` int NOT NULL,
  `organiser_id` int NOT NULL,
  `event_status_id` int NOT NULL,
  `event_availability_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_name`, `event_image`, `event_start_date_time`, `event_end_date_time`, `event_description`, `event_age_restriction`, `facility_layout_id`, `organiser_id`, `event_status_id`, `event_availability_id`) VALUES
(3, 'Grace Campbell Is On Heat', '/image', '2024-10-27 19:00:00', '2024-10-27 20:00:00', '-', 18, 2, 3, 1, NULL),
(4, 'Bambie Thug', '/image', '2024-10-28 19:00:00', '2024-10-28 20:00:00', '-', 18, 3, 4, 1, 1),
(5, 'Stena Line Belfast Giants V Glasgow Clan', '/image', '2024-10-30 19:00:00', '2024-10-30 19:00:00', '-', 0, 18, 3, 1, 2),
(6, 'Ben Elton - Authentic Stupidity', '/image', '2024-10-31 19:00:00', '2024-10-31 21:00:00', '-', 0, 8, 5, 1, 1),
(7, 'Friday Fright Night (Conlan Boxing)', '/image', '2024-11-01 17:00:00', '2024-11-01 23:00:00', '-', 15, 15, 3, 1, NULL),
(8, 'Lady Gaga Tribute: Perfect Illusion', '/image', '2024-11-01 19:00:00', '2024-11-01 22:00:00', '-', 0, 9, 5, 1, NULL),
(9, 'Now the 90s Tribute Band', '/image', '2024-11-02 19:00:00', '2024-11-02 23:00:00', '-', 18, 8, 5, 1, NULL),
(10, 'Faithless - Champion Sound Tour 2024', '/image', '2024-11-02 19:00:00', '2024-11-02 23:00:00', '-', 18, 7, 5, 1, 1),
(11, 'Therapy - Troublegum 30 the 30th Anniversary Tour', '/image', '2024-11-02 19:00:00', '2024-11-02 23:00:00', '-', 18, 6, 5, 2, 1),
(12, 'Stena Line Belfast Giants v Dundee Stars', '/image', '2024-11-03 16:00:00', '2024-11-03 19:00:00', '-', 0, 18, 3, 1, NULL),
(13, 'Shane Todd', '/image', '2024-11-02 19:00:00', '2024-11-02 21:00:00', '-', 16, 3, 5, 1, 1),
(14, 'Disney On Ice', '/image', '2024-11-02 13:00:00', '2024-11-02 15:00:00', '-', 0, 18, 3, 1, 3),
(15, 'Disney On Ice', '/image', '2024-11-02 16:00:00', '2024-11-02 18:00:00', '-', 0, 18, 3, 1, 3),
(16, 'Disney On Ice', '/image', '2024-11-02 19:00:00', '2024-11-02 21:00:00', '-', 0, 18, 3, 1, 3),
(17, 'Ciaran Bartlett - Belfast Giant', '/image', '2024-11-02 19:00:00', '2024-11-02 21:00:00', '-', 18, 6, 5, 1, 1),
(18, 'TINA - The Tina Turner Musical', '/image', '2024-11-01 19:00:00', '2024-11-01 22:00:00', '-', 0, 23, 5, 1, NULL),
(19, 'Euro 2025 Qualifier - Republic of Ireland WNT V Georgia', '/image', '2024-11-02 13:00:00', '2024-11-02 15:00:00', '-', 0, 24, 3, 1, 1),
(20, 'Connacht vs Gwent Dragons', '/image', '2024-11-02 13:00:00', '2024-11-02 15:00:00', '-', 0, 25, 3, 1, NULL),
(21, 'Leinster vs Ospreys', '/image', '2024-11-02 13:00:00', '2024-11-02 15:00:00', '-', 0, 4, 3, 1, 3),
(22, 'Dublin vs Laois', '/image', '2024-11-01 19:00:00', '2024-11-01 22:00:00', '-', 0, 24, 5, 1, NULL),
(23, 'Taylor Swift- The Eras Tour', '/image', '2024-11-01 19:00:00', '2024-11-01 22:00:00', '-', 0, 26, 4, 1, 3),
(24, 'NFL On Tour: NY Jets vs NY Giants', '/image', '2024-11-02 16:00:00', '2024-11-02 18:00:00', '-', 0, 27, 3, 1, 3),
(25, 'Gallagher Premiership Rugby: Saracens vs Leicester Tigers', '/image', '2024-11-03 13:00:00', '2024-11-03 17:00:00', '-', 0, 27, 3, 1, 2),
(26, 'Ulster vs Zebre', '/image', '2024-11-01 19:35:00', '2024-11-01 22:00:00', 'URC Game', 0, 10, 5, 1, NULL),
(27, 'Cooke vs Instonians', '/image', '2024-11-02 16:00:00', '2024-11-02 18:00:00', 'McCrea Cup Final', 0, 12, 3, 1, NULL),
(28, 'Methody vs RBAI', '/image', '2024-11-03 13:00:00', '2024-11-03 14:00:00', 'Schools\' Cup Final', 0, 11, 3, 1, NULL),
(29, 'Ulster vs Toulouse', '/image', '2024-12-08 15:15:00', '2024-12-08 19:15:00', 'European Rugby Champions Cup', 0, 10, 5, 1, 2),
(30, 'Ulster vs Bordeaux Bègles', '/image', '2024-12-14 15:15:00', '2024-12-14 19:15:00', 'European Rugby Champions Cup', 0, 10, 5, 1, 2),
(31, 'Ulster vs Leicester Tigers', '/image', '2025-01-11 20:00:00', '2025-01-11 23:00:00', 'European Rugby Champions Cup', 0, 10, 5, 1, 2),
(32, 'Ulster vs Exeter Chiefs', '/image', '2025-01-17 20:00:00', '2025-01-17 23:00:00', 'European Rugby Champions Cup', 0, 10, 5, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `event_availability`
--

CREATE TABLE `event_availability` (
  `event_availability_id` int NOT NULL,
  `event_availability` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event_availability`
--

INSERT INTO `event_availability` (`event_availability_id`, `event_availability`) VALUES
(1, 'Low Availability'),
(2, 'Limited Availability'),
(3, 'Sold Out');

-- --------------------------------------------------------

--
-- Table structure for table `event_image`
--

CREATE TABLE `event_image` (
  `event_image_id` int NOT NULL,
  `event_id` int NOT NULL,
  `image_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_status`
--

CREATE TABLE `event_status` (
  `event_status_id` int NOT NULL,
  `event_status_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event_status`
--

INSERT INTO `event_status` (`event_status_id`, `event_status_description`) VALUES
(1, 'As Planned'),
(2, 'Postponed'),
(3, 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `facility_id` int NOT NULL,
  `facility_name` varchar(255) NOT NULL,
  `facility_description` text NOT NULL,
  `facility_max_capacity` int NOT NULL,
  `venue_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`facility_id`, `facility_name`, `facility_description`, `facility_max_capacity`, `venue_id`) VALUES
(2, 'Limelight 1', '-', 300, 6),
(3, 'Limelight 2', '-', 100, 6),
(9, 'Shelbourne Hall', '-', 4500, 12),
(10, 'Simmonscourt Hall', '-', 6300, 12),
(11, 'Concert Hall', '-', 870, 12),
(12, 'Dodder Suite', '-', 140, 12),
(13, 'RDS Rugby Arena', '-', 18500, 12),
(14, 'SSE Arena', '-', 11000, 4),
(15, 'Main Hall', '-', 600, 9),
(16, 'Kingspan Rugby Stadium', '-', 18196, 5),
(17, 'Ravenhill Social Club', '-', 600, 5),
(18, 'Main Concert Hall', '-', 1500, 11),
(19, 'The Main Hall', '-', 2000, 10),
(20, 'The Concert Hall', '-', 300, 7),
(21, 'The Main Lounge', '-', 200, 8),
(22, 'The Sports Ground Arena', '-', 15000, 14),
(23, 'Croke Park Stadium', '-', 82300, 13),
(24, 'Wembley Stadium', '-', 90000, 15);

-- --------------------------------------------------------

--
-- Table structure for table `facility_layout`
--

CREATE TABLE `facility_layout` (
  `facility_layout_id` int NOT NULL,
  `facility_layout_name` varchar(255) NOT NULL,
  `facility_layout_image_url` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `facility_layout_max_capacity` int NOT NULL,
  `facility_layout_description` text NOT NULL,
  `facility_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `facility_layout`
--

INSERT INTO `facility_layout` (`facility_layout_id`, `facility_layout_name`, `facility_layout_image_url`, `facility_layout_max_capacity`, `facility_layout_description`, `facility_id`) VALUES
(2, 'Full Concert Hall', '/image', 300, '-', 2),
(3, 'Full Concert Hall', '/image', 100, '-', 3),
(4, 'Capacity RDS Rugby Arena', '/image', 18500, '-', 13),
(5, 'Full Capacity Main Hall', '/image', 600, '-', 15),
(6, 'Full Capacity Concert Hall', '/image', 1500, '-', 18),
(7, 'Nightclub Layout', '/image', 2000, '-', 19),
(8, 'Classic Empire Layout', '/image', 300, '-', 20),
(9, 'Capacity Main Lounge Layout', '/image', 200, '-', 21),
(10, 'Full Rugby Arena', '/image', 18196, '-', 16),
(11, 'Terraces Only', '/image', 8000, '-', 16),
(12, 'Grandstand and The Promenade Only', '/image', 5000, '-', 16),
(13, 'The Promenade Only', '/image', 2500, '-', 16),
(14, 'Full Hall, Part Standing ', '/image', 11000, '-', 14),
(15, 'Full Hall, Fully Seated', '/image', 11000, '-', 14),
(16, 'Theatre', '/image', 5000, '-', 14),
(17, 'Half Hall', '/image', 7000, '-', 14),
(18, 'Full Bowl, Ice Hockey', '/image', 9200, '-', 14),
(19, 'Layout Simmonscourt A', '/image', 2600, '-', 10),
(20, 'Layout Simmonscourt B', '/image', 2800, '-', 10),
(21, 'Layout Simmonscourt C', '/image', 6300, '-', 10),
(22, 'Layout Simmonscourt D', '/image', 1150, '-', 10),
(23, 'Layout Simmonscourt E', '/image', 1440, '-', 10),
(24, 'Croke Park Full Capacity', '/image', 82300, '-', 23),
(25, 'Sports Ground Gameday Full Arena', '/image', 15000, '-', 22),
(26, 'Wembley - Full Capacity Concert', '/image', 90000, '-', 24),
(27, 'Wembley - Full Capacity Game', '/image', 90000, '-', 24);

-- --------------------------------------------------------

--
-- Table structure for table `facility_layout_section`
--

CREATE TABLE `facility_layout_section` (
  `facility_layout_section_id` int NOT NULL,
  `facility_layout_id` int NOT NULL,
  `facility_section_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `facility_layout_section`
--

INSERT INTO `facility_layout_section` (`facility_layout_section_id`, `facility_layout_id`, `facility_section_id`) VALUES
(3, 10, 3),
(4, 10, 4),
(5, 10, 5),
(6, 10, 6),
(7, 10, 7),
(8, 10, 8),
(9, 10, 9),
(10, 10, 10),
(11, 10, 11),
(12, 10, 12),
(13, 10, 14),
(14, 10, 15);

-- --------------------------------------------------------

--
-- Table structure for table `facility_section`
--

CREATE TABLE `facility_section` (
  `facility_section_id` int NOT NULL,
  `facility_section_name` varchar(255) NOT NULL,
  `facility_section_image` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `facility_section_short_code` varchar(255) NOT NULL,
  `facility_section_max_capacity` int NOT NULL,
  `facility_section_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `facility_section`
--

INSERT INTO `facility_section` (`facility_section_id`, `facility_section_name`, `facility_section_image`, `facility_section_short_code`, `facility_section_max_capacity`, `facility_section_type_id`) VALUES
(3, 'Promenade Terrace', '/image', 'PT1', 3000, 1),
(4, 'East Terrace', '/image', 'ET1', 3000, 1),
(5, 'Nevin Spence Memorial Terrace', '/image', 'NT1', 1500, 1),
(6, 'Family Terrace', '/image', 'FT1', 1500, 1),
(7, 'Family Stand 1', '/image', 'FS1', 300, 2),
(8, 'Family Stand 6', '/image', 'FS6', 300, 2),
(9, 'Grand Stand 4', '/image', 'GS4', 400, 2),
(10, 'Grand Stand 5', '/image', 'GS4', 400, 2),
(11, 'Nevin Spense Memorial Stand 3', '/image', 'NS3', 200, 2),
(12, 'Nevin Spense Memorial Stand 4', '/image', 'NS4', 200, 2),
(14, 'Premium Level', '/image', 'PREM1', 350, 3),
(15, 'Corporate - Box 1', '/image', 'COR1', 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `facility_section_type`
--

CREATE TABLE `facility_section_type` (
  `facility_section_type_id` int NOT NULL,
  `facility_section_type_name` varchar(255) NOT NULL,
  `facility_section_type_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `facility_section_type`
--

INSERT INTO `facility_section_type` (`facility_section_type_id`, `facility_section_type_name`, `facility_section_type_description`) VALUES
(1, 'Standing', '-'),
(2, 'Seated', '-'),
(3, 'Premium', '-'),
(4, 'Corporate ', '-');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int NOT NULL,
  `image_url` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image_alt_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_image_type`
--

CREATE TABLE `image_image_type` (
  `image_image_type_id` int NOT NULL,
  `image_id` int NOT NULL,
  `image_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_type`
--

CREATE TABLE `image_type` (
  `image_type_id` int NOT NULL,
  `image_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image_type_description` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int NOT NULL,
  `language_name` varchar(255) NOT NULL,
  `language_shortcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_name`, `language_shortcode`) VALUES
(1, 'English', 'En'),
(2, 'Irish', 'Ir'),
(3, 'German', 'De');

-- --------------------------------------------------------

--
-- Table structure for table `language_country`
--

CREATE TABLE `language_country` (
  `language_country_id` int NOT NULL,
  `country_id` int NOT NULL,
  `language_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `language_country`
--

INSERT INTO `language_country` (`language_country_id`, `country_id`, `language_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 1),
(5, 4, 3),
(6, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int NOT NULL,
  `location_row` varchar(255) NOT NULL,
  `location_seat_number` varchar(255) NOT NULL,
  `facility_section_id` int NOT NULL,
  `location_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_row`, `location_seat_number`, `facility_section_id`, `location_type_id`) VALUES
(4, '-', '-', 3, 15),
(5, '-', '-', 3, 15),
(6, '-', '-', 3, 15),
(7, '-', '-', 3, 15),
(8, '-', '-', 5, 15),
(9, '-', '-', 5, 15),
(10, '-', '-', 6, 10),
(11, '-', '-', 6, 10),
(12, '-', '-', 6, 10),
(13, '-', '-', 6, 10),
(14, 'A', '1', 7, 5),
(15, 'A', '2', 7, 5),
(16, 'A', '3', 7, 5),
(17, 'A', '4', 7, 5),
(18, 'B', '1', 7, 6),
(19, 'B', '2', 7, 6),
(20, 'M', '15', 9, 7),
(21, 'M', '16', 9, 7),
(22, 'M', '17', 9, 6),
(23, 'N', '15', 11, 6),
(24, 'Z', '23', 11, 6),
(25, 'PREM Lounge', '15', 14, 6),
(26, 'PREM Lounge', '16', 14, 6),
(27, 'CORP', '1', 15, 6),
(28, 'CORP', '2', 15, 6),
(29, 'C', '10', 9, 5),
(30, 'F', '17', 8, 5),
(31, 'C', '11', 9, 5),
(32, 'C', '12', 9, 5),
(33, 'C', '19', 9, 5),
(34, 'F', '19', 8, 5),
(35, 'F', '18', 9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `location_type`
--

CREATE TABLE `location_type` (
  `location_type_id` int NOT NULL,
  `location_type_name` varchar(255) NOT NULL,
  `location_type_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `location_type`
--

INSERT INTO `location_type` (`location_type_id`, `location_type_name`, `location_type_description`) VALUES
(5, 'Accessibility Access', 'Reserved seating for accessible access, including wheelchair users and guests'),
(6, 'Full View', 'Unobstructed view of the stage or field'),
(7, 'Partial View', 'May have limited view due to angle or barriers'),
(8, 'Obstructed View', 'Significant view obstruction by structural elements'),
(9, 'VIP Seating', 'Exclusive seating with premium amenities and closer proximity to the event'),
(10, 'Family Zone', 'Designated family-friendly section with alcohol-free seating'),
(11, 'Standing Room Only', 'Non-seated area with standing room access'),
(12, 'Balcony', 'Elevated seating with a distant, high-level view'),
(13, 'Behind Stage', 'Seats located behind the stage with a potentially limited view of performers'),
(14, 'General Admission', 'Non-reserved seating or standing in designated areas'),
(15, 'Standing - Non-Reserved', 'Open standing area with no assigned spots; first-come, first-served basis');

-- --------------------------------------------------------

--
-- Table structure for table `macro_category`
--

CREATE TABLE `macro_category` (
  `macro_category_id` int NOT NULL,
  `macro_category_name` varchar(255) NOT NULL,
  `macro_category_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `macro_category`
--

INSERT INTO `macro_category` (`macro_category_id`, `macro_category_name`, `macro_category_description`) VALUES
(1, 'Music', NULL),
(2, 'Sport', NULL),
(3, 'Arts, Theatre & Comedy', NULL),
(4, 'Family Attractions', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `multiday`
--

CREATE TABLE `multiday` (
  `multiday_id` int NOT NULL,
  `multiday_name` varchar(255) NOT NULL,
  `multiday_description` text NOT NULL,
  `multiday_start_date_time` datetime NOT NULL,
  `multiday_end_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `multiday`
--

INSERT INTO `multiday` (`multiday_id`, `multiday_name`, `multiday_description`, `multiday_start_date_time`, `multiday_end_date_time`) VALUES
(1, 'European Rugby Champions Cup Pool Pass - Ulster', 'Access to All 4 European Cup Pool Games', '2024-12-08 15:15:00', '2025-01-17 20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `multiday_event`
--

CREATE TABLE `multiday_event` (
  `multiday_event_id` int NOT NULL,
  `multiday_id` int NOT NULL,
  `event_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `multiday_event`
--

INSERT INTO `multiday_event` (`multiday_event_id`, `multiday_id`, `event_id`) VALUES
(1, 1, 29),
(2, 1, 31),
(3, 1, 32),
(4, 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `multiday_ticket_price`
--

CREATE TABLE `multiday_ticket_price` (
  `multiday_ticket_price_id` int NOT NULL,
  `price` double(10,2) NOT NULL,
  `multiday_valid_from_date_time` datetime NOT NULL,
  `multiday_valid_to_date_time` datetime NOT NULL,
  `multiday_id` int NOT NULL,
  `location_id` int NOT NULL,
  `ticket_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `multiday_ticket_price`
--

INSERT INTO `multiday_ticket_price` (`multiday_ticket_price_id`, `price`, `multiday_valid_from_date_time`, `multiday_valid_to_date_time`, `multiday_id`, `location_id`, `ticket_type_id`) VALUES
(1, 150.00, '2024-10-29 00:00:00', '2024-12-08 15:15:00', 1, 27, 5),
(2, 150.00, '2024-10-29 00:00:00', '2024-12-08 15:15:00', 1, 28, 5),
(3, 100.00, '2024-10-29 15:44:15', '2024-10-29 15:44:15', 1, 18, 5),
(4, 80.00, '2024-10-29 15:44:15', '2024-10-29 15:44:15', 1, 18, 6),
(5, 100.00, '2024-10-29 15:44:15', '2024-10-29 15:44:15', 1, 19, 5),
(6, 80.00, '2024-10-29 15:44:15', '2024-10-29 15:44:15', 1, 19, 6);

-- --------------------------------------------------------

--
-- Table structure for table `organiser`
--

CREATE TABLE `organiser` (
  `organiser_id` int NOT NULL,
  `organiser_name` varchar(255) NOT NULL,
  `organiser_phone_number` varchar(255) NOT NULL,
  `organiser_email_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `organiser`
--

INSERT INTO `organiser` (`organiser_id`, `organiser_name`, `organiser_phone_number`, `organiser_email_address`) VALUES
(2, 'John Ulster', '02890 646882', 'john@ulsterrugby.com'),
(3, 'David Odyssey', '02890 646882', 'david@ssearena.com'),
(4, 'John Lennon', '02890 646882', 'john@musicpromotions.com'),
(5, 'Alan Shearer', '02890 646882', 'david@sportspromotions.com');

-- --------------------------------------------------------

--
-- Table structure for table `password`
--

CREATE TABLE `password` (
  `password_id` int NOT NULL,
  `password_salted_hash` varbinary(255) NOT NULL,
  `password_salt` varbinary(255) NOT NULL,
  `password_creation_date_time` datetime NOT NULL,
  `customer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `password`
--

INSERT INTO `password` (`password_id`, `password_salted_hash`, `password_salt`, `password_creation_date_time`, `customer_id`) VALUES
(35, 0x31386363323638383435633432356535356565393433306632643737613361366261386138396231, 0x373065323536, '2024-10-28 00:00:00', 44),
(36, 0x65346337383036386463393331356231373565343562656139626630393737373338336638666238, 0x396362633335, '2024-10-28 00:00:00', 46),
(37, 0x62343130303730303662616336303639383333613463386334326565623034646163336466623432, 0x636339653031, '2024-10-28 00:00:00', 47),
(38, 0x63356439343938343635343036313466373261346166643962303362646235326266613063376461, 0x376561636433, '2024-10-28 00:00:00', 48),
(39, 0x65373464323636356436663861306131633563646430623130336536653264396438356136336435, 0x316337646664, '2024-10-28 00:00:00', 49),
(40, 0x38616230316635636265313030613135633633336265366466353461663662396533383830373336, 0x386538393737, '2024-10-28 00:00:00', 50),
(41, 0x31373837613465316161633463306164316132366436396233333237333534643862393239616530, 0x316432306139, '2024-10-28 00:00:00', 51),
(42, 0x37373838623037373836383032376231356261653830303531316532623238373765623032303661, 0x626332353236, '2024-10-28 00:00:00', 52),
(43, 0x66333038346233366137393663653064663064643962363930643136343435653634306161363230, 0x613132396535, '2024-10-28 00:00:00', 53),
(44, 0x32306230636561643834356339336233656164643930343763393463313735303566663435363463, 0x356461336637, '2024-10-28 00:00:00', 54),
(45, 0x39323838383262396630313232323663326534646533383864396235333166396336393961373662, 0x656462346533, '2024-10-28 00:00:00', 55),
(46, 0x65333833663663666664336563643365343365393965373538323362393537316332666231616232, 0x366231356366, '2024-10-28 00:00:00', 56),
(47, 0x61376239363363393934303530376164356530386532346330306233373162666530653066646231, 0x383766373631, '2024-10-28 00:00:00', 57),
(48, 0x32363938343763376439643433306237393763363930653535363066363737343735623864373533, 0x326461313532, '2024-10-28 00:00:00', 58);

-- --------------------------------------------------------

--
-- Table structure for table `performer`
--

CREATE TABLE `performer` (
  `performer_id` int NOT NULL,
  `performer_name` varchar(255) NOT NULL,
  `performer_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `performer`
--

INSERT INTO `performer` (`performer_id`, `performer_name`, `performer_description`) VALUES
(1, 'Ulster Rugby', 'Professional rugby team based in Northern Ireland'),
(3, 'Northern Ireland Ladies', 'National ladies soccer team for NI'),
(4, 'Christy Moore', 'Legendary Irish folk singer and songwriter'),
(5, 'U2', 'World-renowned Irish rock band from Dublin'),
(6, 'The Cranberries', 'Popular Irish rock band from Limerick, known for their unique sound'),
(7, 'Sinéad O’Connor', 'Influential Irish singer-songwriter with a distinctive voice'),
(8, 'Van Morrison', 'Iconic singer-songwriter from Belfast'),
(9, 'Hozier', 'Popular Irish musician and singer-songwriter'),
(10, 'Antrim GAA', 'Gaelic Athletic Association team representing County Antrim'),
(11, 'The Pogues', 'Irish-British Celtic punk band known for their energetic sound'),
(12, 'Westlife', 'Famous Irish boy band with global popularity'),
(13, 'Snow Patrol', 'Alternative rock band formed in Northern Ireland'),
(14, 'Thin Lizzy', 'Legendary Irish rock band with a hard rock sound'),
(15, 'Enya', 'World-famous Irish singer known for her ethereal and unique style');

-- --------------------------------------------------------

--
-- Table structure for table `performer_category`
--

CREATE TABLE `performer_category` (
  `performer_category_id` int NOT NULL,
  `performer_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performer_event`
--

CREATE TABLE `performer_event` (
  `performer_event_id` int NOT NULL,
  `event_id` int NOT NULL,
  `performer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `performer_event`
--

INSERT INTO `performer_event` (`performer_event_id`, `event_id`, `performer_id`) VALUES
(1, 26, 1),
(2, 30, 1),
(3, 32, 1),
(4, 31, 1),
(5, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `performer_image`
--

CREATE TABLE `performer_image` (
  `performer_image_id` int NOT NULL,
  `performer_id` int NOT NULL,
  `image_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int NOT NULL,
  `region_name` varchar(255) NOT NULL,
  `country_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`, `country_id`) VALUES
(1, 'London', 2),
(2, 'South', 2),
(3, 'Midlands & Central', 2),
(4, 'Wales & North West', 2),
(5, 'North & North East', 2),
(6, 'Scotland', 2),
(7, 'Ireland', 1),
(8, 'Northern Ireland', 2),
(9, 'Northern Ireland', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int NOT NULL,
  `location_id` int NOT NULL,
  `event_id` int NOT NULL,
  `ticket_status_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `location_id`, `event_id`, `ticket_status_id`) VALUES
(7, 4, 26, 2),
(8, 5, 26, 2),
(9, 6, 26, 1),
(10, 7, 26, 1),
(11, 8, 26, 1),
(12, 9, 26, 3),
(13, 10, 26, 2),
(14, 11, 26, 1),
(15, 12, 26, 1),
(16, 13, 26, 1),
(17, 14, 26, 2),
(18, 15, 26, 2),
(19, 16, 26, 2),
(20, 17, 26, 2),
(21, 18, 26, 1),
(22, 19, 26, 1),
(23, 20, 26, 2),
(24, 21, 26, 1),
(25, 22, 26, 1),
(26, 23, 26, 1),
(27, 24, 26, 2),
(28, 25, 26, 2),
(29, 26, 26, 2),
(30, 27, 26, 1),
(31, 27, 26, 3),
(32, 33, 26, 2),
(33, 32, 26, 2),
(34, 31, 26, 2),
(35, 29, 26, 2),
(36, 35, 26, 2),
(37, 30, 26, 2),
(38, 34, 26, 2),
(47, 28, 29, 2),
(48, 27, 29, 2),
(49, 28, 31, 2),
(50, 27, 31, 2),
(51, 28, 32, 2),
(52, 27, 32, 2),
(53, 28, 30, 2),
(54, 27, 30, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_macro_type`
--

CREATE TABLE `ticket_macro_type` (
  `ticket_macro_type_id` int NOT NULL,
  `ticket_macro_type_name` varchar(255) NOT NULL,
  `ticket_macro_type_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ticket_macro_type`
--

INSERT INTO `ticket_macro_type` (`ticket_macro_type_id`, `ticket_macro_type_name`, `ticket_macro_type_description`) VALUES
(1, 'Standard', 'Standard'),
(2, 'VIP', 'VIP'),
(3, 'Premium', 'Premium'),
(4, 'Corporate', 'Corporate');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_price`
--

CREATE TABLE `ticket_price` (
  `ticket_price_id` int NOT NULL,
  `ticket_price_price` double(10,2) NOT NULL,
  `ticket_price_valid_from_date_time` datetime NOT NULL,
  `ticket_price_valid_to_date_time` datetime NOT NULL,
  `currency_id` int NOT NULL,
  `ticket_id` int NOT NULL,
  `ticket_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ticket_price`
--

INSERT INTO `ticket_price` (`ticket_price_id`, `ticket_price_price`, `ticket_price_valid_from_date_time`, `ticket_price_valid_to_date_time`, `currency_id`, `ticket_id`, `ticket_type_id`) VALUES
(19, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 7, 5),
(20, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 7, 6),
(21, 15.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 7, 7),
(22, 15.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 7, 9),
(23, 15.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 7, 8),
(24, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 8, 5),
(25, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 8, 6),
(26, 15.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 8, 7),
(27, 15.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 8, 9),
(28, 15.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 7, 9),
(29, 15.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 8, 8),
(30, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 9, 5),
(31, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 9, 6),
(32, 15.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 9, 7),
(33, 15.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 9, 9),
(34, 15.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 9, 8),
(35, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 10, 5),
(36, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 10, 6),
(37, 15.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 10, 7),
(38, 15.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 10, 9),
(39, 15.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 10, 8),
(40, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 11, 5),
(41, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 12, 5),
(42, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 13, 5),
(43, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 14, 5),
(44, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 15, 5),
(49, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 16, 5),
(50, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 13, 6),
(51, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 14, 6),
(52, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 15, 6),
(53, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 16, 6),
(54, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 17, 6),
(55, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 18, 6),
(56, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 19, 6),
(57, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 20, 6),
(58, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 17, 5),
(59, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 18, 5),
(60, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 19, 5),
(61, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 20, 5),
(62, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 21, 5),
(63, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 22, 5),
(64, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 21, 6),
(65, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 22, 6),
(66, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 23, 5),
(67, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 24, 5),
(68, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 25, 5),
(69, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 26, 5),
(70, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 27, 5),
(71, 100.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 28, 5),
(72, 100.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 29, 5),
(73, 150.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 30, 5),
(74, 150.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 31, 5),
(75, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 32, 6),
(76, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 32, 5),
(77, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 33, 6),
(78, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 33, 5),
(79, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 34, 6),
(80, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 34, 5),
(81, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 35, 6),
(82, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 35, 5),
(83, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 36, 6),
(84, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 36, 5),
(85, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 37, 6),
(86, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 37, 5),
(87, 13.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 38, 6),
(88, 23.00, '2024-10-27 16:00:00', '2024-11-01 19:35:00', 1, 38, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_status`
--

CREATE TABLE `ticket_status` (
  `ticket_status_id` int NOT NULL,
  `ticket_status_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ticket_status`
--

INSERT INTO `ticket_status` (`ticket_status_id`, `ticket_status_description`) VALUES
(1, 'Sold'),
(2, 'Available'),
(3, 'Temporarily Reserved');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_type`
--

CREATE TABLE `ticket_type` (
  `ticket_type_id` int NOT NULL,
  `ticket_type_name` varchar(255) NOT NULL,
  `ticket_type_description` text NOT NULL,
  `ticket_macro_type_id` int NOT NULL,
  `event_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ticket_type`
--

INSERT INTO `ticket_type` (`ticket_type_id`, `ticket_type_name`, `ticket_type_description`, `ticket_macro_type_id`, `event_id`) VALUES
(4, 'VIP - Bar Service', '-', 2, 26),
(5, 'Full Price Ticket', '-', 1, 26),
(6, 'Child (16 & Under)', '-', 1, 26),
(7, 'OAP', '-', 1, 26),
(8, 'Student', '-', 1, 26),
(9, 'RFU Member', '-', 1, 26);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int NOT NULL,
  `transaction_amount` double(10,2) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type_id` int NOT NULL,
  `credit_card_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `customer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `transaction_amount`, `transaction_date`, `transaction_type_id`, `credit_card_id`, `booking_id`, `customer_id`) VALUES
(10, 23.67, '2024-10-29', 2, 28, 35, 44),
(11, 23.67, '2024-12-01', 2, 28, 35, 44),
(12, 23.67, '2025-01-01', 2, 28, 35, 44),
(13, 23.67, '2024-10-29', 3, 28, 36, 44),
(14, 23.67, '2024-12-01', 3, 28, 36, 44),
(15, 23.67, '2025-01-01', 3, 28, 36, 44),
(19, 40.00, '2024-10-29', 3, 32, 38, 49),
(20, 40.00, '2024-12-01', 3, 32, 38, 49),
(21, 40.00, '2025-01-01', 3, 32, 38, 49),
(25, 26.33, '2024-10-29', 3, 29, 40, 46),
(26, 26.33, '2024-12-01', 3, 29, 40, 46),
(27, 26.33, '2025-01-01', 3, 29, 40, 46);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_type`
--

CREATE TABLE `transaction_type` (
  `transaction_type_id` int NOT NULL,
  `transaction_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaction_type`
--

INSERT INTO `transaction_type` (`transaction_type_id`, `transaction_type_name`) VALUES
(1, 'Debit (Full)'),
(2, 'Debit (Klarna x 3 payments)'),
(3, 'Refund / Cancelled'),
(4, 'Debit (Full - Paypal)');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `venue_id` int NOT NULL,
  `venue_name` varchar(255) NOT NULL,
  `venue_logo_url` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `venue_age_restriction` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`venue_id`, `venue_name`, `venue_logo_url`, `venue_age_restriction`) VALUES
(4, 'SSE Arena', '/ssearenalogo', 0),
(5, 'Kingspan Stadium', '/kingspanstadiumlogo', 0),
(6, 'The Limelight', '/limelightlogo', 18),
(7, 'Empire Music Hall', '/empiremusichalllogo', 18),
(8, 'Ulster Sports Club', '/ulstersportsclublogo', 18),
(9, 'Balmoral Hotel', '/balmoralhotellogo', 0),
(10, 'The Telegraph Building', '/thetelegraphbuildinglogo', 18),
(11, 'The Devenish Complex', '/thedevenishcomplex', 18),
(12, 'The RDS Arena', '/rdsarenalogo', 0),
(13, 'Croke Park', '/image', 0),
(14, 'The Sports Ground', '/image', 0),
(15, 'Wembley Stadium', '/image', 0);

-- --------------------------------------------------------

--
-- Table structure for table `venue_address`
--

CREATE TABLE `venue_address` (
  `venue_address_id` int NOT NULL,
  `venue_address_line_1` varchar(255) NOT NULL,
  `venue_address_line_2` varchar(255) NOT NULL,
  `venue_postcode` varchar(255) NOT NULL,
  `venue_latitude` varchar(255) NOT NULL,
  `venue_longitude` varchar(255) NOT NULL,
  `venue_id` int NOT NULL,
  `city_id` int NOT NULL,
  `venue_presentation_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `venue_address`
--

INSERT INTO `venue_address` (`venue_address_id`, `venue_address_line_1`, `venue_address_line_2`, `venue_postcode`, `venue_latitude`, `venue_longitude`, `venue_id`, `city_id`, `venue_presentation_id`) VALUES
(1, 'The SSE Arena', '2 Queens Quay', 'BT3 9QQ', '-', '-', 4, 1, 8),
(2, 'The Kingspan Stadium', '134 Mount Merrion Ave', 'BT6 0FT', '-', '-', 5, 1, 8),
(3, 'The RDS Arena', 'Merrion Rd, Ballsbridge', 'Dublin 4', '-', '-', 12, 2, 7),
(4, '-', '-', '-', '-', '-', 6, 1, 8),
(5, '-', '-', '-', '-', '-', 7, 1, 8),
(6, '-', '-', '-', '-', '-', 8, 1, 8),
(7, '-', '-', '-', '-', '-', 9, 1, 8),
(8, '-', '-', '-', '-', '-', 10, 1, 8),
(9, '-', '-', '-', '-', '-', 11, 1, 8),
(10, '-', '-', '-', '-', '-', 12, 2, 7),
(11, '-', '-', '-', '-', '-', 13, 2, 7),
(12, '-', '-', '-', '-', '-', 14, 5, 7),
(13, '-', '-', '-', '-', '-', 15, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `venue_image`
--

CREATE TABLE `venue_image` (
  `venue_image_id` int NOT NULL,
  `venue_id` int NOT NULL,
  `image_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `FK_customer_customer_id_4` (`customer_id`),
  ADD KEY `FK_country_country_id` (`country_id`);

--
-- Indexes for table `additional_extra`
--
ALTER TABLE `additional_extra`
  ADD PRIMARY KEY (`additional_extra_id`),
  ADD KEY `FK_currency_currency_id_5` (`currency_id`),
  ADD KEY `FK_event_event_id_4` (`event_id`);

--
-- Indexes for table `billing_address`
--
ALTER TABLE `billing_address`
  ADD PRIMARY KEY (`billing_address_id`),
  ADD KEY `FK_city_city_id_3` (`city_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `FK_customer_customer_id` (`customer_id`),
  ADD KEY `FK_booking_status_booking_status_id` (`booking_status_id`),
  ADD KEY `FK_delivery_method_delivery_method_id` (`delivery_method_id`);

--
-- Indexes for table `booking_additonal_extra`
--
ALTER TABLE `booking_additonal_extra`
  ADD PRIMARY KEY (`booking_additional_extra_id`),
  ADD KEY `FK_booking_booking_id_3` (`booking_id`),
  ADD KEY `FK_addtional_extra_additional_extra_id` (`additional_extra_id`);

--
-- Indexes for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  ADD PRIMARY KEY (`booking_line_item_id`),
  ADD KEY `FK_currency_currency_id_4` (`currency_paid_id`),
  ADD KEY `FK_booking_booking_id` (`booking_id`);

--
-- Indexes for table `booking_multiday_ticket_price`
--
ALTER TABLE `booking_multiday_ticket_price`
  ADD PRIMARY KEY (`booking_multiday_ticket_price_id`),
  ADD KEY `FK_booking_booking_id_5` (`booking_id`),
  ADD KEY `FK_multiday_ticket_price_multiday_ticket_price_id` (`multiday_ticket_price_id`);

--
-- Indexes for table `booking_status`
--
ALTER TABLE `booking_status`
  ADD PRIMARY KEY (`booking_status_id`);

--
-- Indexes for table `booking_ticket_price`
--
ALTER TABLE `booking_ticket_price`
  ADD PRIMARY KEY (`booking_ticket_price_id`),
  ADD KEY `FK_booking_booking_id` (`booking_id`),
  ADD KEY `FK_ticket_price_ticket_price_id` (`ticket_price_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `FK_macro_category_macro_category_id` (`macro_category_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `city_region`
--
ALTER TABLE `city_region`
  ADD PRIMARY KEY (`city_region_id`),
  ADD KEY `FK_city_city_id_2` (`city_id`),
  ADD KEY `FK_region_region_id_2` (`region_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `FK_currency_currency_id_6` (`currency_id`);

--
-- Indexes for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`credit_card_id`),
  ADD KEY `FK_customer_customer_id_3` (`customer_id`),
  ADD KEY `FK_credit_card_type_credit_card_type_id` (`credit_card_type_id`),
  ADD KEY `FK_billing_address_billing_address_id` (`billing_address_id`);

--
-- Indexes for table `credit_card_type`
--
ALTER TABLE `credit_card_type`
  ADD PRIMARY KEY (`credit_card_type_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `currency_fx`
--
ALTER TABLE `currency_fx`
  ADD PRIMARY KEY (`currency_fx_id`),
  ADD KEY `FK_currency_currency_id` (`currency_customer_payment_id`),
  ADD KEY `FK_currency_currency_id_2` (`currency_vendor_preferred_currency_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `FK_country_country_id_2` (`customer_home_country_id`);

--
-- Indexes for table `customer_category`
--
ALTER TABLE `customer_category`
  ADD PRIMARY KEY (`customer_category_id`),
  ADD KEY `FK_customer_customer_id_5` (`customer_id`),
  ADD KEY `FK_category_category_id_2` (`category_id`);

--
-- Indexes for table `customer_performer`
--
ALTER TABLE `customer_performer`
  ADD PRIMARY KEY (`customer_performer_id`),
  ADD KEY `FK_customer_customer_id_6` (`customer_id`),
  ADD KEY `FK_performer_performer_id_4` (`performer_id`);

--
-- Indexes for table `customer_venue`
--
ALTER TABLE `customer_venue`
  ADD PRIMARY KEY (`customer_venue_id`),
  ADD KEY `FK_customer_customer_id_7` (`customer_id`),
  ADD KEY `FK_venue_venue_id_3` (`venue_id`);

--
-- Indexes for table `delivery_method`
--
ALTER TABLE `delivery_method`
  ADD PRIMARY KEY (`delivery_method_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `FK_facility_layout_facility_layout_id_2` (`facility_layout_id`),
  ADD KEY `FK_organiser_organiser_id` (`organiser_id`),
  ADD KEY `FK_event_status_event_status_id` (`event_status_id`),
  ADD KEY `FK_event_availability_event_availability_id` (`event_availability_id`);

--
-- Indexes for table `event_availability`
--
ALTER TABLE `event_availability`
  ADD PRIMARY KEY (`event_availability_id`);

--
-- Indexes for table `event_image`
--
ALTER TABLE `event_image`
  ADD PRIMARY KEY (`event_image_id`),
  ADD KEY `FK_event_event_id_3` (`event_id`),
  ADD KEY `FK_image_image_id_2` (`image_id`);

--
-- Indexes for table `event_status`
--
ALTER TABLE `event_status`
  ADD PRIMARY KEY (`event_status_id`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`facility_id`),
  ADD KEY `FK_venue_venue_id_3` (`venue_id`) USING BTREE;

--
-- Indexes for table `facility_layout`
--
ALTER TABLE `facility_layout`
  ADD PRIMARY KEY (`facility_layout_id`),
  ADD KEY `FK_facility_facility_id` (`facility_id`);

--
-- Indexes for table `facility_layout_section`
--
ALTER TABLE `facility_layout_section`
  ADD PRIMARY KEY (`facility_layout_section_id`),
  ADD KEY `FK_facility_layout_facility_layout_id` (`facility_layout_id`),
  ADD KEY `FK_facility_section_facility_section_id` (`facility_section_id`);

--
-- Indexes for table `facility_section`
--
ALTER TABLE `facility_section`
  ADD PRIMARY KEY (`facility_section_id`),
  ADD KEY `FK_facility_section_type_facility_section_type_id` (`facility_section_type_id`);

--
-- Indexes for table `facility_section_type`
--
ALTER TABLE `facility_section_type`
  ADD PRIMARY KEY (`facility_section_type_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `image_image_type`
--
ALTER TABLE `image_image_type`
  ADD PRIMARY KEY (`image_image_type_id`),
  ADD KEY `FK_image_image_id_2` (`image_id`),
  ADD KEY `FK_image_type_image_type_id` (`image_type_id`);

--
-- Indexes for table `image_type`
--
ALTER TABLE `image_type`
  ADD PRIMARY KEY (`image_type_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `language_country`
--
ALTER TABLE `language_country`
  ADD PRIMARY KEY (`language_country_id`),
  ADD KEY `FK_country_country_id_3` (`country_id`),
  ADD KEY `FK_language_language_id` (`language_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `FK_facility_section_facility_section_id_2` (`facility_section_id`),
  ADD KEY `FK_location_type_location_type_id` (`location_type_id`);

--
-- Indexes for table `location_type`
--
ALTER TABLE `location_type`
  ADD PRIMARY KEY (`location_type_id`);

--
-- Indexes for table `macro_category`
--
ALTER TABLE `macro_category`
  ADD PRIMARY KEY (`macro_category_id`);

--
-- Indexes for table `multiday`
--
ALTER TABLE `multiday`
  ADD PRIMARY KEY (`multiday_id`);

--
-- Indexes for table `multiday_event`
--
ALTER TABLE `multiday_event`
  ADD PRIMARY KEY (`multiday_event_id`),
  ADD KEY `FK_multiday_multiday_id` (`multiday_id`),
  ADD KEY `FK_event_event_id_6` (`event_id`);

--
-- Indexes for table `multiday_ticket_price`
--
ALTER TABLE `multiday_ticket_price`
  ADD PRIMARY KEY (`multiday_ticket_price_id`),
  ADD KEY `FK_multiday_multiday_id_2` (`multiday_id`),
  ADD KEY `FK_location_location_id_2` (`location_id`),
  ADD KEY `FK_ticket_type_ticket_type_id_3` (`ticket_type_id`);

--
-- Indexes for table `organiser`
--
ALTER TABLE `organiser`
  ADD PRIMARY KEY (`organiser_id`);

--
-- Indexes for table `password`
--
ALTER TABLE `password`
  ADD PRIMARY KEY (`password_id`),
  ADD KEY `FK_customer_customer_id_2` (`customer_id`);

--
-- Indexes for table `performer`
--
ALTER TABLE `performer`
  ADD PRIMARY KEY (`performer_id`);

--
-- Indexes for table `performer_category`
--
ALTER TABLE `performer_category`
  ADD PRIMARY KEY (`performer_category_id`),
  ADD KEY `FK_performer_performer_id` (`performer_id`),
  ADD KEY `FK_category_category_id` (`category_id`);

--
-- Indexes for table `performer_event`
--
ALTER TABLE `performer_event`
  ADD PRIMARY KEY (`performer_event_id`),
  ADD KEY `FK_performer_performer_id_2` (`performer_id`),
  ADD KEY `FK_event_event_id_5` (`event_id`);

--
-- Indexes for table `performer_image`
--
ALTER TABLE `performer_image`
  ADD PRIMARY KEY (`performer_image_id`),
  ADD KEY `FK_performer_performer_id_3` (`performer_id`),
  ADD KEY `FK_image_image_id_3` (`image_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`),
  ADD KEY `FK_country_country_id_4` (`country_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `FK_location_location_id` (`location_id`),
  ADD KEY `FK_event_event_id` (`event_id`),
  ADD KEY `FK_ticket_status_ticket_status_id` (`ticket_status_id`);

--
-- Indexes for table `ticket_macro_type`
--
ALTER TABLE `ticket_macro_type`
  ADD PRIMARY KEY (`ticket_macro_type_id`);

--
-- Indexes for table `ticket_price`
--
ALTER TABLE `ticket_price`
  ADD PRIMARY KEY (`ticket_price_id`),
  ADD KEY `FK_ticket_type_ticket_type_id` (`ticket_type_id`),
  ADD KEY `FK_ticket_ticket_id` (`ticket_id`),
  ADD KEY `FK_currency_currency_id_3` (`currency_id`);

--
-- Indexes for table `ticket_status`
--
ALTER TABLE `ticket_status`
  ADD PRIMARY KEY (`ticket_status_id`);

--
-- Indexes for table `ticket_type`
--
ALTER TABLE `ticket_type`
  ADD PRIMARY KEY (`ticket_type_id`),
  ADD KEY `FK_ticket_macro_type_ticket_macro_type_id` (`ticket_macro_type_id`),
  ADD KEY `FK_event_event_id_2` (`event_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `FK_transaction_type_transaction_type_id` (`transaction_type_id`),
  ADD KEY `FK_credit_card_credit_card_id` (`credit_card_id`),
  ADD KEY `FK_customer_customer_id_5` (`customer_id`),
  ADD KEY `FK_booking_booking_id_4` (`booking_id`);

--
-- Indexes for table `transaction_type`
--
ALTER TABLE `transaction_type`
  ADD PRIMARY KEY (`transaction_type_id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`venue_id`);

--
-- Indexes for table `venue_address`
--
ALTER TABLE `venue_address`
  ADD PRIMARY KEY (`venue_address_id`),
  ADD KEY `FK_venue_venue_id_2` (`venue_id`) USING BTREE,
  ADD KEY `FK_city_city_id` (`city_id`),
  ADD KEY `FK_region_region_id` (`venue_presentation_id`);

--
-- Indexes for table `venue_image`
--
ALTER TABLE `venue_image`
  ADD PRIMARY KEY (`venue_image_id`),
  ADD KEY `FK_venue_venue_id` (`venue_id`),
  ADD KEY `FK_image_image_id` (`image_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `additional_extra`
--
ALTER TABLE `additional_extra`
  MODIFY `additional_extra_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `billing_address`
--
ALTER TABLE `billing_address`
  MODIFY `billing_address_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `booking_additonal_extra`
--
ALTER TABLE `booking_additonal_extra`
  MODIFY `booking_additional_extra_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  MODIFY `booking_line_item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `booking_multiday_ticket_price`
--
ALTER TABLE `booking_multiday_ticket_price`
  MODIFY `booking_multiday_ticket_price_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `booking_status`
--
ALTER TABLE `booking_status`
  MODIFY `booking_status_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booking_ticket_price`
--
ALTER TABLE `booking_ticket_price`
  MODIFY `booking_ticket_price_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `city_region`
--
ALTER TABLE `city_region`
  MODIFY `city_region_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `credit_card`
--
ALTER TABLE `credit_card`
  MODIFY `credit_card_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `credit_card_type`
--
ALTER TABLE `credit_card_type`
  MODIFY `credit_card_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currency_fx`
--
ALTER TABLE `currency_fx`
  MODIFY `currency_fx_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `customer_category`
--
ALTER TABLE `customer_category`
  MODIFY `customer_category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `customer_performer`
--
ALTER TABLE `customer_performer`
  MODIFY `customer_performer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `customer_venue`
--
ALTER TABLE `customer_venue`
  MODIFY `customer_venue_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `delivery_method`
--
ALTER TABLE `delivery_method`
  MODIFY `delivery_method_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `event_availability`
--
ALTER TABLE `event_availability`
  MODIFY `event_availability_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event_image`
--
ALTER TABLE `event_image`
  MODIFY `event_image_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_status`
--
ALTER TABLE `event_status`
  MODIFY `event_status_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `facility_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `facility_layout`
--
ALTER TABLE `facility_layout`
  MODIFY `facility_layout_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `facility_layout_section`
--
ALTER TABLE `facility_layout_section`
  MODIFY `facility_layout_section_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `facility_section`
--
ALTER TABLE `facility_section`
  MODIFY `facility_section_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `facility_section_type`
--
ALTER TABLE `facility_section_type`
  MODIFY `facility_section_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_image_type`
--
ALTER TABLE `image_image_type`
  MODIFY `image_image_type_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_type`
--
ALTER TABLE `image_type`
  MODIFY `image_type_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `language_country`
--
ALTER TABLE `language_country`
  MODIFY `language_country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `location_type`
--
ALTER TABLE `location_type`
  MODIFY `location_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `macro_category`
--
ALTER TABLE `macro_category`
  MODIFY `macro_category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `multiday`
--
ALTER TABLE `multiday`
  MODIFY `multiday_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `multiday_event`
--
ALTER TABLE `multiday_event`
  MODIFY `multiday_event_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `multiday_ticket_price`
--
ALTER TABLE `multiday_ticket_price`
  MODIFY `multiday_ticket_price_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `organiser`
--
ALTER TABLE `organiser`
  MODIFY `organiser_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `password`
--
ALTER TABLE `password`
  MODIFY `password_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `performer`
--
ALTER TABLE `performer`
  MODIFY `performer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `performer_category`
--
ALTER TABLE `performer_category`
  MODIFY `performer_category_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performer_event`
--
ALTER TABLE `performer_event`
  MODIFY `performer_event_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `performer_image`
--
ALTER TABLE `performer_image`
  MODIFY `performer_image_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `ticket_macro_type`
--
ALTER TABLE `ticket_macro_type`
  MODIFY `ticket_macro_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket_price`
--
ALTER TABLE `ticket_price`
  MODIFY `ticket_price_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `ticket_status`
--
ALTER TABLE `ticket_status`
  MODIFY `ticket_status_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticket_type`
--
ALTER TABLE `ticket_type`
  MODIFY `ticket_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `transaction_type`
--
ALTER TABLE `transaction_type`
  MODIFY `transaction_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `venue_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `venue_address`
--
ALTER TABLE `venue_address`
  MODIFY `venue_address_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `venue_image`
--
ALTER TABLE `venue_image`
  MODIFY `venue_image_id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `FK_country_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_customer_customer_id_4` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `additional_extra`
--
ALTER TABLE `additional_extra`
  ADD CONSTRAINT `FK_currency_currency_id_5` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_event_event_id_4` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `billing_address`
--
ALTER TABLE `billing_address`
  ADD CONSTRAINT `FK_city_city_id_3` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_booking_status_booking_status_id` FOREIGN KEY (`booking_status_id`) REFERENCES `booking_status` (`booking_status_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_customer_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_delivery_method_delivery_method_id` FOREIGN KEY (`delivery_method_id`) REFERENCES `delivery_method` (`delivery_method_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `booking_additonal_extra`
--
ALTER TABLE `booking_additonal_extra`
  ADD CONSTRAINT `FK_addtional_extra_additional_extra_id` FOREIGN KEY (`additional_extra_id`) REFERENCES `additional_extra` (`additional_extra_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_booking_booking_id_3` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  ADD CONSTRAINT `FK_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_currency_currency_id_4` FOREIGN KEY (`currency_paid_id`) REFERENCES `currency` (`currency_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `booking_multiday_ticket_price`
--
ALTER TABLE `booking_multiday_ticket_price`
  ADD CONSTRAINT `FK_booking_booking_id_5` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_multiday_ticket_price_multiday_ticket_price_id` FOREIGN KEY (`multiday_ticket_price_id`) REFERENCES `multiday_ticket_price` (`multiday_ticket_price_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `booking_ticket_price`
--
ALTER TABLE `booking_ticket_price`
  ADD CONSTRAINT `FK_booking_booking_id_2` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_ticket_price_ticket_price_id` FOREIGN KEY (`ticket_price_id`) REFERENCES `ticket_price` (`ticket_price_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `FK_macro_category_macro_category_id` FOREIGN KEY (`macro_category_id`) REFERENCES `macro_category` (`macro_category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `city_region`
--
ALTER TABLE `city_region`
  ADD CONSTRAINT `FK_city_city_id_2` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_region_region_id_2` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `FK_currency_currency_id_6` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD CONSTRAINT `FK_billing_address_billing_address_id` FOREIGN KEY (`billing_address_id`) REFERENCES `billing_address` (`billing_address_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_credit_card_type_credit_card_type_id` FOREIGN KEY (`credit_card_type_id`) REFERENCES `credit_card_type` (`credit_card_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_customer_customer_id_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `currency_fx`
--
ALTER TABLE `currency_fx`
  ADD CONSTRAINT `FK_currency_currency_id` FOREIGN KEY (`currency_customer_payment_id`) REFERENCES `currency` (`currency_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_currency_currency_id_2` FOREIGN KEY (`currency_vendor_preferred_currency_id`) REFERENCES `currency` (`currency_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_country_country_id_2` FOREIGN KEY (`customer_home_country_id`) REFERENCES `country` (`country_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `customer_category`
--
ALTER TABLE `customer_category`
  ADD CONSTRAINT `FK_category_category_id_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_customer_customer_id_5` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `customer_performer`
--
ALTER TABLE `customer_performer`
  ADD CONSTRAINT `FK_customer_customer_id_6` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_performer_performer_id_4` FOREIGN KEY (`performer_id`) REFERENCES `performer` (`performer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `customer_venue`
--
ALTER TABLE `customer_venue`
  ADD CONSTRAINT `FK_customer_customer_id_7` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_venue_venue_id_3` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`venue_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_event_availability_event_availability_id` FOREIGN KEY (`event_availability_id`) REFERENCES `event_availability` (`event_availability_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_event_status_event_status_id` FOREIGN KEY (`event_status_id`) REFERENCES `event_status` (`event_status_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_facility_layout_facility_layout_id_2` FOREIGN KEY (`facility_layout_id`) REFERENCES `facility_layout` (`facility_layout_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_organiser_organiser_id` FOREIGN KEY (`organiser_id`) REFERENCES `organiser` (`organiser_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `event_image`
--
ALTER TABLE `event_image`
  ADD CONSTRAINT `FK_event_event_id_3` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_image_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `facility`
--
ALTER TABLE `facility`
  ADD CONSTRAINT `FK_venue_venue_id_three` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`venue_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `facility_layout`
--
ALTER TABLE `facility_layout`
  ADD CONSTRAINT `FK_facility_facility_id` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`facility_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `facility_layout_section`
--
ALTER TABLE `facility_layout_section`
  ADD CONSTRAINT `FK_facility_layout_facility_layout_id` FOREIGN KEY (`facility_layout_id`) REFERENCES `facility_layout` (`facility_layout_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_facility_section_facility_section_id` FOREIGN KEY (`facility_section_id`) REFERENCES `facility_section` (`facility_section_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `facility_section`
--
ALTER TABLE `facility_section`
  ADD CONSTRAINT `FK_facility_section_type_facility_section_type_id` FOREIGN KEY (`facility_section_type_id`) REFERENCES `facility_section_type` (`facility_section_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `image_image_type`
--
ALTER TABLE `image_image_type`
  ADD CONSTRAINT `FK_image_image_id_2` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_image_type_image_type_id` FOREIGN KEY (`image_type_id`) REFERENCES `image_type` (`image_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `language_country`
--
ALTER TABLE `language_country`
  ADD CONSTRAINT `FK_country_country_id_3` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_language_language_id` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `FK_facility_section_facility_section_id_2` FOREIGN KEY (`facility_section_id`) REFERENCES `facility_section` (`facility_section_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_location_type_location_type_id` FOREIGN KEY (`location_type_id`) REFERENCES `location_type` (`location_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `multiday_event`
--
ALTER TABLE `multiday_event`
  ADD CONSTRAINT `FK_event_event_id_6` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_multiday_multiday_id` FOREIGN KEY (`multiday_id`) REFERENCES `multiday` (`multiday_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `multiday_ticket_price`
--
ALTER TABLE `multiday_ticket_price`
  ADD CONSTRAINT `FK_location_location_id_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_multiday_multiday_id_2` FOREIGN KEY (`multiday_id`) REFERENCES `multiday` (`multiday_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_ticket_type_ticket_type_id_3` FOREIGN KEY (`ticket_type_id`) REFERENCES `ticket_type` (`ticket_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `password`
--
ALTER TABLE `password`
  ADD CONSTRAINT `FK_customer_customer_id_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `performer_category`
--
ALTER TABLE `performer_category`
  ADD CONSTRAINT `FK_category_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_performer_performer_id` FOREIGN KEY (`performer_id`) REFERENCES `performer` (`performer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `performer_event`
--
ALTER TABLE `performer_event`
  ADD CONSTRAINT `FK_event_event_id_5` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_performer_performer_id_2` FOREIGN KEY (`performer_id`) REFERENCES `performer` (`performer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `performer_image`
--
ALTER TABLE `performer_image`
  ADD CONSTRAINT `FK_image_image_id_3` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_performer_performer_id_3` FOREIGN KEY (`performer_id`) REFERENCES `performer` (`performer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `FK_country_country_id_4` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `FK_event_event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_location_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_ticket_status_ticket_status_id` FOREIGN KEY (`ticket_status_id`) REFERENCES `ticket_status` (`ticket_status_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `ticket_price`
--
ALTER TABLE `ticket_price`
  ADD CONSTRAINT `FK_currency_currency_id_3` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_ticket_ticket_id` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_ticket_type_ticket_type_id` FOREIGN KEY (`ticket_type_id`) REFERENCES `ticket_type` (`ticket_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `ticket_type`
--
ALTER TABLE `ticket_type`
  ADD CONSTRAINT `FK_event_event_id_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_ticket_macro_type_ticket_macro_type_id` FOREIGN KEY (`ticket_macro_type_id`) REFERENCES `ticket_macro_type` (`ticket_macro_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `FK_booking_booking_id_4` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_credit_card_credit_card_id` FOREIGN KEY (`credit_card_id`) REFERENCES `credit_card` (`credit_card_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_customer_customer_id_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_transaction_type_transaction_type_id` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_type` (`transaction_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `venue_address`
--
ALTER TABLE `venue_address`
  ADD CONSTRAINT `FK_city_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_region_region_id` FOREIGN KEY (`venue_presentation_id`) REFERENCES `region` (`region_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_venue_venue_id_two` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`venue_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `venue_image`
--
ALTER TABLE `venue_image`
  ADD CONSTRAINT `FK_venue_image_venue_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_venue_venue_id` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`venue_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
