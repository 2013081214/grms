-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2015 �?06 �?20 �?10:38
-- 服务器版本: 5.6.11
-- PHP 版本: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `grms`
--
CREATE DATABASE IF NOT EXISTS `grms` DEFAULT CHARACTER SET utf32 COLLATE utf32_general_ci;
USE `grms`;

-- --------------------------------------------------------

--
-- 表的结构 `branchs`
--

CREATE TABLE IF NOT EXISTS `branchs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lst_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lst_id` (`lst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `branch_right`
--

CREATE TABLE IF NOT EXISTS `branch_right` (
  `branch_id` int(11) DEFAULT NULL,
  `right_id` int(11) DEFAULT NULL,
  KEY `branch_id` (`branch_id`),
  KEY `right_id` (`right_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `branch_user`
--

CREATE TABLE IF NOT EXISTS `branch_user` (
  `branch_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `branch_id` (`branch_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `descp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `rights`
--

CREATE TABLE IF NOT EXISTS `rights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `rights`
--

INSERT INTO `rights` (`id`, `name`) VALUES
(1, '权限一'),
(2, '权限二'),
(3, '权限三'),
(4, '权限四'),
(5, '权限五'),
(6, '权限六'),
(7, '权限七'),
(8, '权限八');

-- --------------------------------------------------------

--
-- 表的结构 `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, '角色一'),
(2, '角色二'),
(3, '角色三'),
(4, '角色四'),
(5, '角色五'),
(6, '角色六');
(7, '角色七');
(8, '角色八');
-- --------------------------------------------------------

--
-- 表的结构 `role_right`
--

CREATE TABLE IF NOT EXISTS `role_right` (
  `role_id` int(11) DEFAULT NULL,
  `right_id` int(11) DEFAULT NULL,
  KEY `right_id` (`right_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `role_right`
--

INSERT INTO `role_right` (`role_id`, `right_id`) VALUES
(1, 1),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(3, 4);

-- --------------------------------------------------------

--
-- 表的结构 `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 3);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `sex`, `email`, `tel`, `password`) VALUES
(1, 'admin', '男', 'xxx@xx.com', '10086', '123'),
(2, '用户一', '男', '333', '1231', 'qw'),
(3, '用户二', '男', '589@qq.com', '10011', 'nebg'),
(4, '用户三', '男', '5XX@qq.com', '114', 'nebg'),
(5, '用户四', '女', '1239@qq.com', '154', 'nbgd'),
(6, '用户五', '男', '5X9@qq.com', '114', 'nebg'),
(7, '用户六', '女', '58921@qq.com', '123', 'nebg'),
(8, '用户七', '男', '58XX9@qq.com', '114321', 'nebg'),
(13, '用户八', '男', '5X9@163.com', '123', '123');

-- --------------------------------------------------------

--
-- 表的结构 `user_right`
--

CREATE TABLE IF NOT EXISTS `user_right` (
  `user_id` int(11) DEFAULT NULL,
  `right_id` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `right_id` (`right_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_right`
--

INSERT INTO `user_right` (`user_id`, `right_id`) VALUES
(1, 1),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(3, 4);

--
-- 限制导出的表
--

--
-- 限制表 `branchs`
--
ALTER TABLE `branchs`
  ADD CONSTRAINT `branchs_ibfk_1` FOREIGN KEY (`lst_id`) REFERENCES `branchs` (`id`) ON DELETE CASCADE;

--
-- 限制表 `branch_right`
--
ALTER TABLE `branch_right`
  ADD CONSTRAINT `branch_right_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branchs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `branch_right_ibfk_2` FOREIGN KEY (`right_id`) REFERENCES `rights` (`id`) ON DELETE CASCADE;

--
-- 限制表 `branch_user`
--
ALTER TABLE `branch_user`
  ADD CONSTRAINT `branch_user_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branchs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `branch_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `role_right`
--
ALTER TABLE `role_right`
  ADD CONSTRAINT `role_right_ibfk_1` FOREIGN KEY (`right_id`) REFERENCES `rights` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_right_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- 限制表 `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- 限制表 `user_right`
--
ALTER TABLE `user_right`
  ADD CONSTRAINT `user_right_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_right_ibfk_2` FOREIGN KEY (`right_id`) REFERENCES `rights` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
