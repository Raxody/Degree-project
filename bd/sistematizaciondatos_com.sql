-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2022 a las 22:13:06
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistematizaciondatos_com`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga_2022_3`
--

CREATE TABLE `carga_2022_3` (
  `codigo` int(11) NOT NULL,
  `codigo_res_espacio` int(11) NOT NULL,
  `nombre_res_profesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `carga_2022_3`
--

INSERT INTO `carga_2022_3` (`codigo`, `codigo_res_espacio`, `nombre_res_profesor`) VALUES
(1, 11, 10),
(2, 15, 10),
(3, 16, 10),
(4, 8, 11),
(5, 9, 11),
(6, 8, 17),
(7, 9, 18),
(8, 9, 19),
(9, 11, 6),
(10, 2, 6),
(11, 3, 6),
(12, 11, 14),
(13, 2, 14),
(14, 3, 14),
(15, 23, 15),
(16, 24, 15),
(17, 25, 16),
(18, 26, 16),
(19, 16, 16),
(20, 27, 17),
(21, 19, 17),
(22, 19, 18),
(23, 18, 18),
(24, 28, 18),
(25, 28, 19),
(26, 29, 19),
(27, 28, 20),
(28, 29, 20),
(29, 17, 21),
(30, 2, 21),
(31, 28, 22),
(32, 24, 22),
(33, 28, 23),
(34, 5, 24),
(35, 29, 24),
(36, 30, 24),
(37, 31, 25),
(38, 32, 25),
(39, 23, 26),
(40, 34, 26),
(41, 35, 27),
(42, 36, 27),
(43, 6, 27),
(44, 4, 28),
(45, 37, 28),
(46, 38, 28),
(47, 16, 29),
(48, 39, 29),
(49, 40, 30),
(50, 11, 31),
(51, 1, 32),
(52, 41, 32),
(53, 35, 33),
(54, 52, 33),
(55, 6, 34),
(56, 25, 34),
(57, 1, 35),
(58, 42, 36),
(59, 43, 36),
(60, 8, 3),
(61, 9, 37),
(62, 10, 37),
(63, 34, 38),
(64, 40, 38),
(65, 28, 39),
(66, 40, 39),
(67, 18, 40),
(68, 32, 40),
(69, 34, 41),
(70, 43, 42),
(71, 19, 42),
(72, 44, 43),
(73, 18, 43),
(74, 31, 43),
(75, 26, 44),
(76, 30, 44),
(77, 45, 45),
(78, 46, 45),
(79, 5, 46),
(80, 2, 46),
(81, 14, 47),
(82, 18, 47),
(83, 22, 48),
(84, 47, 48),
(85, 30, 48),
(86, 48, 48),
(87, 14, 49),
(88, 17, 49),
(89, 18, 49),
(90, 40, 50),
(91, 14, 51),
(92, 2, 51),
(93, 19, 51),
(94, 9, 52),
(95, 49, 52),
(96, 26, 53),
(97, 7, 53),
(98, 26, 54),
(99, 16, 54),
(100, 14, 55),
(101, 18, 55),
(102, 32, 55),
(103, 26, 56),
(104, 11, 57),
(105, 3, 57),
(106, 45, 57),
(107, 14, 58),
(108, 2, 58),
(109, 19, 58),
(110, 6, 59),
(111, 45, 59),
(112, 34, 60),
(113, 3, 61),
(114, 2, 61),
(115, 14, 62),
(116, 23, 63),
(117, 50, 63),
(118, 1, 64),
(119, 41, 64),
(120, 14, 65),
(121, 41, 65),
(122, 7, 66),
(123, 51, 66),
(124, 11, 67),
(125, 45, 67),
(126, 28, 68),
(127, 1, 69),
(128, 41, 69),
(129, 27, 69),
(130, 15, 70),
(131, 38, 70),
(132, 43, 71),
(133, 47, 71),
(134, 52, 71);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `codigo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`codigo`, `nombre`, `apellido`, `correo`) VALUES
('1', 'Luis Felipe', 'Wanumen Silva', 'lwanumen@udistrital.edu.co');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_asignacion_didactica`
--

CREATE TABLE `res_asignacion_didactica` (
  `codigo_profesor` int(11) NOT NULL,
  `codigo_espacio` int(11) NOT NULL,
  `codigo_didactica` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_asignacion_herramientas_conceptuales`
--

