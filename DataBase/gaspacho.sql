-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2022 a las 05:00:21
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gaspacho`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributo`
--

CREATE TABLE `atributo` (
  `id_atributo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `atributo`
--

INSERT INTO `atributo` (`id_atributo`, `nombre`) VALUES
(1, 'Fuerza'),
(2, 'Agilidad'),
(3, 'Inteligencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `heroe`
--

CREATE TABLE `heroe` (
  `id_heroe` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `type_atack` varchar(50) NOT NULL,
  `id_atributo_fk` int(11) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `heroe`
--

INSERT INTO `heroe` (`id_heroe`, `nombre`, `type_atack`, `id_atributo_fk`, `descripcion`) VALUES
(1, 'Kunkka', 'Cuerpo A Cuerpo', 1, 'Kunkka siempre está intentando predecir el siguiente movimiento de su enemigo. Capaz de atacar un lugar con un géiser de agua o un naufragio fantasmal, si logra impactar en su objetivo, él y sus aliados no tendrán problema alguno en acabar con lo que quede.'),
(2, 'Dawnbreaker', 'Cuerpo A Cuerpo', 1, 'Dawnbreaker brilla en el corazón de la batalla, aplastando felizmente a los enemigos con su martillo celestial y curando a los aliados cercanos. Se deleita lanzando su martillo a través de múltiples enemigos y luego convergiendo con él en una estela ardiente, siempre esperando aprovechar su verdadero poder cósmico para volar en ayuda de sus compañeros de equipo y ansiosa por derrotar a sus enemigos en el campo de batalla sin importar dónde se encuentren.'),
(3, 'Hoodwink', 'A Distancia', 2, 'Siempre alerta por si surgen problemas, Hoodwink vive para hacer frente a las amenazas que llenan el bosque embrujado que adoptó como su hogar. Atravesándolo con la mayor facilidad incluso llevando una enorme ballesta, es casi imposible vigilar a Hoodwink en la batalla. Piérdele la pista y ella aparecerá por detrás: tu cadáver aturdido ya cuelga en una de sus redes.'),
(4, 'Medusa', 'A Distancia', 2, 'El ataque constante es la clave del éxito de Medusa. Haciendo uso de su escudo de maná para soportar el asalto, es capaz de activar su disparo dividido para acribillar a oleadas de enemigos. Una vez que reúne todo su poder, se convierte en una fuerza lo suficientemente poderosa como para detener a cualquiera en su camino.'),
(5, 'Bane', 'A Distancia', 3, 'Bane lleva el terror a sus enemigos con su arsenal de habilidades incapacitantes. Ya sea atrapando a un enemigo dentro de una pesadilla contagiosa, o agarrando un adversario en el sitio, le da a sus aliados todo el tiempo que necesitan para matar a sus enemigos.'),
(6, 'DarkSeer', 'Cuerpo A Cuerpo', 3, 'Versátil y estratega, Dark Seer destaca en la manipulación de las posiciones de sus enemigos. Con su habilidad de succión de enemigos, a los que puede mover para que sus aliados los ataquen, es capaz de volver la fuerza del enemigo en su contra haciendo que atraviesen su muro de réplicas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `passwd` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `email`, `passwd`, `rol`) VALUES
(1, 'garbanzo', 'epicuro@gmail.com', '$2y$10$luM5YNo/Dd4RC983k/00AOkPjsIPxieFDJL2Ty83ByzWZly1uRU0u', 'user'),
(2, 'epicuro', 'dasdasds@dkasd.com', '$2y$10$Uhtv6uHCf09YPiEDRix1I.m47XOif6RXyBZDuczDi2p8JFbpftPGK', 'user'),
(3, 'lulo', 'lulo@lulo.lulo', '$2y$10$j6LaM8O9V9lKhbbkwtDdauRDO0.zUrWJdzpDKy1mrmAjbTB2ddUym', 'user'),
(4, 'carret', 'carret@carret.carret', '$2y$10$8NPBNDBzKrq4TcK47Qx7uOjTnh7oEGUAXpW7u.Whg7dfdTVqw/jpy', 'user');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atributo`
--
ALTER TABLE `atributo`
  ADD PRIMARY KEY (`id_atributo`);

--
-- Indices de la tabla `heroe`
--
ALTER TABLE `heroe`
  ADD PRIMARY KEY (`id_heroe`),
  ADD KEY `foreing_key` (`id_atributo_fk`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atributo`
--
ALTER TABLE `atributo`
  MODIFY `id_atributo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `heroe`
--
ALTER TABLE `heroe`
  MODIFY `id_heroe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `heroe`
--
ALTER TABLE `heroe`
  ADD CONSTRAINT `foreing_key` FOREIGN KEY (`id_atributo_fk`) REFERENCES `atributo` (`id_atributo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
