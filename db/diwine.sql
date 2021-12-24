-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 11:53 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diwine`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_cat` bigint(20) NOT NULL,
  `category` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_cat`, `category`) VALUES
(2, 'Fish'),
(1, 'Meat'),
(3, 'Pasta/carbohydrates'),
(4, 'Vegetables');

-- --------------------------------------------------------

--
-- Table structure for table `feelings`
--

CREATE TABLE `feelings` (
  `id_feel` bigint(20) NOT NULL,
  `feeling` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feelings`
--

INSERT INTO `feelings` (`id_feel`, `feeling`) VALUES
(1, 'Angry'),
(2, 'Bad'),
(3, 'Energic'),
(4, 'Good'),
(5, 'Happy'),
(6, 'Hungry'),
(7, 'Okay'),
(8, 'Sad'),
(9, 'Thoughful'),
(10, 'Tired');

-- --------------------------------------------------------

--
-- Table structure for table `mains_wines`
--

CREATE TABLE `mains_wines` (
  `id_wine` bigint(20) NOT NULL,
  `id_main` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mains_wines`
--

INSERT INTO `mains_wines` (`id_wine`, `id_main`) VALUES
(1, 1),
(1, 2),
(1, 8),
(1, 17),
(1, 13),
(1, 36),
(2, 1),
(2, 11),
(2, 36),
(2, 44),
(3, 4),
(3, 1),
(3, 2),
(3, 8),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 17),
(3, 19),
(3, 38),
(3, 44),
(4, 11),
(4, 19),
(4, 1),
(4, 17),
(5, 2),
(5, 12),
(5, 32),
(5, 36),
(5, 34),
(6, 37),
(6, 36),
(7, 44),
(7, 13),
(7, 11),
(7, 36),
(8, 19),
(8, 44),
(8, 36),
(8, 11),
(8, 13),
(8, 1),
(9, 19),
(9, 11),
(9, 1),
(9, 13),
(9, 22),
(10, 36),
(10, 11),
(11, 36),
(11, 44),
(11, 13),
(11, 11),
(11, 33);

-- --------------------------------------------------------

--
-- Table structure for table `main_dishes`
--

CREATE TABLE `main_dishes` (
  `id_main` bigint(20) NOT NULL,
  `main_dish` varchar(63) NOT NULL,
  `fk_cat` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_dishes`
--

INSERT INTO `main_dishes` (`id_main`, `main_dish`, `fk_cat`) VALUES
(1, 'Roasted beef', 1),
(2, 'Roasted chicken', 1),
(3, 'Saffron rice', 3),
(4, 'Light fish', 2),
(5, 'Rice with vegetables', 3),
(6, 'Pasta with ragu', 3),
(7, 'Pasta with pesto', 3),
(8, 'Roasted pork', 1),
(9, 'Potatoes', 3),
(10, 'Salt cake', 3),
(11, 'Grilled beef', 1),
(12, 'Turkey cutlet', 1),
(13, 'Stewed beef', 1),
(14, 'Veal cutlet ', 1),
(15, 'Pork cutlet', 1),
(16, 'Roasted fish', 2),
(17, 'Roasted veal', 1),
(18, 'Sausage', 1),
(19, 'Braised beef', 1),
(20, 'Pizza', 3),
(21, 'Lasagna', 3),
(22, 'Pasta with tomato sauce', 3),
(23, 'Pasta with vegetables', 3),
(24, 'Pasta alla norma', 3),
(25, 'Parmiggiana', 4),
(26, 'Baked fish', 2),
(27, 'Seafood pasta', 3),
(28, 'Rice with tomato sauce', 3),
(29, 'Rice with sausages', 3),
(30, 'Pasta alla carbonara', 3),
(31, 'Pasta all\'amatriciana', 3),
(32, 'Mushrooms', 4),
(33, 'Grilled vegetables', 4),
(34, 'Braised vegetables', 4),
(35, 'Fruit', 4),
(36, 'Hard cheese', 1),
(37, 'Soft cheese', 1),
(38, 'Cold cuts', 1),
(39, 'Legumes', 4),
(40, 'Pickeld vegetables', 4),
(41, 'Salad', 4),
(42, 'Russian salad', 4),
(43, 'Caesar salad', 4),
(44, 'Game', 1);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id_prov` int(11) NOT NULL,
  `province` varchar(31) NOT NULL,
  `fk_reg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id_prov`, `province`, `fk_reg`) VALUES
(1, 'Agrigento', 15),
(2, 'Alessandria', 12),
(3, 'Ancona', 10),
(4, 'Aosta', 19),
(5, 'Arezzo', 16),
(6, 'Ascoli Piceno', 10),
(7, 'Asti', 12),
(8, 'Avellino', 4),
(9, 'Bari', 13),
(10, 'Barletta-Andria-Trani', 13),
(11, 'Belluno', 20),
(12, 'Benevento', 4),
(13, 'Bergamo', 9),
(14, 'Biella', 12),
(15, 'Bologna', 5),
(16, 'Bolzano', 17),
(17, 'Brescia', 9),
(18, 'Brindisi', 13),
(19, 'Cagliari', 14),
(20, 'Caltanissetta', 15),
(21, 'Campobasso', 11),
(22, 'Caserta', 4),
(23, 'Catania', 15),
(24, 'Catanzaro', 3),
(25, 'Chieti', 1),
(26, 'Como', 9),
(27, 'Cosenza', 3),
(28, 'Cremona', 9),
(29, 'Crotone', 3),
(30, 'Cuneo', 12),
(31, 'Enna', 15),
(32, 'Fermo', 10),
(33, 'Ferrara', 5),
(34, 'Firenze', 16),
(35, 'Foggia', 13),
(36, 'Forlì-Cesena', 5),
(37, 'Frosinone', 7),
(38, 'Genova', 8),
(39, 'Gorizia', 6),
(40, 'Grosseto', 16),
(41, 'Imperia', 8),
(42, 'Isernia', 11),
(43, 'L\'Aquila', 1),
(44, 'La Spezia', 8),
(45, 'Latina', 7),
(46, 'Lecce', 13),
(47, 'Lecco', 9),
(48, 'Livorno', 16),
(49, 'Lodi', 9),
(50, 'Lucca', 16),
(51, 'Macerata', 10),
(52, 'Mantova', 9),
(53, 'Massa-Carrara', 16),
(54, 'Matera', 2),
(55, 'Messina', 15),
(56, 'Milano', 9),
(57, 'Modena', 5),
(58, 'Monza e Brianza', 9),
(59, 'Napoli', 4),
(60, 'Novara', 12),
(61, 'Nuoro', 14),
(62, 'Oristano', 14),
(63, 'Padova', 20),
(64, 'Palermo', 15),
(65, 'Parma', 5),
(66, 'Pavia', 9),
(67, 'Perugia', 18),
(68, 'Pesaro e Urbino', 10),
(69, 'Pescara', 1),
(70, 'Piacenza', 5),
(71, 'Pisa', 16),
(72, 'Pistoia', 16),
(73, 'Pordenone', 6),
(74, 'Potenza', 2),
(75, 'Prato', 16),
(76, 'Ragusa', 15),
(77, 'Ravenna', 5),
(78, 'Reggio Calabria', 3),
(79, 'Reggio Emilia', 5),
(80, 'Rieti', 7),
(81, 'Rimini', 5),
(82, 'Roma', 7),
(83, 'Rovigo', 20),
(84, 'Salerno', 4),
(85, 'Sassari', 14),
(86, 'Savona', 8),
(87, 'Siena', 16),
(88, 'Siracusa', 15),
(89, 'Sondrio', 9),
(90, 'Sud Sardegna', 14),
(91, 'Taranto', 13),
(92, 'Teramo', 1),
(93, 'Terni', 18),
(94, 'Torino', 12),
(95, 'Trapani', 15),
(96, 'Trento', 17),
(97, 'Treviso', 20),
(98, 'Trieste', 6),
(99, 'Udine', 6),
(100, 'Varese', 9),
(101, 'Venezia', 20),
(102, 'Verbano-Cusio-Ossola', 12),
(103, 'Vercelli', 12),
(104, 'Verona', 20),
(105, 'Vibo Valentia', 3),
(106, 'Vicenza', 20),
(107, 'Viterbo', 7);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id_reg` int(11) NOT NULL,
  `region` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id_reg`, `region`) VALUES
(1, 'Abruzzo'),
(2, 'Basilicata'),
(3, 'Calabria'),
(4, 'Campania'),
(5, 'Emilia-Romagna'),
(6, 'Friuli Venezia Giulia'),
(7, 'Lazio '),
(8, 'Liguria'),
(9, 'Lombardia'),
(10, 'Marche'),
(11, 'Molise'),
(12, 'Piemonte'),
(13, 'Puglia'),
(14, 'Sardegna'),
(15, 'Sicilia'),
(16, 'Toscana'),
(17, 'Trentino-AltoAdige'),
(18, 'Umbria'),
(19, 'Val d\'Aosta'),
(20, 'Veneto');

-- --------------------------------------------------------

--
-- Table structure for table `situations`
--

CREATE TABLE `situations` (
  `id_sit` bigint(20) NOT NULL,
  `situation` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `situations`
--

INSERT INTO `situations` (`id_sit`, `situation`) VALUES
(1, 'Appetizer'),
(11, 'Barbecue'),
(2, 'Brunch'),
(12, 'Dessert'),
(3, 'Dinner'),
(4, 'Dinner with friends'),
(5, 'Family party'),
(6, 'Friends party'),
(7, 'Home party'),
(8, 'Lunch'),
(9, 'Romantic dinner'),
(10, 'Wedding');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` bigint(20) NOT NULL,
  `feeling` varchar(31) NOT NULL,
  `main_dish` varchar(63) NOT NULL,
  `number_people` int(11) NOT NULL,
  `region` varchar(31) NOT NULL,
  `province` varchar(31) NOT NULL,
  `situation` varchar(31) NOT NULL,
  `budget` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `wines`
--

CREATE TABLE `wines` (
  `id_wine` bigint(20) NOT NULL,
  `name` varchar(63) NOT NULL,
  `img` varchar(127) NOT NULL COMMENT 'wines images',
  `status` varchar(7) NOT NULL,
  `type` varchar(31) NOT NULL,
  `fk_prov` int(11) NOT NULL,
  `winery` varchar(63) NOT NULL,
  `months` tinyint(3) NOT NULL,
  `flavour` varchar(255) NOT NULL,
  `avg_price` float NOT NULL,
  `alcohol` float NOT NULL,
  `fk_sit` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wines`
--

INSERT INTO `wines` (`id_wine`, `name`, `img`, `status`, `type`, `fk_prov`, `winery`, `months`, `flavour`, `avg_price`, `alcohol`, `fk_sit`) VALUES
(1, 'Aglianico del Taburno', '/diwine/images/wine/aglianico_del_taburno.jpg', 'DOCG', 'Red Rosé', 12, 'Cantina del Taburno \'Bue Apis\'', 36, 'Full-bodied with aromas of dark fruit such as blackberry, currants, and plums that are often accompanied by notes of spices, undergrowth, and tobacco', 20, 12, 3),
(2, 'Aglianico del Vulture Superiore', '/diwine/images/wine/aglianico_del_vulture_superiore.jpg', 'DOCG', 'Red', 74, 'Basilisco \'Fontanelle\'', 48, 'Dark fruit, which tends to develop into more complex nuances of earth, spices, and leather but also floral', 22, 13.5, 11),
(3, 'Alta Langa Spumante', '/diwine/images/wine/alta_langa_spumante.jpg', 'DOCG', ' white / rosé sparkling wine', 7, 'Cantina Enrico Serafino', 30, 'White and exotic fruit as well as notes of brioche, honey, and butter', 24, 11.5, 1),
(4, 'Amarone della Valpolicella', '/diwine/images/wine/amarone_della_valpollicella.jpg', 'DOCG', 'Red', 104, 'Giuseppe Quintarelli', 24, 'Aromas of fruit jams, cinnamon, chocolate, and spices', 200, 14, 9),
(5, 'Barbera d’Asti', '/diwine/images/wine/barbera_d’asti.jpg', 'DOCG', 'Red', 7, 'Giacomo Bologna Braida', 4, 'Well-balanced, with notes of red and black fruits', 49, 12, 3),
(6, 'Asti spumante', '/diwine/images/wine/asti_spumante.jpg', 'DOCG', 'white sparkling wine', 7, 'Martini & Rossi', 2, 'Floral and fruity, reminiscent of peaches, pears, oranges, acacia, and honeysuckle', 12, 5, 1),
(7, 'Bagnoli Friularo', '/diwine/images/wine/bagnoli_friularo.jpg', 'DOCG', 'red', 63, 'Dominio di Bagnoli', 36, 'Notes of morello cherries and spices', 24, 12, 3),
(8, 'Barbaresco', '/diwine/images/wine/barbaresco.jpg', 'DOCG', 'red', 30, 'Produttori del Barbaresco', 26, 'Often described as refined and elegant, but also rich in acidity and tannins, with spicy flavours and aromas of roses, fruits, liquorice, and truffles.', 50, 12.5, 3),
(9, 'Barbera del Monferrato', '/diwine/images/wine/barbera_del_monferrato.jpg', 'DOCG', 'red', 2, 'Accornero Bricco Batista', 12, 'Notes of ripe fruit, low tannins, and well-structured acidity', 25, 12, 11),
(10, 'Bardolino', '/diwine/images/wine/bardolino.jpg', 'DOC', 'red', 104, 'Cantina Bolla', 12, 'An intense bouquet that contains hints of small mature red fruit with spicy hints', 20, 12, 11),
(11, 'Barolo', '/diwine/images/wine/barolo.jpg', 'DOCG', 'red', 30, 'Cantina Bartolo Mascarello', 62, 'Notes of rose petals, dark fruit, tobacco, mocha, tar, and truffles', 200, 13, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cat`),
  ADD UNIQUE KEY `UNIQUE` (`category`) USING BTREE;

--
-- Indexes for table `feelings`
--
ALTER TABLE `feelings`
  ADD PRIMARY KEY (`id_feel`),
  ADD UNIQUE KEY `UNIQUE` (`feeling`);

--
-- Indexes for table `mains_wines`
--
ALTER TABLE `mains_wines`
  ADD KEY `fk_wine_mains-wines` (`id_wine`),
  ADD KEY `fk_main_mains-wines` (`id_main`);

--
-- Indexes for table `main_dishes`
--
ALTER TABLE `main_dishes`
  ADD PRIMARY KEY (`id_main`),
  ADD UNIQUE KEY `UNIQUE` (`main_dish`),
  ADD KEY `fk_cat_main` (`fk_cat`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id_prov`),
  ADD UNIQUE KEY `UNIQUE` (`province`),
  ADD KEY `fk_reg_prov` (`fk_reg`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id_reg`),
  ADD UNIQUE KEY `UNIQUE` (`region`);

--
-- Indexes for table `situations`
--
ALTER TABLE `situations`
  ADD PRIMARY KEY (`id_sit`),
  ADD UNIQUE KEY `UNIQUE` (`situation`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `wines`
--
ALTER TABLE `wines`
  ADD PRIMARY KEY (`id_wine`),
  ADD KEY `fk_wine_province` (`fk_prov`),
  ADD KEY `fk_wine_situation` (`fk_sit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_cat` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feelings`
--
ALTER TABLE `feelings`
  MODIFY `id_feel` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `main_dishes`
--
ALTER TABLE `main_dishes`
  MODIFY `id_main` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `situations`
--
ALTER TABLE `situations`
  MODIFY `id_sit` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `wines`
--
ALTER TABLE `wines`
  MODIFY `id_wine` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mains_wines`
--
ALTER TABLE `mains_wines`
  ADD CONSTRAINT `fk_main_mains-wines` FOREIGN KEY (`id_main`) REFERENCES `main_dishes` (`id_main`),
  ADD CONSTRAINT `fk_wine_mains-wines` FOREIGN KEY (`id_wine`) REFERENCES `wines` (`id_wine`);

--
-- Constraints for table `main_dishes`
--
ALTER TABLE `main_dishes`
  ADD CONSTRAINT `fk_cat_main` FOREIGN KEY (`fk_cat`) REFERENCES `categories` (`id_cat`);

--
-- Constraints for table `provinces`
--
ALTER TABLE `provinces`
  ADD CONSTRAINT `fk_reg_prov` FOREIGN KEY (`fk_reg`) REFERENCES `regions` (`id_reg`) ON DELETE CASCADE;

--
-- Constraints for table `wines`
--
ALTER TABLE `wines`
  ADD CONSTRAINT `fk_wine_province` FOREIGN KEY (`fk_prov`) REFERENCES `provinces` (`id_prov`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wine_situation` FOREIGN KEY (`fk_sit`) REFERENCES `situations` (`id_sit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
