-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2024 a las 04:03:15
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
-- Base de datos: `gimnasio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aparato`
--

CREATE TABLE `aparato` (
  `id_aparato` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado_conservacion` varchar(50) DEFAULT NULL,
  `id_sala` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `numero_socio` int(11) NOT NULL,
  `id_clase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `id_clase` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `dia_hora` datetime DEFAULT NULL,
  `id_sala` int(11) DEFAULT NULL,
  `id_monitor` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitor`
--

CREATE TABLE `monitor` (
  `dni_monitor` varchar(9) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `titulacion` tinyint(1) DEFAULT NULL,
  `experiencia_profesional` text DEFAULT NULL,
  `clases_que_puede_impartir` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservapista`
--

CREATE TABLE `reservapista` (
  `id_reserva` int(11) NOT NULL,
  `numero_socio` int(11) DEFAULT NULL,
  `numero_pista` int(11) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `id_sala` int(11) NOT NULL,
  `metros_cuadrados` decimal(5,2) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `tipo_sala` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

CREATE TABLE `socio` (
  `numero_socio` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `profesion` varchar(100) DEFAULT NULL,
  `datos_bancarios` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aparato`
--
ALTER TABLE `aparato`
  ADD PRIMARY KEY (`id_aparato`),
  ADD KEY `id_sala` (`id_sala`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`numero_socio`,`id_clase`),
  ADD KEY `id_clase` (`id_clase`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`id_clase`),
  ADD KEY `id_sala` (`id_sala`),
  ADD KEY `id_monitor` (`id_monitor`);

--
-- Indices de la tabla `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`dni_monitor`);

--
-- Indices de la tabla `reservapista`
--
ALTER TABLE `reservapista`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `numero_socio` (`numero_socio`),
  ADD KEY `numero_pista` (`numero_pista`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id_sala`);

--
-- Indices de la tabla `socio`
--
ALTER TABLE `socio`
  ADD PRIMARY KEY (`numero_socio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aparato`
--
ALTER TABLE `aparato`
  ADD CONSTRAINT `aparato_ibfk_1` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`);

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`numero_socio`) REFERENCES `socio` (`numero_socio`),
  ADD CONSTRAINT `asistencia_ibfk_2` FOREIGN KEY (`id_clase`) REFERENCES `clase` (`id_clase`);

--
-- Filtros para la tabla `clase`
--
ALTER TABLE `clase`
  ADD CONSTRAINT `clase_ibfk_1` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`),
  ADD CONSTRAINT `clase_ibfk_2` FOREIGN KEY (`id_monitor`) REFERENCES `monitor` (`dni_monitor`);

--
-- Filtros para la tabla `reservapista`
--
ALTER TABLE `reservapista`
  ADD CONSTRAINT `reservapista_ibfk_1` FOREIGN KEY (`numero_socio`) REFERENCES `socio` (`numero_socio`),
  ADD CONSTRAINT `reservapista_ibfk_2` FOREIGN KEY (`numero_pista`) REFERENCES `sala` (`id_sala`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
