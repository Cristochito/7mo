-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2024 a las 01:37:11
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
-- Estructura de tabla para la tabla `Lista_de_comidas`
--

CREATE TABLE `lista_de_comidas` (
  `Numero` int(11) NOT NULL,
  `Plato` varchar(25) DEFAULT NULL,
  `Precio_porcion` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Lista_de_comidas`
--

INSERT INTO `Lista_de_comidas` (`Numero`, `Plato`, `Precio_porcion`) VALUES
(1, 'Ensalada César', 12000),
(2, 'Sopa de Tomate', 8000),
(3, 'Pollo Asado', 15000),
(4, 'Pizza Muzzarella', 20000),
(5, 'Hamburguesa', 18000),
(6, 'Ravioles', 16000),
(7, 'Fatay', 22000),
(8, 'Sushi Roll', 25000),
(9, 'Carne a la parrilla', 30000),
(10, 'Churrasco', 35000),
(11, 'Milanesa a caballo', 18000),
(12, 'Mariscos a la Plancha', 40000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Lista_de_comidas`
--
ALTER TABLE `Lista_de_comidas`
  ADD PRIMARY KEY (`Numero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Lista_de_comidas`
--
ALTER TABLE `Lista_de_comidas`
  MODIFY `Numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
