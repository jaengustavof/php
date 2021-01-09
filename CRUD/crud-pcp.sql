-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-01-2021 a las 12:17:02
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud-pcp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `intentos_fallidos` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `token`, `nombre`, `email`, `password`, `intentos_fallidos`, `fecha`) VALUES
(1, '73231c73b490766796b1328c79a3e06c', 'Juan Perez', 'juan@gmail.com', '$2a$07$usesomesillystringforeh13SwIG2YuGjH7WNZPTqAnpzOR7aksC', 0, '2020-12-31 21:24:16'),
(2, 'c4997d5c9fc76458533c3040e75f4c2e', 'Gilberto Gomez', 'gilberto@gmail.com', '$2a$07$usesomesillystringforeh13SwIG2YuGjH7WNZPTqAnpzOR7aksC', NULL, '2020-12-31 21:24:29'),
(3, '989860f73185c46f1ae2790c6122c791', 'Gustavo', 'gustavo@gmail.com', '$2a$07$usesomesillystringforeh13SwIG2YuGjH7WNZPTqAnpzOR7aksC', NULL, '2020-12-31 21:24:51'),
(4, '3184693bad4fc8c8a789c6e8c174b6e8', 'Sara Jimenez', 'sara@gmail.com', '$2a$07$usesomesillystringforeh13SwIG2YuGjH7WNZPTqAnpzOR7aksC', NULL, '2020-12-31 21:25:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
