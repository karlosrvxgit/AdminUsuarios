-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2023 a las 06:07:54
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adminusers`
--

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_11_11_215439_create_usuarios_table', 1);

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
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fecharegistro` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `fecharegistro`, `created_at`, `updated_at`) VALUES
(1, 'Jabari', 'Feil', 'zemlak.mattie@jacobi.com', '2003-04-30', '2023-11-12 09:09:27', '2023-11-12 09:09:27'),
(2, 'Rebeca', 'Brakus', 'patrick.mccullough@hotmail.com', '1974-06-12', '2023-11-12 09:09:27', '2023-11-12 09:09:27'),
(3, 'Caleigh', 'Robel', 'funk.jarrod@yahoo.com', '1989-05-08', '2023-11-12 09:09:27', '2023-11-12 09:09:27'),
(4, 'Alexandrea', 'Baumbach', 'rosie96@mertz.com', '1974-02-12', '2023-11-12 09:09:28', '2023-11-12 09:09:28'),
(5, 'Hortense', 'Crooks', 'garnett.hackett@gmail.com', '1981-10-09', '2023-11-12 09:09:28', '2023-11-12 09:09:28'),
(6, 'Darien', 'Quitzon', 'susan.mills@graham.org', '2003-09-25', '2023-11-12 09:09:28', '2023-11-12 09:09:28'),
(7, 'Katarina', 'Pfeffer', 'torey.kessler@hotmail.com', '1992-11-08', '2023-11-12 09:09:28', '2023-11-12 09:09:28'),
(8, 'Marian', 'Stark', 'saige.tromp@zboncak.com', '1979-09-12', '2023-11-12 09:09:28', '2023-11-12 09:09:28'),
(9, 'Sammy', 'Schroeder', 'levi89@barton.biz', '2001-07-06', '2023-11-12 09:09:28', '2023-11-12 09:09:28'),
(10, 'Icie', 'Goodwin', 'ruecker.lyda@feil.org', '2019-03-12', '2023-11-12 09:09:28', '2023-11-12 09:09:28'),
(11, 'Glenda', 'Schroeder', 'ava12@hotmail.com', '1989-01-19', '2023-11-12 09:09:29', '2023-11-12 09:09:29'),
(12, 'Rodrick', 'Frami', 'cormier.davon@hotmail.com', '1980-10-08', '2023-11-12 09:09:29', '2023-11-12 09:09:29'),
(13, 'Ethel', 'Friesen', 'howell.brandyn@effertz.com', '1988-02-29', '2023-11-12 09:09:29', '2023-11-12 09:09:29'),
(14, 'Bernie', 'Walsh', 'xkassulke@gmail.com', '2009-08-06', '2023-11-12 09:09:29', '2023-11-12 09:09:29'),
(15, 'Ismael', 'Kshlerin', 'vstokes@goodwin.org', '2018-07-23', '2023-11-12 09:09:29', '2023-11-12 09:09:29'),
(16, 'Torrey', 'Hickle', 'ywillms@yahoo.com', '1978-01-20', '2023-11-12 09:09:29', '2023-11-12 09:09:29'),
(17, 'Vernon', 'O\'Reilly', 'iortiz@hammes.biz', '2020-04-18', '2023-11-12 09:09:29', '2023-11-12 09:09:29'),
(18, 'Clemmie', 'Abernathy', 'franecki.lavon@gmail.com', '1970-07-02', '2023-11-12 09:09:29', '2023-11-12 09:09:29'),
(19, 'Cary', 'Zulauf', 'zachery.hodkiewicz@crona.info', '1986-11-02', '2023-11-12 09:09:30', '2023-11-12 09:09:30'),
(20, 'Brennan', 'Bradtke', 'torphy.deanna@gmail.com', '1970-07-27', '2023-11-12 09:09:30', '2023-11-12 09:09:30'),
(21, 'Burley', 'VonRueden', 'beth59@yahoo.com', '1976-04-27', '2023-11-12 09:09:30', '2023-11-12 09:09:30'),
(22, 'Lilyan', 'Moore', 'vdaugherty@aufderhar.biz', '2014-07-28', '2023-11-12 09:09:30', '2023-11-12 09:09:30'),
(23, 'Ova', 'Hoeger', 'xhauck@olson.org', '1973-11-09', '2023-11-12 09:09:30', '2023-11-12 09:09:30'),
(24, 'Lois', 'Sanford', 'elna60@barrows.net', '2000-04-12', '2023-11-12 09:09:30', '2023-11-12 09:09:30'),
(25, 'Vesta', 'Veum', 'oheidenreich@yahoo.com', '1999-12-30', '2023-11-12 09:09:31', '2023-11-12 09:09:31'),
(26, 'Arielle', 'Steuber', 'ycarroll@gottlieb.com', '1997-10-08', '2023-11-12 09:09:31', '2023-11-12 09:09:31'),
(27, 'Nikki', 'Kerluke', 'funk.amelie@hahn.org', '2013-05-15', '2023-11-12 09:09:32', '2023-11-12 09:09:32'),
(28, 'Lois', 'Hansen', 'vbrown@wolf.com', '1976-10-11', '2023-11-12 09:09:32', '2023-11-12 09:09:32'),
(29, 'Keon', 'Cole', 'gunnar43@goodwin.com', '1971-03-27', '2023-11-12 09:09:32', '2023-11-12 09:09:32'),
(30, 'Joaquin', 'Funk', 'romaine31@hansen.org', '2021-04-09', '2023-11-12 09:09:32', '2023-11-12 09:09:32'),
(31, 'Lucious', 'Farrell', 'emmerich.keegan@tremblay.info', '1996-05-03', '2023-11-12 09:09:32', '2023-11-12 09:09:32'),
(32, 'Kaylah', 'Dare', 'karolann20@hotmail.com', '2020-10-15', '2023-11-12 09:09:32', '2023-11-12 09:09:32'),
(33, 'Emmanuelle', 'Schmidt', 'ashlynn.rau@gibson.biz', '1991-09-02', '2023-11-12 09:09:32', '2023-11-12 09:09:32'),
(34, 'Colton', 'Champlin', 'guy.lynch@hotmail.com', '1971-04-03', '2023-11-12 09:09:32', '2023-11-12 09:09:32'),
(35, 'Susana', 'Ondricka', 'jkuhlman@morissette.com', '1991-08-28', '2023-11-12 09:09:32', '2023-11-12 09:09:32'),
(36, 'Mack', 'Tromp', 'gregg.kling@yahoo.com', '2013-07-31', '2023-11-12 09:09:32', '2023-11-12 09:09:32'),
(37, 'Madilyn', 'Green', 'casimer32@yahoo.com', '1971-12-20', '2023-11-12 09:09:32', '2023-11-12 09:09:32'),
(38, 'Cynthia', 'Langworth', 'leland18@yahoo.com', '1982-04-17', '2023-11-12 09:09:33', '2023-11-12 09:09:33'),
(39, 'Emiliano', 'Aufderhar', 'cwillms@gmail.com', '1973-12-15', '2023-11-12 09:09:33', '2023-11-12 09:09:33'),
(40, 'Marianne', 'Larson', 'jade.langworth@krajcik.net', '1995-07-06', '2023-11-12 09:09:33', '2023-11-12 09:09:33'),
(41, 'Payton', 'Ortiz', 'bosco.elisha@osinski.com', '2016-06-14', '2023-11-12 09:09:33', '2023-11-12 09:09:33'),
(42, 'Efren', 'Stiedemann', 'alexis.gleason@ratke.com', '1989-06-15', '2023-11-12 09:09:33', '2023-11-12 09:09:33'),
(43, 'Frederique', 'Hagenes', 'asha12@grimes.org', '2001-09-02', '2023-11-12 09:09:33', '2023-11-12 09:09:33'),
(44, 'Colby', 'Boyle', 'gondricka@yahoo.com', '1984-06-14', '2023-11-12 09:09:33', '2023-11-12 09:09:33'),
(45, 'Ali', 'Homenick', 'mohr.nya@rice.com', '1981-10-15', '2023-11-12 09:09:33', '2023-11-12 09:09:33'),
(46, 'Ryann', 'Kertzmann', 'patsy56@hotmail.com', '2021-09-25', '2023-11-12 09:09:33', '2023-11-12 09:09:33'),
(47, 'Lottie', 'Dickens', 'dickinson.laisha@keeling.info', '1984-09-17', '2023-11-12 09:09:33', '2023-11-12 09:09:33'),
(48, 'Katelyn', 'Funk', 'hdouglas@yahoo.com', '1989-12-24', '2023-11-12 09:09:34', '2023-11-12 09:09:34'),
(49, 'Buster', 'Predovic', 'romaguera.brooklyn@yahoo.com', '1979-08-30', '2023-11-12 09:09:34', '2023-11-12 09:09:34'),
(50, 'Kaci', 'Runolfsdottir', 'jast.velda@larkin.com', '2003-04-11', '2023-11-12 09:09:34', '2023-11-12 09:09:34'),
(51, 'Vance', 'Koss', 'nader.alexandro@yahoo.com', '1972-11-14', '2023-11-12 09:09:34', '2023-11-12 09:09:34'),
(52, 'Loren', 'Stiedemann', 'garland.orn@lemke.com', '1992-10-25', '2023-11-12 09:09:34', '2023-11-12 09:09:34'),
(53, 'Pearl', 'Schmitt', 'rdamore@gmail.com', '1990-07-26', '2023-11-12 09:09:34', '2023-11-12 09:09:34'),
(54, 'Cory', 'Borer', 'wullrich@hotmail.com', '2020-12-02', '2023-11-12 09:09:34', '2023-11-12 09:09:34'),
(55, 'Ila', 'Mraz', 'kling.mireya@yahoo.com', '1970-03-24', '2023-11-12 09:09:34', '2023-11-12 09:09:34'),
(56, 'Wallace', 'Sawayn', 'srunolfsson@gmail.com', '2010-10-21', '2023-11-12 09:09:34', '2023-11-12 09:09:34'),
(57, 'Haven', 'Ankunding', 'glover.willard@schaden.com', '1980-10-14', '2023-11-12 09:09:35', '2023-11-12 09:09:35'),
(58, 'Ephraim', 'Hettinger', 'vella.streich@hotmail.com', '1997-11-28', '2023-11-12 09:09:35', '2023-11-12 09:09:35'),
(59, 'Fredrick', 'Bogan', 'zaufderhar@hotmail.com', '2002-04-17', '2023-11-12 09:09:35', '2023-11-12 09:09:35'),
(60, 'Adolfo', 'Hill', 'zane.mante@towne.com', '1992-04-06', '2023-11-12 09:09:35', '2023-11-12 09:09:35'),
(61, 'Jalen', 'Kutch', 'frami.martine@hotmail.com', '1988-01-31', '2023-11-12 09:09:35', '2023-11-12 09:09:35'),
(62, 'Elda', 'Grady', 'lruecker@bins.biz', '1991-11-28', '2023-11-12 09:09:35', '2023-11-12 09:09:35'),
(63, 'Jimmy', 'Douglas', 'wilbert60@larson.com', '2013-04-15', '2023-11-12 09:09:35', '2023-11-12 09:09:35'),
(64, 'Bret', 'Nitzsche', 'rogahn.esther@mueller.biz', '1999-05-05', '2023-11-12 09:09:36', '2023-11-12 09:09:36'),
(65, 'Adelia', 'Rath', 'gavin.ledner@hotmail.com', '1973-02-01', '2023-11-12 09:09:36', '2023-11-12 09:09:36'),
(66, 'Vallie', 'Smitham', 'ptremblay@kerluke.com', '1989-08-22', '2023-11-12 09:09:36', '2023-11-12 09:09:36'),
(67, 'Shea', 'Kuhic', 'mosciski.christina@hotmail.com', '1977-03-24', '2023-11-12 09:09:37', '2023-11-12 09:09:37'),
(68, 'Shanie', 'Yundt', 'alvera.harvey@schultz.org', '2009-08-20', '2023-11-12 09:09:37', '2023-11-12 09:09:37'),
(69, 'Emmet', 'Walker', 'ibrahim36@gmail.com', '1993-07-31', '2023-11-12 09:09:37', '2023-11-12 09:09:37'),
(70, 'Dan', 'Brakus', 'jbradtke@kuphal.com', '2009-03-24', '2023-11-12 09:09:37', '2023-11-12 09:09:37'),
(71, 'Annabel', 'Hessel', 'caltenwerth@hotmail.com', '2013-11-13', '2023-11-12 09:09:37', '2023-11-12 09:09:37'),
(72, 'Earline', 'Simonis', 'sigurd22@hotmail.com', '1997-02-24', '2023-11-12 09:09:37', '2023-11-12 09:09:37'),
(73, 'Hans', 'Walsh', 'roob.eino@yahoo.com', '2013-01-10', '2023-11-12 09:09:38', '2023-11-12 09:09:38'),
(74, 'Darwin', 'Doyle', 'aliza.wisoky@frami.net', '2022-01-09', '2023-11-12 09:09:38', '2023-11-12 09:09:38'),
(75, 'Murl', 'Dare', 'goyette.dillon@legros.com', '2015-11-28', '2023-11-12 09:09:38', '2023-11-12 09:09:38'),
(76, 'Ward', 'Skiles', 'ghauck@brakus.com', '1983-07-23', '2023-11-12 09:09:38', '2023-11-12 09:09:38'),
(77, 'Brandon', 'Parisian', 'elva.wyman@hotmail.com', '2016-08-17', '2023-11-12 09:09:38', '2023-11-12 09:09:38'),
(78, 'Hipolito', 'Hane', 'gregoria12@hotmail.com', '1999-05-03', '2023-11-12 09:09:38', '2023-11-12 09:09:38'),
(79, 'Estelle', 'Stroman', 'georgiana78@hoppe.com', '1988-09-09', '2023-11-12 09:09:38', '2023-11-12 09:09:38'),
(80, 'Kyla', 'Feil', 'zbuckridge@gmail.com', '1988-08-14', '2023-11-12 09:09:38', '2023-11-12 09:09:38'),
(81, 'Dusty', 'Conroy', 'elissa65@hotmail.com', '1977-02-07', '2023-11-12 09:09:38', '2023-11-12 09:09:38'),
(82, 'Lurline', 'Emard', 'kiarra.torp@gmail.com', '2013-04-05', '2023-11-12 09:09:39', '2023-11-12 09:09:39'),
(83, 'Abbigail', 'Kunde', 'eda00@hotmail.com', '2019-08-31', '2023-11-12 09:09:39', '2023-11-12 09:09:39'),
(84, 'Viva', 'Tremblay', 'verdie.runte@brekke.net', '2013-10-17', '2023-11-12 09:09:39', '2023-11-12 09:09:39'),
(85, 'Dorcas', 'Gottlieb', 'dickens.lempi@gmail.com', '1982-07-13', '2023-11-12 09:09:39', '2023-11-12 09:09:39'),
(86, 'Victoria', 'Hyatt', 'swift.kevin@gmail.com', '1998-01-05', '2023-11-12 09:09:39', '2023-11-12 09:09:39'),
(87, 'Waldo', 'Smitham', 'owen01@stoltenberg.com', '2011-02-09', '2023-11-12 09:09:40', '2023-11-12 09:09:40'),
(88, 'Brandyn', 'Simonis', 'wyman.gabe@gmail.com', '1984-12-09', '2023-11-12 09:09:40', '2023-11-12 09:09:40'),
(89, 'Curtis', 'O\'Hara', 'daugherty.brisa@gmail.com', '1988-07-11', '2023-11-12 09:09:40', '2023-11-12 09:09:40'),
(90, 'Petra', 'Vandervort', 'alexys.bergnaum@rippin.com', '1970-05-04', '2023-11-12 09:09:40', '2023-11-12 09:09:40'),
(91, 'Kristina', 'Funk', 'rickey.bergnaum@brakus.net', '1994-06-08', '2023-11-12 09:09:40', '2023-11-12 09:09:40'),
(92, 'Daryl', 'Sipes', 'yasmin83@abshire.com', '2008-08-24', '2023-11-12 09:09:40', '2023-11-12 09:09:40'),
(93, 'Joanne', 'Jacobson', 'egutkowski@greenholt.com', '1979-01-05', '2023-11-12 09:09:40', '2023-11-12 09:09:40'),
(94, 'Ethel', 'Predovic', 'lessie.stehr@howe.com', '1979-07-13', '2023-11-12 09:09:40', '2023-11-12 09:09:40'),
(95, 'Lucinda', 'Franecki', 'blick.jaylen@yahoo.com', '2008-03-24', '2023-11-12 09:09:41', '2023-11-12 09:09:41'),
(96, 'Talon', 'Ankunding', 'rae75@hoeger.com', '1991-11-07', '2023-11-12 09:09:41', '2023-11-12 09:09:41'),
(97, 'Jo', 'Effertz', 'willms.isaiah@yahoo.com', '2013-01-04', '2023-11-12 09:09:41', '2023-11-12 09:09:41'),
(98, 'Freeda', 'Boyle', 'rohan.carleton@haley.org', '1993-05-28', '2023-11-12 09:09:41', '2023-11-12 09:09:41'),
(99, 'Earlene', 'Sauer', 'katherine.gleason@yahoo.com', '1991-08-29', '2023-11-12 09:09:41', '2023-11-12 09:09:41'),
(100, 'Chesley', 'Cartwright', 'lwaelchi@schaefer.com', '1991-07-10', '2023-11-12 09:09:41', '2023-11-12 09:09:41'),
(102, 'Carolyn', 'Conroy', 'kaia14@yahoo.com', '2020-02-10', '2023-11-12 09:38:54', '2023-11-12 09:38:54'),
(103, 'Van', 'Bayer', 'mann.marisa@yahoo.com', '2010-03-15', '2023-11-12 09:38:54', '2023-11-12 09:38:54'),
(104, 'Russel', 'Schimmel', 'spinka.elizabeth@balistreri.net', '1978-03-09', '2023-11-12 09:38:55', '2023-11-12 09:38:55'),
(105, 'Maritza', 'Aufderhar', 'imedhurst@emard.com', '1994-02-16', '2023-11-12 09:38:55', '2023-11-12 09:38:55'),
(106, 'Dedrick', 'Mayert', 'eusebio94@hotmail.com', '2015-05-12', '2023-11-12 09:38:55', '2023-11-12 09:38:55'),
(107, 'Melba', 'Monahan', 'schuster.marcelino@yahoo.com', '2004-04-07', '2023-11-12 09:38:56', '2023-11-12 09:38:56'),
(108, 'Rebeka', 'Ernser', 'glover.karlie@hettinger.biz', '2017-12-07', '2023-11-12 09:38:56', '2023-11-12 09:38:56'),
(109, 'Grayson', 'Botsford', 'twiza@gmail.com', '2012-09-12', '2023-11-12 09:38:56', '2023-11-12 09:38:56'),
(110, 'Mafalda', 'Gutkowski', 'ewald91@yahoo.com', '1975-06-05', '2023-11-12 09:38:56', '2023-11-12 09:38:56'),
(111, 'Theron', 'Kertzmann', 'emcclure@schulist.com', '2017-11-04', '2023-11-12 09:38:57', '2023-11-12 09:38:57'),
(112, 'Jackie', 'Keeling', 'fahey.enoch@windler.com', '1993-12-15', '2023-11-12 09:38:57', '2023-11-12 09:38:57'),
(113, 'Kurtis', 'O\'Conner', 'lucile62@torphy.com', '1996-01-05', '2023-11-12 09:38:57', '2023-11-12 09:38:57'),
(114, 'Vince', 'Reichert', 'celestine85@pfannerstill.com', '2018-07-25', '2023-11-12 09:38:58', '2023-11-12 09:38:58'),
(115, 'Benton', 'Bechtelar', 'rick.gibson@goyette.com', '1982-08-31', '2023-11-12 09:38:58', '2023-11-12 09:38:58'),
(116, 'Jeremie', 'Wyman', 'mleffler@treutel.com', '1996-08-10', '2023-11-12 09:38:58', '2023-11-12 09:38:58'),
(117, 'Delilah', 'Boyle', 'lia.schroeder@rosenbaum.com', '1973-08-05', '2023-11-12 09:38:58', '2023-11-12 09:38:58'),
(118, 'Kylee', 'Sanford', 'rose.reinger@hotmail.com', '2004-08-19', '2023-11-12 09:38:58', '2023-11-12 09:38:58'),
(119, 'Carlo', 'Lueilwitz', 'susan.skiles@hotmail.com', '1988-06-02', '2023-11-12 09:38:58', '2023-11-12 09:38:58'),
(120, 'Tania', 'Cartwright', 'arlo08@gmail.com', '2013-08-31', '2023-11-12 09:38:59', '2023-11-12 09:38:59'),
(121, 'Katrina', 'Yost', 'ariel06@hotmail.com', '1975-07-23', '2023-11-12 09:38:59', '2023-11-12 09:38:59'),
(122, 'Matt', 'King', 'laurence.schneider@hotmail.com', '2023-03-01', '2023-11-12 09:38:59', '2023-11-12 09:38:59'),
(123, 'Jonathon', 'Keebler', 'gaylord.fay@hotmail.com', '2012-05-15', '2023-11-12 09:38:59', '2023-11-12 09:38:59'),
(124, 'Steve', 'Considine', 'xreynolds@krajcik.org', '1978-08-10', '2023-11-12 09:38:59', '2023-11-12 09:38:59'),
(125, 'Yesenia', 'Walsh', 'breana19@bergnaum.com', '2009-04-27', '2023-11-12 09:38:59', '2023-11-12 09:38:59'),
(126, 'Nora', 'Quigley', 'vrunte@toy.biz', '1978-03-19', '2023-11-12 09:38:59', '2023-11-12 09:38:59'),
(127, 'Ayden', 'Kihn', 'ehuel@hotmail.com', '1996-08-20', '2023-11-12 09:38:59', '2023-11-12 09:38:59'),
(128, 'Genoveva', 'Corkery', 'paolo.feil@gaylord.com', '1994-10-22', '2023-11-12 09:39:00', '2023-11-12 09:39:00'),
(129, 'Ivah', 'McCullough', 'bbernier@hotmail.com', '1988-04-28', '2023-11-12 09:39:00', '2023-11-12 09:39:00'),
(130, 'Santiago', 'Lowe', 'schoen.jaleel@gmail.com', '1995-02-12', '2023-11-12 09:39:00', '2023-11-12 09:39:00'),
(131, 'Brionna', 'Kiehn', 'rmueller@gmail.com', '1992-08-19', '2023-11-12 09:39:00', '2023-11-12 09:39:00'),
(132, 'Simone', 'Lowe', 'tre.kutch@trantow.com', '2001-06-07', '2023-11-12 09:39:00', '2023-11-12 09:39:00'),
(133, 'Eusebio', 'Streich', 'aurore.cormier@gmail.com', '2013-12-22', '2023-11-12 09:39:00', '2023-11-12 09:39:00'),
(134, 'Elvie', 'Lind', 'demarco.feil@hotmail.com', '1983-07-09', '2023-11-12 09:39:00', '2023-11-12 09:39:00'),
(135, 'Lavonne', 'Swift', 'rebeca01@gmail.com', '1995-09-03', '2023-11-12 09:39:01', '2023-11-12 09:39:01'),
(136, 'Denis', 'Berge', 'felicita04@yahoo.com', '1996-06-12', '2023-11-12 09:39:01', '2023-11-12 09:39:01'),
(137, 'Mireille', 'Hirthe', 'alisha.becker@hotmail.com', '1998-08-09', '2023-11-12 09:39:01', '2023-11-12 09:39:01'),
(138, 'Allison', 'Wilkinson', 'korey.monahan@gmail.com', '2012-11-26', '2023-11-12 09:39:01', '2023-11-12 09:39:01'),
(139, 'Ahmad', 'Schinner', 'mills.emiliano@yahoo.com', '1977-05-08', '2023-11-12 09:39:01', '2023-11-12 09:39:01'),
(140, 'Delphine', 'Baumbach', 'wallace.treutel@gmail.com', '1992-09-24', '2023-11-12 09:39:01', '2023-11-12 09:39:01'),
(141, 'Michele', 'Baumbach', 'kian85@hoeger.com', '1990-11-06', '2023-11-12 09:39:02', '2023-11-12 09:39:02'),
(142, 'Raoul', 'Spencer', 'kaitlin46@yahoo.com', '2017-03-08', '2023-11-12 09:39:02', '2023-11-12 09:39:02'),
(143, 'Aimee', 'Bernier', 'cloyd80@gmail.com', '1989-05-20', '2023-11-12 09:39:02', '2023-11-12 09:39:02'),
(144, 'Cindy', 'Boyle', 'payton.klein@yahoo.com', '1988-06-28', '2023-11-12 09:39:02', '2023-11-12 09:39:02'),
(145, 'Wilfred', 'Hermann', 'tressa.daniel@gmail.com', '2010-07-18', '2023-11-12 09:39:02', '2023-11-12 09:39:02'),
(146, 'Vergie', 'Kris', 'ierdman@wyman.com', '1979-03-08', '2023-11-12 09:39:02', '2023-11-12 09:39:02'),
(147, 'Monserrate', 'Schmitt', 'katharina.hirthe@haag.org', '1995-03-03', '2023-11-12 09:39:02', '2023-11-12 09:39:02'),
(148, 'Marianna', 'Considine', 'sferry@lebsack.com', '2009-03-13', '2023-11-12 09:39:03', '2023-11-12 09:39:03'),
(149, 'Shane', 'Bins', 'filomena06@yahoo.com', '1970-04-09', '2023-11-12 09:39:03', '2023-11-12 09:39:03'),
(150, 'Dannie', 'Durgan', 'wuckert.shaniya@hotmail.com', '1973-02-18', '2023-11-12 09:39:03', '2023-11-12 09:39:03'),
(151, 'Sally', 'Heaney', 'celine96@tillman.biz', '1984-08-09', '2023-11-12 09:39:03', '2023-11-12 09:39:03'),
(152, 'Amos', 'Kuhlman', 'ernestina.hettinger@rempel.org', '2021-03-11', '2023-11-12 09:39:03', '2023-11-12 09:39:03'),
(153, 'Alessandro', 'Spinka', 'price.kuvalis@yahoo.com', '1985-06-15', '2023-11-12 09:39:03', '2023-11-12 09:39:03'),
(154, 'Mittie', 'Herman', 'blick.arthur@yahoo.com', '2009-01-20', '2023-11-12 09:39:03', '2023-11-12 09:39:03'),
(155, 'Olin', 'Kozey', 'stewart.oconnell@yahoo.com', '2016-08-21', '2023-11-12 09:39:03', '2023-11-12 09:39:03'),
(156, 'Doug', 'Lubowitz', 'tgerhold@mcdermott.com', '1974-01-29', '2023-11-12 09:39:04', '2023-11-12 09:39:04'),
(157, 'Josephine', 'VonRueden', 'thiel.shania@corkery.com', '1978-12-12', '2023-11-12 09:39:04', '2023-11-12 09:39:04'),
(158, 'Della', 'Sauer', 'ilene.christiansen@hotmail.com', '2007-11-04', '2023-11-12 09:39:04', '2023-11-12 09:39:04'),
(159, 'Evans', 'Oberbrunner', 'ugoldner@hotmail.com', '2010-12-10', '2023-11-12 09:39:04', '2023-11-12 09:39:04'),
(160, 'Brian', 'Farrell', 'wolf.luella@gmail.com', '1984-01-25', '2023-11-12 09:39:04', '2023-11-12 09:39:04'),
(161, 'Rubie', 'Bins', 'schaden.sincere@rohan.com', '1996-01-05', '2023-11-12 09:39:04', '2023-11-12 09:39:04'),
(162, 'Celine', 'Bergnaum', 'candice84@heaney.com', '1973-10-10', '2023-11-12 09:39:04', '2023-11-12 09:39:04'),
(163, 'Garnett', 'Schneider', 'aubree.kuhn@hotmail.com', '2006-04-30', '2023-11-12 09:39:05', '2023-11-12 09:39:05'),
(164, 'Dashawn', 'Yundt', 'brain.mcglynn@hotmail.com', '1979-04-08', '2023-11-12 09:39:05', '2023-11-12 09:39:05'),
(165, 'Jazmyn', 'Schulist', 'jeffry.fay@reichert.com', '2006-06-26', '2023-11-12 09:39:05', '2023-11-12 09:39:05'),
(166, 'Preston', 'Bradtke', 'carroll.rae@jacobson.info', '2009-02-26', '2023-11-12 09:39:05', '2023-11-12 09:39:05'),
(167, 'Damian', 'Dare', 'leffertz@gmail.com', '2005-04-26', '2023-11-12 09:39:05', '2023-11-12 09:39:05'),
(168, 'Albin', 'Heaney', 'vkoepp@hotmail.com', '2002-05-16', '2023-11-12 09:39:05', '2023-11-12 09:39:05'),
(169, 'Camron', 'Padberg', 'earl.johnson@becker.info', '1981-08-17', '2023-11-12 09:39:05', '2023-11-12 09:39:05'),
(170, 'Rodrick', 'Harvey', 'delphia.hoppe@yahoo.com', '1985-06-14', '2023-11-12 09:39:06', '2023-11-12 09:39:06'),
(171, 'Ludie', 'Runte', 'boyer.lincoln@hotmail.com', '1998-03-13', '2023-11-12 09:39:06', '2023-11-12 09:39:06'),
(172, 'Mona', 'Schulist', 'kebert@yahoo.com', '1997-09-24', '2023-11-12 09:39:06', '2023-11-12 09:39:06'),
(173, 'Lillian', 'Schmeler', 'bosco.justine@weissnat.biz', '1996-12-17', '2023-11-12 09:39:06', '2023-11-12 09:39:06'),
(174, 'Courtney', 'Johnston', 'breana.heller@gmail.com', '1983-03-08', '2023-11-12 09:39:06', '2023-11-12 09:39:06'),
(175, 'Meta', 'Smith', 'kuhic.lucy@yahoo.com', '1989-09-05', '2023-11-12 09:39:06', '2023-11-12 09:39:06'),
(176, 'Holden', 'Legros', 'stehr.michael@okon.com', '1974-01-05', '2023-11-12 09:39:06', '2023-11-12 09:39:06'),
(177, 'Jerald', 'Beatty', 'jerde.rose@yahoo.com', '1975-03-05', '2023-11-12 09:39:07', '2023-11-12 09:39:07'),
(178, 'Jamaal', 'Collins', 'rebecca54@bartell.com', '1985-05-27', '2023-11-12 09:39:07', '2023-11-12 09:39:07'),
(179, 'Jamey', 'Runolfsson', 'stephanie68@gmail.com', '1990-01-18', '2023-11-12 09:39:07', '2023-11-12 09:39:07'),
(180, 'Asa', 'Murray', 'quigley.elza@yahoo.com', '2009-05-15', '2023-11-12 09:39:07', '2023-11-12 09:39:07'),
(181, 'Freda', 'Reynolds', 'zbernier@wolff.biz', '1986-09-09', '2023-11-12 09:39:07', '2023-11-12 09:39:07'),
(182, 'Paul', 'Collins', 'konopelski.luis@hotmail.com', '2003-12-23', '2023-11-12 09:39:08', '2023-11-12 09:39:08'),
(183, 'Prudence', 'Labadie', 'sunny.lehner@gmail.com', '1998-11-01', '2023-11-12 09:39:08', '2023-11-12 09:39:08'),
(184, 'Cullen', 'Wunsch', 'tbrakus@mcglynn.com', '2007-10-18', '2023-11-12 09:39:09', '2023-11-12 09:39:09'),
(185, 'Malinda', 'Wisoky', 'bernice64@yahoo.com', '2011-06-18', '2023-11-12 09:39:09', '2023-11-12 09:39:09'),
(186, 'Jayme', 'Tillman', 'robbie.mraz@hotmail.com', '2017-09-01', '2023-11-12 09:39:10', '2023-11-12 09:39:10'),
(187, 'Everett', 'Hill', 'nsenger@greenholt.org', '1980-11-10', '2023-11-12 09:39:10', '2023-11-12 09:39:10'),
(188, 'Rick', 'Connelly', 'jo.hodkiewicz@hotmail.com', '2012-11-05', '2023-11-12 09:39:11', '2023-11-12 09:39:11'),
(189, 'Sandy', 'Marquardt', 'qleannon@okeefe.com', '1978-11-24', '2023-11-12 09:39:11', '2023-11-12 09:39:11'),
(190, 'Norris', 'Russel', 'fisher.lenore@hotmail.com', '2008-02-04', '2023-11-12 09:39:11', '2023-11-12 09:39:11'),
(191, 'Jaunita', 'Runte', 'wanderson@mueller.com', '1986-01-31', '2023-11-12 09:39:11', '2023-11-12 09:39:11'),
(192, 'Bernita', 'Rippin', 'tatum41@gmail.com', '2020-11-03', '2023-11-12 09:39:11', '2023-11-12 09:39:11'),
(193, 'Micheal', 'Schoen', 'dana.nicolas@gmail.com', '1997-07-14', '2023-11-12 09:39:11', '2023-11-12 09:39:11'),
(194, 'Kristina', 'Rodriguez', 'tatyana.bailey@gmail.com', '1982-08-30', '2023-11-12 09:39:12', '2023-11-12 09:39:12'),
(195, 'Ansel', 'Armstrong', 'fay.charlene@bogan.com', '1977-05-07', '2023-11-12 09:39:12', '2023-11-12 09:39:12'),
(196, 'Ron', 'Rosenbaum', 'reva90@raynor.info', '1987-02-18', '2023-11-12 09:39:12', '2023-11-12 09:39:12'),
(197, 'King', 'Grant', 'fwillms@hotmail.com', '1998-01-24', '2023-11-12 09:39:12', '2023-11-12 09:39:12'),
(198, 'Ilene', 'Langworth', 'cory72@moen.net', '2010-09-20', '2023-11-12 09:39:13', '2023-11-12 09:39:13'),
(199, 'Genoveva', 'Kunde', 'ofeest@bode.com', '2009-10-08', '2023-11-12 09:39:13', '2023-11-12 09:39:13'),
(200, 'Gregg', 'Feil', 'wgibson@hotmail.com', '1982-04-04', '2023-11-12 09:39:13', '2023-11-12 09:39:13'),
(201, 'Lenore', 'Lesch', 'stokes.diana@osinski.com', '1998-09-30', '2023-11-12 09:39:13', '2023-11-12 09:39:13');

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
