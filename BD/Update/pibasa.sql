-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2018 a las 08:21:11
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
(1, 'CERAMICA PARA PISOS'),
(2, 'CERAMICA PARA PAREDES'),
(3, 'MORTEROS '),
(4, 'FRAGUAS PARA JUNTAS'),
(5, 'LISTELOS  Y CENEFAS'),
(6, 'LOZA SANITARIA'),
(7, 'GRIFERIA'),
(8, 'ADITIVOS PARA MORTEROS'),
(9, 'ACIDOS Y LIMPIADORES'),
(10, 'PUERTAS DE MADERA'),
(11, 'STUCCOS Y REPELLOS PARA PAREDE'),
(12, 'ARTICULOS VARIADOS'),
(13, 'ALFARERIA'),
(14, 'SELLADORES PARA CERAMICA Y FRA'),
(15, 'TABLILLA DE PVC'),
(16, 'CORNISAS DE PVC'),
(17, 'GYPSUN DECORADO'),
(18, 'MUEBLES'),
(19, 'SISTEMAS ECOAMBIENTALES'),
(20, 'CALENTADORES DE AGUA'),
(21, 'PERFILES FURRING Y TORNILLOS'),
(22, 'AISLANTES TERMICOS'),
(23, 'ACCESORIOS PARA BA?O'),
(24, 'ACCESORIOS PARA COCINA'),
(25, 'ACCESORIOS MULTIPROPOSITO'),
(26, 'FREGADEROS DE ACERO INOX.'),
(27, 'UNION DE PVC'),
(28, 'ESQUINEROS EXTERNOS DE PVC'),
(29, 'TERMINALES DE PVC  (JOTAS)'),
(30, 'ESQUINEROS INTERNOS DE PVC'),
(31, 'PRODUCTOS DE CONCRETO'),
(32, 'PATROCINIO'),
(33, 'ESPEJOS'),
(34, 'LAMPARAS LED'),
(35, 'UTILES PARA INSTALACION CERAMI'),
(36, 'LAMPARAS Y BOMBILLAS LED'),
(37, 'PRODUCTOS IMPERMEABILIZANTES'),
(38, 'REPUESTOS'),
(39, 'LAMINAS'),
(40, 'LAMINAS MICROCONCRETOS Y OTROS');

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
(53013, 5, 'LISTELO 136 BEIGE  8 X 25', 1, 10, '', 30, 'LISTELO 136 BEIGE  8 X 25', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(101023, 1, 'ALFA AMARILLO 33 X 33 CM PRIMERA', 1, 10, '', 1, 'LISO BRILLANTE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(103010, 1, 'BRUMA GRIS 40.08X40.08 PRIMERA', 1, 10, '', 3, 'NIEBLA SATINADO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(103014, 1, 'SIERRA BEIGE 48 X 48 PRIMERA 2.31 MT/CJ', 1, 10, '', 3, 'MARMOLEADO BRILLANTE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(103015, 1, 'CALACATA GRIS 48 X 48 PRIMERA 2.31/CJ', 1, 10, '', 3, 'MARMOLEADO BRILLANTE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(103079, 1, 'VENECIA GRIS 40.08 X 40.08 PRIMERA', 1, 10, '', 3, 'MARMOLEADO BRILLANTE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(113034, 1, 'CANET JET MARRON 45X 45 PRIMERA', 1, 10, '', 13, 'PAVIMENTO EMPREDRADO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(117008, 1, 'GUARANI ANTID. ROJO 31.2 x 31.2 PRIM', 1, 10, '', 17, 'GUARANI ANTID. ROJO 31.2 x 31.2 PRIM', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(119003, 1, 'EMPEDRADO CAFE  40 X 40 PRIM', 1, 10, '', 95, 'EMPEDRADO ANTIDESLIZANTE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(119065, 2, 'CER. ATRIO CAFE 40 X 40 SEGUNDA', 1, 10, '', 19, 'DECORADO RUSTICO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(119152, 1, 'CER. RONET FD BEIGE 55 X 55 2DA', 1, 10, '', 19, 'RUSTICO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(123005, 1, 'BRUNEI AZUL 40.3 X 40.3 PRIM', 1, 10, '', 23, 'BRUNEI AZUL 40.3 X 40.3 PRIM', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(123023, 1, 'PIEDRA DE RIO BEIGE 33 X 33 PRIM', 1, 10, '', 23, 'PIEDRA DE RIO BEIGE 33 X 33 PRIM', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(148003, 1, 'LEMAN BLANCO 20 X 20 PRIMERA', 1, 10, '', 48, 'RUSTICO BORDE IRREG. PISO O PARED', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(152004, 1, '9033 CARIBE BEIGE 41 X 41 PRIM', 1, 10, '', 52, 'CERAMICA P/PISO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(162003, 1, 'TRENTO BEIGE 39 X 39 PRIM.', 1, 10, '', 62, 'CERAMICA P/PISOS', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(164006, 1, 'FIORANO SALMON 33 X 33 PRIMERA', 1, 10, '', 64, 'GEOMETRICO BRILLANTE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(182014, 1, 'PORCELANATO ASPEN MARFIL 60 X 60 PRIMERA', 1, 10, '', 82, 'RECTIFICADO, ESMALTADO RUSTICO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(189016, 1, 'SEMIPORCELANATO RUSTICO 4302 40 X 40 1RA', 1, 10, '', 89, 'RUSTICO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(201015, 2, 'MONTANA VERDE OSCURO 20 x 30 PRIM', 1, 10, '', 1, 'MONTANA VERDE OSCURO 20 x 30 PRIM', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(201038, 1, 'PORC.VINTAGE COTTO MIX 60 x60 1A 6042R CJ/2.12', 1, 10, '', 1, 'DECORADO MATE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(201042, 2, 'HONEY CAFE 25 X 40 CM 1A  1.50/CJ', 1, 10, '', 1, 'MARMOLEADO BRILLANTE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(213021, 2, 'TEIDE JET GRIS 33 X 50 COM', 1, 10, '', 13, 'TEIDE JET GRIS 33 X 50 COM', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(219096, 2, 'AZUL. CARIBE AZUL 20.5 X 30.5 2DA', 1, 10, '', 19, 'DECORADO BRILLANTE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(243006, 2, 'TEAK VERDE 20.5 X 30.5 PRIMERA', 1, 10, '', 43, 'DECORADO BRILLANTE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(278012, 2, '23300 BLANCO 23 X 33 PRIMERA', 1, 10, '', 78, 'BISELADO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(287002, 2, 'TEIDE NOCE 25 X 40 PRIMERA', 1, 10, '', 87, 'NIEBLAS MATE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(291028, 1, 'CENEFA GALENA BEIGE 13 X 41 CMS', 1, 10, '', 91, 'CENEFAS PARA PISO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(298021, 2, 'MALLA DECORATIVA 26 30 X 30 CM', 1, 10, '', 98, 'MOSAICO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(341007, 3, 'MORTERO ADHESIVO PORCELANATO', 1, 10, '', 41, 'MORTERO CEMENTICIO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(405010, 4, 'PEGASISA BLANCA S/A 2 KGS.', 1, 10, '', 136, 'FRAGUA P/ JUNTAS', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(504020, 5, 'LISTELO GLD 2259  8.5 X 33', 1, 10, '', 4, 'PIEZAS DECORATIVAS', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(504075, 5, 'LISTELO GLD2393 8.5 X 33 CMS', 1, 10, '', 4, 'PIEZAS DECORATIVAS', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(531026, 5, 'LISTELO SANDRA BEIGE 5 X 20', 1, 10, '', 31, 'LISTELO SANDRA BEIGE 5 X 20', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(557023, 5, 'LISTELO CENIT PEDRA MIX 6 X 25', 1, 10, '', 57, 'LISTELOS', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(557037, 5, 'LISTELO NOELIA BEIGE 5 X 20 CMS', 1, 10, '', 57, 'PIEZA DECORATIVAS', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(564025, 5, 'LISTELO COKTAIL 8 X 25 CM', 1, 10, '', 64, 'FLECHA FRUTAS', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(591015, 5, 'LISTELO RIVALTO 5.5 X 30', 1, 10, '', 91, 'PIEZAS DECORATIVAS', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(591017, 5, 'LISTELO FERNANDA BEIGE', 1, 10, '', 91, 'PIEZAS DECORATIVAS', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(639007, 12, 'BA?ERA IMPERIAL BONE (3869)', 1, 10, '', 39, 'ACCESORIOS PARA BA?O', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(639010, 6, 'BA?ERA GEMINIS BONE', 1, 10, '', 39, 'SOLO TINA CON DESAGUE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(673006, 6, 'LAVAMANOS DE SOBREPONER GIACOMO descontinuado', 1, 10, '', 73, 'RECTANGULAR', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(673014, 12, 'SET INTERNO DOBLE DESCARGA B67', 1, 10, '', 73, 'REPUESTOS', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(673056, 6, 'LAV. EMPOTRAR  VENERE 1 H MARFIL (descont)', 1, 10, '', 73, 'AQUALYN', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(673088, 6, 'COMB INOD/DONAT BLCO/LAV ROMEO 3 H/GRIF GF-104', 1, 10, '', 73, 'JUEGO LOZA SANITARIA', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(682013, 6, 'CUELLO DE CERA PARA INODORO', 1, 10, '', 82, 'ACOPLE SELLANTE DE SALIDA', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(682041, 6, 'LAVAT. LEMANS BLANCO RECTANGULAR', 1, 10, '', 82, 'DE SOBREPONER', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(701002, 7, 'CACHERA 60206 BASE CRISTAL C KENNET', 1, 10, '', 1, 'CUELLO BAJO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(701004, 7, 'LLAVE LAVAT #KTH-D01 TIPO PUSH CROMO INSTITUC.', 1, 10, '', 1, 'CROMADA', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(773006, 7, 'GRIFO MONOMANDO BDS-0201', 1, 10, '', 73, 'DE LUJO PARA LAVAT. DE UN SOLO HUECO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(775004, 7, 'CACHERA FREG. MONOMANDO CROMO 100', 1, 10, '', 75, 'CA?O ALTO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(968001, 9, 'ACIDO MURIATICO ECONOMICO GALON', 1, 10, '', 110, 'PRODUCTOS P/LIMPIEZA', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(1107002, 1, 'PORCEL. AYERS SAND 80 X 80 PRIMERA', 1, 10, '', 107, 'PULIDO, RECTIFICADO, SELLADO DOBLE/CARGA', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(1111006, 1, 'GRANITO VERDE ANTIDES 33 X 33 PRIMERA', 1, 10, '', 111, 'ANTIDESLIZANTE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(1133005, 1, 'EVEREST STONE OFF WHITE 1A 33X33CM 1.53/CJ', 1, 10, '', 133, 'MARMOLEADO MATE', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(1142001, 1, '725-A COTTO PETRA 54X54 CJ/2.03 CAL. 1RA', 1, 10, '', 142, 'RUSTICO GEOMETRICO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(1201008, 26, 'FREG. TEKA 8461132 ECON 80 x 51CM EMPOT DER', 1, 10, '', 1, '1 TANQUE 1 ESCURRIDOR', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(1558019, 15, 'TABLI LAMIN. L-103 RUSTICO OSCURO 5.95 X 0.25', 1, 10, '', 58, 'PREMIUN MADERA RUSTICA', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(1658040, 16, 'CORNISA LAMINADA L-104 PINO RUSTICO 5.80 MTS', 1, 10, '', 58, 'MOLDURA RUSTICA', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(1663007, 16, 'RODAPIE BES - 08 PVC', 1, 10, '', 63, 'ACABADOS DE PVC', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(1780023, 18, '0330 MUEBLE LAVAT SOBP COLOR MADERA 50X58X83', 1, 10, '', 80, 'DOS PUERTAS', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(2100047, 2, 'MOSAICO CS-21 30 X 30', 1, 10, '', 100, 'MALLAS VITREA DECORATIVA', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(5112022, 5, 'LISTELO GLD 6255 5 X 26 CM CAL 1A', 1, 10, '', 112, 'PIEZA DECORATIVA', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(5601007, 1, '45149 44.8 X 44.8 PRIM.', 1, 10, '', 56, 'CERAMICA P/PISO', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(7121028, 7, 'CACHERA FREG SENC SATINADA PALNCA K5-D0088', 1, 10, '', 121, 'SATINADA', 'No hay video disponible', 'No hay informaci?n acerca de este producto'),
(15118018, 15, 'TABLILLA PVC LAMINADA CAOBA CS-E002 6MM', 1, 10, '', 118, 'LAMINADA DELGADA', 'No hay video disponible', 'No hay informaci?n acerca de este producto');

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
  `company_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `company_address` varchar(150) CHARACTER SET latin1 NOT NULL,
  `contact` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `supplier`
--

INSERT INTO `supplier` (`userid`, `company_name`, `company_address`, `contact`) VALUES
(1, 'MAYOREO ABONOS AGRO S.A.', 'LA URUCA CONTIGUO A LA YAMAHA', '22115115'),
(2, 'EXPOCERAMICAS ACABADOS S.A', '', ''),
(3, 'FLORENTINA', 'TARAS DE CARTAGO COSTA RICA', '25720708'),
(4, 'IMACOCA S.A.', '75 SUR CRUCE TARAS Y LA LIMA CARTAGO', '2259-4835'),
(5, 'CORPORACION B.B.G., S.A.', 'CIRUELAS DE ALAJUELA', '2438-0821'),
(6, 'TORNILLOS Y MAS GUANACASTECOS S.A.', 'NICOYA GUANACASTE', '2686-6504'),
(7, 'GRUPO EMBRAMACO', 'BRASIL', ''),
(8, 'ARTS POL IND. CASABLANCA', 'CASTELLON ESPA?A', ''),
(9, 'CERAMICAS AZAHAR S.A.', 'CASTELLON ESPA?A', ''),
(10, 'BLAU CERAMICAS GRUPO ROCERSA', 'CASTELLON ESPA?A', ''),
(11, 'MACAVI W.S. S.A.', 'SAN JOSE COSTA RICA', ''),
(12, 'COLCERAMICAS S.A.', 'BOGOTA COLOMBIA', ''),
(13, 'EL MOLINO CERAMICAS', 'CASTELLON ESPA?A', ''),
(14, 'GRAIMAN', 'GUAYAQUIL ECUADOR', ''),
(15, 'GRESITEC', '', ''),
(16, 'CERAMICA HISPANO CENTROAMERICANA S.A.', 'GUATEMALA', ''),
(17, 'GRUPO HALCON CERAMICAS', 'CASTELLON ESPA?A', ''),
(18, 'LOZA SAN JOSE S.A.', '', '22563535'),
(19, 'SERVICIOS COMERCIALES LAMOSA,S.A. DE C.V', 'MEXICO', ''),
(20, 'LEF PISOS E REVESTIMENTOS LTDA', 'SA PABLO BRASIL', ''),
(21, 'MAPISA CERAMICA', 'PUEBLA TORNESA ESPA?A', ''),
(22, 'ESKEMA CERAMICAS', 'ESPA?A', ''),
(23, 'MANUFACTURA VITROMEX S.A. DE C.V', 'SALTILLO MEXICO', ''),
(24, 'ACABADOS MONTPELLIER S.A.', 'BARRIO AMON SAN JOSE', '22192636'),
(25, 'MAGIC CERAMICAS', 'ESPA?A', ''),
(26, 'LATICRETE DE COSTA RICA S.A.', 'SAN JOSE COSTA RICA', '2233-4159'),
(27, 'PORCELANITE S.A. DE C.V', 'MEXICO D.F.', ''),
(28, 'CEMIX DE COSTA RICA S.A.', 'CARTAGO, LA LIMA CONT. LAB. STEIN', '22018055'),
(29, 'IMPORT. Y EXPORT. EL ORIENTE S.A.', 'SAN RAMON DE ALAJUELA C.R.', '2445-5003'),
(30, 'CERAMICAS DE LA PAMPA S.A.', 'LIBERIA GUANACASTE C.R.', '2665-2668'),
(31, 'CORPORACION CERAMICA INTL. CCI. S.A.', '', '2235-9391'),
(32, 'CERAMICAS ANGEL S.A.', '', '2573-8173'),
(33, 'NUBOSA S.A.', '', '2226-4619'),
(34, 'IMPORTACIONES INDUST. MASACA S.A.', '', '2244-2700'),
(35, 'INTACO COSTA RICA S.A.', 'SAN JOSE C.R.', '2211-1717'),
(36, 'IB CERAMICA S.A.', 'PALMARES DE ALAJUELA', '2453-1901'),
(37, 'PROVEEDORES VARIOS', '', ''),
(38, 'JARRONES EL ALFARERO', 'SANTA ANA SAN JOSE', '2236-5063'),
(39, 'IB INDUSTRIAL IBI S.A.', 'PALMARES DE ALAJUELA', '2453-1250'),
(40, 'CERAGEMA DE SAN RAMON S.A.', 'FRENTE A LA CORTE SAN RAMON ALAJUELA', '24476102'),
(41, 'BLOQUES PEDREGAL S.A.', 'NICOYA GUANACASTE.', '0268-6553'),
(42, 'SUPER CERAMICA HISPANA S.A.', 'CONT. CENT. COM. LOS COLEGIOS MORAVIA SJ', '2235-7122'),
(43, 'CORP. KEJ MAYOREO DEL ESTE S.A.', 'SN FCO. 2 RIOS 150 S DEL PARAISO SN JOSE', '2219-9697'),
(44, 'MAYOREO DEL ISTMO S.A.', 'DIAG. A TERMINAL BUSES IPIS SN. JOSE', '22929370'),
(45, 'CERAMICA LA ESPA?OLA C.E., S.A.', '75 mts. norte del Mercado, Cartago C.R.', '2551-2754'),
(46, 'PALO ROSA CERAMICAS Y PARQUETS, S.L.', 'CASTELLON ESPA?A', ''),
(47, 'EL GUADALUPANO S.A.', '', '2224-2244'),
(48, 'ROIG CERAMICA S.A.', 'CASTELLON ESPA?A', ''),
(49, 'DISE?OS EXCLUSIVOS DE LA RODIA S.A.', '', '24424194'),
(50, 'EL BARCO  S.L.', 'CASTELLON ESPA?A', '964600147'),
(51, 'NITROPISO S.A.  DE C.V.', 'SAN LUIS POTOSI S,L. P MEXICO', '448320100'),
(52, 'BELLAGRES INDUSTRIA CERAMICA LTDA', 'BRAZIL', '26504646'),
(53, 'CLIENTES VARIOS', '', ''),
(54, 'INVERS. JUPITER RUAN G & C  S.A.', 'SANTA ANA SAN JOSE, 400 E. PARQUE FORUM', '22827728'),
(55, 'SAMBORO', 'GUATEMALA CALZADA ROOSEVELT 32-67,ZONA11', '22600606'),
(56, 'INCOPISOS-IND. E COMERCIO DE PISOS LTDA', 'ESTRADA MINICIP. STA, GERTRUDES A IRACEM', '8392-0348'),
(57, 'CERAMICAS MUNDIALES S.A.', 'SN. FCO. DE DOS RIOS FTE. MOLTEL PARAISO', '22194343'),
(58, 'JORCA IMPORTACIONES S.A.', 'SAN RAMON DE ALAJUELA', '24456660'),
(59, 'FIMARCA DE COSTA RICA S.A.', 'Montecillo de Alajuela', '24517711'),
(60, 'ANGELGRESS', 'SAN JOSE', ''),
(62, 'TRIUNFO CERAMICA', 'SAN JOSE COSTA RICA', '22504646'),
(63, 'PLASTIMEX PALMARES S.A.', '100 E. DEL CRUCE DE PALMARES', '24531251'),
(64, 'DECOMAR S.A.', 'SAN FCO. DE DOS RIOS, SAN JOSE', '22263010'),
(65, 'MADERAS CULTIVADAS DE COSTA RICA S.A.', '1 KM.  CRUCE PLAYAS DEL COCO, COMUNIDAD', '21053535'),
(66, 'DISTRIBUIDORA DIGEMA DG GUACHIPELIN S.A.', 'ESCAZU, 800 MTS AL OESTE DE MULTIPLAZA', '25888888'),
(67, 'ARQUITECTURA CERAMICA Y ACABADOS ARQUICE', 'SAN JOSE', '22504646'),
(68, 'SUFESA SUPLIDORA FERRETERA S.A.', 'Carret Sn. Antonio Coronado, 300 E. mall', '22857220'),
(69, 'IMPORTACIONES ROMINA S.A.', 'FRENTE A EUROPCAR GUARDIA LIBERIA', '26670705'),
(70, 'AZULEJOS FOSET, S. L. U.  (PRISMACER)', 'SAN JOSE COSTA RICA', '964500226'),
(71, 'TRADEX GLOBAL', '', ''),
(72, 'TRANSPORTES MILOTRA S.A.', 'Apartado 812-2070 Sabanilla San Jos? C.R', '22203446'),
(73, 'IMPORTADORA CONTINENTAL ', 'Los lagos de heredia ', '22382405'),
(74, 'DE TARNOS CERAMICAS S.L.', 'SAN JOSE', ''),
(75, 'INDIANAPOLIS MAYOREO S.A.', 'Lagunilla de Heredia 150 norte de COCORI', '22614517'),
(76, 'DIST. DE HIERRO Y ACERO S.A.', 'B? Cuba de Tanq. de  C?a. Numar 200 oest', '22339925'),
(77, '', 'B? Cuba, 200 mts Oeste de tanques Numar', '22339925'),
(78, 'CERAMICA CRISTOFOLETTI LTDA.', 'BRASIL', ''),
(79, 'CERAMICAS RAMOS LTDA    CERAL', 'BRASIL', '23829991'),
(80, 'DISTRIBUIDORA PUENTE LA COLINA SRL', 'SN ANT DE DESAMP75 O de la Gasolinera', '22768910'),
(81, 'IBEROALCORENSE S.L.', 'HEREDIA', '22410810'),
(82, 'LETSAC COSTA RICA S.A.', 'Barreal, 300 m norte de PEPSI Heredia', '40100122'),
(83, 'ANA CECILIA MARIN CHAC?N', 'ZAPOTE SAN JOSE COSTA RICA', '22801317'),
(84, 'ALMACO S.A.', '350 Norte Polideport. San Pedro, Po?s, A', '2448-6649'),
(85, 'JEISSON V. HIDALGO RODRIGUEZ', 'GRECIA COSTA RICA', '24947670'),
(86, 'RQM CONSTRUCTORA', '100 N Y 150 E DEL PATRIARCA SAN RAMON', '24477736'),
(87, 'A & B IMPORTS S.A.', 'SANTA ANA 500N. 500 O Y 300N. EMPAQUES S', '22931476'),
(88, 'RUY R. DA ROCHA PROD. CERAMICOS LTDA', 'CORDEIROPOLIS SAO PAULO BRAZIL', ''),
(89, 'PORCERAMICA SRL', 'EL COYOL DE ALAJUELA', '24338282'),
(90, 'ATIKO WORLD S.A.', 'PAVAS 100 S. DIST STA BARBARA SN/JOSE', '22962815'),
(91, 'IMPORTADORA CIRCASIA, S.A.', '300 N. 125 O. DE TORRE MERCEDEZ', '22562487'),
(92, 'IMPORTADORA EL TESORO', 'SANTA ANA SAN JOSE', '22394407'),
(93, 'ANPE GLOBAL S.A.', 'SANTA ANA, ESCAZU, SAN JOSE', '2239-4407'),
(94, 'CODICER 95', 'CASTELLON ESPA?A', '9642-0245'),
(95, 'SERVICIOS ADMINISTRATIVOS MP, S.A.', 'DESAMPARADOS', '83472170'),
(96, 'GRUPO CORPORAT. PIEDRA MONTERO S.A', 'CARTAGO COSTA RICA', ''),
(97, 'AISLANTES TERMICOS GLOBALES S.A.', 'SAN RAMON 200 mts OESTE ESC. LABORATORI', '24457860'),
(98, 'ERICK ALBERTO CASTILLO QUIROS', '60734302 O 87580297', '22262781'),
(99, 'DECO CERAMICAS S.A.', 'sn fco dos rios frnte entrada princ. mot', '22507080'),
(100, 'DECORVETRO S.A.', 'PAVAS. 50 ESTE DE OFIC. CTLES PIZZA HUT', '22135050'),
(101, 'LA ROCA JJ S.A.', 'SAN JOSE, SANTA ANA C.R.', '22035623'),
(102, 'ZAYMA FUTURA S.A.', '800 O DEL PARQ CEMENT CONT COOPEALAJUELA', '40317800'),
(103, 'CERAMICA LAS TRES B S.A.', 'TIBAS SAN JOSE COST NORTE CENT COMER FER', '22977095'),
(104, 'DOCUMA S.A.', 'LOS ROBLES, SAN VICENTE DE MORAVIA S.J.', ''),
(105, 'PRODUCCIONES LA IDEA DE RUDY S.A.', '', '40815835'),
(106, 'ARTEC PISOS E REVESTIMENTOS LTDA', 'BRAZIL', ''),
(107, 'RAMSTACK INT CORP. S.A.', 'San Antonio De Bel?n, 50 O, 100 N Acuana', '22399134'),
(108, 'REDINSA INTERNACIONAL S.A.', 'La Uruca, de la Ag. Mazda 700 Mts Sur SJ', '25191500'),
(109, 'IMPERSA S. A.', 'Sn Fco. de Dos R?os 600 N del Motel La', '22181110'),
(110, 'EB TECNICA DE COSTA RICA S .A.', 'La Florida, Tib?s,250 Este del ICE Sn Jo', '22470703'),
(111, 'ENEACER S.L.', 'ESPA?A', '964105787'),
(112, 'PEGAMENTOS SAVE PEGASAVE S.A.', '150 MTS O DE REST. EL QUIJONGO CARTAGO', '25734554'),
(113, 'AZETA CERAMICA S. A.', '2 Km O Emb. Est. Unidos Fte. Plant ICE', '22130192'),
(114, 'SAN LORENZO', 'DICESA DESAMPARADOS SAN JOSE', ''),
(115, 'HISPANO AZUL G&G S.A.', 'GUARDIA, FRENTE A EURPCAR LIBERIA', '40317840'),
(116, 'INVERSIONES INTERNACIONAL CALECO S.A.', '', '2635-9101'),
(117, 'CERAMICAS CHAVARRIA 3101697349 S.A.', 'SAN FRANCISCO DE DOS RIOS SAN JOSE', '22270023'),
(118, 'CORPORACION S Y S DE TIBAS S. A.', 'SN MIGUEL STO DOMINGO 50 O 75 N TANQ AGU', '4031-7000'),
(119, 'S. P. A. S.  S.A.', 'CALLE 38, AV. 2 Y 4, CASA 227', '47000231'),
(120, 'NIKOFER DEL SUR S. A.', 'SN ISIDRO DEL GRAL FRENTE AL I. N. A.', '27725269'),
(121, 'IMPORTACION LUCKY ORIENTAL S.A.', 'VILLA ESPERANZA DE PAVAS 25 E DEL PERIFE', '22131830'),
(122, 'GAROLY BRANDS, S.A.', ' 300 S. 300 E. ROTONDA ZAPOTE, EDIF. GAR', '22862471'),
(123, 'CERAMICA PORTO FERREIRA SA', 'SAO PAULO BRAZIL', ''),
(124, 'PERSIANAS CANET S. A.', 'Bo. Quesada Duran San Jose', '2280-1050'),
(125, 'INDUSTRIAS ZURQUI CAMPOS Y MARIN S.A.', 'SANTO DOMINGO DE HEREDIA', '22687646'),
(126, 'NORMAN ALFARO ALFARO', 'LEPANTO PUNTARENAS', ''),
(127, 'MATERIALES ARSENIO SOTO S.A.', '150 Norte de la terminal de Buses Grecia', '24944755'),
(128, 'MICHAEL QUIROS FALLAS', 'distribuidoramquiros@gmail.com', ''),
(129, 'IFESA TILES S. L. U.', 'ESPA?A', ''),
(130, 'INVERSIONES JUSAN INC,  S. A.', '300 mts norte, 125 oeste de torre Merced', '22561096'),
(131, 'HELLEN TENCIO GONZALEZ', 'BARRIO SAN ANDRES SN ISIDRO GENERAL', '8718-9563'),
(132, 'DECORBA?O S. A.', '200 M OESTE DE DEMASA, PAVAS S.J-', '22130278'),
(133, 'PIERINI REVESTIMIENTOS CERAMICOS LTDA', 'BRASIL', ''),
(134, 'DETALLES CERAMICOS DEL REY S. A.', 'SAN FRANCISCO DE DOS RIOS', '22192636'),
(135, 'LUME CERAMICA LTDA', 'BRASIL', ''),
(136, 'GRUPO BBG & A   S.A.', 'CIRUELAS, ALAJUELA', '24380821'),
(137, 'PORCELANART CR S. A.', 'PAVAS SAN JOSE 200 O DE DEMASA', '22135050'),
(138, 'IT INTERCONTAINER LTDA.', 'OFICENTRO PLAZA AEROP. ALAJUELA', '2430-2790'),
(139, 'GRUPO PUMA ECR CARIBE  S. A.', 'NICOYA, GUANACASTE', '22984322'),
(140, 'PISO CERAMICO Y AZULEJO PCA. S. A.', 'FRNTE COST NORTE EST. BASEBALL LIMON, CE', '27980404'),
(141, 'SUPER CERAMICA S. A.', 'CARTAGO  DE CAD COM CARTAGINESA 100 S', '25535133'),
(142, 'DELTA INDUSTRIA CERAMICA LTDA', '', ''),
(143, 'NICOLE VANESSA SALAZAR POLTRONIERI', '75 O y 50 sur Esc. Rep. Panam?. S.J. CR', '89249372');

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
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15118019;
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
