-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2020 a las 08:29:55
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id_area` int(11) NOT NULL,
  `nombre_area` text DEFAULT NULL,
  `color_area` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id_area`, `nombre_area`, `color_area`) VALUES
(1, 'Marketing', '#2eb8a8'),
(2, 'Frontend', '#a02c6a'),
(3, 'Diseño', '#ab5530'),
(4, 'Backend', '#1f8e32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` text DEFAULT NULL,
  `color_categoria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`, `color_categoria`) VALUES
(1, 'Marketing', '#2eb8a8'),
(2, 'Frontend', '#a02c6a'),
(3, 'Diseño', '#ab5530'),
(4, 'Backend', '#1f8e32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `nombre_estado` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `nombre_estado`) VALUES
(1, 'Pendiente'),
(2, 'En Proceso'),
(3, 'Finalizada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadousu`
--

CREATE TABLE `estadousu` (
  `id_estado` int(11) NOT NULL,
  `nombre_estado` text DEFAULT NULL COMMENT 'Nombre del departamento al que pertenece la tarea\nFinanzas\nMKT\nDesarrolo\n',
  `color_estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estadousu`
--

INSERT INTO `estadousu` (`id_estado`, `nombre_estado`, `color_estado`) VALUES
(1, 'Online', '#30b21f'),
(2, 'Offline', '#be1e1e'),
(3, 'Vacaciones', '#2a2e8d'),
(4, 'Ausente', '#bfc20f'),
(5, 'Entrenamiento', '#ff8800');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

CREATE TABLE `participante` (
  `id_participante` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_tarea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `participante`
--

INSERT INTO `participante` (`id_participante`, `id_usuario`, `id_tarea`) VALUES
(1, 4, 1),
(2, 1, 6),
(3, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`) VALUES
(1, 'Admin'),
(2, 'Standard');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `id_tarea` int(11) NOT NULL,
  `nombre_tarea` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion_tarea` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fdc_tarea` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Fecha de creación',
  `fda_tarea` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Fecha de actualización',
  `id_estado` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`id_tarea`, `nombre_tarea`, `descripcion_tarea`, `fdc_tarea`, `fda_tarea`, `id_estado`, `id_categoria`) VALUES
(1, 'Campos de formularios.	', 'Comprobar todos que todos los campos del formulario sean validados correctamente	', '2020-09-15', '2020-09-20', 1, 2),
(2, 'Logotipo', 'Queda pendiente presentar tres propuestas de logotipos para el proyecto seguros.com', '2020-09-20', '2020-09-21', 3, 3),
(3, 'Resposive', 'Verificar que el proyecto creado para Empresa xxx S.A. pueda adaptarse correctamente en todos los dispositivos.	\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2020-09-30', '2020-09-30', 2, 2),
(4, 'Prototipo landing page	', 'Presentar prototipo de landing page para el proyecto Num. 00021456.	', '2020-10-03', '2020-10-03', 1, 3),
(5, 'Auditoria SEO	', 'Realizar auditoría para el proyecto seguros.com. Puntos a tener en cuenta: Cobertura Google Search console, peso de imágenes, velocidad de carga, análisis de errores, meta etiquetas y arquitectura de la información.	', '2020-10-03', '2020-10-03', 1, 1),
(6, 'Consultas BBDD	', 'Para el proyecto Num. 12346579, queda pendiente realizar un listado de las consultas a la BBDD que se realizará durante el accionar de todos los formularios.	', '2020-10-05', '2020-10-05', 1, 4),
(7, 'Campaña SEM', 'Para el proyecto seguros.com. Realizar un estudio de Keywords long tail (no más de 10) y presentar presupuesto para una campaña de 3 meses.', '2020-10-09', '2020-10-09', 1, 2),
(8, 'Diseño Home Page', 'Proyecto Num 1234567. Pendiente de diseñar prototipos para home page.	', '2020-10-10', '2020-10-10', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` text DEFAULT NULL,
  `apellido_usuario` text DEFAULT NULL,
  `correo_usuario` text DEFAULT NULL,
  `clave_usuario` text DEFAULT NULL,
  `fdn_usuario` text DEFAULT NULL,
  `telefono_usuario` text DEFAULT NULL,
  `genero_usuario` text DEFAULT NULL,
  `validado_usuario` tinyint(1) DEFAULT NULL,
  `activo_usuario` tinyint(1) DEFAULT NULL,
  `id_area` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `correo_usuario`, `clave_usuario`, `fdn_usuario`, `telefono_usuario`, `genero_usuario`, `validado_usuario`, `activo_usuario`, `id_area`, `id_rol`, `id_estado`) VALUES
(1, 'Gustavo', 'Jaen', 'jaengustavof@alumnos.cei.es', '$2y$10$FXnzQ4.Gn3WixtX/dyCOrOEqHAKd3JqBMo0cAA1LLQfKcYVMDMEW2', '1981-10-24', '789456123', 'Hombre', 1, 1, 4, 1, 1),
(2, 'Pepe', 'Hernandez', 'pepe@gmail.com', '$2y$10$GZxS.FP215qnvYxXhREJK./Tq4AwlbkvB30GHlZKhZYG.VqkvjIIu', '1995-10-05', '7894656123', 'Hombre', 1, 1, 2, 2, 1),
(3, 'Susana', 'Lopez Lopez', 'slopez@gmail.com', '$2y$10$EdHQZNhBK/BPJJB/VtIy9eLlQgzuOI2ZHA.BS9i8GJJ3H5OnjSJ5e', '1993-07-20', '123123123', 'Mujer', 1, 0, 3, 2, 2),
(4, 'Pablo', 'Rodriguez', 'prodriguez@gmail.com', '$2y$10$RCa9X0znEct3oEQ3tf.HoesHbT5UGiQZCg2214Q1TvrRxP/DOf9BK', '1970-10-02', '789456123', 'Hombre', 1, 1, 2, 2, 1),
(5, 'Margarita', 'Lopez', 'mlopez@gmail.com', '$2y$10$VFNv43z7ArMWsUhf4HRJXufubb3DlwPX0yxL9p0kmiw0eNWsTc3l.', '1999-01-12', '123456', 'Mujer', 0, 1, 3, 2, 2),
(6, 'Gustavo', 'Jaen', 'jaengustavof@gmail.com', '$2y$10$WtiVK7PrYSTm7QYJaZoJUud.LfuFWozT33Xg17McuBNfNR1hxfiAi', '1981-10-24', '616951763', 'Hombre', 0, 1, 1, 2, 3),
(7, 'Gustav', 'Jaen Vidal', 'info@jaenwebdesign.com', '$2y$10$jszGlRNaG66TaldnET/XTOfwrKxNxuhnIM0Pjdr3rnLs1WRqkgDS6', '1981-12-10', '789456123', 'Hombre', 1, 1, 4, 2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `estadousu`
--
ALTER TABLE `estadousu`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`id_participante`),
  ADD KEY `fk_usuario_has_tarea_tarea1_idx` (`id_tarea`),
  ADD KEY `fk_usuario_has_tarea_usuario1_idx` (`id_usuario`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`id_tarea`),
  ADD KEY `fk_tarea_estado_idx` (`id_estado`),
  ADD KEY `fk_tarea_categoria1_idx` (`id_categoria`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_usuario_area1_idx` (`id_area`),
  ADD KEY `fk_usuario_rol1_idx` (`id_rol`),
  ADD KEY `fk_usuario_estado1_idx` (`id_estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estadousu`
--
ALTER TABLE `estadousu`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `participante`
--
ALTER TABLE `participante`
  MODIFY `id_participante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `id_tarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `participante`
--
ALTER TABLE `participante`
  ADD CONSTRAINT `fk_usuario_has_tarea_tarea1` FOREIGN KEY (`id_tarea`) REFERENCES `tarea` (`id_tarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_has_tarea_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD CONSTRAINT `fk_tarea_categoria1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tarea_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_area1` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_estado1` FOREIGN KEY (`id_estado`) REFERENCES `estadousu` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_rol1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
