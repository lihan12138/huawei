-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-04 03:29:22
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `h5-1903`
--

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `user_id` int(20) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_email` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_email`) VALUES
(100018, '18764771253', '123456', 'lijihan@163.com'),
(100017, '18754809826', '123456', 'liuyun@qq.com'),
(100004, 'wangge', '987654321', 'wangge@qq.com'),
(100012, 'sadf', 'sadf', 'dsf'),
(100013, 'sadf', 'sadf', 'dsf'),
(100008, 'pingguo', 'pingguo', 'pingguo@qq.com'),
(100014, 'sadf', 'sadf', 'dsf'),
(100016, '13954781749', '123456', 'liuyun@qq.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100019;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
