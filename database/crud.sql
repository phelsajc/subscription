-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2023 at 04:32 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_scheduled`
--

CREATE TABLE `failed_scheduled` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `schedule` date DEFAULT NULL,
  `created_dt` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `doctor` int(30) DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `failed_scheduled`
--

INSERT INTO `failed_scheduled` (`id`, `patient_id`, `schedule`, `created_dt`, `created_by`, `doctor`, `status`) VALUES
(1, 156, '2023-02-27', '2023-06-15 00:00:00', 72, 10, 'Pava, Helen, Demetillo HAS DUPLICATE SCHEDULE 2/27/2023'),
(2, NULL, '2023-05-05', '2023-06-19 13:26:00', 72, NULL, 'DELETE SESSION OF Mombay,Laarni,Encila on 2023-05-05'),
(3, NULL, '2023-05-29', '2023-06-19 14:14:00', 72, NULL, 'DELETE SESSION OF Pervandos, Janelyn, Zerrudo on 2023-05-29'),
(4, NULL, '2023-05-05', '2023-06-19 14:44:00', 72, NULL, 'DELETE SESSION OF Bernesto, Edwin, Galagpat on 2023-05-05'),
(5, NULL, '2023-05-29', '2023-06-19 15:27:00', 72, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2023-05-29'),
(6, NULL, '2023-05-29', '2023-06-19 15:27:00', 72, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2023-05-29'),
(7, NULL, '2023-05-29', '2023-06-19 15:28:00', 72, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2023-05-29'),
(8, NULL, '2023-05-29', '2023-06-19 15:28:00', 72, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2023-05-29'),
(9, NULL, '2023-05-29', '2023-06-19 15:28:00', 72, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2023-05-29'),
(10, NULL, '2023-05-29', '2023-06-19 15:29:00', 72, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2023-05-29'),
(11, NULL, '2023-05-29', '2023-06-19 15:29:00', 72, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2023-05-29'),
(12, NULL, '2023-05-29', '2023-06-19 15:30:00', 72, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2023-05-29'),
(13, NULL, '2023-05-29', '2023-06-19 15:30:00', 72, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2023-05-29'),
(14, NULL, '2023-05-29', '2023-06-19 15:30:00', 72, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2023-05-29'),
(15, NULL, '2023-05-29', '2023-06-19 15:31:00', 72, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2023-05-29'),
(16, NULL, '2023-05-17', '2023-06-19 15:34:00', 72, NULL, 'DELETE SESSION OF Torrevilla, Ma. Consuelo, Membela on 2023-05-17'),
(17, NULL, '2023-05-26', '2023-06-19 15:52:00', 72, NULL, 'DELETE SESSION OF Jaranilla, Julie Ann, Gallego on 2023-05-26'),
(18, NULL, '2023-05-03', '2023-06-19 15:57:00', 72, NULL, 'DELETE SESSION OF Salve, Felicidad, Dignadice on 2023-05-03'),
(19, NULL, '2023-05-05', '2023-06-20 09:58:00', 72, NULL, 'DELETE SESSION OF Francisco,Noel, Esteva on 2023-05-05'),
(20, NULL, '2023-05-16', '2023-06-20 10:20:00', 72, NULL, 'DELETE SESSION OF Mombay,Laarni,Encila on 2023-05-16'),
(21, NULL, '2023-05-15', '2023-06-20 10:23:00', 72, NULL, 'DELETE SESSION OF Cañete, Ricardo, Abella on 2023-05-15'),
(22, NULL, '2023-05-26', '2023-06-20 10:43:00', 72, NULL, 'DELETE SESSION OF Motin, Elbert, Sampong on 2023-05-26'),
(23, NULL, '2023-04-27', '2023-06-23 11:48:00', 72, NULL, 'DELETE SESSION OF Dizon, Anne Kleinne, suizo on 2023-04-27'),
(24, NULL, '2023-04-14', '2023-06-23 12:53:00', 72, NULL, 'DELETE SESSION OF Maalihan, Anthony, Dasal on 2023-04-14'),
(25, NULL, '2023-04-11', '2023-06-23 13:18:00', 72, NULL, 'DELETE SESSION OF Seballos, John Rey, Porras on 2023-04-11'),
(26, NULL, '2023-04-07', '2023-06-26 12:59:00', 72, NULL, 'DELETE SESSION OF Geronimo, Rosenie, Albarena on 2023-04-07'),
(27, NULL, '2023-04-24', '2023-06-26 13:09:00', 72, NULL, 'DELETE SESSION OF Capanas, Angeles, Buenafe on 2023-04-24'),
(28, NULL, '2023-04-18', '2023-06-26 13:12:00', 72, NULL, 'DELETE SESSION OF Demisana, Girlie, Casiple on 2023-04-18'),
(29, NULL, '2023-04-29', '2023-06-26 13:41:00', 72, NULL, 'DELETE SESSION OF Antipuesto, Fernando, Asildeque on 2023-04-29'),
(30, NULL, '2023-04-29', '2023-06-26 13:49:00', 72, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-04-29'),
(31, NULL, '2023-06-28', '2023-06-28 09:30:00', 3, NULL, 'DELETE SESSION OF Bonda, Melita, Verino on 2023-06-28'),
(32, NULL, '2023-06-28', '2023-06-28 09:30:00', 3, NULL, 'DELETE SESSION OF Antipuesto, Fernando, Asildeque on 2023-06-28'),
(33, NULL, '2023-06-29', '2023-06-28 09:31:00', 3, NULL, 'DELETE SESSION OF Antipuesto, Fernando, Asildeque on 2023-06-29'),
(34, NULL, '2023-04-04', '2023-06-29 14:01:00', 72, NULL, 'DELETE SESSION OF Barredo, Vincent, Borlado on 2023-04-04'),
(35, NULL, '2023-04-27', '2023-06-29 14:50:00', 72, NULL, 'DELETE SESSION OF David Sr., Rolando, Arigo on 2023-04-27'),
(36, NULL, '2023-05-27', '2023-06-29 14:50:00', 72, NULL, 'DELETE SESSION OF David Sr., Rolando, Arigo on 2023-05-27'),
(37, NULL, '2023-06-12', '2023-06-29 15:18:00', 72, NULL, 'DELETE SESSION OF Calingasan, Charlie Magne, Jamandron on 2023-06-12'),
(38, NULL, '2023-06-14', '2023-06-29 15:19:00', 72, NULL, 'DELETE SESSION OF Subong, Roberto, Ballados on 2023-06-14'),
(39, NULL, '2023-05-30', '2023-06-29 16:08:00', 72, NULL, 'DELETE SESSION OF Marañon, Pedro Pitt, Trinidad on 2023-05-30'),
(40, NULL, '2023-05-02', '2023-06-29 16:08:00', 72, NULL, 'DELETE SESSION OF Marañon, Pedro Pitt, Trinidad on 2023-05-02'),
(41, NULL, '2023-05-05', '2023-06-29 16:09:00', 72, NULL, 'DELETE SESSION OF Marañon, Pedro Pitt, Trinidad on 2023-05-05'),
(42, NULL, '2023-05-16', '2023-06-29 16:09:00', 72, NULL, 'DELETE SESSION OF Marañon, Pedro Pitt, Trinidad on 2023-05-16'),
(43, NULL, '2023-05-19', '2023-06-29 16:09:00', 72, NULL, 'DELETE SESSION OF Marañon, Pedro Pitt, Trinidad on 2023-05-19'),
(44, NULL, '2023-05-23', '2023-06-29 16:09:00', 72, NULL, 'DELETE SESSION OF Marañon, Pedro Pitt, Trinidad on 2023-05-23'),
(45, NULL, '2023-05-26', '2023-06-29 16:09:00', 72, NULL, 'DELETE SESSION OF Marañon, Pedro Pitt, Trinidad on 2023-05-26'),
(46, NULL, '2023-04-29', '2023-06-30 11:09:00', 72, NULL, 'DELETE SESSION OF Salve, Felicidad, Dignadice on 2023-04-29'),
(47, NULL, '2023-04-28', '2023-06-30 11:12:00', 72, NULL, 'DELETE SESSION OF Camarines, Merlyn, Gregorio on 2023-04-28'),
(48, NULL, '2023-04-29', '2023-06-30 11:15:00', 72, NULL, 'DELETE SESSION OF Cuenca, Tessie, Sanico on 2023-04-29'),
(49, NULL, '2023-04-29', '2023-06-30 11:21:00', 72, NULL, 'DELETE SESSION OF De-Ala, Jocelyn, Ginete on 2023-04-29'),
(50, NULL, '2023-04-28', '2023-06-30 11:39:00', 72, NULL, 'DELETE SESSION OF Lucero, Andre, Piccio on 2023-04-28'),
(51, NULL, '2023-04-16', '2023-07-04 13:48:00', 72, NULL, 'DELETE SESSION OF Muzones, Ramon, Nagallo on 2023-04-16'),
(52, NULL, '2023-05-02', '2023-07-04 14:19:00', 72, NULL, 'DELETE SESSION OF Muzones, Ramon, Nagallo on 2023-05-02'),
(53, NULL, '2023-05-05', '2023-07-04 14:19:00', 72, NULL, 'DELETE SESSION OF Muzones, Ramon, Nagallo on 2023-05-05'),
(54, NULL, '2023-05-09', '2023-07-04 14:19:00', 72, NULL, 'DELETE SESSION OF Muzones, Ramon, Nagallo on 2023-05-09'),
(55, NULL, '2023-05-12', '2023-07-04 14:19:00', 72, NULL, 'DELETE SESSION OF Muzones, Ramon, Nagallo on 2023-05-12'),
(56, NULL, '2023-05-16', '2023-07-04 14:19:00', 72, NULL, 'DELETE SESSION OF Muzones, Ramon, Nagallo on 2023-05-16'),
(57, NULL, '2023-05-19', '2023-07-04 14:20:00', 72, NULL, 'DELETE SESSION OF Muzones, Ramon, Nagallo on 2023-05-19'),
(58, NULL, '2023-05-23', '2023-07-04 14:20:00', 72, NULL, 'DELETE SESSION OF Muzones, Ramon, Nagallo on 2023-05-23'),
(59, NULL, '2023-05-26', '2023-07-04 14:20:00', 72, NULL, 'DELETE SESSION OF Muzones, Ramon, Nagallo on 2023-05-26'),
(60, NULL, '2023-05-30', '2023-07-04 14:20:00', 72, NULL, 'DELETE SESSION OF Muzones, Ramon, Nagallo on 2023-05-30'),
(61, NULL, '2023-04-20', '2023-07-04 14:43:00', 72, NULL, 'DELETE SESSION OF Cabiles, Jane Jamil, Remorosa on 2023-04-20'),
(62, NULL, '2023-05-22', '2023-07-05 14:08:00', 72, NULL, 'DELETE SESSION OF Villasor, Hernan, Pendon on 2023-05-22'),
(63, NULL, '2023-05-13', '2023-07-05 14:09:00', 72, NULL, 'DELETE SESSION OF Nieron, Elma, Ledesma on 2023-05-13'),
(64, NULL, '2023-05-19', '2023-07-05 14:20:00', 72, NULL, 'DELETE SESSION OF Pineda,Wennie,Wong on 2023-05-19'),
(65, NULL, '2022-04-22', '2023-07-05 15:32:00', 73, NULL, 'DELETE SESSION OF Mahilum,Edbert,Jamora on 2022-04-22'),
(66, NULL, '2022-04-29', '2023-07-05 15:33:00', 73, NULL, 'DELETE SESSION OF Mahilum,Edbert,Jamora on 2022-04-29'),
(67, NULL, '2022-04-22', '2023-07-05 15:34:00', 73, NULL, 'DELETE SESSION OF Mahilum,Edbert,Jamora on 2022-04-22'),
(68, NULL, '2022-04-28', '2023-07-05 15:40:00', 73, NULL, 'DELETE SESSION OF Albino,Lucita,Locsin on 2022-04-28'),
(69, NULL, '2022-04-25', '2023-07-05 15:41:00', 73, NULL, 'DELETE SESSION OF Albino,Lucita,Locsin on 2022-04-25'),
(70, NULL, '2022-04-21', '2023-07-05 15:41:00', 73, NULL, 'DELETE SESSION OF Albino,Lucita,Locsin on 2022-04-21'),
(71, NULL, '2022-04-18', '2023-07-05 15:41:00', 73, NULL, 'DELETE SESSION OF Albino,Lucita,Locsin on 2022-04-18'),
(72, NULL, '2022-04-13', '2023-07-05 15:48:00', 72, NULL, 'DELETE SESSION OF Locsin,Salvador,Guinson on 2022-04-13'),
(73, NULL, '2023-04-13', '2023-07-06 09:38:00', 72, NULL, 'DELETE SESSION OF Locsin,Salvador,Guinson on 2023-04-13'),
(74, NULL, '2022-04-22', '2023-07-06 10:36:00', 73, NULL, 'DELETE SESSION OF Mahilum,Edbert,Jamora on 2022-04-22'),
(75, NULL, '2022-04-29', '2023-07-06 10:36:00', 73, NULL, 'DELETE SESSION OF Mahilum,Edbert,Jamora on 2022-04-29'),
(76, NULL, '2022-04-29', '2023-07-06 10:36:00', 73, NULL, 'DELETE SESSION OF Padulla, Eduardo, Toledo on 2022-04-29'),
(77, NULL, '2022-04-22', '2023-07-06 10:38:00', 73, NULL, 'DELETE SESSION OF Mahilum,Edbert,Jamora on 2022-04-22'),
(78, NULL, '2023-04-29', '2023-07-06 10:46:00', 73, NULL, 'DELETE SESSION OF Mahilum,Edbert,Jamora on 2023-04-29'),
(79, NULL, '2022-04-29', '2023-07-06 10:52:00', 73, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2022-04-29'),
(80, NULL, '2022-04-26', '2023-07-06 10:52:00', 73, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2022-04-26'),
(81, NULL, '2022-04-22', '2023-07-06 10:53:00', 73, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2022-04-22'),
(82, NULL, '2022-04-19', '2023-07-06 10:53:00', 73, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2022-04-19'),
(83, NULL, '2022-04-15', '2023-07-06 10:53:00', 73, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2022-04-15'),
(84, NULL, '2023-06-06', '2023-07-06 10:53:00', 72, NULL, 'DELETE SESSION OF Agui, Daniel, Garbanzos on 2023-06-06'),
(85, NULL, '2022-04-12', '2023-07-06 10:54:00', 73, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2022-04-12'),
(86, NULL, '2022-04-08', '2023-07-06 10:54:00', 73, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2022-04-08'),
(87, NULL, '2022-04-01', '2023-07-06 10:54:00', 73, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2022-04-01'),
(88, NULL, '2022-04-09', '2023-07-06 11:42:00', 73, NULL, 'DELETE SESSION OF Engle, Ma. Kristina, Meñoso on 2022-04-09'),
(89, NULL, '2022-05-26', '2023-07-06 14:19:00', 73, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2022-05-26'),
(90, NULL, '2022-05-05', '2023-07-06 14:25:00', 73, NULL, 'DELETE SESSION OF Meladona,Michael,Padriquel on 2022-05-05'),
(91, NULL, '2023-06-06', '2023-07-06 14:33:00', 72, NULL, 'DELETE SESSION OF Villarez, Jericho, Guadalupe on 2023-06-06'),
(92, NULL, '2023-06-24', '2023-07-06 14:38:00', 72, NULL, 'DELETE SESSION OF Cuenca, Tessie, Sanico on 2023-06-24'),
(93, NULL, '2023-06-21', '2023-07-06 14:38:00', 72, NULL, 'DELETE SESSION OF Cuenca, Tessie, Sanico on 2023-06-21'),
(94, NULL, '2023-06-14', '2023-07-06 14:38:00', 72, NULL, 'DELETE SESSION OF Cuenca, Tessie, Sanico on 2023-06-14'),
(95, NULL, '2023-06-23', '2023-07-06 14:39:00', 72, NULL, 'DELETE SESSION OF Camarines, Merlyn, Gregorio on 2023-06-23'),
(96, NULL, '2023-06-20', '2023-07-06 14:39:00', 72, NULL, 'DELETE SESSION OF Camarines, Merlyn, Gregorio on 2023-06-20'),
(97, NULL, '2023-06-16', '2023-07-06 14:39:00', 72, NULL, 'DELETE SESSION OF Camarines, Merlyn, Gregorio on 2023-06-16'),
(98, NULL, '2023-06-13', '2023-07-06 14:40:00', 72, NULL, 'DELETE SESSION OF Camarines, Merlyn, Gregorio on 2023-06-13'),
(99, NULL, '2023-06-24', '2023-07-06 14:40:00', 72, NULL, 'DELETE SESSION OF Salve, Felicidad, Dignadice on 2023-06-24'),
(100, NULL, '2023-06-21', '2023-07-06 14:40:00', 72, NULL, 'DELETE SESSION OF Salve, Felicidad, Dignadice on 2023-06-21'),
(101, NULL, '2023-06-17', '2023-07-06 14:42:00', 72, NULL, 'DELETE SESSION OF Salve, Felicidad, Dignadice on 2023-06-17'),
(102, NULL, '2023-06-14', '2023-07-06 14:43:00', 72, NULL, 'DELETE SESSION OF Salve, Felicidad, Dignadice on 2023-06-14'),
(103, NULL, '2023-06-13', '2023-07-06 14:51:00', 72, NULL, 'DELETE SESSION OF Lucero, Andre, Piccio on 2023-06-13'),
(104, NULL, '2023-06-12', '2023-07-06 14:52:00', 72, NULL, 'DELETE SESSION OF Lucero, Andre, Piccio on 2023-06-12'),
(105, NULL, '2023-06-20', '2023-07-06 14:54:00', 72, NULL, 'DELETE SESSION OF Lucero, Andre, Piccio on 2023-06-20'),
(106, NULL, '2023-06-13', '2023-07-06 14:55:00', 72, NULL, 'DELETE SESSION OF Lucero, Andre, Piccio on 2023-06-13'),
(107, NULL, '2022-05-23', '2023-07-06 15:00:00', 73, NULL, 'DELETE SESSION OF Arsua, Emelia, Miguel on 2022-05-23'),
(108, NULL, '2023-06-30', '2023-07-06 15:57:00', 72, NULL, 'DELETE SESSION OF Baisa, Feliciano, Evangelista on 2023-06-30'),
(109, NULL, '2023-06-29', '2023-07-06 15:58:00', 72, NULL, 'DELETE SESSION OF Baisa, Feliciano, Evangelista on 2023-06-29'),
(110, NULL, '2023-06-27', '2023-07-06 15:58:00', 72, NULL, 'DELETE SESSION OF Baisa, Feliciano, Evangelista on 2023-06-27'),
(111, NULL, '2023-06-23', '2023-07-06 15:58:00', 72, NULL, 'DELETE SESSION OF Baisa, Feliciano, Evangelista on 2023-06-23'),
(112, NULL, '2023-06-02', '2023-07-06 15:58:00', 72, NULL, 'DELETE SESSION OF Baisa, Feliciano, Evangelista on 2023-06-02'),
(113, NULL, '2023-06-16', '2023-07-06 15:59:00', 72, NULL, 'DELETE SESSION OF Baisa, Feliciano, Evangelista on 2023-06-16'),
(114, NULL, '2023-06-20', '2023-07-06 15:59:00', 72, NULL, 'DELETE SESSION OF Baisa, Feliciano, Evangelista on 2023-06-20'),
(115, NULL, '2023-06-22', '2023-07-06 16:01:00', 72, NULL, 'DELETE SESSION OF Baisa, Feliciano, Evangelista on 2023-06-22'),
(116, NULL, '2022-05-24', '2023-07-06 16:20:00', 73, NULL, 'DELETE SESSION OF Cañete, Ricardo, Abella on 2022-05-24'),
(117, NULL, '2022-05-20', '2023-07-06 16:41:00', 73, NULL, 'DELETE SESSION OF Cañete, Ricardo, Abella on 2022-05-20'),
(118, NULL, '2022-05-24', '2023-07-08 11:03:00', 73, NULL, 'DELETE SESSION OF Maglantay, Sharon, Sajo on 2022-05-24'),
(119, NULL, '2022-06-30', '2023-07-08 13:14:00', 73, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2022-06-30'),
(120, NULL, '2022-06-27', '2023-07-08 13:15:00', 73, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2022-06-27'),
(121, NULL, '2022-06-23', '2023-07-08 13:15:00', 73, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2022-06-23'),
(122, NULL, '2022-06-20', '2023-07-08 13:16:00', 73, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2022-06-20'),
(123, NULL, '2022-06-16', '2023-07-08 13:16:00', 73, NULL, 'DELETE SESSION OF Hernaez, Rommel, Gordoncillo on 2022-06-16'),
(124, NULL, '2023-06-03', '2023-07-10 10:50:00', 72, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-06-03'),
(125, NULL, '2023-06-17', '2023-07-10 10:50:00', 72, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-06-17'),
(126, NULL, '2023-06-14', '2023-07-10 10:50:00', 72, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-06-14'),
(127, NULL, '2023-06-28', '2023-07-10 12:07:00', 72, NULL, 'DELETE SESSION OF Maghinay, Luzminda, Hita-as on 2023-06-28'),
(128, NULL, '2023-06-24', '2023-07-10 12:07:00', 72, NULL, 'DELETE SESSION OF Maghinay, Luzminda, Hita-as on 2023-06-24'),
(129, NULL, '2023-06-21', '2023-07-10 12:07:00', 72, NULL, 'DELETE SESSION OF Maghinay, Luzminda, Hita-as on 2023-06-21'),
(130, NULL, '2023-06-17', '2023-07-10 12:07:00', 72, NULL, 'DELETE SESSION OF Maghinay, Luzminda, Hita-as on 2023-06-17'),
(131, NULL, '2023-06-14', '2023-07-10 12:08:00', 72, NULL, 'DELETE SESSION OF Maghinay, Luzminda, Hita-as on 2023-06-14'),
(132, NULL, '2023-06-07', '2023-07-10 12:18:00', 72, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2023-06-07'),
(133, NULL, '2023-06-28', '2023-07-10 12:18:00', 72, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2023-06-28'),
(134, NULL, '2023-06-24', '2023-07-10 12:18:00', 72, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2023-06-24'),
(135, NULL, '2023-06-21', '2023-07-10 12:18:00', 72, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2023-06-21'),
(136, NULL, '2023-06-17', '2023-07-10 12:19:00', 72, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2023-06-17'),
(137, NULL, '2023-06-14', '2023-07-10 12:19:00', 72, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2023-06-14'),
(138, NULL, '2023-06-10', '2023-07-10 12:19:00', 72, NULL, 'DELETE SESSION OF Begueras, Jose Jojit, Tagnaman on 2023-06-10'),
(139, NULL, '2023-06-29', '2023-07-10 14:34:00', 72, NULL, 'DELETE SESSION OF Fernandez, Hedovico, Pajarello on 2023-06-29'),
(140, NULL, '2023-06-16', '2023-07-10 14:59:00', 72, NULL, 'DELETE SESSION OF Laserna, Edgardo, Nerval on 2023-06-16'),
(141, NULL, '2023-06-13', '2023-07-10 14:59:00', 72, NULL, 'DELETE SESSION OF Laserna, Edgardo, Nerval on 2023-06-13'),
(142, NULL, '2023-07-01', '2023-07-11 11:28:00', 72, NULL, 'DELETE SESSION OF David Sr., Rolando, Arigo on 2023-07-01'),
(143, NULL, '2023-07-13', '2023-07-11 11:30:00', 72, NULL, 'DELETE SESSION OF Gallendo, Remy, Demonteverde on 2023-07-13'),
(144, NULL, '2023-07-28', '2023-07-11 11:31:00', 72, NULL, 'DELETE SESSION OF Grijaldo, Elve, Capaniarihan on 2023-07-28'),
(145, NULL, '2023-07-14', '2023-07-11 11:31:00', 72, NULL, 'DELETE SESSION OF Lantin, Jacinto, Salas on 2023-07-14'),
(146, NULL, '2023-07-10', '2023-07-11 11:32:00', 72, NULL, 'DELETE SESSION OF Meladona,Michael,Padriquel on 2023-07-10'),
(147, NULL, '2023-07-06', '2023-07-11 11:32:00', 72, NULL, 'DELETE SESSION OF Motin, Elbert, Sampong on 2023-07-06'),
(148, NULL, '2023-07-13', '2023-07-11 11:33:00', 72, NULL, 'DELETE SESSION OF Marañon, Pedro Pitt, Trinidad on 2023-07-13'),
(149, NULL, '2023-07-14', '2023-07-11 11:33:00', 72, NULL, 'DELETE SESSION OF Omreso, Amorsula, Hile on 2023-07-14'),
(150, NULL, '2023-07-07', '2023-07-11 11:33:00', 72, NULL, 'DELETE SESSION OF Quillain, Evelyn, Felicisimo on 2023-07-07'),
(151, NULL, '2023-07-26', '2023-07-11 11:34:00', 72, NULL, 'DELETE SESSION OF Tajo, Conrado, Monserate on 2023-07-26'),
(152, NULL, '2023-07-03', '2023-07-11 11:34:00', 72, NULL, 'DELETE SESSION OF Villaruz III, Jose, Vergara on 2023-07-03'),
(153, NULL, '2023-07-06', '2023-07-12 11:40:00', 72, NULL, 'DELETE SESSION OF Aguilar, David Calvo on 2023-07-06'),
(154, NULL, '2023-07-08', '2023-07-12 12:01:00', 72, NULL, 'DELETE SESSION OF Piodena, Baltazar, Camson on 2023-07-08'),
(155, NULL, '2023-03-03', '2023-07-12 13:52:00', 72, NULL, 'DELETE SESSION OF Pabores, Rolando, Sariñas on 2023-03-03'),
(156, NULL, '2023-03-07', '2023-07-12 13:53:00', 72, NULL, 'DELETE SESSION OF Pabores, Rolando, Sariñas on 2023-03-07'),
(157, NULL, '2023-04-21', '2023-07-13 10:18:00', 72, NULL, 'DELETE SESSION OF Tamayo, Mario, Lopez on 2023-04-21'),
(158, NULL, '2023-03-08', '2023-07-13 10:27:00', 72, NULL, 'DELETE SESSION OF Villaruel, Norlito, Concepcion on 2023-03-08'),
(159, NULL, '2023-03-08', '2023-07-13 10:28:00', 72, NULL, 'DELETE SESSION OF Villaruel, Norlito, Concepcion on 2023-03-08'),
(160, NULL, '2023-07-25', '2023-07-13 10:48:00', 72, NULL, 'DELETE SESSION OF Cañete, Rafael, Lecaniel on 2023-07-25'),
(161, NULL, '2023-03-01', '2023-07-13 12:45:00', 72, NULL, 'DELETE SESSION OF Panes Sr., Herminio, Consulta on 2023-03-01'),
(162, NULL, '2023-03-17', '2023-07-13 12:55:00', 72, NULL, 'DELETE SESSION OF Geronimo, Rosenie, Albarena on 2023-03-17'),
(163, NULL, '2023-03-31', '2023-07-13 12:55:00', 72, NULL, 'DELETE SESSION OF Geronimo, Rosenie, Albarena on 2023-03-31'),
(164, NULL, '2023-03-28', '2023-07-13 12:55:00', 72, NULL, 'DELETE SESSION OF Geronimo, Rosenie, Albarena on 2023-03-28'),
(165, NULL, '2023-03-24', '2023-07-13 12:56:00', 72, NULL, 'DELETE SESSION OF Geronimo, Rosenie, Albarena on 2023-03-24'),
(166, NULL, '2023-03-21', '2023-07-13 12:57:00', 72, NULL, 'DELETE SESSION OF Geronimo, Rosenie, Albarena on 2023-03-21'),
(167, NULL, '2022-06-29', '2023-07-13 13:09:00', 73, NULL, 'DELETE SESSION OF Guarra, Ma.Solima, Castillo on 2022-06-29'),
(168, NULL, '2022-06-25', '2023-07-13 13:09:00', 73, NULL, 'DELETE SESSION OF Guarra, Ma.Solima, Castillo on 2022-06-25'),
(169, NULL, '2022-06-22', '2023-07-13 13:10:00', 73, NULL, 'DELETE SESSION OF Guarra, Ma.Solima, Castillo on 2022-06-22'),
(170, NULL, '2022-06-18', '2023-07-13 13:10:00', 73, NULL, 'DELETE SESSION OF Guarra, Ma.Solima, Castillo on 2022-06-18'),
(171, NULL, '2023-03-01', '2023-07-13 14:20:00', 72, NULL, 'DELETE SESSION OF Susana, Darry, Medianero on 2023-03-01'),
(172, NULL, '2022-06-11', '2023-07-13 14:46:00', 73, NULL, 'DELETE SESSION OF Locsin,Salvador,Guinson on 2022-06-11'),
(173, NULL, '2023-06-01', '2023-07-14 12:11:00', 72, NULL, 'DELETE SESSION OF Quillain, Evelyn, Felicisimo on 2023-06-01'),
(174, NULL, '2023-04-30', '2023-07-14 12:24:00', 72, NULL, 'DELETE SESSION OF Nieron, Elma, Ledesma on 2023-04-30'),
(175, NULL, '2023-07-10', '2023-07-17 10:22:00', 72, NULL, 'DELETE SESSION OF Fernandez, Rojane, Jaro on 2023-07-10'),
(176, NULL, '2023-07-10', '2023-07-17 14:00:00', 72, NULL, 'DELETE SESSION OF Aguilar, David Calvo on 2023-07-10'),
(177, NULL, '2023-07-11', '2023-07-17 15:02:00', 72, NULL, 'DELETE SESSION OF Motin, Elbert, Sampong on 2023-07-11'),
(178, NULL, '2023-07-12', '2023-07-18 12:30:00', 72, NULL, 'DELETE SESSION OF Quijano, Lilia, Abas on 2023-07-12'),
(179, NULL, '2023-07-10', '2023-07-18 12:39:00', 72, NULL, 'DELETE SESSION OF Desabal, Eduard, Deto-on on 2023-07-10'),
(180, NULL, '2023-07-10', '2023-07-18 12:40:00', 72, NULL, 'DELETE SESSION OF Cortez, Benjamin, Cornel on 2023-07-10'),
(181, NULL, '2023-07-10', '2023-07-18 12:40:00', 72, NULL, 'DELETE SESSION OF Choco, Bonven, Tañedo on 2023-07-10'),
(182, NULL, '2023-07-13', '2023-07-18 13:04:00', 72, NULL, 'DELETE SESSION OF Vargas, Joy, Juarez on 2023-07-13'),
(183, NULL, '2023-07-13', '2023-07-18 13:05:00', 72, NULL, 'DELETE SESSION OF Cordero, Erlinda, Gefes on 2023-07-13'),
(184, NULL, '2023-07-13', '2023-07-18 13:05:00', 72, NULL, 'DELETE SESSION OF Meladona,Michael,Padriquel on 2023-07-13'),
(185, NULL, '2023-07-15', '2023-07-18 14:12:00', 72, NULL, 'DELETE SESSION OF De-Ala, Jocelyn, Ginete on 2023-07-15'),
(186, NULL, '2023-06-19', '2023-07-19 11:42:00', 72, NULL, 'DELETE SESSION OF Perez, Erica, Narce on 2023-06-19'),
(187, NULL, '2023-07-17', '2023-07-19 14:04:00', 72, NULL, 'DELETE SESSION OF Bernesto, Edwin, Galagpat on 2023-07-17'),
(188, NULL, '2023-07-20', '2023-07-21 10:21:00', 72, NULL, 'DELETE SESSION OF Gonzaga, Rizza, Estacion on 2023-07-20'),
(189, NULL, '2023-07-20', '2023-07-21 10:23:00', 72, NULL, 'DELETE SESSION OF Gumba, Jonard, Maranan on 2023-07-20'),
(190, NULL, '2023-07-20', '2023-07-21 10:37:00', 72, NULL, 'DELETE SESSION OF Grijaldo, Elve, Capaniarihan on 2023-07-20'),
(191, NULL, '2023-07-20', '2023-07-21 10:37:00', 72, NULL, 'DELETE SESSION OF Herbolario, Nie, Badiango on 2023-07-20'),
(192, NULL, '2023-07-20', '2023-07-21 10:37:00', 72, NULL, 'DELETE SESSION OF Maalihan, Anthony, Dasal on 2023-07-20'),
(193, NULL, '2023-07-20', '2023-07-21 10:38:00', 72, NULL, 'DELETE SESSION OF Nombre, Elvin, Sarabia on 2023-07-20'),
(194, NULL, '2023-07-20', '2023-07-21 10:38:00', 72, NULL, 'DELETE SESSION OF Nicolas, Vanissa, Leonoras on 2023-07-20'),
(195, NULL, '2023-07-20', '2023-07-21 10:38:00', 72, NULL, 'DELETE SESSION OF Omreso, Amorsula, Hile on 2023-07-20'),
(196, NULL, '2023-07-20', '2023-07-21 10:38:00', 72, NULL, 'DELETE SESSION OF Olivo, Elmer, Cabalonga on 2023-07-20'),
(197, NULL, '2023-07-20', '2023-07-21 10:39:00', 72, NULL, 'DELETE SESSION OF Panolin, Gadiel, Fernandez on 2023-07-20'),
(198, NULL, '2023-07-20', '2023-07-21 10:39:00', 72, NULL, 'DELETE SESSION OF Pido, Ivan, Arreglado on 2023-07-20'),
(199, NULL, '2023-07-20', '2023-07-21 10:39:00', 72, NULL, 'DELETE SESSION OF Villasor, Hernan, Pendon on 2023-07-20'),
(200, NULL, '2023-07-20', '2023-07-21 10:39:00', 72, NULL, 'DELETE SESSION OF Villanueva, Romulo Amar on 2023-07-20'),
(201, NULL, '2023-07-20', '2023-07-21 10:41:00', 72, NULL, 'DELETE SESSION OF Quijano, Lilia, Abas on 2023-07-20'),
(202, NULL, '2023-07-20', '2023-07-21 10:41:00', 72, NULL, 'DELETE SESSION OF Soriano, Nicolas, Castro on 2023-07-20'),
(203, NULL, '2023-07-20', '2023-07-21 10:41:00', 72, NULL, 'DELETE SESSION OF Sayson, Hexter, Siverio on 2023-07-20'),
(204, NULL, '2023-07-20', '2023-07-21 10:41:00', 72, NULL, 'DELETE SESSION OF Susana, Darry, Medianero on 2023-07-20'),
(205, NULL, '2023-07-20', '2023-07-21 10:42:00', 72, NULL, 'DELETE SESSION OF Tizon, Nome, Tambanillo on 2023-07-20'),
(206, NULL, '2023-07-20', '2023-07-21 10:42:00', 72, NULL, 'DELETE SESSION OF Temblador, Rene, Valenzuela on 2023-07-20'),
(207, NULL, '2023-07-20', '2023-07-21 10:42:00', 72, NULL, 'DELETE SESSION OF Ubas, Jeaneline, Nobleza on 2023-07-20'),
(208, NULL, '2023-07-20', '2023-07-21 10:44:00', 72, NULL, 'DELETE SESSION OF Villarez, Jericho, Guadalupe on 2023-07-20'),
(209, NULL, '2023-07-20', '2023-07-21 10:44:00', 72, NULL, 'DELETE SESSION OF Vallota, Jose Angelo, Echavez on 2023-07-20'),
(210, NULL, '2023-07-20', '2023-07-21 10:44:00', 72, NULL, 'DELETE SESSION OF Villaruz III, Jose, Vergara on 2023-07-20'),
(211, NULL, '2023-07-20', '2023-07-21 10:45:00', 72, NULL, 'DELETE SESSION OF Rosapa, Ma. Elisa Octavio on 2023-07-20'),
(212, NULL, '2023-07-20', '2023-07-21 10:57:00', 72, NULL, 'DELETE SESSION OF Banaglorioso, Rock, Padayhag on 2023-07-20'),
(213, NULL, '2023-07-20', '2023-07-21 10:58:00', 72, NULL, 'DELETE SESSION OF Augusto, James, Abaredo on 2023-07-20'),
(214, NULL, '2023-07-20', '2023-07-21 10:59:00', 72, NULL, 'DELETE SESSION OF Cordero, Erlinda, Gefes on 2023-07-20'),
(215, NULL, '2023-07-20', '2023-07-21 11:00:00', 72, NULL, 'DELETE SESSION OF Calingasan, Charlie Magne, Jamandron on 2023-07-20'),
(216, NULL, '2023-07-20', '2023-07-21 11:01:00', 72, NULL, 'DELETE SESSION OF Cabales, Larry, Dela Peña on 2023-07-20'),
(217, NULL, '2023-07-20', '2023-07-21 11:02:00', 72, NULL, 'DELETE SESSION OF Cuenca, Tessie, Sanico on 2023-07-20'),
(218, NULL, '2023-07-20', '2023-07-21 11:03:00', 72, NULL, 'DELETE SESSION OF Cagalawan, Eva, Acosta on 2023-07-20'),
(219, NULL, '2023-07-22', '2023-07-25 11:58:00', 72, NULL, 'DELETE SESSION OF Gumba, Jonard, Maranan on 2023-07-22'),
(220, NULL, '2023-07-22', '2023-07-25 11:58:00', 72, NULL, 'DELETE SESSION OF Nicolas, Vanissa, Leonoras on 2023-07-22'),
(221, NULL, '2023-07-25', '2023-07-26 11:20:00', 72, NULL, 'DELETE SESSION OF Villacrusis Jr, Joel, Iderio on 2023-07-25'),
(222, NULL, '2023-02-11', '2023-07-26 11:47:00', 72, NULL, 'DELETE SESSION OF Villaruel, Norlito, Concepcion on 2023-02-11'),
(223, NULL, '2023-07-25', '2023-07-26 12:05:00', 72, NULL, 'DELETE SESSION OF Montañez, Agripina, Escamilla on 2023-07-25'),
(224, NULL, '2023-07-25', '2023-07-26 12:14:00', 72, NULL, 'DELETE SESSION OF De-Ala, Jocelyn, Ginete on 2023-07-25'),
(225, NULL, '2023-07-25', '2023-07-26 12:16:00', 72, NULL, 'DELETE SESSION OF Aguirre, Victoria, Osano on 2023-07-25'),
(226, NULL, '2023-07-25', '2023-07-26 12:31:00', 72, NULL, 'DELETE SESSION OF Estardo, Nelly, Fernandez on 2023-07-25'),
(227, NULL, '2023-03-03', '2023-07-27 11:46:00', 72, NULL, 'DELETE SESSION OF Temblador, Rene, Valenzuela on 2023-03-03'),
(228, NULL, '2023-02-03', '2023-07-27 13:15:00', 72, NULL, 'DELETE SESSION OF Varon, Eric Orlido on 2023-02-03'),
(229, NULL, '2023-02-07', '2023-07-27 13:16:00', 72, NULL, 'DELETE SESSION OF Varon, Eric Orlido on 2023-02-07'),
(230, NULL, '2023-02-10', '2023-07-27 13:16:00', 72, NULL, 'DELETE SESSION OF Varon, Eric Orlido on 2023-02-10'),
(231, NULL, '2023-02-14', '2023-07-27 13:16:00', 72, NULL, 'DELETE SESSION OF Varon, Eric Orlido on 2023-02-14'),
(232, NULL, '2023-02-17', '2023-07-27 13:17:00', 72, NULL, 'DELETE SESSION OF Varon, Eric Orlido on 2023-02-17'),
(233, NULL, '2023-02-21', '2023-07-27 13:17:00', 72, NULL, 'DELETE SESSION OF Varon, Eric Orlido on 2023-02-21'),
(234, NULL, '2023-02-24', '2023-07-27 13:17:00', 72, NULL, 'DELETE SESSION OF Varon, Eric Orlido on 2023-02-24'),
(235, NULL, '2023-02-28', '2023-07-27 13:18:00', 72, NULL, 'DELETE SESSION OF Varon, Eric Orlido on 2023-02-28'),
(236, NULL, '2023-02-16', '2023-07-27 13:48:00', 73, NULL, 'DELETE SESSION OF Choco, Bonven, Tañedo on 2023-02-16'),
(237, NULL, '2023-04-04', '2023-07-27 14:28:00', 73, NULL, 'DELETE SESSION OF Pabores, Rolando, Sariñas on 2023-04-04'),
(238, NULL, '2023-04-22', '2023-07-27 15:31:00', 73, NULL, 'DELETE SESSION OF Tan Sr., Renato, Gelasan on 2023-04-22'),
(239, NULL, '2023-04-25', '2023-07-27 15:32:00', 73, NULL, 'DELETE SESSION OF Tan Sr., Renato, Gelasan on 2023-04-25'),
(240, NULL, '2023-04-07', '2023-07-27 15:33:00', 73, NULL, 'DELETE SESSION OF Tan Sr., Renato, Gelasan on 2023-04-07'),
(241, NULL, '2023-04-28', '2023-07-27 15:33:00', 73, NULL, 'DELETE SESSION OF Tan Sr., Renato, Gelasan on 2023-04-28'),
(242, NULL, '2023-04-11', '2023-07-27 15:33:00', 73, NULL, 'DELETE SESSION OF Tan Sr., Renato, Gelasan on 2023-04-11'),
(243, NULL, '2022-08-11', '2023-07-29 10:12:00', 73, NULL, 'DELETE SESSION OF Ayupan, Jeffrey, Caceres on 2022-08-11'),
(244, NULL, '2022-08-11', '2023-07-29 10:12:00', 73, NULL, 'DELETE SESSION OF Gasapo, Elmer, De Asis on 2022-08-11'),
(245, NULL, '2022-08-24', '2023-07-29 10:39:00', 73, NULL, 'DELETE SESSION OF Salve, Nora, Dignadice on 2022-08-24'),
(246, NULL, '2022-09-27', '2023-07-29 13:47:00', 73, NULL, 'DELETE SESSION OF Tonato, Ronelo, Gallenero on 2022-09-27'),
(247, NULL, '2022-09-19', '2023-07-29 15:06:00', 73, NULL, 'DELETE SESSION OF Belmis, Kimley, Nimes on 2022-09-19'),
(248, NULL, '2022-09-19', '2023-07-29 15:10:00', 73, NULL, 'DELETE SESSION OF Vinco, Alovin Christos, Alova on 2022-09-19'),
(249, NULL, '2021-10-07', '2023-07-29 16:16:00', 73, NULL, 'DELETE SESSION OF Baroy Jr., Benjamin, Basbaño on 2021-10-07'),
(250, NULL, '2023-04-01', '2023-08-01 09:14:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-04-01'),
(251, NULL, '2023-04-05', '2023-08-01 09:15:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-04-05'),
(252, NULL, '2023-04-08', '2023-08-01 09:15:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-04-08'),
(253, NULL, '2023-04-12', '2023-08-01 09:16:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-04-12'),
(254, NULL, '2023-04-15', '2023-08-01 09:16:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-04-15'),
(255, NULL, '2023-04-19', '2023-08-01 09:16:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-04-19'),
(256, NULL, '2023-04-22', '2023-08-01 09:16:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-04-22'),
(257, NULL, '2023-04-26', '2023-08-01 09:17:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-04-26'),
(258, NULL, '2023-05-03', '2023-08-01 09:17:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-05-03'),
(259, NULL, '2023-05-06', '2023-08-01 09:17:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-05-06'),
(260, NULL, '2023-05-10', '2023-08-01 09:17:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-05-10'),
(261, NULL, '2023-05-13', '2023-08-01 09:18:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-05-13'),
(262, NULL, '2023-05-17', '2023-08-01 09:18:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-05-17'),
(263, NULL, '2023-05-20', '2023-08-01 09:18:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-05-20'),
(264, NULL, '2023-05-24', '2023-08-01 09:18:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-05-24'),
(265, NULL, '2023-05-27', '2023-08-01 09:18:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-05-27'),
(266, NULL, '2023-05-31', '2023-08-01 09:19:00', 73, NULL, 'DELETE SESSION OF Aspilla, Nora, Mosqueda on 2023-05-31'),
(267, NULL, '2023-04-13', '2023-08-01 09:25:00', 73, NULL, 'DELETE SESSION OF Desucatan, Edgardo, Giganto on 2023-04-13'),
(268, NULL, '2023-04-08', '2023-08-01 09:28:00', 73, NULL, 'DELETE SESSION OF Desucatan, Edgardo, Giganto on 2023-04-08'),
(269, NULL, '2023-05-05', '2023-08-01 10:13:00', 73, NULL, 'DELETE SESSION OF Cuenca, Tessie, Sanico on 2023-05-05'),
(270, NULL, '2023-05-05', '2023-08-01 11:29:00', 73, NULL, 'DELETE SESSION OF Salve, Felicidad, Dignadice on 2023-05-05'),
(271, NULL, '2023-07-27', '2023-08-02 11:49:00', 73, NULL, 'DELETE SESSION OF Belmis, Kimley, Nimes on 2023-07-27'),
(272, NULL, '2023-07-29', '2023-08-02 11:51:00', 73, NULL, 'DELETE SESSION OF Antipuesto, Fernando, Asildeque on 2023-07-29'),
(273, NULL, '2023-07-27', '2023-08-02 11:54:00', 73, NULL, 'DELETE SESSION OF Bernesto, Edwin, Galagpat on 2023-07-27'),
(274, NULL, '2023-07-27', '2023-08-02 11:55:00', 73, NULL, 'DELETE SESSION OF Desucatan, Edgardo, Giganto on 2023-07-27'),
(275, NULL, '2023-07-29', '2023-08-02 11:56:00', 73, NULL, 'DELETE SESSION OF Gumba, Jonard, Maranan on 2023-07-29'),
(276, NULL, '2023-07-27', '2023-08-02 11:58:00', 73, NULL, 'DELETE SESSION OF Maghinay, Luzminda, Hita-as on 2023-07-27'),
(277, NULL, '2023-07-29', '2023-08-02 11:59:00', 73, NULL, 'DELETE SESSION OF Olivo, Elmer, Cabalonga on 2023-07-29'),
(278, NULL, '2023-07-29', '2023-08-02 11:59:00', 73, NULL, 'DELETE SESSION OF Pido, Ivan, Arreglado on 2023-07-29'),
(279, NULL, '2023-07-29', '2023-08-02 12:04:00', 73, NULL, 'DELETE SESSION OF Temblador, Rene, Valenzuela on 2023-07-29'),
(280, NULL, '2023-07-29', '2023-08-02 12:05:00', 73, NULL, 'DELETE SESSION OF Vallota, Jose Angelo, Echavez on 2023-07-29'),
(281, NULL, '2023-07-27', '2023-08-02 12:06:00', 73, NULL, 'DELETE SESSION OF Vinco, Alovin Christos, Alova on 2023-07-27'),
(282, NULL, '2023-07-13', '2023-08-02 12:10:00', 73, NULL, 'DELETE SESSION OF Tasic,Romilo,Valdez on 2023-07-13'),
(283, NULL, '2023-07-13', '2023-08-02 12:38:00', 73, NULL, 'DELETE SESSION OF Pava, Helen, Demetillo on 2023-07-13'),
(284, NULL, '2023-07-21', '2023-08-02 12:40:00', 73, NULL, 'DELETE SESSION OF Montaño, Ma. Cecilia on 2023-07-21'),
(285, NULL, '2023-07-13', '2023-08-02 12:44:00', 73, NULL, 'DELETE SESSION OF Grande, Armando, Cabrillos on 2023-07-13'),
(286, NULL, '2023-07-18', '2023-08-02 12:46:00', 73, NULL, 'DELETE SESSION OF Laserna, Edgardo, Nerval on 2023-07-18'),
(287, NULL, '2023-07-18', '2023-08-02 12:47:00', 73, NULL, 'DELETE SESSION OF Motin, Elbert, Sampong on 2023-07-18'),
(288, NULL, '2023-07-07', '2023-08-02 14:59:00', 73, NULL, 'DELETE SESSION OF Perez, Josie, Yayola on 2023-07-07'),
(289, NULL, '2023-05-06', '2023-08-03 08:54:00', 72, NULL, 'DELETE SESSION OF Villasor, Hernan, Pendon on 2023-05-06'),
(290, NULL, '2022-10-20', '2023-08-04 15:24:00', 73, NULL, 'DELETE SESSION OF Maghinay, Luzminda, Hita-as on 2022-10-20'),
(291, NULL, '2022-10-22', '2023-08-04 15:25:00', 73, NULL, 'DELETE SESSION OF Maghinay, Luzminda, Hita-as on 2022-10-22'),
(292, NULL, '2022-10-22', '2023-08-04 15:26:00', 73, NULL, 'DELETE SESSION OF Vallota, Jose Angelo, Echavez on 2022-10-22'),
(293, NULL, '2022-10-18', '2023-08-05 09:24:00', 73, NULL, 'DELETE SESSION OF Baroy Jr., Benjamin, Basbaño on 2022-10-18'),
(294, NULL, '2022-11-09', '2023-08-05 15:09:00', 73, NULL, 'DELETE SESSION OF Pacino, Jorge, Villaestiva on 2022-11-09'),
(295, NULL, '2022-11-29', '2023-08-05 15:24:00', 73, NULL, 'DELETE SESSION OF Choco, Bonven, Tañedo on 2022-11-29'),
(296, NULL, '2022-11-02', '2023-08-05 15:47:00', 73, NULL, 'DELETE SESSION OF Demontaño,Warren,Custodio on 2022-11-02'),
(297, NULL, '2022-11-05', '2023-08-05 16:05:00', 73, NULL, 'DELETE SESSION OF Nicolas, Vanissa, Leonoras on 2022-11-05'),
(298, NULL, '2022-12-23', '2023-08-07 11:32:00', 73, NULL, 'DELETE SESSION OF Cordero, Erlinda, Gefes on 2022-12-23'),
(299, NULL, '2022-12-27', '2023-08-07 11:33:00', 73, NULL, 'DELETE SESSION OF Cordero, Erlinda, Gefes on 2022-12-27'),
(300, NULL, '2022-12-30', '2023-08-07 11:33:00', 73, NULL, 'DELETE SESSION OF Cordero, Erlinda, Gefes on 2022-12-30'),
(301, NULL, '2022-12-26', '2023-08-08 12:54:00', 73, NULL, 'DELETE SESSION OF Maghinay, Luzminda, Hita-as on 2022-12-26'),
(302, NULL, '2022-12-22', '2023-08-08 14:24:00', 73, NULL, 'DELETE SESSION OF Groyon Jr., Vicente, Hallar on 2022-12-22'),
(303, NULL, '2022-12-21', '2023-08-08 14:42:00', 73, NULL, 'DELETE SESSION OF Villarez, Jericho, Guadalupe on 2022-12-21'),
(304, NULL, '2023-03-02', '2023-08-08 15:09:00', 73, NULL, 'DELETE SESSION OF Pava, Helen, Demetillo on 2023-03-02'),
(305, NULL, '2023-03-02', '2023-08-08 15:11:00', 73, NULL, 'DELETE SESSION OF Pervandos, Janelyn, Zerrudo on 2023-03-02'),
(306, NULL, '2023-02-25', '2023-08-08 15:52:00', 73, NULL, 'DELETE SESSION OF Sanchez, Ma Norey, Casañares on 2023-02-25'),
(307, NULL, '2022-03-01', '2023-08-09 10:26:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-03-01'),
(308, NULL, '2022-03-04', '2023-08-09 10:26:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-03-04'),
(309, NULL, '2022-03-08', '2023-08-09 10:26:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-03-08'),
(310, NULL, '2022-03-11', '2023-08-09 10:27:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-03-11'),
(311, NULL, '2022-03-15', '2023-08-09 10:27:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-03-15'),
(312, NULL, '2022-03-18', '2023-08-09 10:27:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-03-18'),
(313, NULL, '2022-03-22', '2023-08-09 10:27:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-03-22'),
(314, NULL, '2022-03-25', '2023-08-09 10:27:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-03-25'),
(315, NULL, '2022-03-29', '2023-08-09 10:28:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-03-29'),
(316, NULL, '2022-04-01', '2023-08-09 10:34:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-04-01'),
(317, NULL, '2022-04-05', '2023-08-09 10:35:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-04-05'),
(318, NULL, '2022-04-08', '2023-08-09 10:35:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-04-08'),
(319, NULL, '2022-04-12', '2023-08-09 10:35:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-04-12'),
(320, NULL, '2022-04-15', '2023-08-09 10:35:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-04-15'),
(321, NULL, '2022-04-19', '2023-08-09 10:36:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-04-19'),
(322, NULL, '2022-04-22', '2023-08-09 10:36:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-04-22'),
(323, NULL, '2022-04-26', '2023-08-09 10:36:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-04-26'),
(324, NULL, '2022-04-29', '2023-08-09 10:36:00', 73, NULL, 'DELETE SESSION OF Vidal, Melchizedek, Paclauna on 2022-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` tinyint(4) NOT NULL,
  `migration` varchar(46) DEFAULT NULL,
  `batch` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_15_055545_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(11) NOT NULL,
  `model_type` varchar(0) DEFAULT NULL,
  `model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` tinyint(4) DEFAULT NULL,
  `model_type` varchar(8) DEFAULT NULL,
  `model_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'AppUser', 2),
(1, 'AppUser', 3),
(2, 'AppUser', 4),
(2, 'AppUser', 5),
(1, 'AppUser', 6),
(2, 'AppUser', 7),
(3, 'AppUser', 8),
(2, 'AppUser', 9),
(4, 'AppUser', 11),
(2, 'AppUser', 12),
(4, 'AppUser', 13),
(3, 'AppUser', 14),
(3, 'AppUser', 15),
(2, 'AppUser', 16),
(2, 'AppUser', 17),
(2, 'AppUser', 18),
(2, 'AppUser', 19),
(2, 'AppUser', 20),
(2, 'AppUser', 21),
(2, 'AppUser', 22),
(2, 'AppUser', 23),
(2, 'AppUser', 24),
(2, 'AppUser', 25),
(2, 'AppUser', 26),
(2, 'AppUser', 27),
(2, 'AppUser', 28),
(2, 'AppUser', 29),
(2, 'AppUser', 30),
(2, 'AppUser', 31),
(4, 'AppUser', 32),
(1, 'AppUser', 33),
(2, 'AppUser', 34),
(2, 'AppUser', 35),
(2, 'AppUser', 36),
(2, 'AppUser', 37),
(2, 'AppUser', 38),
(2, 'AppUser', 39),
(2, 'AppUser', 40),
(2, 'AppUser', 41),
(2, 'AppUser', 42),
(2, 'AppUser', 43),
(2, 'AppUser', 44),
(2, 'AppUser', 45),
(2, 'AppUser', 46),
(2, 'AppUser', 47),
(2, 'AppUser', 48),
(2, 'AppUser', 49),
(2, 'AppUser', 50),
(2, 'AppUser', 51),
(2, 'AppUser', 52),
(2, 'AppUser', 53),
(2, 'AppUser', 54),
(2, 'AppUser', 55),
(2, 'AppUser', 56),
(2, 'AppUser', 57),
(2, 'AppUser', 58),
(2, 'AppUser', 59),
(2, 'AppUser', 60),
(2, 'AppUser', 61);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(0) DEFAULT NULL,
  `token` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `guard_name` varchar(3) DEFAULT NULL,
  `created_at` varchar(19) DEFAULT NULL,
  `updated_at` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'View Group', 'web', '2020-05-02 20:08:10', '2020-05-02 20:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(13) DEFAULT NULL,
  `guard_name` varchar(3) DEFAULT NULL,
  `created_at` varchar(19) DEFAULT NULL,
  `updated_at` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'web', '2020-05-01 05:30:36', '2020-05-01 05:30:36'),
(2, 'Doctor', 'web', '2020-05-01 08:40:25', '2020-05-01 08:40:25'),
(3, 'Staff', 'web', '2020-05-08 02:28:18', '2020-05-08 02:28:18'),
(4, 'Super Admin', 'web', '2020-05-12 00:02:51', '2020-05-12 00:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` varchar(0) DEFAULT NULL,
  `role_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` tinyint(4) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_dt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `title`, `description`, `created_by`, `created_dt`) VALUES
