-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-09-2022 a las 23:58:29
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nacitdsu_entradas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company_data`
--

CREATE TABLE `company_data` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `jobposition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `companyemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `idno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `startdate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateregularized` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `reason` varchar(455) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `leaveprivilege` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `company_data`
--

INSERT INTO `company_data` (`id`, `reference`, `company`, `department`, `jobposition`, `companyemail`, `idno`, `startdate`, `dateregularized`, `reason`, `leaveprivilege`) VALUES
(1, 1, '', '', '', '', '001122', '2020-02-01', '2020-02-01', '', NULL),
(2, 2, '', '', '', '', '001133', '2020-02-01', '2020-02-01', '', NULL),
(3, 3, '', '', '', '', '5479025', '2019-10-08', '1969-12-31', '', NULL),
(4, 4, 'TESTING INC', 'RECURSOS HUMANOS', '', '', '003', '2022-09-04', '2022-09-06', '', NULL),
(5, 5, 'TESTING INC', '', '', '', '1207765353', '1969-12-31', '1969-12-31', '', NULL),
(6, 6, 'TESTING INC', 'RECURSOS HUMANOS', '', 'carlos@gmail.com', '123456789', '1969-12-31', '1969-12-31', '', NULL),
(7, 7, 'TESTING INC', 'RECURSOS HUMANOS', '', 'admin@nacionalcode.com', '1155', '2022-09-01', '2022-09-08', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_company`
--

CREATE TABLE `form_company` (
  `id` int(11) UNSIGNED NOT NULL,
  `company` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `form_company`
--

INSERT INTO `form_company` (`id`, `company`) VALUES
(8, 'TESTING INC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_department`
--

CREATE TABLE `form_department` (
  `id` int(11) UNSIGNED NOT NULL,
  `department` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `form_department`
--

INSERT INTO `form_department` (`id`, `department`) VALUES
(5, 'RECURSOS HUMANOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_jobtitle`
--

CREATE TABLE `form_jobtitle` (
  `id` int(11) UNSIGNED NOT NULL,
  `jobtitle` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dept_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_leavegroup`
--

CREATE TABLE `form_leavegroup` (
  `id` int(11) UNSIGNED NOT NULL,
  `leavegroup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leaveprivileges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_leavetype`
--

CREATE TABLE `form_leavetype` (
  `id` int(11) UNSIGNED NOT NULL,
  `leavetype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percalendar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `form_leavetype`
--

INSERT INTO `form_leavetype` (`id`, `leavetype`, `limit`, `percalendar`) VALUES
(3, 'VACACIONES 15', '15', 'Monthly');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `people`
--

CREATE TABLE `people` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `emailaddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `civilstatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobileno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nationalid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthplace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeaddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `employmentstatus` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `employmenttype` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `people`
--

INSERT INTO `people` (`id`, `firstname`, `mi`, `lastname`, `age`, `gender`, `emailaddress`, `civilstatus`, `height`, `weight`, `mobileno`, `birthday`, `nationalid`, `birthplace`, `homeaddress`, `employmentstatus`, `employmenttype`, `avatar`) VALUES
(1, 'MANAGER', '', 'DEMO', NULL, '', 'manager@example.com', '', NULL, NULL, NULL, '2020-01-03', '', '', '', 'Active', NULL, ''),
(2, 'DEMO', '', 'EMPLOYEE', NULL, '', 'employee@example.com', '', NULL, NULL, NULL, '2020-01-03', '', '', '', 'Active', NULL, ''),
(3, 'RENZO', '', 'GARAY', 28, 'MALE', 'rgaray@gmail.com', 'MARRIED', '175', '80', '0992737383', '1993-09-22', '5479025', 'ASUNCIÓN', 'FORTIN GONDRA', 'Active', 'Trainee', ''),
(4, 'NORBERT', '', 'ALMONT', NULL, 'MALE', 'admin@nacionalcode.com', 'SINGLE', '1', '0', NULL, '2022-09-04', '', '', '', 'Active', 'Regular', ''),
(5, 'EDER', 'LEANDRO', 'VORNEJO SVILA', 28, 'MALE', 'elcornej94@gmail.com', 'SINGLE', '162', '100', '0979041715', '1994-08-03', '1207765353', 'BABAHOYO', 'CIUDADELA VALLE VERDE 2', 'Active', NULL, ''),
(6, 'CARLOS', 'FELIPE', 'MAGALLANES', NULL, 'MALE', 'carlos@gmail.com', 'SINGLE', '168', '68', '12345789', '1969-12-31', '', '', '', 'Active', NULL, ''),
(7, 'BETO', 'JHON', 'CUEVAS', 21, 'MALE', 'admin@nacionalcode.com', 'SINGLE', '177', '70', '+57 557777899', '1992-02-19', '1111222223333', 'PERU', 'UNITD STATES', 'Active', 'Regular', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `people_attendance`
--

CREATE TABLE `people_attendance` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date` date DEFAULT NULL,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `timein` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalhours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status_timein` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status_timeout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `people_attendance`
--

INSERT INTO `people_attendance` (`id`, `reference`, `idno`, `date`, `employee`, `timein`, `timeout`, `totalhours`, `status_timein`, `status_timeout`, `reason`, `comment`, `created_at`) VALUES
(1, 3, '5479025', '2022-08-29', 'GARAY, RENZO ', '2022-08-29 08:47:05 AM', '2022-09-02 09:05:59 AM', '96.18', 'Ok', 'Ok', '', '', '2022-08-29 12:47:05'),
(2, 3, '5479025', '2022-08-26', 'GARAY, RENZO ', '2022-08-26 07:00:00 AM', '2022-09-07 10:59:24 PM', '303.59', 'Ok', 'Ok', '', '', '2022-08-29 13:00:02'),
(3, 1, '001122', '2022-08-12', 'DEMO, MANAGER ', '2022-08-12 09:17:00 AM', '2022-08-12 09:18:00 PM', '12.1', 'Ok', 'Ok', '', '', '2022-08-29 15:18:11'),
(4, 5, '1207765353', '2022-09-05', 'VORNEJO SVILA, EDER LEANDRO', '2022-09-05 03:20:11 PM', '2022-09-05 03:21:22 PM', '0.1', 'Ok', 'Ok', '', 'ENTRADA', '2022-09-05 19:20:11'),
(5, 6, '123456789', '2022-09-06', 'MAGALLANES, CARLOS FELIPE', '2022-09-06 09:00:00 AM', '2022-09-06 03:00:00 AM', '6.0', 'Ok', 'Ok', 'm', '', '2022-09-06 14:37:22'),
(6, 4, '003', '2022-09-07', 'ALMONT, NORBERT ', '2022-09-07 10:59:15 PM', '2022-09-08 08:55:58 AM', '9.56', 'Late In', 'Early Out', '', 'HOLA', '2022-09-08 02:59:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `people_leaves`
--

CREATE TABLE `people_leaves` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `typeid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `leavefrom` date DEFAULT NULL,
  `leaveto` date DEFAULT NULL,
  `returndate` date DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `people_schedules`
--

CREATE TABLE `people_schedules` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intime` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outime` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datefrom` date DEFAULT NULL,
  `dateto` date DEFAULT NULL,
  `hours` int(11) DEFAULT NULL,
  `restday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archive` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `people_schedules`
--

INSERT INTO `people_schedules` (`id`, `reference`, `idno`, `employee`, `intime`, `outime`, `datefrom`, `dateto`, `hours`, `restday`, `archive`) VALUES
(2, 4, '003', 'ALMONT, NORBERT', '09:00 AM', '06:00 PM', '2022-09-01', '2022-09-30', 45, 'Monday, Tuesday, Wednesday, Thursday, Friday', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `report_views`
--

CREATE TABLE `report_views` (
  `id` int(11) UNSIGNED NOT NULL,
  `report_id` int(11) DEFAULT NULL,
  `last_viewed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `report_views`
--

INSERT INTO `report_views` (`id`, `report_id`, `last_viewed`, `title`) VALUES
(1, 1, 'Sep, 05 2022', 'Employee List Report'),
(2, 2, 'Sep, 06 2022', 'Employee Attendance Report'),
(3, 3, 'Sep, 05 2022', 'Employee Leaves Report'),
(4, 4, 'Sep, 05 2022', 'Employee Schedule Report'),
(5, 5, 'Sep, 08 2022', 'Organizational Profile'),
(6, 6, 'Sep, 08 2022', 'User Accounts Report'),
(7, 7, 'Sep, 05 2022', 'Employee Birthdays');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clock_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rfid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_format` int(11) DEFAULT NULL,
  `iprestriction` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opt` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `country`, `timezone`, `clock_comment`, `rfid`, `time_format`, `iprestriction`, `opt`) VALUES
(1, 'Peru', 'America/Toronto', 'on', 'on', 2, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  `acc_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `reference`, `idno`, `name`, `email`, `role_id`, `acc_type`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, '001122', 'DEMO, MANAGER', 'admin@mundialcode.com', 1, 2, 1, '$2y$10$.zKb0b0vFKVhlFcokNNgo.A2htTOhR3OpGBBIKOx2ViAH30fQeJsu', 'XsoIKfdeNnDDuH01SFcP7cWHVQ8W6JrekLV8gbOSbOMjXrFRvFuXtxD3UWfL', '2018-10-31 12:10:04', '2018-10-31 12:10:04'),
(2, 2, '001133', 'DEMO, EMPLOYEE', 'admin@mundialcode.net', 2, 1, 1, '$2y$10$.zKb0b0vFKVhlFcokNNgo.A2htTOhR3OpGBBIKOx2ViAH30fQeJsu', '5z6i9vuSZZDo9XNDJmyS4CJYiMt9CbcdX7Q1sfnBD7790Id6oD086pNSU4Ef', '2018-12-21 05:20:18', '2018-12-21 05:20:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_permissions`
--

CREATE TABLE `users_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `perm_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users_permissions`
--

INSERT INTO `users_permissions` (`id`, `role_id`, `perm_id`) VALUES
(1798, 1, 1),
(1799, 1, 2),
(1800, 1, 22),
(1801, 1, 21),
(1802, 1, 23),
(1803, 1, 24),
(1804, 1, 25),
(1805, 1, 3),
(1806, 1, 31),
(1807, 1, 32),
(1808, 1, 4),
(1809, 1, 41),
(1810, 1, 42),
(1811, 1, 43),
(1812, 1, 44),
(1813, 1, 5),
(1814, 1, 52),
(1815, 1, 53),
(1816, 1, 9),
(1817, 1, 91),
(1818, 1, 7),
(1819, 1, 8),
(1820, 1, 81),
(1821, 1, 82),
(1822, 1, 83),
(1823, 1, 10),
(1824, 1, 101),
(1825, 1, 102),
(1826, 1, 103),
(1827, 1, 104),
(1828, 1, 11),
(1829, 1, 111),
(1830, 1, 112),
(1831, 1, 12),
(1832, 1, 121),
(1833, 1, 122),
(1834, 1, 13),
(1835, 1, 131),
(1836, 1, 132),
(1837, 1, 14),
(1838, 1, 141),
(1839, 1, 142),
(1840, 1, 15),
(1841, 1, 151),
(1842, 1, 152),
(1843, 1, 153);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_roles`
--

CREATE TABLE `users_roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users_roles`
--

INSERT INTO `users_roles` (`id`, `role_name`, `state`) VALUES
(1, 'MANAGER', 'Active'),
(2, 'EMPLOYEE', 'Active');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `company_data`
--
ALTER TABLE `company_data`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `form_company`
--
ALTER TABLE `form_company`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `form_department`
--
ALTER TABLE `form_department`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `form_jobtitle`
--
ALTER TABLE `form_jobtitle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `form_leavegroup`
--
ALTER TABLE `form_leavegroup`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `form_leavetype`
--
ALTER TABLE `form_leavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `people_attendance`
--
ALTER TABLE `people_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `people_leaves`
--
ALTER TABLE `people_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `people_schedules`
--
ALTER TABLE `people_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `report_views`
--
ALTER TABLE `report_views`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `company_data`
--
ALTER TABLE `company_data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `form_company`
--
ALTER TABLE `form_company`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `form_department`
--
ALTER TABLE `form_department`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `form_jobtitle`
--
ALTER TABLE `form_jobtitle`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `form_leavegroup`
--
ALTER TABLE `form_leavegroup`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `form_leavetype`
--
ALTER TABLE `form_leavetype`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `people`
--
ALTER TABLE `people`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `people_attendance`
--
ALTER TABLE `people_attendance`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `people_leaves`
--
ALTER TABLE `people_leaves`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `people_schedules`
--
ALTER TABLE `people_schedules`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `report_views`
--
ALTER TABLE `report_views`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users_permissions`
--
ALTER TABLE `users_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1844;

--
-- AUTO_INCREMENT de la tabla `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
