-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2022 a las 03:11:21
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `outsourcing`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `correo` varchar(250) NOT NULL,
  `contrasena` varchar(2250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `nombre`, `correo`, `contrasena`) VALUES
(0, 'fernanda', 'fernanda@gmail.com', 'Marifer2022'),
(0, 'fernanda', 'fernanda@gmail.com', 'Marifer2022'),
(2, 'Marifer', 'marifer@gmail.com', 'Marifer09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspirante`
--

CREATE TABLE `aspirante` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `apellido_paterno` varchar(250) NOT NULL,
  `apellido_materno` varchar(250) NOT NULL,
  `edad` int(2) NOT NULL,
  `telefono` int(10) NOT NULL,
  `correo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aspirante`
--

INSERT INTO `aspirante` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `edad`, `telefono`, `correo`) VALUES
(1, 'Guillermo', 'Ortega', 'Bermudes', 23, 2128388934, 'guillermo@gmail.com'),
(2, 'Andrea', 'Perez', 'Rios', 22, 1736259002, 'andrea@gmail.com'),
(3, 'Maria', 'Curiel', 'Barrera', 22, 987654321, 'maria@gmail.com'),
(4, 'Christian', 'Andres', 'Espinoza', 23, 1234567898, 'christian@gmail.com'),
(5, 'Fernanda', 'Lopez', 'Rodriguez', 21, 1234567895, 'fernanda@gmail.com'),
(6, 'Jaquelin', 'Vazquez', 'Bermudes', 23, 987654321, 'jaquelin@gmail.com'),
(7, 'Alan', 'Morales', 'Morales', 34, 1234567842, 'alan@gmail.com'),
(8, 'Alejandra', 'Alfonso', 'Monrroy', 21, 2147483647, 'alejandra@gmail.com'),
(9, 'Christian', 'Gomez', 'Gomez', 50, 1234567896, 'cristian@gmail.com'),
(10, 'Enrique', 'Paz', 'Bautista', 45, 1234567897, 'enrique@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatorias`
--

CREATE TABLE `convocatorias` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `puesto` varchar(250) NOT NULL,
  `habilidades` varchar(250) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `no_postulado` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `convocatorias`
--

INSERT INTO `convocatorias` (`id`, `id_empresa`, `puesto`, `habilidades`, `fecha_inicio`, `fecha_fin`, `no_postulado`) VALUES
(1, 2, 'Programador', 'Liderazgo', '2022-07-01', '2022-12-31', 1),
(2, 2, 'Diseñador', 'Dibujar', '2022-11-01', '2022-12-10', 0),
(3, 2, 'Analista', 'Empatia', '2022-12-01', '2022-12-03', 1),
(4, 2, 'Contador', 'Liderazgo', '2022-11-06', '2022-12-30', 0),
(5, 2, 'Arquitecto', 'TIC´s', '2022-11-23', '2022-12-01', 1),
(6, 2, 'Ingeniero Informática', 'Computo', '2022-11-20', '2022-12-23', 0),
(7, 2, 'Base Datos', 'Rapidez', '2022-09-01', '2022-12-09', 1),
(8, 2, 'Ingeniero Civil', 'Comunicación', '2022-10-10', '2022-12-31', 0),
(9, 2, 'Recursos Humanos', 'Liderazgo', '2022-08-28', '2022-12-29', 1),
(10, 2, 'Redes', 'Ingles B1', '2022-08-17', '2022-08-20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `apellido_paterno` varchar(250) NOT NULL,
  `apellido_materno` varchar(250) NOT NULL,
  `nombre_empresa` varchar(250) NOT NULL,
  `correo` varchar(250) NOT NULL,
  `contrasena` varchar(250) NOT NULL,
  `giro` varchar(150) NOT NULL,
  `tamano` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `nombre_empresa`, `correo`, `contrasena`, `giro`, `tamano`) VALUES
(2, 'Dulce', 'Curiel', 'Barrera', 'Informática Aurum', 'dulce@gmail.com', 'Dulce2022', 'Industrial', 'Grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultadoexamenes`
--

CREATE TABLE `resultadoexamenes` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `examenConocimiento` int(11) NOT NULL,
  `examenPsicometrico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultadoexamenes`
--

INSERT INTO `resultadoexamenes` (`id`, `id_empresa`, `examenConocimiento`, `examenPsicometrico`) VALUES
(1, 2, 98, 95),
(2, 2, 89, 90),
(3, 2, 90, 99),
(4, 2, 99, 99),
(5, 2, 99, 98),
(6, 3, 99, 100),
(7, 3, 87, 78),
(8, 3, 100, 100),
(9, 3, 78, 90),
(10, 3, 99, 93);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aspirante`
--
ALTER TABLE `aspirante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resultadoexamenes`
--
ALTER TABLE `resultadoexamenes`
  ADD PRIMARY KEY (`id`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
