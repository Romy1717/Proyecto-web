SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Base de datos: `db_store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Inserción de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Chaquetas', 'Lo mejor en moda', 'img_1706b9300f46dc7a373cdc6ae8928895.jpg', '2022-05-24 00:51:44', 'chaquetas', 1),
(2, 'Blusas', 'Lo mejor en blusas', 'img_4e01ad64d99f3fba516bc77d198ce17f.jpg', '2022-05-24 00:51:44', 'blusas', 1),
(3, 'Jeans', 'Lo mejor en Jeans', 'img_6cfc2c38c15593e36a5e41795ea1de32.jpg', '2022-05-24 00:51:44', 'jeans', 1),
(4, 'Caballero', 'Productos para caballeros', 'img_a939c8d8ca5784159a43d0d82b80582d.jpg', '2022-05-24 00:51:44', 'caballero', 1),
(5, 'Damas', 'Productos para damas', 'img_5dafcd6ec18901c147c7cfde850a1ab1.jpg', '2022-05-24 00:51:44', 'damas', 1),
(6, 'Accesorios', 'Accesorios varios', 'img_84f83e4988f31e6fd25e9d2df04d3f7f.jpg', '2022-05-24 00:51:44', 'accesorios', 1),
(7, 'Categoria ejemplo', 'Descripción categoría ejemplo', 'portada_categoria.png', '2022-05-24 00:51:44', 'categoria-ejemplo', 1),
(8, 'Categoría 20', 'Descripción', 'portada_categoria.png', '2022-05-24 00:51:44', 'categoria-20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

DROP TABLE IF EXISTS `detalle_temp`;
CREATE TABLE IF NOT EXISTS `detalle_temp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `personaid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `transaccionid` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`),
  KEY `personaid` (`personaid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

DROP TABLE IF EXISTS `imagen`;
CREATE TABLE IF NOT EXISTS `imagen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productoid` bigint(20) NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Inserción de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(3, 3, 'pro_e702903506bd14ecc0e5645cc8a308d2.jpg'),
(4, 3, 'pro_c3abd10d62fa7b01e8dfd61e18118913.jpg'),
(5, 4, 'pro_3e64800e9336055a0a58b69fdad32048.jpg'),
(6, 5, 'pro_bd7592482a91f4531d8a10ab3d815945.jpg'),
(7, 5, 'pro_d8444581afca144189dcfa8303dd58ee.jpg'),
(8, 7, 'pro_1abf3c3c00b89188b25e324dc39d6f62.jpg'),
(10, 8, 'pro_e0c8f0211ec0cf449278010dcbd64da6.jpg'),
(11, 8, 'pro_b4c0c0e77f29cbc207bd1f8bbeb30e02.jpg'),
(12, 7, 'pro_50458020b4d9ac78098be1649bcad5a8.jpg'),
(13, 9, 'pro_14b6a7a08d0aa5a2b779db08bc35c439.jpg'),
(19, 2, 'pro_25bff00db4ed6a2e028cb28195cfa649.jpg'),
(20, 2, 'pro_75f4d282b2735d59287c551e6c2a094e.jpg'),
(21, 6, 'pro_bba122841772a79d9089efe260b0d585.jpg'),
(22, 6, 'pro_bf14fed939b2da088255727ede14a1f8.jpg'),
(24, 10, 'pro_6c0537968a89765773d91230daef622a.jpg'),
(25, 10, 'pro_e3345c10650826ea67447733e65e63a8.jpg'),
(27, 11, 'pro_2742b9f94da4267903f22e05a1ed08d4.jpg'),
(28, 11, 'pro_b9b6a5888dd066a017b0e20ca68eee5d.jpg'),
(29, 11, 'pro_ecad1c55690162bc9e1ed58c767f3987.jpg'),
(30, 12, 'pro_d1d4ad5e1603d3c15a440e5dd4c5cb0c.jpg'),
(31, 12, 'pro_c6f6b5eea4c76ed9bc3a58472c6468b7.jpg'),
(32, 12, 'pro_c5b9a923e22639730766f5b9a88773fd.jpg'),
(33, 12, 'pro_616b30feafb00faca08cb1019150610f.jpg'),
(35, 13, 'pro_c820f0c056787c3d172711fb10d1f14a.jpg'),
(36, 13, 'pro_e3a6cb1dd8d87357c40b8e9d33e65821.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

DROP TABLE IF EXISTS `modulo`;
CREATE TABLE IF NOT EXISTS `modulo` (
  `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Inserción de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Categorías', 'Categorías Productos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` bigint(20) NOT NULL AUTO_INCREMENT,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`),
  KEY `tipopagoid` (`tipopagoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT '0',
  `w` int(11) NOT NULL DEFAULT '0',
  `u` int(11) NOT NULL DEFAULT '0',
  `d` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpermiso`),
  KEY `rolid` (`rolid`),
  KEY `moduloid` (`moduloid`)
) ENGINE=InnoDB AUTO_INCREMENT=608 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Inserción de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(350, 2, 1, 1, 0, 0, 0),
(351, 2, 2, 0, 0, 0, 0),
(352, 2, 3, 0, 0, 0, 0),
(353, 2, 4, 0, 0, 0, 0),
(354, 2, 5, 0, 0, 0, 0),
(355, 2, 6, 0, 0, 0, 0),
(596, 3, 1, 1, 0, 0, 0),
(597, 3, 2, 0, 0, 0, 0),
(598, 3, 3, 0, 0, 0, 0),
(599, 3, 4, 0, 0, 0, 0),
(600, 3, 5, 0, 0, 0, 0),
(601, 3, 6, 0, 0, 0, 0),
(602, 1, 1, 1, 0, 0, 0),
(603, 1, 2, 1, 1, 1, 1),
(604, 1, 3, 1, 1, 1, 1),
(605, 1, 4, 1, 1, 1, 1),
(606, 1, 5, 1, 1, 1, 1),
(607, 1, 6, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` bigint(20) NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(30) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombres` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombrefiscal` varchar(80) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `direccionfiscal` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `token` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`),
  KEY `rolid` (`rolid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Inserción de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '2409198920', 'Josue', 'Gutierrez', 4436922197, 'josue@axw.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '24252622', 'Josue Gutierrez', 'Morelia Michoacan', '', 1, '2022-05-24 00:51:44', 1),
(2, '131313131313', 'Andrea', 'Romero', 4436972197, 'andrea@axw.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '2c52a34f7988a0afc63e-dfe4badca8d2cb2b93e6-94824d050567a0ccd851-56165c5603c4ca020', 2, '2022-05-24 00:51:44', 1),
(3, '879846545454', 'Diana', 'Santillan', 4436922191, 'diana@axw.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 3, '2022-05-24 00:51:44', 1),
(4, '65465465', 'David', 'Arana', 4436912197, 'david@axw.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 1, '2022-05-24 00:51:44', 1),
(5, '4654654', 'Elena', 'Gomez', 4434922197, 'elena@axw.com', 'be63ad947e82808780278e044bcd0267a6ac6b3cd1abdb107cc10b445a182eb0', '', '', '', '', 2, '2022-05-24 00:51:44', 1),
(6, '8465484', 'Alex Fernando', 'Méndez', 222222222, 'alex@axw.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 3, '2022-05-24 00:51:44', 1),
(7, '54684987', 'Francisco', 'Herrera', 6654456545, 'francisco@axw.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 2, '2022-05-24 00:51:44', 1),
(8, '54646849844', 'Axel Gudiel', 'Vela', 654687454, 'axel@axw.com', '993fdea29acd1f7c6a6423c038601b175bb282382fc85b306a85f134fff4a63e', '', '', '', '', 3, '2022-05-24 00:51:44', 1),
(9, '46548454', 'Alan', 'Arenales', 45687954, 'alan@axw.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Alan', 'Morelia Michoacan', '', 7, '2022-05-24 00:51:44', 1),
(10, '89898989', 'Mary', 'Arana', 232323, 'mary@axw.com', '959b633150ca56bdbe8eefb0b510d720ec00714fc3f6160832dd2ae0c0a0611b', 'CF', 'Marta Cardona', 'Morelia Michoacan', '', 7, '2022-05-24 00:51:44', 1),
(11, '54789656458', 'Joel Eduardo', 'Cabrera', 54124528, 'joel@axw.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'CF', 'Joel Eduardo', 'Morelia Michoacan', '', 7, '2022-05-24 00:51:44', 1),
(12, '56874654', 'Pablo', 'Herrera', 65468464, 'pabloh@axw.com', '7213f0b87347be4a36e70f9a9eeca3dfc48da72c6ef346871e36e6d53c5572c1', 'CF', 'Pablo', 'Morelia Michoacan', '', 7, '2022-05-24 00:51:44', 1),
(13, '46584645', 'Elena', 'Rosales', 46876454, 'elena123@axw.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 7, '2022-05-24 00:51:44', 1),
(14, '654654654547', 'Alexa', 'Cardona', 487546878, 'alexa@axw.com', '74d7f333ede0080c542c95522969be8dbc5a127d4cd3b1f765944e318f087bec', '', '', '', '', 2, '2022-05-24 00:51:44', 1),
(15, '6546546545', 'Alan', 'Estrada', 464564564, 'aaaa@axw.com', '739ed90c2e5568537d3b3e37550d467e8469a9c2efee57b8ea0faf50bc54f8a2', '', '', '', '', 2, '2022-05-24 00:51:44', 1),
(16, '65465465478', 'Jorge', 'Mendoza', 6545644, 'jmendoza@axw.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Jorge Mendoza', 'Morelia Michoacan', '', 2, '2022-05-24 00:51:44', 1),
(17, '65465455', 'Jorge', 'Mendoza', 6545644, 'jjjj@axw.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Jorge Mendoza', 'Morelia Michoacan', '', 2, '2022-05-24 00:51:44', 1),
(18, '46584654711', 'Arnold', 'Gutierrez', 78465454, 'arnold@axw.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Arnold', 'Morelia Michoacan', '', 7, '2022-05-24 00:51:44', 1),
(19, '64894654', 'Julieta', 'Estrada', 4654564, 'julieta@axw.com', 'b6602f58690ca41488e97cd28153671356747c951c55541b6c8d8b8493eb7143', 'CF', 'Julieta', 'Morelia Michoacan', '', 7, '2022-05-24 00:51:44', 1),
(20, '', 'Jon', 'Beta', 456546545, 'jon@axw.com', '423d557f5d78958e981a85aed290d2d4d5453f9b2857e6b9d34bac1a19e3d740', '', '', '', '', 7, '2022-05-24 00:51:44', 1),
(21, '', 'Ale', 'Pérez', 4654798878, 'ale@axw.com', '973b0c9703e6ee636d7f6afbbb0fd2a4934fea984e7565a77dbbd53b53129e9c', '', '', '', '', 7, '2022-05-24 00:51:44', 1);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoriaid` bigint(20) NOT NULL,
  `codigo` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idproducto`),
  KEY `categoriaid` (`categoriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Inserción de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 4, '45684545', 'Producto 1', '<p>Descripci&oacute;n producto 1</p>', '200.00', 10, '', '2022-05-24 00:51:44', 'producto-1', 1),
