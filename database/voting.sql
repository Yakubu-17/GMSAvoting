-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2020 at 05:06 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candidate_id` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `year_level` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidate_id`, `position`, `firstname`, `lastname`, `year_level`, `gender`, `img`) VALUES
(6, 'President', 'Alhaji', 'A', '3rd Year', 'Male', 'upload/Guy1.png'),
(7, 'President', 'Mallam', 'B', '3rd Year', 'Male', 'upload/guy2.jpg'),
(8, 'President', 'Alhaji', 'C', '3rd Year', 'Male', 'upload/guy3.jpg'),
(9, 'Vice President', 'Mufti', 'A', '3rd Year', 'Male', 'upload/guy5.gif'),
(10, 'Vice President', 'Shehu', 'B', '3rd Year', 'Male', 'upload/guy6.jpg'),
(11, 'Vice President', 'Alhaji', 'C', '2nd Year', 'Male', 'upload/guy7.jpg'),
(12, 'General Secretary', 'Hajia', 'A', '3rd Year', 'Female', 'upload/Lady1.jpg'),
(13, 'General Secretary', 'Hajia', 'B', '2nd Year', 'Female', 'upload/lady2.jpg'),
(14, 'General Secretary', 'Hajia', 'C', '3rd Year', 'Female', 'upload/lady3.png'),
(15, 'Financial Secretary', 'Mallam', 'A', '3rd Year', 'Male', 'upload/guy8.jpg'),
(16, 'Financial Secretary', 'Sheikh', 'B', '2nd Year', 'Male', 'upload/guy9.jpg'),
(17, 'Financial Secretary', 'Alhaji', 'C', '3rd Year', 'Male', 'upload/guy10.jpg'),
(18, 'Organizing Secretary', 'Sheikh', 'D', '3rd Year', 'Male', 'upload/guy12.jpg'),
(19, 'Organizing Secretary', 'Alhaji', 'E', '3rd Year', 'Male', 'upload/guy13.jpg'),
(20, 'Organizing Secretary', 'Mufti', 'F', '2nd Year', 'Male', 'upload/guy11.jpg'),
(24, 'Ladies Wing President', 'Mallamat', 'A', '2nd Year', 'Female', 'upload/Lady4.jpg'),
(25, 'Ladies Wing President', 'Mallamat', 'B', '2nd Year', 'Female', 'upload/lady5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'admin', 'admin', 'Yakubu ', 'Bunyamin'),
(2, 'Bunya', '5050', 'Yaks', 'Bunya');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `voters_id` int(11) NOT NULL,
  `id_number` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `year_level` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`voters_id`, `id_number`, `gender`, `firstname`, `lastname`, `year_level`, `status`, `account`) VALUES
