-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2021 a las 03:59:18
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `DBtesis`
--
CREATE DATABASE DBtesis;
-- --------------------------------------------------------
USE DBtesis;
--
-- Estructura de tabla para la tabla `tesis`
--

CREATE TABLE `tesis` (
  `idTesis` int(11) NOT NULL,
  `universidad` varchar(50) NOT NULL,
  `tema` varchar(150) NOT NULL,
  `sustentantes` varchar(150) NOT NULL,
  `carrera` varchar(20) NOT NULL,
  `asesor` varchar(50) NOT NULL,
  `fecha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesis`
--

INSERT INTO `tesis` (`idTesis`, `universidad`, `tema`, `sustentantes`, `carrera`, `asesor`, `fecha`) VALUES
(1, 'Universidad Autonoma De Santo Domingo (UASD)', 'La vulnerabilidad de los datos de los usuarios en las redes sociales que no encriptan la información', 'Jansi Leury Rodríguez Vargas,Kendy Díaz', 'Lic. En Informatica', 'Manuel Nin De La Rosa', '24-05-2021'),
(2, 'Univerdad Tecnologica De Santiago', 'Origen de las telecomunicaciones', 'Eugenio Reyes, Jansi Reinoso, Renato Hubiere', 'Lic. En Informatica', 'Gerson Peña', '23-05-2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `clave`, `email`) VALUES
(1, 'admin', '123', '123@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tesis`
--
ALTER TABLE `tesis`
  ADD PRIMARY KEY (`idTesis`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
