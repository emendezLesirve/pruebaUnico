-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2022 a las 19:03:43
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbunico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `idarticulo` int(11) NOT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `descripcion` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `imagen` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`idarticulo`, `idcategoria`, `nombre`, `precio`, `descripcion`, `imagen`) VALUES
(1, 1, 'Jean Dama', 50000, 'JEAN PARA DAMA', 'https://hmcolombia.vtexassets.com/arquivos/ids/1534722/Flare-Fit-Jeans---Azul-denim-claro---H-M-CO.jpg?v=637831715472700000'),
(2, 1, 'Jean Caballero', 70000, 'JEAN PARA CABALLERO', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTx18H6YAAdtSw-l2l_P80Exg4WwV7Gjk-b0td-bJPDk00rbmHcgINs5ud0LBBDf8EVxrs08UZ87eM&usqp=CAc'),
(3, 1, 'Camiseta Polo', 50000, 'Las mejores marcas', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRS6jVtI5J5FP2KVxDUK31SrlAYvWCrav-K-NnnmfLxzLCPb2RcAmToKMrdGf42ljOIXByvjMtqDEM&usqp=CAc'),
(4, 1, 'Camiseta Polo en algodon', 35000, 'Las mejores marcas', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRGMaGd97sELoOgvVnavRK_gROT3AXDtSBMFDKZMnAusthrkHw6pYBSYgJMsFZkzyt9klOcm6ivWWo&usqp=CAc'),
(5, NULL, 'Camiseta Polo Niño', 80000, 'Las mejores Marcas', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTCJLtUWFds5wB9D9OK2Y5upoqC_RY91zRdwgycHJ7VqB13ChML2AH-cmOocrP4VKC44iVbsoLWVJY&usqp=CAc'),
(6, NULL, 'Camisa Manga larga Versace', 120000, 'Las mejores marcas versaces', 'https://milcamisas.com/wp-content/uploads/2019/03/AZUL-UNICOLOR-MANGALARGA.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `condicion` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`idarticulo`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `idarticulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
