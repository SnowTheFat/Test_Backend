-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 11:28 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `a_id` int(11) NOT NULL,
  `a_user` varchar(20) NOT NULL,
  `a_pass` varchar(20) NOT NULL,
  `a_name` varchar(100) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`a_id`, `a_user`, `a_pass`, `a_name`, `datesave`) VALUES
(1, 'test1', '111', 'admin_sunbuck_coffee1', '2021-06-21 03:06:50'),
(2, 'test2', '222', 'admin_sunbuck_coffee2', '2021-06-21 03:06:50'),
(7, 'snow', '12345', 'snow_thefat', '2021-06-24 04:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` int(11) NOT NULL,
  `m_user` varchar(20) NOT NULL,
  `m_pass` varchar(20) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `m_email` varchar(100) NOT NULL,
  `m_tel` varchar(20) NOT NULL,
  `m_address` varchar(200) NOT NULL,
  `date_save` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `m_user`, `m_pass`, `m_name`, `m_email`, `m_tel`, `m_address`, `date_save`) VALUES
(1, '112', '111', 'sunbuck_coffee', 'sunbuck@hotmail.com', '087657831', '   181 หมู่ 10 ต.โนนสุง อ.บ้านผือ จ.อุดรธานี 41160   ', '2018-06-16 01:49:48'),
(4, '666', '666', 'eeee', 'eeee@amial.com', '0388241313', '72/33-34 ถ.ศุขประยูร ต.หน้าเมือง \r\nอ.เมือง จ.ฉะเชิงเทรา 24000', '2018-06-16 02:11:21'),
(5, '456', '654', 'waiya', 'waiy@gmail.com', '032419717', '252/1-2 ม.6 ถ.เพชรเกษม ต.บ้านหม้อ \r\nอ.เมือง จ.เพชรบุรี 76000', '2018-06-16 02:12:45'),
(6, '88', '8888', 'mmmm', 'mmmm@m.com', '038467809', '104/32 หมู่ 2 ถนนพระยาสัจจา ต.เสม็ด \r\nอ.เมือง จ.ชลบุรี 20000', '2018-06-16 02:18:42'),
(7, '999', '999', 'tbanbi', 'eoom@n.com', '038860799', '109/10-11 ถ.จันทอุดม ต.เชิงเนิน \r\nอ.เมือง จ.ระยอง 21000	', '2018-06-16 02:20:34'),
(8, '765', '765', 'moota', 'aaaa@gmail.com', '053302450', '459/98 ถ.เจริญเมือง ต.วัดเกตุ \r\nอ.เมือง จ.เชียงใหม่ 50000', '2018-06-16 02:23:37'),
(9, '777', '777', 'foodra', 'wsss@gmail.com', '053733708', '111/12-13 ม.13 ต.สันทราย \r\nอ.เมือง จ.เชียงราย 57000', '2018-06-16 02:26:55'),
(10, '144', '311', 'wiratai', 'boom@m.com', '043324754', '269/64-65 ม.4 ถ.มิตรภาพ \r\nอ.เมือง จ.ขอนแก่น 40000', '2018-06-16 02:29:48'),
(11, '333', '899', 'sadart', 'roomne@n.com', '044262223', '1982/4-5 ถ.มิตรภาพ ต.ในเมือง \r\nอ.เมือง จ.นครราชสีมา 30000', '2018-06-16 02:31:19'),
(12, '904', '1243', 'Snow', 'sow_thefat@gmail.com', '0990630468', '88/36 หมู่ 13 ตำบลบางตีนเป็ด อำเภอเมือง จ.ฉะเชิงเทรา 24000', '2021-06-24 06:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL,
  `p_detail` text NOT NULL,
  `hot` varchar(100) NOT NULL,
  `cool` varchar(100) NOT NULL,
  `p_img` varchar(200) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `type_id`, `p_detail`, `hot`, `cool`, `p_img`, `datesave`) VALUES
(10, 'กาแฟอเมริกาโน่', 1, 'กาแฟอเมริกาโน่ มีทั้งร้อนและเย็น', '50', '55', 'p_img184107872020210624_161158.jpg', '2021-06-24 09:11:58'),
(11, 'กาแฟลาเต้', 2, 'กาแฟลาเต้ มีทั้งร้อนและเย็น', '60', '65', 'p_img176384499720210624_161630.jpg', '2021-06-24 09:16:30'),
(12, 'มอคค่า', 4, 'กาแฟมอคค่า มีทั้งร้อนและเย็น', '65', '70', 'p_img10969067420210624_161711.jpeg', '2021-06-24 09:17:11'),
(13, 'ชาเขียว', 7, 'ชาเขียว มีทั้งร้อนและเย็น', '65', '70', 'p_img174453126920210624_161759.jpg', '2021-06-24 09:17:59'),
(14, 'โกโก้', 8, 'โกโก้ มีทั้งร้อนและเย็น                          ', '60', '65', 'p_img139088477820210624_161837.jpg', '2021-06-24 09:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `type_hot` varchar(10) NOT NULL,
  `type_cool` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type_name`, `type_hot`, `type_cool`) VALUES
(1, 'Americano', '55', 60),
(2, 'Latte', '60', 65),
(4, 'Mocha', '65', 70),
(7, 'GreenTea', '65', 70),
(8, 'Cocoa ', '60', 65);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_types`
--

CREATE TABLE `tbl_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `type_hot` varchar(100) NOT NULL,
  `type_cool` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