(1, 'Sybill', 'Mann', NULL, NULL),
(3, 'Yolanda', 'Hill', 96, '2023-08-15'),
(4, 'Emily', 'Acevedo', 102, '2023-08-15'),
(5, 'Guy', 'Sutton', 96, '2023-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `email` varchar(28) DEFAULT NULL,
  `email_verified_at` varchar(0) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `remember_token` varchar(60) DEFAULT NULL,
  `created_at` varchar(19) DEFAULT NULL,
  `updated_at` varchar(19) DEFAULT NULL,
  `username` varchar(9) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `fname`, `lname`) VALUES
(3, 'fert retretertert', 'jclucasan@rivermedcenter.net', '', '$2y$10$pU0Nwped2XSG7mGIRLpuNuTXCBFsxpzFlLGCabMnLD1P1hfOCa67K', 'ZLeiyZSGzu9ao1CxKuxWxlOgfZZ8oRXKgXNcyDuwtFAwu9lIj8ZLTjtnVyMU', '2020-05-01 05:41:01', '2023-08-15 10:18:39', 'jclucasan', 'fert', 'retretertert'),
(74, 'sadas dsadsad', 'jclucasan@gmsail.com', NULL, '$2y$10$m5.WOOevFbaK3wfT51KL8uGTaff9J7W8M2vXDfvvY4yGubJ4MNzjy', NULL, NULL, '2023-08-15 10:19:08', NULL, 'sadas', 'dsadsad'),
(75, NULL, 'koze@mailinator.com', NULL, '$2y$10$VDboNM.zprlp5Qf8YRmeVusGI7Z3BxPsGOHvpM0uf9DvtEak9CFc.', NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, 'sewofyj@mailinator.com', NULL, '$2y$10$YD80Iy4lME9ujQ4E81eo2.vtAsXeHs3F1VxvT2/iDCSh95b5aprMC', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Garrison Blankenship', 'fota@mailinator.com', NULL, '$2y$10$lKHSW7HGTkR6FvQEe3.D4eJUSGqcK1FmMu6kn2i5q0F20WQOeBg0a', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Pearl Larson', 'nyjaq@mailinator.com', NULL, '$2y$10$xlRKH1w1T16kThf6iuBc8.Mq3/smK1o5mT9nqosyI2M7FoU.3Rs5a', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Armando Hunt', 'gasesah@mailinator.com', NULL, '$2y$10$UAqVMbz3R0Nqzha098yIqOaV4gwduyV9HvOYE/EnmH/xO8KogH806', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Nehru Mayer', 'lefod@mailinator.com', NULL, '$2y$10$l7.nJo9uoZij/03UHDGJWuZ10oE/eVjB2UhWDWwYgubrP3UH2tsra', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Petra Farley', 'rijikejiv@mailinator.com', NULL, '$2y$10$14t4UVAyG/LttCYxMg5VD.3IH1H6VdMSnZ3wdvUn2tSodyU8d4FQa', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Keegan Kent', 'suxyq@mailinator.com', NULL, '$2y$10$LemBFlBcQTg3PxHC9TsR9.JHIgyLIHDy8MiAG76olKjdnKlNzmKJG', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Rachel Bird', 'vowim@mailinator.com', NULL, '$2y$10$G5EhlJnujN5NLdzdmNR.kOyeeHxTec36ztkXvKrRyv2NyfNrG7owG', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Britanni Landry', 'mugemisoji@mailinator.com', NULL, '$2y$10$Re/qKG2khM8xVHJ1ZFJgIe.ba1ralCCKxxdClsbtIFIaVE7HKOXoS', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Kendall Maldonado', 'nobafypy@mailinator.com', NULL, '$2y$10$bZYOUoOggqnvQQLkW68vIesZtmgcJGZA6FNjJJJ7jKU8aX9qb.CLu', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Thane West', 'gylowakydo@mailinator.com', NULL, '$2y$10$FuT9WrMw2D2XrsfZx/1oVe9iStM8OEvlb6obNXh9t/sYU/KF2laRW', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Nicholas Dominguez', 'dosedycaz@mailinator.com', NULL, '$2y$10$bRCDAMrRXscNPsOJWeXQA.pJ4uREiQkE0BcM/uOIHuvJzOyC5JUAC', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Alisa Witt', 'buhepowyw@mailinator.com', NULL, '$2y$10$ltEZFHCBt.B1bf1WmF3Rk.tJatbARv5Nxh.bz6xA51t3.uy8tw86S', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Rylee Chaney', 'wybiqote@mailinator.com', NULL, '$2y$10$A16z9/fs5K7zvOFkqdv/jeAhUylRhQ/vBjzQ9Jx5Z3kM0C1/nZURi', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Timon Mcbride', 'ficorafima@mailinator.com', NULL, '$2y$10$T5sZB7ux59.5xSAUDvzBruxRLGeucyfa9e2BF543xw5iun7ObB00C', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Ignacia Pugh', 'xylugad@mailinator.com', NULL, '$2y$10$DhLPRQXvSbyBFt5qAI6qdOIuAFFq26O6zusjWJAX6kk9sXeTQ..Hi', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Blaze Berg', 'hafumucywy@mailinator.com', NULL, '$2y$10$baE8ySd8wdLVkHmxKUFU5OL7vuU7NiBK3YnSWTq7JVcPBwD80M84W', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'JOHN CARLO LUCASAN', 'jclucasan@gmail.com', NULL, '$2y$10$VWFJDhOGGEHFsFa8vwbydu3RYp7cOareozbAnR9UP/.tg3q8eO.Ky', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Knox Wright', 'jclucasan123@gmail.com', NULL, '$2y$10$PoH.B7X6dL6CFEncJCoZ4.jkMCGpbzFS5e3lFdYgnzrMQclRJKrWi', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'MacKensie Rutledge', 'kegymived@mailinator.com', NULL, '$2y$10$KYcwL2wil30JbOtUDALleutPQ6L6WHFTxJD44.W8wYe0BCv56jj/2', NULL, '2023-08-15 18:01:54', '2023-08-15 18:01:54', NULL, NULL, NULL),
(100, 'Zane Parks', 'bigovi@mailinator.com', NULL, '$2y$10$Hk3a1qiDvgwTSkC7.0RvmuLUHOGTVv2gWJIw6u1OYk0jPbfNaIU8C', NULL, '2023-08-15 18:22:57', '2023-08-15 18:22:57', NULL, 'Zane', 'Parks'),
(102, 'Lawrence Hendrix', 'qasikiluvy@mailinator.com', NULL, '$2y$10$rC4.OQHyOJro6HejbFtJoOL8pHslhBZvjktAij/7irwNIWcuqY6qq', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_scheduled`
--
ALTER TABLE `failed_scheduled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_scheduled`
--
ALTER TABLE `failed_scheduled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
