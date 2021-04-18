SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `famzon-cr9` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `famzon-cr9`;

CREATE TABLE `banks` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `banks` (`bank_id`, `bank_name`) VALUES
(1, 'Sawayn and Sons'),
(2, 'Bins-Casper'),
(3, 'Dicki Group'),
(4, 'Streich-Little'),
(5, 'Kreiger Inc'),
(6, 'Dare and Sons'),
(7, 'Johnson-Kessler'),
(8, 'Ritchie Group'),
(9, 'Hamill, Carter and Bosco'),
(10, 'Gleichner, Bauch and Schiller');

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `total_amount` decimal(6,2) DEFAULT NULL,
  `item_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `cart` (`cart_id`, `total_amount`, `item_id`) VALUES
(1, '1477.63', 1),
(2, '1761.14', 2),
(3, '892.86', 3),
(4, '214.01', 4),
(5, '1281.13', 5),
(6, '19.64', 6),
(7, '1110.53', 7),
(8, '1157.80', 8),
(9, '992.97', 9),
(10, '1085.02', 10);

CREATE TABLE `catagory` (
  `cat_id` int(11) NOT NULL,
  `catagory_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `catagory` (`cat_id`, `catagory_name`) VALUES
(1, 'Juice - Prune'),
(2, 'Chicken - Whole Roasting'),
(3, 'Water - Aquafina Vitamin'),
(4, 'Roe - Lump Fish, Red'),
(5, 'Sprouts - Onion'),
(6, 'Raisin - Golden'),
(7, 'Yogurt - Blueberry, 175 Gr'),
(8, 'Cheese - Cheddar, Mild'),
(9, 'Taro Leaves'),
(10, 'Mikes Hard Lemonade');

