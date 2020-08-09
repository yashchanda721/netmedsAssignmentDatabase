-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2020 at 10:37 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netmeds_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `s_no` varchar(255) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `min_price` varchar(255) NOT NULL,
  `object_id` varchar(255) NOT NULL,
  `popular` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `s_no`, `item_id`, `item_name`, `min_price`, `object_id`, `popular`) VALUES
(1, '', 'DIANM11', 'COVID-19 Test', '4500', '6045500', 'TRUE'),
(2, '', 'DIA2044', 'Eye Test- Vision Express', '49', '4562', 'TRUE'),
(3, '', 'DIAR894', 'Yttrium Therapy', '17500', '4461302', 'false'),
(4, '', 'DIAR893', 'X Ray Wrist Lateral View', '120', '4461292', 'false'),
(5, '', 'DIAR892', 'X Ray Wrist AP View', '120', '4461282', 'false'),
(6, '', 'DIAR891', 'X Ray Wrist AP and Lateral View', '240', '4461272', 'false'),
(7, '', 'DIAR890', 'X Ray Whole Spine Lateral View', '320', '4461262', 'false'),
(8, '', 'DIAR889', 'X Ray Whole Spine Lateral and AP View', '560', '4461252', 'false'),
(9, '', 'DIAR888', 'X Ray Whole Spine AP View', '320', '4461242', 'false'),
(10, '', 'DIAR887', 'X Ray Water View', '145', '4461232', 'false'),
(11, '', 'DIAR886', 'X Ray Tm Joint Lateral View', '162', '4461222', 'false'),
(12, '', 'DIAR885', 'X Ray Tm Joint AP View', '162', '4461212', 'false'),
(13, '', 'DIAR884', 'X Ray Tm Joint AP and Lateral View', '280', '4461202', 'false'),
(14, '', 'DIAR883', 'X Ray Thumb Lateral View', '120', '4461192', 'false'),
(15, '', 'DIAR882', 'X Ray Thumb Lateral and AP View', '240', '4461182', 'false'),
(16, '', 'DIAR881', 'X Ray Thumb AP View', '120', '4461172', 'false'),
(17, '', 'DIAR880', 'X Ray Thigh Lateral View', '120', '4461162', 'false'),
(18, '', 'DIAR879', 'X Ray Thigh AP View', '120', '4461152', 'false'),
(19, '', 'DIAR878', 'X Ray Thigh AP and Lateral View', '240', '4461142', 'false'),
(20, '', 'DIAR877', 'X ray Temp', '0', '4461132', 'false'),
(21, '', 'DIAR877', 'X ray Temp', '0', '4461132', 'false'),
(22, '', 'DIAR877', 'X ray Temp', '0', '4461132', 'false'),
(23, '', 'DIAR877', 'X ray Temp', '0', '4461132', 'false'),
(24, '', 'DIAR877', 'X ray Temp', '0', '4461132', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'admin@mail.com', 'admin123'),
(2, 'info@mail.com', 'info123'),
(3, 'test@email.com', 'test123'),
(4, 'john@email.com', 'john123');

-- --------------------------------------------------------

--
-- Table structure for table `user_selected_tests`
--

CREATE TABLE `user_selected_tests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_selected_tests`
--

