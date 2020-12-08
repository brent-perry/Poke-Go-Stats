-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 23, 2020 at 05:14 PM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Pokemon`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_access_token`
--

CREATE TABLE `api_access_token` (
  `access_token` varchar(60) NOT NULL,
  `revoked` tinyint(60) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `revoked_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_access_token`
--

INSERT INTO `api_access_token` (`access_token`, `revoked`, `created_at`, `revoked_at`) VALUES
('JmfXQ3d3BNkIRCa8wiyVCGp1WkGHxvlxt5SYCaXQRiyQzQOhMVqXlYwh9WcT', 0, '2020-06-04 00:00:00.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `type` varchar(60) NOT NULL,
  `fast_move` varchar(60) NOT NULL,
  `charge_move` varchar(60) NOT NULL,
  `dps` varchar(11) NOT NULL,
  `total` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `type`, `fast_move`, `charge_move`, `dps`, `total`) VALUES
(1, 'Escavalier', 'Bug', 'Bug Bite', 'Megahorn', '13.47', '1231.89'),
(2, 'Genesect', 'Bug', 'Fury Cutter', 'X Scissor', '13.86', '1476.36'),
(3, 'Scizor', 'Bug', 'Fury Cutter', 'X Scissor', '13.25', '1119.54'),
(4, 'Pinsir', 'Bug', 'Fury Cutter', 'X Scissor', '13.02', '995.48'),
(5, 'Yanmega', 'Bug', 'Bug Bite', 'Bug Buzz', '12.85', '991.29'),
(6, 'Scyther', 'Bug', 'Fury Cutter', 'X Scissor', '12.90', '948.69'),
(7, 'Durant', 'Bug', 'Bug Bite', 'X Scissor', '12.46', '802.52'),
(8, 'Scolipede', 'Bug', 'Bug Bite', 'Megahorn', '11.82', '623.22'),
(9, 'Accelgor', 'Bug', 'Infestation', 'Bug Buzz', '11.75', '520.94'),
(10, 'Crustle', 'Bug', 'Fury Cutter', 'X Scissor', '10.48', '480.77'),
(11, 'Darkrai', 'Dark', 'Feint Attack', 'Dark Pulse', '16.36', '2827.28'),
(12, 'Weavile', 'Dark', 'Snarl', 'Foul Play', '15.16', '1819.58'),
(13, 'Hydreigon', 'Dark', 'Bite', 'Dark Pulse', '14.12', '1805.44'),
(14, 'Tyranitar', 'Dark', 'Bite', 'Crunch', '13.53', '1772.04'),
(15, 'Bisharp', 'Dark', 'Snarl', 'Dark Pulse', '14.25', '1387.41'),
(16, 'Houndoom', 'Dark', 'Snarl', 'Foul Play', '14.01', '1186.23'),
(17, 'Krookodile', 'Dark', 'Snarl', 'Crunch', '13.13', '1175.43'),
(18, 'Zoroark', 'Dark', 'Snarl', 'Foul Play', '14.20', '967.65'),
(19, 'Muk (Alolan)', 'Dark', 'Bite', 'Dark Pulse', '11.74', '873.24'),
(20, 'Shiftry', 'Dark', 'Snarl', 'Foul Play', '12.53', '736.54'),
(26, 'Kyurem (Black)', 'Dragon', 'Dragon Tail', 'Outrage', '19.40', '7222.11'),
(27, 'Rayquaza', 'Dragon', 'Dragon Tail', 'Outrage', '18.81', '5227.40'),
(28, 'Reshiram', 'Dragon', 'Dragon Breath', 'Draco Meteor', '17.73', '4873.63'),
(29, 'Salamence', 'Dragon', 'Dragon Tail', 'Outrage', '18.39', '4783.64'),
(30, 'Zekrom', 'Dragon', 'Dragon Breath', 'Outrage', '17.42', '4542.71'),
(31, 'Dragonite', 'Dragon', 'Dragon Breath', 'Outrage', '17.48', '4409.42'),
(32, 'Dialga', 'Dragon', 'Dragon Breath', 'Draco Meteor', '16.74', '3873.31'),
(33, 'Latios', 'Dragon', 'Dragon Breath', 'Dragon Claw', '16.79', '3664.79'),
(34, 'Palkia', 'Dragon', 'Dragon Breath', 'Draco Meteor', '16.68', '3600.28'),
(35, 'Garchomp', 'Dragon', 'Dragon Tail', 'Outrage', '16.03', '3456.70'),
(36, 'Haxorus', 'Dragon', 'Dragon Tail', 'Dragon Claw', '17.51', '3444.27'),
(41, 'Zekrom', 'Electric', 'Charge Beam', 'Wild Charge', '16.73', '3858.94'),
(42, 'Electivire', 'Electric', 'Thunder Shock', 'Wild Charge', '17.24', '3049.97'),
(43, 'Raikou', 'Electric', 'Volt Switch', 'Wild Charge', '15.89', '2942.45'),
(44, 'Zapdos', 'Electric', 'Thunder Shock', 'Thunderbolt', '15.28', '2397.48'),
(45, 'Magnezone', 'Electric', 'Charge Beam', 'Wild Charge', '15.28', '2220.58'),
(46, 'Thundurus (Therian)', 'Electric', 'Thunder Shock', 'Thunder', '15.45', '2014.54'),
(47, 'Golem (Alolan)', 'Electric', 'Volt Switch', 'Wild Charge', '13.95', '1639.45'),
(48, 'Luxray', 'Electric', 'Spark', 'Wild Charge', '14.57', '1564.95'),
(49, 'Thundurus', 'Electric', 'Thunder Shock', 'Thunder', '14.37', '1531.29'),
(50, 'Zebstrika', 'Electric', 'Spark', 'Wild Charge', '14.35', '1241.73'),
(56, 'Togekiss', 'Fairy', 'Charm', 'Dazzling Gleam', '13.45', '1604.03'),
(57, 'Gardevoir', 'Fairy', 'Charm', 'Dazzling Gleam', '13.58', '1302.64'),
(58, 'Granbull', 'Fairy', 'Charm', 'Play Rough', '12.89', '885.74'),
(59, 'Clefable', 'Fairy', 'Charm', 'Dazzling Gleam', '11.58', '726.79'),
(60, 'Wigglytuff', 'Fairy', 'Charm', 'Play Rough', '10.71', '422.48'),
(61, 'Ninetales (Alolan)', 'Fairy', 'Charm', 'Dazzling Gleam', '9.87', '374.97'),
(62, 'Whimsicott', 'Fairy', 'Charm', 'Moonblast', '9.23', '233.13'),
(63, 'Mawile', 'Fairy', 'Fire Fang', 'Play Rough', '10.14', '247.52'),
(64, 'Azumarill', 'Fairy', 'Bubble', 'Play Rough', '7.66', '136.79'),
(65, 'Togepi', 'Fairy', 'Peck', 'Dazzling Gleam', '4.49', '6.61'),
(71, 'Conkeldurr', 'Fighting', 'Counter', 'Dynamic Punch', '17.53', '4008.98'),
(72, 'Lucario', 'Fighting', 'Counter', 'Aura Sphere', '18.24', '3250.81'),
(73, 'Machamp', 'Fighting', 'Counter', 'Dynamic Punch', '16.20', '2634.34'),
(74, 'Hariyama', 'Fighting', 'Counter', 'Dynamic Punch', '15.40', '2273.68'),
(75, 'Meloetta (Pirouette)', 'Fighting', 'Low Kick', 'Close Combat', '14.46', '2109.41'),
(76, 'Keldeo', 'Fighting', 'Low Kick', 'Close Combat', '14.49', '2026.64'),
(77, 'Heracross', 'Fighting', 'Counter', 'Close Combat', '14.66', '1817.54'),
(78, 'Breloom', 'Fighting', 'Counter', 'Dynamic Punch', '16', '1749.94'),
(79, 'Toxicroak', 'Fighting', 'Counter', 'Dynamic Punch', '14.49', '1355.40'),
(80, 'Emboar', 'Fighting', 'Low Kick', 'Focus Blast', '13.71', '1274.94'),
(86, 'Reshiram', 'Fire', 'Fire Fang', 'Overheat', '18.46', '5723.98'),
(87, 'Entei', 'Fire', 'Fire Fang', 'Overheat', '16.06', '3259.01'),
(88, 'Volcarona', 'Fire', 'Fire Spin', 'Overheat', '16.27', '3019.27'),
(89, 'Chandelure', 'Fire', 'Fire Spin', 'Overheat', '17.29', '2960.94'),
(90, 'Moltres', 'Fire', 'Fire Spin', 'Overheat', '16.11', '2906.06'),
(91, 'Heatran', 'Fire', 'Fire Spin', 'Fire Blast', '15.44', '2874.93'),
(92, 'Charizard', 'Fire', 'Ember', 'Blast Burn', '15.76', '2308.33'),
(93, 'Typhlosion', 'Fire', 'Ember', 'Blast Burn', '15.76', '2308.33'),
(94, 'Blaziken', 'Fire', 'Fire Spin', 'Blast Burn', '15.93', '2035.81'),
(95, 'Darmanitan', 'Fire', 'Fire Fang', 'Overheat', '15.69', '1917.53'),
(101, 'Moltres', 'Flying', 'Wing Attack', 'Sky Attack', '16.78', '3412.86'),
(102, 'Rayquaza', 'Flying', 'Air Slash', 'Aerial Ace', '14.90', '2059.05'),
(103, 'Honchkrow', 'Flying', 'Peck', 'Sky Attack', '16.27', '1961.79'),
(104, 'Tornadus', 'Flying', 'Air Slash', 'Hurricane', '14.20', '1460.11'),
(105, 'Unfezant', 'Flying', 'Air Slash', 'Sky Attack', '14.40', '1403.46'),
(106, 'Tornadus (Therian)', 'Flying', 'Air Slash', 'Hurricane', '13.04', '1186.92'),
(107, 'Togekiss', 'Flying', 'Air Slash', 'Aerial Ace', '12.43', '1169.40'),
(108, 'Braviary', 'Flying', 'Air Slash', 'Brave Bird', '12.66', '1018.59'),
(109, 'Yanmega', 'Flying', 'Wing Attack', 'Aerial Ace', '12.87', '996.97'),
(110, 'Staraptor', 'Flying', 'Wing Attack', 'Brave Bird', '13.05', '947.74'),
(116, 'Girantina (Origin)', 'Ghost', 'Shadow Claw', 'Shadow Ball', '15.52', '3472.72'),
(117, 'Gengar', 'Ghost', 'Lick', 'Shadow Ball', '17.91', '2834.65'),
(118, 'Chandelure', 'Ghost', 'Hex', 'Shadow Ball', '15.82', '2073.31'),
(119, 'Mismagius', 'Ghost', 'Hex', 'Shadow Ball', '13.74', '1210.84'),
(120, 'Banette', 'Ghost', 'Shadow Claw', 'Shadow Ball', '14.13', '981.87'),
(121, 'Drifblim', 'Ghost', 'Hex', 'Shadow Ball', '12.21', '840.96'),
(122, 'Haunter', 'Ghost', 'Shadow Claw', 'Shadow Ball', '14.60', '780.39'),
(123, 'Jellicent', 'Ghost', 'Hex', 'Shadow Ball', '10.73', '607.6'),
(124, 'Cofagrigus', 'Ghost', 'Astonish', 'Shadow Ball', '10.46', '495.59'),
(125, 'Froslass', 'Ghost', 'Hex', 'Shadow Ball', '10.56', '379.81'),
(131, 'Tangrowth', 'Grass', 'Vine Whip', 'Solar Beam', '14.49', '2087.69'),
(132, 'Venusaur', 'Grass', 'Vine Whip', 'Frenzy Plant', '14.78', '1975.27'),
(133, 'Exeggutor (Alolan)', 'Grass', 'Bullet Seed', 'Solar Beam', '14.83', '1856.35'),
(134, 'Exeggutor', 'Grass', 'Bullet Seed', 'Solar Beam', '14.83', '1811.89'),
(135, 'Leafeon', 'Grass', 'Razor Leaf', 'Leaf Blade', '14.27', '1712.22'),
(136, 'Torterra', 'Grass', 'Razor Leaf', 'Frenzy Plant', '13.80', '1686.78'),
(137, 'Roserade', 'Grass', 'Razor Leaf', 'Solar Beam', '14.94', '1674.49'),
(138, 'Sceptile', 'Grass', 'Bullet Seed', 'Frenzy Plant', '14.41', '1468.26'),
(139, 'Leavanny', 'Grass', 'Razor Leaf', 'Leaf Blade', '13.53', '1171.04'),
(140, 'Meganium', 'Grass', 'Vine Whip', 'Frenzy Plant', '12.27', '998.74'),
(146, 'Landorus (Therian)', 'Ground', 'Mud Shot', 'Earth Power', '16.53', '3154.86'),
(147, 'Rhyperior', 'Ground', 'Mud Slap', 'Earthquake', '15.04', '2764.33'),
(148, 'Landorus', 'Ground', 'Mud Shot', 'Earth Power', '15.83', '2696.18'),
(149, 'Groudon', 'Ground', 'Mud Shot', 'Earthquake', '14.60', '2407.12'),
(150, 'Excadrill', 'Ground', 'Mud Slap', 'Drill Run', '15.41', '2064.88'),
(151, 'Rhydon', 'Ground', 'Mud Slap', 'Earthquake', '13.82', '1669.22'),
(152, 'Krookodile', 'Ground', 'Mud Slap', 'Earthquake', '13.61', '1355.52'),
(153, 'Golurk', 'Ground', 'Mud Slap', 'Earth Power', '13.68', '1287.72'),
(154, 'Donphan', 'Ground', 'Mud Slap', 'Earthquake', '12.97', '1243.88'),
(155, 'Golem', 'Ground', 'Mud Shot', 'Earthquake', '12.64', '1104.12'),
(161, 'Mamoswine', 'Ice', 'Powder Snow', 'Avalanche', '15.64', '2449.90'),
(162, 'Glaceon', 'Ice', 'Frost Breath', 'Avalanche', '15.27', '2105.97'),
(163, 'Weavile', 'Ice', 'Ice Shard', 'Avalanche', '14.62', '1573.05'),
(164, 'Walrein', 'Ice', 'Frost Breath', 'Blizzard', '11.86', '961.60'),
(165, 'Beartic', 'Ice', 'Powder Snow', 'Ice Punch', '12.53', '942.56'),
(166, 'Cloyster', 'Ice', 'Frost Breath', 'Avalanche', '12.32', '939.36'),
(167, 'Articuno', 'Ice', 'Frost Breath', 'Ice Beam', '11.37', '923.63'),
(168, 'Vanilluxe', 'Ice', 'Frost Breath', 'Blizzard', '12.38', '874.29'),
(169, 'Jynx', 'Ice', 'Frost Breath', 'Ice Punch', '13.03', '842.89'),
(170, 'Piloswine', 'Ice', 'Powder Snow', 'Avalanche', '12.30', '830.17'),
(176, 'Regigigas', 'Normal', 'Hidden Power', 'Giga Impact', '19.35', '7387.10'),
(177, 'Meloetta (Pirouette)', 'Normal', 'Quick Attack', 'Hyper Beam', '16.68', '3738.98'),
(178, 'Meloetta(Aria)', 'Normal', 'Quick Attack', 'Hyper Beam', '14.66', '2636.89'),
(179, 'Porygon-Z', 'Normal', 'Lock On', 'Hyper Beam', '13.94', '1313.91'),
(180, 'Blissey', 'Normal', 'Pound', 'Hyper Beam', '10.06', '954.33'),
(181, 'Slaking', 'Normal', 'Yawn', 'Body Slam', '11.22', '850.67'),
(182, 'Ambipom', 'Normal', 'Scratch', 'Hyper Beam', '12.90', '848.65'),
(183, 'Porygon2', 'Normal', 'Hidden Power', 'Hyper Beam', '11.43', '701.63'),
(184, 'Cinccino', 'Normal', 'Pound', 'Hyper Beam', '11.70', '526.82'),
(185, 'Stantler', 'Normal', 'Tackle', 'Stomp', '11.59', '499.81'),
(191, 'Roserade', 'Poison', 'Poison Jab', 'Sludge Bomb', '15.67', '2025.58'),
(192, 'Victreebel', 'Poison', 'Acid', 'Sludge Bomb', '14.41', '1311.16'),
(193, 'Toxicroak', 'Poison', 'Poison Jab', 'Sludge Bomb', '14.13', '1224.27'),
(194, 'Muk (Alolan)', 'Poison', 'Poison Jab', 'Gunk Shot', '12.76', '1216.72'),
(195, 'Muk', 'Poison', 'Poison Jab', 'Gunk Shot', '12.76', '1216.72'),
(196, 'Scolipede', 'Poison', 'Poison Jab', 'Sludge Bomb', '13.17', '960.21'),
(197, 'Vileplume', 'Poison', 'Acid', 'Sludge Bomb', '12.78', '942.74'),
(198, 'Skuntank', 'Poison', 'Poison Jab', 'Sludge Bomb', '12.78', '942.74'),
(199, 'Weezing', 'Poison', 'Acid', 'Sludge Bomb', '11.98', '768.26'),
(200, 'Garbodor', 'Poison', 'Acid', 'Gunk Shot', '11.72', '684.82'),
(206, 'Mewtwo', 'Psychic', 'Confusion', 'Psystrike', '20.76', '8302.42'),
(207, 'Alakazam', 'Psychic', 'Psycho Cut', 'Psychic', '18.11', '3114.18'),
(208, 'Metagross', 'Psychic', 'Zen Headbutt', 'Psychic', '15.23', '2655.01'),
(209, 'Latios', 'Psychic', 'Zen Headbutt', 'Psychic', '15.46', '2636.43'),
(210, 'Exeggutor', 'Psychic', 'Extrasensory', 'Psychic', '16.06', '2492.20'),
(211, 'Meloetta (Aria)', 'Psychic', 'Confusion', 'Psyshock', '14.37', '2432.66'),
(212, 'Gardevoir', 'Psychic', 'Confusion', 'Psychic', '15.87', '2427.92'),
(213, 'Gallade', 'Psychic', 'Confusion', 'Psychic', '15.87', '2427.92'),
(214, 'Espeon', 'Psychic', 'Zen Headbutt', 'Psychic', '15.99', '2184.60'),
(215, 'Celebi', 'Psychic', 'Confusion', 'Psychic', '14.03', '2074.10'),
(221, 'Rhyperior', 'Rock', 'Smack Down', 'Rock Wrecker', '15.46', '3091.39'),
(222, 'Rampardos', 'Rock', 'Smack Down', 'Rock Slide', '17.49', '2683.43'),
(223, 'Tyranitar', 'Rock', 'Smack Down', 'Stone Edge', '14.95', '2638.60'),
(224, 'Terrakion', 'Rock', 'Smack Down', 'Rock Slide', '14.99', '2317.88'),
(225, 'Gigalith', 'Rock', 'Smack Down', 'Rock Slide', '13.40', '1470.82'),
(226, 'Omastar', 'Rock', 'Rock Throw', 'Rock Slide', '13.16', '1198.66'),
(227, 'Regirock', 'Rock', 'Rock Throw', 'Stone Edge', '11.46', '1138.48'),
(228, 'Aerodactyl', 'Rock', 'Rock Throw', 'Rock Slide', '13.33', '1115.40'),
(229, 'Golem', 'Rock', 'Rock Throw', 'Stone Edge', '12.46', '1041.32'),
(230, 'Aggron', 'Rock', 'Smack Down', 'Stone Edge', '11.98', '1039.66'),
(236, 'Metagross', 'Steel', 'Bullet Punch', 'Meteor Mash', '16.92', '4043.61'),
(237, 'Dialga', 'Steel', 'Metal Claw', 'Iron Head', '16.25', '3432.08'),
(238, 'Genesect', 'Steel', 'Metal Claw', 'Magnet Bomb', '15.50', '2313.65'),
(239, 'Excadrill', 'Steel', 'Metal Claw', 'Iron Head', '14.96', '1834.86'),
(240, 'Bisharp', 'Steel', 'Metal Claw', 'Iron Head', '13.72', '1191.47'),
(241, 'Coballion', 'Steel', 'Metal Claw', 'Iron Head', '11.90', '1088.41'),
(242, 'Aggron', 'Steel', 'Iron Tail', 'Heavy Slam', '11.98', '1036.90'),
(243, 'Scizor', 'Steel', 'Bullet Punch', 'Iron Head', '12.79', '971.54'),
(244, 'Durant', 'Steel', 'Metal Claw', 'Iron Head', '12.14', '723.37'),
(245, 'Lairon', 'Steel', 'Metal Claw', 'Heavy Slam', '10.52', '438.85'),
(251, 'Kyogre', 'Water', 'Waterfall', 'Surf', '16.32', '3758.78'),
(252, 'Swampert', 'Water', 'Water Gun', 'Hydro Cannon', '16.10', '3035.17'),
(253, 'Feraligatr', 'Water', 'Water Gun', 'Hydro Cannon', '15.45', '2440.47'),
(254, 'Gyarados', 'Water', 'Waterfall', 'Hydro Pump', '15.15', '2424.28'),
(255, 'Kingler', 'Water', 'Bubble', 'Crabhammer', '16.30', '2204.80'),
(256, 'Empoleon', 'Water', 'Waterfall', 'Hydro Cannon', '14.78', '2012.86'),
(257, 'Manaphy', 'Water', 'Waterfall', 'Surf', '13.62', '1839.97'),
(258, 'Vaporeon', 'Water', 'Water Gun', 'Hydro Pump', '13.08', '1491.24'),
(259, 'Crawdaunt', 'Water', 'Waterfall', 'Crabhammer', '15.24', '1464.75'),
(260, 'Kingdra', 'Water', 'Water Gun', 'Hydro Pump', '13.34', '1285.70'),
(261, 'Darmanitan (Galarian)', 'Ice', 'Ice Fang', 'Avalanche', '16.16', '2155.04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_access_token`
--
ALTER TABLE `api_access_token`
  ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
