-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 08:25 AM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cust_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `cust_id` int(11) DEFAULT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `mailid` varchar(50) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `mailid` varchar(50) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaccount`
--

CREATE TABLE `myaccount` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_mail` varchar(50) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `order_name` varchar(50) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_name` varchar(1000) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_cost` int(11) DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_name`, `product_id`, `product_cost`, `mfg_date`, `exp_date`) VALUES
('Pedigree Vegetarian Dry Food For Adult Dog & Puppy', 101, 306, '2022-11-22', '2023-05-05'),
('Countryside Original Grain Free Adult Dog Food', 102, 256, '2022-09-03', '2023-03-23'),
('HUFT YIMT Real Chicken Dog Biscuits ', 103, 220, '2022-07-22', '2023-07-10'),
('Royal Canin Mini Breed Dry Puppy Food', 104, 635, '2022-08-18', '2023-02-11'),
('Pedigree Meat Jerky Adult Dog Treat - Roasted Lamb ', 105, 1428, '2022-10-09', '2023-03-05'),
('Whiskas Chicken in Gravy Junior Wet Kitten food', 106, 534, '2022-12-14', '2023-06-29'),
('Royal Canin Persian Adult Dry Cat Food', 107, 678, '2022-07-18', '2023-05-06'),
('Kennel Kitchen Fish Chunks In Gravy Wet Cat Food', 108, 764, '2022-09-24', '2023-04-30'),
('Kitty Yums Kitten(1-12 Months) Dry Cat Food - Ocean Fish', 109, 899, '2022-09-25', '2023-05-13'),
('IAMS Proactive Health, Mother & Kitten Dry Premium Cat Food with Chicken', 110, 453, '2022-08-18', '2023-07-31'),
('Platina-Dairy Gold Bharat Feeds & Extractions Ltd Cow Feed/Buffalo Feed/Cattle Feed Pellet For All Life Stages, Milk Flavor', 111, 234, '2022-06-23', '2023-01-12'),
('Petzee Guinea Pig Food, All Life Stages, Big Pellets', 112, 567, '2022-09-15', '2023-04-11'),
('ULTRACAL Ultimate Calcium Tonic for Cow,Buffalo, Pig, Poultry and Horses', 113, 987, '2022-11-27', '2023-05-25'),
('Aalmix Chelated Mineral Mixture for Cow', 114, 590, '2022-08-26', '2023-04-24'),
('Garudan MACH Wheat Bran for Poultry_Cattle Feed Ideal for Cow', 115, 337, '2022-08-12', '2023-08-19'),
('top paw blue dog bed', 116, 786, NULL, NULL),
('top paw orthopedic dog bed', 117, 341, NULL, NULL),
('joyhound blue tennis ball dog toy', 118, 989, NULL, NULL),
('kong waste bag dog harness', 119, 543, NULL, NULL),
('top paw signature dog collar', 120, 869, NULL, NULL),
('merry and bright holiday gold bow dog collar', 121, 635, NULL, NULL),
('yip smart tag personalized id tag and finder', 122, 456, NULL, NULL),
('retractable tape dog leash', 123, 678, NULL, NULL),
('furminator premium dog shampoo', 124, 462, NULL, NULL),
('allergenic free grooming wipes for dogd', 125, 897, NULL, NULL),
('CHI for dogs Deodorizing spray', 126, 906, NULL, NULL),
('chlorhexidine antiseptic antifungal cleansing pads', 127, 478, NULL, NULL),
('color groom pet grooming clipper kit', 128, 349, NULL, NULL),
('andis ceramic detachable pet clipper blade', 129, 469, NULL, NULL),
('top paw pet towel', 130, 179, NULL, NULL),
('top paw pin and bristle comb pet brush', 131, 189, NULL, NULL),
('oatmeal and aloe pet conditioner-vanilla and almond', 132, 245, NULL, NULL),
('dog puffer jacket', 133, 654, NULL, NULL),
('top paw pink dog hoodie', 134, 765, NULL, NULL),
('jearsy and team sports', 135, 500, NULL, NULL),
('cocoa ugly dog sweater', 136, 344, NULL, NULL),
('top paw elevated puffer dog coat', 137, 299, NULL, NULL),
('top paw green plaid tie dog collar slide', 138, 127, NULL, NULL),
('top paw stainless steel dog bowl', 139, 200, NULL, NULL),
('top paw pearl plastic dinner bowl', 140, 140, NULL, NULL),
('cat wacky bouncers led balls toy for cats', 141, 456, NULL, NULL),
('lady bug cat toy', 142, 346, NULL, NULL),
('wisker bolster cat bed', 143, 234, NULL, NULL),
('wisker chevron hexagon cuddler cat bed', 144, 544, NULL, NULL),
('vets cat bath foam', 145, 765, NULL, NULL),
('wisker cat flea comb', 146, 342, NULL, NULL),
('petarmor cat shampoo', 147, 311, NULL, NULL),
('catit flower cat drinking fountain', 148, 635, NULL, NULL),
('wisker pearl plastic cat bowl', 149, 237, NULL, NULL),
('wisker stainless steel bowl', 150, 543, NULL, NULL),
('wisker cat collar', 151, 231, NULL, NULL),
('merrt cat beanie', 152, 324, NULL, NULL),
('wisker city collar bells', 153, 143, NULL, NULL),
('weaver leather cattle rope halter', 154, 565, NULL, NULL),
('weaver leather fluffer comb with handle', 155, 454, NULL, NULL),
('weaver leather coconut shampoo', 156, 342, NULL, NULL),
('weaver leather massage brush', 157, 413, NULL, NULL),
('buttermilk calf coat waterproof', 158, 343, NULL, NULL),
('stainless steel cattle nose ring', 159, 443, NULL, NULL),
('blank cattle ear tags  for cow', 160, 565, NULL, NULL),
('qiqiro livestock shedding comb cattle', 161, 344, NULL, NULL),
('jnancun cat winter hoodie', 162, 522, NULL, NULL),
('cat,dog bowtie pet costume', 163, 433, NULL, NULL),
('pet cat beach tshirts', 164, 347, NULL, NULL),
('bonaweite cat sweaters', 165, 386, NULL, NULL),
('cute cat warm hat', 166, 535, NULL, NULL),
('pawz cat sleeping bag', 167, 466, NULL, NULL),
('Amul Milk 1L', 168, 40, '2023-01-19', '2023-01-13'),
('Nandini GoodLife UHT Treated Toned Milk 1L', 169, 80, '2023-01-14', '2023-01-19'),
('Amul Slim \'n\' Trim Skimmed Milk 1L', 170, 60, '2023-01-23', '2023-01-26'),
('Dabur Hommade Coconut Milk 1L', 171, 55, '2023-01-15', '2023-01-19'),
('Amul Taaza Homogenised Toned Milk 1L', 172, 52, '2023-01-17', '2023-01-21'),
('Amul Lactose Free Milk1L', 173, 67, '2023-01-12', '2023-01-15'),
('Go Supremo Cow\'s Milk 1L', 174, 59, '2023-01-07', '2023-01-14'),
('Milky Mist Curd/Dahi - No Preservatives Added', 175, 34, '2023-01-07', '2023-01-14'),
('AKSHAYAKALPA Organic Curd,', 176, 45, '2023-01-12', '2023-01-15'),
('AKSHAYAKALPA Organic Probiotic Curd - Good For Digestion, Wholesome', 177, 29, '2023-01-17', '2023-01-21'),
('Mother Dairy Dahi - Made From Toned Milk', 178, 31, '2023-01-15', '2023-01-19'),
('iD Creamy Thick Curd, 400 g Pouch', 179, 42, '2023-01-14', '2023-01-19'),
('Nestle A+ Slim Dahi - Low-Fat Curd', 180, 47, '2023-01-09', '2023-01-13'),
('Amul Masti Buttermilk - Spice', 181, 23, '2023-01-07', '2023-01-09'),
('Go Butter Milk - Ginger & Jeera, Spiced', 182, 43, '2023-01-14', '2023-01-17'),
('whyte farms-Fresh Buttermilk (Chaach)', 183, 27, '2023-01-20', '2023-01-23'),
('Cavin\'S Masala Chaasa Buttermilk', 184, 47, '2023-01-25', '2023-01-28'),
('Amul Masti Buttermilk', 185, 34, '2023-01-17', '2023-01-20'),
('Nandini GoodLife Buttermilk - Spiced', 186, 18, '2023-01-10', '2023-01-14'),
('Paper Boat Pudina Buttermilk', 187, 25, '2023-01-09', '2023-01-13'),
('Milky Mist Paneer - Rich In Protein, Calcium, Excellent Taste, 200 g Pouch', 188, 100, '2023-01-19', '2023-01-21'),
('D Fresho Soft & Creamy Paneer, 200 g', 189, 134, '2023-01-17', '2023-01-20'),
('AKSHAYAKALPA Malai Paneer - Organic, 200 g', 190, 156, '2023-01-10', '2023-01-14'),
('MOOZ Organic Vegetable Tofu - Soy Paneer, 200 g', 191, 147, '2023-01-25', '2023-01-30'),
('Gowardhan Paneer - Cubes, Frozen, 200g', 192, 186, '2023-01-14', '2023-01-23'),
('Fresho Whole Wheat Bread - Safe, Preservative Free, 400 g', 193, 60, '2023-01-10', '2023-01-17'),
('Fresho Brown Bread - Safe, Preservative Free, 200 g', 194, 80, '2023-01-20', '2023-01-27'),
('Fresho Multigrain Bread - Safe, Preservative Free, 200 g', 195, 89, '2023-01-25', '2023-02-01'),
('Britannia Milk Bread', 196, 76, '2023-01-17', '2023-01-24'),
('Britannia Fruit Bread', 197, 45, '2023-01-19', '2023-01-31'),
('Cadbury Caramel Spread', 198, 200, '2022-09-21', '2023-01-30'),
('peanut spreads', 199, 245, '2023-01-17', '2023-04-01'),
('VEEBA Protein Peanut Spread Crunchy - Unsweetened, Transfat Free, Vegan, 340 g', 200, 300, '2023-01-17', '2023-04-11'),
('A2 Organic Ghee', 201, 356, '2023-01-12', '2023-04-27'),
('nandini pure ghee', 202, 456, '2023-12-22', '2023-05-01'),
('grb ghee', 203, 345, '2023-01-23', '2023-04-12'),
('sri krishna ghee', 204, 432, '2023-01-25', '2023-09-08'),
('shahji pure gir cow ghee', 205, 654, '2022-12-29', '2023-05-16'),
('shahji pure desi buffallo ghee(murrah buffalo)', 206, 782, '2023-11-15', '2023-04-27'),
('Standard White Eggs', 207, 210, NULL, NULL),
('Standard Brown Eggs', 208, 235, NULL, NULL),
('Organic Eggs', 209, 167, NULL, NULL),
('Omega-3 Eggs', 210, 189, NULL, NULL),
('Vitamin-Enhanced Eggs', 211, 289, NULL, NULL),
('Rasgulla ', 212, 200, '2023-01-14', '2023-01-24'),
('delicious gulab jamun', 213, 245, '2023-01-18', '2026-01-26'),
('Cham-Chams  Bengali (East Indian) sweet', 214, 265, '2023-01-09', '2023-01-24'),
('Sandesh mishti', 215, 189, '2023-01-19', '2023-01-26'),
('mouth watering milk barfi,550g', 216, 176, '2023-01-26', '2023-02-02'),
('milk peda,500g', 217, 167, '2023-01-27', '2023-02-04'),
('milk bickies', 218, 80, NULL, NULL),
('salt biscuits', 219, 90, NULL, NULL),
('khara biscuits', 220, 60, NULL, NULL),
('cream biscuits', 221, 70, NULL, NULL),
('Lindt Classic Recipe Milk Chocolate Bar', 222, 200, NULL, NULL),
('Dagoba 37% Cacao Milk Chocolate Bar', 223, 123, NULL, NULL),
('365 Everyday Value Organic Milk Chocolate Ba', 224, 231, NULL, NULL),
('heo Pure 45% Organic Milk Chocolate', 225, 125, NULL, NULL),
('Dove Silky Smooth Milk Chocolate Singles Bar', 226, 232, NULL, NULL),
('Kohler Milk Chocolate Bar', 227, 312, NULL, NULL),
('Cavins Vanilla Milkshake - With Zinc, Vitamin A & D Added, Immunity Booster, 200 ml Tetra Pack', 228, 40, '2023-01-12', '2023-01-24'),
('Cavins Badam Milkshake - With Zinc, Vitamin A & D Added, Supports Immunity, 180 ml', 229, 35, '2023-01-16', '2023-01-27');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `name` varchar(50) DEFAULT NULL,
  `mailid` varchar(50) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`mailid`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`mailid`);

--
-- Indexes for table `myaccount`
--
ALTER TABLE `myaccount`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `order_id_idx` (`order_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`mailid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myaccount`
--
ALTER TABLE `myaccount`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `myaccount` (`cust_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `checkout`
--
ALTER TABLE `checkout`
  ADD CONSTRAINT `checkout_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `myaccount` (`cust_id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `myaccount` (`cust_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
