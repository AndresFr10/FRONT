-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-07-2024 a las 02:23:54
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
-- Base de datos: `a`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha_categoria` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `descripcion`, `estado`, `fecha_categoria`) VALUES
(1, 'forroasd', 'infoasd', 0, '1111-11-11'),
(2, 'cargador', 'info', 0, '1111-11-11'),
(5, 'adsasdasdasdasdas', 'asdasdasd', 1, '2024-05-19'),
(6, 'asdas', 'asdassa', 0, '2024-05-20'),
(7, 'asdassdas', 'asdasdas', 1, '2024-05-20'),
(8, 'asdasdasdas', 'asdasdasdas', 0, '2024-05-20'),
(9, 'asdasda', 'asdasda', 1, '2024-05-20'),
(10, 'asdasdas', 'asdasad', 1, '2024-05-20'),
(11, 'asdasdasd', 'asdasda', 1, '2024-05-20'),
(12, 'asdasdas', 'asdasda', 1, '2024-05-20'),
(13, 'asdasdasd', 'asdasdasd', 1, '2024-05-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `id` varchar(15) DEFAULT NULL,
  `contacto` varchar(15) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha_cliente` date DEFAULT NULL,
  `tipo_identificacion` varchar(10) NOT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL,
  `tipo_cliente` varchar(100) NOT NULL,
  `tipo_usuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `id`, `contacto`, `telefono`, `estado`, `fecha_cliente`, `tipo_identificacion`, `correo`, `clave`, `tipo_cliente`, `tipo_usuario`) VALUES
(1, 'Andres', '1083873058', 'Sena saaaa.', '2323232321', 1, '2024-05-26', 'CCE', 'ANDRES@GMAIL.COM', '6adf97f83acf6453d4a6a4b1070f3754', 'mayorista', ''),
(2, 'Andres', '12121', 'Ww', '121', 0, '2024-07-09', 'Q', 'ramirzezandres20891@gmail.com', '202cb962ac59075b964b07152d234b70', 'null', ''),
(3, 'Aa', '111', 'Aa', '11', 1, '2024-07-10', 'CE', 'sofiamesa@gmail.com', '202cb962ac59075b964b07152d234b70', 'unitario', ''),
(5, 'Ddd', '122', 'Qq', '3178300000', 0, '2024-07-11', 'CE', 'ramirezandres2x0891@gmail.com', '202cb962ac59075b964b07152d234b70', 'unitario', 'natural'),
(6, 'Aaaa', '1222', '11', '123', 1, '2024-07-11', 'CC', 'ramireazandres20891@gmail.com', '202cb962ac59075b964b07152d234b70', 'unitario', 'natural'),
(7, 'Sss', '112', 'Aaaa', '11', 1, '2024-07-11', 'TI', 'ramirezandres20891@gmail.com', '202cb962ac59075b964b07152d234b70', 'unitario', 'juridico'),
(8, 'Yy', '777', 'Yyyyyy', '7878', 1, '2024-07-11', 'TI', 'cs98867s08@gmail.com', '35f4a8d465e6e1edc05f3d8ab658c551', 'unitario', 'None'),
(9, 'Ii', '889', '99999', '7878', 1, '2024-07-11', 'TI', 'cs98867s08@gmjjkjkjkail.com', '35f4a8d465e6e1edc05f3d8ab658c551', 'mayorista', 'None'),
(10, 'Uu', '888', 'Iuuuuuu', '888', 1, '2024-07-11', 'TI', 'aa@gmail.com', '202cb962ac59075b964b07152d234b70', 'mayorista', 'None'),
(11, 'Kk', '111', '999', '99', 1, '2024-07-11', 'TI', 'cs98867s098@gmail.com', 'ac627ab1ccbdb62ec96e702f07f6425b', 'mayorista', 'natural'),
(12, 'Ii', '99', 'Iii', '99', 1, '2024-07-11', 'CC', 'cs988k67s08@gmail.com', 'ac627ab1ccbdb62ec96e702f07f6425b', 'unitario', 'juridico'),
(13, 'El Bicho', '1083873058', 'Sena saaaa.', '2323232321', 1, '2024-07-24', 'CCE', 'ANDRES1@GMAIL.COM', '202cb962ac59075b964b07152d234b70', 'unitario', '0'),
(14, 'El Bichooo', '1083873058', 'El bichooo', '2323232321', 1, '2024-07-24', 'CCE', 'ANDRES11@GMAIL.COM', '202cb962ac59075b964b07152d234b70', 'unitario', '0'),
(15, 'El Bichooo', '1083873058', 'Score s.a.s', '2323232321', 1, '2024-07-24', 'CCE', 'ANDRES111@GMAIL.COM', '202cb962ac59075b964b07152d234b70', 'unitario', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha_compra` date DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id_compra`, `id_proveedor`, `estado`, `fecha_compra`, `total`) VALUES
(38, 2, 1, '2024-07-20', 30),
(39, 2, 1, '2024-07-20', 30),
(41, 2, 1, '2024-07-20', 32),
(42, 2, 1, '2024-07-20', 34),
(43, 2, 1, '2024-07-20', 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_compras`
--

