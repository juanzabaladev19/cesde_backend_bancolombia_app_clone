-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2022 a las 19:07:53
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appbancolombia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE `accounts` (
  `account_number` varchar(15) NOT NULL,
  `type` varchar(30) NOT NULL,
  `amount` double NOT NULL,
  `user_identification` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`account_number`, `type`, `amount`, `user_identification`) VALUES
('0123456', 'Ahorros', 200, '0123456'),
('10047517', 'Ahorros', 96.15, '10047517'),
('1234567', 'Ahorros', 1, '1234567'),
('2345678', 'Ahorros', 564, '2345678'),
('8817932', 'Ahorros', 455.489, '8817932'),
('8914953', 'Ahorros', 20, '8914953'),
('9340778', 'Ahorros', 5.454, '9340778'),
('9679196', 'Ahorros', 964.078, '9679196'),
('97G144HV478', 'Ahorros', 300, '97G144HV478'),
('9876543', 'Ahorros', 0, '9876543');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transactions`
--

CREATE TABLE `transactions` (
  `origin_account` varchar(15) NOT NULL,
  `destination_account` varchar(15) NOT NULL,
  `type` varchar(30) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `hour` time NOT NULL,
  `transaction_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transactions`
--

INSERT INTO `transactions` (`origin_account`, `destination_account`, `type`, `amount`, `date`, `hour`, `transaction_number`) VALUES
('0123456', '1234567', 'Ahorros', 20, '2022-04-12', '16:04:54', '454615'),
('97G144HV478', '8839650', 'Ahorros', 10, '2022-04-01', '08:05:54', '239748');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `fullname` varchar(100) NOT NULL,
  `identification` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `telephone` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `departament` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`fullname`, `identification`, `gender`, `telephone`, `type`, `email`, `country`, `city`, `departament`, `status`) VALUES
('Aida Montes', '0123456', 'Femenino', '4999997', 'CC', 'justinian_i@yandex.com', 'Colombia', 'Medellin', 'Antioquia', 1),
('Salome Mayo', '10047517', 'Femenino', '5589445', 'CC', 'tarummatteta-3759@yopmail.com', 'Colombia', 'Medellin', 'Antioquia', 1),
('Samuel Cabeza', '1234567', 'Masculino', '6548174', 'CC', 'samu_the great@yahoo.com', 'Colombia', 'Medellin', 'Antioquia', 1),
('Cayetana Marques', '2345678', 'Femenino', '6736375', 'CC', 'arminius@yandex.com', 'Colombia', 'Medellin', 'Antioquia', 1),
('Henar Cornejo', '8817932', 'Masculino', '8839650', 'CC', 'yegennecitoi-4064@yopmail.com', 'Colombia', 'bogota', 'Cundinamarca', 1),
('Guadalupe Vilar', '8914953', 'Femenino', '5985021', 'CC', 'pigreweheilla-1707@yopmail.com', 'Colombia', 'Medellin', 'Antioquia', 1),
('Óscar Ribera', '9340778', 'Masculino', '2327255', 'CC', 'zotiholoubreu-4651@yopmail.com', 'Colombia', 'Neiva', 'Huila', 1),
('Victor Prados', '9679196', 'Masculino', '2502481', 'CC', 'soppiwelessu-2891@yopmail.com', 'Colombia', 'Medellin', 'Antioquia', 1),
('Tamara Frias', '97G144HV478', 'Femenino', '4019924', 'Pasaporte Extranjero', 'trewafruttiso-7448@yopmail.com', 'Venezuela', 'Caracas', 'Distrito Capital', 1),
('Jose Juan Minguez', '9876543', 'Masculino', '2983625', 'CC', 'sourelleprafrau-1115@yopmail.com', 'Colombia', 'Medellin', 'Antioquia', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_credentials`
--

CREATE TABLE `users_credentials` (
  `user_name` varchar(100) NOT NULL,
  `pin` int(11) NOT NULL,
  `img` varchar(250) NOT NULL,
  `user_identification` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users_credentials`
--

INSERT INTO `users_credentials` (`user_name`, `pin`, `img`, `user_identification`) VALUES
('0123456', 1234, 'https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/social_share_large/public/purina-conoce-8-razones-de-un-perro-enojado-para-que-no-las-hagas-0.png?itok=7oB1ORMR', '0123456'),
('10047517', 9633, 'https://estaticos-cdn.elperiodico.com/clip/9a36bb77-0c88-4b3c-a7dc-f3d41dd85987_alta-libre-aspect-ratio_default_0.jpg', '10047517'),
('1234567', 4567, 'https://static.nationalgeographic.es/files/styles/image_3200/public/75552.ngsversion.1422285553360.jpg?w=1600&h=1067', '1234567'),
('2345678', 7890, 'https://estaticos-cdn.elperiodico.com/clip/9a36bb77-0c88-4b3c-a7dc-f3d41dd85987_alta-libre-aspect-ratio_default_0.jpg', '2345678'),
('8817932', 123, 'https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/social_share_large/public/purina-conoce-8-razones-de-un-perro-enojado-para-que-no-las-hagas-0.png?itok=7oB1ORMR', '8817932'),
('8914953', 4586, 'https://static.nationalgeographic.es/files/styles/image_3200/public/75552.ngsversion.1422285553360.jpg?w=1600&h=1067', '8914953'),
('9340778', 5566, 'https://estaticos-cdn.elperiodico.com/clip/9a36bb77-0c88-4b3c-a7dc-f3d41dd85987_alta-libre-aspect-ratio_default_0.jpg', '9340778'),
('9679196', 1289, 'https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/social_share_large/public/purina-conoce-8-razones-de-un-perro-enojado-para-que-no-las-hagas-0.png?itok=7oB1ORMR', '9679196'),
('97G144HV478', 8941, 'https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/social_share_large/public/purina-conoce-8-razones-de-un-perro-enojado-para-que-no-las-hagas-0.png?itok=7oB1ORMR', '97G144HV478'),
('9876543', 9823, 'https://static.nationalgeographic.es/files/styles/image_3200/public/75552.ngsversion.1422285553360.jpg?w=1600&h=1067', '9876543');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_number`);

--
-- Indices de la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`origin_account`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identification`);

--
-- Indices de la tabla `users_credentials`
--
ALTER TABLE `users_credentials`
  ADD PRIMARY KEY (`user_name`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`account_number`) REFERENCES `users_credentials` (`user_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`origin_account`) REFERENCES `accounts` (`account_number`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `users_credentials`
--
ALTER TABLE `users_credentials`
  ADD CONSTRAINT `users_credentials_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `users` (`identification`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
