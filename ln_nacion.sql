-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2021 a las 21:23:02
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ln_nacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activofijo`
--

CREATE TABLE `activofijo` (
  `id` int(11) NOT NULL,
  `codigoaf` varchar(255) NOT NULL,
  `articulo_id` int(11) DEFAULT NULL,
  `tipoaf_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `activofijo`
--

INSERT INTO `activofijo` (`id`, `codigoaf`, `articulo_id`, `tipoaf_id`, `fecha`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'N00300', 3, 2, '2021-07-01', 1, '2021-07-01 13:33:52', '2021-07-01 13:33:52'),
(2, 'N00301', 3, 2, '2021-04-12', 0, '2021-07-01 13:38:17', '2021-07-01 13:38:17'),
(4, 'N00302', 4, 1, '2021-07-01', 1, '2021-07-01 13:40:32', '2021-07-01 13:40:32'),
(5, 'N00310', 2, 2, '2021-07-06', 1, '2021-07-06 16:04:02', '2021-07-06 16:04:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activofijodetalle`
--

CREATE TABLE `activofijodetalle` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `activofijo_id` int(11) DEFAULT NULL,
  `caracteristica_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `activofijodetalle`
--

INSERT INTO `activofijodetalle` (`id`, `descripcion`, `activofijo_id`, `caracteristica_id`, `created_at`, `updated_at`) VALUES
(1, '8Gb', 1, 2, '2021-07-01 13:33:52', '2021-07-01 13:33:52'),
(2, 'Intel Core i7', 1, 3, '2021-07-01 13:33:52', '2021-07-01 13:33:52'),
(3, '1Tb', 1, 4, '2021-07-01 13:33:52', '2021-07-01 13:33:52'),
(4, 'Hp', 1, 5, '2021-07-01 13:33:52', '2021-07-01 13:33:52'),
(10, '8', 2, 2, '2021-07-01 13:38:17', '2021-07-01 13:38:17'),
(11, '8', 2, 3, '2021-07-01 13:38:17', '2021-07-01 13:38:17'),
(12, '8', 2, 4, '2021-07-01 13:38:17', '2021-07-01 13:38:17'),
(13, '8', 2, 5, '2021-07-01 13:38:17', '2021-07-01 13:38:17'),
(17, 'TIENE 2 MUY COMO', 4, 1, '2021-07-02 22:46:26', '2021-07-02 22:46:26'),
(18, '8Gb', 5, 2, '2021-07-06 16:04:02', '2021-07-06 16:04:02'),
(19, 'Intel Core i7', 5, 3, '2021-07-06 16:04:02', '2021-07-06 16:04:02'),
(20, '1Tb', 5, 4, '2021-07-06 16:04:02', '2021-07-06 16:04:02'),
(21, 'Hp', 5, 5, '2021-07-06 16:04:02', '2021-07-06 16:04:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Circulación', '2021-05-14 20:31:03', '2021-05-14 20:31:03'),
(2, 'Suscripción', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(3, 'Revelación', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(4, 'Distribución', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(5, 'Producción', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(6, 'Proyectos', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(7, 'Compras', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(8, 'Control Interno', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(9, 'Recepción', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(10, 'Cartera', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(11, 'Tesorería', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(12, 'Editor General', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(13, 'Prensa', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(14, 'Arte', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(15, 'Cafetería', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(16, 'Programación', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(17, 'Sistemas', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(18, 'Gerencia Comercial', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(19, 'Comercial', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(20, 'Contabilidad', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(21, 'Archivo', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(22, 'Secretaria Gerencia', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(23, 'Talento Humano', '2021-05-14 20:00:32', '2021-05-14 20:00:32'),
(24, 'Gerencia', '2021-05-14 20:00:32', '2021-05-14 20:00:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id`, `nombre`, `codigo`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'silla', 1, 'silla gerencial giratoria', '2021-05-18 17:09:36', '2021-05-18 17:09:36'),
(2, 'portatil', 2, 'Portatil Acer', '2021-05-18 18:56:43', '2021-05-18 18:56:43'),
(3, 'Computador', 3, 'Hp', '2021-05-20 14:10:39', '2021-05-20 14:10:39'),
(4, 'silla gerencial', 1, 'silla gerencial giratoria', '2021-06-04 17:04:48', '2021-06-04 17:04:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `id` int(11) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `empleado_id` int(11) DEFAULT NULL,
  `fechainicia` date DEFAULT NULL,
  `fechatermina` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciondetalle`
--

CREATE TABLE `asignaciondetalle` (
  `id` int(11) NOT NULL,
  `estadoaf` varchar(255) NOT NULL,
  `activofijo_id` int(11) DEFAULT NULL,
  `asignacion_id` int(11) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristica`
--

CREATE TABLE `caracteristica` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `tipoaf_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `caracteristica`
--

INSERT INTO `caracteristica` (`id`, `nombre`, `codigo`, `tipoaf_id`, `created_at`, `updated_at`) VALUES
(1, 'BRAZOS DE APOYO', '0001', 1, '2021-05-19 13:39:17', '2021-05-19 13:39:17'),
(2, 'Ram', '0002', 2, '2021-05-19 16:29:58', '2021-05-19 16:29:58'),
(3, 'Procesador', '0003', 2, '2021-05-20 14:24:24', '2021-05-20 14:24:24'),
(4, 'Disco Duro', '0004', 2, '2021-05-20 14:25:23', '2021-05-20 14:25:23'),
(5, 'teclado', '0005', 2, '2021-05-20 14:25:33', '2021-05-20 14:25:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicatipo`
--

CREATE TABLE `caracteristicatipo` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `caracteristicatipo`
--

INSERT INTO `caracteristicatipo` (`id`, `codigo`, `nombre`, `created_at`, `updated_at`) VALUES
(1, '0001', 'Muebles y Enseres', '2021-05-18 22:03:32', '2021-05-18 22:03:32'),
(2, '0002', 'Equipos de computo', '2021-05-19 14:53:09', '2021-05-19 14:53:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'AUXILIAR PASANTE SISTEMAS', '2021-05-18 22:18:06', '2021-05-18 22:18:06'),
(2, 'AUXILIAR OPERATIVO', '2021-06-03 21:47:41', '2021-06-03 21:47:41'),
(3, 'ASESOR SUSCRIPCIONES', '2021-06-03 21:47:48', '2021-06-03 21:47:48'),
(4, 'DIRECTORA DE CARTERA Y TESORERIA', '2021-06-03 21:47:53', '2021-06-03 21:47:53'),
(5, 'ASESORA COMERCIAL', '2021-06-03 21:48:00', '2021-06-03 21:48:00'),
(6, 'PERIODISTA MULTIMEDIA', '2021-06-03 21:48:05', '2021-06-03 21:48:05'),
(7, 'DISTRIBUIDOR', '2021-06-03 21:48:10', '2021-06-03 21:48:10'),
(8, 'JEFE DE REDACCION', '2021-06-03 21:50:09', '2021-06-03 21:50:09'),
(9, 'EDITOR DE INVESTIGACIONES', '2021-06-03 21:50:31', '2021-06-03 21:50:31'),
(10, 'AUXILIAR DE TALENTO HUMANO', '2021-06-03 21:50:40', '2021-06-03 21:50:40'),
(11, 'REPORTERO GRAFICO', '2021-06-03 21:50:45', '2021-06-03 21:50:45'),
(12, 'COORDINADOR DE EDITORA', '2021-06-03 21:50:50', '2021-06-03 21:50:50'),
(13, 'ASISTENTE COMERCIAL', '2021-06-03 21:51:03', '2021-06-03 21:51:03'),
(14, 'AUXILIAR DE IMPRESION', '2021-06-03 21:51:27', '2021-06-03 21:51:27'),
(15, 'DOBLADOR DISTRIBUIDOR', '2021-06-03 21:51:37', '2021-06-03 21:51:37'),
(16, 'JEFE DE ARTE', '2021-06-03 21:51:44', '2021-06-03 21:51:44'),
(17, 'RECEPCIONISTA', '2021-06-03 21:51:47', '2021-06-03 21:51:47'),
(18, 'ASISTENTE PRESIDENCIA JOM INTERNACIONAL NEIVA', '2021-06-03 21:51:55', '2021-06-03 21:51:55'),
(19, 'EDITOR GENERAL', '2021-06-03 21:52:01', '2021-06-03 21:52:01'),
(20, 'PASANTE UNIVERSITARIO', '2021-06-03 21:53:02', '2021-06-03 21:53:02'),
(21, 'JEFE DE PRODUCCION', '2021-06-03 21:53:13', '2021-06-03 21:53:13'),
(22, 'JEFE DE TICS', '2021-06-03 21:53:40', '2021-06-03 21:53:40'),
(23, 'DIAGRAMADOR', '2021-06-03 21:53:51', '2021-06-03 21:53:51'),
(24, 'TECNICO DE MANTENIMIENTO', '2021-06-03 21:53:55', '2021-06-03 21:53:55'),
(25, 'AUXILIAR DE MANTENIMIENTO', '2021-06-03 21:53:59', '2021-06-03 21:53:59'),
(26, 'PERIODISTA MULTIMEDIA', '2021-06-03 21:54:14', '2021-06-03 21:54:14'),
(27, 'COORDINADORA DE CIRCULACION', '2021-06-03 21:54:21', '2021-06-03 21:54:21'),
(28, 'AUXILIAR DE FACTURACION', '2021-06-03 21:54:38', '2021-06-03 21:54:38'),
(29, 'ASESORA EMPRESARIAL', '2021-06-03 21:54:42', '2021-06-03 21:54:42'),
(30, 'AUXILIAR ADMINISTRATIVO', '2021-06-03 21:54:48', '2021-06-03 21:54:48'),
(31, 'DESARROLLADORA', '2021-06-03 21:55:05', '2021-06-03 21:55:05'),
(32, 'JEFE DE PROYECTOS', '2021-06-03 21:56:38', '2021-06-03 21:56:38'),
(33, 'JEFE DE CONTABILIDAD', '2021-06-03 21:56:45', '2021-06-03 21:56:45'),
(34, 'PRESIDENTA JOM INTERNACIONAL NEIVA', '2021-06-03 21:57:14', '2021-06-03 21:57:14'),
(35, 'DIRECTORA COMERCIAL', '2021-06-03 21:57:55', '2021-06-03 21:57:55'),
(37, 'SERVICIOS GENERALES', '2021-07-07 20:36:39', '2021-07-07 20:36:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `apellido` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `cedula` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `correo` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `cargo_id` int(11) DEFAULT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `nombre`, `apellido`, `cedula`, `correo`, `cargo_id`, `estado`, `area_id`, `created_at`, `updated_at`) VALUES
(1, 'JOHANNA ANDREA', 'TORO PARDO', '35261949', 'webmaster@lanacion.com.co', 31, '1', 17, '2021-05-13 20:30:48', '2021-07-01 21:18:51'),
(2, 'MARTÍN ALEJANDRO', 'LARA MÉNDEZ', '1014269690', 'pasante.sistemas@lanacion.com', 1, '1', 17, '2021-05-16 12:55:41', '2021-06-09 02:15:52'),
(3, 'JHON JAIRO', 'ECHEVERRI TAVERA', '1075275607', 'sistemas@lanacion.com.co', 22, '1', 17, '2021-06-08 16:07:21', '2021-06-09 02:07:21'),
(4, 'SERGIO FELIPE', 'PEÑA POLO', '1075274716', 'compras@lanacion.com.co', 12, '1', 7, '2021-06-08 16:11:11', '2021-06-09 02:11:11'),
(5, 'SANDRA PATRICIA', 'PILLIMUE HURTADO', '1004255963', 'auxiliartalentohumano@lanacion.com.co', 10, '1', 23, '2021-06-08 16:14:18', '2021-06-09 02:14:18'),
(6, 'VICTOR MODESTO', 'SILVA RIVERA', '1075264162', 'victor.silva@lanacion.com.co', 13, '1', 18, '2021-06-08 16:54:18', '2021-06-09 02:54:18'),
(7, 'EDNA PATRICIA', 'MEDINA BARRETO', '51919474', 'patriciamedina@lanacion.com.co', 16, '1', 14, '2021-06-08 16:57:05', '2021-06-09 02:57:05'),
(8, 'NELCY SILVESTRE', 'RAMIREZ', '55154057', 'nelcysilvestre@lanacion.com.co', 5, '1', 19, '2021-06-08 16:58:29', '2021-06-09 02:58:29'),
(9, 'ANCIZAR', 'TRUJILLO CRUZ', '12255887', 'ancizar.trujillo@lanacion.com.co', 5, '1', 19, '2021-06-08 17:00:02', '2021-06-09 03:00:02'),
(10, 'ANDRES FELIPE', 'ROJAS JARA', '1075275612', 'andres.rojas@lanacion.com.co', 5, '1', 19, '2021-06-08 17:01:08', '2021-06-09 03:01:08'),
(11, 'KATHERINE', 'ARIAS FAJARDO', '1075244466', 'katerinearias@lanacion.com.co', 5, '1', 2, '2021-06-08 17:11:01', '2021-06-09 03:11:01'),
(12, 'JULIANA VALERIA', 'ROMERO GARCIA', '1233692335', 'suscripciones@lanacion.com.co', 3, '1', 2, '2021-06-08 17:14:39', '2021-06-09 03:14:39'),
(13, 'CIELO', 'LOAIZA BEDOYA', '1075224378', 'atencionalusuario@lanacion.com.co', 17, '1', 9, '2021-06-09 07:45:36', '2021-06-09 17:45:36'),
(14, 'JESUS ANTONIO', 'ROJAS SERRANO', '93089142', 'editorgeneral@lanacion.com.co', 19, '1', 12, '2021-06-09 08:11:19', '2021-06-09 18:11:19'),
(15, 'GERMAN EDUARDO', 'GIRALDO QUINTERO', '7694158', 'jefeproduccion@lanacion.com.co', 21, '1', 5, '2021-06-09 08:14:55', '2021-06-09 18:14:55'),
(16, 'ANDI YURLAY', 'COLLAZOS COLLAZOS', '1121910382', NULL, 30, '1', 9, '2021-06-09 10:03:50', '2021-06-09 20:03:54'),
(17, 'CLAUDIA MARCELA', 'MEDINA GARCIA', '36305397', 'presidenciajomneiva@lanacion.com.co', 34, '1', 24, '2021-06-09 12:01:42', '2021-06-09 22:01:42'),
(18, 'ASTRID HELENA', 'HERNANDEZ OSPINA', '1075274192', 'judicial@lanacion.com.co', 6, '1', 13, '2021-06-10 14:44:50', '2021-06-11 00:44:50'),
(19, 'CAROL BRILLITH', 'MEDINA SOTO', '1075245901', 'deportes@lanacion.com.co', 3, '1', 2, '2021-06-10 15:01:57', '2021-06-11 01:01:57'),
(20, 'ALBENY', 'SANCHEZ FRANCO', '36182538', 'caja2@lanacion.com.co', 28, '1', 10, '2021-06-10 15:10:12', '2021-06-11 01:10:12'),
(21, 'DUPERLY ANTURI', 'SCARPETA', '55162244', 'gerente.comercial@lanacion.com.co', 35, '1', 18, '2021-06-10 15:14:13', '2021-06-11 01:14:13'),
(22, 'FAVIANA MARCELA', 'MARTINEZ ORTIZ', '1000458066', 'faviana.martinez@lanacion.com.co', 5, '1', 19, '2021-06-10 15:22:45', '2021-06-11 01:22:45'),
(23, 'NEDDY LORENA', 'CAMPOS CLAROS', '1075234119', 'neddycampos@lanacion.com.co', 1, '1', 8, '2021-06-10 15:43:47', '2021-06-11 01:52:59'),
(24, 'ANA MARIA', 'GARCES MOLINA', '1075279996', 'anagarces@lanacion.com', 3, '1', 2, '2021-06-10 15:45:47', '2021-06-11 01:45:47'),
(25, 'MARY SOLEGNIS', 'BUSTOS SALAZAR', '1075298561', 'mary.bustos@lanacion.com.co', 3, '1', 2, '2021-06-10 15:47:57', '2021-06-11 01:47:57'),
(26, 'IVY TANNIA', 'RIVERA PERDOMO', '1075289962', 'Ivy.rivera@lanacion.com.co', 3, '1', 2, '2021-06-10 15:49:16', '2021-06-11 01:49:16'),
(27, 'YESICA ALEJANDRA', 'POLANIA GOMEZ', '1075292400', 'yesica.polania@lanacion.com.co', 3, '1', 2, '2021-06-10 15:50:15', '2021-06-11 01:50:15'),
(28, 'JHON FREDY', 'GARCIA GARZON', '1003815283', 'auxiliarcartera@lanacion.com.co', 20, '1', 10, '2021-06-10 16:08:23', '2021-06-11 02:08:23'),
(29, 'BELLY MARIANA', 'CEDEÑO PLAZAS', '1080291883', 'contabilidad@lanacion.com.co', 33, '1', 20, '2021-06-10 16:13:16', '2021-06-11 02:13:16'),
(30, 'DIANA MARCELA', 'LOPEZ URBANO', '1075313645', 'diana.lopez@lanacion.com.co', 5, '1', 19, '2021-06-10 16:39:55', '2021-06-11 02:39:55'),
(31, 'Sonia Yaneth', 'Charry Perez', '36065809', 'sychperez@hotmail.com', 17, '1', 15, '2021-07-07 15:33:47', '2021-07-07 20:33:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2021_06_17_211037_create_permission_tables', 2),
(8, '2021_06_18_134537_seed', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'use App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'colaborador.listar', 'web', '2021-06-18 21:14:49', '2021-06-18 21:14:49'),
(2, 'colaborador.agregar', 'web', '2021-06-18 21:14:49', '2021-06-18 21:14:49'),
(3, 'colaborador.editar', 'web', '2021-06-18 21:14:49', '2021-06-18 21:14:49'),
(4, 'colaborador.eliminar', 'web', '2021-06-18 21:14:49', '2021-06-18 21:14:49'),
(5, 'colaborador.index', 'web', '2021-06-18 21:14:49', '2021-06-18 21:14:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2021-06-18 21:14:48', '2021-06-18 21:14:48'),
(2, 'Usuario', 'web', '2021-06-18 21:14:48', '2021-06-18 21:14:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('member','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alejandro Lara', 'laritaalejo@gmail.com', NULL, '$2y$10$z/j/vMO1K4BMzyAw4bNMxeCMTsaI0tAa0GO1vAkaMOfeel4Xroiu6', 'member', 'BzIWbSq1wmzi09IunDscI7X2sjZpcKjrhsdxnUugSdAwfGbbMAoKcygXxd7t', '2021-05-18 18:18:26', '2021-05-18 18:18:26'),
(2, 'Andrea', 'andre12@gmail.com', NULL, '$2y$10$Cp4zr5mrbxlWa22rgHWPguTrZTm32B9a6BKLoyJoZUzC5Ut79e1Hu', 'member', NULL, '2021-05-18 18:41:13', '2021-05-18 18:41:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activofijo`
--
ALTER TABLE `activofijo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigoaf` (`codigoaf`);

--
-- Indices de la tabla `activofijodetalle`
--
ALTER TABLE `activofijodetalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_activofijodetalle` (`activofijo_id`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asignaciondetalle`
--
ALTER TABLE `asignaciondetalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_asignaciondetalle` (`asignacion_id`);

--
-- Indices de la tabla `caracteristica`
--
ALTER TABLE `caracteristica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caracteristicatipo`
--
ALTER TABLE `caracteristicatipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activofijo`
--
ALTER TABLE `activofijo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `activofijodetalle`
--
ALTER TABLE `activofijodetalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignaciondetalle`
--
ALTER TABLE `asignaciondetalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caracteristica`
--
ALTER TABLE `caracteristica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `caracteristicatipo`
--
ALTER TABLE `caracteristicatipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `activofijodetalle`
--
ALTER TABLE `activofijodetalle`
  ADD CONSTRAINT `FK_activofijodetalle` FOREIGN KEY (`activofijo_id`) REFERENCES `activofijo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `asignaciondetalle`
--
ALTER TABLE `asignaciondetalle`
  ADD CONSTRAINT `FK_asignaciondetalle` FOREIGN KEY (`asignacion_id`) REFERENCES `asignacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
