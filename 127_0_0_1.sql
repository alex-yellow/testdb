-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 22 2022 г., 20:03
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `auth`
--
CREATE DATABASE IF NOT EXISTS `auth` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `auth`;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'user', '12345'),
(2, 'admin', '123'),
(3, 'user2', '1234'),
(4, 'user3', '1234'),
(5, 'user4', '12345'),
(6, 'user5', '123'),
(7, 'user6', '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- База данных: `db_inventory`
--
CREATE DATABASE IF NOT EXISTS `db_inventory` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_inventory`;

-- --------------------------------------------------------

--
-- Структура таблицы `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `STRT` varchar(30) NOT NULL,
  `END` varchar(30) NOT NULL,
  `INCREMENT` int(11) NOT NULL,
  `DESCRIPTION` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `STRT`, `END`, `INCREMENT`, `DESCRIPTION`) VALUES
(1, '00001', '14', 1, 'Customer'),
(3, '20122', '8', 1, 'Suplier'),
(4, '32302', '15', 1, 'StockIn'),
(5, '102201', '26', 1, 'StockOut'),
(6, '53132', '25', 1, 'StockReturn'),
(7, '0000', '5', 1, 'itemid'),
(17, 'A0000', '4', 1, 'Accessories'),
(18, 'H0000', '1', 1, 'Hose'),
(19, 'P0000', '5', 1, 'PIPE'),
(20, 'M0000', '11', 1, 'MOTORS MACHINE'),
(21, 'B0000', '4', 1, 'BELT'),
(22, 'A0000', '19', 1, 'ACCESORIES'),
(23, 'B0000', '1', 1, 'BOLT');

-- --------------------------------------------------------

--
-- Структура таблицы `tblitems`
--

