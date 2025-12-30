-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2025 at 02:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eatdannys`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Soup', '2025-04-29 00:53:53', '2025-04-29 00:53:53'),
(2, 'Pastries', '2025-04-29 00:53:53', '2025-04-29 00:53:53'),
(3, 'Grills', '2025-04-29 00:53:53', '2025-04-29 00:53:53'),
(4, 'Meals', '2025-04-29 00:53:53', '2025-04-29 00:53:53');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `prices` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`prices`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--
INSERT INTO `meals` (`id`, `category_id`, `name`, `description`, `prices`, `created_at`, `updated_at`) VALUES
(1, 1, 'Efo Riro with Fish', 'Rich Nigerian spinach stew slow-cooked with tender fish, palm oil, and vibrant spices for an authentic, comforting flavor.', '[{"size": "2L", "price": 60}, {"size": "3L", "price": 75}, {"size": "6L", "price": 135}]', NULL, '2025-06-08 17:49:31'),
(2, 1, 'Efo Riro with Assorted', 'Hearty Nigerian spinach stew loaded with assorted meats, palm oil, and bold spices for a flavorful traditional experience.', '[{"size": "2L", "price": 60}, {"size": "3L", "price": 75}, {"size": "6L", "price": 135}]', NULL, NULL),
(3, 1, 'Egusi Soup', 'Creamy melon seed soup packed with vegetables, meats, and spices – a classic Nigerian favorite.', '[{"size": "2L", "price": 60}, {"size": "3L", "price": 85}, {"size": "6L", "price": 155}]', NULL, NULL),
(4, 1, 'Oha Soup', 'Aromatic Eastern Nigerian soup with oha leaves, thickened with cocoyam and rich meats.', '[{"size": "2L", "price": 95}, {"size": "3L", "price": 140}, {"size": "6L", "price": 260}]', NULL, NULL),
(5, 1, 'Banga Soup', 'Delicious palm fruit soup from the Niger Delta, infused with spices and assorted proteins.', '[{"size": "2L", "price": 90}, {"size": "3L", "price": 135}, {"size": "6L", "price": 250}]', NULL, NULL),
(6, 1, 'Ogbono Soup', 'Draw soup made from ogbono seeds, with a smooth texture and rich meaty flavors.', '[{"size": "2L", "price": 90}, {"size": "3L", "price": 135}, {"size": "6L", "price": 250}]', NULL, NULL),
(7, 1, 'Bitter Leaf Soup', 'Flavorful soup with washed bitter leaves, assorted meats, and traditional spices.', '[{"size": "2L", "price": 90}, {"size": "3L", "price": 135}, {"size": "6L", "price": 250}]', NULL, NULL),
(8, 1, 'Seafood Okro', 'Viscous okra soup brimming with fresh seafood for a delightful coastal taste.', '[{"size": "2L", "price": 70}, {"size": "3L", "price": 100}, {"size": "6L", "price": 190}]', NULL, NULL),
(9, 1, 'Ofada/Avamase (Red)', 'Spicy designer stew with bleached palm oil, locust beans, and assorted meats (red version).', '[{"size": "2L", "price": 80}, {"size": "3L", "price": 120}, {"size": "6L", "price": 240}]', NULL, NULL),
(10, 1, 'Ofada/Ayamase (Green)', 'Vibrant green designer stew with unbleached palm oil, peppers, and assorted proteins.', '[{"size": "2L", "price": 70}, {"size": "3L", "price": 100}, {"size": "6L", "price": 200}]', NULL, NULL),
(11, 1, 'Cow Leg Pepper Soup', 'Spicy, aromatic pepper soup with tender cow leg pieces – perfect appetizer.', '[{"size": "2L", "price": 70}, {"size": "3L", "price": 95}, {"size": "6L", "price": 180}]', NULL, NULL),
(12, 1, 'Catfish Pepper Soup', 'Light, spicy pepper soup featuring fresh catfish and bold Nigerian spices.', '[{"size": "2L", "price": 70}, {"size": "3L", "price": 95}, {"size": "6L", "price": 180}]', NULL, NULL),
(13, 1, 'Assorted Pepper Soup', 'Zesty pepper soup with a mix of meats for a warming, flavorful kick.', '[{"size": "2L", "price": 60}, {"size": "3L", "price": 90}, {"size": "6L", "price": 175}]', NULL, NULL),
(14, 1, 'Gbegiri (Bean Soup)', 'Smooth, creamy bean soup – a Yoruba staple often paired with amala or ewedu.', '[{"size": "2L", "price": 35}, {"size": "3L", "price": 60}, {"size": "6L", "price": 95}]', NULL, NULL),
(15, 1, 'Ewedu', 'Draw soup from jute leaves, blended smooth and seasoned simply.', '[{"size": "2L", "price": 35}, {"size": "3L", "price": 60}, {"size": "6L", "price": 95}]', NULL, NULL),
(16, 1, 'Chicken Stew', 'Rich tomato-based stew with tender chicken pieces and aromatic spices.', '[{"size": "2L", "price": 60}, {"size": "3L", "price": 85}, {"size": "6L", "price": 150}]', NULL, NULL),
(17, 1, 'Turkey Stew', 'Flavorful stew with juicy turkey chunks in a spicy tomato base.', '[{"size": "2L", "price": 70}, {"size": "3L", "price": 95}, {"size": "6L", "price": 175}]', NULL, NULL),
(18, 1, 'Fish Stew', 'Hearty stew featuring fresh fish in a robust, peppery tomato sauce.', '[{"size": "2L", "price": 80}, {"size": "3L", "price": 120}, {"size": "6L", "price": 200}]', NULL, NULL),
(19, 1, 'Beef Stew', 'Savory beef stew simmered with tomatoes, peppers, and onions.', '[{"size": "2L", "price": 80}, {"size": "3L", "price": 120}, {"size": "6L", "price": 230}]', NULL, NULL),
(20, 1, 'Goat Meat Stew', 'Spicy goat meat stew with deep flavors from slow cooking.', '[{"size": "2L", "price": 90}, {"size": "3L", "price": 130}, {"size": "6L", "price": 240}]', NULL, NULL),
(21, 1, 'Assorted Stew', 'Tomato stew packed with assorted meats for maximum flavor.', '[{"size": "2L", "price": 70}, {"size": "3L", "price": 110}, {"size": "6L", "price": 200}]', NULL, NULL),
(22, 2, 'Midi Meat Pie (12 Pieces)', 'Flaky pastry filled with seasoned minced meat (12 midi-sized pieces).', '[{"size": "12 pieces", "price": 35}]', NULL, NULL),
(23, 2, 'Puff Puff (5 Dozens - 60 Pieces)', 'Soft, fluffy deep-fried dough balls – sweet Nigerian snack (60 pieces).', '[{"size": "60 pieces", "price": 30}]', NULL, NULL),
(24, 2, 'Puff Puff (120 Pieces)', 'Golden, sweet puff puff balls perfect for parties (120 pieces).', '[{"size": "120 pieces", "price": 60}]', NULL, NULL),
(25, 2, 'Puff Puff (240 Pieces)', 'Large batch of delicious, fluffy puff puff (240 pieces).', '[{"size": "240 pieces", "price": 120}]', NULL, NULL),
(26, 2, 'Sausage Rolls (12 Pieces)', 'Crispy pastry wrapped around savory sausage (12 pieces).', '[{"size": "12 pieces", "price": 35}]', NULL, NULL),
(27, 2, 'Chicken Pie (12 Pieces)', 'Buttery pie crust with spiced chicken filling (12 pieces).', '[{"size": "12 pieces", "price": 40}]', NULL, NULL),
(28, 2, 'Fish Rolls (12 Pieces)', 'Crunchy rolls stuffed with seasoned fish (12 pieces).', '[{"size": "12 pieces", "price": 25}]', NULL, NULL),
(29, 2, 'Chinchin (1KG)', 'Crunchy, sweet fried dough snacks – addictive Nigerian treat (1kg).', '[{"size": "1KG", "price": 35}]', NULL, NULL),
(30, 2, 'Corn Straw', 'Crispy, savory corn-based straw snacks in a convenient pack.', '[{"size": "1 Pack", "price": 30}]', NULL, NULL),
(31, 2, 'Coconut Chips', 'Crunchy, lightly sweetened coconut slices – healthy snack pack.', '[{"size": "1 Pack", "price": 30}]', NULL, NULL),
(32, 2, 'Scotch Eggs (12 Pieces)', 'Boiled eggs wrapped in sausage meat, breaded and fried (12 pieces).', '[{"size": "12 pieces", "price": 60}]', NULL, NULL),
(33, 2, 'Samosa (12 Pieces)', 'Spicy triangular pastries filled with meat or veggies (12 pieces).', '[{"size": "12 pieces", "price": 15}]', NULL, NULL),
(34, 2, 'Spring Rolls (12 Pieces)', 'Crispy wrappers with savory filling (12 pieces).', '[{"size": "12 pieces", "price": 15}]', NULL, NULL),
(35, 2, 'Shrimp Rolls (12 Pieces)', 'Delicious rolls filled with seasoned shrimp (12 pieces).', '[{"size": "12 pieces", "price": 25}]', NULL, NULL),
(36, 2, 'Buns Small Tray (5 Dozens)', 'Fluffy Nigerian buns – great for events (60 pieces).', '[{"size": "60 pieces", "price": 50}]', NULL, NULL),
(37, 3, 'Beef Suya', 'Grilled, spiced beef skewers – iconic Nigerian street food.', '[{"size": "Small", "price": 55}, {"size": "Medium", "price": 100}, {"size": "Large", "price": 200}]', NULL, NULL),
(38, 3, 'Peppered Chicken', 'Spicy, peppered grilled or fried chicken pieces.', '[{"size": "Small", "price": 60}, {"size": "Medium", "price": 85}, {"size": "Large", "price": 120}]', NULL, NULL),
(39, 3, 'Peppered Turkey', 'Tender turkey chunks in a hot pepper sauce.', '[{"size": "Small", "price": 75}, {"size": "Medium", "price": 125}, {"size": "Large", "price": 160}]', NULL, NULL),
(40, 3, 'Peppered Fish', 'Grilled fish coated in spicy pepper mix.', '[{"size": "Small", "price": 65}, {"size": "Medium", "price": 90}, {"size": "Large", "price": 130}]', NULL, NULL),
(41, 3, 'Peppered Beef', 'Juicy beef pieces tossed in fiery pepper sauce.', '[{"size": "Small", "price": 110}, {"size": "Medium", "price": 165}, {"size": "Large", "price": 230}]', NULL, NULL),
(42, 3, 'Goat Meat Asun', 'Spicy grilled goat meat – smoky and bold.', '[{"size": "Small", "price": 250}, {"size": "Medium", "price": 350}, {"size": "Large", "price": 500}]', NULL, NULL),
(43, 3, 'Gizzdodo', 'Diced gizzard and plantain in pepper sauce.', '[{"size": "Small", "price": 110}, {"size": "Medium", "price": 165}, {"size": "Large", "price": 230}]', NULL, NULL),
(44, 3, 'Gizzard Skewer', 'Grilled chicken gizzard on skewers with spices.', '[{"size": "Small", "price": 110}, {"size": "Medium", "price": 165}, {"size": "Large", "price": 230}]', NULL, NULL),
(45, 3, 'Fried Plantain', 'Golden, crispy fried ripe plantain slices (dodo).', '[{"size": "Small", "price": 65}, {"size": "Medium", "price": 90}, {"size": "Large", "price": 120}]', NULL, NULL),
(46, 4, 'Jollof Rice', 'Classic party jollof rice – smoky, spicy, and flavorful.', '[{"size": "Small", "price": 40}, {"size": "Medium", "price": 60}, {"size": "Large", "price": 90}, {"size": "Cooler", "price": 190}]', NULL, NULL),
(47, 4, 'Asun Jollof', 'Jollof rice topped with spicy asun (peppered goat meat).', '[{"size": "Small", "price": 90}, {"size": "Medium", "price": 145}, {"size": "Large", "price": 250}]', NULL, NULL),
(48, 4, 'Fried Rice', 'Nigerian-style fried rice with veggies and proteins.', '[{"size": "Small", "price": 50}, {"size": "Medium", "price": 75}, {"size": "Large", "price": 100}, {"size": "Cooler", "price": 250}]', NULL, NULL),
(49, 4, 'Coconut Rice', 'Fragrant rice cooked in coconut milk with mild spices.', '[{"size": "Small", "price": 55}, {"size": "Medium", "price": 80}, {"size": "Large", "price": 110}, {"size": "Cooler", "price": 250}]', NULL, NULL),
(50, 4, 'Native Rice', 'Traditional palm oil rice with local flavors.', '[{"size": "Small", "price": 65}, {"size": "Medium", "price": 90}, {"size": "Large", "price": 120}, {"size": "Cooler", "price": 300}]', NULL, NULL),
(51, 4, 'Ofada Rice', 'Local brown rice served with special ofada sauce.', '[{"size": "Small", "price": 65}, {"size": "Medium", "price": 90}, {"size": "Large", "price": 120}, {"size": "Cooler", "price": 300}]', NULL, NULL),
(52, 4, 'Porridge (Asaro)', 'Creamy yam porridge with palm oil and veggies.', '[{"size": "Small", "price": 90}, {"size": "Medium", "price": 140}, {"size": "Large", "price": 180}, {"size": "Cooler", "price": 360}]', NULL, NULL),
(53, 4, 'Moi Moi Elewe', 'Steamed bean pudding wrapped in leaves for authentic taste.', '[{"size": "6 Pieces", "price": 30}, {"size": "12 Pieces", "price": 50}, {"quantity": "24 Pieces", "price": 100}]', NULL, NULL),
(54, 2, 'Amala let see the difference', 'Authentic yam flour swallow with smooth texture and smoky flavor – perfect with soups.', '[{"size": "12 Pieces", "price": 50}]', NULL, '2025-06-09 21:23:07'),
(55, 4, 'Pounded Yam', 'Smooth, elastic pounded yam swallow (12 portions).', '[{"size": "12 Pieces", "price": 45}]', NULL, NULL),
(56, 4, 'Semo A Dozen', 'Firm semolina swallow, ready to pair with soup (12 portions).', '[{"size": "12 Pieces", "price": 50}]', NULL, NULL),
(57, 4, 'Eba A Dozen', 'Cassava-based garri swallow – light and versatile (12 portions).', '[{"size": "12 Pieces", "price": 45}]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meal_photos`
--