(2, 3, '465456465', 'Producto 1', '<p>Descripci&oacute;n producto</p> <ul> <li>Uno</li> <li>Dos</li> </ul>', '110.00', 10, '', '2022-05-24 00:51:44', 'producto-1', 1),
(3, 1, '4654654', 'Producto Uno', '<p>Descripci&oacute;n producto uno</p> <table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"> <tbody> <tr> <td style=\"width: 48.0244%;\">N&uacute;mero</td> <td style=\"width: 48.022%;\">Descripc&iacute;&oacute;n</td> </tr> <tr> <td style=\"width: 48.0244%;\">Uno</td> <td style=\"width: 48.022%;\">Peque&ntilde;o</td> </tr> <tr> <td style=\"width: 48.0244%;\">Dos</td> <td style=\"width: 48.022%;\">Mediano</td> </tr> <tr> <td style=\"width: 48.0244%;\">Tres</td> <td style=\"width: 48.022%;\">Grande</td> </tr> </tbody> </table>', '200.00', 50, '', '2022-05-24 00:51:44', 'producto-uno', 1),
(4, 2, '45654654', 'Producto 4', '<p>Descripci&oacute; producto</p>', '50.00', 0, '', '2022-05-24 00:51:44', 'producto-4', 1),
(5, 5, '6546546545', 'Producto 5', '<p>Aqu&iacute; va la descripci&oacute;n del producto</p> <ul> <li>Grande</li> <li>Peque&ntilde;o</li> <li>Mediano</li> </ul>', '1000.00', 10, '', '2022-05-24 00:51:44', 'producto-5', 1),
(6, 4, '646546547877', 'Producto 6', '<p>Descripci&oacute;n producto seis</p> <ul> <li>Uno</li> <li>Dos</li> <li>Tres</li> </ul> <p>&nbsp;</p>', '50.00', 10, '', '2022-05-24 00:51:44', 'producto-6', 1),
(7, 5, '65465454', 'Producto 7', '<p>Datos del producto</p>', '100.00', 10, '', '2022-05-24 00:51:44', 'producto-7', 1),
(8, 5, '6546545', 'Producto 8', '<p>Descripc&iacute;on</p>', '50.00', 10, '', '2022-05-24 00:51:44', 'producto-8', 1),
(9, 2, '546455456', 'Producto Nuevo', '<p>Datos del producto</p>', '120.00', 50, '', '2022-05-24 00:51:44', 'producto-nuevo', 1),
(10, 1, '654546544', 'Producto Nuevo', '<p>Descripc&oacute;n</p>', '100.00', 0, '', '2022-05-24 00:51:44', 'producto-nuevo', 1),
(11, 1, '4657897897', 'Producto Prueba AX-12', '<p>Descripcipci&oacute;n producto prueba</p> <ul> <li>Uno</li> <li>Dos</li> <li>Tres</li> </ul> <p>&nbsp;</p>', '100.00', 50, '', '2022-05-24 00:51:44', 'producto-prueba-ax-12', 1),
(12, 1, '4894647878', 'Chaqueta Azúl', '<p>Descripci&oacute;n producto ejemplo</p> <ul> <li>Uno</li> <li>Dos</li> <li>Tres</li> </ul>', '110.00', 10, '', '2022-05-24 00:51:44', 'chaqueta-azul', 1),
(13, 1, '4654654564', 'Producto nuevo Ruta AX-1', '<p>Descripci&oacute;n producto Nuevo</p>', '100.00', 5, '', '2022-05-24 00:51:44', 'producto-nuevo-ruta-ax-1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idrol` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombrerol` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Inserción de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisores', 'Supervisor de tienda', 1),
(3, 'Vendedores', 'Acceso a módulo ventas', 1),
(4, 'Servicio al cliente', 'Servicio al cliente sistema', 1),
(5, 'Bodega', 'Bodega', 1),
(6, 'Reportes', 'Reportes Sistema', 2),
(7, 'Cliente', 'Clientes tienda', 1),
(8, 'Ejemplo rol', 'Ejemplo rol sistema', 1),
(9, 'Coordinador', 'Coordinador', 1),
(10, 'Consulta Ventas', 'Consulta Ventas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
CREATE TABLE IF NOT EXISTS `tipopago` (
  `idtipopago` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipopago` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Inserción de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Depósito Bancario', 1);

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
