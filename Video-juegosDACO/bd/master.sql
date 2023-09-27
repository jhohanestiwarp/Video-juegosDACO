-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2023 a las 23:38:31
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `master`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio_servicio`
--

CREATE TABLE `precio_servicio` (
  `id_precio_servicio` int(11) NOT NULL,
  `precio` float NOT NULL,
  `id_reserva_fk` int(11) NOT NULL,
  `id_tipo_cliente_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `celular` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  `hora_compra` time NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_servicio_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `nombre`, `celular`, `fecha`, `hora_compra`, `cantidad`, `id_servicio_fk`) VALUES
(1, 'luis', '3234098006', '2022-03-29', '14:51:00', 155100, 1),
(3, 'ferlin', '3234163627', '2022-03-29', '08:10:00', 91000, 3),
(5, 'jota', '8888888888', '2022-03-29', '12:37:00', 133700, 5),
(7, 'JHOHAN ESTIWAR PALACIOS MENA', '44444444444', '2022-03-09', '13:30:00', 143000, 7),
(8, 'juan', '320892919', '2022-03-09', '14:20:00', 152000, 8),
(1, 'jjjj', '88888', '2023-09-27', '15:31:00', 2, 1),
(1, 'Jhohanestiwar', '3245645465', '2023-09-27', '17:30:00', 1, 1),
(2, 'leison', '3245645465', '2023-09-26', '16:35:00', 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `nombre`) VALUES
(1, 'Corte de Cabello - $12.000'),
(2, 'Afeitado de la Barba - $12.000'),
(3, 'Peinado para caballero - $12.000'),
(4, 'Servicio Facial - $12.000'),
(5, 'Combo 1 Corte-Barba - $20.000'),
(6, 'Combo 2 Corte-Barba-Peinado - $30.000'),
(7, 'Combo 3 Corte-Barba-Facial - $30.000'),
(8, 'Combo 4 Corte-Barba-Peinado-Facial - $40.000'),
(10, 'Alineacón de cejas con cuchilla - $5.000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
