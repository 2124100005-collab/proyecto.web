-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2026 a las 03:19:49
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
-- Base de datos: `db_zapateria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `email_google` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `usuario` varchar(50) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `rol_id`, `nombre`, `apellido`, `correo`, `email_google`, `activo`, `usuario`, `contrasena`, `imagen`, `estado`) VALUES
(5, 1, 'Juan', 'Pérez', 'juan@zapateria.com', NULL, 1, 'juanpp', '1234', NULL, 1),
(9, 1, 'Julio', 'Hernandez', 'julio@zapateria.com', NULL, 1, 'julioH', '1234', NULL, 1),
(13, 1, 'Dana', 'Rivera', 'Danaa@gmail.com', NULL, 1, 'Danaa@gmail.com', '1234', 'imagenes/WOwua6mGTHtswxqCmZ9p1XO5gyVy6Sei8SmJBO01.jpg', 1),
(16, 1, 'jeon', 'jungkook', 'jungkook@gmail.com', '2124100005@soy.utj.edu.mx', 1, 'Jungkookk', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'imagenes/gtKYTaIS3oakAyAPAOLJAX0u23XlVQQvSJi0P0mX.jpg', 1),
(18, 1, 'Macaco', 'Torres', 'mact@gmail.com', NULL, 1, 'Macaco', '$2y$12$H.9/3Z2ZP1MeCNF2blwZh.Z7ovEW7cJHw5kF6TjGabPPaFd7Sp3Ra', 'imagenes/3q9nbNkZY6nD5uTeDNs6T0oTS2IIxmemiRJIIS1t.jpg', 1),
(20, 2, 'juanito', 'mono', 'juanitom@gmail.com', NULL, 1, 'mono', '$2y$12$AgWqvoqqbVfn0q40JvOdi.kF6RPFu2TNuJtKyaw1SrAuzz1obdryK', 'imagenes/AtUk6vf8Z07ZMvQjaJKEnoWEHnhCNyoOoXsG2MPx.jpg', 1),
(21, 2, 'Usagi', 'mon', 'us@gmail.com', NULL, 1, 'usagi', '$2y$12$P2PX9.5v3LgiB2QSsxV1KO6VOMRtibZKJ1cwL0a1AGa7pgmsd/Cty', 'imagenes/grSJtQWe5ag2WuBchButfNIRXdkh17h4rBdJUazM.jpg', 1),
(22, 1, 'Saul', 'Bautista', 'saul@gmail.com', NULL, 1, 'Saulgai', '$2y$12$HMdTHiCRHOVWc8VM5Mkt.eUI7682f3XbWk1DdTUxHLiB4XbmexBmq', 'imagenes/VOjLcCaMuxUv50rj5rUxCTrmwaY3yrDOUIMy5dEj.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp(),
  `imagen` varchar(255) DEFAULT NULL,
  `latitud` varchar(255) DEFAULT NULL,
  `longitud` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `correo`, `contrasena`, `telefono`, `direccion`, `fecha_registro`, `imagen`, `latitud`, `longitud`, `estado`) VALUES
(5, 'José', 'Martínez', 'jose@gmail.com', '1234', '5555556666', 'Calle 5', '2025-01-05 00:00:00', 'c5.png', NULL, NULL, 1),
(6, 'Fernanda', 'Cruz', 'fer@gmail.com', '1234', '5556667777', 'Calle 6', '2025-01-06 00:00:00', 'c6.png', NULL, NULL, 1),
(7, 'Monse', 'Caballero', 'monzss@gmail.com', '1234', '1234567890', 'lomas del sur', '2026-02-06 00:00:00', 'web.admin.png', NULL, NULL, 1),
(8, 'Jungkoong', 'chin', 'jkg@gmail.com', '1234', '123578', 'mercurio 44565', '2026-02-06 00:00:00', 'jgk.jpg', NULL, NULL, 1),
(9, 'rana', 'rene', 'renee@gmail.com', '1234', '67858493', 'mercurio 54678', '2026-02-06 00:00:00', 'rene.jpg', NULL, NULL, 1),
(10, 'Pedrito', 'Sola', 'pedrx@gmai.com', '11234', '98765432', 'Calle Asturias 53, Bosques Santa Anita, C.P. 45645, Tlajomulco de Zúñiga, Jalisco, México [Mountain View, US]', '2026-02-06 00:00:00', 'pedrito sola.jpg', '38.0088', '-122.1175', 1),
(11, 'Sabrina', 'Carpenter', 'sabrinaa@gmail.com', '1234', '5578956437', 'venida 16 de Septiembre 730 Int. 211, Colonia Centro, C.P. 44100, Guadalajara, Jalisco, México [Mountain View, US]', '2026-02-06 00:00:00', 'sabrina.jpg', '38.0088', '-122.1175', 1),
(12, 'Pedrito', 'Sola', 'pedrx@gmai.com', '1234', '98765432', 'Calle Asturias 53, Bosques Santa Anita, C.P. 45645, Tlajomulco de Zúñiga, Jalisco, México [Mountain View, US]', '2026-02-15 00:00:00', 'uploads/clientes/clientes_12.jpg', '38.0088', '-122.1175', 1),
(13, 'Pedrito', 'Sola', 'pedrx@gmai.com', '1234', '98765432', 'Calle Asturias 53, Bosques Santa Anita, C.P. 45645, Tlajomulco de Zúñiga, Jalisco, México [Mountain View, US]', '2026-02-15 00:00:00', 'uploads/clientes/clientes_13.jpg', '38.0088', '-122.1175', 1),
(14, 'sailor', 'farg', 'sailorjj@gmail.com', '12345', '5557483929', 'volcan jorullo 2008 [Mountain View, US]', '2026-02-15 00:00:00', 'uploads/clientes/clientes_14.jpeg', '38.0088', '-122.1175', 1),
(15, 'Guadalupe', 'Villalobos', 'lupita@gmail.com', '1234', '779803265', 'volcan jorullo 2008 [Mountain View, US]', '2026-02-17 00:00:00', 'uploads/clientes/clientes_15.jpeg', '38.0088', '-122.1175', 1),
(16, 'Leon', 'Larregui', 'Leon@gmail.com', '12345', '55894325', 'volcan jorullo 2008 [Mountain View, US]', '2026-02-17 00:00:00', 'uploads/clientes/clientes_16.jpeg', '38.0088', '-122.1175', 1),
(17, 'Karina', 'Torres', 'LicKarina@gmail.com', '5678', '99567847366', 'volcan jorullo 2008 [Mountain View, US]', '2026-02-16 00:00:00', 'uploads/clientes/clientes_17.jpeg', '38.0088', '-122.1175', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int(11) NOT NULL,
  `venta_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `iva` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`, `imagen`) VALUES
(1, 'Hombre', 'hombre.png'),
(2, 'Mujer', 'mujer.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`, `imagen`) VALUES
(1, 'Nike', 'nike.png'),
(2, 'Adidas', 'adidas.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2026_02_06_154210_add_geolocalizacion_to_clientes_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `marca_id` int(11) DEFAULT NULL,
  `tipo_id` int(11) DEFAULT NULL,
  `talla_id` int(11) DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `fecha_ingreso` datetime DEFAULT current_timestamp(),
  `descuento` decimal(5,2) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen1` varchar(255) DEFAULT NULL,
  `imagen2` varchar(255) DEFAULT NULL,
  `imagen3` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `genero_id`, `marca_id`, `tipo_id`, `talla_id`, `nombre`, `precio`, `stock`, `fecha_ingreso`, `descuento`, `descripcion`, `imagen1`, `imagen2`, `imagen3`, `estado`) VALUES
(3, 1, 2, 2, 3, 'Zapato Casual', 1700.00, 8, '2025-01-12 00:00:00', 5.00, NULL, '1771120902_1.jpeg', '1771120902_2.jpeg', '1771120902_3.jpeg', 1),
(4, 2, 1, 2, 2, 'Sneakers', 1500.00, 12, '2025-01-13 00:00:00', 0.00, NULL, '1771120014_1.jpeg', '1771120014_2.jpeg', '1771120014_3.jpeg', 1),
(5, 1, 1, 1, 7, 'Tenis Pro', 1999.00, 6, '2025-01-14 00:00:00', 15.00, NULL, '1771119482_1.jpeg', '1771119482_2.jpeg', '1771119482_3.jpeg', 1),
(10, 1, 1, NULL, 5, 'zapatos de mujer', 2700.00, 7, '2026-02-13 22:55:27', NULL, NULL, '1771044926_1.jpeg', '1771044926_2.jpeg', '1771044926_3.jpeg', 1),
(15, 1, 1, NULL, 6, 'tabias cafes', 2350.00, 6, '2026-02-14 20:01:08', NULL, NULL, '1771120868_1.jpeg', '1771120868_2.jpeg', '1771120868_3.jpeg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `puesto`, `estado`) VALUES
(1, 'Administrador', 1),
(2, 'Vendedor', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tallas`
--

CREATE TABLE `tallas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tallas`
--

INSERT INTO `tallas` (`id`, `nombre`, `imagen`) VALUES
(1, '26', '26.png'),
(2, '27', '27.png'),
(3, '22', '22.png'),
(4, '23', '23.png'),
(5, '24', '24.png'),
(6, '25', '25.png'),
(7, '28', '28.png'),
(8, '29', '29.png'),
(9, '30', '30.png'),
(10, '31', '31.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `nombre`, `imagen`) VALUES
(1, 'Deportivo', 'deportivo.png'),
(2, 'Casual', 'casual.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `administrador_id` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `iva` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `descuento` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol_id` (`rol_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta_id` (`venta_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`),
  ADD KEY `marca_id` (`marca_id`),
  ADD KEY `tipo_id` (`tipo_id`),
  ADD KEY `talla_id` (`talla_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tallas`
--
ALTER TABLE `tallas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `administrador_id` (`administrador_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tallas`
--
ALTER TABLE `tallas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD CONSTRAINT `administradores_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`),
  ADD CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`tipo_id`) REFERENCES `tipos` (`id`),
  ADD CONSTRAINT `productos_ibfk_4` FOREIGN KEY (`talla_id`) REFERENCES `tallas` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`administrador_id`) REFERENCES `administradores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