-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `menu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`menu`)),
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`address`)),
  `total_price` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `session_id`, `user_id`, `menu`, `address`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(4, 'cs_test_b1uNYPN3w9CZ65FQNVPjYxkmtxtKmkutlwDBCpgfoqSZyV5SBF1oi3giVM', NULL, '[{\"name\":\"Efo Riro with Assorted\",\"unit_price\":60,\"quantity\":1},{\"name\":\"Eba A Dozen\",\"unit_price\":45,\"quantity\":2},{\"name\":\"Banga Soup\",\"unit_price\":135,\"quantity\":1}]', NULL, 285.00, 'unpaid', '2025-05-21 17:01:24', '2025-05-21 17:01:24'),
(5, 'cs_test_b1U6DPbK6Bz4pzp0k0Z5vYLdLlgx7RGLxKSF7VF0EVVQEhOE5GVNTMboTz', NULL, '[{\"name\":\"Efo Riro with Assorted\",\"unit_price\":60,\"quantity\":1},{\"name\":\"Eba A Dozen\",\"unit_price\":45,\"quantity\":2},{\"name\":\"Banga Soup\",\"unit_price\":135,\"quantity\":1}]', NULL, 285.00, 'unpaid', '2025-05-21 17:01:25', '2025-05-21 17:01:25'),
(6, 'cs_test_b1L9cNGQpWjhjiDoHqp086CHI0HQqLERNv0X7MeJiJecs5zhffjukhMHaM', NULL, '[{\"name\":\"Efo Riro with Assorted\",\"unit_price\":60,\"quantity\":1},{\"name\":\"Eba A Dozen\",\"unit_price\":45,\"quantity\":2},{\"name\":\"Banga Soup\",\"unit_price\":135,\"quantity\":1}]', NULL, 285.00, 'unpaid', '2025-05-21 17:01:27', '2025-05-21 17:01:27'),
(7, 'cs_test_b1AbwQRFYc1HZkhlYrfQAxaFv5c3fYeHCEqMki0DWIAZmmVKgIXvyWtIFH', NULL, '[{\"name\":\"Efo Riro with Assorted\",\"unit_price\":60,\"quantity\":1},{\"name\":\"Eba A Dozen\",\"unit_price\":45,\"quantity\":2}]', NULL, 150.00, 'unpaid', '2025-05-21 19:35:27', '2025-05-21 19:35:27'),
(8, 'cs_test_b19SFzmNchRtaNNIP672fy0G1yt199n72NJiXbAEQ4F32cBKbkT04XeQaW', 3, '[{\"name\":\"Banga Soup\",\"unit_price\":90,\"quantity\":1},{\"name\":\"Eba A Dozen\",\"unit_price\":45,\"quantity\":1}]', '\"{\\\"city\\\":\\\"Barrie, Ontario, Canada\\\",\\\"country\\\":\\\"CA\\\",\\\"line1\\\":\\\"100 little Avenue, Barrie\\\",\\\"line2\\\":\\\"101 Apmt\\\",\\\"postal_code\\\":\\\"L0G 1W0\\\",\\\"state\\\":\\\"ON\\\"}\"', 135.00, 'paid', '2025-05-21 20:34:46', '2025-05-21 20:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1cHTmtUe5KTMcs1J5rBsLeRXzZE7yXooNEtPg8ja', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkdKUGo3YW1Fc2w0SjM5ems3SkJiYnJ3a05DWFlac3VyaU1rdjVJWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1749787424),
('3cNJ9qMGwboUhg7AYB6NHz2bvibBp4YgdxpHNIrv', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemxGNzRuRGJtVlFsVUlLZnp3MU1NUUhuVHNjTWFpOTh4RlJqVmVTWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749818437),
('4Z7lwQzip57lmfdxJMGPzoIXNvDdTkgG6bpB8sKB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGl0QzNRbURKZEdJSWl2TXJDVkpiNUMyUVQwbFVZZlF1NTRJbW1waiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1749887658),
('5SzeQIwHH06qVVO7PhBjbITWiIPEQj5hGlRBJokS', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicngyaUNtM1V1dmdKbjdkc0JkZEROeFdqajNKMFRnY1owVEJENlBSQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749818434),
('6JdgjdcNah9D18gKoaC0nEEkLfqqRvYKWtrFbJZJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSE5FcHJCNVZCNHlXUDE4SWQybGRvdXRRMVdGTWE0aEFjNkRSaUpjVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749817912),
('9BYrh1cOrKOasVp014JjvdiG0jJaH7tD7tv7t2Vl', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFprSDljczhJQXpLeGRvT1dNTlhHa25lT3E0TGlKMTJNZXRDa0xOWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749818409),
('euNdHT6Yx5JZs8kS6mVu1A3hGMyZ5cfZiuc4P4lN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2VBRmkxdFJpelJadEJmTUF5WWtlTG05WjBQOTVYMHU4V2JBRGd0RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749817917),
('GHy8W9Uzt8u6Jr53LFyvZzwHdHNRDmLhdcTJpcRW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlZDbTB1dEVKMHZTYVNuTDFyQ3lTTXhGRzVldG1EYmZsbU9OeENHTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749817904),
('GLKrZMnR0JM1DW3mI4o5HgK7tk83nJkFyHNpLlFm', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUw3UHFsYVZvb1FiR2VpdXlQbEV1SGs4ckl6aldmTGZaczRKVFdYRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749818416),
('GXWw7b7js2BtQJWNSSVhXCZE7HulpXV0H4XMzFq0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkw0ejdQajhxM295MkRyYkY0emVSWEU0Z0tsSzRCRHQ1ODdtU1ZuVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749818420),
('iT9YLzcKoDIrRQiyIiV0t2yl58q5C4aAXVV8IDgD', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoieER5MlpUb25lOXE4ZU9VNklVV3BDaFd6U3lTanR2clFvRzMxdlI3NiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbWVhbHMvNTQvZWRpdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTIkajVLdjJDQnhSS0VVNENBbHFSSm1OZThGLnc1bm4xeE1salI3T1pRL0hDMVpMQkpuNlZndEsiO30=', 1749516240),
('ItDGBRlN9B9YV4xqv5Cb7ktqqty9d5mtsrUkdzz3', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXZCZ0ppM0dKcVlQakNyTEtEeXREaGhiQmRTVGxiNkRkQWVSdmIzTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749818405),
('IXjFkvYRT1LoUGwjCgwUnFmwAw7XYbeTgQ4k25sQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSENDbmNnczRheFZtMlZxYlFqQTdjT1QwQm1yVWxJaldxMmo2anFxWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749817857),
('KfmyiWYAEgogxyLz7bnip1VJWxBwrW1RfbyXdgXC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHNZUGhpb2VIanlvbFdMOUlxTzFBOUJQUkpkQUdvWDFGZThFMjZzUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1749993766),
('lEzg6phIBtyj5k76uKGDX8ufAait2w0aPqV6Dzlw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGcxOHVrZ2NlNVd3cG1mbm4xc05BZzBDdFRqcWJrc25xdGpodGliUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1749694019),
('LnnHcDOLtUYbxI1vn4bfzPVrp3Eji4VQqFkfwohP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid1I4U0U3cU4xZ01FdkU0NmlXaWJtYTBWN2haTnpZZ1Q1TUR6UWhndSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL21lYWxzLzU0L2VkaXQiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1749646447),
('mn6WfZyIVdaJbToFHq8wCzhWCz6IQAUra2lCOoFu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV205Wk9PRHV4Y2NMS21TSGdFdWlGT0E3RURVQU8zSWV5UG05VVhtcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1749818436),
('Nn6ME6x0wc3wayVGq4NTE7gwAtid2JCeZ724ZdbQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDNaUldLMEkxbjFidVFaYVdxZFlRTXJUSDBpSUZZMHZ2OFVkY3BTTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1749732662),
('Pv3x6XYSqEGWoKFGHg9AKnDOORLQVXTe4mk9wHLK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZk90RWtDNWVkMEc3M0ZVVTJJcHk0MlZHeDNDNDgzV2ZwbXd4WXRYcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749817910),
('uff1Z7Jv7LZtiKdUcdEMMC8k8PQWfXEEpFRoKq9I', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnlFRzA0RTNLNGRyZlNVS3RIZ3VpWHJTdVliaHduMzB4cHI5dG0xVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749818413),
('wcbTOFwZDPa842lJwhNVdYi9Ht9WrQ7azqiVpBQ7', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEprenFISUpZNjA2Vm5sdGR1NFp0ek4xQzE0cExlUWVjdjRjdmdWcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749817788),
('XepYBjOiolfUqTA5HCP4SzjRsVDmqGyTYgAtE98I', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmI0SmFWdmNFOGFINjV0SWpzdkJrSWcxbDhKQ1ZUUktBU0w0SmMzMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749817907);

-- --------------------------------------------------------


--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Test User', 'test@example.com', '2025-05-19 21:49:59', '$2y$12$6K6yW3j9QamKp66eb8Q5c.9bywIL/yZFp0COmHv9pmlYPPvfqVh0i', NULL, NULL, NULL, 'bSooNosY5A', NULL, NULL, '2025-05-19 21:50:00', '2025-05-19 21:50:00', 'user'),
(3, 'Sophia Pierce', 'remetiw@mailinator.com', NULL, '$2y$12$j5Kv2CBxRKEU4CAlqRJmNe8F.w5nn1xMljR7OZQ/HC1ZLBJn6VgtK', NULL, NULL, NULL, 'icdeBhIzGGGOAmRafX4ZPc9ICb8F5gpMPLtFtJJ5pmDsqBneWIfnUIW5DPlJ', NULL, NULL, '2025-05-21 20:56:23', '2025-05-21 22:52:21', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meals_category_id_foreign` (`category_id`);

--
-- Indexes for table `meal_photos`
--
ALTER TABLE `meal_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meal_photos_meal_id_foreign` (`meal_id`);


--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_session_id_unique` (`session_id`),
  ADD KEY `user_oder` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `meal_photos`
--
ALTER TABLE `meal_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `meal_photos`
--
ALTER TABLE `meal_photos`
  ADD CONSTRAINT `meal_photos_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `user_oder` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
