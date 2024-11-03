-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2024 at 04:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_candiajose`
--

-- --------------------------------------------------------

--
-- Table structure for table `consultas`
--

CREATE TABLE `consultas` (
  `id_consulta` int(11) NOT NULL,
  `consulta_nombre` varchar(30) NOT NULL,
  `consulta_correo` varchar(50) NOT NULL,
  `consulta_mensaje` text NOT NULL,
  `consulta_contestado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consultas`
--

INSERT INTO `consultas` (`id_consulta`, `consulta_nombre`, `consulta_correo`, `consulta_mensaje`, `consulta_contestado`) VALUES
(4, 'pepe', 'josekandia42@gmail.com', 'hola', 1),
(5, 'dede', 'dedde@gmail.com', 'dedede', 1),
(6, 'prueba2', 'josekandia42@gmail.com', 'hola', 1),
(7, 'jose maria candia', 'josekandia42@gmail.com', 'dededed', 0),
(8, 'ho', 'josekandia42@gmail.com', 'deded', 1),
(9, 'deasas', 'josekandia42@gmail.com', 'dedede', 0),
(10, 'dededed', 'josekandia42@gmail.com', 'cedede', 0),
(11, 'deded', 'jdoed@gmail.com', 'holaa', 0),
(12, 'otra prueba', 'josekandia42@gmail.com', 'dededededededeasaswadede dededede', 0),
(13, 'dediedie', 'dedede@frfrfr.com', 'deded', 0),
(14, 'dededed', 'deddede@gm.com', 'dejdejjed', 0),
(15, 'dedede', 'josekandia42@gmail.com', 'dededed', 1),
(16, 'dede', 'josekandia42@gmail.com', 'dadae', 0),
(17, 'jose', 'josekandia42@gmail.com', 'd', 0),
(18, 'jose', 'josekandia42@gmail.com', 'uuu3u3u3u', 0),
(19, 'ueuue', 'josekandia42@gmail.com', 'jdeduiede', 0),
(20, 'sabrina', 'joss@gmail.com', 'hola', 1),
(21, 'jose', 'josekandia42@gmail.com', 'holaaaas', 0);

-- --------------------------------------------------------

--
-- Table structure for table `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `detalle_cantidad` int(11) NOT NULL,
  `detalle_precio` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_venta`, `id_producto`, `detalle_cantidad`, `detalle_precio`) VALUES
(1, 1, 1, '87000'),
(1, 2, 1, '340000'),
(2, 3, 1, '92000'),
(2, 4, 1, '390000'),
(3, 1, 1, '87000'),
(3, 5, 1, '400000'),
(4, 6, 1, '10000'),
(4, 7, 1, '333333'),
(5, 9, 1, '333333'),
(5, 10, 1, '200000'),
(6, 9, 1, '333333'),
(6, 11, 1, '500000'),
(7, 11, 1, '500000'),
(8, 8, 2, '3333'),
(9, 3, 2, '92000'),
(9, 2, 1, '129999'),
(10, 1, 1, '120333'),
(10, 3, 1, '99999'),
(11, 14, 1, '1300000'),
(12, 3, 1, '99999'),
(12, 2, 1, '129999'),
(13, 3, 1, '99999'),
(13, 6, 1, '699999'),
(14, 20, 1, '699999'),
(15, 9, 1, '89999'),
(16, 4, 1, '390000'),
(17, 2, 2, '129999'),
(18, 1, 1, '120333'),
(18, 8, 1, '145000'),
(19, 6, 1, '699999'),
(19, 5, 1, '599999'),
(20, 3, 1, '99999'),
(21, 9, 1, '89999'),
(22, 3, 1, '99999'),
(23, 3, 2, '99999'),
(24, 2, 1, '129999'),
(25, 1, 1, '120333'),
(26, 2, 2, '129999'),
(27, 16, 1, '1200000');

-- --------------------------------------------------------

--
-- Table structure for table `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `marca_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marca`
--

INSERT INTO `marca` (`id_marca`, `marca_nombre`) VALUES
(1, 'Samsung'),
(2, 'Apple '),
(3, 'Xiaomi'),
(4, 'Motorola');

-- --------------------------------------------------------

