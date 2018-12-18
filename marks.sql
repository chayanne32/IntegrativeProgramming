-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2018 at 01:29 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marks`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `schedule` varchar(100) NOT NULL,
  `instructor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `subject_id`, `schedule`, `instructor_id`) VALUES
(1, 1, '9:00 - 12:00 TTh', 2),
(2, 1, '1:30 - 4:30 MW', 2);

-- --------------------------------------------------------

--
-- Table structure for table `class_records`
--

CREATE TABLE `class_records` (
  `type` enum('Seatwork','Quiz','Major Exam','Project','Attendance','Others') NOT NULL,
  `perfect_score` double NOT NULL,
  `actual_score` double NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_records`
--

INSERT INTO `class_records` (`type`, `perfect_score`, `actual_score`, `student_id`, `class_id`, `date`) VALUES
('Seatwork', 10, 8, 1, 1, '2018-12-10'),
('Seatwork', 15, 14, 1, 1, '2018-12-08'),
('Seatwork', 10, 10, 1, 1, '2018-12-07'),
('Seatwork', 20, 18, 1, 1, '2018-12-06'),
('Quiz', 30, 26, 1, 1, '2018-12-11'),
('Quiz', 30, 23, 1, 1, '2018-12-12'),
('Quiz', 30, 28, 1, 1, '2018-12-13'),
('Major Exam', 40, 32, 1, 1, '2018-12-14'),
('Major Exam', 40, 37, 1, 1, '2018-12-15'),
('Seatwork', 15, 15, 1, 1, '2018-11-24'),
('Seatwork', 20, 19, 1, 1, '2018-11-23'),
('Seatwork', 25, 21, 1, 1, '2018-11-22'),
('Seatwork', 10, 8, 1, 1, '2018-11-21'),
('Quiz', 30, 26, 1, 1, '2018-11-28'),
('Quiz', 30, 21, 1, 1, '2018-11-27'),
('Quiz', 30, 24, 1, 1, '2018-11-26'),
('Quiz', 30, 29, 1, 1, '2018-11-25'),
('Project', 60, 50, 1, 1, '2018-12-15'),
('Attendance', 10, 9, 1, 1, '2018-12-15'),
('Major Exam', 40, 29, 1, 1, '2018-11-30'),
('Major Exam', 40, 33, 1, 1, '2018-11-29'),
('Seatwork', 10, 10, 2, 1, '2018-12-10'),
('Seatwork', 15, 11, 2, 1, '2018-12-08'),
('Seatwork', 10, 8, 2, 1, '2018-12-07'),
('Seatwork', 20, 15, 2, 1, '2018-12-06'),
('Quiz', 30, 26, 2, 1, '2018-12-11'),
('Quiz', 30, 25, 2, 1, '2018-12-12'),
('Quiz', 30, 29, 2, 1, '2018-12-13'),
('Major Exam', 40, 29, 2, 1, '2018-12-14'),
('Major Exam', 40, 37, 2, 1, '2018-12-15'),
('Seatwork', 15, 13, 2, 1, '2018-11-24'),
('Seatwork', 20, 17, 2, 1, '2018-11-23'),
('Seatwork', 25, 16, 2, 1, '2018-11-22'),
('Quiz', 30, 17, 2, 1, '2018-11-28'),
('Quiz', 30, 24, 2, 1, '2018-11-27'),
('Quiz', 30, 22, 2, 1, '2018-11-26'),
('Quiz', 30, 29, 2, 1, '2018-11-25'),
('Seatwork', 10, 0, 2, 1, '2018-11-21'),
('Major Exam', 40, 32, 2, 1, '2018-11-30'),
('Major Exam', 40, 31, 2, 1, '2018-11-29'),
('Attendance', 10, 7, 2, 1, '2018-12-15'),
('Project', 60, 45, 2, 1, '2018-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`class_id`, `student_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `grade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`student_id`, `subject_id`, `grade`) VALUES
(1, 1, 'NG'),
(2, 1, 'NG'),
(3, 1, 'NG');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id_number` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id_number`, `lastname`, `firstname`, `middlename`, `degree`, `password`) VALUES
(1, 'Karlos', 'Juan', 'Sheshe', 'Masters', 'Password1'),
(2, 'pers', 'shiela', 'honor', 'masters', '123');

-- --------------------------------------------------------

--
-- Table structure for table `percentage`
--

CREATE TABLE `percentage` (
  `type` enum('Seatwork','Quiz','Major Exam','Project','Attendance','Others') NOT NULL,
  `percent` double NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `percentage`
--

INSERT INTO `percentage` (`type`, `percent`, `class_id`) VALUES
('Attendance', 10, 1),
('Seatwork', 15, 1),
('Quiz', 20, 1),
('Major Exam', 30, 1),
('Project', 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id_number` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `course` varchar(10) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id_number`, `lastname`, `firstname`, `middlename`, `course`, `year`) VALUES
(1, 'Doe', 'John', 'Will', 'BSIT', 3),
(2, 'Wall', 'Jenkins', 'Smith', 'BSIT', 3),
(3, 'sheight', 'ins', 'tan', 'bsit', 3);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `description` varchar(100) NOT NULL,
  `units` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `course_code`, `description`, `units`) VALUES
(1, 'IT1101', 'Programming 1', 3),
(2, 'IT1201', 'Programming 2', 3),
(3, 'IT1102', 'Introduction to Computing', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id_number`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id_number`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
