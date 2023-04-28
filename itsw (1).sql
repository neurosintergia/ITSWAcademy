-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-04-2023 a las 00:39:43
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `itsw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audiences`
--

CREATE TABLE `audiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `audiences`
--

INSERT INTO `audiences` (`id`, `name`, `course_id`, `created_at`, `updated_at`) VALUES
(428, 'Psicólogas y psicólogos', 200, '2023-04-26 03:02:26', '2023-04-26 03:02:26'),
(429, 'Terapeutas holísticos con certificaciones', 200, '2023-04-26 03:02:30', '2023-04-26 03:02:30'),
(430, 'General', 201, '2023-04-26 03:09:53', '2023-04-26 03:09:53'),
(431, 'General', 202, '2023-04-26 05:01:08', '2023-04-26 05:01:08'),
(432, 'General', 203, '2023-04-26 05:05:18', '2023-04-26 05:05:18'),
(433, 'General', 204, '2023-04-26 05:16:23', '2023-04-26 05:16:23'),
(434, 'General', 205, '2023-04-26 05:18:00', '2023-04-26 05:18:00'),
(435, 'General', 207, '2023-04-26 05:42:18', '2023-04-26 05:42:18'),
(436, 'General', 208, '2023-04-26 05:48:31', '2023-04-26 05:48:31'),
(437, 'En desarrollo', 209, '2023-04-26 06:08:36', '2023-04-26 06:37:08'),
(438, 'En desarrollo', 210, '2023-04-26 06:43:07', '2023-04-26 06:43:07'),
(439, 'Completo', 211, '2023-04-26 06:46:17', '2023-04-26 06:46:29'),
(440, 'Completo', 212, '2023-04-26 06:53:23', '2023-04-26 06:53:23'),
(441, 'Completo', 213, '2023-04-26 06:57:49', '2023-04-26 06:57:49'),
(442, 'Completo', 214, '2023-04-26 07:04:41', '2023-04-26 07:04:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'perferendis', '2022-07-19 21:20:13', '2022-07-19 21:20:13'),
(2, 'accusantium', '2022-07-19 21:20:13', '2022-07-19 21:20:13'),
(3, 'dolor', '2022-07-19 21:20:13', '2022-07-19 21:20:13'),
(4, 'omnis', '2022-07-19 21:20:13', '2022-07-19 21:20:13'),
(5, 'veniam', '2022-07-19 21:20:13', '2022-07-19 21:20:13'),
(6, 'deleniti', '2022-07-19 21:20:13', '2022-07-19 21:20:13'),
(7, 'magni', '2022-07-19 21:20:13', '2022-07-19 21:20:13'),
(8, 'ut', '2022-07-19 21:20:13', '2022-07-19 21:20:13'),
(9, 'exercitationem', '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(10, 'pariatur', '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(11, 'ut', '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(12, 'et', '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(13, 'soluta', '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(14, 'modi', '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(15, 'est', '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(16, 'assumenda', '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(17, 'est', '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(18, 'qui', '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(19, 'id', '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(20, 'qui', '2022-07-19 21:20:14', '2022-07-19 21:20:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brand_categorii`
--

