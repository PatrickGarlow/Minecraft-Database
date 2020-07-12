-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 03, 2020 at 11:09 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s_pgarlow`
--

-- --------------------------------------------------------

--
-- Table structure for table `Block`
--

CREATE TABLE `Block` (
  `Block_ID` int(50) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Burnable` varchar(5) NOT NULL,
  `Hardness` decimal(4,1) NOT NULL,
  `Opacity` int(255) NOT NULL,
  `Brightness` int(255) NOT NULL,
  `Dimension` varchar(9) NOT NULL,
  `Effective_Tool` int(11) DEFAULT NULL,
  `Dropped_When_Broken` int(40) DEFAULT NULL,
  `Moveable` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Block`
--

INSERT INTO `Block` (`Block_ID`, `Name`, `Burnable`, `Hardness`, `Opacity`, `Brightness`, `Dimension`, `Effective_Tool`, `Dropped_When_Broken`, `Moveable`) VALUES
(1, 'Dirt', 'FALSE', '5.0', 10, 0, 'Overworld', 9, 33, 'TRUE'),
(2, 'Stone', 'FALSE', '25.0', 10, 0, 'Overworld', 6, 34, 'TRUE'),
(3, 'Iron Ore', 'FALSE', '30.0', 10, 0, 'Overworld', 6, 35, 'TRUE'),
(4, 'Oak Log', 'TRUE', '16.0', 10, 0, 'Overworld', 5, 36, 'TRUE'),
(5, 'Obsidian', 'FALSE', '100.0', 10, 0, 'End', 6, 37, 'FALSE'),
(6, 'Emerald Ore', 'FALSE', '30.0', 10, 0, 'Overworld', 6, 19, 'FALSE'),
(7, 'Emerald Block', 'FALSE', '35.0', 10, 0, 'Overworld', 6, 20, 'FALSE'),
(8, 'Coal_ore', 'FALSE', '30.0', 10, 0, 'Overworld', 6, 14, 'FALSE'),
(9, 'Oak Plank', 'TRUE', '16.0', 10, 0, 'Overworld', 5, 4, 'FALSE'),
(10, 'Birch Plank', 'TRUE', '16.0', 10, 0, 'Overworld', 5, 5, 'FALSE'),
(12, 'Diamond Ore', 'FALSE', '35.0', 10, 0, 'Overworld', 6, 2, 'FALSE'),
(13, 'Diamond Block', 'FALSE', '40.0', 10, 0, 'Overworld', 6, 3, 'FALSE'),
(14, 'Glowstone', 'FALSE', '15.0', 10, 5, 'Nether', 6, 38, 'FALSE'),
(15, 'Gravel', 'FALSE', '5.0', 10, 0, 'Overworld', 24, 53, 'TRUE'),
(16, 'Sand', 'FALSE', '5.0', 10, 0, 'Overworld', 24, 54, 'TRUE'),
(17, 'Red Sand', 'FALSE', '5.0', 10, 0, 'Overworld', 24, 55, 'TRUE'),
(18, 'Clay Block', 'FALSE', '5.0', 10, 0, 'Overworld', 24, 56, 'TRUE'),
(19, 'Cobblestone', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 57, 'TRUE'),
(20, 'Granite', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 58, 'TRUE'),
(21, 'Diorite', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 59, 'TRUE'),
(22, 'Andesite', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 60, 'TRUE'),
(23, 'Polished Granite', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 61, 'TRUE'),
(24, 'Polished Diorite', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 62, 'TRUE'),
(25, 'Polished Andesite', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 63, 'TRUE'),
(26, 'Bricks', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 64, 'TRUE'),
(27, 'Sandstone', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 65, 'TRUE'),
(28, 'Snow', 'TRUE', '5.0', 10, 0, 'Overworld', 24, 66, 'FALSE'),
(29, 'Sea Lantern', 'FALSE', '25.0', 10, 5, 'Overworld', 17, 67, 'TRUE'),
(30, 'Prismarine', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 68, 'TRUE'),
(31, 'Prismarine Bricks', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 69, 'TRUE'),
(32, 'Gold Ore', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 70, 'TRUE'),
(33, 'Gold Block', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 71, 'TRUE'),
(34, 'Redstone Ore', 'FALSE', '30.0', 10, 3, 'Overworld', 17, 72, 'TRUE'),
(35, 'Restone Block', 'FALSE', '30.0', 10, 1, 'Overworld', 17, 73, 'TRUE'),
(36, 'Lapis Ore', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 74, 'TRUE'),
(37, 'Lapis Block', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 75, 'TRUE'),
(38, 'Bookshelf', 'TRUE', '25.0', 10, 0, 'Overworld', 5, 76, 'TRUE'),
(39, 'Stone Brick', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 77, 'TRUE'),
(40, 'Melon', 'FALSE', '10.0', 10, 0, 'Overworld', 5, 78, 'FALSE'),
(41, 'Hay Bale', 'TRUE', '15.0', 10, 0, 'Overworld', 22, 79, 'TRUE'),
(42, 'Soul Sand', 'FALSE', '5.0', 10, 0, 'Nether', 24, 80, 'TRUE'),
(43, 'Nether Quartz Ore', 'FALSE', '20.0', 10, 0, 'Nether', 17, 81, 'TRUE'),
(44, 'Netherrack', 'TRUE', '15.0', 10, 0, 'Nether', 17, 82, 'TRUE'),
(45, 'Magma Block', 'FALSE', '30.0', 10, 3, 'Nether', 17, 83, 'TRUE'),
(46, 'Nether Brick', 'FALSE', '30.0', 10, 0, 'Nether', 17, 84, 'TRUE'),
(47, 'Spruce Planks', 'TRUE', '16.0', 10, 0, 'Overworld', 5, 85, 'TRUE'),
(48, 'Jungle Planks', 'TRUE', '16.0', 10, 0, 'Overworld', 5, 86, 'TRUE'),
(49, 'Acacia Planks', 'TRUE', '16.0', 10, 0, 'Overworld', 5, 87, 'TRUE'),
(50, 'Dark Oak Planks', 'TRUE', '16.0', 10, 0, 'Overworld', 5, 88, 'TRUE'),
(51, 'Spruce Log', 'TRUE', '16.0', 10, 0, 'Overworld', 5, 89, 'TRUE'),
(52, 'Birch Log', 'TRUE', '16.0', 10, 0, 'Overworld', 5, 90, 'TRUE'),
(53, 'End Stone', 'FALSE', '30.0', 10, 0, 'End', 17, 91, 'TRUE'),
(54, 'Purpur', 'FALSE', '15.0', 10, 0, 'End', 17, 92, 'TRUE'),
(55, 'End Stone Brick', 'FALSE', '30.0', 10, 0, 'End', 17, 93, 'TRUE'),
(56, 'End Rod', 'FALSE', '5.0', 1, 5, 'End', 17, 94, 'FALSE'),
(57, 'Wool', 'TRUE', '20.0', 10, 0, 'Overworld', 2, 95, 'TRUE'),
(58, 'Oak Leaves', 'TRUE', '15.0', 5, 0, 'Overworld', 2, 96, 'TRUE'),
(59, 'Crafting Table', 'TRUE', '25.0', 10, 0, 'Overworld', 5, 97, 'TRUE'),
(60, 'Furnace', 'FALSE', '25.0', 10, 3, 'Overworld', 17, 98, 'FALSE'),
(61, 'Chest', 'TRUE', '25.0', 8, 0, 'Overworld', 5, 99, 'FALSE'),
(62, 'Enchanting Table', 'FALSE', '75.0', 10, 1, 'Overworld', 17, 100, 'FALSE'),
(63, 'Restone Lamp', 'FALSE', '15.0', 10, 5, 'Overworld', 17, 101, 'TRUE'),
(64, 'Iron Bars', 'FALSE', '35.0', 5, 0, 'Overworld', 17, 102, 'TRUE'),
(65, 'Cobblestone Wall', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 103, 'TRUE'),
(66, 'Brick Wall', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 104, 'TRUE'),
(67, 'Prismarine Wall', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 105, 'TRUE'),
(68, 'Stone Brick Wall', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 106, 'TRUE'),
(69, 'Concrete Powder', 'FALSE', '5.0', 10, 0, 'Overworld', 17, 107, 'TRUE'),
(70, 'Concrete Block', 'FALSE', '30.0', 10, 0, 'Overworld', 17, 108, 'TRUE');

-- --------------------------------------------------------

--
-- Table structure for table `Enchantment`
--

CREATE TABLE `Enchantment` (
  `Enchantment_ID` int(11) NOT NULL,
  `Enchantment_Name` varchar(40) NOT NULL,
  `Max_Level` int(11) NOT NULL,
  `Experience_Level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Enchantment`
--

INSERT INTO `Enchantment` (`Enchantment_ID`, `Enchantment_Name`, `Max_Level`, `Experience_Level`) VALUES
(1, 'Efficiency', 5, 30),
(2, 'Feather Falling', 4, 24),
(3, 'Fortune', 3, 24),
(4, 'Looting', 3, 24),
(5, 'Infinity', 1, 30),
(6, 'Mending', 1, 30),
(7, 'Sharpness', 5, 24),
(8, 'Unbreaking ', 3, 24),
(9, 'Silk Touch', 1, 15),
(10, 'Power', 5, 30),
(11, 'Aqua Affinity', 1, 15),
(12, 'Bane of Arthropods', 5, 18),
(13, 'Blast Protection', 4, 15),
(14, 'Curse of Binding', 1, 5),
(15, 'Depth Strider', 3, 15),
(16, 'Fire Aspect', 2, 24),
(17, 'Fire Protection', 4, 24),
(18, 'Flame', 1, 30),
(19, 'Frost Walker', 2, 30),
(20, 'Knockback', 2, 24),
(21, 'Lure', 3, 15),
(22, 'Luck of the Sea', 3, 30),
(23, 'Respiration', 3, 24),
(24, 'Smite', 5, 15),
(25, 'Thorns', 3, 18);

-- --------------------------------------------------------

--
-- Table structure for table `Item`
--

CREATE TABLE `Item` (
  `Item_ID` int(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Enchantable` varchar(5) DEFAULT NULL,
  `Stack_Size` int(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Item`
--

INSERT INTO `Item` (`Item_ID`, `Name`, `Enchantable`, `Stack_Size`) VALUES
(1, 'Diamond Ore', 'FALSE', 64),
(2, 'Diamond', 'FALSE', 64),
(3, 'Diamond Block', 'TRUE', 64),
(4, 'Oak Plank', 'TRUE', 64),
(5, 'Birch Plank', 'TRUE', 64),
(6, 'Ender Pearl', 'FALSE', 16),
(7, 'Seeds', 'FALSE', 64),
(8, 'Wheat', 'FALSE', 64),
(9, 'Carrott', 'FALSE', 64),
(10, 'Iron Sword', 'TRUE', 1),
(11, 'Lava Bucket', 'FALSE', 1),
(12, 'Trident', 'TRUE', 16),
(13, 'Golden Boots', 'TRUE', 1),
(14, 'Coal', 'FALSE', 64),
(15, 'Bone', 'FALSE', 64),
(16, 'Elytra', 'TRUE', 1),
(17, 'Clock', 'FALSE', 1),
(18, 'Emerald Ore', 'FALSE', 64),
(19, 'Emerald', 'FALSE', 64),
(20, 'Emerald Block', 'FALSE', 64),
(21, 'String', 'FALSE', 64),
(22, 'Stick', 'FALSE', 64),
(23, 'Fishing Rod', 'TRUE', 1),
(24, 'Shears', 'TRUE', 1),
(25, 'Lead', 'FALSE', 1),
(26, 'Golden Axe', 'TRUE', 1),
(27, 'Diamond Axe', 'TRUE', 1),
(28, 'Iron Pickaxe', 'TRUE', 1),
(29, 'Flint and Steel', 'TRUE', 1),
(30, 'Golden Hoe', 'TRUE', 1),
(31, 'Iron Shovel', 'TRUE', 1),
(32, 'Stone Shovel', 'TRUE', 1),
(33, 'Dirt', 'FALSE', 64),
(34, 'Cobblestone', 'FALSE', 64),
(35, 'Iron Ore', 'FALSE', 64),
(36, 'Oak Log', 'FALSE', 64),
(37, 'Obsidian', 'FALSE', 64),
(38, 'Glowstone Dust', 'FALSE', 64),
(39, 'Wood Axe', 'TRUE', 1),
(40, 'Stone Axe', 'TRUE', 1),
(41, 'Iron Axe', 'TRUE', 1),
(42, 'Wood Pickaxe', 'TRUE', 1),
(43, 'Stone Pickaxe', 'TRUE', 1),
(44, 'Gold Pickaxe', 'TRUE', 1),
(45, 'Diamon Pickaxe', 'TRUE', 1),
(46, 'Wood Hoe', 'TRUE', 1),
(47, 'Stone Hoe', 'TRUE', 1),
(48, 'Iron Hoe', 'TRUE', 1),
(49, 'Diamond Hoe', 'TRUE', 1),
(50, 'Wood Shovel', 'TRUE', 1),
(51, 'Gold Shovel', 'TRUE', 1),
(52, 'Diamond Shovel', 'TRUE', 1),
(53, 'Flint', 'FALSE', 64),
(54, 'Sand', 'FALSE', 64),
(55, 'Red Sand', 'FALSE', 64),
(56, 'Clay', 'FALSE', 64),
(57, 'Cobblestone', 'FALSE', 64),
(58, 'Granite', 'FALSE', 64),
(59, 'Diorite', 'FALSE', 64),
(60, 'Andesite', 'FALSE', 64),
(61, 'Polished Granite', 'FALSE', 64),
(62, 'Polished Diorite', 'FALSE', 64),
(63, 'Polished Andesite', 'FALSE', 64),
(64, 'Bricks', 'FALSE', 64),
(65, 'Sandstone', 'FALSE', 64),
(66, 'Snowball', 'FALSE', 16),
(67, 'Sea Lantern', 'FALSE', 64),
(68, 'Prismarine', 'FALSE', 64),
(69, 'Prismarine Bricks', 'FALSE', 64),
(70, 'Gold Ore', 'FALSE', 64),
(71, 'Gold Block', 'FALSE', 64),
(72, 'Redstone Dust', 'FALSE', 64),
(73, 'Restone Block', 'FALSE', 64),
(74, 'Lapis', 'FALSE', 64),
(75, 'Lapis Block', 'FALSE', 64),
(76, 'Book', 'FALSE', 16),
(77, 'Stone Brick', 'FALSE', 64),
(78, 'Melon', 'FALSE', 64),
(79, 'Hay Bale', 'FALSE', 64),
(80, 'Soul Sand', 'FALSE', 64),
(81, 'Quartz', 'FALSE', 64),
(82, 'Netherrack', 'FALSE', 64),
(83, 'Magma Block', 'FALSE', 64),
(84, 'Nether Brick', 'FALSE', 64),
(85, 'Spruce Planks', 'FALSE', 64),
(86, 'Jungle Planks', 'FALSE', 64),
(87, 'Acacia Planks', 'FALSE', 64),
(88, 'Dark Oak Planks', 'FALSE', 64),
(89, 'Spruce Log', 'FALSE', 64),
(90, 'Birch Log', 'FALSE', 64),
(91, 'End Stone', 'FALSE', 64),
(92, 'Purpur', 'FALSE', 64),
(93, 'End Stone Brick', 'FALSE', 64),
(94, 'End Rod', 'FALSE', 64),
(95, 'Wool', 'FALSE', 64),
(96, 'Oak Sapling', 'FALSE', 64),
(97, 'Crafting Table', 'FALSE', 64),
(98, 'Furnace', 'FALSE', 64),
(99, 'Chest', 'FALSE', 64),
(100, 'Enchanting Table', 'FALSE', 64),
(101, 'Restone Lamp', 'FALSE', 64),
(102, 'Iron Bars', 'FALSE', 64),
(103, 'Cobblestone Wall', 'FALSE', 64),
(104, 'Brick Wall', 'FALSE', 64),
(105, 'Prismarine Wall', 'FALSE', 64),
(106, 'Stone Brick Wall', 'FALSE', 64),
(107, 'Concrete Powder', 'FALSE', 64),
(108, 'Concrete Block', 'FALSE', 64),
(109, 'Shield', 'TRUE', 1),
(110, 'Carrott on a Stick', 'FALSE', 1),
(111, 'Bow', 'TRUE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Tool`
--

CREATE TABLE `Tool` (
  `Tool_ID` int(11) NOT NULL,
  `Tool_Name` varchar(25) NOT NULL,
  `Level` int(11) NOT NULL,
  `Damage` decimal(3,1) NOT NULL,
  `Speed` decimal(3,1) NOT NULL,
  `Enchantable` varchar(5) DEFAULT NULL,
  `Durability` int(11) DEFAULT NULL,
  `Item_ID` int(11) NOT NULL,
  `Base_Tool_Type` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tool`
--

INSERT INTO `Tool` (`Tool_ID`, `Tool_Name`, `Level`, `Damage`, `Speed`, `Enchantable`, `Durability`, `Item_ID`, `Base_Tool_Type`) VALUES
(1, 'Fishing Rod', 1, '1.0', '1.0', 'TRUE', 65, 23, 5),
(2, 'Shears', 1, '1.0', '1.0', 'TRUE', 238, 24, 7),
(3, 'Lead', 1, '1.0', '1.0', 'FALSE', NULL, 25, 6),
(4, 'Golden Axe', 4, '7.0', '3.5', 'TRUE', 32, 26, 1),
(5, 'Diamond Axe', 5, '10.0', '10.0', 'TRUE', 1561, 27, 1),
(6, 'Iron Pickaxe', 3, '9.0', '5.5', 'TRUE', 250, 28, 2),
(7, 'Flint and Steel', 1, '1.0', '1.0', 'TRUE', NULL, 29, 8),
(8, 'Golden Hoe', 4, '1.0', '3.5', 'TRUE', NULL, 30, 4),
(9, 'Iron Shovel', 3, '4.5', '5.5', 'TRUE', 249, 31, 3),
(10, 'Stone Shovel', 2, '3.5', '4.5', 'TRUE', 131, 32, 3),
(11, 'Wood Axe', 1, '5.0', '2.0', 'TRUE', 59, 39, 1),
(12, 'Stone Axe', 2, '6.0', '4.5', 'TRUE', 131, 40, 1),
(13, 'Iron Axe', 3, '10.0', '5.5', 'TRUE', 250, 41, 1),
(14, 'Wood Pickaxe', 1, '4.0', '2.0', 'TRUE', 59, 42, 2),
(15, 'Stone Pickaxe', 2, '5.0', '4.5', 'TRUE', 131, 43, 2),
(16, 'Gold Pickaxe', 4, '7.0', '3.5', 'TRUE', 32, 44, 2),
(17, 'Diamon Pickaxe', 5, '9.0', '10.0', 'TRUE', 1561, 45, 2),
(18, 'Wood Hoe', 1, '1.0', '1.0', 'TRUE', 59, 46, 4),
(19, 'Stone Hoe', 2, '1.0', '1.0', 'TRUE', 131, 47, 4),
(20, 'Iron Hoe', 3, '1.0', '1.0', 'TRUE', 250, 48, 4),
(21, 'Diamond Hoe', 5, '1.0', '10.0', 'TRUE', 1561, 49, 4),
(22, 'Wood Shovel', 1, '2.0', '2.0', 'TRUE', 59, 50, 3),
(23, 'Gold Shovel', 4, '3.0', '3.5', 'TRUE', 32, 51, 3),
(24, 'Diamond Shovel', 5, '6.0', '10.0', 'TRUE', 1561, 52, 3),
(25, 'Sheild', 1, '1.0', '1.0', 'TRUE', 336, 109, 9),
(26, 'Carrot on a Stick', 1, '1.0', '1.0', 'FALSE', 25, 110, 10),
(27, 'Bow', 1, '8.0', '1.0', 'TRUE', 384, 111, 11);

-- --------------------------------------------------------

--
-- Table structure for table `Tool_Enchantment`
--

CREATE TABLE `Tool_Enchantment` (
  `Base_Tool_Type` int(5) NOT NULL,
  `Enchantment_Cost` int(3) DEFAULT NULL,
  `Enchantment_ID` int(11) NOT NULL,
  `Tool_Name` varchar(25) NOT NULL,
  `Enchantment_Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tool_Enchantment`
--

INSERT INTO `Tool_Enchantment` (`Base_Tool_Type`, `Enchantment_Cost`, `Enchantment_ID`, `Tool_Name`, `Enchantment_Name`) VALUES
(1, 24, 1, 'Axe', 'Efficiency'),
(1, NULL, 2, 'Axe', 'Feather Falling'),
(1, 24, 3, 'Axe', 'Fortune'),
(1, 24, 4, 'Axe', 'Looting'),
(1, NULL, 5, 'Axe', 'Infinity'),
(1, 30, 6, 'Axe', 'Mending'),
(1, 24, 7, 'Axe', 'Sharpness'),
(1, 5, 8, 'Axe', 'Unbreaking '),
(1, 30, 9, 'Axe', 'Silk Touch'),
(1, NULL, 10, 'Axe', 'Power'),
(1, NULL, 11, 'Axe', 'Aqua Affinity'),
(1, NULL, 12, 'Axe', 'Bane of Arthropods'),
(1, NULL, 13, 'Axe', 'Blast Protection'),
(1, NULL, 14, 'Axe', 'Curse of Binding'),
(1, NULL, 15, 'Axe', 'Depth Strider'),
(1, 24, 16, 'Axe', 'Fire Aspect'),
(1, NULL, 17, 'Axe', 'Fire Protection'),
(1, NULL, 18, 'Axe', 'Flame'),
(1, NULL, 19, 'Axe', 'Frost Walker'),
(1, NULL, 20, 'Axe', 'Knockback'),
(1, NULL, 21, 'Axe', 'Lure'),
(1, NULL, 22, 'Axe', 'Luck of the Sea'),
(1, NULL, 23, 'Axe', 'Respiration'),
(1, NULL, 24, 'Axe', 'Smite'),
(2, 24, 1, 'Pickaxe', 'Efficiency'),
(2, NULL, 2, 'Pickaxe', 'Feather Falling'),
(2, 24, 3, 'Pickaxe', 'Fortune'),
(2, NULL, 4, 'Pickaxe', 'Looting'),
(2, 30, 5, 'Pickaxe', 'Infinity'),
(2, 30, 6, 'Pickaxe', 'Mending'),
(2, NULL, 7, 'Pickaxe', 'Sharpness'),
(2, 5, 8, 'Pickaxe', 'Unbreaking '),
(2, 30, 9, 'Pickaxe', 'Silk Touch'),
(2, NULL, 10, 'Pickaxe', 'Power'),
(2, NULL, 11, 'Pickaxe', 'Aqua Affinity'),
(2, NULL, 12, 'Pickaxe', 'Bane of Arthropods'),
(2, NULL, 13, 'Pickaxe', 'Blast Protection'),
(2, NULL, 14, 'Pickaxe', 'Curse of Binding'),
(2, NULL, 15, 'Pickaxe', 'Depth Strider'),
(2, NULL, 16, 'Pickaxe', 'Fire Aspect'),
(2, NULL, 17, 'Pickaxe', 'Fire Protection'),
(2, NULL, 18, 'Pickaxe', 'Flame'),
(2, NULL, 19, 'Pickaxe', 'Frost Walker'),
(2, NULL, 20, 'Pickaxe', 'Knockback'),
(2, NULL, 21, 'Pickaxe', 'Lure'),
(2, NULL, 22, 'Pickaxe', 'Luck of the Sea'),
(2, NULL, 23, 'Pickaxe', 'Respiration'),
(2, NULL, 24, 'Pickaxe', 'Smite'),
(2, NULL, 25, 'Pickaxe', 'Thorns'),
(3, 24, 1, 'Shovel', 'Efficiency'),
(3, NULL, 2, 'Shovel', 'Feather Falling'),
(3, 24, 3, 'Shovel', 'Fortune'),
(3, NULL, 4, 'Shovel', 'Looting'),
(3, 30, 5, 'Shovel', 'Infinity'),
(3, 30, 6, 'Shovel', 'Mending'),
(3, NULL, 7, 'Shovel', 'Sharpness'),
(3, 5, 8, 'Shovel', 'Unbreaking '),
(3, 30, 9, 'Shovel', 'Silk Touch'),
(3, NULL, 10, 'Shovel', 'Power'),
(3, NULL, 11, 'Shovel', 'Aqua Affinity'),
(3, NULL, 12, 'Shovel', 'Bane of Arthropods'),
(3, NULL, 13, 'Shovel', 'Blast Protection'),
(3, NULL, 14, 'Shovel', 'Curse of Binding'),
(3, NULL, 15, 'Shovel', 'Depth Strider'),
(3, NULL, 16, 'Shovel', 'Fire Aspect'),
(3, NULL, 17, 'Shovel', 'Fire Protection'),
(3, NULL, 18, 'Shovel', 'Flame'),
(3, NULL, 19, 'Shovel', 'Frost Walker'),
(3, NULL, 20, 'Shovel', 'Knockback'),
(3, NULL, 21, 'Shovel', 'Lure'),
(3, NULL, 22, 'Shovel', 'Luck of the Sea'),
(3, NULL, 23, 'Shovel', 'Respiration'),
(3, NULL, 24, 'Shovel', 'Smite'),
(3, NULL, 25, 'Shovel', 'Thorns'),
(4, NULL, 1, 'Hoe', 'Efficiency'),
(4, NULL, 2, 'Shovel', 'Feather Falling'),
(4, NULL, 3, 'Shovel', 'Fortune'),
(4, NULL, 4, 'Shovel', 'Looting'),
(4, NULL, 5, 'Shovel', 'Infinity'),
(4, 30, 6, 'Shovel', 'Mending'),
(4, NULL, 7, 'Shovel', 'Sharpness'),
(4, 5, 8, 'Shovel', 'Unbreaking '),
(4, NULL, 9, 'Shovel', 'Silk Touch'),
(4, NULL, 10, 'Shovel', 'Power'),
(4, NULL, 11, 'Shovel', 'Aqua Affinity'),
(4, NULL, 12, 'Shovel', 'Bane of Arthropods'),
(4, NULL, 13, 'Shovel', 'Blast Protection'),
(4, NULL, 14, 'Shovel', 'Curse of Binding'),
(4, NULL, 15, 'Shovel', 'Depth Strider'),
(4, NULL, 16, 'Shovel', 'Fire Aspect'),
(4, NULL, 17, 'Shovel', 'Fire Protection'),
(4, NULL, 18, 'Shovel', 'Flame'),
(4, NULL, 19, 'Shovel', 'Frost Walker'),
(4, NULL, 20, 'Shovel', 'Knockback'),
(4, NULL, 21, 'Shovel', 'Lure'),
(4, NULL, 22, 'Shovel', 'Luck of the Sea'),
(4, NULL, 23, 'Shovel', 'Respiration'),
(4, NULL, 24, 'Shovel', 'Smite'),
(4, NULL, 25, 'Shovel', 'Thorns'),
(5, NULL, 1, 'Fishing Rod', 'Efficiency'),
(5, NULL, 2, 'Fishing Rod', 'Feather Falling'),
(5, NULL, 3, 'Fishing Rod', 'Fortune'),
(5, NULL, 4, 'Fishing Rod', 'Looting'),
(5, NULL, 5, 'Fishing Rod', 'Infinity'),
(5, 30, 6, 'Fishing Rod', 'Mending'),
(5, NULL, 7, 'Fishing Rod', 'Sharpness'),
(5, 5, 8, 'Fishing Rod', 'Unbreaking '),
(5, NULL, 9, 'Fishing Rod', 'Silk Touch'),
(5, NULL, 10, 'Fishing Rod', 'Power'),
(5, NULL, 11, 'Fishing Rod', 'Aqua Affinity'),
(5, NULL, 12, 'Fishing Rod', 'Bane of Arthropods'),
(5, NULL, 13, 'Fishing Rod', 'Blast Protection'),
(5, 5, 14, 'Fishing Rod', 'Curse of Binding'),
(5, NULL, 15, 'Fishing Rod', 'Depth Strider'),
(5, NULL, 16, 'Fishing Rod', 'Fire Aspect'),
(5, NULL, 17, 'Fishing Rod', 'Fire Protection'),
(5, NULL, 18, 'Fishing Rod', 'Flame'),
(5, NULL, 19, 'Fishing Rod', 'Frost Walker'),
(5, NULL, 20, 'Fishing Rod', 'Knockback'),
(5, 5, 21, 'Fishing Rod', 'Lure'),
(5, 18, 22, 'Fishing Rod', 'Luck of the Sea'),
(5, NULL, 23, 'Fishing Rod', 'Respiration'),
(5, NULL, 24, 'Fishing Rod', 'Smite'),
(5, NULL, 25, 'Fishing Rod', 'Thorns'),
(6, NULL, 1, 'Lead', 'Efficiency'),
(6, NULL, 2, 'Lead', 'Feather Falling'),
(6, NULL, 3, 'Lead', 'Fortune'),
(6, NULL, 4, 'Lead', 'Looting'),
(6, NULL, 5, 'Lead', 'Infinity'),
(6, NULL, 6, 'Lead', 'Mending'),
(6, NULL, 7, 'Lead', 'Sharpness'),
(6, NULL, 8, 'Lead', 'Unbreaking '),
(6, NULL, 9, 'Lead', 'Silk Touch'),
(6, NULL, 10, 'Lead', 'Power'),
(6, NULL, 11, 'Lead', 'Aqua Affinity'),
(6, NULL, 12, 'Lead', 'Bane of Arthropods'),
(6, NULL, 13, 'Lead', 'Blast Protection'),
(6, NULL, 14, 'Lead', 'Curse of Binding'),
(6, NULL, 15, 'Lead', 'Depth Strider'),
(6, NULL, 16, 'Lead', 'Fire Aspect'),
(6, NULL, 17, 'Lead', 'Fire Protection'),
(6, NULL, 18, 'Lead', 'Flame'),
(6, NULL, 19, 'Lead', 'Frost Walker'),
(6, NULL, 20, 'Lead', 'Knockback'),
(6, NULL, 21, 'Lead', 'Lure'),
(6, NULL, 22, 'Lead', 'Luck of the Sea'),
(6, NULL, 23, 'Lead', 'Respiration'),
(6, NULL, 24, 'Lead', 'Smite'),
(6, NULL, 25, 'Lead', 'Thorns'),
(7, NULL, 1, 'Shears', 'Efficiency'),
(7, NULL, 2, 'Shears', 'Feather Falling'),
(7, NULL, 3, 'Shears', 'Fortune'),
(7, NULL, 4, 'Shears', 'Looting'),
(7, NULL, 5, 'Shears', 'Infinity'),
(7, 30, 6, 'Shears', 'Mending'),
(7, NULL, 7, 'Shears', 'Sharpness'),
(7, 5, 8, 'Shears', 'Unbreaking '),
(7, NULL, 9, 'Shears', 'Silk Touch'),
(7, NULL, 10, 'Shears', 'Power'),
(7, NULL, 11, 'Shears', 'Aqua Affinity'),
(7, NULL, 12, 'Shears', 'Bane of Arthropods'),
(7, NULL, 13, 'Shears', 'Blast Protection'),
(7, NULL, 14, 'Shears', 'Curse of Binding'),
(7, NULL, 15, 'Shears', 'Depth Strider'),
(7, NULL, 16, 'Shears', 'Fire Aspect'),
(7, NULL, 17, 'Shears', 'Fire Protection'),
(7, NULL, 18, 'Shears', 'Flame'),
(7, NULL, 19, 'Shears', 'Frost Walker'),
(7, NULL, 20, 'Shears', 'Knockback'),
(7, NULL, 21, 'Shears', 'Lure'),
(7, NULL, 22, 'Shears', 'Luck of the Sea'),
(7, NULL, 23, 'Shears', 'Respiration'),
(7, NULL, 24, 'Shears', 'Smite'),
(7, NULL, 25, 'Shears', 'Thorns'),
(8, NULL, 1, 'Flint and Steel', 'Efficiency'),
(8, NULL, 2, 'Flint and Steel', 'Feather Falling'),
(8, NULL, 3, 'Flint and Steel', 'Fortune'),
(8, NULL, 4, 'Flint and Steel', 'Looting'),
(8, NULL, 5, 'Flint and Steel', 'Infinity'),
(8, NULL, 6, 'Flint and Steel', 'Mending'),
(8, NULL, 7, 'Flint and Steel', 'Sharpness'),
(8, 5, 8, 'Flint and Steel', 'Unbreaking '),
(8, NULL, 9, 'Flint and Steel', 'Silk Touch'),
(8, NULL, 10, 'Flint and Steel', 'Power'),
(8, NULL, 11, 'Flint and Steel', 'Aqua Affinity'),
(8, NULL, 12, 'Flint and Steel', 'Bane of Arthropods'),
(8, NULL, 13, 'Flint and Steel', 'Blast Protection'),
(8, NULL, 14, 'Flint and Steel', 'Curse of Binding'),
(8, NULL, 15, 'Flint and Steel', 'Depth Strider'),
(8, NULL, 16, 'Flint and Steel', 'Fire Aspect'),
(8, NULL, 17, 'Flint and Steel', 'Fire Protection'),
(8, NULL, 18, 'Flint and Steel', 'Flame'),
(8, NULL, 19, 'Flint and Steel', 'Frost Walker'),
(8, NULL, 20, 'Flint and Steel', 'Knockback'),
(8, NULL, 21, 'Flint and Steel', 'Lure'),
(8, NULL, 22, 'Flint and Steel', 'Luck of the Sea'),
(8, NULL, 23, 'Flint and Steel', 'Respiration'),
(8, NULL, 24, 'Flint and Steel', 'Smite'),
(8, NULL, 25, 'Flint and Steel', 'Thorns'),
(9, NULL, 1, 'Shield', 'Efficiency'),
(9, NULL, 2, 'Shield', 'Feather Falling'),
(9, NULL, 3, 'Shield', 'Fortune'),
(9, NULL, 4, 'Shield', 'Looting'),
(9, NULL, 5, 'Shield', 'Infinity'),
(9, 30, 6, 'Shield', 'Mending'),
(9, NULL, 7, 'Shield', 'Sharpness'),
(9, 5, 8, 'Shield', 'Unbreaking '),
(9, NULL, 9, 'Shield', 'Silk Touch'),
(9, NULL, 10, 'Shield', 'Power'),
(9, NULL, 11, 'Shield', 'Aqua Affinity'),
(9, NULL, 12, 'Shield', 'Bane of Arthropods'),
(9, NULL, 13, 'Shield', 'Blast Protection'),
(9, NULL, 14, 'Shield', 'Curse of Binding'),
(9, NULL, 15, 'Shield', 'Depth Strider'),
(9, NULL, 16, 'Shield', 'Fire Aspect'),
(9, NULL, 17, 'Shield', 'Fire Protection'),
(9, NULL, 18, 'Shield', 'Flame'),
(9, NULL, 19, 'Shield', 'Frost Walker'),
(9, NULL, 20, 'Shield', 'Knockback'),
(9, NULL, 21, 'Shield', 'Lure'),
(9, NULL, 22, 'Shield', 'Luck of the Sea'),
(9, NULL, 23, 'Shield', 'Respiration'),
(9, NULL, 24, 'Shield', 'Smite'),
(9, NULL, 25, 'Shield', 'Thorns'),
(10, NULL, 1, 'Carrott on a Stick', 'Efficiency'),
(10, NULL, 2, 'Carrott on a Stick', 'Feather Falling'),
(10, NULL, 3, 'Carrott on a Stick', 'Fortune'),
(10, NULL, 4, 'Carrott on a Stick', 'Looting'),
(10, NULL, 5, 'Carrott on a Stick', 'Infinity'),
(10, NULL, 6, 'Carrott on a Stick', 'Mending'),
(10, NULL, 7, 'Carrott on a Stick', 'Sharpness'),
(10, NULL, 8, 'Carrott on a Stick', 'Unbreaking '),
(10, NULL, 9, 'Carrott on a Stick', 'Silk Touch'),
(10, NULL, 10, 'Carrott on a Stick', 'Power'),
(10, NULL, 11, 'Carrott on a Stick', 'Aqua Affinity'),
(10, NULL, 12, 'Carrott on a Stick', 'Bane of Arthropods'),
(10, NULL, 13, 'Carrott on a Stick', 'Blast Protection'),
(10, NULL, 14, 'Carrott on a Stick', 'Curse of Binding'),
(10, NULL, 15, 'Carrott on a Stick', 'Depth Strider'),
(10, NULL, 16, 'Carrott on a Stick', 'Fire Aspect'),
(10, NULL, 17, 'Carrott on a Stick', 'Fire Protection'),
(10, NULL, 18, 'Carrott on a Stick', 'Flame'),
(10, NULL, 19, 'Carrott on a Stick', 'Frost Walker'),
(10, NULL, 20, 'Carrott on a Stick', 'Knockback'),
(10, NULL, 21, 'Carrott on a Stick', 'Lure'),
(10, NULL, 22, 'Carrott on a Stick', 'Luck of the Sea'),
(10, NULL, 23, 'Carrott on a Stick', 'Respiration'),
(10, NULL, 24, 'Carrott on a Stick', 'Smite'),
(10, NULL, 25, 'Carrott on a Stick', 'Thorns'),
(11, NULL, 1, 'Bow', 'Efficiency'),
(11, NULL, 2, 'Bow', 'Feather Falling'),
(11, NULL, 3, 'Bow', 'Fortune'),
(11, 30, 4, 'Bow', 'Looting'),
(11, 30, 5, 'Bow', 'Infinity'),
(11, 30, 6, 'Bow', 'Mending'),
(11, NULL, 7, 'Bow', 'Sharpness'),
(11, 5, 8, 'Bow', 'Unbreaking '),
(11, NULL, 9, 'Bow', 'Silk Touch'),
(11, 24, 10, 'Bow', 'Power'),
(11, NULL, 11, 'Bow', 'Aqua Affinity'),
(11, NULL, 12, 'Bow', 'Bane of Arthropods'),
(11, NULL, 13, 'Bow', 'Blast Protection'),
(11, NULL, 14, 'Bow', 'Curse of Binding'),
(11, NULL, 15, 'Bow', 'Depth Strider'),
(11, NULL, 16, 'Bow', 'Fire Aspect'),
(11, NULL, 17, 'Bow', 'Fire Protection'),
(11, 30, 18, 'Bow', 'Flame'),
(11, NULL, 19, 'Bow', 'Frost Walker'),
(11, 5, 20, 'Bow', 'Knockback'),
(11, NULL, 21, 'Bow', 'Lure'),
(11, NULL, 22, 'Bow', 'Luck of the Sea'),
(11, NULL, 23, 'Bow', 'Respiration'),
(11, NULL, 24, 'Bow', 'Smite'),
(11, NULL, 25, 'Bow', 'Thorns');

-- --------------------------------------------------------

--
-- Table structure for table `Tool_Information`
--

CREATE TABLE `Tool_Information` (
  `Base_Tool_Type` int(5) NOT NULL,
  `Base_Tool_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tool_Information`
--

INSERT INTO `Tool_Information` (`Base_Tool_Type`, `Base_Tool_Name`) VALUES
(1, 'Axe'),
(2, 'Pickaxe'),
(3, 'Shovel'),
(4, 'Hoe'),
(5, 'Fishing Rod'),
(6, 'Lead'),
(7, 'Shears'),
(8, 'Flint and Steel'),
(9, 'Shield'),
(10, 'Carrot on a Stick'),
(11, 'Bow');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Block`
--
ALTER TABLE `Block`
  ADD PRIMARY KEY (`Block_ID`),
  ADD KEY `IDX_FK_EFFECTIVE_TOOL_ID` (`Effective_Tool`),
  ADD KEY `IDX_FK_DROPPED_ID` (`Dropped_When_Broken`);

--
-- Indexes for table `Enchantment`
--
ALTER TABLE `Enchantment`
  ADD PRIMARY KEY (`Enchantment_ID`);

--
-- Indexes for table `Item`
--
ALTER TABLE `Item`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `Tool`
--
ALTER TABLE `Tool`
  ADD PRIMARY KEY (`Tool_ID`),
  ADD KEY `fkIdx_37` (`Item_ID`),
  ADD KEY `fkIdx_79` (`Base_Tool_Type`);

--
-- Indexes for table `Tool_Enchantment`
--
ALTER TABLE `Tool_Enchantment`
  ADD PRIMARY KEY (`Base_Tool_Type`,`Enchantment_ID`),
  ADD KEY `fkIdx_85` (`Base_Tool_Type`),
  ADD KEY `fkIdx_88` (`Enchantment_ID`);

--
-- Indexes for table `Tool_Information`
--
ALTER TABLE `Tool_Information`
  ADD PRIMARY KEY (`Base_Tool_Type`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Block`
--
ALTER TABLE `Block`
  ADD CONSTRAINT `FK_DROPPED` FOREIGN KEY (`Dropped_When_Broken`) REFERENCES `Item` (`Item_ID`),
  ADD CONSTRAINT `FK_EFFECTIVE_TOOL` FOREIGN KEY (`Effective_Tool`) REFERENCES `Tool` (`Tool_ID`);

--
-- Constraints for table `Tool`
--
ALTER TABLE `Tool`
  ADD CONSTRAINT `FK_37` FOREIGN KEY (`Item_ID`) REFERENCES `Item` (`Item_ID`),
  ADD CONSTRAINT `FK_79` FOREIGN KEY (`Base_Tool_Type`) REFERENCES `Tool_Information` (`Base_Tool_Type`);

--
-- Constraints for table `Tool_Enchantment`
--
ALTER TABLE `Tool_Enchantment`
  ADD CONSTRAINT `FK_85` FOREIGN KEY (`Base_Tool_Type`) REFERENCES `Tool_Information` (`Base_Tool_Type`),
  ADD CONSTRAINT `FK_88` FOREIGN KEY (`Enchantment_ID`) REFERENCES `Enchantment` (`Enchantment_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