CREATE TABLE `countries` (
  `country_name` varchar(50) DEFAULT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `country_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `countries` (`country_name`, `country_code`, `country_id`) VALUES
('Spain', 'ES', 1),
('Madagascar', 'MG', 2),
('South Africa', 'DO', 3),
('France', 'FR', 4),
('Philippines', 'PH', 5),
('Portugal', 'PT', 6),
('Iraq', 'ID', 7),
('France', 'FR', 8),
('Madagascar', 'MG', 9),
('Latvia', 'LV', 10),
('Poland', 'PL', 11),
('Myanmar', 'CN', 12),
('Burma', 'CN', 13),
('Oman', 'ID', 14),
('Somalia', 'SO', 15),
('Thailand', 'TH', 16),
('Congo', 'CN', 17),
('Malaysia', 'MY', 18),
('Laos', 'CN', 19),
('Korea', 'CN', 20),
('Philippines', 'PH', 21),
('Russia', 'RU', 22),
('New Zealand', 'NZ', 23),
('Cape Verde', 'CV', 24),
('Poland', 'PL', 25),
('North Korea', 'KP', 26),
('Mongolia', 'MN', 27),
('Portugal', 'ID', 28),
('Sweden', 'SE', 29),
('Norway', 'NO', 30),
('China', 'CN', 31),
('Russia', 'RU', 32),
('Czech Republic', 'CZ', 33),
('United States', 'US', 34),
('Indonesia', 'ID', 35),
('Vietnam', 'CN', 36),
('Venezuela', 'VE', 37),
('Gambia', 'GM', 38),
('Sierra Leone', 'SL', 39),
('Iran', 'IR', 40),
('South Korea', 'KR', 41),
('Dominican Republic', 'DO', 42),
('Finland', 'FI', 43),
('Peru', 'PE', 44),
('Venezuela', 'VE', 45),
('Kuwait', 'ID', 46),
('Ukraine', 'UA', 47),
('Indonesia', 'ID', 48),
('Brazil', 'BR', 49),
('French Polynesia', 'FR', 50);

CREATE TABLE `currier` (
  `currier_id` int(11) NOT NULL,
  `currier_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `currier` (`currier_id`, `currier_email`) VALUES
(1, 'ndocherty0@vk.com'),
(2, 'tbaldi1@fda.gov'),
(3, 'bcatonne2@latimes.com'),
(4, 'cbousquet3@nytimes.com'),
(5, 'tquantrell4@marriott.com'),
(6, 'smckeurtan5@t-online.de'),
(7, 'dmeneely6@jiathis.com'),
(8, 'bculpan7@kickstarter.com'),
(9, 'rplane8@ifeng.com'),
(10, 'sgiamelli9@pinterest.com');

CREATE TABLE `customer` (
  `custom_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `streetname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `card_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `customer` (`custom_id`, `name`, `streetname`, `email`, `card_no`) VALUES
(1, 'Millisent', 'Waubesa', 'mscotford0@nba.com', '4041372884775'),
(2, 'Darin', 'Monterey', 'dgocher1@discovery.com', '4041371431727849'),
(3, 'Agnes', 'Vermont', 'abillows2@alibaba.com', '4041377058792347'),
(4, 'Harlen', 'Shelley', 'hsans3@biblegateway.com', '4041377297398476'),
(5, 'Nada', 'Birchwood', 'nreeders4@wordpress.com', '4041376982757'),
(6, 'Siouxie', 'Summerview', 'scothey5@hexun.com', '4041379035200816'),
(7, 'Ruttger', 'Eastwood', 'rmaus6@ebay.co.uk', '4041372187849'),
(8, 'Linea', 'Pearson', 'lcosgrave7@home.pl', '4041379333511328'),
(9, 'Cad', 'Eagan', 'czellmer8@mac.com', '4041371006354'),
(10, 'Baxy', 'Loeprich', 'bseeviour9@lulu.com', '4017958239086327');

CREATE TABLE `international_cust` (
  `custom_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `international_cust` (`custom_id`, `country_id`) VALUES
(9, 2),
(7, 9),
(1, 13),
(3, 22);

CREATE TABLE `items` (
  `cat_id` int(11) DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `item_price` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `items` (`cat_id`, `item_id`, `item_price`) VALUES
(1, 1, '1172.39'),
(2, 2, '1464.10'),
(3, 3, '1395.65'),
(4, 4, '215.86'),
(5, 5, '1699.62'),
(6, 6, '732.85'),
(7, 7, '1775.03'),
(8, 8, '391.52'),
(9, 9, '546.28'),
(10, 10, '1590.16');

CREATE TABLE `orders` (
  `cart_id` int(11) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `orders` (`cart_id`, `cust_id`, `order_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

CREATE TABLE `shipping` (
  `currier_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `shipping_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `shipping` (`currier_id`, `order_id`, `shipping_id`, `shipping_date`) VALUES
(1, 1, 1, '2021-09-13'),
(2, 2, 2, '2021-04-22'),
(3, 3, 3, '2021-04-24'),
(4, 4, 4, '2021-04-29'),
(5, 5, 5, '2021-05-12'),
(6, 6, 6, '2021-04-30'),
(7, 7, 7, '2021-05-13'),
(8, 8, 8, '2021-06-10'),
(9, 9, 9, '2021-07-13'),
(10, 10, 10, '2021-08-19');


ALTER TABLE `banks`
  ADD PRIMARY KEY (`bank_id`);

ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `fk_item_id` (`item_id`);

ALTER TABLE `catagory`
  ADD PRIMARY KEY (`cat_id`);

ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

ALTER TABLE `currier`
  ADD PRIMARY KEY (`currier_id`);

ALTER TABLE `customer`
  ADD PRIMARY KEY (`custom_id`);

ALTER TABLE `international_cust`
  ADD PRIMARY KEY (`custom_id`),
  ADD KEY `fk_country_id` (`country_id`);

ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk_cat_id` (`cat_id`);

ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_cust_id` (`cust_id`),
  ADD KEY `cart_id` (`cart_id`);

ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`),
  ADD UNIQUE KEY `currier_id` (`currier_id`,`order_id`),
  ADD KEY `order_id` (`order_id`);


ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `catagory`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `countries`
  MODIFY `country_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

ALTER TABLE `customer`
  MODIFY `custom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `cart`
  ADD CONSTRAINT `fk_item_id` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

ALTER TABLE `international_cust`
  ADD CONSTRAINT `fk_country_id` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `international_cust_ibfk_1` FOREIGN KEY (`custom_id`) REFERENCES `customer` (`custom_id`) ON UPDATE CASCADE;

ALTER TABLE `items`
  ADD CONSTRAINT `fk_cat_id` FOREIGN KEY (`cat_id`) REFERENCES `catagory` (`cat_id`) ON UPDATE CASCADE;

ALTER TABLE `orders`
  ADD CONSTRAINT `fk_cust_id` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`custom_id`),
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`) ON UPDATE CASCADE;

ALTER TABLE `shipping`
  ADD CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `shipping_ibfk_2` FOREIGN KEY (`currier_id`) REFERENCES `currier` (`currier_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
