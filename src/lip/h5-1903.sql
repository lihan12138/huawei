-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-04 07:20:03
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
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL COMMENT '商品id',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `price` float NOT NULL COMMENT '商品价格',
  `num` int(5) NOT NULL COMMENT '商品库存',
  `img` varchar(255) NOT NULL COMMENT '商品图片',
  `details` varchar(255) NOT NULL COMMENT '商品简介'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `num`, `img`, `details`) VALUES
(1, 'HUAWEI P30 Pro 麒麟980 超感光徕卡四摄 屏内指纹 双景录像 8GB+128GB 全网通版（天空之境）', 5480, 1000, '[{"src1":"./src/img/xilie1.jpg"},{"src2":"../img/huaweip30.jpg"}]', '[{"src1":"../img/huaweip30-xq1.jpg"},{"src2":"../img/huaweip30-xq2.jpg"},{"src3":"../img/huaweip30-xq3.jpg"},{"src4":"../img/huaweip30-xq4.jpg"},{"src5":"../img/huaweip30-xq5.jpg"}]'),
(2, '荣耀20 4800万超广角AI四摄 3200W美颜自拍 麒麟980全网通版8GB+128GB 幻影蓝', 2699, 122, '[{"src1":"./src/img/xilie2.jpg"},{"src2":"../img/rongyao20.jpg"}]', '[{"src1":"../img/rongyao20-xq1.jpg"},{"src2":"../img/rongyao20-xq2.jpg"},{"src3":"../img/rongyao20-xq3.jpg"},{"src4":"../img/rongyao20-xq4.jpg"},{"src5":"../img/rongyao20-xq5.jpg"}]'),
(3, '荣耀20i 3200万AI自拍 超广角三摄 全网通 6GB+64GB（渐变红）', 1599, 125, '[{"src1":"./src/img/xilie3.jpg"},{"src2":"../img/rongyao20i.jpg"}]', '[{"src1":"../img/rongyao20i-xq1.jpg"},{"src2":"../img/rongyao20i-xq2.jpg"},{"src3":"../img/rongyao20i-xq3.jpg"},{"src4":"../img/rongyao20i-xq4.jpg"},{"src5":"../img/rongyao20i-xq5.jpg"}]'),
(4, 'HUAWEI Mate 20 Pro (UD) 麒麟980 AI芯片 超广角徕卡三摄 OLED曲面屏 屏内指纹 8GB+128GB 全网通版（翡冷翠）', 5499, 550, '[{"src1":"./src/img/xilie4.png"},{"src2":"../img/huawei-mate20.jpg"}]', '[{"src1":"../img/huawei-mate20-xq1.jpg"},{"src2":"../img/huawei-mate20-xq2.jpg"},{"src3":"../img/huawei-mate20-xq3.jpg"},{"src4":"../img/huawei-mate20-xq4.jpg"},{"src5":"../img/huawei-mate20-xq5.jpg"}]');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(12) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_sex` varchar(10) NOT NULL,
  `user_age` int(3) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_emil` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_sex`, `user_age`, `user_password`, `user_emil`) VALUES
(100001, 'zhangsan', 'nan', 20, '123456', 'zhangsan@163com'),
(100002, 'lisi', 'nv', 25, '123456', 'lisi@163.com'),
(100003, 'wangwu', 'man', 21, '789456', 'wangwu@qq.com');

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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100004;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100019;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
