-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 01:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `ConversacionId` int(11) NOT NULL,
  `Usuario1Id` int(11) DEFAULT NULL,
  `Usuario2Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`ConversacionId`, `Usuario1Id`, `Usuario2Id`) VALUES
(3, 1, 2),
(4, 1, 3),
(5, 1, 4),
(19, 2, 4),
(20, 2, 3),
(21, 3, 2),
(22, 7, 1),
(23, 8, 2),
(24, 2, 9),
(25, 6, 8),
(26, 7, 9),
(27, 2, 11),
(28, 3, 10),
(29, 9, 13),
(30, 8, 7),
(31, 13, 11),
(32, 11, 3),
(33, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `grupos`
--

CREATE TABLE `grupos` (
  `GrupoId` int(11) NOT NULL,
  `UsuarioDuenoId` int(11) DEFAULT NULL,
  `Nombre` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grupos`
--

INSERT INTO `grupos` (`GrupoId`, `UsuarioDuenoId`, `Nombre`) VALUES
(2, 4, 'AAAAAA'),
(3, 3, 'Softer'),
(4, 3, 'Softer'),
(7, 3, 'softer'),
(8, 3, 'softer'),
(9, 3, 'softer'),
(10, 3, 'softer'),
(11, 3, 'softer'),
(13, 3, 'llool'),
(16, 1, '123456798765432'),
(17, 6, 'todos');

-- --------------------------------------------------------

--
-- Table structure for table `invitacionesamigos`
--