--
-- Table structure for table `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `perfil_descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `perfil_descripcion`) VALUES
(1, 'administrador'),
(2, 'usuario');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `producto_nombre` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `producto_descripcion` varchar(300) NOT NULL,
  `producto_precio` decimal(10,0) NOT NULL,
  `producto_stock` int(11) NOT NULL,
  `producto_marca` int(11) NOT NULL,
  `producto_imagen` varchar(160) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `producto_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id_producto`, `producto_nombre`, `producto_descripcion`, `producto_precio`, `producto_stock`, `producto_marca`, `producto_imagen`, `created_at`, `updated_at`, `deleted_at`, `producto_estado`) VALUES
(1, 'Samsung A23  128GB 4gb ram', '- Sistema operativo: Android 12\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '120333', 27, 1, '1686394903_64beb5ba5761ed3f1032.jpg', '2023-05-28 00:00:00', '2023-06-14 09:49:39', '0000-00-00 00:00:00', 1),
(2, 'Samsung A34 128GB 6gb de ram', '- Sistema operativo: Android 12\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '129999', 23, 1, '1686395261_8e8a574d6f52c8a2e2fa.jpg', '2023-05-28 00:00:00', '2024-11-02 14:55:25', '0000-00-00 00:00:00', 1),
(3, 'Samsung A14 128GB 4gb ram', '- Sistema operativo: Android 12\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '99999', 21, 1, '1686394840_6b865aaa991a2dac81ce.jpg', '2023-05-28 00:00:00', '2023-06-11 03:55:30', '0000-00-00 00:00:00', 1),
(4, 'Samsung A53 128GB 8gb de ram', '- Sistema operativo: Android 12\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '390000', 29, 1, '1686395311_1351b25491e9ec6e1ed9.jpg', '2023-05-28 00:00:00', '2023-06-11 03:42:59', '0000-00-00 00:00:00', 1),
(5, 'Samsung S23PLUS 256GB 8gb de ram', '- Sistema operativo: Android 12\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '599999', 29, 1, '1686395365_c4735b52bd3a12e168f1.jpg', '2023-05-28 08:28:06', '2023-06-11 03:47:57', '0000-00-00 00:00:00', 1),
(6, 'Samsung S23 ULTRA 256GB ', '- Sistema operativo: Android 12\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n- Bateria : Capacidad5000 mAh', '699999', 28, 1, '1686395456_4d57d323b60c88ad865d.png', '2023-05-28 08:52:57', '2023-06-11 03:47:57', '0000-00-00 00:00:00', 1),
(7, 'Samsung M13 128GB 4gb de ram ', '- Sistema operativo: Android 12\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '99999', 30, 1, '1686395575_67ae0ea591a55eaea688.jpg', '2023-05-28 08:58:28', '2023-06-10 08:12:55', '0000-00-00 00:00:00', 1),
(8, 'Samsung A54 128GB 6gb de ram', '- Sistema operativo: Android 12\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '145000', 29, 1, '1686395102_0e10bbcba3804dd7ce40.png', '2023-05-28 06:19:14', '2023-06-11 03:46:30', '0000-00-00 00:00:00', 1),
(9, 'Samsung A04s 128GB 4gb de ram', '- Sistema operativo: Android 12\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '89999', 28, 1, '1686395155_5d88befd7b08abba5d8b.jpg', '2023-05-28 06:20:50', '2023-06-11 03:52:49', '0000-00-00 00:00:00', 1),
(10, 'Samsung Galaxy A23 128GB Celeste', '- Sistema operativo: Android 12\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '200000', 30, 1, '1686394948_86c29b144488d24388ff.jpg', '2023-05-30 04:22:28', '2023-06-10 08:02:28', '0000-00-00 00:00:00', 1),
(11, ' Samsung A14 64GB Celeste', '- Sistema operativo: Android 12\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 64 GB | Disponible: 60 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '98000', 30, 1, '1686395015_122f3459cd069239d187.jpg', '2023-05-30 06:44:40', '2023-06-10 08:03:35', '0000-00-00 00:00:00', 1),
(12, 'Samsung A13 128GB 6gb de ram', '- Sistema operativo: Android 12\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n- Bateria : Capacidad5000 mAh', '123000', 30, 1, '1686395668_519c26454a49b9260831.jpg', '2023-06-10 08:14:28', '2023-06-10 08:14:28', '0000-00-00 00:00:00', 1),
(13, 'Iphone 14 Pro Max 524GB', '- Sistema operativo: IOS 16\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '1200000', 30, 2, '1686396923_d097df8d100213906b69.jpg', '2023-06-10 08:35:23', '2023-06-10 08:45:15', '0000-00-00 00:00:00', 1),
(14, 'Iphone 14 Pro Max 524GB GOLD', '- Sistema operativo: IOS 16\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '1300000', 29, 2, '1686396990_8de0439a55a0d83d3f04.jpg', '2023-06-10 08:36:30', '2023-06-11 03:33:47', '0000-00-00 00:00:00', 1),
(15, 'iphone 12 Pro 256GB', '- Sistema operativo: IOS 16\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '780000', 30, 2, '1686397041_12fc8ed6fe3d54669d56.jpg', '2023-06-10 08:37:21', '2023-06-10 08:41:02', '0000-00-00 00:00:00', 0),
(16, 'Iphone 12 Pro GOLD 500GB ', '- Sistema operativo: IOS 16\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '1200000', 29, 2, '1686397090_a946e2d2e8496fc492de.jpg', '2023-06-10 08:38:10', '2024-11-02 15:55:45', '0000-00-00 00:00:00', 1),
(17, 'Iphone 13 256GB', '- Sistema operativo: IOS 16\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '999999', 20, 2, '1686397127_6519c03c54399f532ca7.jpg', '2023-06-10 08:38:47', '2023-06-10 08:38:47', '0000-00-00 00:00:00', 1),
(18, 'iphone 13 Pro', '- Sistema operativo: IOS 16\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '1340000', 20, 2, '1686397155_25ee2e4d893e527de4bf.jpg', '2023-06-10 08:39:15', '2023-06-10 08:39:15', '0000-00-00 00:00:00', 1),
(19, 'Iphone 13 Pro Max', '- Sistema operativo: IOS 16\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '1400000', 30, 2, '1686397182_dfcdb40460858e457aa0.jpg', '2023-06-10 08:39:42', '2023-06-10 08:39:42', '0000-00-00 00:00:00', 1),
(20, 'Iphone XR 256GB negro', '- Sistema operativo: IOS 16\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '699999', 29, 2, '1686397220_edd55bc19352bcf51eb0.jpg', '2023-06-10 08:40:20', '2023-06-11 03:42:16', '0000-00-00 00:00:00', 1),
(21, 'Iphone 13 500GB rosa', '- Sistema operativo: IOS 13\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '999999', 30, 2, '1686397434_9da79169acc09b0a062c.jpg', '2023-06-10 08:43:54', '2023-06-10 08:45:31', '0000-00-00 00:00:00', 1),
(22, 'Iphone 14 Pro max 256GB', '- Sistema operativo: IOS 13\r\n- Camara: Frontal 32 MP / Trasera 50+12+5 MP\r\n- Pantalla : 6.4\" + FHD+ - Super AMOLED\r\n- Almacenamiento : 128 GB | Disponible: 101 GB\r\n- Procesador : Octa-Core (2.6GHz,2GHz)\r\n-Bateria : Capacidad5000 mAh', '1399999', 30, 2, '1686397481_136599317704be9533e1.jpg', '2023-06-10 08:44:41', '2023-06-10 08:45:43', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario_nombre` varchar(50) NOT NULL,
  `usuario_apellido` varchar(50) NOT NULL,
  `usuario_telefono` varchar(50) NOT NULL,
  `usuario_correo` varchar(80) NOT NULL,
  `usuario_pass` varchar(300) NOT NULL,
  `usuario_estado` int(11) NOT NULL,
  `usuario_dni` int(40) NOT NULL,
  `perfil_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario_nombre`, `usuario_apellido`, `usuario_telefono`, `usuario_correo`, `usuario_pass`, `usuario_estado`, `usuario_dni`, `perfil_id`) VALUES
(21, 'jose maria', 'candia', '37824212121', 'josekandia42@gmail.com', '$2y$10$8yA/OeLjcYW9YQX3pae3ceaVkVaj9wzeipvT1y8gO.I9n22XEG7Oe', 1, 43787475, 2),
(22, 'dededed', 'cfrfrfr', '33333', 'koko@gmail.com', '$2y$10$oNQNATfbQx9QGOCsTQTI8Ol71E219Lp.Qx6iUAIU5udQLxkRAAzyu', 1, 4444, 2),
(23, 'josep', 'lu', '8383838833', 'ki@gmail.com', '$2y$10$5nH9kth4lBv1Iv4smyqcUO1XVBgOjFnM7.bMCTzcRdGXXMfocPoKy', 1, 83831111, 2),
(24, 'jose', 'candia', '22333333443', 'joss@gmail.com', '$2y$10$DpePQNtEtM8O8034oHmVheDckqYCj8Mfwkwda5zq28xkwhbkhaHN2', 1, 2147483647, 1),
(25, 'sabrina', 'caballero', '37824212121', 'sabrinacaballero@gmail.com', '$2y$10$AM1.aK.HXqIXsEWp8T04sewc44w2JASb7nMU5s/KEP8phX.OSHVtm', 1, 46942439, 2),
(26, 'enrique', 'fernandez', '3782433234', 'enrique@gmail.com', '$2y$10$yBB/zy5d/y2pMV2zngSB8eKdNl6P/KA4rl2IhyA6sUT7UtDDxRuU6', 1, 17452944, 2),
(27, 'Prueba', 'taller', '112334342223', 'prueba@gmail.com', '$2y$10$0GLiMS3JX4tvKAi1lKy04u5YUxYORj7ygxq1wyjSNNJ.BcuVVJ0fa', 1, 43787475, 2),
(28, 'jose ', 'candia', '27834332323', 'josekandia@gmail.com', '$2y$10$3ybMYxawn71Gilqku2Dd7eSbx0jtyPaW5uDvvY6jm6/bG8puOlgki', 1, 43333333, 2);

-- --------------------------------------------------------

--
-- Table structure for table `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `venta_fecha` date NOT NULL,
  `venta_total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `venta`
--

INSERT INTO `venta` (`id_venta`, `id_usuario`, `venta_fecha`, `venta_total`) VALUES
(1, 21, '2023-06-07', '0'),
(2, 21, '2023-06-07', '0'),
(3, 21, '2023-06-07', '0'),
(4, 21, '2023-06-07', '0'),
(5, 21, '2023-06-08', '0'),
(6, 21, '2023-06-08', '833333'),
(7, 21, '2023-06-08', '500000'),
(8, 25, '2023-06-10', '6666'),
(9, 21, '2023-06-10', '313999'),
(10, 21, '2023-06-11', '220332'),
(11, 21, '2023-06-11', '1300000'),
(12, 26, '2023-06-11', '229998'),
(13, 27, '2023-06-11', '799998'),
(14, 27, '2023-06-11', '699999'),
(15, 27, '2023-06-11', '89999'),
(16, 27, '2023-06-11', '390000'),
(17, 27, '2023-06-11', '259998'),
(18, 27, '2023-06-11', '265333'),
(19, 27, '2023-06-11', '1299998'),
(20, 27, '2023-06-11', '99999'),
(21, 27, '2023-06-11', '89999'),
(22, 27, '2023-06-11', '99999'),
(23, 27, '2023-06-11', '199998'),
(24, 21, '2023-06-12', '129999'),
(25, 21, '2023-06-14', '120333'),
(26, 28, '2024-11-02', '259998'),
(27, 28, '2024-11-02', '1200000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id_consulta`);

--
-- Indexes for table `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD KEY `fk_detalleventa_producto` (`id_producto`),
  ADD KEY `fk_ventaid` (`id_venta`);

--
-- Indexes for table `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indexes for table `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_producto_marcas` (`producto_marca`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_usuarios_perfil` (`perfil_id`);

--
-- Indexes for table `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `fk_venta_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_detalleventa_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `fk_ventaid` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`);

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_producto_marcas` FOREIGN KEY (`producto_marca`) REFERENCES `marca` (`id_marca`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_perfil` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id_perfil`);

--
-- Constraints for table `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
