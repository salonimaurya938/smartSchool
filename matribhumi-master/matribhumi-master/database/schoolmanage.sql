-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 02:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolmanage`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni_events`
--

CREATE TABLE `alumni_events` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section` varchar(255) NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `note` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `event_notification_message` text NOT NULL,
  `show_onwebsite` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alumni_students`
--

CREATE TABLE `alumni_students` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `current_email` varchar(255) NOT NULL,
  `current_phone` varchar(255) NOT NULL,
  `occupation` text NOT NULL,
  `address` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendence_type`
--

CREATE TABLE `attendence_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `key_value` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `attendence_type`
--

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '2016-06-23 18:11:37', '0000-00-00'),
(2, 'Late With Excuse', '<b class=\"text text-warning\">E</b>', 'no', '2018-05-29 08:19:48', '0000-00-00'),
(3, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '2016-06-23 18:12:28', '0000-00-00'),
(4, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '2016-10-11 11:35:40', '0000-00-00'),
(5, 'Holiday', 'H', 'yes', '2016-10-11 11:35:01', '0000-00-00'),
(6, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', '2016-06-23 18:12:28', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `book_no` varchar(50) NOT NULL,
  `isbn_no` varchar(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `rack_no` varchar(100) NOT NULL,
  `publish` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `perunitcost` float(10,2) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `available` varchar(10) DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_title`, `book_no`, `isbn_no`, `subject`, `rack_no`, `publish`, `author`, `qty`, `perunitcost`, `postdate`, `description`, `available`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'The Merchant of Venice', '894783930211', 'A41102D72', 'English', '84298742', 'Darshika singh', 'William Shakespeare', 1080, 189.00, '2023-10-16', 'The Merchant of Venice is perhaps one of the best plays created by William Shakespeare. It tells the story of a merchant called Antonio who owes some money to a spiteful moneylender, Shylock. Antonio takes this money for his friend Bassanio so that the latter can court a lady named Portia and marry her.', 'yes', 'no', '2023-10-16 10:42:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `duereturn_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `is_returned` int(11) DEFAULT 0,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'userlogin', 0, '2021-01-19 08:10:29'),
(2, 'login', 0, '2021-01-19 08:10:31'),
(3, 'admission', 0, '2021-01-19 04:48:11'),
(4, 'complain', 0, '2021-01-19 04:48:13'),
(5, 'contact_us', 0, '2021-01-19 04:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'General', 'no', '2022-09-29 14:13:57', NULL),
(2, 'OBC', 'no', '2023-10-17 05:46:01', NULL),
(3, 'ST', 'no', '2023-10-17 05:46:16', NULL),
(4, 'SC', 'no', '2023-10-17 05:46:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `certificate_name` varchar(100) NOT NULL,
  `certificate_text` text NOT NULL,
  `left_header` varchar(100) NOT NULL,
  `center_header` varchar(100) NOT NULL,
  `right_header` varchar(100) NOT NULL,
  `left_footer` varchar(100) NOT NULL,
  `right_footer` varchar(100) NOT NULL,
  `center_footer` varchar(100) NOT NULL,
  `background_image` varchar(100) DEFAULT NULL,
  `created_for` tinyint(1) NOT NULL COMMENT '1 = staff, 2 = students',
  `status` tinyint(1) NOT NULL,
  `header_height` int(11) NOT NULL,
  `content_height` int(11) NOT NULL,
  `footer_height` int(11) NOT NULL,
  `content_width` int(11) NOT NULL,
  `enable_student_image` tinyint(1) NOT NULL COMMENT '0=no,1=yes',
  `enable_image_height` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `certificate_name`, `certificate_text`, `left_header`, `center_header`, `right_header`, `left_footer`, `right_footer`, `center_footer`, `background_image`, `created_for`, `status`, `header_height`, `content_height`, `footer_height`, `content_width`, `enable_student_image`, `enable_image_height`, `created_at`, `updated_at`) VALUES
(1, 'Sample Transfer Certificate', 'This is certify that <b>[name]</b> has born on [dob]  <br> and have following details [present_address] [guardian] [created_at] [admission_no] [roll_no] [class] [section] [gender] [admission_date] [category] [cast] [father_name] [mother_name] [religion] [email] [phone] .<br>We wish best of luck for future endeavors.', 'Reff. No.....1111111.........', 'To Whomever It May Concern', 'Date: _10__/_10__/__2019__', '.................................<br>admin', '.................................<br>principal', '.................................<br>admin', 'sampletc121.png', 2, 1, 360, 400, 480, 810, 1, 230, '2019-12-21 15:14:34', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `chat_connections`
--

CREATE TABLE `chat_connections` (
  `id` int(11) NOT NULL,
  `chat_user_one` int(11) NOT NULL,
  `chat_user_two` int(11) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `chat_user_id` int(11) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  `is_first` int(1) DEFAULT 0,
  `is_read` int(1) NOT NULL DEFAULT 0,
  `chat_connection_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_users`
--

CREATE TABLE `chat_users` (
  `id` int(11) NOT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `create_staff_id` int(11) DEFAULT NULL,
  `create_student_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Pre-Nursery', 'no', '2022-01-29 01:53:11', NULL),
(3, 'Nursery', 'no', '2022-01-29 01:53:20', NULL),
(4, 'KG', 'no', '2022-01-29 01:53:29', NULL),
(5, 'LKG ', 'no', '2022-01-29 01:53:38', NULL),
(6, 'UKG ', 'no', '2022-01-29 01:53:47', NULL),
(7, 'Class 1', 'no', '2022-01-29 01:54:06', NULL),
(8, 'Class 2', 'no', '2022-01-29 01:54:14', NULL),
(9, 'Class 3', 'no', '2022-01-29 01:54:21', NULL),
(10, 'Class 4', 'no', '2022-01-29 01:54:29', NULL),
(11, 'Class 5', 'no', '2022-01-29 01:54:37', NULL),
(12, 'Class 6', 'no', '2022-01-29 01:56:02', NULL),
(13, 'Class 7', 'no', '2022-01-29 01:56:09', NULL),
(14, 'Class 8', 'no', '2022-01-29 01:56:15', NULL),
(15, 'Class 9', 'no', '2022-01-29 01:56:22', NULL),
(16, 'Class 10', 'no', '2022-01-29 01:56:30', NULL),
(17, 'Class 11', 'no', '2022-01-29 01:56:38', NULL),
(18, 'Class 12', 'no', '2022-01-29 01:56:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE `class_sections` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES
(5, 2, 1, 'no', '2022-01-29 01:53:11', NULL),
(6, 2, 2, 'no', '2022-01-29 01:53:11', NULL),
(7, 2, 3, 'no', '2022-01-29 01:53:11', NULL),
(8, 2, 4, 'no', '2022-01-29 01:53:11', NULL),
(9, 3, 1, 'no', '2022-01-29 01:53:20', NULL),
(10, 3, 2, 'no', '2022-01-29 01:53:20', NULL),
(11, 3, 3, 'no', '2022-01-29 01:53:20', NULL),
(12, 3, 4, 'no', '2022-01-29 01:53:20', NULL),
(13, 4, 1, 'no', '2022-01-29 01:53:29', NULL),
(14, 4, 2, 'no', '2022-01-29 01:53:29', NULL),
(15, 4, 3, 'no', '2022-01-29 01:53:29', NULL),
(16, 4, 4, 'no', '2022-01-29 01:53:29', NULL),
(17, 5, 1, 'no', '2022-01-29 01:53:38', NULL),
(18, 5, 2, 'no', '2022-01-29 01:53:38', NULL),
(19, 5, 3, 'no', '2022-01-29 01:53:38', NULL),
(20, 5, 4, 'no', '2022-01-29 01:53:38', NULL),
(21, 6, 1, 'no', '2022-01-29 01:53:47', NULL),
(22, 6, 2, 'no', '2022-01-29 01:53:47', NULL),
(23, 6, 3, 'no', '2022-01-29 01:53:47', NULL),
(24, 6, 4, 'no', '2022-01-29 01:53:47', NULL),
(25, 7, 1, 'no', '2022-01-29 01:54:06', NULL),
(26, 7, 2, 'no', '2022-01-29 01:54:06', NULL),
(27, 7, 3, 'no', '2022-01-29 01:54:06', NULL),
(28, 7, 4, 'no', '2022-01-29 01:54:06', NULL),
(29, 8, 1, 'no', '2022-01-29 01:54:14', NULL),
(30, 8, 2, 'no', '2022-01-29 01:54:14', NULL),
(31, 8, 3, 'no', '2022-01-29 01:54:14', NULL),
(32, 8, 4, 'no', '2022-01-29 01:54:14', NULL),
(33, 9, 1, 'no', '2022-01-29 01:54:21', NULL),
(34, 9, 2, 'no', '2022-01-29 01:54:21', NULL),
(35, 9, 3, 'no', '2022-01-29 01:54:21', NULL),
(36, 9, 4, 'no', '2022-01-29 01:54:21', NULL),
(37, 10, 1, 'no', '2022-01-29 01:54:29', NULL),
(38, 10, 2, 'no', '2022-01-29 01:54:29', NULL),
(39, 10, 3, 'no', '2022-01-29 01:54:29', NULL),
(40, 10, 4, 'no', '2022-01-29 01:54:29', NULL),
(41, 11, 1, 'no', '2022-01-29 01:54:37', NULL),
(42, 11, 2, 'no', '2022-01-29 01:54:37', NULL),
(43, 11, 3, 'no', '2022-01-29 01:54:37', NULL),
(44, 11, 4, 'no', '2022-01-29 01:54:37', NULL),
(45, 12, 1, 'no', '2022-01-29 01:56:02', NULL),
(46, 12, 2, 'no', '2022-01-29 01:56:02', NULL),
(47, 12, 3, 'no', '2022-01-29 01:56:02', NULL),
(48, 12, 4, 'no', '2022-01-29 01:56:02', NULL),
(49, 13, 1, 'no', '2022-01-29 01:56:09', NULL),
(50, 13, 2, 'no', '2022-01-29 01:56:09', NULL),
(51, 13, 3, 'no', '2022-01-29 01:56:09', NULL),
(52, 13, 4, 'no', '2022-01-29 01:56:09', NULL),
(53, 14, 1, 'no', '2022-01-29 01:56:15', NULL),
(54, 14, 2, 'no', '2022-01-29 01:56:15', NULL),
(55, 14, 3, 'no', '2022-01-29 01:56:15', NULL),
(56, 14, 4, 'no', '2022-01-29 01:56:15', NULL),
(57, 15, 1, 'no', '2022-01-29 01:56:22', NULL),
(58, 15, 2, 'no', '2022-01-29 01:56:22', NULL),
(59, 15, 3, 'no', '2022-01-29 01:56:22', NULL),
(60, 15, 4, 'no', '2022-01-29 01:56:22', NULL),
(61, 16, 1, 'no', '2022-01-29 01:56:30', NULL),
(62, 16, 2, 'no', '2022-01-29 01:56:30', NULL),
(63, 16, 3, 'no', '2022-01-29 01:56:30', NULL),
(64, 16, 4, 'no', '2022-01-29 01:56:30', NULL),
(65, 17, 1, 'no', '2022-01-29 01:56:38', NULL),
(66, 17, 2, 'no', '2022-01-29 01:56:38', NULL),
(67, 17, 3, 'no', '2022-01-29 01:56:38', NULL),
(68, 17, 4, 'no', '2022-01-29 01:56:38', NULL),
(69, 18, 1, 'no', '2022-01-29 01:56:46', NULL),
(70, 18, 2, 'no', '2022-01-29 01:56:46', NULL),
(71, 18, 3, 'no', '2022-01-29 01:56:46', NULL),
(72, 18, 4, 'no', '2022-01-29 01:56:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_section_times`
--

CREATE TABLE `class_section_times` (
  `id` int(11) NOT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_teacher`
--

CREATE TABLE `class_teacher` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `class_teacher`
--

INSERT INTO `class_teacher` (`id`, `session_id`, `class_id`, `section_id`, `staff_id`) VALUES
(1, 16, 16, 1, 1),
(2, 18, 11, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complaint_type` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `action_taken` varchar(200) NOT NULL,
  `assigned` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `complaint_type`, `source`, `name`, `contact`, `email`, `date`, `description`, `action_taken`, `assigned`, `note`, `image`) VALUES
(1, 'General', 'Online', 'saloni', '9795944932', 'msaloni401@gmail.com', '2023-10-14', 'hii this is testing formate', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaint_type`
--

CREATE TABLE `complaint_type` (
  `id` int(11) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_public` varchar(10) DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `cls_sec_id` int(10) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `date` date NOT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_for`
--

CREATE TABLE `content_for` (
  `id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_types`
--

CREATE TABLE `content_types` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `symbol` varchar(10) DEFAULT NULL,
  `base_price` varchar(10) NOT NULL DEFAULT '1',
  `is_active` int(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `short_name`, `symbol`, `base_price`, `is_active`, `created_at`) VALUES
(1, 'AED', 'AED', 'AEDf', '1', 0, '2022-12-30 06:19:15'),
(2, 'AFN', 'AFN', '؋', '1', 0, '2022-12-30 06:19:19'),
(3, 'ALL', 'ALL', 'ALL', '1', 0, '2022-12-30 06:19:22'),
(4, 'AMD', 'AMD', 'AMD', '1', 0, '2022-07-22 10:55:15'),
(5, 'ANG', 'ANG', 'ANG', '1', 0, '2022-07-22 10:55:15'),
(6, 'AOA', 'AOA', 'AOA', '1', 0, '2022-07-22 10:55:15'),
(7, 'ARS', 'ARS', 'ARS', '1', 0, '2022-07-22 10:55:15'),
(8, 'AUD', 'AUD', 'AUD', '1', 0, '2022-07-22 10:55:15'),
(9, 'AWG', 'AWG', 'AWG', '1', 0, '2022-07-22 10:55:15'),
(10, 'AZN', 'AZN', 'AZN', '1', 0, '2022-07-22 10:55:15'),
(11, 'BAM', 'BAM', 'BAM', '1', 0, '2022-07-22 10:55:15'),
(12, 'BAM', 'BAM', 'BAM', '1', 0, '2022-07-22 10:55:15'),
(13, 'BDT', 'BDT', 'BDT', '1', 0, '2022-07-22 10:55:15'),
(14, 'BGN', 'BGN', 'BGN', '1', 0, '2022-07-22 10:55:15'),
(15, 'BHD', 'BHD', 'BHD', '1', 0, '2022-07-22 10:55:15'),
(16, 'BIF', 'BIF', 'BIF', '1', 0, '2022-07-22 10:55:15'),
(17, 'BMD', 'BMD', 'BMD', '1', 0, '2022-07-22 10:55:15'),
(18, 'BND', 'BND', 'BND', '1', 0, '2022-07-22 10:55:15'),
(19, 'BOB', 'BOB', 'BOB', '1', 0, '2022-12-30 06:19:29'),
(20, 'BOV', 'BOV', 'BOV', '1', 0, '2022-12-30 06:19:38'),
(21, 'BRL', 'BRL', 'BRL', '1', 0, '2022-07-22 10:55:15'),
(22, 'BSD', 'BSD', 'BSD', '1', 0, '2022-12-30 06:19:40'),
(23, 'BTN', 'BTN', 'BTN', '1', 0, '2022-12-30 06:19:42'),
(24, 'BWP', 'BWP', 'BWP', '1', 0, '2022-07-22 10:55:15'),
(25, 'BYN', 'BYN', 'BYN', '1', 0, '2022-07-22 10:55:15'),
(26, 'BYR', 'BYR', 'BYR', '1', 0, '2022-07-22 10:55:15'),
(27, 'BZD', 'BZD', 'BZD', '1', 0, '2022-07-22 10:55:15'),
(28, 'CAD', 'CAD', 'CAD', '1', 0, '2022-07-22 10:55:15'),
(29, 'CDF', 'CDF', 'CDF', '1', 0, '2022-07-22 10:55:15'),
(30, 'CHE', 'CHE', 'CHE', '1', 0, '2022-07-22 10:55:15'),
(31, 'CHF', 'CHF', 'CHF', '1', 0, '2022-07-22 10:55:15'),
(32, 'CHW', 'CHW', 'CHW', '1', 0, '2022-07-22 10:55:15'),
(33, 'CLF', 'CLF', 'CLF', '1', 0, '2022-07-22 10:55:15'),
(34, 'CLP', 'CLP', 'CLP', '1', 0, '2022-07-22 10:55:15'),
(35, 'CNY', 'CNY', 'CNY', '1', 0, '2022-07-22 10:55:15'),
(36, 'COP', 'COP', 'COP', '1', 0, '2022-07-22 10:55:15'),
(37, 'COU', 'COU', 'COU', '1', 0, '2022-07-22 10:55:15'),
(38, 'CRC', 'CRC', 'CRC', '1', 0, '2022-07-22 10:55:15'),
(39, 'CUC', 'CUC', 'CUC', '1', 0, '2022-07-22 10:55:15'),
(40, 'CUP', 'CUP', 'CUP', '1', 0, '2022-07-22 10:55:15'),
(41, 'CVE', 'CVE', 'CVE', '1', 0, '2022-07-22 10:55:15'),
(42, 'CZK', 'CZK', 'CZK', '1', 0, '2022-07-22 10:55:15'),
(43, 'DJF', 'DJF', 'DJF', '1', 0, '2022-07-22 10:55:15'),
(44, 'DKK', 'DKK', 'DKK', '1', 0, '2022-07-22 10:55:15'),
(45, 'DOP', 'DOP', 'DOP', '1', 0, '2022-07-22 10:55:15'),
(46, 'DZD', 'DZD', 'DZD', '1', 0, '2022-07-22 10:55:15'),
(47, 'EGP', 'EGP', 'EGP', '1', 0, '2022-07-22 10:55:15'),
(48, 'ERN', 'ERN', 'ERN', '1', 0, '2022-07-22 10:55:15'),
(49, 'ETB', 'ETB', 'ETB', '1', 0, '2022-07-22 10:55:15'),
(50, 'EUR', 'EUR', '€', '1', 0, '2022-12-30 06:20:25'),
(51, 'FJD', 'FJD', 'FJD', '1', 0, '2022-07-22 10:55:15'),
(52, 'FKP', 'FKP', 'FKP', '1', 0, '2022-07-22 10:55:15'),
(53, 'GBP', 'GBP', '£', '1', 0, '2022-12-30 06:20:29'),
(54, 'GEL', 'GEL', 'GEL', '1', 0, '2022-07-22 10:55:15'),
(55, 'GHS', 'GHS', 'GHS', '1', 0, '2022-07-22 10:55:15'),
(56, 'GIP', 'GIP', 'GIP', '1', 0, '2022-07-22 10:55:15'),
(57, 'GMD', 'GMD', 'GMD', '1', 0, '2022-07-22 10:55:15'),
(58, 'GNF', 'GNF', 'GNF', '1', 0, '2022-07-22 10:55:15'),
(59, 'GTQ', 'GTQ', 'GTQ', '1', 0, '2022-07-22 10:55:15'),
(60, 'GYD', 'GYD', 'GYD', '1', 0, '2022-07-22 10:55:15'),
(61, 'HKD', 'HKD', 'HKD', '1', 0, '2022-07-22 10:55:15'),
(62, 'HNL', 'HNL', 'HNL', '1', 0, '2022-07-22 10:55:15'),
(63, 'HRK', 'HRK', 'HRK', '1', 0, '2022-07-22 10:55:15'),
(64, 'HTG', 'HTG', 'HTG', '1', 0, '2022-07-22 10:55:15'),
(65, 'HUF', 'HUF', 'HUF', '1', 0, '2022-07-22 10:55:15'),
(66, 'IDR', 'IDR', 'IDR', '1', 0, '2022-12-30 06:20:34'),
(67, 'ILS', 'ILS', 'ILS', '1', 0, '2022-07-22 10:55:15'),
(68, 'INR', 'INR', '₹', '1', 1, '2023-10-14 08:28:25'),
(69, 'IQD', 'IQD', 'IQD', '1', 0, '2022-07-22 10:55:15'),
(70, 'IRR', 'IRR', 'IRR', '1', 0, '2022-07-22 10:55:15'),
(71, 'ISK', 'ISK', 'ISK', '1', 0, '2022-07-22 10:55:15'),
(72, 'JMD', 'JMD', 'JMD', '1', 0, '2022-07-22 10:55:15'),
(73, 'JOD', 'JOD', 'JOD', '1', 0, '2022-07-22 10:55:15'),
(74, 'JPY', 'JPY', 'JPY', '1', 0, '2022-12-30 06:19:56'),
(75, 'KES', 'KES', 'KES', '1', 0, '2022-07-22 10:55:15'),
(76, 'KGS', 'KGS', 'KGS', '1', 0, '2022-07-22 10:55:15'),
(77, 'KHR', 'KHR', 'KHR', '1', 0, '2022-07-22 10:55:15'),
(78, 'KMF', 'KMF', 'KMF', '1', 0, '2022-07-22 10:55:15'),
(79, 'KPW', 'KPW', 'KPW', '1', 0, '2022-07-22 10:55:15'),
(80, 'KRW', 'KRW', 'KRW', '1', 0, '2022-07-22 10:55:15'),
(81, 'KWD', 'KWD', 'KWD', '1', 0, '2022-07-22 10:55:15'),
(82, 'KYD', 'KYD', 'KYD', '1', 0, '2022-07-22 10:55:15'),
(83, 'KZT', 'KZT', 'KZT', '1', 0, '2022-07-22 10:55:15'),
(84, 'LAK', 'LAK', 'LAK', '1', 0, '2022-07-22 10:55:15'),
(85, 'LBP', 'LBP', 'LBP', '1', 0, '2022-07-22 10:55:15'),
(86, 'LKR', 'LKR', 'LKR', '1', 0, '2022-07-22 10:55:15'),
(87, 'LRD', 'LRD', 'LRD', '1', 0, '2022-07-22 10:55:15'),
(88, 'LSL', 'LSL', 'LSL', '1', 0, '2022-07-22 10:55:15'),
(89, 'LYD', 'LYD', 'LYD', '1', 0, '2022-07-22 10:55:15'),
(90, 'MAD', 'MAD', 'MAD', '1', 0, '2022-07-22 10:55:15'),
(91, 'MDL', 'MDL', 'MDL', '1', 0, '2022-07-22 10:55:15'),
(92, 'MGA', 'MGA', 'MGA', '1', 0, '2022-07-22 10:55:15'),
(93, 'MKD', 'MKD', 'MKD', '1', 0, '2022-07-22 10:55:15'),
(94, 'MMK', 'MMK', 'MMK', '1', 0, '2022-07-22 10:55:15'),
(95, 'MNT', 'MNT', 'MNT', '1', 0, '2022-07-22 10:55:15'),
(96, 'MOP', 'MOP', 'MOP', '1', 0, '2022-07-22 10:55:15'),
(97, 'MRO', 'MRO', 'MRO', '1', 0, '2022-07-22 10:55:15'),
(98, 'MUR', 'MUR', 'MUR', '1', 0, '2022-07-22 10:55:15'),
(99, 'MVR', 'MVR', 'MVR', '1', 0, '2022-07-22 10:55:15'),
(100, 'MWK', 'MWK', 'MWK', '1', 0, '2022-07-22 10:55:15'),
(101, 'MXN', 'MXN', 'MXN', '1', 0, '2022-07-22 10:55:15'),
(102, 'MXV', 'MXV', 'MXV', '1', 0, '2022-07-22 10:55:15'),
(103, 'MYR', 'MYR', 'MYR', '1', 0, '2022-07-22 10:55:15'),
(104, 'MZN', 'MZN', 'MZN', '1', 0, '2022-07-22 10:55:15'),
(105, 'NAD', 'NAD', 'NAD', '1', 0, '2022-07-30 09:32:37'),
(106, 'NGN', 'NGN', 'NGN', '1', 0, '2022-12-30 06:20:42'),
(107, 'NIO', 'NIO', 'NIO', '1', 0, '2022-07-22 10:55:15'),
(108, 'NOK', 'NOK', 'NOK', '1', 0, '2022-07-22 10:55:15'),
(109, 'NPR', 'NPR', 'NPR', '1', 0, '2022-07-22 10:55:15'),
(110, 'NZD', 'NZD', 'NZD', '1', 0, '2022-07-22 10:55:15'),
(111, 'OMR', 'OMR', 'OMR', '1', 0, '2022-07-22 10:55:15'),
(112, 'PAB', 'PAB', 'PAB', '1', 0, '2022-07-22 10:55:15'),
(113, 'PEN', 'PEN', 'PEN', '1', 0, '2022-07-22 10:55:15'),
(114, 'PGK', 'PGK', 'PGK', '1', 0, '2022-07-22 10:55:15'),
(115, 'PHP', 'PHP', 'PHP', '1', 0, '2022-07-22 10:55:15'),
(116, 'PKR', 'PKR', 'PKR', '1', 0, '2022-12-30 06:20:19'),
(117, 'PLN', 'PLN', 'PLN', '1', 0, '2022-07-22 10:55:15'),
(118, 'PYG', 'PYG', 'PYG', '1', 0, '2022-07-22 10:55:15'),
(119, 'QAR', 'QAR', 'QAR', '1', 0, '2022-07-22 10:55:15'),
(120, 'RON', 'RON', 'RON', '1', 0, '2022-07-22 10:55:15'),
(121, 'RSD', 'RSD', 'RSD', '1', 0, '2022-07-22 10:55:15'),
(122, 'RUB', 'RUB', 'RUB', '1', 0, '2022-12-30 06:20:16'),
(123, 'RWF', 'RWF', 'RWF', '1', 0, '2022-07-22 10:55:15'),
(124, 'SAR', 'SAR', 'SAR', '1', 0, '2022-07-22 10:55:15'),
(125, 'SBD', 'SBD', 'SBD', '1', 0, '2022-07-22 10:55:15'),
(126, 'SCR', 'SCR', 'SCR', '1', 0, '2022-07-22 10:55:15'),
(127, 'SDG', 'SDG', 'SDG', '1', 0, '2022-07-22 10:55:15'),
(128, 'SEK', 'SEK', 'SEK', '1', 0, '2022-07-22 10:55:15'),
(129, 'SGD', 'SGD', 'SGD', '1', 0, '2022-07-22 10:55:15'),
(130, 'SHP', 'SHP', 'SHP', '1', 0, '2022-07-22 10:55:15'),
(131, 'SLL', 'SLL', 'SLL', '1', 0, '2022-07-22 10:55:15'),
(132, 'SOS', 'SOS', 'SOS', '1', 0, '2022-07-22 10:55:15'),
(133, 'SRD', 'SRD', 'SRD', '1', 0, '2022-07-22 10:55:15'),
(134, 'SSP', 'SSP', 'SSP', '1', 0, '2022-07-22 10:55:15'),
(135, 'STD', 'STD', 'STD', '1', 0, '2022-07-22 10:55:15'),
(136, 'SVC', 'SVC', 'SVC', '1', 0, '2022-07-22 10:55:15'),
(137, 'SYP', 'SYP', 'SYP', '1', 0, '2022-07-22 10:55:15'),
(138, 'SZL', 'SZL', 'SZL', '1', 0, '2022-07-22 10:55:15'),
(139, 'THB', 'THB', 'THB', '1', 0, '2022-07-22 10:55:15'),
(140, 'TJS', 'TJS', 'TJS', '1', 0, '2022-07-22 10:55:15'),
(141, 'TMT', 'TMT', 'TMT', '1', 0, '2022-07-22 10:55:15'),
(142, 'TND', 'TND', 'TND', '1', 0, '2022-07-22 10:55:15'),
(143, 'TOP', 'TOP', 'TOP', '1', 0, '2022-07-22 10:55:15'),
(144, 'TRY', 'TRY', 'TRY', '1', 0, '2022-07-22 10:55:15'),
(145, 'TTD', 'TTD', 'TTD', '1', 0, '2022-07-22 10:55:15'),
(146, 'TWD', 'TWD', 'TWD', '1', 0, '2022-07-22 10:55:15'),
(147, 'TZS', 'TZS', 'TZS', '1', 0, '2022-07-22 10:55:15'),
(148, 'UAH', 'UAH', 'UAH', '1', 0, '2022-07-22 10:55:15'),
(149, 'UGX', 'UGX', 'UGX', '1', 0, '2022-07-22 10:55:15'),
(150, 'USD', 'USD', '$', '1', 1, '2022-07-22 10:55:15'),
(151, 'USN', 'USN', 'USN', '1', 0, '2022-12-30 06:20:03'),
(152, 'UYI', 'UYI', 'UYI', '1', 0, '2022-07-22 10:55:15'),
(153, 'UYU', 'UYU', 'UYU', '1', 0, '2022-07-22 10:55:15'),
(154, 'UZS', 'UZS', 'UZS', '1', 0, '2022-07-22 10:55:15'),
(155, 'VEF', 'VEF', 'VEF', '1', 0, '2022-07-22 10:55:15'),
(156, 'VND', 'VND', 'VND', '1', 0, '2022-07-22 10:55:15'),
(157, 'VUV', 'VUV', 'VUV', '1', 0, '2022-07-22 10:55:15'),
(158, 'WST', 'WST', 'WST', '1', 0, '2022-07-22 10:55:15'),
(159, 'XAF', 'XAF', 'XAF', '1', 0, '2022-07-22 10:55:15'),
(160, 'XAG', 'XAG', 'XAG', '1', 0, '2022-07-22 10:55:15'),
(161, 'XAU', 'XAU', 'XAU', '1', 0, '2022-07-22 10:55:15'),
(162, 'XBA', 'XBA', 'XBA', '1', 0, '2022-07-22 10:55:15'),
(163, 'XBB', 'XBB', 'XBB', '1', 0, '2022-07-22 10:55:15'),
(164, 'XBC', 'XBC', 'XBC', '1', 0, '2022-07-22 10:55:15'),
(165, 'XBD', 'XBD', 'XBD', '1', 0, '2022-07-22 10:55:15'),
(166, 'XCD', 'XCD', 'XCD', '1', 0, '2022-07-22 10:55:15'),
(167, 'XDR', 'XDR', 'XDR', '1', 0, '2022-07-22 10:55:15'),
(168, 'XOF', 'XOF', 'XOF', '1', 0, '2022-07-22 10:55:15'),
(169, 'XPD', 'XPD', 'XPD', '1', 0, '2022-07-22 10:55:15'),
(170, 'XPF', 'XPF', 'XPF', '1', 0, '2022-07-22 10:55:15'),
(171, 'XPT', 'XPT', 'XPT', '1', 0, '2022-07-22 10:55:15'),
(172, 'XSU', 'XSU', 'XSU', '1', 0, '2022-07-22 10:55:15'),
(173, 'XTS', 'XTS', 'XTS', '1', 0, '2022-07-22 10:55:15'),
(174, 'XUA', 'XUA', 'XUA', '1', 0, '2022-07-22 10:55:15'),
(175, 'XXX', 'XXX', 'XXX', '1', 0, '2022-07-22 10:55:15'),
(176, 'YER', 'YER', 'YER', '1', 0, '2022-07-22 10:55:15'),
(177, 'ZAR', 'ZAR', 'ZAR', '1', 0, '2022-12-30 06:20:07'),
(178, 'ZMW', 'ZMW', 'ZMW', '1', 0, '2022-07-30 07:34:00'),
(179, 'ZWL', 'ZWL', 'ZWL', '1', 0, '2022-07-22 10:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `belong_to` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `bs_column` int(10) DEFAULT NULL,
  `validation` int(11) DEFAULT 0,
  `field_values` text DEFAULT NULL,
  `show_table` varchar(100) DEFAULT NULL,
  `visible_on_table` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL,
  `belong_table_id` int(11) DEFAULT NULL,
  `custom_field_id` int(11) DEFAULT NULL,
  `field_value` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_assignment`
--

CREATE TABLE `daily_assignment` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `evaluated_by` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `evaluation_date` date DEFAULT NULL,
  `remark` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `daily_assignment`
--

INSERT INTO `daily_assignment` (`id`, `student_session_id`, `subject_group_subject_id`, `title`, `description`, `attachment`, `evaluated_by`, `date`, `evaluation_date`, `remark`, `created_at`) VALUES
(1, 2, 1, 'Electro Magnetic', 'Electro Magnetic Industries was established almost 3 decades ago in Vadodara- the most advanced industrial metro of Gujarat state in INDIA. Today we are among the leaders who design, develop, manufacture and market a range of state of the art magnetic and vibratory equipments.', '1697458080-1983405853652d27a068ce1!backuplanforquiz.txt', NULL, '2023-10-16', NULL, '', '2023-10-16 12:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES
(1, 'Library Department', 'yes'),
(2, 'Hostel Department', 'yes'),
(3, 'Teacher Department', 'yes'),
(4, 'Human Resources', 'yes'),
(5, 'Health and Medical', 'yes'),
(6, 'Finance and Fees', 'yes'),
(7, 'Transportation', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `disable_reason`
--

CREATE TABLE `disable_reason` (
  `id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dispatch_receive`
--

CREATE TABLE `dispatch_receive` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) NOT NULL,
  `to_title` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `from_title` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_attachments`
--

CREATE TABLE `email_attachments` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `directory` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `attachment_name` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) UNSIGNED NOT NULL,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `smtp_auth` varchar(10) NOT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `api_secret` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `smtp_auth`, `api_key`, `api_secret`, `region`, `is_active`, `created_at`) VALUES
(1, 'sendmail', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'yes', '2020-02-28 13:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`id`, `title`, `message`, `created_at`) VALUES
(1, 'Important Announcement', '<pre>\r\nIf Admin wants to give information about any kind of sudden problem or disaster, then you can use this title.</pre>', '2023-10-17'),
(2, 'Upcoming Event', '<pre>\r\nthen you can use this title. For notification of parent-teacher meetings organized by Admin, you can use this title for newsletters sent by Admin</pre>', '2023-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `email_template_attachment`
--

CREATE TABLE `email_template_attachment` (
  `id` int(11) NOT NULL,
  `email_template_id` int(11) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `attachment_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `email_template_attachment`
--

INSERT INTO `email_template_attachment` (`id`, `email_template_id`, `attachment`, `attachment_name`) VALUES
(1, 2, '652e503f643226.15188993..txt', 'backuplanforquiz.txt');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `reference` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `note` text NOT NULL,
  `source` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `no_of_child` varchar(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_type`
--

CREATE TABLE `enquiry_type` (
  `id` int(11) NOT NULL,
  `enquiry_type` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_title` varchar(200) NOT NULL,
  `event_description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_color` varchar(200) NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_groups`
--

CREATE TABLE `exam_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `exam_type` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `exam_groups`
--

INSERT INTO `exam_groups` (`id`, `name`, `exam_type`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Science DGroup', 'school_grade_system', 'Science Test', 0, '2023-10-16 12:46:18', NULL),
(2, 'Half Yearly Exam', 'gpa', 'A \"D\" grade is typically used in the GPA (Grade Point Average) system to denote a student\'s level of performance in a course or subject. In the commonly used 4.0 GPA scale in the United States, a \"D\" corresponds to a grade point of 1.0. Here\'s a description of what a \"D\" grade generally signifies', 0, '2023-10-17 08:27:44', NULL),
(3, 'Board Exam', 'gpa', 'Board exams, often referred to as \"board examinations\" or \"board assessments,\" are comprehensive standardized examinations that are typically administered at the end of a specific level of education, such as the 10th or 12th grade. These exams are conducted by educational boards or authorities and are an important component of the educational system in many countries, including India, the United States, and several others', 0, '2023-10-17 08:28:48', NULL),
(4, 'Pre-Board Exam', 'average_passing', 'Pre-Board exams, often referred to as \"board examinations\" or \"board assessments,\" are comprehensive standardized examinations that are typically administered at the end of a specific level of education, such as the 10th or 12th grade. These exams are conducted by educational boards or authorities and are an important component of the educational system in many countries, including India, the United States, and several others', 0, '2023-10-17 08:29:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exams`
--

CREATE TABLE `exam_group_class_batch_exams` (
  `id` int(11) NOT NULL,
  `exam` varchar(250) DEFAULT NULL,
  `passing_percentage` float(10,2) DEFAULT NULL,
  `session_id` int(10) NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `use_exam_roll_no` int(1) NOT NULL DEFAULT 1,
  `is_publish` int(1) DEFAULT 0,
  `is_rank_generated` int(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exam_students`
--

CREATE TABLE `exam_group_class_batch_exam_students` (
  `id` int(11) NOT NULL,
  `exam_group_class_batch_exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `roll_no` int(6) DEFAULT NULL,
  `teacher_remark` text DEFAULT NULL,
  `rank` int(20) NOT NULL DEFAULT 0,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exam_subjects`
--

CREATE TABLE `exam_group_class_batch_exam_subjects` (
  `id` int(11) NOT NULL,
  `exam_group_class_batch_exams_id` int(11) DEFAULT NULL,
  `subject_id` int(10) NOT NULL,
  `date_from` date NOT NULL,
  `time_from` time NOT NULL,
  `duration` varchar(50) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `max_marks` float(10,2) DEFAULT NULL,
  `min_marks` float(10,2) DEFAULT NULL,
  `credit_hours` float(10,2) DEFAULT 0.00,
  `date_to` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_exam_connections`
--

CREATE TABLE `exam_group_exam_connections` (
  `id` int(11) NOT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `exam_group_class_batch_exams_id` int(11) DEFAULT NULL,
  `exam_weightage` float(10,2) DEFAULT 0.00,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_exam_results`
--

CREATE TABLE `exam_group_exam_results` (
  `id` int(11) NOT NULL,
  `exam_group_class_batch_exam_student_id` int(11) NOT NULL,
  `exam_group_class_batch_exam_subject_id` int(11) DEFAULT NULL,
  `exam_group_student_id` int(11) DEFAULT NULL,
  `attendence` varchar(10) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_students`
--

CREATE TABLE `exam_group_students` (
  `id` int(11) NOT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_session_id` int(10) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) DEFAULT NULL,
  `end_from` varchar(50) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `exp_head_id`, `name`, `invoice_no`, `date`, `amount`, `documents`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'salary expenense', '2121', '2023-10-17', 150000.00, '1697530084-885797746652e40e42c9a5!student.txt', 'The largest expense for schools is typically the salaries and benefits of teachers, administrators, and support staff.', 'yes', 'no', '2023-10-17 08:08:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_head`
--

CREATE TABLE `expense_head` (
  `id` int(11) NOT NULL,
  `exp_category` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `expense_head`
--

INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Salaries and Benefits', 'The largest expense for schools is typically the salaries and benefits of teachers, administrators, and support staff.', 'yes', 'no', '2023-10-17 08:03:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feemasters`
--

CREATE TABLE `feemasters` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_discounts`
--

CREATE TABLE `fees_discounts` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `percentage` float(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fees_discounts`
--

INSERT INTO `fees_discounts` (`id`, `session_id`, `name`, `code`, `type`, `percentage`, `amount`, `description`, `is_active`, `created_at`) VALUES
(1, 18, 'Scholarships', 'SDC', 'percentage', 10.00, 0.00, 'Scholarships are financial awards given to students based on their academic achievements, talents, or other criteria. They can significantly reduce the cost of education.', 'no', '2023-10-17 06:06:49'),
(2, 18, 'Merit-Based Discounts', 'MDC', 'percentage', 20.00, 0.00, 'Some schools provide discounts to students based on their academic performance, such as high GPAs or standardized test scores.', 'no', '2023-10-17 06:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `fees_reminder`
--

CREATE TABLE `fees_reminder` (
  `id` int(11) NOT NULL,
  `reminder_type` varchar(10) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `is_active` int(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fees_reminder`
--

INSERT INTO `fees_reminder` (`id`, `reminder_type`, `day`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'before', 2, 0, '2020-02-28 13:38:32', NULL),
(2, 'before', 5, 1, '2023-10-17 06:09:48', NULL),
(3, 'after', 2, 0, '2020-02-28 13:38:40', NULL),
(4, 'after', 5, 0, '2020-02-28 13:38:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feetype`
--

CREATE TABLE `feetype` (
  `id` int(11) NOT NULL,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feetype`
--

INSERT INTO `feetype` (`id`, `is_system`, `feecategory_id`, `type`, `code`, `is_active`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Monthly Fee', 'MF', 'no', '', '2022-09-29 14:14:27', NULL),
(2, 0, NULL, 'Yearly Fee', 'YF', 'no', 'An annual fee is a dollar amount charged to someone for services or membership. If you own a credit card, the company may charge a fee once a year for you to use the card freely. In addition, if you are a member of an organization, the cost of the membership is typically charged once per calendar year.', '2023-10-17 05:58:01', NULL),
(3, 0, NULL, 'Exam Fees', 'EF', 'no', 'For standardized tests or advanced placement (AP) exams, students may need to pay fees to take these tests.', '2023-10-17 05:58:33', NULL),
(4, 0, NULL, 'Uniform Fees', 'UF', 'no', 'Some schools, particularly private schools, may require students to wear uniforms, and these uniforms may need to be purchased separately.', '2023-10-17 06:02:35', NULL),
(5, 0, NULL, 'Transportation Fees', 'TF', 'no', 'If a school provides transportation services, there may be fees associated with using school buses or other transportation options.', '2023-10-17 06:03:13', NULL),
(6, 0, NULL, 'Late Payment Fees', 'LPF', 'no', 'Schools may impose penalties for late payment of tuition or other fees.', '2023-10-17 06:04:04', NULL),
(7, 1, NULL, 'Previous Session Balance', 'Previous Session Balance', 'no', NULL, '2023-10-17 06:08:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups`
--

CREATE TABLE `fee_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fee_groups`
--

INSERT INTO `fee_groups` (`id`, `name`, `is_system`, `description`, `is_active`, `created_at`) VALUES
(1, 'Tuition Fee', 0, '', 'no', '2022-09-29 14:14:17'),
(2, 'Balance Master', 1, NULL, 'no', '2023-10-17 06:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups_feetype`
--

CREATE TABLE `fee_groups_feetype` (
  `id` int(11) NOT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `fine_type` varchar(50) NOT NULL DEFAULT 'none',
  `due_date` date DEFAULT NULL,
  `fine_percentage` float(10,2) NOT NULL DEFAULT 0.00,
  `fine_amount` float(10,2) NOT NULL DEFAULT 0.00,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fee_groups_feetype`
--

INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `amount`, `fine_type`, `due_date`, `fine_percentage`, `fine_amount`, `is_active`, `created_at`) VALUES
(1, 1, 1, 1, 16, 500.00, 'none', '2022-09-10', 0.00, 0.00, 'no', '2022-09-29 14:14:42'),
(2, 2, 2, 7, 18, NULL, 'none', '2023-12-16', 0.00, 0.00, 'no', '2023-10-17 06:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `fee_receipt_no`
--

CREATE TABLE `fee_receipt_no` (
  `id` int(11) NOT NULL,
  `payment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_session_groups`
--

CREATE TABLE `fee_session_groups` (
  `id` int(11) NOT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fee_session_groups`
--

INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES
(1, 1, 16, 'no', '2022-09-29 14:14:42'),
(2, 2, 18, 'no', '2023-10-17 06:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `filetypes`
--

CREATE TABLE `filetypes` (
  `id` int(11) NOT NULL,
  `file_extension` text DEFAULT NULL,
  `file_mime` text DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `image_extension` text DEFAULT NULL,
  `image_mime` text DEFAULT NULL,
  `image_size` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `filetypes`
--

INSERT INTO `filetypes` (`id`, `file_extension`, `file_mime`, `file_size`, `image_extension`, `image_mime`, `image_size`, `created_at`) VALUES
(1, 'pdf, zip, jpg, jpeg, png, txt, 7z, gif, csv, docx, mp3, mp4, accdb, odt, ods, ppt, pptx, xlsx, wmv, jfif, apk, ppt, bmp, jpe, mdb, rar, xls, svg', 'application/pdf, image/zip, image/jpg, image/png, image/jpeg, text/plain, application/x-zip-compressed, application/zip, image/gif, text/csv, application/vnd.openxmlformats-officedocument.wordprocessingml.document, audio/mpeg, application/msaccess, application/vnd.oasis.opendocument.text, application/vnd.oasis.opendocument.spreadsheet, application/vnd.ms-powerpoint, application/vnd.openxmlformats-officedocument.presentationml.presentation, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, video/x-ms-wmv, video/mp4, image/jpeg, application/vnd.android.package-archive, application/x-msdownload, application/vnd.ms-powerpoint, image/bmp, image/jpeg, application/msaccess, application/vnd.ms-excel, image/svg+xml', 100048576, 'jfif, png, jpe, jpeg, jpg, bmp, gif, svg', 'image/jpeg, image/png, image/jpeg, image/jpeg, image/bmp, image/gif, image/x-ms-bmp, image/svg+xml', 10048576, '2021-01-30 13:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `follow_up`
--

CREATE TABLE `follow_up` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `next_date` date NOT NULL,
  `response` text NOT NULL,
  `note` text NOT NULL,
  `followup_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_media_gallery`
--

CREATE TABLE `front_cms_media_gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `file_type` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` text NOT NULL,
  `vid_title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `front_cms_media_gallery`
--

INSERT INTO `front_cms_media_gallery` (`id`, `image`, `thumb_path`, `dir_path`, `img_name`, `thumb_name`, `created_at`, `file_type`, `file_size`, `vid_url`, `vid_title`) VALUES
(2, 'WhatsApp Video 2023-08-12 at 11.17.59.mp4', 'uploads/gallery/media/thumb/', 'uploads/gallery/media/', '1697197279-110216160665292cdf2999c!WhatsApp Video 2023-08-12 at 11.17.59.mp4', '', '2023-10-13 06:11:19', 'video/mp4', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menus`
--

CREATE TABLE `front_cms_menus` (
  `id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `open_new_tab` int(10) NOT NULL DEFAULT 0,
  `ext_url` text NOT NULL,
  `ext_url_link` text NOT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `content_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `front_cms_menus`
--

INSERT INTO `front_cms_menus` (`id`, `menu`, `slug`, `description`, `open_new_tab`, `ext_url`, `ext_url_link`, `publish`, `content_type`, `is_active`, `created_at`) VALUES
(1, 'Main Menu', 'main-menu', 'Main menu', 0, '', '', 0, 'default', 'no', '2018-04-20 21:54:49'),
(2, 'Bottom Menu', 'bottom-menu', 'Bottom Menu', 0, '', '', 0, 'default', 'no', '2018-04-20 21:54:55'),
(3, 'Top App Menu', 'top', '', 0, '', '', 0, 'default', 'no', '2022-01-29 05:58:56'),
(4, 'Bottom App Menu', 'bottom', '', 0, '', '', 0, 'default', 'no', '2022-01-29 05:59:12'),
(5, 'Sidebar App Menu', 'sidebar', '', 0, '', '', 0, 'default', 'no', '2022-01-29 05:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menu_items`
--

CREATE TABLE `front_cms_menu_items` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `ext_url` text DEFAULT NULL,
  `open_new_tab` int(11) DEFAULT 0,
  `ext_url_link` text DEFAULT NULL,
  `icon` varchar(250) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `front_cms_menu_items`
--

INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `icon`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES
(1, 1, 'Home', 1, 0, '1', NULL, 'http://localhost/matribhumi/page/home', 'fa fa-home', 'home', 1, 0, NULL, 'no', '2023-10-14 07:13:34'),
(2, 1, 'Contact Us', 4, 0, '1', NULL, 'http://localhost/matribhumi/page/contactUs', 'fa fa-home', 'contact-us', 9, 0, NULL, 'no', '2023-10-14 10:23:52'),
(3, 1, 'Complain', 2, 0, NULL, NULL, NULL, 'fa fa-home', 'complain', 8, 0, NULL, 'no', '2023-10-14 10:23:52'),
(4, 1, 'Online Admission', 0, 0, '1', NULL, 'http://localhost/matribhumi/page/admission', 'fa fa-home', 'online-admission', 6, 0, NULL, 'no', '2023-10-14 10:23:02'),
(6, 3, 'Search', 0, 0, '1', NULL, '#', 'fa fa-search', 'search', 1, 0, NULL, 'no', '2022-01-29 06:12:44'),
(7, 3, 'Logout', 0, 0, '1', NULL, '#', 'fa fa-power-off', 'logout', 2, 0, NULL, 'no', '2022-01-29 06:12:44'),
(8, 4, 'Home', 0, 0, '1', NULL, 'https://mydemos.in/mobileview', 'fa fa-home', 'home-1', 3, 0, NULL, 'no', '2022-01-29 06:24:29'),
(9, 4, 'About -us', 5, 0, '1', NULL, '#', 'fa fa-th', 'about-us-1', 1, 0, NULL, 'no', '2023-10-14 04:57:21'),
(10, 4, 'My Courses', 0, 0, '1', NULL, '#', 'fa fa-book', 'my-courses', 2, 0, NULL, 'no', '2022-01-29 06:18:07'),
(11, 4, 'Live Class', 0, 0, '1', NULL, '#', 'fa fa-globe', 'live-class', 4, 0, NULL, 'no', '2022-01-29 06:18:07'),
(12, 4, 'Exams', 0, 0, '1', NULL, '#', 'fa fa-laptop', 'exams', 5, 0, NULL, 'no', '2022-01-29 06:18:07'),
(13, 5, 'Home', 0, 0, '1', NULL, 'https://mydemos.in/mobileview', 'fa fa-home', 'home-1', 3, 0, NULL, 'no', '2022-01-29 06:24:23'),
(14, 5, 'Categories', 0, 0, '1', NULL, '#', 'fa fa-th', 'categories', 1, 0, NULL, 'no', '2022-01-29 06:18:07'),
(15, 5, 'My Courses', 0, 0, '1', NULL, '#', 'fa fa-book', 'my-courses', 2, 0, NULL, 'no', '2022-01-29 06:18:07'),
(16, 5, 'Live Class', 0, 0, '1', NULL, '#', 'fa fa-globe', 'live-class', 4, 0, NULL, 'no', '2022-01-29 06:18:07'),
(17, 5, 'Exams', 0, 0, '1', NULL, '#', 'fa fa-laptop', 'exams', 5, 0, NULL, 'no', '2022-01-29 06:18:07'),
(18, 5, 'Contact us', 0, 0, '1', NULL, 'https://mydemos.in/mobileview/contact.html', 'fa fa-envelope', 'contactus', 6, 0, NULL, 'no', '2022-01-29 06:23:47'),
(19, 1, 'About us', 5, 0, '1', NULL, 'http://localhost/matribhumi/page/about-us', '', 'about-us', 3, 0, NULL, 'no', '2023-10-14 10:11:55'),
(20, 4, 'aboutUs Details', 5, 0, '1', NULL, '#', '', 'aboutus-details', NULL, 0, NULL, 'no', '2023-10-14 04:47:11'),
(21, 2, 'Gallery', 5, 0, '1', NULL, '#', '', 'gallery', 4, 0, NULL, 'no', '2023-10-14 08:06:56'),
(22, 5, 'About -us-sub-menu', 5, 0, '1', NULL, '#', '', 'about-us-sub-menu', NULL, 0, NULL, 'no', '2023-10-14 04:58:29'),
(23, 1, 'Facilities', 6, 0, '1', NULL, 'http://localhost/matribhumi/page/facilities', '', 'facilities', 2, 0, NULL, 'no', '2023-10-14 10:11:55'),
(24, 1, 'Gallery', 8, 0, '1', NULL, 'http://localhost/matribhumi/read/gallery', '', 'gallery-1', 7, 0, NULL, 'no', '2023-10-14 11:05:25'),
(26, 2, 'Aboutus', 5, 0, '1', 1, 'http://localhost/matribhumi/page/about-us', '', 'aboutus', 2, 0, NULL, 'no', '2023-10-14 08:05:37'),
(27, 2, 'Home', 1, 0, '1', 1, 'http://localhost/matribhumi/page/home', '', 'home-2', 1, 0, NULL, 'no', '2023-10-14 08:05:37'),
(28, 2, 'Facilities', 6, 0, '1', 1, 'http://localhost/matribhumi/page/facilities', '', 'facilities-1', 5, 0, NULL, 'no', '2023-10-14 08:06:56'),
(29, 2, 'Admission', 9, 0, '1', 1, 'http://localhost/matribhumi/page/admission', '', 'admission', 6, 0, NULL, 'no', '2023-10-14 08:06:56'),
(30, 2, 'Complain', 2, 0, '1', 1, 'http://localhost/matribhumi/page/complain', '', 'complain-1', 3, 0, NULL, 'no', '2023-10-14 08:06:56'),
(31, 1, 'Dummy Menu', 0, 19, NULL, NULL, NULL, '', 'dummy-menu', 4, 0, NULL, 'no', '2023-10-14 10:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_pages`
--

CREATE TABLE `front_cms_pages` (
  `id` int(11) NOT NULL,
  `page_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_homepage` int(1) DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `feature_image` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `publish` int(10) DEFAULT 0,
  `sidebar` int(10) DEFAULT 0,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `front_cms_pages`
--

INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES
(1, 'default', 1, 'Home', 'page/home', 'page', 'home', '', '', '', '', '<span style=\"color:#FF8C00;\"></span>\n<div courier=\"\" font-size:=\"\" line-height:=\"\" style=\"color: rgb(59, 59, 59); background-color: rgb(255, 255, 255); font-family: Consolas, \" white-space:=\"\">\n<div>&nbsp;</div>\n</div>\n<span style=\"color:#FF8C00;\"></span>', '0000-00-00', 1, NULL, 'no', '2023-10-18 06:38:26'),
(2, 'default', 0, 'Complain', 'page/complain', 'page', 'complain', 'Complain form', '                                                                                                                                                                                    complain form                                                                                                                                                                                                                                ', 'complain form', '', '<p>[form-builder:complain]</p>', '0000-00-00', 1, NULL, 'no', '2019-11-13 10:16:36'),
(3, 'default', 0, '404 page', 'page/404-page', 'page', '404-page', '', '                                ', '', '', '<html>\r\n<head>\r\n <title></title>\r\n</head>\r\n<body>\r\n<p>404 page found</p>\r\n</body>\r\n</html>', '0000-00-00', 0, NULL, 'no', '2018-05-18 14:46:04'),
(4, 'default', 0, 'Contact us', 'page/contact-us', 'page', 'contact-us', '', '', '', '', '<section class=\"contact\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<h2 class=\"col-md-12 col-sm-12\">Send In Your Query</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"col-md-12 col-sm-12\">[form-builder:contact_us]<!--./row--></div>\r\n<!--./col-md-12--></div>\r\n<!--./row--></div>\r\n<!--./container--></section>\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/pin.svg\" />\r\n<h3>Our Location</h3>\r\n\r\n<p>350 Fifth Avenue, 34th floor New York NY 10118-3299 USA</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/phone.svg\" />\r\n<h3>CALL US</h3>\r\n\r\n<p>E-mail : info@abcschool.com</p>\r\n\r\n<p>Mobile : +91-9009987654</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/clock.svg\" />\r\n<h3>Working Hours</h3>\r\n\r\n<p>Mon-Fri : 9 am to 5 pm</p>\r\n\r\n<p>Sat : 9 am to 3 pm</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-12 col-sm-12\">\r\n<div class=\"mapWrapper fullwidth\"><iframe frameborder=\"0\" height=\"500\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"http://maps.google.com/maps?f=q&source=s_q&hl=EN&q=time+square&aq=&sll=40.716558,-73.931122&sspn=0.40438,1.056747&ie=UTF8&rq=1&ev=p&split=1&radius=33.22&hq=time+square&hnear=&ll=37.061753,-95.677185&spn=0.438347,0.769043&z=9&output=embed\" width=\"100%\"></iframe></div>\r\n</div>', '0000-00-00', 0, NULL, 'no', '2019-05-04 15:46:41'),
(5, 'manual', 0, 'About us', 'page/about-us', 'page', 'about-us', '', '', '', '', 'Hello About Us', NULL, 0, NULL, 'no', '2023-10-14 07:08:28'),
(6, 'manual', 0, 'Facilities', 'page/facilities', 'page', 'facilities', '', '', '', '', '<span style=\"color:#006400;\">Facilities page</span><span style=\"color:#006400;\"></span>', NULL, 0, NULL, 'no', '2023-10-14 07:00:25'),
(8, 'manual', 0, 'Gallery', 'page/gallery', 'page', 'gallery', '', '', '', '', '<span style=\"color:#FF0000;\">Gallery Page</span>', NULL, 0, NULL, 'no', '2023-10-14 07:02:15'),
(9, 'manual', 0, 'Admission', 'page/admission', 'page', 'admission', '', '', '', '', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 pt-0-mobile\"><script src=\"https://demo.smart-school.in/backend/dist/js/moment.min.js\"></script></div>\r\n</div>\r\n</div>\r\n<link href=\"https://demo.smart-school.in/backend/datepicker/css/bootstrap-datetimepicker.css\" rel=\"stylesheet\" /><script src=\"https://demo.smart-school.in/backend/datepicker/js/bootstrap-datetimepicker.js\"></script>\r\n<div class=\"row justify-content-center align-items-center flex-wrap d-flex pt20\">\r\n<div class=\"col-md-6 col-lg-5 col-sm-5\">\r\n<h3 class=\"entered mt0\" style=\"color:brown;\">Online Admission</h3>\r\n</div>\r\n\r\n<div class=\"col-md-6 col-lg-7 col-sm-7 text-lg-right\"><a class=\"modalclosebtn modal-close-xs w-full-xs mr-lg-1\" data-target=\"#checkOnlineAdmissionStatus\" data-toggle=\"modal\" href=\"#checkOnlineAdmissionStatus\" onclick=\"openStatusFormmodal();\" style=\"background:brown;\">Check Your Form Status</a> <a class=\"modalclosebtn modal-close-xs w-full-xs text-center\" href=\"https://demo.smart-school.in/welcome/download/1\" style=\"background:brown;\">Download Application Form</a></div>\r\n</div>\r\n\r\n<form accept-charset=\"utf-8\" action=\"https://demo.smart-school.in/online_admission\" class=\"spaceb60 spacet40 onlineform\" enctype=\"multipart/form-data\" id=\"form1\" method=\"post\">\r\n<div class=\"printcontent\">\r\n<div class=\"row\">\r\n<h4 class=\"pagetitleh2\">Instructions</h4>\r\n\r\n<div class=\"col-md-12\">\r\n<div class=\"form-group\">\r\n<p>Please enter your institution online admission instructions here.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"printcontent\">\r\n<div class=\"row\">\r\n<h4 class=\"pagetitleh2\">Basic Details</h4>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Class</label><small class=\"req\"> *</small> <select class=\"form-control\" id=\"class_id\" name=\"class_id\"><option value=\"\">Select</option><option value=\"1\">Class 1</option><option value=\"2\">Class 2</option><option value=\"3\">Class 3</option><option value=\"4\">Class 4</option> </select> <span class=\"text-danger\"></span></div>\r\n</div>\r\n\r\n<div class=\"col-md-3 displaynone\">\r\n<div class=\"form-group\"><label>Section</label><small class=\"req\"> *</small> <select class=\"form-control\" id=\"section_id\" name=\"section_id\"><option value=\"\">Select</option> </select> <span class=\"text-danger\"></span></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>First Name</label><small class=\"req\"> *</small> <input autocomplete=\"off\" class=\"form-control\" id=\"firstname\" name=\"firstname\" placeholder=\"\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Last Name</label> <input autocomplete=\"off\" class=\"form-control\" id=\"lastname\" name=\"lastname\" placeholder=\"\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n</div>\r\n<!--./row-->\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Gender</label><small class=\"req\"> *</small> <select class=\"form-control\" name=\"gender\"><option value=\"\">Select</option><option value=\"Male\">Male</option><option value=\"Female\">Female</option> </select> <span class=\"text-danger\"></span></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Date Of Birth</label><small class=\"req\"> *</small> <input class=\"form-control date2\" id=\"dob\" name=\"dob\" readonly=\"readonly\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Mobile Number</label> <input autocomplete=\"off\" class=\"form-control\" id=\"mobileno\" name=\"mobileno\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Email</label><small class=\"req\"> *</small> <input autocomplete=\"off\" class=\"form-control\" id=\"email\" name=\"email\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n</div>\r\n<!--./row-->\r\n\r\n<div class=\"row\">&nbsp;</div>\r\n<!--./row-->\r\n\r\n<div class=\"row\">&nbsp;</div>\r\n<!--./row-->\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Student Photo</label>\r\n\r\n<div><input class=\"filestyle form-control\" id=\"file\" name=\"file\" size=\"20\" type=\"file\" /></div>\r\n<span class=\"text-danger\"></span></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"printcontent\">\r\n<div class=\"row\">\r\n<h4 class=\"pagetitleh2\">Parent Detail</h4>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Father Name</label> <input autocomplete=\"off\" class=\"form-control\" id=\"father_name\" name=\"father_name\" placeholder=\"\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n</div>\r\n<!---row-->\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Mother Name</label> <input autocomplete=\"off\" class=\"form-control\" id=\"mother_name\" name=\"mother_name\" placeholder=\"\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n</div>\r\n<!--./row--></div>\r\n<!--./printcontent-->\r\n\r\n<div class=\"printcontent\">\r\n<div class=\"row\">\r\n<h4 class=\"pagetitleh2\">Guardian Details</h4>\r\n\r\n<div class=\"form-group col-md-12\"><label>If Guardian Is<small class=\"req\"> *</small>&nbsp;&nbsp;&nbsp;</label> <label class=\"radio-inline\"> <input name=\"guardian_is\" type=\"radio\" value=\"father\" /> Father </label> <label class=\"radio-inline\"> <input name=\"guardian_is\" type=\"radio\" value=\"mother\" /> Mother </label> <label class=\"radio-inline\"> <input name=\"guardian_is\" type=\"radio\" value=\"other\" /> Other </label> <span class=\"text-danger\"></span></div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Guardian Name</label><small class=\"req\"> *</small> <input autocomplete=\"off\" class=\"form-control\" id=\"guardian_name\" name=\"guardian_name\" placeholder=\"\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Guardian Relation</label><small class=\"req\"> *</small> <input autocomplete=\"off\" class=\"form-control\" id=\"guardian_relation\" name=\"guardian_relation\" placeholder=\"\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Guardian Email</label> <input autocomplete=\"off\" class=\"form-control\" id=\"guardian_email\" name=\"guardian_email\" placeholder=\"\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Guardian Photo</label>\r\n\r\n<div><input class=\"filestyle form-control\" id=\"file\" name=\"guardian_pic\" size=\"20\" type=\"file\" /></div>\r\n<span class=\"text-danger\"></span></div>\r\n</div>\r\n</div>\r\n<!--./row-->\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Guardian Phone</label> <input autocomplete=\"off\" class=\"form-control\" id=\"guardian_phone\" name=\"guardian_phone\" placeholder=\"\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"form-group\"><label>Guardian Occupation</label> <input autocomplete=\"off\" class=\"form-control\" id=\"guardian_occupation\" name=\"guardian_occupation\" placeholder=\"\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n\r\n<div class=\"col-md-6\">\r\n<div class=\"form-group\"><label>Guardian Address</label><textarea autocomplete=\"off\" class=\"form-control\" id=\"guardian_address\" name=\"guardian_address\" placeholder=\"\" rows=\"1\"></textarea> <span class=\"text-danger\"></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"printcontent\">\r\n<div class=\"row\">\r\n<h4 class=\"pagetitleh2\">Student Address Details</h4>\r\n\r\n<div class=\"col-md-6\">\r\n<div class=\"checkbox\"><label><input autocomplete=\"off\" id=\"autofill_current_address\" onclick=\"return auto_fill_guardian_address();\" type=\"checkbox\" /> If Guardian Address Is Current Address </label></div>\r\n\r\n<div class=\"form-group\"><label>Current Address</label><textarea autocomplete=\"off\" class=\"form-control\" id=\"current_address\" name=\"current_address\" placeholder=\"\" rows=\"1\"></textarea> <span class=\"text-danger\"></span></div>\r\n</div>\r\n\r\n<div class=\"col-md-6\">\r\n<div class=\"checkbox\"><label><input id=\"autofill_address\" onclick=\"return auto_fill_address();\" type=\"checkbox\" /> If Permanent Address Is Current Address </label></div>\r\n\r\n<div class=\"form-group\"><label>Permanent Address</label><textarea autocomplete=\"off\" class=\"form-control\" id=\"permanent_address\" name=\"permanent_address\" placeholder=\"\" rows=\"1\"></textarea> <span class=\"text-danger\"></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"printcontent\">\r\n<div class=\"row\">\r\n<h4 class=\"pagetitleh2\">Miscellaneous Details</h4>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\">\r\n<div class=\"form-group\"><label>National Identification Number </label> <input autocomplete=\"off\" class=\"form-control\" id=\"adhar_no\" name=\"adhar_no\" placeholder=\"\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"form-group\"><label>Local Identification Number</label> <input autocomplete=\"off\" class=\"form-control\" id=\"samagra_id\" name=\"samagra_id\" placeholder=\"\" type=\"text\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<div class=\"form-group\"><label>Previous School Details</label><textarea autocomplete=\"off\" class=\"form-control\" name=\"previous_school\" placeholder=\"\" rows=\"1\"></textarea> <span class=\"text-danger\"></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"printcontent\">\r\n<div class=\"row\">\r\n<h4 class=\"pagetitleh2\">Upload Documents</h4>\r\n\r\n<div class=\"col-md-6\">\r\n<div class=\"form-group\"><label>Documents </label> (<small>To Upload Multiple Document Compress It In A Single File Then Upload It</small>) <input class=\"form-control filestyle\" id=\"document\" name=\"document\" type=\"file\" value=\"\" /> <span class=\"text-danger\"></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-lg-2 col-md-2 col-sm-5\">\r\n<div class=\"form-group  \"><button class=\"onlineformbtn mt10\" style=\"background:brown;\" type=\"submit\">Submit</button></div>\r\n</div>\r\n\r\n<div class=\"col-md-7\"><span class=\"text-danger\"></span></div>\r\n</div>\r\n</form>\r\n<!--./row-->\r\n\r\n<div class=\"modal fade\" id=\"checkOnlineAdmissionStatus\" role=\"dialog\" tabindex=\"-1\">\r\n<div class=\"modal-dialog\"><!-- Modal content-->\r\n<div class=\"modal-content\">\r\n<div class=\"modal-header modal-header-small\"><button class=\"close closebtnmodal\" data-dismiss=\"modal\" type=\"button\">×</button>\r\n\r\n<h4>Check Your Form Status</h4>\r\n</div>\r\n\r\n<form action=\"https://demo.smart-school.in/welcome/checkadmissionstatus\" class=\"onlineform\" id=\"checkstatusform\" method=\"post\">\r\n<div class=\"modal-body\">\r\n<div class=\"form-group\"><label>Enter Your Reference Number</label><small class=\"req\"> *</small> <input autocomplete=\"off\" class=\"form-control\" id=\"refno\" name=\"refno\" type=\"text\" /> <span class=\"text-danger\" id=\"error_status_refno\"></span></div>\r\n\r\n<div class=\"form-group mb10\"><label>Select Your Date of Birth</label><small class=\"req\"> *</small> <input autocomplete=\"off\" class=\"form-control date2\" id=\"student_dob\" name=\"student_dob\" readonly=\"readonly\" type=\"text\" /> <span class=\"text-danger\" id=\"error_status_dob\"></span></div>\r\n<span class=\"text-danger\" id=\"invaliderror\"></span></div>\r\n\r\n<div class=\"modal-footer\"><button class=\"modalclosebtn btn  mdbtn\" data-dismiss=\"modal\" type=\"button\">Close</button><button class=\"onlineformbtn mdbtn\" type=\"submit\">Submit</button></div>\r\n</form>\r\n</div>\r\n</div>\r\n</div>\r\n<script type=\"text/javascript\">\r\nvar date_format = \'mm/dd/yyyy\';\r\nvar datetime_format = \'MM/DD/YYYY\';\r\n\r\n    $(document).ready(function () {\r\n        // console.log(datetime_format);\r\n        var class_id = $(\'#class_id\').val();\r\n        var section_id = \'0\';\r\n\r\n        getSectionByClass(class_id, section_id);\r\n\r\n        $(document).on(\'change\', \'#class_id\', function (e) {\r\n            $(\'#section_id\').html(\"\");\r\n            var class_id = $(this).val();\r\n            getSectionByClass(class_id, 0);\r\n        });\r\n\r\n        $(\'.date2\').datepicker({\r\n            autoclose: true,\r\n             format: date_format,\r\n            todayHighlight: true\r\n        });\r\n        $(\'.date\').datepicker({\r\n            autoclose: true,\r\n             format: date_format,\r\n            todayHighlight: true\r\n        });\r\n        $(\'.datetime\').datetimepicker({\r\n         format: datetime_format + \' hh:mm a\',\r\n          locale:\'en\'\r\n        });\r\n\r\n        function getSectionByClass(class_id, section_id) {\r\n\r\n            if (class_id !== \"\") {\r\n                $(\'#section_id\').html(\"\");\r\n\r\n                var div_data = \'\';\r\n                var url = \"\";\r\n\r\n                $.ajax({\r\n                    type: \"POST\",\r\n                    url: base_url + \"welcome/getSections\",\r\n                    data: {\'class_id\': class_id},\r\n                    dataType: \"json\",\r\n                    beforeSend: function () {\r\n                        $(\'#section_id\').addClass(\'dropdownloading\');\r\n                    },\r\n                    success: function (data) {\r\n                        $.each(data, function (i, obj)\r\n                        {\r\n                            var sel = \"\";\r\n                            if (section_id === obj.section_id) {\r\n                                sel = \"selected\";\r\n                            }\r\n                            div_data += \"<option value=\" + obj.id + \" \" + sel + \">\" + obj.section + \"</option>\";\r\n                        });\r\n                        $(\'#section_id\').append(div_data);\r\n                    },\r\n                    complete: function () {\r\n                        $(\'#section_id\').removeClass(\'dropdownloading\');\r\n                    }\r\n                });\r\n            }\r\n        }\r\n    });\r\n\r\n    function auto_fill_guardian_address() {\r\n        if ($(\"#autofill_current_address\").is(\':checked\'))\r\n        {\r\n            $(\'#current_address\').val($(\'#guardian_address\').val());\r\n        }\r\n    }\r\n\r\n    function auto_fill_address() {\r\n        if ($(\"#autofill_address\").is(\':checked\'))\r\n        {\r\n            $(\'#permanent_address\').val($(\'#current_address\').val());\r\n        }\r\n    }\r\n\r\n    $(\'input:radio[name=\"guardian_is\"]\').change(\r\n            function () {\r\n                if ($(this).is(\':checked\')) {\r\n                    var value = $(this).val();\r\n                    if (value === \"father\") {\r\n                        var father_relation = \"Father\";\r\n                        $(\'#guardian_name\').val($(\'#father_name\').val());\r\n                        $(\'#guardian_phone\').val($(\'#father_phone\').val());\r\n                        $(\'#guardian_occupation\').val($(\'#father_occupation\').val());\r\n                        $(\'#guardian_relation\').val(father_relation);\r\n                    } else if (value === \"mother\") {\r\n                        var mother_relation = \"Mother\";\r\n                        $(\'#guardian_name\').val($(\'#mother_name\').val());\r\n                        $(\'#guardian_phone\').val($(\'#mother_phone\').val());\r\n                        $(\'#guardian_occupation\').val($(\'#mother_occupation\').val());\r\n                        $(\'#guardian_relation\').val(mother_relation);\r\n                    } else {\r\n                        $(\'#guardian_name\').val(\"\");\r\n                        $(\'#guardian_phone\').val(\"\");\r\n                        $(\'#guardian_occupation\').val(\"\");\r\n                        $(\'#guardian_relation\').val(\"\");\r\n                    }\r\n                }\r\n            });\r\n</script><script type=\"text/javascript\">\r\n    function refreshCaptcha(){\r\n        $.ajax({\r\n            type: \"POST\",\r\n            url: \"https://demo.smart-school.in/site/refreshCaptcha\",\r\n            data: {},\r\n            success: function(captcha){\r\n                $(\"#captcha_image\").html(captcha);\r\n            }\r\n        });\r\n    }\r\n</script><script type=\"text/javascript\">\r\n$(document).ready(function(){\r\n$(document).on(\'submit\',\'#checkstatusform\',function(e){\r\n   e.preventDefault(); // avoid to execute the actual submit of the form.\r\n    var form = $(this);\r\n    var url = form.attr(\'action\');\r\n    var form_data = form.serializeArray();\r\n\r\n    $.ajax({\r\n           url: url,\r\n           type: \"POST\",\r\n           dataType:\'JSON\',\r\n           data: form_data, // serializes the form\'s elements.\r\n              beforeSend: function () {\r\n\r\n               },\r\n              success: function(response) { // your success handler\r\n                if(response.status==0){\r\n\r\n                    $.each(response.error, function(key, value) {\r\n                    $(\'#error_status_\' + key).html(value);\r\n                    });\r\n                }else if(response.status==2){\r\n                    $(\'#error_status_dob\' ).html(\"\");\r\n                    $(\'#error_status_refno\' ).html(\"\");\r\n                    $(\'#invaliderror\').html(response.error);\r\n                } else{\r\n                    var refno =response.refno ;\r\n                    window.location.href=\"https://demo.smart-school.in/welcome/online_admission_review/\"+refno ;\r\n                }\r\n              },\r\n             error: function() { // your error handler\r\n\r\n             },\r\n             complete: function() {\r\n\r\n             }\r\n         });\r\n});\r\n});\r\n</script><script>\r\n    function openStatusFormmodal(){\r\n      $(\'#error_status_dob\' ).html(\"\");\r\n      $(\'#error_status_refno\' ).html(\"\");\r\n      $(\'#invaliderror\').html(\"\");\r\n      $(\'#student_dob\').val(\"\");\r\n      $(\'#student_dob\').html(\"\");\r\n      $(\'#refno\' ).val(\"\");\r\n      $(\':input\').val(\'\');\r\n    }\r\n\r\n    function auto_fill_guardian_address() {\r\n        if ($(\"#autofill_current_address\").is(\':checked\'))\r\n        {\r\n            $(\'#current_address\').val($(\'#guardian_address\').val());\r\n        }\r\n    }\r\n\r\n    function auto_fill_address() {\r\n        if ($(\"#autofill_address\").is(\':checked\'))\r\n        {\r\n            $(\'#permanent_address\').val($(\'#current_address\').val());\r\n        }\r\n    }\r\n</script><script>\r\n$(function(){\r\n    $(\'#checkOnlineAdmissionStatus\').modal({\r\n         backdrop: \'static\',\r\n         keyboard: false,\r\n         show: false\r\n    });\r\n});\r\n</script><!--./row--><!--./container-->', NULL, 0, NULL, 'no', '2023-10-23 06:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_page_contents`
--

CREATE TABLE `front_cms_page_contents` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_programs`
--

CREATE TABLE `front_cms_programs` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_end` date DEFAULT NULL,
  `event_venue` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `feature_image` text NOT NULL,
  `publish_date` date DEFAULT NULL,
  `publish` varchar(10) DEFAULT '0',
  `sidebar` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `front_cms_programs`
--

INSERT INTO `front_cms_programs` (`id`, `type`, `slug`, `url`, `title`, `date`, `event_start`, `event_end`, `event_venue`, `description`, `is_active`, `created_at`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `publish_date`, `publish`, `sidebar`) VALUES
(1, 'banner', NULL, NULL, 'Banner Images', NULL, NULL, NULL, NULL, NULL, 'no', '2023-10-13 11:31:55', '', '', '', '', NULL, '0', 0),
(2, 'events', 'holiday-in-diwali-festival', 'read/holiday-in-diwali-festival', 'Holiday in diwali festival', NULL, '2023-10-14', '2023-10-16', 'Diwali Offer', 'Diwali offer for Indian festival', 'no', '2023-10-14 10:58:27', '', '', '', '', NULL, '0', NULL),
(3, 'gallery', 'gallery', 'read/gallery', 'Gallery', NULL, NULL, NULL, NULL, '<img alt=\"2\" src=\"https://www.freepik.com/free-vector/side-view-girl-using-laptop-communicate-video-conference-with-teacher-friends-white-background_12321245.htm#from_view=detail_alsolike\" xss=removed>', 'no', '2023-10-14 11:01:19', '', '', '', '', NULL, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_program_photos`
--

CREATE TABLE `front_cms_program_photos` (
  `id` int(11) NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `media_gallery_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_settings`
--

CREATE TABLE `front_cms_settings` (
  `id` int(11) NOT NULL,
  `theme` varchar(50) DEFAULT NULL,
  `is_active_rtl` int(10) DEFAULT 0,
  `is_active_front_cms` int(11) DEFAULT 0,
  `is_active_sidebar` int(1) DEFAULT 0,
  `logo` varchar(200) DEFAULT NULL,
  `contact_us_email` varchar(100) DEFAULT NULL,
  `complain_form_email` varchar(100) DEFAULT NULL,
  `sidebar_options` text NOT NULL,
  `whatsapp_url` varchar(255) NOT NULL,
  `fb_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `google_plus` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `pinterest_url` varchar(200) NOT NULL,
  `linkedin_url` varchar(200) NOT NULL,
  `google_analytics` text DEFAULT NULL,
  `footer_text` varchar(500) DEFAULT NULL,
  `cookie_consent` varchar(255) NOT NULL,
  `fav_icon` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `front_cms_settings`
--

INSERT INTO `front_cms_settings` (`id`, `theme`, `is_active_rtl`, `is_active_front_cms`, `is_active_sidebar`, `logo`, `contact_us_email`, `complain_form_email`, `sidebar_options`, `whatsapp_url`, `fb_url`, `twitter_url`, `youtube_url`, `google_plus`, `instagram_url`, `pinterest_url`, `linkedin_url`, `google_analytics`, `footer_text`, `cookie_consent`, `fav_icon`, `created_at`) VALUES
(1, 'default', NULL, 1, NULL, './uploads/school_content/logo/1697265275-1397895177652a367b56ddf!school logo.jpg', '', '', '[\"news\",\"complain\"]', 'https://web.whatsapp.com/', 'https://www.facebook.com/profile.php?id=100071870297248', 'https://twitter.com/MauryaSalo22896', 'https://youtube.com/@techSaloni?si=fAIeIQfFQS1zQ2Fh', 'https://myaccount.google.com/?utm_source=chrome-profile-chooser&pli=1', 'https://www.instagram.com/itz.amrita142/', 'https://in.pinterest.com/msaloni401/', 'https://www.linkedin.com/in/mauryasaloni/', '', '© Matr Bhumi School 2024 All rights reserved', '', './uploads/school_content/logo/1697438355-875224453652cda9357d7f!book2.jpg', '2023-10-16 06:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_ins`
--

CREATE TABLE `gateway_ins` (
  `id` int(11) NOT NULL,
  `online_admission_id` int(11) DEFAULT NULL,
  `gateway_name` varchar(50) NOT NULL,
  `module_type` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `parameter_details` mediumtext NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateway_ins_response`
--

CREATE TABLE `gateway_ins_response` (
  `id` int(11) NOT NULL,
  `gateway_ins_id` int(11) DEFAULT NULL,
  `posted_data` text DEFAULT NULL,
  `response` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_calls`
--

CREATE TABLE `general_calls` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `call_duration` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `call_type` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `exam_type` varchar(250) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `exam_type`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'gpa', 'A', 10.0, 85.00, 100.00, 'A GPA (Grade Point Average) system is a method for assessing and quantifying a student\'s academic performance. It is commonly used in educational institutions, primarily in the United States and a few other countries. The GPA system assigns numerical values to letter grades, allowing for a standardized way to measure and compare students\' achievements. Here\'s a typical description of the GPA grading system', 'no', '2023-10-17 08:16:01', NULL),
(2, 'gpa', 'B', 10.0, 75.00, 100.00, 'A \"B\" grade represents a good level of performance in a course. It suggests that the student has demonstrated a solid understanding of the subject matter and has generally met the course\'s learning objectives and expectations.', 'no', '2023-10-17 08:17:36', NULL),
(3, 'gpa', 'C', 10.0, 50.00, 100.00, 'A \"C\" grade is typically used in the GPA (Grade Point Average) system to denote a student\'s level of performance in a course or subject. In the commonly used 4.0 GPA scale in the United States, a \"C\" corresponds to a grade point of 2.0. Here\'s a description of what a \"C\" grade generally signifies', 'no', '2023-10-17 08:18:49', NULL),
(4, 'gpa', 'D', 10.0, 33.00, 100.00, 'A \"D\" grade is typically used in the GPA (Grade Point Average) system to denote a student\'s level of performance in a course or subject. In the commonly used 4.0 GPA scale in the United States, a \"D\" corresponds to a grade point of 1.0. Here\'s a description of what a \"D\" grade generally signifies', 'no', '2023-10-17 08:20:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `session_id` int(10) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `homework_date` date NOT NULL,
  `submit_date` date NOT NULL,
  `marks` float(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `create_date` date NOT NULL,
  `evaluation_date` date DEFAULT NULL,
  `document` varchar(200) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `evaluated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `staff_id`, `subject_group_subject_id`, `subject_id`, `homework_date`, `submit_date`, `marks`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`, `created_at`) VALUES
(1, 11, 2, 18, 1, 1, NULL, '2023-10-16', '2023-10-18', 50.00, '<p>please complete All work</p>', '2023-10-16', NULL, '1697457855-292520050652d26bfc32a3!student.txt', 1, NULL, '2023-10-16 12:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `homework_evaluation`
--

CREATE TABLE `homework_evaluation` (
  `id` int(11) NOT NULL,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `marks` float(10,2) DEFAULT NULL,
  `note` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `id` int(11) NOT NULL,
  `hostel_name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `intake` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_rooms`
--

CREATE TABLE `hostel_rooms` (
  `id` int(11) NOT NULL,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT 0.00,
  `title` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `id_card`
--

CREATE TABLE `id_card` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `school_address` varchar(500) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `enable_vertical_card` int(11) NOT NULL DEFAULT 0,
  `header_color` varchar(100) NOT NULL,
  `enable_admission_no` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_student_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_class` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_blood_group` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_student_barcode` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `id_card`
--

INSERT INTO `id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `enable_vertical_card`, `header_color`, `enable_admission_no`, `enable_student_name`, `enable_class`, `enable_fathers_name`, `enable_mothers_name`, `enable_address`, `enable_phone`, `enable_dob`, `enable_blood_group`, `enable_student_barcode`, `status`) VALUES
(1, 'Sample Student Identity Card Horizontal', 'Mount Carmel School', '110 Kings Street, CA  Phone: 456542 Email: mount@gmail.com', 'samplebackground12.png', 'samplelogo12.png', 'samplesign12.png', 0, '#595959', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1),
(2, 'Sample Student Identity Card Vertical', 'Mount Carmel School', '110 Kings Street, CA  Phone: 456542 Email: mount@gmail.com', 'samplebackground12.png', 'samplelogo12.png', 'samplesign12.png', 1, '#595959', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `income_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `documents` varchar(255) DEFAULT NULL,
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `income_head_id`, `name`, `invoice_no`, `date`, `amount`, `note`, `is_active`, `documents`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'School Income', '1221', '2020-03-06', 200000.00, 'School income Students throw', 'yes', '1697526560-1219570984652e3320db1d4!student.txt', 'no', '2023-10-17 07:09:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `income_head`
--

CREATE TABLE `income_head` (
  `id` int(255) NOT NULL,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `income_head`
--

INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'School-Generated Income', 'Schools can generate income from various activities, such as renting out facilities, hosting events, or selling school merchandise.', 'yes', 'no', '2023-10-17 07:04:38', NULL),
(2, 'Online Courses and E-Learning', ' Some schools offer online courses or e-learning programs, which can generate income from tuition fees.', 'yes', 'no', '2023-10-17 07:05:18', NULL),
(3, 'Special Events Income', 'ncome from special events, such as school fairs, plays, or concerts, can contribute to the school\'s revenue.', 'yes', 'no', '2023-10-17 07:05:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `quantity` int(100) NOT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `id` int(255) NOT NULL,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_issue`
--

CREATE TABLE `item_issue` (
  `id` int(11) NOT NULL,
  `issue_type` varchar(15) DEFAULT NULL,
  `issue_to` int(11) NOT NULL,
  `issue_by` int(11) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `note` text NOT NULL,
  `is_returned` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` varchar(10) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `quantity` int(11) DEFAULT NULL,
  `purchase_price` float(10,2) NOT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_store`
--

CREATE TABLE `item_store` (
  `id` int(255) NOT NULL,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_supplier`
--

CREATE TABLE `item_supplier` (
  `id` int(255) NOT NULL,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  `short_code` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `is_rtl` int(1) NOT NULL,
  `is_deleted` varchar(10) NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_rtl`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Azerbaijan', 'az', 'az', 0, 'no', 'no', '2019-11-20 11:23:12', '0000-00-00'),
(2, 'Albanian', 'sq', 'al', 0, 'no', 'no', '2019-11-20 11:42:42', '0000-00-00'),
(3, 'Amharic', 'am', 'am', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(4, 'English', 'en', 'us', 0, 'no', 'no', '2019-11-20 11:38:50', '0000-00-00'),
(5, 'Arabic', 'ar', 'sa', 0, 'no', 'no', '2019-11-20 11:47:28', '0000-00-00'),
(7, 'Afrikaans', 'af', 'af', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(8, 'Basque', 'eu', 'es', 0, 'no', 'no', '2019-11-20 11:54:10', '0000-00-00'),
(11, 'Bengali', 'bn', 'in', 0, 'no', 'no', '2019-11-20 11:41:53', '0000-00-00'),
(13, 'Bosnian', 'bs', 'bs', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(14, 'Welsh', 'cy', 'cy', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(15, 'Hungarian', 'hu', 'hu', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(16, 'Vietnamese', 'vi', 'vi', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(17, 'Haitian', 'ht', 'ht', 0, 'no', 'no', '2021-01-23 07:09:32', '0000-00-00'),
(18, 'Galician', 'gl', 'gl', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(19, 'Dutch', 'nl', 'nl', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(21, 'Greek', 'el', 'gr', 0, 'no', 'no', '2019-11-20 12:12:08', '0000-00-00'),
(22, 'Georgian', 'ka', 'ge', 0, 'no', 'no', '2019-11-20 12:11:40', '0000-00-00'),
(23, 'Gujarati', 'gu', 'in', 0, 'no', 'no', '2019-11-20 11:39:16', '0000-00-00'),
(24, 'Danish', 'da', 'dk', 0, 'no', 'no', '2019-11-20 12:03:25', '0000-00-00'),
(25, 'Hebrew', 'he', 'il', 0, 'no', 'no', '2019-11-20 12:13:50', '0000-00-00'),
(26, 'Yiddish', 'yi', 'il', 0, 'no', 'no', '2019-11-20 12:25:33', '0000-00-00'),
(27, 'Indonesian', 'id', 'id', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(28, 'Irish', 'ga', 'ga', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(29, 'Italian', 'it', 'it', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(30, 'Icelandic', 'is', 'is', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(31, 'Spanish', 'es', 'es', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(33, 'Kannada', 'kn', 'kn', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(34, 'Catalan', 'ca', 'ca', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(36, 'Chinese', 'zh', 'cn', 0, 'no', 'no', '2019-11-20 12:01:48', '0000-00-00'),
(37, 'Korean', 'ko', 'kr', 0, 'no', 'no', '2019-11-20 12:19:09', '0000-00-00'),
(38, 'Xhosa', 'xh', 'ls', 0, 'no', 'no', '2019-11-20 12:24:39', '0000-00-00'),
(39, 'Latin', 'la', 'it', 0, 'no', 'no', '2021-01-23 07:09:32', '0000-00-00'),
(40, 'Latvian', 'lv', 'lv', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(41, 'Lithuanian', 'lt', 'lt', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(43, 'Malagasy', 'mg', 'mg', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(44, 'Malay', 'ms', 'ms', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(45, 'Malayalam', 'ml', 'ml', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(46, 'Maltese', 'mt', 'mt', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(47, 'Macedonian', 'mk', 'mk', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(48, 'Maori', 'mi', 'nz', 0, 'no', 'no', '2019-11-20 12:20:27', '0000-00-00'),
(49, 'Marathi', 'mr', 'in', 0, 'no', 'no', '2019-11-20 11:39:51', '0000-00-00'),
(51, 'Mongolian', 'mn', 'mn', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(52, 'German', 'de', 'de', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(53, 'Nepali', 'ne', 'ne', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(54, 'Norwegian', 'no', 'no', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(55, 'Punjabi', 'pa', 'in', 0, 'no', 'no', '2019-11-20 11:40:16', '0000-00-00'),
(57, 'Persian', 'fa', 'ir', 0, 'no', 'no', '2019-11-20 12:21:17', '0000-00-00'),
(59, 'Portuguese', 'pt', 'pt', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(60, 'Romanian', 'ro', 'ro', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(61, 'Russian', 'ru', 'ru', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(62, 'Cebuano', 'ceb', 'ph', 0, 'no', 'no', '2019-11-20 11:59:12', '0000-00-00'),
(64, 'Sinhala', 'si', 'lk ', 0, 'no', 'no', '2021-01-23 07:09:32', '0000-00-00'),
(65, 'Slovakian', 'sk', 'sk', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(66, 'Slovenian', 'sl', 'sl', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(67, 'Swahili', 'sw', 'ke', 0, 'no', 'no', '2019-11-20 12:21:57', '0000-00-00'),
(68, 'Sundanese', 'su', 'sd', 0, 'no', 'no', '2019-12-03 11:06:57', '0000-00-00'),
(70, 'Thai', 'th', 'th', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(71, 'Tagalog', 'tl', 'tl', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(72, 'Tamil', 'ta', 'in', 0, 'no', 'no', '2019-11-20 11:40:53', '0000-00-00'),
(74, 'Telugu', 'te', 'in', 0, 'no', 'no', '2019-11-20 11:41:15', '0000-00-00'),
(75, 'Turkish', 'tr', 'tr', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(77, 'Uzbek', 'uz', 'uz', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(79, 'Urdu', 'ur', 'pk', 0, 'no', 'no', '2019-11-20 12:23:57', '0000-00-00'),
(80, 'Finnish', 'fi', 'fi', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(81, 'French', 'fr', 'fr', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(82, 'Hindi', 'hi', 'in', 0, 'no', 'no', '2019-11-20 11:36:34', '0000-00-00'),
(84, 'Czech', 'cs', 'cz', 0, 'no', 'no', '2019-11-20 12:02:36', '0000-00-00'),
(85, 'Swedish', 'sv', 'sv', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(86, 'Scottish', 'gd', 'gd', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(87, 'Estonian', 'et', 'et', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(88, 'Esperanto', 'eo', 'br', 0, 'no', 'no', '2019-11-21 04:49:18', '0000-00-00'),
(89, 'Javanese', 'jv', 'id', 0, 'no', 'no', '2019-11-20 12:18:29', '0000-00-00'),
(90, 'Japanese', 'ja', 'jp', 0, 'no', 'no', '2019-11-20 12:14:39', '0000-00-00'),
(91, 'Polish', 'pl', 'pl', 0, 'no', 'no', '2020-06-15 03:25:27', '0000-00-00'),
(92, 'Kurdish', 'ku', 'iq', 0, 'no', 'no', '2020-12-21 00:15:31', '0000-00-00'),
(93, 'Lao', 'lo', 'la', 0, 'no', 'no', '2020-12-21 00:15:36', '0000-00-00'),
(94, 'Croatia', 'hr', 'hr', 0, 'no', 'no', '2022-06-07 11:48:21', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `type`, `is_active`) VALUES
(1, 'Sick Leave', 'yes'),
(2, 'Casual Leave', 'yes'),
(3, 'Maternity Leave', 'yes'),
(4, 'Marriage Leave', 'yes'),
(5, 'Paternity Leave', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) NOT NULL,
  `subject_group_class_sections_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `session_id`, `subject_group_subject_id`, `subject_group_class_sections_id`, `name`, `created_at`) VALUES
(1, 18, 1, 1, '4th Chapter', '2023-10-16 12:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_plan_forum`
--

CREATE TABLE `lesson_plan_forum` (
  `id` int(11) NOT NULL,
  `subject_syllabus_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'staff,student',
  `staff_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `libarary_members`
--

CREATE TABLE `libarary_members` (
  `id` int(11) NOT NULL,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `libarary_members`
--

INSERT INTO `libarary_members` (`id`, `library_card_no`, `member_type`, `member_id`, `is_active`, `created_at`) VALUES
(1, '0001', 'teacher', 1, 'no', '2023-10-16 12:56:46'),
(2, '0002', 'teacher', 4, 'no', '2023-10-16 12:56:57'),
(3, '0003', 'teacher', 3, 'no', '2023-10-16 12:57:05'),
(4, '0004', 'student', 2, 'no', '2023-10-16 12:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `record_id` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `agent` varchar(50) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(1, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.25.102', 'Windows 10', 'Chrome 115.0.0.0', '2023-08-08 01:22:21', NULL),
(2, 'New Record inserted On students id 1', '1', 1, 'Insert', '49.37.25.102', 'Windows 10', 'Chrome 115.0.0.0', '2023-08-08 01:40:26', NULL),
(3, 'New Record inserted On  student session id 1', '1', 1, 'Insert', '49.37.25.102', 'Windows 10', 'Chrome 115.0.0.0', '2023-08-08 01:40:26', NULL),
(4, 'New Record inserted On users id 1', '1', 1, 'Insert', '49.37.25.102', 'Windows 10', 'Chrome 115.0.0.0', '2023-08-08 01:40:26', NULL),
(5, 'New Record inserted On users id 2', '2', 1, 'Insert', '49.37.25.102', 'Windows 10', 'Chrome 115.0.0.0', '2023-08-08 01:40:26', NULL),
(6, 'Record updated On students id 1', '1', 1, 'Update', '49.37.25.102', 'Windows 10', 'Chrome 115.0.0.0', '2023-08-08 01:40:26', NULL),
(7, 'Record updated On  Page List id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 05:55:09', NULL),
(8, 'Record updated On  Page List id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 05:57:00', NULL),
(9, 'New Record inserted On Page List id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 05:58:09', NULL),
(10, 'New Record inserted On Menu id 19', '19', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 05:59:51', NULL),
(11, 'New Record inserted On event id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 06:01:55', NULL),
(12, 'Record deleted On banner delete id 1', '1', 1, 'Delete', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 06:11:57', NULL),
(13, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 06:50:06', NULL),
(14, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 06:50:06', NULL),
(15, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 06:52:54', NULL),
(16, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 06:52:54', NULL),
(17, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 06:53:20', NULL),
(18, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 06:53:20', NULL),
(19, 'New Record inserted On student edit fields id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 06:59:29', NULL),
(20, 'New Record inserted On student edit fields id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 06:59:37', NULL),
(21, 'Record updated On  student edit fields id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 06:59:40', NULL),
(22, 'New Record inserted On student edit fields id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 06:59:45', NULL),
(23, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 06:59:55', NULL),
(24, 'Record updated On  student edit fields id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 07:00:10', NULL),
(25, 'New Record inserted On student edit fields id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 07:00:19', NULL),
(26, 'New Record inserted On student edit fields id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 07:00:31', NULL),
(27, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 07:00:37', NULL),
(28, 'Record deleted On banner delete id 1', '1', 1, 'Delete', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 07:01:52', NULL),
(29, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 07:11:19', NULL),
(30, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 07:11:19', NULL),
(31, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 07:12:10', NULL),
(32, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 07:12:10', NULL),
(33, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 07:12:35', NULL),
(34, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 07:12:35', NULL),
(35, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 12:44:54', NULL),
(36, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 12:44:54', NULL),
(37, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 12:48:18', NULL),
(38, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 12:48:18', NULL),
(39, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 12:48:30', NULL),
(40, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 12:48:30', NULL),
(41, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 12:48:54', NULL),
(42, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 12:48:54', NULL),
(43, 'Record updated On roles id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 12:55:07', NULL),
(44, 'Record updated On Menu id 19', '19', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 23:07:12', NULL),
(45, 'Record updated On Menu id 19', '19', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 23:08:13', NULL),
(46, 'New Record inserted On Menu id 20', '20', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 23:17:11', NULL),
(47, 'New Record inserted On Menu id 21', '21', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 23:19:04', NULL),
(48, 'Record updated On Menu id 19', '19', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 23:19:52', NULL),
(49, 'Record updated On Menu id 19', '19', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 23:23:24', NULL),
(50, 'Record updated On Menu id 9', '9', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 23:27:21', NULL),
(51, 'New Record inserted On Menu id 22', '22', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 23:28:29', NULL),
(52, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 23:32:15', NULL),
(53, 'New Record inserted On  content_types id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 23:46:29', NULL),
(54, 'New Record inserted On  upload_contents id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-13 23:47:49', NULL),
(55, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 00:46:26', NULL),
(56, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 00:52:51', NULL),
(57, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 00:52:51', NULL),
(58, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 00:54:40', NULL),
(59, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 00:54:40', NULL),
(60, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 00:56:29', NULL),
(61, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 00:56:38', NULL),
(62, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 00:58:16', NULL),
(63, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 00:58:29', NULL),
(64, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:01:05', NULL),
(65, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:01:18', NULL),
(66, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:04:35', NULL),
(67, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:04:35', NULL),
(68, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:07:22', NULL),
(69, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:07:22', NULL),
(70, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:09:49', NULL),
(71, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:09:49', NULL),
(72, 'New Record inserted On Page List id 6', '6', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:30:25', NULL),
(73, 'New Record inserted On Page List id 7', '7', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:31:34', NULL),
(74, 'New Record inserted On Page List id 8', '8', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:32:15', NULL),
(75, 'New Record inserted On Menu id 23', '23', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:33:08', NULL),
(76, 'New Record inserted On Menu id 24', '24', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:33:41', NULL),
(77, 'New Record inserted On Menu id 25', '25', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:35:24', NULL),
(78, 'Record deleted On menu id 25', '25', 1, 'Delete', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:35:56', NULL),
(79, 'Record deleted On Page List id admission', 'admission', 1, 'Delete', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:37:18', NULL),
(80, 'New Record inserted On Page List id 9', '9', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:38:14', NULL),
(81, 'Record updated On  Page List id 5', '5', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:38:28', NULL),
(82, 'Record updated On Menu id 24', '24', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:39:07', NULL),
(83, 'Record updated On Menu id 4', '4', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:39:21', NULL),
(84, 'Record updated On Menu id 23', '23', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:39:30', NULL),
(85, 'Record updated On Menu id 4', '4', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:39:59', NULL),
(86, 'Record updated On Menu id 4', '4', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:40:36', NULL),
(87, 'Record updated On Menu id 24', '24', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:41:12', NULL),
(88, 'Record updated On Menu id 23', '23', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:41:27', NULL),
(89, 'Record updated On Menu id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:42:10', NULL),
(90, 'Record updated On Menu id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:42:21', NULL),
(91, 'Record updated On Menu id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:43:34', NULL),
(92, 'Record updated On Menu id 19', '19', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:43:43', NULL),
(93, 'Record updated On Menu id 19', '19', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 01:43:59', NULL),
(94, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:01:50', NULL),
(95, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:01:50', NULL),
(96, 'New Record inserted On  Complain id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:04:37', NULL),
(97, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:12:03', NULL),
(98, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:12:41', NULL),
(99, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:21:39', NULL),
(100, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:27:51', NULL),
(101, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:27:51', NULL),
(102, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:28:19', NULL),
(103, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:28:19', NULL),
(104, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:28:38', NULL),
(105, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:28:38', NULL),
(106, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:29:01', NULL),
(107, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:29:01', NULL),
(108, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:29:19', NULL),
(109, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:29:19', NULL),
(110, 'New Record inserted On Menu id 26', '26', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:32:54', NULL),
(111, 'New Record inserted On Menu id 27', '27', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:33:24', NULL),
(112, 'New Record inserted On Menu id 28', '28', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:35:31', NULL),
(113, 'New Record inserted On Menu id 29', '29', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:36:11', NULL),
(114, 'New Record inserted On Menu id 30', '30', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:36:49', NULL),
(115, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:38:55', NULL),
(116, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:39:34', NULL),
(117, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:41:13', NULL),
(118, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:42:56', NULL),
(119, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:44:32', NULL),
(120, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:45:29', NULL),
(121, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:46:56', NULL),
(122, 'Record updated On notification setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(123, 'Record updated On notification setting id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(124, 'Record updated On notification setting id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(125, 'Record updated On notification setting id 4', '4', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(126, 'Record updated On notification setting id 6', '6', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(127, 'Record updated On notification setting id 7', '7', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(128, 'Record updated On notification setting id 8', '8', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(129, 'Record updated On notification setting id 9', '9', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(130, 'Record updated On notification setting id 10', '10', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(131, 'Record updated On notification setting id 11', '11', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(132, 'Record updated On notification setting id 12', '12', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(133, 'Record updated On notification setting id 13', '13', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(134, 'Record updated On notification setting id 14', '14', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(135, 'Record updated On notification setting id 15', '15', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(136, 'Record updated On notification setting id 16', '16', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(137, 'Record updated On notification setting id 17', '17', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(138, 'Record updated On notification setting id 18', '18', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:48:55', NULL),
(139, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 02:57:20', NULL),
(140, 'Record deleted On banner delete id 1', '1', 1, 'Delete', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 03:02:52', NULL),
(141, 'Record deleted On banner delete id 1', '1', 1, 'Delete', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 03:03:06', NULL),
(142, 'Record deleted On content_types id 1', '1', 1, 'Delete', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 03:07:28', NULL),
(143, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 03:38:39', NULL),
(144, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 04:10:12', NULL),
(145, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 04:10:12', NULL),
(146, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 04:16:02', NULL),
(147, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 04:16:02', NULL),
(148, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 04:27:04', NULL),
(149, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 04:30:52', NULL),
(150, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 04:31:12', NULL),
(151, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 04:31:34', NULL),
(152, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 04:31:44', NULL),
(153, 'New Record inserted On Menu id 31', '31', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 04:35:43', NULL),
(154, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 05:00:08', NULL),
(155, 'New Record inserted On event id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 05:28:27', NULL),
(156, 'Record updated On Menu id 24', '24', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 05:35:25', NULL),
(157, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 05:53:01', NULL),
(158, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 05:53:12', NULL),
(159, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-14 05:53:21', NULL),
(160, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 00:56:16', NULL),
(161, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 00:56:45', NULL),
(162, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 00:57:27', NULL),
(163, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 00:58:47', NULL),
(164, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 01:00:13', NULL),
(165, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 01:00:51', NULL),
(166, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 01:06:47', NULL),
(167, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 01:06:47', NULL),
(168, 'Record updated On Front CMS Setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 01:09:15', NULL),
(169, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 01:09:15', NULL),
(170, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 01:10:11', NULL),
(171, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 01:41:53', NULL),
(172, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 01:42:19', NULL),
(173, 'New Record inserted On  online exam id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 04:22:21', NULL),
(174, 'New Record inserted On students id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 04:33:04', NULL),
(175, 'New Record inserted On  student session id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 04:33:04', NULL),
(176, 'New Record inserted On users id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 04:33:04', NULL),
(177, 'Record updated On students id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 04:33:05', NULL),
(178, 'New Record inserted On school houses id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 04:35:57', NULL),
(179, 'Record updated On students id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 04:39:37', NULL),
(180, 'Record updated On  student session id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 04:39:37', NULL),
(181, 'New Record inserted On school houses id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 04:56:22', NULL),
(182, 'New Record inserted On school houses id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 04:57:29', NULL),
(183, 'New Record inserted On school houses id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 04:58:29', NULL),
(184, 'Record updated On students id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 04:59:51', NULL),
(185, 'Record updated On  student session id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 04:59:51', NULL),
(186, 'New Record inserted On books id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:12:54', NULL),
(187, 'New Record inserted On student apply leave id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:16:24', NULL),
(188, 'New Record inserted On subjects id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:19:56', NULL),
(189, 'New Record inserted On subjects id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:20:10', NULL),
(190, 'New Record inserted On subjects id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:20:31', NULL),
(191, 'New Record inserted On subjects id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:21:38', NULL),
(192, 'New Record inserted On subjects id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:22:11', NULL),
(193, 'New Record inserted On subjects id 6', '6', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:22:47', NULL),
(194, 'New Record inserted On subject groups id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:25:12', NULL),
(195, 'New Record inserted On sections id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:39:03', NULL),
(196, 'New Record inserted On subject groups id 19', '19', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:39:49', NULL),
(197, 'Record deleted On classes id 19', '19', 1, 'Delete', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:40:07', NULL),
(198, 'Record deleted On sections id 5', '5', 1, 'Delete', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:40:21', NULL),
(199, 'Record updated On staff id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:51:17', NULL),
(200, 'New Record inserted On leave types id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:53:53', NULL),
(201, 'New Record inserted On leave types id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:54:37', NULL),
(202, 'New Record inserted On leave types id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:55:35', NULL),
(203, 'New Record inserted On leave types id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:55:48', NULL),
(204, 'New Record inserted On leave types id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 05:56:15', NULL),
(205, 'New Record inserted On  staff designation id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:01:02', NULL),
(206, 'New Record inserted On  staff designation id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:01:11', NULL),
(207, 'New Record inserted On  staff designation id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:01:20', NULL),
(208, 'New Record inserted On  staff designation id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:01:40', NULL),
(209, 'New Record inserted On  staff designation id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:02:00', NULL),
(210, 'New Record inserted On department id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:02:57', NULL),
(211, 'New Record inserted On department id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:03:10', NULL),
(212, 'New Record inserted On department id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:03:51', NULL),
(213, 'New Record inserted On department id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:05:56', NULL),
(214, 'New Record inserted On department id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:06:20', NULL),
(215, 'New Record inserted On department id 6', '6', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:07:09', NULL),
(216, 'New Record inserted On department id 7', '7', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:07:51', NULL),
(217, 'Record updated On staff id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:12:54', NULL),
(218, 'Record updated On staff id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:12:54', NULL),
(219, 'Record updated On staff id 4', '4', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:17:40', NULL),
(220, 'New Record inserted On class teacher id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:22:39', NULL),
(221, 'New Record inserted On  subject timetable id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:24:32', NULL),
(222, 'New Record inserted On  subject timetable id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:25:29', NULL),
(223, 'New Record inserted On lesson id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:31:22', NULL),
(224, 'New Record inserted On homework id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:34:15', NULL),
(225, 'New Record inserted On Daily Assignment id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:38:00', NULL),
(226, 'New Record inserted On  questions id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:49:42', NULL),
(227, 'New Record inserted On  questions id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:51:20', NULL),
(228, 'New Record inserted On  questions id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:52:49', NULL),
(229, 'New Record inserted On  questions id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:54:30', NULL),
(230, 'New Record inserted On  questions id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:56:01', NULL),
(231, 'New Record inserted On exam groups id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 06:58:08', NULL),
(232, 'New Record inserted On admit cards id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 07:05:12', NULL),
(233, 'Record updated On  admit cards id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 07:08:23', NULL),
(234, 'Record updated On  admit cards id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 07:09:17', NULL),
(235, 'Record updated On  exam groups id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 07:16:18', NULL),
(236, 'New Record inserted On  online exam id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 07:25:01', NULL),
(237, 'New Record inserted On libarary members id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 07:26:46', NULL),
(238, 'New Record inserted On libarary members id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 07:26:57', NULL),
(239, 'New Record inserted On libarary members id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 07:27:05', NULL),
(240, 'New Record inserted On libarary members id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 07:27:35', NULL),
(241, 'New Record inserted On  student session id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-16 07:39:55', NULL),
(242, 'New Record inserted On  categories id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 00:16:01', NULL),
(243, 'New Record inserted On  categories id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 00:16:16', NULL),
(244, 'New Record inserted On  categories id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 00:16:23', NULL),
(245, 'New Record inserted On  fee type id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 00:28:01', NULL),
(246, 'New Record inserted On  fee type id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 00:28:33', NULL),
(247, 'New Record inserted On  fee type id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 00:32:35', NULL),
(248, 'New Record inserted On  fee type id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 00:33:13', NULL),
(249, 'New Record inserted On  fee type id 6', '6', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 00:34:04', NULL),
(250, 'New Record inserted On  fees discounts id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 00:36:49', NULL),
(251, 'New Record inserted On  fees discounts id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 00:37:35', NULL),
(252, 'New Record inserted On  income head   id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 01:34:38', NULL),
(253, 'New Record inserted On  income head   id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 01:35:18', NULL),
(254, 'New Record inserted On  income head   id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 01:35:45', NULL),
(255, 'New Record inserted On  Income   id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 01:39:20', NULL),
(256, 'New Record inserted On  expense head id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:33:05', NULL),
(257, 'New Record inserted On  expenses   id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:38:04', NULL),
(258, 'New Record inserted On mark_divisions id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:40:45', NULL),
(259, 'New Record inserted On mark_divisions id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:41:20', NULL),
(260, 'New Record inserted On mark_divisions id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:42:01', NULL),
(261, 'New Record inserted On grades id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:45:01', NULL),
(262, 'Record updated On grades id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:46:01', NULL),
(263, 'Record updated On grades id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:46:21', NULL),
(264, 'New Record inserted On grades id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:47:36', NULL),
(265, 'New Record inserted On grades id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:48:49', NULL),
(266, 'New Record inserted On grades id 4', '4', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:50:21', NULL),
(267, 'New Record inserted On exam groups id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:57:44', NULL),
(268, 'New Record inserted On exam groups id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:58:48', NULL),
(269, 'New Record inserted On exam groups id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 02:59:14', NULL),
(270, 'New Record inserted On sms template id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 03:35:00', NULL),
(271, 'New Record inserted On sms template id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 03:35:47', NULL),
(272, 'New Record inserted On sms template id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 03:36:41', NULL),
(273, 'New Record inserted On sms template id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 03:37:24', NULL),
(274, 'New Record inserted On sms template id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 03:38:14', NULL),
(275, 'New Record inserted On sms template id 6', '6', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 03:38:55', NULL),
(276, 'New Record inserted On sms template id 7', '7', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 03:39:54', NULL),
(277, 'New Record inserted On email template id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 03:42:31', NULL),
(278, 'New Record inserted On email template id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 03:43:35', NULL),
(279, 'Record updated On students id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 03:45:25', NULL),
(280, 'Record updated On  student session id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 03:45:25', NULL),
(281, 'New Record inserted On messages id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 03:49:41', NULL),
(282, 'New Record inserted On send notification id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 04:00:41', NULL),
(283, 'Record updated On  Page List id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 04:48:22', NULL),
(284, 'Record updated On  Page List id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 04:51:25', NULL),
(285, 'Record updated On  Page List id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-17 04:52:05', NULL),
(286, 'Record updated On  Page List id 9', '9', 1, 'Update', '::1', 'Windows 10', 'Chrome 118.0.0.0', '2023-10-23 01:05:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mark_divisions`
--

CREATE TABLE `mark_divisions` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `percentage_from` float(10,2) DEFAULT NULL,
  `percentage_to` float(10,2) DEFAULT NULL,
  `is_active` int(10) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mark_divisions`
--

INSERT INTO `mark_divisions` (`id`, `name`, `percentage_from`, `percentage_to`, `is_active`, `created_at`) VALUES
(1, 'First Division', 100.00, 60.00, 1, '2023-10-17 08:10:45'),
(2, 'Second Division', 100.00, 45.00, 1, '2023-10-17 08:11:20'),
(3, 'Third Division', 100.00, 33.00, 1, '2023-10-17 08:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `template_id` varchar(100) DEFAULT NULL,
  `email_template_id` int(11) DEFAULT NULL,
  `sms_template_id` int(11) DEFAULT NULL,
  `send_through` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int(10) NOT NULL DEFAULT 0,
  `is_schedule` int(1) NOT NULL,
  `sent` int(11) DEFAULT NULL,
  `schedule_date_time` datetime DEFAULT NULL,
  `group_list` text DEFAULT NULL,
  `user_list` text DEFAULT NULL,
  `schedule_class` int(11) DEFAULT NULL,
  `schedule_section` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `title`, `template_id`, `email_template_id`, `sms_template_id`, `send_through`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `is_schedule`, `sent`, `schedule_date_time`, `group_list`, `user_list`, `schedule_class`, `schedule_section`, `created_at`, `updated_at`) VALUES
(1, 'Upcoming Event', '2', NULL, 2, '[\"sms\"]', 'With this title, administrators can send information about future events or functions.', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"student\"]', '[{\"user_id\":\"2\",\"email\":\"msaloni401@gmail.com\",\"mobileno\":\"9794911938\",\"app_key\":null,\"role\":\"student\"},{\"user_id\":\"1\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":\"cwOnPwLVUTM:APA91bHp32AORm3VKixWum4Vbl_F3_--hg6YywPysHPibKY6sZH6y1RwjmME6bywPNmJcL5M_SlALtJ1XLv-mgOM3YQFQcJNHJC6S6PLFrIH0u6HRW2ClIjtcFPtBPUl1w0osLQ7SqRA\",\"role\":\"student\"}]', NULL, NULL, '2023-10-17 03:49:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_roles`
--

CREATE TABLE `notification_roles` (
  `id` int(11) NOT NULL,
  `send_notification_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `notification_roles`
--

INSERT INTO `notification_roles` (`id`, `send_notification_id`, `role_id`, `is_active`, `created_at`) VALUES
(1, 1, 1, 0, '2023-10-17 09:30:41'),
(2, 1, 2, 0, '2023-10-17 09:30:41'),
(3, 1, 3, 0, '2023-10-17 09:30:41'),
(4, 1, 4, 0, '2023-10-17 09:30:41'),
(5, 1, 6, 0, '2023-10-17 09:30:41'),
(6, 1, 7, 0, '2023-10-17 09:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `notification_setting`
--

CREATE TABLE `notification_setting` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `is_notification` int(11) NOT NULL DEFAULT 0,
  `display_notification` int(11) NOT NULL DEFAULT 0,
  `display_sms` int(11) NOT NULL DEFAULT 1,
  `is_student_recipient` int(1) DEFAULT NULL,
  `is_guardian_recipient` int(1) DEFAULT NULL,
  `is_staff_recipient` int(1) DEFAULT NULL,
  `display_student_recipient` int(1) DEFAULT NULL,
  `display_guardian_recipient` int(1) DEFAULT NULL,
  `display_staff_recipient` int(1) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `template_id` varchar(100) NOT NULL,
  `template` longtext NOT NULL,
  `variables` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `notification_setting`
--

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `is_student_recipient`, `is_guardian_recipient`, `is_staff_recipient`, `display_student_recipient`, `display_guardian_recipient`, `display_staff_recipient`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES
(1, 'student_admission', '1', '0', 0, 0, 1, 1, 1, 0, 1, 1, NULL, 'Student Admission', '', 'Dear {{student_name}} your admission is confirm in Class: {{class}} Section:  {{section}} for Session: {{current_session_name}} for more \r\ndetail\r\n contact\r\n System\r\n Admin\r\n {{class}} {{section}} {{admission_no}} {{roll_no}} {{admission_date}} {{mobileno}} {{email}} {{dob}} {{guardian_name}} {{guardian_relation}} {{guardian_phone}} {{father_name}} {{father_phone}} {{blood_group}} {{mother_name}} {{gender}} {{guardian_email}}', '{{student_name}} {{class}}  {{section}}  {{admission_no}}  {{roll_no}}  {{admission_date}}   {{mobileno}}  {{email}}  {{dob}}  {{guardian_name}}  {{guardian_relation}}  {{guardian_phone}}  {{father_name}}  {{father_phone}}  {{blood_group}}  {{mother_name}}  {{gender}} {{guardian_email}} {{current_session_name}} ', '2023-10-14 08:18:55'),
(2, 'exam_result', '1', '0', 1, 1, 1, 1, 1, 0, 1, 1, NULL, 'Exam Result', '', 'Dear {{student_name}} - {{exam_roll_no}}, your {{exam}} result has been published.', '{{student_name}} {{exam_roll_no}} {{exam}}', '2023-10-14 08:18:55'),
(3, 'fee_submission', '1', '0', 1, 1, 1, 1, 1, 0, 1, 1, NULL, 'Fee Submission', '', 'Dear parents, we have received Fees Amount {{fee_amount}} for  {{student_name}}  by Your School Name \r\n{{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', '{{student_name}} {{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', '2023-10-14 08:18:55'),
(4, 'absent_attendence', '1', '0', 1, 1, 1, 1, 1, 0, 1, 1, NULL, 'Absent Attendence', '', 'Absent Notice :{{student_name}}  was absent on date {{date}} in period {{subject_name}} {{subject_code}} {{subject_type}} from Your School Name', '{{student_name}} {{mobileno}} {{email}} {{father_name}} {{father_phone}} {{father_occupation}} {{mother_name}} {{mother_phone}} {{guardian_name}} {{guardian_phone}} {{guardian_occupation}} {{guardian_email}} {{date}} {{current_session_name}} {{time_from}} {{time_to}} {{subject_name}} {{subject_code}} {{subject_type}}  ', '2023-10-14 08:18:55'),
(6, 'homework', '1', '0', 1, 1, 1, 1, 0, 0, 1, 1, NULL, 'Homework', '', 'New Homework has been created for \r\n{{student_name}} at\r\n\r\n\r\n\r\n{{homework_date}} for the class {{class}} {{section}} {{subject}}. kindly submit your\r\n\r\n\r\n homework before {{submit_date}} .Thank you', '{{homework_date}} {{submit_date}} {{class}} {{section}} {{subject}} {{student_name}} {{admission_no}} ', '2023-10-14 08:18:55'),
(7, 'fees_reminder', '1', '0', 1, 1, 1, 1, 1, 0, 1, 1, NULL, 'Fees Reminder', '', 'Dear parents, please pay fee amount Rs.{{due_amount}} of {{fee_type}} before {{due_date}} for {{student_name}}  from smart school (ignore if you already paid)', '{{fee_type}}{{fee_code}}{{due_date}}{{student_name}}{{school_name}}{{fee_amount}}{{due_amount}}{{deposit_amount}} ', '2023-10-14 08:18:55'),
(8, 'forgot_password', '1', '0', 0, 0, 0, 1, 1, 1, 1, 1, 1, 'Forgot Password', '', 'Dear  {{name}} , \r\n    Recently a request was submitted to reset password for your account. If you didn\'t make the request, just ignore this email. Otherwise you can reset your password using this link <a href=\'{{resetPassLink}}\'>Click here to reset your password</a>,\r\nif you\'re having trouble clicking the password reset button, copy and paste the URL below into your web browser. your username {{username}}\r\n{{resetPassLink}}\r\n Regards,\r\n {{school_name}}', '{{school_name}}{{name}}{{username}}{{resetPassLink}} ', '2022-12-28 09:52:24'),
(9, 'online_examination_publish_exam', '1', '0', 1, 1, 1, 1, 0, 0, 1, 1, NULL, 'Online Examination Publish Exam', '', 'A new exam {{exam_title}} has been created for  duration: {{time_duration}} min, which will be available from:  {{exam_from}} to  {{exam_to}}.', '{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}', '2023-10-14 08:18:55'),
(10, 'online_examination_publish_result', '1', '0', 1, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Examination Publish Result', '', 'Exam {{exam_title}} result has been declared which was conducted between  {{exam_from}} to   {{exam_to}}, for more details, please check your student portal.', '{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}', '2023-10-14 08:18:55'),
(11, 'online_admission_form_submission', '1', '0', 1, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Admission Form Submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully  on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{reference_no}}', '2023-10-14 08:18:55'),
(12, 'online_admission_fees_submission', '0', '0', 1, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Admission Fees Submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully and the payment of {{paid_amount}} has recieved successfully on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{paid_amount}} {{reference_no}}', '2023-10-14 08:18:55'),
(13, 'student_login_credential', '1', '1', 0, 0, 1, 1, 1, 0, 1, 1, NULL, 'Student Login Credential', '1707163291685208209', 'Hello {{display_name}} your login details for Url: {{url}} Username: {{username}}  Password: {{password}} admission No: {{admission_no}}', '{{url}} {{display_name}} {{username}} {{password}} {{admission_no}}', '2022-08-06 05:34:41'),
(14, 'staff_login_credential', '1', '1', 0, 0, 1, 0, 0, 1, NULL, NULL, 1, 'Staff Login Credential', '1707163291685208209', 'Hello {{first_name}} {{last_name}} your login details for Url: {{url}} Username: {{username}}  Password: {{password}} Employee ID: {{employee_id}}', '{{url}} {{first_name}} {{last_name}} {{username}} {{password}} {{employee_id}}', '2021-12-23 11:59:13'),
(15, 'fee_processing', '1', '1', 1, 1, 1, 1, 1, 0, 1, 1, NULL, 'Fee processing', '1707163291301326898', 'Dear parents, we have received Fees Amount {{fee_amount}} for  {{student_name}}  by Your School Name \r\n{{class}} {{section}} {{email}} {{contact_no}}\r\n\r\n{{student_name}} {{class}} {{section}} {{email}} {{contact_no}} transaction_id :{{transaction_id}} {{fee_amount}}', '{{student_name}} {{class}} {{section}} {{email}} {{contact_no}} {{transaction_id}} {{fee_amount}}', '2021-12-22 10:15:42'),
(16, 'online_admission_fees_processing', '1', '1', 1, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Admission Fees Processing', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully and the payment of {{paid_amount}} has processing on date {{date}}. Your Reference number is {{reference_no}} and your transaction id {{transaction_id}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{paid_amount}} {{reference_no}} {{transaction_id}}', '2022-08-06 11:09:47'),
(17, 'student_apply_leave', '1', '1', 0, 0, 1, 0, 1, 1, NULL, 1, 1, 'Student Apply Leave ( {{student_name}} - {{admission_no}} )', '', 'My Name is {{student_name}} Class {{class}} section {{section}}. I have to apply leave on {{apply_date}}and from {{from_date}} to {{to_date}}. {{message}} please provide.', '{{message}} {{apply_date}} {{from_date}} {{to_date}} {{student_name}} {{class}} {{section}}', '2022-03-12 11:58:37'),
(18, 'email_pdf_exam_marksheet', '1', '0', 0, 0, 0, 1, 1, 0, 1, 1, NULL, 'Email PDF Exam Marksheet ( {{student_name}} - {{admission_no}} )', '', 'Dear {{student_name}} ({{admission_no}}) {{class}} Section {{section}}. We have mailed you the marksheet of Exam {{exam}} Roll no.{{roll_no}}', '{{student_name}} {{class}}  {{section}}  {{admission_no}}  {{roll_no}} {{exam}} {{admit_card_roll_no}} ', '2022-03-12 12:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `offline_fees_payments`
--

CREATE TABLE `offline_fees_payments` (
  `id` int(11) NOT NULL,
  `invoice_id` varchar(50) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `student_transport_fee_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `bank_from` varchar(200) DEFAULT NULL,
  `bank_account_transferred` varchar(200) DEFAULT NULL,
  `reference` varchar(200) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `submit_date` datetime DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `is_active` varchar(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam`
--

CREATE TABLE `onlineexam` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `exam` text DEFAULT NULL,
  `attempt` int(11) NOT NULL,
  `exam_from` datetime DEFAULT NULL,
  `exam_to` datetime DEFAULT NULL,
  `is_quiz` int(11) NOT NULL DEFAULT 0,
  `auto_publish_date` datetime DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `duration` time NOT NULL,
  `passing_percentage` float NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `publish_result` int(11) NOT NULL DEFAULT 0,
  `answer_word_count` int(11) NOT NULL DEFAULT -1,
  `is_active` varchar(1) DEFAULT '0',
  `is_marks_display` int(11) NOT NULL DEFAULT 0,
  `is_neg_marking` int(11) NOT NULL DEFAULT 0,
  `is_random_question` int(11) NOT NULL DEFAULT 0,
  `is_rank_generated` int(1) NOT NULL DEFAULT 0,
  `publish_exam_notification` int(1) NOT NULL,
  `publish_result_notification` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `onlineexam`
--

INSERT INTO `onlineexam` (`id`, `session_id`, `exam`, `attempt`, `exam_from`, `exam_to`, `is_quiz`, `auto_publish_date`, `time_from`, `time_to`, `duration`, `passing_percentage`, `description`, `publish_result`, `answer_word_count`, `is_active`, `is_marks_display`, `is_neg_marking`, `is_random_question`, `is_rank_generated`, `publish_exam_notification`, `publish_result_notification`, `created_at`, `updated_at`) VALUES
(1, 18, 'Online Exam', 1, '2023-10-17 15:18:00', '2023-10-26 15:19:00', 1, NULL, NULL, NULL, '00:05:00', 70, 'Online Exam :&nbsp;<span style=\"background-color: rgba(80, 151, 255, 0.18); color: rgb(4, 12, 40); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 20px;\">A great way of conducting tests and other important exams with help of the internet</span><span style=\"color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 20px; background-color: rgb(255, 255, 255);\">. An online exam needs a device capable of accessing the internet such as a computer or a smartphone</span>', 0, -1, '1', 1, 1, 1, 0, 0, 0, '2023-10-16 09:52:21', NULL),
(2, 18, 'Anual Exam', 1, '2023-10-16 12:23:00', '2023-10-20 18:23:00', 1, NULL, NULL, NULL, '00:25:00', 33, 'ldytf tdx dtf rg', 0, -1, '1', 1, 1, 1, 0, 0, 0, '2023-10-16 12:55:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_attempts`
--

CREATE TABLE `onlineexam_attempts` (
  `id` int(11) NOT NULL,
  `onlineexam_student_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_questions`
--

CREATE TABLE `onlineexam_questions` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `onlineexam_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `marks` float(10,2) NOT NULL DEFAULT 0.00,
  `neg_marks` float(10,2) DEFAULT 0.00,
  `is_active` varchar(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_students`
--

CREATE TABLE `onlineexam_students` (
  `id` int(11) NOT NULL,
  `onlineexam_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `is_attempted` int(1) NOT NULL DEFAULT 0,
  `rank` int(1) DEFAULT 0,
  `quiz_attempted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_student_results`
--

CREATE TABLE `onlineexam_student_results` (
  `id` int(11) NOT NULL,
  `onlineexam_student_id` int(11) NOT NULL,
  `onlineexam_question_id` int(11) NOT NULL,
  `select_option` longtext DEFAULT NULL,
  `marks` float(10,2) NOT NULL DEFAULT 0.00,
  `remark` text DEFAULT NULL,
  `attachment_name` text DEFAULT NULL,
  `attachment_upload_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_admissions`
--

CREATE TABLE `online_admissions` (
  `id` int(11) NOT NULL,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `reference_no` varchar(50) NOT NULL,
  `admission_date` date DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) NOT NULL DEFAULT 'No',
  `image` varchar(255) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `school_house_id` int(11) DEFAULT NULL,
  `blood_group` varchar(200) NOT NULL,
  `vehroute_id` int(11) NOT NULL,
  `hostel_room_id` int(11) DEFAULT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text DEFAULT NULL,
  `guardian_email` varchar(100) NOT NULL,
  `father_pic` varchar(255) NOT NULL,
  `mother_pic` varchar(255) NOT NULL,
  `guardian_pic` varchar(255) NOT NULL,
  `is_enroll` int(255) DEFAULT 0,
  `previous_school` text DEFAULT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `form_status` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `measurement_date` date DEFAULT NULL,
  `app_key` text DEFAULT NULL,
  `document` text DEFAULT NULL,
  `submit_date` date DEFAULT NULL,
  `disable_at` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_custom_field_value`
--

CREATE TABLE `online_admission_custom_field_value` (
  `id` int(11) NOT NULL,
  `belong_table_id` int(11) DEFAULT NULL,
  `custom_field_id` int(11) DEFAULT NULL,
  `field_value` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_fields`
--

CREATE TABLE `online_admission_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `online_admission_fields`
--

INSERT INTO `online_admission_fields` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'middlename', 0, '2021-05-28 10:29:23'),
(2, 'lastname', 1, '2021-06-02 04:49:19'),
(3, 'category', 0, '2021-06-02 04:48:35'),
(4, 'religion', 0, '2021-06-02 04:48:35'),
(5, 'cast', 0, '2021-06-02 04:48:35'),
(6, 'mobile_no', 1, '2021-06-02 04:50:24'),
(7, 'admission_date', 0, '2021-06-02 04:48:35'),
(8, 'student_photo', 0, '2021-06-02 04:48:35'),
(9, 'is_student_house', 0, '2021-05-29 13:22:53'),
(10, 'is_blood_group', 0, '2021-06-02 04:48:35'),
(11, 'student_height', 0, '2021-06-02 04:48:35'),
(12, 'student_weight', 0, '2021-06-02 04:48:35'),
(13, 'father_name', 0, '2021-06-02 04:48:35'),
(14, 'father_phone', 0, '2021-06-02 04:48:35'),
(15, 'father_occupation', 0, '2021-06-02 04:48:35'),
(16, 'father_pic', 0, '2021-06-02 04:48:35'),
(17, 'mother_name', 0, '2021-06-02 04:48:35'),
(18, 'mother_phone', 0, '2021-06-02 04:48:35'),
(19, 'mother_occupation', 0, '2021-06-02 04:48:35'),
(20, 'mother_pic', 0, '2021-06-02 04:48:35'),
(21, 'guardian_name', 1, '2021-06-02 04:50:54'),
(22, 'guardian_phone', 1, '2021-06-02 04:50:54'),
(23, 'if_guardian_is', 1, '2021-06-02 04:50:54'),
(24, 'guardian_relation', 1, '2021-06-02 04:50:54'),
(25, 'guardian_email', 1, '2021-06-02 04:51:35'),
(26, 'guardian_occupation', 1, '2021-06-02 04:51:26'),
(27, 'guardian_address', 1, '2021-06-02 04:51:31'),
(28, 'bank_account_no', 0, '2021-06-02 04:48:35'),
(29, 'bank_name', 0, '2021-06-02 04:48:35'),
(30, 'ifsc_code', 0, '2021-06-02 04:48:35'),
(31, 'national_identification_no', 0, '2021-06-02 04:48:35'),
(32, 'local_identification_no', 0, '2021-06-02 04:48:35'),
(33, 'rte', 0, '2021-06-02 04:48:35'),
(34, 'previous_school_details', 0, '2021-06-02 04:48:35'),
(35, 'guardian_photo', 1, '2021-06-02 04:51:29'),
(36, 'student_note', 0, '2021-06-02 04:55:08'),
(37, 'measurement_date', 0, '2021-06-02 04:48:35'),
(38, 'student_email', 1, '2021-06-02 04:49:38'),
(39, 'current_address', 0, '2021-06-02 04:48:35'),
(40, 'permanent_address', 0, '2021-06-02 04:48:35'),
(41, 'upload_documents', 1, '2022-09-20 08:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_payment`
--

CREATE TABLE `online_admission_payment` (
  `id` int(11) NOT NULL,
  `online_admission_id` int(11) NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

CREATE TABLE `option` (
  `id` int(11) NOT NULL,
  `op1` varchar(255) DEFAULT NULL,
  `op2` varchar(255) DEFAULT NULL,
  `op3` varchar(255) DEFAULT NULL,
  `op4` varchar(255) DEFAULT NULL,
  `oq_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `option`
--

INSERT INTO `option` (`id`, `op1`, `op2`, `op3`, `op4`, `oq_fk`) VALUES
(1, 'Geeta Maurya', 'Saloni Maurya', 'Sheela Maurya', 'Reenu Maurya', 1),
(3, 'Mizoram', 'Gujarat', ' Andhra Pradesh', 'Uttar Pardesh', 3),
(4, 'This is a Mango.', 'This is a banana.', 'This is a Apple.', 'None of these.', 4),
(5, 'Web applications', 'Distributed applications (Restful web services)', 'Object Oriented Programming Language', 'All of the above', 5),
(6, 'Ajay kumar Maurya', 'Mohan kumar', 'Khedan Parshad', 'None of the above', 6),
(7, 'Sangeeta devi', 'Gitanajali', 'Sita', 'Darshika', 7),
(8, 'Badal Maurya', 'Akhilesh Maurya', 'Suraj Maurya', 'All of the above.', 8),
(9, 'Web applications', 'Gitanajali', 'Microservices', 'None of the above', 9),
(10, 'Saloni', 'Gita', 'Microservices', 'Darshika', 10),
(11, 'Localhost is a server and Store the data on server.', 'Distributed applications (Restful web services)', 'Object Oriented Programming Language', 'All of the above', 11);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(200) NOT NULL,
  `api_username` varchar(200) DEFAULT NULL,
  `api_secret_key` varchar(200) NOT NULL,
  `salt` varchar(200) NOT NULL,
  `api_publishable_key` varchar(200) NOT NULL,
  `api_password` varchar(200) DEFAULT NULL,
  `api_signature` varchar(200) DEFAULT NULL,
  `api_email` varchar(200) DEFAULT NULL,
  `paypal_demo` varchar(100) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `gateway_mode` int(11) NOT NULL COMMENT '0 Testing, 1 live',
  `paytm_website` varchar(255) NOT NULL,
  `paytm_industrytype` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_allowance`
--

CREATE TABLE `payslip_allowance` (
  `id` int(11) NOT NULL,
  `payslip_id` int(11) NOT NULL,
  `allowance_type` varchar(200) NOT NULL,
  `amount` float NOT NULL,
  `staff_id` int(11) NOT NULL,
  `cal_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_category`
--

CREATE TABLE `permission_category` (
  `id` int(11) NOT NULL,
  `perm_group_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) DEFAULT NULL,
  `enable_view` int(11) DEFAULT 0,
  `enable_add` int(11) DEFAULT 0,
  `enable_edit` int(11) DEFAULT 0,
  `enable_delete` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `permission_category`
--

INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES
(1, 1, 'Student', 'student', 1, 1, 1, 1, '2019-10-24 05:42:03'),
(2, 1, 'Import Student', 'import_student', 1, 0, 0, 0, '2018-06-22 10:17:19'),
(3, 1, 'Student Categories', 'student_categories', 1, 1, 1, 1, '2018-06-22 10:17:36'),
(4, 1, 'Student Houses', 'student_houses', 1, 1, 1, 1, '2018-06-22 10:17:53'),
(5, 2, 'Collect Fees', 'collect_fees', 1, 1, 0, 1, '2018-06-22 10:21:03'),
(6, 2, 'Fees Carry Forward', 'fees_carry_forward', 1, 0, 0, 0, '2018-06-27 00:18:15'),
(7, 2, 'Fees Master', 'fees_master', 1, 1, 1, 1, '2018-06-27 00:18:57'),
(8, 2, 'Fees Group', 'fees_group', 1, 1, 1, 1, '2018-06-22 10:21:46'),
(9, 3, 'Income', 'income', 1, 1, 1, 1, '2018-06-22 10:23:21'),
(10, 3, 'Income Head', 'income_head', 1, 1, 1, 1, '2018-06-22 10:22:44'),
(11, 3, 'Search Income', 'search_income', 1, 0, 0, 0, '2018-06-22 10:23:00'),
(12, 4, 'Expense', 'expense', 1, 1, 1, 1, '2018-06-22 10:24:06'),
(13, 4, 'Expense Head', 'expense_head', 1, 1, 1, 1, '2018-06-22 10:23:47'),
(14, 4, 'Search Expense', 'search_expense', 1, 0, 0, 0, '2018-06-22 10:24:13'),
(15, 5, 'Student / Period Attendance', 'student_attendance', 1, 1, 1, 0, '2019-11-29 01:19:05'),
(20, 6, 'Marks Grade', 'marks_grade', 1, 1, 1, 1, '2018-06-22 10:25:25'),
(21, 7, 'Class Timetable', 'class_timetable', 1, 0, 1, 0, '2019-11-24 03:05:17'),
(23, 7, 'Subject', 'subject', 1, 1, 1, 1, '2018-06-22 10:32:17'),
(24, 7, 'Class', 'class', 1, 1, 1, 1, '2018-06-22 10:32:35'),
(25, 7, 'Section', 'section', 1, 1, 1, 1, '2018-06-22 10:31:10'),
(26, 7, 'Promote Student', 'promote_student', 1, 0, 0, 0, '2018-06-22 10:32:47'),
(27, 8, 'Upload Content', 'upload_content', 1, 1, 0, 1, '2018-06-22 10:33:19'),
(28, 9, 'Books List', 'books', 1, 1, 1, 1, '2019-11-24 00:37:12'),
(29, 9, 'Issue Return', 'issue_return', 1, 0, 0, 0, '2019-11-24 00:37:18'),
(30, 9, 'Add Staff Member', 'add_staff_member', 1, 0, 0, 0, '2018-07-02 11:37:00'),
(31, 10, 'Issue Item', 'issue_item', 1, 1, 1, 1, '2019-11-29 06:39:27'),
(32, 10, 'Add Item Stock', 'item_stock', 1, 1, 1, 1, '2019-11-24 00:39:17'),
(33, 10, 'Add Item', 'item', 1, 1, 1, 1, '2019-11-24 00:39:39'),
(34, 10, 'Item Store', 'store', 1, 1, 1, 1, '2019-11-24 00:40:41'),
(35, 10, 'Item Supplier', 'supplier', 1, 1, 1, 1, '2019-11-24 00:40:49'),
(37, 11, 'Routes', 'routes', 1, 1, 1, 1, '2018-06-22 10:39:17'),
(38, 11, 'Vehicle', 'vehicle', 1, 1, 1, 1, '2018-06-22 10:39:36'),
(39, 11, 'Assign Vehicle', 'assign_vehicle', 1, 1, 1, 1, '2018-06-27 04:39:20'),
(40, 12, 'Hostel', 'hostel', 1, 1, 1, 1, '2018-06-22 10:40:49'),
(41, 12, 'Room Type', 'room_type', 1, 1, 1, 1, '2018-06-22 10:40:27'),
(42, 12, 'Hostel Rooms', 'hostel_rooms', 1, 1, 1, 1, '2018-06-25 06:23:03'),
(43, 13, 'Notice Board', 'notice_board', 1, 1, 1, 1, '2018-06-22 10:41:17'),
(44, 13, 'Email', 'email', 1, 0, 0, 0, '2019-11-26 05:20:37'),
(46, 13, 'Email / SMS Log', 'email_sms_log', 1, 0, 0, 0, '2018-06-22 10:41:23'),
(53, 15, 'Languages', 'languages', 0, 1, 0, 1, '2021-01-23 07:09:32'),
(54, 15, 'General Setting', 'general_setting', 1, 0, 1, 0, '2018-07-05 09:08:35'),
(55, 15, 'Session Setting', 'session_setting', 1, 1, 1, 1, '2018-06-22 10:44:15'),
(56, 15, 'Notification Setting', 'notification_setting', 1, 0, 1, 0, '2018-07-05 09:08:41'),
(57, 15, 'SMS Setting', 'sms_setting', 1, 0, 1, 0, '2018-07-05 09:08:47'),
(58, 15, 'Email Setting', 'email_setting', 1, 0, 1, 0, '2018-07-05 09:08:51'),
(59, 15, 'Front CMS Setting', 'front_cms_setting', 1, 0, 1, 0, '2018-07-05 09:08:55'),
(60, 15, 'Payment Methods', 'payment_methods', 1, 0, 1, 0, '2018-07-05 09:08:59'),
(61, 16, 'Menus', 'menus', 1, 1, 0, 1, '2018-07-09 03:50:06'),
(62, 16, 'Media Manager', 'media_manager', 1, 1, 0, 1, '2018-07-09 03:50:26'),
(63, 16, 'Banner Images', 'banner_images', 1, 1, 0, 1, '2018-06-22 10:46:02'),
(64, 16, 'Pages', 'pages', 1, 1, 1, 1, '2018-06-22 10:46:21'),
(65, 16, 'Gallery', 'gallery', 1, 1, 1, 1, '2018-06-22 10:47:02'),
(66, 16, 'Event', 'event', 1, 1, 1, 1, '2018-06-22 10:47:20'),
(67, 16, 'News', 'notice', 1, 1, 1, 1, '2018-07-03 08:39:34'),
(68, 2, 'Fees Group Assign', 'fees_group_assign', 1, 0, 0, 0, '2018-06-22 10:20:42'),
(69, 2, 'Fees Type', 'fees_type', 1, 1, 1, 1, '2018-06-22 10:19:34'),
(70, 2, 'Fees Discount', 'fees_discount', 1, 1, 1, 1, '2018-06-22 10:20:10'),
(71, 2, 'Fees Discount Assign', 'fees_discount_assign', 1, 0, 0, 0, '2018-06-22 10:20:17'),
(73, 2, 'Search Fees Payment', 'search_fees_payment', 1, 0, 0, 0, '2018-06-22 10:20:27'),
(74, 2, 'Search Due Fees', 'search_due_fees', 1, 0, 0, 0, '2018-06-22 10:20:35'),
(77, 7, 'Assign Class Teacher', 'assign_class_teacher', 1, 1, 1, 1, '2018-06-22 10:30:52'),
(78, 17, 'Admission Enquiry', 'admission_enquiry', 1, 1, 1, 1, '2018-06-22 10:51:24'),
(79, 17, 'Follow Up Admission Enquiry', 'follow_up_admission_enquiry', 1, 1, 0, 1, '2018-06-22 10:51:39'),
(80, 17, 'Visitor Book', 'visitor_book', 1, 1, 1, 1, '2018-06-22 10:48:58'),
(81, 17, 'Phone Call Log', 'phone_call_log', 1, 1, 1, 1, '2018-06-22 10:50:57'),
(82, 17, 'Postal Dispatch', 'postal_dispatch', 1, 1, 1, 1, '2018-06-22 10:50:21'),
(83, 17, 'Postal Receive', 'postal_receive', 1, 1, 1, 1, '2018-06-22 10:50:04'),
(84, 17, 'Complain', 'complaint', 1, 1, 1, 1, '2018-07-03 08:40:55'),
(85, 17, 'Setup Font Office', 'setup_font_office', 1, 1, 1, 1, '2018-06-22 10:49:24'),
(86, 18, 'Staff', 'staff', 1, 1, 1, 1, '2018-06-22 10:53:31'),
(87, 18, 'Disable Staff', 'disable_staff', 1, 0, 0, 0, '2018-06-22 10:53:12'),
(88, 18, 'Staff Attendance', 'staff_attendance', 1, 1, 1, 0, '2018-06-22 10:53:10'),
(90, 18, 'Staff Payroll', 'staff_payroll', 1, 1, 0, 1, '2018-06-22 10:52:51'),
(93, 19, 'Homework', 'homework', 1, 1, 1, 1, '2018-06-22 10:53:50'),
(94, 19, 'Homework Evaluation', 'homework_evaluation', 1, 1, 0, 0, '2018-06-27 03:07:21'),
(96, 20, 'Student Certificate', 'student_certificate', 1, 1, 1, 1, '2018-07-06 10:41:07'),
(97, 20, 'Generate Certificate', 'generate_certificate', 1, 0, 0, 0, '2018-07-06 10:37:16'),
(98, 20, 'Student ID Card', 'student_id_card', 1, 1, 1, 1, '2018-07-06 10:41:28'),
(99, 20, 'Generate ID Card', 'generate_id_card', 1, 0, 0, 0, '2018-07-06 10:41:49'),
(102, 21, 'Calendar To Do List', 'calendar_to_do_list', 1, 1, 1, 1, '2018-06-22 10:54:41'),
(104, 10, 'Item Category', 'item_category', 1, 1, 1, 1, '2018-06-22 10:34:33'),
(106, 22, 'Quick Session Change', 'quick_session_change', 1, 0, 0, 0, '2018-06-22 10:54:45'),
(107, 1, 'Disable Student', 'disable_student', 1, 0, 0, 0, '2018-06-25 06:21:34'),
(108, 18, ' Approve Leave Request', 'approve_leave_request', 1, 0, 1, 1, '2020-10-05 08:56:27'),
(109, 18, 'Apply Leave', 'apply_leave', 1, 1, 0, 0, '2019-11-28 23:47:46'),
(110, 18, 'Leave Types ', 'leave_types', 1, 1, 1, 1, '2018-07-02 10:17:56'),
(111, 18, 'Department', 'department', 1, 1, 1, 1, '2018-06-26 03:57:07'),
(112, 18, 'Designation', 'designation', 1, 1, 1, 1, '2018-06-26 03:57:07'),
(113, 22, 'Fees Collection And Expense Monthly Chart', 'fees_collection_and_expense_monthly_chart', 1, 0, 0, 0, '2018-07-03 07:08:15'),
(114, 22, 'Fees Collection And Expense Yearly Chart', 'fees_collection_and_expense_yearly_chart', 1, 0, 0, 0, '2018-07-03 07:08:15'),
(115, 22, 'Monthly Fees Collection Widget', 'Monthly fees_collection_widget', 1, 0, 0, 0, '2018-07-03 07:13:35'),
(116, 22, 'Monthly Expense Widget', 'monthly_expense_widget', 1, 0, 0, 0, '2018-07-03 07:13:35'),
(117, 22, 'Student Count Widget', 'student_count_widget', 1, 0, 0, 0, '2018-07-03 07:13:35'),
(118, 22, 'Staff Role Count Widget', 'staff_role_count_widget', 1, 0, 0, 0, '2018-07-03 07:13:35'),
(122, 5, 'Attendance By Date', 'attendance_by_date', 1, 0, 0, 0, '2018-07-03 08:42:29'),
(123, 9, 'Add Student', 'add_student', 1, 0, 0, 0, '2018-07-03 08:42:29'),
(126, 15, 'User Status', 'user_status', 1, 0, 0, 0, '2018-07-03 08:42:29'),
(127, 18, 'Can See Other Users Profile', 'can_see_other_users_profile', 1, 0, 0, 0, '2018-07-03 08:42:29'),
(128, 1, 'Student Timeline', 'student_timeline', 1, 1, 1, 1, '2022-12-28 09:52:24'),
(129, 18, 'Staff Timeline', 'staff_timeline', 1, 1, 1, 1, '2022-12-28 09:52:24'),
(130, 15, 'Backup', 'backup', 1, 1, 0, 1, '2018-07-09 04:17:17'),
(131, 15, 'Restore', 'restore', 1, 0, 0, 0, '2018-07-09 04:17:17'),
(134, 1, 'Disable Reason', 'disable_reason', 1, 1, 1, 1, '2019-11-27 06:39:21'),
(135, 2, 'Fees Reminder', 'fees_reminder', 1, 0, 1, 0, '2019-10-25 00:39:49'),
(136, 5, 'Approve Leave', 'approve_leave', 1, 1, 1, 1, '2022-12-28 09:52:24'),
(137, 6, 'Exam Group', 'exam_group', 1, 1, 1, 1, '2019-10-25 01:02:34'),
(141, 6, 'Design Admit Card', 'design_admit_card', 1, 1, 1, 1, '2019-10-25 01:06:59'),
(142, 6, 'Print Admit Card', 'print_admit_card', 1, 0, 0, 0, '2019-11-23 23:57:51'),
(143, 6, 'Design Marksheet', 'design_marksheet', 1, 1, 1, 1, '2019-10-25 01:10:25'),
(144, 6, 'Print Marksheet', 'print_marksheet', 1, 0, 0, 0, '2019-10-25 01:11:02'),
(145, 7, 'Teachers Timetable', 'teachers_time_table', 1, 0, 0, 0, '2019-11-30 02:52:21'),
(146, 14, 'Student Report', 'student_report', 1, 0, 0, 0, '2019-10-25 01:27:00'),
(147, 14, 'Guardian Report', 'guardian_report', 1, 0, 0, 0, '2019-10-25 01:30:27'),
(148, 14, 'Student History', 'student_history', 1, 0, 0, 0, '2019-10-25 01:39:07'),
(149, 14, 'Student Login Credential Report', 'student_login_credential_report', 1, 0, 0, 0, '2019-10-25 01:39:07'),
(150, 14, 'Class Subject Report', 'class_subject_report', 1, 0, 0, 0, '2019-10-25 01:39:07'),
(151, 14, 'Admission Report', 'admission_report', 1, 0, 0, 0, '2019-10-25 01:39:07'),
(152, 14, 'Sibling Report', 'sibling_report', 1, 0, 0, 0, '2019-10-25 01:39:07'),
(153, 14, 'Homework Evaluation Report', 'homehork_evaluation_report', 1, 0, 0, 0, '2019-11-24 01:04:24'),
(154, 14, 'Student Profile', 'student_profile', 1, 0, 0, 0, '2019-10-25 01:39:07'),
(155, 14, 'Fees Statement', 'fees_statement', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(156, 14, 'Balance Fees Report', 'balance_fees_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(157, 14, 'Fees Collection Report', 'fees_collection_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(158, 14, 'Online Fees Collection Report', 'online_fees_collection_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(159, 14, 'Income Report', 'income_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(160, 14, 'Expense Report', 'expense_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(161, 14, 'PayRoll Report', 'payroll_report', 1, 0, 0, 0, '2019-10-31 00:23:22'),
(162, 14, 'Income Group Report', 'income_group_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(163, 14, 'Expense Group Report', 'expense_group_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(164, 14, 'Attendance Report', 'attendance_report', 1, 0, 0, 0, '2019-10-25 02:08:06'),
(165, 14, 'Staff Attendance Report', 'staff_attendance_report', 1, 0, 0, 0, '2019-10-25 02:08:06'),
(174, 14, 'Transport Report', 'transport_report', 1, 0, 0, 0, '2019-10-25 02:13:56'),
(175, 14, 'Hostel Report', 'hostel_report', 1, 0, 0, 0, '2019-11-27 06:51:53'),
(176, 14, 'Audit Trail Report', 'audit_trail_report', 1, 0, 0, 0, '2019-10-25 02:16:39'),
(177, 14, 'User Log', 'user_log', 1, 0, 0, 0, '2019-10-25 02:19:27'),
(178, 14, 'Book Issue Report', 'book_issue_report', 1, 0, 0, 0, '2019-10-25 02:29:04'),
(179, 14, 'Book Due Report', 'book_due_report', 1, 0, 0, 0, '2019-10-25 02:29:04'),
(180, 14, 'Book Inventory Report', 'book_inventory_report', 1, 0, 0, 0, '2019-10-25 02:29:04'),
(181, 14, 'Stock Report', 'stock_report', 1, 0, 0, 0, '2019-10-25 02:31:28'),
(182, 14, 'Add Item Report', 'add_item_report', 1, 0, 0, 0, '2019-10-25 02:31:28'),
(183, 14, 'Issue Item Report', 'issue_item_report', 1, 0, 0, 0, '2019-11-29 03:48:06'),
(185, 23, 'Online Examination', 'online_examination', 1, 1, 1, 1, '2019-11-23 23:54:50'),
(186, 23, 'Question Bank', 'question_bank', 1, 1, 1, 1, '2019-11-23 23:55:18'),
(187, 6, 'Exam Result', 'exam_result', 1, 0, 0, 0, '2019-11-23 23:58:50'),
(188, 7, 'Subject Group', 'subject_group', 1, 1, 1, 1, '2019-11-24 00:34:32'),
(189, 18, 'Teachers Rating', 'teachers_rating', 1, 0, 1, 1, '2019-11-24 03:12:54'),
(190, 22, 'Fees Awaiting Payment Widegts', 'fees_awaiting_payment_widegts', 1, 0, 0, 0, '2019-11-24 00:52:51'),
(191, 22, 'Conveted Leads Widegts', 'conveted_leads_widegts', 1, 0, 0, 0, '2019-11-24 00:58:24'),
(192, 22, 'Fees Overview Widegts', 'fees_overview_widegts', 1, 0, 0, 0, '2019-11-24 00:57:41'),
(193, 22, 'Enquiry Overview Widegts', 'enquiry_overview_widegts', 1, 0, 0, 0, '2019-12-02 05:06:09'),
(194, 22, 'Library Overview Widegts', 'book_overview_widegts', 1, 0, 0, 0, '2019-12-01 01:13:04'),
(195, 22, 'Student Today Attendance Widegts', 'today_attendance_widegts', 1, 0, 0, 0, '2019-12-03 04:57:45'),
(196, 6, 'Marks Import', 'marks_import', 1, 0, 0, 0, '2019-11-24 01:02:11'),
(197, 14, 'Student Attendance Type Report', 'student_attendance_type_report', 1, 0, 0, 0, '2019-11-24 01:06:32'),
(198, 14, 'Exam Marks Report', 'exam_marks_report', 1, 0, 0, 0, '2019-11-24 01:11:15'),
(200, 14, 'Online Exam Wise Report', 'online_exam_wise_report', 1, 0, 0, 0, '2019-11-24 01:18:14'),
(201, 14, 'Online Exams Report', 'online_exams_report', 1, 0, 0, 0, '2019-11-29 02:48:05'),
(202, 14, 'Online Exams Attempt Report', 'online_exams_attempt_report', 1, 0, 0, 0, '2019-11-29 02:46:24'),
(203, 14, 'Online Exams Rank Report', 'online_exams_rank_report', 1, 0, 0, 0, '2019-11-24 01:22:25'),
(204, 14, 'Staff Report', 'staff_report', 1, 0, 0, 0, '2019-11-24 01:25:27'),
(205, 6, 'Exam', 'exam', 1, 1, 1, 1, '2019-11-24 04:55:48'),
(207, 6, 'Exam Publish', 'exam_publish', 1, 0, 0, 0, '2019-11-24 05:15:04'),
(208, 6, 'Link Exam', 'link_exam', 1, 0, 1, 0, '2019-11-24 05:15:04'),
(210, 6, 'Assign / View student', 'exam_assign_view_student', 1, 0, 1, 0, '2019-11-24 05:15:04'),
(211, 6, 'Exam Subject', 'exam_subject', 1, 0, 1, 0, '2019-11-24 05:15:04'),
(212, 6, 'Exam Marks', 'exam_marks', 1, 0, 1, 0, '2019-11-24 05:15:04'),
(213, 15, 'Language Switcher', 'language_switcher', 1, 0, 0, 0, '2019-11-24 05:17:11'),
(214, 23, 'Add Questions in Exam ', 'add_questions_in_exam', 1, 0, 1, 0, '2019-11-28 01:38:57'),
(215, 15, 'Custom Fields', 'custom_fields', 1, 0, 0, 0, '2019-11-29 04:08:35'),
(216, 15, 'System Fields', 'system_fields', 1, 0, 0, 0, '2019-11-25 00:15:01'),
(217, 13, 'SMS', 'sms', 1, 0, 0, 0, '2018-06-22 10:40:54'),
(219, 14, 'Student / Period Attendance Report', 'student_period_attendance_report', 1, 0, 0, 0, '2019-11-29 02:19:31'),
(220, 14, 'Biometric Attendance Log', 'biometric_attendance_log', 1, 0, 0, 0, '2019-11-27 05:59:16'),
(221, 14, 'Book Issue Return Report', 'book_issue_return_report', 1, 0, 0, 0, '2019-11-27 06:30:23'),
(222, 23, 'Assign / View Student', 'online_assign_view_student', 1, 0, 1, 0, '2019-11-28 04:20:22'),
(223, 14, 'Rank Report', 'rank_report', 1, 0, 0, 0, '2019-11-29 02:30:21'),
(224, 25, 'Chat', 'chat', 1, 0, 0, 0, '2019-11-29 04:10:28'),
(226, 22, 'Income Donut Graph', 'income_donut_graph', 1, 0, 0, 0, '2019-11-29 05:00:33'),
(227, 22, 'Expense Donut Graph', 'expense_donut_graph', 1, 0, 0, 0, '2019-11-29 05:01:10'),
(228, 9, 'Import Book', 'import_book', 1, 0, 0, 0, '2019-11-29 06:21:01'),
(229, 22, 'Staff Present Today Widegts', 'staff_present_today_widegts', 1, 0, 0, 0, '2019-11-29 06:48:00'),
(230, 22, 'Student Present Today Widegts', 'student_present_today_widegts', 1, 0, 0, 0, '2019-11-29 06:47:42'),
(231, 26, 'Multi Class Student', 'multi_class_student', 1, 1, 1, 1, '2020-10-05 08:56:27'),
(232, 27, 'Online Admission', 'online_admission', 1, 0, 1, 1, '2019-12-02 06:11:10'),
(233, 15, 'Print Header Footer', 'print_header_footer', 1, 0, 0, 0, '2020-02-12 02:02:02'),
(234, 28, 'Manage Alumni', 'manage_alumni', 1, 1, 1, 1, '2020-06-02 03:15:46'),
(235, 28, 'Events', 'events', 1, 1, 1, 1, '2020-05-28 21:48:52'),
(236, 29, 'Manage Lesson Plan', 'manage_lesson_plan', 1, 1, 1, 0, '2020-05-28 22:17:37'),
(237, 29, 'Manage Syllabus Status', 'manage_syllabus_status', 1, 0, 1, 0, '2020-05-28 22:20:11'),
(238, 29, 'Lesson', 'lesson', 1, 1, 1, 1, '2020-05-28 22:20:11'),
(239, 29, 'Topic', 'topic', 1, 1, 1, 1, '2020-05-28 22:20:11'),
(240, 14, 'Syllabus Status Report', 'syllabus_status_report', 1, 0, 0, 0, '2020-05-28 23:17:54'),
(241, 14, 'Teacher Syllabus Status Report', 'teacher_syllabus_status_report', 1, 0, 0, 0, '2020-05-28 23:17:54'),
(242, 14, 'Alumni Report', 'alumni_report', 1, 0, 0, 0, '2020-06-07 23:59:54'),
(243, 15, 'Student Profile Update', 'student_profile_update', 1, 0, 0, 0, '2020-08-21 05:36:33'),
(244, 14, 'Student Gender Ratio Report', 'student_gender_ratio_report', 1, 0, 0, 0, '2020-08-22 12:37:51'),
(245, 14, 'Student Teacher Ratio Report', 'student_teacher_ratio_report', 1, 0, 0, 0, '2020-08-22 12:42:27'),
(246, 14, 'Daily Attendance Report', 'daily_attendance_report', 1, 0, 0, 0, '2020-08-22 12:43:16'),
(247, 23, 'Import Question', 'import_question', 1, 0, 0, 0, '2019-11-23 18:25:18'),
(248, 20, 'Staff ID Card', 'staff_id_card', 1, 1, 1, 1, '2018-07-06 10:41:28'),
(249, 20, 'Generate Staff ID Card', 'generate_staff_id_card', 1, 0, 0, 0, '2018-07-06 10:41:49'),
(250, 19, 'Daily Assignment', 'daily_assignment', 1, 0, 0, 0, '2022-03-02 07:28:23'),
(251, 6, 'Marks Division', 'marks_division', 1, 1, 1, 1, '2022-07-01 15:24:16'),
(252, 13, 'Schedule Email SMS Log', 'schedule_email_sms_log', 1, 0, 1, 0, '2022-07-09 11:25:16'),
(253, 13, 'Login Credentials Send', 'login_credentials_send', 1, 0, 0, 0, '2022-07-01 15:46:10'),
(254, 13, 'Email Template', 'email_template', 1, 1, 1, 1, '2022-07-01 15:46:10'),
(255, 13, 'SMS Template', 'sms_template', 1, 1, 1, 1, '2022-07-01 15:46:10'),
(256, 14, 'Balance Fees Report With Remark', 'balance_fees_report_with_remark', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(257, 14, 'Balance Fees Statement', 'balance_fees_statement', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(258, 14, 'Daily Collection Report', 'daily_collection_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(259, 11, 'Fees Master', 'transport_fees_master', 1, 0, 1, 0, '2022-07-05 09:29:19'),
(260, 11, 'Pickup Point', 'pickup_point', 1, 1, 1, 1, '2022-07-04 09:50:08'),
(261, 11, 'Route Pickup Point', 'route_pickup_point', 1, 1, 1, 1, '2022-07-04 09:50:08'),
(262, 11, 'Student Transport Fees', 'student_transport_fees', 1, 1, 1, 0, '2022-07-05 10:15:55'),
(263, 29, 'Comments', 'lesson_plan_comments', 1, 1, 0, 1, '2020-05-28 22:20:11'),
(264, 15, 'Sidebar Menu', 'sidebar_menu', 1, 0, 0, 0, '2022-07-11 12:01:17'),
(265, 15, 'Currency', 'currency', 1, 0, 0, 0, '2020-08-21 05:36:33'),
(266, 6, 'Exam Schedule', 'exam_schedule', 1, 0, 0, 0, '2019-11-23 23:58:50'),
(267, 6, 'Generate Rank', 'generate_rank', 1, 0, 0, 0, '2019-11-24 05:15:04'),
(268, 8, 'Content Type', 'content_type', 1, 1, 1, 1, '2022-07-08 05:18:54'),
(269, 8, 'Content Share List', 'content_share_list', 1, 0, 0, 1, '2022-07-08 05:18:58'),
(270, 8, 'Video Tutorial', 'video_tutorial', 1, 1, 1, 1, '2022-07-08 05:19:01'),
(271, 15, 'Currency Switcher', 'currency_switcher', 1, 0, 0, 0, '2019-11-24 05:17:11'),
(272, 2, 'Offline Bank Payments', 'offline_bank_payments', 1, 0, 0, 0, '2018-06-27 00:18:15'),
(273, 29, 'Copy Old Lessons', 'copy_old_lesson', 1, 0, 0, 0, '2020-05-28 22:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `permission_group`
--

CREATE TABLE `permission_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_active` int(11) DEFAULT 0,
  `system` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `permission_group`
--

INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES
(1, 'Student Information', 'student_information', 1, 1, '2019-03-15 09:30:22'),
(2, 'Fees Collection', 'fees_collection', 1, 0, '2020-06-11 00:51:35'),
(3, 'Income', 'income', 1, 0, '2020-06-01 01:57:39'),
(4, 'Expense', 'expense', 1, 0, '2019-03-15 09:06:22'),
(5, 'Student Attendance', 'student_attendance', 1, 0, '2018-07-02 07:48:08'),
(6, 'Examination', 'examination', 1, 0, '2018-07-11 02:49:08'),
(7, 'Academics', 'academics', 1, 1, '2018-07-02 07:25:43'),
(8, 'Download Center', 'download_center', 1, 0, '2018-07-02 07:49:29'),
(9, 'Library', 'library', 1, 0, '2018-06-28 11:13:14'),
(10, 'Inventory', 'inventory', 1, 0, '2018-06-27 00:48:58'),
(11, 'Transport', 'transport', 1, 0, '2018-06-27 07:51:26'),
(12, 'Hostel', 'hostel', 1, 0, '2018-07-02 07:49:32'),
(13, 'Communicate', 'communicate', 1, 0, '2018-07-02 07:50:00'),
(14, 'Reports', 'reports', 1, 1, '2018-06-27 03:40:22'),
(15, 'System Settings', 'system_settings', 1, 1, '2018-06-27 03:40:28'),
(16, 'Front CMS', 'front_cms', 1, 0, '2018-07-10 05:16:54'),
(17, 'Front Office', 'front_office', 1, 0, '2018-06-27 03:45:30'),
(18, 'Human Resource', 'human_resource', 1, 1, '2018-06-27 03:41:02'),
(19, 'Homework', 'homework', 1, 0, '2018-06-27 00:49:38'),
(20, 'Certificate', 'certificate', 1, 0, '2018-06-27 07:51:29'),
(21, 'Calendar To Do List', 'calendar_to_do_list', 1, 0, '2019-03-15 09:06:25'),
(22, 'Dashboard and Widgets', 'dashboard_and_widgets', 1, 1, '2018-06-27 03:41:17'),
(23, 'Online Examination', 'online_examination', 1, 0, '2020-06-01 02:25:36'),
(25, 'Chat', 'chat', 1, 0, '2019-11-23 23:54:04'),
(26, 'Multi Class', 'multi_class', 1, 0, '2019-11-27 12:14:14'),
(27, 'Online Admission', 'online_admission', 1, 0, '2019-11-27 02:42:13'),
(28, 'Alumni', 'alumni', 1, 0, '2020-05-29 00:26:38'),
(29, 'Lesson Plan', 'lesson_plan', 1, 0, '2020-06-07 05:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `permission_student`
--

CREATE TABLE `permission_student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `system` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `permission_student`
--

INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES
(1, 'Fees', 'fees', 0, 1, 1, 2, '2020-06-11 00:51:35'),
(2, 'Class Timetable', 'class_timetable', 1, 1, 1, 7, '2020-05-30 19:57:50'),
(3, 'Homework', 'homework', 0, 1, 1, 19, '2020-06-01 02:49:14'),
(4, 'Download Center', 'download_center', 0, 1, 1, 8, '2020-06-01 02:52:49'),
(5, 'Attendance', 'attendance', 0, 1, 1, 5, '2020-06-01 02:57:18'),
(7, 'Examinations', 'examinations', 0, 1, 1, 6, '2020-06-01 02:59:50'),
(8, 'Notice Board', 'notice_board', 0, 1, 1, 13, '2020-06-01 03:00:35'),
(11, 'Library', 'library', 0, 1, 1, 9, '2020-06-01 03:02:37'),
(12, 'Transport Routes', 'transport_routes', 0, 1, 1, 11, '2020-06-01 03:51:30'),
(13, 'Hostel Rooms', 'hostel_rooms', 0, 1, 1, 12, '2020-06-01 03:52:27'),
(14, 'Calendar To Do List', 'calendar_to_do_list', 0, 1, 1, 21, '2020-06-01 03:53:18'),
(15, 'Online Examination', 'online_examination', 0, 1, 1, 23, '2020-06-11 05:20:01'),
(16, 'Teachers Rating', 'teachers_rating', 0, 1, 1, NULL, '2022-12-28 09:52:28'),
(17, 'Chat', 'chat', 0, 1, 1, 25, '2020-06-01 04:53:06'),
(18, 'Multi Class', 'multi_class', 1, 1, 1, 26, '2020-05-30 19:56:52'),
(19, 'Lesson Plan', 'lesson_plan', 0, 1, 1, 29, '2020-06-07 05:38:30'),
(20, 'Syllabus Status', 'syllabus_status', 0, 1, 1, 29, '2020-06-07 05:38:30'),
(23, 'Apply Leave', 'apply_leave', 0, 1, 1, NULL, '2022-12-28 09:52:28'),
(24, 'Visitor Book', 'visitor_book', 0, 1, 1, NULL, '2022-10-10 11:45:18'),
(25, 'Student Timeline', 'student_timeline', 0, 1, 1, NULL, '2022-10-11 04:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `pickup_point`
--

CREATE TABLE `pickup_point` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `print_headerfooter`
--

CREATE TABLE `print_headerfooter` (
  `id` int(11) NOT NULL,
  `print_type` varchar(255) NOT NULL,
  `header_image` varchar(255) NOT NULL,
  `footer_content` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `print_headerfooter`
--

INSERT INTO `print_headerfooter` (`id`, `print_type`, `header_image`, `footer_content`, `created_by`, `entry_date`, `created_at`) VALUES
(1, 'staff_payslip', 'header_image.jpg', 'This payslip is computer generated hence no signature is required.', 1, '2020-02-28 15:41:08', '2022-12-28 09:52:24'),
(2, 'student_receipt', 'header_image.jpg', 'This receipt is computer generated hence no signature is required.', 1, '2020-02-28 15:40:58', '2022-12-28 09:52:24'),
(3, 'online_admission_receipt', 'header_image.jpg', 'This receipt is for online admission  computer ffffffff generated hence no signature is required.', 1, '2021-05-27 12:50:24', '2022-12-28 09:52:24'),
(4, 'online_exam', '1655913577-198504634062b33c698fde1!online-exam.jpg', 'This receipt is for online exam computer  generated hence no signature is required.', 1, '2022-08-30 12:58:46', '2022-09-08 17:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `question_type` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `opt_a` text DEFAULT NULL,
  `opt_b` text DEFAULT NULL,
  `opt_c` text DEFAULT NULL,
  `opt_d` text DEFAULT NULL,
  `opt_e` text DEFAULT NULL,
  `correct` text DEFAULT NULL,
  `descriptive_word_limit` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `staff_id`, `subject_id`, `question_type`, `level`, `class_id`, `section_id`, `class_section_id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `opt_e`, `correct`, `descriptive_word_limit`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'singlechoice', 'medium', 11, 2, NULL, 'The first letter of the first word in a sentence should be<br />\r\n<br />\r\n&nbsp;', '&nbsp; capital letter', '&nbsp;large letter&nbsp;', 'midum letter', 'none of these', '', 'opt_b', 0, '2023-10-16 12:19:42', NULL),
(2, 1, 1, 'singlechoice', 'medium', 11, 2, NULL, '​The order of a basic positive sentence is<br />\r\n<br />\r\n&nbsp;', '​&nbsp;Subject-Verb-Object', '&nbsp;Verb-Object-Subject', '&nbsp; All of these', 'None of these', '', 'opt_c', 0, '2023-10-16 12:21:20', NULL),
(3, 1, 1, 'singlechoice', 'medium', 11, 2, NULL, '​When two singular subjects are connected by or, use<br />\r\n<br />\r\n&nbsp;', '​&nbsp;a singular verb&nbsp;&nbsp;', '​a plural verb', 'a netral verb', 'None of these', '', 'opt_b', 0, '2023-10-16 12:22:49', NULL),
(4, 1, 1, 'singlechoice', 'medium', 11, 2, NULL, '​If an opinion-adjective and a fact-adjective are used before a noun, which comes first?<br />\r\n<br />\r\n&nbsp;', '​&nbsp;a fact-adjective&nbsp;', '​&nbsp;an opinion-adjective', 'None f these', 'All of these', '', 'opt_c', 0, '2023-10-16 12:24:30', NULL),
(5, 1, 1, 'singlechoice', 'medium', 11, 2, NULL, '​Adjectives usually come<br />\r\n<br />\r\n&nbsp;', '​&nbsp;before a noun&nbsp;', '​&nbsp;after a noun', 'none of these', 'all of these', '', 'opt_b', 0, '2023-10-16 12:26:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT '0',
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `question`, `answer`, `category`, `score`, `status`) VALUES
(1, 'What is your name?', 'Saloni Maurya', 'Spring Boot', '0', '0'),
(3, 'Dandiya Rass is a famous dance form of', 'Gujarat', 'Arts', '0', '1'),
(4, 'What is this?', 'This is a Apple.', 'Arts', '0', '1'),
(5, 'what is java?', 'All of the above ', 'Spring Boot', '0', NULL),
(6, 'What is your father name?', 'Ajay kumar Maurya', 'Spring Boot', '0', NULL),
(7, 'What is your Mother name?', 'Sangeeta devi', 'Spring Boot', '0', NULL),
(8, 'What is your Borther name?', 'All of the above.', 'Spring Boot', '0', NULL),
(9, 'What is this Pooja?', 'None of the above', 'Spring Boot', '0', NULL),
(10, 'What is you name?', 'Saloni', 'Arts', '0', NULL),
(11, 'What is localhost?', 'Localhost is a server and Store the data on server.', 'Spring Boot', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_details`
--

CREATE TABLE `quiz_details` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `classes` varchar(255) DEFAULT NULL,
  `marks` varchar(255) DEFAULT NULL,
  `negative_marks` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `total_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_details`
--

INSERT INTO `quiz_details` (`id`, `category`, `classes`, `marks`, `negative_marks`, `subject`, `title`, `total_time`) VALUES
(1, 'Spring Boot', 'Class 1', '212', 'Yes(-1)', 'Spring Boot', 'Spring Boot makes it easy to create stand-alone, production-grade Spring based Applications that you can \"just run\".', '0.2'),
(2, 'Arts', 'Class 1', '201', 'No', 'Drawing', 'Spring Boot makes it easy to create stand-alone, production-grade Spring based Applications that you can \"just run\".', '1');

-- --------------------------------------------------------

--
-- Table structure for table `read_notification`
--

CREATE TABLE `read_notification` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(11) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `is_superadmin` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 0, 1, 0, '2018-06-30 15:39:11', '0000-00-00'),
(2, 'Teacher', NULL, 0, 1, 0, '2018-06-30 15:39:14', '0000-00-00'),
(3, 'Accountant', NULL, 0, 1, 0, '2018-06-30 15:39:17', '0000-00-00'),
(4, 'Librarian', NULL, 0, 1, 0, '2018-06-30 15:39:21', '0000-00-00'),
(6, 'Receptionist', NULL, 0, 1, 0, '2018-07-02 05:39:03', '0000-00-00'),
(7, 'Super Admin', NULL, 0, 1, 1, '2018-07-11 14:11:29', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `perm_cat_id` int(11) DEFAULT NULL,
  `can_view` int(11) DEFAULT NULL,
  `can_add` int(11) DEFAULT NULL,
  `can_edit` int(11) DEFAULT NULL,
  `can_delete` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES
(11, 1, 78, 1, 1, 1, 1, '2018-07-03 00:49:43'),
(23, 1, 12, 1, 1, 1, 1, '2018-07-06 09:45:38'),
(24, 1, 13, 1, 1, 1, 1, '2018-07-06 09:48:28'),
(26, 1, 15, 1, 1, 1, 0, '2019-11-27 23:47:28'),
(31, 1, 21, 1, 0, 1, 0, '2019-11-26 04:51:15'),
(34, 1, 24, 1, 1, 1, 1, '2019-11-28 06:35:20'),
(43, 1, 32, 1, 1, 1, 1, '2018-07-06 10:22:05'),
(44, 1, 33, 1, 1, 1, 1, '2018-07-06 10:22:29'),
(45, 1, 34, 1, 1, 1, 1, '2018-07-06 10:23:59'),
(46, 1, 35, 1, 1, 1, 1, '2018-07-06 10:24:34'),
(47, 1, 104, 1, 1, 1, 1, '2018-07-06 10:23:08'),
(48, 1, 37, 1, 1, 1, 1, '2018-07-06 10:25:30'),
(49, 1, 38, 1, 1, 1, 1, '2018-07-09 05:15:27'),
(61, 1, 55, 1, 1, 1, 1, '2018-07-02 09:24:16'),
(67, 1, 61, 1, 1, 0, 1, '2018-07-09 05:59:19'),
(68, 1, 62, 1, 1, 0, 1, '2018-07-09 05:59:19'),
(69, 1, 63, 1, 1, 0, 1, '2018-07-09 03:51:38'),
(70, 1, 64, 1, 1, 1, 1, '2018-07-09 03:02:19'),
(71, 1, 65, 1, 1, 1, 1, '2018-07-09 03:11:21'),
(72, 1, 66, 1, 1, 1, 1, '2018-07-09 03:13:09'),
(73, 1, 67, 1, 1, 1, 1, '2018-07-09 03:14:47'),
(74, 1, 79, 1, 1, 0, 1, '2019-11-30 01:32:51'),
(75, 1, 80, 1, 1, 1, 1, '2018-07-06 09:41:23'),
(76, 1, 81, 1, 1, 1, 1, '2018-07-06 09:41:23'),
(78, 1, 83, 1, 1, 1, 1, '2018-07-06 09:41:23'),
(79, 1, 84, 1, 1, 1, 1, '2018-07-06 09:41:23'),
(80, 1, 85, 1, 1, 1, 1, '2018-07-12 00:16:00'),
(94, 1, 82, 1, 1, 1, 1, '2018-07-06 09:41:23'),
(120, 1, 39, 1, 1, 1, 1, '2018-07-06 10:26:28'),
(156, 1, 9, 1, 1, 1, 1, '2019-11-27 23:45:46'),
(157, 1, 10, 1, 1, 1, 1, '2019-11-27 23:45:46'),
(159, 1, 40, 1, 1, 1, 1, '2019-11-30 00:49:39'),
(160, 1, 41, 1, 1, 1, 1, '2019-12-02 05:43:41'),
(161, 1, 42, 1, 1, 1, 1, '2019-11-30 00:49:39'),
(169, 1, 27, 1, 1, 0, 1, '2019-11-29 06:15:37'),
(178, 1, 54, 1, 0, 1, 0, '2018-07-05 09:09:22'),
(179, 1, 56, 1, 0, 1, 0, '2019-11-30 00:49:54'),
(180, 1, 57, 1, 0, 1, 0, '2019-11-30 01:32:51'),
(181, 1, 58, 1, 0, 1, 0, '2019-11-30 01:32:51'),
(182, 1, 59, 1, 0, 1, 0, '2019-11-30 01:32:51'),
(183, 1, 60, 1, 0, 1, 0, '2019-11-30 00:59:57'),
(201, 1, 14, 1, 0, 0, 0, '2018-07-02 11:22:03'),
(204, 1, 26, 1, 0, 0, 0, '2018-07-02 11:32:05'),
(206, 1, 29, 1, 0, 0, 0, '2018-07-02 11:43:54'),
(207, 1, 30, 1, 0, 0, 0, '2018-07-02 11:43:54'),
(208, 1, 31, 1, 1, 1, 1, '2019-11-30 01:32:51'),
(222, 1, 1, 1, 1, 1, 1, '2019-11-27 22:55:06'),
(307, 1, 126, 1, 0, 0, 0, '2018-07-03 09:26:13'),
(315, 1, 123, 1, 0, 0, 0, '2018-07-03 10:27:03'),
(369, 1, 102, 1, 1, 1, 1, '2019-12-02 05:02:15'),
(435, 1, 96, 1, 1, 1, 1, '2018-07-09 01:03:54'),
(461, 1, 97, 1, 0, 0, 0, '2018-07-09 01:00:16'),
(464, 1, 86, 1, 1, 1, 1, '2019-11-28 06:39:19'),
(474, 1, 130, 1, 1, 0, 1, '2018-07-09 10:56:36'),
(476, 1, 131, 1, 0, 0, 0, '2018-07-09 04:53:32'),
(557, 6, 82, 1, 1, 1, 1, '2019-12-01 01:48:28'),
(558, 6, 83, 1, 1, 1, 1, '2019-12-01 01:49:08'),
(559, 6, 84, 1, 1, 1, 1, '2019-12-01 01:49:59'),
(575, 6, 44, 1, 0, 0, 0, '2018-07-10 07:35:33'),
(576, 6, 46, 1, 0, 0, 0, '2018-07-10 07:35:33'),
(578, 6, 102, 1, 1, 1, 1, '2019-12-01 01:52:27'),
(625, 1, 28, 1, 1, 1, 1, '2019-11-29 06:19:18'),
(634, 4, 102, 1, 1, 1, 1, '2019-12-01 01:03:00'),
(669, 1, 145, 1, 0, 0, 0, '2019-11-26 04:51:15'),
(677, 1, 153, 1, 0, 0, 0, '2019-11-01 02:28:24'),
(720, 1, 216, 1, 0, 0, 0, '2019-11-26 05:24:12'),
(728, 1, 185, 1, 1, 1, 1, '2019-11-28 02:50:33'),
(729, 1, 186, 1, 1, 1, 1, '2019-11-28 02:49:07'),
(730, 1, 214, 1, 0, 1, 0, '2019-11-28 01:47:53'),
(732, 1, 198, 1, 0, 0, 0, '2019-11-26 05:24:30'),
(734, 1, 200, 1, 0, 0, 0, '2019-11-26 05:24:30'),
(735, 1, 201, 1, 0, 0, 0, '2019-11-26 05:24:30'),
(736, 1, 202, 1, 0, 0, 0, '2019-11-26 05:24:30'),
(737, 1, 203, 1, 0, 0, 0, '2019-11-26 05:24:30'),
(747, 1, 2, 1, 0, 0, 0, '2019-11-27 22:56:08'),
(748, 1, 3, 1, 1, 1, 1, '2019-11-27 22:56:32'),
(749, 1, 4, 1, 1, 1, 1, '2019-11-27 22:56:48'),
(751, 1, 128, 0, 1, 0, 1, '2019-11-27 22:57:01'),
(754, 1, 134, 1, 1, 1, 1, '2019-11-27 23:18:21'),
(755, 1, 5, 1, 1, 0, 1, '2019-11-27 23:35:07'),
(756, 1, 6, 1, 0, 0, 0, '2019-11-27 23:35:25'),
(757, 1, 7, 1, 1, 1, 1, '2019-11-27 23:36:35'),
(758, 1, 8, 1, 1, 1, 1, '2019-11-27 23:37:27'),
(760, 1, 68, 1, 0, 0, 0, '2019-11-27 23:38:06'),
(761, 1, 69, 1, 1, 1, 1, '2019-11-27 23:39:06'),
(762, 1, 70, 1, 1, 1, 1, '2019-11-27 23:39:41'),
(763, 1, 71, 1, 0, 0, 0, '2019-11-27 23:39:59'),
(765, 1, 73, 1, 0, 0, 0, '2019-11-27 23:43:15'),
(766, 1, 74, 1, 0, 0, 0, '2019-11-27 23:43:55'),
(768, 1, 11, 1, 0, 0, 0, '2019-11-27 23:45:46'),
(769, 1, 122, 1, 0, 0, 0, '2019-11-27 23:52:43'),
(771, 1, 136, 1, 0, 0, 0, '2019-11-27 23:55:36'),
(772, 1, 20, 1, 1, 1, 1, '2019-11-28 04:06:44'),
(773, 1, 137, 1, 1, 1, 1, '2019-11-28 00:46:14'),
(774, 1, 141, 1, 1, 1, 1, '2019-11-28 00:59:42'),
(775, 1, 142, 1, 0, 0, 0, '2019-11-27 23:56:12'),
(776, 1, 143, 1, 1, 1, 1, '2019-11-28 00:59:42'),
(777, 1, 144, 1, 0, 0, 0, '2019-11-27 23:56:12'),
(778, 1, 187, 1, 0, 0, 0, '2019-11-27 23:56:12'),
(779, 1, 196, 1, 0, 0, 0, '2019-11-27 23:56:12'),
(781, 1, 207, 1, 0, 0, 0, '2019-11-27 23:56:12'),
(782, 1, 208, 1, 0, 1, 0, '2019-11-28 00:10:22'),
(783, 1, 210, 1, 0, 1, 0, '2019-11-28 00:34:40'),
(784, 1, 211, 1, 0, 1, 0, '2019-11-28 00:38:23'),
(785, 1, 212, 1, 0, 1, 0, '2019-11-28 00:42:15'),
(786, 1, 205, 1, 1, 1, 1, '2019-11-28 00:42:15'),
(787, 1, 222, 1, 0, 1, 0, '2019-11-28 01:36:36'),
(788, 1, 77, 1, 1, 1, 1, '2019-11-28 06:22:10'),
(789, 1, 188, 1, 1, 1, 1, '2019-11-28 06:26:16'),
(790, 1, 23, 1, 1, 1, 1, '2019-11-28 06:34:20'),
(791, 1, 25, 1, 1, 1, 1, '2019-11-28 06:36:20'),
(792, 1, 127, 1, 0, 0, 0, '2019-11-28 06:41:25'),
(794, 1, 88, 1, 1, 1, 0, '2019-11-28 06:43:04'),
(795, 1, 90, 1, 1, 0, 1, '2019-11-28 06:46:22'),
(796, 1, 108, 1, 0, 1, 1, '2021-01-23 07:09:32'),
(797, 1, 109, 1, 1, 0, 0, '2019-11-28 23:38:11'),
(798, 1, 110, 1, 1, 1, 1, '2019-11-28 23:49:29'),
(799, 1, 111, 1, 1, 1, 1, '2019-11-28 23:49:57'),
(800, 1, 112, 1, 1, 1, 1, '2019-11-28 23:49:57'),
(801, 1, 129, 0, 1, 0, 1, '2019-11-28 23:49:57'),
(802, 1, 189, 1, 0, 1, 1, '2019-11-28 23:59:22'),
(810, 2, 1, 1, 1, 1, 1, '2019-11-30 02:54:16'),
(817, 1, 93, 1, 1, 1, 1, '2019-11-29 00:56:14'),
(825, 1, 87, 1, 0, 0, 0, '2019-11-29 00:56:14'),
(829, 1, 94, 1, 1, 0, 0, '2019-11-29 00:57:57'),
(836, 1, 146, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(837, 1, 147, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(838, 1, 148, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(839, 1, 149, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(840, 1, 150, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(841, 1, 151, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(842, 1, 152, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(843, 1, 154, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(862, 1, 155, 1, 0, 0, 0, '2019-11-29 02:07:30'),
(863, 1, 156, 1, 0, 0, 0, '2019-11-29 02:07:52'),
(864, 1, 157, 1, 0, 0, 0, '2019-11-29 02:08:05'),
(874, 1, 158, 1, 0, 0, 0, '2019-11-29 02:14:03'),
(875, 1, 159, 1, 0, 0, 0, '2019-11-29 02:14:31'),
(876, 1, 160, 1, 0, 0, 0, '2019-11-29 02:14:44'),
(878, 1, 162, 1, 0, 0, 0, '2019-11-29 02:15:58'),
(879, 1, 163, 1, 0, 0, 0, '2019-11-29 02:16:19'),
(882, 1, 164, 1, 0, 0, 0, '2019-11-29 02:25:17'),
(884, 1, 165, 1, 0, 0, 0, '2019-11-29 02:25:30'),
(886, 1, 197, 1, 0, 0, 0, '2019-11-29 02:25:48'),
(887, 1, 219, 1, 0, 0, 0, '2019-11-29 02:26:05'),
(889, 1, 220, 1, 0, 0, 0, '2019-11-29 02:26:22'),
(932, 1, 204, 1, 0, 0, 0, '2019-11-29 03:43:27'),
(933, 1, 221, 1, 0, 0, 0, '2019-11-29 03:45:04'),
(934, 1, 178, 1, 0, 0, 0, '2019-11-29 03:45:16'),
(935, 1, 179, 1, 0, 0, 0, '2019-11-29 03:45:33'),
(936, 1, 161, 1, 0, 0, 0, '2019-11-29 03:45:48'),
(937, 1, 180, 1, 0, 0, 0, '2019-11-29 03:45:48'),
(938, 1, 181, 1, 0, 0, 0, '2019-11-29 03:49:33'),
(939, 1, 182, 1, 0, 0, 0, '2019-11-29 03:49:45'),
(940, 1, 183, 1, 0, 0, 0, '2019-11-29 03:49:56'),
(941, 1, 174, 1, 0, 0, 0, '2019-11-29 03:50:53'),
(943, 1, 176, 1, 0, 0, 0, '2019-11-29 03:52:10'),
(944, 1, 177, 1, 0, 0, 0, '2019-11-29 03:52:22'),
(945, 1, 53, 0, 1, 0, 1, '2021-01-23 07:09:32'),
(946, 1, 215, 1, 0, 0, 0, '2019-11-29 04:01:37'),
(947, 1, 213, 1, 0, 0, 0, '2019-11-29 04:07:45'),
(974, 1, 224, 1, 0, 0, 0, '2019-11-29 04:32:52'),
(1026, 1, 135, 1, 0, 1, 0, '2019-11-29 06:02:12'),
(1031, 1, 228, 1, 0, 0, 0, '2019-11-29 06:21:16'),
(1083, 1, 175, 1, 0, 0, 0, '2019-11-30 00:37:24'),
(1086, 1, 43, 1, 1, 1, 1, '2019-11-30 00:49:39'),
(1087, 1, 44, 1, 0, 0, 0, '2019-11-30 00:49:39'),
(1088, 1, 46, 1, 0, 0, 0, '2019-11-30 00:49:39'),
(1089, 1, 217, 1, 0, 0, 0, '2019-11-30 00:49:39'),
(1090, 1, 98, 1, 1, 1, 1, '2019-11-30 01:32:51'),
(1091, 1, 99, 1, 0, 0, 0, '2019-11-30 01:30:18'),
(1092, 1, 223, 1, 0, 0, 0, '2019-11-30 01:32:51'),
(1103, 2, 205, 1, 1, 1, 1, '2019-11-30 01:56:04'),
(1105, 2, 23, 1, 0, 0, 0, '2019-11-30 01:56:04'),
(1106, 2, 24, 1, 0, 0, 0, '2019-11-30 01:56:04'),
(1107, 2, 25, 1, 0, 0, 0, '2019-11-30 01:56:04'),
(1108, 2, 77, 1, 0, 0, 0, '2019-11-30 01:56:04'),
(1119, 2, 117, 1, 0, 0, 0, '2019-11-30 01:56:04'),
(1123, 3, 8, 1, 1, 1, 1, '2019-11-30 06:46:18'),
(1125, 3, 69, 1, 1, 1, 1, '2019-11-30 07:00:49'),
(1126, 3, 70, 1, 1, 1, 1, '2019-11-30 07:04:46'),
(1130, 3, 9, 1, 1, 1, 1, '2019-11-30 07:14:54'),
(1131, 3, 10, 1, 1, 1, 1, '2019-11-30 07:16:02'),
(1134, 3, 35, 1, 1, 1, 1, '2019-11-30 07:25:04'),
(1135, 3, 104, 1, 1, 1, 1, '2019-11-30 07:25:53'),
(1140, 3, 41, 1, 1, 1, 1, '2019-11-30 07:37:13'),
(1141, 3, 42, 1, 1, 1, 1, '2019-11-30 07:37:46'),
(1142, 3, 43, 1, 1, 1, 1, '2019-11-30 07:42:06'),
(1151, 3, 87, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1152, 3, 88, 1, 1, 1, 0, '2019-11-30 02:23:13'),
(1153, 3, 90, 1, 1, 0, 1, '2019-11-30 02:23:13'),
(1154, 3, 108, 1, 0, 1, 0, '2019-11-30 02:23:13'),
(1155, 3, 109, 1, 1, 0, 0, '2019-11-30 02:23:13'),
(1156, 3, 110, 1, 1, 1, 1, '2019-11-30 02:23:13'),
(1157, 3, 111, 1, 1, 1, 1, '2019-11-30 02:23:13'),
(1158, 3, 112, 1, 1, 1, 1, '2019-11-30 02:23:13'),
(1159, 3, 127, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1160, 3, 129, 0, 1, 0, 1, '2019-11-30 02:23:13'),
(1161, 3, 102, 1, 1, 1, 1, '2019-11-30 02:23:13'),
(1162, 3, 106, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1163, 3, 113, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1164, 3, 114, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1165, 3, 115, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1166, 3, 116, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1167, 3, 117, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1168, 3, 118, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1171, 2, 142, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1172, 2, 144, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1179, 2, 212, 1, 0, 1, 0, '2019-11-30 02:36:17'),
(1183, 2, 148, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1184, 2, 149, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1185, 2, 150, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1186, 2, 151, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1187, 2, 152, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1188, 2, 153, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1189, 2, 154, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1190, 2, 197, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1191, 2, 198, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1193, 2, 200, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1194, 2, 201, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1195, 2, 202, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1196, 2, 203, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1197, 2, 219, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1198, 2, 223, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1199, 2, 213, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1201, 2, 230, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1204, 2, 214, 1, 0, 1, 0, '2019-11-30 02:36:17'),
(1206, 2, 224, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1208, 2, 2, 1, 0, 0, 0, '2019-11-30 02:55:45'),
(1210, 2, 143, 1, 1, 1, 1, '2019-11-30 02:57:28'),
(1211, 2, 145, 1, 0, 0, 0, '2019-11-30 02:57:28'),
(1214, 2, 3, 1, 1, 1, 1, '2019-11-30 03:03:18'),
(1216, 2, 4, 1, 1, 1, 1, '2019-11-30 03:32:56'),
(1218, 2, 128, 0, 1, 0, 1, '2019-11-30 03:37:44'),
(1220, 3, 135, 1, 0, 1, 0, '2019-11-30 07:08:56'),
(1231, 3, 190, 1, 0, 0, 0, '2019-11-30 03:44:02'),
(1232, 3, 192, 1, 0, 0, 0, '2019-11-30 03:44:02'),
(1233, 3, 226, 1, 0, 0, 0, '2019-11-30 03:44:02'),
(1234, 3, 227, 1, 0, 0, 0, '2019-11-30 03:44:02'),
(1235, 3, 224, 1, 0, 0, 0, '2019-11-30 03:44:02'),
(1236, 2, 15, 1, 1, 1, 0, '2019-11-30 03:54:25'),
(1239, 2, 122, 1, 0, 0, 0, '2019-11-30 03:57:48'),
(1240, 2, 136, 1, 0, 0, 0, '2019-11-30 03:57:48'),
(1242, 6, 217, 1, 0, 0, 0, '2019-11-30 04:00:13'),
(1243, 6, 224, 1, 0, 0, 0, '2019-11-30 04:00:13'),
(1245, 2, 20, 1, 1, 1, 1, '2019-11-30 04:01:28'),
(1246, 2, 137, 1, 1, 1, 1, '2019-11-30 04:02:40'),
(1248, 2, 141, 1, 1, 1, 1, '2019-11-30 04:04:04'),
(1250, 2, 187, 1, 0, 0, 0, '2019-11-30 04:11:19'),
(1252, 2, 207, 1, 0, 0, 0, '2019-11-30 04:21:21'),
(1253, 2, 208, 1, 0, 1, 0, '2019-11-30 04:22:00'),
(1255, 2, 210, 1, 0, 1, 0, '2019-11-30 04:22:58'),
(1256, 2, 211, 1, 0, 1, 0, '2019-11-30 04:24:03'),
(1257, 2, 21, 1, 0, 0, 0, '2019-11-30 04:32:59'),
(1259, 2, 188, 1, 0, 0, 0, '2019-11-30 04:34:35'),
(1260, 2, 27, 1, 0, 0, 0, '2019-11-30 04:36:13'),
(1262, 2, 43, 1, 1, 1, 1, '2019-11-30 04:39:42'),
(1263, 2, 44, 1, 0, 0, 0, '2019-11-30 04:41:43'),
(1264, 2, 46, 1, 0, 0, 0, '2019-11-30 04:41:43'),
(1265, 2, 217, 1, 0, 0, 0, '2019-11-30 04:41:43'),
(1266, 2, 146, 1, 0, 0, 0, '2019-11-30 04:46:35'),
(1267, 2, 147, 1, 0, 0, 0, '2019-11-30 04:47:37'),
(1269, 2, 164, 1, 0, 0, 0, '2019-11-30 04:51:04'),
(1271, 2, 109, 1, 1, 0, 0, '2019-11-30 05:03:37'),
(1272, 2, 93, 1, 1, 1, 1, '2019-11-30 05:07:25'),
(1273, 2, 94, 1, 1, 0, 0, '2019-11-30 05:07:42'),
(1275, 2, 102, 1, 1, 1, 1, '2019-11-30 05:11:22'),
(1277, 2, 196, 1, 0, 0, 0, '2019-11-30 05:15:01'),
(1278, 2, 195, 1, 0, 0, 0, '2019-11-30 05:19:08'),
(1279, 2, 185, 1, 1, 1, 1, '2019-11-30 05:21:44'),
(1280, 2, 186, 1, 1, 1, 1, '2019-11-30 05:22:43'),
(1281, 2, 222, 1, 0, 1, 0, '2019-11-30 05:24:30'),
(1283, 3, 5, 1, 1, 0, 1, '2019-11-30 06:43:04'),
(1284, 3, 6, 1, 0, 0, 0, '2019-11-30 06:43:29'),
(1285, 3, 7, 1, 1, 1, 1, '2019-11-30 06:44:39'),
(1286, 3, 68, 1, 0, 0, 0, '2019-11-30 06:46:58'),
(1287, 3, 71, 1, 0, 0, 0, '2019-11-30 07:05:41'),
(1288, 3, 73, 1, 0, 0, 0, '2019-11-30 07:05:59'),
(1289, 3, 74, 1, 0, 0, 0, '2019-11-30 07:06:08'),
(1290, 3, 11, 1, 0, 0, 0, '2019-11-30 07:16:37'),
(1291, 3, 12, 1, 1, 1, 1, '2019-11-30 07:19:29'),
(1292, 3, 13, 1, 1, 1, 1, '2019-11-30 07:22:27'),
(1294, 3, 14, 1, 0, 0, 0, '2019-11-30 07:22:55'),
(1295, 3, 31, 1, 1, 1, 1, '2019-12-02 06:30:37'),
(1297, 3, 37, 1, 1, 1, 1, '2019-11-30 07:28:09'),
(1298, 3, 38, 1, 1, 1, 1, '2019-11-30 07:29:02'),
(1299, 3, 39, 1, 1, 1, 1, '2019-11-30 07:30:07'),
(1300, 3, 40, 1, 1, 1, 1, '2019-11-30 07:32:43'),
(1301, 3, 44, 1, 0, 0, 0, '2019-11-30 07:44:09'),
(1302, 3, 46, 1, 0, 0, 0, '2019-11-30 07:44:09'),
(1303, 3, 217, 1, 0, 0, 0, '2019-11-30 07:44:09'),
(1304, 3, 155, 1, 0, 0, 0, '2019-11-30 07:44:32'),
(1305, 3, 156, 1, 0, 0, 0, '2019-11-30 07:45:18'),
(1306, 3, 157, 1, 0, 0, 0, '2019-11-30 07:45:42'),
(1307, 3, 158, 1, 0, 0, 0, '2019-11-30 07:46:07'),
(1308, 3, 159, 1, 0, 0, 0, '2019-11-30 07:46:21'),
(1309, 3, 160, 1, 0, 0, 0, '2019-11-30 07:46:33'),
(1313, 3, 161, 1, 0, 0, 0, '2019-11-30 07:48:26'),
(1314, 3, 162, 1, 0, 0, 0, '2019-11-30 07:48:48'),
(1315, 3, 163, 1, 0, 0, 0, '2019-11-30 07:48:48'),
(1316, 3, 164, 1, 0, 0, 0, '2019-11-30 07:49:47'),
(1317, 3, 165, 1, 0, 0, 0, '2019-11-30 07:49:47'),
(1318, 3, 174, 1, 0, 0, 0, '2019-11-30 07:49:47'),
(1319, 3, 175, 1, 0, 0, 0, '2019-11-30 07:49:59'),
(1320, 3, 181, 1, 0, 0, 0, '2019-11-30 07:50:08'),
(1321, 3, 86, 1, 1, 1, 1, '2019-11-30 07:54:08'),
(1322, 4, 28, 1, 1, 1, 1, '2019-12-01 00:52:39'),
(1324, 4, 29, 1, 0, 0, 0, '2019-12-01 00:53:46'),
(1325, 4, 30, 1, 0, 0, 0, '2019-12-01 00:53:59'),
(1326, 4, 123, 1, 0, 0, 0, '2019-12-01 00:54:26'),
(1327, 4, 228, 1, 0, 0, 0, '2019-12-01 00:54:39'),
(1328, 4, 43, 1, 1, 1, 1, '2019-12-01 00:58:05'),
(1332, 4, 44, 1, 0, 0, 0, '2019-12-01 00:59:16'),
(1333, 4, 46, 1, 0, 0, 0, '2019-12-01 00:59:16'),
(1334, 4, 217, 1, 0, 0, 0, '2019-12-01 00:59:16'),
(1335, 4, 178, 1, 0, 0, 0, '2019-12-01 00:59:59'),
(1336, 4, 179, 1, 0, 0, 0, '2019-12-01 01:00:11'),
(1337, 4, 180, 1, 0, 0, 0, '2019-12-01 01:00:29'),
(1338, 4, 221, 1, 0, 0, 0, '2019-12-01 01:00:46'),
(1339, 4, 86, 1, 0, 0, 0, '2019-12-01 01:01:02'),
(1341, 4, 106, 1, 0, 0, 0, '2019-12-01 01:05:21'),
(1342, 1, 107, 1, 0, 0, 0, '2019-12-01 01:06:44'),
(1343, 4, 117, 1, 0, 0, 0, '2019-12-01 01:10:20'),
(1344, 4, 194, 1, 0, 0, 0, '2019-12-01 01:11:35'),
(1348, 4, 230, 1, 0, 0, 0, '2019-12-01 01:19:15'),
(1350, 6, 1, 1, 0, 0, 0, '2019-12-01 01:35:32'),
(1351, 6, 21, 1, 0, 0, 0, '2019-12-01 01:36:29'),
(1352, 6, 23, 1, 0, 0, 0, '2019-12-01 01:36:45'),
(1353, 6, 24, 1, 0, 0, 0, '2019-12-01 01:37:05'),
(1354, 6, 25, 1, 0, 0, 0, '2019-12-01 01:37:34'),
(1355, 6, 77, 1, 0, 0, 0, '2019-12-01 01:38:08'),
(1356, 6, 188, 1, 0, 0, 0, '2019-12-01 01:38:45'),
(1357, 6, 43, 1, 1, 1, 1, '2019-12-01 01:40:44'),
(1358, 6, 78, 1, 1, 1, 1, '2019-12-01 01:43:04'),
(1360, 6, 79, 1, 1, 0, 1, '2019-12-01 01:44:39'),
(1361, 6, 80, 1, 1, 1, 1, '2019-12-01 01:45:08'),
(1362, 6, 81, 1, 1, 1, 1, '2019-12-01 01:47:50'),
(1363, 6, 85, 1, 1, 1, 1, '2019-12-01 01:50:43'),
(1364, 6, 86, 1, 0, 0, 0, '2019-12-01 01:51:10'),
(1365, 6, 106, 1, 0, 0, 0, '2019-12-01 01:52:55'),
(1366, 6, 117, 1, 0, 0, 0, '2019-12-01 01:53:08'),
(1394, 1, 106, 1, 0, 0, 0, '2019-12-02 05:20:33'),
(1395, 1, 113, 1, 0, 0, 0, '2019-12-02 05:20:59'),
(1396, 1, 114, 1, 0, 0, 0, '2019-12-02 05:21:34'),
(1397, 1, 115, 1, 0, 0, 0, '2019-12-02 05:21:34'),
(1398, 1, 116, 1, 0, 0, 0, '2019-12-02 05:21:54'),
(1399, 1, 117, 1, 0, 0, 0, '2019-12-02 05:22:04'),
(1400, 1, 118, 1, 0, 0, 0, '2019-12-02 05:22:20'),
(1402, 1, 191, 1, 0, 0, 0, '2019-12-02 05:23:34'),
(1403, 1, 192, 1, 0, 0, 0, '2019-12-02 05:23:47'),
(1404, 1, 193, 1, 0, 0, 0, '2019-12-02 05:23:58'),
(1405, 1, 194, 1, 0, 0, 0, '2019-12-02 05:24:11'),
(1406, 1, 195, 1, 0, 0, 0, '2019-12-02 05:24:20'),
(1408, 1, 227, 1, 0, 0, 0, '2019-12-02 05:25:47'),
(1410, 1, 226, 1, 0, 0, 0, '2019-12-02 05:31:41'),
(1411, 1, 229, 1, 0, 0, 0, '2019-12-02 05:32:57'),
(1412, 1, 230, 1, 0, 0, 0, '2019-12-02 05:32:57'),
(1413, 1, 190, 1, 0, 0, 0, '2019-12-02 05:43:41'),
(1414, 2, 174, 1, 0, 0, 0, '2019-12-02 05:54:37'),
(1415, 2, 175, 1, 0, 0, 0, '2019-12-02 05:54:37'),
(1418, 2, 232, 1, 0, 1, 1, '2019-12-02 06:11:27'),
(1419, 2, 231, 1, 0, 0, 0, '2019-12-02 06:12:28'),
(1420, 1, 231, 1, 1, 1, 1, '2021-01-23 07:09:32'),
(1421, 1, 232, 1, 0, 1, 1, '2019-12-02 06:19:32'),
(1422, 3, 32, 1, 1, 1, 1, '2019-12-02 06:30:37'),
(1423, 3, 33, 1, 1, 1, 1, '2019-12-02 06:30:37'),
(1424, 3, 34, 1, 1, 1, 1, '2019-12-02 06:30:37'),
(1425, 3, 182, 1, 0, 0, 0, '2019-12-02 06:30:37'),
(1426, 3, 183, 1, 0, 0, 0, '2019-12-02 06:30:37'),
(1427, 3, 189, 1, 0, 1, 1, '2019-12-02 06:30:37'),
(1428, 3, 229, 1, 0, 0, 0, '2019-12-02 06:30:37'),
(1429, 3, 230, 1, 0, 0, 0, '2019-12-02 06:30:37'),
(1430, 4, 213, 1, 0, 0, 0, '2019-12-02 06:32:14'),
(1432, 4, 224, 1, 0, 0, 0, '2019-12-02 06:32:14'),
(1433, 4, 195, 1, 0, 0, 0, '2019-12-03 04:57:53'),
(1434, 4, 229, 1, 0, 0, 0, '2019-12-03 04:58:19'),
(1436, 6, 213, 1, 0, 0, 0, '2019-12-03 05:10:11'),
(1437, 6, 191, 1, 0, 0, 0, '2019-12-03 05:10:11'),
(1438, 6, 193, 1, 0, 0, 0, '2019-12-03 05:10:11'),
(1439, 6, 230, 1, 0, 0, 0, '2019-12-03 05:10:11'),
(1440, 2, 106, 1, 0, 0, 0, '2020-01-25 04:21:36'),
(1441, 2, 107, 1, 0, 0, 0, '2020-02-12 02:10:13'),
(1442, 2, 134, 1, 1, 1, 1, '2020-02-12 02:12:36'),
(1443, 1, 233, 1, 0, 0, 0, '2020-02-12 02:21:57'),
(1444, 2, 86, 1, 0, 0, 0, '2020-02-12 02:22:33'),
(1445, 3, 233, 1, 0, 0, 0, '2020-02-12 03:51:17'),
(1446, 1, 234, 1, 1, 1, 1, '2020-06-01 21:51:09'),
(1447, 1, 235, 1, 1, 1, 1, '2020-05-29 23:17:01'),
(1448, 1, 236, 1, 1, 1, 0, '2020-05-29 23:17:52'),
(1449, 1, 237, 1, 0, 1, 0, '2020-05-29 23:18:18'),
(1450, 1, 238, 1, 1, 1, 1, '2020-05-29 23:19:52'),
(1451, 1, 239, 1, 1, 1, 1, '2020-05-29 23:22:10'),
(1452, 2, 236, 1, 1, 1, 0, '2020-05-29 23:40:33'),
(1453, 2, 237, 1, 0, 1, 0, '2020-05-29 23:40:33'),
(1454, 2, 238, 1, 1, 1, 1, '2020-05-29 23:40:33'),
(1455, 2, 239, 1, 1, 1, 1, '2020-05-29 23:40:33'),
(1456, 2, 240, 1, 0, 0, 0, '2020-05-28 20:51:18'),
(1457, 2, 241, 1, 0, 0, 0, '2020-05-28 20:51:18'),
(1458, 1, 240, 1, 0, 0, 0, '2020-06-07 18:30:42'),
(1459, 1, 241, 1, 0, 0, 0, '2020-06-07 18:30:42'),
(1460, 1, 242, 1, 0, 0, 0, '2020-06-07 18:30:42'),
(1461, 2, 242, 1, 0, 0, 0, '2020-06-11 22:45:24'),
(1462, 3, 242, 1, 0, 0, 0, '2020-06-14 22:46:54'),
(1463, 6, 242, 1, 0, 0, 0, '2020-06-14 22:48:14'),
(1464, 1, 243, 1, 0, 0, 0, '2020-09-12 06:05:45'),
(1465, 1, 109, 1, 1, 0, 0, '2020-09-21 06:33:50'),
(1466, 1, 108, 1, 1, 1, 1, '2020-09-21 06:50:36'),
(1467, 1, 244, 1, 0, 0, 0, '2020-09-21 06:59:54'),
(1468, 1, 245, 1, 0, 0, 0, '2020-09-21 06:59:54'),
(1469, 1, 246, 1, 0, 0, 0, '2020-09-21 06:59:54'),
(1470, 1, 247, 1, 0, 0, 0, '2021-01-07 06:12:14'),
(1472, 2, 247, 1, 0, 0, 0, '2021-01-21 12:46:40'),
(1473, 1, 248, 1, 1, 1, 1, '2021-05-19 12:52:49'),
(1474, 1, 249, 1, 0, 0, 0, '2021-05-19 12:52:49'),
(1475, 2, 248, 1, 1, 1, 1, '2021-05-28 13:11:52'),
(1476, 3, 248, 1, 1, 1, 1, '2021-05-28 09:36:16'),
(1477, 3, 249, 1, 0, 0, 0, '2021-05-28 09:36:16'),
(1478, 6, 248, 1, 0, 0, 0, '2021-05-28 09:56:14'),
(1479, 6, 249, 1, 0, 0, 0, '2021-05-28 09:56:14'),
(1480, 2, 249, 1, 0, 0, 0, '2021-05-28 13:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(11) NOT NULL,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `route_pickup_point`
--

CREATE TABLE `route_pickup_point` (
  `id` int(11) NOT NULL,
  `transport_route_id` int(11) NOT NULL,
  `pickup_point_id` int(11) NOT NULL,
  `fees` float(10,2) DEFAULT 0.00,
  `destination_distance` float(10,1) DEFAULT 0.0,
  `pickup_time` time DEFAULT NULL,
  `order_number` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scholar_register`
--

CREATE TABLE `scholar_register` (
  `id` int(11) NOT NULL,
  `stdname` varchar(255) DEFAULT NULL,
  `mob` varchar(13) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `ceated` varchar(255) DEFAULT NULL,
  `std_profile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholar_register`
--

INSERT INTO `scholar_register` (`id`, `stdname`, `mob`, `email`, `username`, `password`, `class`, `ceated`, `std_profile`, `address`, `pincode`, `city`, `state`, `country`) VALUES
(1, 'Saloni Maurya', '9794911938', 'msaloni401@gmail.com', 'salonimaurya', '123456', 'Class 1', '28-10-2023 14:37 PM', NULL, '', NULL, NULL, NULL, NULL),
(2, 'Darshika Singh', '8776656409', 'darshika123@gmail.com', 'darshikasingh', '12345', 'Class 6', '28-10-2023 15:13 PM', NULL, '', NULL, NULL, NULL, NULL),
(3, 'Darshika Singh', '8776656400', 'vaishali12@gamil.com', 'darshikasingh', '12345', 'Class 6', '28-10-2023 15:14 PM', NULL, '', NULL, NULL, NULL, NULL),
(4, 'Reetesh Maurya', '87766564765', 'reetesh123@gmail.com', 'reeteshmaurya', '1234', 'Class 2', '30-10-2023 14:42 PM', NULL, '', NULL, NULL, NULL, NULL),
(5, 'Ankita Singh', '9756911976', 'ankita12@gmail.com', 'ankitasingh', '091', 'Class 1', '30-10-2023 14:47 PM', NULL, '', NULL, NULL, NULL, NULL),
(6, 'Geeta Maurya', '8776656432', 'geeta@gmail.com', '', 'vGkPYSTJ', 'Class 1', '02-11-2023 16:58 PM', NULL, '', NULL, NULL, NULL, NULL),
(7, 'Saloni Maurya', '8776656423', 'msaloni121@gmail.com', 'scholarSaloni Maurya', 'sXrQOJAK', '', '02-11-2023 18:49 PM', 'babyGirls.jpg', '', '243401', 'Gorakhpur', 'Uttar pardesh', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `school_houses`
--

CREATE TABLE `school_houses` (
  `id` int(11) NOT NULL,
  `house_name` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `school_houses`
--

INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES
(1, 'Yellow house', 'Yellow house : yellow house is a devoted for mata sarsvati.', 'yes'),
(2, 'Blue House', 'Blue House : A \"blue house\" refers to a house that is painted blue or has significant blue-colored elements', 'yes'),
(3, 'Red House', 'Red house : Red is often associated with passion, energy, and excitement. It can evoke strong emotions and a sense of urgency.', 'yes'),
(4, 'Green house', 'A green house in this context simply refers to a house that is painted green or has significant green-colored elements in its exterior or interior design. The color green is associated with nature, freshness, tranquility, and health.', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `sch_settings`
--

CREATE TABLE `sch_settings` (
  `id` int(11) NOT NULL,
  `base_url` varchar(500) DEFAULT NULL,
  `folder_path` text DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `biometric` int(11) DEFAULT 0,
  `biometric_device` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `languages` varchar(500) NOT NULL,
  `dise_code` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) NOT NULL,
  `time_format` varchar(255) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `is_rtl` varchar(10) DEFAULT 'disabled',
  `is_duplicate_fees_invoice` varchar(100) DEFAULT '0',
  `collect_back_date_fees` int(11) NOT NULL,
  `single_page_print` int(1) DEFAULT 0,
  `timezone` varchar(30) DEFAULT 'UTC',
  `session_id` int(11) DEFAULT NULL,
  `cron_secret_key` varchar(100) NOT NULL,
  `currency_place` varchar(50) NOT NULL DEFAULT 'before_number',
  `currency_format` varchar(20) DEFAULT NULL,
  `class_teacher` varchar(100) NOT NULL,
  `start_month` varchar(40) NOT NULL,
  `attendence_type` int(10) NOT NULL DEFAULT 0,
  `low_attendance_limit` float(10,2) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `admin_logo` varchar(255) NOT NULL,
  `admin_small_logo` varchar(255) NOT NULL,
  `admin_login_page_background` varchar(255) NOT NULL,
  `user_login_page_background` varchar(255) NOT NULL,
  `theme` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `fee_due_days` int(3) DEFAULT 0,
  `adm_auto_insert` int(1) NOT NULL DEFAULT 1,
  `adm_prefix` varchar(50) NOT NULL DEFAULT 'ssadm19/20',
  `adm_start_from` varchar(11) NOT NULL,
  `adm_no_digit` int(10) NOT NULL DEFAULT 6,
  `adm_update_status` int(11) NOT NULL DEFAULT 0,
  `staffid_auto_insert` int(11) NOT NULL DEFAULT 1,
  `staffid_prefix` varchar(100) NOT NULL DEFAULT 'staffss/19/20',
  `staffid_start_from` varchar(50) NOT NULL,
  `staffid_no_digit` int(11) NOT NULL DEFAULT 6,
  `staffid_update_status` int(11) NOT NULL DEFAULT 0,
  `is_active` varchar(255) DEFAULT 'no',
  `online_admission` int(1) DEFAULT 0,
  `online_admission_payment` varchar(50) NOT NULL,
  `online_admission_amount` float NOT NULL,
  `online_admission_instruction` text NOT NULL,
  `online_admission_conditions` text NOT NULL,
  `online_admission_application_form` varchar(255) DEFAULT NULL,
  `exam_result` int(11) NOT NULL,
  `is_blood_group` int(10) NOT NULL DEFAULT 1,
  `is_student_house` int(10) NOT NULL DEFAULT 1,
  `roll_no` int(11) NOT NULL DEFAULT 1,
  `category` int(11) NOT NULL,
  `religion` int(11) NOT NULL DEFAULT 1,
  `cast` int(11) NOT NULL DEFAULT 1,
  `mobile_no` int(11) NOT NULL DEFAULT 1,
  `student_email` int(11) NOT NULL DEFAULT 1,
  `admission_date` int(11) NOT NULL DEFAULT 1,
  `lastname` int(11) NOT NULL,
  `middlename` int(11) NOT NULL DEFAULT 1,
  `student_photo` int(11) NOT NULL DEFAULT 1,
  `student_height` int(11) NOT NULL DEFAULT 1,
  `student_weight` int(11) NOT NULL DEFAULT 1,
  `measurement_date` int(11) NOT NULL DEFAULT 1,
  `father_name` int(11) NOT NULL DEFAULT 1,
  `father_phone` int(11) NOT NULL DEFAULT 1,
  `father_occupation` int(11) NOT NULL DEFAULT 1,
  `father_pic` int(11) NOT NULL DEFAULT 1,
  `mother_name` int(11) NOT NULL DEFAULT 1,
  `mother_phone` int(11) NOT NULL DEFAULT 1,
  `mother_occupation` int(11) NOT NULL DEFAULT 1,
  `mother_pic` int(11) NOT NULL DEFAULT 1,
  `guardian_name` int(1) NOT NULL,
  `guardian_relation` int(11) NOT NULL DEFAULT 1,
  `guardian_phone` int(1) NOT NULL,
  `guardian_email` int(11) NOT NULL DEFAULT 1,
  `guardian_pic` int(11) NOT NULL DEFAULT 1,
  `guardian_occupation` int(1) NOT NULL,
  `guardian_address` int(11) NOT NULL DEFAULT 1,
  `current_address` int(11) NOT NULL DEFAULT 1,
  `permanent_address` int(11) NOT NULL DEFAULT 1,
  `route_list` int(11) NOT NULL DEFAULT 1,
  `hostel_id` int(11) NOT NULL DEFAULT 1,
  `bank_account_no` int(11) NOT NULL DEFAULT 1,
  `ifsc_code` int(1) NOT NULL,
  `bank_name` int(1) NOT NULL,
  `national_identification_no` int(11) NOT NULL DEFAULT 1,
  `local_identification_no` int(11) NOT NULL DEFAULT 1,
  `rte` int(11) NOT NULL DEFAULT 1,
  `previous_school_details` int(11) NOT NULL DEFAULT 1,
  `student_note` int(11) NOT NULL DEFAULT 1,
  `upload_documents` int(11) NOT NULL DEFAULT 1,
  `student_barcode` int(11) NOT NULL DEFAULT 1,
  `staff_designation` int(11) NOT NULL DEFAULT 1,
  `staff_department` int(11) NOT NULL DEFAULT 1,
  `staff_last_name` int(11) NOT NULL DEFAULT 1,
  `staff_father_name` int(11) NOT NULL DEFAULT 1,
  `staff_mother_name` int(11) NOT NULL DEFAULT 1,
  `staff_date_of_joining` int(11) NOT NULL DEFAULT 1,
  `staff_phone` int(11) NOT NULL DEFAULT 1,
  `staff_emergency_contact` int(11) NOT NULL DEFAULT 1,
  `staff_marital_status` int(11) NOT NULL DEFAULT 1,
  `staff_photo` int(11) NOT NULL DEFAULT 1,
  `staff_current_address` int(11) NOT NULL DEFAULT 1,
  `staff_permanent_address` int(11) NOT NULL DEFAULT 1,
  `staff_qualification` int(11) NOT NULL DEFAULT 1,
  `staff_work_experience` int(11) NOT NULL DEFAULT 1,
  `staff_note` int(11) NOT NULL DEFAULT 1,
  `staff_epf_no` int(11) NOT NULL DEFAULT 1,
  `staff_basic_salary` int(11) NOT NULL DEFAULT 1,
  `staff_contract_type` int(11) NOT NULL DEFAULT 1,
  `staff_work_shift` int(11) NOT NULL DEFAULT 1,
  `staff_work_location` int(11) NOT NULL DEFAULT 1,
  `staff_leaves` int(11) NOT NULL DEFAULT 1,
  `staff_account_details` int(11) NOT NULL DEFAULT 1,
  `staff_social_media` int(11) NOT NULL DEFAULT 1,
  `staff_upload_documents` int(11) NOT NULL DEFAULT 1,
  `staff_barcode` int(11) NOT NULL DEFAULT 1,
  `staff_notification_email` varchar(50) NOT NULL,
  `mobile_api_url` tinytext NOT NULL,
  `app_primary_color_code` varchar(20) DEFAULT NULL,
  `app_secondary_color_code` varchar(20) DEFAULT NULL,
  `admin_mobile_api_url` tinytext NOT NULL,
  `admin_app_primary_color_code` varchar(20) NOT NULL,
  `admin_app_secondary_color_code` varchar(20) NOT NULL,
  `app_logo` varchar(250) DEFAULT NULL,
  `student_profile_edit` int(1) NOT NULL DEFAULT 0,
  `start_week` varchar(10) NOT NULL,
  `my_question` int(1) NOT NULL,
  `superadmin_restriction` varchar(20) NOT NULL,
  `student_timeline` varchar(20) NOT NULL,
  `calendar_event_reminder` int(2) DEFAULT NULL,
  `event_reminder` varchar(20) NOT NULL,
  `student_login` varchar(100) DEFAULT NULL,
  `parent_login` varchar(100) DEFAULT NULL,
  `student_panel_login` int(1) NOT NULL DEFAULT 1,
  `parent_panel_login` int(1) NOT NULL DEFAULT 1,
  `is_student_feature_lock` int(1) NOT NULL DEFAULT 0,
  `maintenance_mode` int(1) NOT NULL DEFAULT 0,
  `lock_grace_period` int(10) NOT NULL DEFAULT 0,
  `is_offline_fee_payment` int(1) NOT NULL DEFAULT 0,
  `offline_bank_payment_instruction` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sch_settings`
--

INSERT INTO `sch_settings` (`id`, `base_url`, `folder_path`, `name`, `biometric`, `biometric_device`, `email`, `phone`, `address`, `lang_id`, `languages`, `dise_code`, `date_format`, `time_format`, `currency`, `currency_symbol`, `is_rtl`, `is_duplicate_fees_invoice`, `collect_back_date_fees`, `single_page_print`, `timezone`, `session_id`, `cron_secret_key`, `currency_place`, `currency_format`, `class_teacher`, `start_month`, `attendence_type`, `low_attendance_limit`, `image`, `admin_logo`, `admin_small_logo`, `admin_login_page_background`, `user_login_page_background`, `theme`, `fee_due_days`, `adm_auto_insert`, `adm_prefix`, `adm_start_from`, `adm_no_digit`, `adm_update_status`, `staffid_auto_insert`, `staffid_prefix`, `staffid_start_from`, `staffid_no_digit`, `staffid_update_status`, `is_active`, `online_admission`, `online_admission_payment`, `online_admission_amount`, `online_admission_instruction`, `online_admission_conditions`, `online_admission_application_form`, `exam_result`, `is_blood_group`, `is_student_house`, `roll_no`, `category`, `religion`, `cast`, `mobile_no`, `student_email`, `admission_date`, `lastname`, `middlename`, `student_photo`, `student_height`, `student_weight`, `measurement_date`, `father_name`, `father_phone`, `father_occupation`, `father_pic`, `mother_name`, `mother_phone`, `mother_occupation`, `mother_pic`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_email`, `guardian_pic`, `guardian_occupation`, `guardian_address`, `current_address`, `permanent_address`, `route_list`, `hostel_id`, `bank_account_no`, `ifsc_code`, `bank_name`, `national_identification_no`, `local_identification_no`, `rte`, `previous_school_details`, `student_note`, `upload_documents`, `student_barcode`, `staff_designation`, `staff_department`, `staff_last_name`, `staff_father_name`, `staff_mother_name`, `staff_date_of_joining`, `staff_phone`, `staff_emergency_contact`, `staff_marital_status`, `staff_photo`, `staff_current_address`, `staff_permanent_address`, `staff_qualification`, `staff_work_experience`, `staff_note`, `staff_epf_no`, `staff_basic_salary`, `staff_contract_type`, `staff_work_shift`, `staff_work_location`, `staff_leaves`, `staff_account_details`, `staff_social_media`, `staff_upload_documents`, `staff_barcode`, `staff_notification_email`, `mobile_api_url`, `app_primary_color_code`, `app_secondary_color_code`, `admin_mobile_api_url`, `admin_app_primary_color_code`, `admin_app_secondary_color_code`, `app_logo`, `student_profile_edit`, `start_week`, `my_question`, `superadmin_restriction`, `student_timeline`, `calendar_event_reminder`, `event_reminder`, `student_login`, `parent_login`, `student_panel_login`, `parent_panel_login`, `is_student_feature_lock`, `maintenance_mode`, `lock_grace_period`, `is_offline_fee_payment`, `offline_bank_payment_instruction`, `created_at`, `updated_at`) VALUES
(1, 'http://localhost/matribhumi/', 'C:/xampp/htdocs/matribhumi/', 'Matr Bhumi', 0, '', 'matrbhumi123@domain.com', '9798699543', 'ABCD Mumbai, Bharat', 4, '[\"4\",\"82\"]', '8554', 'd/m/Y', '12-hour', '68', '$', 'disabled', '0', 0, 0, 'UTC', 18, '9V3mdS9oWpkBDlBXEHtqya3ps', 'after_number', '####.##', 'no', '10', 0, 0.00, '1697270935-1341355054652a4c97af2fc!school logo.jpg', '1697437851-7153219652cd89b5c85d!school_logo-removebg-preview.png', '1697438411-1837601693652cdacb97cbd!book2.jpg', '1697282581-2040511581652a7a157825d!WhatsApp Image 2023-10-14 at 16.06.07.jpeg', '1697440339-183686329652ce25349a4f!IMG_20231016_123846.jpg', 'blue.jpg', 60, 0, '', '', 5, 1, 0, '', '', 4, 1, 'no', 0, '', 0, '', '<p>&nbsp;Please enter your institution online admission terms & conditions here.</p>', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', 'https://eschool.mydemos.in/api/', '#424242', '#eeeeee', '', '', '', '1697265078-1491169869652a35b6c8847!school_logo-removebg-preview.png', 1, 'Monday', 1, 'enabled', 'disabled', 1, 'enabled', '[\"admission_no\"]', '[\"email\"]', 1, 1, 1, 0, 7, 0, '', '2023-10-16 07:12:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `section` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'A', 'no', '2022-01-22 11:03:38', NULL),
(2, 'B', 'no', '2022-01-22 11:03:40', NULL),
(3, 'C', 'no', '2022-01-22 11:03:41', NULL),
(4, 'D', 'no', '2022-01-22 11:03:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `send_notification`
--

CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attachment` varchar(500) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `visible_student` varchar(10) NOT NULL DEFAULT 'no',
  `visible_staff` varchar(10) NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) NOT NULL DEFAULT 'no',
  `created_by` varchar(60) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `send_notification`
--

INSERT INTO `send_notification` (`id`, `title`, `publish_date`, `date`, `attachment`, `message`, `visible_student`, `visible_staff`, `visible_parent`, `created_by`, `created_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'NEW EVENT', '2023-10-20', '2023-10-17', '1697535041-1011052947652e5441bab09!student.txt', '<p>\r\n\r\nOrganizing a new event involves several key steps and considerations. Whether you are planning a small gathering, a corporate event, a conference, or a community festival, here\'s a general outline to help you get started with event organization\r\n\r\n<br></p>', 'Yes', 'Yes', 'Yes', 'Super Admin', 1, 'no', '2023-10-17 09:30:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `session` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES
(7, '2016-17', 'no', '2017-04-20 06:42:19', '0000-00-00'),
(11, '2017-18', 'no', '2017-04-20 06:41:37', '0000-00-00'),
(13, '2018-19', 'no', '2016-08-24 19:26:44', '0000-00-00'),
(14, '2019-20', 'no', '2016-08-24 19:26:55', '0000-00-00'),
(15, '2020-21', 'no', '2016-10-01 05:28:08', '0000-00-00'),
(16, '2021-22', 'no', '2016-10-01 05:28:20', '0000-00-00'),
(18, '2022-23', 'no', '2016-10-01 05:29:02', '0000-00-00'),
(19, '2023-24', 'no', '2016-10-01 05:29:10', '0000-00-00'),
(20, '2024-25', 'no', '2016-10-01 05:29:18', '0000-00-00'),
(21, '2025-26', 'no', '2016-10-01 05:30:10', '0000-00-00'),
(22, '2026-27', 'no', '2016-10-01 05:30:18', '0000-00-00'),
(23, '2027-28', 'no', '2016-10-01 05:30:24', '0000-00-00'),
(24, '2028-29', 'no', '2016-10-01 05:30:30', '0000-00-00'),
(25, '2029-30', 'no', '2016-10-01 05:30:37', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `share_contents`
--

CREATE TABLE `share_contents` (
  `id` int(11) NOT NULL,
  `send_to` varchar(50) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `share_date` date DEFAULT NULL,
  `valid_upto` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `share_content_for`
--

CREATE TABLE `share_content_for` (
  `id` int(11) NOT NULL,
  `group_id` varchar(20) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `user_parent_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `share_content_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `share_upload_contents`
--

CREATE TABLE `share_upload_contents` (
  `id` int(11) NOT NULL,
  `upload_content_id` int(11) DEFAULT NULL,
  `share_content_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_menus`
--

CREATE TABLE `sidebar_menus` (
  `id` int(11) NOT NULL,
  `permission_group_id` int(10) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `menu` varchar(500) DEFAULT NULL,
  `activate_menu` varchar(100) DEFAULT NULL,
  `lang_key` varchar(250) NOT NULL,
  `system_level` int(3) DEFAULT 0,
  `level` int(5) DEFAULT NULL,
  `sidebar_display` int(1) DEFAULT 0,
  `access_permissions` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sidebar_menus`
--

INSERT INTO `sidebar_menus` (`id`, `permission_group_id`, `icon`, `menu`, `activate_menu`, `lang_key`, `system_level`, `level`, `sidebar_display`, `access_permissions`, `is_active`, `created_at`) VALUES
(1, 17, 'fa fa-ioxhost ftlayer', 'Front Office', 'front_office', 'front_office', 10, 1, 1, '(\'admission_enquiry\', \'can_view\') || (\'visitor_book\', \'can_view\') ||       (\'phon_call_log\', \'can_view\') ||  (\'postal_dispatch\', \'can_view\') ||       (\'postal_receive\', \'can_view\') || (\'complaint\', \'can_view\') ||(\'setup_font_office\', \'can_view\')', 1, '2023-01-10 12:49:51'),
(2, 1, 'fa fa-user-plus ftlayer', 'Student Information', 'student_information', 'student_information', 20, 2, 1, '(\'student\', \'can_view\') || (\'student\', \'can_add\') || (\'student_history\', \'can_view\') || (\'student_categories\', \'can_view\') || (\'student_houses\', \'can_view\') || (\'disable_student\', \'can_view\') || (\'disable_reason\', \'can_view\') || (\'online_admission\', \'can_view\') || (\'multiclass_student\', \'can_view\') || (\'disable_reason\', \'can_view\')', 1, '2023-01-10 12:49:51'),
(3, 2, 'fa fa-money ftlayer', 'Fees Collection', 'fees_collection', 'fees_collection', 30, 3, 1, '(\'collect_fees\', \'can_view\') || (\'search_fees_payment\', \'can_view\') || (\'search_due_fees\', \'can_view\') || (\'fees_statement\', \'can_view\') || (\'fees_carry_forward\', \'can_view\') || (\'fees_master\', \'can_view\') || (\'fees_group\', \'can_view\') || (\'fees_type\', \'can_view\') || (\'fees_discount\', \'can_view\') || (\'accountants\', \'can_view\')', 1, '2023-01-10 12:49:51'),
(4, 3, 'fa fa-usd ftlayer', 'Income', 'income', 'income', 40, 10, 1, '(\'income\', \'can_view\') || (\'search_income\', \'can_view\') || (\'income_head\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(7, 4, 'fa fa-credit-card ftlayer', 'Expense', 'expense', 'expenses', 50, 11, 1, '(\'expense\', \'can_view\') || (\'search_expense\', \'can_view\') || (\'expense_head\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(10, 5, 'fa fa-calendar-check-o ftlayer', 'Attendance', 'attendance', 'attendance', 60, 13, 1, '(\'student_attendance\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(11, 6, 'fa fa-map-o ftlayer', 'Examinations', 'examinations', 'examinations', 70, 12, 1, '(\'exam_group\', \'can_view\') || (\'exam_result\', \'can_view\') || (\'design_admit_card\', \'can_view\') || (\'print_admit_card\', \'can_view\') || (\'design_marksheet\', \'can_view\') || (\'print_marksheet\', \'can_view\') || (\'marks_grade\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(12, 23, 'fa fa-rss ftlayer', 'Online Examinations', 'online_examinations', 'online_examinations', 80, 14, 1, '(\'online_examination\', \'can_view\') ||  (\'question_bank\', \'can_view\'', 1, '2023-01-10 12:49:37'),
(13, 29, 'fa fa-list-alt ftlayer', 'Lesson Plan', 'lesson_plan', 'lesson_plan', 90, 16, 1, '(\'manage_lesson_plan\', \'can_view\') || (\'manage_syllabus_status\', \'can_view\') || (\'lesson\', \'can_view\') ||  (\'topic\', \'can_view\')||  (\'copy_old_lesson\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(14, 7, 'fa fa-mortar-board ftlayer', 'Academics', 'academics', 'academics', 100, 15, 1, '(\'class_timetable\', \'can_view\') || (\'teachers_timetable\', \'can_view\') || (\'assign_class_teacher\', \'can_view\') || (\'promote_student\', \'can_view\') || (\'subject_group\', \'can_view\') || (\'section\', \'can_view\') || (\'subject\', \'can_view\') || (\'class\', \'can_view\') || (\'section\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(15, 18, 'fa fa-sitemap ftlayer', 'Human Resource', 'human_resource', 'human_resource', 110, 17, 1, '(\'staff\', \'can_view\') || (\'approve_leave_request\', \'can_view\') || (\'apply_leave\', \'can_view\') || (\'leave_types\', \'can_view\') || (\'teachers_rating\', \'can_view\') || (\'department\', \'can_view\') || (\'designation\', \'can_view\') || (\'disable_staff\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(16, 13, 'fa fa-bullhorn ftlayer', 'Communicate', 'communicate', 'communicate', 120, 18, 1, '(\'notice_board\', \'can_view\') || (\'email\', \'can_view\') || (\'sms\', \'can_view\') || (\'email_sms_log\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(17, 8, 'fa fa-download ftlayer', 'Download Center', 'download_center', 'download_center', 130, 19, 1, '(\'upload_content\', \'can_view\') || (\'video_tutorial\', \'can_view\') || (\'content_type\', \'can_view\') || (\'content_share_list\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(18, 19, 'fa fa-flask ftlayer', 'Homework', 'homework', 'homework', 140, 20, 1, '(\'homework\', \'can_view\') || (\'homework\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(19, 9, 'fa fa-book ftlayer', 'Library', 'library', 'library', 150, 21, 1, '(\'books\', \'can_view\') || (\'issue_return\', \'can_view\') || (\'add_staff_member\', \'can_view\') || (\'add_student\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(20, 10, 'fa fa-object-group ftlayer', 'Inventory', 'inventory', 'inventory', 160, 22, 1, '(\'issue_item\', \'can_view\') || (\'item_stock\', \'can_view\') || (\'item\', \'can_view\') || (\'item_category\', \'can_view\') || (\'item_category\', \'can_view\') || (\'store\', \'can_view\') || (\'supplier\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(21, 11, 'fa fa-bus ftlayer', 'Transport', 'transport', 'transport', 170, 23, 1, '(\'routes\', \'can_view\') || (\'vehicle\', \'can_view\') || (\'assign_vehicle\', \'can_view\') || (\'transport_fees_master\', \'can_view\') || (\'pickup_point\', \'can_view\') || (\'route_pickup_point\', \'can_view\') || (\'student_transport_fees\', \'can_view\')      ', 1, '2023-01-10 12:49:37'),
(22, 12, 'fa fa-building-o ftlayer', 'Hostel', 'hostel', 'hostel', 180, 24, 1, '(\'hostel_rooms\', \'can_view\') || (\'room_type\', \'can_view\') || (\'hostel\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(23, 20, 'fa fa-newspaper-o ftlayer', 'Certificate', 'certificate', 'certificate', 190, 25, 1, '(\'student_certificate\', \'can_view\') || (\'generate_certificate\', \'can_view\') || (\'student_id_card\', \'can_view\') || (\'generate_id_card\', \'can_view\') || (\'staff_id_card\', \'can_view\') || (\'generate_staff_id_card\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(24, 16, 'fa fa-empire ftlayer', 'Front CMS', 'front_cms', 'front_cms', 200, 26, 1, '(\'event\', \'can_view\') || (\'gallery\', \'can_view\') || (\'notice\', \'can_view\') || (\'media_manager\', \'can_view\') || (\'pages\', \'can_view\') || (\'menus\', \'can_view\') || (\'banner_images\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(25, 28, 'fa fa-universal-access ftlayer', 'Alumni', 'alumni', 'alumni', 210, 27, 1, '(\'manage_alumni\', \'can_view\') || (\'events\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(26, 14, 'fa fa-line-chart ftlayer', 'Reports', 'reports', 'reports', 220, 28, 1, '(\'student_report\', \'can_view\') || (\'guardian_report\', \'can_view\') || (\'student_history\', \'can_view\') || (\'student_login_credential_report\', \'can_view\') || (\'class_subject_report\', \'can_view\') || (\'admission_report\', \'can_view\') || (\'sibling_report\', \'can_view\') || (\'evaluation_report\', \'can_view\') || (\'student_profile\', \'can_view\') || (\'fees_statement\', \'can_view\') || (\'balance_fees_report\', \'can_view\') || (\'fees_collection_report\', \'can_view\') || (\'online_fees_collection_report\', \'can_view\') || (\'income_report\', \'can_view\') || (\'expense_report\', \'can_view\') || (\'payroll_report\', \'can_view\') || (\'income_group_report\', \'can_view\') || (\'expense_group_report\', \'can_view\') || (\'attendance_report\', \'can_view\') || (\'staff_attendance_report\', \'can_view\') || (\'exam_marks_report\', \'can_view\') ||        (\'online_exam_wise_report\', \'can_view\') || (\'online_exams_report\', \'can_view\') || (\'online_exams_attempt_report\', \'can_view\') || (\'online_exams_rank_report\', \'can_view\') || (\'payroll_report\', \'can_view\') || (\'transport_report\', \'can_view\') || (\'hostel_report\', \'can_view\') || (\'audit_trail_report\', \'can_view\') || (\'user_log\', \'can_view\') || (\'book_issue_report\', \'can_view\') || (\'book_due_report\', \'can_view\') || (\'book_inventory_report\', \'can_view\') || (\'stock_report\', \'can_view\') ||      (\'add_item_report\', \'can_view\') || (\'issue_inventory_report\', \'can_view\') || (\'syllabus_status_report\', \'can_view\') ||    (\'teacher_syllabus_status_report\', \'can_view\') || (\'daily_collection_report\', \'can_view\') || (\'balance_fees_statement\', \'can_view\') || (\'balance_fees_report_with_remark\', \'can_view\')', 1, '2023-01-10 12:49:37'),
(27, 15, 'fa fa-gears ftlayer', 'System Settings', 'system_settings', 'system_setting', 230, 29, 1, '(\'general_setting\', \'can_view\') || (\'session_setting\', \'can_view\') || (\'notification_setting\', \'can_view\') || (\'sms_setting\', \'can_view\') || (\'email_setting\', \'can_view\') || (\'payment_methods\', \'can_view\') || (\'languages\', \'can_view\') || (\'user_status\', \'can_view\') || (\'backup_restore\', \'can_view\') || (\'print_header_footer\', \'can_view\') || (\'backup\', \'can_view\') || (\'front_cms_setting\', \'can_view\') || (\'custom_fields\', \'can_view\') || (\'system_fields\', \'can_view\') || (\'student_profile_update\', \'can_view\') || (\'currency\', \'can_view\') || (\'language_switcher\', \'can_view\') || (\'sidebar_menu\', \'can_view\') || (\'online_admission\', \'can_view\')\r\n', 1, '2023-01-10 12:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_sub_menus`
--

CREATE TABLE `sidebar_sub_menus` (
  `id` int(11) NOT NULL,
  `sidebar_menu_id` int(10) DEFAULT NULL,
  `menu` varchar(500) DEFAULT NULL,
  `key` varchar(500) DEFAULT NULL,
  `lang_key` varchar(250) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `level` int(5) DEFAULT NULL,
  `access_permissions` varchar(500) DEFAULT NULL,
  `permission_group_id` int(11) DEFAULT NULL,
  `activate_controller` varchar(100) DEFAULT NULL COMMENT 'income',
  `activate_methods` varchar(500) DEFAULT NULL COMMENT 'index,edit',
  `addon_permission` varchar(100) DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sidebar_sub_menus`
--

INSERT INTO `sidebar_sub_menus` (`id`, `sidebar_menu_id`, `menu`, `key`, `lang_key`, `url`, `level`, `access_permissions`, `permission_group_id`, `activate_controller`, `activate_methods`, `addon_permission`, `is_active`, `created_at`) VALUES
(1, 1, 'admission_enquiry', NULL, 'admission_enquiry', 'admin/enquiry', 1, '(\'admission_enquiry\', \'can_view\')', NULL, 'enquiry', 'index', NULL, 1, '2022-07-11 12:04:46'),
(2, 1, 'visitor_book', NULL, 'visitor_book', 'admin/visitors', 2, '(\'visitor_book\', \'can_view\')', NULL, 'visitors', 'index', NULL, 1, '2022-07-11 12:04:46'),
(3, 1, 'phone_call_log', NULL, 'phone_call_log', 'admin/generalcall', 3, '(\'phone_call_log\', \'can_view\')', NULL, 'generalcall', 'index,edit', NULL, 1, '2022-05-10 11:40:07'),
(4, 1, 'postal_dispatch', NULL, 'postal_dispatch', 'admin/dispatch', 4, '(\'postal_dispatch\', \'can_view\')', NULL, 'dispatch', 'index,editdispatch', NULL, 1, '2022-05-10 11:40:09'),
(5, 1, 'postal_receive', NULL, 'postal_receive', 'admin/receive', 5, '(\'postal_receive\', \'can_view\')', NULL, 'receive', 'index,editreceive', NULL, 1, '2022-05-10 11:40:09'),
(6, 1, 'complain', NULL, 'complain', 'admin/complaint', 6, '(\'complaint\', \'can_view\')', NULL, 'complaint', 'index,edit', NULL, 1, '2022-05-10 11:40:00'),
(7, 1, 'setup_front_office', NULL, 'setup_front_office', 'admin/visitorspurpose', 7, '(\'setup_font_office\', \'can_view\')', NULL, 'visitorspurpose', 'index,edit', NULL, 1, '2022-04-18 15:43:15'),
(9, 2, 'student_admission', NULL, 'student_admission', 'student/create', 2, '(\'student\', \'can_add\')', NULL, 'student', 'create,import', NULL, 1, '2022-08-30 07:51:02'),
(10, 2, 'online_admission', NULL, 'online_admission', 'admin/onlinestudent', 3, '(\'online_admission\', \'can_view\')', 27, 'onlinestudent', 'index,edit', NULL, 1, '2022-05-10 11:40:30'),
(11, 2, 'disable_student', NULL, 'disabled_students', 'student/disablestudentslist', 4, '(\'disable_student\', \'can_view\')', NULL, 'student', 'disablestudentslist', '', 1, '2022-07-23 06:49:00'),
(12, 3, 'collect_fees', NULL, 'collect_fees', 'studentfee', 1, '(\'collect_fees\', \'can_view\')', NULL, 'studentfee', 'index,addfee', NULL, 1, '2022-07-23 06:53:34'),
(13, 3, 'search_fees_payment', NULL, 'search_fees_payment', 'studentfee/searchpayment', 3, '(\'search_fees_payment\', \'can_view\')', NULL, 'studentfee', 'searchpayment', NULL, 1, '2022-08-08 06:03:40'),
(14, 3, 'search_due_fees', NULL, 'search_due_fees', 'studentfee/feesearch', 4, '(\'search_due_fees\', \'can_view\')', NULL, 'studentfee', 'feesearch', NULL, 1, '2022-08-08 06:03:38'),
(15, 3, 'fees_master', NULL, 'fees_master', 'admin/feemaster', 5, '(\'fees_master\', \'can_view\')', NULL, 'feemaster', 'index,assign,edit', NULL, 1, '2022-09-24 07:35:55'),
(16, 3, 'fees_group', NULL, 'fees_group', 'admin/feegroup', 6, '(\'fees_group\', \'can_view\')', NULL, 'feegroup', 'index,edit', NULL, 1, '2022-08-08 06:03:32'),
(17, 4, 'add_income', NULL, 'add_income', 'admin/income', 1, '(\'income\', \'can_view\')', NULL, 'income', 'index,edit', NULL, 1, '2022-07-23 07:03:40'),
(18, 4, 'search_income', NULL, 'search_income', 'admin/income/incomesearch', 2, '(\'search_income\', \'can_view\')', NULL, 'income', 'incomesearch', NULL, 1, '2022-07-23 07:10:13'),
(19, 4, 'income_head', NULL, 'income_head', 'admin/incomehead', 3, '(\'income_head\', \'can_view\')', NULL, 'incomehead', 'index,edit', NULL, 1, '2022-07-23 07:11:11'),
(20, 2, 'student_details', NULL, 'student_details', 'student/search', 1, '(\'student\', \'can_view\')', NULL, 'student', 'search,view,edit', NULL, 1, '2022-08-30 07:51:05'),
(21, 2, 'multi_class_student', NULL, 'multi_class_student', 'student/multiclass', 5, '(\'multi_class_student\', \'can_view\')', 26, 'student', 'multiclass', NULL, 1, '2022-07-23 06:48:37'),
(22, 2, 'bulk_delete', NULL, 'bulk_delete', 'student/bulkdelete', 6, '(\'student\', \'can_delete\')', NULL, 'student', 'bulkdelete', NULL, 1, '2022-07-23 06:48:11'),
(23, 2, 'student_categories', NULL, 'student_categories', 'category', 7, '(\'student_categories\', \'can_view\')', NULL, 'category', 'index,edit', NULL, 1, '2022-07-23 06:47:24'),
(24, 2, 'student_house', NULL, 'student_house', 'admin/schoolhouse', 8, '(\'student_houses\', \'can_view\')', NULL, 'schoolhouse', 'index,edit', NULL, 1, '2022-07-23 06:49:59'),
(25, 2, 'disable_reason', NULL, 'disable_reason', 'admin/disable_reason', 9, '(\'disable_reason\', \'can_view\')', NULL, 'disable_reason', 'index,edit', NULL, 1, '2022-07-23 06:50:41'),
(29, 7, 'add_expense', NULL, 'add_expense', 'admin/expense', 1, '(\'expense\', \'can_view\')', NULL, 'expense', 'index,edit', '', 1, '2022-07-23 07:12:25'),
(32, 3, 'fees_type', NULL, 'fees_type', 'admin/feetype', 7, '(\'fees_type\', \'can_view\')', NULL, 'feetype', 'index,edit', '', 1, '2022-08-08 06:03:29'),
(33, 10, 'attendance_by_date', 'attendance_by_date', 'attendance_by_date', 'admin/stuattendence/attendencereport', 3, '(\'attendance_by_date\', \'can_view\')', NULL, 'stuattendence', 'attendencereport', '', 1, '2022-10-20 05:50:25'),
(34, 10, 'student_attendance', 'student_attendance', 'student_attendance', 'admin/stuattendence', 1, '(\'student_attendance\', \'can_view\')', NULL, 'stuattendence', 'index', '', 1, '2022-10-20 05:50:25'),
(35, 10, 'approve_leave', 'approve_leave', 'approve_leave', 'admin/approve_leave', 2, '(\'approve_leave\', \'can_view\')', NULL, 'approve_leave', 'index', '', 1, '2022-10-14 16:16:44'),
(36, 11, 'exam_group', NULL, 'exam_group', 'admin/examgroup', 1, '(\'exam_group\', \'can_view\')', NULL, 'examgroup', 'index,addexam,edit', '', 1, '2022-07-23 07:23:01'),
(37, 11, 'exam_schedule', NULL, 'exam_schedule', 'admin/exam_schedule', 2, '(\'student_attendance\', \'can_view\')', NULL, 'exam_schedule', 'index', '', 1, '2022-05-16 07:01:34'),
(38, 11, 'exam_result', NULL, 'exam_result', 'admin/examresult', 3, '(\'exam_result\', \'can_view\')', NULL, 'examresult', 'index', '', 1, '2022-05-16 07:01:34'),
(39, 11, 'design_admit_card', NULL, 'design_admit_card', 'admin/admitcard', 4, '(\'design_admit_card\', \'can_view\')', NULL, 'admitcard', 'index,edit', '', 1, '2022-07-23 07:28:02'),
(40, 11, 'print_admit_card', NULL, 'print_admit_card', 'admin/examresult/admitcard', 5, '(\'print_admit_card\', \'can_view\')', NULL, 'examresult', 'admitcard', '', 1, '2022-05-16 07:01:34'),
(41, 11, 'design_marksheet', NULL, 'design_marksheet', 'admin/marksheet', 6, '(\'design_marksheet\', \'can_view\')', NULL, 'marksheet', 'index,edit', '', 1, '2022-07-23 07:35:35'),
(42, 11, 'print_marksheet', NULL, 'print_marksheet', 'admin/examresult/marksheet', 7, '(\'print_marksheet\', \'can_view\')', NULL, 'examresult', 'marksheet', '', 1, '2022-05-16 07:01:38'),
(43, 11, 'marks_grade', NULL, 'marks_grade', 'admin/grade', 8, '(\'marks_grade\', \'can_view\')', NULL, 'grade', 'index,edit', '', 1, '2022-07-23 07:37:15'),
(44, 11, 'marks_division', NULL, 'marks_division', 'admin/marksdivision', 9, '(\'marks_division\', \'can_view\')', NULL, 'marksdivision', 'index,edit', '', 1, '2022-08-25 06:04:26'),
(45, 12, 'online_exam', NULL, 'online_exam', 'admin/onlineexam', 1, '(\'online_examination\', \'can_view\')', NULL, 'onlineexam', 'index,evalution,assign', '', 1, '2022-08-30 13:03:45'),
(46, 12, 'question_bank', NULL, 'question_bank', 'admin/question', 1, '(\'question_bank\', \'can_view\')', NULL, 'question', 'index,read', '', 1, '2022-08-30 11:03:13'),
(47, 13, 'manage_lesson_plan', NULL, 'manage_lesson_plan', 'admin/syllabus', 2, '(\'manage_lesson_plan\', \'can_view\')', NULL, 'syllabus', 'index', '', 1, '2022-09-03 16:59:31'),
(48, 13, 'manage_syllabus_status', NULL, 'manage_syllabus_status', 'admin/syllabus/status', 3, '(\'manage_syllabus_status\', \'can_view\')', NULL, 'syllabus', 'status', '', 1, '2022-09-03 16:59:35'),
(49, 13, 'lesson', NULL, 'lesson', 'admin/lessonplan/lesson', 4, '(\'lesson\', \'can_view\')', NULL, 'lessonplan', 'lesson,editlesson', '', 1, '2022-09-15 11:30:55'),
(50, 13, 'topic', NULL, 'topic', 'admin/lessonplan/topic', 5, '(\'topic\', \'can_view\')', NULL, 'lessonplan', 'topic,edittopic', '', 1, '2022-09-15 11:30:24'),
(51, 14, 'class_timetable', NULL, 'class_timetable', 'admin/timetable/classreport', 1, '(\'class_timetable\', \'can_view\')', NULL, 'timetable', 'classreport,create', '', 1, '2022-07-23 09:01:22'),
(52, 14, 'teachers_timetable', NULL, 'teachers_timetable', 'admin/timetable/mytimetable', 2, '(\'teachers_time_table\', \'can_view\')', NULL, 'timetable', 'mytimetable', '', 1, '2022-07-20 12:22:59'),
(53, 14, 'assign_class_teacher', NULL, 'assign_class_teacher', 'admin/teacher/assign_class_teacher', 3, '(\'assign_class_teacher\', \'can_view\')', NULL, 'teacher', 'assign_class_teacher,update_class_teacher', '', 1, '2022-07-23 09:00:19'),
(54, 14, 'promote_students', NULL, 'promote_students', 'admin/stdtransfer', 4, '(\'promote_student\', \'can_view\')', NULL, 'stdtransfer', 'index', '', 1, '2022-07-20 12:22:54'),
(55, 14, 'subject_group', NULL, 'subject_group', 'admin/subjectgroup', 5, '(\'subject_group\', \'can_view\')', NULL, 'subjectgroup', 'index,edit', '', 1, '2022-07-23 08:59:42'),
(56, 14, 'subjects', NULL, 'subjects', 'admin/subject', 6, '(\'subject\', \'can_view\')', NULL, 'subject', 'index,edit', '', 1, '2022-07-23 08:59:20'),
(57, 14, 'class', NULL, 'class', 'classes', 7, '(\'class\', \'can_view\')', NULL, 'classes', 'index,edit', '', 1, '2022-07-23 08:58:49'),
(58, 14, 'sections', NULL, 'sections', 'sections', 8, '(\'section\', \'can_view\')', NULL, 'sections', 'index,edit', '', 1, '2022-07-23 08:58:21'),
(59, 15, 'staff_directory', NULL, 'staff_directory', 'admin/staff', 1, '(\'staff\', \'can_view\')', NULL, 'staff', 'index,edit,profile,create', '', 1, '2022-10-12 09:13:24'),
(60, 15, 'staff_attendance', NULL, 'staff_attendance', 'admin/staffattendance', 1, '(\'staff_attendance\', \'can_view\')', NULL, 'staffattendance', 'index', '', 1, '2022-09-07 12:04:15'),
(61, 15, 'payroll', NULL, 'payroll', 'admin/payroll', 1, '(\'staff_payroll\', \'can_view\')', NULL, 'payroll', 'index,edit,create', '', 1, '2022-08-16 11:58:44'),
(62, 15, 'approve_leave_request', NULL, 'approve_leave_request', 'admin/leaverequest/leaverequest', 1, '(\'approve_leave_request\', \'can_view\')', NULL, 'leaverequest', 'leaverequest', '', 1, '2022-05-16 09:04:33'),
(74, 15, 'apply_leave', NULL, 'apply_leave', 'admin/staff/leaverequest', 1, '(\'apply_leave\', \'can_view\')', NULL, 'staff', 'leaverequest', '', 1, '2022-05-16 09:11:41'),
(75, 15, 'leave_type', NULL, 'leave_type', 'admin/leavetypes', 1, '(\'leave_types\', \'can_view\')', NULL, 'leavetypes', 'index,leaveedit,createleavetype', '', 1, '2022-10-18 11:19:22'),
(76, 15, 'teachers_rating', NULL, 'teachers_rating', 'admin/staff/rating', 1, '(\'teachers_rating\', \'can_view\')', NULL, 'staff', 'rating', '', 1, '2022-05-16 09:15:31'),
(77, 15, 'department', NULL, 'department', 'admin/department/department', 1, '(\'department\', \'can_view\')', NULL, 'department', 'department,departmentedit', '', 1, '2022-07-23 09:14:20'),
(78, 15, 'designation', NULL, 'designation', 'admin/designation/designation', 1, '(\'designation\', \'can_view\')', NULL, 'designation', 'designation,designationedit', '', 1, '2022-07-23 09:15:04'),
(79, 15, 'disabled_staff', NULL, 'disabled_staff', 'admin/staff/disablestafflist', 1, '(\'disable_staff\', \'can_view\')', NULL, 'staff', 'disablestafflist', '', 1, '2022-09-13 07:46:56'),
(80, 16, 'notice_board', NULL, 'notice_board', 'admin/notification', 1, '(\'notice_board\', \'can_view\')', NULL, 'notification', 'index,edit,add', '', 1, '2022-07-23 09:17:24'),
(81, 16, 'send_email', NULL, 'send_email', 'admin/mailsms/compose', 2, '(\'email\', \'can_view\')', NULL, 'mailsms', 'compose', '', 1, '2022-09-02 16:52:46'),
(82, 16, 'send_sms', NULL, 'send_sms', 'admin/mailsms/compose_sms', 3, '(\'sms\', \'can_view\')', NULL, 'mailsms', 'compose_sms', '', 1, '2022-09-02 16:52:46'),
(83, 16, 'email_sms_log', NULL, 'email_sms_log', 'admin/mailsms/index', 4, '(\'email_sms_log\', \'can_view\')', NULL, 'mailsms', 'index', '', 1, '2022-09-02 16:52:50'),
(84, 16, 'schedule_email_sms_log', NULL, 'schedule_email_sms_log', 'admin/mailsms/schedule', 5, '(\'schedule_email_sms_log\', \'can_view\')', NULL, 'mailsms', 'schedule,edit_schedule', '', 1, '2022-09-13 07:07:38'),
(85, 16, 'login_credentials_send', NULL, 'login_credentials_send', 'student/bulkmail', 6, '(\'login_credentials_send\', \'can_view\')', NULL, 'student', 'bulkmail', '', 1, '2022-09-02 16:52:46'),
(86, 16, 'email_template', NULL, 'email_template', 'admin/mailsms/email_template', 7, '(\'email_template\', \'can_view\')', NULL, 'mailsms', 'email_template', '', 1, '2022-09-02 16:52:46'),
(87, 16, 'sms_template', NULL, 'sms_template', 'admin/mailsms/sms_template', 8, '(\'sms_template\', \'can_view\')', NULL, 'mailsms', 'sms_template', '', 1, '2022-09-02 16:52:46'),
(88, 17, 'content_type', NULL, 'content_type', 'admin/contenttype', 1, '(\'content_type\', \'can_view\')', NULL, 'contenttype', 'index,edit', '', 1, '2022-07-23 09:24:45'),
(89, 17, 'content_share_list', NULL, 'content_share_list', 'admin/content/list', 1, '(\'content_share_list\', \'can_view\')', NULL, 'content', 'list', '', 1, '2022-07-22 10:07:17'),
(90, 17, 'upload_content', NULL, 'upload_content', 'admin/content/upload', 1, '(\'upload_content\', \'can_view\')', NULL, 'content', 'upload', '', 1, '2022-07-22 10:07:17'),
(91, 17, 'video_tutorial', NULL, 'video_tutorial', 'admin/video_tutorial', 1, '(\'video_tutorial\', \'can_view\')', NULL, 'video_tutorial', 'index', '', 1, '2022-07-22 10:07:17'),
(92, 18, 'add_homework', NULL, 'add_homework', 'homework', 1, '(\'homework\', \'can_view\')', NULL, 'homework', 'index', '', 1, '2022-06-25 09:50:01'),
(93, 18, 'daily_assignment', NULL, 'daily_assignment', 'homework/dailyassignment', 2, '(\'daily_assignment\', \'can_view\')', NULL, 'homework', 'dailyassignment', '', 1, '2022-07-23 09:27:23'),
(94, 19, 'book_list', NULL, 'book_list', 'admin/book/getall', 1, '(\'books\', \'can_view\')', NULL, 'book', 'getall,index,edit,import,issue_returnreport', '', 1, '2022-09-07 11:45:50'),
(95, 19, 'issue_return', NULL, 'issue_return', 'admin/member', 1, '(\'issue_return\', \'can_view\')', NULL, 'member', 'index,issue', '', 1, '2022-07-23 09:32:48'),
(96, 19, 'add_student', NULL, 'add_student', 'admin/member/student', 1, '(\'add_student\', \'can_view\')', NULL, 'member', 'student', '', 1, '2022-05-16 11:22:54'),
(97, 19, 'add_staff_member', NULL, 'add_staff_member', 'admin/member/teacher', 1, '(\'add_staff_member\', \'can_view\')', NULL, 'member', 'teacher', '', 1, '2022-05-16 11:31:43'),
(98, 7, 'search_expense', NULL, 'search_expense', 'admin/expense/expensesearch', 1, '(\'search_expense\', \'can_view\')', NULL, 'expense', 'expensesearch', '', 1, '2022-05-16 11:36:09'),
(99, 7, 'expense_head', NULL, 'expense_head', 'admin/expensehead', 1, '(\'expense_head\', \'can_view\')', NULL, 'expensehead', 'index,edit', '', 1, '2022-07-23 07:16:17'),
(100, 20, 'issue_item', NULL, 'issue_item', 'admin/issueitem', 1, '(\'issue_item\', \'can_view\')', NULL, 'issueitem', 'index,create', '', 1, '2022-07-23 09:35:03'),
(101, 20, 'add_item_stock', NULL, 'add_item_stock', 'admin/itemstock', 1, '(\'item_stock\', \'can_view\')', NULL, 'itemstock', 'index,edit', '', 1, '2022-07-23 09:36:17'),
(102, 20, 'add_item', NULL, 'add_item', 'admin/item', 1, '(\'item\', \'can_view\')', NULL, 'item', 'index,edit', '', 1, '2022-07-23 09:36:56'),
(103, 20, 'item_category', NULL, 'item_category', 'admin/itemcategory', 1, '(\'item_category\', \'can_view\')', NULL, 'itemcategory', 'index,edit', '', 1, '2022-07-23 09:37:12'),
(104, 20, 'item_store', NULL, 'item_store', 'admin/itemstore', 1, '(\'store\', \'can_view\')', NULL, 'itemstore', 'index,edit,create', '', 1, '2022-09-16 11:49:03'),
(105, 20, 'item_supplier', NULL, 'item_supplier', 'admin/itemsupplier', 1, '(\'supplier\', \'can_view\')', NULL, 'itemsupplier', 'index,edit,create', '', 1, '2022-07-23 09:38:22'),
(106, 21, 'fees_master', NULL, 'fees_master', 'admin/transport/feemaster', 1, '(\'transport_fees_master\', \'can_view\')', NULL, 'transport', 'feemaster', '', 1, '2023-03-31 05:33:14'),
(107, 21, 'pickup_point', NULL, 'pickup_point', 'admin/pickuppoint', 1, '(\'pickup_point\', \'can_view\')', NULL, 'pickuppoint', 'index', '', 1, '2023-03-31 05:24:24'),
(108, 21, 'routes', NULL, 'routes', 'admin/route', 1, '(\'routes\', \'can_view\')', NULL, 'route', 'index,edit', '', 1, '2022-09-17 06:21:23'),
(109, 21, 'vehicles', NULL, 'vehicles', 'admin/vehicle', 1, '(\'vehicle\', \'can_view\')', NULL, 'vehicle', 'index', '', 1, '2022-05-16 12:29:35'),
(110, 21, 'assign_vehicle', NULL, 'assign_vehicle', 'admin/vehroute', 1, '(\'assign_vehicle\',\'can_view\')', NULL, 'vehroute', 'index,edit', '', 1, '2022-10-19 07:06:08'),
(111, 21, 'route_pickup_point', NULL, 'route_pickup_point', 'admin/pickuppoint/assign', 1, '(\'route_pickup_point\', \'can_view\')', NULL, 'pickuppoint', 'assign', '', 1, '2023-03-31 05:25:08'),
(112, 21, 'student_transport_fees', NULL, 'student_transport_fees', 'admin/pickuppoint/student_fees', 1, '(\'student_transport_fees\', \'can_view\')', NULL, 'pickuppoint', 'student_fees', '', 1, '2023-03-31 05:25:43'),
(113, 22, 'hostel_rooms', NULL, 'hostel_rooms', 'admin/hostelroom', 1, '(\'hostel_rooms\', \'can_view\')', NULL, 'hostelroom', 'index,edit', '', 1, '2022-07-23 10:27:48'),
(114, 22, 'room_type', NULL, 'room_type', 'admin/roomtype', 2, '(\'room_type\', \'can_view\')', NULL, 'roomtype', 'index,edit', '', 1, '2022-07-23 10:32:14'),
(115, 22, 'hostel', NULL, 'hostel', 'admin/hostel', 3, '(\'hostel\', \'can_view\')', NULL, 'hostel', 'index,edit', '', 1, '2022-07-23 10:32:39'),
(116, 23, 'student_certificate', NULL, 'student_certificate', 'admin/certificate', 1, '(\'student_certificate\', \'can_view\')', NULL, 'certificate', 'index,edit', '', 1, '2022-07-23 10:44:30'),
(117, 23, 'generate_certificate', NULL, 'generate_certificate', 'admin/generatecertificate', 1, '(\'generate_certificate\', \'can_view\')', NULL, 'generatecertificate', 'index,search', '', 1, '2022-07-23 10:46:16'),
(118, 23, 'student_id_card', NULL, 'student_id_card', 'admin/studentidcard', 1, '(\'student_id_card\', \'can_view\')', NULL, 'studentidcard', 'index,edit', '', 1, '2022-07-23 10:47:01'),
(119, 23, 'generate_id_card', NULL, 'generate_id_card', 'admin/generateidcard/search', 1, '(\'generate_id_card\', \'can_view\')', NULL, 'generateidcard', 'search', '', 1, '2022-05-18 05:35:13'),
(120, 23, 'staff_id_card', NULL, 'staff_id_card', 'admin/staffidcard', 1, '(\'staff_id_card\', \'can_view\')', NULL, 'staffidcard', 'index,edit', '', 1, '2022-07-23 10:48:13'),
(121, 23, 'generate_staff_id_card', NULL, 'generate_staff_id_card', 'admin/generatestaffidcard', 1, '(\'generate_staff_id_card\', \'can_view\')', NULL, 'generatestaffidcard', 'index,search', '', 1, '2022-07-23 10:49:06'),
(122, 24, 'event', NULL, 'event', 'admin/front/events', 1, '(\'event\', \'can_view\')', NULL, 'events', 'index,edit,create', '', 1, '2022-07-23 10:51:51'),
(123, 24, 'gallery', NULL, 'gallery', 'admin/front/gallery', 1, '(\'gallery\', \'can_view\')', NULL, 'gallery', 'index,edit,create', '', 1, '2022-07-23 10:52:22'),
(124, 24, 'news', NULL, 'news', 'admin/front/notice', 1, '(\'notice\', \'can_view\')', NULL, 'notice', 'index,edit,create', '', 1, '2022-07-23 10:54:23'),
(125, 24, 'media_manager', NULL, 'media_manager', 'admin/front/media', 1, '(\'media_manager\', \'can_view\')', NULL, 'media', 'index', '', 1, '2022-05-18 06:03:32'),
(126, 24, 'pages', NULL, 'pages', 'admin/front/page', 1, '(\'pages\', \'can_view\')', NULL, 'page', 'index,edit,create', '', 1, '2022-07-23 10:55:28'),
(127, 24, 'menus', NULL, 'menus', 'admin/front/menus', 1, '(\'menus\', \'can_view\')', NULL, 'menus', 'index,additem', '', 1, '2022-07-23 10:56:31'),
(128, 24, 'banner_images', NULL, 'banner_images', 'admin/front/banner', 1, '(\'banner_images\', \'can_view\')', NULL, 'banner', 'index', '', 1, '2022-05-18 06:10:53'),
(129, 25, 'manage_alumini', NULL, 'manage_alumini', 'admin/alumni/alumnilist', 1, '(\'manage_alumni\', \'can_view\')', NULL, 'alumni', 'alumnilist', '', 1, '2022-07-23 10:58:36'),
(130, 25, 'events', NULL, 'events', 'admin/alumni/events', 1, '(\'events\', \'can_view\')', NULL, 'alumni', 'events', '', 1, '2022-07-23 10:59:09'),
(131, 26, 'student_information', NULL, 'student_information', 'report/studentinformation', 1, '(\'student_report\', \'can_view\') || (\'guardian_report\', \'can_view\') || (\'student_history\', \'can_view\') || (\'student_login_credential_report\', \'can_view\') || (\'class_subject_report\', \'can_view\') || (\'admission_report\', \'can_view\') || (\'sibling_report\', \'can_view\') || (\'homehork_evaluation_report\', \'can_view\') || (\'student_profile\', \'can_view\') || (\'student_gender_ratio_report\', \'can_view\') || (\'student_teacher_ratio_report\', \'can_view\')', NULL, 'report', 'studentinformation,studentreport,online_admission_report,student_teacher_ratio,boys_girls_ratio,student_profile,sibling_report,admission_report,class_subject,classsectionreport,guardianreport,admissionreport,logindetailreport,parentlogindetailreport', '', 1, '2022-09-26 05:26:53'),
(132, 26, 'finance', NULL, 'finance', 'financereports/finance', 2, '(\'fees_statement\', \'can_view\') || (\'balance_fees_report\', \'can_view\') || (\'fees_collection_report\', \'can_view\') || (\'online_fees_collection_report\', \'can_view\') || (\'income_report\', \'can_view\') || (\'expense_report\', \'can_view\') || (\'payroll_report\', \'can_view\') || (\'income_group_report\', \'can_view\') || (\'expense_group_report\', \'can_view\') || (\'online_admission\', \'can_view\')', NULL, 'financereports', 'finance,reportduefees,reportdailycollection,reportbyname,studentacademicreport,collection_report,onlinefees_report,duefeesremark,income,expense,payroll,incomegroup,expensegroup,onlineadmission', '', 1, '2022-09-24 12:20:32'),
(133, 26, 'attendance', NULL, 'attendance', 'attendencereports/attendance', 3, '(\'attendance_report\', \'can_view\') || (\'student_attendance_type_report\', \'can_view\') || (\'daily_attendance_report\', \'can_view\') || (\'staff_attendance_report\', \'can_view\')', NULL, 'attendencereports', 'attendance,classattendencereport,attendancereport,daily_attendance_report,staffattendancereport,biometric_attlog,reportbymonthstudent,reportbymonth', '', 1, '2022-09-26 11:36:08'),
(134, 26, 'examinations', NULL, 'examinations', 'admin/examresult/examinations', 4, '(\'rank_report\', \'can_view\')', NULL, 'examresult', 'rankreport,examinations', '', 1, '2022-09-20 08:34:13'),
(135, 26, 'lesson_plan', NULL, 'lesson_plan', 'report/lesson_plan', 6, '(\'syllabus_status_report\', \'can_view\') || (\'teacher_syllabus_status_report\', \'can_view\')', NULL, 'report', 'lesson_plan,teachersyllabusstatus', '', 1, '2022-07-25 11:39:17'),
(136, 26, 'human_resource', NULL, 'human_resource', 'report/human_resource', 7, '(\'staff_report\', \'can_view\') || (\'payroll_report\', \'can_view\')', NULL, 'report', 'human_resource,staff_report,payrollreport', '', 1, '2022-07-25 11:38:20'),
(137, 26, 'library', NULL, 'library', 'report/library', 9, '(\'book_issue_report\', \'can_view\') || (\'book_due_report\', \'can_view\') || (\'book_issue_return_report\', \'can_view\') || (\'book_inventory_report\', \'can_view\')', NULL, 'report', 'library,studentbookissuereport,bookduereport,bookinventory', '', 1, '2022-09-07 11:53:15'),
(138, 26, 'inventory', NULL, 'inventory', 'report/inventory', 10, '(\'stock_report\', \'can_view\') || (\'add_item_report\', \'can_view\') || (\'issue_item_report\', \'can_view\')', NULL, 'report', 'inventory,inventorystock,additem,issueinventory', '', 1, '2022-07-25 11:30:57'),
(139, 26, 'hostel', NULL, 'hostel', 'admin/hostelroom/studenthosteldetails', 12, '(\'hostel_report\', \'can_view\')', NULL, 'hostelroom', 'studenthosteldetails', '', 1, '2022-07-20 12:30:07'),
(140, 26, 'alumni', NULL, 'alumni', 'report/alumnireport', 13, '(\'alumni_report\', \'can_view\')', NULL, 'report', 'alumnireport', '', 1, '2022-07-20 12:30:07'),
(141, 26, 'user_log', NULL, 'user_log', 'admin/userlog', 14, '(\'user_log\', \'can_view\')', NULL, 'userlog', 'index', '', 1, '2022-07-20 12:30:07'),
(142, 26, 'audit_trail_report', NULL, 'audit_trail_report', 'admin/audit', 15, '(\'audit_trail_report\', \'can_view\')', NULL, 'audit', 'index', '', 1, '2022-07-20 12:30:07'),
(143, 26, 'online_examinations', NULL, 'online_examinations', 'admin/onlineexam/report', 5, '(\'online_exam_wise_report\', \'can_view\') || (\'online_exams_report\', \'can_view\') || (\'online_exams_attempt_report\', \'can_view\') || (\'online_exams_rank_report\', \'can_view\')', NULL, 'onlineexam', 'report,onlineexams', '', 1, '2022-07-25 11:48:23'),
(144, 26, 'homework', NULL, 'homework', 'homework/homeworkordailyassignmentreport', 8, '(\'homework\', \'can_view\') || (\'daily_assignment\', \'can_view\')', NULL, 'homework', 'homeworkordailyassignmentreport,homeworkreport,evaluation_report,dailyassignmentreport', '', 1, '2022-09-21 09:28:47'),
(145, 26, 'transport', NULL, 'transport', 'admin/route/studenttransportdetails', 11, '(\'transport_report\', \'can_view\')', NULL, 'route', 'studenttransportdetails', '', 1, '2022-07-20 12:30:07'),
(146, 27, 'general_setting', NULL, 'general_setting', 'schsettings', 1, '(\'general_setting\', \'can_view\')', NULL, 'schsettings', 'index,logo,miscellaneous,backendtheme,mobileapp,studentguardianpanel,fees,idautogeneration,attendancetype,maintenance', '', 1, '2022-07-25 11:14:13'),
(147, 27, 'session_setting', NULL, 'session_setting', 'sessions', 2, '(\'session_setting\', \'can_view\')', NULL, 'sessions', 'index,edit', '', 1, '2022-07-23 11:57:16'),
(148, 27, 'notification_setting', NULL, 'notification_setting', 'admin/notification/setting', 3, '(\'notification_setting\', \'can_view\')', NULL, 'notification', 'setting', '', 1, '2022-07-08 08:12:28'),
(149, 27, 'sms_setting', NULL, 'sms_setting', 'smsconfig', 4, '(\'sms_setting\', \'can_view\')', NULL, 'smsconfig', 'index', '', 1, '2022-07-08 08:12:28'),
(150, 27, 'email_setting', NULL, 'email_setting', 'emailconfig', 5, '(\'email_setting\', \'can_view\')', NULL, 'emailconfig', 'index', '', 1, '2022-07-08 08:12:28'),
(151, 27, 'payment_methods', NULL, 'payment_methods', 'admin/paymentsettings', 6, '(\'payment_methods\', \'can_view\')', NULL, 'paymentsettings', 'index', '', 1, '2022-07-08 08:12:28'),
(152, 27, 'print_headerfooter', NULL, 'print_headerfooter', 'admin/print_headerfooter', 7, '(\'print_header_footer\', \'can_view\')', NULL, 'print_headerfooter', 'index', '', 1, '2022-07-08 08:12:28'),
(153, 27, 'front_cms_setting', NULL, 'front_cms_setting', 'admin/frontcms', 8, '(\'front_cms_setting\', \'can_view\')', NULL, 'frontcms', 'index', '', 1, '2022-07-08 08:12:28'),
(154, 27, 'roles_permissions', NULL, 'roles_permissions', 'admin/roles', 9, '(\'superadmin\', \'can_view\')', NULL, 'roles', 'index,permission', '', 1, '2022-09-09 11:03:34'),
(155, 27, 'backup_restore', NULL, 'backup_restore', 'admin/admin/backup', 10, '(\'backup\', \'can_view\')', NULL, 'admin', 'backup', '', 1, '2022-07-08 08:12:28'),
(156, 27, 'users', NULL, 'users', 'admin/users', 13, '(\'user_status\', \'can_view\')', NULL, 'users', 'index', '', 1, '2022-07-20 12:34:09'),
(157, 27, 'languages', NULL, 'languages', 'admin/language', 11, '(\'languages\', \'can_view\')', NULL, 'language', 'index,create', '', 1, '2022-09-10 09:14:52'),
(158, 27, 'modules', NULL, 'modules', 'admin/module', 14, '(\'superadmin\', \'can_view\')', NULL, 'module', 'index', '', 1, '2022-07-20 12:34:06'),
(159, 27, 'custom_fields', NULL, 'custom_fields', 'admin/customfield', 15, '(\'custom_fields\', \'can_view\')', NULL, 'customfield', 'index,edit', '', 1, '2022-07-23 12:02:14'),
(160, 27, 'captcha_setting', NULL, 'captcha_setting', 'admin/captcha', 16, '(\'superadmin\', \'can_view\')', NULL, 'captcha', 'index', '', 1, '2022-07-20 12:34:06'),
(161, 27, 'system_fields', NULL, 'system_fields', 'admin/systemfield', 17, '(\'system_fields\', \'can_view\')', NULL, 'systemfield', 'index', '', 1, '2022-07-22 06:07:38'),
(162, 27, 'student_profile_update', NULL, 'student_profile_update', 'student/profilesetting', 18, '(\'student_profile_update\', \'can_view\')', NULL, 'student', 'profilesetting', '', 1, '2022-07-20 12:34:06'),
(163, 27, 'online_admission', NULL, 'online_admission', 'admin/onlineadmission/admissionsetting', 19, '(\'online_admission\', \'can_view\')', NULL, 'onlineadmission', 'admissionsetting', '', 1, '2022-07-20 12:34:06'),
(164, 27, 'file_types', NULL, 'file_types', 'admin/admin/filetype', 20, '(\'superadmin\', \'can_view\')', NULL, 'admin', 'filetype', '', 1, '2022-07-20 12:34:30'),
(165, 27, 'system_update', NULL, 'system_update', 'admin/updater', 22, '(\'superadmin\', \'can_view\')', NULL, 'updater', 'index', '', 1, '2022-10-13 11:49:51'),
(166, 27, 'sidebar_menu', NULL, 'sidebar_menu', 'admin/sidemenu', 21, '(\'sidebar_menu\', \'can_view\')', NULL, 'sidemenu', 'index', '', 1, '2022-10-13 11:49:51'),
(181, 3, 'fees_discount', NULL, 'fees_discount', 'admin/feediscount', 8, '(\'fees_discount\', \'can_view\')', NULL, 'feediscount', 'index,edit,assign', '', 1, '2022-08-08 06:03:27'),
(182, 3, 'fees_carry_forward', NULL, 'fees_carry_forward', 'admin/feesforward', 9, '(\'fees_carry_forward\', \'can_view\')', NULL, 'feesforward', 'index', '', 1, '2022-08-08 06:03:24'),
(183, 3, 'fees_reminder', NULL, 'fees_reminder', 'admin/feereminder/setting', 10, '(\'fees_reminder\', \'can_view\')', NULL, 'feereminder', 'setting', '', 1, '2022-08-08 06:03:21'),
(184, 27, 'currency', NULL, 'currency', 'admin/currency', 12, '(\'currency\', \'can_view\')', NULL, 'currency', 'index', '', 1, '2022-07-20 12:34:09'),
(190, 3, 'offline_bank_payments', NULL, 'offline_bank_payments', 'admin/offlinepayment', 2, '(\'offline_bank_payments\', \'can_view\')', NULL, 'offlinepayment', 'index', '', 1, '2022-08-08 06:05:29'),
(191, 13, 'Copy Old Lessons', NULL, 'copy_old_lesson', 'admin/lessonplan/copylesson', 1, '(\'copy_old_lesson\', \'can_view\')', NULL, 'lessonplan', 'copylesson', NULL, 1, '2022-09-09 10:20:37'),
(192, 10, 'Period Attendance', 'period_attendance', 'period_attendance', 'admin/subjectattendence/index', 4, '(\'student_attendance\',\'can_view\')', NULL, 'subjectattendence', 'index', NULL, 0, '2022-10-20 05:50:25'),
(193, 10, 'Period Attendance By Date', 'period_attendance_by_date', 'period_attendance_by_date', 'admin/subjectattendence/reportbydate', 5, '(\'attendance_by_date\', \'can_view\')', NULL, 'subjectattendence', 'reportbydate', NULL, 0, '2022-10-20 05:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `sms_config`
--

CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `api_id` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `senderid` varchar(100) NOT NULL,
  `contact` text DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_template`
--

CREATE TABLE `sms_template` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sms_template`
--

INSERT INTO `sms_template` (`id`, `title`, `message`, `created_at`) VALUES
(1, 'Important Announcement', 'This title can be used for important messages sent by the administrator.', '2023-10-17'),
(2, 'Upcoming Event', 'With this title, administrators can send information about future events or functions.', '2023-10-17'),
(3, 'Emergency Alert', 'If the administrator wants to give information about any kind of sudden problem or disaster, then he can use this title.', '2023-10-17'),
(4, 'Parent-Teacher Meeting', 'You can use this title for notification of parent-teacher meetings organized by the administrator.', '2023-10-17'),
(5, 'Newsletter Update', 'This title can be used for newsletters sent by admins.', '2023-10-17'),
(6, 'Fee Reminder', 'If you\'re reminding students or members about fees or payments, you can use the title \"Fee Reminder.\"', '2023-10-17'),
(7, 'Result Notification', 'The title \"Result Notification\" can be used to announce student results.', '2023-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT 0,
  `department` int(11) DEFAULT NULL,
  `designation` int(11) DEFAULT NULL,
  `qualification` varchar(200) NOT NULL,
  `work_exp` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `emergency_contact_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(100) NOT NULL,
  `date_of_joining` date DEFAULT NULL,
  `date_of_leaving` date DEFAULT NULL,
  `local_address` varchar(300) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `account_title` varchar(200) NOT NULL,
  `bank_account_no` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `bank_branch` varchar(100) NOT NULL,
  `payscale` varchar(200) NOT NULL,
  `basic_salary` int(11) DEFAULT NULL,
  `epf_no` varchar(200) NOT NULL,
  `contract_type` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `joining_letter` varchar(200) NOT NULL,
  `resignation_letter` varchar(200) NOT NULL,
  `other_document_name` varchar(200) NOT NULL,
  `other_document_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `disable_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `currency_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `disable_at`) VALUES
(1, '9000', 4, 0, NULL, NULL, '', '', 'Super Admin', '', '', '', '', '', 'eschool@mydemos.in', '2020-01-01', '', NULL, NULL, '', '', '', '', '$2y$10$FHbTymAcZXWwIj6uSTSXdOUXNkNwU09crC2JPd5M9QsqGKNbo79be', 'Male', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL),
(2, '1236', 1, 0, NULL, NULL, '', '', 'Admin', '', '', '', '', '', '', '0000-00-00', '', NULL, NULL, '', '', '', '', '1234', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', NULL),
(3, 'Ro001', 0, 0, 3, 4, 'Gaduation', '2', 'Roshan', 'Singh', 'Rohan', 'Nisha Devi', '8756478398', '9878695643', 'roshan123@gmail.com', '1988-11-01', 'Single', '2023-10-15', NULL, 'C7FC+C4C, parson mandir,near lakeBadkhal,, Faridabad, Haryana', 'Patana Bihar', '', '', '$2y$10$.IrNh3KVXzXvl0coJgHUVuqTXsIS4PAH6AoiuPmf2XUDbwq9orXrG', 'Male', 'Bank Details', '8457356342413', 'Axis Bank', 'FFCUPS74365', 'BOB', '', 0, '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', NULL),
(4, 'SA002', 0, 0, 4, 2, 'B tech', '2year', 'Saloni', 'Maurya', 'Ajay Kumar Maurya ', 'Sangeeta Devi', '9794933945', '9229404310', 'msaloni401@gmail.com', '2003-03-03', 'Single', '2023-10-06', NULL, 'Noida sector 15 UP', 'Mahaveer Chhapara Gorakhpurm UP', '', '1697456860-644762558652d22dc2eb09!girls.jpeg', '$2y$10$gV4Lc7uz3ijvfaXWQrrwE.0.hn6AQSrR0XJwPVbjieNp/B0Wt8hDS', 'Female', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `staff_attendance_type_id` int(11) NOT NULL,
  `biometric_attendence` int(1) DEFAULT 0,
  `biometric_device_data` text DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance_type`
--

CREATE TABLE `staff_attendance_type` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `key_value` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `staff_attendance_type`
--

INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00'),
(2, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00'),
(3, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00'),
(4, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', '2018-05-07 01:56:16', '0000-00-00'),
(5, 'Holiday', 'H', 'yes', '0000-00-00 00:00:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `staff_designation`
--

CREATE TABLE `staff_designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `staff_designation`
--

INSERT INTO `staff_designation` (`id`, `designation`, `is_active`) VALUES
(1, 'English Teacher', 'yes'),
(2, 'Math Teacher', 'yes'),
(3, 'Hindi Teacher', 'yes'),
(4, 'Social Science Teacher', 'yes'),
(5, 'Science Tecaher', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `staff_id_card`
--

CREATE TABLE `staff_id_card` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_address` varchar(255) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `header_color` varchar(100) NOT NULL,
  `enable_vertical_card` int(11) NOT NULL DEFAULT 0,
  `enable_staff_role` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_id` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_department` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_designation` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_date_of_joining` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_permanent_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_barcode` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `staff_id_card`
--

INSERT INTO `staff_id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `header_color`, `enable_vertical_card`, `enable_staff_role`, `enable_staff_id`, `enable_staff_department`, `enable_designation`, `enable_name`, `enable_fathers_name`, `enable_mothers_name`, `enable_date_of_joining`, `enable_permanent_address`, `enable_staff_dob`, `enable_staff_phone`, `enable_staff_barcode`, `status`) VALUES
(1, 'Sample Staff ID Card Horizontal', 'Mount Carmel School', '110 Kings Street, CA', 'background1.png', 'logo1.png', 'sign1.png', '#9b1818', 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(2, 'Sample Staff ID Card Vertical', 'Mount Carmel School', '110 Kings Street, CA', 'background1.png', 'logo1.png', 'sign1.png', '#9b1818', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_details`
--

CREATE TABLE `staff_leave_details` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `alloted_leave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `staff_leave_details`
--

INSERT INTO `staff_leave_details` (`id`, `staff_id`, `leave_type_id`, `alloted_leave`) VALUES
(1, 3, 1, ''),
(2, 3, 2, ''),
(3, 3, 3, ''),
(4, 3, 4, ''),
(5, 3, 5, ''),
(6, 4, 1, ''),
(7, 4, 2, ''),
(8, 4, 3, ''),
(9, 4, 4, ''),
(10, 4, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_request`
--

CREATE TABLE `staff_leave_request` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_days` int(11) NOT NULL,
  `employee_remark` varchar(200) NOT NULL,
  `admin_remark` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `applied_by` int(11) DEFAULT NULL,
  `document_file` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_payroll`
--

CREATE TABLE `staff_payroll` (
  `id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `pay_scale` varchar(200) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_payslip`
--

CREATE TABLE `staff_payslip` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `basic` float(10,2) NOT NULL,
  `total_allowance` float(10,2) NOT NULL,
  `total_deduction` float(10,2) NOT NULL,
  `leave_deduction` int(11) NOT NULL,
  `tax` varchar(200) NOT NULL,
  `net_salary` float(10,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `month` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `payment_date` date NOT NULL,
  `remark` varchar(200) NOT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_rating`
--

CREATE TABLE `staff_rating` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rate` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 decline, 1 Approve',
  `entrydt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `staff_rating`
--

INSERT INTO `staff_rating` (`id`, `staff_id`, `comment`, `rate`, `user_id`, `role`, `status`, `entrydt`) VALUES
(1, 3, 'very nice teacher', 5, 3, 'student', 0, '2023-10-16 11:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `staff_roles`
--

CREATE TABLE `staff_roles` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `staff_roles`
--

INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 0, '2023-08-07 18:21:05', NULL),
(2, 2, 3, 0, '2023-10-16 11:21:17', NULL),
(3, 1, 4, 0, '2023-10-16 11:47:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_timeline`
--

CREATE TABLE `staff_timeline` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(300) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `school_house_id` int(11) DEFAULT NULL,
  `blood_group` varchar(200) NOT NULL,
  `hostel_room_id` int(11) DEFAULT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text DEFAULT NULL,
  `guardian_email` varchar(100) DEFAULT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `previous_school` text DEFAULT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `measurement_date` date DEFAULT NULL,
  `dis_reason` int(11) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `dis_note` text NOT NULL,
  `app_key` text DEFAULT NULL,
  `parent_app_key` text DEFAULT NULL,
  `disable_at` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `middlename`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `school_house_id`, `blood_group`, `hostel_room_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `dis_note`, `app_key`, `parent_app_key`, `disable_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'dsf', '', '2023-08-07', 'Mukesh', NULL, '', 'No', NULL, '', '', NULL, NULL, NULL, '', '', '2010-01-27', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', 'asfasf', 'asfasf', 'asfasfsa', '', '', '', 'asfasf', 'Father', 'asfasf', 'asfasfsa', '', '', '', '', '', 'yes', '', '', '', '2023-08-07', 0, '', '', 'cwOnPwLVUTM:APA91bHp32AORm3VKixWum4Vbl_F3_--hg6YywPysHPibKY6sZH6y1RwjmME6bywPNmJcL5M_SlALtJ1XLv-mgOM3YQFQcJNHJC6S6PLFrIH0u6HRW2ClIjtcFPtBPUl1w0osLQ7SqRA', NULL, NULL, '2023-08-07 18:52:10', NULL),
(2, 2, '123', '1', '2023-10-16', 'Darshika', NULL, 'Singh', 'Yes', 'uploads/student_images/1697450584-1038509822652d0a58eb158!student.png', '9794911938', 'msaloni401@gmail.com', NULL, NULL, NULL, 'Hindu', 'General', '2000-02-06', 'Female', 'Nayabas gali no 2 Noida sector 15  UP', 'N3/3 Karmajeetpur Sundarpur varanasi 221005 UP', '1', 1, 'B+', 0, 'Aadhar Card', 'Identic Card', '435634646', 'Axis', 'UP6643734SOSI', 'father', 'Sanjay singh', '8675744734', 'Contrator', 'Sashi singh', '7564733728', 'Bussiness woman', 'Sanjay', 'Father', '897654327', 'Contrator', 'N3/3 Karmajeetpur Sundarpur varanasi 221005 UP', 'sanjay123@gmail.com', 'uploads/student_images/1697450584-1812702926652d0a58eb620!img22.png', 'uploads/student_images/1697450584-1521159596652d0a58eb83a!girls.jpeg', 'uploads/student_images/1697450584-1043706763652d0a58eba7c!student.png', 'yes', 'No', '5.2', '58', '2023-10-16', 0, 'dnifns ewhfiu3rjf', '', NULL, NULL, NULL, '2023-10-17 09:15:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_applyleave`
--

CREATE TABLE `student_applyleave` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `apply_date` date NOT NULL,
  `status` int(1) NOT NULL,
  `docs` varchar(200) DEFAULT NULL,
  `reason` text NOT NULL,
  `approve_by` int(11) DEFAULT NULL,
  `approve_date` date DEFAULT NULL,
  `request_type` int(11) NOT NULL COMMENT '0 student,1 staff',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student_applyleave`
--

INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `docs`, `reason`, `approve_by`, `approve_date`, `request_type`, `created_at`) VALUES
(1, 2, '2023-10-17', '2023-10-20', '2023-10-16', 0, NULL, 'Sick Leave', NULL, NULL, 1, '2023-10-16 10:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendences`
--

CREATE TABLE `student_attendences` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `biometric_attendence` int(1) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `biometric_device_data` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student_attendences`
--

INSERT INTO `student_attendences` (`id`, `student_session_id`, `biometric_attendence`, `date`, `attendence_type_id`, `remark`, `biometric_device_data`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 2, 0, '2023-10-16', 6, 'Sick Leave', NULL, 'no', '2023-10-16 10:45:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_doc`
--

CREATE TABLE `student_doc` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_edit_fields`
--

CREATE TABLE `student_edit_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student_edit_fields`
--

INSERT INTO `student_edit_fields` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'firstname', 1, '2023-10-13 12:29:29'),
(2, 'student_photo', 1, '2023-10-13 12:30:10'),
(3, 'lastname', 1, '2023-10-13 12:29:45'),
(4, 'mobile_no', 1, '2023-10-13 12:30:19'),
(5, 'current_address', 1, '2023-10-13 12:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE `student_fees` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `feemaster_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_deposite`
--

CREATE TABLE `student_fees_deposite` (
  `id` int(11) NOT NULL,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `student_transport_fee_id` int(11) DEFAULT NULL,
  `amount_detail` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_discounts`
--

CREATE TABLE `student_fees_discounts` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_master`
--

CREATE TABLE `student_fees_master` (
  `id` int(11) NOT NULL,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT 0.00,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student_fees_master`
--

INSERT INTO `student_fees_master` (`id`, `is_system`, `student_session_id`, `fee_session_group_id`, `amount`, `is_active`, `created_at`) VALUES
(1, 1, 2, 2, 0.00, 'no', '2023-10-17 06:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_processing`
--

CREATE TABLE `student_fees_processing` (
  `id` int(11) NOT NULL,
  `gateway_ins_id` int(11) NOT NULL,
  `fee_category` varchar(255) NOT NULL,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `student_transport_fee_id` int(11) DEFAULT NULL,
  `amount_detail` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_session`
--

CREATE TABLE `student_session` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `hostel_room_id` int(11) DEFAULT NULL,
  `vehroute_id` int(10) DEFAULT NULL,
  `route_pickup_point_id` int(11) DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT 0.00,
  `fees_discount` float(10,2) NOT NULL DEFAULT 0.00,
  `is_leave` int(1) NOT NULL DEFAULT 0,
  `is_active` varchar(255) DEFAULT 'no',
  `is_alumni` int(11) NOT NULL,
  `default_login` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student_session`
--

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `hostel_room_id`, `vehroute_id`, `route_pickup_point_id`, `transport_fees`, `fees_discount`, `is_leave`, `is_active`, `is_alumni`, `default_login`, `created_at`, `updated_at`) VALUES
(1, 18, 1, 2, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 1, '2023-10-13 10:55:23', NULL),
(2, 18, 2, 11, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 1, '2023-10-16 10:17:39', NULL),
(3, 19, 2, 12, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2023-10-16 13:09:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_subject_attendances`
--

CREATE TABLE `student_subject_attendances` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `subject_timetable_id` int(11) DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_timeline`
--

CREATE TABLE `student_timeline` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` text NOT NULL,
  `document` varchar(200) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `created_student_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_transport_fees`
--

CREATE TABLE `student_transport_fees` (
  `id` int(11) NOT NULL,
  `transport_feemaster_id` int(10) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `route_pickup_point_id` int(11) NOT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'English', 'EN001', 'theory', 'no', '2023-10-16 10:49:56', NULL),
(2, 'Math', 'MA002', 'theory', 'no', '2023-10-16 10:50:10', NULL),
(3, 'Science', 'SN003', 'theory', 'no', '2023-10-16 10:50:31', NULL),
(4, 'Social Science', 'SS004', 'theory', 'no', '2023-10-16 10:51:38', NULL),
(5, 'Hindi', 'HI005', 'theory', 'no', '2023-10-16 10:52:11', NULL),
(6, 'Science Lab', 'SL006', 'practical', 'no', '2023-10-16 10:52:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject_groups`
--

CREATE TABLE `subject_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subject_groups`
--

INSERT INTO `subject_groups` (`id`, `name`, `description`, `session_id`, `created_at`) VALUES
(1, 'Science Group', 'Science Theory and Science Lab', 18, '2023-10-16 10:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `subject_group_class_sections`
--

CREATE TABLE `subject_group_class_sections` (
  `id` int(11) NOT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subject_group_class_sections`
--

INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 42, 18, NULL, 0, '2023-10-16 10:55:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject_group_subjects`
--

CREATE TABLE `subject_group_subjects` (
  `id` int(11) NOT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subject_group_subjects`
--

INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES
(1, 1, 18, 3, '2023-10-16 10:55:12'),
(2, 1, 18, 6, '2023-10-16 10:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `subject_syllabus`
--

CREATE TABLE `subject_syllabus` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_for` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_from` varchar(255) NOT NULL,
  `time_to` varchar(255) NOT NULL,
  `presentation` text NOT NULL,
  `attachment` text NOT NULL,
  `lacture_youtube_url` varchar(255) NOT NULL,
  `lacture_video` varchar(255) NOT NULL,
  `sub_topic` text NOT NULL,
  `teaching_method` text NOT NULL,
  `general_objectives` text NOT NULL,
  `previous_knowledge` text NOT NULL,
  `comprehensive_questions` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_timetable`
--

CREATE TABLE `subject_timetable` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `subject_group_subject_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `time_from` varchar(20) DEFAULT NULL,
  `time_to` varchar(20) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subject_timetable`
--

INSERT INTO `subject_timetable` (`id`, `session_id`, `class_id`, `section_id`, `subject_group_id`, `subject_group_subject_id`, `staff_id`, `day`, `time_from`, `time_to`, `start_time`, `end_time`, `room_no`, `created_at`) VALUES
(1, 18, 11, 2, 1, 1, 3, 'Monday', '11:00 AM', '12:00 PM', '11:00:00', '12:00:00', '101', '2023-10-16 11:55:29'),
(2, 18, 11, 2, 1, 2, 3, 'Monday', '12:30 PM', '01:30 PM', '12:30:00', '13:30:00', '101', '2023-10-16 11:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `submit_assignment`
--

CREATE TABLE `submit_assignment` (
  `id` int(11) NOT NULL,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `docs` varchar(225) NOT NULL,
  `file_name` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `template_admitcards`
--

CREATE TABLE `template_admitcards` (
  `id` int(11) NOT NULL,
  `template` varchar(250) DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `sign` varchar(200) DEFAULT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `is_name` int(1) NOT NULL DEFAULT 1,
  `is_father_name` int(1) NOT NULL DEFAULT 1,
  `is_mother_name` int(1) NOT NULL DEFAULT 1,
  `is_dob` int(1) NOT NULL DEFAULT 1,
  `is_admission_no` int(1) NOT NULL DEFAULT 1,
  `is_roll_no` int(1) NOT NULL DEFAULT 1,
  `is_address` int(1) NOT NULL DEFAULT 1,
  `is_gender` int(1) NOT NULL DEFAULT 1,
  `is_photo` int(11) NOT NULL,
  `is_class` int(11) NOT NULL DEFAULT 0,
  `is_section` int(11) NOT NULL DEFAULT 0,
  `content_footer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `template_admitcards`
--

INSERT INTO `template_admitcards` (`id`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `sign`, `background_img`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_address`, `is_gender`, `is_photo`, `is_class`, `is_section`, `content_footer`, `created_at`, `updated_at`) VALUES
(1, 'Sample Admit Card', '', '', 'ab12c4b65f53ee621dcf84370a7c5be4.png', '0910482bf79df5fd103e8383d61b387a.png', 'Test', 'Mount Carmel School', 'test dmit card2', 'aa9c7087e68c5af1d2c04946de1d3bd3.png', '782a71f53ea6bca213012d49e9d46d98.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2020-02-28 14:26:15', NULL),
(2, 'simple', 'Matr Bhumi', 'Admit  Card', '1697459712-1707249334652d2e0009595!book2.jpg', '1697459712-1321910513652d2e0009987!school.jpg', '12th', 'MatrBhumi', 'Matr bhumi', '1697459712-742629671652d2e0009ff6!signSaloni.png', '', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, '@matrBhumi', '2023-10-16 12:39:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template_marksheets`
--

CREATE TABLE `template_marksheets` (
  `id` int(11) NOT NULL,
  `header_image` varchar(200) DEFAULT NULL,
  `template` varchar(200) DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `left_sign` varchar(200) DEFAULT NULL,
  `middle_sign` varchar(200) DEFAULT NULL,
  `right_sign` varchar(200) DEFAULT NULL,
  `exam_session` int(1) DEFAULT 1,
  `is_name` int(1) DEFAULT 1,
  `is_father_name` int(1) DEFAULT 1,
  `is_mother_name` int(1) DEFAULT 1,
  `is_dob` int(1) DEFAULT 1,
  `is_admission_no` int(1) DEFAULT 1,
  `is_roll_no` int(1) DEFAULT 1,
  `is_photo` int(11) DEFAULT 1,
  `is_division` int(1) NOT NULL DEFAULT 1,
  `is_rank` int(1) NOT NULL DEFAULT 0,
  `is_customfield` int(1) NOT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `is_class` int(11) NOT NULL DEFAULT 0,
  `is_teacher_remark` int(11) NOT NULL DEFAULT 1,
  `is_section` int(11) NOT NULL DEFAULT 0,
  `content` text DEFAULT NULL,
  `content_footer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `template_marksheets`
--

INSERT INTO `template_marksheets` (`id`, `header_image`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `left_sign`, `middle_sign`, `right_sign`, `exam_session`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_photo`, `is_division`, `is_rank`, `is_customfield`, `background_img`, `date`, `is_class`, `is_teacher_remark`, `is_section`, `content`, `content_footer`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Sample Marksheet', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'f314cec3f688771ccaeddbcee6e52f7c.png', 'e824b2df53266266be2dbfd2001168b8.png', 'HIGHER SECONDARY SCHOOL CERTIFICATE EXAMINATION', 'Mount Carmel School', 'GOVT GIRLS H S SCHOOL', '331e0690e50f8c6b7a219a0a2b9667f7.png', '351f513d79ee5c0f642c2d36514a1ff4.png', 'fb79d2c0d163357d1706b78550a05e2c.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '', NULL, 0, 1, 0, NULL, NULL, '2020-02-28 14:26:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `complete_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_feemaster`
--

CREATE TABLE `transport_feemaster` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `month` varchar(50) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `fine_amount` float(10,2) DEFAULT 0.00,
  `fine_type` varchar(50) DEFAULT NULL,
  `fine_percentage` float(10,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

CREATE TABLE `transport_route` (
  `id` int(11) NOT NULL,
  `route_title` varchar(100) DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_contents`
--

CREATE TABLE `upload_contents` (
  `id` int(11) NOT NULL,
  `content_type_id` int(10) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `real_name` text NOT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `file_type` varchar(100) NOT NULL,
  `mime_type` text NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` text NOT NULL,
  `vid_title` varchar(250) NOT NULL,
  `upload_by` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `user`, `role`, `class_section_id`, `ipaddress`, `user_agent`, `login_datetime`) VALUES
(1, 'eschool@mydemos.in', 'Super Admin', NULL, '49.37.25.102', 'Chrome 115.0.0.0, Windows 10', '2023-08-08 01:21:48'),
(2, 'eschool@mydemos.in', 'Super Admin', NULL, '42.106.32.166', 'Chrome 115.0.0.0, Android', '2023-08-08 01:40:09'),
(3, 'eschool@mydemos.in', 'Super Admin', NULL, '106.194.187.58', 'Chrome 115.0.0.0, Windows 10', '2023-08-11 21:07:37'),
(4, 'eschool@mydemos.in', 'Super Admin', NULL, '152.58.189.219', 'Chrome 115.0.0.0, Windows 10', '2023-08-18 13:39:35'),
(5, 'eschool@mydemos.in', 'Super Admin', NULL, '152.58.186.97', 'Chrome 115.0.0.0, Android', '2023-08-18 13:39:51'),
(6, 'parent1', 'parent', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-13 05:25:17'),
(7, 'eschool@mydemos.in', 'Super Admin', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-13 05:52:07'),
(8, 'eschool@mydemos.in', 'Super Admin', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-13 06:52:35'),
(9, 'eschool@mydemos.in', 'Super Admin', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-13 11:58:36'),
(10, 'eschool@mydemos.in', 'Super Admin', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-13 22:51:39'),
(11, 'eschool@mydemos.in', 'Super Admin', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-14 04:28:44'),
(12, 'eschool@mydemos.in', 'Super Admin', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-16 00:08:10'),
(13, 'std1', 'student', 5, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-16 02:20:52'),
(14, 'std1', 'student', 5, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-16 04:16:50'),
(15, 'std1', 'student', 5, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-16 04:17:25'),
(16, 'eschool@mydemos.in', 'Super Admin', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-16 04:17:44'),
(17, 'std2', 'student', 42, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-16 04:47:32'),
(18, 'std2', 'student', 42, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-16 05:00:36'),
(19, 'eschool@mydemos.in', 'Super Admin', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-16 05:03:01'),
(20, 'eschool@mydemos.in', 'Super Admin', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-16 23:55:56'),
(21, 'std2', 'student', 42, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-17 00:01:03'),
(22, 'std2', 'student', 42, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-17 00:01:51'),
(23, 'eschool@mydemos.in', 'Super Admin', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-17 00:02:05'),
(24, 'eschool@mydemos.in', 'Super Admin', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-17 08:01:54'),
(25, 'std2', 'student', 42, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-17 08:04:48'),
(26, 'std2', 'student', 42, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-17 08:05:22'),
(27, 'std2', 'student', 42, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-17 23:54:31'),
(28, 'eschool@mydemos.in', 'Super Admin', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-18 00:05:43'),
(29, 'eschool@mydemos.in', 'Super Admin', NULL, '::1', 'Chrome 118.0.0.0, Windows 10', '2023-10-23 01:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `childs` text NOT NULL,
  `role` varchar(30) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `currency_id` int(1) DEFAULT 0,
  `verification_code` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `lang_id`, `currency_id`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'std1', 'user123', '', 'student', 4, 0, '', 'yes', '2023-10-16 07:50:11', NULL),
(2, 0, 'parent1', 'parent124', '1', 'parent', 0, 0, '', 'yes', '2023-10-16 07:50:20', NULL),
(3, 2, 'std2', 'x7yxuy', '', 'student', 4, 0, '', 'yes', '2023-10-16 10:03:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_authentication`
--

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `expired_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users_authentication`
--

INSERT INTO `users_authentication` (`id`, `users_id`, `token`, `staff_id`, `expired_at`, `created_at`, `updated_at`) VALUES
(2, 1, 'MTAOAMTANw', NULL, '2024-08-07 01:42:01', NULL, NULL),
(3, 1, 'OANwMwOANw', NULL, '2024-08-07 01:46:58', NULL, NULL),
(4, 1, 'MTAMgNAMQOQ', NULL, '2024-08-07 01:52:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `vehicle_photo` varchar(255) DEFAULT NULL,
  `manufacture_year` varchar(4) DEFAULT NULL,
  `registration_number` varchar(50) NOT NULL,
  `chasis_number` varchar(100) NOT NULL,
  `max_seating_capacity` varchar(255) NOT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_routes`
--

CREATE TABLE `vehicle_routes` (
  `id` int(11) NOT NULL,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_tutorial`
--

CREATE TABLE `video_tutorial` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `vid_title` text DEFAULT NULL,
  `description` text NOT NULL,
  `thumb_path` varchar(500) DEFAULT NULL,
  `dir_path` varchar(500) DEFAULT NULL,
  `img_name` varchar(300) NOT NULL,
  `thumb_name` varchar(300) NOT NULL,
  `video_link` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_tutorial_class_sections`
--

CREATE TABLE `video_tutorial_class_sections` (
  `id` int(11) NOT NULL,
  `video_tutorial_id` int(11) NOT NULL,
  `class_section_id` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors_book`
--

CREATE TABLE `visitors_book` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `purpose` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(12) NOT NULL,
  `id_proof` varchar(50) NOT NULL,
  `no_of_people` int(11) NOT NULL,
  `date` date NOT NULL,
  `in_time` varchar(20) NOT NULL,
  `out_time` varchar(20) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `meeting_with` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors_purpose`
--

CREATE TABLE `visitors_purpose` (
  `id` int(11) NOT NULL,
  `visitors_purpose` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni_events`
--
ALTER TABLE `alumni_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `alumni_students`
--
ALTER TABLE `alumni_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `attendence_type`
--
ALTER TABLE `attendence_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_connections`
--
ALTER TABLE `chat_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_user_one` (`chat_user_one`),
  ADD KEY `chat_user_two` (`chat_user_two`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_user_id` (`chat_user_id`),
  ADD KEY `chat_connection_id` (`chat_connection_id`);

--
-- Indexes for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `create_staff_id` (`create_staff_id`),
  ADD KEY `create_student_id` (`create_student_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `class_section_times`
--
ALTER TABLE `class_section_times`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`);

--
-- Indexes for table `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_type`
--
ALTER TABLE `complaint_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `cls_sec_id` (`cls_sec_id`);

--
-- Indexes for table `content_for`
--
ALTER TABLE `content_for`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `content_types`
--
ALTER TABLE `content_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_belong_to` (`belong_to`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_visible_on_table` (`visible_on_table`),
  ADD KEY `idx_weight` (`weight`);
ALTER TABLE `custom_fields` ADD FULLTEXT KEY `idx_field_values` (`field_values`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_id` (`custom_field_id`),
  ADD KEY `idx_belong_table_id` (`belong_table_id`),
  ADD KEY `idx_field_value` (`field_value`);

--
-- Indexes for table `daily_assignment`
--
ALTER TABLE `daily_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `evaluated_by` (`evaluated_by`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disable_reason`
--
ALTER TABLE `disable_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_attachments`
--
ALTER TABLE `email_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template_attachment`
--
ALTER TABLE `email_template_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `assigned` (`assigned`),
  ADD KEY `enquiry_ibfk_4` (`class_id`);

--
-- Indexes for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sesion_id` (`sesion_id`);

--
-- Indexes for table `exam_groups`
--
ALTER TABLE `exam_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`),
  ADD KEY `exam_group_class_batch_exams_ibfk_2` (`session_id`);

--
-- Indexes for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exam_id` (`exam_group_class_batch_exam_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`),
  ADD KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`);

--
-- Indexes for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exam_subject_id` (`exam_group_class_batch_exam_subject_id`),
  ADD KEY `exam_group_student_id` (`exam_group_student_id`),
  ADD KEY `exam_group_class_batch_exam_student_id` (`exam_group_class_batch_exam_student_id`);

--
-- Indexes for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_subject_id` (`teacher_subject_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exp_head_id` (`exp_head_id`);

--
-- Indexes for table `expense_head`
--
ALTER TABLE `expense_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feemasters`
--
ALTER TABLE `feemasters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `feetype_id` (`feetype_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `fees_reminder`
--
ALTER TABLE `fees_reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feetype`
--
ALTER TABLE `feetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups`
--
ALTER TABLE `fee_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `feetype_id` (`feetype_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `filetypes`
--
ALTER TABLE `filetypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_up`
--
ALTER TABLE `follow_up`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enquiry_id` (`enquiry_id`),
  ADD KEY `followup_by` (`followup_by`);

--
-- Indexes for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_ins`
--
ALTER TABLE `gateway_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_admission_id` (`online_admission_id`);

--
-- Indexes for table `gateway_ins_response`
--
ALTER TABLE `gateway_ins_response`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gateway_ins_id` (`gateway_ins_id`);

--
-- Indexes for table `general_calls`
--
ALTER TABLE `general_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `evaluated_by` (`evaluated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `homework_evaluation`
--
ALTER TABLE `homework_evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homework_id` (`homework_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hostel_id` (`hostel_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `id_card`
--
ALTER TABLE `id_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`),
  ADD KEY `income_head_id` (`income_head_id`);

--
-- Indexes for table `income_head`
--
ALTER TABLE `income_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_category_id` (`item_category_id`),
  ADD KEY `item_store_id` (`item_store_id`),
  ADD KEY `item_supplier_id` (`item_supplier_id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_category_id` (`item_category_id`),
  ADD KEY `issue_to` (`issue_to`),
  ADD KEY `issue_by` (`issue_by`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `item_store`
--
ALTER TABLE `item_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`),
  ADD KEY `subject_group_class_sections_id` (`subject_group_class_sections_id`);

--
-- Indexes for table `lesson_plan_forum`
--
ALTER TABLE `lesson_plan_forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_syllabus_id` (`subject_syllabus_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `libarary_members`
--
ALTER TABLE `libarary_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mark_divisions`
--
ALTER TABLE `mark_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_notification_id` (`send_notification_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `notification_setting`
--
ALTER TABLE `notification_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_fees_payments`
--
ALTER TABLE `offline_fees_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_master_id` (`student_fees_master_id`),
  ADD KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`),
  ADD KEY `student_transport_fee_id` (`student_transport_fee_id`),
  ADD KEY `offline_fees_payments_ibfk_4` (`approved_by`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `onlineexam`
--
ALTER TABLE `onlineexam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_student_id` (`onlineexam_student_id`);

--
-- Indexes for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_id` (`onlineexam_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_id` (`onlineexam_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_student_id` (`onlineexam_student_id`),
  ADD KEY `onlineexam_question_id` (`onlineexam_question_id`);

--
-- Indexes for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `hostel_room_id` (`hostel_room_id`),
  ADD KEY `school_house_id` (`school_house_id`);

--
-- Indexes for table `online_admission_custom_field_value`
--
ALTER TABLE `online_admission_custom_field_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_id` (`custom_field_id`);

--
-- Indexes for table `online_admission_fields`
--
ALTER TABLE `online_admission_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_admission_payment`
--
ALTER TABLE `online_admission_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_admission_id` (`online_admission_id`);

--
-- Indexes for table `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcarvxgo793jsiuhwcuy3kenvv` (`oq_fk`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `payslip_id` (`payslip_id`);

--
-- Indexes for table `permission_category`
--
ALTER TABLE `permission_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_short_code` (`short_code`),
  ADD KEY `perm_group_id` (`perm_group_id`);

--
-- Indexes for table `permission_group`
--
ALTER TABLE `permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_student`
--
ALTER TABLE `permission_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `pickup_point`
--
ALTER TABLE `pickup_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `print_headerfooter`
--
ALTER TABLE `print_headerfooter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `class_section_id` (`class_section_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_details`
--
ALTER TABLE `quiz_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `read_notification`
--
ALTER TABLE `read_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `perm_cat_id` (`perm_cat_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route_pickup_point`
--
ALTER TABLE `route_pickup_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_route_id` (`transport_route_id`),
  ADD KEY `pickup_point_id` (`pickup_point_id`);

--
-- Indexes for table `scholar_register`
--
ALTER TABLE `scholar_register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mob` (`mob`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `school_houses`
--
ALTER TABLE `school_houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sch_settings`
--
ALTER TABLE `sch_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_notification`
--
ALTER TABLE `send_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_contents`
--
ALTER TABLE `share_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `share_content_for`
--
ALTER TABLE `share_content_for`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_content_id` (`share_content_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `user_parent_id` (`user_parent_id`);

--
-- Indexes for table `share_upload_contents`
--
ALTER TABLE `share_upload_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_content_id` (`upload_content_id`),
  ADD KEY `share_content_id` (`share_content_id`);

--
-- Indexes for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_group_id` (`permission_group_id`);

--
-- Indexes for table `sidebar_sub_menus`
--
ALTER TABLE `sidebar_sub_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sidebar_menu_id` (`sidebar_menu_id`),
  ADD KEY `permission_group_id` (`permission_group_id`);

--
-- Indexes for table `sms_config`
--
ALTER TABLE `sms_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_template`
--
ALTER TABLE `sms_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `source`
--
ALTER TABLE `source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `department` (`department`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_attendance_staff` (`staff_id`),
  ADD KEY `FK_staff_attendance_staff_attendance_type` (`staff_attendance_type_id`);

--
-- Indexes for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_designation`
--
ALTER TABLE `staff_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_id_card`
--
ALTER TABLE `staff_id_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_leave_details_staff` (`staff_id`),
  ADD KEY `FK_staff_leave_details_leave_types` (`leave_type_id`);

--
-- Indexes for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_leave_request_staff` (`staff_id`),
  ADD KEY `FK_staff_leave_request_leave_types` (`leave_type_id`),
  ADD KEY `applied_by` (`applied_by`);

--
-- Indexes for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_payslip_staff` (`staff_id`);

--
-- Indexes for table `staff_rating`
--
ALTER TABLE `staff_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_rating_staff` (`staff_id`);

--
-- Indexes for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_timeline_staff` (`staff_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_applyleave`
--
ALTER TABLE `student_applyleave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `approve_by` (`approve_by`);

--
-- Indexes for table `student_attendences`
--
ALTER TABLE `student_attendences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `attendence_type_id` (`attendence_type_id`);

--
-- Indexes for table `student_doc`
--
ALTER TABLE `student_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_edit_fields`
--
ALTER TABLE `student_edit_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feemaster_id` (`feemaster_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_master_id` (`student_fees_master_id`),
  ADD KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`),
  ADD KEY `student_transport_fee_id` (`student_transport_fee_id`);

--
-- Indexes for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fees_discount_id` (`fees_discount_id`);

--
-- Indexes for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`);

--
-- Indexes for table `student_fees_processing`
--
ALTER TABLE `student_fees_processing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_master_id` (`student_fees_master_id`),
  ADD KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`),
  ADD KEY `student_transport_fee_id` (`student_transport_fee_id`),
  ADD KEY `gateway_ins_id` (`gateway_ins_id`);

--
-- Indexes for table `student_session`
--
ALTER TABLE `student_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `student_session_ibfk_5` (`vehroute_id`),
  ADD KEY `hostel_room_id` (`hostel_room_id`),
  ADD KEY `student_session_ibfk_6` (`route_pickup_point_id`);

--
-- Indexes for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendence_type_id` (`attendence_type_id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `subject_timetable_id` (`subject_timetable_id`);

--
-- Indexes for table `student_timeline`
--
ALTER TABLE `student_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `route_pickup_point_id` (`route_pickup_point_id`),
  ADD KEY `transport_feemaster_id` (`transport_feemaster_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_groups`
--
ALTER TABLE `subject_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created_for` (`created_for`);

--
-- Indexes for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `submit_assignment`
--
ALTER TABLE `submit_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `homework_id` (`homework_id`);

--
-- Indexes for table `template_admitcards`
--
ALTER TABLE `template_admitcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_marksheets`
--
ALTER TABLE `template_marksheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Indexes for table `transport_feemaster`
--
ALTER TABLE `transport_feemaster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `transport_route`
--
ALTER TABLE `transport_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_contents`
--
ALTER TABLE `upload_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_by` (`upload_by`),
  ADD KEY `upload_contents_ibfk_2` (`content_type_id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_authentication`
--
ALTER TABLE `users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `route_id` (`route_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `video_tutorial`
--
ALTER TABLE `video_tutorial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `video_tutorial_class_sections`
--
ALTER TABLE `video_tutorial_class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `video_tutorial_id` (`video_tutorial_id`);

--
-- Indexes for table `visitors_book`
--
ALTER TABLE `visitors_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumni_events`
--
ALTER TABLE `alumni_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alumni_students`
--
ALTER TABLE `alumni_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendence_type`
--
ALTER TABLE `attendence_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat_connections`
--
ALTER TABLE `chat_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_users`
--
ALTER TABLE `chat_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `class_sections`
--
ALTER TABLE `class_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `class_section_times`
--
ALTER TABLE `class_section_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_teacher`
--
ALTER TABLE `class_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaint_type`
--
ALTER TABLE `complaint_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_for`
--
ALTER TABLE `content_for`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_types`
--
ALTER TABLE `content_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_assignment`
--
ALTER TABLE `daily_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `disable_reason`
--
ALTER TABLE `disable_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_attachments`
--
ALTER TABLE `email_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email_template_attachment`
--
ALTER TABLE `email_template_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_groups`
--
ALTER TABLE `exam_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense_head`
--
ALTER TABLE `expense_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feemasters`
--
ALTER TABLE `feemasters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fees_reminder`
--
ALTER TABLE `fees_reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feetype`
--
ALTER TABLE `feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fee_groups`
--
ALTER TABLE `fee_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `filetypes`
--
ALTER TABLE `filetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `follow_up`
--
ALTER TABLE `follow_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gateway_ins`
--
ALTER TABLE `gateway_ins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateway_ins_response`
--
ALTER TABLE `gateway_ins_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_calls`
--
ALTER TABLE `general_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homework_evaluation`
--
ALTER TABLE `homework_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `id_card`
--
ALTER TABLE `id_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `income_head`
--
ALTER TABLE `income_head`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_issue`
--
ALTER TABLE `item_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_store`
--
ALTER TABLE `item_store`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_supplier`
--
ALTER TABLE `item_supplier`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lesson_plan_forum`
--
ALTER TABLE `lesson_plan_forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `libarary_members`
--
ALTER TABLE `libarary_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `mark_divisions`
--
ALTER TABLE `mark_divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification_roles`
--
ALTER TABLE `notification_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notification_setting`
--
ALTER TABLE `notification_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `offline_fees_payments`
--
ALTER TABLE `offline_fees_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam`
--
ALTER TABLE `onlineexam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_admissions`
--
ALTER TABLE `online_admissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_admission_custom_field_value`
--
ALTER TABLE `online_admission_custom_field_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_admission_fields`
--
ALTER TABLE `online_admission_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `online_admission_payment`
--
ALTER TABLE `online_admission_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option`
--
ALTER TABLE `option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_category`
--
ALTER TABLE `permission_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `permission_group`
--
ALTER TABLE `permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `permission_student`
--
ALTER TABLE `permission_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pickup_point`
--
ALTER TABLE `pickup_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `print_headerfooter`
--
ALTER TABLE `print_headerfooter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `quiz_details`
--
ALTER TABLE `quiz_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `read_notification`
--
ALTER TABLE `read_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1481;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route_pickup_point`
--
ALTER TABLE `route_pickup_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholar_register`
--
ALTER TABLE `scholar_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `school_houses`
--
ALTER TABLE `school_houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `send_notification`
--
ALTER TABLE `send_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `share_contents`
--
ALTER TABLE `share_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `share_content_for`
--
ALTER TABLE `share_content_for`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `share_upload_contents`
--
ALTER TABLE `share_upload_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sidebar_sub_menus`
--
ALTER TABLE `sidebar_sub_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `sms_config`
--
ALTER TABLE `sms_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_template`
--
ALTER TABLE `sms_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `source`
--
ALTER TABLE `source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff_designation`
--
ALTER TABLE `staff_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff_id_card`
--
ALTER TABLE `staff_id_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_rating`
--
ALTER TABLE `staff_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_roles`
--
ALTER TABLE `staff_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_applyleave`
--
ALTER TABLE `student_applyleave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_attendences`
--
ALTER TABLE `student_attendences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_doc`
--
ALTER TABLE `student_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_edit_fields`
--
ALTER TABLE `student_edit_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_fees_processing`
--
ALTER TABLE `student_fees_processing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_session`
--
ALTER TABLE `student_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_timeline`
--
ALTER TABLE `student_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subject_groups`
--
ALTER TABLE `subject_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `submit_assignment`
--
ALTER TABLE `submit_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_admitcards`
--
ALTER TABLE `template_admitcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `template_marksheets`
--
ALTER TABLE `template_marksheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_feemaster`
--
ALTER TABLE `transport_feemaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_route`
--
ALTER TABLE `transport_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_contents`
--
ALTER TABLE `upload_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_authentication`
--
ALTER TABLE `users_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_tutorial`
--
ALTER TABLE `video_tutorial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_tutorial_class_sections`
--
ALTER TABLE `video_tutorial_class_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors_book`
--
ALTER TABLE `visitors_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni_events`
--
ALTER TABLE `alumni_events`
  ADD CONSTRAINT `alumni_events_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alumni_events_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `alumni_students`
--
ALTER TABLE `alumni_students`
  ADD CONSTRAINT `alumni_students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD CONSTRAINT `book_issues_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_issues_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `libarary_members` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_connections`
--
ALTER TABLE `chat_connections`
  ADD CONSTRAINT `chat_connections_ibfk_1` FOREIGN KEY (`chat_user_one`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_connections_ibfk_2` FOREIGN KEY (`chat_user_two`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`chat_user_id`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_messages_ibfk_2` FOREIGN KEY (`chat_connection_id`) REFERENCES `chat_connections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD CONSTRAINT `chat_users_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_3` FOREIGN KEY (`create_staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_4` FOREIGN KEY (`create_student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD CONSTRAINT `class_sections_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_sections_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_section_times`
--
ALTER TABLE `class_section_times`
  ADD CONSTRAINT `class_section_times_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD CONSTRAINT `class_teacher_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_teacher_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_teacher_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_teacher_ibfk_4` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contents_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contents_ibfk_3` FOREIGN KEY (`cls_sec_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content_for`
--
ALTER TABLE `content_for`
  ADD CONSTRAINT `content_for_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_for_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_ibfk_1` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `daily_assignment`
--
ALTER TABLE `daily_assignment`
  ADD CONSTRAINT `daily_assignment_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_assignment_ibfk_2` FOREIGN KEY (`evaluated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_assignment_ibfk_3` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `email_attachments`
--
ALTER TABLE `email_attachments`
  ADD CONSTRAINT `email_attachments_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD CONSTRAINT `enquiry_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enquiry_ibfk_3` FOREIGN KEY (`assigned`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enquiry_ibfk_4` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`sesion_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  ADD CONSTRAINT `exam_group_class_batch_exams_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exams_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  ADD CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  ADD CONSTRAINT `exam_group_exam_connections_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_connections_ibfk_2` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  ADD CONSTRAINT `exam_group_exam_results_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_subject_id`) REFERENCES `exam_group_class_batch_exam_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_results_ibfk_2` FOREIGN KEY (`exam_group_student_id`) REFERENCES `exam_group_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_results_ibfk_3` FOREIGN KEY (`exam_group_class_batch_exam_student_id`) REFERENCES `exam_group_class_batch_exam_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  ADD CONSTRAINT `exam_group_students_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_students_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD CONSTRAINT `exam_schedules_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_schedules_ibfk_2` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`exp_head_id`) REFERENCES `expense_head` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feemasters`
--
ALTER TABLE `feemasters`
  ADD CONSTRAINT `feemasters_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feemasters_ibfk_2` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feemasters_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `follow_up`
--
ALTER TABLE `follow_up`
  ADD CONSTRAINT `follow_up_ibfk_1` FOREIGN KEY (`enquiry_id`) REFERENCES `enquiry` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follow_up_ibfk_2` FOREIGN KEY (`followup_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  ADD CONSTRAINT `front_cms_menu_items_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `front_cms_menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD CONSTRAINT `front_cms_page_contents_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `front_cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD CONSTRAINT `front_cms_program_photos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `front_cms_programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gateway_ins`
--
ALTER TABLE `gateway_ins`
  ADD CONSTRAINT `gateway_ins_ibfk_1` FOREIGN KEY (`online_admission_id`) REFERENCES `online_admissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gateway_ins_response`
--
ALTER TABLE `gateway_ins_response`
  ADD CONSTRAINT `gateway_ins_response_ibfk_1` FOREIGN KEY (`gateway_ins_id`) REFERENCES `gateway_ins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homework`
--
ALTER TABLE `homework`
  ADD CONSTRAINT `homework_ibfk_1` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_3` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_5` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_6` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_7` FOREIGN KEY (`evaluated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_8` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homework_evaluation`
--
ALTER TABLE `homework_evaluation`
  ADD CONSTRAINT `homework_evaluation_ibfk_1` FOREIGN KEY (`homework_id`) REFERENCES `homework` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_evaluation_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_evaluation_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  ADD CONSTRAINT `hostel_rooms_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hostel_rooms_ibfk_2` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `income`
--
ALTER TABLE `income`
  ADD CONSTRAINT `income_ibfk_1` FOREIGN KEY (`income_head_id`) REFERENCES `income_head` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`item_store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_ibfk_3` FOREIGN KEY (`item_supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_3` FOREIGN KEY (`issue_to`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_4` FOREIGN KEY (`issue_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_ibfk_2` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`subject_group_class_sections_id`) REFERENCES `subject_group_class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_plan_forum`
--
ALTER TABLE `lesson_plan_forum`
  ADD CONSTRAINT `lesson_plan_forum_ibfk_1` FOREIGN KEY (`subject_syllabus_id`) REFERENCES `subject_syllabus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_plan_forum_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_plan_forum_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD CONSTRAINT `notification_roles_ibfk_1` FOREIGN KEY (`send_notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notification_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offline_fees_payments`
--
ALTER TABLE `offline_fees_payments`
  ADD CONSTRAINT `offline_fees_payments_ibfk_1` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offline_fees_payments_ibfk_2` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offline_fees_payments_ibfk_3` FOREIGN KEY (`student_transport_fee_id`) REFERENCES `student_transport_fees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offline_fees_payments_ibfk_4` FOREIGN KEY (`approved_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offline_fees_payments_ibfk_5` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam`
--
ALTER TABLE `onlineexam`
  ADD CONSTRAINT `onlineexam_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  ADD CONSTRAINT `onlineexam_attempts_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  ADD CONSTRAINT `onlineexam_questions_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_questions_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_questions_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  ADD CONSTRAINT `onlineexam_students_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_students_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  ADD CONSTRAINT `onlineexam_student_results_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_student_results_ibfk_2` FOREIGN KEY (`onlineexam_question_id`) REFERENCES `onlineexam_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD CONSTRAINT `online_admissions_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_ibfk_3` FOREIGN KEY (`hostel_room_id`) REFERENCES `hostel_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_ibfk_4` FOREIGN KEY (`school_house_id`) REFERENCES `school_houses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admission_custom_field_value`
--
ALTER TABLE `online_admission_custom_field_value`
  ADD CONSTRAINT `online_admission_custom_field_value_ibfk_1` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admission_payment`
--
ALTER TABLE `online_admission_payment`
  ADD CONSTRAINT `online_admission_payment_ibfk_1` FOREIGN KEY (`online_admission_id`) REFERENCES `online_admissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option`
--
ALTER TABLE `option`
  ADD CONSTRAINT `FKcarvxgo793jsiuhwcuy3kenvv` FOREIGN KEY (`oq_fk`) REFERENCES `quiz` (`id`);

--
-- Constraints for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  ADD CONSTRAINT `payslip_allowance_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payslip_allowance_ibfk_2` FOREIGN KEY (`payslip_id`) REFERENCES `staff_payslip` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_category`
--
ALTER TABLE `permission_category`
  ADD CONSTRAINT `permission_category_ibfk_1` FOREIGN KEY (`perm_group_id`) REFERENCES `permission_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_student`
--
ALTER TABLE `permission_student`
  ADD CONSTRAINT `permission_student_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `permission_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_4` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_5` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_6` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `read_notification`
--
ALTER TABLE `read_notification`
  ADD CONSTRAINT `read_notification_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `read_notification_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `read_notification_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `roles_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_permissions_ibfk_2` FOREIGN KEY (`perm_cat_id`) REFERENCES `permission_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `route_pickup_point`
--
ALTER TABLE `route_pickup_point`
  ADD CONSTRAINT `route_pickup_point_ibfk_1` FOREIGN KEY (`transport_route_id`) REFERENCES `transport_route` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `route_pickup_point_ibfk_2` FOREIGN KEY (`pickup_point_id`) REFERENCES `pickup_point` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `send_notification`
--
ALTER TABLE `send_notification`
  ADD CONSTRAINT `send_notification_ibfk_1` FOREIGN KEY (`created_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `share_contents`
--
ALTER TABLE `share_contents`
  ADD CONSTRAINT `share_contents_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `share_content_for`
--
ALTER TABLE `share_content_for`
  ADD CONSTRAINT `share_content_for_ibfk_1` FOREIGN KEY (`share_content_id`) REFERENCES `share_contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `share_content_for_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `share_content_for_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `share_content_for_ibfk_4` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`),
  ADD CONSTRAINT `share_content_for_ibfk_5` FOREIGN KEY (`user_parent_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `share_upload_contents`
--
ALTER TABLE `share_upload_contents`
  ADD CONSTRAINT `share_upload_contents_ibfk_1` FOREIGN KEY (`upload_content_id`) REFERENCES `upload_contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `share_upload_contents_ibfk_2` FOREIGN KEY (`share_content_id`) REFERENCES `share_contents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  ADD CONSTRAINT `sidebar_menus_ibfk_1` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_group` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sidebar_sub_menus`
--
ALTER TABLE `sidebar_sub_menus`
  ADD CONSTRAINT `sidebar_sub_menus_ibfk_1` FOREIGN KEY (`sidebar_menu_id`) REFERENCES `sidebar_menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sidebar_sub_menus_ibfk_2` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_group` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`designation`) REFERENCES `staff_designation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`department`) REFERENCES `department` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD CONSTRAINT `FK_staff_attendance_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_staff_attendance_staff_attendance_type` FOREIGN KEY (`staff_attendance_type_id`) REFERENCES `staff_attendance_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  ADD CONSTRAINT `FK_staff_leave_details_leave_types` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_staff_leave_details_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  ADD CONSTRAINT `FK_staff_leave_request_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_leave_request_ibfk_1` FOREIGN KEY (`applied_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_leave_request_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  ADD CONSTRAINT `FK_staff_payslip_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_rating`
--
ALTER TABLE `staff_rating`
  ADD CONSTRAINT `FK_staff_rating_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD CONSTRAINT `FK_staff_roles_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_staff_roles_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  ADD CONSTRAINT `FK_staff_timeline_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_applyleave`
--
ALTER TABLE `student_applyleave`
  ADD CONSTRAINT `student_applyleave_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_applyleave_ibfk_2` FOREIGN KEY (`approve_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_attendences`
--
ALTER TABLE `student_attendences`
  ADD CONSTRAINT `student_attendences_ibfk_1` FOREIGN KEY (`attendence_type_id`) REFERENCES `attendence_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_attendences_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD CONSTRAINT `student_fees_ibfk_1` FOREIGN KEY (`feemaster_id`) REFERENCES `feemasters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  ADD CONSTRAINT `student_fees_deposite_ibfk_1` FOREIGN KEY (`student_transport_fee_id`) REFERENCES `student_transport_fees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_deposite_ibfk_2` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_deposite_ibfk_3` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  ADD CONSTRAINT `student_fees_discounts_ibfk_1` FOREIGN KEY (`fees_discount_id`) REFERENCES `fees_discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_discounts_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  ADD CONSTRAINT `student_fees_master_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_master_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_processing`
--
ALTER TABLE `student_fees_processing`
  ADD CONSTRAINT `student_fees_processing_ibfk_1` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_processing_ibfk_2` FOREIGN KEY (`student_transport_fee_id`) REFERENCES `student_transport_fees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_processing_ibfk_3` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_processing_ibfk_4` FOREIGN KEY (`gateway_ins_id`) REFERENCES `gateway_ins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_session`
--
ALTER TABLE `student_session`
  ADD CONSTRAINT `student_session_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_4` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_5` FOREIGN KEY (`vehroute_id`) REFERENCES `vehicle_routes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_session_ibfk_6` FOREIGN KEY (`route_pickup_point_id`) REFERENCES `route_pickup_point` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_session_ibfk_7` FOREIGN KEY (`hostel_room_id`) REFERENCES `hostel_rooms` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  ADD CONSTRAINT `student_subject_attendances_ibfk_1` FOREIGN KEY (`attendence_type_id`) REFERENCES `attendence_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_subject_attendances_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_subject_attendances_ibfk_3` FOREIGN KEY (`subject_timetable_id`) REFERENCES `subject_timetable` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_timeline`
--
ALTER TABLE `student_timeline`
  ADD CONSTRAINT `student_timeline_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
  ADD CONSTRAINT `student_transport_fees_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_transport_fees_ibfk_2` FOREIGN KEY (`route_pickup_point_id`) REFERENCES `route_pickup_point` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_transport_fees_ibfk_3` FOREIGN KEY (`transport_feemaster_id`) REFERENCES `transport_feemaster` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_groups`
--
ALTER TABLE `subject_groups`
  ADD CONSTRAINT `subject_groups_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  ADD CONSTRAINT `subject_group_class_sections_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_class_sections_ibfk_2` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_class_sections_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  ADD CONSTRAINT `subject_group_subjects_ibfk_1` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_subjects_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_subjects_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  ADD CONSTRAINT `subject_syllabus_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_syllabus_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_syllabus_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_syllabus_ibfk_4` FOREIGN KEY (`created_for`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  ADD CONSTRAINT `subject_timetable_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_3` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_4` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_5` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_6` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `submit_assignment`
--
ALTER TABLE `submit_assignment`
  ADD CONSTRAINT `submit_assignment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `submit_assignment_ibfk_2` FOREIGN KEY (`homework_id`) REFERENCES `homework` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `topic_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transport_feemaster`
--
ALTER TABLE `transport_feemaster`
  ADD CONSTRAINT `transport_feemaster_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_contents`
--
ALTER TABLE `upload_contents`
  ADD CONSTRAINT `upload_contents_ibfk_1` FOREIGN KEY (`upload_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_contents_ibfk_2` FOREIGN KEY (`content_type_id`) REFERENCES `content_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userlog`
--
ALTER TABLE `userlog`
  ADD CONSTRAINT `userlog_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  ADD CONSTRAINT `vehicle_routes_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `transport_route` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_routes_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_tutorial`
--
ALTER TABLE `video_tutorial`
  ADD CONSTRAINT `video_tutorial_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_tutorial_class_sections`
--
ALTER TABLE `video_tutorial_class_sections`
  ADD CONSTRAINT `video_tutorial_class_sections_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `video_tutorial_class_sections_ibfk_2` FOREIGN KEY (`video_tutorial_id`) REFERENCES `video_tutorial` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visitors_book`
--
ALTER TABLE `visitors_book`
  ADD CONSTRAINT `visitors_book_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visitors_book_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
