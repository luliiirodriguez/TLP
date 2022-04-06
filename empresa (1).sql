-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2022 a las 19:47:52
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `T#` varchar(20) NOT NULL,
  `TNOMBRE` varchar(20) NOT NULL,
  `CIUDAD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`T#`, `TNOMBRE`, `CIUDAD`) VALUES
('T1', 'CLASIFICADORA', 'MADRID'),
('T2', 'PERFORADORA', 'MALAGA'),
('T3', 'LECTORA', 'CACERES'),
('T4', 'CONSOLA', 'CACERES'),
('T5', 'MEZCLADORA', 'SEVILLA'),
('T6', 'TERMINAL', 'BARCELONA'),
('T7', 'CINTA', 'SEVILLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes`
--

CREATE TABLE `componentes` (
  `C#` varchar(20) NOT NULL,
  `CNombre` varchar(20) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `Peso` int(20) NOT NULL,
  `Unidad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `componentes`
--

INSERT INTO `componentes` (`C#`, `CNombre`, `Color`, `Peso`, `Unidad`) VALUES
('C1', 'X3A', 'Rojo', 12, 'Sevilla'),
('C2', 'B85', 'verde', 17, 'Madrid'),
('C3', 'C4B', 'AZUL', 17, 'MALAGA'),
('C4', 'C4B', 'ROJO', 14, 'SEVILLA'),
('C5', 'V18', 'AZUL', 12, 'MADRID'),
('C6', 'C30', 'ROJO', 19, 'SEVILLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `P#` varchar(20) NOT NULL,
  `C#` varchar(20) NOT NULL,
  `T#` varchar(20) NOT NULL,
  `CANTIDAD` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`P#`, `C#`, `T#`, `CANTIDAD`) VALUES
('P1', 'C1', 'T1', 200),
('P1', '', '', 0),
('P2', 'C3', 'T1', 400),
('P2', 'C3', 'T2', 200),
('P2', 'C3', 'T4', 500),
('P2', 'C4', 'T5', 600),
('P2', 'C3', 'T5', 600),
('P2', 'C3', 'T6', 400),
('P2', 'C3', 'T7', 800),
('P2', 'C5', 'T2', 500),
('P4', 'C6', 'T3', 300),
('P4', 'C6', 'T7', 300),
('P5', 'C2', 'T2', 200),
('P5', 'C2', 'T4', 100),
('P5', 'C5', 'T4', 500),
('P1', 'C5', 'T4', 100),
('P5', 'C4', 'T4', 200),
('P5', 'T4', 'C4', 800),
('P5', 'C5', 'T5', 400),
('P5', 'C6', 'T4', 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `P#` varchar(2) NOT NULL,
  `Pnombre` varchar(30) NOT NULL,
  `Categoria` int(2) NOT NULL,
  `Ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`P#`, `Pnombre`, `Categoria`, `Ciudad`) VALUES
('P1', 'Carlos', 20, 'sevilla'),
('P2', 'Juan', 10, 'Madrid'),
('P3', 'Jose', 30, 'Sevilla'),
('P4', 'Inma', 20, 'Sevilla'),
('P5', 'Eva', 30, 'Caceres');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
