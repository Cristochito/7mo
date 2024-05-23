-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2024 a las 21:42:16
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_de_comidas`
--

CREATE TABLE `lista_de_comidas` (
  `Numero` int(11) NOT NULL,
  `Plato` varchar(25) DEFAULT NULL,
  `Precio_porcion` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lista_de_comidas`
--

INSERT INTO `lista_de_comidas` (`Numero`, `Plato`, `Precio_porcion`) VALUES
(1, 'Fatay', 12000),
(2, 'Ensalada César', 15000),
(3, 'Hamburguesa', 25000),
(4, 'Pastas', 30000),
(5, 'Pizza Muzzarella', 35000),
(6, 'Tacos', 20000),
(7, 'Sushi', 40000),
(8, 'Carne asada', 55000),
(9, 'Mariscos', 60000),
(10, 'Pollo Asado', 28000),
(11, 'Empanadas', 18000),
(12, 'Alitas picantes', 22000),
(13, 'Caviar', 150000),
(14, 'Langosta', 120000),
(15, 'Trufa Negra', 200000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lista_de_comidas`
--
ALTER TABLE `lista_de_comidas`
  ADD PRIMARY KEY (`Numero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lista_de_comidas`
--
ALTER TABLE `lista_de_comidas`
  MODIFY `Numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
