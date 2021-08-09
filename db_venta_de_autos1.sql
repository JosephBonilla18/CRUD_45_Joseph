-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-08-2021 a las 21:45:58
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
-- Base de datos: `db_venta_de_autos1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_autos`
--

CREATE TABLE `tbl_autos` (
  `ID_AUTO` int(11) NOT NULL,
  `MODELO` varchar(50) NOT NULL,
  `COLOR` varchar(50) NOT NULL,
  `AÑO` int(60) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_autos`
--

INSERT INTO `tbl_autos` (`ID_AUTO`, `MODELO`, `COLOR`, `AÑO`, `ID_CLIENTE`) VALUES
(1, 'Versa Sedán', 'Gris', 2014, 14),
(2, 'QASHQAI', 'Azul', 2015, 17),
(3, 'Patrol', 'Gris', 2015, 20),
(4, 'Frontier', 'Negro', 2018, 13),
(5, 'Urvan', 'Blanco', 2016, 21),
(6, 'Civilian', 'Blanco', 2020, 19),
(7, 'Kicks', 'Azul', 2019, 15),
(8, 'MURANO', 'Rojo', 2019, 22),
(9, 'Frontier C/S', 'Blanco', 2015, 18),
(10, 'Versa (Nuevo)', 'Rojo', 2019, 16),
(11, '{Nissan Patrol}', 'Rojo', 2018, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_autos_modelos`
--

CREATE TABLE `tbl_autos_modelos` (
  `ID_MODELOS` int(11) NOT NULL,
  `MODELOS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_autos_modelos`
--

INSERT INTO `tbl_autos_modelos` (`ID_MODELOS`, `MODELOS`) VALUES
(1, 'Nissan Frontier'),
(2, 'Nissan MURANO'),
(3, 'Nissan Patrol'),
(4, 'Nissan Kicks'),
(5, 'Nissan Versa '),
(6, 'Nissan Versa Sedán'),
(7, 'Nissan Urvan'),
(8, 'Nissan QASHQAI'),
(9, 'Nissan Civilian'),
(10, 'Nissan Frontier C/S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `ID_CLIENTE` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `N DE IDENTIDAD` varchar(100) NOT NULL,
  `RTN` int(100) NOT NULL,
  `TELEFONO` varchar(50) NOT NULL,
  `ID_DIRECCION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`ID_CLIENTE`, `NOMBRE`, `APELLIDO`, `N DE IDENTIDAD`, `RTN`, `TELEFONO`, `ID_DIRECCION`) VALUES
(13, 'Juan', 'Munguia', '0301197809490', 809435895, '90127543', 6),
(14, 'Francisco', 'Mejia ', '0517199900375', 435324617, '38654562', 2),
(15, 'Carlos', 'Martinez', '0312198967467', 874783473, '89261579', 3),
(16, 'David', 'Ramos', '0601197948256', 231518689, '90656534', 1),
(17, 'Jorge', 'Perez', '0317198100254', 534534624, '31678932', 4),
(18, 'Mario', 'Juarez', '1201199527915', 849387901, '88661789', 10),
(19, 'Ana', 'Sierra', '0602199675042', 847827988, '95124321', 7),
(20, 'Daniel', 'Colindres', '0301200012731', 218382720, '81652396', 5),
(21, 'Martha', 'Bustillo', '0201200248921', 387875398, '92690034', 9),
(22, 'Cesar', 'David', '0301199876367', 139083938, '95782031', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_direcciones`
--

CREATE TABLE `tbl_direcciones` (
  `ID_DIRECCION` int(11) NOT NULL,
  `DIRECCION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_direcciones`
--

INSERT INTO `tbl_direcciones` (`ID_DIRECCION`, `DIRECCION`) VALUES
(1, 'BARRIO ARRIBA'),
(2, 'BARRIO EL CENTRO'),
(3, 'BARRIO SUYAPA'),
(4, 'BARRIO BRISAS DE ALTAMIRA'),
(5, 'BARRIO ABAJO'),
(6, 'BARRIO TORONDON'),
(7, 'BARRIO SAN FRANCISCO'),
(8, 'BARRIO LOURDES'),
(9, 'SANTA LUCIA'),
(10, 'COL. TRES CAMINOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_facturas`
--

CREATE TABLE `tbl_facturas` (
  `ID_FACTURA` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `ID_DIRECCION` int(11) NOT NULL,
  `ARTICULOS` varchar(200) NOT NULL,
  `PRECIO UNITARIO` varchar(255) NOT NULL,
  `ISV` varchar(100) NOT NULL,
  `TOTAL` varchar(255) NOT NULL,
  `ID_CLIENTE` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_facturas`
--

INSERT INTO `tbl_facturas` (`ID_FACTURA`, `FECHA`, `ID_DIRECCION`, `ARTICULOS`, `PRECIO UNITARIO`, `ISV`, `TOTAL`, `ID_CLIENTE`) VALUES
(1, '2021-05-30', 10, 'Versa Sedán', 'L. 142,000', '15%', 'L. 163,300', 15),
(2, '2021-05-02', 7, 'Murano', 'L. 855000', '15%', 'L. 983200', 19),
(3, '2021-05-13', 1, 'Patrol', 'L. 310,000', '15%', 'L. 356,500', 13),
(4, '2021-05-17', 4, 'Frontier', 'L. 610,000', '15%', 'L. 701,500', 20),
(5, '2021-05-08', 6, 'Urvan', 'L. 290,000', '15%', 'L. 333,500', 17),
(6, '2021-05-01', 5, 'Civilian', 'L. 280,000', '15%', 'L. 322,0000', 22),
(7, '2021-05-24', 7, 'Kicks', 'L. 325,000', '15%', 'L. 373,750', 16),
(8, '2021-05-20', 8, 'QASHQAI', 'L. 385,000', '15%', 'L. 442,750', 14),
(9, '2021-05-06', 3, 'Frontier C/s', 'L. 550,000', '15%', 'L. 632,500', 18),
(10, '2021-04-23', 2, 'Versa (Nuevo)', 'L. 760,000', '15%', 'L. 874,000', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registros`
--

CREATE TABLE `tbl_registros` (
  `ID_REGISTROS` int(50) NOT NULL,
  `CORREO` varchar(100) NOT NULL,
  `CLAVE` varchar(50) NOT NULL,
  `AÑOS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_registros`
--

INSERT INTO `tbl_registros` (`ID_REGISTROS`, `CORREO`, `CLAVE`, `AÑOS`) VALUES
(1, 'juan@gmail.com', 'cfa', 43),
(2, 'francisco@gmail.com', 'gfrew', 22),
(3, 'carlos@gmail.com', 'asjk', 32),
(4, 'david@gmail.com', 'erql', 42),
(5, 'jorge@gmail.com', 'ufga', 40),
(6, 'mario@gmail.com', 'masd', 26),
(7, 'ana@gmail.com', 'atbn', 25),
(8, 'daniel@gmail.com', 'dahg', 21),
(9, 'martha@gmail.com', 'yyuwe', 19),
(10, 'cesar@gmail.com', 'chusop', 23),
(11, 'alexander@gmail.com', '1006jank', 25),
(12, 'michele@gmail.com', 'ald89', 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_autos`
--
ALTER TABLE `tbl_autos`
  ADD PRIMARY KEY (`ID_AUTO`),
  ADD KEY `FK_CLIENTES_AUTOS` (`ID_CLIENTE`);

--
-- Indices de la tabla `tbl_autos_modelos`
--
ALTER TABLE `tbl_autos_modelos`
  ADD PRIMARY KEY (`ID_MODELOS`);

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`ID_CLIENTE`),
  ADD KEY `FK_DIRECCIONES_CLIENTES` (`ID_DIRECCION`);

--
-- Indices de la tabla `tbl_direcciones`
--
ALTER TABLE `tbl_direcciones`
  ADD PRIMARY KEY (`ID_DIRECCION`);

--
-- Indices de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  ADD PRIMARY KEY (`ID_FACTURA`),
  ADD KEY `FK_DIRECCIONES_FACTURAS` (`ID_DIRECCION`),
  ADD KEY `FK_CLIENTES_FACTURAS` (`ID_CLIENTE`);

--
-- Indices de la tabla `tbl_registros`
--
ALTER TABLE `tbl_registros`
  ADD PRIMARY KEY (`ID_REGISTROS`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_autos`
--
ALTER TABLE `tbl_autos`
  MODIFY `ID_AUTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_autos_modelos`
--
ALTER TABLE `tbl_autos_modelos`
  MODIFY `ID_MODELOS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tbl_direcciones`
--
ALTER TABLE `tbl_direcciones`
  MODIFY `ID_DIRECCION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  MODIFY `ID_FACTURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_registros`
--
ALTER TABLE `tbl_registros`
  MODIFY `ID_REGISTROS` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_autos`
--
ALTER TABLE `tbl_autos`
  ADD CONSTRAINT `FK_CLIENTES_AUTOS` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tbl_clientes` (`ID_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD CONSTRAINT `FK_DIRECCIONES_CLIENTES` FOREIGN KEY (`ID_DIRECCION`) REFERENCES `tbl_direcciones` (`ID_DIRECCION`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  ADD CONSTRAINT `FK_CLIENTES_FACTURAS` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tbl_clientes` (`ID_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DIRECCIONES_FACTURAS` FOREIGN KEY (`ID_DIRECCION`) REFERENCES `tbl_direcciones` (`ID_DIRECCION`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
