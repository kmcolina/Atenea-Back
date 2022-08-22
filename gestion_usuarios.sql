-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-08-2022 a las 22:45:32
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestion_usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `courseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `title`, `level`, `createdAt`, `updatedAt`, `courseId`) VALUES
(1, ' Laravel para novatos', 1, '2022-08-21 17:45:12', '2022-08-21 17:45:12', 1),
(2, 'Porque Usar Vuejs', 1, '2022-08-21 17:45:19', '2022-08-21 17:45:19', 2),
(3, ' Angular para novatos', 1, '2022-08-21 17:45:24', '2022-08-21 17:45:24', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Laravel', '2022-08-21 17:44:51', '2022-08-21 17:44:51'),
(2, 'Vuejs', '2022-08-21 17:44:55', '2022-08-21 17:44:55'),
(3, 'AngularJs', '2022-08-21 17:45:02', '2022-08-21 17:45:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profiles`
--

INSERT INTO `profiles` (`id`, `first_name`, `last_name`, `direction`, `phone`, `image`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 'Andres', 'Sapene', 'El paraiso', NULL, 'image_1661104032957_formato pago.png', '2022-08-21 17:47:12', '2022-08-21 17:47:12', 2),
(2, 'Fernando', 'Sapene', 'El paraiso', NULL, 'image_1661104044744_formato pago.png', '2022-08-21 17:47:24', '2022-08-21 17:47:24', 1),
(3, 'Fernando', 'Sapene', 'El paraiso', NULL, 'image_1661108913435_img.png', '2022-08-21 19:08:33', '2022-08-21 19:08:33', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `correct` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `categoriaId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `answer`, `correct`, `createdAt`, `updatedAt`, `categoriaId`) VALUES
(1, 'Es un IDE', 0, '2022-08-21 17:45:41', '2022-08-21 17:45:41', 1),
(2, 'Es un Framework', 1, '2022-08-21 17:45:50', '2022-08-21 17:45:50', 1),
(3, 'Es un carro', 0, '2022-08-21 17:45:56', '2022-08-21 17:45:56', 1),
(4, 'Es un carro', 0, '2022-08-21 17:46:01', '2022-08-21 17:46:01', 2),
(5, 'Es un Ide', 0, '2022-08-21 17:46:04', '2022-08-21 17:46:04', 2),
(6, 'Es un Framework', 1, '2022-08-21 17:46:17', '2022-08-21 17:46:17', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quiz-results`
--

CREATE TABLE `quiz-results` (
  `id` int(11) NOT NULL,
  `name` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `profileId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `quizzes`
--

INSERT INTO `quizzes` (`id`, `name`, `createdAt`, `updatedAt`, `profileId`, `courseId`) VALUES
(2, 'Laravel', '2022-08-21 17:47:31', '2022-08-21 17:47:31', 2, 1),
(3, 'Vuejs', '2022-08-21 17:54:11', '2022-08-21 17:54:11', 1, 2),
(4, 'Laravel', '2022-08-21 17:58:59', '2022-08-21 17:58:59', 1, 1),
(5, 'Vuejs', '2022-08-21 18:36:53', '2022-08-21 18:36:53', 2, 2),
(6, 'Laravel', '2022-08-21 19:53:07', '2022-08-21 19:53:07', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2022-08-21 17:43:14', '2022-08-21 17:43:14'),
(2, 'moderator', '2022-08-21 17:43:14', '2022-08-21 17:43:14'),
(3, 'admin', '2022-08-21 17:43:14', '2022-08-21 17:43:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `valid`, `createdAt`, `updatedAt`) VALUES
(1, 'ferdx', 'fedx@gmail.com', '$2a$08$2dUtNeq7v77sCRDRdr0g/uNsB95HRp.kDyWVx4YB11Gl4nTIoQ.rq', 0, '2022-08-21 17:44:17', '2022-08-21 17:44:17'),
(2, 'andres', 'andres@gmail.com', '$2a$08$iDgsqr5yUXiGjyTm9HO49.yNC1aD8Su6FUMcixXANmhrpDlodgaRS', 0, '2022-08-21 17:44:28', '2022-08-21 17:44:28'),
(3, 'ferdx1', 'fdxcode1@gmail.com', '$2a$08$4DeXxXmWQ7cBw51CwtP.9O5.BVrs3Q79R8glXgaEp1oC156E6.T1S', 0, '2022-08-21 19:08:00', '2022-08-21 19:08:00'),
(4, 'aug', 'fed1x@gmail.com', '$2a$08$Z782HiM4iU7uaMpzwnXmCOTOxtPUDdGwCRavv904ksyD5fJ86c5NG', 0, '2022-08-21 19:31:21', '2022-08-21 19:31:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('2022-08-21 17:44:17', '2022-08-21 17:44:17', 1, 1),
('2022-08-21 17:44:28', '2022-08-21 17:44:28', 1, 2),
('2022-08-21 19:08:00', '2022-08-21 19:08:00', 1, 3),
('2022-08-21 19:31:21', '2022-08-21 19:31:21', 1, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseId` (`courseId`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoriaId` (`categoriaId`);

--
-- Indices de la tabla `quiz-results`
--
ALTER TABLE `quiz-results`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profileId` (`profileId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `quiz-results`
--
ALTER TABLE `quiz-results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `categorias_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`categoriaId`) REFERENCES `categorias` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `profiles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `quizzes_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
