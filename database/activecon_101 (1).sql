-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2023 at 08:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `activecon_101`
--

-- --------------------------------------------------------

--
-- Table structure for table `approve_documents`
--

CREATE TABLE `approve_documents` (
  `id` int(255) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `approve_by` varchar(100) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `approve_documents`
--

INSERT INTO `approve_documents` (`id`, `code`, `name`, `type`, `status`, `approve_by`, `created_by`, `created_at`) VALUES
(1, 'DOC_1234', NULL, NULL, NULL, '', NULL, NULL),
(2, 'DOC_1234', NULL, NULL, NULL, '', NULL, NULL),
(3, 'ACT2310091230151', NULL, NULL, 'approve', '7', '7', '2023-10-10 13:22:26'),
(4, 'ACT2310102143203', NULL, NULL, 'approve', '7', '7', '2023-10-10 14:34:39'),
(5, 'ACT2310102183825', NULL, NULL, 'approve', '7', '7', '2023-10-10 18:39:28'),
(6, 'ACT2310102203430', NULL, NULL, 'approve', '7', '7', '2023-10-10 20:37:44'),
(7, 'ABCX2310113141813', NULL, NULL, 'approve', '7', '7', '2023-10-11 15:48:07'),
(9, 'ABCX2310113191512', NULL, NULL, 'approve', '7', '7', '2023-10-11 19:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(255) NOT NULL,
  `project` varchar(100) DEFAULT NULL,
  `pr_number` varchar(100) DEFAULT NULL,
  `type_docs` varchar(100) DEFAULT NULL,
  `note` varchar(150) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status_docs` varchar(100) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `project`, `pr_number`, `type_docs`, `note`, `tel`, `status`, `status_docs`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(3, 'ABC', 'AB001', 'เบิกของ', 'test', '0987654321', 'disapprove', '', 'a@a.com', '2023-10-05 00:00:00', NULL, NULL),
(4, 'โรงงานA', 'ACT2310091230151', 'เบิกของ', 'aaaaaaaaaaaaa', '0812345678', 'approve', 'approve', '6', '2023-10-09 00:00:00', NULL, NULL),
(5, 'โรงงานA', 'ACT2310102143203', 'เบิกของ', 'ทดสอบ', '0899999999', 'approve', '', '7', '2023-10-10 00:00:00', NULL, NULL),
(6, 'โรงงานA', 'ACT2310102183825', 'คืนของ', '', '0899999999', 'approve', '', '7', '2023-10-10 00:00:00', NULL, NULL),
(7, 'โรงงานA', 'ACT2310102203430', 'เบิกของ', 'ทดสอบ', '0899999999', 'approve', '', '7', '2023-10-10 00:00:00', NULL, NULL),
(8, 'abcd', 'ABCX2310113141813', 'เบิกของ', 'test1', '0899999999', 'approve', '', '7', '2023-10-11 00:00:00', NULL, NULL),
(10, 'abcd', 'ABCX2310113191512', 'เพิ่มของ', 'ทดสอบ1', '0899999999', 'approve', '', '7', '2023-10-11 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documents_list`
--

CREATE TABLE `documents_list` (
  `id` int(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `code_list` varchar(100) DEFAULT NULL,
  `list_order` varchar(50) DEFAULT NULL,
  `date_used` date DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `count` int(50) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `place_buy` varchar(150) DEFAULT NULL,
  `created_by` int(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `documents_list`
--

INSERT INTO `documents_list` (`id`, `name`, `code`, `code_list`, `list_order`, `date_used`, `type`, `size`, `brand`, `model`, `count`, `unit`, `place_buy`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'กรรไกร', 'C101', 'DOC_1234', '1', '0000-00-00', '0', '0', '0', '0', 5, '0', '0', 0, '2023-10-05 00:00:00', NULL, NULL),
(2, 'ไม้บรรทัด', 'C101', 'DOC_1234', '2', '0000-00-00', '0', '0', '0', '0', 5, '0', '0', 0, '2023-10-05 00:00:00', NULL, NULL),
(3, 'กรรไกร', 'C101', 'DOC_1234', '1', '0000-00-00', '0', '0', '0', '0', 5, '0', '0', 0, '2023-10-05 00:00:00', NULL, NULL),
(4, 'ไม้บรรทัด', 'C101', 'DOC_1234', '2', '0000-00-00', '0', '0', '0', '0', 5, '0', '0', 0, '2023-10-05 00:00:00', NULL, NULL),
(5, 'กรรไกร', 'C101', 'DOC_1234', '1', '0000-00-00', '0', '0', '0', '0', 5, '0', '0', 0, '2023-10-05 00:00:00', NULL, NULL),
(6, 'ไม้บรรทัด', 'C101', 'DOC_1234', '2', '0000-00-00', '0', '0', '0', '0', 5, '0', '0', 0, '2023-10-05 00:00:00', NULL, NULL),
(7, 'ac', 'ac', 'ACT2310091230151', '1', '2023-11-01', '0', '0', '0', '0', 6, '0', '0', 6, '2023-10-09 00:00:00', NULL, NULL),
(8, 'b', 'b', 'ACT2310091230151', '2', '2023-10-12', '0', '0', '0', '0', 4, '0', '0', 6, '2023-10-09 00:00:00', NULL, NULL),
(9, 'a', 'a', 'ACT2310102143203', '1', '2023-10-10', '0', '0', '0', '0', 4, '0', '0', 7, '2023-10-10 00:00:00', NULL, NULL),
(10, 'แหวน', 'ring01', 'ACT2310102183825', '1', NULL, 'ทดสอบ', 'เล็ก', 'ไก่', 'A', 6, 'ชิ้น', '', 7, '2023-10-10 00:00:00', NULL, NULL),
(11, 'เมาส์', 'mouse1', 'ACT2310102203430', '1', '2023-10-19', 'A', 'A', 'A', 'A', 4, 'ชิ้น', 'A', 7, '2023-10-10 00:00:00', NULL, NULL),
(12, 'ไม้จิ้มฟัน', 'AAA', 'ABCX2310113141813', '1', '2023-10-17', 'S', 'XL', 'กังนัม', 'Y', 4, 'ชิ้น', 'ไม่รู้', 7, '2023-10-11 00:00:00', NULL, NULL),
(13, 'ทดสอบ', 'test', 'ABCX2310113141813', '2', '2023-11-02', 'test', 'test', 'test', 'test', 5, 'test', 'test', 7, '2023-10-11 00:00:00', NULL, NULL),
(14, 'test1', 'test1', 'ABCX2310113141813', '3', '2023-11-01', 'test1', 'test1', 'test1', 'test1', 7, 'test1', 'test1', 7, '2023-10-11 00:00:00', NULL, NULL),
(17, 'ทดสอบ', 'ทดสอบ', 'ABCX2310113191512', '1', NULL, 'ทดสอบ', 'ทดสอบ', 'ทดสอบ', 'ทดสอบ', 4, 'ทดสอบ', '', 7, '2023-10-11 00:00:00', NULL, NULL),
(18, 'ทดสอบ1', 'ทดสอบ1', 'ABCX2310113191512', '2', '0000-00-00', 'ทดสอบ1', 'ทดสอบ1', 'ทดสอบ1', 'ทดสอบ1', 5, 'ทดสอบ1', '', 7, '2023-10-11 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `count` int(50) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `brand`, `size`, `model`, `count`, `updated_by`, `updated_at`) VALUES
(1, 'ทดสอบ', 'ทดสอบ', 'ทดสอบ', 'ทดสอบ', 4, '7', '2023-10-11 19:30:38'),
(2, 'ทดสอบ1', 'ทดสอบ1', 'ทดสอบ1', 'ทดสอบ1', 5, '7', '2023-10-11 19:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(255) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `code`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'โรงงานA', 'ACT', NULL, NULL, NULL, NULL),
(2, 'ABCD', 'ABCX', NULL, NULL, NULL, NULL),
(3, 'test', 'test', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `name`, `email`, `tel`, `role`, `position`, `created_at`, `updated_at`) VALUES
(6, '', '$2a$10$o0l6gbU9/9O9mnT64/Dvy.PL0aVC6I8QoOQvlqX89HvcZLicgvM4y', NULL, NULL, 'มาลี สวยมาก', 'a@a.com', '0812345678', 'user', 'พนักงาน', '2023-10-08 10:19:14', NULL),
(7, '', '$2a$10$6LcveYTwk7k0uc/ko/PF0etksogkJo6ZbtiQqrEX4uJYe3MXChJEe', NULL, NULL, 'แอดมิน1 แอดมิน1', 'admin@admin.com', '0899999999111', 'admin', 'ผู้ดูแล', '2023-10-10 00:45:35', NULL),
(8, '', '$2a$10$XpqS/S0tvOq98gA1dMBRtOvf9Q19T1s2gQ4opaivedU2XxI5L7Wv2', NULL, NULL, 'ทดสด สด1', 'k@k.com', '08222222221', 'admin', 'พนักงาน1', '2023-10-15 17:25:38', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approve_documents`
--
ALTER TABLE `approve_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents_list`
--
ALTER TABLE `documents_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
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
-- AUTO_INCREMENT for table `approve_documents`
--
ALTER TABLE `approve_documents`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `documents_list`
--
ALTER TABLE `documents_list`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
