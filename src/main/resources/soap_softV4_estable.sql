-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2017 a las 06:19:49
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `soap_soft`
--
CREATE DATABASE IF NOT EXISTS `soap_soft` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `soap_soft`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `ID` int(11) NOT NULL,
  `nit` varchar(100) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `celular` varchar(10) NOT NULL,
  `contacto` int(100) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `direccion` varchar(100) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_clientes`
--

INSERT INTO `tb_clientes` (`ID`, `nit`, `razon_social`, `telefono`, `celular`, `contacto`, `estado`, `direccion`, `creadoPor`, `creadoEn`, `modificadoPor`, `modificadoEn`) VALUES
(9, '1', 'test2', '123', '456', 789, 1, 'test3', 'hernan', '2017-11-20 14:24:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_entrada_materia_prima`
--

CREATE TABLE `tb_detalle_entrada_materia_prima` (
  `ID` int(11) NOT NULL,
  `id_entrada_mat_prim` int(11) NOT NULL,
  `id_materia_prima` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_entrada_prod_term`
--

CREATE TABLE `tb_detalle_entrada_prod_term` (
  `ID` int(11) NOT NULL,
  `id_entrada_prod_term` int(11) NOT NULL,
  `id_producto_terminado` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_factura_venta`
--

CREATE TABLE `tb_detalle_factura_venta` (
  `ID` int(11) NOT NULL,
  `id_factura_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `vlor_iva` int(11) NOT NULL,
  `tipo_iva` varchar(10) NOT NULL,
  `vlor_unitario` int(11) NOT NULL,
  `vlor_total` int(11) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_orden_compra`
--

CREATE TABLE `tb_detalle_orden_compra` (
  `ID` int(11) NOT NULL,
  `id_materia_prima` int(11) NOT NULL,
  `id_orden_compra` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `vlor_iva` int(11) NOT NULL,
  `tipo_iva` varchar(10) NOT NULL,
  `vlor_unitario` int(11) NOT NULL,
  `vlor_total` int(11) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_produccion`
--

CREATE TABLE `tb_detalle_produccion` (
  `ID` int(11) NOT NULL,
  `id_detalle_produccion` int(11) NOT NULL,
  `id_producto_terminado` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_salida_materia_prima`
--

CREATE TABLE `tb_detalle_salida_materia_prima` (
  `ID` int(11) NOT NULL,
  `id_salida_materia_prima` int(11) NOT NULL,
  `id_materia_prima` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_salida_prod_term`
--

CREATE TABLE `tb_detalle_salida_prod_term` (
  `ID` int(11) NOT NULL,
  `id_producto_terminado` int(11) NOT NULL,
  `id_salida_prod_terminado` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_entrada_materia_prima`
--

CREATE TABLE `tb_entrada_materia_prima` (
  `ID` int(11) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_entrada_prod_terminado`
--

CREATE TABLE `tb_entrada_prod_terminado` (
  `ID` int(11) NOT NULL,
  `creadorPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_envio_notificacion_compras`
--

CREATE TABLE `tb_envio_notificacion_compras` (
  `ID` int(11) NOT NULL,
  `tipo_notificacion` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_envio_notificacion_produccion`
--

CREATE TABLE `tb_envio_notificacion_produccion` (
  `ID` int(11) NOT NULL,
  `tipo_notificacion` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_factura_venta`
--

CREATE TABLE `tb_factura_venta` (
  `ID` int(11) NOT NULL,
  `observacion` varchar(200) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(100) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_materia_prima`
--

CREATE TABLE `tb_materia_prima` (
  `ID` int(11) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `um` varchar(10) NOT NULL,
  `stock` float NOT NULL,
  `id_ubicacion` int(11) NOT NULL,
  `creadorPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_notificaciones_almacen`
--

CREATE TABLE `tb_notificaciones_almacen` (
  `ID` int(11) NOT NULL,
  `tipo_notificacion` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_orden_compra`
--

CREATE TABLE `tb_orden_compra` (
  `ID` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `creadorPor` int(11) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP,
  `observacion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_produccion`
--

CREATE TABLE `tb_produccion` (
  `ID` int(11) NOT NULL,
  `id_dpto_produccion` varchar(100) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `observacion` varchar(200) NOT NULL,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_producto_terminado`
--

CREATE TABLE `tb_producto_terminado` (
  `ID` int(11) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `um` varchar(10) NOT NULL,
  `stock` int(11) NOT NULL,
  `id_ubicacion` int(11) NOT NULL,
  `creadorPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_proveedor`
--

CREATE TABLE `tb_proveedor` (
  `ID` int(11) NOT NULL,
  `nit` varchar(100) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `contacto` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `celular` varchar(10) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_rol_usuario`
--

CREATE TABLE `tb_rol_usuario` (
  `ID` int(11) NOT NULL,
  `descripcion` varchar(11) NOT NULL,
  `estado_rol` tinyint(1) NOT NULL DEFAULT '1',
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_rol_usuario`
--

INSERT INTO `tb_rol_usuario` (`ID`, `descripcion`, `estado_rol`, `creadoPor`, `creadoEn`, `modificadoPor`, `modificadoEn`) VALUES
(1, 'Admin', 1, 'test', '2017-11-20 19:19:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_salida_materia_prima`
--

CREATE TABLE `tb_salida_materia_prima` (
  `ID` int(11) NOT NULL,
  `dpto_producion` varchar(100) NOT NULL,
  `id_producto_terminado` int(11) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_salida_prod_terminado`
--

CREATE TABLE `tb_salida_prod_terminado` (
  `ID` int(11) NOT NULL,
  `despachadorPara` varchar(100) NOT NULL,
  `observaciones` varchar(100) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ubicacion`
--

CREATE TABLE `tb_ubicacion` (
  `ID` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) DEFAULT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `ID` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `cedula` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `estado_usuario` tinyint(1) NOT NULL DEFAULT '1',
  `creadoPor` varchar(50) NOT NULL,
  `creadoEn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificadoPor` varchar(50) NOT NULL,
  `modificadoEn` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `nit` (`nit`);

--
-- Indices de la tabla `tb_detalle_entrada_materia_prima`
--
ALTER TABLE `tb_detalle_entrada_materia_prima`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_entrada_mat_prim` (`id_entrada_mat_prim`),
  ADD KEY `id_materia_prima` (`id_materia_prima`);

--
-- Indices de la tabla `tb_detalle_entrada_prod_term`
--
ALTER TABLE `tb_detalle_entrada_prod_term`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_entrada_prod_term` (`id_entrada_prod_term`),
  ADD KEY `id_productor_terminado` (`id_producto_terminado`);

--
-- Indices de la tabla `tb_detalle_factura_venta`
--
ALTER TABLE `tb_detalle_factura_venta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_factura_venta` (`id_factura_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `tb_detalle_orden_compra`
--
ALTER TABLE `tb_detalle_orden_compra`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_orden_compra` (`id_orden_compra`),
  ADD KEY `id_materia_prima` (`id_materia_prima`);

--
-- Indices de la tabla `tb_detalle_produccion`
--
ALTER TABLE `tb_detalle_produccion`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_detalle_produccion` (`id_detalle_produccion`),
  ADD KEY `id_producto_terminado` (`id_producto_terminado`);

--
-- Indices de la tabla `tb_detalle_salida_materia_prima`
--
ALTER TABLE `tb_detalle_salida_materia_prima`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_salida_materia_prima` (`id_salida_materia_prima`),
  ADD KEY `id_materia_prima` (`id_materia_prima`);

--
-- Indices de la tabla `tb_detalle_salida_prod_term`
--
ALTER TABLE `tb_detalle_salida_prod_term`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_producto_terminado` (`id_producto_terminado`),
  ADD KEY `id_salida_prod_terminado` (`id_salida_prod_terminado`);

--
-- Indices de la tabla `tb_entrada_materia_prima`
--
ALTER TABLE `tb_entrada_materia_prima`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tb_entrada_prod_terminado`
--
ALTER TABLE `tb_entrada_prod_terminado`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tb_envio_notificacion_compras`
--
ALTER TABLE `tb_envio_notificacion_compras`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tb_factura_venta`
--
ALTER TABLE `tb_factura_venta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `tb_materia_prima`
--
ALTER TABLE `tb_materia_prima`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_ubicacion` (`id_ubicacion`);

--
-- Indices de la tabla `tb_notificaciones_almacen`
--
ALTER TABLE `tb_notificaciones_almacen`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tb_orden_compra`
--
ALTER TABLE `tb_orden_compra`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `tb_produccion`
--
ALTER TABLE `tb_produccion`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tb_producto_terminado`
--
ALTER TABLE `tb_producto_terminado`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_ubicacion` (`id_ubicacion`);

--
-- Indices de la tabla `tb_proveedor`
--
ALTER TABLE `tb_proveedor`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `nit` (`nit`);

--
-- Indices de la tabla `tb_rol_usuario`
--
ALTER TABLE `tb_rol_usuario`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tb_salida_materia_prima`
--
ALTER TABLE `tb_salida_materia_prima`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_producto_terminado` (`id_producto_terminado`);

--
-- Indices de la tabla `tb_salida_prod_terminado`
--
ALTER TABLE `tb_salida_prod_terminado`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tb_ubicacion`
--
ALTER TABLE `tb_ubicacion`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `uni_des` (`descripcion`);

--
-- Indices de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tb_detalle_entrada_materia_prima`
--
ALTER TABLE `tb_detalle_entrada_materia_prima`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_detalle_entrada_prod_term`
--
ALTER TABLE `tb_detalle_entrada_prod_term`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_detalle_factura_venta`
--
ALTER TABLE `tb_detalle_factura_venta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_detalle_orden_compra`
--
ALTER TABLE `tb_detalle_orden_compra`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_detalle_salida_materia_prima`
--
ALTER TABLE `tb_detalle_salida_materia_prima`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_detalle_salida_prod_term`
--
ALTER TABLE `tb_detalle_salida_prod_term`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_entrada_materia_prima`
--
ALTER TABLE `tb_entrada_materia_prima`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_entrada_prod_terminado`
--
ALTER TABLE `tb_entrada_prod_terminado`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_envio_notificacion_compras`
--
ALTER TABLE `tb_envio_notificacion_compras`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_factura_venta`
--
ALTER TABLE `tb_factura_venta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_materia_prima`
--
ALTER TABLE `tb_materia_prima`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_notificaciones_almacen`
--
ALTER TABLE `tb_notificaciones_almacen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_produccion`
--
ALTER TABLE `tb_produccion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_producto_terminado`
--
ALTER TABLE `tb_producto_terminado`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_proveedor`
--
ALTER TABLE `tb_proveedor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_salida_materia_prima`
--
ALTER TABLE `tb_salida_materia_prima`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_salida_prod_terminado`
--
ALTER TABLE `tb_salida_prod_terminado`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_ubicacion`
--
ALTER TABLE `tb_ubicacion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_detalle_entrada_materia_prima`
--
ALTER TABLE `tb_detalle_entrada_materia_prima`
  ADD CONSTRAINT `tb_detalle_entrada_materia_prima_ibfk_1` FOREIGN KEY (`id_entrada_mat_prim`) REFERENCES `tb_entrada_materia_prima` (`ID`),
  ADD CONSTRAINT `tb_detalle_entrada_materia_prima_ibfk_2` FOREIGN KEY (`id_materia_prima`) REFERENCES `tb_materia_prima` (`ID`);

--
-- Filtros para la tabla `tb_detalle_entrada_prod_term`
--
ALTER TABLE `tb_detalle_entrada_prod_term`
  ADD CONSTRAINT `tb_detalle_entrada_prod_term_ibfk_1` FOREIGN KEY (`id_entrada_prod_term`) REFERENCES `tb_entrada_prod_terminado` (`ID`),
  ADD CONSTRAINT `tb_detalle_entrada_prod_term_ibfk_2` FOREIGN KEY (`id_producto_terminado`) REFERENCES `tb_producto_terminado` (`ID`);

--
-- Filtros para la tabla `tb_detalle_factura_venta`
--
ALTER TABLE `tb_detalle_factura_venta`
  ADD CONSTRAINT `tb_detalle_factura_venta_ibfk_1` FOREIGN KEY (`id_factura_venta`) REFERENCES `tb_factura_venta` (`ID`),
  ADD CONSTRAINT `tb_detalle_factura_venta_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `tb_producto_terminado` (`ID`);

--
-- Filtros para la tabla `tb_detalle_orden_compra`
--
ALTER TABLE `tb_detalle_orden_compra`
  ADD CONSTRAINT `tb_detalle_orden_compra_ibfk_1` FOREIGN KEY (`id_orden_compra`) REFERENCES `tb_orden_compra` (`ID`),
  ADD CONSTRAINT `tb_detalle_orden_compra_ibfk_2` FOREIGN KEY (`id_materia_prima`) REFERENCES `tb_materia_prima` (`ID`);

--
-- Filtros para la tabla `tb_detalle_produccion`
--
ALTER TABLE `tb_detalle_produccion`
  ADD CONSTRAINT `tb_detalle_produccion_ibfk_1` FOREIGN KEY (`id_detalle_produccion`) REFERENCES `tb_detalle_produccion` (`ID`),
  ADD CONSTRAINT `tb_detalle_produccion_ibfk_2` FOREIGN KEY (`id_producto_terminado`) REFERENCES `tb_producto_terminado` (`ID`);

--
-- Filtros para la tabla `tb_detalle_salida_materia_prima`
--
ALTER TABLE `tb_detalle_salida_materia_prima`
  ADD CONSTRAINT `tb_detalle_salida_materia_prima_ibfk_1` FOREIGN KEY (`id_salida_materia_prima`) REFERENCES `tb_salida_materia_prima` (`ID`),
  ADD CONSTRAINT `tb_detalle_salida_materia_prima_ibfk_2` FOREIGN KEY (`id_materia_prima`) REFERENCES `tb_materia_prima` (`ID`);

--
-- Filtros para la tabla `tb_detalle_salida_prod_term`
--
ALTER TABLE `tb_detalle_salida_prod_term`
  ADD CONSTRAINT `tb_detalle_salida_prod_term_ibfk_1` FOREIGN KEY (`id_producto_terminado`) REFERENCES `tb_producto_terminado` (`ID`),
  ADD CONSTRAINT `tb_detalle_salida_prod_term_ibfk_2` FOREIGN KEY (`id_salida_prod_terminado`) REFERENCES `tb_salida_prod_terminado` (`ID`);

--
-- Filtros para la tabla `tb_factura_venta`
--
ALTER TABLE `tb_factura_venta`
  ADD CONSTRAINT `tb_factura_venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `tb_clientes` (`ID`);

--
-- Filtros para la tabla `tb_materia_prima`
--
ALTER TABLE `tb_materia_prima`
  ADD CONSTRAINT `tb_materia_prima_ibfk_1` FOREIGN KEY (`id_ubicacion`) REFERENCES `tb_ubicacion` (`ID`);

--
-- Filtros para la tabla `tb_orden_compra`
--
ALTER TABLE `tb_orden_compra`
  ADD CONSTRAINT `tb_orden_compra_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `tb_proveedor` (`ID`);

--
-- Filtros para la tabla `tb_producto_terminado`
--
ALTER TABLE `tb_producto_terminado`
  ADD CONSTRAINT `tb_producto_terminado_ibfk_1` FOREIGN KEY (`id_ubicacion`) REFERENCES `tb_ubicacion` (`ID`);

--
-- Filtros para la tabla `tb_salida_materia_prima`
--
ALTER TABLE `tb_salida_materia_prima`
  ADD CONSTRAINT `tb_salida_materia_prima_ibfk_1` FOREIGN KEY (`id_producto_terminado`) REFERENCES `tb_producto_terminado` (`ID`);

--
-- Filtros para la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD CONSTRAINT `tb_usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `tb_rol_usuario` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
