-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2020 at 09:43 AM
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
(163, 20670025, 'Female', 'ADILAH', 'AHMED', '', 'Unvoted', 'Active'),
(162, 20496910, 'female', 'Abdul Wahab', 'Issah', '', 'Voted', 'Active'),
(160, 20497385, 'female', 'ADIZA', 'Issah', '', 'Unvoted', 'Active'),
(161, 20684345, 'Female', 'ABDUL- HAADI', 'RUWAIFA', '', 'Unvoted', 'Active'),
(159, 20519489, 'Female', 'Adiza', 'Seidu', '', 'Unvoted', 'Active'),
(158, 20670025, 'Female', 'ADILAH', 'AHMED', '', 'Unvoted', 'Active'),
(149, 20684345, 'Female', 'ABDUL- HAADI', 'RUWAIFA', '', 'Unvoted', 'Active'),
(150, 20541664, 'Female', 'Abdul Nasir', 'Fidaus', '', 'Unvoted', 'Active'),
(157, 20561708, 'Female', 'Addison', 'Fatima', '', 'Unvoted', 'Active'),
(156, 20668379, 'Female', 'Adams', 'Fedaus', '', 'Unvoted', 'Active'),
(155, 20518275, 'Female', 'Abubakar', 'Radia', '', 'Unvoted', 'Active'),
(154, 20700463, 'Female', 'ABIBA', 'AHMED', '', 'Unvoted', 'Active'),
(153, 20426515, 'female', 'ABIBA', 'Baba', '', 'Unvoted', 'Active'),
(152, 20496910, 'female', 'Abdul Wahab', 'Issah', '', 'Voted', 'Active'),
(151, 20495072, 'female', 'ABDUL RAHIM', 'NII OKAI', '', 'Unvoted', 'Active'),
(148, 0, 'Gender', 'First Name', 'Last Name', 'Year_Level', 'Unvoted', 'Active');

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
(232, '6', '80'),
(233, '9', '80'),
(234, '12', '80'),
(235, '15', '80'),
(236, '18', '80'),
(237, '', '80'),
(238, '7', '127'),
(239, '10', '127'),
(240, '14', '127'),
(241, '17', '127'),
(242, '19', '127'),
(243, '25', '127'),
(244, '6', '162'),
(245, '9', '162'),
(246, '13', '162'),
(247, '16', '162'),
(248, '19', '162'),
(249, '24', '162'),
(250, '6', '152'),
(251, '9', '152'),
(252, '12', '152'),
(253, '16', '152'),
(254, '19', '152'),
(255, '24', '152');

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
  MODIFY `voters_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
