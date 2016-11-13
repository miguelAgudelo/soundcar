-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2016 a las 19:56:40
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `soundcar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos`
--

CREATE TABLE `bancos` (
  `id` int(11) NOT NULL,
  `banc` varchar(65) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `bancos`
--

INSERT INTO `bancos` (`id`, `banc`, `created`, `modified`) VALUES
(1, 'Banesco', '2016-04-09 21:16:11', '2016-04-09 21:16:11'),
(2, 'Venezuela', '2016-04-09 21:16:23', '2016-04-09 21:16:23'),
(3, 'Provincial', '2016-04-09 21:16:42', '2016-04-09 21:16:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `tgasto` int(11) NOT NULL,
  `tefectivo` int(11) NOT NULL,
  `tdebito` int(11) NOT NULL,
  `tcredito` int(11) NOT NULL,
  `ttotal` int(11) NOT NULL,
  `cantventa` int(11) NOT NULL,
  `treal` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `cajas`
--

INSERT INTO `cajas` (`id`, `numero`, `tgasto`, `tefectivo`, `tdebito`, `tcredito`, `ttotal`, `cantventa`, `treal`, `created`, `modified`) VALUES
(1, 6000, 0, 6000, 0, 0, 6000, 1, 6000, '2016-05-14 16:47:10', '2016-05-14 16:47:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carros`
--

CREATE TABLE `carros` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `marca` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `year` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `modelo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `carros`
--

INSERT INTO `carros` (`id`, `descripcion`, `marca`, `year`, `modelo`, `tipo`, `created`, `modified`) VALUES
(1, 'chebrolet chevete año 2002', 'chebrolet', '2002', 'chevete', 'auto', '2016-05-14 16:14:49', '2016-05-14 16:14:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created`, `modified`) VALUES
(1, 'animales', '2016-06-02 01:20:25', '2016-06-02 01:20:25'),
(2, 'colores', '2016-06-03 20:46:26', '2016-06-03 20:46:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cedula` int(12) NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `direccion` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `edad` varchar(50) NOT NULL,
  `full` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `cedula`, `sexo`, `direccion`, `email`, `created`, `modified`, `edad`, `full`) VALUES
(1, 'yoka', 25422, '', 'la ksa de yokja', 'yoksda@xn--asdas-ota.com', '2016-05-14 16:15:40', '2016-05-14 16:15:40', '26 a 30', 'yoka dueño/a de la CI: 25422');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumibles`
--

CREATE TABLE `consumibles` (
  `id` int(11) NOT NULL,
  `consu` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `consumibles`
--

INSERT INTO `consumibles` (`id`, `consu`, `created`, `modified`) VALUES
(1, 'pan con mortadela', '2016-05-14 16:51:40', '2016-05-14 16:51:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `nombre`, `created`, `modified`) VALUES
(1, 'miempresa', '2016-05-14 17:20:32', '2016-05-14 17:20:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `vieja_cant` int(11) NOT NULL,
  `nueva_cant` int(11) NOT NULL,
  `en_inventario` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dir` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modifed` datetime NOT NULL,
  `material_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `photo`, `dir`, `created`, `modifed`, `material_id`) VALUES
(1, NULL, NULL, '2016-06-03 01:18:59', '0000-00-00 00:00:00', 15),
(2, 'pij.png', 'webroot\\files\\Fotos\\photo\\', '2016-06-03 01:22:26', '0000-00-00 00:00:00', 16),
(3, 'images.jpg', 'webroot\\files\\Fotos\\photo\\', '2016-06-03 01:33:14', '0000-00-00 00:00:00', 17),
(4, '1hUdr-OU7MY.jpg', 'webroot\\files\\Fotos\\photo\\', '2016-06-03 01:33:14', '0000-00-00 00:00:00', 17),
(5, 'Play.jpg', 'webroot\\files\\Fotos\\photo\\', '2016-06-03 01:33:14', '0000-00-00 00:00:00', 17),
(6, 'descarga.jpg', 'webroot\\files\\Fotos\\photo\\', '2016-06-03 20:49:50', '0000-00-00 00:00:00', 18),
(7, 'instagram-circle-icon.png', 'webroot\\files\\Fotos\\photo\\', '2016-06-03 20:49:52', '0000-00-00 00:00:00', 18),
(8, 'pinterest-3-xxl.png', 'webroot\\files\\Fotos\\photo\\', '2016-06-03 20:49:52', '0000-00-00 00:00:00', 18),
(9, 'face.png', 'webroot\\files\\Fotos\\photo\\', '2016-06-03 20:49:52', '0000-00-00 00:00:00', 18),
(10, 'images.jpg', 'webroot\\files\\Fotos\\photo\\', '2016-06-03 20:49:52', '0000-00-00 00:00:00', 18),
(11, 'DSC_1698.JPG', 'webroot\\files\\Fotos\\photo\\', '2016-06-21 05:13:24', '0000-00-00 00:00:00', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instalacions`
--

CREATE TABLE `instalacions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `porcentaje` float NOT NULL,
  `gananciat` float NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `instalacions`
--

INSERT INTO `instalacions` (`id`, `user_id`, `cliente_id`, `producto_id`, `valor`, `porcentaje`, `gananciat`, `created`, `modified`) VALUES
(1, 4, 1, 3, 710, 30, 213, '2016-05-14 16:46:24', '2016-05-14 16:46:24'),
(2, 5, 1, 3, 1420, 20, 284, '2016-05-22 03:06:02', '2016-05-22 03:06:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `ventatotale_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `precio_u` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `descuento` varchar(2) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `rest` int(11) DEFAULT NULL,
  `espera` int(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `ventatotale_id`, `producto_id`, `precio_u`, `cantidad`, `subtotal`, `descuento`, `valor`, `rest`, `espera`, `created`, `modified`) VALUES
(1, 1, 2, 2900, 2, 5800, 'no', NULL, 0, 0, '2016-05-14 16:46:45', '2016-05-14 16:46:45'),
(2, 1, 3, 710, 1, 710, 'no', NULL, 0, 0, '2016-05-14 16:46:46', '2016-05-14 16:46:46'),
(3, 2, 2, 2900, 2, 5500, 'si', 5500, 300, 0, '2016-05-22 03:09:38', '2016-05-22 03:09:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcapros`
--

CREATE TABLE `marcapros` (
  `id` int(11) NOT NULL,
  `marc` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `tipopro_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `marcapros`
--

INSERT INTO `marcapros` (`id`, `marc`, `tipopro_id`, `created`, `modified`) VALUES
(1, 'iguana', 2, '2016-06-02 18:58:28', '2016-06-02 18:58:28'),
(2, 'kamaleon', 2, '2016-06-02 18:58:29', '2016-06-02 18:58:29'),
(3, 'pablo', 11, '2016-06-03 20:48:42', '2016-06-03 20:48:42'),
(4, 'roberto', 11, '2016-06-03 20:48:42', '2016-06-03 20:48:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`, `created`, `modified`) VALUES
(1, 'mimarca', '2016-05-14 17:22:42', '2016-05-14 17:22:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `full` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `marcapro_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `photo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dir` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `materials`
--

INSERT INTO `materials` (`id`, `codigo`, `modelo`, `full`, `marcapro_id`, `created`, `modified`, `photo`, `dir`) VALUES
(1, '0001', 'bombillo de muela', 'bombillo de muela del producto 0001', 0, '2016-05-14 03:29:22', '2016-05-14 03:29:22', NULL, NULL),
(2, '0002', 'otro bomibillon', 'otro bomibillon del producto 0002', 0, '2016-05-14 03:31:07', '2016-05-14 03:31:07', NULL, NULL),
(3, '0002', 'instalacion bombillo', 'instalacion bombillo del producto 0002', 0, '2016-05-14 16:42:09', '2016-05-14 16:42:09', NULL, NULL),
(4, '5894', 'llave universal ford', 'llave universal ford del producto 5894', 0, '2016-05-14 17:16:02', '2016-05-14 17:16:02', NULL, NULL),
(5, '052789', 'bajo v-18', 'bajo v-18 del producto 052789', 0, '2016-05-25 01:37:24', '2016-05-25 01:37:24', 'Koala.jpg', NULL),
(6, '5896', 'donde quedo', 'donde quedo del producto 5896', 0, '2016-05-25 04:28:12', '2016-05-25 04:28:12', 'Desert.jpg', NULL),
(13, '51', 'area', 'area del producto 51', 0, '2016-05-25 05:06:19', '2016-05-25 05:06:19', 'Lighthouse.jpg', 'webroot\\files\\Materials\\photo\\'),
(14, '05879896', 'LA iguanita', 'LA iguanita del producto 05879896', 1, '2016-06-02 20:44:23', '2016-06-02 20:44:23', 'Play.jpg', 'webroot\\files\\Materials\\photo\\'),
(15, '54221', 'tututuut', 'tututuut del producto 54221', 2, '2016-06-03 01:18:59', '2016-06-03 01:18:59', '', NULL),
(16, 'a4551', 'rango', 'rango del producto a4551', 2, '2016-06-03 01:22:26', '2016-06-03 01:22:26', '', NULL),
(17, '69', 'chamaleonClub', 'chamaleonClub del producto 69', 2, '2016-06-03 01:33:14', '2016-06-03 01:33:14', NULL, NULL),
(18, '22222', 'el mas pato', 'el mas pato del producto 22222', 4, '2016-06-03 20:49:50', '2016-06-03 20:49:50', NULL, NULL),
(19, '45648465', 'asdasdasd', 'asdasdasd del producto 45648465', 4, '2016-06-21 05:13:24', '2016-06-21 05:13:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perdidas`
--

CREATE TABLE `perdidas` (
  `id` int(11) NOT NULL,
  `gasto` int(11) NOT NULL,
  `consumible_id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `perdidas`
--

INSERT INTO `perdidas` (`id`, `gasto`, `consumible_id`, `nombre`, `created`, `modified`) VALUES
(1, 1200, 1, 'pan con mortadela', '2016-05-14 16:51:56', '2016-05-14 16:51:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `start_time`, `end_time`) VALUES
(20160218051538, '2016-02-21 14:47:37', '2016-02-21 14:47:37'),
(20160220034054, '2016-02-21 14:47:38', '2016-02-21 14:47:38'),
(20160220040943, '2016-02-21 14:51:26', '2016-02-21 14:51:28'),
(20160221053849, '2016-02-21 14:51:28', '2016-02-21 14:51:29'),
(20160221060013, '2016-02-21 15:02:00', '2016-02-21 15:02:05'),
(20160224012826, '2016-02-24 10:38:02', '2016-02-24 10:38:02'),
(20160224012905, '2016-02-24 10:38:02', '2016-02-24 10:38:03'),
(20160224013525, '2016-02-24 10:38:03', '2016-02-24 10:38:05'),
(20160224013635, '2016-02-24 10:38:05', '2016-02-24 10:38:05'),
(20160302040307, '2016-03-02 14:08:34', '2016-03-02 14:08:35'),
(20160302051512, '2016-03-02 14:19:15', '2016-03-02 14:19:17'),
(20160302051653, '2016-03-02 14:19:17', '2016-03-02 14:19:17'),
(20160302051755, '2016-03-02 14:19:18', '2016-03-02 14:19:19'),
(20160302053146, '2016-03-02 14:32:15', '2016-03-02 14:32:19'),
(20160304014842, '2016-03-04 10:49:25', '2016-03-04 10:49:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `numero_serie` varchar(100) NOT NULL,
  `caracteristicas` varchar(300) NOT NULL,
  `existencia` int(11) NOT NULL,
  `pre_compra` int(11) NOT NULL,
  `iva` decimal(10,0) NOT NULL,
  `por_venta` decimal(10,0) NOT NULL,
  `valor_sugerido` decimal(10,0) NOT NULL,
  `precio` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `minimo` int(11) NOT NULL,
  `instalacion` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `marca_id` int(11) NOT NULL,
  `full` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `material_id`, `numero_serie`, `caracteristicas`, `existencia`, `pre_compra`, `iva`, `por_venta`, `valor_sugerido`, `precio`, `created`, `minimo`, `instalacion`, `modified`, `empresa_id`, `marca_id`, `full`) VALUES
(1, 1, '02584', 'es buen bombillo', 45, 5000, '12', '30', '7100', 7100, '2016-05-14 03:56:31', 5, 0, '2016-05-14 03:56:31', 1, 1, 'bombillo de muela del producto 0001'),
(2, 2, '02589', 'ototro bombillote', 31, 2000, '12', '30', '2840', 2900, '2016-05-14 16:08:56', 15, 0, '2016-05-14 16:08:56', 1, 1, 'otro bomibillon del producto 0002'),
(3, 3, '0541', 'una instalacion de bombillo', 1, 500, '12', '30', '710', 710, '2016-05-14 16:45:13', 0, 1, '2016-05-14 16:45:13', 1, 1, 'instalacion bombillo del producto 0002'),
(5, 4, 'v-0284', 'asdas', 500, 180, '12', '30', '255', 300, '2016-05-14 17:23:34', 50, 0, '2016-05-14 17:23:34', 1, 1, 'llave universal ford del producto 5894');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `nombre`, `categoria_id`, `created`, `modified`) VALUES
(1, 'insectos', 1, '2016-06-02 01:20:25', '2016-06-02 01:20:25'),
(2, 'peces', 1, '2016-06-02 01:20:25', '2016-06-02 01:20:25'),
(3, 'anfibios', 1, '2016-06-02 01:20:25', '2016-06-02 01:20:25'),
(4, 'reptiles', 1, '2016-06-02 01:20:25', '2016-06-02 01:20:25'),
(5, 'aves', 1, '2016-06-02 01:20:25', '2016-06-02 01:20:25'),
(6, 'mamiferos', 1, '2016-06-02 01:20:25', '2016-06-02 01:20:25'),
(7, 'rojo', 2, '2016-06-03 20:46:26', '2016-06-03 20:46:26'),
(8, 'amarillo', 2, '2016-06-03 20:46:26', '2016-06-03 20:46:26'),
(9, 'azul', 2, '2016-06-03 20:46:26', '2016-06-03 20:46:26'),
(10, 'blanco', 2, '2016-06-03 20:46:26', '2016-06-03 20:46:26'),
(11, 'azul', 2, '2016-06-03 20:46:26', '2016-06-03 20:46:26'),
(12, 'MonoUnicornio', 1, '2016-07-12 00:28:02', '2016-07-12 00:28:02'),
(15, 'osoHormiguero', 1, '2016-07-12 00:56:06', '2016-07-12 00:56:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonos`
--

CREATE TABLE `telefonos` (
  `id` int(11) NOT NULL,
  `numero` varchar(15) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `otronumero` varchar(15) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `cliente_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `telefonos`
--

INSERT INTO `telefonos` (`id`, `numero`, `otronumero`, `cliente_id`, `created`, `modified`) VALUES
(1, '0258458', '04145698', 1, '2016-05-14 16:15:41', '2016-05-14 16:15:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopros`
--

CREATE TABLE `tipopros` (
  `id` int(11) NOT NULL,
  `tipo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `subcategoria_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipopros`
--

INSERT INTO `tipopros` (`id`, `tipo`, `subcategoria_id`, `created`, `modified`) VALUES
(1, 'tortugas', 4, '2016-06-02 03:11:39', '2016-06-02 03:11:39'),
(2, 'lagartos', 4, '2016-06-02 03:11:39', '2016-06-02 03:11:39'),
(3, 'cocodrilos', 4, '2016-06-02 03:11:39', '2016-06-02 03:11:39'),
(4, 'serpientes', 4, '2016-06-02 03:11:40', '2016-06-02 03:11:40'),
(5, 'ranas', 3, '2016-06-02 03:43:02', '2016-06-02 03:43:02'),
(6, 'sapos', 3, '2016-06-02 03:43:02', '2016-06-02 03:43:02'),
(7, 'salamandras', 3, '2016-06-02 03:43:02', '2016-06-02 03:43:02'),
(8, 'pez', 2, '2016-06-02 03:51:45', '2016-06-02 03:51:45'),
(9, 'tiburon', 2, '2016-06-02 03:51:45', '2016-06-02 03:51:45'),
(10, 'rojo carmesi', 7, '2016-06-03 20:47:56', '2016-06-03 20:47:56'),
(11, 'rojo hombres mariposa', 7, '2016-06-03 20:47:56', '2016-06-03 20:47:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unions`
--

CREATE TABLE `unions` (
  `id` int(11) NOT NULL,
  `carro_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `unions`
--

INSERT INTO `unions` (`id`, `carro_id`, `cliente_id`, `created`, `modified`) VALUES
(1, 1, 1, '2016-05-14 16:15:41', '2016-05-14 16:15:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user','tecnico') NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `username`, `email`, `password`, `role`, `created`, `modified`) VALUES
(1, 'Miguel', 'miguelhxc', 'miguelhxc37@gmail.com', '$2y$10$WuMV1mCf8/VPtj1kzNgXv.CI8BKr2YPK74HvclJzcqqK6Agyo4ipG', 'admin', '2016-02-21 06:26:16', '2016-02-21 06:26:16'),
(2, 'wilfre', 'wilfrexD', 'asdasd@hotmail.es', '$2y$10$PzgWu2b1KI2GLMe6mrXLcu9fUQX2nOzDcyOcWasP4VmZcQyRWheri', 'admin', '2016-02-29 15:54:03', '2016-02-29 15:54:03'),
(3, 'ragnar', 'ragnarlobrock', 'soyvikingo@porodin.vk', '$2y$10$s11c6nPve1IlrDQyftbsuODRksexcz.NsQlwje2ghYmJo8Q.6URWi', 'admin', '2016-04-23 03:41:06', '2016-04-23 03:41:06'),
(4, 'pablito clavito', 'pablito', 'pablitoclavounclavito@lalala.com', '$2y$10$7iZfefvuO1xRPa6o104HyOOQWbx/r9VitwAkOg7ZTCUgT90I.NGsi', 'tecnico', '2016-04-26 02:21:04', '2016-04-26 02:21:04'),
(5, 'carlo barba', 'carlanga', 'carlin@gmail.com', '$2y$10$KF3LzHI59G1CS5PMeJ72N.wanAFi1pOdgGm.j9GIQQp0kYLP7OFhe', 'tecnico', '2016-05-22 03:07:24', '2016-05-22 03:07:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vales`
--

CREATE TABLE `vales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `vales`
--

INSERT INTO `vales` (`id`, `user_id`, `valor`, `nombre`, `created`, `modified`) VALUES
(3, 5, 500, 'carlo barba', '2016-06-18 02:30:28', '2016-06-18 02:30:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `precio_u` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `descuento` varchar(2) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `rest` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventatotales`
--

CREATE TABLE `ventatotales` (
  `id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `tipopago` varchar(25) COLLATE utf8mb4_spanish_ci NOT NULL,
  `banco_id` int(11) DEFAULT NULL,
  `carro_id` int(11) DEFAULT NULL,
  `descuentot` varchar(2) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `valort` int(11) DEFAULT NULL,
  `restt` int(11) DEFAULT NULL,
  `espera` int(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ventatotales`
--

INSERT INTO `ventatotales` (`id`, `total`, `cliente_id`, `tipopago`, `banco_id`, `carro_id`, `descuentot`, `valort`, `restt`, `espera`, `created`, `modified`) VALUES
(1, 6000, 1, 'efectivo', NULL, 1, 'si', 6000, 510, 0, '2016-05-14 16:46:45', '2016-05-14 16:46:45'),
(2, 5500, 1, 'credito', NULL, 1, 'no', 0, 0, 0, '2016-05-22 03:09:38', '2016-05-22 03:09:38');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bancos`
--
ALTER TABLE `bancos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carros`
--
ALTER TABLE `carros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consumibles`
--
ALTER TABLE `consumibles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `instalacions`
--
ALTER TABLE `instalacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcapros`
--
ALTER TABLE `marcapros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perdidas`
--
ALTER TABLE `perdidas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `telefonos`
--
ALTER TABLE `telefonos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipopros`
--
ALTER TABLE `tipopros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unions`
--
ALTER TABLE `unions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vales`
--
ALTER TABLE `vales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventatotales`
--
ALTER TABLE `ventatotales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bancos`
--
ALTER TABLE `bancos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `carros`
--
ALTER TABLE `carros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `consumibles`
--
ALTER TABLE `consumibles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `instalacions`
--
ALTER TABLE `instalacions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `marcapros`
--
ALTER TABLE `marcapros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `perdidas`
--
ALTER TABLE `perdidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `telefonos`
--
ALTER TABLE `telefonos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tipopros`
--
ALTER TABLE `tipopros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `unions`
--
ALTER TABLE `unions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `vales`
--
ALTER TABLE `vales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ventatotales`
--
ALTER TABLE `ventatotales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