CREATE TABLE `res_asignacion_herramientas_conceptuales` (
  `codigo_profesor` int(11) NOT NULL,
  `codigo_espacio` int(11) NOT NULL,
  `codigo_herramientas_conceptuales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_asignacion_herramientas_conceptuales`
--

INSERT INTO `res_asignacion_herramientas_conceptuales` (`codigo_profesor`, `codigo_espacio`, `codigo_herramientas_conceptuales`) VALUES
(1, 1, 5),
(1, 1, 6),
(1, 1, 8),
(1, 1, 11),
(1, 1, 23),
(1, 1, 26),
(1, 1, 32),
(1, 1, 43),
(2, 2, 1),
(2, 3, 2),
(2, 3, 17),
(3, 4, 5),
(3, 4, 9),
(3, 4, 10),
(3, 4, 19),
(3, 4, 20),
(3, 5, 8),
(3, 5, 11),
(3, 5, 19),
(3, 5, 20),
(3, 5, 41),
(3, 6, 19),
(3, 6, 20),
(3, 6, 40),
(3, 6, 47),
(3, 6, 54),
(4, 7, 2),
(4, 7, 5),
(4, 7, 9),
(4, 7, 10),
(4, 7, 11),
(4, 7, 37),
(4, 7, 44),
(4, 7, 49),
(5, 8, 2),
(5, 8, 3),
(5, 8, 5),
(5, 8, 6),
(5, 8, 7),
(5, 8, 9),
(5, 8, 11),
(5, 8, 18),
(5, 8, 19),
(5, 8, 20),
(5, 8, 21),
(5, 8, 22),
(5, 8, 23),
(5, 8, 25),
(5, 8, 32),
(5, 8, 33),
(5, 8, 35),
(5, 8, 41),
(5, 8, 42),
(5, 9, 2),
(5, 9, 3),
(5, 9, 9),
(5, 9, 11),
(5, 9, 12),
(5, 9, 13),
(5, 9, 18),
(5, 9, 19),
(5, 9, 20),
(5, 9, 55),
(5, 10, 2),
(5, 10, 3),
(5, 10, 5),
(5, 10, 6),
(5, 10, 11),
(5, 10, 12),
(5, 10, 13),
(5, 10, 18),
(5, 10, 19),
(5, 10, 20),
(5, 10, 27),
(5, 10, 33),
(5, 10, 40),
(5, 10, 44),
(5, 10, 46),
(6, 3, 2),
(6, 3, 17),
(6, 11, 2),
(6, 11, 17),
(7, 12, 3),
(7, 12, 8),
(7, 12, 11),
(7, 12, 41),
(7, 13, 2),
(7, 13, 3),
(7, 13, 5),
(7, 13, 9),
(7, 13, 16),
(7, 13, 18),
(7, 13, 32),
(8, 14, 1),
(8, 14, 2),
(8, 14, 3),
(8, 14, 4),
(8, 14, 5),
(8, 14, 8),
(8, 14, 10),
(8, 14, 11),
(8, 14, 16),
(8, 14, 17),
(8, 14, 18),
(8, 14, 20),
(8, 14, 23),
(8, 14, 32),
(8, 14, 33),
(8, 14, 43),
(8, 14, 46),
(9, 14, 3),
(9, 14, 5),
(9, 14, 10),
(9, 14, 11),
(9, 14, 12),
(9, 14, 17),
(9, 14, 19),
(9, 14, 20),
(9, 14, 39),
(9, 14, 43),
(9, 18, 4),
(9, 18, 11),
(9, 18, 12),
(9, 18, 17),
(9, 18, 19),
(9, 18, 20),
(9, 18, 40),
(9, 18, 43),
(9, 32, 2),
(9, 32, 4),
(9, 32, 5),
(9, 32, 8),
(9, 32, 11),
(9, 32, 12),
(9, 32, 17),
(9, 32, 19),
(9, 32, 20),
(9, 32, 33),
(9, 32, 35),
(9, 32, 43),
(32, 1, 2),
(32, 1, 3),
(32, 1, 4),
(32, 1, 5),
(32, 1, 6),
(32, 1, 7),
(32, 1, 8),
(32, 1, 11),
(32, 1, 12),
(32, 1, 15),
(32, 1, 17),
(32, 1, 26),
(32, 1, 27),
(32, 1, 35),
(32, 1, 43),
(32, 41, 2),
(32, 41, 3),
(32, 41, 5),
(32, 41, 8),
(32, 41, 11),
(32, 41, 12),
(32, 41, 15),
(32, 41, 20),
(32, 41, 26),
(32, 41, 28),
(32, 41, 29),
(32, 41, 30),
(32, 41, 34),
(32, 41, 43),
(68, 28, 3),
(72, 53, 8),
(72, 53, 17),
(72, 53, 36),
(72, 53, 40),
(72, 53, 50),
(72, 54, 18),
(72, 54, 36),
(72, 54, 41),
(72, 54, 50),
(33, 35, 2),
(33, 35, 10),
(33, 35, 11),
(33, 35, 36),
(33, 35, 37),
(33, 35, 39),
(33, 35, 40),
(33, 35, 41),
(33, 52, 2),
(33, 52, 11),
(33, 52, 18),
(33, 52, 36),
(33, 52, 37),
(33, 52, 39),
(33, 52, 40),
(33, 52, 41),
(33, 52, 44),
(33, 52, 45),
(33, 52, 46),
(33, 52, 47),
(33, 52, 48),
(33, 52, 49),
(33, 52, 52),
(33, 52, 53),
(73, 40, 3),
(73, 40, 5),
(73, 40, 14),
(73, 40, 15),
(73, 40, 16),
(73, 40, 19),
(73, 40, 20),
(73, 40, 22),
(73, 40, 23),
(73, 40, 24),
(73, 40, 25),
(73, 40, 32),
(73, 55, 3),
(73, 55, 5),
(73, 55, 9),
(73, 55, 14),
(73, 55, 15),
(73, 55, 19),
(73, 55, 20),
(73, 55, 22),
(73, 55, 23),
(73, 55, 25),
(73, 56, 2),
(73, 56, 3),
(73, 56, 5),
(73, 56, 9),
(73, 56, 11),
(73, 56, 12),
(73, 56, 14),
(73, 56, 15),
(73, 56, 16),
(73, 56, 18),
(73, 56, 19),
(73, 56, 20),
(73, 56, 35),
(52, 9, 11),
(52, 9, 19),
(52, 9, 20),
(52, 9, 33),
(52, 9, 55),
(19, 43, 2),
(19, 43, 3),
(19, 43, 4),
(19, 43, 8),
(19, 43, 11),
(19, 43, 12),
(19, 43, 16),
(19, 43, 17),
(19, 43, 20),
(19, 43, 39),
(19, 43, 41),
(19, 43, 43),
(19, 43, 46),
(19, 43, 47),
(19, 43, 49),
(19, 48, 2),
(19, 48, 4),
(19, 48, 5),
(19, 48, 11),
(19, 48, 17),
(19, 48, 39),
(19, 48, 41),
(19, 48, 46),
(19, 48, 47),
(19, 48, 49);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_asignacion_objetos_de_estudio`
--

CREATE TABLE `res_asignacion_objetos_de_estudio` (
  `codigo_profesor` int(11) NOT NULL,
  `codigo_espacio` int(11) NOT NULL,
  `codigo_objetos_de_estudio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_asignacion_objetos_de_estudio`
--

INSERT INTO `res_asignacion_objetos_de_estudio` (`codigo_profesor`, `codigo_espacio`, `codigo_objetos_de_estudio`) VALUES
(1, 1, 5),
(1, 1, 7),
(1, 1, 9),
(1, 1, 11),
(1, 1, 13),
(1, 1, 15),
(1, 1, 17),
(1, 1, 18),
(1, 1, 27),
(1, 1, 30),
(1, 1, 45),
(2, 2, 28),
(2, 3, 34),
(2, 3, 35),
(2, 3, 36),
(3, 4, 1),
(3, 4, 3),
(3, 4, 8),
(3, 4, 27),
(3, 4, 28),
(3, 4, 29),
(3, 4, 30),
(3, 4, 33),
(3, 5, 1),
(3, 5, 28),
(3, 6, 28),
(3, 6, 33),
(4, 7, 1),
(4, 7, 3),
(4, 7, 27),
(4, 7, 28),
(4, 7, 29),
(4, 7, 33),
(5, 8, 5),
(5, 8, 7),
(5, 8, 9),
(5, 8, 21),
(5, 8, 23),
(5, 8, 28),
(5, 8, 30),
(5, 8, 32),
(5, 8, 33),
(5, 8, 38),
(5, 8, 53),
(5, 8, 54),
(5, 9, 5),
(5, 9, 7),
(5, 9, 23),
(5, 9, 29),
(5, 9, 30),
(5, 9, 33),
(5, 9, 38),
(5, 9, 55),
(5, 10, 2),
(5, 10, 5),
(5, 10, 7),
(5, 10, 20),
(5, 10, 23),
(5, 10, 28),
(5, 10, 29),
(5, 10, 30),
(5, 10, 31),
(5, 10, 32),
(5, 10, 38),
(5, 10, 43),
(6, 3, 1),
(6, 3, 3),
(6, 3, 21),
(6, 3, 36),
(6, 11, 1),
(6, 11, 3),
(6, 11, 14),
(6, 11, 21),
(6, 11, 22),
(6, 11, 36),
(7, 12, 1),
(7, 12, 8),
(7, 12, 16),
(7, 12, 17),
(7, 12, 30),
(7, 12, 33),
(7, 12, 51),
(7, 12, 56),
(7, 13, 16),
(7, 13, 25),
(7, 13, 44),
(7, 13, 47),
(7, 13, 48),
(7, 13, 51),
(7, 13, 54),
(8, 14, 1),
(8, 14, 5),
(8, 14, 6),
(8, 14, 9),
(8, 14, 11),
(8, 14, 13),
(8, 14, 20),
(8, 14, 25),
(8, 14, 26),
(8, 14, 28),
(8, 14, 39),
(8, 14, 41),
(8, 14, 45),
(8, 14, 46),
(9, 14, 6),
(9, 14, 11),
(9, 14, 13),
(9, 14, 20),
(9, 14, 26),
(9, 14, 46),
(9, 18, 1),
(9, 18, 6),
(9, 18, 11),
(9, 18, 13),
(9, 18, 18),
(9, 18, 19),
(9, 18, 20),
(9, 18, 26),
(9, 18, 42),
(9, 18, 46),
(9, 32, 1),
(9, 32, 6),
(9, 32, 11),
(9, 32, 12),
(9, 32, 13),
(9, 32, 18),
(9, 32, 20),
(9, 32, 26),
(9, 32, 42),
(9, 32, 45),
(9, 32, 46),
(9, 32, 49),
(32, 1, 1),
(32, 1, 5),
(32, 1, 6),
(32, 1, 7),
(32, 1, 9),
(32, 1, 11),
(32, 1, 15),
(32, 1, 18),
(32, 1, 20),
(32, 1, 26),
(32, 1, 45),
(32, 41, 1),
(32, 41, 6),
(32, 41, 7),
(32, 41, 9),
(32, 41, 10),
(32, 41, 11),
(32, 41, 12),
(32, 41, 13),
(32, 41, 15),
(32, 41, 18),
(32, 41, 19),
(32, 41, 20),
(32, 41, 23),
(32, 41, 26),
(32, 41, 45),
(68, 28, 23),
(72, 53, 17),
(72, 53, 47),
(72, 53, 48),
(72, 53, 50),
(72, 53, 51),
(72, 53, 52),
(72, 54, 16),
(72, 54, 17),
(72, 54, 47),
(72, 54, 48),
(72, 54, 50),
(72, 54, 51),
(72, 54, 52),
(33, 52, 1),
(33, 52, 3),
(33, 52, 5),
(33, 52, 8),
(33, 52, 27),
(33, 52, 29),
(33, 52, 30),
(33, 52, 31),
(33, 52, 32),
(33, 52, 33),
(33, 52, 40),
(33, 52, 53),
(33, 52, 54),
(33, 35, 1),
(33, 35, 3),
(33, 35, 8),
(33, 35, 27),
(33, 35, 29),
(33, 35, 30),
(33, 35, 33),
(33, 35, 40),
(73, 40, 2),
(73, 40, 4),
(73, 40, 23),
(73, 40, 38),
(73, 40, 41),
(73, 40, 43),
(73, 40, 44),
(73, 55, 2),
(73, 55, 4),
(73, 55, 23),
(73, 55, 24),
(73, 55, 38),
(73, 55, 39),
(73, 55, 43),
(73, 56, 2),
(73, 56, 7),
(73, 56, 9),
(73, 56, 17),
(73, 56, 23),
(73, 56, 38),
(73, 56, 43),
(73, 56, 44),
(52, 9, 28),
(52, 9, 46),
(52, 9, 54),
(52, 9, 55),
(19, 43, 1),
(19, 43, 6),
(19, 43, 12),
(19, 43, 13),
(19, 43, 20),
(19, 43, 27),
(19, 43, 28),
(19, 48, 1),
(19, 48, 20),
(19, 48, 21),
(19, 48, 22),
(19, 48, 25),
(19, 48, 51);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_asignacion_pensamiento`
--

CREATE TABLE `res_asignacion_pensamiento` (
  `codigo_profesor` int(11) NOT NULL,
  `codigo_espacio` int(11) NOT NULL,
  `codigo_pensamiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_asignacion_pensamiento`
--

INSERT INTO `res_asignacion_pensamiento` (`codigo_profesor`, `codigo_espacio`, `codigo_pensamiento`) VALUES
(1, 1, 2),
(1, 1, 2),
(1, 1, 9),
(1, 1, 10),
(1, 1, 13),
(1, 1, 17),
(2, 2, 1),
(2, 2, 12),
(2, 3, 2),
(2, 3, 11),
(2, 3, 12),
(3, 4, 1),
(3, 4, 2),
(3, 4, 3),
(3, 4, 11),
(3, 4, 12),
(3, 4, 13),
(3, 5, 1),
(3, 5, 3),
(3, 5, 11),
(3, 6, 1),
(3, 6, 3),
(4, 7, 1),
(4, 7, 2),
(4, 7, 3),
(4, 7, 10),
(4, 7, 11),
(4, 7, 13),
(4, 7, 16),
(4, 7, 17),
(5, 8, 1),
(5, 8, 3),
(5, 8, 7),
(5, 8, 9),
(5, 8, 10),
(5, 8, 12),
(5, 8, 14),
(5, 8, 16),
(5, 8, 17),
(5, 8, 18),
(5, 8, 19),
(5, 9, 1),
(5, 9, 3),
(5, 9, 7),
(5, 9, 9),
(5, 9, 10),
(5, 9, 11),
(5, 9, 12),
(5, 9, 13),
(5, 9, 14),
(5, 9, 17),
(5, 9, 18),
(5, 10, 1),
(5, 10, 3),
(5, 10, 9),
(5, 10, 12),
(5, 10, 13),
(5, 10, 16),
(5, 10, 17),
(5, 10, 19),
(5, 10, 20),
(6, 3, 1),
(6, 3, 2),
(6, 3, 3),
(6, 3, 12),
(6, 3, 13),
(6, 11, 1),
(6, 11, 2),
(6, 11, 12),
(6, 11, 13),
(7, 12, 1),
(7, 12, 2),
(7, 12, 3),
(7, 12, 11),
(7, 12, 16),
(7, 13, 1),
(7, 13, 3),
(7, 13, 7),
(7, 13, 11),
(7, 13, 16),
(7, 13, 17),
(7, 13, 18),
(8, 14, 1),
(8, 14, 2),
(8, 14, 3),
(8, 14, 8),
(8, 14, 11),
(8, 14, 12),
(8, 14, 13),
(8, 14, 16),
(8, 14, 17),
(9, 14, 1),
(9, 14, 2),
(9, 14, 11),
(9, 14, 12),
(9, 14, 13),
(9, 14, 21),
(9, 18, 1),
(9, 18, 2),
(9, 18, 6),
(9, 18, 11),
(9, 18, 12),
(9, 18, 13),
(9, 18, 21),
(9, 32, 1),
(9, 32, 2),
(9, 32, 3),
(9, 32, 6),
(9, 32, 11),
(9, 32, 12),
(9, 32, 13),
(9, 32, 16),
(9, 32, 17),
(9, 32, 21),
(32, 1, 1),
(32, 1, 2),
(32, 1, 3),
(32, 1, 6),
(32, 1, 8),
(32, 1, 11),
(32, 1, 15),
(32, 41, 1),
(32, 41, 2),
(32, 41, 6),
(32, 41, 8),
(32, 41, 11),
(32, 41, 15),
(32, 41, 16),
(68, 28, 1),
(72, 53, 3),
(72, 54, 3),
(33, 35, 1),
(33, 35, 2),
(33, 35, 3),
(33, 35, 11),
(33, 35, 12),
(33, 52, 1),
(33, 52, 2),
(33, 52, 3),
(33, 52, 11),
(33, 52, 12),
(73, 40, 16),
(73, 40, 17),
(73, 55, 3),
(73, 55, 7),
(73, 55, 11),
(73, 55, 12),
(73, 55, 13),
(73, 55, 17),
(73, 56, 1),
(73, 56, 3),
(73, 56, 7),
(73, 56, 11),
(73, 56, 12),
(73, 56, 13),
(73, 56, 16),
(73, 56, 17),
(52, 9, 1),
(52, 9, 18),
(19, 43, 1),
(19, 43, 2),
(19, 43, 3),
(19, 43, 6),
(19, 43, 9),
(19, 43, 11),
(19, 43, 12),
(19, 43, 13),
(19, 43, 16),
(19, 43, 17),
(19, 48, 2),
(19, 48, 3),
(19, 48, 9),
(19, 48, 11),
(19, 48, 12),
(19, 48, 13),
(19, 48, 16),
(19, 48, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_asignacion_recursos`
--

CREATE TABLE `res_asignacion_recursos` (
  `codigo_profesor` int(11) NOT NULL,
  `codigo_espacio` int(11) NOT NULL,
  `codigo_recursos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_asignacion_recursos`
--

INSERT INTO `res_asignacion_recursos` (`codigo_profesor`, `codigo_espacio`, `codigo_recursos`) VALUES
(1, 1, 6),
(1, 1, 8),
(1, 1, 11),
(1, 1, 21),
(1, 1, 24),
(1, 1, 33),
(2, 2, 12),
(2, 2, 30),
(2, 2, 43),
(2, 3, 12),
(2, 3, 17),
(2, 3, 30),
(2, 3, 31),
(2, 3, 43),
(3, 4, 1),
(3, 4, 30),
(3, 4, 35),
(3, 4, 43),
(3, 5, 2),
(3, 5, 43),
(3, 6, 1),
(3, 6, 36),
(3, 6, 43),
(4, 7, 1),
(4, 7, 2),
(4, 7, 10),
(4, 7, 11),
(4, 7, 12),
(4, 7, 15),
(4, 7, 16),
(4, 7, 17),
(4, 7, 18),
(4, 7, 30),
(4, 7, 31),
(4, 7, 35),
(4, 7, 36),
(4, 7, 43),
(4, 7, 49),
(4, 7, 50),
(4, 7, 55),
(5, 8, 5),
(5, 8, 7),
(5, 8, 11),
(5, 8, 12),
(5, 8, 13),
(5, 8, 14),
(5, 8, 16),
(5, 8, 18),
(5, 8, 19),
(5, 8, 22),
(5, 8, 34),
(5, 8, 35),
(5, 8, 37),
(5, 8, 39),
(5, 8, 41),
(5, 8, 42),
(5, 8, 43),
(5, 8, 44),
(5, 8, 49),
(5, 8, 50),
(5, 9, 4),
(5, 9, 7),
(5, 9, 13),
(5, 9, 14),
(5, 9, 17),
(5, 9, 18),
(5, 9, 19),
(5, 9, 34),
(5, 9, 35),
(5, 9, 39),
(5, 9, 42),
(5, 9, 43),
(5, 9, 49),
(5, 9, 50),
(5, 10, 7),
(5, 10, 10),
(5, 10, 11),
(5, 10, 12),
(5, 10, 13),
(5, 10, 14),
(5, 10, 16),
(5, 10, 18),
(5, 10, 37),
(5, 10, 39),
(5, 10, 43),
(5, 10, 49),
(5, 10, 51),
(6, 3, 2),
(6, 3, 14),
(6, 3, 18),
(6, 3, 30),
(6, 3, 43),
(6, 3, 53),
(6, 11, 1),
(6, 11, 2),
(6, 11, 14),
(6, 11, 18),
(6, 11, 21),
(6, 11, 30),
(6, 11, 43),
(7, 12, 11),
(7, 12, 14),
(7, 12, 15),
(7, 12, 18),
(7, 12, 25),
(7, 12, 30),
(7, 12, 35),
(7, 12, 36),
(7, 12, 43),
(7, 12, 44),
(7, 12, 49),
(7, 13, 5),
(7, 13, 11),
(7, 13, 14),
(7, 13, 15),
(7, 13, 16),
(7, 13, 18),
(7, 13, 43),
(7, 13, 49),
(8, 14, 1),
(8, 14, 4),
(8, 14, 5),
(8, 14, 6),
(8, 14, 7),
(8, 14, 11),
(8, 14, 12),
(8, 14, 15),
(8, 14, 17),
(8, 14, 18),
(8, 14, 21),
(8, 14, 35),
(8, 14, 36),
(8, 14, 37),
(8, 14, 43),
(8, 14, 49),
(8, 14, 50),
(8, 14, 52),
(9, 14, 7),
(9, 14, 12),
(9, 14, 43),
(9, 14, 49),
(9, 14, 52),
(9, 14, 56),
(9, 18, 6),
(9, 18, 7),
(9, 18, 12),
(9, 18, 43),
(9, 18, 49),
(9, 18, 52),
(9, 18, 56),
(9, 32, 6),
(9, 32, 7),
(9, 32, 12),
(9, 32, 43),
(9, 32, 49),
(9, 32, 52),
(9, 32, 56),
(32, 1, 5),
(32, 1, 6),
(32, 1, 7),
(32, 1, 8),
(32, 1, 12),
(32, 1, 18),
(32, 1, 21),
(32, 1, 27),
(32, 1, 41),
(32, 1, 43),
(32, 1, 52),
(32, 41, 5),
(32, 41, 6),
(32, 41, 8),
(32, 41, 9),
(32, 41, 11),
(32, 41, 21),
(32, 41, 27),
(32, 41, 40),
(32, 41, 41),
(32, 41, 43),
(32, 41, 52),
(68, 28, 43),
(72, 53, 10),
(72, 53, 23),
(72, 53, 24),
(72, 53, 29),
(72, 53, 42),
(72, 54, 5),
(72, 54, 21),
(72, 54, 23),
(72, 54, 24),
(72, 54, 29),
(72, 54, 42),
(72, 54, 44),
(33, 35, 10),
(33, 35, 12),
(33, 35, 14),
(33, 35, 15),
(33, 35, 16),
(33, 35, 17),
(33, 35, 18),
(33, 52, 10),
(33, 52, 12),
(33, 52, 14),
(33, 52, 15),
(33, 52, 16),
(33, 52, 17),
(33, 52, 18),
(33, 52, 29),
(33, 52, 30),
(33, 52, 31),
(73, 40, 3),
(73, 40, 4),
(73, 40, 12),
(73, 40, 18),
(73, 55, 3),
(73, 55, 4),
(73, 55, 11),
(73, 55, 12),
(73, 55, 14),
(73, 55, 15),
(73, 55, 16),
(73, 55, 17),
(73, 55, 18),
(73, 55, 43),
(73, 55, 49),
(73, 56, 3),
(73, 56, 4),
(73, 56, 11),
(73, 56, 12),
(73, 56, 13),
(73, 56, 14),
(73, 56, 15),
(73, 56, 16),
(73, 56, 18),
(73, 56, 19),
(73, 56, 43),
(52, 9, 11),
(52, 9, 13),
(52, 9, 18),
(52, 9, 50),
(19, 43, 2),
(19, 43, 6),
(19, 43, 7),
(19, 43, 10),
(19, 43, 11),
(19, 43, 15),
(19, 43, 18),
(19, 43, 21),
(19, 43, 30),
(19, 43, 43),
(19, 48, 2),
(19, 48, 10),
(19, 48, 11),
(19, 48, 15),
(19, 48, 18),
(19, 48, 30),
(19, 48, 43);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_asignacion_resultados_de_aprendizaje`
--

CREATE TABLE `res_asignacion_resultados_de_aprendizaje` (
  `codigo_profesor` int(11) NOT NULL,
  `codigo_espacio` int(11) NOT NULL,
  `codigo_resultados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_asignacion_resultados_de_aprendizaje`
--

INSERT INTO `res_asignacion_resultados_de_aprendizaje` (`codigo_profesor`, `codigo_espacio`, `codigo_resultados`) VALUES
(1, 1, 25),
(1, 1, 27),
(1, 1, 52),
(1, 1, 54),
(2, 2, 25),
(2, 3, 1),
(2, 3, 15),
(2, 3, 44),
(3, 4, 1),
(3, 4, 2),
(3, 4, 45),
(3, 4, 55),
(3, 4, 56),
(3, 5, 1),
(3, 5, 2),
(3, 5, 17),
(3, 5, 52),
(3, 6, 4),
(3, 6, 6),
(3, 6, 7),
(3, 6, 45),
(3, 6, 56),
(4, 7, 1),
(4, 7, 2),
(4, 7, 4),
(4, 7, 9),
(4, 7, 10),
(4, 7, 12),
(4, 7, 38),
(4, 7, 49),
(4, 7, 55),
(4, 7, 56),
(5, 8, 4),
(5, 8, 14),
(5, 8, 21),
(5, 8, 29),
(5, 8, 34),
(5, 8, 48),
(5, 8, 54),
(5, 9, 4),
(5, 9, 14),
(5, 9, 21),
(5, 9, 28),
(5, 9, 33),
(5, 9, 34),
(5, 9, 45),
(5, 10, 4),
(5, 10, 14),
(5, 10, 21),
(5, 10, 30),
(5, 10, 33),
(5, 10, 45),
(5, 10, 54),
(6, 3, 24),
(6, 3, 37),
(6, 3, 50),
(6, 11, 2),
(6, 11, 37),
(7, 12, 4),
(7, 12, 5),
(7, 12, 39),
(7, 12, 52),
(7, 13, 18),
(7, 13, 30),
(7, 13, 32),
(7, 13, 33),
(7, 13, 36),
(7, 13, 54),
(8, 14, 4),
(8, 14, 21),
(8, 14, 25),
(8, 14, 26),
(8, 14, 27),
(8, 14, 44),
(8, 14, 52),
(8, 14, 53),
(9, 14, 25),
(9, 14, 26),
(9, 14, 27),
(9, 14, 53),
(9, 18, 25),
(9, 18, 26),
(9, 18, 27),
(9, 18, 53),
(9, 32, 25),
(9, 32, 26),
(9, 32, 27),
(9, 32, 44),
(9, 32, 52),
(9, 32, 53),
(68, 28, 15),
(72, 53, 16),
(72, 53, 47),
(72, 53, 51),
(72, 53, 54),
(72, 54, 3),
(72, 54, 4),
(72, 54, 5),
(72, 54, 8),
(72, 54, 16),
(72, 54, 36),
(72, 54, 44),
(72, 54, 47),
(72, 54, 54),
(72, 54, 55),
(33, 52, 3),
(33, 52, 4),
(33, 52, 5),
(33, 52, 6),
(33, 52, 7),
(33, 52, 8),
(33, 52, 30),
(33, 52, 45),
(33, 52, 47),
(33, 52, 49),
(33, 52, 55),
(33, 52, 56),
(33, 35, 3),
(33, 35, 5),
(33, 35, 6),
(33, 35, 7),
(33, 35, 8),
(33, 35, 45),
(33, 35, 47),
(33, 35, 49),
(33, 35, 55),
(33, 35, 56),
(73, 40, 15),
(73, 55, 15),
(73, 56, 15),
(73, 56, 30),
(52, 9, 57),
(19, 43, 1),
(19, 43, 2),
(19, 43, 4),
(19, 43, 26),
(19, 43, 27),
(19, 43, 52),
(19, 43, 53),
(19, 43, 55),
(19, 43, 56),
(19, 48, 1),
(19, 48, 2),
(19, 48, 4),
(19, 48, 8),
(19, 48, 15),
(19, 48, 26),
(19, 48, 27),
(19, 48, 55),
(19, 48, 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_asignatura`
--

CREATE TABLE `res_asignatura` (
  `codigo` int(11) NOT NULL,
  `semestre_asignatura` int(11) NOT NULL,
  `codigo_condor` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `numero_creditos` int(11) NOT NULL,
  `HTD` int(11) NOT NULL,
  `HTC` int(11) NOT NULL,
  `HTA` int(11) NOT NULL,
  `clasificacion_espacio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_asignatura`
--

INSERT INTO `res_asignatura` (`codigo`, `semestre_asignatura`, `codigo_condor`, `nombre`, `numero_creditos`, `HTD`, `HTC`, `HTA`, `clasificacion_espacio`) VALUES
(1, 1, 1, 'Cálculo Diferencial', 4, 4, 2, 6, 1),
(2, 1, 4, 'Cátedra Francisco José de Caldas', 1, 2, 0, 1, 2),
(3, 1, 9, 'Álgebra Lineal', 3, 4, 2, 3, 1),
(4, 1, 12, 'Cátedra Democracia y Ciudadanía', 1, 2, 0, 1, 2),
(5, 1, 1054, 'Producción y Comprensión de Textos I', 3, 2, 2, 5, 2),
(6, 1, 1507, 'Introducción a Algoritmos', 3, 2, 2, 5, 1),
(7, 1, 1508, 'Lógica Matemática', 3, 2, 2, 5, 1),
(8, 2, 3, 'Física I: Mecánica Newtoniana', 3, 4, 2, 3, 1),
(9, 2, 7, 'Cálculo Integral', 3, 4, 2, 3, 1),
(10, 2, 1056, 'Producción y comprensión de Textos II', 2, 2, 2, 2, 2),
(11, 2, 1072, 'Administración', 3, 2, 2, 5, 2),
(12, 2, 1082, 'Cátedra de Contexto', 1, 2, 0, 1, 2),
(13, 2, 1513, 'Estructura de Datos', 3, 2, 2, 5, 1),
(14, 2, 1514, 'Programación Orientada a Objetos', 3, 2, 2, 5, 1),
(15, 3, 9901, 'Segunda Lengua I - Inglés', 2, 2, 2, 2, 2),
(16, 3, 9904, 'Segunda Lengua I - Francés', 2, 2, 2, 2, 2),
(17, 3, 9907, 'Segunda Lengua I - Alemán', 2, 2, 2, 2, 2),
(18, 3, 9910, 'Segunda Lengua I - Italiano', 2, 2, 2, 2, 2),
(19, 3, 9913, 'Segunda Lengua I - Portugués', 2, 2, 2, 2, 2),
(20, 3, 9916, 'Segunda Lengua I - Mandarín', 2, 2, 2, 2, 2),
(21, 3, 1503, 'Contabilidad General', 2, 2, 2, 2, 3),
(22, 3, 1509, 'Fundamentos de Organización', 2, 2, 2, 2, 3),
(23, 3, 13, 'Física II: Electromagnetismo', 3, 4, 2, 3, 1),
(24, 3, 1060, 'Ciencia Tecnología y Sociedad', 2, 2, 2, 2, 2),
(25, 3, 1518, 'Programación Multinivel', 3, 2, 2, 5, 1),
(26, 3, 1519, 'Bases de Datos', 3, 2, 2, 5, 1),
(27, 4, 9902, 'Segunda Lengua II - Ingles', 2, 2, 2, 2, 2),
(28, 4, 9905, 'Segunda Lengua II - Francés', 2, 2, 2, 2, 2),
(29, 4, 9908, 'Segunda Lengua II - Alemán', 2, 2, 2, 2, 2),
(30, 4, 9911, 'Segunda Lengua II - Italiano', 2, 2, 2, 2, 2),
(31, 4, 9914, 'Segunda Lengua II - Portugués', 2, 2, 2, 2, 2),
(32, 4, 9917, 'Segunda Lengua II - Mandarín', 2, 2, 2, 2, 2),
(33, 4, 1512, 'Matemáticas Especiales', 3, 2, 2, 5, 3),
(34, 4, 1515, 'Análisis y métodos numéricos', 3, 2, 2, 5, 3),
(35, 4, 1510, 'Fundamentos de Economía', 2, 2, 2, 2, 3),
(36, 4, 1511, 'Tics en las organizaciones', 2, 2, 2, 2, 3),
(37, 4, 1075, 'Ética y Sociedad', 2, 2, 2, 2, 2),
(38, 4, 1524, 'Programación Avanzada', 3, 2, 2, 5, 1),
(39, 4, 1526, 'Diseño Lógico', 3, 2, 2, 5, 1),
(40, 5, 1535, 'Transmisión de Datos', 3, 2, 2, 5, 3),
(41, 5, 7202, 'Aplicaciones para Internet', 3, 2, 2, 5, 3),
(42, 5, 1536, 'Programación Web', 3, 2, 2, 5, 3),
(43, 5, 7203, 'Bases de Datos Distribuidas', 3, 2, 2, 5, 3),
(44, 5, 1531, 'Análisis de Sistemas', 3, 2, 2, 5, 1),
(45, 5, 1533, 'Sistemas Operacionales', 3, 2, 2, 5, 1),
(46, 5, 1537, 'Taller de Investigación', 2, 2, 2, 2, 1),
(47, 6, 9903, 'Segunda Lengua III - Inglés', 2, 2, 2, 2, 2),
(48, 6, 9906, 'Segunda Lengua III - Francés', 2, 2, 2, 2, 2),
(49, 6, 9909, 'Segunda Lengua III - Alemán', 2, 2, 2, 2, 2),
(50, 6, 9912, 'Segunda Lengua III - Italiano', 2, 2, 2, 2, 2),
(51, 6, 9915, 'Segunda Lengua III - Portugués', 2, 2, 2, 2, 2),
(52, 6, 9918, 'Segunda Lengua III - Mandarín', 2, 2, 2, 2, 2),
(53, 6, 1541, 'Fundamentos de Telemática', 3, 2, 2, 5, 3),
(54, 6, 7204, 'Protocolos de Comunicación', 3, 2, 2, 5, 3),
(55, 6, 1542, 'Programación por Componentes', 3, 2, 2, 5, 3),
(56, 6, 7205, 'Regulación para Telecomunicaciones', 3, 2, 2, 5, 3),
(57, 6, 1446, 'Trabajo de Grado Tecnológico', 2, 0, 0, 6, 1),
(58, 6, 1532, 'Inteligencia Artificial', 3, 2, 2, 5, 1),
(59, 6, 1539, 'Arquitectura de Computadores', 2, 2, 2, 2, 1),
(60, 11, 88, 'Ecuaciones Diferenciales', 3, 4, 2, 3, 4),
(61, 11, 1525, 'Bases de Datos Avanzadas', 3, 2, 2, 5, 4),
(62, 11, 1538, 'Ingeniería de Software', 3, 2, 2, 5, 4),
(63, 7, 16, 'Cálculo Multivariado', 3, 4, 2, 3, 1),
(64, 7, 1619, 'Ingeniería Económica', 3, 2, 2, 5, 2),
(65, 7, 1808, 'Probabilidad y Estadística', 3, 2, 2, 5, 1),
(66, 7, 7208, 'Sistemas Distribuidos', 3, 2, 2, 5, 1),
(67, 7, 7209, 'Teoría General de Sistemas', 2, 2, 2, 2, 1),
(68, 8, 1428, 'Física III: Ondas y Física Moderna', 3, 2, 2, 5, 1),
(69, 8, 1608, 'Formulación y Evaluación de Proyectos', 3, 2, 2, 5, 2),
(70, 8, 7210, 'Análisis de Fourier', 3, 2, 2, 5, 1),
(71, 8, 7211, 'Redes Corporativas', 3, 2, 2, 5, 1),
(72, 8, 7212, 'Sistemas Abiertos', 3, 2, 2, 5, 1),
(73, 8, 7213, 'Teoría de la Información', 3, 2, 2, 5, 1),
(74, 9, 7219, 'Computación Cuántica', 3, 2, 2, 5, 3),
(75, 9, 7220, 'Simulación de Sistemas Dinámicos', 3, 2, 2, 5, 3),
(76, 9, 7221, 'Criptología', 3, 2, 2, 5, 3),
(77, 9, 7222, 'Investigación de Operaciones', 3, 2, 2, 5, 3),
(78, 9, 1670, 'Trabajo de Grado I', 2, 0, 0, 6, 1),
(79, 9, 7214, 'Planificación y Diseño de Redes', 3, 2, 2, 5, 1),
(80, 9, 7215, 'Redes de Alta Velocidad', 3, 2, 2, 5, 1),
(81, 9, 7216, 'Seguridad en Redes', 3, 2, 2, 5, 1),
(82, 10, 7223, 'Análisis de Datos', 3, 2, 2, 5, 3),
(83, 10, 7224, 'Bioinformática', 3, 2, 2, 5, 3),
(84, 10, 7228, 'Gestión de Redes Telemáticas', 3, 2, 2, 5, 3),
(85, 10, 7225, 'Seminario de Telemática', 3, 2, 2, 5, 3),
(86, 10, 7226, 'Redes Inalámbricas', 3, 2, 2, 5, 3),
(87, 10, 7229, 'Arquitectura Empresarial', 3, 2, 2, 5, 3),
(88, 10, 1831, 'Trabajo de Grado II', 2, 0, 0, 6, 1),
(89, 10, 7217, 'Gerencia y Auditoría en Redes', 3, 2, 2, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_clasifica_espacio`
--

CREATE TABLE `res_clasifica_espacio` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_clasifica_espacio`
--

INSERT INTO `res_clasifica_espacio` (`codigo`, `nombre`) VALUES
(1, 'Obligatorio Básico'),
(2, 'Obligatorio Complementario'),
(3, 'Electivo Intrínseco'),
(4, 'Componente Propedéutico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_componente`
--

CREATE TABLE `res_componente` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_componente`
--

INSERT INTO `res_componente` (`codigo`, `nombre`) VALUES
(1, 'Componente Propedéutico'),
(2, 'Area de Ciencias Básicas'),
(3, 'Area Básica de Ingeniería'),
(4, 'Area de Ingeniería Aplicada'),
(5, 'Area Socio Humanística'),
(6, 'Area Económico Administratriva'),
(7, 'Segunda Lengua');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_didactica`
--

CREATE TABLE `res_didactica` (
  `codigo` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `detalle` varchar(4055) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `res_didactica`
--

INSERT INTO `res_didactica` (`codigo`, `descripcion`, `detalle`) VALUES
(2, 'sdfsfaaaa', 'sdfsdf'),
(3, 'sdfsfiiiiiiiiiiiiiiiiiiiiiiii', 'dfsdfsaaaaaaaaaaaaaaadfsdfsaaaaaaaaaaaaaaadfsdfsaaaaaaaaaaaaaaadfsdfsaaaaaaaaaaaaaaadfsdfsaaaaaaaaaaaaaaadfsdfsaaaaaaaaaaaaaaadfsdfsaaaaaaaaaaaaaaadfsdfsaaaaaaaaaaaaaaadfsdfsaaaaaaaaaaaaaaadfsdfsaaaaaaaaaaaaaaadfsdfsaaaaaaaaaaaaaaa'),
(4, 'qqqqqqqqqqqq', '222222222222'),
(5, 'juegos', 'explica interactivamente'),
(7, 'ddddddddddddd', 'CXVBXVCXVC'),
(8, 'asdadad', ''),
(9, 'd', 'd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_espacio`
--

CREATE TABLE `res_espacio` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigo_componente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_espacio`
--

INSERT INTO `res_espacio` (`codigo`, `nombre`, `codigo_componente`) VALUES
(1, 'Fisica NewToniana', 2),
(2, 'Lógica Matemática', 2),
(3, 'Inteligencia Artificial', 4),
(4, 'Aplicaciones para Internet', 4),
(5, 'Arquitectura de Computadores', 4),
(6, 'Bases de Datos', 4),
(7, 'Programación Multinivel', 4),
(8, 'Administración General', 6),
(9, 'Fundamentos de Contabilidad General', 6),
(10, 'Fundamentos de Economía', 6),
(11, 'Estructura de Datos', 3),
(12, 'Sistemas Distribuidos', 4),
(13, 'Gerencia y Auditoría de Redes', 4),
(14, 'Cálculo Diferencial', 2),
(15, 'PROGRAMACIÓN AVANZADA', 4),
(16, 'PROGRAMACIÓN ORIENTADA A OBJETOS', 4),
(17, 'ANÁLISIS Y MÉTODOS NUMÉRICOS', 2),
(18, 'CÁLCULO INTEGRAL', 2),
(19, 'ÁLGEBRA LINEAL', 2),
(20, 'FUNDAMENTOS DE ORGANIZACIÓN', 6),
(21, 'INGENIERÍA ECONÓMICA', 6),
(22, 'INVESTIGACIÓN DE OPERACIONES', 4),
(23, 'CIENCIA TECNOLOGÍA Y SOCIEDAD', 5),
(24, 'PRODUCCIÓN Y COMPRENSIÓN DE TEXTOS II', 5),
(25, 'BASES DE DATOS AVANZADAS', 1),
(26, 'INTRODUCCIÓN A ALGORITMOS', 3),
(27, 'FÍSICA III: ONDAS Y FÍSICA MODERNA', 2),
(28, 'PRODUCCIÓN Y COMPRENSIÓN DE TEXTOS I', 5),
(29, 'SISTEMAS ABIERTOS', 4),
(30, 'SISTEMAS OPERACIONALES', 4),
(31, 'CÁLCULO MULTIVARIADO', 2),
(32, 'ECUACIONES DIFERENCIALES', 1),
(33, 'CRIPTOLOGÍA', 4),
(34, 'CÁTEDRA FRANCISCO JOSÉ DE CALDAS', 5),
(35, 'ANÁLISIS DE SISTEMAS', 4),
(36, 'TICS EN LAS ORGANIZACIONES', 6),
(37, 'BASES DE DATOS DISTRIBUIDAS', 4),
(38, 'PROGRAMACIÓN POR COMPONENTES', 4),
(39, 'TRANSMISIÓN DE DATOS', 4),
(40, 'ÉTICA Y SOCIEDAD', 5),
(41, 'FÍSICA II: ELECTROMAGNETISMO', 2),
(42, 'BIOINFORMÁTICA', 4),
(43, 'DISEÑO LÓGICO', 3),
(44, 'ANÁLISIS DE FOURIER', 2),
(45, 'TALLER DE INVESTIGACIÓN', 4),
(46, 'FUNDAMENTOS DE TELEMÁTICA', 3),
(47, 'FORMULACIÓN Y EVALUACIÓN DE PROYECTOS', 6),
(48, 'TEORÍA DE LA INFORMACIÓN', 4),
(49, 'CÁTEDRA DEMOCRACIA Y CIUDADANÍA', 5),
(50, 'COMPUTACIÓN CUÁNTICA', 4),
(51, 'PROGRAMACIÓN WEB', 4),
(52, 'INGENIERÍA DE SOFTWARE', 1),
(53, 'Redes de Alta Velocidad', 4),
(54, 'Planifiacion Y Diseno de Redes', 4),
(55, 'Análisis Social Colombiano', 5),
(56, 'Tecnociencias', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_herramientas_conceptuales`
--

CREATE TABLE `res_herramientas_conceptuales` (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_herramientas_conceptuales`
--

INSERT INTO `res_herramientas_conceptuales` (`codigo`, `descripcion`) VALUES
(1, 'Equivalencias Tautológicas'),
(2, 'Modelos Teóricos'),
(3, 'Argumentación'),
(4, 'Modelos Experimentales'),
(5, 'Argumentación Racional'),
(6, 'Argumentación Convincente'),
(7, 'Argumentación Concisa'),
(8, 'Simulación'),
(9, 'Identificación de Actores'),
(10, 'Abstracción de Objetos'),
(11, 'Identificación de Problemas'),
(12, 'Investigación cuantitativa'),
(13, 'Investigación Cualitativa'),
(14, 'Dinámicas de Conflicto Social'),
(15, 'Investigación Cualitativa'),
(16, 'Reflexividad'),
(17, 'Optimización'),
(18, 'Análisis de Riesgos'),
(19, 'Argumentación Inductiva'),
(20, 'Argumentación Deductiva'),
(21, 'Argumentación Abductiva'),
(22, 'Argumentación de Autoridad'),
(23, 'Argumentación de hecho'),
(24, 'Argumentación de Moralidad'),
(25, 'Argumentación de Tradición'),
(26, 'Medición de Magnitudes'),
(27, 'Argumentación probabilística'),
(28, 'Montajes de Experimentos eléctricos'),
(29, 'Montajes de experimentos magnéticos'),
(30, 'Montajes de experimentos mecánicos'),
(31, 'Argumentación Estética'),
(32, 'Argumentación de Experiencia Personal'),
(33, 'Argumentación Generalización'),
(34, 'Argumentación Analógica'),
(35, 'Diagramas de Causa Efecto'),
(36, 'Diagramas de Arquitectura'),
(37, 'Diagramas UML'),
(38, 'Diagramas Archimate'),
(39, 'Diagramas de Procesos'),
(40, 'Diagramas de Datos'),
(41, 'Diagramas de Flujo'),
(42, 'Diagramas de Arbol'),
(43, 'Método de Resolución de Ecuaciones'),
(44, 'Pruebas unitarias'),
(45, 'Pruebas de Estrés'),
(46, 'Pruebas funcionales'),
(47, 'Diseño Asistido por Computador'),
(48, 'Pruebas de Caja Negra'),
(49, 'Pruebas de Escritorio'),
(50, 'Análisis de Tráfico'),
(51, 'Análisis del Espectro'),
(52, 'Pruebas de Usabilidad'),
(53, 'Pruebas de Accesibilidad'),
(54, 'Normalización de Datos'),
(55, 'Contabilidad'),
(56, 'Máquinas de Estado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_objetos_de_estudio`
--

CREATE TABLE `res_objetos_de_estudio` (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_objetos_de_estudio`
--

INSERT INTO `res_objetos_de_estudio` (`codigo`, `descripcion`) VALUES
(1, 'Algoritmos'),
(2, 'Contexto'),
(3, 'Lenguajes de Programación'),
(4, 'Ciudadanía'),
(5, 'Texto Escrito'),
(6, 'Funciones'),
(7, 'Ciencia'),
(8, 'Arquitectura de Software'),
(9, 'Productos de la Ciencia'),
(10, 'La electricidad'),
(11, 'Las derivadas'),
(12, 'Circuitos'),
(13, 'Ecuaciones'),
(14, 'Grafos'),
(15, 'Mecánica'),
(16, 'Redes Computacionales'),
(17, 'Nuevas Tecnologías'),
(18, 'Las Integrales'),
(19, 'Las sucesiones'),
(20, 'Teoremas'),
(21, 'Árboles'),
(22, 'Estructuras de Datos'),
(23, 'Textos'),
(24, 'Democracia'),
(25, 'Valores del Ingeniero'),
(26, 'Limites'),
(27, 'Patrones de Diseño'),
(28, 'Lógica'),
(29, 'Objetos y las clases'),
(30, 'Aplicaciones Web'),
(31, 'Aplicaciones Multiplataforma'),
(32, 'Aplicaciones Móviles'),
(33, 'Bases de Datos'),
(34, 'Sistemas Expertos'),
(35, 'Sistemas Expertos'),
(36, 'Redes Neuronales'),
(37, 'Bodegas de Datos'),
(38, 'Texto Escrito'),
(39, 'Lenguaje'),
(40, 'Ingeniería de Software'),
(41, 'Ética'),
(42, 'Series'),
(43, 'Sociedad'),
(44, 'Valores del Ingeniero'),
(45, 'Algebra Vectorial'),
(46, 'Métodos Numéricos'),
(47, 'Redes Inalámbricas'),
(48, 'Redes alámbricas'),
(49, 'Espacios Vectoriales'),
(50, 'Redes Corporativas'),
(51, 'Transmisión de Datos'),
(52, 'Redes de Alta Velocidad'),
(53, 'Teoría General de Sistemas'),
(54, 'Administración'),
(55, 'Contabilidad'),
(56, 'Máquinas de Estado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_pensamiento`
--

CREATE TABLE `res_pensamiento` (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detalle` varchar(4055) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_pensamiento`
--

INSERT INTO `res_pensamiento` (`codigo`, `descripcion`, `detalle`) VALUES
(1, 'Pensamiento<br>Logico<br>.', 'Se entiende por pensamiento logico aquellas formas de razonamiento netamente relacionales, es decir, que involucran objetos reales o abstractos y una serie de relaciones entre ellos. Es un tipo de pensamiento que proviene de la propia elaboracion individual, y que requiere de la elaboracion abstracta, hipotetica.'),
(2, 'Pensamiento<br>algoritmico<br>.', 'El pensamiento algoritmico es la capacidad para realizar el proceso de abstraccion, modelizacion de un problema, deducciones logicas y sintesis de la solucion que conduzca a escribir el algoritmo correcto.'),
(3, 'Pensamiento<br>Sistemico<br>.', 'Es el tipo de pensamiento o analisis con una vision sistemica, es decir, de la dinamica de sistemas, donde se busca comprender el funcionamiento desde el conjunto de las partes como un todo, a traves del metodo cientifico.'),
(4, 'Pensamiento<br>magico<br>.', 'El pensamiento magico confiere intenciones a elementos que no cuentan con voluntad ni consciencia propias, y menos aun capacidad para actuar siguiendo planes. Por ejemplo, una nina que por su corta edad cree que las olas de la playa tratan de remojarles el pelo esta utilizando el pensamiento mágico.'),
(5, 'Pensamiento<br>Suave<br>.', 'Por definicion, cuando nos referimos al proceso mental de pensamiento suave, nos referimos estrictamente al tipo de razonamiento que, entre sus caracteristicas, usa conceptos que pueden ser ambiguos o no tan claros y que suele recurrir a las metaforas. Ademas, siempre busca evitar que exista algun tipo de contradiccion. Por lo general, esta relacionado con las corrientes filosoficas postmodernas y tambien al psicoanalisis. Este concepto se contrapone totalmente al duro, el cual evoca un significado opuesto. El proceso mental de razonamiento suave es muy frecuente tambien en personas creativas que recurren a metaforas para expresar sus ideas o que, para llegar a una conclusion, realizan aproximaciones muy variadas. Y, por definicion, es uno de los pensamientos ideales que pueden existir en la etapa de busqueda de ideas frescas.'),
(6, 'Pensamiento<br>Fisico<br>.', 'Pensamiento propio de ciencias como la fisica.'),
(7, 'Pensamiento<br>Cultural<br>.', 'Pensamiento transcultural y cultural que le da al individuo habilidades para relacionarse con las personas, entender su cultura, contexto y relaciones de la sociedad con la persona misma.'),
(8, 'Pensamiento<br>Natural<br>.', 'El primer tipo de pensamiento lineal que vamos a conocer, es el pensamiento natural. Esta forma de razonar se caracteriza por aparecer de forma espontanea. Es un modo de pensar impulsivo y por lo tanto no se utiliza ningun tipo de operacion durante el mismo.'),
(9, 'Pensamiento<br>Convergente<br>.', 'En el pensamiento convergente se da un proceso por el cual nos damos cuenta de que hay diferentes hechos o realidades que encajan entre si a pesar de que en un principio parecia que no tenian nada en comun. Por ejemplo, si una familia de monarcas se da cuenta de que en una guerra les interesa ponerse a favor de uno de los bandos, habran partido del analisis de los diferentes actores en conflicto hasta llegar a una conclusion global acerca de la opcion mas conveniente.'),
(10, 'Pensamiento<br>Creativo<br>.', 'En el pensamiento creativo o lateral se juega a crear soluciones originales y unicas ante problemas, mediante el cuestionamiento de las normas que en un principio parecen ser evidentes. Por ejemplo, una silla de columpio parece -predestinada- a ser utilizada en un tipo de juguete muy particular, pero es posible transgredir esta idea utilizandola como soporte para una maceta que cuelga de un porche. Este es uno de los tipos de pensamiento mas utilizados en arte y artesania.'),
(11, 'Pensamiento<br>analitico<br>.', 'El pensamiento analitico crea piezas de informacion a partir de una unidad informacional amplia y llega a conclusiones viendo el modo en el que interactuan entre si estos -fragmentos-.'),
(12, 'Pensamiento<br>inductivo<br>.', 'Este tipo de pensamiento no parte de afirmaciones generales, sino que se basa en casos particulares y, a partir de ellos, genera ideas generales. Por ejemplo, si observamos que las palomas tienen plumas, los avestruces tienen plumas y las garzas tambien tienen plumas, podemos concluir que estos tres animales forman parte de una categoria abstracta llamada -sauropsidos-.'),
(13, 'Pensamiento<br>deductivo<br>.', 'El pensamiento deductivo parte de afirmaciones basadas en ideas abstractas y universales para aplicarlas a casos particulares. Por ejemplo, si partimos de la idea de que un frances es alguien que vive en Francia y Francia esta en Europa, concluiremos que Rene Descartes, que vivia en Francia, era europeo.'),
(14, 'Pensamiento<br>Divergente<br>.', 'En el pensamiento divergente se establece una division entre dos o mas aspectos de una idea, y se explora las posibilidades de mantener esta -particion-. Por ejemplo, si alguien utiliza una misma palabra haciendo que cada vez tenga un significado distinto, detectar este error es un caso de pensamiento divergente en el que se detecta los distintos significados. Puedes ver ejemplos de esto fijandote en el uso que se hace habitualmente del concepto de -lo natural- aplicado a productos de alimentacion, orientaciones sexuales poco comunes o tendencias de comportamiento generalizadas en general.'),
(15, 'Pensamiento<br>Duro<br>.', 'El pensamiento duro utiliza conceptos lo mas definidos posibles, y trata de evitar las contradicciones. Es tipico del tipo de razonamientos vinculados a la ciencia.'),
(16, 'Pensamiento<br>Creativo<br>.', 'Cuando hablamos de pensamiento creativo, hacemos alusion a una forma de razonamiento tipica de los seres humanos, que es capaz de procesar y reformular la informacion de maneras originales, flexibles, plasticas y fluidas, o bien de aplicarla a la solucion de un problema con el que inicialmente no lucia compatible. Es decir que el pensamiento creativo gira en torno a la capacidad de inventiva del ser humano y de su imaginacion, las cuales permitieron desde siempre desarrollar herramientas, distintas formas de pensamiento, estrategias de supervivencia o incluso formularse complejas preguntas.'),
(17, 'Pensamiento<br>Reflexivo<br>.', 'Tipo de pensamiento que consiste en darle vueltas a un tema en la cabeza y tomarselo en serio con todas sus consecuencias, es decir, el examen activo, persistente y cuidadoso de toda creencia o supuesta forma de conocimiento a la luz de los fundamentos que la sostienen y las conclusiones a las que tiende.'),
(18, 'Pensamiento<br>Administrativo<br>.', 'El origen del pensamiento administrativo se remonta a aquellos tiempos en que los hombres unieron por primera vez sus esfuerzos para satisfacer sus necesidades. Sin embargo, no es sino hasta principios de este siglo que se empieza a tomar a la administracion como objeto de estudio.'),
(19, 'Pensamiento<br>Critico<br>.', 'El pensamiento crítico es el proceso de dudar de las afirmaciones que en la vida cotidiana suelen aceptarse como verdaderas. Por ello, el pensamiento critico no aspira a alcanzar una verdad absoluta, sino a profundizar en practicas y estrategias que nos permiten someter nuestras convicciones, y las de otras personas, a discusiones.'),
(20, 'Pensamiento<br>Interpretativo<br>.', 'Un pensamiento con alta capacidad para interpretar los resultados de un experimento o generados por la aplicacion de un procedimiento formal, explicando las causas por las cuales se producen dichos resultados.'),
(21, 'Pensamiento<br>Numerico<br>Variacional', 'El pensamiento variacional es concebido como una forma dinamica de pensar que intenta producir mentalmente sistemas que relacionen sus variables internas de tal manera que covarien en forma semejante a los patrones de covariacion de cantidades, de la misma o distintas magnitudes, en los subprocesos recortados de la realidad.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_profesor`
--

CREATE TABLE `res_profesor` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clave` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_profesor`
--

INSERT INTO `res_profesor` (`codigo`, `nombre`, `apellido`, `cedula`, `clave`) VALUES
(1, 'Henry', 'Londoño Contreras', '79201321', '792065478'),
(2, 'Roberto Emilio', 'Salas Ruiz', '72184246', '721478147'),
(3, 'Héctor Arturo', 'Florez Fernández', NULL, NULL),
(4, 'Rocio', 'Rodríguez Guerrero', '52369898', '5247987'),
(5, 'Rox Mery', 'Lozada Romero', '51878277', '5152497'),
(6, 'Nelson', 'Becerra Correa', '13840311', '1347847'),
(7, 'Miguel Angel', 'Leguizamón Páez', NULL, NULL),
(8, 'Juian Carlos', 'Salazar Gualdrón', '13718984', '137946'),
(9, 'Nelly Paola', 'Palma Vanegas', '52446451', '5254585956'),
(10, 'Noe', 'Arcos Munoz', '80747472', '987789'),
(11, 'JONNY FERNELY', 'BARRANCO', '79573660', '987789'),
(12, 'JONNY FERNANDO', 'BARRETO CASTAÑEDA', '1022940120', '987789'),
(13, 'NELSON REYNALDO', 'BECERRA CORREA', '13840311', '987789'),
(14, 'EDWING OSWALDO', 'BERDUGO ROMERO', '79362769', '987789'),
(15, 'EILEEN', 'BERNAL GARZON', '52903509', '987789'),
(16, 'MIREYA', 'BERNAL GOMEZ', '52773761', '987789'),
(17, 'FABIAN DARIO', 'BLANCO SIERRA', '80076628', '987789'),
(18, 'EDILMO', 'CARVAJAL MARQUEZ', '79860962', '987789'),
(19, 'GERARDO ALBERTO', 'CASTANG MONTIEL', '79799595', '987789'),
(20, 'FABIAN ALBERTO', 'CASTIBLANCO RUIZ', '79799595', '987789'),
(21, 'GLORIA ANDREA', 'CAVANZO NISSO', '52222640', '987789'),
(22, 'MARIBEL', 'CHIQUIZA OCHOA', '51819160', '987789'),
(23, 'JOHN ALEXANDER', 'CRUZ RAMIREZ', '79908620', '987789'),
(24, 'JAVIER ORLANDO', 'DAZA TORRES', '79445329', '987789'),
(25, 'RICARDO', 'DE ARMAS COSTA', '8534496', '987789'),
(26, 'MIRTA ROCIO', 'DIAZ RODRIGUEZ', '565925', '987789'),
(27, 'JOHANNA DEL PILAR', 'DUEÑAS GALINDO', '52305642', '987789'),
(28, 'PETER NELSON', 'FIERRO CASTAÑO', '79971095', '987789'),
(29, 'HECTOR JULIO', 'FUQUENE ARDILA', '79369589', '987789'),
(30, 'FRANCYA INES', 'GARCIA QUEVEDO', '51971002', '987789'),
(31, 'MILLER', 'GOMEZ MORA', '79520182', '987789'),
(32, 'RUBEN DARIO', 'GUERRERO MANCILLA', '16838128', '987789'),
(33, 'JUAN CARLOS', 'GUEVARA BOLAÑOS', '79422893', '987789'),
(34, 'CLAUDIA LILIANA', 'HERNANDEZ GARCIA', '52519622', '987789'),
(35, 'HENRY', 'LONDOÑO CONTRERAS', '79201321', '987789'),
(36, 'LEYDI YOLANDA', 'LOPEZ OSORIO', '1023879381', '987789'),
(37, 'ROXMERY', 'LOZADA ROMERO', '51878277', '987789'),
(38, 'CARLOS', 'LUGO GONZALEZ', '79327451', '987789'),
(39, 'LUZ MARINA', 'LUGO GONZALEZ', '52017024', '987789'),
(40, 'DIANA ISABEL', 'MARTINEZ BUITRAGO', '52932846', '987789'),
(41, 'DORA MARCELA', 'MARTINEZ CAMARGO', '52023088', '987789'),
(42, 'ANDRÉS ERNESTO', 'MEJÍA VILLAMIL', '79965282', '987789'),
(43, 'DIEGO ARMANDO', 'MORENO HERRERA', '1031126572', '987789'),
(44, 'DARIN JAIRO', 'MOSQUERA PALACIOS', '79480545', '987789'),
(45, 'WILMAN ENRIQUE', 'NAVARRO MEJIA', '72151337', '987789'),
(46, 'NORBERTO', 'NOVOA TORRES', '19436656', '987789'),
(47, 'NELLY PAOLA', 'PALMA VANEGAS', '52446451', '987789'),
(48, 'JESUS MANUEL', 'PATERNINA DURAN', '80095218', '987789'),
(49, 'HERMENT', 'PEREZ CARO', '4104996', '987789'),
(50, 'LORETH', 'PEREZ ROJAS', '40760191', '987789'),
(51, 'JEAN YECID', 'PEÑA TRIANA', '79963493', '987789'),
(52, 'ROSA MARGARITA', 'PEÑA TRIANA', '51833216', '987789'),
(53, ' SONIA ALEXANDRA', 'PINZON NUÑEZ', '52204302', '987789'),
(54, ' JOSE VICENTE', 'REYES MOZO', '7161428', '987789'),
(55, ' DAIRO', 'ROCHA CASTELLANOS', '1024466788', '987789'),
(56, ' ROCIO', 'RODRIGUEZ GUERRERO', '52369898', '987789'),
(57, ' JORGE ENRIQUE', 'RODRIGUEZ RODRIGUEZ', '7165116', '987789'),
(58, ' LUIS CARLOS', 'ROJAS OBANDO', '79286581', '987789'),
(59, ' MARILUZ', 'ROMERO GARCIA', '46676633', '987789'),
(60, ' ALEJANDRA MARITZA', 'RUSINQUE PADILLA', '53016205', '987789'),
(61, ' ROBERTO EMILIO', 'SALAS RUIZ', '72184246', '987789'),
(62, ' JUAN CARLOS', 'SALAZAR GUALDRON', '13718984', '987789'),
(63, ' JOSE LEONARDO', 'SERNA DIAZ', '79223082', '987789'),
(64, ' JOSE LUIS', 'SILVA SUAREZ', '88154191', '987789'),
(65, ' KAROL YOBANI', 'UBAQUE BRITO', '1031120919', '987789'),
(66, ' ALBERTO', 'VANEGAS CARLOS', '19486492', '987789'),
(67, ' NELSON ARMANDO', 'VARGAS SANCHEZ', '79890687', '987789'),
(68, ' TOMAS ANTONIO', 'VASQUEZ ARRIETA', '6816778', '987789'),
(69, ' XIMENA AUDREY', 'VELASQUEZ MOYA', '53063272', '987789'),
(70, ' LUIS FELIPE', 'WANUMEN SILVA', '79904602', '987789'),
(71, ' JOHN FREDY', 'ZABALA ALVAREZ', '79907360', '987789'),
(72, 'Jairo', 'Hernandez', '111', '1245'),
(73, 'OSCAR JAVIER', 'MARTINEZ RICAURTE', '1033701075', '5611310');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_recursos`
--

CREATE TABLE `res_recursos` (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_recursos`
--

INSERT INTO `res_recursos` (`codigo`, `descripcion`) VALUES
(1, 'Interpretadores'),
(2, 'Compiladores'),
(3, 'Filosofía'),
(4, 'Humanidades'),
(5, 'Planeación Estratégica'),
(6, 'Modelos Fisicos'),
(7, 'Modelos Teóricos'),
(8, 'Laboratorios de Fisica'),
(9, 'Laboratorios de Electrónica'),
(10, 'Laboratorios DE SISTEMAS'),
(11, 'Textos de Otros Autores'),
(12, 'Textos'),
(13, 'Folletos'),
(14, 'Revistas'),
(15, 'Bases de Datos Electrónicas'),
(16, 'Articulos Externos'),
(17, 'Artículos de Nuestros Profesores'),
(18, 'Videos'),
(19, 'Publicidad'),
(20, 'Software de Regresión'),
(21, 'Software de Simulación'),
(22, 'Software de Traducción'),
(23, 'Analizadores de Tráfico'),
(24, 'Emuladores de Red'),
(25, 'Emuladores de Sistemas Operativos'),
(26, 'Herramientas de Diseño Gráfico'),
(27, 'Instrumentos de Medición'),
(28, 'Instrumentos de Calibración'),
(29, 'Software de Gestión'),
(30, 'Software de Programación'),
(31, 'Software en la Nube'),
(32, 'Infraestructura Consumida como Servicio'),
(33, 'Software Consumido como Servicio'),
(34, 'Plataforma como Servicio'),
(35, 'Servidores Web'),
(36, 'Servidores de Bases de Datos'),
(37, 'Servidores de Correo'),
(38, 'Servidores FTP'),
(39, 'Servidores de Streamin'),
(40, 'Circuitos Montables en Protoboards'),
(41, 'Equipos de Medición'),
(42, 'Equipos Activos de Comunicación'),
(43, 'Computadores'),
(44, 'Equipos de Transmisión de Datos'),
(45, 'Equipos Analizadores de Espectro'),
(46, 'Equipos de Realidad Aumentada'),
(47, 'Equipos Médicos'),
(48, 'Equipos para Mantenimiento'),
(49, 'Libros Externos'),
(50, 'Libros Internos'),
(51, 'Análisis del Espectro'),
(52, 'Simuladores Matemáticos'),
(53, 'Software de Sistemas Expertos'),
(54, 'Software para Minería de Datos'),
(55, 'Compiladores Online'),
(56, 'Lapiz y Papel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_resultados_de_aprendizaje`
--

CREATE TABLE `res_resultados_de_aprendizaje` (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_resultados_de_aprendizaje`
--

INSERT INTO `res_resultados_de_aprendizaje` (`codigo`, `descripcion`) VALUES
(1, 'Algoritmo Inédito'),
(2, 'Programa Inédito'),
(3, 'Diagrama de Arquitectura'),
(4, 'Documento Técnico'),
(5, 'Documento de Arquitectura'),
(6, 'Modelo lógico de Datos'),
(7, 'Modelo Fisico de Datos'),
(8, 'Modelo de Arquitectura'),
(9, 'API'),
(10, 'Front'),
(11, 'Middleware'),
(12, 'Backend'),
(13, 'Tesis'),
(14, 'Anteproyecto'),
(15, 'Artículo'),
(16, 'Diseño de Red'),
(17, 'Diseño Eléctrico'),
(18, 'Planeación Estratégica'),
(19, 'Simulador Educativo'),
(20, 'AVA'),
(21, 'OVA'),
(22, 'Aplicación Móvil'),
(23, 'Sistema Experto'),
(24, 'Red Neuronal'),
(25, 'Ecuación Resuelta'),
(26, 'Ecuación Planteada'),
(27, 'Ecuación Interpretada'),
(28, 'Cronograma'),
(29, 'Plan de Negocios'),
(30, 'Análisis de Riesgos'),
(31, 'Implementación de una Norma'),
(32, 'Plan de Calidad'),
(33, 'Plan de Mejoramiento'),
(34, 'Metodología'),
(35, 'Plan de Integración'),
(36, 'Plan de Seguridad'),
(37, 'Juego'),
(38, 'Aplicación Stand Alone'),
(39, 'Aplicación Multiplataforma'),
(40, 'Dieño de Navegación'),
(41, 'CRM'),
(42, 'Metodologia para Implementar una Norma'),
(43, 'Estudio de Viabilidad'),
(44, 'Modelo de Optimización'),
(45, 'Aplicación Web'),
(46, 'Aplicación Empotrada'),
(47, 'Modelo Arquitectónico'),
(48, 'Sistema de Gestión de Conocimiento'),
(49, 'Patrón de Diseño'),
(50, 'Propuesta de Investigación'),
(51, 'Red Implementada'),
(52, 'Simulación'),
(53, 'Modelado Matemático'),
(54, 'Plan de Gestión'),
(55, 'Análisis de un sistema'),
(56, 'Diseño de un Sistema'),
(57, 'Estado Financiero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_semestre`
--

CREATE TABLE `res_semestre` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `res_semestre`
--

INSERT INTO `res_semestre` (`codigo`, `nombre`) VALUES
(1, 'Primer Semestre'),
(2, 'Segundo Semestre'),
(3, 'Tercer Semestre'),
(4, 'Cuarto Semestre'),
(5, 'Quinto Semestre'),
(6, 'Sexto Semestre'),
(7, 'Séptimo Semestre'),
(8, 'Octavo Semestre'),
(9, 'Noveno Semestre'),
(10, 'Décimo Semestre'),
(11, 'Componente propedéutico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_actionscheduler_actions`
--

CREATE TABLE `wp_y5c34k_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_actionscheduler_actions`
--

INSERT INTO `wp_y5c34k_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(136, 'wpforms_admin_addons_cache_update', 'complete', '2022-04-25 23:41:01', '2022-04-25 23:41:01', '{\"tasks_meta_id\":2}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1650930061;s:18:\"\0*\0first_timestamp\";i:1639881493;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1650930061;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2022-05-03 16:27:52', '2022-05-03 16:27:52', 0, NULL),
(137, 'wpforms_admin_builder_templates_cache_update', 'complete', '2022-04-25 23:41:01', '2022-04-25 23:41:01', '{\"tasks_meta_id\":4}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1650930061;s:18:\"\0*\0first_timestamp\";i:1639881493;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1650930061;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2022-05-03 16:27:52', '2022-05-03 16:27:52', 0, NULL),
(138, 'wpforms_email_summaries_fetch_info_blocks', 'complete', '2022-04-25 23:41:01', '2022-04-25 23:41:01', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1650930061;s:18:\"\0*\0first_timestamp\";i:1639295817;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1650930061;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2022-05-03 16:27:52', '2022-05-03 16:27:52', 0, NULL),
(147, 'aioseo_image_sitemap_scan', 'complete', '2022-04-21 18:48:54', '2022-04-21 18:48:54', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1650566934;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1650566934;}', 1, 1, '2022-05-03 16:27:52', '2022-05-03 16:27:52', 0, NULL),
(148, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2022-04-22 18:33:54', '2022-04-22 18:33:54', '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1650652434;s:18:\"\0*\0first_timestamp\";i:1639353600;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1650652434;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2022-05-03 16:27:52', '2022-05-03 16:27:52', 0, NULL),
(149, 'aioseo_cache_prune', 'complete', '2022-04-22 18:33:54', '2022-04-22 18:33:54', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1650652434;s:18:\"\0*\0first_timestamp\";i:1639271626;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1650652434;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2022-05-03 16:27:52', '2022-05-03 16:27:52', 0, NULL),
(150, 'aioseo_image_sitemap_scan', 'complete', '2022-05-03 16:42:52', '2022-05-03 16:42:52', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1651596172;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1651596172;}', 1, 1, '2022-05-05 01:02:47', '2022-05-05 01:02:47', 0, NULL),
(151, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2022-05-04 16:27:52', '2022-05-04 16:27:52', '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1651681672;s:18:\"\0*\0first_timestamp\";i:1639353600;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1651681672;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2022-05-05 01:02:47', '2022-05-05 01:02:47', 0, NULL),
(152, 'aioseo_cache_prune', 'complete', '2022-05-04 16:27:52', '2022-05-04 16:27:52', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1651681672;s:18:\"\0*\0first_timestamp\";i:1639271626;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1651681672;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2022-05-05 01:02:48', '2022-05-05 01:02:48', 0, NULL),
(153, 'wpforms_admin_addons_cache_update', 'complete', '2022-05-10 16:27:52', '2022-05-10 16:27:52', '{\"tasks_meta_id\":2}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1652200072;s:18:\"\0*\0first_timestamp\";i:1639881493;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1652200072;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2022-06-03 00:02:35', '2022-06-03 00:02:35', 0, NULL),
(154, 'wpforms_admin_builder_templates_cache_update', 'complete', '2022-05-10 16:27:52', '2022-05-10 16:27:52', '{\"tasks_meta_id\":4}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1652200072;s:18:\"\0*\0first_timestamp\";i:1639881493;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1652200072;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2022-06-03 00:02:35', '2022-06-03 00:02:35', 0, NULL),
(155, 'wpforms_email_summaries_fetch_info_blocks', 'complete', '2022-05-10 16:27:52', '2022-05-10 16:27:52', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1652200072;s:18:\"\0*\0first_timestamp\";i:1639295817;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1652200072;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2022-06-03 00:02:35', '2022-06-03 00:02:35', 0, NULL),
(156, 'aioseo_image_sitemap_scan', 'complete', '2022-05-05 01:17:47', '2022-05-05 01:17:47', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1651713467;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1651713467;}', 1, 1, '2022-05-09 15:47:54', '2022-05-09 15:47:54', 0, NULL),
(157, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2022-05-06 01:02:47', '2022-05-06 01:02:47', '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1651798967;s:18:\"\0*\0first_timestamp\";i:1639353600;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1651798967;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2022-05-09 15:47:54', '2022-05-09 15:47:54', 0, NULL),
(158, 'aioseo_cache_prune', 'complete', '2022-05-06 01:02:48', '2022-05-06 01:02:48', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1651798968;s:18:\"\0*\0first_timestamp\";i:1639271626;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1651798968;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2022-05-09 15:47:54', '2022-05-09 15:47:54', 0, NULL),
(159, 'aioseo_image_sitemap_scan', 'complete', '2022-05-09 16:02:54', '2022-05-09 16:02:54', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1652112174;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1652112174;}', 1, 1, '2022-06-02 20:54:15', '2022-06-02 20:54:15', 0, NULL),
(160, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2022-05-10 15:47:54', '2022-05-10 15:47:54', '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1652197674;s:18:\"\0*\0first_timestamp\";i:1639353600;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1652197674;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2022-06-03 00:02:35', '2022-06-03 00:02:35', 0, NULL),
(161, 'aioseo_cache_prune', 'complete', '2022-05-10 15:47:54', '2022-05-10 15:47:54', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1652197674;s:18:\"\0*\0first_timestamp\";i:1639271626;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1652197674;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2022-06-03 00:02:35', '2022-06-03 00:02:35', 0, NULL),
(162, 'aioseo_image_sitemap_scan', 'complete', '2022-06-02 21:09:15', '2022-06-02 21:09:15', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1654204155;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1654204155;}', 1, 1, '2022-06-03 00:02:35', '2022-06-03 00:02:35', 0, NULL),
(163, 'wpforms_process_entry_emails_meta_cleanup', 'pending', '2022-06-04 00:02:35', '2022-06-04 00:02:35', '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1654300955;s:18:\"\0*\0first_timestamp\";i:1639353600;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1654300955;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(164, 'aioseo_cache_prune', 'pending', '2022-06-04 00:02:35', '2022-06-04 00:02:35', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1654300955;s:18:\"\0*\0first_timestamp\";i:1639271626;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1654300955;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(165, 'wpforms_admin_addons_cache_update', 'pending', '2022-06-10 00:02:35', '2022-06-10 00:02:35', '{\"tasks_meta_id\":2}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1654819355;s:18:\"\0*\0first_timestamp\";i:1639881493;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1654819355;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(166, 'wpforms_admin_builder_templates_cache_update', 'pending', '2022-06-10 00:02:35', '2022-06-10 00:02:35', '{\"tasks_meta_id\":4}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1654819355;s:18:\"\0*\0first_timestamp\";i:1639881493;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1654819355;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(167, 'wpforms_email_summaries_fetch_info_blocks', 'pending', '2022-06-10 00:02:35', '2022-06-10 00:02:35', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1654819355;s:18:\"\0*\0first_timestamp\";i:1639295817;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1654819355;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(168, 'aioseo_image_sitemap_scan', 'pending', '2022-06-03 00:17:35', '2022-06-03 00:17:35', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1654215455;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1654215455;}', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_actionscheduler_claims`
--

CREATE TABLE `wp_y5c34k_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_actionscheduler_groups`
--

CREATE TABLE `wp_y5c34k_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_actionscheduler_groups`
--

INSERT INTO `wp_y5c34k_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'aioseo'),
(2, 'action-scheduler-migration'),
(3, 'wpforms');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_actionscheduler_logs`
--

CREATE TABLE `wp_y5c34k_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_actionscheduler_logs`
--

INSERT INTO `wp_y5c34k_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(383, 136, 'action created', '2022-04-18 23:41:01', '2022-04-18 23:41:01'),
(386, 137, 'action created', '2022-04-18 23:41:01', '2022-04-18 23:41:01'),
(389, 138, 'action created', '2022-04-18 23:41:01', '2022-04-18 23:41:01'),
(415, 147, 'action created', '2022-04-21 18:33:54', '2022-04-21 18:33:54'),
(419, 148, 'action created', '2022-04-21 18:33:54', '2022-04-21 18:33:54'),
(422, 149, 'action created', '2022-04-21 18:33:54', '2022-04-21 18:33:54'),
(423, 147, 'action started via WP Cron', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(424, 150, 'action created', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(425, 147, 'action complete via WP Cron', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(426, 148, 'action started via WP Cron', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(427, 148, 'action complete via WP Cron', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(428, 151, 'action created', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(429, 149, 'action started via WP Cron', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(430, 149, 'action complete via WP Cron', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(431, 152, 'action created', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(432, 136, 'action started via WP Cron', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(433, 136, 'action complete via WP Cron', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(434, 153, 'action created', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(435, 137, 'action started via WP Cron', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(436, 137, 'action complete via WP Cron', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(437, 154, 'action created', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(438, 138, 'action started via WP Cron', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(439, 138, 'action complete via WP Cron', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(440, 155, 'action created', '2022-05-03 16:27:52', '2022-05-03 16:27:52'),
(441, 150, 'action started via WP Cron', '2022-05-05 01:02:47', '2022-05-05 01:02:47'),
(442, 156, 'action created', '2022-05-05 01:02:47', '2022-05-05 01:02:47'),
(443, 150, 'action complete via WP Cron', '2022-05-05 01:02:47', '2022-05-05 01:02:47'),
(444, 151, 'action started via WP Cron', '2022-05-05 01:02:47', '2022-05-05 01:02:47'),
(445, 151, 'action complete via WP Cron', '2022-05-05 01:02:47', '2022-05-05 01:02:47'),
(446, 157, 'action created', '2022-05-05 01:02:48', '2022-05-05 01:02:48'),
(447, 152, 'action started via WP Cron', '2022-05-05 01:02:48', '2022-05-05 01:02:48'),
(448, 152, 'action complete via WP Cron', '2022-05-05 01:02:48', '2022-05-05 01:02:48'),
(449, 158, 'action created', '2022-05-05 01:02:48', '2022-05-05 01:02:48'),
(450, 156, 'action started via WP Cron', '2022-05-09 15:47:54', '2022-05-09 15:47:54'),
(451, 159, 'action created', '2022-05-09 15:47:54', '2022-05-09 15:47:54'),
(452, 156, 'action complete via WP Cron', '2022-05-09 15:47:54', '2022-05-09 15:47:54'),
(453, 157, 'action started via WP Cron', '2022-05-09 15:47:54', '2022-05-09 15:47:54'),
(454, 157, 'action complete via WP Cron', '2022-05-09 15:47:54', '2022-05-09 15:47:54'),
(455, 160, 'action created', '2022-05-09 15:47:54', '2022-05-09 15:47:54'),
(456, 158, 'action started via WP Cron', '2022-05-09 15:47:54', '2022-05-09 15:47:54'),
(457, 158, 'action complete via WP Cron', '2022-05-09 15:47:54', '2022-05-09 15:47:54'),
(458, 161, 'action created', '2022-05-09 15:47:54', '2022-05-09 15:47:54'),
(459, 159, 'action started via WP Cron', '2022-06-02 20:54:14', '2022-06-02 20:54:14'),
(460, 162, 'action created', '2022-06-02 20:54:15', '2022-06-02 20:54:15'),
(461, 159, 'action complete via WP Cron', '2022-06-02 20:54:15', '2022-06-02 20:54:15'),
(462, 160, 'action started via WP Cron', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(463, 160, 'action complete via WP Cron', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(464, 163, 'action created', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(465, 161, 'action started via WP Cron', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(466, 161, 'action complete via WP Cron', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(467, 164, 'action created', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(468, 153, 'action started via WP Cron', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(469, 153, 'action complete via WP Cron', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(470, 165, 'action created', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(471, 154, 'action started via WP Cron', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(472, 154, 'action complete via WP Cron', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(473, 166, 'action created', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(474, 155, 'action started via WP Cron', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(475, 155, 'action complete via WP Cron', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(476, 167, 'action created', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(477, 162, 'action started via WP Cron', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(478, 168, 'action created', '2022-06-03 00:02:35', '2022-06-03 00:02:35'),
(479, 162, 'action complete via WP Cron', '2022-06-03 00:02:35', '2022-06-03 00:02:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_aioseo_cache`
--

CREATE TABLE `wp_y5c34k_aioseo_cache` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `expiration` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_aioseo_notifications`
--

CREATE TABLE `wp_y5c34k_aioseo_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(13) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `level` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `notification_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notification_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `button1_label` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `button1_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `button2_label` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `button2_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dismissed` tinyint(1) NOT NULL DEFAULT 0,
  `new` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_aioseo_notifications`
--

INSERT INTO `wp_y5c34k_aioseo_notifications` (`id`, `slug`, `title`, `content`, `type`, `level`, `notification_id`, `notification_name`, `start`, `end`, `button1_label`, `button1_action`, `button2_label`, `button2_action`, `dismissed`, `new`, `created`, `updated`) VALUES
(1, '61b55cf490aac', '🌳 Get AIOSEO Pro (65% OFF Today) + Donate for a Cause 🌳', 'Want to boost your SEO rankings while giving back something in return?\r\n<br><br>\r\nThis Green Monday, we’re offering <strong><em>up to 65% OFF</em></strong> on AIOSEO Pro purchases.\r\n<br><br>\r\nAnd a portion of sales will be donated to The Conservation Fund, a non-profit that protects America\'s legacy of land and water resources through land acquisition and more.', 'success', '[\"4-x\",\"lite\"]', 183, NULL, '2021-12-13 00:00:00', '2021-12-14 00:00:00', 'Upgrade AIOSEO NOW! (65% OFF)', 'https://aioseo.com/pricing/?utm_source=WordPress&utm_campaign=green-monday-2021-v4-lite&utm_medium=plugin-notification&utm_content=Upgrade AIOSEO NOW', NULL, NULL, 0, 0, '2021-12-12 02:22:44', '2021-12-12 02:22:44'),
(2, '61b55cf492efb', '📢 Introducing Our Updated Redirect Testing Tool + Enhancements to Sitemaps', 'Check out our completely revamped <strong>Redirect Testing tool</strong>! Now, you can easily test URL redirect right within your WordPress dashboard and see the status code with a single click.\r\n<br><br>\r\n<img style=\"width:100%;max-width:400px\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAAECCAMAAADnz3G2AAAC+lBMVEX////5+fr0/fi3uMG1tsCrrLWxsrzo6OuvsLm0tb5Ep2f7/Pytrrf39/i4ucKio6329veur7iztL22t8Cwsbvz8/WnqLGmp7Ckpa6pqbP+/v6Wzan39/nt7e+xsrrBwsjh8+jo9+6a0K3p6uzy8vTLzNG5usOqq7Sys7vr6+79/f3Z2d22t8Hm5umoqrKkpbDV1drF5ND19fV3v5BHqWnX2Nvv7/GanaDAwcSFiZZtcIHx8fNmaXvR0tTCw8aWmZ3o6OlJTWLl5eepqrSdn6qbnaiDhovU1dfHyM+Ulprh4uTb3N2Ii5h4e4pbX3Kdn6OAg5Jqbn88QFdvcoNhZHfe3+HFxsmDhZSIjJCztbhSVmvz+/fO0NHCxMq8v8a1trl8f46Ag4hzd4fR0tdeYnRVWW35+fm3ubufoaxxdYV2eX5QVGlGSmAyN08kKUPIycu5u76o17iusLOMj5xiZ3lMUGUfJD+YmqaOkZ6Rk5dobH1ucncpLkfg4eLd3t/Oz9XKy82+v8KLjpLt7e7j4+WprK+mqKtYXG9ARFs3PFSWmaSNyqOQkp+KjZqOkZV+gZB6fYx9gIVhZWvx+vXa29/Mzc/Fxsygoq1OU2dXXGFDR10tMku7vcChpKdzdntmam/j5OerrbCoqq12eYl4fICfoaWSlKCGiY1cs3pSVlzv+PTR6tqqrLVrbnNNrG+tr7JdYWfg6ObW19m+4cqUl6Pc3OGjpqnq8+6TlqKDxpuNkJRFSlGboarL6NXs9vHZ4eHM1NWwsrV6foNMUFba7uHV3d2ttbrm7+zf8eXI0NKzur9ndq603cKg1LOWnqcaHzvh6uuu2r7Cycyepa3S2trO19qWm7SnrbeRl7JmuIPd5eNRZK1quYaiprl7hrFebqpitoDn2tbczL6Eja9Tr3NBRUp0gK5XaKhOYqjs0WLbp0Tj5Nrcs76coLNLXqejvOPmwp1vvIrXumvQqmS3yuU8VKrHo6nZvaTCqY3ElGeUma7CfpO5goHRlHFGFWlDAAAh2klEQVR42uzcXU/yVgDA8WOQR0hRtIC4ZugFlvFiB9kiGYUsopAxBg1vhoQEQkA2CNAlU6sh3biYicg0cEGUycVcyEiWuJtFMu93u8RPse+xWkWwbM45Fdj6z3N8qu0Jyi/tsWgE8v9SknHNv08rkQ8wIHgw2Z8P2UPjWafJ/tnQTE1prsfUg0PDGZwpghf+oh4MaPqa6ibge4mm7tL0BfoxmAkCdrAgjxicdx815UnTntirfYaPndJ9Ytn+EmSqC3gzif3/ocFN8M+H4FHjKdOe/kjc8dzPg6D7WLeMfSAsRx8Iu/0844kwD08b/CM9bTD/ekFYUS5Ih5ZfN14z1qQj1QvCSnAolmR8LxdXhRlTvSCCHpGlpXG+V0m2tHQrIrgTAbeLOY8xoDomnYWEAenecshk453E/9/gmRkRzG5wdmhhMTwPX++c75/Uu/GuUdyX0sH5QM+JIrszYUE6q73sngX8v21nH68aYaYmZ4f3Ar7EHanCxluJd2FOW6LOQU4YtlTh2yznnS1nizOjV0V2t5IwIJ21nLlYFZnQ/33jJyiqvcyc7GyFNfHW8U4TRqOexDGKOmAUvogp0c3ozgLK9C6u1Bx5NWisueuwVTXxcNRYEdnCUfRdr1ezqxE7UDke3BHFLFJLPDovdVS8sVjT4zxGNc3NY3Sh7A273gRbRTjjJ3a3CaVAsFsn1kCPxzjgG0jn9pQv6BcICGXVA6aYbq9XYsA3kGZz2bDnkAGRhy2Aweh48CAD6rxeTe1fCgSVVCR9C8Iu5jDgG0hrmXEtPL7EvmQPuicIrAV8A6koYr/dYiluQNgLlnYe8A2kmhYWMyRLdyBL7Akyz4MMqNq8lr0lYUG6J8gAQBD9s4WAEQoZQ5g3+i7IPHwNIuuCsCeICLxyb6t0z5YZAqOT+YefwdiHn/eAaGFxF0R27QHPy18dRDfxjC2C0em973/86MPvuiCi21PkFmT8BkT06iATz5kVjFBjX/z+7QdQF0R+d80CPVesGfB38SDPlP4T+sdlpBdEC3NB5P0gi8UYiiFqdJrDW1wFfenXDW+j65ylFVJNAia1a13Pg/Q09sGvn33/k6ELIrpbRMDNXSGsZUAk3Gn+AzIfMkkC6+BeqlMn6GvSE8Tsm5yV1R2PAibLgXPsQRCT6QkCtdr1W8xlGj0Q68cfAMX3H4LbDDPdRaQLIprhgoiuMmj6quqkomX528i6s1wD+uiucUVNb6rkbyYB0MQWXJPyVkwP2mWHf2PCArfXklNmtDWHAWjh0GiG85kvAYgGAlNQdHNHjdTkC2LFspULslee/+ce2JGHZYlHRw9Eb9UDAH361yBiFkTImZZpmADyQdJJUfRVWpejaTrpIBtUxk374qQRABAh6VaTalydu+skfbVxduCTkNQ+cwy5YTZe0Vchy1VDDICfIneNVw2SxuYosnB8IOaCJAlbcNuSxAO7CWm5WtnEzir+3KEhGDhKFkq2N54DXxvDRHZb6jiUby1X8jZTqxTfjFcXtjeSrgQ2eiDd+kFE47IZieTk5B3hW1yQjbybcdSnqbAr53eRlUMqXCitOzM1Mk969NcgDWOS3niXPrikYNP2DYi/naDSCbJtJ0wZfyzgGANAEQktBwJn5+ThHCnF3DsGLsgaXogYcxulin0fz9pPy+nZFOHIHW6E7YT9vJTIW3LhtJPwFWivTUo3s6KDRFZab8abgY2IN+EcwTWECyJhQLS3ID6JzGLZzHhtZctb4H7BRhFMx9ecVFG9bzsnQ81Qi0ghkyo1eXUVZ0H2dW2yXt3y+8hVRfAGJAb5r6qZkCGQmFw0F0uzgClVWM4TIEnH5w7cf7aG4DPBOGq355w+5Wkg29B4LrIZNJcJHeXsRNK+lU/7PB5LJG2h8TBKh4jaaSiL2prxRAO3xAPofwlkSQDwtfFEwmKZrXu8s31rSCF2RB06KAMDUqRbWnymcFD04W0a99Oma5ANK0YXFhJxB+VwBW5AjpEKJZ5LqO2RaCqEljYnWZCzUt51STnmAqvA7eSeIej2etCH2g9PI5lkLhUn2pg7dGAPXQb2S0e53MFFPRVyYW5PqdQ4yZ3W30TseQl+WvLGveHTrD+D/SdARPdBKvuR3K5XyV16giRFZSeMdFsXws0ERQWK6QZFlrF8K5rffhsAwrYIPCRFrmEhiqRtqyWPvOECrgBFbZnXaIp0nhHUO9fXvqB1ocFMX3z3dJXZLeOAdDorYp1Vfuuohk20sYlYWlyHseIe8yGJ1lvC2kn2sJoxFtpk1nVDbTS/7X0IJHHxZssXbhL+y6YUcBozTbkUwGwYg/ZWEdXxAoZAhqnkNFTTQbXapwC4z/TMMTGDHugWkntnY2211fAeQLAFlxmBlmMmCMFQNWCOW9UDd8y1CMxtCLzXXuwH4dLsCm82TJat8jq7hYmDuGuiAya1NYsjfB/yEMhFiiCUlqMTuyUbAa/cxCNa4Wx13hnpG8OHQMSOi9lxoXDeoSzvgkfGv3TygiA9L2UJwd/Fg7D9Z0FUz+ihVoCRbWhAIMXzNT1KP6B6HIhECPgGkkE4w4MMU/dAxmU8yEDjglys8SADjQtSdTgqDnnLpxRJyoBvAHFBjiLVbQuxdSqU4IBvAHFBDgsFj8Uzn5rjQQYUF8RXyfm8l/ZZSRPwDSAOSCsdx+NSr98zI0lP8w2kj/j7kOGKvzEcsniQIYsHGbJ4kCGLBxmyeJAhiwcZsniQIYsHGbJ4kCGLBxmyeJAhiwcZsniQIevFQMas5vf0gO/FQFQLOvAXrbaR1T11sahD1O6OwXufrJi/Wh/h3yB8bIMCmc0Ht2Vfqib2oHWT+RjH9tAvIYN7eT2pAKBCQOGq8zR+UHHiCsCmWJ0066atal7kpUCy3rHoMS6/8LptwZPdnDKE24rb3hRev+iAEOfZTAcE0U1COpUb0o3SHx0Zjh4LkjMi2Coxa7F9WdqW1rYs2T1/uqFNbHq2AQinIF/cGbDR5x0QSAchkHUVUZlH6i8lDUOPBcFL7tBRoRy3oSKP/cxmsatCJw3U59yxX1/OdH6ps4LgwR4QML0CIV/zIC8Fsm6rZ7AoseFxFwinCn/j3W+6C4YTWJsAYMIWCWJiB5B639TrKQ1gYiTeXkQg9STgexkQoLeOAWRMDwDzRAMI0puhnn0K7uL96crXi9ZFNX+CDM19CKRaWVlR8DciQwPCx4P8N7oHIhSen5+vvaVUzknTgG8AcUDkcrlINCMRCt+aNYL7KdR8f5IVAQD88s37T+836GmXLPUf7N3vaxJhAMDxc2Qtb1KLNqdDMQvMqyyXdfbDOSwct1UWa+XaIEblojeb/SBMFk2dUDekbUQ/0MXGStk1N3axpWFQHOSLCflS8IWB+wP2H/Qoiza7lm1IN3m+/nzQV37g8fTxPAmMpS3ZlzMsWEchem0gKgTG0hYeuAquB0RbC0EgSOkGQTjWfwdB3cga681dS46U1grJShAtSLC8ZUMtOP0zCP+vIPu8yNrCHLmbo9Mb+H9h/gaiJUE/BylwZ5Ekw0vjTDh9eJlOMlQQyJm311vKBy62nH9w4ywrCIb7nGZv03ZP5JGqvtUv1DUjaDduuSrURfwNbsLQpfJZPoNFKbTeO3XpgMGiE3YFxqQuA95W56hrc17ldcwiJdVKkHlKTh9OBbWhVDoUVWgFthgtp0PJpDaUDMvDiXQ6mEkls48GaaBTAMjle0/OHT/bUn3ywtlXrCBVduNCjwHXGVqHjHb/QgPRjPBwZ9PLUbMbn/Lq9OP90277FIboTa0WgtA1ef1DDfjYUFvXiMvR4zSO9/W7kZIqb8qqjWYodDipEbaTGJMUJGgtI1eUlcXj1rI5kqbLNLR1WJGwDjPD1kwhIO8f371y/fwx2YU7H66zgvS2nfho7LHcGsdfb/GOOEdxn8luHsWIsdvEpIdQnTA7h/AvfkvA5BXq7c4GoXlkVtJmWTC67S6Hx4GP44YS2zjIe1Mno6kJKkZTlGaRqRUIEhMMaqOZuU9UfD4L8olkNLGYPBUmo+mCpqybLwYuv70MQAb+ANLtE3484LPgxCN/HeHonu4XSlU4YRwhOvWWWXt9hwl3NE51SKW+zmacsHcb7fbO3Wbzy66+Ly7HlKXR0/+mDimpfgNJTsRi8Xn5MMnYQoLEfCjG0PIYFU3kQJggxTDRGFkb1pAFTVk7zp87d/POgOzpk/strCD6DnRS9chvNI17sL43rkk9Aqas1yZDM2F5Y67vDAQaI4PeXgQ54Q8EDM86TWPGgInovTRoGpRGmiKDka5LJbZCkgcSTmQUlCZpo6hUgg4KFHFtQkNSVJikNJqwzUZryWg0rKCih+PRUEGbvZt2yjbt3SurrOSLWUEwDLFKMFQirEMRDEWsGAAxj1ahEut2VGjoaLWj6B6rBMDZd3tnseyzeFVWbKi+z1nFk1ireFiJeeSDaMHGbSi0dAH3s2cw0IJBLkFukHu0aB8M0WczEiTXjIGY+XlAqZ6I59fk9JAwNJfoWu5//2AIgyCcDoJwrGKD7AceAKQcgvwLSHpdIPFVQGSypSXcU9UiZGXSPTCWcr8mt2XW4bFIrQICjmC4d7NsJyBRivNAeNthLPEQUDulWXsxDP4MiNNBEI4FQTgWBOFYEIRjQRCOBUE4FgThWBCEY0EQjgVBOFahIIwCVpTmrWsDse2CFSXKtgrI1uzXvYADfN0rzgcpgxUled4C1RElP3fgvB07tm5FxGJxtehgTU3N89OnIQhrRQe5dvrmNiAgEgGM7E6fSrG6OrvT53MIwlrRQRoBh6haLT71js9HKisqsiZqNRCBIKwVHeRQjkPJ51dUVCLl5TkSpbr6YM3GA/n6rd34fa7dtft72QaKBQR4ZDnKy3MgQESpVItWBfnBzt2ENg2GARyH56oXPehkB60HvVXEUzWguSm60qYDoXGlFHeQJIo0kVKm1ySW0UEOluQ48JCdgkJWyJIIJl3CFmrTUuhtve0DFBU/UMGsrrqpBz82aSU/CLRvkueQ/yHJJfLc6YVjOAyY1vP1t29acndjA4bID0FOHYqe/M0gkWppebS6AD14x5IdpW4K/ViGvq2cJUPdlHWzBj+jWK1tO3D1u8b1Zn9BbcqwjdDs4P1z5GZvhKVA/fWtV58mVjY2LsAQ2YUgwplnEVlf2CqCtxGLL/hpuX+RbzThqzptQGvS3D+uwM94qfst+KrG1mGH/awKXzjFHQM6rLsVxKIVxIXAdQ+E+vm1tdXuSr0OQ2QXgiyVNueUlm8LsMlkXSlXLjcqotahuTGLYMSmL5KuE8eynSAInmeY/LyIuvN+JxlNIwYgk9krJH0xRpJ0rjHNeFnxbKtM5hJ38rhJOHE3bdJcrpmuJMjH5RMM4WZEFFUgg6QnnSyJZM4SV6mRGTHXGhNz2Zuz8TFWSbSva4CvX3q/tvru+fPXMET+PogwurQYeVq6vbCswya1mEqmKg3iioY9RCakE0Sb0lg/j8VumLx7tQNgUeSJtBNLzjw0Kt6ULQPD+KRHVNDGOH09kyPsqUJ6WnLmM5QBNS4m5pD2ZIPXsPvaTT5zViwnWVojFXCDxSTpUTFUs8Y9yq8UOaPgc0bcF226kZgA4c3ax1erL1+uqzBEdiXIUqn0CO8HEWJTBxFUQfM+lk86kou0MI8d8fjYbBOz7RoAjs446VahmJg5WvEkHICJNVAtn0OdVBBkNmdOaQVNsrSjlAUCjY1hWpQ1ea/iRKV0tIhqGpvaz2wGaXJF1C9rtGLQHmVPl0njcZSz4nZBzKm2BfiT92svXrx8u9KFIfL3QeBRNTK6JAjPbgvQY1NG9oaawah5oyLRVrGJHSpQU3YDpYpG0QAAIqHHeMp2JTTtSQDATKsJjplI8VgviJqkWIelWFOcFeABZXMNi5Bok3CiaBQdobi2fYdHgyAizzcQjLGRIIiJcOMOiyVNjI3bQVFAfOi8+vBitXvPWNdhiOzGTb26vBiJPKrOwQ5qDQc92HpqOoCu4NCHK2qwIGz7L4NQgy01GfC6ALIOW+Sa8O1nMFYGADeh4MFh+NcBwSaAoAO0eRMC196tdu8Gh6ycgyGyK4+9pepyKejxb7UOyvBzea1XSe1e7mUcuBekPQ8CwtO5uQiEBiZIKAzy3wqDDJgwyIAJgwyYPw6yeCy0F04/+7Mgi8dHQ3thad+vBgn9I2GQgbYjyMiBkQeH7x/ZDBJ+avyz6A8wIyTTxaZquk05KEJ6GUYBvQFmhFjxJwRKLi4ejRA6AcIRwtFjxRrgMxoh9AOEI2RNf+9ohNAHEI4QSw7XcAmrHaMRQj9AuNnLHy4OipAtDKOAHoBwhLCqj/ZDSAajHcPhC0YjZJABgIiOEKnhdsLrIAXERkiyVaDa8LppYpAClAi5DQYvgODdOzR1fiHLomrrRbfKaierhk7T9TKYpq26gDvZQ9c6eYqqkW7taP6hRYSwsYEuzgNv2RFHU+dbWsFZ35kcqBbiGOSYmpSQM6MjJ0U3KiglNtcyh99nGSPDKKBrhMhzFJeK5daX8IVsWdyfnJLpI1/iMkM7KtsxLoV9elAg8zA9uZogGLAICbTqCRLKmxDEXJIxoTc0JXNHshVPNmd2iKNFJkNtXogywyigb4RMiYoST6sIsVEtVstY49BbLhe6JTZA2SY4uL6cQaajmGEU0CRC7t67jiNCGLS4pYAEuqAUuDjL9mAYBTSJkBvvrl2/d/qx/rPTj0kww6l+tEqnTYQA2Lt/1zTCMIDjz0uaGnl7NcZf8KLcIB7pgVUEBZstevBSDCRYcfIIHIiho4Vzc+kkhi5ytzp1ctS/wt0KQW8QtIvdsnRq0pZSMbVgeM3BvZ/xbniHLy+8L+/weKfT6WQxXcy+ThfA7dp6kMntze3EWg7n1tICbtfWg4znX4azm7k1/jbnO2RHNu+QiX8ytmaj5WL2HbgtMDj2epe9/dwoGALuEdjfQ3BY4BgII7JdkFdCmGPhJLMhyPAPy+ITdnYDxTcEGf0yvseD7AaKb/FAtcsgRP739MnVHwxWJqsf4EEOC6KJlQqGFYdv4acTEVhyiQY9/as51lIReIizgvR9lJa0qNZU1XDmuYYj3qT7LF7xVwNSrwgsUYV6lRR1R5AkZWLg6rZ7rQxswD6IadZq+XxeUfRW66mCfNYTz0rlS3pdK1A9VE7XQ+eeC1HJZX16gXGQ9p4eVLOvj/frL7QCidG2txGAdWyDNFu6rih3FWqmaYvBkjrtfMS9cqARMfzvC2+OLgI4eZU7a3woaBrjINlg2fOpWC6L78zTc0Jpu5kA5lDc5pM+9dhg0M0W09cxRSpKZvIqZlaKRx6xX1MPGAeRIN2vN1RJVRPiZcdzF0RBsM5hQahoGCUjliz43a6mz52hkhg96EhuOlD3XgJL3QFEjNKxlE77jK4qSV0aVVOwzmFBZIyxLBO5H8VABAQEyYBlJBAiYMbHXgJEhvuVqojIVZnIBBNY57AgTsOD2AwPYjPbBulGOCaiWwZxIY6JFA9iLzyIzfAgNsOD2MyjghweCuh/wqkw+k1A3A/2zq51aSgM4Ofc9MIaWWSU1JVdpFFBoBvVXrDa0FUryLXFYNjbyi42BlEmyqZ/vYgyJnlh+ZJLESExJCT0SvssfY+WRFGEFZZF+IMNPRvnOduPA+dwznj+qJDNPN8x4WK8BqYcgHPCzmH467xQh+hhPb4PjdNwtXgtK+AlcS/cv+gh/yUhh95RTBPlhACa1Q57CTm7L0Je83CEFj5BVLxhU/ZAaJT5hnRMFsJoyKqyMSGyjw7DXyE17WZLSimiMNfgalFHrajRahVZcQwX8C8J6RGD8kZ1kj5c7qUz7ye9WHry3rQnk3a9947CJhMd7qt2YJhWJ5M+924yEfqTSayrwF/h8KGk3D7BVE4UCLhaAmEjkctydt4U98EFrFDIjh3zpGBH5knBviNk0n89M193y3S/Uc80uKrSYLsNZmD0Wk3baLcbbeitKvsOx9I8WaUYrWdUxaqcCcBfAI1YDWV2rCuvXMi+/NOonchmEvv/qpB5lraPS7jbduwAblZJN63k9lu33FXc7/YQTmoSr22bttPl+OtOT0vX0yVG0nvSrNlPpJM8hKW0Y6vdBFUt9LF3yutEOoSH4C/g4TMJy/WcWb0QhTCTXZJMef6qkGtn3NXb7dv3HD16dLebevWgu3lxi9tLTu3+jpAXucOHSgGeUfZjTDH2uot97OOxlinnzHEX13IiByEdtTE/V2IsOppjDhWYUX5Qgb+CRNX9Narm9QpxuFpYjMJDfCcLOQMuwZJCQnvdFIY7dm3atGnn1sVCviGW8MI1/5AQL7cPrvmHhKxZC/kv+Qkht++thSxglUIevtr28M2ZO/e3Pzq9FrKAlQk5fvvcg4s37t6/fvLSafA1fmTNHwFdJGTP+buP7l25+/j5pTuP15scVgNcJOTylcvPnt29e//uhRsn10IWsCohZ1/dO3f70qOjt568vbEWshrg4lHW0ZdXz3wc9u69sBaygNUJObhly6d5yFrIaoA/nIeshSzkXxJSY5IJBcL5/vSbCOKDEDErABAiymLZJJMo5LEIAMEgWIaCF0G0gHzMrRwg0BdEPNIJKw+RoBsSBPd9LETCNTe2DwCfW4TcDAYR6J7BsgjZm8ihwxtDBN70ucF8CNjAh6xbN3ALAIQfj2ABzEPNw96EPgRCBPlrQjbwcpHE+KFQrAlUAWf5jpZo3ARk+ZjQJno6VuWSWRBkK0u10C4YXENJyHUVDxt6LKRt4PmEqRTjpiqhpKpD0nD89dBUzwCQldT8QJUzzqAg4WBZBtjUogqFlKQqIaGm7hc8AoGZrakQK+hxzm1LtmUcElFLEgAIKzW5UpMyuFSXVM/fEgL8aY20k/VSVZo5TKKUYERRRD4JeZcuNyIfhWj4ckIqDMHIpUqfYKx+LROIsYTAU2ZXibJRK8rlOGzY8PNRQy8AX1IY6ONDI4tRomZ/6S7SMrQET9YwhsRFZlo7EYNUxuFHVjGqaooo43hKNiwx0sVtAIzioQE/NIsY0Z6O6b8pZPSuyefG8QYtzGblNJXqAKC99lpJtjrslF8ks/PvXpZhjI6JcRxjZyjDqmUcIBYbjaTCoxaFOHwdYOQIpPxUVyypwFPd71NItKMbhOovI2BJpkPaHhFaPRfJMtfazWMg0h2yYzYjtQ/ECknA1WzAmiLXL40BEjXBYelYAJseSLHUxl8TEmiYVNLGStQJ0e4zvJ1S67ObINBnkhT3OkY2481Z17IUCJYgiqbYlJYSyqoo8IoQ0ov+kRczkjpliaEoKdIppRmod6YqaQZyDkUmLIeUWD3QXFqIFKKZllQp2YMiVtAoTuMJgtVzxU6dl3BMMgTewfQxndI73oqesuoY2VKkA9QQe/HXhHhwOuaopimjTrJN+QcDmhvcBIBzjMgJ9QSt5KVWixjKS70aGakEZE0gm61DqGTQcZL1clCnGvGQoyFykThWxNqeoX9g5OV82JBv1hyO5gIZjx4ES5LNHxM2lLzS7igHiKJwooIjG/lMriSFB1N6v6PkhVSJNJFKMXSMQGsGzTlSOAuJPHHgrw57ffNa8FyOAz7fp7/uj9+LDwTqwS8JABATayEgOL+A6p3a55AfT8HfHBkd5H1fas3znew8mHuEOs7G50bN7/l35iEf2Lmf1zbBMIDjPFCWjE3ICl6G2aUe5kYvgRoh+AMPivWQUyUBIXgKeEnIrchksdVjIAEPQhrXkjA8hEkOOaynxn9sdtma0TFIWiyuvB/wpKDwBUHe9/FtOoCZrQ//ul22k5h/Fd78ACVN8etUXr5DkBQK8syhIDmDguTM1kHQEu4Wsl7C3dvb399//65YTIugTQ5byGKTQ7rPulh8kYZ4uYdG2naRg/kQBAAFee5QkJx5TBCaYbRzWPMFX4Q7NEXALUyuQYVlGLUED3Z4guEyLjDdE4JmuEPc5zgft7vjcwKyptMgCzjb6tAY25ZJm+M4gey0WQz+kKMgH5PhKIS1eefbAn4jmjwJt2rGJ6BWxipkH/6A3oQSpZOJpk/lq5Y8PGhwsio7rG8sIGPHUQ8MhqnaPUdTbFer1uVFeTmzv1YJ2MhTkKjvxcIq5KmhlXCSN59eTEOlY1oNKdbNUFEtK0qDTL/1Jhdz+7R70YTdfWmYrGh4VwC9y4u67hekrr9oj4lSc0xAprDBzCgPW3UZKOWywbFClfd1YX4GhbAMd3IV5NqMTX/0faRanYgxq0GLt/jAOJVny8E4UeZeoI3SIKYhWUx8Y6ifWdgdNzGWosG3AMauXHdOj82G4jb7QHS7GQcRQne1GN4oKpTr2s2p4/MThT+a14AMz2AjT0Ei3w3ZcKnYFncbZEQvzcuB42jOUhonXrUXMLdBpn1u1JzFA1xWYXdKvzM9MRjnIH1XVe1D88hhCxTjUSL/GbLV9/QrZti97Nf0rx5Tbrd5t1AgVzrdliqwkasgth+J06R+ZgY/g5DqJJmxYdLmAt9MFHEUB2kQ8/q6cSBGLkg87Eyc4oTkGuc3UeySWhzXhXkUWLYSj1o4ZIocHIFenzC2GViqMIlNuZoEASeHgXQGG3kKslYiCShVYA2nAcj0qBAEjQGG3110FR7Do+A0AVAj4ZcyCU8FozCA0gEGaxWagD/lLshWSksNkBwFQVCQ/xQKkjMoSM5sGeTN/SAUjmSCpu8FeV3cKsgrDMkEvN02CPJEUJAf7dhNi9pAGMDxhZohASFkDMnk0t6awIJ78hDxIkbwkCzKCgFhQRYDir1JifgFLOKynlbvC36G/Xidecw6rT2F1ryU+d8Gkkt+PHlICp0AKVgCpGAJkIIlQArWBUhNgOQcB/kkQIoQBfl8CeIIkPy61SgITkBqNQVj7OiyVhUg+QT/smTHwdSkdqMoGCEka9TDvhHlUsOWqpqsI+QoSgKiywIkvxpSAoIBRBEgOdegHpqMziCYgchVSeyQnLqFAbkAYSPS672yHllfRFftEXql9XpfP0AUAOHvLEmyDMO8I4SomRfPQu98WC7VMjRdus97NUX7rTtVj/SeOKYnQu5M07Bs2CDJTucgJxGbieRC4rdb/mYfH72u1900XbUMxdFkkAqkv76fhKPDatF+UAnzMMADBgR2egKCExAQARIwybRxcz2Plq3RYOavgsmGlKF4GIYkTd1FMAzGJIp3ATFpv3sgBUBYiKbDtwiQ1A1AybSWO9y0Zt8OP8bhejEkZhmavvjR1EwR2bxNdn0zMv3AoNWtzskjWekcBAPIh4jdsVhGpn3fDryHoOXeb+cDf2eUIq95bO9TXG/2g/fDyypcG/6OPuAO4+AeSOEgisNFgARMsmwZeS7xu2/Rs9dezN6tUmTu5qGVJm81OpLZumvFW8u2TxzgkQwIB8HoJMIWCZhknetLSYsn84lIJcmW/i7ggPkAjwSEiwCJRlEyZ4HlBnU6Ul3676tCGnDoAKIkIBUuAiRgcq4q+udpPJlxIAhzkD9EIE103WSWTuMctMpNhYs4CNJZsujK6RAfDw4CIhDGSJR9+BcPAAERTuI4SJRNDmjwqMVPXkMYS8/oWKYAAAAASUVORK5CYII=\" />\r\n<br><br>\r\nWe\'ve also added a number of improvements to sitemaps, including the last generated date and a custom 404 page.\r\n<br><br>\r\nUpdate to AIOSEO 4.1.5 today and take advantage of these enhancements!', 'info', '[\"4-x\",\"lite\"]', 110, NULL, '2021-11-29 14:30:39', NULL, 'Learn More', 'https://aioseo.com/introducing-our-redirect-testing-tool-new-enhancements-to-our-sitemaps/?utm_source=WordPress&utm_campaign=redirects-testing-tool-v4-lite&utm_medium=plugin-notification&utm_content=Learn More', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_campaign=redirects-testing-tool-v4-lite&utm_medium=plugin-notification&utm_content=Get AIOSEO Pro', 0, 0, '2021-12-12 02:22:44', '2021-12-12 02:22:44'),
(3, '623c9ef670f45', '📢 Announcing 4.1.8: Improved Site Redirects and Modified Date for Posts 📢', 'Redirects have never been easier! Our 4.1.8 update comes with a powerful feature that enables you to implement a redirect from right within a post.\r\n<br><br>\r\nWe’ve also added a \"limit modified date\" feature that allows you to make minor edits to posts/pages and keep the date the same.\r\n<br><br>\r\nUpdate to AIOSEO 4.1.8 today and enjoy these 2 powerful features and more.', 'success', '[\"4-x\",\"lite\"]', 241, NULL, '2022-03-01 16:19:06', NULL, 'Learn More', 'https://aioseo.com/announcing-improved-site-redirects-and-modified-date-for-posts/?utm_source=WordPress&utm_campaign=introducing-on-page-redirects-and-limit-modified-date-v4-lite&utm_medium=plugin-notification&utm_content=Learn More', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_campaign=introducing-on-page-redirects-and-limit-modified-date-v4-lite&utm_medium=plugin-notification&utm_content=Get AIOSEO Pro', 0, 0, '2022-03-24 16:40:22', '2022-03-24 16:40:22'),
(4, '623c9ef673d34', '🎉 Introducing IndexNow and Page Builder Integrations', 'Check out the fantastic new features in AIOSEO 4.1.7! First, we have IndexNow, a feature that gets your new or updated content indexed faster on Bing and Yandex (with more search engines to follow).\r\n<br><br>\r\nWe’ve also integrated AIOSEO with 3 major page builders, namely Elementor, Divi and SeedProd. Now you can work on your SEO right from within your page builder.\r\n<br><br>\r\nGet AIOSEO Pro today and up your SEO game without breaking a sweat!', 'success', '[\"4-x\",\"lite\"]', 223, NULL, '2022-03-01 16:19:06', NULL, 'Learn More', 'https://aioseo.com/introducing-indexnow-and-page-builder-integrations-in-aioseo-4-1-7/?utm_source=WordPress&utm_campaign=index-now-v4-lite&utm_medium=plugin-notification&utm_content=Learn More', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_campaign=index-now-v4-lite&utm_medium=plugin-notification&utm_content=Get AIOSEO Pro', 0, 0, '2022-03-24 16:40:22', '2022-03-24 16:40:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_aioseo_posts`
--

CREATE TABLE `wp_y5c34k_aioseo_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `keywords` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `keyphrases` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `page_analysis` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `canonical_url` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `og_title` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `og_description` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `og_object_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `og_image_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `og_image_url` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `og_image_width` int(11) DEFAULT NULL,
  `og_image_height` int(11) DEFAULT NULL,
  `og_image_custom_url` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `og_image_custom_fields` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `og_video` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `og_custom_url` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `og_article_section` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `og_article_tags` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_use_og` tinyint(1) DEFAULT 0,
  `twitter_card` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `twitter_image_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `twitter_image_url` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_custom_url` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_custom_fields` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_description` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `seo_score` int(11) NOT NULL DEFAULT 0,
  `schema_type` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `schema_type_options` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pillar_content` tinyint(1) DEFAULT NULL,
  `robots_default` tinyint(1) NOT NULL DEFAULT 1,
  `robots_noindex` tinyint(1) NOT NULL DEFAULT 0,
  `robots_noarchive` tinyint(1) NOT NULL DEFAULT 0,
  `robots_nosnippet` tinyint(1) NOT NULL DEFAULT 0,
  `robots_nofollow` tinyint(1) NOT NULL DEFAULT 0,
  `robots_noimageindex` tinyint(1) NOT NULL DEFAULT 0,
  `robots_noodp` tinyint(1) NOT NULL DEFAULT 0,
  `robots_notranslate` tinyint(1) NOT NULL DEFAULT 0,
  `robots_max_snippet` int(11) DEFAULT NULL,
  `robots_max_videopreview` int(11) DEFAULT NULL,
  `robots_max_imagepreview` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT 'large',
  `tabs` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `images` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_scan_date` datetime DEFAULT NULL,
  `priority` tinytext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `frequency` tinytext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `videos` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `video_thumbnail` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `video_scan_date` datetime DEFAULT NULL,
  `local_seo` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_aioseo_posts`
--

INSERT INTO `wp_y5c34k_aioseo_posts` (`id`, `post_id`, `title`, `description`, `keywords`, `keyphrases`, `page_analysis`, `canonical_url`, `og_title`, `og_description`, `og_object_type`, `og_image_type`, `og_image_url`, `og_image_width`, `og_image_height`, `og_image_custom_url`, `og_image_custom_fields`, `og_video`, `og_custom_url`, `og_article_section`, `og_article_tags`, `twitter_use_og`, `twitter_card`, `twitter_image_type`, `twitter_image_url`, `twitter_image_custom_url`, `twitter_image_custom_fields`, `twitter_title`, `twitter_description`, `seo_score`, `schema_type`, `schema_type_options`, `pillar_content`, `robots_default`, `robots_noindex`, `robots_noarchive`, `robots_nosnippet`, `robots_nofollow`, `robots_noimageindex`, `robots_noodp`, `robots_notranslate`, `robots_max_snippet`, `robots_max_videopreview`, `robots_max_imagepreview`, `tabs`, `images`, `image_scan_date`, `priority`, `frequency`, `videos`, `video_thumbnail`, `video_scan_date`, `local_seo`, `created`, `updated`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default', 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'default', 'default', NULL, NULL, NULL, NULL, NULL, 0, 'default', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'large', NULL, NULL, '2021-12-12 02:22:44', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-12 02:22:44', '2021-12-12 02:22:44'),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default', 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'default', 'default', NULL, NULL, NULL, NULL, NULL, 0, 'default', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'large', NULL, NULL, '2021-12-12 02:22:44', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-12 02:22:44', '2021-12-12 02:22:44'),
(3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default', 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'default', 'default', NULL, NULL, NULL, NULL, NULL, 0, 'default', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'large', NULL, NULL, '2021-12-12 02:22:44', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-12 02:22:44', '2021-12-12 02:22:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_commentmeta`
--

CREATE TABLE `wp_y5c34k_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_comments`
--

CREATE TABLE `wp_y5c34k_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_comments`
--

INSERT INTO `wp_y5c34k_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-12-12 01:13:42', '2021-12-12 01:13:42', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_links`
--

CREATE TABLE `wp_y5c34k_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_options`
--

CREATE TABLE `wp_y5c34k_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_options`
--

INSERT INTO `wp_y5c34k_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.sistematizaciondatos.com', 'yes'),
(2, 'home', 'http://www.sistematizaciondatos.com', 'yes'),
(3, 'blogname', 'Just another WordPress site', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'luchofelipe20002000@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:132:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:13:\"^attribution$\";s:36:\"index.php?bg_attribution=attribution\";s:21:\"^attribution-staging$\";s:44:\"index.php?bg_attribution=attribution-staging\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:42:\"bg_attribution/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"bg_attribution/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"bg_attribution/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"bg_attribution/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"bg_attribution/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"bg_attribution/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"bg_attribution/([^/]+)/embed/?$\";s:47:\"index.php?bg_attribution=$matches[1]&embed=true\";s:35:\"bg_attribution/([^/]+)/trackback/?$\";s:41:\"index.php?bg_attribution=$matches[1]&tb=1\";s:43:\"bg_attribution/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?bg_attribution=$matches[1]&paged=$matches[2]\";s:50:\"bg_attribution/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?bg_attribution=$matches[1]&cpage=$matches[2]\";s:39:\"bg_attribution/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?bg_attribution=$matches[1]&page=$matches[2]\";s:31:\"bg_attribution/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"bg_attribution/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"bg_attribution/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"bg_attribution/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"bg_attribution/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"bg_attribution/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"bg-block-types/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?bg_block_type=$matches[1]&feed=$matches[2]\";s:50:\"bg-block-types/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?bg_block_type=$matches[1]&feed=$matches[2]\";s:31:\"bg-block-types/([^/]+)/embed/?$\";s:46:\"index.php?bg_block_type=$matches[1]&embed=true\";s:43:\"bg-block-types/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?bg_block_type=$matches[1]&paged=$matches[2]\";s:25:\"bg-block-types/([^/]+)/?$\";s:35:\"index.php?bg_block_type=$matches[1]\";s:36:\"bg-block/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"bg-block/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"bg-block/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"bg-block/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"bg-block/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"bg-block/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"bg-block/([^/]+)/embed/?$\";s:41:\"index.php?bg_block=$matches[1]&embed=true\";s:29:\"bg-block/([^/]+)/trackback/?$\";s:35:\"index.php?bg_block=$matches[1]&tb=1\";s:37:\"bg-block/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?bg_block=$matches[1]&paged=$matches[2]\";s:44:\"bg-block/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?bg_block=$matches[1]&cpage=$matches[2]\";s:33:\"bg-block/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?bg_block=$matches[1]&page=$matches[2]\";s:25:\"bg-block/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"bg-block/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"bg-block/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"bg-block/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"bg-block/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"bg-block/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";i:1;s:39:\"boldgrid-easy-seo/boldgrid-easy-seo.php\";i:2;s:31:\"boldgrid-gallery/wc-gallery.php\";i:3;s:47:\"boldgrid-inspirations/boldgrid-inspirations.php\";i:4;s:25:\"dreamhost-panel-login.php\";i:5;s:63:\"post-and-page-builder-premium/post-and-page-builder-premium.php\";i:6;s:47:\"post-and-page-builder/post-and-page-builder.php\";i:7;s:27:\"wp-super-cache/wp-cache.php\";i:8;s:24:\"wpforms-lite/wpforms.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyone', 'yes'),
(41, 'stylesheet', 'twentytwentyone', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1654823622', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_y5c34k_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"aioseo_manage_seo\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '1', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'wpforms_shareasale_id', '1343014', 'yes'),
(105, 'cron', 'a:10:{i:1654214566;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1654215155;a:1:{s:11:\"wp_cache_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1654215226;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1654218825;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654218826;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1654223890;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654227958;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654478026;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1654524000;a:1:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:30:\"wpforms_email_summaries_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'action_scheduler_hybrid_store_demarkation', '4', 'yes'),
(107, 'schema-ActionScheduler_StoreSchema', '4.0.1639271626', 'yes'),
(108, 'schema-ActionScheduler_LoggerSchema', '2.0.1639271626', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_aioseo-breadcrumb-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'widget_aioseo-html-sitemap-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(123, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(127, 'aioseo_dynamic_settings_backup', '{}', 'yes'),
(128, 'aioseo_options_internal', '{\"internal\":{\"validLicenseKey\":null,\"lastActiveVersion\":\"4.1.6.2\",\"migratedVersion\":\"0.0\",\"siteAnalysis\":{\"connectToken\":null,\"score\":0,\"results\":null,\"competitors\":[]},\"headlineAnalysis\":{\"headlines\":[]},\"wizard\":null,\"category\":null,\"categoryOther\":null,\"deprecatedOptions\":[]},\"integrations\":{\"semrush\":{\"accessToken\":null,\"tokenType\":null,\"expires\":null,\"refreshToken\":null}},\"database\":{\"installedTables\":\"{\\\"wp_y5c34k_aioseo_posts\\\":[\\\"id\\\",\\\"post_id\\\",\\\"title\\\",\\\"description\\\",\\\"keywords\\\",\\\"keyphrases\\\",\\\"page_analysis\\\",\\\"canonical_url\\\",\\\"og_title\\\",\\\"og_description\\\",\\\"og_object_type\\\",\\\"og_image_type\\\",\\\"og_image_url\\\",\\\"og_image_width\\\",\\\"og_image_height\\\",\\\"og_image_custom_url\\\",\\\"og_image_custom_fields\\\",\\\"og_video\\\",\\\"og_custom_url\\\",\\\"og_article_section\\\",\\\"og_article_tags\\\",\\\"twitter_use_og\\\",\\\"twitter_card\\\",\\\"twitter_image_type\\\",\\\"twitter_image_url\\\",\\\"twitter_image_custom_url\\\",\\\"twitter_image_custom_fields\\\",\\\"twitter_title\\\",\\\"twitter_description\\\",\\\"seo_score\\\",\\\"schema_type\\\",\\\"schema_type_options\\\",\\\"pillar_content\\\",\\\"robots_default\\\",\\\"robots_noindex\\\",\\\"robots_noarchive\\\",\\\"robots_nosnippet\\\",\\\"robots_nofollow\\\",\\\"robots_noimageindex\\\",\\\"robots_noodp\\\",\\\"robots_notranslate\\\",\\\"robots_max_snippet\\\",\\\"robots_max_videopreview\\\",\\\"robots_max_imagepreview\\\",\\\"tabs\\\",\\\"images\\\",\\\"image_scan_date\\\",\\\"priority\\\",\\\"frequency\\\",\\\"videos\\\",\\\"video_thumbnail\\\",\\\"video_scan_date\\\",\\\"local_seo\\\",\\\"created\\\",\\\"updated\\\"],\\\"wp_y5c34k_actionscheduler_actions\\\":[],\\\"wp_y5c34k_actionscheduler_logs\\\":[],\\\"wp_y5c34k_actionscheduler_groups\\\":[],\\\"wp_y5c34k_actionscheduler_claims\\\":[],\\\"wp_y5c34k_aioseo_notifications\\\":[]}\"}}', 'yes'),
(129, 'aioseo_options_internal_lite', '{\"internal\":{\"activated\":0,\"firstActivated\":1639276693,\"installed\":0,\"connect\":{\"key\":null,\"time\":0,\"network\":false,\"token\":null}}}', 'yes'),
(130, 'wp_super_cache_index_detected', '3', 'yes'),
(131, 'boldgrid_settings', 'a:2:{s:7:\"library\";a:2:{s:47:\"post-and-page-builder/post-and-page-builder.php\";s:8:\"2.13.5.0\";s:47:\"boldgrid-inspirations/boldgrid-inspirations.php\";s:8:\"2.13.4.0\";}s:15:\"plugins_checked\";a:7:{s:39:\"boldgrid-easy-seo/boldgrid-easy-seo.php\";a:1:{s:6:\"1.6.10\";i:1648140029;}s:31:\"boldgrid-gallery/wc-gallery.php\";a:1:{s:5:\"1.5.1\";i:1648140029;}s:47:\"boldgrid-inspirations/boldgrid-inspirations.php\";a:1:{s:5:\"2.6.4\";i:1648140029;}s:47:\"post-and-page-builder/post-and-page-builder.php\";a:2:{s:6:\"1.15.0\";i:1639271679;s:6:\"1.16.0\";i:1648140029;}s:63:\"post-and-page-builder-premium/post-and-page-builder-premium.php\";a:1:{s:5:\"1.0.5\";i:1648140029;}s:35:\"boldgrid-backup/boldgrid-backup.php\";a:1:{s:7:\"1.14.13\";i:1648140029;}s:51:\"boldgrid-backup-premium/boldgrid-backup-premium.php\";a:1:{s:5:\"1.5.9\";i:1648140029;}}}', 'yes'),
(132, 'boldgrid_editor', 'a:5:{s:17:\"activated_version\";s:6:\"1.15.0\";s:19:\"has_flushed_rewrite\";b:1;s:15:\"preview_page_id\";i:16;s:14:\"default_editor\";a:4:{s:4:\"post\";s:5:\"bgppb\";s:4:\"page\";s:5:\"bgppb\";s:14:\"bg_attribution\";s:7:\"default\";s:8:\"bg_block\";s:5:\"bgppb\";}s:5:\"setup\";a:1:{s:8:\"template\";a:1:{s:6:\"choice\";s:9:\"fullwidth\";}}}', 'yes'),
(133, 'widget_boldgrid_component_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(134, 'widget_boldgrid_component_page_title', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(135, 'widget_boldgrid_component_site_title', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(136, 'widget_boldgrid_component_site_description', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(137, 'widget_boldgrid_component_logo', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(138, 'widget_boldgrid_component_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(139, 'widget_boldgrid_component_postlist', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(150, 'boldgrid_inspirations_activated_version', '2.6.4', 'no'),
(151, 'boldgrid_inspirations_current_version', '2.6.4', 'no'),
(152, 'boldgrid_attribution_upgraded_to_cpt', '1', 'yes'),
(158, 'boldgrid_easy_seo_version', '1.6.10', 'no'),
(161, 'boldgrid_api_key', 'ccff60f0222f8af3362d56aa13e8d007', 'yes'),
(169, 'boldgrid_site_hash', '67ec663d31020091737cb666dfbd8175', 'no'),
(176, 'wpforms_version_lite', '1.7.1.2', 'yes'),
(179, 'boldgrid_asset', 'a:3:{s:6:\"plugin\";a:0:{}s:5:\"theme\";a:0:{}s:5:\"image\";a:0:{}}', 'yes'),
(180, 'action_scheduler_lock_async-request-runner', '1648142695', 'yes'),
(182, 'wpsupercache_gc_time', '1654214555', 'yes'),
(183, 'theme_mods_twentytwentyone', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(184, 'wpsc_feed_list', 'a:0:{}', 'yes'),
(185, 'boldgrid_attribution_rebuild', '1', 'yes'),
(194, 'recovery_keys', 'a:0:{}', 'yes'),
(195, 'action_scheduler_migration_status', 'complete', 'yes'),
(196, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(204, 'wpforms_admin_notices', 'a:1:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1639276691;s:9:\"dismissed\";b:0;}}', 'yes'),
(205, 'boldgrid_gallery_current_version', '1.5.1', 'yes'),
(206, 'boldgrid_pointers', 'a:4:{i:0;a:6:{s:2:\"id\";s:37:\"boldgrid_image_search_internal_only_8\";s:6:\"screen\";s:4:\"page\";s:6:\"target\";s:19:\"#media-search-input\";s:5:\"title\";s:12:\"Image search\";s:7:\"content\";s:222:\"<em>This search function</em> helps you find images you\'ve already uploaded to your Media Library. If you would like to search the web for new images, click the <strong>BoldGrid Connect Search</strong> tab in the top menu.\";s:8:\"position\";a:2:{s:4:\"edge\";s:5:\"right\";s:5:\"align\";s:6:\"middle\";}}i:1;a:6:{s:2:\"id\";s:49:\"boldgrid_media_library_image_search_internal_only\";s:6:\"screen\";s:6:\"upload\";s:6:\"target\";s:19:\"#media-search-input\";s:5:\"title\";s:12:\"Image search\";s:7:\"content\";s:222:\"<em>This search function</em> helps you find images you\'ve already uploaded to your Media Library. If you would like to search the web for new images, click the <strong>BoldGrid Connect Search</strong> tab in the top menu.\";s:8:\"position\";a:3:{s:4:\"edge\";s:3:\"top\";s:5:\"align\";s:6:\"middle\";s:17:\"open_on_page_load\";b:0;}}i:2;a:6:{s:2:\"id\";s:38:\"boldgrid_image_size_do_you_need_help_8\";s:6:\"screen\";s:12:\"media-upload\";s:6:\"target\";s:11:\"#image_size\";s:5:\"title\";s:10:\"Image size\";s:7:\"content\";s:33:\"Need help choosing an image size?\";s:8:\"position\";a:2:{s:4:\"edge\";s:5:\"right\";s:5:\"align\";s:6:\"middle\";}}i:3;a:6:{s:2:\"id\";s:29:\"boldgrid_customization_widget\";s:6:\"screen\";s:9:\"dashboard\";s:6:\"target\";s:21:\"#customization_widget\";s:5:\"title\";s:35:\"Begin customizing your new website!\";s:7:\"content\";s:130:\"Congratulations, you&#039;ve just installed your new website! Below you&#039;ll find tips to help you begin customizing your site.\";s:8:\"position\";a:2:{s:4:\"edge\";s:6:\"bottom\";s:5:\"align\";s:6:\"middle\";}}}', 'yes'),
(207, 'boldgrid_inspirations_redirect', '1639276693', 'yes'),
(212, 'wpforms_notifications', 'a:4:{s:6:\"update\";i:1649238639;s:4:\"feed\";a:3:{i:0;a:6:{s:5:\"title\";s:39:\"Introducing Form Revisions + Form Trash\";s:7:\"content\";s:340:\"WPForms now includes awesome features to help you guard against mistakes and manage your forms more easily. Form revisions make it easy to go back in time and restore a previous version of any form! You can also move forms to the trash instead of permanently deleting them. Read the announcement on our blog to see these features in action!\";s:4:\"type\";a:1:{i:0;s:4:\"lite\";}s:2:\"id\";i:142;s:4:\"btns\";a:2:{s:4:\"main\";a:2:{s:3:\"url\";s:209:\"https://wpforms.com/introducing-wpforms-1-7-3-form-revisions-form-trash-and-more/?utm_source=WordPress&utm_campaign=liteplugin&utm_medium=Plugin%20Notification&utm_content=WPForms%201.7.3%20Lite%20Learn%20More\";s:4:\"text\";s:10:\"Learn More\";}s:3:\"alt\";a:2:{s:3:\"url\";s:164:\"https://wpforms.com/wpforms-lite-upgrade/?utm_source=WordPress&utm_campaign=liteplugin&utm_medium=Plugin Notification&utm_content=WPForms 1.7.3 Lite Get WPForms Pro\";s:4:\"text\";s:15:\"Get WPForms Pro\";}}s:5:\"start\";s:19:\"2022-03-22 11:15:27\";}i:1;a:6:{s:5:\"title\";s:30:\"NEW! HubSpot Addon for WPForms\";s:7:\"content\";s:298:\"<span style=\"font-weight: 400;\">Our NEW HubSpot addon makes it easy to send leads from your forms directly to your HubSpot CRM! Send form entries, map custom properties, set contact owners, and more. Upgrade to WPForms Elite and start sending leads from WordPress to HubSpot… the easy way!</span>\";s:4:\"type\";a:1:{i:0;s:4:\"lite\";}s:2:\"id\";i:137;s:4:\"btns\";a:2:{s:4:\"main\";a:2:{s:3:\"url\";s:181:\"https://wpforms.com/announcing-hubspot-addon-wpforms/?utm_source=WordPress&utm_campaign=liteplugin&utm_medium=Plugin%20Notification&utm_content=HubSpot%20Addon%20Lite%20Learn%20More\";s:4:\"text\";s:10:\"Learn More\";}s:3:\"alt\";a:2:{s:3:\"url\";s:178:\"https://wpforms.com/wpforms-lite-upgrade/?utm_source=WordPress&utm_campaign=liteplugin&utm_medium=Plugin%20Notification&utm_content=HubSpot%20Addon%20Lite%20Get%20WPForms%20Elite\";s:4:\"text\";s:17:\"Get WPForms Elite\";}}s:5:\"start\";s:19:\"2022-03-22 11:15:27\";}i:2;a:6:{s:5:\"title\";s:38:\"User Registration Just Got 10X Better!\";s:7:\"content\";s:305:\"Our User Registration addon got a HUGE upgrade! Now Pro customers can register new users on ANY form, create password reset forms, edit registration emails easily, use conditional logic for user registrations, and much more! PLUS: We added 3 new form templates for this addon so you can get started today!\";s:4:\"type\";a:1:{i:0;s:4:\"lite\";}s:2:\"id\";i:132;s:4:\"btns\";a:2:{s:4:\"main\";a:2:{s:3:\"url\";s:190:\"https://wpforms.com/introducing-the-updated-user-registration-addon/?utm_source=WordPress&utm_campaign=liteplugin&utm_medium=Plugin Notification&utm_content=User Registration Lite Learn More\";s:4:\"text\";s:10:\"Learn More\";}s:3:\"alt\";a:2:{s:3:\"url\";s:168:\"https://wpforms.com/wpforms-lite-upgrade/?utm_source=WordPress&utm_campaign=liteplugin&utm_medium=Plugin Notification&utm_content=User Registration Lite Get WPForms Pro\";s:4:\"text\";s:15:\"Get WPForms Pro\";}}s:5:\"start\";s:19:\"2021-12-20 00:00:00\";}}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(213, '_transient_wpforms_htaccess_file', 'a:3:{s:4:\"size\";i:737;s:5:\"mtime\";i:1639276698;s:5:\"ctime\";i:1639276698;}', 'yes'),
(220, 'finished_updating_comment_type', '1', 'yes'),
(257, 'boldgrid_customizer_first_use', '2021-12-12 03:46:11', 'yes'),
(262, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(589, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1639619767;}', 'yes'),
(602, 'wpforms_email_summaries_fetch_info_blocks_last_run', '1654214555', 'yes'),
(603, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":5,\"critical\":1}', 'yes'),
(11880, 'db_upgraded', '', 'yes'),
(11895, 'aioseo_options', '{\"internal\":[],\"webmasterTools\":{\"google\":null,\"bing\":null,\"yandex\":null,\"baidu\":null,\"pinterest\":null,\"alexa\":null,\"norton\":null,\"miscellaneousVerification\":null},\"breadcrumbs\":{\"enable\":true,\"separator\":\"&raquo;\",\"homepageLink\":true,\"homepageLabel\":\"Home\",\"breadcrumbPrefix\":null,\"archiveFormat\":\"Archives for #breadcrumb_archive_post_type_name\",\"searchResultFormat\":\"Search Results for \'#breadcrumb_search_string\'\",\"errorFormat404\":\"404 - Page Not Found\",\"showCurrentItem\":true,\"linkCurrentItem\":false,\"categoryFullHierarchy\":false,\"showBlogHome\":false},\"rssContent\":{\"before\":null,\"after\":\"&lt;p&gt;The post #post_link first appeared on #site_link.&lt;\\/p&gt;\"},\"advanced\":{\"truSeo\":true,\"headlineAnalyzer\":true,\"seoAnalysis\":true,\"dashboardWidget\":true,\"announcements\":true,\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\",\"product\"]},\"taxonomies\":{\"all\":true,\"included\":[\"category\",\"post_tag\",\"product_cat\",\"product_tag\"]},\"uninstall\":false},\"sitemap\":{\"general\":{\"enable\":true,\"filename\":\"sitemap\",\"indexes\":true,\"linksPerIndex\":1000,\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\",\"attachment\",\"product\"]},\"taxonomies\":{\"all\":true,\"included\":[\"category\",\"post_tag\",\"product_cat\",\"product_tag\"]},\"author\":false,\"date\":false,\"additionalPages\":{\"enable\":false,\"pages\":[]},\"advancedSettings\":{\"enable\":false,\"excludeImages\":false,\"excludePosts\":[],\"excludeTerms\":[],\"priority\":{\"homePage\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"postTypes\":{\"grouped\":true,\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"taxonomies\":{\"grouped\":true,\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"archive\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"author\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"}}}},\"rss\":{\"enable\":true,\"linksPerIndex\":50,\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\",\"product\"]}},\"html\":{\"enable\":true,\"pageUrl\":\"\",\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\",\"product\"]},\"taxonomies\":{\"all\":true,\"included\":[\"category\",\"post_tag\",\"product_cat\",\"product_tag\"]},\"sortOrder\":\"publish_date\",\"sortDirection\":\"asc\",\"publicationDate\":true,\"compactArchives\":false,\"advancedSettings\":{\"enable\":false,\"nofollowLinks\":false,\"excludePosts\":[],\"excludeTerms\":[]}}},\"social\":{\"profiles\":{\"sameUsername\":{\"enable\":false,\"username\":null,\"included\":[\"facebookPageUrl\",\"twitterUrl\",\"pinterestUrl\",\"instagramUrl\",\"youtubeUrl\",\"linkedinUrl\"]},\"urls\":{\"facebookPageUrl\":null,\"twitterUrl\":null,\"instagramUrl\":null,\"pinterestUrl\":null,\"youtubeUrl\":null,\"linkedinUrl\":null,\"tumblrUrl\":null,\"yelpPageUrl\":null,\"soundCloudUrl\":null,\"wikipediaUrl\":null,\"myspaceUrl\":null,\"googlePlacesUrl\":null}},\"siteSocialProfiles\":null,\"facebook\":{\"general\":{\"enable\":true,\"defaultImageSourcePosts\":\"default\",\"customFieldImagePosts\":null,\"defaultImagePosts\":\"\",\"defaultImagePostsWidth\":\"\",\"defaultImagePostsHeight\":\"\",\"showAuthor\":true,\"siteName\":\"#site_title #separator_sa #tagline\"},\"homePage\":{\"image\":\"\",\"title\":\"\",\"description\":\"\",\"imageWidth\":\"\",\"imageHeight\":\"\",\"objectType\":\"website\"},\"advanced\":{\"enable\":false,\"adminId\":\"\",\"appId\":\"\",\"authorUrl\":\"\",\"generateArticleTags\":false,\"useKeywordsInTags\":true,\"useCategoriesInTags\":true,\"usePostTagsInTags\":true}},\"twitter\":{\"general\":{\"enable\":true,\"useOgData\":false,\"defaultCardType\":\"summary\",\"defaultImageSourcePosts\":\"default\",\"customFieldImagePosts\":null,\"defaultImagePosts\":\"\",\"showAuthor\":true,\"additionalData\":false},\"homePage\":{\"image\":\"\",\"title\":\"\",\"description\":\"\",\"cardType\":\"summary\"}}},\"searchAppearance\":{\"global\":{\"separator\":\"&#45;\",\"siteTitle\":\"#site_title #separator_sa #tagline\",\"metaDescription\":\"#tagline\",\"keywords\":null,\"schema\":{\"siteRepresents\":\"organization\",\"person\":null,\"organizationName\":\"Just another WordPress site\",\"organizationLogo\":\"\",\"personName\":null,\"personLogo\":null,\"phone\":null,\"contactType\":null,\"contactTypeManual\":null}},\"advanced\":{\"globalRobotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noindexPaginated\":true,\"nofollowPaginated\":true,\"noindexFeed\":true,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"sitelinks\":true,\"noIndexEmptyCat\":true,\"removeStopWords\":false,\"noPaginationForCanonical\":true,\"useKeywords\":false,\"keywordsLooking\":true,\"useCategoriesForMetaKeywords\":false,\"useTagsForMetaKeywords\":false,\"dynamicallyGenerateKeywords\":false,\"pagedFormat\":\"- Page #page_number\"},\"archives\":{\"author\":{\"show\":true,\"title\":\"#author_name #separator_sa #site_title\",\"metaDescription\":\"#author_bio\",\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"keywords\":null}},\"date\":{\"show\":true,\"title\":\"#archive_date #separator_sa #site_title\",\"metaDescription\":\"\",\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"keywords\":null}},\"search\":{\"show\":false,\"title\":\"#search_term #separator_sa #site_title\",\"metaDescription\":\"\",\"advanced\":{\"robotsMeta\":{\"default\":false,\"noindex\":true,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"keywords\":null}}}},\"tools\":{\"robots\":{\"enable\":false,\"rules\":[],\"robotsDetected\":true},\"importExport\":{\"backup\":{\"lastTime\":null,\"data\":null}}},\"deprecated\":{\"webmasterTools\":{\"googleAnalytics\":{\"id\":null,\"advanced\":false,\"trackingDomain\":null,\"multipleDomains\":false,\"additionalDomains\":null,\"anonymizeIp\":false,\"displayAdvertiserTracking\":false,\"excludeUsers\":[],\"trackOutboundLinks\":false,\"enhancedLinkAttribution\":false,\"enhancedEcommerce\":false}},\"searchAppearance\":{\"global\":{\"descriptionFormat\":null,\"schema\":{\"enableSchemaMarkup\":true}},\"advanced\":{\"autogenerateDescriptions\":true,\"runShortcodesInDescription\":true,\"useContentForAutogeneratedDescriptions\":false,\"excludePosts\":[],\"excludeTerms\":[]}},\"sitemap\":{\"general\":{\"advancedSettings\":{\"dynamic\":true}}},\"tools\":{\"blocker\":{\"blockBots\":null,\"blockReferer\":null,\"track\":null,\"custom\":{\"enable\":null,\"bots\":\"Abonti\\naggregator\\nAhrefsBot\\nasterias\\nBDCbot\\nBLEXBot\\nBuiltBotTough\\nBullseye\\nBunnySlippers\\nca-crawler\\nCCBot\\nCegbfeieh\\nCheeseBot\\nCherryPicker\\nCopyRightCheck\\ncosmos\\nCrescent\\ndiscobot\\nDittoSpyder\\nDotBot\\nDownload Ninja\\nEasouSpider\\nEmailCollector\\nEmailSiphon\\nEmailWolf\\nEroCrawler\\nExtractorPro\\nFasterfox\\nFeedBooster\\nFoobot\\nGenieo\\ngrub-client\\nHarvest\\nhloader\\nhttplib\\nHTTrack\\nhumanlinks\\nieautodiscovery\\nInfoNaviRobot\\nIstellaBot\\nJava\\/1.\\nJennyBot\\nk2spider\\nKenjin Spider\\nKeyword Density\\/0.9\\nlarbin\\nLexiBot\\nlibWeb\\nlibwww\\nLinkextractorPro\\nlinko\\nLinkScan\\/8.1a Unix\\nLinkWalker\\nLNSpiderguy\\nlwp-trivial\\nmagpie\\nMata Hari\\nMaxPointCrawler\\nMegaIndex\\nMicrosoft URL Control\\nMIIxpc\\nMippin\\nMissigua Locator\\nMister PiX\\nMJ12bot\\nmoget\\nMSIECrawler\\nNetAnts\\nNICErsPRO\\nNiki-Bot\\nNPBot\\nNutch\\nOffline Explorer\\nOpenfind\\npanscient.com\\nPHP\\/5.{\\nProPowerBot\\/2.14\\nProWebWalker\\nPython-urllib\\nQueryN Metasearch\\nRepoMonkey\\nSISTRIX\\nsitecheck.Internetseer.com\\nSiteSnagger\\nSnapPreviewBot\\nSogou\\nSpankBot\\nspanner\\nspbot\\nSpinn3r\\nsuzuran\\nSzukacz\\/1.4\\nTeleport\\nTelesoft\\nThe Intraformant\\nTheNomad\\nTightTwatBot\\nTitan\\ntoCrawl\\/UrlDispatcher\\nTrue_Robot\\nturingos\\nTurnitinBot\\nUbiCrawler\\nUnisterBot\\nURLy Warning\\nVCI\\nWBSearchBot\\nWeb Downloader\\/6.9\\nWeb Image Collector\\nWebAuto\\nWebBandit\\nWebCopier\\nWebEnhancer\\nWebmasterWorldForumBot\\nWebReaper\\nWebSauger\\nWebsite Quester\\nWebster Pro\\nWebStripper\\nWebZip\\nWotbox\\nwsr-agent\\nWWW-Collector-E\\nXenu\\nZao\\nZeus\\nZyBORG\\ncoccoc\\nIncutio\\nlmspider\\nmemoryBot\\nserf\\nUnknown\\nuptime files\",\"referer\":\"semalt.com\\nkambasoft.com\\nsavetubevideo.com\\nbuttons-for-website.com\\nsharebutton.net\\nsoundfrost.org\\nsrecorder.com\\nsoftomix.com\\nsoftomix.net\\nmyprintscreen.com\\njoinandplay.me\\nfbfreegifts.com\\nopenmediasoft.com\\nzazagames.org\\nextener.org\\nopenfrost.com\\nopenfrost.net\\ngooglsucks.com\\nbest-seo-offer.com\\nbuttons-for-your-website.com\\nwww.Get-Free-Traffic-Now.com\\nbest-seo-solution.com\\nbuy-cheap-online.info\\nsite3.free-share-buttons.com\\nwebmaster-traffic.com\"}}}}}', 'yes'),
(11896, 'aioseo_options_lite', '{\"advanced\":{\"usageTracking\":false}}', 'yes'),
(25157, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"luchofelipe20002000@gmail.com\";s:7:\"version\";s:3:\"6.0\";s:9:\"timestamp\";i:1654203249;}', 'no'),
(25175, 'can_compress_scripts', '0', 'no'),
(38775, 'boldgrid_reseller', 'a:11:{s:19:\"reseller_identifier\";s:3:\"DHX\";s:14:\"reseller_title\";s:9:\"DreamHost\";s:17:\"reseller_logo_url\";s:55:\"//api.boldgrid.com/img/reseller/logo/dreamhost-logo.jpg\";s:20:\"reseller_website_url\";s:26:\"https://www.dreamhost.com/\";s:20:\"reseller_support_url\";s:34:\"https://www.dreamhost.com/support/\";s:16:\"reseller_amp_url\";s:26:\"https://www.dreamhost.com/\";s:14:\"reseller_email\";s:21:\"support@dreamhost.com\";s:14:\"reseller_phone\";N;s:16:\"reseller_css_url\";s:71:\"/wp-content/plugins/boldgrid-inspirations/assets/css/boldgrid-login.css\";s:17:\"reseller_coin_url\";s:33:\"https://www.boldgrid.com/central/\";s:20:\"reseller_brand_login\";b:0;}', 'no'),
(38776, '_site_transient_timeout_bg_license_data', '1654289623', 'no');
INSERT INTO `wp_y5c34k_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(38777, '_site_transient_bg_license_data', 'O:8:\"stdClass\":5:{s:3:\"key\";s:64:\"3mDDHdujZxn8SAbc27mMlGuirIa/iVtYc1oZc9OK58tTW/LMNBrvZTozgLrgDwJW\";s:6:\"cipher\";s:11:\"AES-128-CBC\";s:2:\"iv\";s:42:\"j%04%99%04%87%A2%A4E%FF%8C%12V%24%F1%85%3A\";s:4:\"data\";s:536:\"tuC86xS7UxN29qyq+fmMs1pX0+k0+kavVSTzcRnUrqZQWJ0x+HhnJTRRX7PQHdd9AVkmhGgHHNYmaWWY3/ZCjHjvfMIBl/J0GmsM6ZiVG0gO8TOjwcutP36Y6UMJ7RPZav55B1DXyiOR/3SDWxIKPUlYy790S1PxRHexBvrHcdiBKgCCCIsycG87Q53M3BECs7h5SrG6yY0o1LLpBqm1caK8W4J2h0EtkftC704GhIFbYX3vS4YtH/P+mI/uRc2BJJt3HpPPPogKn3NAmlAV438fk5B62jCsdTvQcMup94VWAbGMy97QUFtAorXV9fRdjXAP/A1HXNqm6xbomPsYBNWs/BYU2cdspeJsn09ZmMIuYyALA3vQL8One1e6UOm6bg2eMXtwcmmepkQu2Cb7Y9a2Gycwc/6mDZ1oORhH7cct0jhN7+qFBjyIMeT5LK1KZsZ2RFw4F9Xi6P1dLCtnDEfoCTKOqMqhI7u8qlVpyD6X7ZoEl9Zf1YbzL3S6VCOgBqLjmIrEJAkx4ptohrV0Tw==\";s:7:\"version\";i:2;}', 'no'),
(38784, '_site_transient_timeout_boldgrid_gallery_version_data', '1654232027', 'no'),
(38785, '_site_transient_boldgrid_gallery_version_data', 'O:8:\"stdClass\":4:{s:6:\"status\";i:200;s:7:\"message\";s:2:\"OK\";s:6:\"result\";O:8:\"stdClass\":1:{s:4:\"data\";O:8:\"stdClass\":13:{s:5:\"title\";s:16:\"BoldGrid Gallery\";s:7:\"version\";s:5:\"1.5.1\";s:8:\"asset_id\";i:1118061;s:12:\"release_date\";s:19:\"2020-07-27 20:25:23\";s:19:\"requires_wp_version\";s:3:\"4.4\";s:17:\"tested_wp_version\";s:3:\"5.8\";s:8:\"sections\";s:4012:\"{\"description\":\"<p>BoldGrid Gallery is a standalone plugin used for slideshows and galleries.<\\/p>\\n\",\"installation\":\"<ol>\\n<li><p>Upload the entire boldgrid-gallery folder to the \\/wp-content\\/plugins\\/ directory.<\\/p><\\/li>\\n<li><p>Activate the plugin through the Plugins menu in WordPress.<\\/p><\\/li>\\n<\\/ol>\\n\",\"changelog\":\"<h4>1.5.1<\\/h4>\\n\\n<ul>\\n<li>Bug fix:                      Fix update class.<\\/li>\\n<li>Bug fix:                      Trying to access array offset on value of type bool.<\\/li>\\n<\\/ul>\\n\\n<h4>1.5<\\/h4>\\n\\n<ul>\\n<li>Update:                       Bump version.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.3<\\/h4>\\n\\n<ul>\\n<li>Update:       JIRA WPB-3292   Updated plugin URI.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.2<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-3161   Fixed auto plugin update.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.1<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-3151   Added check and load before using get<em>plugin<\\/em>data() for updates.<\\/li>\\n<li>Update:       JIRA WPB-3112   Updated wc-gallery: 1.52 => 1.55.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2912   Fixed issue when installing plugins from the Tools Import page.<\\/li>\\n<\\/ul>\\n\\n<h4>1.3.1<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2892   Fixed plugin update checks for some scenarios (WP-CLI, Plesk, etc).<\\/li>\\n<li>Testing:      JIRA WPB-2744   Tested on WordPress 4.7.<\\/li>\\n<li>Misc:         JIRA WPB-2503   Added plugin requirements to readme.txt file.<\\/li>\\n<\\/ul>\\n\\n<h4>1.3<\\/h4>\\n\\n<ul>\\n<li>Update:                       Bump Version.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.3<\\/h4>\\n\\n<ul>\\n<li>Misc:         JIRA WPB-2344   Updated readme.txt for Tested up to 4.6.1.<\\/li>\\n<li>Bug fix:      JIRA WPB-2336   Load BoldGrid settings from the correct WP option (site\\/blog).<\\/li>\\n<li>Update:       JIRA WPB-2368   Version constant is now set from plugin file.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.2<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2310   Removed broken plugin Settings link.  Pending review on WPB-2309.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.1<\\/h4>\\n\\n<ul>\\n<li>Misc:         JIRA WPB-2256   Updated readme.txt for Tested up to: 4.6.<\\/li>\\n<li>Rework:       JIRA WPB-1825   Formatting.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2114   Fixed gallery displaying in editor on wordpress 4.6.<\\/li>\\n<li>Bug fix:      JIRA WPB-2114   Fixing ordering of gallery items.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.2<\\/h4>\\n\\n<ul>\\n<li>New feature:  JIRA WPB-2037   Added capability for auto-updates by BoldGrid API response.<\\/li>\\n<li>Update:       JIRA WPB-2024   Updated wc-gallery: 1.48 => 1.52.<\\/li>\\n<li>Misc:         Updated editor.js to pass JSHint.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.1<\\/h4>\\n\\n<ul>\\n<li>Update:       JIRA WPB-1884   Passed WordPress 4.5.1 testing.<\\/li>\\n<li>Bug fix:      JIRA WPB-1893   JS errors in console when viewing attachments.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.0.1<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1816   Fixed update class interference with the Add Plugins page.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1809   Fixed undefined index \\\"action\\\" for some scenarios.  Optimized update class and addressed CodeSniffer items.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.4<\\/h4>\\n\\n<ul>\\n<li>Misc:         JIRA WPB-1361   Added license file.<\\/li>\\n<li>Bug Fix:      JIRA WPB-1646   Fixing Issues where masonry gallery was not WYSIWYG.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.3<\\/h4>\\n\\n<ul>\\n<li>Update:       JIRA WPB-1611   Updated wc-gallery: 1.40 => 1.48.<\\/li>\\n<li>Rework:       JIRA WPB-1617   Updated require and include statements for standards.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.2<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1553   Changed <strong>DIR<\\/strong> to dirname( <strong>FILE<\\/strong> ) for PHP &lt;=5.2.<\\/li>\\n<li>Misc          JIRA WPB-1468   Updated readme.txt for Tested up to: 4.4.1<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.1<\\/h4>\\n\\n<ul>\\n<li>New feature:  JIRA WPB-1363   Updated readme.txt for WordPress standards.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0<\\/h4>\\n\\n<ul>\\n<li>Initial public release.<\\/li>\\n<\\/ul>\\n\",\"upgrade_notice\":\"\\n\"}\";s:7:\"siteurl\";s:24:\"http://www.boldgrid.com/\";s:13:\"compatibility\";s:2163:\"{\"5.4\":{\"1.4.3\":[100,95],\"1.5\":[100,95]},\"4.8.1\":{\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.7.5\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.7.4\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.7.3\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.7.2\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.7.1\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.7\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.6.6\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.6.5\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.6.4\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.6.3\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.6.2\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.6.1\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.6\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.5.9\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.5.8\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.5.7\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.5.6\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.5.5\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.5.4\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.5.3\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.5.2\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.5.1\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.5\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.4.9\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.4.8\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.4.7\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.4.6\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.4.5\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.4.10\":{\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]},\"4.3.1\":{\"0.4\":[100,12],\"1.0\":[100,12],\"1.0.1\":[100,12],\"1.0.2\":[100,12],\"1.0.3\":[100,12],\"1.0.4\":[100,12],\"1.1.0.1\":[100,12],\"1.1.1\":[100,12],\"1.1.2\":[100,12],\"1.2\":[100,12],\"1.2.1\":[100,12],\"1.2.2\":[100,12],\"1.2.3\":[100,12],\"1.3\":[100,12],\"1.3.1\":[100,12],\"1.3.2\":[100,12],\"1.4\":[100,12],\"1.4.1\":[100,12],\"1.4.2\":[100,12],\"1.4.3\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95]}}\";s:6:\"rating\";i:100;s:11:\"num_ratings\";i:100000;s:4:\"tags\";s:83:\"{\"gallery\":\"Gallery\",\"slider\":\"Slider\",\"slideshow\":\"Slideshow\",\"masonry\":\"Masonry\"}\";s:7:\"banners\";s:127:\"{\"low\":\"//repo.boldgrid.com/assets/banner-gallery-772x250.png\",\"high\":\"//repo.boldgrid.com/assets/banner-gallery-1544x500.png\"}\";}}s:7:\"updated\";i:1654203227;}', 'no'),
(38793, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1654214553;s:15:\"version_checked\";s:3:\"6.0\";s:12:\"translations\";a:0:{}}', 'no'),
(38798, '_site_transient_timeout_boldgrid_ppbp_version_data', '1654232053', 'no'),
(38799, '_site_transient_boldgrid_ppbp_version_data', 'O:8:\"stdClass\":4:{s:6:\"status\";i:200;s:7:\"message\";s:2:\"OK\";s:6:\"result\";O:8:\"stdClass\":1:{s:4:\"data\";O:8:\"stdClass\":13:{s:5:\"title\";s:29:\"Post and Page Builder Premium\";s:7:\"version\";s:5:\"1.0.6\";s:8:\"asset_id\";i:1250159;s:12:\"release_date\";s:19:\"2022-04-27 11:09:22\";s:19:\"requires_wp_version\";s:3:\"4.7\";s:17:\"tested_wp_version\";s:3:\"5.3\";s:8:\"sections\";s:7674:\"{\"description\":\"<h4>What is the Post and Page Builder by BoldGrid?<\\/h4>\\n\\n<p>The Post and Page Builder is an intuitive drag and drop editor plugin and the easiest way to create and edit pages for any theme. Whether you are new to WordPress or consider yourself a pro, BoldGrid solutions will make your WordPress life better. Stop dealing with site-breaking shortcodes and theme restricted editors. You are going to love just how fast and easily you can create beautiful websites now.<\\/p>\\n\\n<p>Try out the <a href=\\\"https:\\/\\/www.boldgrid.com\\/central\\/get-it-now?redirect_url=wp-admin%2Fpost-new.php%3Fpost_type%3Dpage&amp;plugins=post-and-page-builder\\\">BoldGrid Demo<\\/a> on Cloud WordPress to see for yourself!<\\/p>\\n\\n<p>[youtube https:\\/\\/youtu.be\\/QoIb7OhV9ys?rel=0]<\\/p>\\n\\n<h4>Features<\\/h4>\\n\\n<ul>\\n<li><strong>Drag and Drop Editing<\\/strong> - Create simple or complex layouts with our unique editing experience<\\/li>\\n<li><strong>BoldGrid Blocks<\\/strong> - Hundreds of professional layout designs to work from<\\/li>\\n<li><strong>100% Mobile-friendly<\\/strong> - Responsive layouts and controls to change the design per device<\\/li>\\n<li><strong>Google Fonts<\\/strong> - Change font family, font size, font color, letter spacing, line height and more<\\/li>\\n<li><strong>Theme Compatibility<\\/strong> - Our WordPress Page Builder is designed to work with any WordPress Theme<\\/li>\\n<li><strong>Custom Backgrounds<\\/strong> - Add background images, gradient backgrounds, patterns, overlays, and background colors<\\/li>\\n<li><strong>Fast and Free Support<\\/strong> - Growing Community and knowledge base<\\/li>\\n<li><strong>Animations<\\/strong> - Add effects as the user scrolls down the page with Animate.css or background parallax scroll effects<\\/li>\\n<li><strong>Advanced Controls<\\/strong> - Add margin, padding, box shadows, borders, alignment and more to almost any element<\\/li>\\n<li><strong>Bootstrap Grid<\\/strong> - Drag and drop controls for bootstrap rows and columns elements<\\/li>\\n<li><strong>Add Custom CSS Classes<\\/strong> - Complete control over any element<\\/li>\\n<li><strong>Clean, Simple Markup<\\/strong> - Easily create a professionally coded template without experience<\\/li>\\n<li><strong>Google Maps<\\/strong> - Embed and customize maps into your post or page<\\/li>\\n<li><strong>Web Components<\\/strong> - High quality reusable and customizable HTML elements<\\/li>\\n<li><strong>Font Awesome Icons<\\/strong> - Insert and customize any Font Awesome icons<\\/li>\\n<li><strong>CSS Grid<\\/strong> - Full width, column and row based layouts<\\/li>\\n<li><strong>Image Editing<\\/strong> - Apply image filters and automatically crop images<\\/li>\\n<li><strong>Button Designs<\\/strong> - Fully customizable button designs<\\/li>\\n<li><strong>Custom Post Types<\\/strong> - Save and reuse full page layouts or BoldGrid Block designs<\\/li>\\n<li><strong>WordPress Editor Integration<\\/strong> - Integrated into TinyMCE so you can keep the same workflow<\\/li>\\n<li><strong>No Need for Shortcodes!<\\/strong> - Faster page loads by saving your custom HTML5 elements<\\/li>\\n<\\/ul>\\n\\n<p>Additional Features when used with other BoldGrid plugins:<\\/p>\\n\\n<ul>\\n<li>Dozens of free layout templates<\\/li>\\n<li>Integrated with professional image banks<\\/li>\\n<li>Contact Forms<\\/li>\\n<li>On-page SEO recommendations for targeted search phrase<\\/li>\\n<\\/ul>\\n\\n<p>Visit our website to learn more about additional <a href=\\\"https:\\/\\/www.boldgrid.com\\/wordpress-plugins\\/\\\">BoldGrid plugins<\\/a> to further improve your WordPress experience!<\\/p>\\n\\n<h4>People Love BoldGrid<\\/h4>\\n\\n<p>\\\"It\'s really the perfect starting point for just about any web project, allowing users to get their site up and running in very short time. \\\" - Digital.com<\\/p>\\n\\n<p>\\\"BoldGrid is a great extension to WordPress that will make my job a lot easier and faster while creating custom layouts and pages.\\\" - Webhostingmedia.net<\\/p>\\n\\n<p>\\\"Well, I have seen many site builders but this is the only one that provides so many features.\\\" - Woblogger.com<\\/p>\\n\\n<h4>A Post and Page Builder That Works With Your Theme and Plugins<\\/h4>\\n\\n<p>The Post and Page Builder by BoldGrid is designed to work with almost any WordPress theme. Add it to your existing website today, or try a BoldGrid theme for your new website. Alternatively, consider upgrading and using the powerful BoldGrid framework theme (available in Premium subscription) as an excellent time saver for agencies and developers.<\\/p>\\n\\n<h4>A Post and Page Builder Stuffed With Pre-Designed Templates &amp; Blocks<\\/h4>\\n\\n<p>Create layouts and pages faster and easier than ever with Blocks by BoldGrid. Blocks are pre-built page sections consisting of various layouts of rows and columns prepopulated with content that can be edited visually or with HTML and CSS. Blocks utilize a wide variety of content that can be completely customized to fit your needs such as icons, buttons, free and premium images, font packs, and more.<\\/p>\\n\\n<h4>A Post and Page Builder That Is Faster Than The Rest<\\/h4>\\n\\n<p>The Post and Page Builder by BoldGrid is designed to create pages that load fast. BoldGrid ditches shortcodes in favor of clean markup that can be served quickly. That also means BoldGrid code is easy to assess and customize.<\\/p>\\n\\n<h4>Coming Soon \\/ Maintenance Page<\\/h4>\\n\\n<p>Great for making \\\"under construction\\\" or \\\"coming soon\\\" pages. You can create a simple page within minutes by using free professionally designed WordPress Blocks.<\\/p>\\n\\n<h4>Bootstrap WYSIWYG Post &amp; Page Builder for WordPress<\\/h4>\\n\\n<p>Our drag and drop system is built on the Bootstrap Grid. You can drag columns, rows, and containers around your pages to make quick updates to pages.  Advanced CSS controls allow you to make pixel perfect designs.<\\/p>\\n\\n<h4>Create Custom Color Palette<\\/h4>\\n\\n<p>Choose your brand\'s colors and we\'ll help your design stay unified. Our unique color palette system is built with SASS and allows you to change all the colors on your site. You don\'t have to choose from a few presets anymore!<\\/p>\\n\",\"installation\":\"<h4>Minimum Requirements<\\/h4>\\n\\n<ul>\\n<li>PHP version 5.4 or greater<\\/li>\\n<li>WordPress 4.4 or greater<\\/li>\\n<\\/ul>\\n\\n<h4>Manually<\\/h4>\\n\\n<ol>\\n<li>Upload the entire post-and-page-builder folder to the \\/wp-content\\/plugins\\/ directory.<\\/li>\\n<li>Activate the plugin through the Plugins menu in WordPress.<\\/li>\\n<\\/ol>\\n\\n<p>You will find a \'Post and Page Builder\' menu in your WordPress admin panel and find most features within the\\nWordPress Editor.<\\/p>\\n\",\"changelog\":\"<h4>1.0.6<\\/h4>\\n\\n<p>Release date: April 26, 2022<\\/p>\\n\\n<ul>\\n<li>Fix: Slider Navigation Buttons are transparent <a href=\\\"https:\\/\\/github.com\\/BoldGrid\\/post-and-page-builder-premium\\/issues\\/7\\\">#7<\\/a><\\/li>\\n<\\/ul>\\n\\n<h4>1.0.5<\\/h4>\\n\\n<p>Release date: December 8th, 2020<\\/p>\\n\\n<ul>\\n<li>Fix: Compatibility issues with WordPress 5.6<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.4<\\/h4>\\n\\n<p>Release date: November 11th, 2019<\\/p>\\n\\n<ul>\\n<li>Fix: Order posts by date instead of id.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.3<\\/h4>\\n\\n<p>Release date: October 30th, 2019<\\/p>\\n\\n<ul>\\n<li>Update: Optimizing build files.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.2<\\/h4>\\n\\n<p>Release date: December 5th, 2018<\\/p>\\n\\n<ul>\\n<li>Bug fix: Fixed updating plugin via ajax<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.1<\\/h4>\\n\\n<p>Release Date: December 4th, 2018<\\/p>\\n\\n<ul>\\n<li>Bug Fix: Fixing post excerpt wrapping element<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.0<\\/h4>\\n\\n<p>Release Date: October 16th, 2018<\\/p>\\n\\n<ul>\\n<li>New feature: Slider Components<\\/li>\\n<li>New feature: Post List Widget<\\/li>\\n<li>New feature: Single Post Widget<\\/li>\\n<\\/ul>\\n\"}\";s:7:\"siteurl\";s:24:\"http://www.boldgrid.com/\";s:13:\"compatibility\";s:10068:\"{\"5.6.1\":{\"1.0.5\":[100,95]},\"5.6\":{\"1.0.5\":[100,95]},\"5.5.3\":{\"1.0.5\":[100,95]},\"5.5.2\":{\"1.0.5\":[100,95]},\"5.5.1\":{\"1.0.5\":[100,95]},\"5.5\":{\"1.0.5\":[100,95]},\"5.4.4\":{\"1.0.5\":[100,95]},\"5.4.3\":{\"1.0.5\":[100,95]},\"5.4.2\":{\"1.0.5\":[100,95]},\"5.4.1\":{\"1.0.5\":[100,95]},\"5.4\":{\"1.0.5\":[100,95]},\"5.3.6\":{\"1.0.5\":[100,95]},\"5.3.5\":{\"1.0.5\":[100,95]},\"5.3.4\":{\"1.0.5\":[100,95]},\"5.3.3\":{\"1.0.5\":[100,95]},\"5.3.2\":{\"1.0.5\":[100,95]},\"5.3.1\":{\"1.0.5\":[100,95]},\"5.3\":{\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.2.9\":{\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.2.8\":{\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.2.7\":{\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.2.6\":{\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.2.5\":{\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.2.4\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.2.3\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.2.2\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.2.1\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.2\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.1.8\":{\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.1.7\":{\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.1.6\":{\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.1.5\":{\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.1.3\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.1.2\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.1.1\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.1\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.0.7\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.0.6\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.0.5\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.0.4\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.0.3\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.0.2\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.0.1\":{\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"5.0\":{\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.9.9\":{\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.9.8\":{\"1.0.0-alpha.0\":[100,12],\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.9.7\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.9.6\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.9.5\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.9.4\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.9.3\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.9.2\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.9.12\":{\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.9.11\":{\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.9.10\":{\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.9.1\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.9\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.8.7\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.8.6\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.8.5\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.8.4\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.8.3\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.8.2\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.8.1\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.8\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.7.9\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.7.8\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.7.7\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.7.6\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.7.5\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.7.4\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.7.3\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.7.2\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.7.11\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.7.10\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.7.1\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.7\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]},\"4.6.12\":{\"1.0.0-rc.1\":[100,95],\"1.0.0-rc.2\":[100,95],\"1.0.0-rc.3\":[100,95],\"1.0.0-rc.4\":[100,95],\"1.0.0\":[100,95],\"1.0.1\":[100,95],\"1.0.2\":[100,95],\"1.0.3\":[100,95],\"1.0.4\":[100,95],\"1.0.5\":[100,95],\"1.0.6-rc1\":[100,95],\"1.0.6\":[100,95]}}\";s:6:\"rating\";i:100;s:11:\"num_ratings\";i:100000;s:4:\"tags\";s:153:\"{\"boldgrid\":\"Boldgrid\",\"page builder\":\"Page builder\",\"drag and drop\":\"Drag and drop\",\"tinymce\":\"Tinymce\",\"editor\":\"Editor\",\"landing page\":\"Landing page\"}\";s:7:\"banners\";s:137:\"{\"low\":\"//ps.w.org/post-and-page-builder/assets/banner-772x250.png\",\"high\":\"//ps.w.org/post-and-page-builder/assets/banner-1544x500.png\"}\";}}s:7:\"updated\";i:1654203253;}', 'no'),
(38802, '_site_transient_timeout_php_check_2bd835122fdc4f0e2ce94cd2e6f48f9d', '1654808056', 'no'),
(38803, '_site_transient_php_check_2bd835122fdc4f0e2ce94cd2e6f48f9d', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(38804, '_site_transient_timeout_boldgrid_api_data', '1654243350', 'no');
INSERT INTO `wp_y5c34k_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(38805, '_site_transient_boldgrid_api_data', 'O:8:\"stdClass\":5:{s:6:\"status\";i:200;s:7:\"message\";s:2:\"OK\";s:6:\"result\";O:8:\"stdClass\":1:{s:4:\"data\";O:8:\"stdClass\":30:{s:5:\"title\";s:21:\"BoldGrid Inspirations\";s:7:\"version\";s:5:\"2.6.5\";s:8:\"asset_id\";i:1237200;s:12:\"release_date\";s:19:\"2022-01-25 16:12:57\";s:19:\"requires_wp_version\";s:3:\"4.4\";s:17:\"tested_wp_version\";s:3:\"5.8\";s:8:\"sections\";s:48808:\"{\"description\":\"<p>BoldGrid Inspirations is an inspiration-driven plugin to assist with creating a fresh new website, or to customize an existing website.<\\/p>\\n\\n<p>The first phase is Inspiration; the guided tool creates your base website.  If you already have a website, then you can skip this step.<\\/p>\\n\\n<p>The second phase is Customization; tools to transform your website into your vision.<\\/p>\\n\",\"installation\":\"<ol>\\n<li><p>Upload the entire boldgrid-inspirations folder to the \\/wp-content\\/plugins\\/ directory.<\\/p><\\/li>\\n<li><p>Activate the plugin through the Plugins menu in WordPress.<\\/p><\\/li>\\n<li><p>You will find the Inspirations menu in your WordPress Dashboard \\/ admin panel.<\\/p><\\/li>\\n<\\/ol>\\n\",\"changelog\":\"<h4>2.6.5<\\/h4>\\n\\n<p>Release date: January 25th, 2022<\\/p>\\n\\n<ul>\\n<li>Update: Several php8 fixes.<\\/li>\\n<li>Update: Automated tests run against php 5.6, 7.4, and 8.0<\\/li>\\n<\\/ul>\\n\\n<h4>2.6.4<\\/h4>\\n\\n<p>Release date: October 18th, 2021<\\/p>\\n\\n<ul>\\n<li>Update: Add filters to allow dev installs of Crio and Crio Premium.<\\/li>\\n<\\/ul>\\n\\n<h4>2.6.3<\\/h4>\\n\\n<p>Release date: June 10th, 2021<\\/p>\\n\\n<ul>\\n<li>Update: Updated the way blogs are installed via Inspirations.<\\/li>\\n<li>Update: Updated the My Inspirations page with links to theme support.<\\/li>\\n<li>Update: Updated dependencies.<\\/li>\\n<\\/ul>\\n\\n<h4>2.6.2<\\/h4>\\n\\n<p>Release date: April 14th, 2021<\\/p>\\n\\n<ul>\\n<li>Update: Add support for footer-menu locations<\\/li>\\n<\\/ul>\\n\\n<h4>2.6.1<\\/h4>\\n\\n<p>Release date: February 16th, 2021<\\/p>\\n\\n<ul>\\n<li>Update: Disable custom menu by default.<\\/li>\\n<li>Bug fix: Add \\\"My Inspirations\\\" link in case js does not redirect.<\\/li>\\n<\\/ul>\\n\\n<h4>2.6.0<\\/h4>\\n\\n<p>Release date: January 25th, 2021<\\/p>\\n\\n<ul>\\n<li>New feature: Theme deployments can now include theme specific plugins.<\\/li>\\n<\\/ul>\\n\\n<h4>2.5.2<\\/h4>\\n\\n<p>Release date: December 8th, 2020<\\/p>\\n\\n<ul>\\n<li>Bug fix: Fixed Gutenberg detection, avoid errors when adding media.<\\/li>\\n<li>Bug fix: Avoid js errors when editor screens have no ability to add media.<\\/li>\\n<\\/ul>\\n\\n<h4>2.5.1<\\/h4>\\n\\n<p>Release date: October 23rd, 2020<\\/p>\\n\\n<ul>\\n<li>Bug fix: Fixed \\\"Only variables should be passed by reference\\\" in class-boldgrid-inspirations-purchase-for-publish.php.<\\/li>\\n<\\/ul>\\n\\n<h4>2.5.0<\\/h4>\\n\\n<p>Release date: October 17th, 2020<\\/p>\\n\\n<ul>\\n<li>New feature: Invoicing and Caching options added as Inspirations features.<\\/li>\\n<\\/ul>\\n\\n<h4>2.4.4<\\/h4>\\n\\n<p>Release date: September 22nd, 2020<\\/p>\\n\\n<ul>\\n<li>Update: Updated dependencies.<\\/li>\\n<\\/ul>\\n\\n<h4>2.4.3<\\/h4>\\n\\n<p>Release date: August 11th, 2020<\\/p>\\n\\n<ul>\\n<li>Bug fix: WordPress 5.5 compatibility changes.<\\/li>\\n<li>Update: Optimized usage of set<em>staging<\\/em>installed.<\\/li>\\n<li>Update: Optimized \\\"get total coin cost\\\".<\\/li>\\n<li>Update: Updated links in login footer<\\/li>\\n<li>Update: Updated dependencies.<\\/li>\\n<\\/ul>\\n\\n<h4>2.4.2<\\/h4>\\n\\n<p>Release date: June 15th, 2020<\\/p>\\n\\n<ul>\\n<li>Update: Updated dependencies.<\\/li>\\n<\\/ul>\\n\\n<h4>2.4.1<\\/h4>\\n\\n<p>Release date: May 29th, 2020<\\/p>\\n\\n<ul>\\n<li>Update: Updated dependencies.<\\/li>\\n<\\/ul>\\n\\n<h4>2.4.0<\\/h4>\\n\\n<p>Release date: May 18th, 2020<\\/p>\\n\\n<ul>\\n<li>Update: Changes needed for Crio.<\\/li>\\n<li>Bug fix: Attribution page will not show excpert.<\\/li>\\n<li>Bug fix: Fixed display \\/ position of BoldGrid Connect image search results.<\\/li>\\n<\\/ul>\\n\\n<h4>2.3.1<\\/h4>\\n\\n<p>Release date: March 12th, 2020<\\/p>\\n\\n<ul>\\n<li>Bug fix: Unable to click button on email confirmation page.<\\/li>\\n<li>Update: Removed \\\"Add new from GridBlocks\\\" feature.<\\/li>\\n<\\/ul>\\n\\n<h4>2.3.0<\\/h4>\\n\\n<p>Release date: December 17th, 2019<\\/p>\\n\\n<ul>\\n<li>Bug fix: Added noindex to the attribution page.<\\/li>\\n<li>Update: Changed the form plugin from WPForms to weForms.<\\/li>\\n<li>Update: Updated dependencies.<\\/li>\\n<\\/ul>\\n\\n<h4>2.2.2<\\/h4>\\n\\n<p>Release date: November 22st, 2019<\\/p>\\n\\n<ul>\\n<li>Update: BoldGrid Backup is now Total Upkeep - updating references.<\\/li>\\n<li>Update: Updated dependency boldgrid\\/library to 2.10.6.<\\/li>\\n<\\/ul>\\n\\n<h4>2.2.1<\\/h4>\\n\\n<p>Release date: October 15th, 2019<\\/p>\\n\\n<ul>\\n<li>Update:  Updated dependency boldgrid\\/library to 2.10.4.<\\/li>\\n<\\/ul>\\n\\n<h4>2.2.0<\\/h4>\\n\\n<p>Release date: September 17th, 2019<\\/p>\\n\\n<ul>\\n<li>New feature: Recommend the BoldGrid Backup plugin for users needing to transfer a site.<\\/li>\\n<li>Update: Updating dependencies<\\/li>\\n<\\/ul>\\n\\n<h4>2.1.1<\\/h4>\\n\\n<p>Release date: September 5th, 2019<\\/p>\\n\\n<ul>\\n<li>Update: Updating dependencies<\\/li>\\n<\\/ul>\\n\\n<h4>2.1.0<\\/h4>\\n\\n<p>Release date: August 29th, 2019<\\/p>\\n\\n<ul>\\n<li>Update: Removed the \\\"Welcome to BoldGrid\\\" dashboard widget.<\\/li>\\n<li>Update: Add notice to dashboard widget.<\\/li>\\n<li>Update: Remove news widget from dashboard.<\\/li>\\n<\\/ul>\\n\\n<h4>2.0.7<\\/h4>\\n\\n<p>Release date: August 16, 2019<\\/p>\\n\\n<ul>\\n<li>Bug fix: Fixing compact warnings<\\/li>\\n<\\/ul>\\n\\n<h4>2.0.6<\\/h4>\\n\\n<p>Release date: August 1st, 2019<\\/p>\\n\\n<ul>\\n<li>Update: Updated dependencies<\\/li>\\n<\\/ul>\\n\\n<h4>2.0.5<\\/h4>\\n\\n<p>Release date: July 25th, 2019<\\/p>\\n\\n<ul>\\n<li>Update: Added a switch for toggling branding of the login page.<\\/li>\\n<li>Update: Cleaned up logic on purchase coins page.<\\/li>\\n<li>Update: Updated dependencies<\\/li>\\n<\\/ul>\\n\\n<h4>2.0.4<\\/h4>\\n\\n<p>Release date: July 2nd, 2019<\\/p>\\n\\n<ul>\\n<li>Update: Replaced the BoldGrid RSS feed widget on the dashboard with one in the updated library package.<\\/li>\\n<li>Update: Updated dependencies.<\\/li>\\n<\\/ul>\\n\\n<h4>2.0.3<\\/h4>\\n\\n<p>Release date: May 21st, 2019<\\/p>\\n\\n<ul>\\n<li>Bug fix: Fixing \\\"Call to undefined method getAttribute\\\" error.<\\/li>\\n<li>Bug fix: Replacing deprecated filter on login: login<em>headertitle \\/ login<\\/em>headertext.<\\/li>\\n<\\/ul>\\n\\n<h4>2.0.2<\\/h4>\\n\\n<p>Release date: Apr 23nd, 2019<\\/p>\\n\\n<ul>\\n<li>Bug fix: Fixing usage of php\'s empty function for php &lt; 5.5<\\/li>\\n<\\/ul>\\n\\n<h4>2.0.1<\\/h4>\\n\\n<p>Release date: Apr 19th, 2019<\\/p>\\n\\n<ul>\\n<li>Bug fix: Fixing class property declaration for php &lt; 5.6<\\/li>\\n<\\/ul>\\n\\n<h4>2.0.0<\\/h4>\\n\\n<p>Release date: Apr 16th, 2019<\\/p>\\n\\n<ul>\\n<li>Update: Made translation ready. Text domain is boldgrid-inspirations.<\\/li>\\n<li>Update: Inspirations process with full screen mode and design updates.<\\/li>\\n<li>New feature: Inspirations dashboard.<\\/li>\\n<li>New feature: German translations added - de_DE.<\\/li>\\n<\\/ul>\\n\\n<h4>1.6.5<\\/h4>\\n\\n<p>Release date: Jan 29th, 2019<\\/p>\\n\\n<ul>\\n<li>Bug fix:                       Pages fail to install on Pages > Add New.<\\/li>\\n<\\/ul>\\n\\n<h4>1.6.4<\\/h4>\\n\\n<p>Release date: Dec 5th, 2018<\\/p>\\n\\n<ul>\\n<li>Bug fix:                       Unable to save \\\"boldgrid<em>menu<\\/em>option\\\" on settings page.<\\/li>\\n<li>Bug fix:                       Fixed updating plugin via ajax.<\\/li>\\n<\\/ul>\\n\\n<h4>1.6.3<\\/h4>\\n\\n<p>Release date: Dec 4th, 2018<\\/p>\\n\\n<ul>\\n<li>Bug fix:                       Coin Budget help was not toggling when clicked.<\\/li>\\n<\\/ul>\\n\\n<h4>1.6.2<\\/h4>\\n\\n<p>Release date: Nov 26th, 2018<\\/p>\\n\\n<ul>\\n<li>Bug fix:      JIRA BGINSP-33   Fixed missing build for library dependencies; Updated production build process to use composer post-autoload-dump hook.<\\/li>\\n<\\/ul>\\n\\n<h4>1.6.1<\\/h4>\\n\\n<p>Release date: Nov 20th, 2018<\\/p>\\n\\n<ul>\\n<li>Update:       JIRA BGCONN-20   Removed update settings; have been moved to the BoldGrid Library packages.<\\/li>\\n<li>Bug fix:      JIRA BGTHEME-558 Fixed conflict between tgmpa plugin installer and the BoldGrid custom update classes.<\\/li>\\n<li>Bug fix:                       BoldGrid Connect Search \\/ WP 5.0 fix.<\\/li>\\n<li>Bug fix:                       Attribution page not being rebuilt \\/ WP 5.0 fix.<\\/li>\\n<li>Bug fix:                       BoldGrid Connect Search in the Customizer \\/ WP 5.0 fix.<\\/li>\\n<li>Bug fix:                       Recommended image sizes not working as expected.<\\/li>\\n<\\/ul>\\n\\n<h4>1.6.0<\\/h4>\\n\\n<ul>\\n<li>Update:                       Updated BoldGrid library to version 2.4.2.<\\/li>\\n<li>New feature:  JIRA BGINSP-24  Log data when there may be a connection or Ajax error.<\\/li>\\n<\\/ul>\\n\\n<h4>1.5.8<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA BGINSP-16  Warnings and notices within inspiration w\\/ Crio theme<\\/li>\\n<li>Bug fix:      JIRA BGINSP-23  Fixed issue: Connect Search may load with connection notice.<\\/li>\\n<\\/ul>\\n\\n<h4>1.5.7<\\/h4>\\n\\n<ul>\\n<li>Update:                       Updated to library version 2.3.5.<\\/li>\\n<\\/ul>\\n\\n<h4>1.5.6<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA BGINSP-14  Fatal in PHP >=7.1.0 when creating internal preview builds.<\\/li>\\n<li>Bug fix:      JIRA WPB-3767   Prevent invalid API calls for check-version.<\\/li>\\n<li>Update:       JIRA BGBKUP-180 Auto update code moved to library and removed from Inspirations.<\\/li>\\n<li>Update:       JIRA WPB-3730   Updated library dependency to ^2.0.0.<\\/li>\\n<li>Update:       JIRA BGINSP-3   Forcing display of Connect Key prompt admin notice on the Inspirations page, even if dismissed, until key is entered.<\\/li>\\n<li>Update:       JIRA WPB-3684   Updated composer.json, due to package changes.<\\/li>\\n<li>New feature:  JIRA BGCNTRL-46 Added filters for manipulating Dashboard help in trial sites.<\\/li>\\n<\\/ul>\\n\\n<h4>1.5.5<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA BGSTAGE-32 Fixed staging plugin install.<\\/li>\\n<\\/ul>\\n\\n<h4>1.5.4<\\/h4>\\n\\n<ul>\\n<li>Update:       JIRA BGINSP-4   Removed admin notice recommending plugin installations.<\\/li>\\n<\\/ul>\\n\\n<h4>1.5.3<\\/h4>\\n\\n<ul>\\n<li>New feature:  JIRA WPB-3643   Ensure that deployment does not install new wporg plugins if old ones are installed.<\\/li>\\n<\\/ul>\\n\\n<h4>1.5.2<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-3587   Menu assignment after deployment broken in WP 4.9.<\\/li>\\n<li>Bug fix:      JIRA WPB-3570   Inspirations Select button misplaced in WP 4.9.<\\/li>\\n<li>Bug fix:      JIRA WPB-3593   Changes require to help Staging support new Customizer scheduler.<\\/li>\\n<\\/ul>\\n\\n<h4>1.5.1<\\/h4>\\n\\n<ul>\\n<li>Update:                       Updates to library.<\\/li>\\n<\\/ul>\\n\\n<h4>1.5<\\/h4>\\n\\n<ul>\\n<li>Update:                       Bump version.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.11<\\/h4>\\n\\n<ul>\\n<li>Update:                       Bump version.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.10<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-3336   All and Default categories do not align.<\\/li>\\n<li>Bug fix:      JIRA WPB-3337   On a fresh install, Pages - New From GridBlocks fails.<\\/li>\\n<li>Bug fix:      JIRA WPB-3333   Image search only searching one provider instead of all.<\\/li>\\n<li>Bug fix:      JIRA WPB-3346   Edit Image button not working for attachment.<\\/li>\\n<li>Bug fix:      JIRA WPB-3387   Loading GridBlocks just spins.<\\/li>\\n<li>Update:       JIRA WPB-3352   Purchase coins through BoldGrid Central.<\\/li>\\n<li>Update:       JIRA WPB-3355   Add data-image-url attribute.<\\/li>\\n<li>Update:       JIRA WPB-3382   More descriptive creative commons icon.<\\/li>\\n<li>Update:       JIRA WPB-3384   Add License details to attachment details.<\\/li>\\n<li>Update:       JIRA WPB-3383   Filter out boldgrid-gridblock-set-preview-page.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.9<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-3318   When forcing a preferred form plugin install, first check if plugin is installed before trying to activate.<\\/li>\\n<li>Bug fix:      JIRA WPB-3312   Ensure activation of preferred form plugin.  Added filter for preferred slug.<\\/li>\\n<li>Bug fix:      JIRA WPB-3317   New page from GridBlocks not working.<\\/li>\\n<li>Update:       JIRA WPB-3252   Disable \'default\' category and configure \'showcase\'.<\\/li>\\n<li>Bug fix:      JIRA WPB-3332   New from gridblocks button not showing.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.8<\\/h4>\\n\\n<ul>\\n<li>New feature:  JIRA WPB-3200   Added WPForms support.<\\/li>\\n<li>Update:       JIRA WPB-3292   Updated plugin URI.<\\/li>\\n<li>Update:   JIRA WPB-3296 Add Inspirations as first menu item child.<\\/li>\\n<li>Bug Fix:  JIRA WPB-3274 Plugins > Add New Updates fail in modals.<\\/li>\\n<li>New feature:  JIRA WPB-3293   Resize images during deployment vs imgr server.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.7<\\/h4>\\n\\n<ul>\\n<li>Update:      JIRA WPB-3243    Change feedback admin notice display frequency.<\\/li>\\n<li>Update:      JIRA WPB-3264 Adding twitch social media option.<\\/li>\\n<li>New Feature: Added BoldGrid Library to plugin.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.6<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-3179   Gradient style being lost during normal deployment.<\\/li>\\n<li>Bug fix:      JIRA WPB-3180   Open WordPress\\/BoldGrid links in attribution page in new tab.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.5<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-3161   Fixed auto plugin update.<\\/li>\\n<li>Bug fix:      JIRA WPB-3162   Fixed issue creating .htaccess file in deployment.<\\/li>\\n<li>Bug fix:      JIRA WPB-3171   As an author, when installing a site I do not want background images to be processed.<\\/li>\\n<li>Bug fix:      JIRA WPB-3176   Background gradient \\/ url bug during deplyment.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.4<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-3151   Added check and load before using get<em>plugin<\\/em>data() for updates.<\\/li>\\n<li>Bug fix:      JIRA WPB-3141   Fixed invalid updates for BoldGrid Prime theme.<\\/li>\\n<li>Bug fix:      JIRA WPB-3158   Deployment\'s gallery updates are not saved.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.3<\\/h4>\\n\\n<ul>\\n<li>New feature:  JIRA WPB-3106   As an Author, I can set background images for elements.<\\/li>\\n<li>New feature:  JIRA WPB-3095   Update generic builds to display per theme channel.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.2<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2745   Fixed upgrade notices displaying when activation version was not recorded.<\\/li>\\n<li>Update:       JIRA WPB-3019   Updating attribution link creation.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.1<\\/h4>\\n\\n<ul>\\n<li>New feature:  JIRA WPB-3044   Automatically get Unsplash attribution.<\\/li>\\n<li>Update:       JIRA WPB-3043   Updating plugin description.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4.0.1<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-3232   Deploy Staging menu item missing.<\\/li>\\n<li>Bug fix:      JIRA WPB-3233   BoldGrid Connect Search missing from new image widget.<\\/li>\\n<\\/ul>\\n\\n<h4>1.4<\\/h4>\\n\\n<ul>\\n<li>Update:       JIRA WPB-2936   Updating YouTube videos for BoldGrid Dashboard\'s new release.<\\/li>\\n<li>Bug fix:      JIRA WPB-2927   Social media menu disappears.<\\/li>\\n<li>Update:       JIRA WPB-2949   Configure blog using categories.<\\/li>\\n<li>Bug fix:      JIRA WPB-2950   Added max height for reseller logos on login page.<\\/li>\\n<li>Bug fix:      JIRA WPB-2925   Sidebar widgets don\'t match between preview and installed site.<\\/li>\\n<li>Bug fix:      JIRA WPB-2951   Images in staging posts not being downloaded.<\\/li>\\n<li>Bug fix:      JIRA WPB-2955   Backwards compatibility - maps taking up 200px empty space.<\\/li>\\n<li>Bug fix:      JIRA WPB-2984   Attribution page 404.<\\/li>\\n<\\/ul>\\n\\n<h4>1.3.9<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2912   Fixed issue when installing plugins from the Tools Import page.<\\/li>\\n<li>Bug fix:      JIRA WPB-2916   Inspirations deploy fatal error if an old forked plugin had the original installed.<\\/li>\\n<li>Bug fix:      JIRA WPB-2905   If installing via Author, do not update pages with survey data.<\\/li>\\n<li>Bug fix:      JIRA WPB-2910   Unterminated entity reference bug.<\\/li>\\n<li>Update:       JIRA WPB-2913   Validate email address in survey.<\\/li>\\n<li>Bug fix:      JIRA WPB-2404   iframe timeout in step 2 of Inspirations.<\\/li>\\n<li>Bug fix:      JIRA WPB-2173   Error deleting image and redownloading.<\\/li>\\n<li>Bug fix:      JIRA WPB-2635   Start over staging affecting active site.<\\/li>\\n<li>Bug fix:      JIRA WPB-2493   Publish private posts during staging deployment.<\\/li>\\n<li>Bug fix:      JIRA WPB-2796   Social media urls end in \\/username, go to 404s.<\\/li>\\n<\\/ul>\\n\\n<h4>1.3.8<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2892   Fixed plugin update checks for some scenarios (WP-CLI, Plesk, etc).<\\/li>\\n<li>Update:       JIRA WPB-2900   Update verbiage of build coin cost.<\\/li>\\n<li>Bug fix:      JIRA WPB-2901   Scroll bars not visible on preview iframe in Chrome.<\\/li>\\n<li>Bug fix:                      Removing CTA hooks.<\\/li>\\n<\\/ul>\\n\\n<h4>1.3.7<\\/h4>\\n\\n<ul>\\n<li>Update:       JIRA WPB-2819   Use switch instead of checkbox for Demo.<\\/li>\\n<li>Bug fix:      JIRA WPB-2780   Theme screenshots opening directly, rather than within gallery.<\\/li>\\n<li>Update:       JIRA WPB-2825   Adjust do not display formatting.<\\/li>\\n<li>Update:       JIRA WPB-2829   Updating hook to resolve BoldGrid SEO plugin conflicts.<\\/li>\\n<li>Update:       JIRA WPB-2837   Remove loading image after selecting theme in Gallery.<\\/li>\\n<li>Update:       JIRA WPB-2839   Minor verbiage change for Add a blog.<\\/li>\\n<li>Update:       JIRA WPB-2785   Entering words with apostrophe in it for Site title displays with a Backslash.<\\/li>\\n<li>Bug fix:      JIRA WPB-2848   Customize link takes users back to Inspirations.<\\/li>\\n<li>Bug fix:      JIRA WPB-2527   \'New from GridBlocks\' preview page appearing in cart.<\\/li>\\n<li>Bug fix:      JIRA WPB-2862   Survey, invalid argument supplied for foreach.<\\/li>\\n<li>Bug fix:      JIRA WPB-2601   Inspirations Internet Explorer\\/ Stuck on loading themes.<\\/li>\\n<li>Bug fix:      JIRA WPB-2854   Downloading Image spinner never stops spinning.<\\/li>\\n<\\/ul>\\n\\n<h4>1.3.6<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2772   PHP warnings on deploy in WordPress 4.3.7.<\\/li>\\n<li>Bug fix:      JIRA WPB-2766   Plesk and WP-CLI were not getting private repo updates.<\\/li>\\n<li>Update:       JIRA WPB-2763   Update email and address on Contact Us page.<\\/li>\\n<li>Update:       JIRA WPB-2764   Remove option to add a map.<\\/li>\\n<li>Update:       JIRA WPB-2765   Allow iframes for preview builds.<\\/li>\\n<li>New feature:  JIRA WPB-2771   Update footer-company-details widget with survey data.<\\/li>\\n<li>New feature:  JIRA WPB-2777   Add an Install sample blog checkbox.<\\/li>\\n<li>New feature:  JIRA WPB-2778   Setup a blog during deployment.<\\/li>\\n<li>Bug fix:      JIRA WPB-2792   Staged posts (private posts) are trashed when starting over active site.<\\/li>\\n<li>Update:       JIRA WPB-2800   Ensure \'Install a blog\' works with Staging.<\\/li>\\n<li>Update:       JIRA WPB-2801   Remove milestones classes.<\\/li>\\n<li>Bug fix:      JIRA WPB-2779   Survey not working with Staging.<\\/li>\\n<li>Update:       JIRA WPB-2805   Preview builds w &amp; w\\/o blogs.<\\/li>\\n<li>New feature:  JIRA WPB-2806   Add filter for Inspirations configs.<\\/li>\\n<li>Bug fix:      JIRA WPB-2808   Do not request generic builds when requesting blog as well.<\\/li>\\n<\\/ul>\\n\\n<h4>1.3.5<\\/h4>\\n\\n<ul>\\n<li>Testing:      JIRA WPB-2744   Tested on WordPress 4.7.<\\/li>\\n<li>Update:       JIRA WPB-2376   Filter the bgtfw contact blocks.<\\/li>\\n<li>Update:       JIRA WPB-2476   Update case of Company name.<\\/li>\\n<li>Update:       JIRA WPB-2747   Update Add a map verbiage.<\\/li>\\n<li>Update:       JIRA WPB-2749   Add a map to my Contact page.<\\/li>\\n<li>Bug fix:      JIRA WPB-2658   Fix spacing issues atop Inspirations.<\\/li>\\n<li>Bug fix:      JIRA WPB-2751   Show all in the smaller view of inspirations doesn\'t work anymore.<\\/li>\\n<li>Bug fix:      JIRA WPB-2757   Apostrophe and other strange characters installed via Inspirations.<\\/li>\\n<li>Bug fix:      JIRA WPB-2759   DOMDocument::loadHTML(): htmlParseEntityRef: expecting \';\'.<\\/li>\\n<\\/ul>\\n\\n<h4>1.3.4<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2696   Remove placeholders from survey.<\\/li>\\n<li>New feature:  JIRA WPB-2697   Update phone numbers in widgets.<\\/li>\\n<li>New feature:  JIRA WPB-2699   Use phone number entered during survey.<\\/li>\\n<li>Update:       JIRA WPB-2704   Adjust format of how social media icons are saved.<\\/li>\\n<li>New feature:  JIRA WPB-2705   Use survey social media items when creating menu.<\\/li>\\n<li>Update:       JIRA WPB-2711   Show optional message in survey.<\\/li>\\n<li>Update:       JIRA WPB-2712   Have plus sign toggle more social icons.<\\/li>\\n<li>Update:       JIRA WPB-2723   Update phone in pages.<\\/li>\\n<\\/ul>\\n\\n<h4>1.3.3<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2627   Back \\/ next buttons should not be clickable.<\\/li>\\n<li>Bug fix:      JIRA WPB-2625   Behavior of last image\'s next button in Inspirations.<\\/li>\\n<\\/ul>\\n\\n<h4>1.3.2<\\/h4>\\n\\n<ul>\\n<li>Update:       JIRA WPB-2582   Always show arrows in Inspirations gallery.<\\/li>\\n<li>Update:       JIRA WPB-2583   Ensure first letter in theme\'s title attribute is capitalized.<\\/li>\\n<li>Update:       JIRA WPB-2599   Add placeholder for 4th step to Inspirations.<\\/li>\\n<li>Update:       JIRA WPB-2551   Duplicate images.<\\/li>\\n<li>New feature:  JIRA WPB-2603   Add initial version of survey.<\\/li>\\n<li>Bug fix:      JIRA WPB-2622   Inspirations - Step 4 - Go back button installs site.<\\/li>\\n<\\/ul>\\n\\n<h4>1.3.1<\\/h4>\\n\\n<ul>\\n<li>Misc:         JIRA WPB-2503   Added plugin requirements to readme.txt file.<\\/li>\\n<li>Bug fix:      JIRA WPB-2539   Fix possible duplicate connection issue notice from ajax.js call.<\\/li>\\n<li>Bug fix:      JIRA WPB-2558   Don\'t display feedback widget if user hasn\'t entered their key.<\\/li>\\n<li>Bug fix:      JIRA WPB-2559   Don\'t allow widgets to drag into welcome box area.<\\/li>\\n<li>Bug fix:      JIRA WPB-2555   Images in search results flicker.<\\/li>\\n<li>Update:       JIRA WPB-2563   Convert Attribution page to use custom post type.<\\/li>\\n<li>Update:       JIRA WPB-2568   Added fancybox and large previews to Inspirations.<\\/li>\\n<li>Update:       JIRA WPB-2570   Milestone blogname change.<\\/li>\\n<li>Update:       JIRA WPB-2574   Milestone Social Media Change.<\\/li>\\n<li>Update:       JIRA WPB-2578   Milestone Contact Info Footer Change.<\\/li>\\n<\\/ul>\\n\\n<h4>1.3<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2544   Disable \'Install\' button after clicking it.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.13<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2531   Javascript error checking needed for mine count.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.12<\\/h4>\\n\\n<ul>\\n<li>Update:       JIRA WPB-2472   Added update notice for 1.3.<\\/li>\\n<li>Bug fix:      JIRA WPB-2486   Incorrect page count on All Pages.<\\/li>\\n<li>Bug fix:      JIRA WPB-2467   With staging disabled, Customize goes to \\\"Change Themes\\\".<\\/li>\\n<li>Update:       JIRA WPB-2488   Remove \'Permanently delete pages instead of sending to trash\'.<\\/li>\\n<li>Update:       JIRA WPB-2490   Move default option to \'install as staging\'.<\\/li>\\n<li>Update:       JIRA WPB-2491   Add \'Customize > Active Theme\' navigation to Inspirations.<\\/li>\\n<li>Bug fix:      JIRA WPB-2496   Require comment text in feedback form.<\\/li>\\n<li>Update:       JIRA WPB-2229   Update error reporting when purchasing images.<\\/li>\\n<li>Update:       JIRA WPB-2498   Change \'Company Name\' to theme name.<\\/li>\\n<li>Update:       JIRA WPB-2497   Add new dashboard videos.<\\/li>\\n<li>Bug fix:      JIRA WPB-2376   \'No search results\' method is not cleared in BGCS.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.11<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2468   Switching between boldgrid admin menu and standard wp menu no longer works.<\\/li>\\n<li>Bug fix:      JIRA WPB-2477   If you have an existing site non BG, no route for staging exists.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.10<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2446   Fixed missing build id passed on site install.<\\/li>\\n<li>Bug fix:      JIRA WPB-2426   Insert Gridblock button is missing.<\\/li>\\n<li>Bug fix:      JIRA WPB-2443   When starting over, I get a blank page.<\\/li>\\n<li>Bug fix:      JIRA WBP-2445   Inspirations is not fetching cached themes.<\\/li>\\n<li>Update:       JIRA WPB-2458   Update \'Recommended\' verbiage in last step of Inspirations.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.9<\\/h4>\\n\\n<ul>\\n<li>Misc:         JIRA WPB-2420   Added EOF line breaks.<\\/li>\\n<li>Bug fix:      JIRA WPB-2387   Fixed issue with AJAX theme updates and BG theme slugs duplicated in the WP repo.<\\/li>\\n<li>Bug fix:      JIRA WPB-2324   Attribution should not show in 404 sitemap.<\\/li>\\n<li>Bug fix:      JIRA WPB-2403   No plugins recommended still showing notice.<\\/li>\\n<li>Update:       JIRA WPB-2416   Text changes for confirmation section of Inspirations.<\\/li>\\n<li>Update:       JIRA WPB-2417   Add additional text to deployment success page for staging.<\\/li>\\n<li>Bug fix:      JIRA WPB-2421   Message showing when it shouldn\'t - We\'ve recognized that you haven\'t installed...<\\/li>\\n<li>Bug fix:      JIRA WPB-2112   BoldGrid Connect Search missing for galleries.<\\/li>\\n<li>Bug fix:      JIRA WPB-2422   Fixed CSS Loading graphic animation in chrome to display properly.<\\/li>\\n<li>Bug fix:      JIRA WPB-2401   Gallery not displaying correctly in Chrome &amp;&amp; FF.<\\/li>\\n<li>Bug fix:      JIRA WPB-2423   Trying to get property of non-object in ...stock-photography.php.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.8<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2398   Error requesting free key.<\\/li>\\n<li>Bug fix:      JIRA WPB-2399   Only show feedback widget to admins.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.7<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2389   Fixed saving BoldGrid Settings.<\\/li>\\n<li>Bug fix:      JIRA WPB-2388   Removed duplicate boldgrid_activate().<\\/li>\\n<li>Update:       JIRA WPB-2390   Update verbiage for inspirations install success.<\\/li>\\n<li>Bug fix:      JIRA WPB-2391   Hide BoldGrid Welcome Panel if key isn\'t entered yet.<\\/li>\\n<li>Bug fix:      JIRA WPB-2392   If key is less than 32 char don\'t make call to validate.<\\/li>\\n<li>Bug fix:      JIRA WPB-2393   Error messages should be removed when resubmitting keys.<\\/li>\\n<li>Bug fix:      JIRA WPB-2394   Cursor for show\\/hide log should be a pointer.<\\/li>\\n<li>Update:       JIRA WPB-2395   Update login page styling.<\\/li>\\n<li>Bug fix:      JIRA WPB-2396   Remove staging from recommended plugin notices.<\\/li>\\n<li>Bug fix:      JIRA WPB-2327   Check if framework is handling plugin recommendations before recommending.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.6<\\/h4>\\n\\n<ul>\\n<li>Misc:         JIRA WPB-2344   Updated readme.txt for Tested up to 4.6.1.<\\/li>\\n<li>Bug fix:      JIRA WPB-2336   Load BoldGrid settings from the correct WP option (site\\/blog).<\\/li>\\n<li>Bug fix:      JIRA WPB-2248   Removed \'New From GridBlocks\' button on edit submission page.<\\/li>\\n<li>Bug fix:      JIRA WPB-2332   Reset scroll position on step 2 of Inspirations to top.<\\/li>\\n<li>Bug fix:      JIRA WPB-2339   Remove notices from Inspirations page.<\\/li>\\n<li>Update:       JIRA WPB-2208   Removed tutorials from Inspirations.<\\/li>\\n<li>Update:       JIRA WPB-2359   Order \'Category Filter\' by category display order.<\\/li>\\n<li>Update:       JIRA WPB-2360   Sort themes by category and then order within category.<\\/li>\\n<li>Update:       JIRA WPB-2368   Read version constant from plugin file.<\\/li>\\n<li>Update:       JIRA WPB-2361   Add BoldGrid Connect Search to Editor\'s background image tool.<\\/li>\\n<li>Update:       JIRA WPB-2354   Preview button needs to always be visible in mobile view.<\\/li>\\n<li>Update:       JIRA WPB-2355   Remove extraneous \'Preview\' button.<\\/li>\\n<li>Bug fix:      JIRA WPB-2364   Inspirations not respecting theme release channel.<\\/li>\\n<li>Bug fix:      JIRA WPB-2370   Color in screenshot does not match preview.<\\/li>\\n<li>Bug fix:      JIRA WPB-2373   Duplicate themes in Inspirations.<\\/li>\\n<li>Bug fix:      JIRA WPB-2379   Wrong budget passed when going form step 2 to step 1.<\\/li>\\n<li>Update:       JIRA WPB-2380   Remove references to tutorials in deployment congrats message.<\\/li>\\n<li>Bug fix:      JIRA WPB-2383   Image Search tab appears when clicking \'Add GridBlock\'.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.5<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2325   Added wrapper to handle mb<em>convert<\\/em>encoding() if mbstring is not loaded.<\\/li>\\n<li>Bug fix:      JIRA WPB-2313   Disabled GridBlocks in network admin pages.<\\/li>\\n<li>New feature:  JIRA WPB-2268   Changed to resized preview screenshots for Inspirations Design First concept.<\\/li>\\n<li>New feature:  JIRA WPB-2287   Adjust device preview buttons in step 2 to behave like those in editor.<\\/li>\\n<li>New feature:  JIRA WPB-2291   Auto install staging in final step if user chooses staging.<\\/li>\\n<li>Update:       JIRA WPB-2290   Changed \'Install\' button to \'Next\'.<\\/li>\\n<li>Bug fix:      JIRA WPB-2289   Continuously clicking category in step 1 shuffles themes.<\\/li>\\n<li>Update:       JIRA WPB-2267   Added message to Inspirations when no generic themes are available.<\\/li>\\n<li>Update:       JIRA WPB-2315   Added error handling for malformed ajax results for call to \\/api\\/build\\/get-generic.<\\/li>\\n<li>Update:       JIRA WPB-2316   Add error handling for failures to fetch categories.<\\/li>\\n<li>Update:       JIRA WPB-2317   Add error handling for failures to fetch pagesets.<\\/li>\\n<li>Update:       JIRA WPB-2319   Check user capabilities before prompting for api key.<\\/li>\\n<li>Update:       JIRA WPB-2320   Ensure user has permission to edit page before allowing download<em>and<\\/em>insert<em>into<\\/em>page.<\\/li>\\n<li>Update:       JIRA WPB-2322   Sanitize user feedback before adding to options table.<\\/li>\\n<li>Update:       JIRA WPB-2323   Allow admin notices to be dismissed per user.<\\/li>\\n<li>Update:       JIRA WPB-2326   Update \'update\' class to utilize Admin Notices class.<\\/li>\\n<li>Update:       JIRA WPB-2327   Check user capabilities before showing admin notices.<\\/li>\\n<li>Update:       JIRA WPB-2331   Update confirmation messages.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.4<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2269   Typo fix in Boldgrid<em>Inspirations<\\/em>Dependency<em>Plugins::print<\\/em>uninstalled_plugins().<\\/li>\\n<li>Bug fix:      JIRA WPB-2270   New From GridBlocks became unavailable.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.3<\\/h4>\\n\\n<ul>\\n<li>New feature:  JIRA WPB-2172   For preview generic builds, added an option for identification for purges, etc.<\\/li>\\n<li>Bug fix:      JIRA WPB-2263   For preview sites under multisite, set the admin email address using the network admin email address.<\\/li>\\n<li>Bug fix:      JIRA WPB-2223   Reworked API key validation and connection issue notices, formatting.<\\/li>\\n<li>Misc:         JIRA WPB-2256   Updated readme.txt for Tested up to: 4.6.<\\/li>\\n<li>Rework:       JIRA WPB-2150   Moved API methods to a new class, formatting, and phpcs rework.<\\/li>\\n<li>Bug fix:      JIRA WPB-2224   Hide the email address field when widget is loaded.<\\/li>\\n<li>Bug fix:      JIRA WPB-2225   Fixed jQuery Migrate deprecated warning.<\\/li>\\n<li>Update:       JIRA WPB-2245   Changed feed to pull from dashboard tag on blog.<\\/li>\\n<li>Bug fix:      JIRA WPB-2265   Uncaught TypeError: IMHWPB.BaseAdmin is not a constructor.<\\/li>\\n<li>Bug fix:      JIRA WBP-2236   Errors everywhere when logging in as an Editor.<\\/li>\\n<li>Bug fix:      JIRA WPB-2234   Add current<em>user<\\/em>can checks to Boldgrid<em>Inspirations->set<\\/em>api<em>key<\\/em>callback().<\\/li>\\n<li>Bug fix:      JIRA WPB-2237   Limit ajax requests by user.<\\/li>\\n<li>Bug fix:      JIRA WPB-2240   Limit printing of configs in head.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.2<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2058   Added wrap class to the tutorials page.<\\/li>\\n<li>Bug fix:      JIRA WPB-2184   In PHP 5.2, deactivate and die properly.<\\/li>\\n<li>New feature:                  Added BoldGrid news widget to dashboard.<\\/li>\\n<li>Bug fix:      JIRA WPB-1994   Fixed issue with WP Theme Editor not being available.<\\/li>\\n<li>New feature:                  Added BoldGrid Feedback widget.<\\/li>\\n<li>Bug fix:      JIRA WPB-2169   Connect Search defaults to smallest image size when no recommended sizes available.<\\/li>\\n<li>Bug fix:    JIRA WPB-2192 Allow bug report to correctly show parent themes if submitted.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2.1<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2160   New From GridBlocks, multiple pages are installed.<\\/li>\\n<li>Update:                       Changed text of getting and entering connect keys.<\\/li>\\n<li>Security:     JIRA WPB-2151   Disabled autocomplete for API key entry fields.<\\/li>\\n<li>Bug fix:      JIRA WPB-2145   Fixing issue with theme screenshots on Chrome Ubuntu.<\\/li>\\n<\\/ul>\\n\\n<h4>1.2<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2119   For asset downloads, when Imagick is loaded, set the thread limit to 1.<\\/li>\\n<li>Bug fix:      JIRA WPB-2125   Fixing issue where theme was overwritten without version change.<\\/li>\\n<li>Bug fix:      JIRA WPB-2104   Go back button hides all themes (Inspirations > Add Theme).<\\/li>\\n<li>Bug fix:      JIRA WPB-2107   BoldGrid Connect Search overlapping footer (Dashboard > Media).<\\/li>\\n<li>Bug fix:      JIRA WPB-2109   Session issues when starting over and importing active site.<\\/li>\\n<li>Bug fix:      JIRA WPB-2116   Changes to the order of images in a gallery are not saving.<\\/li>\\n<li>Bug fix:      JIRA WPB-2134   Staging\'s boldgrid_attribution option and \'Uninitialized string offset\' Notice.<\\/li>\\n<li>Bug fix:      JIRA WPB-2135   Image not replaced in Page &amp; Post Editor after using Connect Search.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.8<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2058   Added wrap class to Inspirations, so admin notices are displayed at the top.<\\/li>\\n<li>Bug fix:      JIRA WPB-2041   Fixed BoldGrid theme update check in WordPress 4.6.<\\/li>\\n<li>Testing:      JIRA WPB-2046   Tested on WordPress 4.5.3.<\\/li>\\n<li>New feature:  JIRA WPB-599    Added options for plugin and theme auto-updates via WordPress autoupdater.<\\/li>\\n<li>Update:       JIRA WPB-2008   Deploy class updated to allow for is_generic flag.<\\/li>\\n<li>Bug fix:      JIRA WPB-1950   Prevent a portait image from displaying atop \'Crop Image\' and \'Skip Cropping\' buttons.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.7<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-2032   Fixed issue when activating key.  Added nonce to api key form.<\\/li>\\n<li>Rework:       JIRA WPB-2030   Updated the \\\"I don\'t have an API key\\\" section.<\\/li>\\n<li>New feature:  JIRA WPB-2029   Added TOS box to API key submission form.<\\/li>\\n<li>New feature:  JIRA WPB-1905   Added capability for auto-updates of boldgrid-inspirations by API response.<\\/li>\\n<li>Bug fix:      JIRA WPB-2002   Fixed theme update issue where upgrader says is up to date at times.<\\/li>\\n<li>Bug fix:      JIRA WPB-2006   Pdes and Homepage not installing correctly on Inpirations Theme Only installs.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.6<\\/h4>\\n\\n<ul>\\n<li>New feature:  JIRA WPB-1839   Users can now change their theme release channel.<\\/li>\\n<li>Security fix: JIRA WPB-1977   Validate nonce for feedback form diagnostic data callback and form submit.<\\/li>\\n<li>Bug fix:      JIRA WPB-1955   Fatal error: Class \'Boldgrid<em>Staging<\\/em>Plugin\' not found.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.5<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1914   Staged image used on Active page not showing in cart.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.4<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1886   Fixed feedback notice being displayed too often (more than a week after submitting).<\\/li>\\n<li>New feature:  JIRA WPB-1183   Refresh the Library Tab after downloading an image.<\\/li>\\n<li>Update:       JIRA WPB-1865   Update style of \'Transactions\' pages to better incorporate BoldGrid Staging\'s nav menu.<\\/li>\\n<li>Update:       JIRA WPB-1884   Passed WordPress 4.5.1 testing.<\\/li>\\n<li>Bug fix:      JIRA WPB-1855   Do not display feedback notice on update or setting pages.<\\/li>\\n<li>Bug fix:      JIRA WPB-1860   Fixed horizontal line through screenshot in step 2.<\\/li>\\n<li>Bug fix:      JIRA WPB-1863   Cart does not look for watermarked images used within staged pages.<\\/li>\\n<li>Bug fix:      JIRA WPB-1891   View \\/ Download of images within receipts not working for images purchased via Staging.<\\/li>\\n<li>Bug fix:      JIRA WPB-1893   JS errors in console when viewing attachments.<\\/li>\\n<li>Bug fix:      JIRA WPB-1900   Attribution shows in menu when menu generated using wp<em>page<\\/em>menu.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.3<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1824   Fixed order of plugin deactivation and uninstall in Start Over process.<\\/li>\\n<li>Bug fix:      JIRA WPB-1814   Fixed PHP notice in page and post editor for In Menu when there is a corrupted nav menu array.<\\/li>\\n<li>Bug fix:      JIRA WPB-1823   Fixed display of \\\"Themes\\\" H1 and the additional themes bar when choosing active or staging before installing a theme.<\\/li>\\n<li>Bug fix:      JIRA WPB-1840   Fixing thumbnail presentation in inspirations and add new theme.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.2.3<\\/h4>\\n\\n<ul>\\n<li>Update:               Sync version. See version 1.1.1.1.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.2.2<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1833   Fixed checking for previously downloaded assets in deployment when using multisite (wp-preview).<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.2.1<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1817   BoldGrid Connect Search: Was not being added when changing a header image in the Customizer.<\\/li>\\n<li>Rework:       JIRA WPB-1541   Removed feedback form bug report diagnostic report items.<\\/li>\\n<li>Bug fix:      JIRA WPB-1816   Fixed update class interference with the Add Plugins page.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.2<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1809   Fixed undefined index \\\"action\\\" for some scenarios.  Optimized update class and addressed CodeSniffer items.<\\/li>\\n<li>Rework:       JIRA WPB-1541   Reworked admin feedback notice.<\\/li>\\n<li>Rework:       JIRA WPB-1751   Removed analysis processing and optional logging capabilities.  Added support for XHProf.<\\/li>\\n<li>Bug fix:      JIRA WPB-1805   Now adds theme update info on the Customizer Themes page.<\\/li>\\n<li>Rework:       JIRA WPB-1785   Enabled and reworked image caching for the preview server.<\\/li>\\n<li>Rework:       JIRA WPB-1751   Reworked analysis processing.<\\/li>\\n<li>Update:       JIRA WPB-1658   Storing more reliable install data through inspirations.<\\/li>\\n<li>Bug fix:      JIRA WPB-1787   When not using BoldGrid menu, cart does not dynamically update total page price.<\\/li>\\n<li>Update:       JIRA WPB-1754   Remove attribution page from search results.<\\/li>\\n<li>Bug fix:      JIRA WPB-1788   webkit css missing from \'new from gridblocks\'.<\\/li>\\n<li>New feature:  JIRA WPB-1806   Add \'BoldGrid search\' tab when replacing an image.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.1.1<\\/h4>\\n\\n<ul>\\n<li>Bug Fix:                      Fixing logo display on login screen.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1.1<\\/h4>\\n\\n<ul>\\n<li>Bug fix:                      Fixed analysis include for preview server.<\\/li>\\n<li>Bug fix:                      New From GridBlocks: Asset download issues.<\\/li>\\n<\\/ul>\\n\\n<h4>1.1<\\/h4>\\n\\n<ul>\\n<li>New feature:  JIRA WPB-1751   Added analysis processing and optional logging capabilities.<\\/li>\\n<li>Bug fix:      JIRA WPB-1781   Removed boldgrid<em>dismissed<\\/em>admin_notices from Start Over cleanup.<\\/li>\\n<li>New feature:  JIRA WPB-1541   Added feedback notice.<\\/li>\\n<li>Bug fix:      JIRA WPB-1747   New From GridBlocks: For non BoldGrid themes, only load grid css.<\\/li>\\n<li>Bug fix:      JIRA WPB-1760   New From GridBlocks: Ensure page title shows on preview page.<\\/li>\\n<li>Update:       JIRA WPB-1779   New From GridBlocks: Update verbiage for \'Downloading GridBlocks\'.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.12.1<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1710   Fixed missing device preview tabs on Add New Theme preview modal.<\\/li>\\n<li>Bug fix:      JIRA WPB-1710   Fixed notice dismissal checking.<\\/li>\\n<li>Bug fix:      JIRA WPB-1749   On start over, staging menus are not deleted.<\\/li>\\n<li>Bug fix:      JIRA WPB-1755   Gallery images not showing in cart.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.12<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1740   Fixed \\\"In Menu\\\" messages in editor when staging plugin is not active, and fixed saving menu selections.<\\/li>\\n<li>New feature:  JIRA WPB-1726   Added optional feedback for GridBlock Add Page.<\\/li>\\n<li>Removed Ft:   JIRA WPB-1710   Removed Inspirations Add Pages; replaced by GridBlocks.<\\/li>\\n<li>Misc:         JIRA WPB-1361   Added license file.<\\/li>\\n<li>New feature:                  Don\'t assign footer contact widget if using base pagesets.<\\/li>\\n<li>Bug Fix:      JIRA WPB-1732   Fixing css issues on login screen (firefox).<\\/li>\\n<li>Bug Fix:      JIRA WPB-1687   Image search: Title, Caption, Alt Text and Description do not display on new pages.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.11<\\/h4>\\n\\n<ul>\\n<li>New feature:  JIRA WPB-1699   Added optional feedback for theme activation.<\\/li>\\n<li>New feature:  JIRA WPB-1690   Adding BoldGrid themes to All themes install menu.<\\/li>\\n<li>Bug fix:      JIRA WPB-1686   Limited items loaded in network admin pages.<\\/li>\\n<li>Improvement:  JIRA WPB-1604   Added a \\\"Cancel\\\" link to the \\\"In Menu\\\" section.<\\/li>\\n<li>Improvement:  JIRA WPB-1603   Display menu locations in the editor \\\"In Menu\\\" section.<\\/li>\\n<li>Bug fix:      JIRA WPB-1602   Corrected capitalization of \\\"None\\\" under \\\"In menu\\\" in the editor.<\\/li>\\n<li>Improvement:  JIRA WPB-1664   Gets api<em>key and site<\\/em>hash from configs instead of get_option.<\\/li>\\n<li>Bug fix:      JIRA WPB-1597   Fixing indefined index error<\\/li>\\n<li>New feature:  JIRA WPB-1649   Added reporting of PHP version and mobile ratio.<\\/li>\\n<li>Bug fix:      JIRA WPB-1598   \'Mine\' count on \'all pages\' is incorrect.<\\/li>\\n<li>Bug fix:      JIRA WPB-1647   JS error with easy-attachment-preview-size.js.<\\/li>\\n<li>Bug fix:      JIRA WPB-1651   When the BG menu is turned off, Appearance link should take you to themes.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.10<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1632   Fixed handling of subcategory<em>id in deploy<\\/em>page_sets.<\\/li>\\n<li>New feature:  JIRA WPB-1510   Moved adhoc functions.php to class-boldgrid-inspirations-utility.php (class Boldgrid<em>Inspirations<\\/em>Utility).<\\/li>\\n<li>Rework:       JIRA WPB-1553   Updated require and include statements for standards.<\\/li>\\n<li>Bug fix:      JIRA WPB-1563   Updated pages in which wp<em>iframe-media<\\/em>upload.css is loaded.<\\/li>\\n<li>Bug fix:      JIRA WPB-1549   Resolve attribution page missing attribution for several images.png.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.9.2<\\/h4>\\n\\n<ul>\\n<li>Bug fix:                      Add GridBlock Sets feature disabled.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.9.1<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1553   Fixed support for PHP 5.2 to deactivate plugin.<\\/li>\\n<li>Bug fix:                      Prevent click of links in add<em>new<\\/em>page_selection previews.<\\/li>\\n<li>Bug fix:      JIRA WPB-1554   Fixed undefined JavaScript variable pagenow for customizer link.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.9<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1554   Fixed theme link in network dashboard nav menu.<\\/li>\\n<li>Bug fix:      JIRA WPB-1590   Fixed JavaScript error for undefined screen info in network dashboard.<\\/li>\\n<li>Bug fix:      JIRA WPB-1535   Fixed theme deployment issues.<\\/li>\\n<li>New feature:  JIRA WPB-1584   Added an opt-out feedback payload delivery system.<\\/li>\\n<li>New feature:  JIRA WPB-1580   Added optional feedback for customizer_start.<\\/li>\\n<li>Bug fix:      JIRA WPB-1571   Removed plugin dependency admin notice when editing an attachment (image).<\\/li>\\n<li>New feature:  JIRA WPB-1579   Added feedback opt-out in BoldGrid Settings, hidden for now.<\\/li>\\n<li>Bug fix:      JIRA WPB-1575   Addressed an issue causing mismatch color palettes on cached previews<\\/li>\\n<li>New feature:  JIRA WPB-1514   Add new pages offers page templates to choose from.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.8.1<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1553   Fixed PHP version check condition (&lt;5.3).<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.8<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1561   Fixed missing get<em>plugin<\\/em>data on update calls.<\\/li>\\n<li>New feature:  JIRA WPB-1511   Added dependency plugin notice on editor pages.<\\/li>\\n<li>Bug fix:      JIRA WPB-1553   Added support for <strong>DIR<\\/strong> in PHP &lt;=5.2.<\\/li>\\n<li>Bug fix:      JIRA WPB-1371   JSON encoded image data for media download requests.<\\/li>\\n<li>New feature:  JIRA WPB-1332   Swapping loading GIF to CSS loading image.<\\/li>\\n<li>New feature:  JIRA WPB-1072   Storing static pages on install<\\/li>\\n<li>New feature:  JIRA WPB-1539   When deleting a page, remove it from any applicable menus as well.<\\/li>\\n<li>New feature   JIRA WPB-1542   Manage menu assignment within editor.<\\/li>\\n<li>New feature   JIRA WPB-1555   Add wp-image-## class to images during deployment.<\\/li>\\n<li>New feature   JIRA WPB-1557   Add wp-image-## class to images when adding gridblocks.<\\/li>\\n<li>Bug fix:      JIRA WPB-1506   Theme naming missing in preview.<\\/li>\\n<li>Bug fix:      JIRA WPB-1443   Extra page listed under \'Mine\'.<\\/li>\\n<li>Bug fix:      JIRA WPB-1560   Install options not available on preview server<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.7<\\/h4>\\n\\n<ul>\\n<li>Rework:       JIRA WPB-1533   Ensured activation data is sent after first login.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.7<\\/h4>\\n\\n<ul>\\n<li>Rework:       JIRA WPB-1533   Ensured activation data is sent after first login.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.6<\\/h4>\\n\\n<ul>\\n<li>Rework:       JIRA WPB-1411   Added more output to the deploy log.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.5<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1462   Fixed position of dependency plugins admin notice.  Also limited to Dashboard and plugins page.<\\/li>\\n<li>Bug fix:      JIRA WPB-1290   Fixing issues with galleries leaving empty spaces<\\/li>\\n<li>Bug fix:      JIRA WPB-1471   Made deployment plugin installation respect release channel.<\\/li>\\n<li>Rework:       JIRA WPB-1452   Remove unneeded call to \'boldgrid<em>activate<\\/em>framework\' during deployment.<\\/li>\\n<li>Bug fix:      JIRA WPB-946    Fixed margin bug on step 2 additional themes.<\\/li>\\n<li>Bug fix:      JIRA WPB-1384   Increase width of select input on image search modal.<\\/li>\\n<li>Bug fix:      JIRA WPB-1508   BoldGrid Image search box size is inconsistent.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.4<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1442   Fixing inspiration border styles for wordpress 4.4<\\/li>\\n<li>Bug fix:      JIRA WPB-1461   Updating login button styles for wordpress 4.4<\\/li>\\n<li>Bug fix:      JIRA WPB-1411   Added initialization and checks for empty image queues in deployment.<\\/li>\\n<li>Bug fix:      JIRA WPB-1406   Attribution page still showing in \'All Pages\'.<\\/li>\\n<li>Bug fix:      JIRA WPB-1451   Active images are showing in Staging attribution page.<\\/li>\\n<li>Bug fix:      JIRA WPB-1466   Tabs on tutorials page too small at 1035px - 1482px.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.3<\\/h4>\\n\\n<ul>\\n<li>New feature:  JIRA WPB-1363   Updated readme.txt for WordPress standards.<\\/li>\\n<li>New feature:  JIRA WPB-1389   When starting over theme mods are saved with a flag to recompile sass<\\/li>\\n<li>Bug fix:      JIRA WPB-1420   Content of Attribution page is overwriting page saves.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.2<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1395   Adjusted theme update data; now gets theme uri from theme style.css, download url from api data.<\\/li>\\n<li>Rework        JIRA WPB-1374   Updated activation timestamp to use GMT\\/UTC.<\\/li>\\n<li>Bug fix:      JIRA WPB-1377   Reseller option is now set on first call to either the front end or wp_login.<\\/li>\\n<li>Bug fix:                      Adjusted handling for image purchases when errors occur.<\\/li>\\n<li>Bug fix:      JIRA WPB-1365   Purchase link on editing a page goes to wrong link.<\\/li>\\n<li>Bug fix:      JIRA WPB-1368   Inspirations step 0 text refers to nonexisting help tabs.<\\/li>\\n<li>Rework:       JIRA WPB-1378   Adjusted formatting of footer in Dashboard.<\\/li>\\n<li>Rework:       JIRA WPB-1369   Update minus signs on \'Transaction History\'.<\\/li>\\n<li>New feature:  JIRA WPB-1379   On the transactions page, show the reseller that processed the credits.<\\/li>\\n<li>Bug fix:                      Count of \'All\' pages inaccurate on \'All pages\'.<\\/li>\\n<li>Bug fix:      JIRA WPB-1367   Updated link for \'Lost your BoldGrid Connect Key?\'.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0.1<\\/h4>\\n\\n<ul>\\n<li>Bug fix:      JIRA WPB-1374   Updated activation timestamp to include timezone in UTC.<\\/li>\\n<li>Bug fix:                      Attribution page shows style tags.<\\/li>\\n<li>Bug fix:                      Strict Standards fix for wp<em>kses<\\/em>allowed_html.<\\/li>\\n<li>Bug fix:                      Fixed incorrect link.<\\/li>\\n<\\/ul>\\n\\n<h4>1.0<\\/h4>\\n\\n<ul>\\n<li>Initial public release.<\\/li>\\n<\\/ul>\\n\",\"upgrade_notice\":\"<h4>1.3<\\/h4>\\n\\n<p>Version 1.3 has been released with a redesigned Inspiration phase. For more information on this change and others, please visit our blog at https:\\/\\/www.boldgrid.com\\/boldgrid-1-3-released\\/ .<\\/p>\\n\\n<h4>1.0.2<\\/h4>\\n\\n<p>Users should upgrade to version 1.0.2 to ensure proper BoldGrid theme updates.<\\/p>\\n\"}\";s:7:\"siteurl\";s:25:\"https://www.boldgrid.com/\";s:13:\"compatibility\";s:78227:\"{\"5.8\":{\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.7.5\":{\"2.6.5\":[100,95]},\"5.7.4\":{\"2.6.5\":[100,95]},\"5.7.3\":{\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.7.2\":{\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.7.1\":{\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.7\":{\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.6.7\":{\"2.6.5\":[100,95]},\"5.6.6\":{\"2.6.5\":[100,95]},\"5.6.5\":{\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.6.4\":{\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.6.3\":{\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.6.2\":{\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.6.1\":{\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.6\":{\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.5.8\":{\"2.6.5\":[100,95]},\"5.5.7\":{\"2.6.5\":[100,95]},\"5.5.6\":{\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.5.5\":{\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.5.4\":{\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.5.3\":{\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.5.2\":{\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.5.1\":{\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.5\":{\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.4.9\":{\"2.6.5\":[100,95]},\"5.4.8\":{\"2.6.5\":[100,95]},\"5.4.7\":{\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.4.6\":{\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.4.5\":{\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.4.4\":{\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.4.3\":{\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.4.2\":{\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.4.1\":{\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.4\":{\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.3.9\":{\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.3.8\":{\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.3.7\":{\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.3.6\":{\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.3.5\":{\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.3.4\":{\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.3.3\":{\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.3.2\":{\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.3.1\":{\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.3\":{\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.2.9\":{\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.2.8\":{\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.2.7\":{\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.2.6\":{\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.2.5\":{\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.2.4\":{\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.2.3\":{\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.2.2\":{\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.2.1\":{\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.2\":{\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.1.8\":{\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.1.7\":{\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.1.6\":{\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.1.5\":{\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.1.4\":{\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.1.3\":{\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.1.2\":{\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.1.1\":{\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.1\":{\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.0.9\":{\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.0.8\":{\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.0.7\":{\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.0.6\":{\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.0.5\":{\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.0.4\":{\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.0.3\":{\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.0.2\":{\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.0.10\":{\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.0.1\":{\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"5.0\":{\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.9\":{\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.8\":{\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.7\":{\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.6\":{\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.5\":{\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.4\":{\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.3\":{\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.2\":{\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.14\":{\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.13\":{\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.12\":{\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.11\":{\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.10\":{\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9.1\":{\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.9\":{\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.8.9\":{\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.8.8\":{\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.8.7\":{\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.8.6\":{\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.8.5\":{\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.8.4\":{\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.8.3\":{\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.8.2\":{\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.8.10\":{\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.8.1\":{\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.8\":{\"1.4.0.1\":[100,12],\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7.9\":{\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7.8\":{\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7.7\":{\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7.6\":{\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7.5\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7.4\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7.3\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7.2\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7.13\":{\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7.12\":{\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7.11\":{\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7.10\":{\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7.1\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.7\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.6.9\":{\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.6.8\":{\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.6.7\":{\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.6.6\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.6.5\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.6.4\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.6.3\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.6.2\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.6.12\":{\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.6.11\":{\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.6.10\":{\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.6.1\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.6\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.5.9\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.5.8\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.5.7\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.5.6\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.5.5\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.5.4\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.5.3\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.5.2\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.5.12\":{\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.5.11\":{\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.5.10\":{\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.5.1\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.5\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.4.9\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.4.8\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.4.7\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.4.6\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.4.5\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.4.10\":{\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]},\"4.3.1\":{\"0.29\":[100,12],\"1.0.2\":[100,12],\"1.0.3\":[100,12],\"1.0.4\":[100,12],\"1.0.5\":[100,12],\"1.0.6\":[100,12],\"1.0.7\":[100,12],\"1.0.8.1\":[100,12],\"1.0.9.1\":[100,12],\"1.0.9.2\":[100,12],\"1.0.10\":[100,12],\"1.0.11\":[100,12],\"1.0.12.1\":[100,12],\"1.1.1\":[100,12],\"1.1.2.1\":[100,12],\"1.1.2.3\":[100,12],\"1.1.1.1\":[100,12],\"1.1.3\":[100,12],\"1.1.4\":[100,12],\"1.1.5\":[100,12],\"1.1.6\":[100,12],\"1.1.7\":[100,12],\"1.1.8\":[100,12],\"1.2\":[100,12],\"1.2.1\":[100,12],\"1.2.2\":[100,12],\"1.2.4\":[100,12],\"1.2.5\":[100,12],\"1.2.8\":[100,12],\"1.2.9\":[100,12],\"1.2.11\":[100,12],\"1.2.13\":[100,12],\"1.3\":[100,12],\"1.3.1\":[100,12],\"1.3.2\":[100,12],\"1.3.3\":[100,12],\"1.3.4\":[100,12],\"1.3.5\":[100,12],\"1.3.6\":[100,12],\"1.3.7\":[100,12],\"1.3.8\":[100,12],\"1.3.9\":[100,12],\"1.3.10\":[100,12],\"1.4\":[100,12],\"1.4.1\":[100,12],\"1.4.2\":[100,12],\"1.4.3\":[100,12],\"1.4.4\":[100,12],\"1.4.5\":[100,12],\"1.4.6\":[100,12],\"1.4.0.1\":[100,12],\"1.4.7\":[100,95],\"1.4.8\":[100,95],\"1.4.9\":[100,95],\"1.4.10\":[100,95],\"1.4.11\":[100,95],\"1.5\":[100,95],\"1.5.1\":[100,95],\"1.5.2\":[100,95],\"1.5.3\":[100,95],\"1.5.4\":[100,95],\"1.5.5\":[100,95],\"1.5.6-rc.1\":[100,95],\"1.5.6\":[100,95],\"1.5.7\":[100,95],\"1.5.8\":[100,95],\"1.6.0\":[100,95],\"1.6.1\":[100,95],\"1.6.2\":[100,95],\"1.6.3\":[100,95],\"1.6.4\":[100,95],\"1.6.5\":[100,95],\"1.7.0-rc.1\":[100,95],\"1.7.0-rc.2\":[100,95],\"2.0.0-rc.1\":[100,95],\"2.0.0-rc.2\":[100,95],\"2.0.0-rc.3\":[100,95],\"2.0.0\":[100,95],\"2.0.1\":[100,95],\"2.0.2\":[100,95],\"2.0.3\":[100,95],\"2.0.4\":[100,95],\"2.0.5\":[100,95],\"2.0.6\":[100,95],\"2.0.7\":[100,95],\"2.1.0-rc.1\":[100,95],\"2.1.0\":[100,95],\"2.1.1\":[100,95],\"2.2.0\":[100,95],\"2.2.1\":[100,95],\"2.2.2\":[100,95],\"2.3.0\":[100,95],\"2.3.1\":[100,95],\"2.4.0\":[100,95],\"2.4.1\":[100,95],\"2.4.2\":[100,95],\"2.4.3\":[100,95],\"2.4.4\":[100,95],\"2.5.0\":[100,95],\"2.5.1\":[100,95],\"2.5.2\":[100,95],\"2.6.0\":[100,95],\"2.6.1\":[100,95],\"2.6.2\":[100,95],\"2.6.3\":[100,95],\"2.6.4\":[100,95],\"2.6.5\":[100,95]}}\";s:6:\"rating\";i:100;s:11:\"num_ratings\";i:100000;s:4:\"tags\";s:113:\"{\"inspiration\":\"Inspiration\",\"customization\":\"Customization\",\"build\":\"Build\",\"create\":\"Create\",\"design\":\"Design\"}\";s:7:\"banners\";s:151:\"{\"low\":\"//repo.boldgrid.com/assets/banner-inspirations-banner-772x250.png\",\"high\":\"//repo.boldgrid.com/assets/banner-inspirations-banner-1544x500.png\"}\";s:6:\"editor\";O:8:\"stdClass\":3:{s:7:\"version\";s:7:\"1.6.0.2\";s:5:\"title\";s:15:\"BoldGrid Editor\";s:8:\"asset_id\";s:6:\"900312\";}s:7:\"staging\";O:8:\"stdClass\":3:{s:7:\"version\";s:5:\"1.5.1\";s:5:\"title\";s:16:\"BoldGrid Staging\";s:8:\"asset_id\";s:6:\"876738\";}s:14:\"theme_versions\";O:8:\"stdClass\":42:{s:2:\"26\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"1.20.9\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237030;s:7:\"package\";s:60:\"https://repo.boldgrid.com/themes/boldgrid-uptempo-1.20.9.zip\";}s:2:\"28\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"1.25.9\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237029;s:7:\"package\";s:58:\"https://repo.boldgrid.com/themes/boldgrid-diced-1.25.9.zip\";}s:2:\"29\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"1.25.9\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237028;s:7:\"package\";s:58:\"https://repo.boldgrid.com/themes/boldgrid-evolv-1.25.9.zip\";}s:2:\"30\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"1.20.9\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237027;s:7:\"package\";s:63:\"https://repo.boldgrid.com/themes/boldgrid-florentine-1.20.9.zip\";}s:2:\"31\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"1.25.9\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237026;s:7:\"package\";s:60:\"https://repo.boldgrid.com/themes/boldgrid-hifidel-1.25.9.zip\";}s:2:\"32\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"1.25.9\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237025;s:7:\"package\";s:58:\"https://repo.boldgrid.com/themes/boldgrid-hydra-1.25.9.zip\";}s:2:\"33\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"1.25.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237024;s:7:\"package\";s:58:\"https://repo.boldgrid.com/themes/boldgrid-linx-1.25.10.zip\";}s:2:\"34\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"1.25.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1236959;s:7:\"package\";s:62:\"https://repo.boldgrid.com/themes/boldgrid-pavilion-1.25.10.zip\";}s:2:\"35\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"1.25.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237023;s:7:\"package\";s:60:\"https://repo.boldgrid.com/themes/boldgrid-primas-1.25.10.zip\";}s:2:\"36\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"1.20.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237022;s:7:\"package\";s:61:\"https://repo.boldgrid.com/themes/boldgrid-resolve-1.20.10.zip\";}s:2:\"38\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"1.25.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237021;s:7:\"package\";s:62:\"https://repo.boldgrid.com/themes/boldgrid-vacation-1.25.10.zip\";}s:2:\"40\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"1.25.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237020;s:7:\"package\";s:61:\"https://repo.boldgrid.com/themes/boldgrid-gridone-1.25.10.zip\";}s:2:\"42\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"1.18.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237019;s:7:\"package\";s:62:\"https://repo.boldgrid.com/themes/boldgrid-venetian-1.18.10.zip\";}s:2:\"43\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"1.18.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237018;s:7:\"package\";s:59:\"https://repo.boldgrid.com/themes/boldgrid-haven-1.18.10.zip\";}s:2:\"44\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"1.16.11\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237017;s:7:\"package\";s:59:\"https://repo.boldgrid.com/themes/boldgrid-wedge-1.16.11.zip\";}s:2:\"45\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"1.15.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237016;s:7:\"package\";s:62:\"https://repo.boldgrid.com/themes/boldgrid-monument-1.15.10.zip\";}s:2:\"48\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"1.3.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237015;s:7:\"package\";s:61:\"https://repo.boldgrid.com/themes/boldgrid-callaway-1.3.10.zip\";}s:2:\"49\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"1.3.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1236956;s:7:\"package\";s:59:\"https://repo.boldgrid.com/themes/boldgrid-swifty-1.3.10.zip\";}s:2:\"50\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"1.3.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237014;s:7:\"package\";s:59:\"https://repo.boldgrid.com/themes/boldgrid-cobalt-1.3.10.zip\";}s:2:\"51\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"1.3.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237013;s:7:\"package\";s:61:\"https://repo.boldgrid.com/themes/boldgrid-westview-1.3.10.zip\";}s:2:\"52\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"0.4.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237012;s:7:\"package\";s:60:\"https://repo.boldgrid.com/themes/boldgrid-lattice-0.4.10.zip\";}s:2:\"54\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2020-05-15\";s:8:\"asset_id\";i:1097350;s:7:\"package\";s:45:\"https://repo.boldgrid.com/themes/Bolt-0.1.zip\";}s:2:\"56\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2020-06-30\";s:8:\"asset_id\";i:1110570;s:7:\"package\";s:49:\"https://repo.boldgrid.com/themes/Coherent-0.1.zip\";}s:2:\"57\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-01-29\";s:8:\"asset_id\";i:1166277;s:7:\"package\";s:49:\"https://repo.boldgrid.com/themes/SwiftyV2-0.1.zip\";}s:2:\"58\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-01-27\";s:8:\"asset_id\";i:1167731;s:7:\"package\";s:50:\"https://repo.boldgrid.com/themes/GridOneV2-0.1.zip\";}s:2:\"59\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-02-02\";s:8:\"asset_id\";i:1170404;s:7:\"package\";s:51:\"https://repo.boldgrid.com/themes/CallawayV2-0.1.zip\";}s:2:\"60\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-02-11\";s:8:\"asset_id\";i:1172882;s:7:\"package\";s:50:\"https://repo.boldgrid.com/themes/ResolveV2-0.1.zip\";}s:2:\"61\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-02-17\";s:8:\"asset_id\";i:1174594;s:7:\"package\";s:48:\"https://repo.boldgrid.com/themes/WedgeV2-0.1.zip\";}s:2:\"62\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-02-17\";s:8:\"asset_id\";i:1175323;s:7:\"package\";s:48:\"https://repo.boldgrid.com/themes/DicedV2-0.1.zip\";}s:2:\"63\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-02-25\";s:8:\"asset_id\";i:1177324;s:7:\"package\";s:47:\"https://repo.boldgrid.com/themes/LinxV2-0.1.zip\";}s:2:\"64\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-03-02\";s:8:\"asset_id\";i:1177773;s:7:\"package\";s:50:\"https://repo.boldgrid.com/themes/HifidelV2-0.1.zip\";}s:2:\"65\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-03-03\";s:8:\"asset_id\";i:1178992;s:7:\"package\";s:50:\"https://repo.boldgrid.com/themes/UptempoV2-0.1.zip\";}s:2:\"66\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-03-11\";s:8:\"asset_id\";i:1180564;s:7:\"package\";s:48:\"https://repo.boldgrid.com/themes/EvolvV2-0.1.zip\";}s:2:\"67\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-03-18\";s:8:\"asset_id\";i:1182152;s:7:\"package\";s:51:\"https://repo.boldgrid.com/themes/WestviewV2-0.1.zip\";}s:2:\"68\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-03-23\";s:8:\"asset_id\";i:1183787;s:7:\"package\";s:53:\"https://repo.boldgrid.com/themes/FlorentineV2-0.1.zip\";}s:2:\"69\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-04-01\";s:8:\"asset_id\";i:1184444;s:7:\"package\";s:52:\"https://repo.boldgrid.com/themes/CrioStarter-0.1.zip\";}s:2:\"70\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-04-07\";s:8:\"asset_id\";i:1187346;s:7:\"package\";s:51:\"https://repo.boldgrid.com/themes/VacationV2-0.1.zip\";}s:2:\"71\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-04-27\";s:8:\"asset_id\";i:1190564;s:7:\"package\";s:51:\"https://repo.boldgrid.com/themes/MonumentV2-0.1.zip\";}s:2:\"72\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-05-03\";s:8:\"asset_id\";i:1192977;s:7:\"package\";s:49:\"https://repo.boldgrid.com/themes/Hydra V2-0.1.zip\";}s:2:\"73\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-05-13\";s:8:\"asset_id\";i:1193996;s:7:\"package\";s:51:\"https://repo.boldgrid.com/themes/VenetianV2-0.1.zip\";}s:2:\"74\";O:8:\"stdClass\":4:{s:7:\"version\";s:3:\"0.1\";s:7:\"updated\";s:10:\"2021-05-20\";s:8:\"asset_id\";i:1196830;s:7:\"package\";s:49:\"https://repo.boldgrid.com/themes/PrimasV2-0.1.zip\";}s:2:\"99\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"1.3.10\";s:7:\"updated\";s:10:\"2022-01-24\";s:8:\"asset_id\";i:1237014;s:7:\"package\";s:59:\"https://repo.boldgrid.com/themes/boldgrid-cobalt-1.3.10.zip\";}}s:9:\"site_hash\";s:32:\"67ec663d31020091737cb666dfbd8175\";s:19:\"reseller_identifier\";s:3:\"DHX\";s:14:\"reseller_title\";s:9:\"DreamHost\";s:17:\"reseller_logo_url\";s:55:\"//api.boldgrid.com/img/reseller/logo/dreamhost-logo.jpg\";s:20:\"reseller_website_url\";s:26:\"https://www.dreamhost.com/\";s:20:\"reseller_support_url\";s:34:\"https://www.dreamhost.com/support/\";s:16:\"reseller_amp_url\";s:26:\"https://www.dreamhost.com/\";s:14:\"reseller_email\";s:21:\"support@dreamhost.com\";s:14:\"reseller_phone\";N;s:16:\"reseller_css_url\";s:71:\"/wp-content/plugins/boldgrid-inspirations/assets/css/boldgrid-login.css\";s:17:\"reseller_coin_url\";s:33:\"https://www.boldgrid.com/central/\";s:20:\"reseller_brand_login\";b:0;s:13:\"wporg_plugins\";O:8:\"stdClass\":4:{s:6:\"backup\";O:8:\"stdClass\":6:{s:8:\"repo_url\";s:50:\"https://plugins.svn.wordpress.org/boldgrid-backup/\";s:11:\"package_url\";s:66:\"https://downloads.wordpress.org/plugin/boldgrid-backup.1.14.13.zip\";s:4:\"slug\";s:15:\"boldgrid-backup\";s:8:\"old_slug\";s:15:\"boldgrid-backup\";s:5:\"title\";s:12:\"Total Upkeep\";s:7:\"version\";s:7:\"1.14.13\";}s:6:\"editor\";O:8:\"stdClass\":6:{s:8:\"repo_url\";s:56:\"https://plugins.svn.wordpress.org/post-and-page-builder/\";s:11:\"package_url\";s:71:\"https://downloads.wordpress.org/plugin/post-and-page-builder.1.19.0.zip\";s:4:\"slug\";s:21:\"post-and-page-builder\";s:8:\"old_slug\";s:15:\"boldgrid-editor\";s:5:\"title\";s:21:\"Post and Page Builder\";s:7:\"version\";s:6:\"1.19.0\";}s:3:\"seo\";O:8:\"stdClass\":6:{s:8:\"repo_url\";s:52:\"https://plugins.svn.wordpress.org/boldgrid-easy-seo/\";s:11:\"package_url\";s:67:\"https://downloads.wordpress.org/plugin/boldgrid-easy-seo.1.6.10.zip\";s:4:\"slug\";s:17:\"boldgrid-easy-seo\";s:8:\"old_slug\";s:12:\"boldgrid-seo\";s:5:\"title\";s:17:\"BoldGrid Easy SEO\";s:7:\"version\";s:6:\"1.6.10\";}s:7:\"weforms\";O:8:\"stdClass\":6:{s:8:\"repo_url\";s:42:\"https://plugins.svn.wordpress.org/weforms/\";s:11:\"package_url\";s:50:\"https://downloads.wordpress.org/plugin/weforms.zip\";s:4:\"slug\";s:7:\"weforms\";s:8:\"old_slug\";s:7:\"weforms\";s:5:\"title\";s:7:\"weForms\";s:7:\"version\";N;}}s:9:\"is_author\";b:0;}}s:14:\"license_status\";b:1;s:7:\"updated\";i:1654214550;}', 'no');
INSERT INTO `wp_y5c34k_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(38807, '_transient_timeout_global_styles_twentytwentyone', '1654214611', 'no'),
(38808, '_transient_global_styles_twentytwentyone', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #FFFFFF;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--dark-gray: #28303D;--wp--preset--color--gray: #39414D;--wp--preset--color--green: #D1E4DD;--wp--preset--color--blue: #D1DFE4;--wp--preset--color--purple: #D1D1E4;--wp--preset--color--red: #E4D1D1;--wp--preset--color--orange: #E4DAD1;--wp--preset--color--yellow: #EEEADD;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--gradient--purple-to-yellow: linear-gradient(160deg, #D1D1E4 0%, #EEEADD 100%);--wp--preset--gradient--yellow-to-purple: linear-gradient(160deg, #EEEADD 0%, #D1D1E4 100%);--wp--preset--gradient--green-to-yellow: linear-gradient(160deg, #D1E4DD 0%, #EEEADD 100%);--wp--preset--gradient--yellow-to-green: linear-gradient(160deg, #EEEADD 0%, #D1E4DD 100%);--wp--preset--gradient--red-to-yellow: linear-gradient(160deg, #E4D1D1 0%, #EEEADD 100%);--wp--preset--gradient--yellow-to-red: linear-gradient(160deg, #EEEADD 0%, #E4D1D1 100%);--wp--preset--gradient--purple-to-red: linear-gradient(160deg, #D1D1E4 0%, #E4D1D1 100%);--wp--preset--gradient--red-to-purple: linear-gradient(160deg, #E4D1D1 0%, #D1D1E4 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 18px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 24px;--wp--preset--font-size--x-large: 42px;--wp--preset--font-size--extra-small: 16px;--wp--preset--font-size--normal: 20px;--wp--preset--font-size--extra-large: 40px;--wp--preset--font-size--huge: 96px;--wp--preset--font-size--gigantic: 144px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(38809, '_transient_timeout_global_styles_svg_filters_twentytwentyone', '1654214611', 'no'),
(38810, '_transient_global_styles_svg_filters_twentytwentyone', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no'),
(38812, '_site_transient_timeout_theme_roots', '1654216353', 'no'),
(38813, '_site_transient_theme_roots', 'a:11:{s:5:\"astra\";s:7:\"/themes\";s:7:\"blocksy\";s:7:\"/themes\";s:15:\"hello-elementor\";s:7:\"/themes\";s:6:\"hestia\";s:7:\"/themes\";s:4:\"neve\";s:7:\"/themes\";s:7:\"oceanwp\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:5:\"ultra\";s:7:\"/themes\";}', 'no'),
(38818, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1654214554;s:7:\"checked\";a:11:{s:5:\"astra\";s:5:\"3.7.5\";s:7:\"blocksy\";s:7:\"1.8.6.9\";s:15:\"hello-elementor\";s:5:\"2.4.1\";s:6:\"hestia\";s:6:\"3.0.19\";s:4:\"neve\";s:5:\"3.1.1\";s:7:\"oceanwp\";s:5:\"3.1.2\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";s:15:\"twentytwentytwo\";s:3:\"1.0\";s:5:\"ultra\";s:5:\"1.6.3\";}s:8:\"response\";a:11:{s:5:\"astra\";a:6:{s:5:\"theme\";s:5:\"astra\";s:11:\"new_version\";s:5:\"3.8.2\";s:3:\"url\";s:35:\"https://wordpress.org/themes/astra/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/astra.3.8.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.3\";}s:7:\"blocksy\";a:6:{s:5:\"theme\";s:7:\"blocksy\";s:11:\"new_version\";s:6:\"1.8.35\";s:3:\"url\";s:37:\"https://wordpress.org/themes/blocksy/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/blocksy.1.8.35.zip\";s:8:\"requires\";s:3:\"5.2\";s:12:\"requires_php\";s:3:\"7.0\";}s:15:\"hello-elementor\";a:6:{s:5:\"theme\";s:15:\"hello-elementor\";s:11:\"new_version\";s:5:\"2.5.0\";s:3:\"url\";s:45:\"https://wordpress.org/themes/hello-elementor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/hello-elementor.2.5.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.6\";}s:6:\"hestia\";a:6:{s:5:\"theme\";s:6:\"hestia\";s:11:\"new_version\";s:6:\"3.0.22\";s:3:\"url\";s:36:\"https://wordpress.org/themes/hestia/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/hestia.3.0.22.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.4.0\";}s:4:\"neve\";a:6:{s:5:\"theme\";s:4:\"neve\";s:11:\"new_version\";s:5:\"3.2.5\";s:3:\"url\";s:34:\"https://wordpress.org/themes/neve/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/theme/neve.3.2.5.zip\";s:8:\"requires\";s:3:\"5.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:7:\"oceanwp\";a:6:{s:5:\"theme\";s:7:\"oceanwp\";s:11:\"new_version\";s:5:\"3.3.2\";s:3:\"url\";s:37:\"https://wordpress.org/themes/oceanwp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/oceanwp.3.3.2.zip\";s:8:\"requires\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"7.2\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.3.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}s:5:\"ultra\";a:6:{s:5:\"theme\";s:5:\"ultra\";s:11:\"new_version\";s:5:\"1.6.4\";s:3:\"url\";s:35:\"https://wordpress.org/themes/ultra/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/ultra.1.6.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(38819, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1654214554;s:8:\"response\";a:11:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";b:0;}s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:33:\"w.org/plugins/all-in-one-seo-pack\";s:4:\"slug\";s:19:\"all-in-one-seo-pack\";s:6:\"plugin\";s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";s:11:\"new_version\";s:7:\"4.2.1.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/all-in-one-seo-pack/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/all-in-one-seo-pack.4.2.1.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:72:\"https://ps.w.org/all-in-one-seo-pack/assets/icon-256x256.png?rev=2443290\";s:2:\"1x\";s:64:\"https://ps.w.org/all-in-one-seo-pack/assets/icon.svg?rev=2443290\";s:3:\"svg\";s:64:\"https://ps.w.org/all-in-one-seo-pack/assets/icon.svg?rev=2443290\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/all-in-one-seo-pack/assets/banner-1544x500.png?rev=2443290\";s:2:\"1x\";s:74:\"https://ps.w.org/all-in-one-seo-pack/assets/banner-772x250.png?rev=2443290\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"5.4\";s:14:\"upgrade_notice\";s:56:\"<p>This update adds major improvements and bugfixes.</p>\";}s:50:\"google-analytics-for-wordpress/googleanalytics.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:44:\"w.org/plugins/google-analytics-for-wordpress\";s:4:\"slug\";s:30:\"google-analytics-for-wordpress\";s:6:\"plugin\";s:50:\"google-analytics-for-wordpress/googleanalytics.php\";s:11:\"new_version\";s:5:\"8.5.3\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/google-analytics-for-wordpress/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/google-analytics-for-wordpress.8.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:83:\"https://ps.w.org/google-analytics-for-wordpress/assets/icon-256x256.png?rev=1598927\";s:2:\"1x\";s:75:\"https://ps.w.org/google-analytics-for-wordpress/assets/icon.svg?rev=1598927\";s:3:\"svg\";s:75:\"https://ps.w.org/google-analytics-for-wordpress/assets/icon.svg?rev=1598927\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/google-analytics-for-wordpress/assets/banner-1544x500.png?rev=2159532\";s:2:\"1x\";s:85:\"https://ps.w.org/google-analytics-for-wordpress/assets/banner-772x250.png?rev=2159532\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.8.0\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"5.5\";}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:6:\"10.9.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/jetpack.10.9.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=2638128\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=2638128\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=2638128\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=2653649\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=2653649\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"5.6\";}s:37:\"optinmonster/optin-monster-wp-api.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/optinmonster\";s:4:\"slug\";s:12:\"optinmonster\";s:6:\"plugin\";s:37:\"optinmonster/optin-monster-wp-api.php\";s:11:\"new_version\";s:5:\"2.7.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/optinmonster/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/optinmonster.2.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/optinmonster/assets/icon-256x256.png?rev=1145864\";s:2:\"1x\";s:65:\"https://ps.w.org/optinmonster/assets/icon-128x128.png?rev=1145864\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/optinmonster/assets/banner-1544x500.png?rev=2311621\";s:2:\"1x\";s:67:\"https://ps.w.org/optinmonster/assets/banner-772x250.png?rev=2311621\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.7.0\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";s:3:\"5.3\";}s:47:\"post-and-page-builder/post-and-page-builder.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/post-and-page-builder\";s:4:\"slug\";s:21:\"post-and-page-builder\";s:6:\"plugin\";s:47:\"post-and-page-builder/post-and-page-builder.php\";s:11:\"new_version\";s:6:\"1.19.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/post-and-page-builder/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/post-and-page-builder.1.19.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/post-and-page-builder/assets/icon-256x256.png?rev=1768477\";s:2:\"1x\";s:74:\"https://ps.w.org/post-and-page-builder/assets/icon-128x128.png?rev=1768477\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/post-and-page-builder/assets/banner-1544x500.png?rev=1768477\";s:2:\"1x\";s:76:\"https://ps.w.org/post-and-page-builder/assets/banner-772x250.png?rev=1768477\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"5.4\";}s:35:\"boldgrid-backup/boldgrid-backup.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/boldgrid-backup\";s:4:\"slug\";s:15:\"boldgrid-backup\";s:6:\"plugin\";s:35:\"boldgrid-backup/boldgrid-backup.php\";s:11:\"new_version\";s:6:\"1.15.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/boldgrid-backup/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/boldgrid-backup.1.15.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/boldgrid-backup/assets/icon-256x256.png?rev=1880952\";s:2:\"1x\";s:68:\"https://ps.w.org/boldgrid-backup/assets/icon-128x128.png?rev=1880952\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/boldgrid-backup/assets/banner-1544x500.png?rev=1880952\";s:2:\"1x\";s:70:\"https://ps.w.org/boldgrid-backup/assets/banner-772x250.png?rev=1880952\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.4\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"5.4\";}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.7.4.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.7.4.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=2574201\";s:2:\"1x\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=2574198\";s:3:\"svg\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=2574198\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=2602491\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=2602491\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500-rtl.png?rev=2602491\";s:2:\"1x\";s:71:\"https://ps.w.org/wpforms-lite/assets/banner-772x250-rtl.png?rev=2602491\";}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"5.6\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.4.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2468655\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2468655\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:47:\"boldgrid-inspirations/boldgrid-inspirations.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:21:\"boldgrid-inspirations\";s:6:\"plugin\";s:47:\"boldgrid-inspirations/boldgrid-inspirations.php\";s:11:\"new_version\";s:5:\"2.6.5\";s:3:\"url\";s:25:\"https://www.boldgrid.com/\";s:7:\"package\";s:148:\"https://wp-assets.boldgrid.com/api/asset/get?key=ccff60f0222f8af3362d56aa13e8d007&id=1237200&installed_plugin_version=2.6.4&installed_wp_version=6.0\";}s:63:\"post-and-page-builder-premium/post-and-page-builder-premium.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:29:\"post-and-page-builder-premium\";s:6:\"plugin\";s:63:\"post-and-page-builder-premium/post-and-page-builder-premium.php\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:24:\"http://www.boldgrid.com/\";s:7:\"package\";s:110:\"https://api.boldgrid.com/api/open/get-asset?id=1250159&installed_plugin_version=1.0.5&installed_wp_version=6.0\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:39:\"boldgrid-easy-seo/boldgrid-easy-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/boldgrid-easy-seo\";s:4:\"slug\";s:17:\"boldgrid-easy-seo\";s:6:\"plugin\";s:39:\"boldgrid-easy-seo/boldgrid-easy-seo.php\";s:11:\"new_version\";s:6:\"1.6.10\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/boldgrid-easy-seo/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/boldgrid-easy-seo.1.6.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/boldgrid-easy-seo/assets/icon-256x256.png?rev=1773296\";s:2:\"1x\";s:70:\"https://ps.w.org/boldgrid-easy-seo/assets/icon-128x128.png?rev=1773296\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/boldgrid-easy-seo/assets/banner-1544x500.png?rev=1773381\";s:2:\"1x\";s:72:\"https://ps.w.org/boldgrid-easy-seo/assets/banner-772x250.png?rev=1773381\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.4\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"1.7.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.1.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}s:31:\"boldgrid-gallery/wc-gallery.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:16:\"boldgrid-gallery\";s:6:\"plugin\";s:31:\"boldgrid-gallery/wc-gallery.php\";s:11:\"new_version\";s:5:\"1.5.1\";s:3:\"url\";s:24:\"http://www.boldgrid.com/\";s:7:\"package\";s:116:\"https://wp-assets.boldgrid.com/api/open/get-asset?id=1118061&installed_plugin_version=1.5.1&installed_wp_version=6.0\";}}s:6:\"tested\";s:3:\"5.3\";}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_postmeta`
--

CREATE TABLE `wp_y5c34k_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_postmeta`
--

INSERT INTO `wp_y5c34k_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 4, '_wp_page_template', 'default'),
(21, 3, '_edit_lock', '1639281366:1'),
(22, 2, '_edit_lock', '1639281386:1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_posts`
--

CREATE TABLE `wp_y5c34k_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_posts`
--

INSERT INTO `wp_y5c34k_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-12-12 01:13:42', '2021-12-12 01:13:42', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-12-12 01:13:42', '2021-12-12 01:13:42', '', 0, 'http://www.sistematizaciondatos.com/?p=1', 0, 'post', '', 1),
(2, 1, '2021-12-12 01:13:42', '2021-12-12 01:13:42', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://www.sistematizaciondatos.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-12-12 01:13:42', '2021-12-12 01:13:42', '', 0, 'http://www.sistematizaciondatos.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-12-12 01:13:42', '2021-12-12 01:13:42', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://www.sistematizaciondatos.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-12-12 01:13:42', '2021-12-12 01:13:42', '', 0, 'http://www.sistematizaciondatos.com/?page_id=3', 0, 'page', '', 0),
(4, 0, '2021-12-12 01:16:06', '2021-12-12 01:16:06', '\n<p>Coming soon.</p>\n', 'Attribution', '', 'publish', 'closed', 'closed', '', 'attribution', '', '', '2021-12-12 01:16:06', '2021-12-12 01:16:06', '', 0, 'http://www.sistematizaciondatos.com/attribution/', 0, 'bg_attribution', '', 0),
(16, 1, '2021-12-12 03:57:24', '0000-00-00 00:00:00', '', 'Block Preview Page', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-12 03:57:24', '0000-00-00 00:00:00', '', 0, 'http://www.sistematizaciondatos.com.dream.website/?page_id=16', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_termmeta`
--

CREATE TABLE `wp_y5c34k_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_terms`
--

CREATE TABLE `wp_y5c34k_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_terms`
--

INSERT INTO `wp_y5c34k_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_term_relationships`
--

CREATE TABLE `wp_y5c34k_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_term_relationships`
--

INSERT INTO `wp_y5c34k_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_term_taxonomy`
--

CREATE TABLE `wp_y5c34k_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_term_taxonomy`
--

INSERT INTO `wp_y5c34k_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_usermeta`
--

CREATE TABLE `wp_y5c34k_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_usermeta`
--

INSERT INTO `wp_y5c34k_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sistematizaciondatos_kud071'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_y5c34k_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_y5c34k_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ',wp410_dfw'),
(15, 1, 'default_password_nag', '1'),
(16, 1, 'show_welcome_panel', '1'),
(17, 1, 'one_time_login_token', 'a:20:{i:0;s:40:\"de9450cab8f324fd6fb4f42311c99aca3cd75348\";i:1;s:40:\"2424c50e39fbf1de51f2eb66bb3d22c364551d3e\";i:2;s:40:\"0352277e0b39f9ab7a715cd7c8146d35f526b800\";i:3;s:40:\"093b5f5faf2523789a7a53519db4b842eaf9669b\";i:4;s:40:\"ccf270c8fb45d1ee70cf01ebbd7529095aedfd4a\";i:5;s:40:\"e674cfcb6d491abb3be8c7432de4c53e5df62d31\";i:6;s:40:\"2e37fd242ba7f064ad6ea9c1a0e2a80e29e7cbc4\";i:7;s:40:\"56c93dfa9a557cdf7627702f634a84cdf7116e5a\";i:8;s:40:\"55ea0c07b9dbec2c286609cb9178e7627af8a4c0\";i:9;s:40:\"248cea6fe55a70b1c60420ba695b0b8b7e4fd243\";i:10;s:40:\"b5b8719f02dc35058a77a52ac1ed0d0aff92326e\";i:11;s:40:\"e4a3ac056283c807a46d0de484aa2ea7e0239984\";i:12;s:40:\"3588a0d97c41f443ee8e750d9bd41c6d62d41e20\";i:13;s:40:\"2edf820605a54dcb9f13441d71da5d1cc88aeb0a\";i:14;s:40:\"8b36689faff0c3a05a97e46ed22c59f4c7ae3c82\";i:15;s:40:\"0d1bb24d326caf895ac91de0fddefe9a264f75c5\";i:16;s:40:\"15d7e84e22c29e373d4272d7555d5b7c41f23950\";i:17;s:40:\"9ac26834118d8a8e2683d22e2ffb020068d33fcc\";i:18;s:40:\"2400877ce1426922dff7c86c5d18560037f838a4\";i:19;s:40:\"1d1404df9853a5fb74cd5afeb5b8816d1e54945f\";}'),
(18, 1, 'session_tokens', 'a:2:{s:64:\"db012e14a50023b24cc37e43543afe9bdb80bc9444e81280422935804d51a1a3\";a:4:{s:10:\"expiration\";i:1649349613;s:2:\"ip\";s:14:\"186.81.168.112\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36\";s:5:\"login\";i:1648140013;}s:64:\"35553fa5a697931e49415aff80f9d3e951ef0f173497915a922d0b6ef2a12723\";a:4:{s:10:\"expiration\";i:1649352205;s:2:\"ip\";s:14:\"186.81.168.112\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36\";s:5:\"login\";i:1648142605;}}'),
(19, 1, 'bglibDashboardOrder', '1'),
(20, 1, 'wp_y5c34k_dashboard_quick_press_last_post_id', '22'),
(21, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"186.81.168.0\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_users`
--

CREATE TABLE `wp_y5c34k_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_users`
--

INSERT INTO `wp_y5c34k_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sistematizaciondatos_kud071', '$P$BnhxBhkJFMk32L9mZpAOv2T/v1A0Af.', 'sistematizaciondatos_kud071', 'luchofelipe20002000@gmail.com', 'http://www.sistematizaciondatos.com', '2021-12-12 01:13:42', '1639271623:$P$BQ28XePB1NbggwNhCbew.adNQXGW3n0', 0, 'sistematizaciondatos_kud071');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_y5c34k_wpforms_tasks_meta`
--

CREATE TABLE `wp_y5c34k_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_y5c34k_wpforms_tasks_meta`
--

INSERT INTO `wp_y5c34k_wpforms_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-12-12 02:38:09'),
(2, 'wpforms_admin_addons_cache_update', 'W10=', '2021-12-12 02:38:13'),
(3, 'wpforms_admin_notifications_update', 'W10=', '2021-12-12 02:38:13'),
(4, 'wpforms_admin_builder_templates_cache_update', 'W10=', '2021-12-12 02:38:13'),
(5, 'wpforms_admin_notifications_update', 'W10=', '2021-12-16 01:56:08'),
(6, 'wpforms_admin_notifications_update', 'W10=', '2022-03-24 16:40:18'),
(7, 'wpforms_admin_notifications_update', 'W10=', '2022-03-25 22:36:01'),
(8, 'wpforms_admin_notifications_update', 'W10=', '2022-03-27 01:11:54'),
(9, 'wpforms_admin_notifications_update', 'W10=', '2022-03-27 01:11:54'),
(10, 'wpforms_admin_notifications_update', 'W10=', '2022-03-28 02:10:53'),
(11, 'wpforms_admin_notifications_update', 'W10=', '2022-03-29 05:21:41'),
(12, 'wpforms_admin_notifications_update', 'W10=', '2022-04-06 09:50:31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carga_2022_3`
--
ALTER TABLE `carga_2022_3`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `codigo_res_espacio` (`codigo_res_espacio`),
  ADD KEY `nombre_res_profesor` (`nombre_res_profesor`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `res_asignacion_didactica`
--
ALTER TABLE `res_asignacion_didactica`
  ADD PRIMARY KEY (`codigo_espacio`,`codigo_profesor`,`codigo_didactica`),
  ADD UNIQUE KEY `codigo_didactica` (`codigo_didactica`),
  ADD KEY `codigo_profesor` (`codigo_profesor`);

--
-- Indices de la tabla `res_asignacion_herramientas_conceptuales`
--
ALTER TABLE `res_asignacion_herramientas_conceptuales`
  ADD KEY `codigo_profesor` (`codigo_profesor`),
  ADD KEY `codigo_herramientas_conceptuales` (`codigo_herramientas_conceptuales`),
  ADD KEY `codigo_espacio` (`codigo_espacio`);

--
-- Indices de la tabla `res_asignacion_objetos_de_estudio`
--
ALTER TABLE `res_asignacion_objetos_de_estudio`
  ADD KEY `codigo_profesor` (`codigo_profesor`),
  ADD KEY `codigo_objetos_de_estudio` (`codigo_objetos_de_estudio`),
  ADD KEY `codigo_espacio` (`codigo_espacio`);

--
-- Indices de la tabla `res_asignacion_pensamiento`
--
ALTER TABLE `res_asignacion_pensamiento`
  ADD KEY `codigo_profesor` (`codigo_profesor`),
  ADD KEY `codigo_espacio` (`codigo_espacio`),
  ADD KEY `codigo_pensamiento` (`codigo_pensamiento`);

--
-- Indices de la tabla `res_asignacion_recursos`
--
ALTER TABLE `res_asignacion_recursos`
  ADD KEY `codigo_profesor` (`codigo_profesor`),
  ADD KEY `codigo_espacio` (`codigo_espacio`),
  ADD KEY `codigo_recursos` (`codigo_recursos`);

--
-- Indices de la tabla `res_asignacion_resultados_de_aprendizaje`
--
ALTER TABLE `res_asignacion_resultados_de_aprendizaje`
  ADD KEY `codigo_profesor` (`codigo_profesor`),
  ADD KEY `codigo_espacio` (`codigo_espacio`),
  ADD KEY `codigo_resultados` (`codigo_resultados`);

--
-- Indices de la tabla `res_asignatura`
--
ALTER TABLE `res_asignatura`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `semestre_asignatura` (`semestre_asignatura`),
  ADD KEY `clasificacion_espacio` (`clasificacion_espacio`);

--
-- Indices de la tabla `res_clasifica_espacio`
--
ALTER TABLE `res_clasifica_espacio`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `res_componente`
--
ALTER TABLE `res_componente`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `res_didactica`
--
ALTER TABLE `res_didactica`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `res_espacio`
--
ALTER TABLE `res_espacio`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `res_espacio` (`codigo_componente`);

--
-- Indices de la tabla `res_herramientas_conceptuales`
--
ALTER TABLE `res_herramientas_conceptuales`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `res_objetos_de_estudio`
--
ALTER TABLE `res_objetos_de_estudio`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `res_pensamiento`
--
ALTER TABLE `res_pensamiento`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `res_profesor`
--
ALTER TABLE `res_profesor`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `res_recursos`
--
ALTER TABLE `res_recursos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `res_resultados_de_aprendizaje`
--
ALTER TABLE `res_resultados_de_aprendizaje`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `res_semestre`
--
ALTER TABLE `res_semestre`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `wp_y5c34k_actionscheduler_actions`
--
ALTER TABLE `wp_y5c34k_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indices de la tabla `wp_y5c34k_actionscheduler_claims`
--
ALTER TABLE `wp_y5c34k_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indices de la tabla `wp_y5c34k_actionscheduler_groups`
--
ALTER TABLE `wp_y5c34k_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp_y5c34k_actionscheduler_logs`
--
ALTER TABLE `wp_y5c34k_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indices de la tabla `wp_y5c34k_aioseo_cache`
--
ALTER TABLE `wp_y5c34k_aioseo_cache`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ndx_aioseo_cache_key` (`key`),
  ADD KEY `ndx_aioseo_cache_expiration` (`expiration`);

--
-- Indices de la tabla `wp_y5c34k_aioseo_notifications`
--
ALTER TABLE `wp_y5c34k_aioseo_notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ndx_aioseo_notifications_slug` (`slug`),
  ADD KEY `ndx_aioseo_notifications_dates` (`start`,`end`),
  ADD KEY `ndx_aioseo_notifications_type` (`type`),
  ADD KEY `ndx_aioseo_notifications_dismissed` (`dismissed`);

--
-- Indices de la tabla `wp_y5c34k_aioseo_posts`
--
ALTER TABLE `wp_y5c34k_aioseo_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ndx_aioseo_posts_post_id` (`post_id`);

--
-- Indices de la tabla `wp_y5c34k_commentmeta`
--
ALTER TABLE `wp_y5c34k_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_y5c34k_comments`
--
ALTER TABLE `wp_y5c34k_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_y5c34k_links`
--
ALTER TABLE `wp_y5c34k_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_y5c34k_options`
--
ALTER TABLE `wp_y5c34k_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_y5c34k_postmeta`
--
ALTER TABLE `wp_y5c34k_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_y5c34k_posts`
--
ALTER TABLE `wp_y5c34k_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_y5c34k_termmeta`
--
ALTER TABLE `wp_y5c34k_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_y5c34k_terms`
--
ALTER TABLE `wp_y5c34k_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_y5c34k_term_relationships`
--
ALTER TABLE `wp_y5c34k_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_y5c34k_term_taxonomy`
--
ALTER TABLE `wp_y5c34k_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_y5c34k_usermeta`
--
ALTER TABLE `wp_y5c34k_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_y5c34k_users`
--
ALTER TABLE `wp_y5c34k_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_y5c34k_wpforms_tasks_meta`
--
ALTER TABLE `wp_y5c34k_wpforms_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `res_asignacion_didactica`
--
ALTER TABLE `res_asignacion_didactica`
  MODIFY `codigo_didactica` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `res_didactica`
--
ALTER TABLE `res_didactica`
  MODIFY `codigo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_actionscheduler_actions`
--
ALTER TABLE `wp_y5c34k_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_actionscheduler_claims`
--
ALTER TABLE `wp_y5c34k_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_actionscheduler_groups`
--
ALTER TABLE `wp_y5c34k_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_actionscheduler_logs`
--
ALTER TABLE `wp_y5c34k_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_aioseo_cache`
--
ALTER TABLE `wp_y5c34k_aioseo_cache`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_aioseo_notifications`
--
ALTER TABLE `wp_y5c34k_aioseo_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_aioseo_posts`
--
ALTER TABLE `wp_y5c34k_aioseo_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_commentmeta`
--
ALTER TABLE `wp_y5c34k_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_comments`
--
ALTER TABLE `wp_y5c34k_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_links`
--
ALTER TABLE `wp_y5c34k_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_options`
--
ALTER TABLE `wp_y5c34k_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38820;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_postmeta`
--
ALTER TABLE `wp_y5c34k_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_posts`
--
ALTER TABLE `wp_y5c34k_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_termmeta`
--
ALTER TABLE `wp_y5c34k_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_terms`
--
ALTER TABLE `wp_y5c34k_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_term_taxonomy`
--
ALTER TABLE `wp_y5c34k_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_usermeta`
--
ALTER TABLE `wp_y5c34k_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_users`
--
ALTER TABLE `wp_y5c34k_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_y5c34k_wpforms_tasks_meta`
--
ALTER TABLE `wp_y5c34k_wpforms_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carga_2022_3`
--
ALTER TABLE `carga_2022_3`
  ADD CONSTRAINT `carga_2022_3_ibfk_1` FOREIGN KEY (`codigo_res_espacio`) REFERENCES `res_espacio` (`codigo`),
  ADD CONSTRAINT `carga_2022_3_ibfk_2` FOREIGN KEY (`nombre_res_profesor`) REFERENCES `res_profesor` (`codigo`);

--
-- Filtros para la tabla `res_asignacion_didactica`
--
ALTER TABLE `res_asignacion_didactica`
  ADD CONSTRAINT `res_asignacion_didactica_ibfk_1` FOREIGN KEY (`codigo_espacio`) REFERENCES `res_espacio` (`codigo`),
  ADD CONSTRAINT `res_asignacion_didactica_ibfk_2` FOREIGN KEY (`codigo_profesor`) REFERENCES `res_profesor` (`codigo`),
  ADD CONSTRAINT `res_asignacion_didactica_ibfk_3` FOREIGN KEY (`codigo_didactica`) REFERENCES `res_didactica` (`codigo`);

--
-- Filtros para la tabla `res_asignacion_herramientas_conceptuales`
--
ALTER TABLE `res_asignacion_herramientas_conceptuales`
  ADD CONSTRAINT `res_asignacion_herramientas_conceptuales_ibfk_1` FOREIGN KEY (`codigo_profesor`) REFERENCES `res_profesor` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `res_asignacion_herramientas_conceptuales_ibfk_2` FOREIGN KEY (`codigo_herramientas_conceptuales`) REFERENCES `res_herramientas_conceptuales` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `res_asignacion_herramientas_conceptuales_ibfk_3` FOREIGN KEY (`codigo_espacio`) REFERENCES `res_espacio` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `res_asignacion_objetos_de_estudio`
--
ALTER TABLE `res_asignacion_objetos_de_estudio`
  ADD CONSTRAINT `res_asignacion_objetos_de_estudio_ibfk_1` FOREIGN KEY (`codigo_profesor`) REFERENCES `res_profesor` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `res_asignacion_objetos_de_estudio_ibfk_2` FOREIGN KEY (`codigo_objetos_de_estudio`) REFERENCES `res_objetos_de_estudio` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `res_asignacion_objetos_de_estudio_ibfk_3` FOREIGN KEY (`codigo_espacio`) REFERENCES `res_espacio` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `res_asignacion_pensamiento`
--
ALTER TABLE `res_asignacion_pensamiento`
  ADD CONSTRAINT `res_asignacion_pensamiento_ibfk_1` FOREIGN KEY (`codigo_profesor`) REFERENCES `res_profesor` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `res_asignacion_pensamiento_ibfk_2` FOREIGN KEY (`codigo_espacio`) REFERENCES `res_espacio` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `res_asignacion_pensamiento_ibfk_3` FOREIGN KEY (`codigo_pensamiento`) REFERENCES `res_pensamiento` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `res_asignacion_recursos`
--
ALTER TABLE `res_asignacion_recursos`
  ADD CONSTRAINT `res_asignacion_recursos_ibfk_1` FOREIGN KEY (`codigo_profesor`) REFERENCES `res_profesor` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `res_asignacion_recursos_ibfk_2` FOREIGN KEY (`codigo_espacio`) REFERENCES `res_espacio` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `res_asignacion_recursos_ibfk_3` FOREIGN KEY (`codigo_recursos`) REFERENCES `res_recursos` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `res_asignacion_resultados_de_aprendizaje`
--
ALTER TABLE `res_asignacion_resultados_de_aprendizaje`
  ADD CONSTRAINT `res_asignacion_resultados_de_aprendizaje_ibfk_1` FOREIGN KEY (`codigo_profesor`) REFERENCES `res_profesor` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `res_asignacion_resultados_de_aprendizaje_ibfk_2` FOREIGN KEY (`codigo_espacio`) REFERENCES `res_espacio` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `res_asignacion_resultados_de_aprendizaje_ibfk_3` FOREIGN KEY (`codigo_resultados`) REFERENCES `res_resultados_de_aprendizaje` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `res_asignatura`
--
ALTER TABLE `res_asignatura`
  ADD CONSTRAINT `res_asignatura_ibfk_1` FOREIGN KEY (`semestre_asignatura`) REFERENCES `res_semestre` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `res_asignatura_ibfk_2` FOREIGN KEY (`clasificacion_espacio`) REFERENCES `res_clasifica_espacio` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `res_espacio`
--
ALTER TABLE `res_espacio`
  ADD CONSTRAINT `res_espacio_ibfk_1` FOREIGN KEY (`codigo_componente`) REFERENCES `res_componente` (`codigo`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
