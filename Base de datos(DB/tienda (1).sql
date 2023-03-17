-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-03-2023 a las 00:14:18
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos_cp`
--

CREATE TABLE `articulos_cp` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `ref` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos_cp`
--

INSERT INTO `articulos_cp` (`id`, `titulo`, `precio`, `cantidad`, `ref`, `descripcion`) VALUES
(1, 'asdasd', 33, 33, 'asdasd', 'ssds fesesf'),
(2, 'ssds fesesf', 43, 55, 'ssds fesesf', 'ssds fesesf'),
(3, 'ssds fesesf', 44, 44, 'ssds fesesf', 'ssds fesesf'),
(4, 'asdasas', 4, 44, 'sadas', 'asdasd'),
(5, 'asdasd', 33, 33, 'asdasd', 'ssds fesesfwadaw'),
(6, 'ssds fesesfaddadw', 43, 55, 'ssds fesesf', 'ssds fesesf'),
(7, 'asdasdadwawa', 33, 33, 'asdasd', 'ssds fesesf'),
(8, 'ssds fesesfaddadwfae', 43, 55, 'ssds fesesf', 'ssds fesesf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas_medicas`
--

CREATE TABLE `citas_medicas` (
  `id` int(11) UNSIGNED NOT NULL,
  `doctor` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `citas_medicas`
--

INSERT INTO `citas_medicas` (`id`, `doctor`, `fecha`, `hora`, `motivo`, `created_at`) VALUES
(1, '1', '0011-11-11', '22:22:00', 'assasa', '2023-03-13 23:35:15'),
(2, '1', '0011-11-11', '22:22:00', 'assasa', '2023-03-13 23:35:15'),
(3, '1', '0011-11-11', '22:22:00', 'assasa', '2023-03-13 23:35:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dash_usuarios`
--

CREATE TABLE `dash_usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(70) NOT NULL,
  `hashUser` varchar(25) NOT NULL,
  `fechaRegistro` date NOT NULL,
  `tipo` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1administrador \r\n2usuario'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dash_usuarios`
--

INSERT INTO `dash_usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `hashUser`, `fechaRegistro`, `tipo`) VALUES
(24, 'sdAdministradorsdsdfjheFIUS', 'Uicabsdsd', 'uicab.nahuat.victor@cbta80.edu.mx', '61be55a8e2f6b4e172338bddf184d6dbee29c98853e0a0485ecee7f27b9af0b4', 'cfb4033453ac410171613dc69', '2022-05-25', 1),
(26, '3333sfesfejknjk', 'sdsfsefsjihuy', 'uicab.nahuat.victor@cbta80.edu.mxp', '7cbccda65959a4fe629dbdf546ae3ddea9328ae5a53498785f4a27394fe26515', '4c09a1034e3d99fbc7c336681', '2022-06-11', 2),
(28, 'Administrador', 'uicab', 'uicab.nahuat.victor@cbta80.edu.mxppp', '7cbccda65959a4fe629dbdf546ae3ddea9328ae5a53498785f4a27394fe26515', '0c7dbb3ec3ca4fa6a967cbdbc', '2022-06-12', 2),
(31, 'aaddss', 'asdasddsa', 'uicab.nahuat.victor@cbta80.edu.mxasdasdasdasdasdasdasdas', '61be55a8e2f6b4e172338bddf184d6dbee29c98853e0a0485ecee7f27b9af0b4', '7fbfe8d7a61eb45dd1c378456', '2022-08-22', 2),
(32, 'manuel uicab', 'nahsua', 'aygshd.37ygduyg@as.ssa.ss', '61be55a8e2f6b4e172338bddf184d6dbee29c98853e0a0485ecee7f27b9af0b4', '51eebfbfd2525f5c88e4626d1', '2022-12-06', 2),
(33, 'Victor', 'Nahuat', 'uicab.nahuat.victor@cbta80.edu.mxb', '5e846c64f2db12266e6b658a8e5b5b42cc225419b3ee1fca88acbb181ddfdb52', '27d440e9185124c9c8f9664bd', '2023-02-16', 2),
(34, 'ASSA', 'ASAS', 'aygshd.37ygduyg@as.ssa.ssASASSAAS', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '0cb3fc514ff95f27d0a06a34c', '2023-02-25', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedientes_medicos`
--

CREATE TABLE `expedientes_medicos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `diagnostico` varchar(255) NOT NULL,
  `tratamiento` varchar(255) NOT NULL,
  `alergias` varchar(255) DEFAULT NULL,
  `medicamentos_actuales` varchar(255) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `expedientes_medicos`
--

INSERT INTO `expedientes_medicos` (`id`, `nombre`, `apellidos`, `edad`, `genero`, `diagnostico`, `tratamiento`, `alergias`, `medicamentos_actuales`, `fecha_creacion`) VALUES
(6, 'manuel', 'fdfd', 22, 'Masculino', 'weew', 'weew', '', '', '2023-03-09 05:00:00'),
(7, 'asdas', 'asdasddsa', 12, 'Masculino', 'asas', 'saas', '', '', '2023-03-13 05:00:00'),
(8, 'ibhubu', 'ubuyy', 77, 'Masculino', 'hubhub', 'hububuy', '', '', '2023-03-13 05:00:00'),
(9, 'hjgugyu', 'yftyf', 77, 'Masculino', 'jhguy', 'ghfyg', '', '', '2023-03-13 05:00:00'),
(10, 'asasas', 'assasasa', 33, 'Femenino', 'asasasa', 'asas', 'asasas', 'asasas', '2023-03-14 05:00:00'),
(11, 'aaaa', 'aaaaa', 22, 'Masculino', 'asassa', 'asas', '', '', '2023-03-16 05:00:00'),
(12, 'assasa', 'asasas', 22, 'Femenino', 'assa', 'asasasas', '', '', '2023-03-16 05:00:00'),
(13, 'sasa', 'assa', 32, 'Masculino', 'assa', 'asassa', '', '', '2023-03-16 05:00:00'),
(14, 'qwwq', 'qwwqwq', 50, 'Masculino', 'seew', 'ewew', '', '', '2023-03-16 05:00:00'),
(15, 'wqwq', 'wqqwwq', 22, 'Masculino', 'assa', 'saasas', '', '', '2023-03-16 05:00:00'),
(16, 'wwq', 'wqqwqw', 33, 'Masculino', 'qwwqqw', 'wqwqqw', '', '', '2023-03-16 05:00:00'),
(17, 'ASSA', 'ASASASA', 333, 'Masculino', 'ASASASAS', 'ASASAS', '', '', '2023-03-16 05:00:00'),
(18, 'assa', 'sasa', 22, 'Masculino', 'assa', 'saas', '', '', '2023-03-16 05:00:00'),
(19, 'asas', 'assa', 55, 'Masculino', 'assa', 'assa', '', '', '2023-03-16 05:00:00'),
(20, 'VICTOR MANUEL', 'NAHUAT', 33, 'Masculino', 'assa', '3saas', '', '', '2023-03-16 05:00:00'),
(21, 'sasasa', 'sasa', 33, 'Masculino', 'sasasasaas', 'asasas', '', '', '2023-03-16 05:00:00'),
(22, 'Raul', 'dzib', 55, 'Masculino', 'Cancer', 'Pastillas', 'aire', 'pastillas', '2023-03-16 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotoproducts`
--

CREATE TABLE `fotoproducts` (
  `id` int(10) NOT NULL,
  `products_id` int(10) DEFAULT NULL,
  `foto1` varchar(100) DEFAULT NULL,
  `foto2` varchar(100) DEFAULT NULL,
  `foto3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fotoproducts`
--

INSERT INTO `fotoproducts` (`id`, `products_id`, `foto1`, `foto2`, `foto3`) VALUES
(10, 9, 'fotosProductos/1/1.jpg', 'fotosProductos/1/2.jpg', 'fotosProductos/1/3.jpg'),
(11, 10, 'fotosProductos/2/1.jpg', 'fotosProductos/2/2.png', 'fotosProductos/2/3.png'),
(12, 11, 'fotosProductos/3/1.jpg', 'fotosProductos/3/2.png', 'fotosProductos/3/3.jpeg'),
(13, 12, 'fotosProductos/4/1.jpg', 'fotosProductos/4/2.png', 'fotosProductos/4/3.jpg'),
(14, 13, 'fotosProductos/5/1.jpg', 'fotosProductos/5/2.png', 'fotosProductos/5/3.jpg'),
(15, 14, 'fotosProductos/6/1.jpg', 'fotosProductos/6/2.jpg', 'fotosProductos/6/3.png'),
(17, 16, 'fotosProductos/7/1.jpg', 'fotosProductos/7/2.jpg', 'fotosProductos/7/3.jpg'),
(18, 17, 'fotosProductos/8/1.jpg', 'fotosProductos/8/2.jpg', 'fotosProductos/8/3.jpg'),
(21, 27, 'fotosProductos/8/2.jpg', 'fotosProductos/8/2.jpg', 'fotosProductos/8/2.jpg'),
(22, 20, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `diagnostico` varchar(255) NOT NULL,
  `tratamiento` varchar(255) NOT NULL,
  `alergias` varchar(255) DEFAULT NULL,
  `medicamentos_actuales` varchar(255) DEFAULT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_medico`
--

CREATE TABLE `historial_medico` (
  `id` int(11) NOT NULL,
  `fecha_ultima_visita` date NOT NULL,
  `medicamentos` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alergias` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enfermedades_previas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cirugias_previas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosticos_anteriores` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `historial_medico`
--

INSERT INTO `historial_medico` (`id`, `fecha_ultima_visita`, `medicamentos`, `alergias`, `enfermedades_previas`, `cirugias_previas`, `diagnosticos_anteriores`, `fecha_creacion`) VALUES
(1, '0033-03-22', 'zxzxxz', 'xzxz', 'xzzxxz', 'zxzx', 'zxxzzxzxxz', '2023-03-14 00:32:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidostemporales`
--

CREATE TABLE `pedidostemporales` (
  `id` int(11) NOT NULL,
  `producto_id` int(10) DEFAULT NULL,
  `cantidad` int(20) DEFAULT NULL,
  `nuevoPrecioTotal` int(50) DEFAULT NULL,
  `tokenCliente` varchar(100) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `hours` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidostemporales`
--

INSERT INTO `pedidostemporales` (`id`, `producto_id`, `cantidad`, `nuevoPrecioTotal`, `tokenCliente`, `fecha`, `hours`) VALUES
(73, 10, 1, 340, 'jz2HTiatmm7wqJRr6w7gTcvQAFytUt', '07/08/2022', '06:01:40 pm'),
(74, 11, 2, 140, 'jz2HTiatmm7wqJRr6w7gTcvQAFytUt', '07/08/2022', '06:04:16 pm'),
(75, 16, 1, 85, 'jz2HTiatmm7wqJRr6w7gTcvQAFytUt', '07/08/2022', '06:10:16 pm'),
(76, 17, 1, 340, 'jz2HTiatmm7wqJRr6w7gTcvQAFytUt', '07/08/2022', '06:10:18 pm'),
(77, 12, 1, 140, 'jz2HTiatmm7wqJRr6w7gTcvQAFytUt', '07/08/2022', '06:17:37 pm'),
(84, 11, 1, 70, 'RUjDaH2Z8Q0FWRxPfFBa00bkVDzM86', '20/08/2022', '11:00:54 pm'),
(85, 17, 1, 340, 'RUjDaH2Z8Q0FWRxPfFBa00bkVDzM86', '20/08/2022', '11:48:00 pm'),
(86, 16, 1, 85, '7tbp3aDgArBqgDHPEXtaeiwGHYdyWZ', '21/08/2022', '12:25:33 am'),
(88, 10, 1, 340, 'wjWJxQFD2cFZvucCjvn8y47ZGQhrkv', '21/08/2022', '01:32:26 pm'),
(89, 9, 1, 250, 'vtcKa7WTP3VyiMrbjdwm0yjfjER04B', '21/08/2022', '01:34:20 pm'),
(91, 10, 13, 4420, 'Ri70t3xkPhXxrXj8kBvDdd668YzKeQ', '22/08/2022', '01:32:36 pm'),
(92, 9, 20, 5000, 'Ri70t3xkPhXxrXj8kBvDdd668YzKeQ', '22/08/2022', '01:36:19 pm'),
(93, 14, 3, 75, 'Ri70t3xkPhXxrXj8kBvDdd668YzKeQ', '22/08/2022', '01:41:24 pm'),
(94, 11, 6, 420, 'Ri70t3xkPhXxrXj8kBvDdd668YzKeQ', '22/08/2022', '01:54:55 pm'),
(95, 12, 1, 140, 'Ri70t3xkPhXxrXj8kBvDdd668YzKeQ', '22/08/2022', '01:54:57 pm'),
(96, 11, 1, 70, 'pbEzj3tApWtu0qEx3Bn8caWiRRc04d', '22/08/2022', '02:18:20 pm'),
(97, 12, 1, 140, 'pbEzj3tApWtu0qEx3Bn8caWiRRc04d', '22/08/2022', '02:18:20 pm'),
(98, 13, 1, 50, 'pbEzj3tApWtu0qEx3Bn8caWiRRc04d', '22/08/2022', '04:48:25 pm'),
(99, 9, 1, 250, 'gBfhFFN2vaF3Vx8mxeCwXhg4nbwARA', '22/08/2022', '04:50:10 pm'),
(100, 10, 1, 340, 'gBfhFFN2vaF3Vx8mxeCwXhg4nbwARA', '22/08/2022', '04:50:11 pm'),
(101, 11, 1, 70, '68TMW4u9itnb8JVnkZz0XNU8cEpGEQ', '23/08/2022', '07:20:09 pm'),
(102, 16, 1, 85, '68TMW4u9itnb8JVnkZz0XNU8cEpGEQ', '23/08/2022', '08:44:49 pm'),
(104, 11, 1, 70, 'VWnVqbQF864wayR8KNrZR4HKgi2whv', '24/08/2022', '02:37:21 pm'),
(105, 10, 2, 680, 'zRKbExCTUHcEYPVU9WiXBCadzmeXWv', '25/08/2022', '06:31:42 pm'),
(109, 9, 1, 250, 'bqa2GvimEzFBN6fRMFfxG3KzWFiCDy', '03/09/2022', '11:25:20 pm'),
(111, 20, 1, 0, '9Ugx8J6rd3cfBjj6dcxbmrbEaM3zE2', '04/09/2022', '01:04:39 pm'),
(112, 0, 2, 0, 'Rqp0eh7Vdhg4bCggQ2jZHwHbgBYyw9', '04/09/2022', '04:01:18 pm'),
(114, 10, 2, 680, 'bqa2GvimEzFBN6fRMFfxG3KzWFiCDy', '04/09/2022', '04:07:24 pm'),
(115, 11, 1, 70, 'bqa2GvimEzFBN6fRMFfxG3KzWFiCDy', '04/09/2022', '04:07:25 pm'),
(116, 0, 28, 0, 'KA7CB8qTwxuMTQ90bDhiqvQDZ6YZrX', '06/12/2022', '12:36:39 am');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `nameProd` varchar(250) DEFAULT NULL,
  `precio` varchar(250) DEFAULT NULL,
  `cantidadDisponible` varchar(250) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `descrip_Prod` text DEFAULT NULL,
  `fechaRegistro` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `nameProd`, `precio`, `cantidadDisponible`, `foto`, `descrip_Prod`, `fechaRegistro`) VALUES
(9, 'Donka', '250', '10', 'fotosProductos/8/2.jpg', '', '2021-08-05'),
(10, 'Alimento nutricional', '340', '34', 'fotosProductos/8/2.jpg\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\"\"\"', '2021-08-05'),
(11, 'Pedigree', '70', '82', 'fotosProductos/8/2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-08-05'),
(12, 'Chunky', '140', '14', 'fotosProductos/8/2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-08-05'),
(13, 'Purina Cat', '50', '63', 'fotosProductos/8/2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-08-05'),
(14, 'Felix', '25', '18', 'fotosProductos/8/2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-08-05'),
(16, 'Ringo', '85', '12', 'images/cartas.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-08-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas_electronicas`
--

CREATE TABLE `recetas_electronicas` (
  `id` int(11) UNSIGNED NOT NULL,
  `paciente` varchar(255) NOT NULL,
  `edad` int(11) NOT NULL,
  `medicamento` varchar(255) NOT NULL,
  `dosis` varchar(255) NOT NULL,
  `frecuencia` varchar(255) NOT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recetas_electronicas`
--

INSERT INTO `recetas_electronicas` (`id`, `paciente`, `edad`, `medicamento`, `dosis`, `frecuencia`, `observaciones`) VALUES
(1, 'asdsasad', 33, 'asassasa', 'adsasd', 'sasasa', 'assaas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos_cp`
--
ALTER TABLE `articulos_cp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `citas_medicas`
--
ALTER TABLE `citas_medicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dash_usuarios`
--
ALTER TABLE `dash_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `expedientes_medicos`
--
ALTER TABLE `expedientes_medicos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fotoproducts`
--
ALTER TABLE `fotoproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidostemporales`
--
ALTER TABLE `pedidostemporales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recetas_electronicas`
--
ALTER TABLE `recetas_electronicas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos_cp`
--
ALTER TABLE `articulos_cp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `citas_medicas`
--
ALTER TABLE `citas_medicas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dash_usuarios`
--
ALTER TABLE `dash_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `expedientes_medicos`
--
ALTER TABLE `expedientes_medicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `fotoproducts`
--
ALTER TABLE `fotoproducts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pedidostemporales`
--
ALTER TABLE `pedidostemporales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `recetas_electronicas`
--
ALTER TABLE `recetas_electronicas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
