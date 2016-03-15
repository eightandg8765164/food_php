-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2016-03-15 14:01:58
-- 伺服器版本: 5.7.10-log
-- PHP 版本： 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `ordering_sys`
--

-- --------------------------------------------------------

--
-- 資料表結構 `belongness`
--

CREATE TABLE `belongness` (
  `u_mail` varchar(50) NOT NULL COMMENT 'User信箱[PK, FK]',
  `r_id` int(10) NOT NULL COMMENT 'Room ID[PK, FK]',
  `b_privilege` tinyint(1) NOT NULL COMMENT '1-房主;0-房客'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `inclusion`
--

CREATE TABLE `inclusion` (
  `res_id` int(10) NOT NULL COMMENT 'Restaurant ID[PK, FK]',
  `r_id` int(10) NOT NULL COMMENT 'Room ID[PK, FK]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `line`
--

CREATE TABLE `line` (
  `l_id` int(10) NOT NULL COMMENT 'Line ID[PK]',
  `m_id` int(10) NOT NULL COMMENT 'Meal ID[FK]',
  `o_id` int(10) NOT NULL COMMENT 'Orders ID[FK]',
  `l_amount` int(3) NOT NULL COMMENT '清單點餐數量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `meal`
--

CREATE TABLE `meal` (
  `m_id` int(10) NOT NULL COMMENT 'Meal ID[PK]',
  `res_id` int(10) NOT NULL COMMENT 'Restaurant ID[PK]',
  `m_name` varchar(50) NOT NULL COMMENT '餐點名稱',
  `m_price` int(10) NOT NULL COMMENT '餐點價格'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `o_id` int(10) NOT NULL COMMENT '訂單辨識碼[PK]',
  `u_mail` varchar(50) NOT NULL COMMENT 'User信箱[FK]',
  `r_id` int(10) NOT NULL COMMENT 'Room ID[FK]',
  `o_date` datetime NOT NULL COMMENT '訂單時間',
  `o_ispaid` tinyint(1) NOT NULL COMMENT '1-已付清;0-未付清'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `restaurant`
--

CREATE TABLE `restaurant` (
  `res_id` int(10) NOT NULL COMMENT 'Restaurant[PK]',
  `res_name` varchar(50) NOT NULL COMMENT '餐廳名稱',
  `res_phone` varchar(20) NOT NULL COMMENT '餐廳連絡電話',
  `res_time` varchar(50) NOT NULL COMMENT '餐廳營業時段'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `room`
--

CREATE TABLE `room` (
  `r_id` int(10) NOT NULL COMMENT 'Room ID[PK]',
  `r_name` varchar(50) NOT NULL COMMENT '房間名稱',
  `r_place` varchar(50) NOT NULL COMMENT '買完交貨地點',
  `r_start` datetime NOT NULL COMMENT '房間開始時間',
  `r_end` datetime NOT NULL COMMENT '房間結束時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `u_mail` varchar(50) NOT NULL COMMENT '使用者帳號[PK]',
  `u_pwd` varchar(30) NOT NULL COMMENT '使用者登入密碼',
  `u_name` varchar(30) DEFAULT NULL COMMENT '使用者的姓名',
  `u_phone` varchar(20) NOT NULL COMMENT '使用者手機號碼(10碼)',
  `u_token` varchar(50) NOT NULL COMMENT '認證帳號token',
  `u_token_exptime` int(10) NOT NULL COMMENT '認證碼有效時間',
  `u_status` tinyint(1) NOT NULL COMMENT '1-已認證;0-未認證',
  `u_regtime` int(10) NOT NULL COMMENT '註冊時間',
  `u_isroot` tinyint(1) NOT NULL COMMENT '1-管理員;0-一般使用者'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `belongness`
--
ALTER TABLE `belongness`
  ADD PRIMARY KEY (`u_mail`,`r_id`),
  ADD KEY `belongness_room_fk` (`r_id`);

--
-- 資料表索引 `inclusion`
--
ALTER TABLE `inclusion`
  ADD PRIMARY KEY (`res_id`,`r_id`),
  ADD KEY `inclusion_room_fk` (`r_id`);

--
-- 資料表索引 `line`
--
ALTER TABLE `line`
  ADD PRIMARY KEY (`l_id`),
  ADD KEY `m_id` (`m_id`),
  ADD KEY `o_id` (`o_id`);

--
-- 資料表索引 `meal`
--
ALTER TABLE `meal`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `res_id` (`res_id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`) USING BTREE,
  ADD KEY `r_id` (`r_id`);

--
-- 資料表索引 `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`res_id`);

--
-- 資料表索引 `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`r_id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_mail`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `line`
--
ALTER TABLE `line`
  MODIFY `l_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Line ID[PK]';
--
-- 使用資料表 AUTO_INCREMENT `meal`
--
ALTER TABLE `meal`
  MODIFY `m_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Meal ID[PK]';
--
-- 使用資料表 AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '訂單辨識碼[PK]';
--
-- 使用資料表 AUTO_INCREMENT `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `res_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Restaurant[PK]';
--
-- 使用資料表 AUTO_INCREMENT `room`
--
ALTER TABLE `room`
  MODIFY `r_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Room ID[PK]';
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `belongness`
--
ALTER TABLE `belongness`
  ADD CONSTRAINT `belongness_room_fk` FOREIGN KEY (`r_id`) REFERENCES `room` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `belongness_user_fk` FOREIGN KEY (`u_mail`) REFERENCES `user` (`u_mail`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `inclusion`
--
ALTER TABLE `inclusion`
  ADD CONSTRAINT `inclusion_restaurant_fk` FOREIGN KEY (`res_id`) REFERENCES `restaurant` (`res_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inclusion_room_fk` FOREIGN KEY (`r_id`) REFERENCES `room` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `line`
--
ALTER TABLE `line`
  ADD CONSTRAINT `line_meal_fk` FOREIGN KEY (`m_id`) REFERENCES `meal` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `line_orders_fk` FOREIGN KEY (`o_id`) REFERENCES `orders` (`o_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `meal`
--
ALTER TABLE `meal`
  ADD CONSTRAINT `meal_restaurant_fk` FOREIGN KEY (`res_id`) REFERENCES `restaurant` (`res_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_rooms_fk` FOREIGN KEY (`r_id`) REFERENCES `room` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