(23, 17, 'Female', 'Alhaji', 'world', '2nd Year', 'Voted', 'Active'),
(2, 6666, 'un0uRNLN', 'Harry', 'Den', '4th Year', 'Voted', 'Active'),
(3, 717, '4kQZjUcJ', 'Yakubu ', 'kat', '1st Year', 'Voted', 'Active'),
(4, 800, 'wiARBNxg', 'hello', 'world', '4th Year', 'Voted', 'Active'),
(5, 87654, 'Dgy5vS4c', 'hello', 'kat', '1st Year', 'Voted', 'Active'),
(6, 7070, '', 'Master', 'Madam', '3rd Year', 'Voted', 'Active'),
(7, 100, '', 'naa', 'daa', '2nd Year', 'Voted', 'Active'),
(8, 200, '', 'trrtrty', 'rrty', '2nd Year', 'Unvoted', 'Active'),
(9, 300, 'Male', 'koo', 'nana', '1st Year', 'Voted', 'Active'),
(10, 500, 'Male', 'Yello ', 'Asay', '2nd Year', 'Voted', 'Active'),
(11, 900, '', 'Frank', 'Timer', '', 'Voted', 'Active'),
(12, 700, '', 'my', 'you', '', 'Unvoted', 'Active'),
(13, 10, 'Female', 'masa', 'yoo', '3rd Year', 'Voted', 'Active'),
(14, 70, 'Female', 'Issah', 'Baba', '3rd Year', 'Voted', 'Active'),
(15, 25, 'Male', 'Baba ', 'Sadick', '3rd Year', 'Voted', 'Active'),
(16, 30, 'Male', 'hello', 'Bunyaminu', '3rd Year', 'Voted', 'Active'),
(17, 90, 'Female', 'shama', 'guy', '3rd Year', 'Voted', 'Active'),
(18, 12, 'Male', 'Nana', 'James', '2nd Year', 'Voted', 'Active'),
(19, 2, 'Male', 'gh', 'kat', '2nd Year', 'Voted', 'Active'),
(20, 3, 'Female', 'hello', 'hama', '3rd Year', 'Voted', 'Active'),
(21, 4, 'Male', 'Yakubu ', 'world', '3rd Year', 'Voted', 'Active'),
(22, 5, 'Female', 'teemah', 'world', '2nd Year', 'Voted', 'Active'),
(24, 110, 'Male', 'Yakubu ', 'B', '3rd Year', 'Voted', 'Active'),
(25, 97, 'Female', 'Alhaji', 'kat', '3rd Year', 'Voted', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(255) NOT NULL,
  `candidate_id` varchar(255) NOT NULL,
  `voters_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`vote_id`, `candidate_id`, `voters_id`) VALUES
(1, '1', '2'),
(2, '', '2'),
(3, '', '2'),
(4, '2', '2'),
(5, '', '2'),
(6, '', '2'),
(7, '', '2'),
(8, '', '2'),
(9, '', '2'),
(10, '', '2'),
(11, '', '2'),
(12, '1', '3'),
(13, '', '3'),
(14, '', '3'),
(15, '2', '3'),
(16, '', '3'),
(17, '', '3'),
(18, '', '3'),
(19, '', '3'),
(20, '', '3'),
(21, '', '3'),
(22, '', '3'),
(23, '4', '4'),
(24, '3', '4'),
(25, '', '4'),
(26, '2', '4'),
(27, '', '4'),
(28, '', '4'),
(29, '', '4'),
(30, '', '4'),
(31, '', '4'),
(32, '', '4'),
(33, '', '4'),
(34, '4', '6'),
(35, '', '6'),
(36, '', '6'),
(37, '', '6'),
(38, '', '6'),
(39, '', '6'),
(40, '1', '7'),
(41, '', '7'),
(42, '', '7'),
(43, '', '7'),
(44, '', '7'),
(45, '', '7'),
(46, '1', '5'),
(47, '', '5'),
(48, '', '5'),
(49, '', '5'),
(50, '', '5'),
(51, '', '5'),
(52, '1', '11'),
(53, '', '11'),
(54, '', '11'),
(55, '', '11'),
(56, '', '11'),
(57, '', '11'),
(58, '1', '13'),
(59, '', '13'),
(60, '', '13'),
(61, '', '13'),
(62, '', '13'),
(63, '', '13'),
(64, '4', ''),
(65, '', ''),
(66, '', ''),
(67, '', ''),
(68, '', ''),
(69, '', ''),
(70, '4', ''),
(71, '', ''),
(72, '', ''),
(73, '', ''),
(74, '', ''),
(75, '', ''),
(76, '1', ''),
(77, '', ''),
(78, '', ''),
(79, '', ''),
(80, '', ''),
(81, '', ''),
(82, '4', ''),
(83, '', ''),
(84, '', ''),
(85, '', ''),
(86, '', ''),
(87, '', ''),
(88, '1', ''),
(89, '', ''),
(90, '', ''),
(91, '', ''),
(92, '', ''),
(93, '', ''),
(94, '1', ''),
(95, '', ''),
(96, '', ''),
(97, '', ''),
(98, '', ''),
(99, '', ''),
(100, '1', '10'),
(101, '', '10'),
(102, '', '10'),
(103, '', '10'),
(104, '', '10'),
(105, '', '10'),
(106, '1', ''),
(107, '', ''),
(108, '', ''),
(109, '', ''),
(110, '', ''),
(111, '', ''),
(112, '4', '14'),
(113, '', '14'),
(114, '', '14'),
(115, '', '14'),
(116, '', '14'),
(117, '', '14'),
(118, '1', '15'),
(119, '', '15'),
(120, '', '15'),
(121, '', '15'),
(122, '', '15'),
(123, '', '15'),
(124, '4', '16'),
(125, '', '16'),
(126, '', '16'),
(127, '', '16'),
(128, '', '16'),
(129, '', '16'),
(130, '4', '17'),
(131, '', '17'),
(132, '', '17'),
(133, '', '17'),
(134, '', '17'),
(135, '', '17'),
(136, '4', '18'),
(137, '', '18'),
(138, '', '18'),
(139, '', '18'),
(140, '', '18'),
(141, '', '18'),
(142, '1', '19'),
(143, '', '19'),
(144, '', '19'),
(145, '', '19'),
(146, '', '19'),
(147, '', '19'),
(148, '4', '20'),
(149, '', '20'),
(150, '', '20'),
(151, '', '20'),
(152, '', '20'),
(153, '', '20'),
(154, '4', '22'),
(155, '', '22'),
(156, '', '22'),
(157, '', '22'),
(158, '', '22'),
(159, '', '22'),
(160, '1', '21'),
(161, '', '21'),
(162, '', '21'),
(163, '', '21'),
(164, '', '21'),
(165, '', '21'),
(166, '1', ''),
(167, '', ''),
(168, '', ''),
(169, '', ''),
(170, '', ''),
(171, '', ''),
(172, '1', ''),
(173, '', ''),
(174, '', ''),
(175, '', ''),
(176, '', ''),
(177, '', ''),
(178, '6', '23'),
(179, '10', '23'),
(180, '13', '23'),
(181, '17', '23'),
(182, '', '23'),
(183, '', '23'),
(184, '6', '24'),
(185, '10', '24'),
(186, '13', '24'),
(187, '17', '24'),
(188, '19', '24'),
(189, '', '24'),
(190, '7', '25'),
(191, '11', '25'),
(192, '14', '25'),
(193, '15', '25'),
(194, '19', '25'),
(195, '24', '25'),
(196, '8', '9'),
(197, '11', '9'),
(198, '14', '9'),
(199, '17', '9'),
(200, '20', '9'),
(201, '', '9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`voters_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `voters_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
