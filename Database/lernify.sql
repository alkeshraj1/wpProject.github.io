-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 07, 2023 at 07:15 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lernify`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_result`
--

DROP TABLE IF EXISTS `class_result`;
CREATE TABLE IF NOT EXISTS `class_result` (
  `class_result_id` int NOT NULL AUTO_INCREMENT,
  `roll_no` varchar(30) NOT NULL,
  `course_code` varchar(30) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `total_marks` varchar(11) NOT NULL,
  `obtain_marks` varchar(11) NOT NULL,
  `result_date` varchar(10) NOT NULL,
  PRIMARY KEY (`class_result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_result`
--

INSERT INTO `class_result` (`class_result_id`, `roll_no`, `course_code`, `subject_code`, `semester`, `total_marks`, `obtain_marks`, `result_date`) VALUES
(42, '', '', '', '', '', '', '30-03-20'),
(43, '', '', '', '', '', '', '30-03-20'),
(44, '', '', '', '', '', '', '30-03-20'),
(45, '', '', '', '', '', '', '30-03-20'),
(47, '', '', '', '', '', '', '30-03-20'),
(48, '', '', '', '', '', '', '30-03-20'),
(49, '', '', '', '', '', '', '30-03-20'),
(50, '', '', '', '', '', '', '30-03-20'),
(51, '', '', '', '', '', '', '30-03-20'),
(52, '', '', '', '', '', '', '30-03-20'),
(53, '', '', '', '', '', '', '30-03-20'),
(54, '', '', '', '', '', '', '30-03-20'),
(57, '19k1302', 'MCS', 'DBMS', '2', '100', '100', '07-05-23'),
(58, '19k1302', 'MCS', 'DLD', '2', '100', '80', '07-05-23'),
(59, '19k1302', 'MCS', 'Ds', '1', '100', '50', '07-05-23'),
(60, '19k1302', 'MCS', 'I2C', '1', '100', '90', '07-05-23'),
(61, '19k1302', 'MCS', 'OOP', '2', '100', '79', '07-05-23'),
(62, '19k1302', 'MCS', 'SE', '2', '100', '56', '07-05-23'),
(63, '19k1302', 'MCS', 'WEB', '2', '100', '67', '07-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `semester_or_year` varchar(10) NOT NULL,
  `no_of_year` int NOT NULL,
  PRIMARY KEY (`course_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_name`, `semester_or_year`, `no_of_year`) VALUES
('BBA', 'Bachular in Business Administration', 'Semester', 2),
('M.Com', 'Master in Commerce', 'Semester', 2),
('MCS', 'Master in Computer Science', 'Semester', 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_subjects`
--

DROP TABLE IF EXISTS `course_subjects`;
CREATE TABLE IF NOT EXISTS `course_subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int NOT NULL,
  `credit_hours` int NOT NULL,
  PRIMARY KEY (`subject_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_subjects`
--

INSERT INTO `course_subjects` (`subject_code`, `subject_name`, `course_code`, `semester`, `credit_hours`) VALUES
('DBMS', 'Database Management System', 'MCS', 2, 4),
('OOP', 'Object oriented Programming', 'MCS', 2, 3),
('OS', 'programming fundamentals', 'MCS', 1, 3),
('pf', 'programming fundamentals', 'MCS', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `account` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `user_id`, `Password`, `Role`, `account`) VALUES
(2, 'admin@gmail.com', 'admin123*', 'Admin', ''),
(5, 'staff1@gmail.com', 'teacher123*', 'Teacher', ''),
(6, '19k1302', 'student123*', 'Student', ''),
(7, 'alkeshraj', 'alkeshraj', 'Student', 'Activate'),
(8, 'rajalkesh15@gmail.com', 'alkeshraj', 'Teacher', ''),
(9, 'surjeet@gmail.com', 'teacher123*', 'Teacher', ''),
(10, '1234', 'student123*', 'Student', ''),
(11, 'ali@gmail.com', 'teacher123*', 'Teacher', '');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

DROP TABLE IF EXISTS `mytable`;
CREATE TABLE IF NOT EXISTS `mytable` (
  `id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` int NOT NULL AUTO_INCREMENT,
  `session` varchar(30) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `session`, `created_date`) VALUES
(1, 'S19', '2020-03-11 20:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

DROP TABLE IF EXISTS `student_attendance`;
CREATE TABLE IF NOT EXISTS `student_attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `course_code` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` int NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `attendance` int NOT NULL,
  `attendance_date` varchar(11) NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`attendance_id`, `course_code`, `subject_code`, `semester`, `student_id`, `attendance`, `attendance_date`) VALUES
(1, 'MCS', 'DBMS', 2, 'MCS-S19-1', 1, '15-03-20'),
(2, 'MCS', 'DBMS', 2, 'MCS-S19-1', 1, '15-03-20'),
(3, 'MCS', 'DBMS', 2, 'MCS-S19-1', 1, '15-03-20'),
(4, 'MCS', 'DBMS', 2, 'MCS-S19-1', 0, '15-03-20'),
(5, 'MCS', 'DLD', 2, 'MCS-S19-1', 1, '15-03-20'),
(6, 'MCS', 'OOP', 2, 'MCS-S19-1', 1, '15-03-20'),
(7, 'MCS', 'SE', 2, 'MCS-S19-1', 0, '15-03-20'),
(8, 'MCS', 'WEB', 2, 'MCS-S19-1', 1, '15-03-20'),
(9, 'MCS', 'OOP', 2, '19k1302', 1, '07-05-23'),
(10, 'MCS', 'OOP', 2, '19k1302', 1, '07-05-23'),
(11, 'MCS', 'OOP', 2, '19k1302', 0, '07-05-23'),
(12, 'MCS', 'OOP', 2, '19k1302', 1, '07-05-23'),
(13, 'MCS', 'OOP', 2, '19k1302', 1, '07-05-23'),
(14, 'MCS', 'OOP', 2, '19k1302', 1, '07-05-23'),
(15, 'MCS', 'OOP', 2, '19k1302', 1, '07-05-23'),
(16, 'MCS', 'OOP', 2, '19k1302', 1, '07-05-23'),
(17, 'MCS', 'OOP', 2, '19k1302', 1, '07-05-23'),
(18, 'MCS', 'OOP', 2, '19k1302', 1, '07-05-23'),
(19, 'MCS', 'OOP', 2, '19k1302', 1, '07-05-23'),
(20, 'MCS', 'OOP', 2, '19k1302', 1, '07-05-23'),
(21, 'MCS', 'OOP', 2, '19k1302', 1, '07-05-23'),
(22, 'MCS', 'OOP', 2, '19k1302', 0, '07-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

DROP TABLE IF EXISTS `student_courses`;
CREATE TABLE IF NOT EXISTS `student_courses` (
  `student_course_id` int NOT NULL AUTO_INCREMENT,
  `course_code` varchar(10) NOT NULL,
  `semester` int NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL,
  PRIMARY KEY (`student_course_id`),
  KEY `course_code` (`course_code`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`student_course_id`, `course_code`, `semester`, `roll_no`, `subject_code`, `session`, `assign_date`) VALUES
(1, 'MCS', 2, 'MCS-S19-1', 'OOP', 'S19', '15-03-20'),
(2, 'MCS', 2, 'MCS-S19-1', 'DBMS', 'S19', '15-03-20'),
(3, 'MCS', 2, 'MCS-S19-1', 'DLD', 'S19', '15-03-20'),
(4, 'MCS', 2, 'MCS-S19-1', 'SE', 'S19', '15-03-20'),
(5, 'MCS', 2, 'MCS-S19-1', 'WEB', 'S19', '15-03-20'),
(7, 'MCS', 1, '1', 'CSPD', '', '06-05-23'),
(8, 'MCS', 2, '1', 'DBMS', '', '06-05-23'),
(9, 'MCS', 2, '1', 'DLD', '', '06-05-23'),
(10, 'MCS', 1, '1', 'Ds', '', '06-05-23'),
(11, 'MCS', 1, '1', 'I2C', '', '06-05-23'),
(12, 'MCS', 2, '1', 'OOP', '', '06-05-23'),
(13, 'MCS', 2, '1', 'SE', '', '06-05-23'),
(14, 'MCS', 2, '1', 'WEB', '', '06-05-23'),
(15, 'MIT', 2, '1234', 'ITP', '', '07-05-23'),
(16, 'MIT', 2, '1234', 'MBAD', '', '07-05-23'),
(17, 'BBA', 1, '1234', 'DBMS', '', '07-05-23'),
(18, 'MCS', 2, '19k1302', 'DBMS', '', '07-05-23'),
(19, 'MCS', 2, '19k1302', 'DLD', '', '07-05-23'),
(20, 'MCS', 1, '19k1302', 'Ds', '', '07-05-23'),
(21, 'MCS', 1, '19k1302', 'I2C', '', '07-05-23'),
(22, 'MCS', 2, '19k1302', 'OOP', '', '07-05-23'),
(23, 'MCS', 2, '19k1302', 'SE', '', '07-05-23'),
(24, 'MCS', 2, '19k1302', 'WEB', '', '07-05-23'),
(25, 'BSAI', 1, '1234', 'PF', '', '07-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

DROP TABLE IF EXISTS `student_fee`;
CREATE TABLE IF NOT EXISTS `student_fee` (
  `fee_voucher` int NOT NULL AUTO_INCREMENT,
  `roll_no` varchar(30) NOT NULL,
  `amount` int NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`fee_voucher`),
  KEY `roll_no` (`roll_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_fee`
--

INSERT INTO `student_fee` (`fee_voucher`, `roll_no`, `amount`, `posting_date`, `status`) VALUES
(1, 'MCS-S19-1', 23455, '2020-03-29 11:24:36', 'Paid'),
(2, 'MCS-S19-1', 20093, '2020-03-30 12:35:39', 'Paid'),
(3, '19k1302', 10000, '2023-05-06 09:56:24', 'Paid'),
(4, '1234', 10000, '2023-05-07 09:05:51', 'Paid'),
(5, '1234', 0, '2023-05-07 18:12:29', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
CREATE TABLE IF NOT EXISTS `student_info` (
  `roll_no` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile_no` varchar(11) NOT NULL,
  `course_code` varchar(11) NOT NULL,
  `session` varchar(10) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `prospectus_issued` varchar(10) NOT NULL,
  `prospectus_amount` varchar(10) NOT NULL,
  `form_b` varchar(20) NOT NULL,
  `applicant_status` varchar(20) NOT NULL,
  `application_status` varchar(20) NOT NULL,
  `cnic` varchar(15) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `other_phone` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(150) NOT NULL,
  `current_address` varchar(150) NOT NULL,
  `place_of_birth` varchar(150) NOT NULL,
  `matric_complition_date` varchar(10) NOT NULL,
  `matric_awarded_date` varchar(10) NOT NULL,
  `matric_certificate` varchar(100) NOT NULL,
  `fa_complition_date` varchar(10) NOT NULL,
  `fa_awarded_date` varchar(10) NOT NULL,
  `fa_certificate` varchar(100) NOT NULL,
  `ba_complition_date` varchar(10) NOT NULL,
  `ba_awarded_date` varchar(10) NOT NULL,
  `ba_certificate` varchar(100) NOT NULL,
  `semester` int NOT NULL,
  `total_marks` int NOT NULL,
  `obtain_marks` int NOT NULL,
  `state` varchar(20) NOT NULL,
  `admission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`roll_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`roll_no`, `first_name`, `middle_name`, `last_name`, `father_name`, `email`, `mobile_no`, `course_code`, `session`, `profile_image`, `prospectus_issued`, `prospectus_amount`, `form_b`, `applicant_status`, `application_status`, `cnic`, `dob`, `other_phone`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `matric_complition_date`, `matric_awarded_date`, `matric_certificate`, `fa_complition_date`, `fa_awarded_date`, `fa_certificate`, `ba_complition_date`, `ba_awarded_date`, `ba_certificate`, `semester`, `total_marks`, `obtain_marks`, `state`, `admission_date`) VALUES
('1234', 'daksh', 'kumar', 'dewani', 'daksh', 'daksh@gmail.com', '03303420068', 'MIT', 'S19', 'Application.docx', 'Yes', 'Yes', '234', 'Admitted', 'Approved', '12345445545454', '2023-05-03', '', 'Male', 'amma towers', 'amma towers', 'karachi', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2023-05-07 08:29:28'),
('19k1302', 'Alkesh', 'raj', 'dewani', 'RajKumar', 'rajalkesh15@gmail.com', '03303420068', 'BSAI', 'S19', 'alkesh.png', 'Yes', 'Yes', 'dssdf', 'Admitted', 'Approved', '12345445545454', '2001-01-13', '', 'Male', 'dfdf', 'dfdf', 'dsdsdf', '2006-02-04', '2014-02-03', 'alkesh.png', '2019-05-29', '2020-11-30', 'alkesh.png', '2022-11-30', '2022-11-30', 'alkesh.png', 0, 578, 0, '', '2023-05-06 21:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

DROP TABLE IF EXISTS `teacher_attendance`;
CREATE TABLE IF NOT EXISTS `teacher_attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` varchar(30) NOT NULL,
  `attendance` int NOT NULL,
  `attendance_date` varchar(11) NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`attendance_id`, `teacher_id`, `attendance`, `attendance_date`) VALUES
(1, '3', 1, '09-03-20'),
(2, '3', 1, '10-03-20'),
(3, '3', 1, '11-04-20'),
(4, '3', 1, '30-03-20'),
(5, '2', 0, '30-03-20'),
(6, '2', 1, '06-05-23'),
(7, '2', 1, '06-05-23'),
(8, '2', 1, '06-05-23'),
(9, '5', 1, '07-05-23'),
(10, '5', 1, '07-05-23'),
(11, '5', 1, '07-05-23'),
(12, '5', 1, '07-05-23'),
(13, '5', 1, '07-05-23'),
(14, '5', 1, '07-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_courses`
--

DROP TABLE IF EXISTS `teacher_courses`;
CREATE TABLE IF NOT EXISTS `teacher_courses` (
  `teacher_courses_id` int NOT NULL AUTO_INCREMENT,
  `course_code` varchar(10) NOT NULL,
  `semester` int NOT NULL,
  `teacher_id` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL,
  `total_classes` int NOT NULL,
  PRIMARY KEY (`teacher_courses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_courses`
--

INSERT INTO `teacher_courses` (`teacher_courses_id`, `course_code`, `semester`, `teacher_id`, `subject_code`, `assign_date`, `total_classes`) VALUES
(1, 'MCS', 2, '3', 'OOP', '27-03-20', 30),
(2, 'MCS', 2, '1', 'DBMS', '27-03-20', 30),
(3, 'MCS', 2, '3', 'DLD', '27-03-20', 30),
(4, 'MCS', 2, '1', 'SE', '27-03-20', 30),
(5, 'MCS', 2, '3', 'WEB', '27-03-20', 30),
(6, 'MCS', 4, '2', 'OOP', '06-05-23', 3),
(7, 'MIT', 4, '2', 'WEB', '06-05-23', 3),
(8, 'MCS', 1, '5', 'OOP', '07-05-23', 1),
(9, 'MCS', 1, '5', 'OOP', '07-05-23', 1),
(10, 'MCS', 2, '5', 'OOP', '07-05-23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

DROP TABLE IF EXISTS `teacher_info`;
CREATE TABLE IF NOT EXISTS `teacher_info` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `profile_image` blob NOT NULL,
  `teacher_status` varchar(10) NOT NULL,
  `application_status` varchar(10) NOT NULL,
  `cnic` varchar(15) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `other_phone` int NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(100) NOT NULL,
  `current_address` varchar(100) NOT NULL,
  `place_of_birth` varchar(50) NOT NULL,
  `matric_complition_date` varchar(10) NOT NULL,
  `matric_awarded_date` varchar(10) NOT NULL,
  `matric_certificate` varchar(100) NOT NULL,
  `fa_complition_date` varchar(10) NOT NULL,
  `fa_awarded_date` varchar(10) NOT NULL,
  `fa_certificate` varchar(100) NOT NULL,
  `ba_complition_date` varchar(10) NOT NULL,
  `ba_awarded_date` varchar(10) NOT NULL,
  `ba_certificate` varchar(100) NOT NULL,
  `ma_complition_date` varchar(10) NOT NULL,
  `ma_awarded_date` varchar(100) NOT NULL,
  `ma_certificate` varchar(101) NOT NULL,
  `last_qualification` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `hire_date` varchar(10) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`teacher_id`, `first_name`, `middle_name`, `last_name`, `father_name`, `email`, `phone_no`, `profile_image`, `teacher_status`, `application_status`, `cnic`, `dob`, `other_phone`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `matric_complition_date`, `matric_awarded_date`, `matric_certificate`, `fa_complition_date`, `fa_awarded_date`, `fa_certificate`, `ba_complition_date`, `ba_awarded_date`, `ba_certificate`, `ma_complition_date`, `ma_awarded_date`, `ma_certificate`, `last_qualification`, `state`, `hire_date`) VALUES
(5, 'Ali', 'muhammad', 'ali', '', 'ali@gmail.com', '03303420068', 0x696d61676570726f66696c652e706e67, 'Permanent', 'Yes', '12345445545454', '2017-06-07', 2147483647, 'Male', 'amma towers', 'amma towers', 'karachi', '2017-01-07', '2019-02-07', 'color.png', '2020-11-08', '2014-10-02', 'color.png', '2023-05-17', '', '', '', '', '', '', '', '07-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_allowances`
--

DROP TABLE IF EXISTS `teacher_salary_allowances`;
CREATE TABLE IF NOT EXISTS `teacher_salary_allowances` (
  `teacher_id` int NOT NULL,
  `basic_salary` int NOT NULL,
  `medical_allowance` int NOT NULL,
  `hr_allowance` int NOT NULL,
  `scale` int NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_salary_allowances`
--

INSERT INTO `teacher_salary_allowances` (`teacher_id`, `basic_salary`, `medical_allowance`, `hr_allowance`, `scale`) VALUES
(1, 40000, 5, 10, 15),
(2, 55000, 7, 15, 18),
(3, 43000, 5, 8, 14),
(5, 2000, 5000, 5000, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_report`
--

DROP TABLE IF EXISTS `teacher_salary_report`;
CREATE TABLE IF NOT EXISTS `teacher_salary_report` (
  `salary_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `total_amount` int NOT NULL,
  `status` varchar(11) NOT NULL,
  `paid_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`salary_id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_salary_report`
--

INSERT INTO `teacher_salary_report` (`salary_id`, `teacher_id`, `total_amount`, `status`, `paid_date`) VALUES
(1, 1, 46000, 'Paid', '2020-03-27 11:28:57'),
(2, 2, 67100, 'Paid', '2020-03-27 11:50:13'),
(3, 3, 48590, 'Paid', '2020-03-27 11:55:58'),
(4, 1, 46000, 'Paid', '2020-03-27 12:33:39'),
(5, 3, 48590, 'Paid', '2020-03-28 08:26:59'),
(6, 2, 67100, 'Paid', '2020-03-28 08:30:46'),
(7, 2, 67100, 'Paid', '2020-03-28 08:32:06'),
(8, 2, 67100, 'Paid', '2020-03-28 08:32:46'),
(9, 2, 67100, 'Paid', '2020-03-28 08:33:59'),
(10, 2, 67100, 'Paid', '2020-03-28 08:35:54'),
(11, 2, 67100, 'Paid', '2020-03-28 08:38:17'),
(12, 2, 67100, 'Paid', '2020-03-28 08:39:22'),
(13, 2, 67100, 'Paid', '2020-03-28 08:40:44'),
(14, 2, 67100, 'Paid', '2020-03-28 08:41:26'),
(15, 2, 67100, 'Paid', '2020-03-28 08:42:25'),
(16, 2, 67100, 'Paid', '2020-03-28 08:43:32'),
(17, 2, 67100, 'Paid', '2020-03-28 08:44:03'),
(18, 2, 67100, 'Paid', '2020-03-28 08:44:39'),
(19, 2, 67100, 'Paid', '2020-03-28 08:45:09'),
(20, 2, 67100, 'Paid', '2020-03-28 08:45:22'),
(21, 2, 67100, 'Paid', '2020-03-28 08:45:36'),
(22, 2, 67100, 'Paid', '2020-03-28 08:45:45'),
(23, 2, 67100, 'Paid', '2020-03-28 08:45:59'),
(24, 2, 67100, 'Paid', '2020-03-28 08:47:42'),
(25, 2, 67100, 'Paid', '2020-03-28 08:48:11'),
(26, 3, 48590, 'Paid', '2020-03-28 08:48:22'),
(27, 3, 48590, 'Paid', '2020-03-28 08:48:40'),
(28, 3, 48590, 'Paid', '2020-03-28 10:48:28'),
(29, 3, 48590, 'Paid', '2020-03-28 10:49:47'),
(30, 3, 48590, 'Paid', '2020-03-30 12:37:11'),
(31, 5, 202000, 'Paid', '2023-05-07 18:10:47'),
(32, 5, 202000, 'Paid', '2023-05-07 18:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

DROP TABLE IF EXISTS `time_table`;
CREATE TABLE IF NOT EXISTS `time_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_code` varchar(10) NOT NULL,
  `semester` int NOT NULL,
  `timing_from` varchar(10) NOT NULL,
  `timing_to` varchar(10) NOT NULL,
  `day` varchar(20) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `room_no` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weekdays`
--

DROP TABLE IF EXISTS `weekdays`;
CREATE TABLE IF NOT EXISTS `weekdays` (
  `day_id` int NOT NULL AUTO_INCREMENT,
  `day_name` varchar(15) NOT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekdays`
--

INSERT INTO `weekdays` (`day_id`, `day_name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD CONSTRAINT `teacher_salary_report_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_salary_allowances` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
