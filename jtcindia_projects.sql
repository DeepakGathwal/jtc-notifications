-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 10:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jtcindia_projects`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `id` int(11) NOT NULL,
  `project_id` varchar(500) NOT NULL,
  `filesName` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` smallint(6) NOT NULL,
  `updated_by` smallint(6) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_languages`
--

CREATE TABLE `project_languages` (
  `id` int(11) NOT NULL,
  `language` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_languages`
--

INSERT INTO `project_languages` (`id`, `language`) VALUES
(1, 'C'),
(2, 'JAVA'),
(3, 'JavaScript'),
(4, 'C++'),
(5, 'Python');

-- --------------------------------------------------------

--
-- Table structure for table `project_lists`
--

CREATE TABLE `project_lists` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `project_language` int(11) NOT NULL,
  `project_technologie` varchar(500) NOT NULL,
  `project_module` varchar(1000) NOT NULL,
  `project_description` text NOT NULL,
  `project_link` varchar(100) NOT NULL,
  `project_category` varchar(50) NOT NULL,
  `meta_tags` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_title` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` smallint(6) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` smallint(6) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_lists`
--

INSERT INTO `project_lists` (`id`, `name`, `project_language`, `project_technologie`, `project_module`, `project_description`, `project_link`, `project_category`, `meta_tags`, `meta_description`, `meta_keywords`, `meta_title`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Hospital', 2, '5,6,7,8', 'xc', 'dsd', 'Hospital', 'Hospital', 'gwygdw', 'dgftd', 'dhga', 'dhaga', '2024-03-30 13:00:47', 1, NULL, 0, NULL, 0),
(2, 'Education', 4, '1,2,3,4', 'ht tft', 'sd', 'education', 'Education', 'ftydrt', 'ftugjdr', 'dytrfgxgf', 'gftufty', '2024-03-30 17:42:23', 1, NULL, 0, NULL, 0),
(3, 'Amazone', 3, '1,2,5,6', 'HTML,CSS, MongoDB', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', 'e-commers', 'Shopping', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', '2024-04-02 09:11:23', 1, NULL, 0, NULL, 0),
(4, 'Instagram', 1, '1,2,7,8', 'JsonWebtoken, Cookies, Authentication', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', 'instagram', 'Social', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', '2024-04-02 09:11:23', 1, NULL, 0, NULL, 0),
(5, 'Project Languages', 5, '3,4,5,6', 'JsonWebtoken, Cookies, Authentication', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', 'project-languages-(1)', 'Social', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', 'E-commerce, or electronic commerce, is the buying and selling of goods and services over the internet. It can include a variety of data, systems, and tools for online buyers and sellers, such as mobile shopping and online payment encryption.', '2024-04-02 09:11:23', 1, NULL, 0, NULL, 0),
(6, 'FlipCart', 2, '3,4,7,8', 'dwvd', 'dfdw', 'flipcart', 'Shopping', 'edvg`vghhgggvgvhggh', 'chgc', 'hc', 'fhchfcfh', '2024-04-02 10:04:35', 1, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_technologies`
--

CREATE TABLE `project_technologies` (
  `id` int(11) NOT NULL,
  `language_id` varchar(500) NOT NULL,
  `technology` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_technologies`
--

INSERT INTO `project_technologies` (`id`, `language_id`, `technology`, `created_at`, `created_by`, `updated_by`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, '1,2', 'HTML', '2024-03-28 06:42:47', 1, 1, '2024-04-02 08:47:55', NULL, 0),
(2, '1,2,3', 'CSS', '2024-03-28 07:05:03', 1, NULL, NULL, '2024-03-28 07:09:08', 0),
(3, '3,4,5', 'Redis', '2024-04-02 08:47:14', 1, 1, '2024-04-02 08:48:11', NULL, 0),
(4, '3,4', 'React', '2024-04-02 08:47:30', 1, NULL, NULL, NULL, 0),
(5, '2,3', 'Nodejs', '2024-04-02 08:47:40', 1, NULL, NULL, NULL, 0),
(6, '1,3,5', 'NextJs', '2024-04-02 08:58:02', 1, 1, '2024-04-02 08:58:39', NULL, 0),
(7, '1,2,3,4', 'NustJs', '2024-04-02 08:58:12', 1, NULL, NULL, NULL, 0),
(8, '2,3,5', 'Anguler', '2024-04-02 08:58:21', 1, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_topics`
--

CREATE TABLE `project_topics` (
  `id` int(11) NOT NULL,
  `topic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_topics`
--

INSERT INTO `project_topics` (`id`, `topic`) VALUES
(1, 'Module'),
(2, 'Techscape'),
(3, 'Installation'),
(4, 'Overview');

-- --------------------------------------------------------

--
-- Table structure for table `project_topic_point`
--

CREATE TABLE `project_topic_point` (
  `id` int(11) NOT NULL,
  `project_id` varchar(500) NOT NULL,
  `project_topic` int(11) NOT NULL,
  `point_heading` varchar(100) NOT NULL,
  `point_details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` smallint(6) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_topic_point`
--

INSERT INTO `project_topic_point` (`id`, `project_id`, `project_topic`, `point_heading`, `point_details`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, '1,2', 1, 'Hello', 'hwhd', '2024-03-31 07:48:08', 1, NULL, NULL, NULL, 0),
(2, '1', 2, 'New Me', 'Hg', '2024-03-31 08:02:50', 1, NULL, NULL, NULL, 0),
(3, '1,2', 3, 'Hello Br', 'wew', '2024-03-31 08:05:12', 1, '2024-03-31 08:13:22', 1, NULL, 0),
(4, '2, 1', 2, 'New Me', 'sfdxs', '2024-03-31 08:13:06', 1, NULL, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_languages`
--
ALTER TABLE `project_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_lists`
--
ALTER TABLE `project_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_technologies`
--
ALTER TABLE `project_technologies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_topics`
--
ALTER TABLE `project_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_topic_point`
--
ALTER TABLE `project_topic_point`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_languages`
--
ALTER TABLE `project_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_lists`
--
ALTER TABLE `project_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_technologies`
--
ALTER TABLE `project_technologies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project_topics`
--
ALTER TABLE `project_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_topic_point`
--
ALTER TABLE `project_topic_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
