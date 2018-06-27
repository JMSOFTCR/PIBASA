-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2018 a las 08:31:19
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pibasa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carousel`
--

CREATE TABLE `carousel` (
  `productid` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carousel`
--

INSERT INTO `carousel` (`productid`, `photo`) VALUES
(80, 'upload/pegamix-psp-porcelanito-20kg_1530080764.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`cartid`, `userid`, `productid`, `qty`) VALUES
(1, 2, 28, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(1, 'mortero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `userid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `customer`
--

INSERT INTO `customer` (`userid`, `customer_name`, `address`, `contact`) VALUES
(2, 'Jose Molina Cascante', 'Nicoya Costa Rica', '+50661372755');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory`
--

CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `inventory_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventory`
--

INSERT INTO `inventory` (`inventoryid`, `userid`, `action`, `productid`, `quantity`, `inventory_date`) VALUES
(51, 1, 'Add Product', 0, 2, '2018-02-19 00:38:37'),
(52, 1, 'Add Product', 0, 2, '2018-02-19 00:39:42'),
(53, 1, 'Add Product', 54, 2, '2018-02-19 00:40:57'),
(54, 1, 'Add Product', 55, 2, '2018-02-19 00:54:12'),
(55, 1, 'Add Product', 56, 2, '2018-02-19 00:56:45'),
(56, 1, 'Add Product', 57, 2, '2018-02-19 00:57:15'),
(57, 1, 'Add Product', 58, 2, '2018-02-19 01:00:18'),
(58, 1, 'Add Product', 59, 2, '2018-02-19 01:02:28'),
(59, 1, 'Add Product', 60, 2, '2018-02-19 01:04:37'),
(60, 1, 'Add Product', 61, 2, '2018-02-19 01:08:53'),
(61, 1, 'Add Product', 62, 2, '2018-02-19 01:11:17'),
(62, 1, 'Add Product', 63, 2, '2018-02-19 01:15:39'),
(63, 1, 'Add Product', 64, 2, '2018-02-19 18:01:38'),
(64, 1, 'Add Product', 65, 2, '2018-02-19 18:05:17'),
(65, 1, 'Add Product', 66, 2, '2018-02-19 18:07:49'),
(66, 1, 'Add Product', 0, 2, '2018-02-19 18:10:07'),
(67, 1, 'Add Product', 0, 2, '2018-02-19 18:11:30'),
(68, 1, 'Add Product', 67, 2, '2018-02-19 18:12:00'),
(69, 1, 'Add Product', 68, 2, '2018-02-19 18:36:10'),
(70, 1, 'Add Product', 69, 2, '2018-02-22 00:46:31'),
(71, 1, 'Add Product', 70, 2, '2018-02-22 00:48:29'),
(72, 1, 'Add Product', 71, 2, '2018-02-22 01:37:31'),
(73, 1, 'Add Product', 0, 2, '2018-02-22 01:40:32'),
(74, 1, 'Add Product', 0, 2, '2018-02-22 01:41:22'),
(75, 1, 'Add Product', 0, 2, '2018-02-22 01:42:19'),
(76, 1, 'Add Product', 0, 2, '2018-02-22 01:42:49'),
(77, 1, 'Add Product', 72, 2, '2018-02-22 01:43:03'),
(78, 1, 'Add Product', 73, 2, '2018-02-22 02:06:08'),
(79, 1, 'Add Product', 74, 2, '2018-02-22 02:16:35'),
(80, 1, 'Add Product', 75, 2, '2018-02-22 02:28:40'),
(81, 1, 'Add Product', 76, 2, '2018-02-26 00:56:30'),
(82, 1, 'Add Product', 77, 2, '2018-02-26 01:05:17'),
(83, 1, 'Add Product', 78, 1, '2018-02-26 01:08:41'),
(84, 1, 'Add Product', 79, 2, '2018-02-26 01:11:01'),
(85, 2, 'Purchase', 34, 3, '2018-05-13 02:12:51'),
(86, 2, 'Purchase', 28, 3, '2018-05-13 02:12:51'),
(87, 1, 'Update Quantity', 34, 20, '2018-05-16 01:26:03'),
(88, 1, 'Add Product', 80, 120, '2018-06-27 00:26:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `supplierid` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(1000) NOT NULL,
  `tech` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`, `description`, `video`, `tech`) VALUES
(80, 1, 'Cemix PSP modificado 20kg', 2400, 120, 'upload/pegamix-psp-porcelanito-20kg_1530080764.jpg', 11, 'Mortero para revestimiento, porcelanato, ceramica. ', '', '2kg por saco. \r\nPega sobre superficies viejas y nuevas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `salesid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `sales_total` double NOT NULL,
  `sales_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`salesid`, `userid`, `sales_total`, `sales_date`) VALUES
(1, 2, 34, '2017-09-16 16:23:38'),
(2, 2, 18, '2017-09-16 16:25:28'),
(3, 2, 6, '2017-09-16 16:27:31'),
(4, 2, 1014244, '2017-09-16 16:44:01'),
(5, 2, 9588, '2017-09-18 09:06:29'),
(6, 2, 88779, '2017-09-18 09:08:42'),
(7, 2, 15579, '2017-09-18 09:09:34'),
(8, 2, 112361, '2017-09-18 09:32:00'),
(9, 2, 7990, '2017-09-18 09:34:29'),
(10, 2, 18370, '2017-09-18 11:09:21'),
(11, 2, 20, '2017-11-19 17:45:58'),
(12, 1, 15, '2017-11-22 19:47:29'),
(13, 1, 20, '2017-12-04 21:16:56'),
(14, 1, 420, '2017-12-04 21:17:25'),
(15, 2, 690, '2018-05-13 02:12:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_detail`
--

CREATE TABLE `sales_detail` (
  `sales_detailid` int(11) NOT NULL,
  `salesid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `sales_qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales_detail`
--

INSERT INTO `sales_detail` (`sales_detailid`, `salesid`, `productid`, `sales_qty`) VALUES
(1, 2, 1, 12),
(2, 2, 2, 10),
(3, 3, 3, 11),
(4, 4, 2, 50),
(5, 4, 1, 106),
(6, 4, 5, 1000),
(7, 5, 2, 12),
(8, 6, 5, 101),
(9, 7, 1, 10),
(10, 7, 3, 11),
(11, 8, 4, 10),
(12, 8, 20, 10),
(13, 8, 1, 99),
(14, 8, 2, 20),
(15, 9, 2, 10),
(16, 10, 2, 10),
(17, 10, 3, 12),
(18, 10, 4, 8),
(19, 11, 23, 1),
(20, 12, 24, 1),
(21, 13, 23, 1),
(22, 14, 27, 2),
(23, 15, 34, 3),
(24, 15, 28, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supplier`
--

CREATE TABLE `supplier` (
  `userid` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `supplier`
--

INSERT INTO `supplier` (`userid`, `company_name`, `company_address`, `contact`) VALUES
(11, 'Cemix', 'Honduras', '888-888-888');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(11, 'Cemix', '81dc9bdb52d04dc20036dbd8313ed055', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carousel`
--
ALTER TABLE `carousel`
  ADD KEY `productid` (`productid`);

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userid`);

--
-- Indices de la tabla `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventoryid`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesid`);

--
-- Indices de la tabla `sales_detail`
--
ALTER TABLE `sales_detail`
  ADD PRIMARY KEY (`sales_detailid`);

--
-- Indices de la tabla `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`userid`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `salesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `sales_detail`
--
ALTER TABLE `sales_detail`
  MODIFY `sales_detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carousel`
--
ALTER TABLE `carousel`
  ADD CONSTRAINT `productid` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