INSERT INTO `user_selected_tests` (`id`, `user_id`, `test_id`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(7, 1, 0, 1, 1, '2020-08-09 08:27:50', 0, '0000-00-00 00:00:00'),
(8, 1, 1, 1, 1, '2020-08-09 08:27:51', 0, '0000-00-00 00:00:00'),
(9, 1, 6, 1, 1, '2020-08-09 08:27:51', 0, '0000-00-00 00:00:00'),
(10, 1, 7, 1, 1, '2020-08-09 08:27:51', 0, '0000-00-00 00:00:00'),
(11, 1, 0, 1, 1, '2020-08-09 08:30:36', 0, '0000-00-00 00:00:00'),
(12, 1, 3, 1, 1, '2020-08-09 08:30:36', 0, '0000-00-00 00:00:00'),
(13, 1, 7, 1, 1, '2020-08-09 08:30:36', 0, '0000-00-00 00:00:00'),
(14, 1, 10, 1, 1, '2020-08-09 08:30:36', 0, '0000-00-00 00:00:00'),
(15, 1, 0, 1, 1, '2020-08-09 09:08:23', 0, '0000-00-00 00:00:00'),
(16, 1, 1, 1, 1, '2020-08-09 09:08:23', 0, '0000-00-00 00:00:00'),
(19, 1, 0, 1, 1, '2020-08-09 09:12:31', 0, '0000-00-00 00:00:00'),
(20, 1, 1, 1, 1, '2020-08-09 09:12:31', 0, '0000-00-00 00:00:00'),
(21, 1, 6, 1, 1, '2020-08-09 09:12:31', 0, '0000-00-00 00:00:00'),
(22, 1, 7, 1, 1, '2020-08-09 09:12:31', 0, '0000-00-00 00:00:00'),
(23, 1, 0, 1, 1, '2020-08-09 09:12:57', 0, '0000-00-00 00:00:00'),
(24, 1, 1, 1, 1, '2020-08-09 09:12:57', 0, '0000-00-00 00:00:00'),
(25, 1, 2, 1, 1, '2020-08-09 09:12:57', 0, '0000-00-00 00:00:00'),
(26, 1, 0, 1, 1, '2020-08-09 09:13:03', 0, '0000-00-00 00:00:00'),
(27, 1, 18, 1, 1, '2020-08-09 09:13:03', 0, '0000-00-00 00:00:00'),
(28, 1, 0, 1, 1, '2020-08-09 09:16:52', 0, '0000-00-00 00:00:00'),
(29, 1, 1, 1, 1, '2020-08-09 09:16:52', 0, '0000-00-00 00:00:00'),
(30, 1, 3, 1, 1, '2020-08-09 09:16:52', 0, '0000-00-00 00:00:00'),
(31, 1, 0, 1, 1, '2020-08-09 09:25:05', 0, '0000-00-00 00:00:00'),
(32, 1, 1, 1, 1, '2020-08-09 09:25:05', 0, '0000-00-00 00:00:00'),
(33, 1, 6, 1, 1, '2020-08-09 09:25:05', 0, '0000-00-00 00:00:00'),
(34, 1, 0, 1, 1, '2020-08-09 09:25:50', 0, '0000-00-00 00:00:00'),
(42, 1, 0, 1, 1, '2020-08-09 09:29:31', 0, '0000-00-00 00:00:00'),
(43, 1, 2, 1, 1, '2020-08-09 09:29:31', 0, '0000-00-00 00:00:00'),
(46, 1, 0, 1, 1, '2020-08-09 09:33:27', 0, '0000-00-00 00:00:00'),
(47, 1, 1, 1, 1, '2020-08-09 09:33:27', 0, '0000-00-00 00:00:00'),
(48, 1, 0, 1, 1, '2020-08-09 09:47:58', 0, '0000-00-00 00:00:00'),
(50, 1, 2, 1, 1, '2020-08-09 09:47:58', 0, '0000-00-00 00:00:00'),
(51, 1, 0, 1, 1, '2020-08-09 09:54:19', 0, '0000-00-00 00:00:00'),
(52, 1, 1, 1, 1, '2020-08-09 09:54:19', 0, '0000-00-00 00:00:00'),
(53, 1, 2, 1, 1, '2020-08-09 09:54:19', 0, '0000-00-00 00:00:00'),
(54, 1, 6, 1, 1, '2020-08-09 09:54:19', 0, '0000-00-00 00:00:00'),
(55, 1, 0, 1, 1, '2020-08-09 10:03:29', 0, '0000-00-00 00:00:00'),
(56, 1, 1, 1, 1, '2020-08-09 10:03:29', 0, '0000-00-00 00:00:00'),
(57, 1, 6, 1, 1, '2020-08-09 10:03:29', 0, '0000-00-00 00:00:00'),
(58, 1, 7, 1, 1, '2020-08-09 10:03:29', 0, '0000-00-00 00:00:00'),
(59, 3, 0, 1, 3, '2020-08-09 10:04:59', 0, '0000-00-00 00:00:00'),
(60, 3, 3, 2, 3, '2020-08-09 10:04:59', 0, '0000-00-00 00:00:00'),
(61, 3, 7, 2, 3, '2020-08-09 10:04:59', 0, '0000-00-00 00:00:00'),
(62, 3, 23, 2, 3, '2020-08-09 10:04:59', 0, '0000-00-00 00:00:00'),
(63, 3, 20, 2, 3, '2020-08-09 10:04:59', 0, '0000-00-00 00:00:00'),
(64, 1, 0, 1, 1, '2020-08-09 10:27:33', 0, '0000-00-00 00:00:00'),
(65, 1, 6, 2, 1, '2020-08-09 10:27:33', 0, '0000-00-00 00:00:00'),
(66, 1, 10, 2, 1, '2020-08-09 10:27:33', 0, '0000-00-00 00:00:00'),
(68, 1, 7, 2, 1, '2020-08-09 10:27:33', 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_selected_tests`
--
ALTER TABLE `user_selected_tests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_selected_tests`
--
ALTER TABLE `user_selected_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