CREATE TABLE `tblitems` (
  `ITEMID` varchar(30) NOT NULL,
  `NAME` varchar(90) NOT NULL,
  `DESCRIPTION` varchar(90) NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `PRICE` double NOT NULL,
  `QTY` int(11) NOT NULL,
  `UNIT` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblitems`
--

INSERT INTO `tblitems` (`ITEMID`, `NAME`, `DESCRIPTION`, `TYPE`, `PRICE`, `QTY`, `UNIT`) VALUES
('A000010', 'Piston Ring \"Yamana\"', 'Motor Parts', 'ACCESORIES', 350, 339, 'box'),
('A000011', 'Nut Lack', 'Motor Parts', 'ACCESORIES', 45, 291, 'pcs.'),
('A000012', 'Fly Wheel Nut', 'Motor Parts', 'ACCESORIES', 100, 384, 'pcs.'),
('A000013', 'Nut Lack', 'Motor Parts', 'ACCESORIES', 45, 195, 'kilo'),
('A000014', 'Tapelone', 'Motor Parts', 'ACCESORIES', 150, 40, 'box'),
('A000015', 'Main Bering', 'Motor Parts', 'ACCESORIES', 350, 200, 'box'),
('A000016', 'Con. Rod', 'Motor Parts', 'ACCESORIES', 150, 250, 'box'),
('A000017', 'Bolt', 'Motor Bolt', 'ACCESORIES', 50, 394, 'kilo'),
('A000018', 'Valve Spring', 'Motor Parts', 'ACCESORIES', 250, 300, 'box'),
('A00002', 'Fuel Tank', 'Motor Tank', 'ACCESORIES', 350, 30, 'box'),
('A00003', 'Nozzle Tip', 'Motor Tool', 'ACCESORIES', 50, 50, 'box'),
('A00004', 'Oil Filter', 'Motor Tool', 'ACCESORIES', 40, 50, 'box'),
('A00005', 'Fan Blade', 'Motor Fan', 'ACCESORIES', 250, 15, 'box'),
('A00006', 'Nut', 'Motor parts', 'ACCESORIES', 25, 400, 'pcs.'),
('A00007', 'Fly Wheel Nut', 'Motor Part', 'ACCESORIES', 50, 198, 'pcs.'),
('A00008', 'Oil Dip Stick', 'Motor Tool ', 'ACCESORIES', 40, 49, 'box'),
('A00009', 'Cylinder Head Gasket', 'Motor Parts', 'ACCESORIES', 150, 99, 'box'),
('B00001', 'Fujibelt', 'Motor Belt', 'BELT', 250, 55, 'pcs.'),
('B00002', 'Bandbelt', 'Motor Belt ', 'BELT', 300, 57, 'pcs.'),
('B00003', 'Mitsubishibelt', 'Motor Belt', 'BELT', 350, 65, 'pcs.'),
('M00001', 'Power Spry', 'water spry', 'MOTORS MACHINE', 2000, 60, 'pcs.'),
('M000010', 'Electric Motor', 'Machine', 'MOTORS MACHINE', 2000, 95, 'pcs.'),
('M00002', 'Water Cool', 'water machine', 'MOTORS MACHINE', 2500, 109, 'pcs.'),
('M00003', 'Air Cool', 'Air exit', 'MOTORS MACHINE', 3000, 45, 'pcs.'),
('M00004', 'Electecal Water Pump', 'water spry', 'MOTORS MACHINE', 4500, 47, 'pcs.'),
('M00005', 'Wilding Machine', '200AMPS OR 300 AMPS', 'MOTORS MACHINE', 10000, 40, 'pcs.'),
('M00006', 'Gasoline Engine', 'Power Engine', 'MOTORS MACHINE', 10500, 40, 'pcs.'),
('M00007', 'Water Pump', 'YAMMA MACHINE', 'MOTORS MACHINE', 10000, 40, 'pcs.'),
('M00008', 'Grass Cutter', 'YAMAHA POWER', 'MOTORS MACHINE', 15000, 30, 'pcs.'),
('M00009', 'P.U.T Bulb', 'FireFly ', 'MOTORS MACHINE', 5000, 30, 'pcs.'),
('P00001', 'Piting Pipe', 'Long pipe', 'PIPE', 1200, 30, 'meter'),
('P00002', 'Adapter Pipe', 'Short Pipe', 'PIPE', 100, 49, 'pcs.'),
('P00003', 'T Pipe', 'Plastic Pipe', 'PIPE', 100, 49, 'pcs.'),
('P00004', 'G.I Piting', 'Long Pipe', 'PIPE', 250, 29, 'pcs.');

-- --------------------------------------------------------

--
-- Структура таблицы `tblperson`
--

CREATE TABLE `tblperson` (
  `ID` int(11) NOT NULL,
  `SUPLIERCUSTOMERID` varchar(90) DEFAULT NULL,
  `FIRSTNAME` varchar(90) DEFAULT NULL,
  `LASTNAME` varchar(90) DEFAULT NULL,
  `ADDRESS` varchar(90) DEFAULT NULL,
  `TELEPHONE` varchar(30) DEFAULT NULL,
  `MOBILE` varchar(30) DEFAULT NULL,
  `TYPE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblperson`
--

INSERT INTO `tblperson` (`ID`, `SUPLIERCUSTOMERID`, `FIRSTNAME`, `LASTNAME`, `ADDRESS`, `TELEPHONE`, `MOBILE`, `TYPE`) VALUES
(4, '000011', 'Jude', 'Reyes', 'Bacolod City', '444114', '09000000000', 'Customer'),
(5, '000013', 'Adones', 'Evangelista', 'Kabankalan City', '4500024', '09000000000', 'Customer'),
(7, '000015', 'Nico', 'Raluto', 'Himamaylan City', '499855', '09000000000', 'Customer'),
(8, '000016', 'Grace', 'Patulada', 'Binalbagan', '4799878', '09000000000', 'Customer'),
(9, '000019', 'Prince', 'King', 'Hinigaran', '471822', '09000000000', 'Customer'),
(10, '0000110', 'Juanito', 'Banana', 'Ilog', '', '09000000000', 'Customer'),
(11, '0000111', 'Kimmy', 'Mama', 'Binalbagan', '', '09000000000', 'Customer'),
(12, '0000112', 'Jezah', 'LIma', 'Sipalay', '', '09000000000', 'Customer'),
(13, '0000113', 'Mark', 'Jason', 'Bacolod City', '', '09000000000', 'Customer');

-- --------------------------------------------------------

--
-- Структура таблицы `tblsettings`
--

CREATE TABLE `tblsettings` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `PARA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblsettings`
--

INSERT INTO `tblsettings` (`ID`, `DESCRIPTION`, `PARA`) VALUES
(2, 'pcs.', 'Unit'),
(3, 'box', 'Unit'),
(6, 'PIPE', 'Category'),
(7, 'MOTORS MACHINE', 'Category'),
(8, 'BELT', 'Category'),
(9, 'ACCESORIES', 'Category'),
(10, 'BOLT', 'Category'),
(11, '', 'Category'),
(13, 'meter', 'Unit'),
(14, 'kilo', 'Unit');

-- --------------------------------------------------------

--
-- Структура таблицы `tblstock_in_out`
--

CREATE TABLE `tblstock_in_out` (
  `STOCKOUTID` int(11) NOT NULL,
  `TRANSACTIONNUMBER` varchar(30) NOT NULL,
  `ITEMID` varchar(30) NOT NULL,
  `TRANSACTIONDATE` date NOT NULL,
  `QTY` int(11) NOT NULL,
  `TOTALPRICE` double NOT NULL,
  `SUPLIERCUSTOMERID` varchar(30) NOT NULL,
  `REMARKS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `tblstock_return`
--

CREATE TABLE `tblstock_return` (
  `STOCKRETURNID` int(11) NOT NULL,
  `STOCKRETURNNUMBER` varchar(30) NOT NULL,
  `ITEMID` varchar(30) NOT NULL,
  `RETURNDATE` date NOT NULL,
  `QTY` int(11) NOT NULL,
  `TOTALPRICE` double NOT NULL,
  `OWNER_CUS_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `tblsuplier`
--

CREATE TABLE `tblsuplier` (
  `ID` int(11) NOT NULL,
  `SUPLIERID` varchar(90) DEFAULT NULL,
  `FIRSTNAME` varchar(90) DEFAULT NULL,
  `LASTNAME` varchar(90) DEFAULT NULL,
  `ADDRESS` varchar(90) DEFAULT NULL,
  `TELEPHONE` varchar(30) DEFAULT NULL,
  `MOBILE` varchar(30) DEFAULT NULL,
  `TYPE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblsuplier`
--

INSERT INTO `tblsuplier` (`ID`, `SUPLIERID`, `FIRSTNAME`, `LASTNAME`, `ADDRESS`, `TELEPHONE`, `MOBILE`, `TYPE`) VALUES
(5, '20201223', 'Janry', 'Tano', 'Kab. city', '44-55-5555', '09496585632', 'SUPLIER');

-- --------------------------------------------------------

--
-- Структура таблицы `tbltransaction`
--

CREATE TABLE `tbltransaction` (
  `STOCKINID` int(11) NOT NULL,
  `TRANSACTIONNUMBER` varchar(30) DEFAULT NULL,
  `TRANSACTIONDATE` date NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `SUPLIERCUSTOMERID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbltransaction`
--

INSERT INTO `tbltransaction` (`STOCKINID`, `TRANSACTIONNUMBER`, `TRANSACTIONDATE`, `TYPE`, `SUPLIERCUSTOMERID`) VALUES
(1, '4908731', '2015-02-25', 'StockOut', '1220117'),
(2, '1022011', '2015-02-25', 'StockOut', '000011'),
(3, '4908731', '2015-02-25', 'Returned', '1220117'),
(4, '1022011', '2015-02-25', 'Returned', '11'),
(5, '4908731', '2015-02-25', 'Returned', '1220117'),
(6, '4908731', '2015-02-25', 'Returned', '1220117'),
(7, '1022012', '2015-02-25', 'StockOut', '000011'),
(8, '1022012', '2015-02-25', 'Returned', '11'),
(9, '1022013', '2015-02-25', 'StockOut', '000011'),
(10, '1022014', '2015-02-25', 'StockOut', '1220117'),
(11, '1022015', '2015-02-25', 'StockOut', '000011'),
(12, '1022016', '2015-02-25', 'StockOut', '000016'),
(13, '1022017', '2015-02-26', 'StockOut', '000016'),
(14, '1022018', '2015-02-26', 'StockOut', '000013'),
(15, '1022019', '2015-02-26', 'StockOut', '0000110'),
(16, '1022019', '2015-02-26', 'Returned', '110'),
(17, '10220110', '2015-02-26', 'StockOut', '000019'),
(18, '10220110', '2015-02-26', 'Returned', '19'),
(19, '10220111', '2015-02-26', 'StockOut', '000011'),
(20, '10220112', '2015-02-26', 'StockOut', '000013'),
(21, '10220112', '2015-02-26', 'Returned', '13'),
(22, '10220113', '2015-02-26', 'StockOut', '0000112'),
(23, '10220114', '2015-02-26', 'StockOut', '0000113'),
(24, '10220115', '2015-02-26', 'StockOut', '0000111'),
(25, '10220116', '2015-02-26', 'StockOut', '0000112'),
(26, '10220117', '2015-02-27', 'StockOut', '0000112'),
(27, '10220117', '2015-02-27', 'Returned', '112'),
(28, '10220118', '2019-01-06', 'StockOut', '000016'),
(29, '10220111', '2019-01-06', 'Returned', '11'),
(30, '10220119', '2021-02-22', 'StockOut', '1022017'),
(31, '10220120', '2021-02-22', 'StockOut', '000011'),
(32, '10220121', '2021-02-22', 'StockOut', '000019'),
(33, '10220122', '2021-02-22', 'StockOut', '000016'),
(34, '10220123', '2021-02-22', 'StockOut', '000011'),
(35, '10220123', '2021-02-22', 'Returned', '000011'),
(36, '10220124', '2021-02-22', 'StockOut', '000011'),
(37, '10220125', '2021-02-22', 'StockOut', '000011'),
(38, '10220125', '2021-02-22', 'Returned', '000011');

-- --------------------------------------------------------

--
-- Структура таблицы `tblvendor`
--

CREATE TABLE `tblvendor` (
  `VENDORID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(90) DEFAULT NULL,
  `user_name` varchar(90) DEFAULT NULL,
  `pass` varchar(90) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`user_id`, `name`, `user_name`, `pass`, `type`) VALUES
(1, 'paul Arroz', 'paul', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(3, 'cedrex', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tblitems`
--
ALTER TABLE `tblitems`
  ADD PRIMARY KEY (`ITEMID`);

--
-- Индексы таблицы `tblperson`
--
ALTER TABLE `tblperson`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CUSID` (`SUPLIERCUSTOMERID`);

--
-- Индексы таблицы `tblsettings`
--
ALTER TABLE `tblsettings`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tblstock_in_out`
--
ALTER TABLE `tblstock_in_out`
  ADD PRIMARY KEY (`STOCKOUTID`);

--
-- Индексы таблицы `tblstock_return`
--
ALTER TABLE `tblstock_return`
  ADD PRIMARY KEY (`STOCKRETURNID`);

--
-- Индексы таблицы `tblsuplier`
--
ALTER TABLE `tblsuplier`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SUPID` (`SUPLIERID`);

--
-- Индексы таблицы `tbltransaction`
--
ALTER TABLE `tbltransaction`
  ADD PRIMARY KEY (`STOCKINID`);

--
-- Индексы таблицы `tblvendor`
--
ALTER TABLE `tblvendor`
  ADD PRIMARY KEY (`VENDORID`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `tblperson`
--
ALTER TABLE `tblperson`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `tblsettings`
--
ALTER TABLE `tblsettings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `tblstock_in_out`
--
ALTER TABLE `tblstock_in_out`
  MODIFY `STOCKOUTID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tblstock_return`
--
ALTER TABLE `tblstock_return`
  MODIFY `STOCKRETURNID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tblsuplier`
--
ALTER TABLE `tblsuplier`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tbltransaction`
--
ALTER TABLE `tbltransaction`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `tblvendor`
--
ALTER TABLE `tblvendor`
  MODIFY `VENDORID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- База данных: `db_leave`
--
CREATE DATABASE IF NOT EXISTS `db_leave` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_leave`;

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `EMPID` varchar(60) NOT NULL,
  `emp_fname` varchar(60) DEFAULT NULL,
  `emp_lname` varchar(60) DEFAULT NULL,
  `emp_mname` varchar(60) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(100) DEFAULT NULL,
  `emp_sex` varchar(10) DEFAULT NULL,
  `emp_age` int(10) DEFAULT NULL,
  `emerg_contct` varchar(25) DEFAULT NULL,
  `REMAININGLEAVE` double NOT NULL,
  `DEFAULTLEAVE` double NOT NULL,
  `ONLEAVE` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`EMPID`, `emp_fname`, `emp_lname`, `emp_mname`, `address`, `contact`, `status`, `birth_date`, `birth_place`, `emp_sex`, `emp_age`, `emerg_contct`, `REMAININGLEAVE`, `DEFAULTLEAVE`, `ONLEAVE`) VALUES
('000010', 'Jude', 'Suarez', 'R', 'Bacolod City', '09090990909', 'Single', '1997-03-12', 'Bacolod', 'MALE', NULL, '09090909009', 30, 30, 0),
('000011', 'Adones', 'Evangilista', 'B', 'Kabankalan City', '09099090909', 'Married', '1994-03-12', 'Kabankalan', 'MALE', NULL, '09090909090', 30, 30, 0),
('000012', 'Mark', 'Jason', 'S', 'Bacolod City', '09989898087', 'Single', '1997-10-31', 'Bacolod', 'MALE', NULL, '09878786787', 30, 30, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `employee_workinfo`
--

CREATE TABLE `employee_workinfo` (
  `id` int(10) NOT NULL,
  `EMPID` int(30) NOT NULL,
  `d_rate` double DEFAULT NULL,
  `p_method` varchar(60) DEFAULT NULL,
  `position` varchar(60) DEFAULT NULL,
  `w_status` varchar(60) DEFAULT NULL,
  `d_hired` date DEFAULT NULL,
  `DEPARTMENT` varchar(50) NOT NULL,
  `w_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `employee_workinfo`
--

INSERT INTO `employee_workinfo` (`id`, `EMPID`, `d_rate`, `p_method`, `position`, `w_status`, `d_hired`, `DEPARTMENT`, `w_type`) VALUES
(56, 10, 500, 'Monthly', 'Staff', NULL, '2021-03-12', 'Human Resource Dept.', 'Regular'),
(57, 11, 500, 'Monthly', 'Election Committee', NULL, '2021-03-12', 'Finance Dept.', 'Regular'),
(58, 12, 500, 'Monthly', 'Clerk', NULL, '2021-03-12', 'Engineering Service Dept.', 'Regular');

-- --------------------------------------------------------

--
-- Структура таблицы `leave`
--

CREATE TABLE `leave` (
  `LEAVEID` int(11) NOT NULL,
  `EMPID` int(11) NOT NULL,
  `LEAVECODE` int(11) NOT NULL,
  `LEAVEFORMAT` varchar(30) NOT NULL,
  `LEAVEAPPLIED` varchar(50) NOT NULL,
  `DATEFROM` datetime NOT NULL,
  `DATETO` datetime NOT NULL,
  `LEAVEDATE` datetime NOT NULL,
  `LEAVEENDDATE` datetime NOT NULL,
  `NODAYS` double NOT NULL,
  `REASON` text NOT NULL,
  `DAYOFFSCHEDULE` datetime NOT NULL,
  `REMARKS` varchar(30) NOT NULL,
  `APPLIED` tinyint(1) NOT NULL,
  `STATUS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `leave`
--

INSERT INTO `leave` (`LEAVEID`, `EMPID`, `LEAVECODE`, `LEAVEFORMAT`, `LEAVEAPPLIED`, `DATEFROM`, `DATETO`, `LEAVEDATE`, `LEAVEENDDATE`, `NODAYS`, `REASON`, `DAYOFFSCHEDULE`, `REMARKS`, `APPLIED`, `STATUS`) VALUES
(33, 10, 0, 'With Pay', 'Sick', '2021-03-12 01:44:09', '2021-03-12 01:44:09', '2021-03-12 01:44:09', '2021-03-20 01:44:09', -8, 'Lupot', '2021-03-12 01:44:09', 'Approved', 1, 'Approved'),
(34, 11, 0, 'With Pay', 'Sick', '2021-03-12 08:35:19', '2021-03-12 08:35:19', '2021-03-13 02:35:19', '2021-03-19 02:35:19', -6, 'Im sick', '2021-03-12 02:35:19', 'Approved', 1, 'Approved'),
(35, 12, 0, 'With Pay', 'Sick', '2021-03-12 02:41:22', '2021-03-12 02:41:22', '2021-03-13 02:41:22', '2021-03-19 02:41:22', -6, 'Sick', '2021-03-12 02:41:22', 'Approved', 1, 'Approved');

-- --------------------------------------------------------

--
-- Структура таблицы `tblapproveleave`
--

CREATE TABLE `tblapproveleave` (
  `APPROVEDID` int(11) NOT NULL,
  `LEAVEID` int(11) NOT NULL,
  `LEAVECODE` varchar(30) NOT NULL,
  `EMPID` varchar(30) NOT NULL,
  `NODAYSAPPROVE` int(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `STATUS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `id` int(11) NOT NULL,
  `STRT` varchar(30) NOT NULL,
  `END` int(11) NOT NULL,
  `INCREMENT` int(11) NOT NULL,
  `DESCRIPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblautonumber`
--

INSERT INTO `tblautonumber` (`id`, `STRT`, `END`, `INCREMENT`, `DESCRIPTION`) VALUES
(1, '00001', 3, 1, 'employee'),
(2, '1032', 10, 1, 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `tbldepartment`
--

CREATE TABLE `tbldepartment` (
  `ID` int(11) NOT NULL,
  `DEPARTMENT` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbldepartment`
--

INSERT INTO `tbldepartment` (`ID`, `DEPARTMENT`) VALUES
(2, 'Corporal Communication Dept.'),
(4, 'Corporate Planning Dept.'),
(5, 'Finance Dept.'),
(6, 'Engineering Service Dept.'),
(7, 'Transmission & Distribution Dept.'),
(8, 'Human Resource Depts.');

-- --------------------------------------------------------

--
-- Структура таблицы `tblleaveinfo`
--

CREATE TABLE `tblleaveinfo` (
  `LEAVEID` int(11) NOT NULL,
  `EMPID` varchar(11) NOT NULL,
  `REASONS` varchar(30) NOT NULL,
  `LEAVEDAYS` int(11) NOT NULL,
  `DEFAULT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblleaveinfo`
--

INSERT INTO `tblleaveinfo` (`LEAVEID`, `EMPID`, `REASONS`, `LEAVEDAYS`, `DEFAULT`) VALUES
(127, '000010', 'SICK', 15, 0),
(128, '000010', 'Vacation', 15, 0),
(129, '000011', 'SICK', 15, 0),
(130, '000011', 'Vacation', 15, 0),
(131, '000012', 'SICK', 15, 0),
(132, '000012', 'Vacation', 15, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `tblsettings`
--

CREATE TABLE `tblsettings` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `FORTHE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblsettings`
--

INSERT INTO `tblsettings` (`ID`, `DESCRIPTION`, `FORTHE`) VALUES
(2, 'Clerk', 'Position'),
(3, 'Election Committee', 'Position'),
(4, 'Audit Committee', 'Position'),
(5, 'Corporate Secretary', 'Position'),
(6, 'Medication Committee', 'Position'),
(7, 'Treasurer', 'Position'),
(8, 'Ethics Committee', 'Position'),
(9, 'Lineman', 'Position'),
(10, 'Teller', 'Position'),
(12, 'Staff', 'Position');

-- --------------------------------------------------------

--
-- Структура таблицы `tbluser`
--

CREATE TABLE `tbluser` (
  `user_id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `pass` varchar(90) DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbluser`
--

INSERT INTO `tbluser` (`user_id`, `name`, `username`, `pass`, `type`) VALUES
(12, 'Nikko Curaza', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(10328, 'Grace', 'HR', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'HR Personnel'),
(10329, 'May', 'HR', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'HR Personnel');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPID`);

--
-- Индексы таблицы `employee_workinfo`
--
ALTER TABLE `employee_workinfo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`LEAVEID`);

--
-- Индексы таблицы `tblapproveleave`
--
ALTER TABLE `tblapproveleave`
  ADD PRIMARY KEY (`APPROVEDID`);

--
-- Индексы таблицы `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tblleaveinfo`
--
ALTER TABLE `tblleaveinfo`
  ADD PRIMARY KEY (`LEAVEID`);

--
-- Индексы таблицы `tblsettings`
--
ALTER TABLE `tblsettings`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `employee_workinfo`
--
ALTER TABLE `employee_workinfo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `leave`
--
ALTER TABLE `leave`
  MODIFY `LEAVEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `tblapproveleave`
--
ALTER TABLE `tblapproveleave`
  MODIFY `APPROVEDID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tbldepartment`
--
ALTER TABLE `tbldepartment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `tblleaveinfo`
--
ALTER TABLE `tblleaveinfo`
  MODIFY `LEAVEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT для таблицы `tblsettings`
--
ALTER TABLE `tblsettings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10330;
--
-- База данных: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES
(1, 'city1', 1),
(2, 'city2', 1),
(3, 'city3', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'country1'),
(2, 'country2');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `city_id`) VALUES
(1, 'user1', 1),
(2, 'user2', 1),
(3, 'user3', 2),
(4, 'user4', 1),
(5, 'user5', 3),
(6, 'user6', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `age` int(11) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `salary`) VALUES
(2, 'user2', 24, 500),
(3, 'user3', 25, 600),
(4, 'user4', 24, 500),
(5, 'user5', 30, 1000),
(6, 'user5', 30, 1000),
(7, 'user6', 22, 500),
(1, 'user1', 23, 400);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- База данных: `personal`
--
CREATE DATABASE IF NOT EXISTS `personal` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `personal`;

-- --------------------------------------------------------

--
-- Структура таблицы `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(1, 'СЦ №1'),
(2, 'СЦ №2'),
(3, 'МЦ №1'),
(4, 'МЦ №2'),
(5, 'АТЦ'),
(6, 'ЭЦ');

-- --------------------------------------------------------

--
-- Структура таблицы `personals`
--

CREATE TABLE `personals` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `profession_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `personals`
--

INSERT INTO `personals` (`id`, `name`, `profession_id`, `department_id`) VALUES
(1, 'Иванов Иван Иванович', 1, 1),
(2, 'Петров Петр Петрович', 2, 2),
(3, 'Федоров Федор Федорович', 3, 3),
(4, 'Михайлов Михаил Михайлович', 7, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `professions`
--

CREATE TABLE `professions` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `professions`
--

INSERT INTO `professions` (`id`, `name`) VALUES
(1, 'Начальник'),
(2, 'Инженер'),
(3, 'Токарь'),
(4, 'Слесарь'),
(5, 'Водитель'),
(6, 'Электрик'),
(7, 'Сисадмин');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personals`
--
ALTER TABLE `personals`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `personals`
--
ALTER TABLE `personals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `professions`
--
ALTER TABLE `professions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- База данных: `php-mysql`
--
CREATE DATABASE IF NOT EXISTS `php-mysql` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `php-mysql`;

-- --------------------------------------------------------

--
-- Структура таблицы `example-users`
--

CREATE TABLE `example-users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `email` varchar(70) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `example-users`
--

INSERT INTO `example-users` (`id`, `name`, `pass`, `email`, `date`) VALUES
(1, 'John', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'John@itproger.com', '2022-02-07');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `bio` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `bio`) VALUES
(1, 'John', 'Text'),
(2, 'Alex', 'New text'),
(3, 'Alex #1', 'Full text'),
(4, 'Alex #2', 'Full text'),
(6, 'Alex #4', 'Full text'),
(7, 'Alex #5', 'Full text'),
(8, 'Андрей', 'Щипунов');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `example-users`
--
ALTER TABLE `example-users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `example-users`
--
ALTER TABLE `example-users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- База данных: `registration`
--
CREATE DATABASE IF NOT EXISTS `registration` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `registration`;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Alex', 'test@test.ru', '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- База данных: `simpleblog`
--
CREATE DATABASE IF NOT EXISTS `simpleblog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `simpleblog`;

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `date`) VALUES
(1, 'Заголовок', 'Текст', '2022-02-09');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`) VALUES
(1, 'admin', 'd8578edf8458ce06fbc5bb76a58c5ca4');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- База данных: `test1`
--
CREATE DATABASE IF NOT EXISTS `test1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test1`;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `name`, `surname`) VALUES
(1, 'admin', 'example@test.ru', 'Джон', 'Марл'),
(2, 'chavez', 'chavez2@mail.ru', 'Hugo', 'Chavez'),
(3, 'che', 'che@cuba.cu', 'Che', 'Gevarra');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- База данных: `testdb`
--
CREATE DATABASE IF NOT EXISTS `testdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `testdb`;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `salary`) VALUES
(1, 'user1', 23, 400),
(2, 'user2', 24, 500),
(3, 'user3', 25, 600),
(4, 'user4', 24, 400),
(5, 'user5', 28, 570),
(6, 'user 6', 27, 300);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- База данных: `testdb3`
--
CREATE DATABASE IF NOT EXISTS `testdb3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `testdb3`;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `age`) VALUES
(1, 'Sam', 40),
(2, 'Bob', 29),
(3, 'Alice', 32),
(8, 'Иван', 22);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- База данных: `testing`
--
CREATE DATABASE IF NOT EXISTS `testing` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `testing`;

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro` text NOT NULL,
  `text` text NOT NULL,
  `date` int(11) UNSIGNED NOT NULL,
  `avtor` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `mess` text NOT NULL,
  `article_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `name`, `mess`, `article_id`) VALUES
(1, 'Ivan', '', 9),
(2, 'Иван', 'Супер Новость!', 9),
(3, 'modest', 'Новый коммент!', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `login` varchar(20) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `login`, `pass`) VALUES
(1, 'Иван', 'test@gmail.com', 'Codi', '812bcffbeca277aadc86bb10d61dca78'),
(2, 'Петр', 'test@test.ru', 'Modest', '812bcffbeca277aadc86bb10d61dca78');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
