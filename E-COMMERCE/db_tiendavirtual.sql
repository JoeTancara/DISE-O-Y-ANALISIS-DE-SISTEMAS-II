-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-01-2025 a las 01:56:02
-- Versión del servidor: 8.0.31
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tiendavirtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'SOFTWARE Y LICENCIAS', 'Samsung, LG', 'img_99d60770c3c14ab8a2bedd519891fca0.jpg', '2024-05-09 10:36:00', 'software-y-licencias', 1),
(2, 'COMPUTADORAS Y PORTATILES', 'NUEVAS', 'img_625791afd01f22aba62eb5d1da93f4b2.jpg', '2024-03-28 14:47:25', 'computadoras-y-portatiles', 1),
(3, 'DISPOSITIVOS INTELIGENTES', 'LOS MEJORES', 'img_5eeee16226bc5917322f892c3d2cde89.jpg', '2024-04-05 21:56:20', 'dispositivos-inteligentes', 1),
(4, 'ALMACENAMIENTO Y REDES', 'TODOOO', 'img_452972505ac5b5bc2f55362768f29ea2.jpg', '2024-04-05 21:56:35', 'almacenamiento-y-redes', 1),
(5, 'COMPONENTES Y PERIFERICOS', 'todoo', 'img_7cffbdac1dad4512b4c74b776b49e98b.jpg', '2024-05-09 11:05:07', 'componentes-y-perifericos', 1),
(6, 'GAMING', 'BUENASS', 'img_46c21089e957ff392bc6cf20d1034269.jpg', '2024-05-09 11:13:47', 'gaming', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `mensaje` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `dispositivo` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `useragent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datacreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datacreated`) VALUES
(1, 'hjoe', 'asda@gmail.com', 'dsadasdasdsadsadsadsd', '', '', '', '2024-11-01 10:37:53'),
(2, 'Sadsadsad', 'sadsadsad@gmail.com', 'sdsadsadsad', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-11-12 10:46:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(9, 10, 15, '12.00', 1),
(10, 11, 13, '32.00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

DROP TABLE IF EXISTS `detalle_temp`;
CREATE TABLE IF NOT EXISTS `detalle_temp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `personaid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  `transaccionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`),
  KEY `personaid` (`personaid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

DROP TABLE IF EXISTS `imagen`;
CREATE TABLE IF NOT EXISTS `imagen` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productoid` bigint NOT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(5, 4, 'pro_92a6d6e446e04a084a660230423edb2b.jpg'),
(6, 4, 'pro_3ebec45c9ad329bbb0928b42dea80f01.jpg'),
(7, 3, 'pro_840d8e25cd0af67159def51d5474e5f6.jpg'),
(10, 6, 'pro_7265edb1a89810fc5bf3996b44053b92.jpg'),
(11, 5, 'pro_03364421918bfb1b38c3a43835536c8f.jpg'),
(12, 7, 'pro_2bd2a7b35a2807cb621d6c80778e7012.jpg'),
(14, 8, 'pro_43eb41c7abd4d5b59bfd7417ef6060ab.jpg'),
(15, 9, 'pro_75771f19fcac75d3dd0d5a2aac2e3a05.jpg'),
(16, 10, 'pro_2ee8ad76739cbf59a1dd57594910ede8.jpg'),
(17, 11, 'pro_fbe7a4f6235c9e761c201a229455fe0d.jpg'),
(18, 12, 'pro_8993479537b60af3aa8d6b22db4444c1.jpg'),
(19, 13, 'pro_36f38b9e65a266b44f8c4698a86c985f.jpg'),
(20, 14, 'pro_255d66e2030b1786340dc6aeaaaa7b4d.jpg'),
(21, 15, 'pro_64e7f9180063e5fd887e5c4505920755.jpg'),
(22, 16, 'pro_1783f6c3726dc205f9707cf40ca595fe.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

DROP TABLE IF EXISTS `modulo`;
CREATE TABLE IF NOT EXISTS `modulo` (
  `idmodulo` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'del sitio wb', 1),
(8, 'Contactos', 'web', 1),
(9, 'Paginas', 'del sitio', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` bigint NOT NULL AUTO_INCREMENT,
  `referenciacobro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `personaid` bigint NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `costo_envio` decimal(10,2) NOT NULL,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint NOT NULL,
  `direccion_envio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`),
  KEY `tipopagoid` (`tipopagoid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(2, 'buena', 22, '2024-08-01 21:28:03', '50.00', '250.00', 3, 'zona villa aroma', 'completado'),
(10, 'detalladaaa', 22, '2024-08-13 22:51:13', '10.00', '22.00', 1, 'dsadas, asdasd', 'Aprobado'),
(11, 'asdsdsad', 22, '2024-08-28 18:54:23', '10.00', '74.00', 4, 'adasd, sadasd', 'Completo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `idpermiso` bigint NOT NULL AUTO_INCREMENT,
  `rolid` bigint NOT NULL,
  `moduloid` bigint NOT NULL,
  `r` int NOT NULL DEFAULT '0',
  `w` int NOT NULL DEFAULT '0',
  `u` int NOT NULL DEFAULT '0',
  `d` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpermiso`),
  KEY `rolid` (`rolid`),
  KEY `moduloid` (`moduloid`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(254, 7, 1, 1, 0, 0, 0),
(255, 7, 2, 1, 0, 0, 0),
(256, 7, 3, 1, 0, 0, 0),
(257, 7, 4, 1, 0, 0, 0),
(258, 7, 5, 1, 0, 0, 0),
(259, 7, 6, 1, 0, 0, 0),
(260, 5, 1, 1, 0, 0, 0),
(261, 5, 2, 1, 0, 0, 0),
(262, 5, 3, 0, 0, 0, 0),
(263, 5, 4, 1, 1, 1, 0),
(264, 5, 5, 1, 1, 1, 0),
(265, 5, 6, 1, 1, 1, 0),
(266, 4, 1, 1, 0, 0, 0),
(267, 4, 2, 0, 0, 0, 0),
(268, 4, 3, 1, 1, 1, 0),
(269, 4, 4, 1, 1, 1, 0),
(270, 4, 5, 1, 1, 1, 0),
(271, 4, 6, 1, 1, 1, 0),
(290, 3, 1, 1, 0, 0, 0),
(291, 3, 2, 0, 0, 0, 0),
(292, 3, 3, 1, 0, 0, 0),
(293, 3, 4, 1, 0, 0, 0),
(294, 3, 5, 1, 0, 0, 0),
(295, 3, 6, 1, 0, 0, 0),
(335, 2, 1, 1, 0, 0, 0),
(336, 2, 2, 1, 0, 1, 0),
(337, 2, 3, 1, 0, 0, 0),
(338, 2, 4, 0, 0, 0, 0),
(339, 2, 5, 0, 0, 0, 0),
(340, 2, 6, 0, 0, 0, 0),
(341, 2, 7, 0, 0, 0, 0),
(349, 10, 1, 1, 1, 1, 1),
(350, 10, 2, 1, 0, 1, 0),
(351, 10, 3, 1, 0, 0, 0),
(352, 10, 4, 1, 0, 0, 0),
(353, 10, 5, 1, 0, 0, 0),
(354, 10, 6, 1, 0, 0, 0),
(355, 10, 7, 0, 0, 0, 0),
(379, 1, 1, 1, 1, 1, 1),
(380, 1, 2, 1, 1, 1, 1),
(381, 1, 3, 1, 1, 1, 1),
(382, 1, 4, 1, 1, 1, 1),
(383, 1, 5, 1, 1, 1, 1),
(384, 1, 6, 1, 1, 1, 1),
(385, 1, 7, 1, 1, 1, 1),
(386, 1, 8, 1, 1, 1, 1),
(387, 1, 9, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` bigint NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombres` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint NOT NULL,
  `email_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombrefiscal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `direccionfiscal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `rolid` bigint NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`),
  KEY `rolid` (`rolid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '54684987', 'Joe', 'Tancara', 69803449, 'tancarajoe@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '542065325eae0ae64041-22982a68bddbcc3fee15-656231d365c8b84c5cd5-fcb3d1455562e2a66a1f', 1, '2020-08-22 01:55:57', 1),
(9, '11111111', 'Katy', 'Ramirez', 67766554, 'katy@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 2, '2024-02-12 10:13:52', 1),
(10, '1234567432', 'Aaa', 'Aaa', 67766554, 'aaa@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 1, '2024-02-19 19:27:30', 1),
(11, '111111112', 'Prueba', 'Prueba', 213123123, 'sad@gmail.com', 'fe7ca4ea0a8715222bf5f4d6c6d1bb962ddc1189f072c6c7e2d20688b1083e81', '', '', '', '', 4, '2024-02-19 22:02:03', 1),
(12, '12312312', 'Eazy', 'Asdasds', 2132131, 'aasdaa@gmail.com', 'd8a928b2043db77e340b523547bf16cb4aa483f0645fe0a290ed1f20aab76257', '', '', '', '', 4, '2024-02-19 22:55:39', 0),
(13, '11548194', 'Lizzzzzzz', 'Carriilooo', 1231234, 'liz@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '123456', 'aaaa', 'asdasdasd', '', 7, '2024-03-21 19:09:52', 0),
(14, '321123222', 'Joe', 'Hernan', 43221312, 'alllleee@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '12345622', 'aaaaaa', 'Bolivia', '', 7, '2024-03-21 22:09:21', 0),
(15, '2222222222', 'Abccccc', 'Cccccccccc', 211211122, 'aaacccc@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '22222333333', 'qqqqqqq', 'qqqqqqqqqqqq', '', 7, '2024-03-21 22:10:59', 0),
(16, '211222222222', 'Wwwww', 'Wwwwww', 222222222, 'wwww@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '123456222', 'qqqqqq', 'qqqqqqqqqqqq', '', 7, '2024-03-21 22:24:41', 0),
(17, '2321222222', 'Miriamaaaq', 'Aaasaaaaaa', 2222222223, 'areee@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '12345622222', 'asdsadasdsadasdas', 'qqqqqqqqqqqqqqq', '', 7, '2024-03-21 22:28:21', 0),
(18, '1234567400', 'Katyssss', 'Quispe', 54434323, 'katsssssy@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '12345622222222', 'asdasdasdqweqwxxxxxxx', 'xxxxxxxxxxxxxxxxxxx', '', 7, '2024-03-21 22:30:55', 0),
(19, '3233333332', 'PaulinaA', 'Mamani', 67676767, 'jajajpau@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1121212121', 'xxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', 7, '2024-03-22 16:27:45', 1),
(20, '123222222', 'Hugo', 'Flores', 43444444, 'hugo@gmail.com', '932f3c1b56257ce8539ac269d7aab42550dacf8818d075f0bdf1990562aae3ef', '22233333311111111', 'wwweeeeeeeeqqqqqq', 'qwwwweqeqw', '', 7, '2024-03-22 16:37:56', 0),
(22, '123321', 'PRUEBA', 'PRUEBAS', 6980349, 'prueba@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'asss', 'dasdsad', 'dsadasd', '', 7, '2024-07-29 16:38:37', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `idpost` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `portada` varchar(100) DEFAULT NULL,
  `datacreate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datacreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<p>Inicio del sistema</p>', '', '2024-11-07 12:42:59', 'inicio', 1),
(2, 'Tienda', '<p>Tienda contenido</p>', '', '2024-11-09 11:06:55', 'tienda', 1),
(3, 'Carrito', '<p>Carrito de compras</p>', '', '2024-11-09 11:07:12', 'carrito', 1),
(4, 'Nosotros', '<p>Contenido de nosotros</p>', 'img_2d1c477a3c898162bfe4496463d84822.jpg', '2024-11-09 11:07:29', 'nosotros', 1),
(5, 'Contacto', '<p>Sobre nosotros</p>', '', '2024-11-09 11:07:56', 'contacto', 1),
(6, 'Preguntas Frecuentes', '<ul style=\"list-style-type: square;\"> <li>Pregunta 1</li> <li>Pregunta 1</li> <li>Pregunta 1</li> <li>Pregunta 1</li> <li>Pregunta 1</li> <li>Pregunta 1</li> <li>Pregunta 1</li> </ul>', '', '2024-11-09 11:08:42', 'preguntas-frecuentes', 1),
(7, 'Terminos', '<p>Terminos y condiciones</p>', '', '2024-11-09 11:08:58', 'terminos', 1),
(8, 'Sucursales', '<section class=\"py-5 text-center\">\n    <div class=\"container\">\n      <p>Visitanos y obten los mejores precios del mercado, cualquier artículo que necestas para vivir mejor</p>\n      <a href=\"\" class=\"btn btn-info\">VER PRODUCTOS</a>\n    </div>\n</section>\n<div class=\"py-5 bg-light\">\n  <div class=\"container\">\n    <div class=\"row\">\n\n      <div class=\"col-md-4\">\n        <div class=\"card mb-4 box-shadow\">\n          <img src=\"<?= media() ?>/images/s1.jpg\" alt=\"Sucural uno\">\n          <div class=\"card-body\">\n            <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p>\n            <p>Dirección: Antigua Gautemala <br>\n              Teléfono: 4654645 <br>\n              Correo: info@abelosh.com\n            </p>\n          </div>\n        </div>\n      </div>\n      <div class=\"col-md-4\">\n        <div class=\"card mb-4 box-shadow\">\n          <img src=\"<?= media() ?>/images/s1.jpg\" alt=\"Sucural uno\">\n          <div class=\"card-body\">\n            <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p>\n            <p>Dirección: Antigua Gautemala <br>\n              Teléfono: 4654645 <br>\n              Correo: info@abelosh.com\n            </p>\n          </div>\n        </div>\n      </div>\n      <div class=\"col-md-4\">\n        <div class=\"card mb-4 box-shadow\">\n          <img src=\"<?= media() ?>/images/s1.jpg\" alt=\"Sucural uno\">\n          <div class=\"card-body\">\n            <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p>\n            <p>Dirección: Antigua Gautemala <br>\n              Teléfono: 4654645 <br>\n              Correo: info@abelosh.com\n            </p>\n          </div>\n        </div>\n      </div>\n\n    </div>\n  </div>\n</div>', '', '2024-11-09 11:09:21', 'sucursales', 1),
(9, 'Error', '<p>Error 404</p>', '', '2024-11-09 11:10:25', 'error', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` bigint NOT NULL AUTO_INCREMENT,
  `categoriaid` bigint NOT NULL,
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idproducto`),
  KEY `categoriaid` (`categoriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(3, 2, '112211233', 'Teclado', '<p>numerico</p> <p>led</p>', '123.00', 12, '', '2024-05-07 11:26:31', '', 0),
(4, 2, '12321312', 'Monitor', '', '321.00', 1212, '', '2024-05-07 11:52:21', '', 0),
(5, 2, '12321321', 'LAPTOPS', '', '5000.00', 12, '', '2024-05-09 10:44:09', 'laptops', 1),
(6, 2, '21323144', 'TECLADO', '', '32.00', 23, '', '2024-05-09 10:44:44', 'teclado', 1),
(7, 5, '222222', 'PROCESADORES', '', '231.00', 233, '', '2024-05-09 11:28:26', 'procesadores', 1),
(8, 5, '2233311', 'TARJETAS GRAFICAS', '', '422.00', 333, '', '2024-05-09 11:28:53', 'tarjetas-graficas', 1),
(9, 4, '344555', 'DISCOS DUROS', '', '322.00', 333, '', '2024-05-09 11:29:27', 'discos-duros', 1),
(10, 4, '555555', 'ROUTERS', '', '4444.00', 122, '', '2024-05-09 11:29:49', 'routers', 1),
(11, 3, '4324523', 'ASISTENTE DE VOZ', '', '213.00', 12, '', '2024-05-09 11:30:33', 'asistente-de-voz', 1),
(12, 3, '777777', 'CAMARAS DE SEGURIDAD', '', '321.00', 222, '', '2024-05-09 11:30:57', 'camaras-de-seguridad', 1),
(13, 1, '675754', 'SISTEMAS OPERATIVOS', '', '32.00', 222, '', '2024-05-09 11:31:22', 'sistemas-operativos', 1),
(14, 1, '654632', 'ANTIVRUS', '', '21.00', 222, '', '2024-05-09 11:33:11', 'antivrus', 1),
(15, 6, '342412312', 'JUEGOS PARA PC Y CONSOLA', '', '12.00', 22, '', '2024-05-09 11:33:39', 'juegos-para-pc-y-consola', 1),
(16, 1, '666666', 'LUCES LEDè', '', '23.00', 333, '', '2024-05-09 11:34:13', 'luces-lede', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idrol` bigint NOT NULL AUTO_INCREMENT,
  `nombrerol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisor', 'Supervisor de tienda', 1),
(3, 'Vendedor', 'Acceso a módulo ventas', 1),
(4, 'Servicio al cliente', 'Servicio al cliente sistema', 1),
(5, 'Bodega', 'Bodega', 1),
(7, 'Cliente', 'Clientes tienda', 1),
(10, 'Consulta Ventas', 'Consulta Ventas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

DROP TABLE IF EXISTS `suscripciones`;
CREATE TABLE IF NOT EXISTS `suscripciones` (
  `idsuscripcion` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idsuscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(1, 'Benito Camela', 'benitoo@gmail.com', '0000-00-00 00:00:00'),
(2, 'Benito Camelasadsadsa', 'aaaaaaaaaaaa@gmail.com', '0000-00-00 00:00:00'),
(3, 'Benito Dddddd', 'wwwwwwww@gmail.com', '0000-00-00 00:00:00'),
(4, 'Aaaaa Camela', 'aaaaaaaaa@gmail.com', '2024-10-25 18:01:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
CREATE TABLE IF NOT EXISTS `tipopago` (
  `idtipopago` bigint NOT NULL AUTO_INCREMENT,
  `tipopago` varchar(100) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'QR', 1),
(4, 'Deposito Bancario', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