CREATE TABLE `brand_categorii` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `categorii_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `brand_categorii`
--

INSERT INTO `brand_categorii` (`id`, `brand_id`, `categorii_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 6, 2, NULL, NULL),
(7, 7, 2, NULL, NULL),
(8, 8, 2, NULL, NULL),
(9, 9, 3, NULL, NULL),
(10, 10, 3, NULL, NULL),
(11, 11, 3, NULL, NULL),
(12, 12, 3, NULL, NULL),
(13, 13, 4, NULL, NULL),
(14, 14, 4, NULL, NULL),
(15, 15, 4, NULL, NULL),
(16, 16, 4, NULL, NULL),
(17, 17, 5, NULL, NULL),
(18, 18, 5, NULL, NULL),
(19, 19, 5, NULL, NULL),
(20, 20, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tecnología', '2022-07-19 21:20:13', '2023-04-05 23:58:47'),
(6, 'Desarrollo Web', '2023-04-05 23:59:04', '2023-04-22 02:50:37'),
(7, 'Desarrollo Humano', '2023-04-20 01:31:55', '2023-04-20 01:31:55'),
(8, 'Soporte', '2023-04-22 02:50:52', '2023-04-22 02:50:52'),
(9, 'Desarrollo de la Consciencia', '2023-04-22 02:51:08', '2023-04-23 04:19:39'),
(10, 'Robótica', '2023-04-22 02:51:16', '2023-04-22 02:51:28'),
(11, 'Servidores', '2023-04-22 02:51:35', '2023-04-22 02:51:35'),
(12, 'Formaciones', '2023-04-22 02:51:44', '2023-04-22 02:51:44'),
(13, 'MasterClass', '2023-04-26 07:56:36', '2023-04-26 07:56:36'),
(14, 'Seminarios', '2023-04-26 08:05:47', '2023-04-26 08:05:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriis`
--

CREATE TABLE `categoriis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoriis`
--

INSERT INTO `categoriis` (`id`, `name`, `slug`, `icon`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'laptop', '<i class=\"fas fa-laptop\"></i>', 'categoriis/', '2022-07-19 21:20:13', '2022-07-19 21:20:13'),
(2, 'Desktop', 'desktop', '<i class=\"fas fa-tv\"></i>', 'categoriis/', '2022-07-19 21:20:13', '2022-07-19 21:20:13'),
(3, 'Redes', 'redes', '<i class=\"fas fa-network-wired\"></i>', 'categoriis/', '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(4, 'Seguridad', 'seguridad', '<i class=\"fas fa-shield-alt\"></i>', 'categoriis/', '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(5, 'Moda', 'moda', '<i class=\"fas fa-tshirt\"></i>', 'categoriis/', '2022-07-19 21:20:14', '2022-07-19 21:20:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoris`
--

CREATE TABLE `categoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoris`
--

INSERT INTO `categoris` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(7, 'Innovación', 'innovacion', '2023-04-06 00:00:13', '2023-04-06 00:00:13'),
(8, 'Investigación', 'investigacion', '2023-04-06 00:00:32', '2023-04-06 00:00:32'),
(9, 'Nuerosintergia', 'nuerosintergia', '2023-04-11 23:51:21', '2023-04-22 02:55:01'),
(10, 'Desarrollo Web', 'desarrollo-web', '2023-04-22 02:55:14', '2023-04-22 02:55:14'),
(11, 'Tecnología', 'tecnologia', '2023-04-22 02:55:36', '2023-04-22 02:55:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `cost` double(8,2) NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `name`, `cost`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'consectetur', 10.00, 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(2, 'voluptate', 5.00, 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(3, 'sunt', 10.00, 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(4, 'rerum', 10.00, 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(5, 'voluptatum', 5.00, 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(6, 'praesentium', 15.00, 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(7, 'amet', 5.00, 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(8, 'illo', 15.00, 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(9, 'pariatur', 5.00, 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(10, 'veritatis', 15.00, 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(11, 'nihil', 15.00, 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(12, 'voluptas', 15.00, 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(13, 'ut', 5.00, 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(14, 'omnis', 5.00, 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(15, 'eaque', 5.00, 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(16, 'expedita', 15.00, 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(17, 'laudantium', 15.00, 3, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(18, 'dolorum', 15.00, 3, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(19, 'voluptate', 5.00, 3, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(20, 'harum', 5.00, 3, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(21, 'praesentium', 10.00, 3, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(22, 'vero', 10.00, 3, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(23, 'sit', 10.00, 3, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(24, 'voluptatibus', 10.00, 3, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(25, 'maxime', 5.00, 4, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(26, 'veniam', 15.00, 4, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(27, 'nisi', 5.00, 4, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(28, 'magni', 10.00, 4, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(29, 'esse', 10.00, 4, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(30, 'et', 5.00, 4, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(31, 'tempora', 5.00, 4, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(32, 'aliquam', 15.00, 4, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(33, 'harum', 10.00, 5, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(34, 'at', 10.00, 5, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(35, 'fugiat', 10.00, 5, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(36, 'maiores', 10.00, 5, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(37, 'velit', 5.00, 5, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(38, 'culpa', 15.00, 5, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(39, 'odio', 5.00, 5, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(40, 'cupiditate', 5.00, 5, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(41, 'voluptates', 5.00, 6, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(42, 'qui', 10.00, 6, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(43, 'totam', 5.00, 6, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(44, 'aspernatur', 10.00, 6, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(45, 'qui', 15.00, 6, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(46, 'voluptatem', 15.00, 6, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(47, 'consequatur', 15.00, 6, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(48, 'fugiat', 5.00, 6, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(49, 'et', 5.00, 7, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(50, 'quia', 15.00, 7, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(51, 'dolore', 10.00, 7, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(52, 'eius', 15.00, 7, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(53, 'non', 10.00, 7, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(54, 'magnam', 15.00, 7, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(55, 'voluptatem', 5.00, 7, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(56, 'aut', 15.00, 7, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(57, 'facere', 15.00, 8, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(58, 'harum', 15.00, 8, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(59, 'tempore', 10.00, 8, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(60, 'perferendis', 15.00, 8, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(61, 'reiciendis', 10.00, 8, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(62, 'natus', 5.00, 8, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(63, 'dolore', 10.00, 8, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(64, 'voluptatem', 5.00, 8, '2022-07-19 21:23:10', '2022-07-19 21:23:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'white', '2022-07-19 21:23:05', '2022-07-19 21:23:05'),
(2, 'blue', '2022-07-19 21:23:05', '2022-07-19 21:23:05'),
(3, 'red', '2022-07-19 21:23:05', '2022-07-19 21:23:05'),
(4, 'black', '2022-07-19 21:23:06', '2022-07-19 21:23:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color_product`
--

CREATE TABLE `color_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `color_product`
--

INSERT INTO `color_product` (`id`, `color_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 43, 10, NULL, NULL),
(2, 2, 43, 10, NULL, NULL),
(3, 3, 43, 10, NULL, NULL),
(4, 4, 43, 10, NULL, NULL),
(5, 1, 46, 10, NULL, NULL),
(6, 2, 46, 10, NULL, NULL),
(7, 3, 46, 10, NULL, NULL),
(8, 4, 46, 10, NULL, NULL),
(9, 1, 78, 10, NULL, NULL),
(10, 2, 78, 10, NULL, NULL),
(11, 3, 78, 10, NULL, NULL),
(12, 4, 78, 10, NULL, NULL),
(13, 1, 79, 10, NULL, NULL),
(14, 2, 79, 10, NULL, NULL),
(15, 3, 79, 10, NULL, NULL),
(16, 4, 79, 10, NULL, NULL),
(17, 1, 81, 10, NULL, NULL),
(18, 2, 81, 10, NULL, NULL),
(19, 3, 81, 10, NULL, NULL),
(20, 4, 81, 10, NULL, NULL),
(21, 1, 84, 10, NULL, NULL),
(22, 2, 84, 10, NULL, NULL),
(23, 3, 84, 10, NULL, NULL),
(24, 4, 84, 10, NULL, NULL),
(25, 1, 85, 10, NULL, NULL),
(26, 2, 85, 10, NULL, NULL),
(27, 3, 85, 10, NULL, NULL),
(28, 4, 85, 10, NULL, NULL),
(29, 1, 87, 10, NULL, NULL),
(30, 2, 87, 10, NULL, NULL),
(31, 3, 87, 10, NULL, NULL),
(32, 4, 87, 10, NULL, NULL),
(33, 1, 115, 10, NULL, NULL),
(34, 2, 115, 10, NULL, NULL),
(35, 3, 115, 10, NULL, NULL),
(36, 4, 115, 10, NULL, NULL),
(37, 1, 158, 10, NULL, NULL),
(38, 2, 158, 10, NULL, NULL),
(39, 3, 158, 10, NULL, NULL),
(40, 4, 158, 10, NULL, NULL),
(41, 1, 164, 10, NULL, NULL),
(42, 2, 164, 10, NULL, NULL),
(43, 3, 164, 10, NULL, NULL),
(44, 4, 164, 10, NULL, NULL),
(45, 1, 165, 10, NULL, NULL),
(46, 2, 165, 10, NULL, NULL),
(47, 3, 165, 10, NULL, NULL),
(48, 4, 165, 10, NULL, NULL),
(49, 1, 189, 10, NULL, NULL),
(50, 2, 189, 10, NULL, NULL),
(51, 3, 189, 10, NULL, NULL),
(52, 4, 189, 10, NULL, NULL),
(53, 1, 200, 10, NULL, NULL),
(54, 2, 200, 10, NULL, NULL),
(55, 3, 200, 10, NULL, NULL),
(56, 4, 200, 10, NULL, NULL),
(57, 1, 222, 10, NULL, NULL),
(58, 2, 222, 10, NULL, NULL),
(59, 3, 222, 10, NULL, NULL),
(60, 4, 222, 10, NULL, NULL),
(61, 1, 233, 10, NULL, NULL),
(62, 2, 233, 10, NULL, NULL),
(63, 3, 233, 10, NULL, NULL),
(64, 4, 233, 10, NULL, NULL),
(65, 1, 245, 10, NULL, NULL),
(66, 2, 245, 10, NULL, NULL),
(67, 3, 245, 10, NULL, NULL),
(68, 4, 245, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color_size`
--

CREATE TABLE `color_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `color_size`
--

INSERT INTO `color_size` (`id`, `color_id`, `size_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, NULL, NULL),
(2, 2, 1, 10, NULL, NULL),
(3, 3, 1, 10, NULL, NULL),
(4, 4, 1, 10, NULL, NULL),
(5, 1, 2, 10, NULL, NULL),
(6, 2, 2, 10, NULL, NULL),
(7, 3, 2, 10, NULL, NULL),
(8, 4, 2, 10, NULL, NULL),
(9, 1, 3, 10, NULL, NULL),
(10, 2, 3, 10, NULL, NULL),
(11, 3, 3, 10, NULL, NULL),
(12, 4, 3, 10, NULL, NULL),
(13, 1, 4, 10, NULL, NULL),
(14, 2, 4, 10, NULL, NULL),
(15, 3, 4, 10, NULL, NULL),
(16, 4, 4, 10, NULL, NULL),
(17, 1, 5, 10, NULL, NULL),
(18, 2, 5, 10, NULL, NULL),
(19, 3, 5, 10, NULL, NULL),
(20, 4, 5, 10, NULL, NULL),
(21, 1, 6, 10, NULL, NULL),
(22, 2, 6, 10, NULL, NULL),
(23, 3, 6, 10, NULL, NULL),
(24, 4, 6, 10, NULL, NULL),
(25, 1, 7, 10, NULL, NULL),
(26, 2, 7, 10, NULL, NULL),
(27, 3, 7, 10, NULL, NULL),
(28, 4, 7, 10, NULL, NULL),
(29, 1, 8, 10, NULL, NULL),
(30, 2, 8, 10, NULL, NULL),
(31, 3, 8, 10, NULL, NULL),
(32, 4, 8, 10, NULL, NULL),
(33, 1, 9, 10, NULL, NULL),
(34, 2, 9, 10, NULL, NULL),
(35, 3, 9, 10, NULL, NULL),
(36, 4, 9, 10, NULL, NULL),
(37, 1, 10, 10, NULL, NULL),
(38, 2, 10, 10, NULL, NULL),
(39, 3, 10, 10, NULL, NULL),
(40, 4, 10, 10, NULL, NULL),
(41, 1, 11, 10, NULL, NULL),
(42, 2, 11, 10, NULL, NULL),
(43, 3, 11, 10, NULL, NULL),
(44, 4, 11, 10, NULL, NULL),
(45, 1, 12, 10, NULL, NULL),
(46, 2, 12, 10, NULL, NULL),
(47, 3, 12, 10, NULL, NULL),
(48, 4, 12, 10, NULL, NULL),
(49, 1, 13, 10, NULL, NULL),
(50, 2, 13, 10, NULL, NULL),
(51, 3, 13, 10, NULL, NULL),
(52, 4, 13, 10, NULL, NULL),
(53, 1, 14, 10, NULL, NULL),
(54, 2, 14, 10, NULL, NULL),
(55, 3, 14, 10, NULL, NULL),
(56, 4, 14, 10, NULL, NULL),
(57, 1, 15, 10, NULL, NULL),
(58, 2, 15, 10, NULL, NULL),
(59, 3, 15, 10, NULL, NULL),
(60, 4, 15, 10, NULL, NULL),
(61, 1, 16, 10, NULL, NULL),
(62, 2, 16, 10, NULL, NULL),
(63, 3, 16, 10, NULL, NULL),
(64, 4, 16, 10, NULL, NULL),
(65, 1, 17, 10, NULL, NULL),
(66, 2, 17, 10, NULL, NULL),
(67, 3, 17, 10, NULL, NULL),
(68, 4, 17, 10, NULL, NULL),
(69, 1, 18, 10, NULL, NULL),
(70, 2, 18, 10, NULL, NULL),
(71, 3, 18, 10, NULL, NULL),
(72, 4, 18, 10, NULL, NULL),
(73, 1, 19, 10, NULL, NULL),
(74, 2, 19, 10, NULL, NULL),
(75, 3, 19, 10, NULL, NULL),
(76, 4, 19, 10, NULL, NULL),
(77, 1, 20, 10, NULL, NULL),
(78, 2, 20, 10, NULL, NULL),
(79, 3, 20, 10, NULL, NULL),
(80, 4, 20, 10, NULL, NULL),
(81, 1, 21, 10, NULL, NULL),
(82, 2, 21, 10, NULL, NULL),
(83, 3, 21, 10, NULL, NULL),
(84, 4, 21, 10, NULL, NULL),
(85, 1, 22, 10, NULL, NULL),
(86, 2, 22, 10, NULL, NULL),
(87, 3, 22, 10, NULL, NULL),
(88, 4, 22, 10, NULL, NULL),
(89, 1, 23, 10, NULL, NULL),
(90, 2, 23, 10, NULL, NULL),
(91, 3, 23, 10, NULL, NULL),
(92, 4, 23, 10, NULL, NULL),
(93, 1, 24, 10, NULL, NULL),
(94, 2, 24, 10, NULL, NULL),
(95, 3, 24, 10, NULL, NULL),
(96, 4, 24, 10, NULL, NULL),
(97, 1, 25, 10, NULL, NULL),
(98, 2, 25, 10, NULL, NULL),
(99, 3, 25, 10, NULL, NULL),
(100, 4, 25, 10, NULL, NULL),
(101, 1, 26, 10, NULL, NULL),
(102, 2, 26, 10, NULL, NULL),
(103, 3, 26, 10, NULL, NULL),
(104, 4, 26, 10, NULL, NULL),
(105, 1, 27, 10, NULL, NULL),
(106, 2, 27, 10, NULL, NULL),
(107, 3, 27, 10, NULL, NULL),
(108, 4, 27, 10, NULL, NULL),
(109, 1, 28, 10, NULL, NULL),
(110, 2, 28, 10, NULL, NULL),
(111, 3, 28, 10, NULL, NULL),
(112, 4, 28, 10, NULL, NULL),
(113, 1, 29, 10, NULL, NULL),
(114, 2, 29, 10, NULL, NULL),
(115, 3, 29, 10, NULL, NULL),
(116, 4, 29, 10, NULL, NULL),
(117, 1, 30, 10, NULL, NULL),
(118, 2, 30, 10, NULL, NULL),
(119, 3, 30, 10, NULL, NULL),
(120, 4, 30, 10, NULL, NULL),
(121, 1, 31, 10, NULL, NULL),
(122, 2, 31, 10, NULL, NULL),
(123, 3, 31, 10, NULL, NULL),
(124, 4, 31, 10, NULL, NULL),
(125, 1, 32, 10, NULL, NULL),
(126, 2, 32, 10, NULL, NULL),
(127, 3, 32, 10, NULL, NULL),
(128, 4, 32, 10, NULL, NULL),
(129, 1, 33, 10, NULL, NULL),
(130, 2, 33, 10, NULL, NULL),
(131, 3, 33, 10, NULL, NULL),
(132, 4, 33, 10, NULL, NULL),
(133, 1, 34, 10, NULL, NULL),
(134, 2, 34, 10, NULL, NULL),
(135, 3, 34, 10, NULL, NULL),
(136, 4, 34, 10, NULL, NULL),
(137, 1, 35, 10, NULL, NULL),
(138, 2, 35, 10, NULL, NULL),
(139, 3, 35, 10, NULL, NULL),
(140, 4, 35, 10, NULL, NULL),
(141, 1, 36, 10, NULL, NULL),
(142, 2, 36, 10, NULL, NULL),
(143, 3, 36, 10, NULL, NULL),
(144, 4, 36, 10, NULL, NULL),
(145, 1, 37, 10, NULL, NULL),
(146, 2, 37, 10, NULL, NULL),
(147, 3, 37, 10, NULL, NULL),
(148, 4, 37, 10, NULL, NULL),
(149, 1, 38, 10, NULL, NULL),
(150, 2, 38, 10, NULL, NULL),
(151, 3, 38, 10, NULL, NULL),
(152, 4, 38, 10, NULL, NULL),
(153, 1, 39, 10, NULL, NULL),
(154, 2, 39, 10, NULL, NULL),
(155, 3, 39, 10, NULL, NULL),
(156, 4, 39, 10, NULL, NULL),
(157, 1, 40, 10, NULL, NULL),
(158, 2, 40, 10, NULL, NULL),
(159, 3, 40, 10, NULL, NULL),
(160, 4, 40, 10, NULL, NULL),
(161, 1, 41, 10, NULL, NULL),
(162, 2, 41, 10, NULL, NULL),
(163, 3, 41, 10, NULL, NULL),
(164, 4, 41, 10, NULL, NULL),
(165, 1, 42, 10, NULL, NULL),
(166, 2, 42, 10, NULL, NULL),
(167, 3, 42, 10, NULL, NULL),
(168, 4, 42, 10, NULL, NULL),
(169, 1, 43, 10, NULL, NULL),
(170, 2, 43, 10, NULL, NULL),
(171, 3, 43, 10, NULL, NULL),
(172, 4, 43, 10, NULL, NULL),
(173, 1, 44, 10, NULL, NULL),
(174, 2, 44, 10, NULL, NULL),
(175, 3, 44, 10, NULL, NULL),
(176, 4, 44, 10, NULL, NULL),
(177, 1, 45, 10, NULL, NULL),
(178, 2, 45, 10, NULL, NULL),
(179, 3, 45, 10, NULL, NULL),
(180, 4, 45, 10, NULL, NULL),
(181, 1, 46, 10, NULL, NULL),
(182, 2, 46, 10, NULL, NULL),
(183, 3, 46, 10, NULL, NULL),
(184, 4, 46, 10, NULL, NULL),
(185, 1, 47, 10, NULL, NULL),
(186, 2, 47, 10, NULL, NULL),
(187, 3, 47, 10, NULL, NULL),
(188, 4, 47, 10, NULL, NULL),
(189, 1, 48, 10, NULL, NULL),
(190, 2, 48, 10, NULL, NULL),
(191, 3, 48, 10, NULL, NULL),
(192, 4, 48, 10, NULL, NULL),
(193, 1, 49, 10, NULL, NULL),
(194, 2, 49, 10, NULL, NULL),
(195, 3, 49, 10, NULL, NULL),
(196, 4, 49, 10, NULL, NULL),
(197, 1, 50, 10, NULL, NULL),
(198, 2, 50, 10, NULL, NULL),
(199, 3, 50, 10, NULL, NULL),
(200, 4, 50, 10, NULL, NULL),
(201, 1, 51, 10, NULL, NULL),
(202, 2, 51, 10, NULL, NULL),
(203, 3, 51, 10, NULL, NULL),
(204, 4, 51, 10, NULL, NULL),
(205, 1, 52, 10, NULL, NULL),
(206, 2, 52, 10, NULL, NULL),
(207, 3, 52, 10, NULL, NULL),
(208, 4, 52, 10, NULL, NULL),
(209, 1, 53, 10, NULL, NULL),
(210, 2, 53, 10, NULL, NULL),
(211, 3, 53, 10, NULL, NULL),
(212, 4, 53, 10, NULL, NULL),
(213, 1, 54, 10, NULL, NULL),
(214, 2, 54, 10, NULL, NULL),
(215, 3, 54, 10, NULL, NULL),
(216, 4, 54, 10, NULL, NULL),
(217, 1, 55, 10, NULL, NULL),
(218, 2, 55, 10, NULL, NULL),
(219, 3, 55, 10, NULL, NULL),
(220, 4, 55, 10, NULL, NULL),
(221, 1, 56, 10, NULL, NULL),
(222, 2, 56, 10, NULL, NULL),
(223, 3, 56, 10, NULL, NULL),
(224, 4, 56, 10, NULL, NULL),
(225, 1, 57, 10, NULL, NULL),
(226, 2, 57, 10, NULL, NULL),
(227, 3, 57, 10, NULL, NULL),
(228, 4, 57, 10, NULL, NULL),
(229, 1, 58, 10, NULL, NULL),
(230, 2, 58, 10, NULL, NULL),
(231, 3, 58, 10, NULL, NULL),
(232, 4, 58, 10, NULL, NULL),
(233, 1, 59, 10, NULL, NULL),
(234, 2, 59, 10, NULL, NULL),
(235, 3, 59, 10, NULL, NULL),
(236, 4, 59, 10, NULL, NULL),
(237, 1, 60, 10, NULL, NULL),
(238, 2, 60, 10, NULL, NULL),
(239, 3, 60, 10, NULL, NULL),
(240, 4, 60, 10, NULL, NULL),
(241, 1, 61, 10, NULL, NULL),
(242, 2, 61, 10, NULL, NULL),
(243, 3, 61, 10, NULL, NULL),
(244, 4, 61, 10, NULL, NULL),
(245, 1, 62, 10, NULL, NULL),
(246, 2, 62, 10, NULL, NULL),
(247, 3, 62, 10, NULL, NULL),
(248, 4, 62, 10, NULL, NULL),
(249, 1, 63, 10, NULL, NULL),
(250, 2, 63, 10, NULL, NULL),
(251, 3, 63, 10, NULL, NULL),
(252, 4, 63, 10, NULL, NULL),
(253, 1, 64, 10, NULL, NULL),
(254, 2, 64, 10, NULL, NULL),
(255, 3, 64, 10, NULL, NULL),
(256, 4, 64, 10, NULL, NULL),
(257, 1, 65, 10, NULL, NULL),
(258, 2, 65, 10, NULL, NULL),
(259, 3, 65, 10, NULL, NULL),
(260, 4, 65, 10, NULL, NULL),
(261, 1, 66, 10, NULL, NULL),
(262, 2, 66, 10, NULL, NULL),
(263, 3, 66, 10, NULL, NULL),
(264, 4, 66, 10, NULL, NULL),
(265, 1, 67, 10, NULL, NULL),
(266, 2, 67, 10, NULL, NULL),
(267, 3, 67, 10, NULL, NULL),
(268, 4, 67, 10, NULL, NULL),
(269, 1, 68, 10, NULL, NULL),
(270, 2, 68, 10, NULL, NULL),
(271, 3, 68, 10, NULL, NULL),
(272, 4, 68, 10, NULL, NULL),
(273, 1, 69, 10, NULL, NULL),
(274, 2, 69, 10, NULL, NULL),
(275, 3, 69, 10, NULL, NULL),
(276, 4, 69, 10, NULL, NULL),
(277, 1, 70, 10, NULL, NULL),
(278, 2, 70, 10, NULL, NULL),
(279, 3, 70, 10, NULL, NULL),
(280, 4, 70, 10, NULL, NULL),
(281, 1, 71, 10, NULL, NULL),
(282, 2, 71, 10, NULL, NULL),
(283, 3, 71, 10, NULL, NULL),
(284, 4, 71, 10, NULL, NULL),
(285, 1, 72, 10, NULL, NULL),
(286, 2, 72, 10, NULL, NULL),
(287, 3, 72, 10, NULL, NULL),
(288, 4, 72, 10, NULL, NULL),
(289, 1, 73, 10, NULL, NULL),
(290, 2, 73, 10, NULL, NULL),
(291, 3, 73, 10, NULL, NULL),
(292, 4, 73, 10, NULL, NULL),
(293, 1, 74, 10, NULL, NULL),
(294, 2, 74, 10, NULL, NULL),
(295, 3, 74, 10, NULL, NULL),
(296, 4, 74, 10, NULL, NULL),
(297, 1, 75, 10, NULL, NULL),
(298, 2, 75, 10, NULL, NULL),
(299, 3, 75, 10, NULL, NULL),
(300, 4, 75, 10, NULL, NULL),
(301, 1, 76, 10, NULL, NULL),
(302, 2, 76, 10, NULL, NULL),
(303, 3, 76, 10, NULL, NULL),
(304, 4, 76, 10, NULL, NULL),
(305, 1, 77, 10, NULL, NULL),
(306, 2, 77, 10, NULL, NULL),
(307, 3, 77, 10, NULL, NULL),
(308, 4, 77, 10, NULL, NULL),
(309, 1, 78, 10, NULL, NULL),
(310, 2, 78, 10, NULL, NULL),
(311, 3, 78, 10, NULL, NULL),
(312, 4, 78, 10, NULL, NULL),
(313, 1, 79, 10, NULL, NULL),
(314, 2, 79, 10, NULL, NULL),
(315, 3, 79, 10, NULL, NULL),
(316, 4, 79, 10, NULL, NULL),
(317, 1, 80, 10, NULL, NULL),
(318, 2, 80, 10, NULL, NULL),
(319, 3, 80, 10, NULL, NULL),
(320, 4, 80, 10, NULL, NULL),
(321, 1, 81, 10, NULL, NULL),
(322, 2, 81, 10, NULL, NULL),
(323, 3, 81, 10, NULL, NULL),
(324, 4, 81, 10, NULL, NULL),
(325, 1, 82, 10, NULL, NULL),
(326, 2, 82, 10, NULL, NULL),
(327, 3, 82, 10, NULL, NULL),
(328, 4, 82, 10, NULL, NULL),
(329, 1, 83, 10, NULL, NULL),
(330, 2, 83, 10, NULL, NULL),
(331, 3, 83, 10, NULL, NULL),
(332, 4, 83, 10, NULL, NULL),
(333, 1, 84, 10, NULL, NULL),
(334, 2, 84, 10, NULL, NULL),
(335, 3, 84, 10, NULL, NULL),
(336, 4, 84, 10, NULL, NULL),
(337, 1, 85, 10, NULL, NULL),
(338, 2, 85, 10, NULL, NULL),
(339, 3, 85, 10, NULL, NULL),
(340, 4, 85, 10, NULL, NULL),
(341, 1, 86, 10, NULL, NULL),
(342, 2, 86, 10, NULL, NULL),
(343, 3, 86, 10, NULL, NULL),
(344, 4, 86, 10, NULL, NULL),
(345, 1, 87, 10, NULL, NULL),
(346, 2, 87, 10, NULL, NULL),
(347, 3, 87, 10, NULL, NULL),
(348, 4, 87, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `commentable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` enum('1','2','3') NOT NULL DEFAULT '1',
  `slug` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `title`, `subtitle`, `description`, `status`, `slug`, `user_id`, `level_id`, `category_id`, `price_id`, `created_at`, `updated_at`) VALUES
(190, 'curso prueba', 'curso pruebacurso prueba', '<p>curso pruebacurso pruebacurso pruebacurso pruebacurso prueba</p>', '1', 'curso-prueba', 234, 1, 1, 1, '2023-04-25 20:46:49', '2023-04-25 20:46:49'),
(191, 'Proximamente', 'Proximamente', '<p>Proximamente</p>', '2', 'proximamente', 268, 1, 1, 1, '2023-04-26 02:51:48', '2023-04-26 02:51:55'),
(192, 'Proximamente1', 'Proximamente', '<p>ProximamenteProximamente</p>', '2', 'proximamente1', 268, 1, 1, 1, '2023-04-26 02:52:19', '2023-04-26 02:52:21'),
(193, 'Proximamente2', 'Proximamente', '<p>ProximamenteProximamente</p>', '2', 'proximamente2', 268, 1, 1, 1, '2023-04-26 02:52:47', '2023-04-26 02:52:50'),
(194, 'Proximamente3', 'ProximamenteProximamente', '<p>Proximamente</p>', '2', 'proximamente3', 268, 1, 1, 1, '2023-04-26 02:52:59', '2023-04-26 02:53:01'),
(195, 'Proximamente4', 'Proximamente', '<p>Proximamente</p>', '2', 'proximamente4', 268, 1, 1, 1, '2023-04-26 02:53:13', '2023-04-26 02:53:15'),
(196, 'Proximamente5', 'Proximamente', '<p>ProximamenteProximamenteProximamente</p>', '2', 'proximamente5', 268, 1, 1, 1, '2023-04-26 02:53:35', '2023-04-26 02:53:37'),
(197, 'Proximamente6', 'Proximamente', '<p>ProximamenteProximamente</p>', '2', 'proximamente6', 268, 1, 1, 1, '2023-04-26 02:53:48', '2023-04-26 02:53:50'),
(198, 'Proximamente7', 'ProximamenteProximamente', '<p>ProximamenteProximamenteProximamente</p>', '2', 'proximamente7', 268, 1, 1, 1, '2023-04-26 02:54:04', '2023-04-26 02:54:06'),
(199, 'Proximamente9', 'ProximamenteProximamente', '<p>Proximamente</p>', '2', 'proximamente9', 268, 1, 1, 1, '2023-04-26 02:54:58', '2023-04-26 02:54:59'),
(200, 'FOTENS 2022', 'Certificación en Formación en Terapia con Enfoque Neurosintérgico', '<p>El propósito de FOTENS es formar a psicoterapeutas profesionales con base a elementos teóricos en Neurosintergia ® para la aplicación clínica de apoyo a la salud física, emocional, mental y de conciencia de unidad, con el objetivo de apoyar en su desarrollo y crecimiento personal a las y los pacientes que acuden en busca de apoyo terapéutico.</p>', '3', 'fotens-2022', 236, 9, 12, 14, '2023-04-26 03:01:45', '2023-04-26 05:51:09'),
(201, 'GOEMNS 2022', 'Guía Orientador en Meditación Neurosintérgica', '<p>El objetivo de GOEMNS es preparar guías que promuevan la salud física, emocional y mental a través de la metodología de la meditación neurosintérgica basada en el modelo neurosintérgico®; así como que apoyen en la expansión de la conciencia y desarrollo de habilidades sintérgicas.</p>', '3', 'goemns-2022', 236, 9, 9, 14, '2023-04-26 03:09:02', '2023-04-26 05:51:38'),
(202, 'Master Class - El arbol del dinero', 'Master Class - El árbol de dinero desde la perspectiva neurosintérgica', '<p>Esta MasterClass es<strong> ideal para las personas que creen que&nbsp; hacer dinero, mantener una cifra ideal o incluso ahorrar es complicado. E</strong>ste curso es beneficioso en el aspecto que cambiará el cómo percibes estos conceptos y sus prejuicios.&nbsp;<br>&nbsp;</p><p>A todos nos ha pasado que únicamente nos alcanza para lo necesario y pareciera que nunca tenemos para invertir en nosotros mismos, esto nos provoca cierta frustración ya que podemos llegar a sentir que no tiene caso el seguir trabajando si sabemos que todo lo que se gana se irá en cosas que debes pagar. En otros casos la gente que nos rodea nos llega a decir que el ganar dinero es complicado y tedioso de tal manera que llegamos a adoptar esta idea teniendo como consecuencia el sentir que nunca es suficiente.<br>&nbsp;</p><p>Pero ¡Alto! En cuanto al primer caso se debe a una ineficiente administración de tu dinero y frustrarse no será de mucha ayuda, en el segundo caso terminas aceptando que el tener dinero es complicado y que de alguna manera no lo mereces. Mejor... ¡Pongamos manos a la obra y<strong> cambiemos todo ese esquema de pensamiento</strong> y hagamos que el ahorrarlo, manejarlo y conseguirlo sea sencillo y divertido!</p><p>&nbsp;</p><p><strong>La forma en como vemos al dinero, la forma en lo que lo concebimos y manejamos determina nuestra capacidad de acumularlo, en esta masterclass aprenderás otra forma de dialogar con el basado en la teoría sintérgica.</strong><br>&nbsp;</p>', '3', 'master-class-el-arbol-del-dinero', 236, 1, 13, 9, '2023-04-26 05:00:39', '2023-04-26 08:03:42'),
(203, 'Relaciones Sanas', 'Master Class - Relaciones sanas. Aprende a distinguir cuando una relación es saludable para ti de otra que no lo es.', '<p>El objetivo de esta MasterClass es el guiar a las personas en cuanto a relaciones amorosas.</p><p>Alguna vez a lo largo de nuestra vida nos &nbsp;ha pasado que llegamos a tener por lo menos una relación desasrosa o incluso tóxica. Esto nos puede llevar a pensar que hay algo malo con nosotros mismos o que no estamos hechos para estar en una relación.</p><p>&nbsp;</p><p>Guarda la calma, desafortunadamente muchas personas terminan en relaciones que no son saludables y hay veces donde no sabemos si algo que sucedió dentro de la relación está \"bien\" o inclusive el cómo te hizo sentir y si está bien sentir eso.</p><p>Aquí podemos ayudarte a distinguir algunos de los factores que nos ayudarán a identificar relaciones sanas.</p>', '3', 'relaciones-sanas', 236, 1, 13, 9, '2023-04-26 05:04:37', '2023-04-26 08:03:58'),
(204, 'Transformandonos hacia una nueva persona', 'Master Class - Transformándonos hacia una nueva persona', '<p>La actual <strong>pandemia</strong> (Covid-19) por la que estamos atravesando nos ha causado bastantes estragos en cuanto a el aspecto social como al personal, debido a esto en esta MasterClass encontrarás lo necesario para poder <strong>adaptarte durante y después</strong> de esta crisis mundial, ya que cuando sea el momento de poder salir a trabajar, estudiar o a pasear habrá una diferencia enorme ya que lo que conocíamos como normalidad va a ser desconocida y se adoptará una nueva realidad y una nueva normalidad.</p><p>&nbsp;</p><p>¡Acompáñame a adaptarnos a esta nueva realidad!</p>', '3', 'transformandonos-hacia-una-nueva-persona', 236, 1, 13, 9, '2023-04-26 05:14:47', '2023-04-26 08:04:08'),
(205, 'La nueva concepcion del amor', 'Master Class - La nueva concepción del amor. Analicemos mas los conceptos del amor al avatar y el amor sintérgico.', '<p>En esta MasterClass analizaremos a fondo los conceptos del amor a nuestro avatar y el amor sintérgico en cuestiones románticas, en cómo lo marca la sociedad, desarrollo de amor y autoestima propia, biológicas &nbsp;entre otros…</p>', '3', 'la-nueva-concepcion-del-amor', 236, 1, 13, 9, '2023-04-26 05:17:31', '2023-04-26 08:03:30'),
(206, 'Neuroespacio', 'Conoce más de Neurosintérgia, de la Teoría Sintérgica, de aplicaciones de la expansión de la conciencia y de los Estados de Certeza', '<p>NeuroEspacio, es el programa semanal de Neurosintergia donde se hablan de diversos temas con&nbsp; personas muy interesantes. Aquí podrás encontrar de todo, desde temas y programas divertidos, hasta programas interesantes y sorprendentes!</p>', '3', 'neuroespacio', 236, 2, 9, 1, '2023-04-26 05:24:04', '2023-04-26 05:51:14'),
(207, 'Meditacion Neurosintergica', 'Conoce mas de los niveles de neurosintergia y su aplicación.', '<p>La meditación neurosintérgica es un entrenamiento psicofisiológico basado en tres niveles de complejidad creciente, para estimular la salud física, equilibrar el sistema emocional y mental, así como para entrar en conciencia de unidad, la cual consiste en estar en auto atención sostenida en el cuerpo físico, los pensamientos y las emociones, neutralizando aquellos factores distractores que impiden la auto observación, hasta generar experiencias sintérgicas y de estimulación de capacidades personales propias.&nbsp;</p><p>&nbsp;</p><p>NIVELES:</p><p><strong>Nivel 1. Provocando procesos sanadores.</strong><br>Sanación de cuerpo físico</p><p><strong>Nivel 2. Adecuado para personas que sufren de depresión y ansiedad.</strong><br>Equilibrio emocional y mental</p><p><strong>Nivel 3.Preparación para entrar a espacio sintérgico y experiencia sintérgica.</strong><br>Estado de unidad de conciencia</p>', '3', 'meditacion-neurosintergica', 236, 2, 9, 14, '2023-04-26 05:41:36', '2023-04-26 05:51:26'),
(208, 'La neurosintergia de la felicidad', 'Master Class - La neurosintergia de la felicidad', '<p>Este es una masterclass que te mostrará algunas herramientas para tener momentos más felices. Esta masterclass fue grabada el pasado 18 de noviembre en la Ciudad de México con un grupo presencial y otro a distancia al mismo tiempo. Espero que la disfrutes tanto o más como los que estuvimos en esta capacitación para la vida.</p>', '3', 'la-neurosintergia-de-la-felicidad', 236, 1, 13, 9, '2023-04-26 05:47:41', '2023-04-26 08:03:15'),
(209, 'FOTENS 2023', 'Certificación en Formación en Terapia con Enfoque Neurosintérgico', '<p>El propósito de FOTENS es formar a psicoterapeutas profesionales con base a elementos teóricos en Neurosintergia ® para la aplicación clínica de apoyo a la salud física, emocional, mental y de conciencia de unidad, con el objetivo de apoyar en su desarrollo y crecimiento personal a las y los pacientes que acuden en busca de apoyo terapéutico.</p>', '3', 'fotens-2023', 236, 9, 12, 14, '2023-04-26 05:50:46', '2023-04-26 06:37:35'),
(210, 'GOEMNS 2023', 'Guía Orientador en Meditación Neurosintérgica', '<p>El objetivo de GOEMNS es preparar guías que promuevan la salud física, emocional y mental a través de la metodología de la meditación neurosintérgica basada en el modelo neurosintérgico®; así como que apoyen en la expansión de la conciencia y desarrollo de habilidades sintérgicas.</p>', '3', 'goemns-2023', 236, 9, 12, 14, '2023-04-26 06:41:57', '2023-04-26 07:09:53'),
(211, 'Seminarios Neurosintergia 2022', 'Seminarios Neurosintergia', '<p>Conoce un poco mas de los escritos del Dr. Jacobo Grinberg y sus aplicaciones en la actualidad en Neurosintergia.</p>', '3', 'seminarios-neurosintergia-2022', 236, 2, 14, 11, '2023-04-26 06:45:53', '2023-04-26 08:06:08'),
(212, 'Raices y Ramitas', 'El equilibrio entre el Avatar y el Ser', '<p>El equilibrio entre el avatar y el ser… ¿lo conoces?<br>Lo que no se conoce, no se trabaja. En esta master class Ruth y Aide nos hablarán de estas diferencias y su vinculación para el ser total.&nbsp;<br>¿No sientes curiosidad?</p>', '3', 'raices-y-ramitas', 236, 2, 13, 9, '2023-04-26 06:53:06', '2023-04-26 08:03:04'),
(213, 'Seminario Neurosintergia 2023A', 'La teoría sintérgica y sus aplicaciones - Febrero a Marzo', '<p>¿Quieres entender mejor las bases de la Teoría Sintérgica y sus posibilidasdes prácticas?</p>', '3', 'seminario-neurosintergia-2023a', 236, 2, 14, 11, '2023-04-26 06:57:22', '2023-04-26 08:05:57'),
(214, 'El arbol del dinero 2a edicion', 'Cómo atraer dinero utilizando tus herramientas personales', '<p>Descripción: Muchas veces hemos deseado tener más recursos económicos, y hacemos lo que creemos que es necesario hacer para obtenerlos, sin embargo, vemos con cierta desazón que estos no llegan. En esta Masterclass abordaremos diversos factores que están relacionados a la obtención del dinero, desde la revisión de creencias hasta la elaboración de contratos personales para obtener este preciado recurso. Asimismo, también se revisará en excelente propuesta para recaudar el dinero que tu quieres.</p>', '3', 'el-arbol-del-dinero-2a-edicion', 236, 1, 13, 9, '2023-04-26 07:04:06', '2023-04-26 08:02:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_user`
--

CREATE TABLE `course_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `course_user`
--

INSERT INTO `course_user` (`id`, `course_id`, `user_id`, `created_at`, `updated_at`) VALUES
(84, 190, 267, NULL, NULL),
(85, 190, 266, NULL, NULL),
(87, 206, 236, NULL, NULL),
(88, 210, 116, NULL, NULL),
(90, 210, 177, NULL, NULL),
(91, 210, 183, NULL, NULL),
(92, 210, 184, NULL, NULL),
(93, 210, 185, NULL, NULL),
(97, 210, 176, NULL, NULL),
(98, 210, 186, NULL, NULL),
(100, 207, 266, NULL, NULL),
(102, 207, 116, NULL, NULL),
(103, 207, 183, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'iure', '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(2, 'dicta', '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(3, 'quidem', '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(4, 'quis', '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(5, 'aut', '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(6, 'reprehenderit', '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(7, 'molestiae', '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(8, 'cumque', '2022-07-19 21:23:07', '2022-07-19 21:23:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descriptions`
--

CREATE TABLE `descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `descriptions`
--

INSERT INTO `descriptions` (`id`, `name`, `lesson_id`, `created_at`, `updated_at`) VALUES
(1827, 'Sesión inicial del encuadre del curso: ventajas de la PNS, testimonio y ejercicio de a línea de la vida.\n', 1927, '2023-04-26 03:04:09', '2023-04-26 03:04:09'),
(1828, 'La forma en como vemos al dinero, la forma en lo que lo concebimos y manejamos determina nuestra capacidad de acumularlo, en esta masterclass aprenderás otra forma de dialogar con el basado en la teoría sintérgica.', 1949, '2023-04-26 05:03:02', '2023-04-26 05:03:02'),
(1830, 'En esta charla encontraras algunas alertas importantes de cuando tu relación tiene problemas de codependencias o de psicopatía integrada.', 1950, '2023-04-26 05:13:20', '2023-04-26 05:13:20'),
(1831, 'Transformándonos hacia una nueva persona', 1951, '2023-04-26 05:15:44', '2023-04-26 05:15:44'),
(1832, '¿El amor como un problema? un punto romántico, un modelo social, conoce más de las cuestiones biológicas, como la creación y desarrollo del amor propio. Analicemos más los conceptos del amor al avatar y el amor sintérgico.', 1952, '2023-04-26 05:22:37', '2023-04-26 05:22:37'),
(1833, '1.- Sanación de cuerpo físico:\n\nSana dolores crónicos  y apoya en el proceso de recuperación de la salud ( cirugías, tratamientos crónicos y agudos).', 1997, '2023-04-26 05:43:12', '2023-04-26 05:43:12'),
(1834, '2.- Equilibrio emocional y mental: \n\nDesarrollar la atención neutral tanto en pensamientos como emociones, enclavado en el tiempo presente. Apoya en tratamientos de ansiedad y depresión.', 2000, '2023-04-26 05:44:15', '2023-04-26 05:44:15'),
(1835, '3.- Estado de expansión y unidad de conciencia:\n\nPara aquellas personas que su cuerpo se encuentra sano o con enfermedades controladas,en control de sus pensamientos y emociones, por lo tanto pueden acceder al campo sintérgico, apoyado en el hipercampo del grupo que medita. En este nivel se encuentra el estado de certeza.  En esta etapa, las personas acceden a voluntad y en poco tiempo al campo sintérgico.', 2003, '2023-04-26 05:45:13', '2023-04-26 05:45:13'),
(1836, 'Apropiarte de una propuesta diferente para recaudar dinero', 2027, '2023-04-26 07:05:15', '2023-04-26 07:05:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `districts`
--

INSERT INTO `districts` (`id`, `name`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'est', 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(2, 'voluptas', 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(3, 'consectetur', 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(4, 'corporis', 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(5, 'autem', 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(6, 'quia', 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(7, 'aut', 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(8, 'ut', 1, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(9, 'dolorem', 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(10, 'ad', 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(11, 'nisi', 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(12, 'qui', 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(13, 'vel', 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(14, 'delectus', 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(15, 'nihil', 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(16, 'quasi', 2, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(17, 'et', 3, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(18, 'harum', 3, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(19, 'ut', 3, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(20, 'quia', 3, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(21, 'cupiditate', 3, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(22, 'saepe', 3, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(23, 'odit', 3, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(24, 'cum', 3, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(25, 'recusandae', 4, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(26, 'dolorem', 4, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(27, 'quis', 4, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(28, 'tempora', 4, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(29, 'itaque', 4, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(30, 'alias', 4, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(31, 'quia', 4, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(32, 'architecto', 4, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(33, 'laboriosam', 5, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(34, 'ea', 5, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(35, 'ut', 5, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(36, 'sit', 5, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(37, 'dolorum', 5, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(38, 'placeat', 5, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(39, 'repellat', 5, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(40, 'quasi', 5, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(41, 'sint', 6, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(42, 'sit', 6, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(43, 'eaque', 6, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(44, 'in', 6, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(45, 'voluptas', 6, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(46, 'et', 6, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(47, 'blanditiis', 6, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(48, 'suscipit', 6, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(49, 'ad', 7, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(50, 'sed', 7, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(51, 'ut', 7, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(52, 'voluptatem', 7, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(53, 'id', 7, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(54, 'ipsum', 7, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(55, 'quasi', 7, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(56, 'culpa', 7, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(57, 'cupiditate', 8, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(58, 'aut', 8, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(59, 'laboriosam', 8, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(60, 'aut', 8, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(61, 'culpa', 8, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(62, 'aut', 8, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(63, 'molestiae', 8, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(64, 'repudiandae', 8, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(65, 'quia', 9, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(66, 'in', 9, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(67, 'non', 9, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(68, 'quidem', 9, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(69, 'sint', 9, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(70, 'est', 9, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(71, 'minima', 9, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(72, 'natus', 9, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(73, 'cupiditate', 10, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(74, 'dolor', 10, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(75, 'dolorem', 10, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(76, 'asperiores', 10, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(77, 'sit', 10, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(78, 'quo', 10, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(79, 'ut', 10, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(80, 'repellat', 10, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(81, 'ducimus', 11, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(82, 'vero', 11, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(83, 'est', 11, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(84, 'beatae', 11, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(85, 'expedita', 11, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(86, 'et', 11, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(87, 'neque', 11, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(88, 'non', 11, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(89, 'velit', 12, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(90, 'et', 12, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(91, 'ipsam', 12, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(92, 'sunt', 12, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(93, 'harum', 12, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(94, 'est', 12, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(95, 'mollitia', 12, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(96, 'voluptatem', 12, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(97, 'dolor', 13, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(98, 'magni', 13, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(99, 'eius', 13, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(100, 'deleniti', 13, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(101, 'doloremque', 13, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(102, 'inventore', 13, '2022-07-19 21:23:07', '2022-07-19 21:23:07'),
(103, 'voluptatum', 13, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(104, 'ratione', 13, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(105, 'quae', 14, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(106, 'modi', 14, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(107, 'ipsam', 14, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(108, 'tempora', 14, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(109, 'corporis', 14, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(110, 'quas', 14, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(111, 'doloremque', 14, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(112, 'repudiandae', 14, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(113, 'deserunt', 15, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(114, 'eum', 15, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(115, 'quidem', 15, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(116, 'et', 15, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(117, 'hic', 15, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(118, 'aut', 15, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(119, 'accusamus', 15, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(120, 'rerum', 15, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(121, 'minima', 16, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(122, 'laborum', 16, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(123, 'ipsum', 16, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(124, 'commodi', 16, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(125, 'expedita', 16, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(126, 'consequatur', 16, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(127, 'libero', 16, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(128, 'et', 16, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(129, 'cumque', 17, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(130, 'est', 17, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(131, 'ut', 17, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(132, 'sit', 17, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(133, 'porro', 17, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(134, 'dolorem', 17, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(135, 'nisi', 17, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(136, 'occaecati', 17, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(137, 'quae', 18, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(138, 'accusamus', 18, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(139, 'consequatur', 18, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(140, 'magnam', 18, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(141, 'qui', 18, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(142, 'impedit', 18, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(143, 'placeat', 18, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(144, 'ea', 18, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(145, 'eaque', 19, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(146, 'officia', 19, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(147, 'assumenda', 19, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(148, 'magni', 19, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(149, 'omnis', 19, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(150, 'ut', 19, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(151, 'consequatur', 19, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(152, 'pariatur', 19, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(153, 'quo', 20, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(154, 'alias', 20, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(155, 'et', 20, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(156, 'maxime', 20, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(157, 'occaecati', 20, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(158, 'ipsa', 20, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(159, 'impedit', 20, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(160, 'quia', 20, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(161, 'unde', 21, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(162, 'mollitia', 21, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(163, 'numquam', 21, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(164, 'qui', 21, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(165, 'ipsa', 21, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(166, 'doloremque', 21, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(167, 'sit', 21, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(168, 'molestias', 21, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(169, 'eaque', 22, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(170, 'maxime', 22, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(171, 'sit', 22, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(172, 'accusantium', 22, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(173, 'quia', 22, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(174, 'repellat', 22, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(175, 'sapiente', 22, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(176, 'id', 22, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(177, 'aspernatur', 23, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(178, 'iusto', 23, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(179, 'dicta', 23, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(180, 'sequi', 23, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(181, 'eaque', 23, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(182, 'quo', 23, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(183, 'id', 23, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(184, 'cumque', 23, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(185, 'non', 24, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(186, 'voluptas', 24, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(187, 'dicta', 24, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(188, 'autem', 24, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(189, 'tempore', 24, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(190, 'ad', 24, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(191, 'ut', 24, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(192, 'id', 24, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(193, 'repellat', 25, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(194, 'minima', 25, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(195, 'labore', 25, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(196, 'debitis', 25, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(197, 'aliquam', 25, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(198, 'culpa', 25, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(199, 'sit', 25, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(200, 'dolores', 25, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(201, 'ad', 26, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(202, 'nesciunt', 26, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(203, 'non', 26, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(204, 'molestiae', 26, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(205, 'provident', 26, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(206, 'eum', 26, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(207, 'ut', 26, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(208, 'possimus', 26, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(209, 'consequatur', 27, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(210, 'omnis', 27, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(211, 'tenetur', 27, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(212, 'suscipit', 27, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(213, 'libero', 27, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(214, 'saepe', 27, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(215, 'officia', 27, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(216, 'ipsa', 27, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(217, 'ullam', 28, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(218, 'ducimus', 28, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(219, 'nemo', 28, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(220, 'fugit', 28, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(221, 'temporibus', 28, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(222, 'voluptates', 28, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(223, 'et', 28, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(224, 'molestiae', 28, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(225, 'consequatur', 29, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(226, 'quis', 29, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(227, 'laudantium', 29, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(228, 'eaque', 29, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(229, 'porro', 29, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(230, 'illum', 29, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(231, 'ullam', 29, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(232, 'commodi', 29, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(233, 'nemo', 30, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(234, 'aut', 30, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(235, 'laudantium', 30, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(236, 'at', 30, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(237, 'et', 30, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(238, 'soluta', 30, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(239, 'recusandae', 30, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(240, 'quo', 30, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(241, 'facilis', 31, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(242, 'quia', 31, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(243, 'quia', 31, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(244, 'repellendus', 31, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(245, 'ut', 31, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(246, 'ipsa', 31, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(247, 'explicabo', 31, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(248, 'aut', 31, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(249, 'doloremque', 32, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(250, 'tempora', 32, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(251, 'in', 32, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(252, 'adipisci', 32, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(253, 'quam', 32, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(254, 'maxime', 32, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(255, 'facilis', 32, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(256, 'suscipit', 32, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(257, 'omnis', 33, '2022-07-19 21:23:08', '2022-07-19 21:23:08'),
(258, 'quo', 33, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(259, 'quis', 33, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(260, 'eum', 33, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(261, 'et', 33, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(262, 'similique', 33, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(263, 'aut', 33, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(264, 'molestiae', 33, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(265, 'molestiae', 34, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(266, 'mollitia', 34, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(267, 'officia', 34, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(268, 'ipsum', 34, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(269, 'beatae', 34, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(270, 'reiciendis', 34, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(271, 'repellat', 34, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(272, 'laudantium', 34, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(273, 'inventore', 35, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(274, 'accusantium', 35, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(275, 'debitis', 35, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(276, 'et', 35, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(277, 'impedit', 35, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(278, 'voluptatibus', 35, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(279, 'voluptas', 35, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(280, 'occaecati', 35, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(281, 'est', 36, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(282, 'qui', 36, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(283, 'alias', 36, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(284, 'possimus', 36, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(285, 'est', 36, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(286, 'enim', 36, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(287, 'sed', 36, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(288, 'perferendis', 36, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(289, 'pariatur', 37, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(290, 'molestiae', 37, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(291, 'culpa', 37, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(292, 'soluta', 37, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(293, 'saepe', 37, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(294, 'ut', 37, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(295, 'harum', 37, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(296, 'officia', 37, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(297, 'nisi', 38, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(298, 'sit', 38, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(299, 'rerum', 38, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(300, 'dolore', 38, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(301, 'consectetur', 38, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(302, 'tenetur', 38, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(303, 'repudiandae', 38, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(304, 'qui', 38, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(305, 'sit', 39, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(306, 'quia', 39, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(307, 'qui', 39, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(308, 'eos', 39, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(309, 'quaerat', 39, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(310, 'exercitationem', 39, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(311, 'autem', 39, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(312, 'et', 39, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(313, 'impedit', 40, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(314, 'et', 40, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(315, 'aut', 40, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(316, 'nostrum', 40, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(317, 'inventore', 40, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(318, 'fugit', 40, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(319, 'nesciunt', 40, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(320, 'est', 40, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(321, 'earum', 41, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(322, 'dolores', 41, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(323, 'odio', 41, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(324, 'sapiente', 41, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(325, 'reiciendis', 41, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(326, 'et', 41, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(327, 'delectus', 41, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(328, 'labore', 41, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(329, 'cum', 42, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(330, 'odio', 42, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(331, 'laborum', 42, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(332, 'expedita', 42, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(333, 'necessitatibus', 42, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(334, 'quia', 42, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(335, 'omnis', 42, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(336, 'vel', 42, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(337, 'nulla', 43, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(338, 'voluptatum', 43, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(339, 'dignissimos', 43, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(340, 'voluptates', 43, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(341, 'qui', 43, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(342, 'distinctio', 43, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(343, 'ad', 43, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(344, 'quisquam', 43, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(345, 'dolorem', 44, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(346, 'autem', 44, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(347, 'similique', 44, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(348, 'distinctio', 44, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(349, 'aliquam', 44, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(350, 'laboriosam', 44, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(351, 'molestias', 44, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(352, 'iure', 44, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(353, 'qui', 45, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(354, 'consequatur', 45, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(355, 'harum', 45, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(356, 'alias', 45, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(357, 'minus', 45, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(358, 'et', 45, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(359, 'consequatur', 45, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(360, 'tempora', 45, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(361, 'ex', 46, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(362, 'non', 46, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(363, 'quidem', 46, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(364, 'laboriosam', 46, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(365, 'laudantium', 46, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(366, 'et', 46, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(367, 'eligendi', 46, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(368, 'libero', 46, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(369, 'quia', 47, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(370, 'alias', 47, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(371, 'veritatis', 47, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(372, 'quo', 47, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(373, 'esse', 47, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(374, 'et', 47, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(375, 'aut', 47, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(376, 'rerum', 47, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(377, 'laboriosam', 48, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(378, 'facere', 48, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(379, 'a', 48, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(380, 'laboriosam', 48, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(381, 'quasi', 48, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(382, 'iure', 48, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(383, 'ut', 48, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(384, 'tempora', 48, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(385, 'neque', 49, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(386, 'quae', 49, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(387, 'animi', 49, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(388, 'tempora', 49, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(389, 'quia', 49, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(390, 'qui', 49, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(391, 'magni', 49, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(392, 'eos', 49, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(393, 'ut', 50, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(394, 'dicta', 50, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(395, 'culpa', 50, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(396, 'dolorem', 50, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(397, 'deleniti', 50, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(398, 'alias', 50, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(399, 'assumenda', 50, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(400, 'doloribus', 50, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(401, 'quisquam', 51, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(402, 'saepe', 51, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(403, 'quas', 51, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(404, 'facere', 51, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(405, 'illum', 51, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(406, 'vel', 51, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(407, 'occaecati', 51, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(408, 'libero', 51, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(409, 'at', 52, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(410, 'omnis', 52, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(411, 'ut', 52, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(412, 'et', 52, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(413, 'ipsum', 52, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(414, 'quia', 52, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(415, 'dolores', 52, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(416, 'reiciendis', 52, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(417, 'consequatur', 53, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(418, 'ullam', 53, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(419, 'dolore', 53, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(420, 'laudantium', 53, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(421, 'blanditiis', 53, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(422, 'corrupti', 53, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(423, 'perspiciatis', 53, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(424, 'deleniti', 53, '2022-07-19 21:23:09', '2022-07-19 21:23:09'),
(425, 'perferendis', 54, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(426, 'aut', 54, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(427, 'dolores', 54, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(428, 'deserunt', 54, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(429, 'velit', 54, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(430, 'dolorem', 54, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(431, 'voluptatem', 54, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(432, 'laborum', 54, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(433, 'sequi', 55, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(434, 'ratione', 55, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(435, 'temporibus', 55, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(436, 'nisi', 55, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(437, 'reprehenderit', 55, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(438, 'nostrum', 55, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(439, 'pariatur', 55, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(440, 'molestias', 55, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(441, 'magni', 56, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(442, 'praesentium', 56, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(443, 'unde', 56, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(444, 'quia', 56, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(445, 'voluptatem', 56, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(446, 'autem', 56, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(447, 'et', 56, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(448, 'ducimus', 56, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(449, 'recusandae', 57, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(450, 'suscipit', 57, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(451, 'officia', 57, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(452, 'laboriosam', 57, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(453, 'velit', 57, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(454, 'minus', 57, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(455, 'voluptates', 57, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(456, 'tenetur', 57, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(457, 'consequatur', 58, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(458, 'optio', 58, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(459, 'facilis', 58, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(460, 'aliquid', 58, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(461, 'minima', 58, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(462, 'voluptas', 58, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(463, 'similique', 58, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(464, 'odit', 58, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(465, 'ipsa', 59, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(466, 'temporibus', 59, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(467, 'labore', 59, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(468, 'consequatur', 59, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(469, 'sit', 59, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(470, 'ab', 59, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(471, 'soluta', 59, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(472, 'aspernatur', 59, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(473, 'repellat', 60, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(474, 'nisi', 60, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(475, 'nisi', 60, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(476, 'sed', 60, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(477, 'a', 60, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(478, 'amet', 60, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(479, 'esse', 60, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(480, 'magni', 60, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(481, 'rerum', 61, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(482, 'et', 61, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(483, 'perspiciatis', 61, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(484, 'vel', 61, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(485, 'asperiores', 61, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(486, 'et', 61, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(487, 'expedita', 61, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(488, 'consequatur', 61, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(489, 'aut', 62, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(490, 'fugit', 62, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(491, 'quas', 62, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(492, 'est', 62, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(493, 'vel', 62, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(494, 'unde', 62, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(495, 'est', 62, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(496, 'aut', 62, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(497, 'sit', 63, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(498, 'est', 63, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(499, 'consectetur', 63, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(500, 'repellat', 63, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(501, 'sit', 63, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(502, 'perspiciatis', 63, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(503, 'facere', 63, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(504, 'et', 63, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(505, 'qui', 64, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(506, 'vitae', 64, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(507, 'ea', 64, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(508, 'vitae', 64, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(509, 'sed', 64, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(510, 'temporibus', 64, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(511, 'sunt', 64, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(512, 'eius', 64, '2022-07-19 21:23:10', '2022-07-19 21:23:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `goals`
--

CREATE TABLE `goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `goals`
--

INSERT INTO `goals` (`id`, `name`, `course_id`, `created_at`, `updated_at`) VALUES
(606, 'Formar psicoterapeutas y terapeutas holísticos con el enfoque neurosintérgico', 200, '2023-04-26 03:01:53', '2023-04-26 03:01:53'),
(607, 'Guía con orientación en meditacion Neurosintergica', 201, '2023-04-26 03:09:43', '2023-04-26 03:09:43'),
(608, 'Incrementa la capacidad para hacer dinero', 202, '2023-04-26 05:00:48', '2023-04-26 05:00:48'),
(609, 'Cambia tu esquema de pensamiento acerca del dinero', 202, '2023-04-26 05:00:51', '2023-04-26 05:00:51'),
(610, 'Incrementa tu capacidad para administrar tu dinero', 202, '2023-04-26 05:00:54', '2023-04-26 05:00:54'),
(611, 'Saber elegir una relación sana propia y de pareja.', 203, '2023-04-26 05:04:53', '2023-04-26 05:04:53'),
(612, 'Darte tu lugar en una relación', 203, '2023-04-26 05:04:56', '2023-04-26 05:04:56'),
(613, 'Te ayudará a distinguir actitudes que no te gustan y saber cómo manejar la situación', 203, '2023-04-26 05:04:59', '2023-04-26 05:04:59'),
(614, 'Aceptar una nueva realidad desde una perspectiva positiva.', 204, '2023-04-26 05:15:57', '2023-04-26 05:15:57'),
(615, 'Reconstruir el esquema de pensamiento en cuanto a lo que se percibe en el exterior de manera positiva.', 204, '2023-04-26 05:16:01', '2023-04-26 05:16:01'),
(616, 'Sabrás diferenciar los camnbios del antes y el después en cunto a la pandemia y verlos de diferente perspectiva.', 204, '2023-04-26 05:16:06', '2023-04-26 05:16:06'),
(617, 'Tomarás una postura de positividad o de neutralidad.', 204, '2023-04-26 05:16:10', '2023-04-26 05:16:10'),
(618, 'Identificar relaciones saludables de pareja.', 205, '2023-04-26 05:17:42', '2023-04-26 05:17:42'),
(619, 'Saber que puedes hacer para mejorar tu autoestima y amor propio.', 205, '2023-04-26 05:17:44', '2023-04-26 05:17:44'),
(620, 'Identificar amistades saludables.', 205, '2023-04-26 05:17:48', '2023-04-26 05:17:48'),
(621, 'Aprenderás a darte tu lugar.', 205, '2023-04-26 05:17:52', '2023-04-26 05:17:52'),
(622, 'Unidad de Consciencia', 207, '2023-04-26 05:41:56', '2023-04-26 05:41:56'),
(623, 'Salud física', 207, '2023-04-26 05:42:00', '2023-04-26 05:42:00'),
(624, 'Equilibrio emocional', 207, '2023-04-26 05:42:03', '2023-04-26 05:42:03'),
(625, 'Expansión del presente', 207, '2023-04-26 05:42:07', '2023-04-26 05:42:07'),
(626, 'Identificar la experiencia de felicidad', 208, '2023-04-26 05:47:56', '2023-04-26 05:47:56'),
(627, 'Observar tus retos a vencer', 208, '2023-04-26 05:47:58', '2023-04-26 05:47:58'),
(628, 'Aprender estrategias que expandan tu felicidad', 208, '2023-04-26 05:48:02', '2023-04-26 05:48:02'),
(629, 'Formar psicoterapeutas y terapeutas holísticos con el enfoque neurosintérgico.', 209, '2023-04-26 05:52:13', '2023-04-26 05:52:13'),
(630, ' Guía con orientación en meditacion Neurosintergica', 210, '2023-04-26 06:42:47', '2023-04-26 06:42:47'),
(631, 'Analisis de los escritos del Dr. Jacobo Grinberg y las aplicaciones de Neurosontergia', 211, '2023-04-26 06:46:01', '2023-04-26 06:46:01'),
(632, 'En esta master class Ruth y Aide nos hablarán de estas diferencias y su vinculación para el ser total.', 212, '2023-04-26 06:53:14', '2023-04-26 06:53:14'),
(633, 'Bases de la teoría sintérgica', 213, '2023-04-26 06:57:33', '2023-04-26 06:57:33'),
(634, 'Aplicaciones actuales de la teoría sintérgica', 213, '2023-04-26 06:57:36', '2023-04-26 06:57:36'),
(635, 'Identificar lealtades familiares que impiden tener dinero', 214, '2023-04-26 07:04:17', '2023-04-26 07:04:17'),
(636, 'Identificar y resolver creencias limitantes', 214, '2023-04-26 07:04:20', '2023-04-26 07:04:20'),
(637, 'Apropiarse de una propuesta diferente para recaudar dinero', 214, '2023-04-26 07:04:24', '2023-04-26 07:04:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `imageable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `url`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1402, 'courses/0tJzjscQLOAeYJsH83NwLCG9lbwHow4S7ltyxzjT.png', 100, 'App\\Models\\Course', '2022-07-19 23:14:04', '2022-07-26 21:25:58'),
(1403, 'courses/p4tI7jytXUzctHlEvT2HL9tphZkVKWv60w3n8klg.png', 101, 'App\\Models\\Course', '2022-07-20 01:46:30', '2022-07-20 01:46:30'),
(1404, 'courses/fXV1sonLVAd7N8qi4Ns5o8jZa6sryyH17M76jm6z.png', 102, 'App\\Models\\Course', '2022-07-20 12:14:44', '2022-07-25 16:26:28'),
(1405, 'courses/PsYCnDOm0HiXOhdHpHnbQv7NICPYYcRvnuwXTbQE.png', 103, 'App\\Models\\Course', '2022-07-26 14:34:02', '2022-07-26 14:34:02'),
(1406, 'courses/JmSJpNcJnzyafwj88HpmaH5ZLSXatmBAQ0GKskyi.jpg', 104, 'App\\Models\\Course', '2022-07-29 02:41:03', '2022-08-09 05:12:29'),
(1407, 'courses/FMYKuDAL9GvEUwjyHoHZkvj1iX3uBI61ztIoyzZX.png', 105, 'App\\Models\\Course', '2022-07-29 20:11:02', '2022-08-09 21:30:40'),
(1408, 'courses/vZjdQxGmFHtYmYDqK0Nc1Th4GrTfskyzTHYBTdV9.webp', 301, 'App\\Models\\Post', '2022-07-29 20:25:48', '2022-07-29 20:25:48'),
(1409, 'courses/ezfu0wQ6Blp26vi4HpeXkJkZlWToxsh3jVwfqSLv.jpg', 302, 'App\\Models\\Post', '2022-07-29 22:24:00', '2023-04-02 03:54:14'),
(1410, 'courses/oa7XmuAX6Jte1AZdiBxdN0mPmbkaPXHYkON4NaS3.png', 106, 'App\\Models\\Course', '2022-07-30 17:53:01', '2022-07-30 17:53:01'),
(1411, 'courses/CAa063z1EcavOy8bx9GbLZdV6uflOSPXyQ3sR3N5.png', 107, 'App\\Models\\Course', '2022-07-30 19:20:21', '2022-07-30 19:20:21'),
(1412, 'courses/E9JpICfHJUDwe7nysLWrfsXn4whcG5gyLhh29eUf.png', 108, 'App\\Models\\Course', '2022-07-30 19:51:45', '2022-07-30 19:51:45'),
(1413, 'courses/4UJDpeHn1IOfXcrTSBlBSAGkKQSm8JyPvmPkCaS9.png', 109, 'App\\Models\\Course', '2022-07-30 20:19:28', '2022-07-30 20:19:28'),
(1414, 'courses/xTU8JwrAWa46e00dw7Y3ObQfclAMo19TgoVbU5rM.png', 110, 'App\\Models\\Course', '2022-07-30 20:35:43', '2022-07-30 20:35:43'),
(1415, 'courses/Cr6C1OMv2NCjV8tTP8Y159rcapnqqyIzEPPHHyOZ.png', 111, 'App\\Models\\Course', '2022-07-30 20:48:32', '2022-07-30 20:48:32'),
(1416, 'courses/iF3N0P0JfMhlfsnvPsG98ziIh8QurX8d87tlp9mC.png', 112, 'App\\Models\\Course', '2022-07-30 21:31:37', '2022-07-30 21:31:37'),
(1417, 'courses/aRDcylnbbBJSxuMfAoaDSKrWbPaMLkxMOwhsV4N4.png', 113, 'App\\Models\\Course', '2022-07-30 21:41:21', '2022-07-30 21:41:21'),
(1418, 'courses/Lzy53ZbjLjaqVfabFX7W6sCj1kRfhadb7moEHa9j.png', 114, 'App\\Models\\Course', '2022-07-30 21:54:07', '2022-07-30 21:54:07'),
(1419, 'courses/qZiIlmzTHRAki4bXPz9J0WQ9S0PHQR9BhIZ5bpsi.png', 115, 'App\\Models\\Course', '2022-07-30 22:02:40', '2022-07-30 22:02:40'),
(1420, 'courses/1FboTeKdL2cSOSywOcrTUxDxCyyxXuztxzHa6V0a.png', 116, 'App\\Models\\Course', '2022-07-30 22:14:37', '2022-07-30 22:14:37'),
(1421, 'courses/OTX5H21nJRrnwqe55ZAEUoaWQSjm5TTFVQk45KNz.png', 117, 'App\\Models\\Course', '2022-07-30 22:26:44', '2022-07-30 22:26:44'),
(1422, 'courses/6RlqTxynwm8JW1JbH5d2iierBTNZoGDPMrJjNgIC.jpg', 118, 'App\\Models\\Course', '2022-08-06 01:59:05', '2022-08-06 01:59:05'),
(1423, 'courses/y3QYbSSbR79EKefQsQUAf9WEuBmXHwmIAdNafGYr.jpg', 119, 'App\\Models\\Course', '2022-08-06 02:31:29', '2022-08-06 02:31:29'),
(1424, 'courses/haWWYrxSwLPE0pSkYK1RLnd61HrwCcC04VobKRpu.jpg', 120, 'App\\Models\\Course', '2022-08-06 02:47:43', '2022-08-06 02:47:43'),
(1425, 'courses/XuJ5XepUCqeZfbWOSa8eNDOREbAcjwpqPAXRvk6p.webp', 121, 'App\\Models\\Course', '2022-08-06 03:02:30', '2022-08-06 03:02:30'),
(1426, 'courses/H3xVMWY5yF9ig42UdQDbqveB7xmml3MDkTOXH5WA.jpg', 122, 'App\\Models\\Course', '2022-08-06 03:12:24', '2022-08-06 03:12:24'),
(1427, 'courses/Ua6bC9icg2PiImh4BuM7zeTxHHgBbvP9cS2J34B8.jpg', 123, 'App\\Models\\Course', '2022-08-06 03:23:28', '2022-08-06 03:23:28'),
(1428, 'courses/znptnhWz2TjathF0vdwF7Zfp57Qo90SYKQSU5tPQ.jpg', 124, 'App\\Models\\Course', '2022-08-06 03:33:21', '2022-08-06 03:33:21'),
(1429, 'courses/53KgKYIP9tt2yjgqDg6UWi2jNqXaQWy3OCEdMaxL.jpg', 125, 'App\\Models\\Course', '2022-08-06 03:49:38', '2022-08-06 03:49:38'),
(1430, 'courses/4gMNxMkU93uu63BtnjGTR7LTYtqfVlXTgLSK2vkw.jpg', 126, 'App\\Models\\Course', '2022-08-06 03:59:42', '2022-08-06 03:59:42'),
(1431, 'courses/03VoPC6WEb82YD2UfCouHahN5B9IfRq1mTNmXtMH.jpg', 127, 'App\\Models\\Course', '2022-08-06 04:10:20', '2022-08-06 04:24:06'),
(1432, 'courses/FZXLLj3HAbYbn8xuvgiVaWWEOSP26aBjDPITFVxM.jpg', 128, 'App\\Models\\Course', '2022-08-06 04:28:27', '2022-08-06 04:28:27'),
(1433, 'courses/8dcDTrhDQ9Qz2w21r4UTpkYcJQsfEdHOEokJiUOc.jpg', 129, 'App\\Models\\Course', '2022-08-06 04:38:19', '2022-08-06 04:38:19'),
(1434, 'courses/pGJxiQm3uADUPoe9JWFV0qNlb0jIWJaZdZltEe0j.jpg', 130, 'App\\Models\\Course', '2022-08-06 04:47:38', '2022-08-06 04:47:38'),
(1435, 'courses/01B0y6Zy51ij4mjbcqnYvU3CuaDg51B0jATMgYeV.jpg', 131, 'App\\Models\\Course', '2022-08-06 05:03:09', '2022-08-06 05:03:09'),
(1436, 'courses/K2OuBjfqnaccxYNT48ZiQBdMghX9tIpqwWbNqx4d.jpg', 132, 'App\\Models\\Course', '2022-08-06 15:07:05', '2022-08-06 15:07:05'),
(1437, 'courses/SzJ6o4vu2AAWT70TPt4wA9cTcbw9ROOIdZizl6DH.jpg', 133, 'App\\Models\\Course', '2022-08-06 15:31:57', '2022-08-06 15:31:57'),
(1438, 'courses/reRODX4gcpaweKPDYyt9tsrd3NHcuOd5PrLGkp3E.jpg', 134, 'App\\Models\\Course', '2022-08-06 15:47:33', '2022-08-06 15:47:33'),
(1439, 'courses/wWxOfk2ggjFnBgKRnxv6lR70tCFIjuMpxdqvmvqG.jpg', 135, 'App\\Models\\Course', '2022-08-06 15:58:06', '2022-08-06 15:58:06'),
(1440, 'courses/Yi0eeTYR3OnX08xW7ABTnySq9T6xWT649zuqEtPw.jpg', 136, 'App\\Models\\Course', '2022-08-06 16:26:02', '2022-08-06 16:26:02'),
(1441, 'courses/IgOfX8ZC5qNVTrJKgpk6wUOserE8RhZ4oH2MgdDu.jpg', 137, 'App\\Models\\Course', '2022-08-06 16:29:18', '2022-08-06 16:29:18'),
(1442, 'courses/eg8ynuPGUmgFI9vNG5e493s7KHTvuV2MgwY01pDR.jpg', 138, 'App\\Models\\Course', '2022-08-06 16:45:32', '2022-08-06 16:45:32'),
(1443, 'courses/P3ItT0IIOiUwgWNQ67Qc5snyhTX2vBeVl9S4dEOD.jpg', 139, 'App\\Models\\Course', '2022-08-06 16:57:24', '2022-08-06 16:57:24'),
(1444, 'courses/WF26peTxwb0JXbMb99MpO4RvNML0dQkUKsKUmWg4.jpg', 140, 'App\\Models\\Course', '2022-08-06 17:47:11', '2022-08-06 17:47:11'),
(1445, 'courses/uGVeX8y0vSvwIYkIyoOBXtzhsim6dWRYc3eqWzAB.webp', 141, 'App\\Models\\Course', '2022-08-07 02:26:32', '2022-08-07 02:26:32'),
(1446, 'courses/p4YbrLxZSdZEtJLgq0Sf0hkeouRwbDOVCbr3LYRl.jpg', 142, 'App\\Models\\Course', '2022-08-07 02:36:59', '2022-08-07 02:36:59'),
(1447, 'courses/yE8RFHfkj1JVpb9vVvOKrJHqPGe3AeIAatU49wiJ.jpg', 143, 'App\\Models\\Course', '2022-08-07 02:46:58', '2022-08-07 02:46:58'),
(1448, 'courses/x6lDPMrMYNcnz3HxmkbCffO1O4Qe60CVkBpvv9ui.jpg', 144, 'App\\Models\\Course', '2022-08-07 02:54:58', '2022-08-07 02:54:58'),
(1449, 'courses/tyNhltfESVcJ19nLLZjEtd89a3Fo2QScXjj1UgbH.jpg', 145, 'App\\Models\\Course', '2022-08-07 03:08:25', '2022-08-07 03:08:25'),
(1450, 'courses/30Th7bR6g1C9vJB7N3wDUVrLOn4gAmaC3RTZoZl4.jpg', 146, 'App\\Models\\Course', '2022-08-07 03:33:27', '2022-08-07 03:33:27'),
(1451, 'courses/oUJsnn4rBoNBbIiMG5SKwI2GVKehRLSJdc7p1Ocp.png', 147, 'App\\Models\\Course', '2022-08-09 18:03:49', '2022-08-09 18:03:49'),
(1452, 'courses/7ShsGQBTH7dqDN92nvxy0c9O5mYQ4jIN2dJvcmIw.png', 148, 'App\\Models\\Course', '2022-08-09 18:05:33', '2022-08-09 18:05:33'),
(1453, 'courses/Aqgk1xIrzIKrAtawkQegMzUxP71yEgIJlMjJao9d.png', 149, 'App\\Models\\Course', '2022-08-09 18:18:43', '2022-08-09 18:18:43'),
(1454, 'courses/v7pX5aTtjlDoC9lVnpHHnBuMVTiFM0P97rBnqdeT.png', 150, 'App\\Models\\Course', '2022-08-09 18:20:46', '2022-08-09 18:20:46'),
(1455, 'courses/p9XFOOaeLckXGRjttGm6IoOSXRnUYKctOSmrnksm.png', 151, 'App\\Models\\Course', '2022-08-09 18:22:04', '2022-08-09 18:22:04'),
(1456, 'courses/OaMm2CUDpBz7aicAYLshtul6eyF5HnZnKXAh9aUp.png', 152, 'App\\Models\\Course', '2022-08-09 18:23:53', '2022-08-09 18:23:53'),
(1457, 'courses/C9qWLLLUzmlOPcd3K2Dkhzwl7Hr9BvXWd8kYFZDi.png', 153, 'App\\Models\\Course', '2022-08-09 18:25:55', '2022-08-09 18:25:55'),
(1458, 'courses/Vho8SjQRsylnVNzlypF6YcGLz9rnAd2E8zQJrT8x.png', 154, 'App\\Models\\Course', '2022-08-09 18:28:07', '2022-08-09 18:28:07'),
(1459, 'courses/w0IHvil948gNwTU2CvaqDemKx3eLWJ14bQ6m7Wy9.jpg', 155, 'App\\Models\\Course', '2022-08-09 18:30:10', '2022-08-09 19:13:52'),
(1460, 'courses/AZQNvdMPMlY9yOJNu4cfiYezQesOB5NeoxU4e4Jf.jpg', 156, 'App\\Models\\Course', '2022-08-09 18:34:15', '2022-08-09 21:29:59'),
(1461, 'courses/WhIsaaZy31KhRXtM0S1y5wnEUJhGR4uuCzG9vXvh.jpg', 157, 'App\\Models\\Course', '2022-08-09 18:35:17', '2022-08-09 20:08:50'),
(1462, 'courses/blbVz2zbJya6hxxpINaqfygk4jt1ltuWpuPtGpDd.jpg', 158, 'App\\Models\\Course', '2022-08-09 18:40:36', '2022-08-09 18:40:36'),
(1463, 'courses/kZoDtSKPeDRgnhq6uAYousJ0z6wVyaDpd4WhrfXU.jpg', 159, 'App\\Models\\Course', '2022-08-09 18:45:03', '2022-08-09 18:45:03'),
(1464, 'courses/UP6NVmSILFkjTYYifzjWyZCmY7Z35AQX9sc9pk9x.jpg', 160, 'App\\Models\\Course', '2022-08-09 18:54:16', '2022-08-09 18:54:16'),
(1465, 'courses/8QzTVqXnRmZ1toCmZGfvwIgApY78yFYDwlOkHAaD.jpg', 161, 'App\\Models\\Course', '2022-08-09 18:59:49', '2022-08-09 18:59:49'),
(1466, 'courses/4jcv4Y2Tayc9kmHcNXEGgz2hu2nD3ZpgRu8jLgPE.jpg', 162, 'App\\Models\\Course', '2022-08-09 19:02:00', '2022-08-09 19:02:00'),
(1467, 'courses/4RgyWraCjLZr5j6q1zgLznOrhOak9nvXPjqjNLIm.jpg', 163, 'App\\Models\\Course', '2022-08-09 19:06:14', '2023-04-02 03:53:31'),
(1468, 'courses/qB9UxxfOnY6OVXic6PwEzmEJAs7Gkg8E5X1OAxW5.png', 303, 'App\\Models\\Post', '2022-08-10 16:55:28', '2022-08-10 16:55:28'),
(1469, 'courses/NlLGdImmPis6BNeeuIHmXeaU7MPe93IiDsD44upl.jpg', 305, 'App\\Models\\Post', '2022-08-11 00:16:45', '2022-08-11 00:16:45'),
(1470, 'courses/dXLVZqWH0TWekSMs3ZDTuXbwafjy642KP9baM10y.png', 164, 'App\\Models\\Course', '2023-04-05 23:50:34', '2023-04-23 00:45:04'),
(1471, 'courses/NfSKdh4smqi58M6jl7uXxoTbCbAvEAPIxmNykaOg.png', 306, 'App\\Models\\Post', '2023-04-06 00:21:43', '2023-04-06 00:21:43'),
(1472, 'courses/XKwMDREQrMvyfsFcvFlNGZqfbaREITfeDffDxVvi.png', 165, 'App\\Models\\Course', '2023-04-06 03:49:46', '2023-04-23 00:42:48'),
(1473, 'courses/lZESeWD3BoyYhxwGJ8sCswco8bI3ni0aL7ugS4gt.png', 307, 'App\\Models\\Post', '2023-04-08 03:22:20', '2023-04-08 03:22:20'),
(1474, 'courses/GGNzqUd922igrBDs9aJvxVpG0xys9lnH0FI3ciRi.png', 308, 'App\\Models\\Post', '2023-04-08 03:29:09', '2023-04-08 03:29:09'),
(1475, 'courses/ME58wNA9AGACkyXgcLGDeYQ1oHFqtnt1thomviaV.jpg', 309, 'App\\Models\\Post', '2023-04-08 05:03:02', '2023-04-08 05:03:02'),
(1476, 'courses/SVLJB8xx04icTLpNhE9QkoiM7YVX23xEauFhx1Pk.png', 166, 'App\\Models\\Course', '2023-04-08 05:53:52', '2023-04-08 05:53:52'),
(1477, 'courses/2iEHimcP18uNkolxSgJpCWOsBZgi2Iee77Qp114c.png', 312, 'App\\Models\\Post', '2023-04-08 06:26:44', '2023-04-08 06:26:44'),
(1478, 'courses/Bw2b3jZkZnvCDNtM3gRbVo7GxfUBAiCuUECsOd5X.png', 167, 'App\\Models\\Course', '2023-04-10 22:07:01', '2023-04-22 05:50:07'),
(1479, 'courses/eJ0oIrkOa4SlgFGsTbbEq8AMZyUVQFfRFl0qtOYI.jpg', 168, 'App\\Models\\Course', '2023-04-20 01:39:26', '2023-04-20 01:39:26'),
(1480, 'courses/DhU6Mra34Eiqoifh27npxSGxhZuZmemWF3Pfi7V0.jpg', 311, 'App\\Models\\Post', '2023-04-22 02:58:23', '2023-04-22 02:58:23'),
(1481, 'courses/xGHDDGM10kBV7frri5VH63pGcMVZqIznf7GWIP9s.png', 169, 'App\\Models\\Course', '2023-04-23 00:47:49', '2023-04-23 00:47:49'),
(1482, 'courses/OhHglqWPUC5jnxNupoFJx9d0JjOQxKMBvAq01K3N.jpg', 170, 'App\\Models\\Course', '2023-04-23 02:11:49', '2023-04-23 02:11:49'),
(1483, 'courses/Yytsv7ZrLHWGd8W3cQ9EMImoOp728CWFtaCxO5Zy.jpg', 171, 'App\\Models\\Course', '2023-04-23 02:14:35', '2023-04-23 02:14:35'),
(1484, 'courses/85bH7MCF56mh1FQ1kLVY3MPGJJI0QAMkfcUyYSn9.jpg', 172, 'App\\Models\\Course', '2023-04-23 02:18:41', '2023-04-23 02:18:41'),
(1485, 'courses/fLiPmkwOsbs1ee4760oz8urR5cHGjQJGtBlCUHfC.png', 173, 'App\\Models\\Course', '2023-04-23 02:31:34', '2023-04-23 02:31:34'),
(1486, 'courses/RHDYMjeYbIrn67rDcK32DNFVrJQI4M6q63f1PfMe.jpg', 174, 'App\\Models\\Course', '2023-04-23 03:55:29', '2023-04-23 03:55:29'),
(1487, 'courses/pagIlKFFtC7wMOYlYue5ib4xUgwZSaqeolAxWh2H.jpg', 175, 'App\\Models\\Course', '2023-04-23 04:01:19', '2023-04-23 04:01:19'),
(1488, 'courses/XRmgnsQJslMEmCYxGUbqpuD8fBOYgH1cWXrlfGZz.jpg', 176, 'App\\Models\\Course', '2023-04-23 04:05:26', '2023-04-23 04:58:41'),
(1489, 'courses/bFo6A1NCJGkXskpqprNBPt7l9SAGQkcDGmWqSMgR.jpg', 177, 'App\\Models\\Course', '2023-04-23 04:09:05', '2023-04-23 04:09:05'),
(1490, 'courses/OcSX4QoMsAMxt0zDgvhv7Wz93cEC1z2Z1bw3ENLv.png', 178, 'App\\Models\\Course', '2023-04-23 04:12:54', '2023-04-23 04:12:54'),
(1491, 'courses/vyHNFLqcpKd9uecBHYiXAyHicNBxekoK1Ct8eAyN.png', 179, 'App\\Models\\Course', '2023-04-23 04:30:04', '2023-04-23 04:30:04'),
(1492, 'courses/gehnxeg1I0pRlYepRk7rb9oEdAvCiI2Z4ZtxO4C0.jpg', 180, 'App\\Models\\Course', '2023-04-23 04:59:28', '2023-04-23 04:59:28'),
(1493, 'courses/TgijphH1teqAX0LFzVAfo2aGRv9R7se2JaqscjNd.jpg', 181, 'App\\Models\\Course', '2023-04-23 06:12:21', '2023-04-23 06:12:21'),
(1494, 'courses/8mJaNljDRvW90V2PRP1upIrEtEPHZGSr9gNm6VuB.png', 182, 'App\\Models\\Course', '2023-04-23 06:21:19', '2023-04-23 06:21:19'),
(1495, 'courses/MUM0JehoWTVYZOullPIaJR3u14P8CuQxf0Jw5zWw.png', 183, 'App\\Models\\Course', '2023-04-25 03:23:18', '2023-04-25 03:23:18'),
(1496, 'courses/zlS63SYYVFhoA9aKyS62hqR4efA70rLrQ7BM7z3n.jpg', 184, 'App\\Models\\Course', '2023-04-25 03:37:39', '2023-04-25 03:37:39'),
(1497, 'courses/k0N9F6cn6XwhRYILUmZQMHp3SLOjOmixlZ6tLP0r.jpg', 185, 'App\\Models\\Course', '2023-04-25 03:40:36', '2023-04-25 03:40:36'),
(1498, 'courses/5Htc6t2e3sH0aFIqAkWT7NUHd5whyQeanrfMPeZb.png', 186, 'App\\Models\\Course', '2023-04-25 04:10:06', '2023-04-25 04:10:06'),
(1499, 'courses/iQczsL0ZPXdCmRa9Nmp5jXhJE1rlvM5IPFeqQo8F.png', 187, 'App\\Models\\Course', '2023-04-25 04:13:57', '2023-04-25 04:13:57'),
(1500, 'courses/5U4I6cBZP18TEzeshRZhai6FBBLht7MKAmz1YyWT.jpg', 188, 'App\\Models\\Course', '2023-04-25 04:16:06', '2023-04-25 04:16:06'),
(1501, 'courses/iUn52v5kPzDkagWEtnfDiqMtUXyN1xz9QlyVE02v.jpg', 189, 'App\\Models\\Course', '2023-04-25 07:09:27', '2023-04-25 07:09:27'),
(1502, 'courses/YtuqIKBV1xE9Z4VQXHw7Jn24wwpoP1I0awBFTC2G.jpg', 190, 'App\\Models\\Course', '2023-04-25 20:46:49', '2023-04-25 20:46:49'),
(1503, 'courses/HISz7xeA4D8g5tqcilb5Nf8kb9N38arFwriOXhlc.png', 191, 'App\\Models\\Course', '2023-04-26 02:51:48', '2023-04-26 02:51:48'),
(1504, 'courses/u9944Ui2yyXByagTm9bn3vuIHBdCoeA0HwmJcbfV.png', 200, 'App\\Models\\Course', '2023-04-26 03:01:45', '2023-04-26 03:01:45'),
(1505, 'courses/PgNut0I2xPAkyxStTdle07YfXsqeZVBwszlMHRmf.png', 201, 'App\\Models\\Course', '2023-04-26 03:09:02', '2023-04-26 03:09:02'),
(1506, 'courses/w5ayGBnIxQQielzDqGMbK5QAyRwTBC4Jv8yUCK8R.jpg', 202, 'App\\Models\\Course', '2023-04-26 05:00:39', '2023-04-26 05:00:39'),
(1507, 'courses/0YlEXaAbiWDUyY1DMjFxA31WDSFmBB6FWoYIombe.jpg', 203, 'App\\Models\\Course', '2023-04-26 05:04:37', '2023-04-26 05:04:37'),
(1508, 'courses/jl2KXY8mQBPwKaFMVl13Iyx8kkgXfu3lntsLjfMj.jpg', 204, 'App\\Models\\Course', '2023-04-26 05:14:47', '2023-04-26 05:14:47'),
(1509, 'courses/8mrMDvhX8Ga7dA5rGZGzSmNeNqyXTh87A6I0ahFI.jpg', 205, 'App\\Models\\Course', '2023-04-26 05:17:31', '2023-04-26 05:17:31'),
(1510, 'courses/WW10RB5Yiu0Y748oyb1bvDnYf3q29QmOaCHNd2OO.png', 206, 'App\\Models\\Course', '2023-04-26 05:24:04', '2023-04-26 05:24:04'),
(1511, 'courses/GNgAkfuvoHHDRbcJjwn6mRPRKINsxbiVl7bE9v0G.jpg', 207, 'App\\Models\\Course', '2023-04-26 05:41:36', '2023-04-26 05:41:36'),
(1512, 'courses/hvAyqbZ0Ky7qahixKtwustB6X6sVNgOdtwokvuAF.jpg', 208, 'App\\Models\\Course', '2023-04-26 05:47:41', '2023-04-26 05:47:41'),
(1513, 'courses/xLIgkwZ2nSd4NXO5evgejjUPoHOIeFzjzxQpGKOE.png', 209, 'App\\Models\\Course', '2023-04-26 05:50:46', '2023-04-26 05:50:46'),
(1514, 'courses/XK4PAWHBwv56RQWiKva0x4uqg9HblgJYzCMpPjRB.png', 210, 'App\\Models\\Course', '2023-04-26 06:41:57', '2023-04-26 06:41:57'),
(1515, 'courses/PIEyQ7zixgE7YTfRqjNCKvJt4x9GFLgNXXYP4UVH.jpg', 211, 'App\\Models\\Course', '2023-04-26 06:45:53', '2023-04-26 06:45:53'),
(1516, 'courses/hIpYI0oiuIWSVR9hmTjoEKwXtvzhqYANSedVWczf.jpg', 212, 'App\\Models\\Course', '2023-04-26 06:53:06', '2023-04-26 06:53:06'),
(1517, 'courses/utJr5NiNyItC6ROPNtFdUIK3n3aqm9VX2zF4qh8w.jpg', 213, 'App\\Models\\Course', '2023-04-26 06:57:22', '2023-04-26 06:57:22'),
(1518, 'courses/u2SyMQogeHfP79DmKsH2jXNynTjH1XxINmgsdtBb.jpg', 214, 'App\\Models\\Course', '2023-04-26 07:04:06', '2023-04-26 07:04:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"90daa192-4fe2-4806-8308-5fb4a548cc7f\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:101;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1658291261, 1658291261),
(2, 'default', '{\"uuid\":\"b0c0e844-2b49-433a-86e4-8f5b4899c1e3\",\"displayName\":\"App\\\\Mail\\\\RejectCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:21:\\\"App\\\\Mail\\\\RejectCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:102;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1658773856, 1658773856),
(3, 'default', '{\"uuid\":\"1ff1ed90-a86e-4fe2-962b-e8e6126b36c9\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:104;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659069972, 1659069972),
(4, 'default', '{\"uuid\":\"e6aae9f2-f425-4b72-ad74-5d700db1c582\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:105;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659158790, 1659158790),
(5, 'default', '{\"uuid\":\"68a758e5-15f4-422c-bc79-45e930ce9b4c\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:106;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659211209, 1659211209),
(6, 'default', '{\"uuid\":\"155bcb87-7e72-43ae-a3f6-a12b991e027f\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:107;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659217537, 1659217537),
(7, 'default', '{\"uuid\":\"307f5b74-cae4-4a61-af90-5ca2dbfd46a3\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:108;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659219149, 1659219149),
(8, 'default', '{\"uuid\":\"e75ab90e-2d8d-4b92-815e-db0c33c1671b\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:109;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659220187, 1659220187),
(9, 'default', '{\"uuid\":\"6614f5f1-51dc-4e7f-8b8c-849b32e9c5e6\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:110;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659220925, 1659220925),
(10, 'default', '{\"uuid\":\"a06600d7-268c-4ae8-b42d-833625d5d3b6\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:111;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659222348, 1659222348),
(11, 'default', '{\"uuid\":\"afd85a7e-8045-4a99-bda3-8139287a3257\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:112;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659224302, 1659224302),
(12, 'default', '{\"uuid\":\"4f66475a-93dc-4475-a7e0-8a8619484aab\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:113;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659225030, 1659225030),
(13, 'default', '{\"uuid\":\"0385ba6c-839a-4ef6-93ed-16ae209fad50\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:114;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659225591, 1659225591),
(14, 'default', '{\"uuid\":\"7f3e8b9f-f958-4fe3-8426-6d04c8d0e5cc\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:115;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659226117, 1659226117),
(15, 'default', '{\"uuid\":\"1758954e-bd76-4919-8311-943d2bdf9da1\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:116;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659226856, 1659226856),
(16, 'default', '{\"uuid\":\"aa02dc71-9adc-4bf3-b4da-72b077f2aad4\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:117;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659227552, 1659227552),
(17, 'default', '{\"uuid\":\"2d7aca3b-b65c-45af-9b16-1da781a45d61\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:118;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659759282, 1659759282),
(18, 'default', '{\"uuid\":\"e2e87bf3-9f86-42b1-af05-561e07a99a7a\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:119;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659760898, 1659760898),
(19, 'default', '{\"uuid\":\"e5ac0700-608e-4dca-9295-795b5ac10dd7\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:120;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659761726, 1659761726),
(20, 'default', '{\"uuid\":\"ea2e9eda-e194-49ef-adec-507047922442\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:121;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659762535, 1659762535),
(21, 'default', '{\"uuid\":\"3a1f4d8f-e2a8-436c-87b2-47a50315744d\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:122;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659763111, 1659763111),
(22, 'default', '{\"uuid\":\"76987a94-8095-415b-8352-abbad3dc88e5\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:123;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659763783, 1659763783),
(23, 'default', '{\"uuid\":\"380291a3-6f8d-418e-b795-1d5ff17b9723\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:124;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659764456, 1659764456),
(24, 'default', '{\"uuid\":\"21d92f31-8c10-4ab5-abea-3d28fb5a4d40\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:125;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659765389, 1659765389);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(25, 'default', '{\"uuid\":\"ec7724c2-ef19-450c-b0e9-59bc949b873b\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:126;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659765972, 1659765972),
(26, 'default', '{\"uuid\":\"4e64bf29-3f10-4082-88b7-5f201b66f29e\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:127;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659767073, 1659767073),
(27, 'default', '{\"uuid\":\"58facf37-b984-4f98-81ea-cfeb3ebdd47f\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:128;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659767711, 1659767711),
(28, 'default', '{\"uuid\":\"8f0b8fc0-cab7-4638-91df-1a830eb9b522\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:129;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659768284, 1659768284),
(29, 'default', '{\"uuid\":\"69fc9477-3adc-4c42-8182-42c4d6005171\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:130;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659768800, 1659768800),
(30, 'default', '{\"uuid\":\"03cb1504-c284-4b18-936c-9f7b88f439f5\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:131;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659769857, 1659769857),
(31, 'default', '{\"uuid\":\"57245781-77af-479a-ac72-a64471a21163\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:132;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659806577, 1659806577),
(32, 'default', '{\"uuid\":\"e1207877-f0da-402f-b406-9be804aaf6bc\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:133;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659807649, 1659807649),
(33, 'default', '{\"uuid\":\"85f48faa-8ca1-48a9-a728-190582ae464b\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:134;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659808368, 1659808368),
(34, 'default', '{\"uuid\":\"005bc11f-b29f-4637-8efc-615644a982d4\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:135;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659809700, 1659809700),
(35, 'default', '{\"uuid\":\"7ce22f6d-e987-45c7-98bb-0d75ecef55f7\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:137;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659811173, 1659811173),
(36, 'default', '{\"uuid\":\"8d555354-7bd5-43ff-a9be-57d1921d2abe\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:138;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659811990, 1659811990),
(37, 'default', '{\"uuid\":\"a1727a79-c372-4904-a311-4a71a5142755\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:139;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659813069, 1659813069),
(38, 'default', '{\"uuid\":\"b6f6bdec-5c86-4665-9806-ea384f647021\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:140;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659815855, 1659815855),
(39, 'default', '{\"uuid\":\"9d7eaae9-b82c-4ebc-958e-568c74a3c422\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:141;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659846776, 1659846776),
(40, 'default', '{\"uuid\":\"7dc9e397-b3bb-4a2d-86d9-36cfeb78de38\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:142;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659847380, 1659847380),
(41, 'default', '{\"uuid\":\"4c74304f-4efa-4353-a0d9-37e090b6d46c\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:143;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659847878, 1659847878),
(42, 'default', '{\"uuid\":\"4b18804c-b312-46d4-9d75-bf7c72367c66\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:144;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659848611, 1659848611),
(43, 'default', '{\"uuid\":\"6c048166-bd62-4c97-85b8-df410b7b480f\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:145;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659849778, 1659849778),
(44, 'default', '{\"uuid\":\"fe8b6172-46d0-41c4-a843-f7b5f7371195\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:146;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1659851434, 1659851434),
(45, 'default', '{\"uuid\":\"f1627fa4-8382-46dc-9f05-5e9f9c7dae80\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:158;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1660077951, 1660077951),
(46, 'default', '{\"uuid\":\"01bbdbe4-558f-4d4e-a082-1518a5bd1f71\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:159;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1660078011, 1660078011),
(47, 'default', '{\"uuid\":\"b816decc-93b8-4686-996d-9c4df59abe98\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:160;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1660078606, 1660078606);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(48, 'default', '{\"uuid\":\"9e5052ba-5cd8-4fd2-9b08-73e2e3536be5\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:161;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1660078841, 1660078841),
(49, 'default', '{\"uuid\":\"7cdd4625-3b39-48fc-95b7-1aa11d6173dc\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:162;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1660079007, 1660079007),
(50, 'default', '{\"uuid\":\"bd692942-e4eb-45dd-9b91-9c7af439a726\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:163;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1660079228, 1660079228),
(51, 'default', '{\"uuid\":\"02f0129a-6a4b-4f59-91c2-16d135bd1a59\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:157;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1660082643, 1660082643),
(52, 'default', '{\"uuid\":\"2cefac98-9904-4fdc-aa31-2a719b44dfee\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:156;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1660082660, 1660082660),
(53, 'default', '{\"uuid\":\"7a174098-d207-499c-951f-e07c37166f4b\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:155;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"juanhernandezcruzmx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1660082671, 1660082671),
(54, 'default', '{\"uuid\":\"3e13019a-4aca-4fa6-a867-b8212ec902e8\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:164;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"intelisoftw@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1680721060, 1680721060),
(55, 'default', '{\"uuid\":\"70dbb706-63ff-4da9-823c-d93028065eb4\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:165;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"intelisoftw@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1680731424, 1680731424),
(56, 'default', '{\"uuid\":\"3813c7e2-8f18-4c6d-bf38-bd5cb4258de6\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:166;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1680911693, 1680911693),
(57, 'default', '{\"uuid\":\"077ff0a2-10f6-4c78-a94e-f71e46b78cdf\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:167;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"intelisoftw@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1681142887, 1681142887),
(58, 'default', '{\"uuid\":\"8f79ff69-2ed1-4afd-900d-2312e9db2579\",\"displayName\":\"App\\\\Mail\\\\RejectCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:21:\\\"App\\\\Mail\\\\RejectCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:169;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"intelisoftw@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682195923, 1682195923),
(59, 'default', '{\"uuid\":\"dd6dc6cd-0240-4027-8921-f0dbcce3bf33\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:169;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"intelisoftw@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682195957, 1682195957),
(60, 'default', '{\"uuid\":\"757ab91f-2bb7-45d7-87ed-4fc609d890be\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:170;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"intelisoftw@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682195960, 1682195960),
(61, 'default', '{\"uuid\":\"9dd96944-7669-47eb-a9ea-b81e0905ed2d\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:171;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"intelisoftw@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682195963, 1682195963),
(62, 'default', '{\"uuid\":\"ce7cac19-1a19-4b2a-ad4e-084ed690ff95\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:172;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"intelisoftw@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682195966, 1682195966),
(63, 'default', '{\"uuid\":\"13b40a1a-7505-4067-9692-0fac4c8a92a3\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:173;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"intelisoftw@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682195970, 1682195970),
(64, 'default', '{\"uuid\":\"6fa99744-8541-484e-bfea-a6dc13291ba6\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:168;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682200376, 1682200376),
(65, 'default', '{\"uuid\":\"04a77d0b-8fbd-4980-a90d-6f5244fcbba2\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:174;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682201441, 1682201441),
(66, 'default', '{\"uuid\":\"9ccd1f70-48ae-4887-a7e8-05d3395dc1c7\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:175;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682201444, 1682201444),
(67, 'default', '{\"uuid\":\"f57e1fde-65d1-4698-aba3-0e1a2369f890\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:176;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682201447, 1682201447),
(68, 'default', '{\"uuid\":\"aab1bece-65a6-4003-8f7f-aecdde696ffb\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:177;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682201449, 1682201449),
(69, 'default', '{\"uuid\":\"9d6ba3a0-ee64-46a4-8895-be7bfa838cd9\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:178;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682201998, 1682201998),
(70, 'default', '{\"uuid\":\"062530e1-e6a8-4e4a-9035-f384f8c3586a\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:179;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682202951, 1682202951),
(71, 'default', '{\"uuid\":\"a7a72ace-a5d7-4059-972a-4bae4ca87eb8\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:180;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682208612, 1682208612);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(72, 'default', '{\"uuid\":\"d31aaa49-4e86-49b8-99e6-00671415c162\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:182;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682367334, 1682367334),
(73, 'default', '{\"uuid\":\"1081bd1e-e56c-492d-ab15-1343fa805c31\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:181;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682367337, 1682367337),
(74, 'default', '{\"uuid\":\"e8f08f35-ba0a-40df-bf34-ca12fc624bce\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:183;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682372102, 1682372102),
(75, 'default', '{\"uuid\":\"231bcbf6-e6f3-4fc2-a7de-2faf88f4e735\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:184;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682372838, 1682372838),
(76, 'default', '{\"uuid\":\"3b8a0f3d-e4fa-4df1-ba22-dad9115118f0\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:185;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682372844, 1682372844),
(77, 'default', '{\"uuid\":\"1d5f3a43-e0b7-446b-ba6f-4e2589d165e8\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:188;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682374594, 1682374594),
(78, 'default', '{\"uuid\":\"99f59f7a-a73d-4647-b1a7-447aba81a614\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:186;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682374622, 1682374622),
(79, 'default', '{\"uuid\":\"b3ab92c9-ba7c-4bb8-b803-001dab400855\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:187;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682374626, 1682374626),
(80, 'default', '{\"uuid\":\"9f760007-5871-4fd0-9ee3-89a84946942a\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:200;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682466669, 1682466669),
(81, 'default', '{\"uuid\":\"5fd8eeaa-3b7c-416c-8485-f891be4216ca\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:206;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682466674, 1682466674),
(82, 'default', '{\"uuid\":\"5165716e-c615-46c8-833c-47079bbc1c24\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:205;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682466678, 1682466678),
(83, 'default', '{\"uuid\":\"7022dd83-6cb7-4f26-8759-c1933cd4f30d\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:203;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682466682, 1682466682),
(84, 'default', '{\"uuid\":\"2aa00e27-d885-435c-97c3-03f22fbc4505\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:207;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682466686, 1682466686),
(85, 'default', '{\"uuid\":\"d58c7a08-83c2-4edf-adc2-468b16687b1a\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:202;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682466690, 1682466690),
(86, 'default', '{\"uuid\":\"a88bbfc8-e4c4-4903-a71c-f9798db6315e\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:204;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682466694, 1682466694),
(87, 'default', '{\"uuid\":\"6c7caaf1-1254-4a44-b403-e9e02dd43ea2\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:201;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682466698, 1682466698),
(88, 'default', '{\"uuid\":\"91dd71b9-60d1-4aff-9ea1-44aa6fbfa4cb\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:208;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682466702, 1682466702),
(89, 'default', '{\"uuid\":\"7c5b286a-d2c5-44a5-b3f2-4f9a16d5f7cc\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:209;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682469455, 1682469455),
(90, 'default', '{\"uuid\":\"5da234d2-ef90-48f6-bb87-92b1da08926c\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:212;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682471181, 1682471181),
(91, 'default', '{\"uuid\":\"63347fec-fd56-4dff-85dd-aa6e7e556a9b\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:210;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682471393, 1682471393),
(92, 'default', '{\"uuid\":\"5b742f07-9b9c-4ca2-b2b4-bcb212a38fbf\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:211;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682471401, 1682471401),
(93, 'default', '{\"uuid\":\"efe016de-9849-4d55-bb81-8761849f59f9\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:213;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682471406, 1682471406),
(94, 'default', '{\"uuid\":\"4f32e17e-7b13-4a41-a442-a94976882fb7\",\"displayName\":\"App\\\\Mail\\\\ApprovedCourse\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ApprovedCourse\\\":29:{s:6:\\\"course\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Course\\\";s:2:\\\"id\\\";i:214;s:9:\\\"relations\\\";a:5:{i:0;s:7:\\\"lessons\\\";i:1;s:5:\\\"goals\\\";i:2;s:12:\\\"requirements\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"teacher\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"neurosintergia@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:8:\\\"markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1682471568, 1682471568);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `iframe` varchar(255) NOT NULL,
  `platform_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `url`, `iframe`, `platform_id`, `section_id`, `created_at`, `updated_at`) VALUES
(1927, 'Introducción', 'https://vimeo.com/695844665', '<iframe src=\"https://player.vimeo.com/video/695844665\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 599, '2023-04-26 03:04:05', '2023-04-26 03:04:05'),
(1928, 'Sesion 1.1', 'https://vimeo.com/711433488', '<iframe src=\"https://player.vimeo.com/video/711433488\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 599, '2023-04-26 03:04:35', '2023-04-26 03:04:35'),
(1929, 'sesión 2', 'https://vimeo.com/762017544', '<iframe src=\"https://player.vimeo.com/video/762017544\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 600, '2023-04-26 03:05:01', '2023-04-26 03:05:01'),
(1930, 'Sesion 3', 'https://vimeo.com/762041334', '<iframe src=\"https://player.vimeo.com/video/762041334\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 601, '2023-04-26 03:05:25', '2023-04-26 03:05:25'),
(1931, 'Sesión 4', 'https://vimeo.com/762019557', '<iframe src=\"https://player.vimeo.com/video/762019557\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 602, '2023-04-26 03:05:44', '2023-04-26 03:05:44'),
(1932, 'Sesión 5', 'https://vimeo.com/762096456', '<iframe src=\"https://player.vimeo.com/video/762096456\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 603, '2023-04-26 03:05:59', '2023-04-26 03:05:59'),
(1933, 'Sesión 5.1', 'https://vimeo.com/762096800', '<iframe src=\"https://player.vimeo.com/video/762096800\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 603, '2023-04-26 03:06:11', '2023-04-26 03:06:11'),
(1934, 'Sesión 6', 'https://vimeo.com/762097193', '<iframe src=\"https://player.vimeo.com/video/762097193\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 604, '2023-04-26 03:06:33', '2023-04-26 03:06:33'),
(1935, 'Sesión 7', 'https://vimeo.com/762021139', '<iframe src=\"https://player.vimeo.com/video/762021139\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 605, '2023-04-26 03:06:52', '2023-04-26 03:06:52'),
(1936, 'Sesión 7.1', 'https://vimeo.com/762021885', '<iframe src=\"https://player.vimeo.com/video/762021885\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 605, '2023-04-26 03:07:12', '2023-04-26 03:07:12'),
(1937, 'Sesión 8', 'https://vimeo.com/786306599', '<iframe src=\"https://player.vimeo.com/video/786306599\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 606, '2023-04-26 03:07:29', '2023-04-26 03:07:29'),
(1938, 'Sesión 9', 'ttps://vimeo.com/786309212', '<iframe src=\"https://player.vimeo.com/video/786309212\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 607, '2023-04-26 03:07:48', '2023-04-26 03:07:48'),
(1939, 'Intorducción', 'https://vimeo.com/711423375', '<iframe src=\"https://player.vimeo.com/video/711423375\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 608, '2023-04-26 04:49:16', '2023-04-26 04:49:16'),
(1940, 'Sesión 2', 'https://vimeo.com/712449059', '<iframe src=\"https://player.vimeo.com/video/712449059\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 609, '2023-04-26 04:52:33', '2023-04-26 04:52:33'),
(1941, 'Sesión 3', 'https://vimeo.com/762025602', '<iframe src=\"https://player.vimeo.com/video/762025602\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 610, '2023-04-26 04:56:00', '2023-04-26 04:56:00'),
(1942, 'Sesión 4 Calentamiento', 'https://vimeo.com/762027221', '<iframe src=\"https://player.vimeo.com/video/762027221\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 611, '2023-04-26 04:56:26', '2023-04-26 04:56:26'),
(1943, 'Sesión 4.1', 'https://vimeo.com/762039854', '<iframe src=\"https://player.vimeo.com/video/762039854\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 611, '2023-04-26 04:57:05', '2023-04-26 04:57:05'),
(1944, 'Sesión 5', 'https://vimeo.com/762035539', '<iframe src=\"https://player.vimeo.com/video/762035539\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 612, '2023-04-26 04:57:17', '2023-04-26 04:57:17'),
(1945, 'Sesión 5.1', 'https://vimeo.com/762028108', '<iframe src=\"https://player.vimeo.com/video/762028108\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 612, '2023-04-26 04:57:46', '2023-04-26 04:57:46'),
(1946, 'Sesión 6', 'https://vimeo.com/762029023', '<iframe src=\"https://player.vimeo.com/video/762029023\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 613, '2023-04-26 04:58:06', '2023-04-26 04:58:06'),
(1947, 'Sesión 7', 'https://vimeo.com/762030573', '<iframe src=\"https://player.vimeo.com/video/762030573\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 614, '2023-04-26 04:58:28', '2023-04-26 04:58:28'),
(1948, 'Sesión 8', 'https://vimeo.com/786311929', '<iframe src=\"https://player.vimeo.com/video/786311929\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 615, '2023-04-26 04:58:47', '2023-04-26 04:58:47'),
(1949, 'Grabado - 06/06/21', 'https://vimeo.com/558312764/cf5e66b86f', '<iframe src=\"https://player.vimeo.com/video/558312764\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 616, '2023-04-26 05:01:31', '2023-04-26 05:01:31'),
(1950, 'Grabada 20/02/2021', 'https://vimeo.com/557673165/938f3f805f', '<iframe src=\"https://player.vimeo.com/video/557673165\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 617, '2023-04-26 05:08:07', '2023-04-26 05:08:07'),
(1951, 'Grabada 18/07/20', 'https://vimeo.com/557402926/70db829bf3', '<iframe src=\"https://player.vimeo.com/video/557402926\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 618, '2023-04-26 05:15:36', '2023-04-26 05:15:36'),
(1952, 'Grabada 18/07/20', 'https://vimeo.com/557301105/ec47b4cdce', '<iframe src=\"https://player.vimeo.com/video/557301105\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 619, '2023-04-26 05:19:02', '2023-04-26 05:19:02'),
(1953, 'La energía en la meditación Neurosintérgica', 'https://youtu.be/gG9rz0JiMSs', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gG9rz0JiMSs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:24:53', '2023-04-26 05:24:53'),
(1954, 'Pulso-Impacto', 'https://youtu.be/apS8fWN_FaU', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/apS8fWN_FaU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:25:08', '2023-04-26 05:25:08'),
(1955, 'El miedo y sus áreas de oportunidad', 'https://youtu.be/u7bCcohKKlY', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/u7bCcohKKlY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:25:29', '2023-04-26 05:25:29'),
(1956, 'El arte: Alimento del espíritu', 'https://youtu.be/FYSuOEx2ZAo', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FYSuOEx2ZAo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:25:58', '2023-04-26 05:25:58'),
(1957, 'Entendiendo la muerte, para comprender la vida', 'https://youtu.be/IImLj7rUweU', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/IImLj7rUweU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:26:10', '2023-04-26 05:26:10'),
(1958, 'Abrazando al avatar: Fitness conciente', 'https://youtu.be/EcRmCsdtiGk', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EcRmCsdtiGk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:26:21', '2023-04-26 05:26:21'),
(1959, 'Terapia neural y la desobediencia vital', 'https://youtu.be/Q0NFiDFhPXI', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Q0NFiDFhPXI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:26:31', '2023-04-26 05:26:31'),
(1960, 'Hablemos de Neurosintergia', 'https://youtu.be/rA2qD567I30', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rA2qD567I30\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:26:44', '2023-04-26 05:26:44'),
(1961, 'Acerca de la Postmuerte', 'https://youtu.be/WGh2kMqv0zg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WGh2kMqv0zg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:26:56', '2023-04-26 05:26:56'),
(1962, 'Viscitudes del Akasha', 'https://youtu.be/k0nnJcncK_8', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/k0nnJcncK_8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:27:07', '2023-04-26 05:27:07'),
(1963, 'La observación como camino', 'https://youtu.be/epYNvy8adsk', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/epYNvy8adsk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:27:20', '2023-04-26 05:27:20'),
(1964, 'El fuego de las pruebas', 'https://youtu.be/R93sLE92ZAk', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/R93sLE92ZAk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:27:34', '2023-04-26 05:27:34'),
(1965, 'Estado de Certeza', 'https://youtu.be/4DKFVUbX_tE', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4DKFVUbX_tE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:27:46', '2023-04-26 05:27:46'),
(1966, 'Preguntas curso Estado de Certeza', 'https://youtu.be/pEEWsXCxivc', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pEEWsXCxivc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:28:02', '2023-04-26 05:28:02'),
(1967, 'Meditación para jóvenes', 'https://youtu.be/vwNd4CEeh90', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vwNd4CEeh90\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:28:13', '2023-04-26 05:28:13'),
(1968, 'Cierre del Curso Estado de Certeza', 'https://youtu.be/YBwyoroJE7I', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YBwyoroJE7I\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:28:25', '2023-04-26 05:28:25'),
(1969, 'Seminario de estudios Neurosintérgia', 'https://youtu.be/jdjrFL_DfII', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jdjrFL_DfII\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:28:36', '2023-04-26 05:28:36'),
(1970, 'Psicoterapia Neurosintérgica y los gatos muertos', 'https://youtu.be/GMAg8aUt0d8', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GMAg8aUt0d8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:28:49', '2023-04-26 05:28:49'),
(1971, 'Interacción biológica de lugares energéticos', 'https://youtu.be/X1wx83a11FE', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/X1wx83a11FE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:29:01', '2023-04-26 05:29:01'),
(1972, 'La trilogía de la certeza', 'https://youtu.be/WN08nsixiyk', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WN08nsixiyk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:29:14', '2023-04-26 05:29:14'),
(1973, 'Después del Documental El Secreto de Dr. Grinberg', 'https://youtu.be/2Uwz49y2n4c', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2Uwz49y2n4c\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:29:36', '2023-04-26 05:29:36'),
(1974, 'Unidad de conciencia y factor de direccionalidad', 'https://youtu.be/uxwg5smkoAs', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uxwg5smkoAs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:29:46', '2023-04-26 05:29:46'),
(1975, 'Experiencia Sintérgica en lugares energéticos: Peña de Bernal', 'https://youtu.be/CyrQre-eWmg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CyrQre-eWmg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:30:26', '2023-04-26 05:30:26'),
(1976, 'Capacidades humanas y los planos espirituales', 'https://youtu.be/HifjtTwS2nY', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HifjtTwS2nY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:30:39', '2023-04-26 05:30:39'),
(1977, 'La fuerza vital de intercambio', 'https://youtu.be/FhPN5JceHCY', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FhPN5JceHCY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:30:51', '2023-04-26 05:30:51'),
(1978, 'La fuerza del Ser - El total femenino', 'https://youtu.be/xSzIowje-MQ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xSzIowje-MQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:31:06', '2023-04-26 05:31:06'),
(1979, 'Emoción Avatar El punto de partida de la trasformación del ser', 'https://youtu.be/AHchEOEjLK4', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AHchEOEjLK4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:31:16', '2023-04-26 05:31:16'),
(1980, 'Vivir en el Estado de Certeza', 'https://youtu.be/0wuSiAVfF9k', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0wuSiAVfF9k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:31:42', '2023-04-26 05:31:42'),
(1981, 'Las creencias que nos limitan', 'https://youtu.be/bo2Y7m_uDBs', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bo2Y7m_uDBs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:31:53', '2023-04-26 05:31:53'),
(1982, 'Ontología Dependiente del Modelo', 'https://youtu.be/Uri-yBDPjm4', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Uri-yBDPjm4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:32:04', '2023-04-26 05:32:04'),
(1983, 'Meditación Neurosintérgica', 'https://youtu.be/WZqzWyoehjI', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WZqzWyoehjI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:32:15', '2023-04-26 05:32:15'),
(1984, 'La ansiedad por el saber quien soy', 'https://youtu.be/ruRA6rg4MdE', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ruRA6rg4MdE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:32:28', '2023-04-26 05:32:28'),
(1985, 'La disposición del SER y su comunicación total', 'https://youtu.be/-H3um1f2Kc4', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-H3um1f2Kc4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:32:40', '2023-04-26 05:32:40'),
(1986, 'TRE: Resolviendo el Estrés Postraumático', 'https://youtu.be/TC1VdNufcZE', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TC1VdNufcZE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:32:51', '2023-04-26 05:32:51'),
(1987, 'De las investigaciones de neurosintergia: sonidos y salud', 'https://youtu.be/g4APLF9Hscs', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/g4APLF9Hscs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:33:02', '2023-04-26 05:33:02'),
(1988, 'Tradiciones y Conciencia', 'https://youtu.be/hQwmmTxdsD0', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hQwmmTxdsD0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:33:14', '2023-04-26 05:33:14'),
(1989, 'La Entropía del Ser', 'https://youtu.be/xDNisHmlxkg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xDNisHmlxkg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:33:23', '2023-04-26 05:33:23'),
(1990, 'Física cuántica y neurosintergia. La explicación desde el sintergico.', 'https://youtu.be/DoHNjkWzWJY', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DoHNjkWzWJY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:33:35', '2023-04-26 05:33:35'),
(1991, 'Neuroespacio de Aniversario', 'https://youtu.be/hWPnqurlF18', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hWPnqurlF18\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:33:46', '2023-04-26 05:33:46'),
(1992, 'Las trampas del ego-egoísta y el desarrollo del ser', 'https://youtu.be/hw4X8OTv-yw', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hw4X8OTv-yw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:38:19', '2023-04-26 05:38:19'),
(1993, 'Enigmas y claves de la imagen de la Virgen de Guadalupe', 'https://youtu.be/areodbJw0yk', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/areodbJw0yk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:38:29', '2023-04-26 05:38:29'),
(1994, 'Meditación Neurosintérgica 2022', 'https://youtu.be/s-mT2it-mPk', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/s-mT2it-mPk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:38:43', '2023-04-26 05:38:43'),
(1995, 'Psicoterapia Neurosintérgica', 'https://youtu.be/3QgMBvfQ2Z8', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3QgMBvfQ2Z8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:38:54', '2023-04-26 05:38:54'),
(1996, 'Amor Navidad', 'https://youtu.be/ZGi-sl-4x0U', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZGi-sl-4x0U\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 620, '2023-04-26 05:39:09', '2023-04-26 05:39:09'),
(1997, 'Nivel I - 2021', 'https://vimeo.com/631196411/f6daf00709', '<iframe src=\"https://player.vimeo.com/video/631196411\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 621, '2023-04-26 05:43:03', '2023-04-26 05:43:03'),
(1998, 'Nivel I - 2022', 'https://vimeo.com/710970390', '<iframe src=\"https://player.vimeo.com/video/710970390\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 621, '2023-04-26 05:43:30', '2023-04-26 05:43:30'),
(1999, 'Sala informativa', 'https://youtu.be/dfkcA74B3Gc', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dfkcA74B3Gc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 621, '2023-04-26 05:43:46', '2023-04-26 05:43:46'),
(2000, 'Nivel II - 2021', 'https://vimeo.com/631251176/cc89a2e520', '<iframe src=\"https://player.vimeo.com/video/631251176\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 622, '2023-04-26 05:44:07', '2023-04-26 05:44:07'),
(2001, 'Nivel II - 2022', 'https://vimeo.com/710971435', '<iframe src=\"https://player.vimeo.com/video/710971435\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 622, '2023-04-26 05:44:30', '2023-04-26 05:44:30'),
(2002, 'Sala informativa', 'https://youtu.be/9NZfgU29jZA', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9NZfgU29jZA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 622, '2023-04-26 05:44:47', '2023-04-26 05:44:47'),
(2003, 'Nivel III - 2021', 'https://vimeo.com/631285976/077ba7ffc9', '<iframe src=\"https://player.vimeo.com/video/631285976\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 623, '2023-04-26 05:45:10', '2023-04-26 05:45:10'),
(2004, 'Nivel III - 2022', 'https://vimeo.com/710979351', '<iframe src=\"https://player.vimeo.com/video/710979351\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 623, '2023-04-26 05:45:26', '2023-04-26 05:45:26'),
(2005, 'Sala informativa', 'https://youtu.be/1wj4TKXgn9c', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1wj4TKXgn9c\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 623, '2023-04-26 05:45:41', '2023-04-26 05:45:41'),
(2006, 'Meditación', 'https://vimeo.com/761670354', '<iframe src=\"https://player.vimeo.com/video/761670354\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 624, '2023-04-26 05:46:05', '2023-04-26 05:46:05'),
(2007, 'Neurosintergia de la Felicidad', 'https://vimeo.com/608480247/4ef25150a8', '<iframe src=\"https://player.vimeo.com/video/608480247\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 625, '2023-04-26 05:48:58', '2023-04-26 05:48:58'),
(2008, 'Sesión', 'https://vimeo.com/805372895', '<iframe src=\"https://player.vimeo.com/video/805372895\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 626, '2023-04-26 06:39:05', '2023-04-26 06:39:05'),
(2009, 'Sesión', 'https://vimeo.com/805374440', '<iframe src=\"https://player.vimeo.com/video/805374440\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 627, '2023-04-26 06:42:17', '2023-04-26 06:42:17'),
(2010, 'Presentación', 'https://vimeo.com/754857776', '<iframe src=\"https://player.vimeo.com/video/754857776\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 628, '2023-04-26 06:46:56', '2023-04-26 06:46:56'),
(2011, 'Sala 1', 'https://vimeo.com/754860350', '<iframe src=\"https://player.vimeo.com/video/754860350\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 629, '2023-04-26 06:48:54', '2023-04-26 06:48:54'),
(2012, 'Sala 2', 'https://vimeo.com/754860576', '<iframe src=\"https://player.vimeo.com/video/754860576\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 629, '2023-04-26 06:49:07', '2023-04-26 06:49:07'),
(2013, 'Sala', 'https://vimeo.com/754862407', '<iframe src=\"https://player.vimeo.com/video/754862407\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 630, '2023-04-26 06:49:33', '2023-04-26 06:49:33'),
(2014, 'Sala', 'https://vimeo.com/754864243', '<iframe src=\"https://player.vimeo.com/video/754864243\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 631, '2023-04-26 06:49:56', '2023-04-26 06:49:56'),
(2015, 'Sala', 'https://vimeo.com/761597273', '<iframe src=\"https://player.vimeo.com/video/761597273\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 632, '2023-04-26 06:50:11', '2023-04-26 06:50:11'),
(2016, 'Sala', 'https://vimeo.com/761600019', '<iframe src=\"https://player.vimeo.com/video/761600019\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 633, '2023-04-26 06:50:31', '2023-04-26 06:50:31'),
(2017, 'Sala', 'https://vimeo.com/761600200', '<iframe src=\"https://player.vimeo.com/video/761600200\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 634, '2023-04-26 06:50:46', '2023-04-26 06:50:46'),
(2018, 'Sala', 'https://vimeo.com/763618158', '<iframe src=\"https://player.vimeo.com/video/763618158\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 635, '2023-04-26 06:50:58', '2023-04-26 06:50:58'),
(2019, 'Sala', 'https://vimeo.com/724690647', '<iframe src=\"https://player.vimeo.com/video/724690647\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 636, '2023-04-26 06:53:44', '2023-04-26 06:53:44'),
(2020, 'Presentación', 'https://vimeo.com/796754650', '<iframe src=\"https://player.vimeo.com/video/796754650\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 637, '2023-04-26 06:59:27', '2023-04-26 06:59:27'),
(2021, 'Sesión', 'https://vimeo.com/800029679', '<iframe src=\"https://player.vimeo.com/video/800029679\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 638, '2023-04-26 06:59:46', '2023-04-26 06:59:46'),
(2022, 'Sesión', 'https://vimeo.com/806952875', '<iframe src=\"https://player.vimeo.com/video/806952875\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 639, '2023-04-26 07:00:10', '2023-04-26 07:00:10'),
(2023, 'Sesión', 'https://vimeo.com/803181044', '<iframe src=\"https://player.vimeo.com/video/803181044\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 640, '2023-04-26 07:00:31', '2023-04-26 07:00:31'),
(2024, 'Sesión', 'https://vimeo.com/805372622', '<iframe src=\"https://player.vimeo.com/video/805372622\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 641, '2023-04-26 07:01:00', '2023-04-26 07:01:00'),
(2025, 'Sesión', 'https://vimeo.com/807764248', '<iframe src=\"https://player.vimeo.com/video/807764248\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 642, '2023-04-26 07:01:23', '2023-04-26 07:01:23'),
(2026, 'Sesión', 'https://vimeo.com/810348920', '<iframe src=\"https://player.vimeo.com/video/810348920\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 643, '2023-04-26 07:01:56', '2023-04-26 07:01:56'),
(2027, 'Arbol del dinero 2 Edición', 'https://vimeo.com/658354627/fe536ec39f', '<iframe src=\"https://player.vimeo.com/video/658354627\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 2, 644, '2023-04-26 07:05:08', '2023-04-26 07:05:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lesson_user`
--

CREATE TABLE `lesson_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `levels`
--

INSERT INTO `levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Básico', '2022-07-19 21:20:13', '2022-07-20 01:54:14'),
(2, 'Intermedio', '2022-07-19 21:20:13', '2022-07-20 01:54:36'),
(9, 'Avanzado', '2023-04-22 02:51:59', '2023-04-22 02:51:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas`
--

CREATE TABLE `listas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `activa` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2018_12_23_120000_create_shoppingcart_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2021_05_15_193504_create_sessions_table', 1),
(8, '2021_05_15_195638_create_levels_table', 1),
(9, '2021_05_15_195722_create_categories_table', 1),
(10, '2021_05_15_200017_create_prices_table', 1),
(11, '2021_05_15_200103_create_courses_table', 1),
(12, '2021_05_15_201014_create_course_user_table', 1),
(13, '2021_05_15_201151_create_reviews_table', 1),
(14, '2021_05_15_201332_create_profiles_table', 1),
(15, '2021_05_15_202724_create_requirements_table', 1),
(16, '2021_05_15_202806_create_goals_table', 1),
(17, '2021_05_15_202844_create_audiences_table', 1),
(18, '2021_05_15_202902_create_sections_table', 1),
(19, '2021_05_15_203520_create_platforms_table', 1),
(20, '2021_05_15_203550_create_lessons_table', 1),
(21, '2021_05_15_203750_create_descriptions_table', 1),
(22, '2021_05_15_203927_create_lesson_user_table', 1),
(23, '2021_05_15_204807_create_resources_table', 1),
(24, '2021_05_15_204929_create_comments_table', 1),
(25, '2021_05_15_205102_create_reactions_table', 1),
(26, '2021_05_15_205315_create_images_table', 1),
(27, '2021_05_16_165900_create_categoris_table', 1),
(28, '2021_05_16_165922_create_posts_table', 1),
(29, '2021_05_16_170346_create_tags_table', 1),
(30, '2021_05_16_170639_create_post_tag_table', 1),
(31, '2021_05_19_151617_create_permission_tables', 1),
(32, '2021_05_23_234047_create_jobs_table', 1),
(33, '2021_05_24_143050_create_observations_table', 1),
(34, '2021_06_04_173234_create_categoriis_table', 1),
(35, '2021_06_04_173525_create_subcategoriis_table', 1),
(36, '2021_06_04_174407_create_brands_table', 1),
(37, '2021_06_04_174801_create_brand_categorii_table', 1),
(38, '2021_06_04_174802_create_products_table', 1),
(39, '2021_06_04_175043_create_colors_table', 1),
(40, '2021_06_04_175140_create_color_product_table', 1),
(41, '2021_06_04_175439_create_sizes_table', 1),
(42, '2021_06_04_175608_create_color_size_table', 1),
(43, '2021_06_09_193507_create_departments_table', 1),
(44, '2021_06_09_193630_create_cities_table', 1),
(45, '2021_06_09_193654_create_districts_table', 1),
(46, '2021_06_09_193732_create_orders_table', 1),
(47, '2021_06_21_151951_create_chats_table', 1),
(48, '2021_06_25_162353_create_proyectos_table', 1),
(49, '2021_06_27_035535_create_podcasts_table', 1),
(50, '2021_06_27_221317_create_songs_table', 1),
(51, '2021_06_27_222001_create_listas_table', 1),
(52, '2022_08_21_183030_create_shoppingcart_table', 2),
(53, '2022_08_21_183040_create_questions_table', 3),
(54, '2022_08_21_183050_create_answers_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 101),
(1, 'App\\Models\\User', 111),
(1, 'App\\Models\\User', 113),
(1, 'App\\Models\\User', 233),
(1, 'App\\Models\\User', 234),
(1, 'App\\Models\\User', 236),
(1, 'App\\Models\\User', 268),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 111),
(2, 'App\\Models\\User', 112),
(2, 'App\\Models\\User', 113),
(2, 'App\\Models\\User', 233),
(2, 'App\\Models\\User', 234),
(2, 'App\\Models\\User', 236),
(2, 'App\\Models\\User', 268),
(3, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 111),
(3, 'App\\Models\\User', 113),
(3, 'App\\Models\\User', 233),
(3, 'App\\Models\\User', 234),
(3, 'App\\Models\\User', 236),
(3, 'App\\Models\\User', 268),
(4, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 101),
(4, 'App\\Models\\User', 111),
(4, 'App\\Models\\User', 113),
(4, 'App\\Models\\User', 233),
(4, 'App\\Models\\User', 236),
(4, 'App\\Models\\User', 268);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observations`
--

CREATE TABLE `observations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `contact` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` enum('1','2','3','4','5') NOT NULL DEFAULT '1',
  `envio_type` enum('1','2') NOT NULL,
  `shipping_cost` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`content`)),
  `envio` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`envio`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('intelisoftw@gmail.com', '$2y$10$LKToNYtl3.Y2XowXZuDK3eIHXHImTxjLNredGOEo/bKbo0h/gek3y', '2023-04-03 23:17:54'),
('mancer_metal@hotmail.com', '$2y$10$K0Z8A3JarEeicH52NSps8e/3HkSVJ.xMsmDn3rQ4WA1EjkFwPzdka', '2023-04-06 03:14:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin.home', 'Ver dashboard', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(2, 'Ver dashboard', 'Ver dashboard', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(3, 'admin.users.index', 'Ver listado de usuarios', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(4, 'admin.users.edit', 'Asignar un rol', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(5, 'Crear Cursos', 'Crear Cursos', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(6, 'Leer cursos', 'Leer cursos', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(7, 'Actualizar cursos', 'Actualizar cursos', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(8, 'Eliminar Cursos', 'Eliminar Cursos', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(9, 'admin.categories.index', 'Ver listado de categorías C', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(10, 'admin.categories.create', 'Crear categorías C', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(11, 'admin.categories.edit', 'Editar categorías C', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(12, 'admin.categories.destroy', 'Eliminar categorías C', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(13, 'admin.prices.index', 'Ver listado de precios', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(14, 'admin.prices.create', 'Crear precios', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(15, 'admin.prices.edit', 'Editar precios', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(16, 'admin.prices.destroy', 'Eliminar precios', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(17, 'admin.levels.index', 'Ver listado de niveles', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(18, 'admin.levels.create', 'Crear niveles', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(19, 'admin.levels.edit', 'Editar niveles', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(20, 'admin.levels.destroy', 'Eliminar niveles', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(21, 'Crear role', 'Crear role', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(22, 'Listar role', 'Listar role', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(23, 'Editar role', 'Editar role', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(24, 'Eliminar role', 'Eliminar role', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(25, 'Leer usuarios', 'Leer usuarios', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12'),
(26, 'Editar usuarios', 'Editar usuarios', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12'),
(27, 'admin.categoris.index', 'Ver listado de categorías', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12'),
(28, 'admin.categoris.create', 'Crear categorías', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12'),
(29, 'admin.categoris.edit', 'Editar categorías', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12'),
(30, 'admin.categoris.destroy', 'Eliminar categorías', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12'),
(31, 'admin.tags.index', 'ver listado de etiquetas', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12'),
(32, 'admin.tags.create', 'Crear etiquetas', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12'),
(33, 'admin.tags.edit', 'Editar etiquetas', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12'),
(34, 'admin.tags.destroy', 'Eliminar etiquetas', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12'),
(35, 'admin.posts.index', 'Ver listado de posts', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12'),
(36, 'admin.posts.create', 'Crear posts', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12'),
(37, 'admin.posts.edit', 'Editar posts', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12'),
(38, 'admin.posts.destroy', 'Eliminar posts', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platforms`
--

CREATE TABLE `platforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `platforms`
--

INSERT INTO `platforms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Youtube', '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(2, 'Vimeo', '2022-07-19 21:23:10', '2022-07-19 21:23:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `podcasts`
--

CREATE TABLE `podcasts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `song` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `extract` text DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `categori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `prices`
--

INSERT INTO `prices` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Gratis', 0.00, '2022-07-19 21:23:10', '2022-07-19 21:23:10'),
(5, '$250 MXN', 250.00, '2022-07-30 01:03:35', '2023-04-26 06:01:57'),
(9, '$500 MXN', 500.00, '2023-04-20 01:33:23', '2023-04-26 06:01:14'),
(10, '$1000 MXN', 1000.00, '2023-04-22 02:53:53', '2023-04-26 06:02:08'),
(11, '$2000 MXN', 2000.00, '2023-04-22 02:54:13', '2023-04-26 06:02:24'),
(12, '$1300 MXN', 1300.00, '2023-04-22 02:54:40', '2023-04-26 06:02:32'),
(13, '$3000 MXN Men.', 3000.00, '2023-04-23 06:21:44', '2023-04-26 06:02:48'),
(14, 'INSCRIPCIÓN', 45000.00, '2023-04-25 05:59:00', '2023-04-26 06:03:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` double(8,2) NOT NULL,
  `subcategorii_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `price`, `subcategorii_id`, `brand_id`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sint neque aut.', 'sint-neque-aut', 'Incidunt sed pariatur perspiciatis velit numquam numquam. Facilis perferendis nihil ut qui illum. Molestiae in vitae ipsa hic.', 49.99, 3, 3, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(2, 'Quo enim tempora.', 'quo-enim-tempora', 'Ipsam autem repellat alias itaque. Sequi esse aut earum necessitatibus rerum. Magni eveniet hic vel. Dolorum perspiciatis delectus iure dolorem aperiam. Quis aut sunt eius labore excepturi.', 49.99, 2, 1, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(3, 'Id voluptatem.', 'id-voluptatem', 'Id voluptatibus odio dicta autem. Eligendi reiciendis odit consequuntur sequi consequuntur fugiat. Dicta fuga praesentium ab accusamus omnis excepturi enim. Magnam ea in magnam et et.', 49.99, 5, 8, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(4, 'Dolorem porro corporis.', 'dolorem-porro-corporis', 'Est inventore eveniet optio facilis ut ex. Cum ut similique qui voluptates laudantium reprehenderit id. Ut sunt totam voluptate. Illo ipsam animi perspiciatis corporis eos laudantium atque.', 19.99, 5, 6, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(5, 'Quas eos.', 'quas-eos', 'Alias voluptate voluptas nulla et nam voluptatem. In perferendis corporis beatae sed veniam dolores temporibus porro. Vel aut temporibus qui eum facilis ut facilis tempore.', 19.99, 6, 6, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(6, 'Est excepturi voluptatum.', 'est-excepturi-voluptatum', 'Voluptatibus voluptas aliquam rerum et quaerat maiores laudantium. Ipsum animi consequatur deleniti et reprehenderit harum. Quia distinctio est iure et eum dolore nihil.', 49.99, 15, 18, NULL, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(7, 'Vero distinctio ea.', 'vero-distinctio-ea', 'Alias animi mollitia saepe at sint. Ea facilis a dolore at. Omnis ratione rerum magni esse et nulla cupiditate.', 19.99, 14, 16, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(8, 'Voluptatum reprehenderit.', 'voluptatum-reprehenderit', 'Aut nihil voluptatem quo qui. Ratione vel consequatur necessitatibus tempore et est. Eos tempore voluptatibus similique mollitia nihil facere quibusdam.', 19.99, 14, 13, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(9, 'Consequuntur qui qui.', 'consequuntur-qui-qui', 'Exercitationem et placeat quibusdam hic. Consectetur illo voluptatibus inventore eos repellendus. Sequi consectetur corporis nisi sunt aut. Doloremque id sint et sed sed eos.', 19.99, 15, 19, NULL, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(10, 'Placeat quasi iusto.', 'placeat-quasi-iusto', 'Sit in porro eos modi iste illum. Aut error aut excepturi eum cum. Ducimus dolor sit aut ut omnis soluta. Saepe voluptas est sint molestias quia et id.', 99.99, 12, 15, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(11, 'Fuga tenetur.', 'fuga-tenetur', 'Eos ab reprehenderit mollitia velit deserunt illo eum. Voluptatem eos molestiae quae. Commodi quis ut ad. Aut quisquam nesciunt qui est amet et ut.', 19.99, 16, 17, NULL, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(12, 'Dolor nulla.', 'dolor-nulla', 'Ut est molestias quaerat voluptatem est sed. Quos rerum expedita sit qui ea quidem quidem eum. Autem ut inventore facilis quia dolorum sunt.', 49.99, 3, 1, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(13, 'Voluptate ipsa.', 'voluptate-ipsa', 'Esse mollitia laboriosam id. Ut ut ratione hic facilis officiis rerum tenetur.', 99.99, 17, 17, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(14, 'Quo rerum est.', 'quo-rerum-est', 'Consequuntur qui quaerat modi repudiandae beatae ut incidunt et. Nostrum et quo sit esse. Ut consequatur laborum id dolorem.', 49.99, 4, 7, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(15, 'Eum incidunt.', 'eum-incidunt', 'Adipisci asperiores quam illum. Et rerum fugiat velit sunt qui eos ullam laborum. Architecto deleniti aut ut perferendis eos.', 49.99, 17, 19, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(16, 'Ullam odit voluptatem.', 'ullam-odit-voluptatem', 'Voluptatem in voluptates repellat qui dolores cumque. Ipsa qui recusandae omnis id ut vitae. Sunt nemo aut consequuntur est quia minima nostrum similique. Quam rerum voluptas dolorem quia.', 99.99, 12, 15, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(17, 'Quos quas dolore.', 'quos-quas-dolore', 'Qui maiores blanditiis et aperiam iusto rerum. Modi non ad unde id eos hic voluptatem. Perferendis magnam dolore sed.', 99.99, 15, 17, NULL, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(18, 'Tempora et eligendi.', 'tempora-et-eligendi', 'Expedita tenetur cupiditate ipsam voluptate. Cupiditate et minus tempore illo aliquid. Dolorem quisquam ut maxime maiores. Aut nulla sed architecto quia est. Id rerum ut labore sequi.', 19.99, 4, 8, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(19, 'Et voluptas et.', 'et-voluptas-et', 'Qui repellat praesentium sed itaque reprehenderit. Omnis et quidem animi omnis eum. Et in rem nulla quidem. Itaque error et et.', 99.99, 18, 19, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(20, 'Voluptatem itaque tempora.', 'voluptatem-itaque-tempora', 'Ut et illum et quia eum quod et. Dicta eum eius enim officia. Repellat vero asperiores culpa quia culpa. Aut placeat nemo quam iure atque impedit quis.', 49.99, 15, 18, NULL, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(21, 'Autem est.', 'autem-est', 'Dolores aut dolores animi maiores. Natus voluptate repudiandae nihil minima.', 19.99, 17, 20, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(22, 'Earum est.', 'earum-est', 'Ipsa molestiae eum est non soluta. Odit est quis ea officiis sint minus. Et expedita blanditiis consequatur sit mollitia officiis.', 99.99, 15, 19, NULL, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(23, 'Aut ipsum rerum.', 'aut-ipsum-rerum', 'Tempora iure natus voluptates aut necessitatibus repudiandae minima. Est delectus aut rem temporibus. Veniam aut cumque iste optio sapiente repellat est qui. Culpa dolor dolore eligendi.', 49.99, 4, 5, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(24, 'Doloribus mollitia harum.', 'doloribus-mollitia-harum', 'In ut repellendus nesciunt doloribus veritatis minus. Consequatur ut officia ipsam quaerat ut aspernatur nemo. Omnis dolor tempora ipsa. Eligendi quaerat sint sed qui explicabo quis.', 49.99, 13, 16, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(25, 'Fuga in eveniet.', 'fuga-in-eveniet', 'Ipsa nihil animi eum et soluta nesciunt error dolore. Ut officia necessitatibus laborum sunt. Aut voluptatem dolorem eveniet doloribus tempora voluptate.', 49.99, 7, 11, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(26, 'Nihil exercitationem perspiciatis.', 'nihil-exercitationem-perspiciatis', 'Assumenda illum in deserunt consequatur qui. Delectus vel explicabo nam voluptas necessitatibus. Vero amet doloribus provident aperiam exercitationem. In omnis est magni non at velit hic.', 99.99, 7, 10, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(27, 'Cum ut.', 'cum-ut', 'Corrupti enim ipsum facere sunt. Consequatur quibusdam magnam eveniet ullam. Veniam rerum ut nobis est voluptatem natus nihil.', 99.99, 17, 17, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(28, 'Et placeat distinctio.', 'et-placeat-distinctio', 'Eaque eos totam et dolor voluptatibus. Ut esse quos eaque. Nemo enim molestiae optio voluptas ut cumque consequatur.', 49.99, 14, 14, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(29, 'Ratione temporibus.', 'ratione-temporibus', 'Voluptates eos vel voluptatem commodi adipisci. Vel ad vero repellat rem odit et quas voluptas. Sunt corrupti ipsum sapiente omnis nemo.', 49.99, 16, 19, NULL, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(30, 'Earum veritatis et.', 'earum-veritatis-et', 'Suscipit nesciunt neque quidem laudantium ab voluptas. Neque aliquid nisi dicta.', 49.99, 16, 18, NULL, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(31, 'Nulla consectetur recusandae.', 'nulla-consectetur-recusandae', 'Id quo et voluptatem nam dolore quidem. Iste sit suscipit esse ut. Neque iste id sit itaque quis optio velit hic. Maxime fuga culpa aliquid est dolorem quidem doloremque.', 49.99, 16, 18, NULL, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(32, 'Unde dolores.', 'unde-dolores', 'Laborum et quibusdam corporis quas aut quia reprehenderit. Esse accusamus dolores asperiores tenetur eos. Culpa nobis eos exercitationem reiciendis qui aliquid.', 99.99, 4, 6, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(33, 'Atque aut.', 'atque-aut', 'Repudiandae aspernatur ipsa blanditiis asperiores velit accusamus sed. Quasi ut ea tempore nihil fugit est impedit. Quisquam voluptatem cumque necessitatibus architecto.', 49.99, 6, 7, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(34, 'Beatae molestias.', 'beatae-molestias', 'Sapiente necessitatibus ab et soluta non. Esse sapiente ipsum atque omnis. Omnis soluta omnis voluptatem cum suscipit odit in eos. Nesciunt dolores id occaecati facilis maxime enim adipisci eius.', 99.99, 7, 11, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(35, 'Nisi dolores esse.', 'nisi-dolores-esse', 'In modi adipisci nisi consectetur accusamus molestiae quis quas. Nostrum nemo ex hic adipisci occaecati atque dolore. Iusto praesentium temporibus voluptate.', 49.99, 9, 9, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(36, 'Maxime amet tempora.', 'maxime-amet-tempora', 'Molestias dolor nesciunt consectetur quia. Quis dolores veritatis reiciendis non tenetur aut. Optio odio ratione maxime iste aspernatur quis fugit. Assumenda voluptates placeat qui corporis qui.', 99.99, 8, 11, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(37, 'Illo et.', 'illo-et', 'Nobis accusantium ullam eos ipsam esse et ipsum aut. Aliquam voluptate dolorem itaque aut et qui. Sequi officia qui qui id porro voluptatem. Accusamus dolorem nostrum sed sit qui.', 99.99, 4, 6, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(38, 'Hic non.', 'hic-non', 'Ducimus aut est ea nostrum. Sapiente iste ut accusamus beatae expedita omnis a. Tempora aut et ipsa qui excepturi consequatur. Sunt aut et sunt doloribus et.', 19.99, 10, 9, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(39, 'At ducimus.', 'at-ducimus', 'Aut ipsum temporibus officia atque quod est quia. Ipsa enim distinctio ipsa soluta itaque vel. Et minus dolor voluptate enim et.', 19.99, 3, 4, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(40, 'Accusamus vero sed.', 'accusamus-vero-sed', 'Labore vel sit et possimus perferendis. Aut autem voluptas cumque. Consequatur et deserunt et perspiciatis. Non rerum atque qui et. Consequatur mollitia ab ea est voluptatum.', 49.99, 7, 11, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(41, 'Temporibus nisi.', 'temporibus-nisi', 'Ab autem ipsam autem in assumenda quis. Reiciendis aspernatur perspiciatis magni mollitia fugit est. Nisi et inventore sequi voluptate incidunt.', 99.99, 17, 18, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(42, 'Atque odio.', 'atque-odio', 'Quo blanditiis et eum aut ut omnis quisquam praesentium. Velit nihil sint et praesentium autem similique. Doloribus modi minima consequatur delectus ut. Facilis et commodi est.', 49.99, 8, 9, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(43, 'Quisquam quasi.', 'quisquam-quasi', 'Aliquam quisquam veritatis voluptatum dicta deleniti quo temporibus. Rem officiis tenetur eligendi dolorum. Laboriosam iste voluptatum numquam qui temporibus dolorem.', 49.99, 1, 2, NULL, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(44, 'At ab.', 'at-ab', 'Sapiente laudantium veritatis nulla et. Quasi aspernatur dolorum numquam consequatur ut ut et. Velit beatae minus mollitia pariatur. Pariatur vel et minima dicta vero necessitatibus voluptatem.', 49.99, 18, 18, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(45, 'Consectetur natus illo.', 'consectetur-natus-illo', 'Ut beatae culpa et nihil. Animi nisi at aliquid et tempora.', 19.99, 4, 7, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(46, 'Porro molestiae.', 'porro-molestiae', 'Id veniam illo consectetur nam at. Omnis blanditiis corrupti delectus voluptates cum. Aut rerum autem animi culpa vel.', 19.99, 1, 3, NULL, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(47, 'Rerum quas consequatur.', 'rerum-quas-consequatur', 'Tempore maxime autem voluptatibus. Quia harum ut sunt. Expedita modi rem quo voluptatibus. Delectus aut eum amet recusandae itaque nisi adipisci. Ut error quasi soluta.', 19.99, 8, 10, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(48, 'Voluptatem iste ducimus.', 'voluptatem-iste-ducimus', 'Esse fugit quia sint et expedita. Iusto explicabo sed id omnis error fugiat. Id magni distinctio aut ea.', 99.99, 4, 8, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(49, 'Saepe officiis pariatur.', 'saepe-officiis-pariatur', 'Rerum sunt cum autem dolores. Ex non temporibus ea ut animi iusto. Adipisci quo repellendus exercitationem ut animi aliquid et. Saepe optio debitis qui laudantium dolorem cupiditate.', 99.99, 6, 8, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(50, 'Autem occaecati.', 'autem-occaecati', 'Magni voluptatem iure iste libero earum aliquid. Fugiat esse omnis quibusdam beatae architecto est aut omnis. Beatae dolorum iusto est. Voluptatem repudiandae soluta quod harum reiciendis itaque.', 99.99, 11, 13, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(51, 'Dolores et illum.', 'dolores-et-illum', 'Voluptas incidunt labore nihil. Sit rerum expedita et natus. Velit ut nam quis molestiae.', 99.99, 2, 2, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(52, 'Quas molestiae deserunt.', 'quas-molestiae-deserunt', 'Consequuntur mollitia enim aut vero eum nostrum rerum. Suscipit aut ea ut illum iusto voluptatem aperiam. Optio sequi illo dolores quaerat officia. Est consequuntur tempore aut nam sed.', 19.99, 8, 9, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(53, 'Dolorum animi aut.', 'dolorum-animi-aut', 'Assumenda numquam et facere quam iure laudantium. Recusandae velit alias est et. Nesciunt magnam qui qui ex dolorum sequi animi. Quibusdam vel perspiciatis nostrum asperiores.', 99.99, 14, 15, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(54, 'Est necessitatibus quibusdam.', 'est-necessitatibus-quibusdam', 'Magni voluptatum id est consectetur qui ad non. Ut odio sed ex dolores alias sit ut. Molestiae nostrum et ut aperiam. Adipisci doloribus dolor aut atque dolore beatae.', 99.99, 2, 4, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(55, 'Totam aspernatur.', 'totam-aspernatur', 'Tempore suscipit exercitationem exercitationem ratione rerum. Consequatur ut nihil architecto quaerat est. Blanditiis vel quia quo asperiores laudantium consectetur.', 49.99, 11, 15, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(56, 'Optio labore.', 'optio-labore', 'Excepturi officia omnis esse fugit consectetur et atque. Omnis ipsum doloribus et aut facilis aut corrupti. Soluta aliquam quisquam et.', 49.99, 2, 2, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(57, 'Eum qui perspiciatis.', 'eum-qui-perspiciatis', 'Dolores quis dolorem aut ab fugit non. Est nesciunt similique optio porro vero recusandae. In perferendis qui omnis soluta. Similique culpa quam cum voluptatem.', 99.99, 14, 13, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(58, 'Tenetur quia ipsa.', 'tenetur-quia-ipsa', 'Nemo nobis consequuntur quia animi. Voluptatum distinctio fugiat nulla dolores omnis. Quis consequatur vero quam ex et voluptatibus maiores. Qui eligendi ut velit tempore aut est.', 49.99, 3, 2, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(59, 'Sit dolores.', 'sit-dolores', 'Vitae ut vel enim at. Consequatur sed sed animi consectetur sed quis. Exercitationem qui deserunt in molestias tenetur modi id. Temporibus id aut perferendis ex et est veniam.', 49.99, 18, 19, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(60, 'Et laudantium.', 'et-laudantium', 'Quia et nostrum commodi alias laudantium odit eveniet. Non porro magni assumenda consectetur quo voluptatem aperiam sint. Ipsa ad quidem possimus non harum porro rem.', 49.99, 10, 11, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(61, 'Perferendis voluptatibus atque.', 'perferendis-voluptatibus-atque', 'Amet impedit sed exercitationem nobis iste nostrum qui. Est officia optio dolor. Est voluptatem quam expedita alias sit molestiae assumenda. Qui voluptatem rerum dolore perspiciatis ut iusto.', 19.99, 13, 16, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(62, 'Delectus blanditiis.', 'delectus-blanditiis', 'Assumenda doloribus in ut accusamus. Qui omnis esse et et maxime reprehenderit ipsa qui. Sunt et quia architecto impedit quas quis quis.', 99.99, 8, 9, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(63, 'Sint quas odio.', 'sint-quas-odio', 'Nihil iusto consequatur ut. Sequi ut sit temporibus.', 49.99, 2, 1, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(64, 'Voluptatem ad natus.', 'voluptatem-ad-natus', 'Dicta labore consequatur blanditiis officiis sint iusto. Magnam ea ipsam excepturi quibusdam voluptatem sequi. Iusto repudiandae esse expedita adipisci.', 99.99, 3, 1, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(65, 'Quidem dolores.', 'quidem-dolores', 'Molestiae ut at fugiat id ipsa. Autem est aperiam cupiditate voluptas illum. Atque sed id veniam quia inventore.', 19.99, 5, 6, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(66, 'Consequatur distinctio.', 'consequatur-distinctio', 'Vero possimus consequatur consequuntur dolor earum. Ab non consequatur delectus. Maiores est repellendus earum tenetur nam. Maxime sint sit incidunt consequatur sapiente eius.', 49.99, 12, 14, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(67, 'Nihil sed placeat.', 'nihil-sed-placeat', 'Fugiat est qui quo tempora. Quisquam distinctio molestiae qui explicabo natus est ea. Blanditiis voluptatibus at quibusdam qui quo.', 19.99, 17, 20, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(68, 'Aut fugiat adipisci.', 'aut-fugiat-adipisci', 'Iure commodi molestiae quia natus expedita. Voluptate laborum facilis culpa dignissimos rerum rerum. Iure eos non dolorum adipisci eum.', 49.99, 16, 18, NULL, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(69, 'Voluptas velit cumque.', 'voluptas-velit-cumque', 'Ea quis omnis fuga quibusdam. Omnis incidunt illo quae rerum a sed nihil. Repellat sunt possimus incidunt consequatur. Fugiat nisi sequi ut tempora veritatis.', 19.99, 14, 13, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(70, 'Minima nesciunt.', 'minima-nesciunt', 'Quis aut ea molestiae ipsa quia expedita praesentium. Doloremque labore rerum asperiores delectus. Voluptas tempora ex harum. Occaecati eum dolores minima doloribus.', 19.99, 10, 10, 15, '2', '2022-07-19 21:20:15', '2022-07-19 21:20:15'),
(71, 'Quasi aut adipisci.', 'quasi-aut-adipisci', 'Nihil laudantium enim molestiae nisi. Dicta consequatur cupiditate est impedit et aut odit. Quaerat similique et quibusdam qui. Voluptas praesentium ut cum voluptates deleniti architecto.', 19.99, 16, 19, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(72, 'Expedita quisquam explicabo.', 'expedita-quisquam-explicabo', 'Magnam voluptas aliquam ipsa laudantium praesentium. Earum eligendi est quia repellendus ut. Natus magnam ipsum numquam officiis.', 19.99, 7, 10, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(73, 'Fuga qui consequatur.', 'fuga-qui-consequatur', 'Non quia aliquid iste totam quaerat minus aperiam. Sint tempora sit et sit. Dolores reiciendis et nam tempora.', 49.99, 9, 9, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(74, 'Voluptatem porro.', 'voluptatem-porro', 'Aut non quis aut vero inventore impedit dicta. Animi dolor enim perspiciatis vel cupiditate velit dolores. Rerum expedita nisi illum vitae voluptatem.', 19.99, 4, 6, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(75, 'Illo laudantium ut.', 'illo-laudantium-ut', 'Voluptas molestiae tempora quia. Deserunt quo sint odio modi dolore. Sint rerum quo veniam soluta. Omnis ratione reprehenderit dolor dolores quos hic est. Et et laudantium illo hic.', 99.99, 4, 6, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(76, 'Et error error.', 'et-error-error', 'Quasi dolor labore fugiat est rerum et. Pariatur excepturi adipisci laborum fuga fugit non doloremque voluptatem. Omnis commodi ullam perspiciatis nam iusto. Amet excepturi et deleniti itaque.', 99.99, 4, 5, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(77, 'Nihil esse quos.', 'nihil-esse-quos', 'Fugiat ipsum rerum placeat commodi et dolorem. Explicabo provident unde ut nobis reiciendis dolores voluptatem. Assumenda ducimus veritatis reiciendis porro facilis et enim.', 19.99, 12, 13, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(78, 'Tempore quos sit.', 'tempore-quos-sit', 'Cumque natus aut et ratione facere. Assumenda ut quod ut numquam tempore quam magnam. Voluptate quaerat excepturi quasi. Itaque consectetur quis laudantium aut ea et eaque.', 49.99, 1, 1, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(79, 'Aut molestiae.', 'aut-molestiae', 'Excepturi veniam asperiores minus atque. Odio accusamus molestiae voluptas officia. Adipisci est quo harum recusandae amet. Ut exercitationem ut et rerum vel ullam.', 19.99, 1, 2, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(80, 'Eius explicabo nam.', 'eius-explicabo-nam', 'Eos repellendus in eos maxime sed. Placeat incidunt repellat nam dolorum id corporis. Placeat autem maxime ipsa eos ratione. Cumque mollitia numquam dolorem eos.', 99.99, 18, 18, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(81, 'Eius fugit aut.', 'eius-fugit-aut', 'Molestiae voluptas eveniet amet culpa voluptatem fugiat est. Nisi harum alias hic id aut. Voluptatem sunt ipsam debitis et amet. Blanditiis veniam excepturi voluptatum doloremque.', 19.99, 1, 2, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(82, 'Quo ex.', 'quo-ex', 'Non magni perspiciatis fugit aperiam quaerat soluta. Ut et quam et. Molestiae architecto ut quaerat laborum. A sed voluptate et numquam qui dicta.', 99.99, 11, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(83, 'Officiis quo maiores.', 'officiis-quo-maiores', 'Et sed enim dolorem dolores officiis. Et repellendus adipisci dolor doloribus ut odio numquam illo. Laudantium voluptas quasi odit quas. Voluptatem sed dolores autem vel nesciunt ea aut.', 99.99, 10, 9, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(84, 'Corporis architecto.', 'corporis-architecto', 'Exercitationem cumque dicta reiciendis inventore quia occaecati. Odit minima rerum omnis ipsam molestias dolores. At autem laborum doloremque quae. Et laborum beatae omnis doloribus officia corrupti.', 99.99, 1, 4, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(85, 'A et dolores.', 'a-et-dolores', 'Tempora non consequatur omnis ratione illo et placeat adipisci. Et amet aperiam quasi. Sit id possimus est dignissimos.', 49.99, 1, 3, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(86, 'Accusantium et.', 'accusantium-et', 'Quis nulla cupiditate libero. Velit itaque possimus nobis labore quis consequatur.', 99.99, 6, 8, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(87, 'Recusandae beatae.', 'recusandae-beatae', 'Deleniti porro et at eum autem expedita nobis. Nisi dolorem quia maiores. Repellat sit fuga magni distinctio et. Sit architecto soluta laudantium nihil laborum harum sit.', 49.99, 1, 4, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(88, 'Possimus est.', 'possimus-est', 'Numquam aspernatur numquam cumque voluptatem. Magni architecto dolorem id ad. Aut et illo provident at eum.', 99.99, 14, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(89, 'Ab debitis.', 'ab-debitis', 'Velit beatae autem explicabo aut incidunt incidunt nihil. Quis illo repellat vitae aut quasi. Ullam totam illo consequatur.', 99.99, 18, 20, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(90, 'Fugiat qui earum.', 'fugiat-qui-earum', 'Cupiditate voluptate dignissimos perferendis explicabo. Cupiditate nesciunt odio sed natus non. Repellat perspiciatis cumque esse ut neque quo molestias ut. Provident quia est fugiat ex quas.', 49.99, 4, 5, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(91, 'Expedita rerum sunt.', 'expedita-rerum-sunt', 'Dicta vero suscipit quibusdam voluptatem et sunt. Voluptas sit sed laudantium amet. Et maxime at et. Minus nemo rem atque illum ipsum porro quod sapiente.', 99.99, 10, 9, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(92, 'Est illo.', 'est-illo', 'Incidunt molestiae eligendi aut aut. Accusamus ab voluptas id voluptatem doloribus atque velit deleniti. A dolores alias at nihil. In doloremque saepe quis asperiores.', 99.99, 18, 18, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(93, 'Rerum error ad.', 'rerum-error-ad', 'Repudiandae voluptas aliquam quia aspernatur illo. Ut quod amet nisi atque provident ut non iure. Ea quae atque suscipit voluptate voluptatibus reprehenderit saepe. Rerum aut laborum et laborum in.', 49.99, 10, 12, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(94, 'Omnis corrupti.', 'omnis-corrupti', 'Qui consequatur cumque quia explicabo at ex. Reiciendis voluptas eos rerum ut similique. Odit hic necessitatibus sunt nihil magnam cupiditate quisquam. Quaerat rerum voluptate voluptas harum.', 49.99, 10, 9, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(95, 'Aperiam quibusdam ullam.', 'aperiam-quibusdam-ullam', 'Rerum aspernatur aut aut at corporis. Eveniet perferendis accusamus consequatur minima est rem. Sint aperiam voluptatem deleniti eos. At quo ut rerum repellat.', 99.99, 16, 19, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(96, 'Temporibus eligendi voluptatibus.', 'temporibus-eligendi-voluptatibus', 'Eveniet repellendus nostrum voluptas omnis eos. Cupiditate odit facilis optio sequi repudiandae quia voluptas. Inventore et eum et voluptatem totam quo quos. Ea eos reiciendis est neque eaque.', 49.99, 2, 1, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(97, 'Et recusandae consequatur.', 'et-recusandae-consequatur', 'Ipsam modi voluptas nulla autem sed. Totam necessitatibus voluptatem quae atque cupiditate distinctio suscipit. Totam sapiente fuga aut repellat.', 49.99, 12, 14, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(98, 'Minus harum omnis.', 'minus-harum-omnis', 'Animi consequatur voluptas qui dolorum consectetur. Error commodi eveniet aliquid voluptate quasi eos. Autem facilis ex qui voluptates dolorem consequatur modi.', 19.99, 9, 11, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(99, 'Ipsa animi ratione.', 'ipsa-animi-ratione', 'Veniam quidem voluptatum non minima. Rem ratione ab in accusantium. Sed quidem eligendi quae velit laboriosam iusto. Explicabo sunt veniam et facilis rem quis reprehenderit.', 49.99, 7, 12, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(100, 'Ipsam ut.', 'ipsam-ut', 'Facere in sint sunt et porro. Nemo unde qui qui ex. Ad blanditiis veniam voluptatibus exercitationem iste.', 49.99, 7, 9, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(101, 'Odit laborum.', 'odit-laborum', 'A ut eaque adipisci ut ducimus. Molestiae mollitia et doloremque ipsum placeat exercitationem ut. Aut nostrum rerum deleniti.', 49.99, 9, 10, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(102, 'Sed et sapiente.', 'sed-et-sapiente', 'Qui repellat non voluptatem tempora sint. Nisi quis atque velit molestiae omnis eligendi minus. Aliquid quia aut occaecati magni dolorem ut perspiciatis.', 49.99, 14, 14, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(103, 'Est officia.', 'est-officia', 'Quasi numquam ratione saepe et. Sed fugit aut possimus sit. Ad amet aut aperiam laudantium pariatur. Ab ipsam labore ut corrupti.', 49.99, 11, 14, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(104, 'Sit animi.', 'sit-animi', 'Nemo vitae est consectetur omnis deserunt nulla non. Quis corrupti illo et vitae. Voluptates quia nam quod quaerat asperiores voluptatum.', 99.99, 2, 3, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(105, 'Officiis distinctio.', 'officiis-distinctio', 'Voluptatem sunt ipsam architecto eum. Ipsam ratione tempore dicta dolorum non. Fugiat autem modi et adipisci velit.', 49.99, 3, 4, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(106, 'Sit cupiditate maxime.', 'sit-cupiditate-maxime', 'Quia asperiores et sint sunt. Quasi eos quas excepturi quibusdam voluptatem.', 99.99, 17, 18, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(107, 'Nostrum rerum.', 'nostrum-rerum', 'Consequuntur vitae ipsa perferendis incidunt eos omnis amet. Et occaecati veritatis corporis et. Est expedita aliquam consequuntur aut et. Est et est animi eveniet magnam aut.', 49.99, 2, 4, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(108, 'Autem earum.', 'autem-earum', 'Ut reiciendis laudantium facere quasi beatae sed quia. Sequi voluptates et voluptatem id sint est. Aperiam ab perspiciatis et voluptatem nihil corporis. Nemo non est consequatur vel.', 19.99, 16, 18, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(109, 'Libero magni id.', 'libero-magni-id', 'Ab eos nisi odit blanditiis aut rem ea autem. Asperiores similique quos adipisci cumque ut. Inventore quia deleniti pariatur ullam est et. Fugit sint est iste rem itaque nostrum.', 99.99, 5, 5, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(110, 'Id modi.', 'id-modi', 'Culpa aliquam rerum voluptatibus fugit voluptate. Qui dolore omnis libero facilis recusandae et. Quae est iure nemo consequuntur laborum veritatis. Quas ut voluptas doloremque distinctio deserunt.', 49.99, 5, 8, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(111, 'Officia alias est.', 'officia-alias-est', 'Soluta doloribus qui id molestiae reprehenderit. Quia commodi quia minus quo. Incidunt modi est neque ut reprehenderit ducimus voluptas. Sint laboriosam ut alias veniam praesentium.', 49.99, 17, 19, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(112, 'Natus quidem et.', 'natus-quidem-et', 'Rerum sequi enim eos. Voluptatem quis quia ducimus sit odit. Recusandae repellendus quibusdam necessitatibus. Minima non amet recusandae qui.', 19.99, 10, 11, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(113, 'Nostrum itaque.', 'nostrum-itaque', 'Et exercitationem optio aut ab necessitatibus numquam repellat. Ab rem dolorem qui deleniti repellat. In sed voluptatem voluptate placeat incidunt minus reiciendis.', 19.99, 13, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(114, 'Aspernatur rem.', 'aspernatur-rem', 'Ab hic voluptate odit illum mollitia autem. Id minus qui nemo nam. Perferendis quasi eveniet natus laudantium. Amet nihil maiores ut voluptatem velit consequatur cumque.', 49.99, 10, 11, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(115, 'Tempora illo qui.', 'tempora-illo-qui', 'Aut tempora nihil nemo et in quas. Sed eum blanditiis consequatur totam.', 49.99, 1, 3, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(116, 'Nisi dicta.', 'nisi-dicta', 'Dolor odio qui voluptatem deleniti eaque et ut corporis. Earum est dolorem velit sint facere voluptas. Praesentium dignissimos quidem qui officiis aut.', 49.99, 9, 12, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(117, 'Nihil voluptatem.', 'nihil-voluptatem', 'Et voluptatem mollitia ipsum aliquam. Debitis ullam ut est ut in mollitia. Tempora nostrum debitis odio sunt voluptatem est. Ex tenetur perspiciatis veritatis.', 19.99, 4, 5, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(118, 'Corrupti excepturi.', 'corrupti-excepturi', 'Praesentium reiciendis nesciunt et quos. Accusantium est quia minus ut eos voluptatem veritatis. Id possimus minima tempore mollitia quo.', 49.99, 17, 17, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(119, 'Quis quis.', 'quis-quis', 'Et maxime quas pariatur et rem sint inventore. Eius aperiam delectus aut dignissimos. Reiciendis nobis iure perspiciatis sunt. Et commodi sunt laudantium et in.', 99.99, 12, 14, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(120, 'Quisquam amet quibusdam.', 'quisquam-amet-quibusdam', 'Fuga rerum fugit consequatur. Ratione et dolorem iusto sed similique. Non iste recusandae quia ipsum porro debitis. Ea similique quas dolores sunt possimus aperiam similique.', 19.99, 18, 20, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(121, 'Culpa amet consequatur.', 'culpa-amet-consequatur', 'Suscipit cum ut velit ipsa. Minus qui dignissimos rem recusandae ex.', 49.99, 2, 2, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(122, 'Et at.', 'et-at', 'Distinctio enim dolor adipisci qui quia ducimus natus. Eius sed id velit placeat velit est quo. Eaque qui rerum et exercitationem nostrum sunt aut. Quia libero quas inventore nemo ullam.', 19.99, 13, 13, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(123, 'Tenetur numquam sed.', 'tenetur-numquam-sed', 'Veniam optio est totam nostrum. Sit est rerum at tenetur voluptates aliquam. Ut nihil atque et omnis voluptas reprehenderit.', 19.99, 7, 11, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(124, 'Omnis ut.', 'omnis-ut', 'Doloribus ducimus nostrum minus. Illum eos doloremque ex quis occaecati est pariatur recusandae. Rem eos illum eos accusamus. Quia officiis quasi ut impedit nostrum et.', 99.99, 10, 12, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(125, 'Eos facere.', 'eos-facere', 'Asperiores numquam quod recusandae magni accusamus dicta laudantium. Esse et et rerum eveniet cupiditate. Qui quo et eum tempora rerum. Velit consequatur iusto magnam.', 99.99, 12, 16, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(126, 'Id vero.', 'id-vero', 'Provident quasi quos quis numquam sit voluptas. Sit beatae molestiae beatae quia totam quaerat iure. Ea est quasi et rerum. Hic reiciendis tempora distinctio cumque.', 99.99, 9, 10, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(127, 'Error nemo impedit.', 'error-nemo-impedit', 'Ut sit minus repellat assumenda tempore voluptatem autem. Est voluptatum quibusdam quo quia sunt perferendis quisquam. Ipsam vero neque qui. Ut molestiae dignissimos voluptates.', 19.99, 4, 6, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(128, 'Id nam et.', 'id-nam-et', 'Doloremque debitis occaecati aut est adipisci. Adipisci minima excepturi minima deserunt. Debitis earum molestias porro ducimus natus.', 99.99, 4, 7, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(129, 'Tenetur quos.', 'tenetur-quos', 'Dicta quis qui vitae maiores. Non ea vel saepe veniam ad illo cum. Soluta ea porro sapiente at eligendi provident non doloribus. Omnis in fugit molestiae voluptates.', 19.99, 14, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(130, 'Eum quo.', 'eum-quo', 'Facilis ut quis sint est impedit enim necessitatibus. Veniam qui aut animi fugiat quam atque quae. Quaerat sequi dolorem eos quis est reprehenderit odit. Possimus quia vel velit aut.', 49.99, 11, 14, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(131, 'Tenetur in.', 'tenetur-in', 'Eum quis harum sint sed officiis sunt libero. Quasi sunt temporibus sequi. Dolor temporibus impedit nesciunt quisquam ea. Voluptas omnis necessitatibus sed nihil perferendis eos beatae.', 19.99, 4, 6, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(132, 'Est assumenda.', 'est-assumenda', 'Deleniti quibusdam dolor sed consequatur autem. Odit blanditiis non vitae sed natus laboriosam. Repellendus natus corporis sequi hic. Tempore et quis quis blanditiis.', 99.99, 15, 18, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(133, 'Harum sed.', 'harum-sed', 'Vitae sed sunt excepturi voluptas qui eligendi voluptatibus hic. Reprehenderit cupiditate animi est. Autem eos ut et unde.', 49.99, 10, 10, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(134, 'Quisquam rem.', 'quisquam-rem', 'Fugiat sed ad nihil non mollitia aut consequuntur maxime. Sed aut sit nesciunt a. Et autem ut voluptates aut quia quis.', 19.99, 5, 6, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(135, 'Consectetur natus.', 'consectetur-natus', 'Quis quo mollitia amet quia voluptas facilis. Aut nostrum dolor dolore non quia aut nobis. Ut repudiandae dolores et dolorem quibusdam dolores sint.', 19.99, 11, 13, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(136, 'Eum dolor et.', 'eum-dolor-et', 'Et ut quis ducimus et. Consequatur quo id sit incidunt earum. Provident nam quaerat eius alias impedit laboriosam. Laudantium illo dolores quidem quae cupiditate saepe officiis.', 49.99, 7, 11, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(137, 'Nihil sit.', 'nihil-sit', 'Cupiditate aperiam et occaecati cumque et asperiores. Corrupti et repudiandae amet laudantium qui et. Qui enim vel quisquam. Est architecto laboriosam aut.', 49.99, 16, 19, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(138, 'Ut distinctio.', 'ut-distinctio', 'Ut libero nostrum ut aut. Iure voluptas maxime eos doloribus molestias. Voluptates architecto ducimus et fugiat. Qui quod sint eius veniam aliquam.', 19.99, 12, 13, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(139, 'Et soluta.', 'et-soluta', 'Totam neque non dolor totam. Molestias provident magni facilis a consequuntur eveniet.', 19.99, 5, 6, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(140, 'Quia quis voluptatem.', 'quia-quis-voluptatem', 'Omnis provident vitae autem blanditiis. Veniam mollitia ipsum occaecati quis perferendis ut dicta. Aliquid ipsum sapiente aut delectus esse beatae.', 99.99, 14, 16, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(141, 'Totam autem eum.', 'totam-autem-eum', 'Pariatur nihil itaque ipsam itaque. Ea voluptatem voluptatum dolores placeat qui et qui omnis. Qui ipsum deserunt et officia aut illum.', 99.99, 18, 19, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(142, 'Voluptate atque est.', 'voluptate-atque-est', 'Quibusdam voluptas soluta occaecati. Nihil et asperiores reiciendis et alias sit quod. Id at voluptatum voluptatem ea sunt expedita sed. Molestias harum atque odit omnis et minus.', 19.99, 8, 12, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(143, 'Est aspernatur reprehenderit.', 'est-aspernatur-reprehenderit', 'Et adipisci occaecati reiciendis. Adipisci doloremque ut velit eos aperiam dolores. Optio at dolor a blanditiis laborum odit iusto.', 99.99, 6, 5, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(144, 'Quis est.', 'quis-est', 'Molestiae accusamus explicabo aperiam nemo quo harum. Autem rerum tempora aut sit. Tempora quo totam expedita a deleniti.', 99.99, 10, 12, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(145, 'Reiciendis sint temporibus.', 'reiciendis-sint-temporibus', 'Soluta voluptas velit temporibus laborum et explicabo quae vel. Enim tempora voluptates neque fugiat. Error temporibus ea qui minus dolorum. Ducimus vitae officia aut.', 19.99, 15, 18, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(146, 'Aut laboriosam et.', 'aut-laboriosam-et', 'Dolore illum quia nisi qui laboriosam. Ab qui nulla sit ipsam sed ab. Qui quia maxime atque modi maxime quas. Mollitia iure odit in consequuntur minus repellendus.', 99.99, 15, 19, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(147, 'Dolore quo.', 'dolore-quo', 'Occaecati natus totam quo. Repudiandae similique et ut est et earum. Possimus qui modi occaecati debitis et vero nesciunt. Neque qui ab veritatis quos nihil velit maxime. Quia maiores sed illo.', 19.99, 6, 5, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(148, 'Temporibus accusantium.', 'temporibus-accusantium', 'Eos quidem est recusandae soluta harum ut. Iste qui repellendus eos magni sequi sint voluptatibus. Ut modi explicabo error autem.', 19.99, 3, 3, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(149, 'Omnis omnis eaque.', 'omnis-omnis-eaque', 'Consequatur dolore quidem ut iste quis. Iure qui reiciendis non fugit eos officiis magnam. Consectetur voluptate recusandae excepturi.', 49.99, 6, 8, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(150, 'Et quos.', 'et-quos', 'Illo quia tempore quod quas maiores. A accusamus et et earum labore. Hic temporibus quod ea voluptas totam qui et.', 49.99, 2, 2, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(151, 'Libero facere.', 'libero-facere', 'Sequi suscipit ipsam et officiis ad. Deserunt officiis non blanditiis praesentium occaecati qui inventore. Inventore molestias aut dignissimos qui veritatis. Et enim sit sunt eum.', 49.99, 12, 16, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(152, 'Consequuntur architecto.', 'consequuntur-architecto', 'Excepturi eum occaecati voluptatibus non enim illum. Aspernatur officia possimus inventore adipisci accusamus. Laborum facere quia qui dolorem. Fuga aut et vero voluptate omnis iste fugit quis.', 99.99, 18, 20, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(153, 'Nihil molestias reiciendis.', 'nihil-molestias-reiciendis', 'Sit omnis est ex consequatur provident nihil voluptatem. Autem in et qui tempore.', 49.99, 16, 17, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(154, 'Facilis quaerat.', 'facilis-quaerat', 'Asperiores accusamus et nemo quas fugiat. Esse dignissimos inventore aspernatur ad. Sunt consequuntur omnis assumenda earum nulla veritatis et. Quia corrupti in voluptatem eos.', 49.99, 13, 14, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(155, 'Reiciendis aut.', 'reiciendis-aut', 'Reprehenderit totam voluptas eos voluptatem ipsam. Architecto aliquid voluptatem et et. Vel facilis beatae incidunt.', 49.99, 11, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(156, 'Aut in.', 'aut-in', 'Sed voluptas et consequatur rerum qui perspiciatis. Qui fuga quos error commodi.', 49.99, 3, 4, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(157, 'Eum repellat officia.', 'eum-repellat-officia', 'Molestias culpa quia est perspiciatis. Accusantium ipsa ipsum ratione occaecati nesciunt eos. Id itaque rerum quis.', 99.99, 10, 11, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(158, 'Est id sed.', 'est-id-sed', 'Magnam ad non dignissimos illo voluptatem dolor totam. Facere facere ad est praesentium expedita. Pariatur quo ut aut quia placeat ut cupiditate minus. Molestiae non odit explicabo saepe aut nemo.', 99.99, 1, 3, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(159, 'Id voluptas error.', 'id-voluptas-error', 'Eius nesciunt deleniti et ut at nulla. Officia sed natus distinctio velit et. Quaerat delectus natus qui ut voluptatem consequuntur. Labore sint corrupti tempore dolore quo error libero quam.', 49.99, 8, 10, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(160, 'Quo nostrum.', 'quo-nostrum', 'Id eius non consequatur in voluptatem eos. Corporis autem voluptatem rem aut magni in sunt. Deleniti enim eum consequatur aliquam. Aliquam consequuntur aperiam deserunt voluptatem velit minima.', 99.99, 11, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(161, 'Id enim ducimus.', 'id-enim-ducimus', 'Ex ratione quibusdam quidem soluta. Saepe rerum dolorum autem. Magnam sint consequatur sed et nam commodi accusantium.', 49.99, 11, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(162, 'Voluptatem ad odio.', 'voluptatem-ad-odio', 'Possimus perspiciatis voluptatum aut incidunt tenetur voluptate. Ratione alias at qui rerum fugiat magni.', 49.99, 9, 10, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(163, 'Explicabo consequatur.', 'explicabo-consequatur', 'Quisquam harum est id ut. Odio repudiandae quibusdam ut labore suscipit maiores.', 49.99, 12, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(164, 'Est rem numquam.', 'est-rem-numquam', 'Voluptate eaque fugiat non ipsum. Ut ea earum nisi non blanditiis explicabo totam. Voluptas voluptates earum deserunt voluptatem. Sed aut aut at optio facilis eveniet.', 99.99, 1, 4, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(165, 'Qui sequi.', 'qui-sequi', 'Veritatis illum exercitationem sunt consequatur ut. Modi est necessitatibus voluptas eaque dolorem est rerum. Natus dolor non et sint modi expedita. Autem sit neque fuga dolores.', 49.99, 1, 2, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(166, 'Ut dolorum.', 'ut-dolorum', 'In odio sunt sequi illo et aut aut molestiae. Qui quo libero ea sequi. Dolores autem ullam qui corporis ullam et sunt. Non qui veniam ut itaque. Impedit cupiditate molestias ratione velit.', 49.99, 16, 17, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(167, 'Officia nesciunt corrupti.', 'officia-nesciunt-corrupti', 'Quis praesentium aut exercitationem voluptas sed. Nihil optio inventore minus dolor voluptas molestiae aut. Velit officia voluptatem necessitatibus. Veniam ut dolores eos deleniti ducimus.', 49.99, 11, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(168, 'Ullam et laudantium.', 'ullam-et-laudantium', 'Officia mollitia dolores non cupiditate tempore fuga. Dolorum hic fugit id. In recusandae tempore ipsam. Eveniet provident magni beatae nobis.', 49.99, 7, 10, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(169, 'Voluptatem et.', 'voluptatem-et', 'Explicabo voluptatem odit dolorum omnis voluptas. Autem nihil rerum fugiat libero excepturi amet mollitia. Provident rerum est molestiae repudiandae et voluptatem facilis.', 19.99, 9, 11, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(170, 'Suscipit deleniti.', 'suscipit-deleniti', 'Hic quis quia et praesentium ut et alias. Quia soluta reprehenderit voluptas nemo qui autem nesciunt. Aut modi unde voluptas distinctio enim rerum amet assumenda.', 99.99, 10, 12, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(171, 'Rem sunt sunt.', 'rem-sunt-sunt', 'Eum a dolorum aliquam aut corporis optio quos. Inventore voluptatem ullam et autem qui quod et. Tempore non minima deleniti odio fugit.', 19.99, 16, 19, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(172, 'Officia minus.', 'officia-minus', 'Occaecati minima modi blanditiis sint est asperiores asperiores. Deserunt voluptatem accusamus qui necessitatibus voluptatem qui. Repellendus porro ad quo facilis qui omnis consequatur.', 99.99, 4, 5, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(173, 'Sapiente facilis.', 'sapiente-facilis', 'Maiores consequatur incidunt sit sed assumenda voluptatem alias. Enim voluptatem totam ad aut et. Suscipit possimus molestiae veritatis natus autem repellat. Et labore reiciendis et eius fuga.', 19.99, 3, 4, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(174, 'Nam voluptate.', 'nam-voluptate', 'Exercitationem molestias ab doloremque praesentium autem. Eos nisi asperiores excepturi consequatur. Aliquam praesentium ut ut consectetur et ut expedita.', 99.99, 9, 11, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(175, 'Illum velit rerum.', 'illum-velit-rerum', 'Illo delectus quos fugit nesciunt. Quaerat officia eius culpa consequatur nostrum. Aliquid qui et pariatur velit sapiente ab. Et in quasi consequuntur vel quos id molestiae.', 49.99, 16, 17, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(176, 'Tempora omnis.', 'tempora-omnis', 'Ipsam occaecati molestias praesentium dolorem voluptas libero. Molestiae voluptas dolorum maxime. Beatae aut magni sunt quo aut unde. Nemo sunt sit quia totam illo.', 49.99, 2, 3, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(177, 'Velit inventore et.', 'velit-inventore-et', 'Cum quis error qui qui nobis eos inventore. Est quam corporis nulla explicabo aut dolores nam. Dolorem omnis delectus quo culpa consectetur aspernatur in. Voluptas sit velit rem ullam tempora qui.', 99.99, 12, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(178, 'Aspernatur eligendi quibusdam.', 'aspernatur-eligendi-quibusdam', 'Aut et sed iure eius harum. Dolorem accusamus omnis magni quis incidunt similique iste. Et dolor est impedit officiis aspernatur sed voluptas.', 19.99, 9, 9, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(179, 'Quia eum.', 'quia-eum', 'Repudiandae id velit debitis velit. Non et reiciendis ut consectetur consequatur et. Voluptas et non soluta. Provident vel architecto est deserunt rem ut.', 49.99, 14, 14, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(180, 'Aperiam excepturi.', 'aperiam-excepturi', 'Aut iste et distinctio sit et magnam voluptatibus. Architecto numquam consectetur ut eum. Deserunt in rerum incidunt minima.', 99.99, 13, 16, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(181, 'Molestias perferendis tenetur.', 'molestias-perferendis-tenetur', 'Animi nulla suscipit ut officiis nobis. Dolore id impedit vel odit ipsum repellat tenetur. Esse molestiae ipsa ipsa nobis impedit esse dignissimos harum.', 49.99, 5, 8, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(182, 'Eveniet quae.', 'eveniet-quae', 'Ea veritatis dolor quis occaecati et. Atque est quod omnis ipsum rerum sit dolor sequi. Vel aut odit aspernatur enim. Vero est incidunt quia aut provident.', 19.99, 17, 20, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(183, 'Optio sint.', 'optio-sint', 'Numquam ea numquam reiciendis est voluptas ut nisi. Omnis assumenda et aliquam enim voluptas aut autem ipsa. Tempora optio ut quis voluptatem adipisci consectetur dolor consequuntur.', 19.99, 10, 12, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16');
INSERT INTO `products` (`id`, `name`, `slug`, `description`, `price`, `subcategorii_id`, `brand_id`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(184, 'Odit tempora sunt.', 'odit-tempora-sunt', 'Accusamus assumenda consequuntur et est omnis nihil. Iste maxime voluptatem consectetur fugit doloremque perferendis. Est aliquam vel et et. Voluptatum consequatur qui labore odit aperiam.', 99.99, 16, 17, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(185, 'Quia vero amet.', 'quia-vero-amet', 'Laboriosam reiciendis totam et dolor. Dolor cumque voluptate dolores tenetur ea officia dolorem. Sed suscipit cupiditate enim.', 19.99, 13, 14, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(186, 'Omnis consectetur.', 'omnis-consectetur', 'Atque possimus et ut delectus nesciunt sunt animi itaque. Distinctio in ipsam non amet distinctio sit. Sed adipisci repellat omnis sunt possimus. Quia velit id asperiores dolor inventore quae.', 99.99, 9, 10, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(187, 'Voluptas debitis.', 'voluptas-debitis', 'Voluptatem dolor eveniet officia quod eaque. Vel numquam suscipit vel veniam necessitatibus. Quia neque hic enim magnam debitis porro placeat.', 49.99, 11, 13, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(188, 'Et occaecati.', 'et-occaecati', 'Accusamus voluptas quas ipsa maxime ipsum et nesciunt. Expedita voluptatem ut aut sequi qui. Quisquam autem accusantium vero dolores.', 99.99, 3, 4, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(189, 'Ad voluptatem non.', 'ad-voluptatem-non', 'Dolores fugit doloremque voluptate nihil. Sed quia a at iste. Aspernatur dolore quis dolores quis. Animi corrupti laborum qui officiis sit.', 99.99, 1, 4, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(190, 'Aliquid in.', 'aliquid-in', 'Iusto et voluptatem totam. Commodi non ut dolorem quos. Aut totam corporis dolorum dolores quis.', 19.99, 7, 10, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(191, 'Sunt ipsa.', 'sunt-ipsa', 'Aut error inventore quaerat quisquam quas. Voluptas quis repellat quis quasi expedita eos. Consectetur nobis sed fugit officia iure.', 99.99, 16, 18, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(192, 'Omnis quidem in.', 'omnis-quidem-in', 'Aliquid alias odit quis nulla rerum quia molestias. Debitis alias nihil accusamus odit consequatur molestias dolor. Nihil necessitatibus iste sapiente.', 99.99, 4, 8, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(193, 'Magni aliquid consectetur.', 'magni-aliquid-consectetur', 'Sit quibusdam ad sit eos. Neque officiis corporis amet perferendis. Molestias quia tenetur culpa sit ut earum.', 49.99, 6, 5, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(194, 'Aut et et.', 'aut-et-et', 'Ea cumque dolorem veritatis ut accusantium sapiente. Quasi ut quos laborum illum totam dolores.', 49.99, 4, 7, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(195, 'Voluptatibus id sed.', 'voluptatibus-id-sed', 'Beatae et et eos quibusdam eius quis. Labore autem quia aut ea.', 99.99, 4, 5, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(196, 'Optio dolorum.', 'optio-dolorum', 'Esse sunt et eius incidunt inventore. Odit voluptate aut aut placeat mollitia amet rerum. Iusto corrupti illum laborum.', 49.99, 14, 14, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(197, 'Error in.', 'error-in', 'Exercitationem nostrum atque voluptas explicabo aut. Est illo aut reprehenderit dolor tenetur perspiciatis est. Rerum molestias unde facere. Aliquam illo tenetur natus blanditiis officia.', 99.99, 12, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(198, 'Sed aut.', 'sed-aut', 'Sequi sapiente rem voluptatem illum. Qui veritatis porro odit in dolores qui necessitatibus. Molestiae ipsam consequatur vel odit earum libero non. Eius ipsum quos suscipit quia nostrum sed maxime.', 99.99, 11, 16, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(199, 'Tempora laudantium ut.', 'tempora-laudantium-ut', 'Minus maiores eos fugit perferendis dolores et quis aut. Et repellat quia qui molestiae dolores eligendi magni. Nihil quae soluta voluptatem libero.', 19.99, 9, 12, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(200, 'Dolore vel.', 'dolore-vel', 'Repudiandae omnis rerum eos. Soluta harum magnam enim rerum nesciunt est. Quis tempora dolor qui voluptate possimus.', 19.99, 1, 3, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(201, 'A voluptatem.', 'a-voluptatem', 'Porro voluptas ipsa eaque illo est. Reprehenderit repudiandae qui dicta ut dolore ut et. Sint est quia et quis facilis voluptas. Repellendus iste asperiores aut consequatur quia repellat sed.', 99.99, 17, 20, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(202, 'Eveniet odit.', 'eveniet-odit', 'Aut rerum et dolore velit sit minus. Praesentium distinctio voluptatem magnam porro ut omnis quia. Eum sed eveniet quia nisi repellat voluptas officiis occaecati. Magni et sit vero minus.', 49.99, 13, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(203, 'Saepe earum.', 'saepe-earum', 'Voluptate rerum incidunt ut modi exercitationem. Assumenda non repellendus similique quisquam eligendi.', 19.99, 18, 17, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(204, 'Officiis non.', 'officiis-non', 'Et ipsum quos non quia facere molestiae. Enim molestiae laboriosam esse occaecati. Aut expedita ullam ut aut sunt eligendi. Nemo ea id distinctio fugit et at. Minus nostrum quis aut.', 19.99, 4, 6, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(205, 'Et est.', 'et-est', 'Sed ut ipsa ut omnis. Nulla odio aut laboriosam quia. Rerum maxime quia eius dolorem quia ab in voluptas. Eum repudiandae aut iste est.', 19.99, 7, 10, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(206, 'Neque aperiam.', 'neque-aperiam', 'Ea quae itaque odit illo voluptatem sed. Et quia natus sed vel velit. Tempore fugit est esse nostrum. Exercitationem consequatur eaque aliquam sunt deleniti omnis.', 19.99, 9, 11, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(207, 'Autem dignissimos.', 'autem-dignissimos', 'Ut odio maiores laboriosam. Occaecati neque facilis quod quos quia tenetur. Repellat occaecati quia quasi possimus ipsum labore. Qui totam non consequatur corrupti corporis quod.', 49.99, 14, 13, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(208, 'Sed est.', 'sed-est', 'Id placeat tenetur odit natus iure quod error ab. Dolorem illo nulla unde porro molestiae qui aut. Autem expedita numquam saepe et saepe aliquam. Voluptate cum nostrum voluptas voluptates.', 19.99, 16, 20, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(209, 'Sapiente et.', 'sapiente-et', 'Neque quos laudantium non ut. In neque explicabo iste. Quod dolorem et occaecati amet necessitatibus ea. Occaecati aut ipsum dignissimos voluptates atque voluptas.', 19.99, 6, 8, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(210, 'Ut molestiae.', 'ut-molestiae', 'Id voluptatibus velit odio delectus est. Culpa consectetur sed vero magni. Asperiores sed numquam accusantium eaque repudiandae. Tenetur est sequi sint similique et.', 19.99, 7, 11, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(211, 'Voluptates qui.', 'voluptates-qui', 'Quod atque a quos culpa. Consequatur laboriosam molestiae vel quo aut animi qui. Unde labore dicta est et explicabo.', 99.99, 10, 10, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(212, 'Eaque laboriosam.', 'eaque-laboriosam', 'Ipsum blanditiis incidunt accusamus numquam dignissimos est blanditiis animi. Et nisi voluptas et nihil voluptatem. Et est et fuga quisquam.', 99.99, 16, 19, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(213, 'Rerum tenetur.', 'rerum-tenetur', 'Laudantium odit omnis aut eligendi minus iure reiciendis. Commodi doloremque molestiae vel nam. Consectetur consequuntur minima cumque magnam dolores qui aut quia.', 99.99, 4, 6, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(214, 'Dignissimos ut voluptatum.', 'dignissimos-ut-voluptatum', 'Possimus eum voluptatum dolor accusantium corrupti excepturi saepe. Ut molestiae optio est. Impedit eos et quis dicta qui earum sit.', 19.99, 17, 18, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(215, 'Ipsa accusantium a.', 'ipsa-accusantium-a', 'Voluptatum ducimus aperiam magnam animi harum perspiciatis. In rem incidunt placeat qui aut repudiandae. Eveniet et et qui ullam.', 99.99, 9, 11, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(216, 'Hic perspiciatis adipisci.', 'hic-perspiciatis-adipisci', 'Asperiores blanditiis modi ullam. Doloribus dolorum ipsum culpa distinctio. Omnis asperiores voluptatem dolor molestiae officia debitis. Cupiditate reprehenderit dignissimos qui in rerum.', 49.99, 16, 20, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(217, 'Libero ullam odit.', 'libero-ullam-odit', 'Autem quod voluptatem vel. Et voluptatum reiciendis soluta harum modi vel eligendi. Rerum cum excepturi et repudiandae sit. Illum voluptatibus earum qui voluptas iste est exercitationem.', 19.99, 12, 13, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(218, 'Quasi sequi est.', 'quasi-sequi-est', 'Saepe illum totam suscipit magnam facere est sed. Sunt neque perferendis non asperiores nam soluta magnam. Consequatur exercitationem quo quidem sed officia. Sequi maxime architecto qui.', 19.99, 9, 9, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(219, 'Tempore harum autem.', 'tempore-harum-autem', 'Sed perferendis dolor ea illum nulla dignissimos et. Ipsa quae quidem dolorem aut reprehenderit. Odio autem quia et atque et mollitia dolor et. Quas eligendi enim voluptatem voluptatem.', 99.99, 8, 12, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(220, 'Doloremque et repellat.', 'doloremque-et-repellat', 'Iure sed cupiditate et omnis provident et. Laboriosam labore sit modi perspiciatis sequi laudantium blanditiis. Et veniam quis atque qui sit.', 49.99, 18, 17, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(221, 'Doloribus accusamus sunt.', 'doloribus-accusamus-sunt', 'Optio aspernatur voluptatem tempore. Provident consequatur quibusdam aperiam maiores dignissimos illum. Voluptatibus minima eius quo aut voluptate sit. Et ut laudantium rerum fuga voluptatum.', 49.99, 13, 13, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(222, 'Et veniam cum.', 'et-veniam-cum', 'Labore similique iste magni. Ut assumenda excepturi accusamus modi. Fuga minima omnis aut voluptatum. Quos maiores iusto ea dolores a enim dolores sunt.', 49.99, 1, 4, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(223, 'Voluptate veniam aut.', 'voluptate-veniam-aut', 'Qui nihil et nesciunt hic. Voluptatum nihil et saepe inventore optio. Accusantium voluptates maiores consequatur.', 99.99, 16, 19, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(224, 'In corporis.', 'in-corporis', 'Ipsam repudiandae non ut temporibus aliquam. Praesentium quam minima et et ullam. Ab sapiente nulla rerum dolor beatae sint dolor. Et autem incidunt sint.', 19.99, 15, 18, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(225, 'Et reiciendis.', 'et-reiciendis', 'Eius asperiores magni deserunt. Voluptates vel iste assumenda dolores consequatur. A dignissimos voluptas et. Ut doloremque quo quidem illum aut.', 99.99, 13, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(226, 'Et est eos.', 'et-est-eos', 'Omnis eius dicta qui. Quaerat quo cum a est a qui ad. In sint illum quasi doloremque ut. Dignissimos nulla ea eligendi repellat.', 49.99, 17, 17, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(227, 'Repellat et.', 'repellat-et', 'Et eligendi sed consequatur. Culpa sint earum labore nihil. Non qui doloremque aspernatur illo ad temporibus.', 49.99, 12, 13, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(228, 'Et eligendi.', 'et-eligendi', 'Nisi recusandae ut enim qui. Dolorum et voluptate eveniet. Et animi non eius assumenda. Laborum eum officia doloremque.', 19.99, 15, 20, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(229, 'Nemo quo excepturi.', 'nemo-quo-excepturi', 'Et nesciunt commodi dolore perferendis. Qui dolorum corporis sunt neque est accusantium. Accusantium rem porro voluptates aliquam. Soluta aut provident soluta hic vel.', 19.99, 3, 3, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(230, 'Provident tenetur.', 'provident-tenetur', 'Veritatis impedit autem molestiae vel et dolorem. Magni iusto tempore dolor ut cupiditate. Rerum voluptas aut doloribus cupiditate reiciendis. Voluptas neque ab voluptatem exercitationem.', 49.99, 7, 9, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(231, 'Qui voluptatem.', 'qui-voluptatem', 'Suscipit eaque accusamus saepe vel. Sunt unde cumque ratione quia doloremque deleniti. Ipsa tempore voluptatem iste fugit omnis amet.', 49.99, 5, 6, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(232, 'Unde nobis.', 'unde-nobis', 'Excepturi consequatur voluptates repellat fuga. Dolorem vel vel laboriosam sequi. Illo eos ullam quam.', 19.99, 14, 15, 15, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(233, 'Optio quidem rerum.', 'optio-quidem-rerum', 'Ab accusantium aut aut eos. Quis qui suscipit exercitationem. Labore deserunt quos magni totam. Esse minima id et ipsam.', 49.99, 1, 4, NULL, '2', '2022-07-19 21:20:16', '2022-07-19 21:20:16'),
(234, 'Optio inventore libero.', 'optio-inventore-libero', 'Ab quam vel deleniti minus omnis. Dignissimos in ipsam facilis officia. Quas eligendi et quam voluptatum rerum reiciendis.', 49.99, 2, 3, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(235, 'Sunt sed.', 'sunt-sed', 'Temporibus consequuntur sed ipsam quia. Dolorem aut rerum quis vitae aut. Ut dolor eum corrupti inventore et. Quasi aut dolor autem maiores libero alias. Qui perspiciatis eveniet magnam porro.', 99.99, 8, 12, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(236, 'Quae quam sit.', 'quae-quam-sit', 'Ut molestias maiores placeat recusandae. Eaque quaerat eius saepe et. Omnis doloribus labore necessitatibus fugit.', 99.99, 10, 11, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(237, 'Aut architecto.', 'aut-architecto', 'Ea minima aut voluptatem. Quidem est illum sed autem ut consequatur. Quisquam numquam aliquid quaerat in.', 49.99, 8, 9, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(238, 'Et quae assumenda.', 'et-quae-assumenda', 'Eligendi et qui ducimus sit quo ipsam. Ipsam tenetur ut magni consequatur reprehenderit laboriosam officia. Cumque nisi laudantium aut asperiores suscipit sit amet. Eum quo dignissimos et sed.', 49.99, 17, 17, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(239, 'Veniam velit ipsum.', 'veniam-velit-ipsum', 'Itaque ab ut quam aperiam ipsam ea error. Non non id ut nemo sunt quis quis. Placeat reprehenderit molestiae voluptas quia maxime quis. Quod in quisquam sequi labore vitae.', 49.99, 9, 9, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(240, 'Molestiae ratione dolor.', 'molestiae-ratione-dolor', 'Quos debitis dolore laudantium sunt qui praesentium voluptas. Et quia pariatur illo. Quo omnis doloremque aut cum laborum fugit esse.', 19.99, 13, 14, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(241, 'Libero accusamus.', 'libero-accusamus', 'Doloribus eos sed rerum blanditiis quibusdam voluptatem voluptates. Consequatur enim sed consequatur dolorum enim harum. Dolor sapiente saepe dolorem. Fugiat id eos natus vel.', 49.99, 9, 12, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(242, 'Est tenetur repellat.', 'est-tenetur-repellat', 'Odit qui est ab qui voluptas. Ad ut vel aut asperiores ab est. Qui fuga molestias dolor.', 19.99, 13, 16, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(243, 'Sunt ea.', 'sunt-ea', 'Alias ut nobis neque. Ipsam tempore voluptatem necessitatibus cum optio placeat sapiente. Provident doloremque ut dicta natus praesentium. Quam fugiat adipisci aut.', 19.99, 9, 11, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(244, 'Laborum qui ipsam.', 'laborum-qui-ipsam', 'Sed consequatur architecto voluptates quaerat eos. Vitae quo suscipit officia explicabo quod natus eaque. Omnis non aut modi veritatis qui aut repellat.', 19.99, 6, 5, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(245, 'Optio ut minima.', 'optio-ut-minima', 'Qui rerum voluptates voluptas saepe ipsa blanditiis adipisci veniam. Non sint recusandae ut vero dolor dignissimos. Consequuntur iure asperiores voluptatem amet et possimus.', 19.99, 1, 1, NULL, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(246, 'Repellendus quia.', 'repellendus-quia', 'Vero est labore labore quibusdam voluptatibus. Occaecati qui nihil eos impedit. Nihil consequatur libero ab.', 99.99, 18, 17, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(247, 'Dicta dolorem.', 'dicta-dolorem', 'Dolorem sed veniam iusto ipsam magnam voluptatem aut. Quam consequatur perferendis molestias in voluptatum. Incidunt necessitatibus quas tempore eaque ex.', 49.99, 3, 1, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(248, 'Nemo eum.', 'nemo-eum', 'Voluptate dolorem aspernatur ut atque voluptas eum repellat incidunt. Id et et autem quidem dolorem. Ipsam eligendi quia eius consequatur. Architecto incidunt optio voluptatibus reiciendis ipsa.', 99.99, 6, 7, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(249, 'Fugit quia.', 'fugit-quia', 'Impedit quos dolores sint veniam hic. Laborum possimus et necessitatibus facilis voluptatem voluptas illo. Consequatur itaque ut ut ipsum. Recusandae ipsa cumque placeat.', 49.99, 6, 5, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17'),
(250, 'Id qui voluptatibus.', 'id-qui-voluptatibus', 'Nobis voluptate nisi alias est voluptatem. Aperiam vitae ut in occaecati totam quos qui. Iste vero omnis ea ut sequi deserunt rerum.', 49.99, 7, 9, 15, '2', '2022-07-19 21:20:17', '2022-07-19 21:20:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `biografhy` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `folio` varchar(255) NOT NULL,
  `contacto` varchar(255) NOT NULL,
  `mensaje` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `name`, `folio`, `contacto`, `mensaje`, `created_at`, `updated_at`) VALUES
(2, 'desarrollo', 'qwerty', '1234567890', 'qwertyubv', '2023-04-02 02:33:04', '2023-04-02 02:33:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `questionable_type` varchar(255) NOT NULL,
  `questionable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reactions`
--

CREATE TABLE `reactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` enum('1','2') NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reactionable_id` bigint(20) UNSIGNED NOT NULL,
  `reactionable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requirements`
--

CREATE TABLE `requirements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `requirements`
--

INSERT INTO `requirements` (`id`, `name`, `course_id`, `created_at`, `updated_at`) VALUES
(496, 'Titulo en psicología o formaciones afines', 200, '2023-04-26 03:01:58', '2023-04-26 03:01:58'),
(497, 'Alto nivel de bonadad', 200, '2023-04-26 03:02:02', '2023-04-26 03:02:02'),
(498, 'Carta de motivos', 200, '2023-04-26 03:02:06', '2023-04-26 03:02:06'),
(499, 'Experiencia en terapia con pacientes presenciales', 200, '2023-04-26 03:02:10', '2023-04-26 03:02:10'),
(500, 'Experiencia en meditación neurosintérgica', 200, '2023-04-26 03:02:14', '2023-04-26 03:02:14'),
(501, 'Entrevista inicial', 200, '2023-04-26 03:02:19', '2023-04-26 03:02:19'),
(502, 'Meditador NS', 201, '2023-04-26 03:09:48', '2023-04-26 03:09:48'),
(503, 'Mayor de 18 años', 202, '2023-04-26 05:01:04', '2023-04-26 05:01:04'),
(504, 'Mayor de 18 años', 203, '2023-04-26 05:05:03', '2023-04-26 05:05:03'),
(505, 'Tener hojas a la mano', 203, '2023-04-26 05:05:06', '2023-04-26 05:05:06'),
(506, 'Tener un bolígrafo a la mano', 203, '2023-04-26 05:05:10', '2023-04-26 05:05:10'),
(507, 'Ser mayor de 15 años.', 204, '2023-04-26 05:16:15', '2023-04-26 05:16:15'),
(508, 'De preferencia tener hojas y pluma a la mano.', 204, '2023-04-26 05:16:18', '2023-04-26 05:16:18'),
(509, 'Ser mayor de 17años.', 205, '2023-04-26 05:17:56', '2023-04-26 05:17:56'),
(510, 'Estar inscrito en la meditación neurosintérgica en linea (zoom)', 207, '2023-04-26 05:42:13', '2023-04-26 05:42:13'),
(511, 'Un juguete de tu infancia', 208, '2023-04-26 05:48:06', '2023-04-26 05:48:06'),
(512, 'Una pelota de tenis', 208, '2023-04-26 05:48:10', '2023-04-26 05:48:18'),
(513, 'Ropa cómoda', 208, '2023-04-26 05:48:21', '2023-04-26 05:48:21'),
(514, 'Papel y bolígrafo', 208, '2023-04-26 05:48:24', '2023-04-26 05:48:24'),
(515, 'Titulo en psicología o formaciones afines', 209, '2023-04-26 05:52:31', '2023-04-26 05:52:31'),
(516, 'Alto nivel de bonadad', 209, '2023-04-26 05:52:35', '2023-04-26 05:52:35'),
(517, 'Carta de motivos', 209, '2023-04-26 05:52:38', '2023-04-26 05:52:38'),
(518, 'Experiencia en terapia con pacientes presenciales', 209, '2023-04-26 05:52:42', '2023-04-26 05:52:42'),
(519, 'Experiencia en meditación neurosintérgica', 209, '2023-04-26 05:52:45', '2023-04-26 05:52:45'),
(520, 'Entrevista inicial', 209, '2023-04-26 05:52:48', '2023-04-26 05:52:48'),
(521, 'Meditador NS', 210, '2023-04-26 06:42:55', '2023-04-26 06:42:55'),
(522, 'Equipo de Computo con accesos a internet', 211, '2023-04-26 06:46:05', '2023-04-26 06:46:05'),
(523, 'Herramienta ZOOM', 211, '2023-04-26 06:46:09', '2023-04-26 06:46:09'),
(524, 'General', 212, '2023-04-26 06:53:17', '2023-04-26 06:53:17'),
(525, 'Equipo de computo', 213, '2023-04-26 06:57:45', '2023-04-26 06:57:45'),
(526, 'Mayor de 18 años', 214, '2023-04-26 07:04:29', '2023-04-26 07:04:29'),
(527, 'Persona que este laborando', 214, '2023-04-26 07:04:33', '2023-04-26 07:04:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resources`
--

CREATE TABLE `resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `resourceable_id` bigint(20) UNSIGNED NOT NULL,
  `resourceable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `resources`
--

INSERT INTO `resources` (`id`, `url`, `resourceable_id`, `resourceable_type`, `created_at`, `updated_at`) VALUES
(14, 'resources/3htfZZXmSETMiBqaVGxX1cGrkvdVXDbxMO3V1rXM.pdf', 1626, 'App\\Models\\Lesson', '2022-07-30 01:08:51', '2022-07-30 01:08:51'),
(30, 'resources/gpKvsK0W07OrJUkpWkLXHDTnUwD9RgGJrHDgWz5Q.pdf', 1658, 'App\\Models\\Lesson', '2022-07-30 17:56:24', '2022-07-30 17:56:24'),
(31, 'resources/e0BUfbcZsLIUW4X8NGJayeyB5fUjvihD8GxkfjDL.pdf', 1660, 'App\\Models\\Lesson', '2022-07-30 19:43:53', '2022-07-30 19:43:53'),
(32, 'resources/vPDqWp1vGP1pilEE1Zjd2qCVIBb3l09X7I0dvFZb.pdf', 1662, 'App\\Models\\Lesson', '2022-07-30 20:07:38', '2022-07-30 20:07:38'),
(33, 'resources/rLjQKLJeKDJxE4luUDFZeY7HyJqqVFYU1yxGy6fJ.pdf', 1664, 'App\\Models\\Lesson', '2022-07-30 20:28:37', '2022-07-30 20:28:37'),
(34, 'resources/nI4GgoFDUfbxsn7cxxoX7udNCtWQXIhDljD8lKS6.pdf', 1666, 'App\\Models\\Lesson', '2022-07-30 20:38:35', '2022-07-30 20:38:35'),
(35, 'resources/6gTh9NwzhlsNXRoQoxFivZkogs1uVxmSKcUsawzN.pdf', 1667, 'App\\Models\\Lesson', '2022-07-30 20:57:41', '2022-07-30 20:57:41'),
(36, 'resources/0AHg7KUCvi0SJzSLBzHpt9L31Ah6BDztyZ04mDUX.pdf', 1669, 'App\\Models\\Lesson', '2022-07-30 21:34:57', '2022-07-30 21:34:57'),
(37, 'resources/jQL8XRpvENwbuFZ0AnoyX6gJoQWzE0B8tNfst4Xt.pdf', 1671, 'App\\Models\\Lesson', '2022-07-30 21:44:32', '2022-07-30 21:44:32'),
(38, 'resources/QVPF8I8ZJ7QBnLQbvMKjieldEATpZzClkeKAfbIt.pdf', 1673, 'App\\Models\\Lesson', '2022-07-30 21:56:53', '2022-07-30 21:56:53'),
(39, 'resources/PKuIwuZiLlaWh8n61gPPdRdNMnOLfbVX9tdEVLpE.pdf', 1675, 'App\\Models\\Lesson', '2022-07-30 22:05:29', '2022-07-30 22:05:29'),
(40, 'resources/zCI7ORkAusUPIsc1QAqc1g70VEaruxcgYQ6SDgJy.pdf', 1677, 'App\\Models\\Lesson', '2022-07-30 22:17:27', '2022-07-30 22:17:27'),
(41, 'resources/TsjhFrZGrnr0GADwWCcj16qafQlmzAhbYWo7raga.pdf', 1679, 'App\\Models\\Lesson', '2022-07-30 22:29:48', '2022-07-30 22:29:48'),
(42, 'resources/8VDjrHxNj9p0vvithwUNvYr5jwRzA3JcE3AyC0h0.pdf', 1681, 'App\\Models\\Lesson', '2022-08-06 02:26:43', '2022-08-06 02:26:43'),
(43, 'resources/VZfkZ5Tuqasbfiz5C4Hqx3lebkxp8E9HjBeJ9lVF.pdf', 1683, 'App\\Models\\Lesson', '2022-08-06 02:35:22', '2022-08-06 02:35:22'),
(44, 'resources/s5h2YN8Plc03qtZCbnySsgK64kMSq45oMPhln6lV.pdf', 1685, 'App\\Models\\Lesson', '2022-08-06 02:50:55', '2022-08-06 02:50:55'),
(45, 'resources/FfDZ6WslXU1N6YUYn9OrNx6b8wGgnt0hG6uzuX4Y.pdf', 1687, 'App\\Models\\Lesson', '2022-08-06 03:05:30', '2022-08-06 03:05:30'),
(46, 'resources/4FFIw1LRFIcqpeZQX39YzfJPef65LC0M1yjNEJ2g.pdf', 1689, 'App\\Models\\Lesson', '2022-08-06 03:15:01', '2022-08-06 03:15:01'),
(47, 'resources/GA7Qykft8nV6HQw8PF9I91TUTCsVYkjcSYG4ddZP.pdf', 1691, 'App\\Models\\Lesson', '2022-08-06 03:25:54', '2022-08-06 03:25:54'),
(48, 'resources/MBU7WKWVuLjk6CZCaDhMOJcEHx6w5u3WClHdhZdD.pdf', 1693, 'App\\Models\\Lesson', '2022-08-06 03:36:23', '2022-08-06 03:36:23'),
(49, 'resources/xvkH2gFiSYvUTpYgVl4zXushuicLmxpqKLmrka1w.pdf', 1695, 'App\\Models\\Lesson', '2022-08-06 03:52:23', '2022-08-06 03:52:23'),
(50, 'resources/h5wfodatO2j1yTKC96evQT3M6pVZt4C0i3GAegnl.pdf', 1697, 'App\\Models\\Lesson', '2022-08-06 04:05:39', '2022-08-06 04:05:39'),
(51, 'resources/xTyvqxPFijUu7J4gpQVJRlIjgGLEsAFwuAX8yKxO.pdf', 1699, 'App\\Models\\Lesson', '2022-08-06 04:20:34', '2022-08-06 04:20:34'),
(52, 'resources/aq9iMiG7MhVKSejJnp1sdoQBNkYsJnRyDVPyZVsI.pdf', 1701, 'App\\Models\\Lesson', '2022-08-06 04:32:54', '2022-08-06 04:32:54'),
(53, 'resources/D4fTvVC2UwdEuKy8lFU3OkfICnDeuT8Q0a2sRRtu.pdf', 1703, 'App\\Models\\Lesson', '2022-08-06 04:40:49', '2022-08-06 04:40:49'),
(54, 'resources/rH5B3obJD1xnOx9aojf9y4XsNbN4qYgWtXrVxAAb.pdf', 1705, 'App\\Models\\Lesson', '2022-08-06 04:50:25', '2022-08-06 04:50:25'),
(55, 'resources/8gy5ZhOI6yTFhryECT45KxWOqwXCgbjBlC3j2fk0.pdf', 1708, 'App\\Models\\Lesson', '2022-08-06 15:22:06', '2022-08-06 15:22:06'),
(56, 'resources/jJSyv2HGWdsmdFEOvJh4aFbazhxEBiNczpiAyx3v.pdf', 1710, 'App\\Models\\Lesson', '2022-08-06 15:37:33', '2022-08-06 15:37:33'),
(57, 'resources/aPUXjxPqiLdD0LN9SceI2KRh3hpEVL3XkcFKmn7A.pdf', 1712, 'App\\Models\\Lesson', '2022-08-06 15:49:44', '2022-08-06 15:49:44'),
(58, 'resources/tNrh0Hl1G3ykzmjtR5S4OiCxN49SG1S7eHvGNhmH.pdf', 1714, 'App\\Models\\Lesson', '2022-08-06 16:12:17', '2022-08-06 16:12:17'),
(59, 'resources/QzaKb4WWdPGjua5EIKm2z8B8oHobzWvEmc5BVbDl.pdf', 1716, 'App\\Models\\Lesson', '2022-08-06 16:32:30', '2022-08-06 16:32:30'),
(60, 'resources/5kKfzHl3tbjqyaZZbg291mukKt8plnIG6f9Bg52a.pdf', 1718, 'App\\Models\\Lesson', '2022-08-06 16:49:22', '2022-08-06 16:49:22'),
(61, 'resources/z8KcMNOvmyLlHYPUFMHxS97PW6wv0LzO7peoX8Rz.pdf', 1720, 'App\\Models\\Lesson', '2022-08-06 17:04:52', '2022-08-06 17:04:52'),
(62, 'resources/w9pXxIQwfrB6J5epICddD8ANom4ieoLpMcRb9lg3.pdf', 1722, 'App\\Models\\Lesson', '2022-08-06 17:53:12', '2022-08-06 17:53:12'),
(63, 'resources/aRWco3PdGJCsHnSNv23S7aAuiEcKDfP964tTmh6h.pdf', 1724, 'App\\Models\\Lesson', '2022-08-07 02:29:24', '2022-08-07 02:29:24'),
(64, 'resources/hbUCPCcx9e4wmtslEY094VWXeJdWZU02UZEgoSC8.pdf', 1726, 'App\\Models\\Lesson', '2022-08-07 02:39:02', '2022-08-07 02:39:02'),
(65, 'resources/5xmYsafQTbFWaeOUtU3w2lUaArg3dxipFbDnRArm.pdf', 1728, 'App\\Models\\Lesson', '2022-08-07 02:48:54', '2022-08-07 02:48:54'),
(66, 'resources/fJ1iPlz9LrzEtVxv824VpvBtTRDzebEhjkUsowTH.pdf', 1730, 'App\\Models\\Lesson', '2022-08-07 02:56:48', '2022-08-07 02:56:48'),
(67, 'resources/xGMwjFx9Ih8jTHSBtA2B1NVUiHh4bY3sbH1Qst2b.pdf', 1732, 'App\\Models\\Lesson', '2022-08-07 03:13:10', '2022-08-07 03:13:10'),
(68, 'resources/oxdR74sU0V3l9YGae83Kj2io48bMyX0noWObfDzz.pdf', 1734, 'App\\Models\\Lesson', '2022-08-07 03:47:30', '2022-08-07 03:47:30'),
(69, 'resources/G5qDIsgOkSzHubgeiOeBe10Mvvmcgco9roRTd9U6.pdf', 1736, 'App\\Models\\Lesson', '2022-08-09 20:15:05', '2022-08-09 20:15:05'),
(70, 'resources/WRnVewuzm8jgN1lMaGAnOr7rM5YqOCYumQHZSWyI.pdf', 1738, 'App\\Models\\Lesson', '2022-08-09 20:19:11', '2022-08-09 20:19:11'),
(71, 'resources/vKyQ6EYamTW7Gmd4v1sHqVTWrCpB9JrOdzKgpjuT.pdf', 1740, 'App\\Models\\Lesson', '2022-08-09 20:23:38', '2022-08-09 20:23:38'),
(72, 'resources/93ZBMEeLRC0y0FJbXNOIn1rwpKJiVFlgkXHBmhzx.pdf', 1742, 'App\\Models\\Lesson', '2022-08-09 20:26:56', '2022-08-09 20:26:56'),
(73, 'resources/iRa4EGOKtqiGx4cV5FL5jhRCo4Y2lH6HlJfu7y0w.pdf', 1744, 'App\\Models\\Lesson', '2022-08-09 20:30:41', '2022-08-09 20:30:41'),
(74, 'resources/JPzNW9G1zwcXU6Ni37F5bPwx8SGs0TCcSu9INMDJ.pdf', 1745, 'App\\Models\\Lesson', '2022-08-09 20:49:13', '2022-08-09 20:49:13'),
(75, 'resources/BWJaWqYDtFb5pGu49FNQXWy695p2FPaVq1uOEi7S.pdf', 1747, 'App\\Models\\Lesson', '2022-08-09 20:53:07', '2022-08-09 20:53:07'),
(76, 'resources/w7SCG7ZmS19WT3KO1sBOiRvlLQTdAyfGHccBQyrV.pdf', 1749, 'App\\Models\\Lesson', '2022-08-09 20:57:27', '2022-08-09 20:57:27'),
(77, 'resources/OerfV1g5IMcBkGPg9RT6iC8k6Ac8JOqT2XrOORvY.pdf', 1751, 'App\\Models\\Lesson', '2022-08-09 21:01:16', '2022-08-09 21:01:16'),
(78, 'resources/9rO8KzVRmh9SqoslipJSlHHmHrYaIomBpJcH62Bw.pdf', 1753, 'App\\Models\\Lesson', '2022-08-09 21:04:45', '2022-08-09 21:04:45'),
(79, 'resources/fYxwmS9TlMagqnP0k6Dl0l1poehw8n9UpQxsZ9lQ.pdf', 1755, 'App\\Models\\Lesson', '2022-08-09 21:10:43', '2022-08-09 21:10:43'),
(80, 'resources/8zFTKlgZPS1fEW0DiFtAni8coJL0JbqnugYgcgQ5.pdf', 1757, 'App\\Models\\Lesson', '2022-08-09 21:14:08', '2022-08-09 21:14:08'),
(81, 'resources/9VQqZCjDCcO3XTBE3YQtx7CJOv2r99CFnNetqRRs.pdf', 1759, 'App\\Models\\Lesson', '2022-08-09 21:18:19', '2022-08-09 21:18:19'),
(82, 'resources/lGkt5h2MKfwk0prnAIaRLJSWS4HxXM5RurmeLLz3.pdf', 1761, 'App\\Models\\Lesson', '2022-08-09 21:32:55', '2022-08-09 21:32:55'),
(83, 'resources/cqBumDUQEccYa7Qot9PT33pXEMHz2xqiL6ROpvNJ.pdf', 1763, 'App\\Models\\Lesson', '2022-08-09 21:36:38', '2022-08-09 21:36:38'),
(84, 'resources/reOHOkhMsP5FdV4evf17ZKJhvA7hMzqI6mB4D5bJ.pdf', 1765, 'App\\Models\\Lesson', '2022-08-09 21:42:22', '2022-08-09 21:42:22'),
(85, 'resources/Zj22d4tZKr2n7AIUkeLYpc2LNniDST4EJf9f5DS8.pdf', 1767, 'App\\Models\\Lesson', '2022-08-10 01:20:29', '2022-08-10 01:20:29'),
(86, 'resources/ZeJEnNi5dirG6AivYKiEe2ua6zZCFTctZur2RYIw.pdf', 1769, 'App\\Models\\Lesson', '2022-08-10 01:24:48', '2022-08-10 01:24:48'),
(87, 'resources/uEFmXsO6sOCq9q2AvHpxbqoAzCbzS1d6VRPGJx0m.pdf', 1771, 'App\\Models\\Lesson', '2022-08-10 01:28:18', '2022-08-10 01:28:18'),
(88, 'resources/50BHIJbjbu2xiFCiE74P8MVDXNLhtLl07M7CBQww.pdf', 1773, 'App\\Models\\Lesson', '2022-08-10 01:31:51', '2022-08-10 01:31:51'),
(89, 'resources/uUu4m7sNCCOVUC0NUCdozbdP9jBpbc3rMidIzXjH.pdf', 1775, 'App\\Models\\Lesson', '2022-08-10 01:34:53', '2022-08-10 01:34:53'),
(90, 'resources/oIC9vUvpFETP62n24oKF4Rk0S6FIdteGnB0Fst6j.pdf', 1777, 'App\\Models\\Lesson', '2022-08-10 01:40:31', '2022-08-10 01:40:31'),
(91, 'resources/HsOgpZ91mhArA84QwewTxzkqEb52uMCR1H8wrMPZ.pdf', 1779, 'App\\Models\\Lesson', '2022-08-10 01:44:14', '2022-08-10 01:44:14'),
(92, 'resources/nOG0gjoN9MHStPG03RR4IRsTB7LpzirAnNOQC9gP.pdf', 1781, 'App\\Models\\Lesson', '2022-08-10 01:47:20', '2022-08-10 01:47:20'),
(93, 'resources/26El3z2OViOI4q0I0GIMRMyiSJFPqKf75AayVmCw.pdf', 1783, 'App\\Models\\Lesson', '2022-08-10 01:50:42', '2022-08-10 01:50:42'),
(94, 'resources/OLcaTDBkyX3fycaFmVss8P2mih17IcB3a6luUNJo.pdf', 1785, 'App\\Models\\Lesson', '2022-08-10 01:54:12', '2022-08-10 01:54:12'),
(95, 'resources/K1qoSCmtsflelrI4Ly43hbCm9GwzF04tugKVk4Ia.pdf', 1787, 'App\\Models\\Lesson', '2022-08-10 01:57:48', '2022-08-10 01:57:48'),
(96, 'resources/kKTSY4sz9OgTRSu3nNL5RGOsN9MvM6CWQrG75EQZ.pdf', 1789, 'App\\Models\\Lesson', '2022-08-10 02:00:50', '2022-08-10 02:00:50'),
(97, 'resources/JXaitlqZ8TfHNNmlaDupMSsTexRRIRI5yB4w4ZBU.pdf', 1792, 'App\\Models\\Lesson', '2022-08-10 02:10:47', '2022-08-10 02:10:47'),
(98, 'resources/ei9Z7lgW1YDxyfHpBJggU4oVZeAaK6c27NyzxQP5.pdf', 1794, 'App\\Models\\Lesson', '2022-08-10 02:13:29', '2022-08-10 02:13:29'),
(99, 'resources/HlID2cBWhTHo0ggtNPlhkVVL88Zxi3mvA3GuPqTg.pdf', 1796, 'App\\Models\\Lesson', '2022-08-10 02:19:41', '2022-08-10 02:19:41'),
(100, 'resources/WBPTqHjML26CZKTB8rIrEEUemnGzuVq6oatM4Teh.pdf', 1798, 'App\\Models\\Lesson', '2022-08-10 02:22:24', '2022-08-10 02:22:24'),
(101, 'resources/MpTJEUZAvyJdeTkWXrzNvRMSUsl1DGsDjMDQdSmO.pdf', 1800, 'App\\Models\\Lesson', '2022-08-10 02:25:55', '2022-08-10 02:25:55'),
(102, 'resources/nJX6wgPHJujDqEI8VyUtQH4CslbNnjKSBEgqMeHS.pdf', 1802, 'App\\Models\\Lesson', '2022-08-10 02:28:58', '2022-08-10 02:28:58'),
(103, 'resources/uIPaJMrfkuGuerP4yKvH46GjpJbFPq5VAd0u8YSl.pdf', 1804, 'App\\Models\\Lesson', '2022-08-10 02:32:04', '2022-08-10 02:32:04'),
(104, 'resources/OSPuAITFThglArx6LkJ7Buzy4EN0DlTizk1WmTQy.pdf', 1806, 'App\\Models\\Lesson', '2022-08-10 02:36:17', '2022-08-10 02:36:17'),
(105, 'resources/CiDuIqVO5u35spwxmpqflB12ATBKFc2BApuYSUbk.pdf', 1808, 'App\\Models\\Lesson', '2022-08-10 02:39:34', '2022-08-10 02:39:34'),
(106, 'resources/YEaYlNXihK6sWwIYeODIid3DSY7HcltFsDJ51E59.pdf', 1810, 'App\\Models\\Lesson', '2022-08-10 02:42:28', '2022-08-10 02:42:28'),
(107, 'resources/d3OpgkrItAUqCtzsv7zARXcTeQg5HdKCEfUoEffF.pdf', 1812, 'App\\Models\\Lesson', '2022-08-10 02:45:34', '2022-08-10 02:45:34'),
(108, 'resources/wud3NuyKMD3nHCC3G8E0AQGfAAcon14UhrIz5UZP.pdf', 1814, 'App\\Models\\Lesson', '2022-08-10 02:49:29', '2022-08-10 02:49:29'),
(109, 'resources/88UILJVfskbCR1FacGNdckprH1QVCJACh3GiYsS2.pdf', 1816, 'App\\Models\\Lesson', '2022-08-10 02:52:39', '2022-08-10 02:52:39'),
(110, 'resources/6oxzibrwhCtuGNGMU0MbEdoshqc2AWZGSZPYw5IV.png', 1818, 'App\\Models\\Lesson', '2023-04-02 04:57:45', '2023-04-02 04:57:45'),
(111, 'resources/yaNKiF0Rt0VwOMEihQ7SM0rY1zqIuINKRe177xvu.pdf', 1828, 'App\\Models\\Lesson', '2023-04-20 01:42:48', '2023-04-20 01:42:48'),
(112, 'resources/ZL3GP86WX7SOb3GgHrIxYr7WD22ghdB0H995MZLG.pdf', 1850, 'App\\Models\\Lesson', '2023-04-23 04:03:18', '2023-04-23 04:03:18'),
(113, 'resources/QVfMF55Y2v7EH1poV84KCbaztl57KhFgDEJvPGrh.pdf', 1884, 'App\\Models\\Lesson', '2023-04-23 06:08:38', '2023-04-23 06:08:38'),
(114, 'resources/ZRaExt7upRV9Y3Va9s8GS3OxERKiH0jVx3KeZKY5.pdf', 1885, 'App\\Models\\Lesson', '2023-04-23 06:32:52', '2023-04-23 06:32:52'),
(115, 'resources/BcGEUhStzw4j6qd2CQFK3GfwRPr3YUxSIZhMRkME.pdf', 1897, 'App\\Models\\Lesson', '2023-04-25 03:25:51', '2023-04-25 03:25:51'),
(116, 'resources/JP5248FAFszHgRuI84RuOZyM9sYOsRZJdkGXzh8d.pdf', 1898, 'App\\Models\\Lesson', '2023-04-25 03:30:17', '2023-04-25 03:30:17'),
(117, 'resources/kQ2KBAcOw8xJka2cgPviRSY87NlTLmcZdZFThj5h.pdf', 1899, 'App\\Models\\Lesson', '2023-04-25 03:30:45', '2023-04-25 03:30:45'),
(118, 'resources/3BkDGPFjWaxPw9Ddew8F9xWJfjQpr7JRYtoN5peh.pdf', 1900, 'App\\Models\\Lesson', '2023-04-25 03:31:03', '2023-04-25 03:31:03'),
(119, 'resources/3hLDycNHLUg1YzTyftcLvljZVIlj5QDghiViHvNG.pdf', 1902, 'App\\Models\\Lesson', '2023-04-25 03:31:36', '2023-04-25 03:31:36'),
(120, 'resources/Puveuy09I34eHSdbMDZ66QYbz6jKjA6ikh4vw2so.pdf', 1904, 'App\\Models\\Lesson', '2023-04-25 03:32:30', '2023-04-25 03:32:30'),
(121, 'resources/p1eRNDCWoLgHEMRqG0H93vIsQGzW0tRro3HZoUHX.pdf', 1905, 'App\\Models\\Lesson', '2023-04-25 03:32:52', '2023-04-25 03:32:52'),
(123, 'resources/Ir2bgLJ0xJVONwMNvi8A46D7ALwkgoJ2qZTZuIeO.pdf', 1939, 'App\\Models\\Lesson', '2023-04-26 04:50:11', '2023-04-26 04:50:11'),
(124, 'resources/6sAQtRzsG9FsxbnNBUL7mjbGabGKExgSqTGbMYkb.pdf', 1941, 'App\\Models\\Lesson', '2023-04-26 04:56:10', '2023-04-26 04:56:10'),
(125, 'resources/icBkknmm7nSzjPpQ4Bc0hQcM2qx0ug0G4cCiFpVO.pdf', 1942, 'App\\Models\\Lesson', '2023-04-26 04:56:37', '2023-04-26 04:56:37'),
(126, 'resources/HYiZAigaDKLBhHcmdOI2BAh5dhCq8QE0g5ZHvKtD.pdf', 1944, 'App\\Models\\Lesson', '2023-04-26 04:57:31', '2023-04-26 04:57:31'),
(127, 'resources/HJMzmJtb3nm4Ss5AewyakOvdI96PvyGsy2qQaBrb.pdf', 1946, 'App\\Models\\Lesson', '2023-04-26 04:58:16', '2023-04-26 04:58:16'),
(128, 'resources/O57LsoqrX4yo4EHSPyCUON75y3F3INwNOM9LsGC3.pdf', 1947, 'App\\Models\\Lesson', '2023-04-26 04:58:37', '2023-04-26 04:58:37'),
(129, 'resources/yTNlXwK8cfODzNgsAge6zXk3iHoM3LA5W7dIaThu.pdf', 1949, 'App\\Models\\Lesson', '2023-04-26 05:02:54', '2023-04-26 05:02:54'),
(130, 'resources/wpwhs6t2iPz4Gl66yF3Ucf9el8zeFQihjjSPZZwt.pdf', 2027, 'App\\Models\\Lesson', '2023-04-26 07:05:32', '2023-04-26 07:05:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(2, 'Blogger', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(3, 'Instructor', 'web', '2022-07-19 21:20:11', '2022-07-19 21:20:11'),
(4, 'Stock', 'web', '2022-07-19 21:20:12', '2022-07-19 21:20:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(4, 1),
(5, 1),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 2),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 2),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sections`
--

INSERT INTO `sections` (`id`, `name`, `course_id`, `created_at`, `updated_at`) VALUES
(599, 'Sesión 1. Introducción a FOTENS y a la PNS', 200, '2023-04-26 03:02:51', '2023-04-26 03:02:51'),
(600, 'Sesión 2', 200, '2023-04-26 03:03:09', '2023-04-26 03:03:09'),
(601, 'Sesión 3', 200, '2023-04-26 03:03:12', '2023-04-26 03:03:12'),
(602, 'Sesión 4', 200, '2023-04-26 03:03:18', '2023-04-26 03:03:18'),
(603, 'Sesión 5', 200, '2023-04-26 03:03:22', '2023-04-26 03:03:22'),
(604, 'Sesión 6', 200, '2023-04-26 03:03:28', '2023-04-26 03:03:28'),
(605, 'Sesión 7', 200, '2023-04-26 03:03:33', '2023-04-26 03:03:33'),
(606, 'Sesión 8', 200, '2023-04-26 03:03:38', '2023-04-26 03:03:38'),
(607, 'Sesión 9', 200, '2023-04-26 03:03:43', '2023-04-26 03:03:43'),
(608, 'Sesión 1. Introducción GOEMNS', 201, '2023-04-26 03:10:08', '2023-04-26 03:10:08'),
(609, 'Sesión 2', 201, '2023-04-26 04:51:08', '2023-04-26 04:51:08'),
(610, 'Sesión 3', 201, '2023-04-26 04:51:15', '2023-04-26 04:51:15'),
(611, 'Sesión 4', 201, '2023-04-26 04:51:19', '2023-04-26 04:51:19'),
(612, 'Sesión 5', 201, '2023-04-26 04:51:24', '2023-04-26 04:51:24'),
(613, 'Sesión 6', 201, '2023-04-26 04:51:28', '2023-04-26 04:51:28'),
(614, 'Sesión 7', 201, '2023-04-26 04:51:35', '2023-04-26 04:51:35'),
(615, 'Sesión 8', 201, '2023-04-26 04:51:39', '2023-04-26 04:51:39'),
(616, 'MasterClass', 202, '2023-04-26 05:01:19', '2023-04-26 05:01:19'),
(617, 'MasterClass', 203, '2023-04-26 05:07:41', '2023-04-26 05:07:41'),
(618, 'MasterClass', 204, '2023-04-26 05:15:21', '2023-04-26 05:15:21'),
(619, 'MasterClass', 205, '2023-04-26 05:18:47', '2023-04-26 05:18:47'),
(620, 'Progamas 2021', 206, '2023-04-26 05:24:40', '2023-04-26 05:24:40'),
(621, 'Nivel 1. Provocando procesos sanadores', 207, '2023-04-26 05:42:50', '2023-04-26 05:42:50'),
(622, 'Nivel 2. Adecuado para personas que sufren de depresión y ansiedad', 207, '2023-04-26 05:43:54', '2023-04-26 05:43:54'),
(623, 'Nivel 3. Meditación estándar', 207, '2023-04-26 05:44:53', '2023-04-26 05:44:53'),
(624, 'Goemns', 207, '2023-04-26 05:45:55', '2023-04-26 05:45:55'),
(625, 'Master Class', 208, '2023-04-26 05:48:41', '2023-04-26 05:48:41'),
(626, 'Presentación', 209, '2023-04-26 06:38:54', '2023-04-26 06:38:54'),
(627, 'Presentación', 210, '2023-04-26 06:42:07', '2023-04-26 06:42:07'),
(628, 'Presentación', 211, '2023-04-26 06:46:45', '2023-04-26 06:46:45'),
(629, 'Sesion I', 211, '2023-04-26 06:47:05', '2023-04-26 06:47:05'),
(630, 'Sesion II', 211, '2023-04-26 06:47:18', '2023-04-26 06:47:18'),
(631, 'Sesion III', 211, '2023-04-26 06:47:24', '2023-04-26 06:47:24'),
(632, 'Sesion IV', 211, '2023-04-26 06:47:29', '2023-04-26 06:47:29'),
(633, 'Sesion V', 211, '2023-04-26 06:47:33', '2023-04-26 06:47:33'),
(634, 'Sesion VI', 211, '2023-04-26 06:47:41', '2023-04-26 06:47:41'),
(635, 'Sesion VII', 211, '2023-04-26 06:47:51', '2023-04-26 06:47:51'),
(636, 'MasterClass', 212, '2023-04-26 06:53:32', '2023-04-26 06:53:32'),
(637, 'Sesión Presentación', 213, '2023-04-26 06:58:59', '2023-04-26 06:59:17'),
(638, 'Sesión 13 de Febrero', 213, '2023-04-26 06:59:34', '2023-04-26 06:59:34'),
(639, 'Sesión 20 de Febrero', 213, '2023-04-26 06:59:58', '2023-04-26 06:59:58'),
(640, 'Sesión 27 de Febrero', 213, '2023-04-26 07:00:19', '2023-04-26 07:00:19'),
(641, 'Sesión 06 de Marzo', 213, '2023-04-26 07:00:45', '2023-04-26 07:00:45'),
(642, 'Sesión 13 de Marzo', 213, '2023-04-26 07:01:09', '2023-04-26 07:01:09'),
(643, 'Sesión 20 Marzo', 213, '2023-04-26 07:01:41', '2023-04-26 07:01:41'),
(644, 'MasterClass', 214, '2023-04-26 07:04:55', '2023-04-26 07:04:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Di6LF3KckH53HcwJWzhpYTghakARacgIxBetGkw4', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFV4SkVCRVRnUUhmZ2k0MTExTGY4V3pudXBxNWxKWjlMa1Q0Mk1ySSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1682633408);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('1', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:39:38', NULL),
('101', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-08 05:13:32', NULL),
('102', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-03 22:26:52', NULL),
('110', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"2f3ce7c0f15a10b494d8607241b0857c\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"2f3ce7c0f15a10b494d8607241b0857c\";s:2:\"id\";i:156;s:3:\"qty\";i:1;s:4:\"name\";s:39:\"Taller de Canto en LSM \"Dia de Muertos\"\";s:5:\"price\";d:1500;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:17:\"App\\Models\\Course\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-08-23 00:25:42', NULL),
('111', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-11 00:58:56', NULL),
('112', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-08 06:27:48', NULL),
('113', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 06:45:22', NULL),
('114', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:26:56', NULL),
('115', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:57:10', NULL),
('116', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:27:36', NULL),
('117', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:27:54', NULL),
('118', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:28:09', NULL),
('119', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:28:28', NULL),
('120', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:28:54', NULL),
('121', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:29:13', NULL),
('122', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:29:56', NULL),
('123', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:30:16', NULL),
('124', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:35:03', NULL),
('125', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:35:21', NULL),
('126', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:35:37', NULL),
('127', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:36:15', NULL),
('128', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:36:29', NULL),
('129', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:37:18', NULL),
('130', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:37:53', NULL),
('131', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:38:09', NULL),
('132', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:38:32', NULL),
('133', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:38:55', NULL),
('134', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:39:33', NULL),
('135', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:40:01', NULL),
('136', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:40:23', NULL),
('137', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:40:50', NULL),
('138', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:41:46', NULL),
('139', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:42:21', NULL),
('140', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:42:56', NULL),
('141', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:43:22', NULL),
('142', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:43:40', NULL),
('143', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:43:58', NULL),
('144', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:44:21', NULL),
('145', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:44:53', NULL),
('146', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:45:43', NULL),
('147', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:45:59', NULL),
('148', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:46:15', NULL),
('149', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:46:31', NULL),
('150', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:47:05', NULL),
('151', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:47:25', NULL),
('152', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:50:19', NULL),
('153', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:50:35', NULL),
('154', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:50:55', NULL),
('155', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:51:09', NULL),
('156', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:51:25', NULL),
('157', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:51:42', NULL),
('158', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:52:32', NULL),
('159', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:53:05', NULL),
('160', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:53:23', NULL),
('161', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:53:39', NULL),
('162', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:54:03', NULL),
('163', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:54:18', NULL),
('164', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:54:34', NULL),
('165', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:54:56', NULL),
('166', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:55:26', NULL),
('167', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:55:40', NULL),
('168', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:56:29', NULL),
('169', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:56:42', NULL),
('170', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:57:01', NULL),
('171', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:57:46', NULL),
('172', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:58:04', NULL),
('173', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:58:20', NULL),
('174', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:58:37', NULL),
('175', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:58:52', NULL),
('176', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:59:10', NULL),
('177', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:59:24', NULL),
('178', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 04:59:57', NULL),
('179', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:00:10', NULL),
('180', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:00:34', NULL),
('181', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:00:59', NULL),
('182', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:01:14', NULL),
('183', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:02:00', NULL),
('184', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:02:18', NULL),
('185', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:02:35', NULL),
('186', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:02:52', NULL),
('187', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:03:48', NULL),
('188', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:15:07', NULL),
('189', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:15:34', NULL),
('190', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:15:48', NULL),
('191', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:16:34', NULL),
('192', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:16:48', NULL),
('193', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:17:05', NULL),
('194', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:17:29', NULL),
('195', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:17:48', NULL),
('196', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:18:06', NULL),
('197', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:18:24', NULL),
('198', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:18:37', NULL),
('199', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:18:51', NULL),
('200', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:19:09', NULL),
('201', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:19:27', NULL),
('202', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:19:48', NULL),
('203', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:20:08', NULL),
('204', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:20:40', NULL),
('205', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:21:12', NULL),
('206', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:21:32', NULL),
('207', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:21:58', NULL),
('208', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:22:18', NULL),
('209', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:22:34', NULL),
('210', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:22:52', NULL),
('211', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:23:06', NULL),
('212', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:23:23', NULL),
('213', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:23:49', NULL),
('214', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:24:06', NULL),
('215', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:28:58', NULL),
('216', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:29:15', NULL),
('217', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:29:49', NULL),
('218', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:30:05', NULL),
('219', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:30:21', NULL),
('220', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:30:37', NULL),
('221', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:30:54', NULL),
('222', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:31:11', NULL),
('223', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:31:31', NULL),
('224', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:31:47', NULL),
('225', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:32:03', NULL),
('226', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:32:19', NULL),
('227', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:32:38', NULL),
('228', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:32:54', NULL),
('229', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:34:50', NULL),
('230', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:35:07', NULL),
('231', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:35:37', NULL),
('232', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 05:36:03', NULL),
('233', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 07:08:17', NULL),
('234', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-27 22:04:06', NULL),
('235', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 07:12:29', NULL),
('236', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-28 03:43:10', NULL),
('237', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 07:38:02', NULL),
('238', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 07:39:59', NULL),
('239', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 07:41:08', NULL),
('240', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 07:45:50', NULL),
('241', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 07:47:14', NULL),
('242', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 07:51:34', NULL),
('243', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 07:58:27', NULL),
('244', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 07:58:40', NULL),
('245', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:08:38', NULL),
('246', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:08:51', NULL),
('247', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:11:28', NULL),
('248', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:11:44', NULL),
('249', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:20:08', NULL),
('250', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:20:22', NULL),
('251', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:20:39', NULL),
('252', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:24:36', NULL),
('253', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:29:40', NULL),
('254', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:29:58', NULL),
('255', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:32:34', NULL),
('256', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:32:49', NULL),
('257', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:42:24', NULL),
('258', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:43:31', NULL),
('259', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 08:46:16', NULL),
('260', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 20:04:30', NULL),
('261', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 20:05:14', NULL),
('262', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 20:25:18', NULL),
('263', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 20:25:29', NULL),
('264', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 20:26:52', NULL),
('265', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 20:27:03', NULL),
('266', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-28 03:43:23', NULL),
('267', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-25 20:33:20', NULL),
('268', 'shopping', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-04-28 01:07:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Tallas S', 6, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(2, 'Talla M', 6, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(3, 'Talla L', 6, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(4, 'Tallas S', 9, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(5, 'Talla M', 9, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(6, 'Talla L', 9, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(7, 'Tallas S', 17, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(8, 'Talla M', 17, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(9, 'Talla L', 17, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(10, 'Tallas S', 20, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(11, 'Talla M', 20, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(12, 'Talla L', 20, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(13, 'Tallas S', 22, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(14, 'Talla M', 22, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(15, 'Talla L', 22, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(16, 'Tallas S', 132, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(17, 'Talla M', 132, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(18, 'Talla L', 132, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(19, 'Tallas S', 145, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(20, 'Talla M', 145, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(21, 'Talla L', 145, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(22, 'Tallas S', 146, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(23, 'Talla M', 146, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(24, 'Talla L', 146, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(25, 'Tallas S', 224, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(26, 'Talla M', 224, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(27, 'Talla L', 224, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(28, 'Tallas S', 228, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(29, 'Talla M', 228, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(30, 'Talla L', 228, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(31, 'Tallas S', 11, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(32, 'Talla M', 11, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(33, 'Talla L', 11, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(34, 'Tallas S', 29, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(35, 'Talla M', 29, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(36, 'Talla L', 29, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(37, 'Tallas S', 30, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(38, 'Talla M', 30, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(39, 'Talla L', 30, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(40, 'Tallas S', 31, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(41, 'Talla M', 31, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(42, 'Talla L', 31, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(43, 'Tallas S', 68, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(44, 'Talla M', 68, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(45, 'Talla L', 68, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(46, 'Tallas S', 71, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(47, 'Talla M', 71, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(48, 'Talla L', 71, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(49, 'Tallas S', 95, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(50, 'Talla M', 95, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(51, 'Talla L', 95, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(52, 'Tallas S', 108, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(53, 'Talla M', 108, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(54, 'Talla L', 108, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(55, 'Tallas S', 137, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(56, 'Talla M', 137, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(57, 'Talla L', 137, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(58, 'Tallas S', 153, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(59, 'Talla M', 153, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(60, 'Talla L', 153, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(61, 'Tallas S', 166, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(62, 'Talla M', 166, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(63, 'Talla L', 166, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(64, 'Tallas S', 171, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(65, 'Talla M', 171, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(66, 'Talla L', 171, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(67, 'Tallas S', 175, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(68, 'Talla M', 175, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(69, 'Talla L', 175, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(70, 'Tallas S', 184, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(71, 'Talla M', 184, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(72, 'Talla L', 184, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(73, 'Tallas S', 191, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(74, 'Talla M', 191, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(75, 'Talla L', 191, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(76, 'Tallas S', 208, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(77, 'Talla M', 208, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(78, 'Talla L', 208, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(79, 'Tallas S', 212, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(80, 'Talla M', 212, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(81, 'Talla L', 212, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(82, 'Tallas S', 216, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(83, 'Talla M', 216, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(84, 'Talla L', 216, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(85, 'Tallas S', 223, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(86, 'Talla M', 223, '2022-07-19 21:23:06', '2022-07-19 21:23:06'),
(87, 'Talla L', 223, '2022-07-19 21:23:06', '2022-07-19 21:23:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `songs`
--

CREATE TABLE `songs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `lista` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoriis`
--

CREATE TABLE `subcategoriis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `color` tinyint(1) NOT NULL DEFAULT 0,
  `size` tinyint(1) NOT NULL DEFAULT 0,
  `categorii_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subcategoriis`
--

INSERT INTO `subcategoriis` (`id`, `name`, `slug`, `color`, `size`, `categorii_id`, `created_at`, `updated_at`) VALUES
(1, 'Almacenamiento', 'almacenamiento', 1, 0, 1, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(2, 'Display', 'display', 0, 0, 1, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(3, 'Ram', 'ram', 0, 0, 1, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(4, 'Almacenamiento', 'almacenamiento', 0, 0, 2, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(5, 'Monitor', 'monitor', 0, 0, 2, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(6, 'Ram', 'ram', 0, 0, 2, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(7, 'Tarjetas Wifi', 'tarjetas-wifi', 0, 0, 3, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(8, 'Antena', 'antena', 0, 0, 3, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(9, 'Access Point', 'access-point', 0, 0, 3, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(10, 'Cables', 'cables', 0, 0, 3, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(11, 'Camaras', 'camaras', 0, 0, 4, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(12, 'Sensores', 'sensores', 0, 0, 4, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(13, 'Software', 'software', 0, 0, 4, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(14, 'Hardware', 'hardware', 0, 0, 4, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(15, 'Mujeres', 'mujeres', 1, 1, 5, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(16, 'Hombres', 'hombres', 1, 1, 5, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(17, 'Lentes', 'lentes', 0, 0, 5, '2022-07-19 21:20:14', '2022-07-19 21:20:14'),
(18, 'Relojes', 'relojes', 0, 0, 5, '2022-07-19 21:20:14', '2022-07-19 21:20:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Intelisoftw', 'intelisoftw', 'blue', '2022-07-19 21:24:32', '2023-04-22 02:56:00'),
(9, 'Neurosintergia', 'neurosintergia', 'red', '2023-04-06 00:01:20', '2023-04-22 02:56:17'),
(10, 'Expansion', 'expansion', 'green', '2023-04-11 23:52:56', '2023-04-11 23:52:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(114, 'Raquel Medina Moreno', 'raquelmedinamoreno1@gmail.com', NULL, '$2y$10$Aq.oclCbDhSWX/awqSALTetbKq0wbIcRzxsdNmVZpUAORe.0ZGHga', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:26:56', '2023-04-25 04:26:56'),
(115, 'Laura Hernández Portero', 'laurazoa@hotmail.com', NULL, '$2y$10$.msAM8ewVXqVL/q.6XKNtuLhnXu4yGKBzTa2rTIdahZXxp1K24TjS', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:27:16', '2023-04-25 04:27:16'),
(116, 'Brenda Magaña', 'brend_md@hotmail.com', NULL, '$2y$10$ekL8W2xobmvJ2ZTn4KK3kexBro60sl3RvkAGJ3ink2vKkN/vljKaq', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:27:36', '2023-04-25 04:27:36'),
(117, 'Maricela Salazar', 'maricelasalazarv@hotmail.com', NULL, '$2y$10$Nz9FxWa1fYwO7/HBOHNAROhpPdjO55LlJSPXzwOc133Ye0CqknKn2', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:27:54', '2023-04-25 04:27:54'),
(118, 'Ana Sofia García Cerezo', 'sofigarcia1394@gmail.com', NULL, '$2y$10$I4mLeRaCRPAw69RA2y/yY.Mrs7puRae.ydZHflOeQpE8enfMhwR62', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:28:09', '2023-04-25 04:28:09'),
(119, 'Claudia Elena Antúnez González', 'yaya0270@gmail.com', NULL, '$2y$10$w02JQBJQtZRGNvMhHoP/G.fgbb5RP0nwE5gQEm0Agcv6xQ8XzELnu', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:28:28', '2023-04-25 04:28:28'),
(120, 'Angel Rolando', 'angelrolandomatos13@gmail.com', NULL, '$2y$10$8mAXvBtmtKjH38pEUyqZteWhl.nD2vOVNgH0zWbIPRZxGCN3RmWUi', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:28:54', '2023-04-25 04:28:54'),
(121, 'Beca84', 'beca8407482@hotmail.com', NULL, '$2y$10$cM3WPW0tnHuQb/ZivJ1E7eJ.yBdf4TKyl1dajv/dR7FNOJJstw5Hi', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:29:13', '2023-04-25 04:29:13'),
(122, 'IVONNE BEATRIZ VITE PEREZ', 'betykaf@hotmail.com', NULL, '$2y$10$utQe1ZplKGmApz2PblmgE.6tEE6xDxJBQkdheXqL.tkwtI84K.ZMe', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:29:56', '2023-04-25 04:29:56'),
(123, 'Juan Manuel', 'manu_jean@yahoo.com.mx', NULL, '$2y$10$TGjQbkWEvF9nbyhvbwvI8ev/OiZrFF0veTi/GsZRtZOX2VudQqsCO', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:30:16', '2023-04-25 04:30:16'),
(124, 'Patricia Margarita Ramos Valencia', 'socpatyramos@gmail.com', NULL, '$2y$10$Zc0.x4kJmFpwtistpIY1jOzlJcyWuwWyBU7aF9ozQMiPPaGU5yF1O', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:35:03', '2023-04-25 04:35:03'),
(125, 'israelbuzek', 'israelbuzek@gmail.com', NULL, '$2y$10$suwbvjl5WQCh2fokU8JcI.cBPOdQD6ddGh5t5mYIxrKILmhleMlcu', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:35:21', '2023-04-25 04:35:21'),
(126, 'Ángel Escobar Ortiz', 'mtro.angel.escobar@gmail.com', NULL, '$2y$10$rUFhEP5xzGqHIHYMMyVsrONm63j9posNFB.ar1KOFOhimgG48UweK', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:35:37', '2023-04-25 04:35:37'),
(127, 'Natalia Villegas', 'nvillegasramos@gmail.com', NULL, '$2y$10$wpLXV8xqzc91g1pOKfaOG.URK4xYqxASMAEeqWnSu58GBiPZXaWX.', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:36:15', '2023-04-25 04:36:15'),
(128, 'Celene mendoza', 'cpmb_79@hotmail.com', NULL, '$2y$10$MZJ.sYK8t2TOm8eHkc2.RuhqmbdGpRQ6Otsw.x/icwdRMvLzMg/iW', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:36:29', '2023-04-25 04:36:29'),
(129, 'Andrés Ordóñez Carrera', 'planorca@hotmail.com', NULL, '$2y$10$oZ98lJIEjvmXouUqTLAZDOGEu1UDfA7Lgl0zvtL0PqHMbYbxkt8iq', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:37:18', '2023-04-25 04:37:18'),
(130, 'Valeria Aguayo', 'valeria.aguayo@gmail.com', NULL, '$2y$10$5a4Fi9CDg2liqFCe88gQzOg2xu6zBpZb/JDicRR6mrgJdwVnCM6kG', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:37:53', '2023-04-25 04:37:53'),
(131, 'Carmela', 'tiempodeespejo197@gmail.com', NULL, '$2y$10$QVH3jyCN8MiLqVu8zJbvvOrU83Ze0P.Vs73WjNwhHduryrGDDmbtK', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:38:09', '2023-04-25 04:38:09'),
(132, 'Martin Hernandez', 'martinherher@hotmail.com', NULL, '$2y$10$oPK/QWmab1jPCn4x8q6qzOyfFbCa4EviSc5TO4QWepyuKadD1gSM2', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:38:32', '2023-04-25 04:38:32'),
(133, 'Gloria Maria Alarcon Rodriguez', 'kamandalu3@hotmail.com', NULL, '$2y$10$wpl2.kr3Lt7iVEBC8PdXR.SNMRHCuuphc4otfK2zaPLH7GByEcr0S', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:38:55', '2023-04-25 04:38:55'),
(134, 'Esther Calderon', 'retsecc@gmail.com', NULL, '$2y$10$8ATNpenwF5CQiThUIf0V/.mtJ.LoV.wLEH4sTWA1fOw4zfE5ycsWK', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:39:33', '2023-04-25 04:39:33'),
(135, 'Yolanda Hidalgo', 'exitoy10@hotmail.com', NULL, '$2y$10$fcsMDyqfTqP3bZ7e7.mAZu1N6DvEDdkrrXYlR4eT7Pa0mpgO50P/u', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:40:01', '2023-04-25 04:40:01'),
(136, 'Maricarmen Echavez', 'mcechavezo@gmail.com', NULL, '$2y$10$qw1uwa3J.GI1HSralANXgerKa9Np1YJ2pi3nDs8q9GFHUfzlj3jqS', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:40:23', '2023-04-25 04:40:23'),
(137, 'Yolanda paez', 'y_ola_paez@hotmail.com', NULL, '$2y$10$bhRu4W9JbxpvmnASN52U3.3fNh6wAKvtwBVW/8E1i0pl3ssZddGu6', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:40:50', '2023-04-25 04:40:50'),
(138, 'Ángeles Ochoa Avila', 'angeles.ochoa@gmail.com', NULL, '$2y$10$dhdraTZpzZo95Ge4ivDjtetkVxOkvKyvUPEbmvZsdaUFXunLZc2ni', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:41:46', '2023-04-25 04:41:46'),
(139, 'Leticia Jorge Martínez', 'lety_jorge@hotmail.com', NULL, '$2y$10$q4LxX4MQQ9pUKCoV6/0u7OYtUQugaH0BQajsp0OGwWqitzhYLp0lO', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:42:20', '2023-04-25 04:42:20'),
(140, 'Paulina Silva', 'paulina.silva.salinas@hotmail.com', NULL, '$2y$10$jf0L4OnFbMM6ZPwseRzssudNrK8nNhVvZh02ePCNW4MAJzDXszski', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:42:56', '2023-04-25 04:42:56'),
(141, 'Maritza Sanchez', 'marychile2@yahoo.es', NULL, '$2y$10$.EYq70PErn1Od/3fbQBU.OXGVx9my8Js9Wa5BTJRiHZq8XJN2IS5.', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:43:22', '2023-04-25 04:43:22'),
(142, 'Ileana', 'gritonamx@msn.com', NULL, '$2y$10$Ph66zetC.WTRZ0DXJPDZ2Ozj3ks2Y4QEvxj49TU/XZWAGYumNA4Zi', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:43:40', '2023-04-25 04:43:40'),
(143, 'Víctor Manuel Monroy Vázquez', 'vicmonroe@hotmail.com', NULL, '$2y$10$LONTDY5DaPUR/.qZWbwJJuAToQg2z4ycP3gwb4S2/5bYSTt21l8FW', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:43:58', '2023-04-25 04:43:58'),
(144, 'Araceli Martínez Campos', 'ara_ventana@hotmail.com', NULL, '$2y$10$9EnoDAG7QJNbfdF8klFTw.b71Hs33mut6vBU72RpisJvlqIqwK4ju', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:44:21', '2023-04-25 04:44:21'),
(145, 'Flavio Díaz San Martín', 'fse.dsm@gmail.com', NULL, '$2y$10$BKIjbDTEz/3SVBivKNUSpu9HeYVgNgBzbFVD5EB/XLSg/2ddUInty', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:44:53', '2023-04-25 04:44:53'),
(146, 'Alejandra Montufar', 'alemontu04@gmail.com', NULL, '$2y$10$ruGFvS57z2dl9j0OkhziAunif6D70n4b3EVbkwRIrqnkYaXDuSf2i', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:45:43', '2023-04-25 04:45:43'),
(147, 'Victor', 'victorcruz@hotmail.com', NULL, '$2y$10$n7H8wXHLlTI4IyuuGZG4GO6Z0j9VadQrY/0xC/CguVl5YLAWbcZ5G', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:45:59', '2023-04-25 04:45:59'),
(148, 'Monica Belinda', 'monibeli73@gmail.com', NULL, '$2y$10$DBmAJticc/72h6ACxhge2OGdRWbDM0pEcw1NcFjo8mUVTAhR/FnY2', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:46:15', '2023-04-25 04:46:15'),
(149, 'Jorge Aguilar', 'geos714@me.com', NULL, '$2y$10$HBnFjtCYvf7MQZTqYX/ulev3gaNlRVLI/h116a/5jtJ1U7RYzgPne', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:46:31', '2023-04-25 04:46:31'),
(150, 'Rodolfo Castrellón', 'rodolfocastrellon.77@gmail.com', NULL, '$2y$10$RSey7QHnbPPuV1J0RzL7ROs0HpWClS5MR02uvDkIaMScNkIeXLvCO', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:47:05', '2023-04-25 04:47:05'),
(151, 'patkad', 'patkad@gmail.com', NULL, '$2y$10$aB12aHFEaPaoku1GDb2rFOU8KWZRMa033wQOKL5uaZqjbfTw6uTJe', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:47:25', '2023-04-25 04:47:25'),
(152, 'Slany Arias', 'slany.arias@gmail.com', NULL, '$2y$10$dTUrlj9dsEDgF8KbG86JGOdiTbiMT7QQHbkcD5KsKm8Yz2DATX5bm', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:50:19', '2023-04-25 04:50:19'),
(153, 'Érica Pérez', 'erica.perez@gmail.com', NULL, '$2y$10$gMxcdUxFSmLefBLfvKq7yesP8xyzq7YI1C8PgwSV1rNrTRVZuwFxe', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:50:35', '2023-04-25 04:50:35'),
(154, 'aramen_sp22', 'aramen_sp22@hotmail.com', NULL, '$2y$10$ibcdnstBfJuA0zj0RCGUK.EMSofxcFmR2ahf2xcpr0jX9C1G5O526', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:50:55', '2023-04-25 04:50:55'),
(155, 'lulu loperena', 'lululoperena@gmail.com', NULL, '$2y$10$ewpll87/WPQCwcbVKuan3O10oXpQTDPp3jb0uBNcYD0sMk9V286Ou', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:51:09', '2023-04-25 04:51:09'),
(156, 'Roberto Diaz', 'robertonetworks@gmail.com', NULL, '$2y$10$ks2qEP2saBw7Y6UfeCwOpOOepBCxg4w0Azn/.q7p9IdutizP6974.', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:51:25', '2023-04-25 04:51:25'),
(157, 'Liliy epez', 'Liliyepez@hotmail.com', NULL, '$2y$10$pTo6YynJLC2m6tVA7nsP2eqF3PqrGSaMHy7OP0sOF05tMQa0SpROO', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:51:42', '2023-04-25 04:51:42'),
(158, 'lirocato', 'lirocato@gmail.com', NULL, '$2y$10$VuV44DkiFWs6FskA1XQE6udkKGC8VTphtPY3vYRLzvc73U4hfoCaO', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:52:32', '2023-04-25 04:52:32'),
(159, 'bv32936', 'bv32936@gmail.com', NULL, '$2y$10$NNvRNlXqULw4JCwhrfy7pO1hbLZbumxjRM.8g9wR5ccdyUp.QyYx6', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:53:05', '2023-04-25 04:53:05'),
(160, 'Myrna Leonor López Ramírez', 'myrnalopez1986@gmail.com', NULL, '$2y$10$gkDz3QbNoZJIelece6zjaOHj9bX58TwomsAzDo7f8smm2J8eoZcUS', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:53:23', '2023-04-25 04:53:23'),
(161, 'Elizabeth Rosas Hernández', 'eli_rosas7@yahoo.com.mx', NULL, '$2y$10$xWZ5ZTmyZ/nIkxVd.RSyy.E7DAE1sy8uwX/EZniH2A0qdZ.d96gZC', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:53:39', '2023-04-25 04:53:39'),
(162, 'Margalida Jover Lopez', 'margalidor@gmail.com', NULL, '$2y$10$CgKyjk1j7BHQea7kiuFsY.f2LgOUssyTBKyn4l5pblPy2FYWakkKq', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:54:03', '2023-04-25 04:54:03'),
(163, 'Marcela Ramirez', 'mmarcelaramirezf@gmail.com', NULL, '$2y$10$sQtr41SzIfGjN3s4RZI27OYnckm/7NeMOIVksi9nhiBHkGPWoZbxm', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:54:18', '2023-04-25 04:54:18'),
(164, 'Patricia Maldonado', 'patriciamaldo101@gmail.com', NULL, '$2y$10$1cx.N19C4IcI/8uRaXc8..3Qa9LURs6bW3W7RwFMy/dXVNPklUedy', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:54:34', '2023-04-25 04:54:34'),
(165, 'Omar Dávalos', 'nutriendomentes@gmail.com', NULL, '$2y$10$YwHHNL6sdLjTMqbJx1AOke9fRpGlOEtW7EqrPRLMaImC0tUnS4vAe', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:54:56', '2023-04-25 04:54:56'),
(166, 'Yair Pacheco', 'yayrlouis@hotmail.com', NULL, '$2y$10$RISJfuLKPQ3UgElndb62r.P8lJpyajnFG0upIhxXuQGrhnmJOKc.2', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:55:26', '2023-04-25 04:55:26'),
(167, 'Isabel Mariela', 'maestra.atl@gmail.com', NULL, '$2y$10$o.pQ.qjzNA4Xw6SLsVHb2epz7bUmq2j/inZuvr0a1EQP6OpmQuiea', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:55:40', '2023-04-25 04:55:40'),
(168, 'Miguel Angel Cervantes', 'mc.fenixteam@gmail.com', NULL, '$2y$10$n0BYRrO3f6JKvBd1lBR7Ou77ANS8ZpAc0c/kktDStitxEpy96CSTG', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:56:29', '2023-04-25 04:56:29'),
(169, 'Norma Fernandez', 'delassaulx@yahoo.com', NULL, '$2y$10$fbnnHZfj7SFbjjb1pzcB2erdtQ07I1WhabJx6qALd3IZyBep1OiT.', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:56:42', '2023-04-25 04:56:42'),
(170, 'Rafael Díaz Mora', 'rafaeldiazmora@live.com.mx', NULL, '$2y$10$JHE0oXrtrz3wwEu/QXd.xOf0BNGdKdUTf9Ik14ff4zs7SRGVLRQp.', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:57:01', '2023-04-25 04:57:01'),
(171, 'Maria', 'maryspecial2000@yahoo.com', NULL, '$2y$10$.t3zWNq0pOl4J0GqaXxf6ODhPKOakm7JW2K6xqS.C5PE2l5AJGeJK', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:57:46', '2023-04-25 04:57:46'),
(172, 'Maria Alicia Lopez Trejo', 'msrialisbor@gmail.com', NULL, '$2y$10$RezBpGd9xba5HfNQsknIZ.AWltseQ9r8QfNfVJy8MvIcPyg5oLMNG', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:58:04', '2023-04-25 04:58:04'),
(173, 'EliCris Rivero', 'christiriv@gmail.com', NULL, '$2y$10$yDgJ9EWAYtO.7F4dV8ojLOn89MCW0kxQlwBY0TsKbWdrAtrfLkhI6', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:58:20', '2023-04-25 04:58:20'),
(174, 'Christian Fernandez', 'cfluque@gmail.com', NULL, '$2y$10$.eFhriDs6JaB1nc2G6I9YO02zy48xNLbL785Ya.5BnSk4Yg0Q3KYa', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:58:37', '2023-04-25 04:58:37'),
(175, 'Johana Torres Diaz', 'jtd.mandalacenter@gmail.com', NULL, '$2y$10$hicRUB0onWHjuJ95OMJqNeB.S.sWfEfkxxM5sMYqoAzIEKriutTeK', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:58:52', '2023-04-25 04:58:52'),
(176, 'Patricia Maldonado', 'maldodanz@gmail.com', NULL, '$2y$10$aOx1m4DKHEpiSXL8XZZKe.qxxU/eJ9EmkUdiKdFwoMyfAE0Jm.Uv.', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:59:10', '2023-04-25 04:59:10'),
(177, 'Elide Urrutia', 'urrutiaelide@gmail.com', NULL, '$2y$10$QaC9tszWMdOPW0vpFQgdYunVTF/2zXHl941/AaXTW37SOYar6GGSS', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:59:24', '2023-04-25 04:59:24'),
(178, 'Dayimiris Peguero', 'dayipeguero@gmail.com', NULL, '$2y$10$vJQFRxJOH72yXOdX0myKjO5f72/u09PextNktuosh8zTJmXsuKzEq', NULL, NULL, NULL, NULL, NULL, '2023-04-25 04:59:57', '2023-04-25 04:59:57'),
(179, 'Gaby Mugica', 'gabymugica7@gmail.com', NULL, '$2y$10$1kiOGPBJ0GGSpOSBMXHAxewwcP5uhmzZWz6yk2Vc8MdYNWvB/zwaW', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:00:10', '2023-04-25 05:00:10'),
(180, 'Maria del Carmen', 'mc_echavez@hotmail.com', NULL, '$2y$10$OqC0E.pLqXBciVDgREkJLufFse78vQ/26j1FtVVbDuI/ghUbKg7h2', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:00:34', '2023-04-25 05:00:41'),
(181, 'marta rullo sánchez', 'martaswarovski@gmail.com', NULL, '$2y$10$g6J755HrBBV6uXfMyYHzeuc2Kwk1p0fZKW0Lqi598fYd4Or/HPFoC', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:00:59', '2023-04-25 05:00:59'),
(182, 'Nancy Araceli Velez Cepeda', 'nvelezcepeda74@hotmail.com', NULL, '$2y$10$4wr6LeE/stINSX2YmJ/hjeKi2RDydweHfIO1XQ7QhvtC8Zhe4PQ2q', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:01:14', '2023-04-25 05:01:14'),
(183, 'Genaro David Trías Figueroa', 'genarotrias@yahoo.com.mx', NULL, '$2y$10$jnM9A9xsmNsUWvoWuKI/peVqRAPfmpksMHsNGBfLjv8Q6e5SxYrku', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:02:00', '2023-04-25 05:02:00'),
(184, 'Loriana Granillo Vicenttin', 'florecimientohumano@gmail.com', NULL, '$2y$10$NqAdKi0RuJe/u17F9l4yx.URhYqpr9f2KL4n6SQpAEz9YHwPC45we', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:02:18', '2023-04-25 05:02:18'),
(185, 'Nayibe', 'nayibespin@gmail.com', NULL, '$2y$10$f6iAbklj4WM4JF6MWH.bPOepuheX7ceSMGRt6I0FHxiRVm36qq72q', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:02:35', '2023-04-25 05:02:35'),
(186, 'Scarlett Aparicio', 'scarlettapariciom@gmail.com', NULL, '$2y$10$cbzwqd72yHqXTCl24Ftu.Ol5ASWP9WiAhgUVVA.ktyDtfry0Ecb9e', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:02:52', '2023-04-25 05:02:52'),
(187, 'Marbel Mendez', 'infoneuroconciencia@gmail.com', NULL, '$2y$10$an9.VfGoEUCca6QgOQPV4e4576vq4/Tc3feLnRE3Sr1ZskkYdvYum', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:03:48', '2023-04-25 05:03:48'),
(188, 'Patricia', 'patycerjo.99@gmail.com', NULL, '$2y$10$hTYz8QPRggLVL9k83qJDeuFH5Pa.YEUivYHXlcp9BQOlDhYZvwWu6', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:15:07', '2023-04-25 05:15:07'),
(189, 'Jair Ruiz', 'mech.jrimm@gmail.com', NULL, '$2y$10$awxcArs6faY3NmGA93bRPuNRdIvj/YeNeZ079Bg.GwcFmMZBjEMUS', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:15:34', '2023-04-25 05:15:34'),
(190, 'Isidora de Lourdes Ramírez Cerón', 'isidoraram24.irc@gmail.com', NULL, '$2y$10$xxiUESS4j6xl1xl54LtnJOULtA/dru6FhAY7dstJJb3R0Cf81E592', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:15:48', '2023-04-25 05:15:48'),
(191, 'Hortensia Mothelet Perez', 'hmothelet@gmail.com', NULL, '$2y$10$ubIApShjA/m/kGM38UCCvuhwDJesOloywukgCz2bMGHN24csdHzuy', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:16:34', '2023-04-25 05:16:34'),
(192, 'Marta', 'marandaluz0@gmail.com', NULL, '$2y$10$f8oLzQ9mHASrcpTuN40NeO9bd9D6WzbbhPnCmnPhzRnnTcA0bxe3K', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:16:48', '2023-04-25 05:16:48'),
(193, 'CharlesJacle', 'dmitrii.havanskiy@outlook.com', NULL, '$2y$10$54b1h9mZN.uuNAAT5vXUKOo2NktFUof.4L2WhaAU0EBah5MLSlYMq', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:17:05', '2023-04-25 05:17:05'),
(194, 'Claudio Fabian Herrera', 'seiseijutsu@gmail.com', NULL, '$2y$10$iyntyXJcdL5C.m.c2NiG3.MoTRw/FOjJfkk1P/Hw/NEchHkAf0DR2', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:17:29', '2023-04-25 05:17:29'),
(195, 'Stephanie Becerra', 'gsbo759@gmail.com', NULL, '$2y$10$4CFuYNZCvescFJHn.7hCEeZzAmzKGqb7VqsNCLf.32AdyOyCovrqG', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:17:48', '2023-04-25 05:17:48'),
(196, 'David Divias', 'armex.david.963@gmail.com', NULL, '$2y$10$VxxV4N.U0GCUgAMZrL5HwuEvMdzAR15TX.cYE4Gqc42e7aJx3YFoC', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:18:06', '2023-04-25 05:18:06'),
(197, 'Gabriela Serratos', 'gabrielaserratos@hotmail.com', NULL, '$2y$10$XJOCZ1owZskU1RMflCG/ve6gAGI0wigzIkVZZKW5JEWt2fkBMv.HS', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:18:24', '2023-04-25 05:18:24'),
(198, 'María del Rosario Serrano Flores', 'maroseflo@hotmail.com', NULL, '$2y$10$ZTBMzE/oCaguSA4VRJ1QXeKUITajYqLwck0NlxY2LcuMjhoORxBqW', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:18:37', '2023-04-25 05:18:37'),
(199, 'Daniel', 'daniel.cadena.garcia@outlook.com', NULL, '$2y$10$yh4PhJKOIgUuefEwycjTh.g87.BcQpL1eiBswUXETYL70WmYpvBkm', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:18:51', '2023-04-25 05:18:51'),
(200, 'David', 'armex.david963@gmail.com', NULL, '$2y$10$g0j6JibQTgYbIto9FIN45.aGsKmCY1dKSvlAmEzmqGvANGTZEjwtW', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:19:09', '2023-04-25 05:19:09'),
(201, 'Mariana', 'zapatamariana111@gmail.com', NULL, '$2y$10$ppygVRMRZQz5P4rL7rzk6.XAHoMAiLrkFpWkG71Xv4UpT9fAY0wPC', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:19:27', '2023-04-25 05:19:27'),
(202, 'Isis Pegueros', 'dra.isispegueros@gmail.com', NULL, '$2y$10$KHgBvAEWjFQJZAHVXE3vIe.yRMlorwqltMG6hkllgGb9lQGZZwNkO', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:19:48', '2023-04-25 05:19:48'),
(203, 'CARLOS FRANCO', 'crfranco@gmail.com', NULL, '$2y$10$WGv3M/H36BeaV3WXnF1a0uWszBofMP2cIKkhqWsLtzTcbt/3waahS', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:20:08', '2023-04-25 05:20:08'),
(204, 'Tanya Negrete Pacheco', 'tanya_negrete@hotmail.com', NULL, '$2y$10$YyXCzW0KvIBT3qzvu1lKjeckY5RxtLJWPod7dCuZL7YZMccVyF/se', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:20:40', '2023-04-25 05:20:40'),
(205, 'Bertha', 'tuiaka@yahoo.com.mx', NULL, '$2y$10$9x6N4Z0oqlck2CwfXAv9Ne18r9fab.VG79b5zVyZWsAm2dzLWaNn2', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:21:12', '2023-04-25 05:21:12'),
(206, 'Trini', 'menciatd@gmail.com', NULL, '$2y$10$6T8EFwtcKqqB1Nd61R0ub.k9TAXymdLUZNGUo/NAq4MAYpVMQImI2', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:21:32', '2023-04-25 05:21:32'),
(207, 'Liz', 'cerqueraliz01@gmail.com', NULL, '$2y$10$KvoQyDo44s0lxURKurRmDOnEOoXqY3HS2aJQ5LstR9AhPgCE.smZC', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:21:58', '2023-04-25 05:21:58'),
(208, 'Victor', 'vicrodriguezmx@gmail.com', NULL, '$2y$10$TKtiutZJBIrK0m.5yokFueBUJbvm65cyy8AHSTHcX92Ybf6ducqNS', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:22:18', '2023-04-25 05:22:18'),
(209, 'Nelly', 'adanellylozada@gmail.com', NULL, '$2y$10$u425wcc7a1EMlUK7fxVvv.63wJV1ZTM2AgM2omX6wQl9Qc9RDZJby', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:22:34', '2023-04-25 05:22:34'),
(210, 'Jesús Rodolfo Espinosa López', 'rodolfoespinosax@gmail.com', NULL, '$2y$10$W2lMSwTU0kQN1DSdBWT6G.WzTPgnAqwMU6MB3zl9CCEaXP4AqR4Su', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:22:52', '2023-04-25 05:22:52'),
(211, 'María Teresa Paredes Lobos', 'mparedeslobos@yahoo.com', NULL, '$2y$10$lqjKnksni2LFmNzMKBT2ZuGrWG/6HZGMnyYbNiDAejr6ODXQPv8eO', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:23:06', '2023-04-25 05:23:06'),
(212, 'Blue', 'blueocean2154@outlook.com', NULL, '$2y$10$QPUI44NDbcJBDVloaCgwZe2KI87jJ.DaewLYt6dSQzyRygGi0l9Wm', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:23:23', '2023-04-25 05:23:23'),
(213, 'David Grinberg', 'dudigrin@gmail.com', NULL, '$2y$10$GuQ530y4waoHSFLDFZugRu.liKNQfrYF0aq7Pe009/iu83l7iCdz.', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:23:49', '2023-04-25 05:23:49'),
(214, 'Veronica Camacho Vacheron', 'verovacheron@hotmail.com', NULL, '$2y$10$DkyCqD69TK5WXgpnLNROJuCUFrNOsYv/nxAmcuwUdLfqjVQ7Jk/ei', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:24:06', '2023-04-25 05:24:06'),
(215, 'Mayra Pérez', 'mayraanahiperez@gmail.com', NULL, '$2y$10$you0l7j1mjmD4EsRE2te7utqxLn7W.FC2vKlS.sdkPJk3jF/c1KOy', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:28:58', '2023-04-25 05:28:58'),
(216, 'Kiauhmitl Junck', 'atve.org@gmail.com', NULL, '$2y$10$IcmwEjYOpjVO1JVIPDEJXe.t8naTAFeOvguuDgETLJsn.YIVnJJAW', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:29:15', '2023-04-25 05:29:15'),
(217, 'Mario Gerardo Becerril Olaya', 'moshes1133@gmail.com', NULL, '$2y$10$vJVob4MSmO7CrF47jS1Bg.gDskty7aLr4XeSCE8fzXZ0AyArZdNqe', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:29:39', '2023-04-25 05:29:39'),
(218, 'haydee olvera', 'magocristal7@yahoo.es', NULL, '$2y$10$QfFoo8xL6Qdpi753i9gBQOqfGAD6ntjQLF5WgIaHdrdQpUSe.ri8e', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:30:05', '2023-04-25 05:30:05'),
(219, 'Kristopher', 'caprisat@hotmail.com', NULL, '$2y$10$srFS9oEm5dEFg4krnbVRxuUf1x6IPyWxUs3QL9EPjPqJouuHr7NG.', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:30:21', '2023-04-25 05:30:21'),
(220, 'Iris', 'iris.castro.cruz@gmail.com', NULL, '$2y$10$wnqiEG82Ts26TPhgBGQfwu4yur3fG.ad8rehJUT0CvRPme9e0iCMK', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:30:37', '2023-04-25 05:30:37'),
(221, 'Minerva', 'minervaruedafabila@gmail.com', NULL, '$2y$10$AFBOK6olSq11yxsW1.ErFuo/g4zRjL8tS85bb/M8c0B9RYv7iHHIC', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:30:54', '2023-04-25 05:30:54'),
(222, 'Verónica Nava', 'lic.veronica_nava@outlook.com', NULL, '$2y$10$o0OPMz.I2SCITIISojDXweFMrvCRe0gyDFwCiSC5AmzOYeVxWr0pG', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:31:11', '2023-04-25 05:31:11'),
(223, 'EUNICE JIMENEZ', 'eunicemvz@gmail.com', NULL, '$2y$10$ksABjh7wNdkHPHm06.qCrurdtcBzPpFKSpiZwOd8o0/0KNXFtP4hK', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:31:31', '2023-04-25 05:31:31'),
(224, 'Ivonne Bolaños Peñaflores', 'ivonnebpenaflores@gmail.com', NULL, '$2y$10$UZ2RxnFvTir71vvOT8g52OCmatGfsWb2E4ast7Pr8dUB55mDQEFQ2', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:31:47', '2023-04-25 05:31:47'),
(225, 'Kiauhmitl Junck', 'Kiauhmitl@gmail.com', NULL, '$2y$10$OMsAXJzUz.94IifRuqyrH.KpY4jPXlc7cMH7eMHxbw706k5/U2vRu', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:32:03', '2023-04-25 05:32:03'),
(226, 'Elodia Gonzalez', 'elodiama2000@yahoo.com.mx', NULL, '$2y$10$cSDZW39F/.cORZy/DnBhXePUKRcg5CG/bt4N4vrSxUS.MUiGnUWIO', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:32:19', '2023-04-25 05:32:19'),
(227, 'Marisol Ortega', 'marisolom@gmail.com', NULL, '$2y$10$ctavCcOWXlNYuzzDjfm35OfvFor0ChoC26qfZZXs6KSew0Wrq5/f.', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:32:38', '2023-04-25 05:32:38'),
(228, 'Xochitl Lopez', 'ing.xochitl.lopez@gmail.com', NULL, '$2y$10$KxCWx2KOnmmg8pt6rQpABu/7NEqb6mvwL5/dIu7a9M2yHiD1zf0yG', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:32:54', '2023-04-25 05:32:54'),
(229, 'Lucia Rusu Melinte', 'construccionesmodova@gmail.com', NULL, '$2y$10$OYPsDONjGpNxRrRYHPC2/e/47WoVA/kulqBRNygNqTU9WAraw5M86', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:34:50', '2023-04-25 05:34:50'),
(230, 'Maria virginia', 'marquinamariavirginia@gmail.com', NULL, '$2y$10$.d034OJiswnTh2YBrbo2SuQ9Wm56zRh6IJCHp0GstBA6sV2tv515G', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:35:07', '2023-04-25 05:35:16'),
(231, 'Sathya de los Milagros Escalante Araujo', 'bernkastel19@gmail.com', NULL, '$2y$10$qZjjODSgYlQ3hhg8kUzH7.5hmQzq/rDr8GiwXqGQDDBXHvtKKg0J6', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:35:37', '2023-04-25 05:35:37'),
(232, 'María Patricia V. Camargo persita', 'patycamargo@hotmail.com', NULL, '$2y$10$Ub4hAlKxnqWbtb4dTnrjkOPedkjNslUzn.nTlA8dQFxno/KpVQNB2', NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:36:03', '2023-04-25 05:36:03'),
(234, 'Manuel Cervantes', 'manuelcervantesjose@gmail.com', NULL, '$2y$10$gkEHRh6TfxQroKVvwrbXOexbrbxxhLezSxy88T04oidZlwvlU2oVG', NULL, NULL, NULL, NULL, NULL, '2023-04-25 07:08:05', '2023-04-25 07:08:05'),
(236, 'Neurosintergia', 'neurosintergia@gmail.com', NULL, '$2y$10$GBJQzYDMsHWybUPoDAfFRuKkaPx/KEKVQZijZovQTr/L3ffdrr12q', NULL, NULL, NULL, NULL, NULL, '2023-04-25 07:37:19', '2023-04-25 07:37:19'),
(266, 'a', 'a@a.com', NULL, '$2y$10$n7P/rRQy1kRzkc78lePDc.9oKKhhfqiy1C0eZhFzJjvgTNuRVF5/q', NULL, NULL, NULL, NULL, NULL, '2023-04-25 20:33:10', '2023-04-25 20:33:10'),
(267, 'b', 'b@b.com', NULL, '$2y$10$DLQh.kWBf5a4uhsg1gS.cuo97jE3FX6LsL.qpkWBfNRJ/Pxu2EoWC', NULL, NULL, NULL, NULL, NULL, '2023-04-25 20:33:20', '2023-04-25 20:33:20'),
(268, 'Manuel Cervantes', 'intelisoftw@gmail.com', NULL, '$2y$10$veXO.3Mu.SopV8MDP73Wpu2vwEr50Gg/ZxSzoRemS7.ZuTLxwglkC', NULL, NULL, NULL, NULL, NULL, '2023-04-26 02:50:21', '2023-04-26 02:50:21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_question_id_foreign` (`question_id`),
  ADD KEY `answers_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `audiences`
--
ALTER TABLE `audiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audiences_course_id_foreign` (`course_id`);

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `brand_categorii`
--
ALTER TABLE `brand_categorii`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_categorii_brand_id_foreign` (`brand_id`),
  ADD KEY `brand_categorii_categorii_id_foreign` (`categorii_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoriis`
--
ALTER TABLE `categoriis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoris`
--
ALTER TABLE `categoris`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_user_id_foreign` (`user_id`),
  ADD KEY `chats_course_id_foreign` (`course_id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_department_id_foreign` (`department_id`);

--
-- Indices de la tabla `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_product_color_id_foreign` (`color_id`),
  ADD KEY `color_product_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `color_size`
--
ALTER TABLE `color_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_size_color_id_foreign` (`color_id`),
  ADD KEY `color_size_size_id_foreign` (`size_id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_user_id_foreign` (`user_id`),
  ADD KEY `courses_level_id_foreign` (`level_id`),
  ADD KEY `courses_category_id_foreign` (`category_id`),
  ADD KEY `courses_price_id_foreign` (`price_id`);

--
-- Indices de la tabla `course_user`
--
ALTER TABLE `course_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_user_course_id_foreign` (`course_id`),
  ADD KEY `course_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descriptions`
--
ALTER TABLE `descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `descriptions_lesson_id_foreign` (`lesson_id`);

--
-- Indices de la tabla `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_city_id_foreign` (`city_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goals_course_id_foreign` (`course_id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_platform_id_foreign` (`platform_id`),
  ADD KEY `lessons_section_id_foreign` (`section_id`);

--
-- Indices de la tabla `lesson_user`
--
ALTER TABLE `lesson_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_user_lesson_id_foreign` (`lesson_id`),
  ADD KEY `lesson_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `observations`
--
ALTER TABLE `observations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `observations_course_id_foreign` (`course_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `platforms`
--
ALTER TABLE `platforms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `podcasts`
--
ALTER TABLE `podcasts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_categori_id_foreign` (`categori_id`);

--
-- Indices de la tabla `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indices de la tabla `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_subcategorii_id_foreign` (`subcategorii_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indices de la tabla `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_questionable_type_questionable_id_index` (`questionable_type`,`questionable_id`),
  ADD KEY `questions_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reactions_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requirements_course_id_foreign` (`course_id`);

--
-- Indices de la tabla `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_course_id_foreign` (`course_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_course_id_foreign` (`course_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indices de la tabla `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sizes_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategoriis`
--
ALTER TABLE `subcategoriis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategoriis_categorii_id_foreign` (`categorii_id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `audiences`
--
ALTER TABLE `audiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `brand_categorii`
--
ALTER TABLE `brand_categorii`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `categoriis`
--
ALTER TABLE `categoriis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categoris`
--
ALTER TABLE `categoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `color_size`
--
ALTER TABLE `color_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT de la tabla `course_user`
--
ALTER TABLE `course_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `descriptions`
--
ALTER TABLE `descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1837;

--
-- AUTO_INCREMENT de la tabla `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `goals`
--
ALTER TABLE `goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=638;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1519;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2028;

--
-- AUTO_INCREMENT de la tabla `lesson_user`
--
ALTER TABLE `lesson_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `listas`
--
ALTER TABLE `listas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `observations`
--
ALTER TABLE `observations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `podcasts`
--
ALTER TABLE `podcasts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT de la tabla `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=630;

--
-- AUTO_INCREMENT de la tabla `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de la tabla `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `requirements`
--
ALTER TABLE `requirements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;

--
-- AUTO_INCREMENT de la tabla `resources`
--
ALTER TABLE `resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=645;

--
-- AUTO_INCREMENT de la tabla `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `songs`
--
ALTER TABLE `songs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subcategoriis`
--
ALTER TABLE `subcategoriis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `audiences`
--
ALTER TABLE `audiences`
  ADD CONSTRAINT `audiences_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `brand_categorii`
--
ALTER TABLE `brand_categorii`
  ADD CONSTRAINT `brand_categorii_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brand_categorii_categorii_id_foreign` FOREIGN KEY (`categorii_id`) REFERENCES `categoriis` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `color_product`
--
ALTER TABLE `color_product`
  ADD CONSTRAINT `color_product_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `color_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `color_size`
--
ALTER TABLE `color_size`
  ADD CONSTRAINT `color_size_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `color_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `courses_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `courses_price_id_foreign` FOREIGN KEY (`price_id`) REFERENCES `prices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `courses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `course_user_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `descriptions`
--
ALTER TABLE `descriptions`
  ADD CONSTRAINT `descriptions_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `goals`
--
ALTER TABLE `goals`
  ADD CONSTRAINT `goals_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_platform_id_foreign` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `lessons_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `lesson_user`
--
ALTER TABLE `lesson_user`
  ADD CONSTRAINT `lesson_user_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `observations`
--
ALTER TABLE `observations`
  ADD CONSTRAINT `observations_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_categori_id_foreign` FOREIGN KEY (`categori_id`) REFERENCES `categoris` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategorii_id_foreign` FOREIGN KEY (`subcategorii_id`) REFERENCES `subcategoriis` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reactions`
--
ALTER TABLE `reactions`
  ADD CONSTRAINT `reactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `requirements`
--
ALTER TABLE `requirements`
  ADD CONSTRAINT `requirements_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sizes`
--
ALTER TABLE `sizes`
  ADD CONSTRAINT `sizes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subcategoriis`
--
ALTER TABLE `subcategoriis`
  ADD CONSTRAINT `subcategoriis_categorii_id_foreign` FOREIGN KEY (`categorii_id`) REFERENCES `categoriis` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