CREATE TABLE `invitacionesamigos` (
  `InvitacionId` int(11) NOT NULL,
  `UsuarioEnviaId` int(11) DEFAULT NULL,
  `UsuarioRecibeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invitacionesamigos`
--

INSERT INTO `invitacionesamigos` (`InvitacionId`, `UsuarioEnviaId`, `UsuarioRecibeId`) VALUES
(11, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invitacionesgrupos`
--

CREATE TABLE `invitacionesgrupos` (
  `InvitacionId` int(11) NOT NULL,
  `GrupoId` int(11) DEFAULT NULL,
  `UsuarioRecibeId` int(11) DEFAULT NULL,
  `Status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invitacionesgrupos`
--

INSERT INTO `invitacionesgrupos` (`InvitacionId`, `GrupoId`, `UsuarioRecibeId`, `Status`) VALUES
(3, 2, 1, 2),
(4, 2, 2, 2),
(13, 11, 4, 2),
(14, 11, 1, 2),
(17, 13, 7, 3),
(18, 13, 2, 1),
(19, 13, 4, 1),
(24, 16, 6, 1),
(25, 16, 2, 2),
(26, 16, 7, 2),
(27, 17, 3, 2),
(28, 17, 10, 2),
(29, 17, 7, 2),
(30, 17, 8, 2),
(31, 17, 9, 2),
(32, 17, 2, 2),
(33, 17, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `listaamigos`
--

CREATE TABLE `listaamigos` (
  `amigosId` int(11) NOT NULL,
  `UsuarioDuenoId` int(11) DEFAULT NULL,
  `UsuarioId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listaamigos`
--

INSERT INTO `listaamigos` (`amigosId`, `UsuarioDuenoId`, `UsuarioId`) VALUES
(4, 4, 2),
(5, 1, 2),
(6, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mensajes`
--

CREATE TABLE `mensajes` (
  `mensaje_id` int(11) NOT NULL,
  `contenido` varchar(600) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `chat_id` int(11) DEFAULT NULL,
  `UsuarioId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mensajes`
--

INSERT INTO `mensajes` (`mensaje_id`, `contenido`, `fecha`, `chat_id`, `UsuarioId`) VALUES
(39, 'amigo drake?', '2024-05-14 23:24:03', 5, 1),
(40, 'alch', '2024-05-14 23:24:19', 5, 1),
(41, 'que asco', '2024-05-14 23:24:34', 5, 1),
(42, 'oye drake me das 50000 pesos por favor', '2024-05-15 00:06:30', 5, 1),
(44, 'whts up im drake', '2024-05-15 11:58:02', 5, 4),
(56, 'hola drake', '2024-05-15 15:14:55', 5, 1),
(57, 'ey necesito tu ayuda drake', '2024-05-15 15:16:45', 5, 1),
(58, 'que necesitas artz', '2024-05-15 15:16:57', 5, 4),
(59, 'hools', '2024-05-15 15:18:13', 5, 1),
(60, 'hola artzx', '2024-05-15 17:21:03', 5, 1),
(61, 'les goo', '2024-05-15 17:21:12', 5, 4),
(65, 'hola artz', '2024-05-15 18:37:00', 3, 2),
(66, 'hola drake', '2024-05-16 00:27:14', 5, 1),
(68, 'cuanto tiempo amigo', '2024-05-16 04:04:18', 5, 4),
(69, 'hola', '2024-05-16 07:26:40', 4, 1),
(70, 'responde', '2024-05-16 07:27:13', 4, 1),
(71, 'hola de nuevo', '2024-05-16 07:27:43', 4, 1),
(72, 'Hola Nartz', '2024-05-16 07:28:39', 4, 3),
(73, 'Respondeme nartz', '2024-05-16 07:29:56', 4, 3),
(74, 'Hola Truno', '2024-05-16 07:58:46', 4, 3),
(75, 'Hola axelita', '2024-05-16 08:02:35', 20, 3),
(76, 'hola', '2024-05-16 08:02:36', 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mensajes_grupales`
--

CREATE TABLE `mensajes_grupales` (
  `id_mensaje_grupal` int(11) NOT NULL,
  `contenido_mensaje` varchar(600) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `UsuarioId` int(11) DEFAULT NULL,
  `GrupoId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mensajes_grupales`
--

INSERT INTO `mensajes_grupales` (`id_mensaje_grupal`, `contenido_mensaje`, `fecha_hora`, `UsuarioId`, `GrupoId`) VALUES
(1, 'pipipi', '2024-05-16 00:27:32', 4, 2),
(4, 'ya esta', '2024-05-16 04:31:33', 2, 2),
(5, 'hola', '2024-05-16 08:16:08', 4, 11),
(6, 'Hola mi gente', '2024-05-16 08:16:23', 3, 11),
(8, 'hola axel', '2024-05-16 08:58:34', 1, 16),
(9, 'hola art', '2024-05-16 08:59:05', 7, 16),
(10, 'hola', '2024-05-16 08:59:05', 2, 16),
(11, 'jjhj', '2024-05-16 09:04:08', 7, 16),
(12, 'hola', '2024-05-16 10:29:18', 2, 17),
(13, 'Hola1', '2024-05-16 10:29:49', 10, 17),
(14, 'hola soy volley', '2024-05-16 10:29:49', 8, 17),
(15, 'hola', '2024-05-16 10:29:49', 9, 17),
(16, 'hola', '2024-05-16 10:29:49', 2, 17),
(17, 'hola', '2024-05-16 10:29:49', 6, 17),
(18, 'hiiii', '2024-05-16 10:29:50', 7, 17),
(19, 'hola', '2024-05-16 10:29:51', 11, 17),
(20, 'Hola2', '2024-05-16 10:29:52', 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `UsuarioId` int(11) NOT NULL,
  `NombreUsuario` varchar(70) NOT NULL,
  `Pass` varchar(250) DEFAULT NULL,
  `RespuestaPreguntaConfianza` varchar(200) DEFAULT NULL,
  `StatusConexion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`UsuarioId`, `NombreUsuario`, `Pass`, `RespuestaPreguntaConfianza`, `StatusConexion`) VALUES
(1, 'Artz', '1234', 'Imagination', 0),
(2, 'AxelWhite', '1234', 'Martillazo', 0),
(3, 'Gel', '1234', 'Desde Saturno', 1),
(4, 'Drake', '1234', 'Carnival', 0),
(6, 'Samantha', '1234', 'La cancion', 1),
(7, 'caro', '1234', 'me prometiste', 1),
(8, 'ValeTest', '1234', 'Skyfall', 1),
(9, 'wachi', 'wachi', 'labios rotos', 0),
(10, 'coco', '1234', 'macarena', 1),
(11, 'Izar', 'ceti', 'cancion', 1),
(12, '1', '1', '1', 0),
(13, 'Roman', '12345', 'sunshine', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`ConversacionId`),
  ADD KEY `Usuario1Id` (`Usuario1Id`),
  ADD KEY `Usuario2Id` (`Usuario2Id`);

--
-- Indexes for table `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`GrupoId`),
  ADD KEY `UsuarioDuenoId` (`UsuarioDuenoId`);

--
-- Indexes for table `invitacionesamigos`
--
ALTER TABLE `invitacionesamigos`
  ADD PRIMARY KEY (`InvitacionId`),
  ADD KEY `UsuarioEnviaId` (`UsuarioEnviaId`),
  ADD KEY `UsuarioRecibeId` (`UsuarioRecibeId`);

--
-- Indexes for table `invitacionesgrupos`
--
ALTER TABLE `invitacionesgrupos`
  ADD PRIMARY KEY (`InvitacionId`),
  ADD KEY `GrupoId` (`GrupoId`),
  ADD KEY `UsuarioRecibeId` (`UsuarioRecibeId`);

--
-- Indexes for table `listaamigos`
--
ALTER TABLE `listaamigos`
  ADD PRIMARY KEY (`amigosId`),
  ADD KEY `UsuarioDuenoId` (`UsuarioDuenoId`),
  ADD KEY `UsuarioId` (`UsuarioId`);

--
-- Indexes for table `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`mensaje_id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `UsuarioId` (`UsuarioId`);

--
-- Indexes for table `mensajes_grupales`
--
ALTER TABLE `mensajes_grupales`
  ADD PRIMARY KEY (`id_mensaje_grupal`),
  ADD KEY `fk_usuario_id` (`UsuarioId`),
  ADD KEY `fk_grupo_id` (`GrupoId`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`UsuarioId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `ConversacionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `grupos`
--
ALTER TABLE `grupos`
  MODIFY `GrupoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `invitacionesamigos`
--
ALTER TABLE `invitacionesamigos`
  MODIFY `InvitacionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `invitacionesgrupos`
--
ALTER TABLE `invitacionesgrupos`
  MODIFY `InvitacionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `listaamigos`
--
ALTER TABLE `listaamigos`
  MODIFY `amigosId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `mensaje_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `mensajes_grupales`
--
ALTER TABLE `mensajes_grupales`
  MODIFY `id_mensaje_grupal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `UsuarioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_ibfk_1` FOREIGN KEY (`Usuario1Id`) REFERENCES `usuarios` (`UsuarioId`),
  ADD CONSTRAINT `chats_ibfk_2` FOREIGN KEY (`Usuario2Id`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Constraints for table `grupos`
--
ALTER TABLE `grupos`
  ADD CONSTRAINT `grupos_ibfk_1` FOREIGN KEY (`UsuarioDuenoId`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Constraints for table `invitacionesamigos`
--
ALTER TABLE `invitacionesamigos`
  ADD CONSTRAINT `invitacionesamigos_ibfk_1` FOREIGN KEY (`UsuarioEnviaId`) REFERENCES `usuarios` (`UsuarioId`),
  ADD CONSTRAINT `invitacionesamigos_ibfk_2` FOREIGN KEY (`UsuarioRecibeId`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Constraints for table `invitacionesgrupos`
--
ALTER TABLE `invitacionesgrupos`
  ADD CONSTRAINT `invitacionesgrupos_ibfk_1` FOREIGN KEY (`GrupoId`) REFERENCES `grupos` (`GrupoId`),
  ADD CONSTRAINT `invitacionesgrupos_ibfk_2` FOREIGN KEY (`UsuarioRecibeId`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Constraints for table `listaamigos`
--
ALTER TABLE `listaamigos`
  ADD CONSTRAINT `listaamigos_ibfk_1` FOREIGN KEY (`UsuarioDuenoId`) REFERENCES `usuarios` (`UsuarioId`),
  ADD CONSTRAINT `listaamigos_ibfk_2` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Constraints for table `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`chat_id`) REFERENCES `chats` (`ConversacionId`),
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Constraints for table `mensajes_grupales`
--
ALTER TABLE `mensajes_grupales`
  ADD CONSTRAINT `fk_grupo_id` FOREIGN KEY (`GrupoId`) REFERENCES `grupos` (`GrupoId`),
  ADD CONSTRAINT `fk_usuario_id` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`UsuarioId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