CREATE TABLE `detalles_compras` (
  `id_detallecompra` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_compra` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles_compras`
--

INSERT INTO `detalles_compras` (`id_detallecompra`, `id_producto`, `id_compra`, `cantidad`, `precio_unitario`) VALUES
(98, 1, 41, 2, 6),
(99, 2, 41, 2, 5),
(100, 3, 41, 2, 5),
(101, 1, 42, 2, 7),
(102, 2, 42, 2, 5),
(103, 3, 42, 2, 5),
(104, 1, 43, 2, 6),
(105, 2, 43, 2, 5),
(106, 3, 43, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_gestiones`
--

CREATE TABLE `detalles_gestiones` (
  `id_detalle` int(11) NOT NULL,
  `id_gestion` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` float DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles_gestiones`
--

INSERT INTO `detalles_gestiones` (`id_detalle`, `id_gestion`, `cantidad`, `precio_unitario`, `id_producto`) VALUES
(1, 1, 10, 23, 1),
(2, 1, 10, 123, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestiones`
--

CREATE TABLE `gestiones` (
  `id_gestion` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha_gestion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gestiones`
--

INSERT INTO `gestiones` (`id_gestion`, `id_cliente`, `total`, `estado`, `fecha_gestion`) VALUES
(1, 3, 12, 0, '2024-07-24'),
(2, 7, 233.4, 2, '2024-07-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `id_modulo` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`id_modulo`, `titulo`, `descripcion`, `estado`) VALUES
(1, 'dashboard', 'info dashboard', 1),
(2, 'roles', 'info roles', 1),
(3, 'usuarios', 'info usuarios', 1),
(4, 'pedidos', 'info pedidos', 1),
(5, 'ventas', 'info ventas', 1),
(6, 'clientes', 'info clientes', 1),
(7, 'compras', 'info compras', 1),
(8, 'categorias', 'info categorias', 1),
(9, 'productos', 'info productos', 1),
(10, 'proveedores', 'info proveedores', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL,
  `id_rol` int(11) DEFAULT NULL,
  `id_modulo` int(11) DEFAULT NULL,
  `acceso` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permiso`, `id_rol`, `id_modulo`, `acceso`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 1, 9, 1),
(10, 2, 1, 1),
(11, 2, 2, 1),
(12, 2, 3, 1),
(13, 2, 4, 1),
(14, 2, 5, 1),
(15, 2, 6, 1),
(16, 2, 7, 1),
(17, 2, 8, 1),
(18, 2, 9, 1),
(19, 3, 1, 1),
(20, 3, 2, 1),
(21, 3, 3, 1),
(22, 3, 4, 1),
(23, 3, 5, 1),
(24, 3, 6, 1),
(25, 3, 7, 1),
(26, 3, 8, 1),
(27, 3, 9, 1),
(28, 1, 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `valor_compra` float DEFAULT NULL,
  `porcentaje_unitario` int(100) NOT NULL,
  `porcentaje_mayorista` int(100) NOT NULL,
  `estado` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `id_categoria`, `nombre_producto`, `descripcion`, `cantidad`, `valor_compra`, `porcentaje_unitario`, `porcentaje_mayorista`, `estado`, `foto`) VALUES
(1, 2, 'cargador negro', 'este cargador es serial limitad\r\na', 30, 100, 25, 50, 1, 'static/images/00bf53faa3.jpg'),
(2, 1, 'forro transparente', 'mejor forro', 20, 100, 25, 50, 1, 'static/images/71ca4ac2-6.jpg'),
(3, 1, 'Dd', 'Dd', 0, 100, 25, 50, 1, 'static/images/d352538b3d.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `tipo_proveedor` int(11) DEFAULT NULL,
  `nombre_empresa` varchar(255) DEFAULT NULL,
  `telefono_contacto` varchar(15) DEFAULT NULL,
  `sello` varchar(15) DEFAULT NULL,
  `cedula_nit` varchar(15) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fecha_proveedor` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `tipo_proveedor`, `nombre_empresa`, `telefono_contacto`, `sello`, `cedula_nit`, `estado`, `direccion`, `fecha_proveedor`) VALUES
(1, 1, 'batri', '123', 'jhgk789', '123', 1, 'calle 45 23', '2024-05-04'),
(2, 0, 'apple', '123', '87fdfd', '12', 1, 'cra 45 3434', '2024-05-04'),
(3, 1, 'aaasdasdasd', '2212312', '222', '22212312', 0, 'dsaasda', '2024-05-04'),
(6, 1, 'asdas', '1231213', '12312', '1213231', 1, '2312', '2024-05-15'),
(7, 0, 'juanitosda', '3114172222', '1212', '1020222222', 0, 'hola', '2024-05-18'),
(8, 1, 'juanitoasd', '12312312', 'asdas', '123123212', 1, 'asda', '2024-05-21'),
(9, 1, 'asdassdas', '1231212', '21312', '12312312', 1, '12312', '2024-05-21'),
(10, 0, 'Shadow', '12312312', '1231', '1231231', 1, '12312', '2024-05-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre`, `descripcion`, `estado`) VALUES
(1, 'administrador', 'info administrador', 1),
(2, 'vendedor', 'info vendedor', 1),
(3, 'cliente', 'info cliente', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `tipo_identificacion` varchar(10) NOT NULL,
  `cedula` varchar(15) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `correo`, `clave`, `id_rol`, `nombre`, `apellido`, `telefono`, `tipo_identificacion`, `cedula`, `estado`, `fecha`) VALUES
(1, 'ramirezandress20891@gmail.com', '123', 1, 'andres', 'ramirds', '3145678990', '', '12345', 1, '2024-05-04'),
(8, 'ramirezandres20891@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 'Aaaa', 'Ss', '123', 'TI', '11', 1, '2024-07-11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `detalles_compras`
--
ALTER TABLE `detalles_compras`
  ADD PRIMARY KEY (`id_detallecompra`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_compra` (`id_compra`);

--
-- Indices de la tabla `detalles_gestiones`
--
ALTER TABLE `detalles_gestiones`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_gestion` (`id_gestion`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `gestiones`
--
ALTER TABLE `gestiones`
  ADD PRIMARY KEY (`id_gestion`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id_modulo`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permiso`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_modulo` (`id_modulo`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `detalles_compras`
--
ALTER TABLE `detalles_compras`
  MODIFY `id_detallecompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `detalles_gestiones`
--
ALTER TABLE `detalles_gestiones`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `gestiones`
--
ALTER TABLE `gestiones`
  MODIFY `id_gestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id_modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `detalles_compras`
--
ALTER TABLE `detalles_compras`
  ADD CONSTRAINT `detalles_compras_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `detalles_compras_ibfk_2` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compra`);

--
-- Filtros para la tabla `detalles_gestiones`
--
ALTER TABLE `detalles_gestiones`
  ADD CONSTRAINT `detalles_gestiones_ibfk_1` FOREIGN KEY (`id_gestion`) REFERENCES `gestiones` (`id_gestion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalles_gestiones_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `gestiones`
--
ALTER TABLE `gestiones`
  ADD CONSTRAINT `gestiones_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`id_modulo`) REFERENCES `modulos` (`id_modulo`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
