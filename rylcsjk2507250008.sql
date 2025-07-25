-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 24, 2025 at 04:07 PM
-- Server version: 8.0.42-0ubuntu0.24.04.2
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rylcsjk`
--

-- --------------------------------------------------------

--
-- Table structure for table `lry_admin`
--

CREATE TABLE `lry_admin` (
  `adminid` mediumint UNSIGNED NOT NULL,
  `adminname` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `roleid` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `rolename` varchar(30) NOT NULL DEFAULT '',
  `realname` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL DEFAULT '',
  `logintime` int UNSIGNED NOT NULL DEFAULT '0',
  `loginip` varchar(15) NOT NULL DEFAULT '',
  `addtime` int UNSIGNED NOT NULL DEFAULT '0',
  `errnum` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `addpeople` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_admin`
--

INSERT INTO `lry_admin` (`adminid`, `adminname`, `password`, `roleid`, `rolename`, `realname`, `nickname`, `email`, `logintime`, `loginip`, `addtime`, `errnum`, `addpeople`) VALUES
(1, 'lirongyaoper', 'e6398f4dc35c4f37acb2f7f3abe0012d', 1, '超级管理员', '', '轩鸿青', '', 1753290277, '117.159.129.34', 1557731527, 0, '系统');

-- --------------------------------------------------------

--
-- Table structure for table `lry_admin_log`
--

CREATE TABLE `lry_admin_log` (
  `id` int UNSIGNED NOT NULL,
  `module` varchar(30) NOT NULL DEFAULT '',
  `controller` varchar(20) NOT NULL DEFAULT '',
  `querystring` varchar(255) NOT NULL DEFAULT '',
  `adminid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `adminname` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `logtime` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_admin_login_log`
--

CREATE TABLE `lry_admin_login_log` (
  `id` int UNSIGNED NOT NULL,
  `adminname` varchar(30) NOT NULL DEFAULT '',
  `logintime` int UNSIGNED NOT NULL DEFAULT '0',
  `loginip` varchar(15) NOT NULL DEFAULT '',
  `address` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `loginresult` tinyint(1) NOT NULL DEFAULT '0' COMMENT '登录结果1为登录成功0为登录失败',
  `cause` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_admin_login_log`
--

INSERT INTO `lry_admin_login_log` (`id`, `adminname`, `logintime`, `loginip`, `address`, `password`, `loginresult`, `cause`) VALUES
(1, 'lirongyaoper', 1751433587, '127.0.0.1', '', 'lryadin01.', 0, '密码错误！'),
(2, 'lirongyaoper', 1751433614, '127.0.0.1', '', '', 1, '登录成功！'),
(3, 'lirongyaoper', 1752252773, '117.159.129.34', '', '', 1, '登录成功！'),
(4, 'lirongyaoper', 1752269209, '117.159.129.34', '', '', 1, '登录成功！'),
(5, 'lirongyaoper', 1752304037, '182.120.189.36', '', '', 1, '登录成功！'),
(6, 'lirongyaoper', 1752315769, '42.227.0.186', '', '', 1, '登录成功！'),
(7, 'lirongyaoper', 1752533329, '123.13.79.138', '', '', 1, '登录成功！'),
(8, 'lirongyaoper', 1752656128, '123.13.79.138', '', '', 1, '登录成功！'),
(9, 'lirongyaoper', 1752680188, '123.13.79.138', '', '', 1, '登录成功！'),
(10, 'lirongyaoper', 1752759535, '123.13.72.236', '', '', 1, '登录成功！'),
(11, 'lirongyaoper', 1752759758, '123.13.72.236', '', '', 1, '登录成功！'),
(12, 'lirongyaoper', 1752822960, '117.159.129.34', '', '', 1, '登录成功！'),
(13, 'lirongyaoper', 1752831976, '117.159.129.34', '', '', 1, '登录成功！'),
(14, 'lirongyaoper', 1752841683, '123.13.72.236', '', '', 1, '登录成功！'),
(15, 'lirongyaoper', 1752844764, '123.13.72.236', '', '', 1, '登录成功！'),
(16, 'lirongyaoper', 1752893527, '182.120.189.152', '', '', 1, '登录成功！'),
(17, 'lirongyaoper', 1752894765, '117.159.129.34', '', '', 1, '登录成功！'),
(18, 'lirongyaoper', 1752895649, '117.159.129.34', '', '', 1, '登录成功！'),
(19, 'lirongyaoper', 1752925554, '117.159.129.34', '', '', 1, '登录成功！'),
(20, 'lirongyaoper', 1752930049, '117.159.129.34', '', '', 1, '登录成功！'),
(21, 'lirongyaoper', 1752936832, '117.159.129.34', '', '', 1, '登录成功！'),
(22, 'lirongyaoper', 1752937237, '117.159.129.34', '', '', 1, '登录成功！'),
(23, 'lirongyaoper', 1752937244, '117.159.129.34', '', '', 1, '登录成功！'),
(24, 'lirongyaoper', 1752966308, '117.159.129.34', '', '', 1, '登录成功！'),
(25, 'lirongyaoper', 1752972179, '117.159.129.34', '', 'lryadfmin01.', 0, '密码错误！'),
(26, 'lirongyaoper', 1752972216, '117.159.129.34', '', '', 1, '登录成功！'),
(27, 'lirongyaoper', 1752978393, '117.159.129.34', '', '', 1, '登录成功！'),
(28, 'lirongyaoper', 1752978802, '117.159.129.34', '', '', 1, '登录成功！'),
(29, 'lirongyaoper', 1752982761, '123.13.72.236', '', '', 1, '登录成功！'),
(30, 'lirongyaoper', 1753108167, '115.51.62.231', '', '', 1, '登录成功！'),
(31, 'lirongyaoper', 1753137061, '115.51.62.231', '', '', 1, '登录成功！'),
(32, 'lirongyaoper', 1753189316, '115.51.62.231', '', '', 1, '登录成功！'),
(33, 'lirongyaoper', 1753289895, '117.159.129.34', '', '', 1, '登录成功！'),
(34, 'lirongyaoper', 1753290277, '117.159.129.34', '', '', 1, '登录成功！');

-- --------------------------------------------------------

--
-- Table structure for table `lry_admin_role`
--

CREATE TABLE `lry_admin_role` (
  `roleid` tinyint UNSIGNED NOT NULL,
  `rolename` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `system` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_admin_role`
--

INSERT INTO `lry_admin_role` (`roleid`, `rolename`, `description`, `system`, `disabled`) VALUES
(1, '超级管理员', '超级管理员', 1, 0),
(2, '总编', '总编', 1, 0),
(3, '发布人员', '发布人员', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lry_admin_role_priv`
--

CREATE TABLE `lry_admin_role_priv` (
  `roleid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(30) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_adver`
--

CREATE TABLE `lry_adver` (
  `id` int UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '1文字2代码3图片',
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `text` varchar(200) NOT NULL DEFAULT '',
  `img` varchar(200) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `describe` varchar(250) NOT NULL DEFAULT '',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `start_time` int UNSIGNED NOT NULL DEFAULT '0',
  `end_time` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_adver`
--

INSERT INTO `lry_adver` (`id`, `type`, `title`, `url`, `text`, `img`, `code`, `describe`, `inputtime`, `start_time`, `end_time`) VALUES
(1, 3, '荣耀历程', 'https://lirongyaoper.com', '', '/uploads/202108/01/210801120045269.png', '<a href=\"https://lirongyaoper.com\" target=\"_blank\" title=\"荣耀历程\"><img src=\"/uploads/202108/01/210801120045269.png\"></a>', '', 1627747254, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lry_all_content`
--

CREATE TABLE `lry_all_content` (
  `allid` int UNSIGNED NOT NULL,
  `siteid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `modelid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `id` int UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `username` char(30) NOT NULL DEFAULT '',
  `title` varchar(150) NOT NULL DEFAULT '',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int UNSIGNED NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(150) NOT NULL DEFAULT '',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `issystem` tinyint UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_all_content`
--

INSERT INTO `lry_all_content` (`allid`, `siteid`, `modelid`, `catid`, `id`, `userid`, `username`, `title`, `inputtime`, `updatetime`, `url`, `thumb`, `status`, `issystem`) VALUES
(1, 0, 1, 7, 5, 1, 'lirongyaoper', '首次与大家见面，激动中……', 1433710362, 1433710889, 'https://lirongyaoper.com/xianyansuiyu/5.html', '/uploads/201905/15/190515095828281.jpg', 1, 1),
(2, 0, 1, 14, 6, 1, 'lirongyaoper', '走向未来', 1526522364, 1600524246, 'https://lirongyaoper.com/fengyunbianhuan/6.html', '', 1, 1),
(3, 0, 1, 14, 7, 1, 'lirongyaoper', '我还很年轻', 1463710362, 1559373217, 'https://lirongyaoper.com/fengyunbianhuan/7.html', '/uploads/201905/21/190521121809507.jpg', 1, 1),
(4, 0, 1, 7, 8, 1, 'lirongyaoper', '研究生干的啥', 1557909928, 1558311964, 'https://lirongyaoper.com/xianyansuiyu/8.html', 'https://lirongyaoper.com/uploads/ueditor/image/20190515/thumb_300_200_1557910176592930.jpg', 1, 1),
(5, 0, 1, 10, 9, 1, 'lirongyaoper', '文献查全方法之PubMed篇', 1494839821, 1558140242, 'https://lirongyaoper.com/xuewuzhijing/9.html', 'https://lirongyaoper.com/uploads/ueditor/image/20190515/thumb_300_200_1557912002203053.png', 1, 1),
(6, 0, 1, 10, 10, 1, 'lirongyaoper', '论文参考文献的添加', 1477896541, 1559372375, 'https://lirongyaoper.com/xuewuzhijing/10.html', 'https://lirongyaoper.com/uploads/ueditor/image/20190516/1557968920836073.png', 1, 1),
(7, 0, 1, 7, 16, 1, 'lirongyaoper', '毕业季的告白', 1558879858, 1559086740, 'https://lirongyaoper.com/xianyansuiyu/16.html', 'https://lirongyaoper.com/uploads/ueditor/image/20190528/thumb_300_200_1559038848901584.jpg', 1, 1),
(8, 0, 1, 14, 17, 1, 'lirongyaoper', '龙门之旅', 1559377002, 1559381711, 'https://lirongyaoper.com/fengyunbianhuan/17.html', 'https://lirongyaoper.com/uploads/ueditor/image/20190601/thumb_300_200_1559378858974242.jpg', 1, 1),
(9, 0, 1, 7, 18, 1, 'lirongyaoper', '温馨提示', 1559382159, 1559476162, 'https://lirongyaoper.com/xianyansuiyu/18.html', '/uploads/201906/01/190601055350246.jpg', 1, 1),
(10, 0, 1, 7, 19, 1, 'lirongyaoper', '“暴力伤医”-社会之耻', 1559783495, 1575985225, 'https://lirongyaoper.com/xianyansuiyu/19.html', 'https://lirongyaoper.com/uploads/ueditor/image/20190606/thumb_300_200_1559784670214206.png', 1, 1),
(11, 0, 1, 7, 20, 1, 'lirongyaoper', '公众人物应该起到良好的导向作用', 1560937854, 1575985250, 'https://lirongyaoper.com/xianyansuiyu/20.html', '/uploads/201906/19/190619055253858.jpg', 1, 1),
(12, 0, 1, 13, 21, 1, 'lirongyaoper', '落地兄', 1567080386, 1567249622, 'https://lirongyaoper.com/babaizhijiao/21.html', '/uploads/201908/29/190829082325470.jpg', 1, 1),
(13, 0, 1, 13, 22, 1, 'lirongyaoper', '无题', 1568899897, 1568901177, 'https://lirongyaoper.com/babaizhijiao/22.html', '/uploads/201909/19/190919094030818.jpg', 1, 1),
(14, 0, 1, 7, 23, 1, 'lirongyaoper', '入职感想', 1569400016, 1569412950, 'https://lirongyaoper.com/xianyansuiyu/23.html', '/uploads/201909/25/190925043246126.jpg', 1, 1),
(15, 0, 1, 7, 25, 1, 'lirongyaoper', '吾日三省', 1571062254, 1575986215, 'https://lirongyaoper.com/xianyansuiyu/25.html', '/uploads/201910/14/191014101216366.jpg', 1, 1),
(17, 0, 1, 17, 27, 1, 'lirongyaoper', '详解 $_SERVER 函数中QUERY_STRING和REQUEST_URI区别', 1576312917, 1576314953, 'https://lirongyaoper.com/phpxiangguan/27.html', '', 1, 1),
(18, 0, 1, 7, 28, 1, 'lirongyaoper', '每周三言', 1576417801, 1576418695, 'https://lirongyaoper.com/xianyansuiyu/28.html', '/uploads/201912/15/191215095302596.jpg', 1, 1),
(19, 0, 1, 16, 29, 1, 'lirongyaoper', '医殇', 1577716679, 1753189538, 'https://lirongyaoper.com/kepujiankang/29.html', '/uploads/202001/06/200106101355518.png', 1, 1),
(20, 0, 1, 7, 30, 1, 'lirongyaoper', '别在最好的年纪，活得太安逸 ', 1578581109, 1578581322, 'https://lirongyaoper.com/xianyansuiyu/30.html', '/uploads/202001/09/200109104825976.png', 1, 1),
(21, 0, 1, 7, 31, 1, 'lirongyaoper', '不迁怒，是一个人的基本修养 ', 1600096654, 1600097747, 'https://lirongyaoper.com/xianyansuiyu/31.html', '/uploads/202009/14/200914112557605.png', 1, 1),
(22, 0, 1, 7, 32, 1, 'lirongyaoper', '秋', 1600349353, 1600349806, 'https://lirongyaoper.com/xianyansuiyu/32.html', '/uploads/202009/17/200917093033729.jpg', 1, 1),
(23, 0, 1, 7, 33, 1, 'lirongyaoper', '放弃“梦想”，追逐远方', 1600413140, 1600413543, 'https://lirongyaoper.com/xianyansuiyu/33.html', '/uploads/202009/18/200918031420924.jpg', 1, 1),
(24, 0, 1, 7, 34, 1, 'lirongyaoper', '辛苦了，快递小哥', 1474981335, 1600693603, 'https://lirongyaoper.com/xianyansuiyu/34.html', '/uploads/202009/21/200921090527407.jpg', 1, 1),
(25, 0, 1, 17, 35, 1, 'lirongyaoper', 'PHP $_SERVER[&#039;PHP_SELF&#039;]、$_SERVER[&#039;SCRIPT_NAME&#039;] 与 $_SERVER[&#039;REQUEST_URI&#039;] 之间的区别', 1601132685, 1601211044, 'https://lirongyaoper.com/phpxiangguan/35.html', '', 1, 1),
(26, 0, 1, 13, 36, 1, 'lirongyaoper', '思念', 1602163673, 1602167494, 'https://lirongyaoper.com/babaizhijiao/36.html', '/uploads/202010/08/201008103046837.png', 1, 1),
(27, 0, 1, 7, 37, 1, 'lirongyaoper', '家，越干净，越有福', 1602948601, 1602948886, 'https://lirongyaoper.com/xianyansuiyu/37.html', '/uploads/202010/17/201017113126677.png', 1, 1),
(28, 0, 1, 17, 38, 1, 'lirongyaoper', 'getcwd() __DIR__ __FILE__区别', 1603023774, 1603024844, 'https://lirongyaoper.com/phpxiangguan/38.html', '', 1, 1),
(29, 0, 1, 17, 39, 1, 'lirongyaoper', 'strstr strrchr strpos strrpos的用法及区别', 1603030776, 1603031417, 'https://lirongyaoper.com/phpxiangguan/39.html', '', 1, 1),
(30, 0, 1, 17, 40, 1, 'lirongyaoper', 'PHP 运行方式(PHP SAPI介绍)', 1603113748, 1603113917, 'https://lirongyaoper.com/phpxiangguan/40.html', '', 1, 1),
(31, 0, 1, 17, 41, 1, 'lirongyaoper', 'CGI、FastCGI和PHP-FPM关系图解', 1603539289, 1603541788, 'https://lirongyaoper.com/phpxiangguan/41.html', '', 1, 1),
(32, 0, 1, 17, 42, 1, 'lirongyaoper', 'php 关于URL处理的三个函数', 1603544888, 1603546135, 'https://lirongyaoper.com/phpxiangguan/42.html', '', 1, 1),
(33, 0, 1, 17, 43, 1, 'lirongyaoper', '正则表达式中的元字符及其使用方法', 1603546388, 1603546597, 'https://lirongyaoper.com/phpxiangguan/43.html', '', 1, 1),
(34, 0, 1, 17, 44, 1, 'lirongyaoper', 'php四种基础算法：冒泡、选择、插入和快速排序法', 1603551602, 1603553479, 'https://lirongyaoper.com/phpxiangguan/44.html', '', 1, 1),
(35, 0, 1, 17, 45, 1, 'lirongyaoper', 'substr — 返回字符串的子串', 1603980087, 1603980468, 'https://lirongyaoper.com/phpxiangguan/45.html', '', 1, 1),
(36, 0, 1, 7, 46, 1, 'lirongyaoper', '负重前行', 1604583192, 1604583400, 'https://lirongyaoper.com/xianyansuiyu/46.html', '', 1, 1),
(37, 0, 1, 7, 47, 1, 'lirongyaoper', '【转载】人生成事需三多：多读书，多交友，多体验', 1606319406, 1606319799, 'https://lirongyaoper.com/xianyansuiyu/47.html', '/uploads/202011/25/201125115419821.png', 1, 1),
(38, 0, 1, 19, 48, 1, 'lirongyaoper', '硬盘基本知识（磁头、磁道、扇区、柱面）', 1607358237, 1607359055, 'https://lirongyaoper.com/caozuoxitong/48.html', '', 1, 1),
(39, 0, 1, 7, 49, 1, 'lirongyaoper', '一年入职感想', 1607783246, 1607783493, 'https://lirongyaoper.com/xianyansuiyu/49.html', '/uploads/202012/12/201212102830781.png', 1, 1),
(40, 0, 1, 7, 50, 1, 'lirongyaoper', '猎物', 1608475110, 1628253390, 'https://lirongyaoper.com/xianyansuiyu/50.html', '/uploads/202012/20/201220104717237.png', 1, 1),
(41, 0, 1, 7, 51, 1, 'lirongyaoper', '犯错', 1609947734, 1609948112, 'https://lirongyaoper.com/xianyansuiyu/51.html', '/uploads/202101/06/210106114312566.gif', 1, 1),
(42, 0, 1, 21, 52, 1, 'lirongyaoper', '你', 1620747507, 1620748012, 'https://lirongyaoper.com/gujianqingshen/52.html', '/uploads/202105/11/210511114019511.png', 1, 1),
(43, 0, 1, 14, 53, 1, 'lirongyaoper', '愿世间如您们所愿，医食无忧---缅怀英雄', 1621782183, 1621783486, 'https://lirongyaoper.com/fengyunbianhuan/53.html', '/uploads/202105/23/210523111307549.png', 1, 1),
(44, 0, 1, 7, 54, 1, 'lirongyaoper', '祝贺中国共产党建党100周年', 1625155665, 1625155812, 'https://lirongyaoper.com/xianyansuiyu/54.html', '/uploads/202107/02/210702120935341.jpg', 1, 1),
(45, 0, 1, 7, 55, 1, 'lirongyaoper', '保护环境，守护家园', 1628252951, 1628253413, 'https://lirongyaoper.com/xianyansuiyu/55.html', '/uploads/202108/06/210806083014349.png', 1, 1),
(46, 0, 1, 13, 56, 1, 'lirongyaoper', '相伴而来的兄弟俩', 1628438634, 1628438942, 'https://lirongyaoper.com/babaizhijiao/56.html', '/uploads/202108/09/210809120623560.png', 1, 1),
(47, 0, 1, 14, 57, 1, 'lirongyaoper', '老黄牛', 1629374774, 1629375154, 'https://lirongyaoper.com/fengyunbianhuan/57.html', '/uploads/202108/19/210819080934649.png', 1, 1),
(48, 0, 1, 19, 58, 1, 'lirongyaoper', 'Linux磁盘挂载', 1630154866, 1630155555, 'https://lirongyaoper.com/caozuoxitong/58.html', '/uploads/202108/28/210828084929366.png', 1, 1),
(49, 0, 1, 19, 59, 1, 'lirongyaoper', 'U盘启动快捷键', 1644420646, 1651424798, 'https://lirongyaoper.com/caozuoxitong/59.html', '', 1, 1),
(50, 0, 1, 21, 60, 1, 'lirongyaoper', '新起点，新征程', 1651593081, 1651593485, 'https://lirongyaoper.com/gujianqingshen/60.html', '/uploads/202205/03/220503115612227.png', 1, 1),
(51, 0, 1, 10, 61, 1, 'lirongyaoper', '读懂肺功能', 1652281364, 1652281770, 'https://lirongyaoper.com/xuewuzhijing/61.html', '/uploads/202205/11/220511110518259.jpg', 1, 1),
(54, 0, 1, 9, 64, 1, 'lirongyaoper', '关于肺动脉、肺静脉、气管权重的开放及使用简易说明', 1753108516, 1753138559, 'https://lirongyaoper.com/yixuejishu/64.html', '/uploads/202507/22/250722065111907.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lry_article`
--

CREATE TABLE `lry_article` (
  `id` int UNSIGNED NOT NULL,
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(180) NOT NULL DEFAULT '',
  `color` char(9) NOT NULL DEFAULT '',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int UNSIGNED NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `click` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `copyfrom` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(150) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `flag` varchar(12) NOT NULL DEFAULT '' COMMENT '1置顶,2头条,3特荐,4推荐,5热点,6幻灯,7跳转',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `issystem` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `listorder` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `groupids_view` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `readpoint` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '阅读收费',
  `paytype` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '收费类型',
  `is_push` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否百度推送',
  `up` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞数',
  `down` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '踩一踩'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_article`
--

INSERT INTO `lry_article` (`id`, `catid`, `userid`, `username`, `nickname`, `title`, `color`, `inputtime`, `updatetime`, `keywords`, `description`, `click`, `content`, `copyfrom`, `thumb`, `url`, `flag`, `status`, `issystem`, `listorder`, `groupids_view`, `readpoint`, `paytype`, `is_push`, `up`, `down`) VALUES
(19, 7, 1, 'lirongyaoper', '轩鸿青', '“暴力伤医”-社会之耻', '', 1559783495, 1575985225, '', '“暴力伤医”在国内已是司空见惯的事了，在即将走向岗位的时候，内心无比复杂。注：本文部分内容节选自《人民日报》', 1867, '<p style=\"text-indent: 2em;\">我所知道暴力伤医这个词只有中国人才知道。在国外，呵呵，你说到暴力伤医的时候人家会一脸懵逼。</p><p style=\"text-indent: 2em;\">可是在中国，这并不惊讶，在百度中输入“暴力伤医”后你会发现这样的案例数不胜数，这里有图有真相。</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190606/1559784670214206.png\" title=\"伤医辱医是社会之耻\" alt=\"伤医辱医是社会之耻\"/></p><p style=\"text-indent: 2em;\">在这儿我就随便说几个案例吧，（1）2018年9月22日，北京大学附属医院，<span class=\"bjh-p\">产妇孙某在北大医院妇产科待产，因已超预产期，就能否剖腹产问题，其夫郑某宇在诊室外走廊拦住当日值班的妇产科赫医生，要求解决。</span><span class=\"bjh-p\">在赫医生解释过程中，郑某宇情绪激动，突然挥拳。</span>殴打<span class=\"bjh-p\">赫医生头部，被旁边几名医生拉开后，郑某宇和女儿郑某蕊再次上前冲其脸部挥拳，用脚将他踹倒在地。（2）20161月19日年<span class=\"bjh-p\">被告人陈建利的女在莱芜钢铁集团有限公司医院（以下简称莱钢医院）顺利出生,&nbsp;但不幸的是出生后地2天小儿便出现发烧症状，随即转入该院儿科病房，但遗憾的是虽经积极抢救，患儿最终医治无效死亡。事后其父陈建利始终认为莱钢医院诊疗存在问题，多次要求医院赔偿未果，遂对医院及儿科主治医生李宝华心生怨恨，进而预谋杀死李宝华。2016年10月3日8时许，陈建利赶往莱钢医院，途中购买单刃砍刀一把。在莱钢医院外科楼五楼儿科医生休息室，趁李宝华接听电话之机，陈建利持砍刀猛力砍击李宝华头部十三刀，致其颅骨粉碎，脑浆迸裂，当场死亡……。回头看一下过去，暴力伤医案件遍地都是，小到医患之间的争吵与不满，大到谋财害命，尤其这几年<span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">，各地伤医辱医事件此起彼伏。弥漫的暴戾之气，既伤害了医务人员的感情，也令社会各界深感忧虑。</span></span></span></p><p style=\"text-align:center\"><span class=\"bjh-p\"><span class=\"bjh-p\"><img src=\"/uploads/ueditor/image/20190606/1559785826454964.jpeg\" title=\"伤医辱医是社会之耻\" alt=\"伤医辱医是社会之耻\"/></span></span></p><p style=\"text-indent: 2em;\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">反观中国的医生群体，在全球医生中，中国医生是最能吃苦的群体。在很多大医院，医生出诊一天，看七八十个病人，不喝水、不吃饭、不上厕所，其劳动强度之大，世界罕见。然而，近期，各地伤医辱医事件此起彼伏。伤医辱医是文明社会之耻辱。试想，一个社会连医生都不尊重，还能尊重哪个群体？</span></p><p style=\"text-indent: 2em;\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">在全世界，医生都是一个神圣的职业，因为医生是“生命的保护神”，理应受到最高礼遇。有一位中国医生在美国进修，开车时误闯红灯，被警察拦下。当警察看到他的胸牌时，立即予以放行，并告诉他先去上班，不能耽误救人。但是，等他下班后，警察会到医院门口再开罚单。这个故事，从侧面反映了美国人对医生的尊重。一个社会对医生的态度，体现了对生命的态度。尊重医生，就是尊重生命。</span></span></p><p style=\"text-indent: 2em;\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">有人说，当你生命垂危时，在所有认识和不认识的人中，医生是最希望你活下来的人。因为医生最大的快乐就是治病救人，没有一个医生想把病人治坏治死。而在全球医生中，中国医生是最能吃苦的群体。我国的标准工时为职工每日工作8小时，每周工作40小时。最新发布的《中国医师执业状况白皮书》显示，医师的工作压力主要来源于工作量特别大。52.72%的医师平均每周工作时间在40—60小时，32.69%的医师在60小时以上。有人戏言，中国医生只要坚持8小时工作制，每周末休息，整个医疗体系就会瘫痪。在很多大医院，医生出诊一天，看七八十个病人，不喝水、不吃饭、不上厕所，其劳动强度之大，世界罕见。例如，美国梅奥诊所的员工是北京协和医院的15倍，但每年接诊的患者只有协和的一半。中国医生以超负荷的工作，承担了世界上最大的门诊量。仅此一点，就足以令人敬佩。</span></span></span></p><p style=\"text-indent: 2em;\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">当然，中国医生并不完美。有的医生在治病救人的同时，也存在逐利动机，其公信力自然受到质疑，因为逐利是摧毁医患信任的致命杀手。但是，问题的根源不在于医生，而在于不合理的医疗体制。当前，公立医院的定价机制和补偿机制尚未理顺，医生的劳动技术价值严重偏低，只能靠多卖药、多检查来维持生存。医学上有一个概念叫“侧支循环”，意思是当大血管堵塞时，周围的小血管就会形成通路，以保持血液循环。同理，当医生的劳动价值得不到合理回报时，必然会诱发“侧支循环”。因此，只有让医生靠技术吃饭，而不是靠“开单”生存，才能重新赢得社会的信任。</span></span></span></span></p><p style=\"text-indent: 2em;\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">医生是社会的精英群体，也是社会的稀缺资源。只有最优秀的人，才有资格当医生。如果医生频频遭遇暴力袭击，社会将付出沉重的代价。例如，最优秀的人才不愿学医，大量医生逃离医疗行业，良医的生产线逐渐断裂，最终导致好医生奇缺，看病越来越难。</span></span></span></span></span></p><p style=\"text-indent: 2em;\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24.8896px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">可见，伤医辱医是文明社会之耻辱。试想，一个社会连医生都不尊重，还能尊重哪个群体？即便个别医生存在技术缺陷或道德瑕疵，也不应被随意伤害或侮辱。即便医生没有待你如亲人，至少也不应成为你的仇人。伤医辱医不仅冲破了道德底线，而且损害了公共利益。当医生受到暴力攻击时，必然影响其救治其他患者，有人甚至因此而失去抢救机会。从这个意义上说，袭医和袭警的性质同等恶劣，理应严惩。</span></span></span></span></span></span></p><p style=\"text-indent: 2em;\"><span style=\"background-color: rgb(255, 255, 255); font-family: &quot;Helvetica Neue&quot;, Roboto, &quot;microsoft yahei&quot;; text-align: justify; widows: 1; text-indent: 2em;\">人生在世，谁也离不开医生。当你生病时，如果希望得到良医的照护，就请从尊重医生做起吧！</span></p>', '原创', 'https://lirongyaoper.com/uploads/ueditor/image/20190606/thumb_300_200_1559784670214206.png', 'https://lirongyaoper.com/xianyansuiyu/19.html', '5', 1, 1, 10, 0, 0, 1, 0, 1, 0),
(5, 7, 1, 'lirongyaoper', '轩鸿青', '首次与大家见面，激动中……', '', 1433710362, 1433710889, '', '今天是2018年4月27日，是一个值得纪念的日子，经过很多天的努力、很多次的尝试，荣耀博客正式和大家见面了，不早不晚，恰好遇到您！      ...', 1998, '<p><span style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 18px; line-height: 2; background-color: rgb(255, 255, 255);\">今天是<strong style=\"margin-bottom: 15px; font-size: 16px; word-break: break-all;\"><span style=\"color: rgb(229, 102, 0);\">2018年4月27日</span></strong>，是一个值得纪念的日子，经过很多天的努力、很多次的尝试，<span style=\"color: rgb(229, 102, 0);\"><strong style=\"margin-bottom: 15px; font-size: 16px; word-break: break-all;\">荣耀博客</strong></span>正式和大家见面了，不早不晚，恰好遇到您！</span><br style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 14px; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 18px; line-height: 2; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;记得十年前第一次用腾讯QQ，发现能通过她与好友互动，第一次感觉网络很强大！再后来QQ空间推出，又多了一种表达自己青春个性的媒介，很荣幸生活在<strong style=\"margin-bottom: 15px; font-size: 16px; word-break: break-all;\"><span style=\"color: rgb(229, 102, 0);\">21世纪的网络时代</span></strong>！青春是个性的、张扬的，要与众不同、要别出心裁。可是基于腾讯开发的QQ空间千篇一律，单调的模板无论如何也表达不了青春的个性，我也曾试图修改空间模板，但是后台掌握在别人手中，就算我绞尽脑汁也无法满足自己的需要，心中不止一次的想到，如果有自己的网站那该是多好呀！</span><br style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 14px; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 18px; line-height: 2; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;<strong style=\"margin-bottom: 15px; font-size: 16px; word-break: break-all;\"><span style=\"color: rgb(229, 102, 0);\">理想是美好的，道路是艰辛的！这一等便是十年的今天！</span></strong></span><br style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 14px; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 18px; line-height: 2; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;大学没有学习计算机专业是个非常大的遗憾，医学专业的忙碌让我无暇顾及很多想要做的事情，自己搭建网站的想法也只能深深的埋在心里。可是，我从未放弃。</span><br style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 14px; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 18px; line-height: 2; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;在参加完研究生入学考试后终于可以静下心来发展自己的爱好。于是，买了诸如java、c语言等之类的教材。初次接触形如外星语的代码感觉自己就是一个文盲，没有老师，无从下手。于是曾几度放弃，可是每每放弃都心有不甘，捡起来、放下、再捡起来再放下。</span><br style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 14px; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 18px; line-height: 2; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;就这样几个来回便是几年，或许，谁都不是天生什么都会，一点一滴的积累总会有所进步，慢慢的我也能看懂点代码，也能简单地按照自己的想法修改与创建点代码。博客就这样诞生了！</span><br style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 14px; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 18px; line-height: 2; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;所以，今天能在这儿和朋友们见面实在不易！<strong style=\"margin-bottom: 15px; font-size: 16px; word-break: break-all;\"><span style=\"color: rgb(229, 102, 0);\">希望能得到您的关注，从此，我们的距离便不再遥远！</span></strong></span></p>', '原创', '/uploads/201905/15/190515095828281.jpg', 'https://lirongyaoper.com/xianyansuiyu/5.html', '', 1, 1, 10, 0, 0, 1, 0, 124, 0),
(6, 14, 1, 'lirongyaoper', '轩鸿青', '走向未来', '', 1526522364, 1600524246, '', '花开花落，春去秋来自然的轮回，岁月的刷新于是，我明白现在，未来曾经的迷茫抹杀了我多少未来不知所措中走入了黑暗的现在可我已经长大我不...', 1798, '<p>花开花落，春去秋来</p><p>自然的轮回，岁月的刷新</p><p>于是，我明白</p><p>现在，未来</p><p><br/></p><p>曾经的迷茫抹杀了我多少未来</p><p>不知所措中走入了黑暗的现在</p><p>可我已经长大</p><p>我不能就这样徘徊不前</p><p>定要跳出黑暗的深渊</p><p><br/></p><p>抬起头来</p><p>虽路途艰难，梦想遥远</p><p>但希望还在</p><p>即便流血流汗，我仍会坚定向前</p><p>即便掌声不在，我仍会永不言败</p><p>走向那美丽的未来！</p><p><br/></p>', '原创', '', 'https://lirongyaoper.com/fengyunbianhuan/6.html', '3', 1, 1, 10, 0, 0, 1, 0, 2, 0),
(34, 7, 1, 'lirongyaoper', '轩鸿青', '辛苦了，快递小哥', '', 1474981335, 1600693603, '', '今天有一个包裹要到，恰逢天下着雨，走到学校东门，看到快递小哥把包裹裹得严严实实的，而自己却任雨水冲洗。这一幕，着实让我感动！人类生...', 1388, '<p><img src=\"/uploads/ueditor/image/20200921/1600693543201223.jpg\" title=\"辛苦了，快递小哥\" alt=\"辛苦了，快递小哥\"/></p><p style=\"margin: 0px 0px 16px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">今天有一个包裹要到，恰逢天下着雨，走到学校东门，看到快递小哥把包裹裹得严严实实的，而自己却任雨水冲洗。这一幕，着实让我感动！人类生而平等，工作也无所谓贵贱，平凡中的伟大，平凡中的无私！</p><p style=\"margin: 0px 0px 16px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp; 坐在宽敞明亮的办公室，没有严寒，没有酷暑，这是一种被很多人所羡慕的工作方式，而且这种工作被很多人欣赏、追求。每个人都试图闯进这种无忧无虑的工作中，这本没有错，因为人的本性都一样，都有自私、享乐、安逸等标签。但我想说的是，无论我们官在何位、身处各处，我们都要清楚我们人类作为动物的本质:人人生而平等，没有贵贱高低。处在高位，是众人对你的信任；把你捧到高处，是为了让你高瞻远瞩，为了更好的为众人服务。而现实中恰恰有一部分人认为处在高位就是高人一筹，就具有很强的优越感，就不屑于把他们捧上去的人。我不能说他们这些人过河拆桥，但最起码没有最起码的对人尊重和感恩！</p><p style=\"margin: 0px 0px 16px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp; 风餐露宿、披星戴月，也是一种工作方式，或许我们很少人愿意去做这样的苦差事。是的，又苦又累，甚至没有基本的生活及安全保障，如果能有机会坐在办公室里又何必去哭了自己呢。不难瞒大家说，我作为一个普通人，也和大家一样，如果有机会会选择一个安逸，舒适的工作方式。但是，因为各种现实原因，不是每个人都具有这样的选择权利的，既然这样，我们就要努力适应自己的生活和工作方式，去享受自己的工作和生活。与此同时，我们都要严重尊重我们身边乃至世上的任何一个人、任何一种工作方式！</p><p style=\"margin: 0px 0px 16px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 因此，在现实世界中，我们不应该看不起那些面朝黄土背朝天的农民，更不应该嫌弃那些劳动人民创造出来的劳动成果！处于社会再底层的人群，他们每天的工作也都在为世界创造人类独具的财富！每一粒种子的开花结果、每一颗小叔的茁壮成长、人们每天吃、喝的、用的，无不凝聚着劳动人民的心血！没有千千万万的劳动人民的辛勤奉献，没有无数个忙碌在烈日、严寒下的背影，你和我乃至世界上的每个人都无法也不可能有今天的生活。所以，懂得尊重，时常感恩！尊重身边每一个忙碌的生身影，感恩你享受的一切生活！</p><p style=\"margin: 0px 0px 16px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们的世界因您而精彩，我们的生活因您而美丽！伟大的成千上万的劳动人民！伟大的奋战在工作岗位一线的各行各业的工作人员！</p>', '原创', '/uploads/202009/21/200921090527407.jpg', 'https://lirongyaoper.com/xianyansuiyu/34.html', '', 1, 1, 10, 0, 0, 1, 0, 0, 0),
(7, 14, 1, 'lirongyaoper', '轩鸿青', '我还很年轻', '', 1463710362, 1559373217, '', '本文写于大学期间，那是还很年轻呀。至于为啥现在才公开的原因，因为现在我有自己的网站啦。', 2081, '<p style=\"margin-top: 0px; margin-bottom: 15px; margin-left: 0cm; padding: 0px; word-break: break-all; color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; white-space: normal; text-indent: 24pt; background: white;\"><span style=\"font-size: 18px;\"><strong style=\"margin-bottom: 15px; font-size: 16px; word-break: break-all;\">纵然一次又一次的失败了，纵然每一次跌倒后都没有站起，纵然暂时找不到前进的道路，但我绝不放弃对自己的承诺，对人生的执着，因为我还很年轻。</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 15px; margin-left: 0cm; padding: 0px; word-break: break-all; color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; white-space: normal; text-indent: 378pt; background: white;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; —题记<br/></p><p style=\"margin-top: 0px; margin-bottom: 15px; margin-left: 0cm; padding: 0px; word-break: break-all; color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; white-space: normal; text-indent: 24pt; background: white;\"><span style=\"font-size: 18px;\">我漫游在像流水一样的时光中，感受着苍天给我的青春馈赠。就这样不知不觉中我已走出了母亲的怀抱，走进了属于自己的没有目标的茫茫征途中。然而，我很担心，也很害怕。担心自己没有一双历练的坚强翅膀，无法飞翔。更担心找不到属于自己的充满花香的美丽道路。</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; margin-left: 0cm; padding: 0px; word-break: break-all; color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; white-space: normal; text-indent: 24pt; background: white;\"><span style=\"font-size: 18px;\">回首往事，我的内心充满了无法弥补的懊悔。为了能让自己得到更多的幸福，我和其他的孩子一样，走上了一条用知识武装自己的道路。可是当别人正在如饥似渴的吮吸知识养分的时候，而我却在勾画着那虚无缥缈的未来画卷，可我怎能懂得</span><span style=\"font-size: 18px;\">&quot;</span><span style=\"font-size: 18px;\">理想是美好的，但现实是残酷的</span><span style=\"font-size: 18px;\">&#39;&#39;</span><span style=\"font-size: 18px;\">这一深奥的道理呢？当别人正在为自己获得的成功而高兴时，我却在一边为自己的碌碌无为默默的流泪。我很想像别人一样充实的活着，可我却总是挥霍的走着</span><span style=\"font-size: 18px;\">............</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; margin-left: 0cm; padding: 0px; word-break: break-all; color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; white-space: normal; text-indent: 24pt; background: white;\"><span style=\"font-size: 18px;\">然而，历史的车轮是永往直前的，时间的河流是不会逆回的。失去的已无法挽回，得到的已经定格。<br/></span></p><div style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 14px; line-height: 21px; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"text-indent: 24pt;\"></span><a target=\"_blank\" href=\"https://lirongyaoper.com\" id=\"ematt:22\" style=\"text-decoration: none; color: rgb(50, 64, 87); text-indent: 24pt;\"><img src=\"/uploads/ueditor/image/20190515/1557911180715564.jpg\" title=\"我还很年轻\" alt=\"我还很年轻\"/></a></div><p><span style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 14px; line-height: 21px; background-color: rgb(255, 255, 255);\"></span><span style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 14px; line-height: 21px; background-color: rgb(255, 255, 255);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; word-break: break-all; color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 15px; margin-left: 0cm; padding: 0px; word-break: break-all; color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; white-space: normal; text-indent: 24pt; background: white;\"><span style=\"font-size: 18px;\">于是，我想，既然这样，努力的抓住当下的生活才是我聪明的表现。哪怕以前的一切都从零计算，我仍然具有奋斗未来的勇气和信心，因为我还很年轻。</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; margin-left: 0cm; padding: 0px; word-break: break-all; color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; white-space: normal; text-indent: 24pt; background: white;\"><span style=\"font-size: 18px;\">跌倒了站起来，拍拍身上的尘埃，继续前行，因为我还很年轻。<br/></span></p><div style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 14px; line-height: 21px; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"text-indent: 24pt;\"></span><a target=\"_blank\" href=\"https://lirongyaoper.com\" id=\"ematt:24\" style=\"text-decoration: none; color: rgb(50, 64, 87); text-indent: 24pt;\"><img src=\"/uploads/ueditor/image/20190515/1557911188553781.jpg\" title=\"我还很年轻\" alt=\"我还很年轻\"/></a></div><p><span style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 14px; line-height: 21px; background-color: rgb(255, 255, 255);\"></span><span style=\"color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; font-size: 14px; line-height: 21px; background-color: rgb(255, 255, 255);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; word-break: break-all; color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 15px; margin-left: 0cm; padding: 0px; word-break: break-all; color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; white-space: normal; text-indent: 24pt; background: white;\"><span style=\"font-size: 18px;\">我知道我已挥霍的走过了好多年，但我更知道以后的日子还很长很长。如果还继续过着以往的生活，或许我终将与光明失之交臂，与成功擦肩而过，我的人生将永远处于黑暗之中</span><span style=\"font-size: 18px;\">..........</span><span style=\"font-size: 18px;\">所以，我要改变我自己，做一个让自己满意得人。我要趁着还很年轻去弥补曾经与别人的差距，去开创自己的一条光明之路！</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; margin-left: 0cm; padding: 0px; word-break: break-all; color: rgb(50, 64, 87); font-family: &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft Sans Serif&#39;, sans, Arial; white-space: normal; text-indent: 24pt; background: white;\"><span style=\"font-size: 18px;\">我知道，我前进的道路很茫然，但我绝不放弃的执着的前进，因为我还很年轻！</span></p><p><br/></p>', '原创', '/uploads/201905/21/190521121809507.jpg', 'https://lirongyaoper.com/fengyunbianhuan/7.html', '', 1, 1, 10, 0, 0, 1, 0, 6, 1),
(21, 13, 1, 'lirongyaoper', '轩鸿青', '落地兄', '', 1567080386, 1567249622, '兄弟情', '本文随感而发，以此献给我亲爱的兄弟。今后的日子，我们彼此思念，彼此祝福。', 2381, '<p>曾经</p><p>我们一起，吃遍城市的大街小巷</p><p>我们一起，看遍校园的绿树红花</p><p>我们笑着，走着，畅想着各自的未来</p><p>有时也想，兄弟何不一起去闯荡</p><p><br/></p><p>后来</p><p>现实给了我们残酷的一课</p><p>你我走向了不同的方向</p><p>一人一城</p><p>马车虽快，可路途却长</p><p>愿一切的美好，都在你身上<br/></p><p><br/></p>', '原创', '/uploads/201908/29/190829082325470.jpg', 'https://lirongyaoper.com/babaizhijiao/21.html', '1,2,3,4', 1, 1, 1, 0, 0, 1, 0, 17, 1),
(22, 13, 1, 'lirongyaoper', '轩鸿青', '无题', '', 1568899897, 1568901177, '兄弟情', '相知无远近，万里尚为邻。   --唐.张九龄', 2303, '<p style=\"text-align: center;\"><strong>无题</strong><br/></p><p style=\"text-align: center;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em><span style=\"font-size: 12px;\">--李荣耀</span></em><br/></p><p style=\"text-align: center;\">三载书生一世兄，</p><p style=\"text-align: center;\">为念兄情醉不醒。</p><p style=\"text-align: center;\">但憾与兄不同城，</p><p style=\"text-align: center;\">愿有明月伴汝行。<br/></p>', '原创', '/uploads/201909/19/190919094030818.jpg', 'https://lirongyaoper.com/babaizhijiao/22.html', '1,2,3,4,5', 1, 1, 1, 0, 0, 1, 0, 13, 8),
(23, 7, 1, 'lirongyaoper', '轩鸿青', '入职感想', '', 1569400016, 1569412950, '', '读书的羡慕工作的，工作的羡慕读书的', 2359, '<p style=\"text-align:left\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> 读书的羡慕工作的，工作的羡慕读书的</strong></p><p style=\"text-align: left; text-indent: 2em;\">不知不觉，稀里糊涂的走向了工作岗位，尽管一切都还没做好准备。说真的找到一份工作后没有读书时预想的那么惊喜，一切都这么平淡，即便是当拿到人生第一份薪水的时候也丝毫没有曾经期待的感觉。为什么走向了自己、父母期待已久的工作岗位后内心如此平静呢？仔细找找或许能找到很多理由，但是我觉得最关键的一点却是，从内心深处，我压根不想长大！</p><p style=\"text-align: left; text-indent: 2em;\"><strong>以往的一点一滴，蓦然回首，不禁潸然泪下。感叹时光飞逝，世事无情。</strong></p><p style=\"text-align: left; text-indent: 2em;\">高中毕业后，我无忧无虑的度过了八年的大学生活，没有经济压力，不为柴米油盐发愁；没有责任与负担，不付使命不担责，除了读书，便是交友。那一幕幕和兄弟胡吃海喝的场景、那一次次和兄弟“高谈论阔”的画面，还有偶尔说走就走的旅行，每每想起，都觉得那么的亲切和向往。朋友之间，那种不牵涉任何利益关系的纯真友谊，那种没有钩心斗角的谈话，充满了你我的内心。</p><p style=\"text-align: left; text-indent: 2em;\"><strong>一群人聚在一起叫缘分，在一起分享快乐叫友谊，在一起瓜分蛋糕叫社会。</strong></p><p style=\"text-align: left; text-indent: 2em;\">来到工作岗位后，社会教给我们的第一课就是责任与担当。入职之前的各种培训一方面为了让你更快的适应工作要求，一方面告诉你单位的各种规章制度，遵守游戏规则你才能在狭缝中生存，不遵守游戏规则就要为此买单。面对各种冰冷的制度倍感社会的冷酷与无情。</p><p style=\"text-align: left; text-indent: 2em;\">再看看周围的人，由同学到同事的称呼可不止这一点点变化呢！我们之间的交流开始察言观色，小心翼翼，想说点啥，生怕说错什么，总之，每个人都保留着各自的最大秘密。和上级的相处再也不像和自己老师相处那么容易那么和谐了。老师总会毫不保留的传授给你他说拥有的知识，而自己的上司生怕你偷走他的技能。无奈之余，唯有隐忍。</p><p style=\"text-align: left; text-indent: 2em;\">现在所经历的一切或许就是我们成长必须要面对的。越长大越孤单，只有自己足够坚强才能扛得起肩上的重担，才能不辜负父母的殷切期望，才能在纷繁复杂的社会中为自己争取一杯粥。</p><p style=\"text-align: left; text-indent: 2em;\"><strong>过往已成为回忆，可曾经的兄弟却愈发思念，几载书生，一世兄弟。愿我们历经沧桑，归来仍是少年！</strong></p><p><br/></p>', '原创', '/uploads/201909/25/190925043246126.jpg', 'https://lirongyaoper.com/xianyansuiyu/23.html', '1', 1, 1, 1, 0, 0, 1, 0, 8, 0),
(9, 10, 1, 'lirongyaoper', '轩鸿青', '文献查全方法之PubMed篇', '', 1494839821, 1558140242, '', '记得研究生刚刚入学时导师就让我慢慢读阅文献，学习科研方法，于是我傻乎乎的打开电脑，面对浩如烟海的文献数据库，无从下手，不知道该如何...', 10060, '<p style=\"text-indent:28px\"><span style=\"font-size: 18px;line-height: 2\">记得研究生刚刚入学时导师就让我慢慢读阅文献，学习科研方法，于是我傻乎乎的打开电脑，面对浩如烟海的文献数据库，无从下手，不知道该如何做能检索到自己想要的文献。明明知道宝藏藏在哪里，却找不到寻宝的路，无比迷茫。后来我自己也琢磨出来了一些技巧，可是还不太理想，达不到满意的效果，还是不知道如何构建合理的表达式才能让既全面又精确的查找到自己所要的文献，不能正确的应用“且”、“或”、“非”的巧妙组合去控制检索范围。直到无意间听了大神的几节课之后，我才茅塞顿开，恍然大悟，原来这样才是检索文献的最佳姿势。</span> </p><p><span style=\"font-size: 18px;line-height: 2\">下面以“放射外科手术治疗对于治疗早期非小细胞肺癌的临床疗效”为案例进行</span><span style=\"font-size: 18px;line-height: 2\">PubMed</span><span style=\"font-size: 18px;line-height: 2\">检索。如何查全既患有早期非小细胞肺癌又同时接受放射外科手术治疗的相关研究呢？我们分三步进行。</span></p><p><span style=\"font-size:18px;line-height:2\">第一步：检索出有关“非小细胞肺癌的相关全部文献”</span> </p><p style=\"text-indent:14px\"><span style=\"font-size:18px;line-height:2\">&nbsp;</span><span style=\"font-size:18px;line-height:2\">I</span><span style=\"font-size:18px;line-height:2\">． 先查找非小细胞肺癌的主题词</span> </p><p style=\"text-indent:14px\"><span style=\"font-size:18px;line-height:2\">&nbsp;&nbsp; </span><span style=\"font-size:18px;line-height:2\">打开<a href=\"http://www.sinomed.ac.cn/zh/subjectSearch.html\" target=\"_blank\">中国生物医学文献数据库</a></span><span style=\"font-size:18px;line-height:2\">，点击主题检索，输入要检索的词</span><span style=\"font-size:18px;line-height:2\">,” </span><span style=\"font-size:18px;line-height:2\">非小细胞肺癌</span><span style=\"font-size:18px;line-height:2\">”</span><span style=\"font-size:18px;line-height:2\">，点击查找就可以看到非小细胞肺癌的<span style=\"color:#E56600\">主题词</span>为“<span style=\"color:#E56600\"><strong>癌</strong></span></span><span style=\"font-size:18px;line-height:2;color:#E56600\"><strong>, </strong></span><span style=\"font-size:18px;line-height:2\"><span style=\"color:#E56600\"><strong>非小细胞肺</strong></span>”【图1】，再点击该主题词就可以查到非小细胞肺的英文主题词为“</span><span style=\"font-size:18px;line-height:2;color:#E56600\"><strong>Carcinoma, Non-Small-Cell Lung</strong></span><span style=\"font-size:18px;line-height:2\">”，即为</span><span style=\"font-size:18px;line-height:2\">PubMed</span><span style=\"font-size:18px;line-height:2\">上的</span><span style=\"font-size:18px;line-height:2\">MeSH</span><span style=\"font-size:18px;line-height:2\">【图2】。到此为止我们就查找到了非小细胞肺癌在</span><span style=\"font-size:18px;line-height:2\">PubMed</span><span style=\"font-size:18px;line-height:2\">上的主题词。注：</span><span style=\"font-size:18px;line-height:2\">* </span><span style=\"font-size:18px;line-height:2\">美国国立医学图书馆《医学主题词表（</span><span style=\"font-size:18px;line-height:2\">MeSH</span><span style=\"font-size:18px;line-height:2\">）》中译本、《中国中医药学主题词表》是中国生物医学文献数据库（</span><span style=\"font-size:18px;line-height:2\">CBM</span><span style=\"font-size:18px;line-height:2\">）进行主题标引和主题检索的依据。基于主题概念检索文献，利于提高查全率和查准率。</span></p><p style=\"text-align:center\"><img title=\"文献查全方法之PubMed篇\" alt=\"文献查全方法之PubMed篇\" src=\"/uploads/ueditor/image/20190515/1557912002203053.png\"/></p><p style=\"text-align:center\">图1</p><p style=\"text-align:center\"><img title=\"文献查全方法之PubMed篇\" alt=\"文献查全方法之PubMed篇\" src=\"/uploads/ueditor/image/20190515/1557912100788448.png\"/></p><p style=\"text-indent: 14px; text-align: center;\"><span style=\"line-height:2;font-size:18px\">图2<br/></span></p><p style=\"text-indent:14px\"><span style=\"line-height:2;font-size:18px\">II</span><span style=\"line-height:2;font-size:18px\">． 利用主题词在</span><span style=\"line-height:2;font-size:18px\">pubmed</span><span style=\"line-height:2;font-size:18px\">上检索文献</span> </p><p style=\"text-indent:14px\"><span style=\"line-height:2;font-size:18px\">进入</span><span style=\"line-height:2;font-size:18px\"><a href=\"https://www.ncbi.nlm.nih.gov/pubmed\" target=\"_blank\">PubMed</a></span><span style=\"line-height:2;font-size:18px\">，</span>&nbsp;<span style=\"line-height:2;font-size:18px\">在输入框的<span style=\"background-color:#FFFFFF;color:#E56600\"><strong>左侧选择</strong></span></span><span style=\"line-height:2;font-size:18px;background-color:#FFFFFF;color:#E56600\"><strong>MeSH</strong></span><span style=\"line-height:2;font-size:18px\">，在输入框中输入刚刚在中国生物医学文献数据库中查找到的非小细胞肺癌的主题词“</span><span style=\"line-height:2;font-size:18px\">Carcinoma, Non-Small-Cell Lung</span><span style=\"line-height:2;font-size:18px\">”，点击</span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>Searsh</strong></span><span style=\"line-height:2;font-size:18px\">按钮<span style=\"line-height: 40px;\">【图3】</span>，进入主题词界面【图4】。在该界面我们除了可以看到主题词外还可以看到</span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>Entry Terms</strong></span><span style=\"line-height:2;font-size:18px\">下的自由词，我们应首先把</span><span style=\"line-height:2;font-size:18px\">Entry Terms</span><span style=\"line-height:2;font-size:18px\">下的自由词复制并保存起来以便一会儿检索自由词时使用，然后我们<strong><span style=\"color:#E56600\">点击右上</span></strong>侧的</span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>Add to search builder</strong></span><span style=\"line-height:2;font-size:18px\">加入检索框，继续<strong><span style=\"color:#E56600\">点击</span></strong>其下侧的</span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>Search PubMed</strong></span><span style=\"line-height:2;font-size:18px\">。到此，以“</span><span style=\"line-height:2;font-size:18px\">Carcinoma, Non-Small-Cell Lung</span><span style=\"line-height:2;font-size:18px\">”为主题词的检索已经完成【图</span><span style=\"line-height:2;font-size:18px\">5</span><span style=\"line-height:2;font-size:18px\">】。</span></p><p style=\"text-align:center\"><img title=\"文献查全方法之PubMed篇\" alt=\"文献查全方法之PubMed篇\" src=\"/uploads/ueditor/image/20190515/1557912132239439.png\"/></p><p style=\"text-align: center;\">图3</p><p style=\"text-align:center\"><img title=\"文献查全方法之PubMed篇\" alt=\"文献查全方法之PubMed篇\" src=\"/uploads/ueditor/image/20190515/1557912147244206.png\"/></p><p style=\"text-align: center;\">图4</p><p style=\"text-align:center\"><img title=\"文献查全方法之PubMed篇\" alt=\"文献查全方法之PubMed篇\" src=\"/uploads/ueditor/image/20190515/1557912281920050.png\"/></p><p style=\"text-align: center;\">图5</p><p style=\"text-align:center\"><img title=\"文献查全方法之PubMed篇\" alt=\"文献查全方法之PubMed篇\" src=\"/uploads/ueditor/image/20190515/1557912310944857.png\"/></p><p style=\"text-align: center;\">图6</p><p style=\"text-align:center\"><img title=\"文献查全方法之PubMed篇\" alt=\"文献查全方法之PubMed篇\" src=\"/uploads/ueditor/image/20190515/1557912323103945.png\"/></p><p style=\"text-align: center;\">图7</p><p style=\"text-indent:14px\"><span style=\"line-height:2;font-size:18px\">&nbsp;</span><span style=\"line-height:2;font-size:18px\">III</span><span style=\"line-height:2;font-size:18px\">． 在</span><span style=\"line-height:2;font-size:18px\">PbuMed</span><span style=\"line-height:2;font-size:18px\">中检索小细胞肺癌的自由词</span> </p><p style=\"text-indent:28px\"><span style=\"line-height:2;font-size:18px\">点击【图</span><span style=\"line-height:2;font-size:18px\">5</span><span style=\"line-height:2;font-size:18px\">】搜索框下</span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>Advanced</strong></span><span style=\"line-height:2;font-size:18px\">按钮进入高级检索模式【图6】，接下来把刚刚复制的</span><span style=\"line-height:2;font-size:18px\">Entry Terms</span><span style=\"line-height:2;font-size:18px\">下的自由词<span style=\"color:#E56600\"><strong>一条一条的添加到检索框中</strong></span>。注意，<strong><span style=\"color:#E56600\">自由词之间用</span></strong></span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>OR</strong></span><span style=\"line-height:2;font-size:18px\"><strong><span style=\"color:#E56600\">链接</span></strong>，一般用</span><span style=\"line-height:2;font-size:18px;background-color:#FFFFFF;color:#E56600\"><strong>Title/Abstract</strong></span><span style=\"line-height:2;font-size:18px\"><strong><span style=\"background-color:#FFFFFF;color:#E56600\">来限制</span></strong>自由词。待所有自由词都添加、限定及链接完毕后点击下方的</span><span style=\"line-height:2;font-size:18px\">Search</span><span style=\"line-height:2;font-size:18px\">，自此自由词检索完毕，再次点击搜索框下</span><span style=\"line-height:2;font-size:18px\">Advanced</span><span style=\"line-height:2;font-size:18px\">按钮进入高级检索模式。这时，我们可以看到检索历史里记录的我们刚刚检索的自由词和主题词的记录【图7】。分别点击</span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>Add</strong></span><span style=\"line-height:2;font-size:18px\">按钮，把<strong><span style=\"color:#E56600\">主题词</span></strong>与<strong><span style=\"color:#E56600\">自由词</span></strong>的检索结果放入上方的检索框并用</span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>OR </strong></span><span style=\"line-height:2;font-size:18px\">链接，点击</span><span style=\"line-height:2;font-size:18px\">Searsh</span><span style=\"line-height:2;font-size:18px\">。到此为止，我们对非小细胞肺癌的相关研究算是检索完毕。注意，<strong><span style=\"color:#E56600\">主题词与自由词之间仍以</span></strong></span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>OR</strong></span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>链接。一句话请记住，组间</strong></span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>AND</strong></span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>，组内</strong></span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>OR</strong></span><span style=\"line-height:2;font-size:18px\"><strong><span style=\"color:#E56600\">，组内词目要全到</span></strong>。</span></p><p><br/></p><p><span style=\"line-height:2;font-size:18px\">第二步：检索出有关“放射外科手术治疗对于治疗早期非小细胞肺癌的临床疗效”</span> </p><p><span style=\"line-height:2;font-size:18px\">&nbsp; </span><span style=\"line-height:2;font-size:18px\">该步重复第一步。在此省略</span> </p><p><span style=\"line-height:2;font-size:18px\">第三步：合并前两项检索结果</span> </p><p><span style=\"line-height:2;font-size:18px\">&nbsp; </span><span style=\"line-height:2;font-size:18px\">经过第一步及第二步，我们成功检索到关于非小细胞肺癌及放射外科手术的所有研究，在此步我们对以上检索结果进行综合。特别注意的是因为是<strong><span style=\"color:#E56600\">组间</span></strong>，我们需采用</span><span style=\"line-height:2;font-size:18px;color:#E56600\"><strong>AND</strong></span><span style=\"line-height:2;font-size:18px\">的链接方式进行。可以看到，经过第三步，我们的检索结果相对于前两步有所减少。这是因为，通过</span><span style=\"line-height:2;font-size:18px\">AND</span><span style=\"line-height:2;font-size:18px\">后，系统查找的研究文献里既要包含非小细胞肺癌的相关研究，又包含放射外科手术的相关研究。</span> </p><p><span style=\"line-height:2;font-size:18px\">通过以上三步，我们基本检索到了接受放射外科手术的非小细胞肺癌的全部研究。达到了我们的检索目的。</span> </p><p><span style=\"line-height:2;font-size:18px\">希望小伙伴们喜欢，不足之处多多指教。谢谢。</span></p><p><span style=\"line-height:2;font-size:18px\">附件</span></p><p><span style=\"line-height:2;font-size:18px\">1.</span><span style=\"font-size: 18px;\">PubMed 网址：https://www.ncbi.nlm.nih.gov/pubmed/</span></p><p>2.<span style=\"font-size:18px;\">中国生物医学文献数据库&nbsp;网址：<a href=\"http://www.sinomed.ac.cn/zh/\" _src=\"http://www.sinomed.ac.cn/zh/\">http://www.sinomed.ac.cn/zh/</a> </span></p><p>3.本文中我自己的检索步骤&nbsp;</p><p style=\"line-height: 16px;\"><img style=\"vertical-align: middle; margin-right: 2px;\" src=\"https://lirongyaoper.com/common/static/plugin/ueditor/1.4.3.3/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a title=\"history.csv\" style=\"font-size:12px; color:#0066cc;\" href=\"/uploads/ueditor/file/20190516/1557968497433180.csv\">history.csv</a></p>', '原创', 'https://lirongyaoper.com/uploads/ueditor/image/20190515/thumb_300_200_1557912002203053.png', 'https://lirongyaoper.com/xuewuzhijing/9.html', '', 1, 1, 10, 0, 0, 1, 0, 10, 7),
(8, 7, 1, 'lirongyaoper', '轩鸿青', '研究生干的啥', '', 1557909928, 1558311964, '', '说实在的直到现在我也没有明白攻读临床医学硕士研究生的意义所在，在别人看来或许是获得临床技能的最佳平台、是提高日后工作环境的最佳途径...', 4147, '<p>&nbsp; 说实在的直到现在我也没有明白攻读临床医学硕士研究生的意义所在，在别人看来或许是获得临床技能的最佳平台、是提高日后工作环境的最佳途径、是一个人学习能力的最好体现。然而，在我看来攻读研究生的好处一无所有，充其量读下来就比别人多个学历吧，也就是大家所说的敲门砖。</p><p>&nbsp; 既然读了，就需要为此付出些什么，比如需要大把大把的经济投入，然而这些需要都得益于父母的无私帮助，这一点我时常感恩于心；需要大把大把的时间放在所谓的临床工作中锻炼自己的业务能力，说起我来，临床上的事做的马马虎虎，两三年期间不停的轮转，没有责任心，缺乏进取心，在导师身边的时间的有限，所以也没有机会好好跟着自己的导师学；另外，想要顺利的毕业，还需要有发表的学术论文，在我导师的耐心指导下，也马马虎虎的发了两篇价值不大的文章，说实在的，我辜负了黄老师的期望，没能按照老师的要求去做，不能拿出一篇像样的文章。<br/></p><p>&nbsp; 让我说研究生的成果，说实在的，没啥能拿出来的，医学知识浩如烟海，我才刚刚开始。临床方面，作为一名外科研究生，外科基本功还拿不出手，这或许跟自己的懒惰、不思进取的心态有关，时到今日我非常后悔，后悔没能好好学习，导致现在的尴尬情况。现在逐渐意识到临床实践的重要性，以后的从医路，我会加倍努力，弥补不足。科研方面，刚才也提到成果就两篇文章的产生，说实在的不值得一提。但是，还是想让大家看看我写的啥文章。以下就是两篇文章的相关内容，如果您不嫌弃，可以读读题目，如果充满好奇，可以读读文章的内容。挑挑语文成绩75分的我所写的文章里的语法错误。</p><p>第一篇<a href=\"http://www.wanfangdata.com.cn/details/detail.do?_type=perio&id=yxzs201806019\" target=\"_blank\">《重症肌无力临床分型及其在外科中的应用》</a></p><p>&nbsp; &nbsp;该篇文章发表于《医学综述》2018年06期，（该期刊是中华人民共和国国家卫生健康委员会主管、中国医师协会主办的国家级综合性医学专业期刊，已被中国科技论文统计源期刊（中国科技核心期刊）、RCCSE中国核心学术期刊（A-）、万方数据——数字化期刊群全文上网期刊、中国学术期刊（光盘版）全文收录期刊、中国期刊全文数据库收录期刊；2011年被《美国化学文摘》收录）具体见</p><p style=\"line-height: 16px;\"><img style=\"vertical-align: middle; margin-right: 2px;\" src=\"https://lirongyaoper.com/common/static/plugin/ueditor/1.4.3.3/dialogs/attachment/fileTypeImages/icon_pdf.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/uploads/ueditor/file/20190520/1558311740205046.pdf\" title=\"重症肌无力临床分型及其在外科中的应用_李荣耀.pdf\">重症肌无力临床分型及其在外科中的应用_李荣耀.pdf</a></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190515/1557910176592930.jpg\" title=\"研究生干的啥\" alt=\"研究生干的啥\"/></p><p>第二篇<a href=\"http://www.wanfangdata.com.cn/details/detail.do?_type=perio&id=henanykdx201805022\" target=\"_blank\">《胸腔镜、机器人辅助胸腺切除术安全性及短期效果的meta分析》</a></p><p>&nbsp; 该篇文章发表于《郑州大学学报（医学版）》2018年05期，（是由河南省教育厅主管、郑州大学主办、国内外公开发行的综合性医药卫生类学术期刊，已被收录北大核心期刊库）具体见</p><p style=\"line-height: 16px;\"><img style=\"vertical-align: middle; margin-right: 2px;\" src=\"https://lirongyaoper.com/common/static/plugin/ueditor/1.4.3.3/dialogs/attachment/fileTypeImages/icon_pdf.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/uploads/ueditor/file/20190520/1558311868483983.pdf\" title=\"胸腔镜、机器人辅助胸腺切除术安全性及短期效果的meta分析.pdf\">胸腔镜、机器人辅助胸腺切除术安全性及短期效果的meta分析.pdf</a></p><p><br/></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190515/1557910185642513.jpg\" title=\"研究生干的啥\" alt=\"研究生干的啥\"/></p><p style=\"text-align: left;\">&nbsp; 说实话，因为从小就有很强的好奇心，也希望自己的自己的东西与众不同。那QQ空间来说吧，我总想拥有个性的设计，所以一心想了解、学习编程。研究生期间也算是有所行动与付出吧，在空余时间学习了Web设计的专用语言PHP，了解了前端的html,css,javascript等方面的知识，所以你现在看到的这个网站也算是我编程方面的成果吧。<br/></p><p style=\"text-align: left;\">&nbsp; 至于其他方面，研究生期间也有所涉及，不过也没太专注。我希望人生多姿多彩，相信未来的天地定属于自己。<br/></p>', '原创', 'https://lirongyaoper.com/uploads/ueditor/image/20190515/thumb_300_200_1557910176592930.jpg', 'https://lirongyaoper.com/xianyansuiyu/8.html', '1,5', 1, 1, 10, 0, 0, 1, 0, 5, 0),
(10, 10, 1, 'lirongyaoper', '轩鸿青', '论文参考文献的添加', '', 1477896541, 1559372375, '', '站在别人的肩膀上才能看得更高更远，我们搞科研也一样，需要站在前辈的肩膀上更进一步，探索新的未知。但是，我们要时常敬畏，要拥有一颗感恩的心，尊重前辈来自不易的劳动成果……', 3679, '<p>假如想把图1中的第一篇文献，也就是Clinical evaluation and management of myasthenia gravis 加入您的参考文献</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190516/1557968920836073.png\" title=\"论文参考文献的添加\" alt=\"论文参考文献的添加\"/></p><p style=\"text-align: center;\">图1</p><p>首先你搜索“百度学术”，找到图2 中箭头指的位置点进去，点击后进入下一个界面，如图3&nbsp;</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190516/1557968934317973.png\" title=\"论文参考文献的添加\" alt=\"论文参考文献的添加\"/></p><p style=\"text-align: center;\">图2</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190516/1557968954187098.png\" title=\"论文参考文献的添加\" alt=\"论文参考文献的添加\"/></p><p style=\"text-align: center;\">图3</p><p>接着复制你要添加文献的题目 Clinical evaluation and management of myasthenia gravis，把这个题目粘贴到图3 的搜索框中 如图4</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190516/1557968971318553.png\" title=\"论文参考文献的添加\" alt=\"论文参考文献的添加\"/></p><p>&nbsp;&nbsp;<br/></p><p style=\"text-align: center;\">图4</p><p><br/></p><p>然后点击“百度一下”，进入图5</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190516/1557969002513954.png\" title=\"论文参考文献的添加\" alt=\"论文参考文献的添加\"/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br/></p><p style=\"text-align: center;\">图5</p><p>点击图5 中的引用，会弹出参考文献列表。如图6&nbsp;</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190516/1557969031612276.png\" title=\"论文参考文献的添加\" alt=\"论文参考文献的添加\"/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br/></p><p style=\"text-align: center;\">图6&nbsp;</p><p>图6中一般会有3种参考文献格式列表：GB/T7714；MLA；APA。发表于国内的医学期刊，一把情况下我们只要悬着第一种也就是GB/T7714格式的参考文献就行。把参考文献复制到我们的文章中。</p><p><br/></p>', '原创', 'https://lirongyaoper.com/uploads/ueditor/image/20190516/1557968920836073.png', 'https://lirongyaoper.com/xuewuzhijing/10.html', '', 1, 1, 10, 0, 0, 1, 0, 4, 0),
(18, 7, 1, 'lirongyaoper', '轩鸿青', '温馨提示', '', 1559382159, 1559476162, '', '本文主要说明本博客更新的原因，博客长远的发展方向……', 2504, '<p style=\"text-indent: 2em;\"><strong>亲爱的朋友，由于老网站基于的程序是作者开始学习编程之初时创立的，其稳定性、安全性等方面存在一定不足。作为一个业余编程爱好者，我一直在探索和学习编程的相关知识，随着对编程语言及思想的不断掌握，我慢慢优化了网站程序的相关代码，并全站开启https协议，创作出了集安全性、可靠性，稳定性等优良特点的新的博客程序。故决定淘汰老程序，经过多日的努力，老博客中的主要内容已经迁移到现在的博客程序中，故永久关闭老博客地址，禁止访问。<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;现使用的程序架构分明、代码层次清晰，安全性及可靠性较前明显改善，故打算长期使用，不再进行破坏性的重建，不定期的更新与维护也不会对网站的内容造成不可恢复的影响。<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;本博客主要用于记录作者的日常创作，为提高内容质量作者尽力坚持原创，如转载他处内容，本博客会添加出处。经过作者的再三思考，作者日常的编程学习笔记不再记录于此站点上，所有作者的编程学习笔记均记录在<a href=\"https://lirongyaoper.com/\" target=\"_blank\" style=\"font-size: 18px; text-decoration: underline;\"><em><span style=\"font-size: 18px;\">荣耀编程</span></em></a>站点，如您也对编程感兴趣，请进入该站点访问。<br/><br/>亲爱的朋友，感谢您一如既往的关注和支持！未来，我们一直在路上。谢谢！<br/><br/>祝朋友们工作顺利，一切如意！</strong></p><p><br/></p>', '原创', '/uploads/201906/01/190601055350246.jpg', 'https://lirongyaoper.com/xianyansuiyu/18.html', '1,4', 1, 1, 1, 0, 0, 1, 0, 6, 0),
(17, 14, 1, 'lirongyaoper', '轩鸿青', '龙门之旅', '', 1559377002, 1559381711, '旅游', '接到老师的电话说他有了洛阳的会议要参加，可以带上我们，我听到后别提有多高兴啦。说出来大伙儿可能觉得很不可思议，作为一亿河南老乡中的...', 1702, '<p style=\"text-align: left; text-indent: 2em;\">接到老师的电话说他有了洛阳的会议要参加，可以带上我们，我听到后别提有多高兴啦。说出来大伙儿可能觉得很不可思议，作为一亿河南老乡中的一员，我还没去过洛阳，没错，你们没听错，我还真没去过。原因么，高中上学太忙，大学离家太远，不过离家虽远，可我没有忘记故乡哦。</p><p style=\"text-align: left;\">刚到洛阳，她的城市魅力就深深吸引了我，在建的地铁和运行中的高架快速路简直让洛阳可以和省会一决高下。河南的那么多地级市，洛阳独树一帜。坐在车上，听着当地人自豪的讲述洛阳的历史、洛阳的美好愿景；看着他们脸上洋溢着的幸福笑容，我也开始羡慕起这座城市啦，不知道洛阳这座城愿不愿意接纳我呢。</p><p style=\"text-align: left; text-indent: 2em;\">言归正传，关于开会的内容，就用XXX代替吧，开完会的第二天，把老师送到车站我就可同门愉快的向龙门进发啦。</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190601/1559378858974242.jpg\" title=\"龙门之旅\" alt=\"龙门之旅\"/></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190601/1559381239703899.jpg\" title=\"龙门之旅\" alt=\"龙门之旅\"/></p><p style=\"text-align: left; text-indent: 2em;\">据说石窟的开建始于北魏，孝文帝迁都洛阳以后，崇信佛教的北魏皇室贵族们看中了龙门这块风水宝地，不惜人力物力在坚硬无比的石灰岩上,开凿了古阳洞、宾阳三洞(北、中、南)、火烧洞、莲花洞、魏字洞、石窟寺等等洞窟。其中仅宾阳中间一个洞窟,便历时达24年之久,用工达802366个之多它也是龙门石窟中最雄伟壮观、最富丽堂皇的一座洞窟。在宾阳中洞的入口处两边,曾经有两幅大型精美的浮雕艺术作品——《帝后礼佛图》,堪称艺术珍品。 北魏以后,一直到唐代,历代在龙门一带都曾开凿过洞窟,雕塑过佛像,而尤其以唐代最盛。现在龙门石窟中的敬善寺、潜溪寺、唐字洞、万佛洞、奉先寺以及东岸香山上的大部分洞窟,都是唐代开凿的。而这其中又有很大一部分功劳要归诸于武则天。</p><p style=\"text-align: left;\">传说武则天为了篡位，声称自己为弥勒转世,来拯救人间。为此要求不惜一切代价按照自己的形象雕凿一尊佛像，</p><p style=\"text-align: left;\">奉先寺中的卢舍那佛就是武则天时代最具代表性的杰作啦。其佛通高17.14米,头高4米,耳长1.9米。眉如新月,秀目细长,广额丰颐,面含微笑,端庄秀丽,宁静慈祥。卢舍那佛在佛经中指佛的报身像,梵语意为光明普照,代表着佛的智慧。而武则天给自己取了一个名字一曌,也正含此意,想来对于武则天来说意义非凡吧。</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190601/1559380304783470.jpg\" title=\"龙门之旅\" alt=\"龙门之旅\"/></p><p style=\"text-align: left; text-indent: 2em;\">参观完整个龙门石窟，相比大家和我一样郁闷，为啥好多雕塑都残缺不全了呢，这么伟大的文化瑰宝怎么一点儿都不懂得珍惜呢？听讲解员说，石窟的破坏有好多原因和因素在里面。一是<em>唐武宗</em>李炎为了集中皇权，在道士赵归真的鼓动和李德裕的支持下，下令拆毁佛寺，导致石窟被大规模的损毁；近现代以来，一方面，外国列强通过偷抢等手段盗窃大批文物，导致多数雕像身首异处，另一方面民国政府为从南京迁都洛阳，修建龙门西山下道路时也炸毁了大量的山麓佛龛。</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190601/1559381188939420.jpg\" title=\"龙门之旅\" alt=\"龙门之旅\"/></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190601/1559381197432716.jpg\" title=\"龙门之旅\" alt=\"龙门之旅\"/></p><p style=\"text-align: left; text-indent: 2em;\">参观完龙门石窟，对文化历史有了更进一步的认识与感知！文明是一个民族最伟大的财富，伟大的工程、伟大的文化宝库不应该被破坏。我们每一个人都有责任保护好伟大历史文化。<br style=\"text-align: left;\"/></p>', '原创', 'https://lirongyaoper.com/uploads/ueditor/image/20190601/thumb_300_200_1559378858974242.jpg', 'https://lirongyaoper.com/fengyunbianhuan/17.html', '', 1, 1, 10, 0, 0, 1, 0, 3, 1);
INSERT INTO `lry_article` (`id`, `catid`, `userid`, `username`, `nickname`, `title`, `color`, `inputtime`, `updatetime`, `keywords`, `description`, `click`, `content`, `copyfrom`, `thumb`, `url`, `flag`, `status`, `issystem`, `listorder`, `groupids_view`, `readpoint`, `paytype`, `is_push`, `up`, `down`) VALUES
(20, 7, 1, 'lirongyaoper', '轩鸿青', '公众人物应该起到良好的导向作用', '', 1560937854, 1575985250, '公众人物', '作为备受热捧的公众人物，您的一举一动都会展现在大众面前，您的一言一行都会被大众说追捧或模仿。所以，积极向上的表现能很好的影响着社会的进步。', 1765, '<p style=\"text-indent: 2em;\"><span style=\"font-size: 18px;\">这两天在看新闻的时候偶尔发现“超级女声”曾轶可无端辱骂边境警察的丑陋事件。事件的经过大致是这样的，听说她路过安检时由于对复查过程不满意而说了句我操的脏话，被边境民警拦下后又辱骂了警察一番，还口出狂言地说工作人员，你有错我骂你全家怎么了之类的不文明话语；更不可思议的事是在有禁止拍照的标语提示周围拍摄边境警察的工作牌，听法律人士说此举以涉嫌违法，可追究其法律责任。这件事的发生，瞬间让我对她的友好感降到零点。</span></p><p style=\"text-indent: 2em; text-align: center;\"><img src=\"/uploads/ueditor/image/20190619/1560938236506779.jpg\" title=\"公众人物应该起到良好的导向作用\" alt=\"公众人物应该起到良好的导向作用\"/><img src=\"/uploads/ueditor/image/20190619/1560938250501551.jpg\" title=\"公众人物应该起到良好的导向作用\" alt=\"公众人物应该起到良好的导向作用\"/></p><p style=\"text-indent: 2em; text-align: center;\"><img src=\"/uploads/ueditor/image/20190619/1560938278994829.jpg\" title=\"公众人物应该起到良好的导向作用\" alt=\"公众人物应该起到良好的导向作用\"/></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20190619/1560938265464242.jpg\" title=\"公众人物应该起到良好的导向作用\" alt=\"公众人物应该起到良好的导向作用\"/></p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 18px;\">出生于1990年的曾轶可凭着其出色的音乐天赋及个人后天不断的努力创作了一首首备受欢迎的热门歌曲，出品了一张张个人音乐专辑；在大众疯狂追求明星潮流的时代也成功进入的“超女”的队列。不得不说，如果不是这件事的出现，她拥有着别人无法超越的成功，拥有着别人享受不到的掌声的荣耀。可是，一切都因此而改变，虽然事后她即使的删除了微博上的不当言论及相关照片资料，但由此对当事民警造成的心理伤害无法消除；由此带来的负面影响也无法抹去；由此对法律的践踏也不能容忍；由此，她也让欣赏甚至崇拜她的热心粉丝从此心凉。然而，无论产生多么严重的后果，她都需要承担，也必须承担。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 18px;\">无独有偶，前一阵子，虎牙直播、抖音短视频中的莉哥在面向广大粉丝的直播中公然戏唱国歌，随意篡改国歌歌词。众所周知，国歌作为民族精神、国家尊严的象征理应庄严而神圣，而且国家相关法律条文对国歌的奏唱场合、奏唱礼仪和宣传教育提出了明确要求，规定在公共场合侮辱国歌情节严重的，处三年以下有期徒刑、拘役、管制或者剥夺政治权利。而事件中的莉哥却视国家尊严及法律威严之不顾，肆意侮辱国歌，给和谐健康的社会带来了消极的影响，理应受到相关法律的严惩，事后道歉也不能弥补其对全国民众的伤害，不能被谅解，随着其直播平台相继被封杀，也说明了全国人民维护国家尊严与荣耀的决心。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 18px;\">像上面这样的不和谐事件还有很多，明星，普通人均有涉及。但我想说的是，作为大家庭中的一员，我们要时刻维护好集体的荣誉，维护好法律的尊严，这不仅是我们的义务，更是我们的责任所在。特别是作为众所周知的公众人物，您的一言一行、一举一动都时刻影响着大众、影响着社会的舆论。因此，无论做什么事之前更应该三思而后行，选择好正确的方向，摆出正确的态度，让社会因为您而多一份和谐，多一分正能量。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 18px;\">公众人物有责任珍视和维护好自身社会形象，努力做精神家园守望者、社会价值风向标、道德航船压舱石，成为弘扬社会主义核心价值观的公共标杆。</span></p><p><br/></p>', '原创', '/uploads/201906/19/190619055253858.jpg', 'https://lirongyaoper.com/xianyansuiyu/20.html', '4,5', 1, 1, 10, 0, 0, 1, 0, 2, 1),
(16, 7, 1, 'lirongyaoper', '轩鸿青', '毕业季的告白', '', 1558879858, 1559086740, '毕业季', '三年就这样过去了，仿佛一场梦，又是一首歌，呵呵，谨以此文感谢陪伴我三年的导师、朋友，纪念失去的青春年华……', 3734, '<p style=\"text-indent: 2em;\">三年的研究生生活，如白驹过隙，转瞬即逝。弹指一挥间，我从一个懵懂无知，渴求知识的新生，成长为略有所成的毕业生。说实在的，三年的时间，不长也不短，我收获了许多，也付出了许多。</p><p style=\"text-indent: 2em;\">还清楚的记得三年前开学季的那个九月，由于自己的腿伤还未完全愈合，我弟弟把我送到了学校，看着他为了帮我购买日常用品而累的满头大汗的样子，我觉得有个兄弟真好。</p><p style=\"text-indent: 2em;\">进入临床工作后就是天天跟着师兄们学习临床知识与技能，说实在的研究生三年，我很后悔没有好好学习临床知识，毕业了，一想啥也不会，一点底气都没有。现在想想，自己为啥不想去临床的原因，贪玩是罪魁祸首吧，回过头看，都怪自己的格局太小了。限于住院医师培训的要求，需要经常出去转科，待在自己导师所在的科室很有限，转出去了，失去了管教，加上自我约束力也跟不上，整个就像一匹脱缰的野马，贪玩的心再也收不住了。就这样，浑浑噩噩的度过了大好的三年光阴。研究生读下来，临床技能一般般，未免有些遗憾。</p><p style=\"text-indent: 2em;\">不过说实话，跟着师兄们干活，在学到临床技能的同时，也懂得了很多为人处世的道理。记得刚进入临床的那段时间里，临床上不会的知识及技能很多很多，<strong>李丰科(李哥)</strong>老师、<strong>张文强</strong>师兄总是耐心地甚至不厌其烦的教我一些临床的基本知识，从来没有嫌弃我这个啥都不知道的小白。另外，李哥及张师兄在学习及生活方面的态度也深深感染着我，他们对生活积极乐观的态度、对工作认真负责、不怕苦不怕累的品质都潜移默化的影响着我，使我树立了正确的工作态度，相信以后的实际工作中必将受益。另外，特别感谢我的张文强师兄，感谢师兄在工作及生活中给予的大力帮助，感谢杨连凯师兄、盛峰喜师兄，同门王亨强，张宇辰师弟在我读研期间给予的帮助。</p><p style=\"text-indent: 2em;\">读到此，大家想必会问，研究生不应该有导师呢？哈哈，别急，接下来，我慢慢的和大伙儿聊聊我和导师的那些事儿。说到我尊敬的导师，首先我要感谢三年前黄老师的收纳，才让我有五彩缤纷的研究生生活，感谢老师给了我一个更新更高的起点。</p><p style=\"text-indent: 2em;\">先来介绍一下我可敬的导师，<strong>黄壮士</strong>教授：1.河南省抗癌协会食管癌专业委员会主委；2.《中国肿瘤》、《中国综合临床》等杂志编委、外审专家；3.河南省胸外科专家；4.郑州大学第二附属医院胸外科主任医师、教授；5.郑州大学第二附属医院大外科教研室主任等。黄老师临床技术精湛、理论知识渊博、待人和蔼可亲。</p><p style=\"text-indent: 2em;\">学习方面：黄老师治学有方，言传身教。在理论知识的学习方面，为了让我们系统的撞我本专科的理论基础知识，黄老师每周利用自己的宝贵时间与我们共同学习《普通胸部外科学》，我们事先阅读专注的相关章节，然后以PPT的形式向大伙汇报学习内容。老师利用这种学习形式，不仅能够很好的督促我们主动学习，而且大伙儿在一起还能够共同学习与谈论，查漏补缺，加强学习效果。为了让我们对本专业领域的前沿及重要内容有一个很好的把握，在去年下半年的时候专门给我列出了本专业的热点及要点。好在我都认真的看完啦，也进一步充实了我的知识。在实践技能方面，手术台上黄老师高超、优雅的技术让我由衷的崇拜，老师手中的手术刀就像握着的钢笔，“挥洒自如，行云流水”，每一场手术对我来说就是一顿视觉盛宴，回味无穷。唯一遗憾的是，由于手术级别的限制，我们能参与部分不是太，不过感谢老师曾经多次手把手教我们缝合和打结，教会我们外科的基本功，为我们以后的外科道路奠定了基础。</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20190528/1559038848901584.jpg\" title=\"奔向下一个起点\" alt=\"奔向下一个起点\"/></p><p style=\"text-indent: 2em;\">生活方面：与老师相处的这近三年的时光，也时常得到老师的帮助与鼓励。老师会时不时的给我们点生活补贴，让我们少一些读研期间经济方面的压力；老师会带我们参加一些学术性或非学术性的活动或聚会，给我们更多认识世界的机会，锻炼我们适应社会生活的能力；当我们遇到困难或挫折时，老师也会给予我们鼓励，给予我们面对困难的坚强与勇气。</p><p style=\"text-indent: 2em;\">论文创作方面：硕士论文作为研究生学习中最重要的组成部分，我尊敬的黄老师真是为我论文的顺利完成做出了巨大的贡献，付出了太多的时间和经历。依稀记得那一个周末，您刚结束完一天的学术会议，会场组织的晚宴都顾上享用就把我叫上，咱们一起找了一家餐馆边吃边构思论文的思路；依稀记得已经接近凌晨2点了您还在帮我批阅论文；也依稀记得为了我能顺利通过毕业论文的答辩而耐心细致的帮我批改答辩PPT，替我出谋划策。总的来说，硕士论文的顺利完成与通过专家的答辩，您功不可没。作为您的学生，我把一切都记在心上，谢谢您黄老师！</p><p><img src=\"/uploads/ueditor/image/20190528/1559044418500582.jpg\" title=\"奔向下一个起点\" alt=\"奔向下一个起点\"/></p><p style=\"text-indent: 2em;\">有人说，师恩如山，因为高山巍峨，使人崇敬。我还要说，师恩如海，因为大海浩瀚，无法估量。再一次谢谢您，我敬爱的黄老师！<br/></p><p><img src=\"/uploads/ueditor/image/20190528/1559044452829620.jpg\" title=\"奔向下一个起点\" alt=\"奔向下一个起点\"/></p><p><br/></p><p><img src=\"/uploads/ueditor/image/20190528/1559044494774427.jpg\" title=\"奔向下一个起点\" alt=\"奔向下一个起点\"/></p><p style=\"text-indent: 2em;\">三年不易，能顺利完成学业，也要感谢来自父母的帮助与支持！说实在的，我的今天，是面朝黄土背朝天的父母给予我的。为了我的将来，他们再苦再累也心甘情愿，毫不保留的给与我他们的一切。我光鲜亮丽的背后是父母艰辛的努力与付出。养育之恩，定当汇报！</p><p style=\"text-indent: 2em;\">感谢身边一直陪伴的朋友们，是你们的欢声笑语陪我度过充实、快乐的三年。都说，同学情、战友情是世界上最真挚的友情，何尝不是！记得我们一起为了考试奋战的时光；记得我们一起畅玩时嘚瑟的模样；记得我们一起游山玩水中的流浪。当然，还有在一起那一场又一场的吃鸡游戏……</p><p style=\"text-indent: 2em;\">另外，这三年，特别感谢室友的不杀之恩，每每看到XX室友把他室友怎么怎么的时候，我就特别感谢室友们的宽容和理解，是你们的宽容和理解才让我感到宿舍就像家一般的温暖！</p><p style=\"text-indent: 2em;\">说实在的，我这个人比较内向，不太善于交际，因此，也没有大把大把的朋友。还好，研究生遇到了些许知心的好兄弟，比如胡超帆兄弟，张忠义兄弟等，我的生活因为您们的陪伴才绚烂多姿，充满着奇迹！在此一并感谢秦兴松、胡超帆、张忠义等兄弟的支持。人生路漫漫，在即将离别的岔道上，祝愿您们前程似锦。莫愁前路无知己，天下谁人不识君。希望你们在新的旅途中能收获如同我们一般的友谊；恰如灯下，故人万里，归来对影。也期待有那么一天，我们能够举杯对影，共话人生。</p><p style=\"text-indent: 2em;\">尊敬的黄老师，亲爱的朋友们，明天，我们胸怀梦想，坚定前进！<br/></p>', '原创', 'https://lirongyaoper.com/uploads/ueditor/image/20190528/thumb_300_200_1559038848901584.jpg', 'https://lirongyaoper.com/xianyansuiyu/16.html', '1,3', 1, 1, 1, 0, 0, 1, 0, 25, 0),
(29, 16, 1, 'lirongyaoper', '轩鸿青', '医殇', '', 1577716679, 1753189538, '', '敬畏生命，尊重医务工作者，尊重我们的生命保护伞。', 3340, '<p style=\"text-align:left;text-indent:32px;line-height:150%\"><span style=\"font-size:16px;line-height:150%;font-family:仿宋\">数十载的寒窗苦读，八年的医路修行，本以为苦尽甘来，却迎来当头一棒。</span></p><p style=\"text-align:left;text-indent:32px;line-height:150%\"><span style=\"font-size:16px;line-height:150%;font-family:仿宋\">说实话，记得高考过后，在选择大学专业的时候，我毫不犹豫的选择了临床医学专业，憧憬着像很多德高望重的医生一样，穿上白大褂，无比的自豪与骄傲。八年过去了，我也成为了一名医生，可是，我却不敢向圈外的朋友说我是一名医务工作者，包括自己的亲戚，甚至在自己的工作单位，面对众多的患者，穿着白大褂都我会觉得异样，有时我会刻意规避患者的目光，生怕有一丝波澜。</span></p><p style=\"text-align:left;text-indent:32px;line-height:150%\"><span style=\"font-size:16px;line-height:150%;font-family:仿宋\">学了八年医学，在旁人眼里，我可能已经成为别人羡慕的对象。身上多了铁饭碗、挣钱多等之类的标签。所以我相信您们肯定不理解我开头说的话，殊不知，八年，医疗圈发生了多少本不应该发生的悲剧。</span></p><p style=\"text-align:left;text-indent:32px;line-height:150%\"><span style=\"font-size:16px;line-height:150%;font-family:仿宋\">先说近的，2019年12月24日，一个西方人的平安夜，最近也受国人热捧的节日，然而就在那天，一位医生却倒在了自己的工作岗位上，永远的倒下了，她叫杨文，北京航天总医院的副主任医师，她的倒下，不是因为繁重工作导致的，而是来自一位丧尽天良的患者家属用试先准备的大刀刺死的，短短两分钟，杨医生的颈部严重损伤，她还没来得及反应，就倒在了一片血泊之中，虽经全力抢救，杨医生最终因伤势过重，经抢救无效，于 25 日凌晨离世了。此时，我心如刀绞，万分悲痛，如果死已成为事实，我多么希望杨医生是因为操劳过度而离开我们，而不是这么凶残的故意杀害。</span></p><p style=\"text-align:left;text-indent:32px;line-height:150%\"><span style=\"font-size:16px;line-height:150%;font-family:仿宋\">为什么这样一</span><span style=\"font-size:16px;line-height:150%;font-family:仿宋\">位德高望重的医生会被残忍杀害，回首过往的十多年，为什么一位又一位医生受到暴力伤害，受到生命威胁？</span></p><p style=\"text-align:left;text-indent:32px;line-height:150%\"><span style=\"font-size:16px;line-height:150%;font-family:仿宋\">据权威媒体报道仅 2009～2018 年的十年间，中国大陆媒体共报道过 295 起伤医事件，362 名医护人员受伤。2001 年以来，至少有 50 位医务工作者因为暴力伤医事件而失去生命。</span></p><p style=\"text-align:left;text-indent:32px;line-height:150%\"><span style=\"font-size:16px;line-height:150%;font-family:仿宋\"><img src=\"/uploads/ueditor/image/20191230/1577716833628457.png\" title=\"医殇\" alt=\"医殇\"/></span></p><p style=\"text-align:left;text-indent:32px;line-height:150%\"><span style=\"font-size:16px;line-height:150%;font-family:仿宋\">且不说医生工作道理有多累，因操劳过度殉职多少，只说单纯的暴力伤医事件一次又一次的发生，凉了多少有志青年那颗火热的心，医生，在业界已经不是一中令人向往的职业了，很多从医的老师都表态，绝不让子女重蹈覆辙，医生，因为暴力与操劳俨然成为了一种高危职业。如果医生成了一种高危职业，如果救人要以生命为代价。那么不远的未来，也许将没有人愿意把治病救人作为自己的人生理想；也没有人愿意念出那句健康所系，性命相托的医学誓言；更不会有越来越多优秀的年轻人，愿意加入到医疗行业。这绝不是我们所希望的未来。中国有三百多万医生，所有一线医护工作者不超过一千万。就是这样一群人，守护着十四亿人的生老病死。他们不是神，他们有家庭、有理想，他们会疲倦、会失望，他们是身边的你我他。每一件白大褂下面，都是一条鲜活的生命。</span></p><p style=\"text-align:left;text-indent:32px;line-height:150%\"><span style=\"font-size:16px;line-height:150%;font-family:仿宋\">鲁迅在《呐喊》中说到“这一年我没有毕业，我已经到了东京了，因为从那一回以后，我便觉得医学并不是一件紧要的事情，凡是愚若的国民，即使体格如何健全，如何茁壮，也只能做毫无意义的示众的材料和看客，病死多少是不必以为不幸的。”当前重要的事是有关部门要引导社会各界树立正确的医患关系，要卸下医生身上除医疗之外的包袱，希望暴力伤医的事件不再重现。</span></p><p><br/></p>', '原创', '/uploads/202001/06/200106101355518.png', 'https://lirongyaoper.com/kepujiankang/29.html', '1,3', 1, 1, 1, 0, 0, 1, 0, 13, 0),
(25, 7, 1, 'lirongyaoper', '轩鸿青', '吾日三省', '', 1571062254, 1575986215, '', '这世界上能轻而易举、毫不费劲实现的，只有贫穷和衰老——其它的都需要努力。', 2561, '<section style=\"margin: 10px 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; text-align: center; font-size: 10px;\"><section style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; display: inline-block; vertical-align: top;\"><br class=\"Apple-interchange-newline\"/><section style=\"margin: 0px -0.7em 0px 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; width: 0px; border-left: 0.35em solid rgb(1, 183, 204); border-bottom: 0.35em solid rgb(1, 183, 204); display: inline-block; vertical-align: bottom; border-right: 0.35em solid transparent !important; border-top: 0.35em solid transparent !important;\"></section><section class=\"\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; display: inline-block; vertical-align: bottom; width: 1.8em; height: 1.8em; border-radius: 0px 0px 0px 1.1em; background-color: rgb(1, 183, 204); font-size: 15px; line-height: 1.8em; color: rgb(255, 255, 255);\"><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">1</strong></p></section></section></section><section class=\"\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; line-height: 2; font-size: 15px; letter-spacing: 2px;\"><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: normal;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\"/></p><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">这世界上能轻而易举、毫不费劲实现的，只有贫穷和衰老——其它的都需要努力。</strong></p><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: normal;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\"/></p></section><section class=\"\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; font-size: 14px; line-height: 2; letter-spacing: 2px;\"><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: normal;\">我们无法抗拒衰老，但是我们可以在衰老的进程中摆脱贫穷——努力的真谛。</p><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: normal;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\"/></p><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: normal;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\"/></p></section><section style=\"margin: 10px 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; text-align: center; font-size: 10px;\"><section style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; display: inline-block; vertical-align: top;\"><section style=\"margin: 0px -0.7em 0px 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; width: 0px; border-left: 0.35em solid rgb(1, 183, 204); border-bottom: 0.35em solid rgb(1, 183, 204); display: inline-block; vertical-align: bottom; border-right: 0.35em solid transparent !important; border-top: 0.35em solid transparent !important;\"></section><section class=\"\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; display: inline-block; vertical-align: bottom; width: 1.8em; height: 1.8em; border-radius: 0px 0px 0px 1.1em; background-color: rgb(1, 183, 204); font-size: 15px; line-height: 1.8em; color: rgb(255, 255, 255);\"><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">2</strong></p></section></section></section><section class=\"\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; line-height: 2; font-size: 15px; letter-spacing: 2px;\"><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\"/></p><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">只有学会把自己已有的成绩都归零，才能腾出空间去接纳更多的新东西——使自己不断超越自己。</strong></p></section><section class=\"\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; font-size: 14px; line-height: 2; letter-spacing: 2px;\"><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: normal;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\"/></p><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: normal;\">把成绩归零，留着经验；把烦恼清零，留着教训——新东西才会成为超越自己的好东西。</p><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: normal;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\"/></p><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: normal;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\"/></p></section><section style=\"margin: 10px 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; text-align: center; font-size: 10px;\"><section style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; display: inline-block; vertical-align: top;\"><section style=\"margin: 0px -0.7em 0px 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; width: 0px; border-left: 0.35em solid rgb(1, 183, 204); border-bottom: 0.35em solid rgb(1, 183, 204); display: inline-block; vertical-align: bottom; border-right: 0.35em solid transparent !important; border-top: 0.35em solid transparent !important;\"></section><section class=\"\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; display: inline-block; vertical-align: bottom; width: 1.8em; height: 1.8em; border-radius: 0px 0px 0px 1.1em; background-color: rgb(1, 183, 204); font-size: 15px; line-height: 1.8em; color: rgb(255, 255, 255);\"><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">3</strong></p></section></section></section><section class=\"\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; line-height: 2; font-size: 15px; letter-spacing: 2px;\"><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: normal;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\"/></p><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\">忙的时候虽然累，但是忙完了会特别畅快舒服；闲的时候虽然爽，但是闲的时间长了心就慌了。</strong></p></section><section class=\"\" style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; font-size: 14px; line-height: 2; letter-spacing: 2px;\"><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(51, 51, 51); font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: 2px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;\"/></p><p style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(51, 51, 51); font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: 2px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">忙得不要太累，闲得不要太长；有张有弛，有闲有忙——健康每一天。</p><br class=\"Apple-interchange-newline\"/></section><p><br/></p>', '原创', '/uploads/201910/14/191014101216366.jpg', 'https://lirongyaoper.com/xianyansuiyu/25.html', '1,3', 1, 1, 1, 0, 0, 1, 0, 5, 0),
(27, 17, 1, 'lirongyaoper', '轩鸿青', '详解 $_SERVER 函数中QUERY_STRING和REQUEST_URI区别', '', 1576312917, 1576314953, 'php', '$_SERVER系统变量的一些学习笔记，以便复习、理解', 1726, '<p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\"><strong>实例：</strong></span></p><p><strong>1 &nbsp;http://localhost<span style=\"color: rgb(255, 0, 0);\">/aaa/ </span>(打开aaa中的index.php</strong>)</p><p>结果：</p><p>$_SERVER[&#39;QUERY_STRING&#39;] = &quot;&quot;;</p><p>$_SERVER[&#39;REQUEST_URI&#39;]&nbsp; = &quot;/aaa/&quot;;</p><p>$_SERVER[&#39;SCRIPT_NAME&#39;]&nbsp; = &quot;/aaa/index.php&quot;;</p><p>$_SERVER[&#39;PHP_SELF&#39;]&nbsp;&nbsp;&nbsp;&nbsp; = &quot;/aaa/index.php&quot;;</p><p>&nbsp;</p><p><strong>2 &nbsp;http://localhost<span style=\"color: rgb(255, 0, 0);\">/aaa/?p=222</span> (附带查询)</strong></p><p>结果：</p><p>$_SERVER[&#39;QUERY_STRING&#39;] = &quot;p=222&quot;;</p><p>$_SERVER[&#39;REQUEST_URI&#39;]&nbsp; = &quot;/aaa/?p=222&quot;;</p><p>$_SERVER[&#39;SCRIPT_NAME&#39;]&nbsp; = &quot;/aaa/index.php&quot;;</p><p>$_SERVER[&#39;PHP_SELF&#39;]&nbsp;&nbsp;&nbsp;&nbsp; = &quot;/aaa/index.php&quot;;</p><p>&nbsp;</p><p><strong>3 &nbsp;http://localhost<span style=\"color: rgb(255, 0, 0);\">/aaa/index.php?p=222&amp;q=333</span></strong></p><p>结果：</p><p>$_SERVER[&#39;QUERY_STRING&#39;] = &quot;p=222&amp;q=333&quot;;</p><p>$_SERVER[&#39;REQUEST_URI&#39;]&nbsp; = &quot;/aaa/index.php?p=222&amp;q=333&quot;;</p><p>$_SERVER[&#39;SCRIPT_NAME&#39;]&nbsp; = &quot;/aaa/index.php&quot;;</p><p>$_SERVER[&#39;PHP_SELF&#39;]&nbsp;&nbsp;&nbsp;&nbsp; = &quot;/aaa/index.php&quot;;</p><p>&nbsp;</p><p><strong>由实例可知：</strong></p><p>$_SERVER[&quot;<span style=\"color: rgb(255, 0, 0);\">QUERY_STRING</span>&quot;]&nbsp; 获取查询 语句，实例中可知，<span style=\"color: rgb(255, 0, 0);\">获取的是?后面的值</span></p><p>$_SERVER[&quot;<span style=\"color: rgb(255, 0, 0);\">REQUEST_URI</span>&quot;]&nbsp;&nbsp; <span style=\"color: rgb(255, 0, 0);\">获取 http://localhost 后面的值，包括/</span></p><p>$_SERVER[&quot;<span style=\"color: rgb(255, 0, 0);\">SCRIPT_NAME</span>&quot;]&nbsp;&nbsp; <span style=\"color: rgb(255, 0, 0);\">获取当前脚本的路径</span>，如：index.php</p><p>$_SERVER[&quot;<span style=\"color: rgb(255, 0, 0);\">PHP_SELF</span>&quot;]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"color: rgb(255, 0, 0);\">当前正在执行脚本的文件名</span></p><p><span style=\"color: rgb(255, 0, 0);\"><br/></span></p><p><em><span style=\"color: rgb(0, 0, 0); font-size: 12px;\">来源：</span><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 等线;\">http://blog.sina.com.cn/s/blog_686999de0100jgda.html</span></em></p><p><br/></p>', '原创', '', 'https://lirongyaoper.com/phpxiangguan/27.html', '', 1, 1, 10, 0, 0, 1, 0, 2, 0),
(28, 7, 1, 'lirongyaoper', '轩鸿青', '每周三言', '', 1576417801, 1576418695, '', '微笑 理解 努力', 1697, '<p style=\"text-align: center;\">01<br/></p><p><br/></p><p><br/></p><p><strong><span style=\"font-family:宋体\">微笑，是一种态度；奔跑，是一种姿势——这是积极的人生不可缺少的样子！</span></strong></p><p><strong><span style=\"font-family:宋体\"><br/></span></strong></p><p><strong><span style=\"font-family:宋体\">感与悟</span></strong></p><p><strong><span style=\"font-family:宋体\"><span style=\"font-size:14px;font-family:等线\">微笑，坚定着我们奔跑的方向；奔跑，让我们一步步接近人生的目标。</span></span></strong></p><p><strong><span style=\"font-family:宋体\"><span style=\"font-size:14px;font-family:等线\"></span></span></strong></p><hr/><hr/><p><strong><span style=\"font-family:宋体\"></span></strong></p><hr/><p style=\"text-align: center;\"><strong><span style=\"font-family:宋体\"></span></strong><strong><span style=\"font-family:宋体\">02</span></strong></p><section style=\"line-height: 2;font-size: 15px;letter-spacing: 2px;box-sizing: border-box\"><p style=\"box-sizing: border-box\"><strong style=\"box-sizing: border-box\"><span style=\"font-family:宋体\">如果每个人都理解你，那你得普通成什么样子？</span></strong></p><p style=\"box-sizing: border-box\"><strong style=\"box-sizing: border-box\"><span style=\"font-family:宋体\"><br/></span></strong></p><p style=\"box-sizing: border-box\">&nbsp;<strong><span style=\"font-family:宋体\">感与悟</span></strong></p></section><section style=\"font-size: 14px;line-height: 2;letter-spacing: 2px;box-sizing: border-box\"><p style=\"box-sizing: border-box\">即使我们已经很“普通”（这已经不容易了），依然不会被所有人理解——学会包容各种不理解，是我们的人生修养。</p><p style=\"box-sizing: border-box\">&nbsp;</p><hr/><hr/><hr/><p style=\"box-sizing: border-box; text-align: center;\">&nbsp;<strong>03</strong><br/></p></section><section style=\"line-height: 2;font-size: 15px;letter-spacing: 2px;box-sizing: border-box\"><p style=\"box-sizing: border-box\"><strong style=\"box-sizing: border-box\"><span style=\"font-family:宋体\">知识是学来的，能力是练来的，胸怀是修来的——没有什么会凭空而来。</span></strong></p><p style=\"box-sizing: border-box\">&nbsp;</p><p style=\"box-sizing: border-box\"><strong>感与悟</strong><br/></p></section><section style=\"font-size: 14px;line-height: 2;letter-spacing: 2px;box-sizing: border-box\"><p style=\"box-sizing: border-box\">这里的道理看似很简单，问题是我们常常在学、练、修的过程中偷工减料。</p></section><p><strong><span style=\"font-family:宋体\"><span style=\"font-size:14px;font-family:等线\"><br/></span></span></strong><br/></p><section style=\"font-size: 14px; line-height: 2; letter-spacing: 2px; box-sizing: border-box;\"><br/></section>', '原创', '/uploads/201912/15/191215095302596.jpg', 'https://lirongyaoper.com/xianyansuiyu/28.html', '', 1, 1, 10, 0, 0, 1, 0, 2, 0),
(30, 7, 1, 'lirongyaoper', '轩鸿青', '别在最好的年纪，活得太安逸 ', '#000000', 1578581109, 1578581322, '', '千万别在最好的年纪，活得太安逸。要永远保持清醒、独立，对世界充满热爱、好奇以及不灭的探索精神', 2963, '<p style=\"text-align: center;\"><strong><span style=\"font-size: 18px;\">1</span></strong><br/></p><p><br/></p><p><span style=\"font-size: 18px;\">　　你能想象吗？</span><span style=\"font-size: 18px;\">世上最有钱的地方——钞票印刷厂有一天都会走向倒闭。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　前不久看到一则报道，为英国等140多个国家印制钞票的世界最大印钞厂——德拉鲁公司，发出了破产预告。</span><span style=\"font-size: 18px;\">这家有着近200年历史的老牌印钞公司曾鼎盛一时，承包了全世界三分之一的钞票，每周印刷的钞票叠加在一起，高度是珠穆朗玛峰的两倍。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　可是近两年来，公司资金周转不断出现问题，加上公司本身的技术停滞不前，导致今年损失了价值4亿英镑的英国护照印刷的巨额订单，公司受到严重打击。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　除此之外，还有一个最关键的因素，那就是支付的变革，移动支付成为一种全新的生活方式。</span><span style=\"font-size: 18px;\">人们出门几乎不需要带现金，对于钞票的需求自然是急剧下降。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　<span style=\"color: rgb(61, 170, 214);\"><strong>这个时代就是这样瞬息万变，新鲜事物在不断涌现，思维方式也在更迭换代。</strong></span></span></p><p><br/></p><p style=\"text-align: center;\"><span style=\"font-size: 18px;\"><strong>2</strong></span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　</span><span style=\"font-size: 18px;\">曾经，多少人梦想的人生就是，找一份稳定的工作，结婚生子，简单平淡。</span><span style=\"font-size: 18px;\">可是，那些所谓稳定的工作就真的稳定吗？</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　大学同学杨梅，一毕业就进入当地银行做了一名柜员，接下来结婚生子，一切都是顺风顺水，小日子过得有滋有味。</span><span style=\"font-size: 18px;\">可前几天，杨梅忽然发了条朋友圈：</span><span style=\"font-size: 18px;\">“一切都是新的开始，加油！</span><span style=\"font-size: 18px;\">”配图则是她面前的书桌与摊开的书本。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　打听才知道，近些年受线上支付冲击，杨梅所在的银行柜员越来越少，身边不少同事陆续离职，杨梅也愈发不安，但她悲哀地发现，在银行一年多，除了给客户办理业务和熟练地点钞之外，她竟然什么都不会。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　于是，杨梅毅然决定自考MBA，给自己开辟一条新路。</span><span style=\"font-size: 18px;\">我很佩服杨梅，起码她有重头再来的勇气。</span><span style=\"font-size: 18px;\">可现实中呢，多的是人一边不满意现状，一边又没有勇气寻求改变，继续在悠闲的工作中乐得轻松自在，蹉跎时光，浑浑噩噩度日。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　你以为年复一年，工作经验就会与日俱增。</span><span style=\"font-size: 18px;\">可事实是，重复同样的工作十年，和拥有十年的工作经验，完全是两个概念。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　这个世界上没有绝对稳定的工作，真正的稳定，不是你在一家单位有饭吃，而是走到哪里都有饭吃。</span><span style=\"color: rgb(61, 170, 214);\"><strong><span style=\"font-size: 18px;\">想要在这个时代站稳脚跟，唯有时刻保持学习的能力，顺应时代的变化。</span></strong></span><span style=\"color: rgb(61, 170, 214);font-size: 18px;\"></span></p><p><br/></p><p style=\"text-align: center;\"><strong><span style=\"font-size: 18px;\">3</span></strong></p><p><br/></p><p><span style=\"font-size: 18px;\">　　其实，我不是想说稳定就代表不好，能获得一份稳定的工作也是要靠实力的。我只是希望我们，不管在做一份什么样的工作，都不要懈怠、麻木、失去进步的动力。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　想起之前认识的一位业内大咖老曹，刚毕业就入职一家知名培训机构，五年下来，一路做到了部门主管的位置，薪资高福利好，不少人都羡慕不已。可老曹并没有满足于此，他永远保持着学习的能力，敏锐地观察着行业动态。现在的他，年仅34岁，却已经做到了上市公司的销售总监。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　都说人过30，多多少少身上都会有中年危机的迹象：焦虑、迷茫、油腻……可事实是，中年危机很少出现在像老曹这样早有准备的人身上。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　很喜欢这样一句话：这个时代的高手，除了默默无闻埋头努力的人，更是那些不可替代的有创造力的人。不难发现，越是优秀的人，越有危机意识，越懂得突破固有的思维，接受新的挑战。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　</span><span style=\"font-size: 18px;color: rgb(61, 170, 214);\"><strong>所以，千万别在最好的年纪，活得太安逸。</strong></span><span style=\"color: rgb(61, 170, 214);\"><strong><span style=\"font-size: 18px;\">要永远保持清醒、独立，对世界充满热爱、好奇以及不灭的探索精神</span></strong><strong><span style=\"font-size: 18px;\">。</span></strong></span><span style=\"font-size: 18px;\">对自己有要求，对生活有追求，对未来有期待，人生才会始终走在上坡路。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　你可以平庸地过一生，也可以通过不懈奋斗与折腾创造自己的璀璨人生。选择权，在你自己手上。</span></p><p><br/></p><p><span style=\"font-size: 18px;\">　　永远不要觉得努力太晚。请记住，种一棵树的最好时机是十年前，其次是现在。</span></p><p><br/></p>', '分原创，摘自《人民日报》微信端', '/uploads/202001/09/200109104825976.png', 'https://lirongyaoper.com/xianyansuiyu/30.html', '1,3', 1, 1, 1, 0, 0, 1, 0, 10, 0),
(31, 7, 1, 'lirongyaoper', '上元赶路', '不迁怒，是一个人的基本修养 ', '', 1600096654, 1600097747, '', '对待外人彬彬有礼，可能只是一种处世的圆滑与世故；而将好情绪留给身边最亲近的人，才是深入骨髓的教养。', 1519, '<p style=\"text-align:left;text-indent:27px\"><span style=\"font-size: 18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">常言道：“人生不如意事十之八九。”生活中，我们难免会遇到各种状况；与人相处，不可避免会被人麻烦；和人共事，不可避免会产生摩擦。</span></p><p style=\"text-align:left\"><span style=\"font-size:18px;font-family:宋体\">&nbsp;</span><span style=\"font-size:18px;font-family: &#39;Microsoft YaHei UI&#39;,sans-serif\">生气和郁闷是在所难免的，但在愤怒之下还能保持礼貌和理性，不乱发火、不迁怒，是利人利己的安全保障，也是悦人悦己的基本修养。</span></p><p style=\"text-align:center\"><strong><span style=\"font-size:18px;font-family:宋体\">1</span></strong></p><p style=\"text-align:left\"><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif;letter-spacing:1px;background:white\">史铁生曾说</span><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">：“我真想告诫所有孩子，千万不要跟最亲爱的人发脾气，我已经懂了，可是我已经来不及了。”是呀，我们组建家庭是为了爱，不是为了生气，也不是为了给自己的情绪找一个垃圾桶。&nbsp;和家人相处的时候，要学会控制自己的情绪，不要等到失去了才后悔莫及。小说《围城》中，方鸿渐与孙柔嘉的婚姻一直都不被两家人看好，被拼命地阻挠，为此他们两个人受尽了委屈、吃足了苦头。压抑的怒火一直得不到发泄，长此以往，原本相爱的两个人也渐渐开始心生怨念，到最后相互把对方当作出气筒。婚后的方鸿渐和孙柔嘉一天一小吵、三天一大吵，生活过得一地鸡毛。无休止的相互发泄和争吵，让他们的婚姻渐渐走向了尽头。&nbsp;家本是心灵的港湾，不应该变成情绪的垃圾场。把不愉快的情绪迁怒于家人，将“气”撒在家人身上，是对家人最大的伤害。&nbsp;曾看过这样一句话：<strong><span style=\"color:#007AAA\">对待外人彬彬有礼，可能只是一种处世的圆滑与世故；而将好情绪留给身边最亲近的人，才是深入骨髓的教养。</span></strong></span><span style=\"font-size:18px;font-family:宋体\">&nbsp;</span><span style=\"font-size:18px;font-family: &#39;Microsoft YaHei UI&#39;,sans-serif\">真正有修养的人，懂得把最好的情绪留给最爱的人。</span></p><p style=\"margin-top:auto;margin-bottom: auto;text-align:center\"><strong><span style=\"font-size:18px;font-family:宋体\">2</span></strong></p><p style=\"text-align:left\"><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">有位心理学家曾说：“我们从愤怒中带来的每一个打击，最终必然落到自己身上。”迁怒者常把怒气发泄到别人身上，让他人来承担自己的过错，使无辜者代替自己遭受折磨。这种方式看似发泄了情绪，其实到最后吃亏的还是自己。&nbsp;最近，公司一位经理离职，所以老板想要在员工中间提拔一位经理。小王和小李是公司的两名员工，她们业务能力都非常出众，但是性格却大有不同。小王漂亮优雅，好像和每个人都很谈得来。小李虽然话不多，但是同事遇到困难的时候，她总是能提供帮助。</span></p><p style=\"text-align:left\"><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">有一天，小王的工作出了点差错，被老板狠狠批评了一顿。中午的时候，心里憋着一股气的小王就对清洁阿姨百般刁难。这件事传到老板耳朵里，本来还在犹豫经理人选的老板立刻就放弃了小王。一时的冲动暴露了她的修养，也让她错失了一次机会。</span></p><p style=\"text-align:left\"><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">生活中从来不缺少平时温文尔雅的人，缺的是失意时也能宠辱不惊的人。发泄情绪是本能，控制情绪是素养。一味地发泄，迁怒无辜，只会伤人害己。&nbsp;</span><strong><span style=\"font-size:18px;font-family:宋体;color:#007AAA\">“</span></strong><strong><span style=\"font-size:18px;font-family:宋体;color:#007AAA\">不迁怒者，求诸己。”</span></strong><strong><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif;color:#007AAA\">生气的时候，先从自己身上找原因，而不是对周围的人发脾气。学会妥善地安放自己的怒气，也是一种修养。</span></strong></p><p style=\"margin-top:auto;margin-bottom: auto;text-align:center\"><strong><span style=\"font-size:18px;font-family:宋体\">3</span></strong></p><p><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">心理学上有个有趣的说法叫做“踢猫效应”。一位父亲在公司受到老板批评，回到家把沙发上跳来跳去的孩子臭骂一顿。孩子心里窝火，狠狠去踹身边打滚的猫。猫逃到街上，正好一辆卡车开过来，司机赶紧避让，却把路边的孩子撞伤了……</span></p><p><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">这说明迁怒这种情绪是会传染的，当我们迁怒别人时，别人无缘无故受了气，可能也会找另一个人发泄，最终陷入恶性循环。</span></p><p><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">只有控制好情绪，才能控制好局面。只有控制好情绪，才能把握自己的人生。</span></p><p><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">一首歌谣里有这样几句话：“日出东海落西山，愁也一天，喜也一天。遇事不钻牛角尖，人也舒坦，心也舒坦。”&nbsp;</span></p><p><strong><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif;color:#007AAA\">余生宝贵，还请珍惜。放过他人，也成全自己。往后的日子里，愿你我都能多点看淡、少点心烦，生活舒坦、身心皆安。</span></strong></p><p><strong><span style=\"font-size:18px;font-family: &#39;Microsoft YaHei UI&#39;,sans-serif;color:#007AAA\">&nbsp;</span></strong></p><p><em><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif;color:red\">注：全文转载自《人民日报》微信夜读，作者：</span></em><em><span style=\"font-size:16px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif;color:red\">上元赶路</span></em></p><br/>', '转载', '/uploads/202009/14/200914112557605.png', 'https://lirongyaoper.com/xianyansuiyu/31.html', '', 1, 1, 10, 0, 0, 1, 0, 1, 0),
(32, 7, 1, 'lirongyaoper', '轩鸿青', '秋', '', 1600349353, 1600349806, '', '秋是一季光景，忙是一种常态', 1349, '<p style=\"text-align: center;\">秋已深</p><p style=\"text-align: center;\">夜渐凉</p><p style=\"text-align: center;\">满园秋色无人赏</p><p><br/></p><p style=\"text-align: center;\">豆已黄</p><p style=\"text-align: center;\">人倍忙</p><p style=\"text-align: center;\">眺看远方思故乡</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20200917/1600349785195795.jpg\" style=\"\" title=\"1600349785195795.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20200917/1600349785187697.jpg\" style=\"\" title=\"1600349785187697.jpg\"/></p><p><br/></p>', '原创', '/uploads/202009/17/200917093033729.jpg', 'https://lirongyaoper.com/xianyansuiyu/32.html', '', 1, 1, 10, 0, 0, 1, 0, 3, 0),
(33, 7, 1, 'lirongyaoper', '轩鸿青', '放弃“梦想”，追逐远方', '', 1600413140, 1600413543, '', '为人生竭尽全力，为爱好忙里偷闲。', 2160, '<p style=\"text-indent: 2em;\"><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">难得闲下来诉说一下心情，道一声兄弟们久违了。</span><img src=\"/uploads/ueditor/image/20200918/1600413477128824.jpg\" title=\"放弃“梦想”，追逐远方\" alt=\"放弃“梦想”，追逐远方\" style=\"float: left;\"/><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\"></span><br/></p><p style=\"text-indent: 2em;\"><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">而立之年的我，虽然还有很多困惑，但总能分清孰轻孰重，在大部分的时间里做着成长中最重要的事--成家立业。每天起早贪黑，或许只为大家常说的碎银几两。累是这个年纪的主旋律，苦是人生旅途的必经路。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">儿时的愿望还没来得及实现就已经走向成熟，在父母眼里自己已是能扛起千金的男子汉，在朋友眼里自己已是言有物而行有格的可靠伙伴，在同事眼里自己已是能独当一面的好搭档。而自己却一无是处，只是在众人的期盼之中故作镇静，用脆弱的肩膀扛下了一切，为此，丢弃了儿时的梦想，远离了当初的憧憬。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\"><img src=\"/uploads/ueditor/image/20200918/1600413530504042.jpg\" title=\"放弃“梦想”，追逐远方\" alt=\"放弃“梦想”，追逐远方\"/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">车轮滚滚向前，人生没有撤退可言，接受时间安排的一切，顺着人生的方向勇往直前。由学生到工作的转变，一开始让我不知所措，繁重的工作压力、纷繁复杂的人际关系让我如履薄冰，步履维艰，甚至开始怀疑自己，怀疑人生。我也开始怀疑自己当初的选择，是不是走向一口深不可测的无底洞？看着老师们干的那么起劲，却无法为他们找到一个合适的理由。再看自己，发现无论如何也回不到当初的那个圆点，人生已无法改变航向，于是，不止一遍的安慰自己，一切都是最高的安排，人生哪能多如意,万事但求半称心。就这样，也慢慢接受了自己，接受了周围的一切。或许每个人的道路亦是如此，为生活，身不由己，为活着，无可奈何。时间会抚平一切，时间也会打磨一切。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size:18px;font-family:&#39;Microsoft YaHei UI&#39;,sans-serif\">工作占据了生活的全部时间，人生不能没有乐趣，工作时间，我会认真负责的做好每一项工作，精益求精；偶尔的业余时间，我想，我还是坚持写写网站，看看远方的世界。或许，我的个人博客网站会承载着日常的一切，伴我走向前方。</span></p><p><br/></p>', '原创', '/uploads/202009/18/200918031420924.jpg', 'https://lirongyaoper.com/xianyansuiyu/33.html', '1', 1, 1, 1, 0, 0, 1, 0, 9, 1),
(35, 17, 1, 'lirongyaoper', '轩鸿青', 'PHP $_SERVER[&#039;PHP_SELF&#039;]、$_SERVER[&#039;SCRIPT_NAME&#039;] 与 $_SERVER[&#039;REQUEST_URI&#039;] 之间的区别', '', 1601132685, 1601211044, 'php', '$_SERVER[&#039;PHP_SELF&#039;]、$_SERVER[&#039;SCRIPT_NAME&#039;] 与 $_SERVER[&#039;REQUEST_URI&#039;] 三者非常相似，返回的都是与当前...', 2132, '<p>$_SERVER[&#39;PHP_SELF&#39;]、$_SERVER[&#39;SCRIPT_NAME&#39;] 与 $_SERVER[&#39;REQUEST_URI&#39;] 三者非常相似，返回的都是与当前 URL 或 PHP 程序文件相关的信息：</p><p>1.$_SERVER[&#39;PHP_SELF&#39;]：相对于网站根目录的路径及 PHP 程序名称。</p><p>2.$_SERVER[&#39;SCRIPT_NAME&#39;]：相对于网站根目录的路径及 PHP 程序文件名称。</p><p>3.$_SERVER[&#39;REQUEST_URI&#39;]：访问此页面所需的 URI 。</p><p>一个简单的例子可以看出它们的区别。URL 地址如下：</p><p>http://www.5idev.com/php/index.php/test/foo?username=hbolive</p><p>$_SERVER[&#39;PHP_SELF&#39;] 得到：/php/index.php/test/foo</p><p>$_SERVER[&#39;SCRIPT_NAME&#39;] 得到：/php/index.php</p><p>$_SERVER[&#39;REQUEST_URI&#39;] 得到：/php/index.php/test/foo?username=hbolive</p><p>从该例子可以看出:</p><p>1.$_SERVER[&#39;PHP_SELF&#39;] 则反映的是 PHP 程序本身；</p><p>2.$_SERVER[&#39;SCRIPT_NAME&#39;] 反映的是程序文件本身（这在页面需要指向自己时非常有用）；</p><p>3.$_SERVER[&#39;REQUEST_URI&#39;] 则反映了完整 URL 地址（不包括主机名）。</p><p>其实从各自的命名上，也可以体现出它们之间的细微差别。</p><p>特别的，对于如下地址：</p><p>http://www.5idev.com/</p><p>$_SERVER[&#39;PHP_SELF&#39;] 得到：/index.php</p><p>$_SERVER[&#39;SCRIPT_NAME&#39;] 得到：/index.php</p><p>$_SERVER[&#39;REQUEST_URI&#39;] 得到：/</p><p>至于有人提到 $_SERVER[&#39;PHP_SELF&#39;] 与 $_SERVER[&#39;SCRIPT_NAME&#39;] 在 PHP 以 CGI 模式运行下会有区别。由于 PHP 在 CGI 模式运行下并不多见，测试较为麻烦，在此就不再叙述了。如有这种情况，可注意并自行测试。</p><p>希望在理解了它们之间的区别之后，以便选择更适合自己程序的来使用。</p><p><br/></p><p>$_SERVER[&#39;SCRIPT_NAME&#39;]和$_SERVER[&#39;PHP_SELF&#39;]的区别</p><p>一般情况下两者打印出来的东西基本一样的，但是如果你输入</p><p>/test.php/123456的话</p><p>$_SERVER[&#39;PHP_SELF&#39;]结果是/test.php/123456</p><p>而$_SERVER[&#39;SCRIPT_NAME&#39;]结果是/test.php&nbsp;</p><p>所以为了安全起见，为了指向自身，应该用$_SERVER[&#39;SCRIPT_NAME&#39;]而不是$_SERVER[&#39;PHP_SELF&#39;]。</p><p><strong><em>全文转载自</em><em><a href=\"https://blog.csdn.net/qq_26291823/article/details/52573935\" target=\"_blank\">空白_回忆</a>的博客。</em></strong></p><p><strong><em><br/></em></strong></p><p><strong><em>补充说明</em></strong></p><p>PHP_SELF: 当前所执行的脚本的文件名，这个值是相对于根目录来说。如果请求http://example.com/test/test.php?k=v，则PHP_SELF的值为&nbsp;/test/test.php。</p><p>SCRIPT_NAME： 当前执行的脚本的路径。如果请求http://example.com/test/test.php?k=v，则SCRIPT_NAME的值&nbsp;为/test/test.php。这个变量是在<a href=\"http://tools.ietf.org/html/rfc3875\" style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; text-decoration-line: none; cursor: pointer; color: rgb(103, 149, 181); overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\">CGI/1.1</a>中定义的。</p><p><br/></p><p style=\"box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-size: 18px; color: rgb(77, 77, 77); overflow-x: auto; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;\">PATH_INFO：客户端提供的路径信息，即在实际执行脚本后面尾随的内容，但是会去掉<span style=\"box-sizing: border-box; outline: 0px; font-weight: 700; overflow-wrap: break-word;\">Query String</span>。如果请求<span style=\"box-sizing: border-box; outline: 0px; font-weight: 700; overflow-wrap: break-word;\">http://example.com/test/test.php/a/b?k=v</span>，则<code style=\"box-sizing: border-box; outline: 0px; border-radius: 4px; overflow-wrap: break-word;\">PATH_INFO</code>的值为<span style=\"box-sizing: border-box; outline: 0px; font-weight: 700; overflow-wrap: break-word;\">/a/b</span>。</p><p style=\"box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-size: 18px; color: rgb(77, 77, 77); overflow-x: auto; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;\">REQUEST_URI：包含HTTP协议中定义的URI内容。如果请求<span style=\"box-sizing: border-box; outline: 0px; font-weight: 700; overflow-wrap: break-word;\">http://example.com/test/test.php?k=v</span>，则<code style=\"box-sizing: border-box; outline: 0px; border-radius: 4px; overflow-wrap: break-word;\">REQUEST_URI</code>&nbsp;为<span style=\"box-sizing: border-box; outline: 0px; font-weight: 700; overflow-wrap: break-word;\">/test/test.php?k=v</span></p><p><strong><em><span style=\"color: rgb(77, 77, 77); font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; font-size: 18px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(77, 77, 77); font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; font-size: 18px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(77, 77, 77); font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; font-size: 18px; background-color: rgb(255, 255, 255);\"><br/></span></span></span></em></strong><br/></p>', '原创', '', 'https://lirongyaoper.com/phpxiangguan/35.html', '', 1, 1, 10, 0, 0, 1, 0, 1, 0),
(36, 13, 1, 'lirongyaoper', '轩鸿青', '思念', '', 1602163673, 1602167494, '兄弟情', '思念成线，连接你我', 1393, '<p style=\"text-align: center;\">思念</p><p style=\"text-align: center;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--李荣耀<br/></p><p style=\"text-align: center;\">心中的思念就像天上的日月</p><p style=\"text-align: center;\">日复一日，年又一年，总在脑海中浮现</p><p style=\"text-align: center;\">往昔的美好却变成了模糊的怅惘</p><p style=\"text-align: center;\">仿佛在雾中若隐若现</p><p><br/></p><p style=\"text-align: center;\">思念也像是春天里的细雨</p><p style=\"text-align: center;\">轻柔而延绵</p><p style=\"text-align: center;\">好似思念成线</p><p style=\"text-align: center;\">连接你我</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20201008/1602167475138455.jpg\" title=\"思念\" alt=\"思念\"/></p>', '原创', '/uploads/202010/08/201008103046837.png', 'https://lirongyaoper.com/babaizhijiao/36.html', '', 1, 1, 10, 0, 0, 1, 0, 4, 0),
(37, 7, 1, 'lirongyaoper', '轩鸿青', '家，越干净，越有福', '', 1602948601, 1602948886, '', '清洁房间，往往能清扫你的心灵。适当的断舍离，是变得干净、简单的小妙招，是愉悦心灵的法宝。', 1368, '<p style=\";margin-bottom:0;text-align:center\"><strong><span style=\"font-size:18px;font-family:宋体\"><img src=\"/uploads/ueditor/image/20201017/1602948704162226.png\" title=\"家，越干净，越有福\" alt=\"家，越干净，越有福\"/></span></strong></p><p style=\"margin-bottom: 0px; text-align: center;\"><strong><span style=\"font-size:18px;font-family:宋体\">1</span></strong></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\">　　干净的屋子里，藏着一个家庭的福气和未来。打扫屋子，虽然是一件生活小事，却能折射出你对生活的态度。</span></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\">　　有一项持续多年的研究发现：幸福感强的人们，往往居家环境十分干净整洁，于是摸索出这样一个结论：<strong><span style=\"font-family:宋体;color:#007AAA\">你居住的房间正是你自身的折射，你的人生其实就像你的房间。</span></strong></span></p><p style=\";margin-bottom:0;text-indent:36px\"><span style=\"font-size:18px\">古人云：“斯是陋室，惟吾德馨。”干净的仪容、整洁的屋子，能映射出一个人对生活的热情。爱干净的人，不仅尊重自己，通常也有本事把自己的生活过得有声有色。人有净气，风度自来。</span></p><p style=\";margin-bottom:0;text-indent:36px\"><span style=\"font-size:18px\">我老家的邻居张阿姨就是一个爱打扫的人，总是把家里收拾得干干净净。每次回去，总能看到客人造访张阿姨家，附近的小孩也爱到她家玩。看着窗明几净、纤尘不染的屋子和井然有序、满院花香的院子，让人有种说不出的惬意。</span></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\">　　而这样洁净的屋子，既吸引人气，又吸引福气。</span></p><p style=\";margin-bottom:0;text-align:center\"><strong><span style=\"font-size:18px;font-family:宋体\">2</span></strong></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\">　　听过一个提升幸福感的词叫“扫除力”，有人这样比喻：打扫是一件奇妙的小事，它能锻炼人的耐性和心志，是能让生活慢慢变好的微妙之法。</span></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\">　　<strong><span style=\"font-family:宋体;color:#007AAA\">打扫可以提升一个人对幸福的感知。在打扫的过程中，我们认真地处理每个小细节，情感也会变得温柔细腻。</span></strong></span></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\">　　有句话说：“久入兰室不闻其香，久住脏屋不觉其乱。”屋子潜移默化地影响着房间主人的精神面貌和生活态度。一个干净整洁的房间仿佛自带阳光属性，让人充满活力、希望。而身处一个脏乱臭的环境，人的心情也难免变得浮躁烦闷，容易积蓄负能量。</span></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\">　　很多人不爱整理房间，声称房间虽然凌乱，但免去了收拾的时间，生活更自在轻松了。然而每当需要翻找东西时，却总因东西太多太乱、找不到而抓狂，心情一下子由晴转阴。</span></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\">　　周遭环境没有条理，脑袋也越发混乱，遇事不能冷静，心情烦闷，人也会变得越来越急躁。一个充斥着负能量的人，又何谈顺心如意呢？</span></p><p style=\";margin-bottom:0;text-align:center\"><strong><span style=\"font-size:18px;font-family:宋体\">3</span></strong></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\">　　网上有人提问：“我的生活一团糟，怎么改变？”一个高赞回答是：“当你陷入苦恼、对眼前的困境一筹莫展的时候，就去打扫屋子。”</span></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\">　　清洁房间，往往能清扫你的心灵。适当的断舍离，是变得干净、简单的小妙招，是愉悦心灵的法宝。<strong><span style=\"font-family:宋体;color:#007AAA\">人有多简单，就有多快乐。心安，则身安。</span></strong>身心安宁平静了，更容易找到解决问题、消除烦恼的办法。</span></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\">　　一个家，一个房间，不需要多么富丽堂皇、奢华逼人，只要有干净舒适的生活空间，就能给全家带去好的情绪、和睦的氛围。家庭和睦了，才能让人更专注于学业、更努力地去打拼事业，因为心里知道，不管多累，回去都能有个干净、温馨的家可以休憩。</span></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\">　　<strong><span style=\"font-family:宋体;color:#007AAA\">家和万事兴。屋内窗明几净、满室温馨，任屋外狂风大作，我怡然自得，一家人和和美美。</span></strong></span></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\">　　家，越干净，越有福。</span></p><p style=\";margin-bottom:0\"><span style=\"font-size:18px\"><br/></span></p><p style=\";margin-bottom:0\"><span style=\"font-size: 10px;\"><em>注：全文转载于《人民日报》微信夜读&nbsp;&nbsp;作者：渡兰君</em></span></p><p>&nbsp;</p><p><br/></p>', '转载', '/uploads/202010/17/201017113126677.png', 'https://lirongyaoper.com/xianyansuiyu/37.html', '', 1, 1, 10, 0, 0, 1, 0, 0, 0),
(38, 17, 1, 'lirongyaoper', '轩鸿青', 'getcwd() __DIR__ __FILE__区别', '', 1603023774, 1603024844, 'php', '图文展示getcwd() __DIR__ __FILE__区别之间的区别，希望以后只是越来越丰富', 1698, '<p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">为演示三者的区别，我首先在本地虚拟主机中创建一个网站：www.cs1.com&nbsp;网站的根目录为D:\\anet\\cs1\\</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">(1)在根目录中创建index.php文件</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">(2)在根目录中创建子目录a，继续在a目录中创建子目录b，并在b目录中创建文件c.php</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">(3)在c.php文件中写入</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">&nbsp; &nbsp;&nbsp;<span style=\"font-size: 18px; font-family: &quot;times new roman&quot;;\">echo getcwd();echo &quot;&lt;br/&gt;&quot;;</span></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">&nbsp;&nbsp;&nbsp;</span><span style=\"font-size: 18px; font-family: &quot;times new roman&quot;;\">&nbsp;echo __DIR__;echo &quot;&lt;br/&gt;&quot;;</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">&nbsp;&nbsp;&nbsp;</span><span style=\"font-size: 18px; font-family: &quot;times new roman&quot;;\">&nbsp;echo __FILE__;echo &quot;&lt;br/&gt;&quot;;</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">(4)在根目录中的index.php文件中引入c.php文件 (include &#39;./a/b/c.php&#39;;)</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\"><img src=\"/uploads/ueditor/image/20201018/1603024305780161.png\" title=\"getchwd() __DIR__ __FILE__区别\" alt=\"getchwd() __DIR__ __FILE__区别\"/></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\"><img src=\"/uploads/ueditor/image/20201018/1603024316151041.png\" title=\"getchwd() __DIR__ __FILE__区别\" alt=\"getchwd() __DIR__ __FILE__区别\"/></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\"><img src=\"/uploads/ueditor/image/20201018/1603024323133751.png\" title=\"getchwd() __DIR__ __FILE__区别\" alt=\"getchwd() __DIR__ __FILE__区别\"/></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">以上可以看出，</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">getcwd()返回的是：返回当前的工作目录，即在哪个文件中调用此函数，就显示哪个文件的目录；</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">__DIR__ 返回的是：文件写在哪个文件里就返回哪个文件的目录；</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">__FILE__返回的是：文件写在哪个文件里就返回哪个文件的目录+这个文件的文件名称。</span></p><p><br/></p>', '原创', '', 'https://lirongyaoper.com/phpxiangguan/38.html', '', 1, 1, 10, 0, 0, 1, 0, 1, 0);
INSERT INTO `lry_article` (`id`, `catid`, `userid`, `username`, `nickname`, `title`, `color`, `inputtime`, `updatetime`, `keywords`, `description`, `click`, `content`, `copyfrom`, `thumb`, `url`, `flag`, `status`, `issystem`, `listorder`, `groupids_view`, `readpoint`, `paytype`, `is_push`, `up`, `down`) VALUES
(39, 17, 1, 'lirongyaoper', '轩鸿青', 'strstr strrchr strpos strrpos的用法及区别', '', 1603030776, 1603031417, '', '会用strstr strrchr strpos strrpos，努力学好PHP', 1663, '<p><strong><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">strstr</span></strong></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">strstr — 查找字符串的首次出现</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">说明：</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">string strstr ( string $haystack , mixed $needle [, bool $before_needle = false ] )</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">返回 haystack 字符串从 needle 第一次出现的位置开始到 haystack 结尾的字符串。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">Note: 该函数区分大小写。如果想要不区分大小写，请使用 stristr()。如果你仅仅想确定 needle 是否存在于 haystack 中，请使用速度更快、耗费内存更少的 strpos() 函数。&nbsp;</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">参数：</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">haystack输入字符串。needle如果 needle 不是一个字符串，那么它将被转化为整型并且作为字符的序号来使用。 before_needle若为 TRUE，strstr() 将返回 needle 在 haystack 中的位置之前的部分。 返回值返回字符串的一部分或者 FALSE（如果未发现 needle）。</span></p><p style=\"text-align: center;\"><span style=\"font-family: 宋体, SimSun; font-size: 18px;\"><img src=\"/uploads/ueditor/image/20201018/1603031039114412.png\" title=\"strstr strrchr strpos strrpos的用法及区别\" alt=\"strstr strrchr strpos strrpos的用法及区别\"/></span></p><p><br/></p><p><strong><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">strrchr</span></strong></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">strrchr — 查找指定字符在字符串中的最后一次出现</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">string strrchr ( string $haystack , mixed $needle ) 该函数返回 haystack 字符串中的一部分，这部分以 needle 的最后出现位置开始，直到 haystack 末尾。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">参数$haystack，在该字符串中查找；$needle如果 needle 包含了不止一个字符，那么仅使用第一个字符。如果 needle 不是一个字符串，那么将被转化为整型并被视为字符顺序值</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">返回值 该函数返回字符串的一部分。如果 needle 未被找到，返回 FALSE.</span></p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20201018/1603031054112765.png\" title=\"strstr strrchr strpos strrpos的用法及区别\" alt=\"strstr strrchr strpos strrpos的用法及区别\"/></p><p><br/></p><p><strong><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">strpos</span></strong></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">strpos — 查找字符串首次出现的位置</span></p><p><br/></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">说明</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">mixed strpos ( string $haystack , mixed $needle [, int $offset = 0 ] )</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">返回 needle 在 haystack 中首次出现的数字位置。&nbsp;</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">参数</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">haystack在该字符串中进行查找。&nbsp;</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">needle如果 needle 不是一个字符串，那么它将被转换为整型并被视为字符的顺序值。&nbsp;</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">offset如果提供了此参数，搜索会从字符串该字符数的起始位置开始统计。 如果是负数，搜索会从字符串结尾指定字符数开始。&nbsp;</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">返回值</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">返回 needle 存在于 haystack 字符串起始的位置(独立于 offset)。同时注意字符串位置是从0开始，而不是从1开始的。&nbsp;</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">如果没找到 needle，将返回 FALSE。</span></p><p style=\"text-align: center;\"><span style=\"font-family: 宋体, SimSun; font-size: 18px;\"><img src=\"/uploads/ueditor/image/20201018/1603031071124044.png\" title=\"strstr strrchr strpos strrpos的用法及区别\" alt=\"strstr strrchr strpos strrpos的用法及区别\" width=\"896\" height=\"374\" style=\"width: 896px; height: 374px;\"/></span></p><p><br/></p><p><strong><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">strrpos</span></strong><br/></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">strrpos — 计算指定字符串在目标字符串中最后一次出现的位置</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">说明</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">int strrpos ( string $haystack , string $needle [, int $offset = 0 ] )</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">返回字符串 haystack 中 needle 最后一次出现的数字位置。注意 PHP4 中，needle 只能为单个字符。如果 needle 被指定为一个字符串，那么将仅使用第一个字符。&nbsp;</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">参数</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">haystack在此字符串中进行查找。&nbsp;</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">needle如果 needle不是一个字符串，它将被转换为整型并被视为字符的顺序值。&nbsp;</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">offset或许会查找字符串中任意长度的子字符串。负数值将导致查找在字符串结尾处开始的计数位置处结束。&nbsp;</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">返回值</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">返回 needle 存在的位置。如果没有找到，返回 FALSE。 Also note that string positions start at 0, and not 1. Returns FALSE if the needle was not found.&nbsp;</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\"><img src=\"/uploads/ueditor/image/20201018/1603031406407679.png\" title=\"strstr strrchr strpos strrpos的用法及区别\" alt=\"strstr strrchr strpos strrpos的用法及区别\" width=\"1074\" height=\"563\" style=\"width: 1074px; height: 563px;\"/></span></p>', '原创', '', 'https://lirongyaoper.com/phpxiangguan/39.html', '', 1, 1, 10, 0, 0, 1, 0, 1, 6),
(40, 17, 1, 'lirongyaoper', '轩鸿青', 'PHP 运行方式(PHP SAPI介绍)', '', 1603113748, 1603113917, 'php', 'SAPI:Server Application Programming Interface 服务器端应用编程端口。它就是PHP与其它应用交互的接口，PHP脚本要执行有很多种方式，...', 1689, '<p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">SAPI:Server Application Programming Interface 服务器端应用编程端口。它就是PHP与其它应用交互的接口，PHP脚本要执行有很多种方式，通过Web服务器，或者直接在命令行下，也可以嵌入在其他程序中。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">SAPI提供了一个和外部通信的接口，常见的SAPI有：cgi 、fast-cgi、cli、isapi、apache 模块的 DLL</span></p><p><strong><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">一、CGI</span></strong></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">CGI即通用网关接口(Common Gateway Interface)，它是一段程序，通俗的讲CGI就象是一座桥，把网页和WEB服务器中的执行程序连接起来，它把HTML接收的指令传递给服务器的执 行程序，再把服务器执行程序的结果返还给HTML页。CGI 的跨平台性能极佳，几乎可以在任何操作系统上实现。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">CGI方式在遇到连接请求（用户 请求）先要创建cgi的子进程，激活一个CGI进程，然后处理请求，处理完后结束这个子进程。这就是fork-and-execute模式。所以用cgi 方式的服务器有多少连接请求就会有多少cgi子进程，子进程反复加载是cgi性能低下的主要原因。都会当用户请求数量非常多时，会大量挤占系统的资源如内 存，CPU时间等，造成效能低下。</span></p><p><strong><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">二、FastCGI</span></strong></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">fast-cgi 是cgi的升级版本，FastCGI像是一个常驻(long-live)型的CGI，它可以一直执行着，只要激活后，不会每次都要花费时间去fork一 次。PHP使用PHP-FPM(FastCGI Process Manager)，全称PHP FastCGI进程管理器进行管理。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">FastCGI的工作原理</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">(1)Web Server启动时载入FastCGI进程管理器(IIS ISAPI或Apache Module)</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">(2)FastCGI进程管理器自身初始化，启动多个CGI解释器进程(可见多个php-cgi)并等待来自Web Server的连接。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">(3)当客户端请求到达Web Server时，FastCGI进程管理器选择并连接到一个CGI解释器。Web server将CGI环境变量和标准输入发送到FastCGI子进程php-cgi。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">(4)FastCGI子进程完成处理后将标准输出和错误信息从同一连接返回Web Server。当FastCGI子进程关闭连接时，请求便告处理完成。FastCGI子进程接着等待并处理来自FastCGI进程管理器(运行在Web Server中)的下一个连接。 在CGI模式中，php-cgi在此便退出了。那什么是php-cgi呢？PHP-CGI是PHP自带的FastCGI管理器。可以对其直接启动。现在不管是lighttpd还是nginx都可以与php-cgi进行组合运行php，其中lighttpd直接组合php-cgi运行php，还算比较稳定，笔者测试过，没出现大的问题，效率都还可以。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">CGI与FastCGI小结：在上述情况中，你可以想象CGI通常有多慢。每一个Web 请求PHP都必须重新解析php.ini、重新载入全部扩展并重初始化全部数据结构。使用FastCGI，所有这些都只在进程启动时发生一次。一个额外的 好处是，持续数据库连接(Persistent database connection)可以工作。</span></p><p><strong><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">三、APACHE2HANDLER</span></strong></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">APACHE2HANDLER是apache 自带运行php的方式。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">工作模式</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">PHP作为Apache模块，Apache服务器在系统启动后，预先生成多个进程副本驻留在内存中，一旦有请求出现，就立即使用这些空余的子进程进行处理，这样就不存在生成子进程造成的延迟了。这些服务器副本在处理完一次HTTP请求之后并不立即退出，而是停留在计 算机中等待下次请求。对于客户浏览器的请求反应更快，性能较高。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">这个就可以解释为什么apache在压力测试后服务器的负载还高居不下的原因了。生成的进程副本会一直驻存在内存里，等待下下面的请求过来。而这个过程是一个轮询的过程。</span></p><p><strong><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">四、apache模块的DLL：</span></strong></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">该运行模式是我们以前在windows环境下使用apache服务器经常使用的，而在模块化(DLL)中，PHP是与Web服务器一起启动并运行的。（是apache在CGI的基础上进行的一种扩展，加快PHP的运行效率）</span></p><p><strong><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">五、ISAPI</span></strong></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">ISAPI即Internet Server Application Program Interface，是微软提供的一套面向Internet服务的API接口.一个ISAPI的DLL，可以在被用户请求激活后长驻内存，等待用户的另一个请求，还可以在一个DLL里设置多个用户请求处理函数，此外，ISAPI的DLL应用程序和WWW服务器处于同一个进程中，效率要显著高于CGI。</span></p><p><strong><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">六、cli</span></strong></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">cli是php的命令行运行模式，大家经常会使用它，但是可能并没有注意到（例如：我们在linux下经常使用 “php -m”查找PHP安装了那些扩展就是PHP命令行运行模式；</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 18px;\">在windows下使用cli模式从命令行进入www目录，然后运行 //php test.php 命令执行test.php文件</span></p><p><br/></p>', '原创', '', 'https://lirongyaoper.com/phpxiangguan/40.html', '', 1, 1, 10, 0, 0, 1, 0, 1, 0),
(41, 17, 1, 'lirongyaoper', '轩鸿青', 'CGI、FastCGI和PHP-FPM关系图解', '', 1603539289, 1603541788, 'php', '在搭建 LAMP/LNMP 服务器时，会经常遇到 PHP-FPM、FastCGI和CGI这几个概念。如果对它们一知半解，很难搭建出高性能的服务器。接下来我们较系统的学习下。', 2064, '<p style=\"text-indent: 2em;\">在搭建 LAMP/LNMP 服务器时，会经常遇到 PHP-FPM、FastCGI和CGI这几个概念。如果对它们一知半解，很难搭建出高性能的服务器。接下来我们就以图形方式，解释这些概念之间的关系。</p><p style=\"text-indent: 0em;\"><strong><span style=\"font-size: 20px;\">基础</span></strong><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在整个网站架构中，Web Server（如Apache）只是内容的分发者。举个栗子，如果客户端请求的是 index.html，那么Web Server会去文件系统中找到这个文件，发送给浏览器，这里分发的是静态数据。<br/>&nbsp;</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20201024/1603539914997498.png\" title=\"CGI、FastCGI和PHP-FPM关系图解\" alt=\"CGI、FastCGI和PHP-FPM关系图解\"/></p><p style=\"text-indent: 2em;\">如果请求的是 index.php，根据配置文件，Web Server知道这个不是静态文件，需要去找 PHP 解析器来处理，那么他会把这个请求简单处理，然后交给PHP解析器。<br/></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20201024/1603539936736826.png\" title=\"CGI、FastCGI和PHP-FPM关系图解\" alt=\"CGI、FastCGI和PHP-FPM关系图解\"/></p><p style=\"text-indent: 2em;\">当Web Server收到 index.php 这个请求后，会启动对应的 CGI 程序，这里就是PHP的解析器。接下来PHP解析器会解析php.ini文件，初始化执行环境，然后处理请求，再以规定CGI规定的格式返回处理后的结果，退出进程，Web server再把结果返回给浏览器。这就是一个完整的动态PHP Web访问流程，接下来再引出这些概念，就好理解多了<strong>。</strong></p><p style=\"text-indent: 2em;\"><span style=\"border: medium none; color: rgb(255, 0, 0);\"><strong> CGI：</strong></span>是 Web Server 与 Web Application 之间数据交换的一种协议。<span style=\"color: rgb(255, 0, 0);\"><strong><br/></strong></span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(255, 0, 0);\"><strong>FastCGI：</strong></span>同 CGI，是一种通信协议，但比 CGI 在效率上做了一些优化。同样，SCGI 协议与 FastCGI 类似<strong>。</strong></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(255, 0, 0);\"><strong>PHP-CGI：</strong></span>是 PHP （Web Application）对 Web Server 提供的 CGI 协议的接口程序。<span style=\"color: rgb(255, 0, 0);\"><strong><br/></strong></span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(255, 0, 0);\"><strong> PHP-FPM</strong></span>：是 PHP（Web Application）对 Web Server 提供的 FastCGI 协议的接口程序，额外还提供了相对智能一些任务管理。</p><p style=\"text-indent: 2em;\">WEB 中，Web Server 一般指Apache、Nginx、IIS、Lighttpd、Tomcat等服务器，Web Application 一般指PHP、Java、Asp.net等应用程序。<br/><strong><span style=\"font-size: 20px;\">Module方式</span></strong><br/></p><p style=\"text-indent: 2em;\">在了解 CGI 之前，我们先了解一下Web server 传递数据的另外一种方法：PHP Module加载方式。以 Apache 为例，在PHP Module方式中，是不是在 Apache 的配置文件 httpd.conf 中加上这样几句：<br/></p><pre class=\"brush:php;toolbar:false\"><p style=\"text-indent: 2em;\"># 加入以下2句<br/>LoadModule php5_module D:/php/php5apache2_2.dll<br/>AddType application/x-httpd-php .php<br/># 修改如下内容<br/>&lt;IfModule dir_module&gt;<br/> &nbsp; &nbsp;DirectoryIndex index.php index.html<br/>&lt;/IfModule&gt;<br/></p></pre><p style=\"text-indent: 2em;\">上面是 Windows 下安装php和apache环境后手动配置，在linux下源码安装大致是这样配置的：</p><pre class=\"brush:php;toolbar:false\">#&nbsp;./configure&nbsp;--with-mysql=/usr/local&nbsp;--with-apache=/usr/local/apache&nbsp;--enable-track-vars</pre><p style=\"text-indent: 2em;\">所以，这种方式，他们的共同本质都是用 LoadModule 来加载 php5_module，就是<strong><span style=\"color: rgb(255, 0, 0);\">把php作为apache的一个子模块来运行</span></strong>。当通过web访问php文件时，apache就会调用php5_module来解析php代码。</p><p style=\"text-indent: 2em;\">那么php5_module是怎么来将数据传给php解析器来解析php代码的呢？答案是通过sapi。</p><p style=\"text-indent: 2em;\">我们再来看一张图，详细的说说apache 与 php 与 sapi的关系：<br/></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20201024/1603539950188650.png\" title=\"CGI、FastCGI和PHP-FPM关系图解\" alt=\"CGI、FastCGI和PHP-FPM关系图解\"/></p><p style=\"text-indent: 2em;\">从上面图中，我们看出了sapi就是这样的一个中间过程，SAPI提供了一个和外部通信的接口，有点类似于socket，使得PHP可以和其他应用进行交互数据（apache，nginx等）。php默认提供了很多种SAPI，常见的提供给apache和nginx的php5_module、CGI、FastCGI，给IIS的ISAPI，以及Shell的CLI。</p><p style=\"text-indent: 2em;\">所以，以上的apache调用php执行的过程如下：</p><pre class=\"brush:php;toolbar:false\">apache&nbsp;-&gt;&nbsp;httpd&nbsp;-&gt;&nbsp;php5_module&nbsp;-&gt;&nbsp;sapi&nbsp;-&gt;&nbsp;php</pre><p style=\"text-indent: 2em;\">好了。apache与php通过php5_module的方式就搞清楚了吧！</p><p style=\"text-indent: 2em;\">这种模式将php模块安装到apache中，所以每一次apache结束请求，都会产生一条进程，这个进程就完整的包括php的各种运算计算等操作。</p><p style=\"text-indent: 2em;\">在上图中，我们很清晰的可以看到，apache每接收一个请求，都会产生一个进程来连接php通过sapi来完成请求，可想而知，如果一旦用户过多，并发数过多，服务器就会承受不住了。</p><p style=\"text-indent: 2em;\">而且，把mod_php编进apache时，出问题时很难定位是php的问题还是apache的问题。<br/><strong><span style=\"font-size: 18px;\">CGI介绍</span></strong><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CGI（Common Gateway Interface）全称是“通用网关接口”，WEB 服务器与PHP应用进行“交谈”的一种工具，其程序须运行在网络服务器上。CGI可以用任何一种语言编写，只要这种语言具有标准输入、输出和环境变量。如php、perl、tcl等。</p><p style=\"text-indent: 2em;\">WEB服务器会传哪些数据给PHP解析器呢？URL、查询字符串、POST数据、HTTP header都会有。所以，CGI就是规定要传哪些数据，以什么样的格式传递给后方处理这个请求的协议。仔细想想，你在PHP代码中使用的用户从哪里来的。</p><p style=\"text-indent: 2em;\">也就是说，CGI就是专门用来和 web 服务器打交道的。web服务器收到用户请求，就会把请求提交给cgi程序（如php-cgi），cgi程序根据请求提交的参数作应处理（解析php），然后输出标准的html语句，返回给web服服务器，WEB服务器再返回给客户端，这就是普通cgi的工作原理。</p><p style=\"text-indent: 2em;\">CGI的好处就是完全独立于任何服务器，仅仅是做为中间分子。提供接口给apache和php。他们通过cgi搭线来完成数据传递。这样做的好处了尽量减少2个的关联，使他们2变得更独立。</p><p style=\"text-indent: 2em;\">但是CGI有个蛋疼的地方，就是每一次web请求都会有启动和退出过程，也就是最为人诟病的fork-and-execute模式，这样一在大规模并发下，就死翘翘了。<br/><strong><span style=\"font-size: 18px;\">FastCGI介绍</span></strong><br/>从根本上来说，FastCGI是用来提高CGI程序性能的。<span style=\"color: rgb(255, 0, 0);\"><strong>类似于CGI，FastCGI也可以说是一种协议</strong></span>。</p><p style=\"text-indent: 2em;\">FastCGI像是一个常驻(long-live)型的CGI，它可以一直执行着，只要激活后，不会每次都要花费时间去fork一次。它还支持分布式的运算, 即 FastCGI 程序可以在网站服务器以外的主机上执行，并且接受来自其它网站服务器来的请求。</p><p style=\"text-indent: 2em;\">FastCGI是语言无关的、可伸缩架构的CGI开放扩展，其主要行为是将CGI解释器进程保持在内存中，并因此获得较高的性能。众所周知，CGI解释器的反复加载是CGI性能低下的主要原因，如果CGI解释器保持在内存中，并接受FastCGI进程管理器调度，则可以提供良好的性能、伸缩性、Fail- Over特性等等。<br/><strong><span style=\"font-size: 18px;\">FastCGI的工作原理</span></strong></p><p style=\"text-indent: 2em;\">FastCGI接口方式采用C/S结构，可以将HTTP服务器和脚本解析服务器分开，同时在脚本解析服务器上启动一个或者多个脚本解析守护进程。当HTTP服务器每次遇到动态程序时，可以将其直接交付给FastCGI进程来执行，然后将得到的结果返回给浏览器。这种方式可以让HTTP服务器专一地处理静态请求，或者将动态脚本服务器的结果返回给客户端，这在很大程度上提高了整个应用系统的性能。<br/></p><p style=\"text-indent: 2em;\"><img src=\"/uploads/ueditor/image/20201024/1603539984987569.png\" title=\"CGI、FastCGI和PHP-FPM关系图解\" alt=\"CGI、FastCGI和PHP-FPM关系图解\"/><br/></p><p style=\"text-indent: 2em;\">1.Web Server启动时载入FastCGI进程管理器（Apache Module或IIS ISAPI等)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.FastCGI进程管理器自身初始化，启动多个CGI解释器进程(可建多个php-cgi)，并等待来自Web Server的连接。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.当客户端请求到达Web Server时，FastCGI进程管理器选择并连接到一个CGI解释器。Web server将CGI环境变量和标准输入发送到FastCGI子进程php-cgi。<br/>&nbsp;&nbsp;&nbsp;&nbsp; 4.FastCGI子进程完成处理后，将标准输出和错误信息从同一连接返回Web Server。当FastCGI子进程关闭连接时，请求便告处理完成。FastCGI子进程接着等待，并处理来自FastCGI进程管理器(运行在Web Server中)的下一个连接。 在CGI模式中，php-cgi在此便退出了。<br/><strong>FastCGI与CGI特点：</strong><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.对于CGI来说，每一个Web请求PHP都必须重新解析php.ini、重新载入全部扩展，并重新初始化全部数据结构。而使用FastCGI，所有这些都只在进程启动时发生一次。一个额外的好处是，持续数据库连接(Persistent database connection)可以工作。<br/>&nbsp;&nbsp;&nbsp;&nbsp; 2.由于FastCGI是多进程，所以比CGI多线程消耗更多的服务器内存，php-cgi解释器每进程消耗7至25兆内存，将这个数字乘以50或100就是很大的内存数。<br/><strong><span style=\"font-size: 18px;\">PHP-FPM介绍</span></strong><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 要了解PHP-FPM，就得先说说PHP-CGI。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"color: rgb(255, 0, 0);\"><strong>PHP-CGI就是PHP实现的自带的FastCGI管理器</strong></span>。 虽然是php官方出品，但是这丫的却一点也不给力，性能太差，而且也很麻烦不人性化，主要体现在：<br/>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 1.php-cgi变更php.ini配置后，需重启php-cgi才能让新的php-ini生效，不可以平滑重启。<br/>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 2.直接杀死php-cgi进程，php就不能运行了。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上面2个问题，一直让很多人病垢了很久，所以很多人一直还是在用 Module 方式。 直到 2004年一个叫 Andrei Nigmatulin的屌丝发明了PHP-FPM ，这神器的出现就彻底打破了这种局面，这是一个PHP专用的 fastcgi 管理器，它很爽的克服了上面2个问题，而且，还表现在其他方面更表现强劲。<br/>&nbsp;&nbsp;&nbsp;&nbsp; 也就是说，PHP-FPM 是对于 FastCGI 协议的具体实现，他负责管理一个进程池，来处理来自Web服务器的请求。目前，<span style=\"color: rgb(255, 0, 0);\"><strong>PHP5.3版本之后，PHP-FPM是内置于PHP的</strong></span>。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 因为PHP-CGI只是个CGI程序，他自己本身只能解析请求，返回结果，不会进程管理。所以就出现了一些能够调度 php-cgi 进程的程序，比如说由lighthttpd分离出来的spawn-fcgi。同样，PHP-FPM也是用于调度管理PHP解析器php-cgi的管理程序。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PHP-FPM通过生成新的子进程可以实现php.ini修改后的平滑重启。<br/><span style=\"color: rgb(255, 0, 0);\"><strong><span style=\"font-size: 20px;\">总结</span></strong></span><br/>最后，我们来总结一下，这些技术经过不断的升级，可以解决什么问题（不然也不会升级嘛）。<br/></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20201024/1603539995292554.png\" title=\"CGI、FastCGI和PHP-FPM关系图解\" alt=\"CGI、FastCGI和PHP-FPM关系图解\"/></p><p style=\"text-indent: 2em;\">所以，如果要搭建一个高性能的PHP WEB服务器，目前最佳的方式是Apache/Nginx + FastCGI + PHP-FPM(+PHP-CGI)方式了，不要再使用 Module加载或者 CGI 方式啦）<br/><br/></p>', '原创', '', 'https://lirongyaoper.com/phpxiangguan/41.html', '', 1, 1, 10, 0, 0, 1, 0, 1, 2),
(42, 17, 1, 'lirongyaoper', '轩鸿青', 'php 关于URL处理的三个函数', '', 1603544888, 1603546135, 'php', '一、http_build_query函数说明：使用给出的关联（或下标）数组生成一个经过 URL-encode 的请求字符串。 http_build_query ( mixed $qu...', 1615, '<p><span style=\"font-size: 18px; color: rgb(255, 0, 0);\"><strong>一、http_build_query函数</strong></span></p><p>说明：使用给出的关联（或下标）数组生成一个经过 URL-encode 的请求字符串。</p><p>&nbsp;http_build_query ( mixed $query_data [, string $numeric_prefix [, string $arg_separator [, int $enc_type = PHP_QUERY_RFC1738 ]]] ) : string</p><p>参数</p><p>（1）query_data&nbsp;&nbsp;&nbsp; 可以是数组或包含属性的对象。 <br/></p><p>（2）numeric_prefix&nbsp; 如果在基础数组中使用了数字下标同时给出了该参数，此参数值将会作为基础数组中的数字下标元素的前缀。 这是为了让 PHP 或其它 CGI 程序在稍后对数据进行解码时获取合法的变量名。 <br/>（3）arg_separator 除非指定并使用了这个参数，否则会用 arg_separator.output 来分隔参数。<br/>（4）enc_type&nbsp;&nbsp; 默认使用 PHP_QUERY_RFC1738。如果 enc_type 是 PHP_QUERY_RFC1738，则编码将会以 » RFC 1738 标准和 application/x-www-form-urlencoded 媒体类型进行编码，空格会被编码成加号（+）。</p><p>返回值</p><p>返回一个 URL 编码后的字符串。&nbsp; <br/></p><p>eg:<br/></p><pre class=\"brush:php;toolbar:false\">$data=array(\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;name&#39;=&gt;&#39;lirongyao&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;age&#39;=&gt;&#39;27&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;sex&#39;=&gt;&#39;body&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;aihao&#39;=&gt;&#39;project&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;job&#39;=&gt;&#39;doctor&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;address&#39;=&gt;&#39;henan&#39;\r\n);\r\necho&nbsp;http_build_query($data);\r\n//result:name=lirongyao&amp;age=27&amp;sex=body&amp;aihao=project&amp;job=doctor&amp;address=henan</pre><p><span style=\"font-size: 18px; color: rgb(255, 0, 0);\"><strong>二、parse_str函数</strong></span><br/>说明：如果 str 是 URL 传递入的查询字符串（query string），则将它解析为变量并设置到当前作用域。 <br/>语法：parse_str(string,array)<br/>@string必需。规定要解析的字符串。<br/>@array可选。规定存储变量的数组的名称。该参数指示变量将被存储到数组中。</p><p>eg:</p><pre class=\"brush:php;toolbar:false\">$str=&#39;name=lirongyao&amp;age=27&amp;sex=body&amp;aihao=project&amp;job=doctor&amp;address=henan&#39;;\r\nparse_str($str);\r\necho&nbsp;$name.&#39;&lt;br/&gt;&#39;.$sex.&#39;&lt;br/&gt;&#39;.$aihao.&#39;&lt;br/&gt;&#39;.$age.&#39;&lt;br/&gt;&#39;.$address.&#39;&lt;br/&gt;&#39;.$job.&#39;&lt;br/&gt;&#39;;\r\n//result:lirongyao&nbsp;&nbsp;body&nbsp;&nbsp;project&nbsp;&nbsp;27&nbsp;&nbsp;henan&nbsp;&nbsp;&nbsp;doctor\r\nparse_str($str,$arr);\r\nlryp($arr);\r\n/*Array\r\n(\r\n&nbsp;&nbsp;&nbsp;&nbsp;[name]&nbsp;=&gt;&nbsp;lirongyao\r\n&nbsp;&nbsp;&nbsp;&nbsp;[age]&nbsp;=&gt;&nbsp;27\r\n&nbsp;&nbsp;&nbsp;&nbsp;[sex]&nbsp;=&gt;&nbsp;body\r\n&nbsp;&nbsp;&nbsp;&nbsp;[aihao]&nbsp;=&gt;&nbsp;project\r\n&nbsp;&nbsp;&nbsp;&nbsp;[job]&nbsp;=&gt;&nbsp;doctor\r\n&nbsp;&nbsp;&nbsp;&nbsp;[address]&nbsp;=&gt;&nbsp;henan\r\n)*/</pre><p><em>注：lryp()为属于自己编写的打印函数，可以用var_dump()代替</em></p><p><span style=\"color: rgb(0, 0, 0);\"><strong>敲黑板：parse_str()是http_build_query()反向的函数</strong></span></p><p><span style=\"font-size: 18px; color: rgb(255, 0, 0);\"><strong>三、parse_url </strong></span><br/>说明：本函数解析一个 URL 并返回一个关联数组，包含在 URL 中出现的各种组成部分。本函数不是用来验证给定 URL 的合法性的，只是将其分解为下面列出的部分。不完整的 URL 也被接受，parse_url() 会尝试尽量正确地将其解析。<br/>参数：<br/>url&nbsp; 要解析的 URL。无效字符将使用 _ 来替换。 <br/>component 指定 PHP_URL_SCHEME、 PHP_URL_HOST、 PHP_URL_PORT、 PHP_URL_USER、 PHP_URL_PASS、 PHP_URL_PATH、 PHP_URL_QUERY 或 PHP_URL_FRAGMENT 的其中一个来获取 URL 中指定的部分的 string。 （除了指定为 PHP_URL_PORT 后，将返回一个 integer 的值）。 <br/>返回值<br/>对严重不合格的 URL，parse_url() 可能会返回 FALSE。 <br/>如果省略了 component 参数，将返回一个关联数组 array，在目前至少会有一个元素在该数组中。数组中可能的键有以下几种：<br/>• scheme - 如 http &nbsp;<br/>• host &nbsp;<br/>• port &nbsp;<br/>• user &nbsp;<br/>• pass &nbsp;<br/>• path &nbsp;<br/>• query - 在问号 ? 之后 &nbsp;<br/>• fragment - 在散列符号 # 之后 <br/></p><p>如果指定了 component 参数， parse_url() 返回一个 string （或在指定为 PHP_URL_PORT 时返回一个 integer）而不是 array。如果 URL 中指定的组成部分不存在，将会返回 NULL。</p><p>eg:</p><pre class=\"brush:php;toolbar:false\">$urla=&#39;https://lirongyaoper.com/index.php?name=lirongyao&amp;age=27&amp;sex=body&amp;aihao=project&amp;job=doctor&amp;address=henan&#39;;\r\n$urlres=parse_url($urla);\r\nlryp($urlres);\r\n//result:\r\n/*Array\r\n(\r\n&nbsp;&nbsp;&nbsp;&nbsp;[scheme]&nbsp;=&gt;&nbsp;https\r\n&nbsp;&nbsp;&nbsp;&nbsp;[host]&nbsp;=&gt;&nbsp;https://lirongyaoper.com\r\n&nbsp;&nbsp;&nbsp;&nbsp;[path]&nbsp;=&gt;&nbsp;/index.php\r\n&nbsp;&nbsp;&nbsp;&nbsp;[query]&nbsp;=&gt;&nbsp;name=lirongyao&amp;age=27&amp;sex=body&amp;aihao=project&amp;job=doctor&amp;address=henan\r\n)*/</pre><p><br/></p>', '原创', '', 'https://lirongyaoper.com/phpxiangguan/42.html', '', 1, 1, 10, 0, 0, 1, 0, 2, 0),
(43, 17, 1, 'lirongyaoper', '轩鸿青', '正则表达式中的元字符及其使用方法', '', 1603546388, 1603546597, '', '好好学习PHP', 1903, '<table cols=\"2\" frame=\"box\" rules=\"all\" cellspacing=\"0\"><tbody><tr class=\"firstRow\"><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				字符</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				描述</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				将下一个字符标记为一个特殊字符、或一个原义字符、或一个 后向引用、或一个八进制转义符。例如，&#39;n&#39; 匹配字符 &quot;n&quot;。&#39;\\n&#39; 匹配一个换行符。序列 &#39;\\\\&#39; 匹配 &quot;\\&quot; 而 &quot;\\(&quot; 则匹配 &quot;(&quot;。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				^</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配输入字符串的开始位置。如果设置了&nbsp;<strong>RegExp</strong>&nbsp;对象的&nbsp;<strong>Multiline</strong>&nbsp;属性，^ 也匹配 &#39;\\n&#39; 或 &#39;\\r&#39; 之后的位置。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				$</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配输入字符串的结束位置。如果设置了<strong>RegExp</strong>&nbsp;对象的&nbsp;<strong>Multiline</strong>&nbsp;属性，$ 也匹配 &#39;\\n&#39; 或 &#39;\\r&#39; 之前的位置。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				*</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配前面的子表达式零次或多次。例如，zo* 能匹配 &quot;z&quot; 以及 &quot;zoo&quot;。 * 等价于{0,}。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				+</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配前面的子表达式一次或多次。例如，&#39;zo+&#39; 能匹配 &quot;zo&quot; 以及 &quot;zoo&quot;，但不能匹配 &quot;z&quot;。+ 等价于 {1,}。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				?</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配前面的子表达式零次或一次。例如，&quot;do(es)?&quot; 可以匹配 &quot;do&quot; 或 &quot;does&quot; 中的&quot;do&quot; 。? 等价于 {0,1}。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				{<em>n</em>}</td><td><em>n</em>&nbsp;是一个非负整数。匹配确定的&nbsp;<em>n</em>&nbsp;次。例如，&#39;o{2}&#39; 不能匹配 &quot;Bob&quot; 中的 &#39;o&#39;，但是能匹配 &quot;food&quot; 中的两个 o。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				{<em>n</em>,}</td><td><em>n</em>&nbsp;是一个非负整数。至少匹配<em>n</em>&nbsp;次。例如，&#39;o{2,}&#39; 不能匹配 &quot;Bob&quot; 中的 &#39;o&#39;，但能匹配 &quot;foooood&quot; 中的所有 o。&#39;o{1,}&#39; 等价于 &#39;o+&#39;。&#39;o{0,}&#39; 则等价于 &#39;o*&#39;。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				{<em>n</em>,<em>m</em>}</td><td><em>m</em>&nbsp;和&nbsp;<em>n</em>&nbsp;均为非负整数，其中<em>n</em>&nbsp;&lt;=&nbsp;<em>m</em>。最少匹配&nbsp;<em>n</em>&nbsp;次且最多匹配&nbsp;<em>m</em>&nbsp;次。刘， &quot;o{1,3}&quot; 将匹配 &quot;fooooood&quot; 中的前三个 o。&#39;o{0,1}&#39; 等价于 &#39;o?&#39;。请注意在逗号和两个数之间不能有空格。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				?</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				当该字符紧跟在任何一个其他限制符 (*, +, ?, {<em>n</em>}, {<em>n</em>,}, {<em>n</em>,<em>m</em>}) 后面时，匹配模式是非贪婪的。非贪婪模式尽可能少的匹配所搜索的字符串，而默认的贪婪模式则尽可能多的匹配所搜索的字符串。例如，对于字符串 &quot;oooo&quot;，&#39;o+?&#39; 将匹配单个 &quot;o&quot;，而 &#39;o+&#39; 将匹配所有 &#39;o&#39;。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				.</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配除 &quot;\\n&quot; 之外的任何单个字符。要匹配包括 &#39;\\n&#39; 在内的任何字符，请使用象 &#39;[.\\n]&#39; 的模式。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				(<em>pattern</em>)</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配<em>pattern</em>&nbsp;并获取这一匹配。所获取的匹配可以从产生的 Matches 集合得到，在VBScript 中使用&nbsp;<strong>SubMatches</strong>&nbsp;集合，在Visual Basic Scripting Edition 中则使用&nbsp;<strong>$0</strong>&amp;hellip;<strong>$9</strong>&nbsp;属性。要匹配圆括号字符，请使用 &#39;\\(&#39; 或 &#39;\\)&#39;。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				(?:<em>pattern</em>)</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配&nbsp;<em>pattern</em>&nbsp;但不获取匹配结果，也就是说这是一个非获取匹配，不进行存储供以后使用。这在使用 &quot;或&quot; 字符 (|) 来组合一个模式的各个部分是很有用。例如， &#39;industr(?:y|ies) 就是一个比 &#39;industry|industries&#39; 更简略的表达式。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				(?=<em>pattern</em>)</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				正向预查，在任何匹配&nbsp;<em>pattern</em>&nbsp;的字符串开始处匹配查找字符串。这是一个非获取匹配，也就是说，该匹配不需要获取供以后使用。例如，\r\n &#39;Windows (?=95|98|NT|2000)&#39; 能匹配 &quot;Windows 2000&quot; 中的 &quot;Windows&quot; ，但不能匹配 \r\n&quot;Windows 3.1&quot; 中的 \r\n&quot;Windows&quot;。预查不消耗字符，也就是说，在一个匹配发生后，在最后一次匹配之后立即开始下一次匹配的搜索，而不是从包含预查的字符之后开始。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				(?!<em>pattern</em>)</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				负向预查，在任何不匹配Negative lookahead matches the search string at any point where a string not matching&nbsp;<em>pattern</em>&nbsp;的字符串开始处匹配查找字符串。这是一个非获取匹配，也就是说，该匹配不需要获取供以后使用。例如&#39;Windows\r\n (?!95|98|NT|2000)&#39; 能匹配 &quot;Windows 3.1&quot; 中的 &quot;Windows&quot;，但不能匹配 &quot;Windows 2000&quot; \r\n中的 &quot;Windows&quot;。预查不消耗字符，也就是说，在一个匹配发生后，在最后一次匹配之后立即开始下一次匹配的搜索，而不是从包含预查的字符之后开始</td></tr><tr><td><em>x</em>|<em>y</em></td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配&nbsp;<em>x</em>&nbsp;或&nbsp;<em>y</em>。例如，&#39;z|food&#39; 能匹配 &quot;z&quot; 或 &quot;food&quot;。&#39;(z|f)ood&#39; 则匹配 &quot;zood&quot; 或 &quot;food&quot;。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				[<em>xyz</em>]</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				字符集合。匹配所包含的任意一个字符。例如， &#39;[abc]&#39; 可以匹配 &quot;plain&quot; 中的 &#39;a&#39;。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				[^<em>xyz</em>]</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				负值字符集合。匹配未包含的任意字符。例如， &#39;[^abc]&#39; 可以匹配 &quot;plain&quot; 中的&#39;p&#39;。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				[<em>a-z</em>]</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				字符范围。匹配指定范围内的任意字符。例如，&#39;[a-z]&#39; 可以匹配 &#39;a&#39; 到 &#39;z&#39; 范围内的任意小写字母字符。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				[^<em>a-z</em>]</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				负值字符范围。匹配任何不在指定范围内的任意字符。例如，&#39;[^a-z]&#39; 可以匹配任何不在 &#39;a&#39; 到 &#39;z&#39; 范围内的任意字符。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\b</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配一个单词边界，也就是指单词和空格间的位置。例如， &#39;er\\b&#39; 可以匹配&quot;never&quot; 中的 &#39;er&#39;，但不能匹配 &quot;verb&quot; 中的 &#39;er&#39;。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\B</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配非单词边界。&#39;er\\B&#39; 能匹配 &quot;verb&quot; 中的 &#39;er&#39;，但不能匹配 &quot;never&quot; 中的 &#39;er&#39;。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\c<em>x</em></td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配由<em>x</em>指明的控制字符。例如， \\cM 匹配一个 Control-M 或回车符。&nbsp;<em>x</em>&nbsp;的值必须为 A-Z 或 a-z 之一。否则，将 c 视为一个原义的 &#39;c&#39; 字符。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\d</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配一个数字字符。等价于 [0-9]。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\D</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配一个非数字字符。等价于 [^0-9]。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\f</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配一个换页符。等价于 \\x0c 和 \\cL。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\n</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配一个换行符。等价于 \\x0a 和 \\cJ。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\r</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配一个回车符。等价于 \\x0d 和 \\cM。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\s</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配任何空白字符，包括空格、制表符、换页符等等。等价于 [&nbsp;\\f\\n\\r\\t\\v]。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\S</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配任何非空白字符。等价于 [^&nbsp;\\f\\n\\r\\t\\v]。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\t</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配一个制表符。等价于 \\x09 和 \\cI。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\v</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配一个垂直制表符。等价于 \\x0b 和 \\cK。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\w</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配包括下划线的任何单词字符。等价于&#39;[A-Za-z0-9_]&#39;。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\W</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配任何非单词字符。等价于 &#39;[^A-Za-z0-9_]&#39;。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\x<em>n</em></td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配&nbsp;<em>n</em>，其中&nbsp;<em>n</em>&nbsp;为十六进制转义值。十六进制转义值必须为确定的两个数字长。例如， &#39;\\x41&#39; 匹配 &quot;A&quot;。&#39;\\x041&#39; 则等价于 &#39;\\x04&#39; &amp; &quot;1&quot;。正则表达式中可以使用 ASCII 编码。.</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\<em>num</em></td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配&nbsp;<em>num</em>，其中&nbsp;<em>num</em>&nbsp;是一个正整数。对所获取的匹配的引用。例如，&#39;(.)\\1&#39; 匹配两个连续的相同字符。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\<em>n</em></td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				标识一个八进制转义值或一个后向引用。如果 \\<em>n</em>&nbsp;之前至少&nbsp;<em>n</em>&nbsp;个获取的子表达式，则&nbsp;<em>n</em>&nbsp;为后向引用。否则，如果&nbsp;<em>n</em>&nbsp;为八进制数字 (0-7)，则&nbsp;<em>n</em>&nbsp;为一个八进制转义值。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\<em>nm</em></td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				标识一个八进制转义值或一个后向引用。如果 \\<em>nm</em>&nbsp;之前至少有is preceded by at least&nbsp;<em>nm</em>&nbsp;个获取得子表达式，则&nbsp;<em>nm</em>&nbsp;为后向引用。如果 \\<em>nm</em>&nbsp;之前至少有&nbsp;<em>n</em>&nbsp;个获取，则&nbsp;<em>n</em>&nbsp;为一个后跟文字&nbsp;<em>m&nbsp;</em>的后向引用。如果前面的条件都不满足，若&nbsp;&nbsp;<em>n</em>&nbsp;和&nbsp;<em>m</em>&nbsp;均为八进制数字 (0-7)，则 \\<em>nm</em>&nbsp;将匹配八进制转义值&nbsp;<em>nm</em>。</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\<em>nml</em></td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				如果&nbsp;<em>n</em>&nbsp;为八进制数字 (0-3)，且&nbsp;<em>m</em>&nbsp;和&nbsp;<em>l</em>&nbsp;均为八进制数字 (0-7)，则匹配八进制转义值&nbsp;<em>nml。</em></td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				\\u<em>n</em></td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				匹配&nbsp;<em>n</em>，其中&nbsp;<em>n</em>&nbsp;是一个用四个十六进制数字表示的 Unicode 字符。例如， \\u00A9 匹配版权符号 (?)。</td></tr></tbody></table><p><br/></p>', '原创', '', 'https://lirongyaoper.com/phpxiangguan/43.html', '', 1, 1, 10, 0, 0, 1, 0, 0, 0),
(44, 17, 1, 'lirongyaoper', '轩鸿青', 'php四种基础算法：冒泡、选择、插入和快速排序法', '', 1603551602, 1603553479, 'php', 'PHP基础算法 及原理分析', 1793, '<p>目的：分别用 冒泡排序法，选择排序法，插入排序法，快速排序法将下面数组中 的值按照从小到大的顺序进行排序。<br/>$arr = array(100,99,98,97,96,95);<br/><span style=\"font-size: 20px;\"><strong>冒泡排序</strong></span><br/>思路分析：在要排序的一组数中，对当前还未排好的序列，从前往后对相邻的两个数依次进行比较和调整，让较大的数往下沉，较小的往上冒。即，每当两相邻的数比较后发现它们的排序与排序要求相反时，就将它们互换。</p><pre class=\"brush:php;toolbar:false\">$aaa=array(100,99,98,97,96,95);\r\nfunction&nbsp;lry_bubble_sort($arr){\r\n&nbsp;&nbsp;&nbsp;&nbsp;$len&nbsp;=&nbsp;count($arr);\r\n&nbsp;&nbsp;&nbsp;&nbsp;//该层循环控制&nbsp;需要冒泡的轮数\r\n&nbsp;&nbsp;&nbsp;&nbsp;for($i=1;&nbsp;$i&lt;$len;&nbsp;$i++){&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//该层循环用来控制每轮&nbsp;冒出一个数&nbsp;需要比较的次数\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for($k=0;&nbsp;$k&lt;$len-$i;&nbsp;$k++){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if($arr[$k]&nbsp;&gt;&nbsp;$arr[$k+1]){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$tmp&nbsp;=&nbsp;$arr[$k+1];\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[$k+1]&nbsp;=&nbsp;$arr[$k];\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[$k]&nbsp;=&nbsp;$tmp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$arr;\r\n}\r\nlryp(lry_bubble_sort($aaa));\r\n//result:\r\n/*Array\r\n(\r\n&nbsp;&nbsp;&nbsp;&nbsp;[0]&nbsp;=&gt;&nbsp;95\r\n&nbsp;&nbsp;&nbsp;&nbsp;[1]&nbsp;=&gt;&nbsp;96\r\n&nbsp;&nbsp;&nbsp;&nbsp;[2]&nbsp;=&gt;&nbsp;97\r\n&nbsp;&nbsp;&nbsp;&nbsp;[3]&nbsp;=&gt;&nbsp;98\r\n&nbsp;&nbsp;&nbsp;&nbsp;[4]&nbsp;=&gt;&nbsp;99\r\n&nbsp;&nbsp;&nbsp;&nbsp;[5]&nbsp;=&gt;&nbsp;100\r\n)*/</pre><p><strong><span style=\"font-size: 20px;\">选择排序</span></strong><br/>思路分析：在要排序的一组数中，选出最小的一个数与第一个位置的数交换。然后在剩下的数当中再找最小的与第二个位置的数交换，如此循环到倒数第二个数和最后一个数比较为止。<br/></p><pre class=\"brush:php;toolbar:false\">$aaa=array(100,99,98,97,96,95);\r\nfunction&nbsp;lry_select_sort($arr){\r\n&nbsp;&nbsp;&nbsp;&nbsp;$len&nbsp;=&nbsp;count($arr);\r\n&nbsp;&nbsp;&nbsp;&nbsp;for($i=0;&nbsp;$i&lt;$len-1;&nbsp;$i++)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$p&nbsp;=&nbsp;$i;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for($j=$i+1;&nbsp;$j&lt;$len;&nbsp;$j++)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if($arr[$p]&nbsp;&gt;&nbsp;$arr[$j])&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$p&nbsp;=&nbsp;$j;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if($p&nbsp;!=&nbsp;$i)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$tmp&nbsp;=&nbsp;$arr[$p];\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[$p]&nbsp;=&nbsp;$arr[$i];\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[$i]&nbsp;=&nbsp;$tmp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$arr;\r\n}\r\nlryp(lry_select_sort($aaa));\r\n//result:\r\n/*Array\r\n(\r\n&nbsp;&nbsp;&nbsp;&nbsp;[0]&nbsp;=&gt;&nbsp;95\r\n&nbsp;&nbsp;&nbsp;&nbsp;[1]&nbsp;=&gt;&nbsp;96\r\n&nbsp;&nbsp;&nbsp;&nbsp;[2]&nbsp;=&gt;&nbsp;97\r\n&nbsp;&nbsp;&nbsp;&nbsp;[3]&nbsp;=&gt;&nbsp;98\r\n&nbsp;&nbsp;&nbsp;&nbsp;[4]&nbsp;=&gt;&nbsp;99\r\n&nbsp;&nbsp;&nbsp;&nbsp;[5]&nbsp;=&gt;&nbsp;100\r\n)*/</pre><p><strong><span style=\"font-size: 20px;\">插入排序</span></strong><br/>思路分析：在要排序的一组数中，假设前面的数已经是排好顺序的，现在要把第n个数插到前面的有序数中，使得这n个数也是排好顺序的。如此反复循环，直到全部排好顺序。</p><pre class=\"brush:php;toolbar:false\">$aaa=array(100,99,98,97,96,95,7);\r\nfunction&nbsp;lry_insert_sort($arr){\r\n&nbsp;&nbsp;&nbsp;&nbsp;$len&nbsp;=&nbsp;count($arr);&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;for($i=1;&nbsp;$i&lt;$len;&nbsp;$i++)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$tmp&nbsp;=&nbsp;$arr[$i];\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for($j=$i-1;$j&gt;=0;$j--)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if($tmp&nbsp;&lt;&nbsp;$arr[$j])&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//发现插入的元素要小，交换位置，将后边的元素与前面的元素互换\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[$j+1]&nbsp;=&nbsp;$arr[$j];\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[$j]&nbsp;=&nbsp;$tmp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//如果碰到不需要移动的元素，由于是已经排序好是数组，则前面的就不需要再次比较了。\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$arr;\r\n}\r\nlryp(lry_insert_sort($aaa));\r\n//result:\r\n/*Array\r\n(\r\n&nbsp;&nbsp;&nbsp;&nbsp;[0]&nbsp;=&gt;&nbsp;7\r\n&nbsp;&nbsp;&nbsp;&nbsp;[1]&nbsp;=&gt;&nbsp;95\r\n&nbsp;&nbsp;&nbsp;&nbsp;[2]&nbsp;=&gt;&nbsp;96\r\n&nbsp;&nbsp;&nbsp;&nbsp;[3]&nbsp;=&gt;&nbsp;97\r\n&nbsp;&nbsp;&nbsp;&nbsp;[4]&nbsp;=&gt;&nbsp;98\r\n&nbsp;&nbsp;&nbsp;&nbsp;[5]&nbsp;=&gt;&nbsp;99\r\n&nbsp;&nbsp;&nbsp;&nbsp;[6]&nbsp;=&gt;&nbsp;100\r\n)*/</pre><p><strong><span style=\"font-size: 20px;\">快速排序</span></strong><br/>思路分析：选择一个基准元素，通常选择第一个元素或者最后一个元素。通过一趟扫描，将待排序列分成两部分，一部分比基准元素小，一部分大于等于基准元素。此时基准元素在其排好序后的正确位置，然后再用同样的方法递归地排序划分的两部分。</p><pre class=\"brush:php;toolbar:false\">$aaa=array(100,99,98,97,96,95,7);\r\nfunction&nbsp;lry_quick_sort($arr){\r\n&nbsp;&nbsp;&nbsp;&nbsp;//判断参数是否是一个数组\r\n&nbsp;&nbsp;&nbsp;&nbsp;if(!is_array($arr))&nbsp;return&nbsp;false;\r\n&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;//递归出口:数组长度为1，直接返回数组\r\n&nbsp;&nbsp;&nbsp;&nbsp;$length&nbsp;=&nbsp;count($arr);\r\n&nbsp;&nbsp;&nbsp;&nbsp;if($length&lt;=1)&nbsp;return&nbsp;$arr;\r\n&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;//数组元素有多个,则定义两个空数组\r\n&nbsp;&nbsp;&nbsp;&nbsp;$left&nbsp;=&nbsp;$right&nbsp;=&nbsp;array();\r\n&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;//使用for循环进行遍历，把第一个元素当做比较的对象\r\n&nbsp;&nbsp;&nbsp;&nbsp;for($i=1;&nbsp;$i&lt;$length;&nbsp;$i++){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//判断当前元素的大小\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if($arr[$i]&nbsp;&lt;&nbsp;$arr[0]){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$left[]&nbsp;=&nbsp;$arr[$i];\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$right[]&nbsp;=&nbsp;$arr[$i];\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;//递归调用\r\n&nbsp;&nbsp;&nbsp;&nbsp;$left&nbsp;=&nbsp;lry_quick_sort($left);\r\n&nbsp;&nbsp;&nbsp;&nbsp;$right&nbsp;=&nbsp;lry_quick_sort($right);\r\n&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;//将所有的结果合并\r\n&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;array_merge($left,array($arr[0]),$right);\r\n}\r\nlryp(lry_quick_sort($aaa));\r\n//result:\r\n/*Array\r\n(\r\n&nbsp;&nbsp;&nbsp;&nbsp;[0]&nbsp;=&gt;&nbsp;7\r\n&nbsp;&nbsp;&nbsp;&nbsp;[1]&nbsp;=&gt;&nbsp;95\r\n&nbsp;&nbsp;&nbsp;&nbsp;[2]&nbsp;=&gt;&nbsp;96\r\n&nbsp;&nbsp;&nbsp;&nbsp;[3]&nbsp;=&gt;&nbsp;97\r\n&nbsp;&nbsp;&nbsp;&nbsp;[4]&nbsp;=&gt;&nbsp;98\r\n&nbsp;&nbsp;&nbsp;&nbsp;[5]&nbsp;=&gt;&nbsp;99\r\n&nbsp;&nbsp;&nbsp;&nbsp;[6]&nbsp;=&gt;&nbsp;100\r\n)*/</pre><p>注：lryp打印函数为自己定义定义的打印函数，可替换成var_dump()。</p>', '原创', '', 'https://lirongyaoper.com/phpxiangguan/44.html', '', 1, 1, 10, 0, 0, 1, 0, 0, 0),
(45, 17, 1, 'lirongyaoper', '轩鸿青', 'substr — 返回字符串的子串', '', 1603980087, 1603980468, 'php', 'substr &mdash; 返回字符串的子串说明:string substr ( string $string , int $start [, int $length ] )返回字符串 string 由...', 1713, '<p><strong><span style=\"font-family: 宋体, SimSun;\">substr — 返回字符串的子串</span></strong></p><p><strong><span style=\"font-family: 宋体, SimSun;\">说明:</span></strong><span style=\"font-family: 宋体, SimSun;\">string substr ( string $string , int $start [, int $length ] )返回字符串 string 由 start 和 length 参数指定的子字符串。</span>&nbsp;</p><p><strong><span style=\"font-family: 宋体, SimSun;\">参数</span></strong></p><p>(1)string</p><p>输入字符串。必须至少有一个字符。&nbsp;</p><p>(2)start</p><p>如果 start 是非负数，返回的字符串将从 string 的 start 位置开始，从 0 开始计算。例如，在字符串 &quot;abcdef&quot; 中，在位置 0 的字符是 &quot;a&quot;，位置 2 的字符串是 &quot;c&quot; 等等。&nbsp;</p><p>如果 start 是负数，返回的字符串将从 string 结尾处向前数第 start 个字符开始。&nbsp;</p><p>如果 string 的长度小于 start，将返回 FALSE。&nbsp;</p><p>Example #1 使用负数 start</p><pre class=\"brush:php;toolbar:false\">$rest&nbsp;=&nbsp;substr(&quot;abcdef&quot;,&nbsp;-1);&nbsp;lryp($rest);&nbsp;&nbsp;&nbsp;//&nbsp;返回&nbsp;&quot;f&quot;\r\n$rest1&nbsp;=&nbsp;substr(&quot;abcdef&quot;,&nbsp;-2);&nbsp;lryp($rest1);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;返回&nbsp;&quot;ef&quot;\r\n$rest2&nbsp;=&nbsp;substr(&quot;abcdef&quot;,&nbsp;-3,&nbsp;1);&nbsp;lryp($rest2);&nbsp;&nbsp;//&nbsp;返回&nbsp;&quot;d&quot;\r\n$rest3&nbsp;=&nbsp;substr(&quot;abcdef&quot;,&nbsp;6,&nbsp;1);&nbsp;lryp($rest3);&nbsp;//&nbsp;返回&nbsp;bool(false)</pre><p>(3)length</p><p>如果提供了正数的 length，返回的字符串将从 start 处开始最多包括 length 个字符（取决于 string 的长度）。&nbsp;</p><p>如果提供了负数的 length，那么 string 末尾处的 length 个字符将会被省略（若 start 是负数则从字符串尾部算起）。如果 start 不在这段文本中，那么将返回 FALSE。&nbsp;</p><p>如果提供了值为 0，FALSE 或 NULL 的 length，那么将返回一个空字符串。&nbsp;</p><p>如果没有提供 length，返回的子字符串将从 start 位置开始直到字符串结尾。&nbsp;</p><p>Example #2 使用负数 length</p><pre class=\"brush:php;toolbar:false\">$rest4&nbsp;=&nbsp;substr(&quot;abcdef&quot;,&nbsp;0,&nbsp;-1);lryp($rest4);&nbsp;&nbsp;//&nbsp;返回&nbsp;&quot;abcde&quot;\r\n$rest5&nbsp;=&nbsp;substr(&quot;abcdef&quot;,&nbsp;2,&nbsp;-1);lryp($rest5);&nbsp;&nbsp;//&nbsp;返回&nbsp;&quot;cde&quot;\r\n$rest6&nbsp;=&nbsp;substr(&quot;abcdef&quot;,&nbsp;4,&nbsp;-4);lryp($rest6);&nbsp;&nbsp;//&nbsp;返回&nbsp;&quot;&quot;\r\n$rest7=&nbsp;substr(&quot;abcdef&quot;,&nbsp;-3,&nbsp;-1);lryp($rest7);&nbsp;//&nbsp;返回&nbsp;&quot;de&quot;\r\n$rest8=&nbsp;substr(&quot;abcdef&quot;,&nbsp;-3,&nbsp;-7);lryp($rest8);&nbsp;//&nbsp;返回&nbsp;bool(false)</pre><p><br/></p><p><strong><span style=\"font-family: 宋体, SimSun;\">返回值</span></strong></p><p>返回提取的子字符串， 或者在失败时返回 FALSE。</p><p><br/></p>', '原创', '', 'https://lirongyaoper.com/phpxiangguan/45.html', '', 1, 1, 10, 0, 0, 1, 0, 0, 0),
(46, 7, 1, 'lirongyaoper', '轩鸿青', '负重前行', '', 1604583192, 1604583400, '', '岁月的年轮越画越多，前进的脚步越来越重，在本该奋斗的年纪里，不应选择安逸。', 1883, '<p style=\"text-indent: 2em;\">岁月的年轮越画越多，前进的脚步越来越重，在本该奋斗的年纪里，不应选择安逸。</p><p style=\"text-indent: 2em;\">还依稀记得幼年的幕幕欢笑，却不知已到成家立业之年，伴随着职场中繁忙的步伐，生活的压力也越来越大。从衣食无忧的少年，已慢慢的开始挑起生活的重担。</p><p style=\"text-indent: 2em;\">就在上一年的这个时候，刚刚进入职场，由学生到工人的过渡是那么突然，角色的突然转变让我久久不能适应。在学校里除了应付毕业，几乎没有任何烦恼，不需要费太多的心事，即便在日常的临床工作中，也不需要操太多的心，按照老师或师兄的安排去做就行，不需要面对一条又一条的检查检验报告，现在想想那时的我活的真是惬意；而现在的我，作为上级下面的住院医师，要对每一个所管的病号负全部责任，接诊患者，询问病史，制定诊疗计划，评价治疗效果，应对突发情况等都是日常工作的重要部分。再加上地市级医院病人流量大，每天都不能保证正常下班，更别说什么休息日了。</p><p style=\"text-indent: 2em;\">说实在的，这样的日子一开始我内心无法接受，一直在寻思着如何离开这种坏境，哪怕是再不挣钱的工作，只要轻松就行，期间不止一次的有辞职的念头。不过每次和父母沟通，和弟弟商量，都是无一例外的反对，每次都在不愉快的氛围中结束谈话。其实，在没有沟通之前，我都知道父母反对，在每次沟通之后我也时常反思自己。作为有两个孩子的农村家庭，我的父母为了我们兄弟俩的成长付出了无比艰辛的努力与汗水，我为有这样的父母感到无比骄傲。父母为了我们，从来不顾及自己，为了让我们吃饱喝好，自己都是省吃俭用，甚至多数时候让我很是心疼，来自父母的爱，深深的感动着我。因此，一次一次的放弃，又一次一次的坚持。</p><p style=\"text-indent: 2em;\">就在这种状态下，不知不觉坚持了半年，去年年底，在弟弟的帮助下，我提了一辆属于自己的SUV车，或许就是这辆车，让我辞职的想法渐渐退热，工作中也无形中多了一层枷锁。虽然很不情愿，每天也都硬着头皮起床工作，说实话，这个时候我还没感觉到工作多我人生的重要意义。甚至还幻想着如果人生不需要工作该多好啊，要是每天能自由自在、随心所欲的生活该有多好啊。</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20201105/1604583372150776.png\" title=\"负重前行\" alt=\"负重前行\"/></p><p style=\"text-indent: 2em;\">就这样，在不情愿的工作中又坚持了半年，前进的脚步匆匆忙忙，似乎都不等我稍加停歇。房子是一个人在一座城市生后中最需要的资源，和大多数奋斗在城市中的人一样，就在前几天我又背负了一身房债，成为了一名名副其实的房奴。</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20201105/1604583390184689.png\" title=\"负重前行\" alt=\"负重前行\"/></p><p style=\"text-indent: 2em;\">自此，我明白了人生的意义，明白了奋斗的价值。明白了父母的深情与牵挂，明白了弟弟的手足之情。奋斗，永远在路上。</p>', '原创', '', 'https://lirongyaoper.com/xianyansuiyu/46.html', '', 1, 1, 10, 0, 0, 1, 0, 5, 0),
(47, 7, 1, 'lirongyaoper', '轩鸿青', '【转载】人生成事需三多：多读书，多交友，多体验', '', 1606319406, 1606319799, '', '没有可以秉烛夜谈的朋友是件憾事。', 1986, '<p style=\"text-align: center; text-indent: 2em;\">1</p><p style=\"text-indent: 2em;\">地球广大，历史浩瀚，要更多地了解这个世界，似易实难。科技再发达，一个人靠自身亲历去开阔眼界，始终有限，只能多读书。</p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(84, 141, 212);\"><strong>爱读书的人和不爱读书的人，小时候可能并没有多大区别，但是等他们长大以后，谈吐举止会迥然不同。</strong></span></p><p style=\"text-indent: 2em;\">很多人说起读书，都会有这样的感受：小时候读过的书，长大后书名和作者都忘记了，情节也记不太清，但是自己被某个细节深深地震撼过，持续了几十年，影响了自己的整个人生。这就是读书的意义，所有认真读过的书都会融进灵魂，沉淀成智慧，静静地待在心灵深处，只要被触动，就会喷薄而出。</p><p style=\"text-indent: 2em;\">有人抱怨说，读了许多书，懂一大箩筐大道理，却依旧过不好这一生。诚然，读书并不一定能给我们带来现实的物质利益，但是不读书，这一生一定糊糊涂涂。</p><p style=\"text-indent: 2em;\">生而为人，只要有梦想、有追求、想奋斗，想活出人生更多的可能，就得读书。爱读书的人，心灵有温度，乐于感知世事百态；爱读书的人，生活有情趣，不会因现实的琐碎而放弃思考。</p><p style=\"text-align: center; text-indent: 2em;\">2</p><p style=\"text-indent: 2em;\">没有可以秉烛夜谈的朋友是件憾事。</p><p style=\"text-indent: 2em;\">人生因缘际会之下，我们会遇到各种各样的人，无论是朝夕相处的亲人、朋友，日常见面的同学、同事，还是擦肩而过的哪怕只留下一抹笑意的陌生人，都值得我们用心对待。</p><p style=\"text-indent: 2em;\">因为，是他们用人世间的真善美真实地影响着我们的人生，是他们让我们看到了更广阔更丰富的世界，是他们全方位地帮助我们成长、督促我们成熟。</p><p style=\"text-indent: 2em;\">面对带着爱走近我们的人，要回报；面对想爱的人，要付出。赞美你欣赏的人，同时学会接受别人的建议和批评；理解你看不懂的人，同时试着和看不懂你的人沟通。</p><p style=\"text-indent: 2em;\">多交友也不是把每个相识的人都请进生命里。<span style=\"color: rgb(84, 141, 212);\"><strong>人生宝贵，把时间和精力更多留给自己欣赏、关心的人，留给懂自己的人，千万别在不喜欢你的人那里丢了自己，千万别在不值得的事上劳心费神。</strong></span></p><p style=\"text-align: center; text-indent: 2em;\">3</p><p style=\"text-indent: 2em;\">读万卷书，还要观万千世界。亲身体验是另一种阅读。可能的情况下，要多经历、多体验。</p><p style=\"text-indent: 2em;\">脚步丈量过的路，手指摸到的一草一木，自己握得住的才是最值得珍惜的。不必一味羡慕别人的机遇，专注于自己身边的美好，也能享受到属于自己的风景。</p><p style=\"text-indent: 2em;\">见多才能识广，在接触新鲜事物、体验不同文化的过程中，我们会碰见意想不到的人和事，会更深刻地了解自己、理解别人，心胸也会慢慢变得更加宽广。更好的心态是悄悄降临的，更大的人生格局是徐徐展开的。</p><p style=\"text-indent: 2em;\">生活不止眼前的苟且，还有从未体验过的新鲜世界。生活的意义也不止是柴米油盐酱醋，还有诗书画酒香茶。<span style=\"color: rgb(84, 141, 212);\"><strong>生命的美妙无处不在，在书中，在世上，在日常的一啄一饮中。</strong></span></p><p style=\"text-indent: 2em;\">多读书、多交友、多体验，不断学习、不断领悟，提升眼界和格局，幸运自会悄然降临。</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 0em;\"><em>全文转载于2020年11月24日《人民日报微信版 &lt;夜读&gt;》</em></p>', '转载', '/uploads/202011/25/201125115419821.png', 'https://lirongyaoper.com/xianyansuiyu/47.html', '', 1, 1, 10, 0, 0, 1, 0, 1, 0);
INSERT INTO `lry_article` (`id`, `catid`, `userid`, `username`, `nickname`, `title`, `color`, `inputtime`, `updatetime`, `keywords`, `description`, `click`, `content`, `copyfrom`, `thumb`, `url`, `flag`, `status`, `issystem`, `listorder`, `groupids_view`, `readpoint`, `paytype`, `is_push`, `up`, `down`) VALUES
(48, 19, 1, 'lirongyaoper', '轩鸿青', '硬盘基本知识（磁头、磁道、扇区、柱面）', '', 1607358237, 1607359055, '', '概述盘片（platter）磁头（head）磁道（track）扇区（sector）柱面（cylinder）盘片 片面 和 磁头硬盘中一般会有多个盘片组成，每个盘片...', 3455, '<p><span style=\"font-size: 18px;\"><strong>概述</strong></span></p><p>盘片（platter）</p><p>磁头（head）</p><p>磁道（track）</p><p>扇区（sector）</p><p>柱面（cylinder）</p><p><span style=\"font-size: 18px;\"><strong>盘片 片面 和 磁头</strong></span></p><p>硬盘中一般会有多个盘片组成，每个盘片包含两个面，每个盘面都对应地有一个读/写磁头。受到硬盘整体体积和生产成本的限制，盘片数量都受到限制，一般都在5片以内。盘片的编号自下向上从0开始，如最下边的盘片有0面和1面，再上一个盘片就编号为2面和3面。</p><p>如下图：</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20201208/1607358355789799.png\" title=\"硬盘基本知识（磁头、磁道、扇区、柱面）\" alt=\"硬盘基本知识（磁头、磁道、扇区、柱面）\"/></p><p style=\"text-align: center;\">图1</p><p><span style=\"font-size: 18px;\"><strong>扇区 和 磁道</strong></span></p><p>下图显示的是一个盘面，盘面中一圈圈灰色同心圆为一条条磁道，从圆心向外画直线，可以将磁道划分为若干个弧段，每个磁道上一个弧段被称之为一个扇区（图践绿色部分）。扇区是磁盘的最小组成单元，通常是512字节。（由于不断提高磁盘的大小，部分厂商设定每个扇区的大小是4096字节）</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20201208/1607358456107434.png\" title=\"硬盘基本知识（磁头、磁道、扇区、柱面）\" alt=\"硬盘基本知识（磁头、磁道、扇区、柱面）\"/></p><p style=\"text-align: center;\">图2</p><p><span style=\"font-size: 18px;\"><strong>磁头 和 柱面</strong></span></p><p>硬盘通常由重叠的一组盘片构成，每个盘面都被划分为数目相等的磁道，并从外缘的“0”开始编号，具有相同编号的磁道形成一个圆柱，称之为磁盘的柱面。磁盘的柱面数与一个盘面上的磁道数是相等的。由于每个盘面都有自己的磁头，因此，盘面数等于总的磁头数。 如下图</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20201208/1607358501876024.png\" title=\"硬盘基本知识（磁头、磁道、扇区、柱面）\" alt=\"硬盘基本知识（磁头、磁道、扇区、柱面）\"/></p><p style=\"text-align: center;\">图3</p><p><span style=\"font-size: 18px;\"><strong>磁盘容量计算</strong></span></p><p>存储容量 ＝ 磁头数 × 磁道(柱面)数 × 每道扇区数 × 每扇区字节数</p><p><br/></p><p>图3中磁盘是一个 3个圆盘6个磁头，7个柱面（每个盘片7个磁道） 的磁盘，图3中每条磁道有12个扇区，所以此磁盘的容量为：</p><p><br/></p><p>存储容量 6 * 7 * 12 * 512 = 258048</p><p><br/></p><p>每个磁道的扇区数一样是说的老的硬盘，外圈的密度小，内圈的密度大，每圈可存储的数据量是一样的。新的硬盘数据的密度都一致，这样磁道的周长越长，扇区就越多，存储的数据量就越大。</p><p><br/></p><p><span style=\"font-size: 18px;\"><strong>磁盘读取响应时间</strong></span></p><p>寻道时间：磁头从开始移动到数据所在磁道所需要的时间，寻道时间越短，I/O操作越快，目前磁盘的平均寻道时间一般在3－15ms，一般都在10ms左右。</p><p>旋转延迟：盘片旋转将请求数据所在扇区移至读写磁头下方所需要的时间，旋转延迟取决于磁盘转速。普通硬盘一般都是7200rpm，慢的5400rpm。</p><p>数据传输时间：完成传输所请求的数据所需要的时间。</p><p>小结一下：从上面的指标来看、其实最重要的、或者说、我们最关心的应该只有两个：寻道时间；旋转延迟。</p><p>读写一次磁盘信息所需的时间可分解为：寻道时间、延迟时间、传输时间。为提高磁盘传输效率，软件应着重考虑减少寻道时间和延迟时间。</p><p><br/></p><p><span style=\"font-size: 18px;\"><strong>块/簇</strong></span></p><p>概述</p><p>磁盘块/簇（虚拟出来的）。 块是操作系统中最小的逻辑存储单位。操作系统与磁盘打交道的最小单位是磁盘块。</p><p>通俗的来讲，在Windows下如NTFS等文件系统中叫做簇；在Linux下如Ext4等文件系统中叫做块（block）。每个簇或者块可以包括2、4、8、16、32、64…2的n次方个扇区。</p><p><br/></p><p>为什么存在磁盘块？</p><p>读取方便：由于扇区的数量比较小，数目众多在寻址时比较困难，所以操作系统就将相邻的扇区组合在一起，形成一个块，再对块进行整体的操作。</p><p><br/></p><p>分离对底层的依赖：操作系统忽略对底层物理存储结构的设计。通过虚拟出来磁盘块的概念，在系统中认为块是最小的单位。</p><p><br/></p><p><span style=\"font-size: 18px;\"><strong>page</strong></span></p><p>操作系统经常与内存和硬盘这两种存储设备进行通信，类似于“块”的概念，都需要一种虚拟的基本单位。所以，与内存操作，是虚拟一个页的概念来作为最小单位。与硬盘打交道，就是以块为最小单位。</p><p><br/></p><p><span style=\"font-size: 18px;\"><strong>扇区、块/簇、page的关系</strong></span></p><p>扇区： 硬盘的最小读写单元</p><p>块/簇： 是操作系统针对硬盘读写的最小单元</p><p>page： 是内存与操作系统之间操作的最小单元。</p><p>扇区 &lt;= 块/簇 &lt;= page</p><p><br/></p>', '原创', '', 'https://lirongyaoper.com/caozuoxitong/48.html', '', 1, 1, 10, 0, 0, 1, 0, 4, 0),
(49, 7, 1, 'lirongyaoper', '轩鸿青', '一年入职感想', '', 1607783246, 1607783493, '', '宁愿架上药生尘，但愿人间无病人', 2621, '<p style=\"text-indent:32px\"><span style=\"font-family: 仿宋;\">2019</span><span style=\"font-family: 仿宋;\">年8月我正式踏入工作岗位，来到家乡的一家三甲医院工作。从这一刻起，我结束了长达8年的医学学习之路，走向了熟悉而又陌生的工作岗位，开启了人生新的历程，肩负着责任与使命，勇敢向前！</span><br/></p><p style=\"text-indent:32px\"><span style=\"font-size:16px;font-family:仿宋\">经过短短一周的培训，我们就被单位分到临床一线，挂上胸牌，从此就是真正的临床大夫。</span></p><p style=\"text-indent:32px\"><span style=\"font-size:16px;font-family:仿宋\">或许大家会问，你一直不就是一个临床大夫呢，此前研究生求学的时候虽然也整天忙于临床一线，但是，那个时候，自己并不主导患者的临床诊疗过程，对患者的病情变化及演变都不放在心上，每天都是在上级大夫的安排下被动的干活。写写患者的住院病历、为术后的患者换换药，虽然很忙，但不系统深入的管理患者，身上少了很多的责任，也缺乏作为一个合格医生的必备素养。</span></p><p style=\"text-indent:32px\"><span style=\"font-size:16px;font-family:仿宋\">而今天开始却不一样，从今天开始，我要学着上级大夫去独立的管理病号，对自己所管床的病号负责。角色的转变，责任的担当，对我来说，还是有很大的压力。</span></p><p style=\"text-indent:32px\"><span style=\"font-size:16px;font-family:仿宋\">第一天，我被分到我院的急诊科，从事院前急救，听到这个消息，我都懵了，都说急诊科是一个医院的窗口，院前急救更是医院的前哨，综合服务的好坏直接关系到医院的综合救治能力，关系到病人的安危。所以，我压力蛮大，到现在还依稀记得自己第一次坐120救护车出车的忐忑内心，患者现在病情如何？见到患者首先做什么？如何让病人转危为安？一下车，我却乱了阵脚，手忙脚乱，基本都在护士姐姐的帮助下做完工作，将病号抬上救护车，整个下来，发现我的衣服都湿透了。</span></p><p style=\"text-indent:32px\"><span style=\"font-size:16px;font-family:仿宋\">接下来的一段时间，虽然院前流程慢慢熟悉了，但是，每次出车可能都会遇到不同病种的，车祸伤、脑梗、心梗、昏迷、高空坠落伤等等，所以每次出车的内心都异常不安，生怕完不成急救任务。为了熟悉业务，路上进行院前急救，回来我虚心请教，努力让每一次出车都能顺利完成任务，给患者及家属一份满意的交代，给医院一份满意的答卷。</span></p><p style=\"text-indent:32px\"><span style=\"font-size:16px;font-family:仿宋\">院前的那段日子里，我看到了人间的各种疾苦，每每看到一个个鲜活的生命失去生机的时候，内心总无比的震撼，</span><span style=\"font-size:16px;font-family:仿宋;color:#333333;background:white\">宁愿架上药生尘，但愿人间无病人</span><span style=\"font-size:16px;font-family:仿宋\">，古人如此，今人亦是；我也看到了一个合格医生肩负的责任与使命，</span><span style=\"font-size:16px;font-family:仿宋;color:#333333;background:white\">健康所系，性命相托</span>，<span style=\"font-size:16px;font-family:仿宋;color:#333333;background:white\">为作为一名合格的医生而奋斗终生。</span></p><p style=\"text-indent:32px\"><span style=\"font-size:16px;font-family:仿宋;color:#333333;background:white\">大概在十一月份，我回到了自己的专业工作，本想着终于可以安安稳稳的工作了，谁可知，就在几个周之后，武汉不明原因肺炎开始流行，开始的时候，都还没在意，我们也都在自己的岗位有条不紊的工作，甚至年假已经安排妥当，不料，就在年三十的准备回家的时候，医院召开全体员工紧急会议，取消年假，全员上岗，刚走不远的车子又折回来了，现在想想那个心情，哎，别提有多难受。难受归难受，疫情就是命令，我们迅速集结，备战一场无硝烟的战争。别人都在家休息，过着轻松愉快的生活，我们却坚守阵地，疫情当前，我们无所畏惧，逆向而行。我们当地虽然不是疫情的重灾区，但是，我们时刻准备着，时刻等待上级的命令，丝毫不敢懈怠。这让我不由自主的想起了2003年的“非典型肺炎”，那个时候我还是个无忧无虑的孩子，疫情期间，我像大多数人一样，在家里过着幸福的生活。现在想想，这种幸福的日子多么不容易啊，哪有什么岁月静好，不过是有人替你负重前行罢了。疫情当前，有多少医生护士舍小家顾大家，你们在家团圆的时候，他们却在与病毒做斗争，却在我们身后为我们的健康保驾护航。辛苦了，我的同胞。</span></p><p style=\"text-indent:32px\"><span style=\"font-size:16px;font-family:仿宋;color:#333333;background:white\">转眼间，工作1年了，一年里，我哭过，也笑过，有放弃过，也有后悔过，跌跌撞撞的走来，我想我的脚步更加坚定有力了。以后，要像前辈们一样，不辞艰辛，不畏风雨，坚定前进。</span></p><p><br/></p>', '原创', '/uploads/202012/12/201212102830781.png', 'https://lirongyaoper.com/xianyansuiyu/49.html', '', 1, 1, 10, 0, 0, 1, 0, 3, 0),
(50, 7, 1, 'lirongyaoper', '轩鸿青', '猎物', '', 1608475110, 1628253390, '', '最快的捷径，就是你踏踏实实，一步一个脚印的走过去', 2831, '<p style=\"text-indent:37px\"><span style=\"font-size:19px;font-family:仿宋\">看多了《人与自然》或者《动物世界》的我也逐渐对其他动物的生存法则及规律有所了解。</span></p><p style=\"text-indent:37px\"><span style=\"font-size:19px;font-family:仿宋\">在所有的动物世界里，包括我们人类，都是越强壮越有本事越有话语权，只要自己有足够的本事，就能在同类中拥有至高无上的地位，就能够制定游戏规则，掌控他人的行为，甚至能够主宰低等动物的命运。</span></p><p style=\"text-indent:37px\"><span style=\"font-size:19px;font-family:仿宋\">这话说起来一点都不假，原始森林中，狮子、老虎就是当地的霸主，掌控着那里的一切，拿狮子来说吧，作为地球上最大的猫科动物，拥有强壮的身躯，几乎所有的动物见到他们都会避而远之，成年的公狮整天圈土划地，争夺及守护着属于自己家族的领地，如果任何其他动物擅入他的领地都会有灭顶之灾的危险，角马、羚羊、斑马、野牛，甚至猎豹等都可能成为他们的猎物，成为他们的盘中佳肴。</span></p><p style=\"text-indent:37px\"><span style=\"font-size:19px;font-family:仿宋\">纵然，狮子是森林的霸主，但如果他们不努力经营好生活，也会被淘汰。为了生存，他们必须努力的捕猎，可以说，除了睡觉，他们大部分的时间都用在捕猎上，有时，他们需要耐心的等待好长的一段时间，以便瞅准机会，捕获猎物；有时捕猎的过程中也险象环生，危机重重，甚至在捕食的过程中也有可能被反杀。</span></p><p style=\"text-indent:37px\"><span style=\"font-size:19px;font-family:仿宋\">常常，狮子在捕猎过程中也会被偷袭和暗算，轻者受伤、重者也会面临生命危险，被体型更大的动物致伤、致死的场景也时有发生。摄像记录的画面中，几只狮子在捕食一头野牛的过程中，眼看猎物就要到手了，突然野牛的另一只同伴暴怒的奔跑过来，用他强健而坚硬的牛角把其中一只狮子狠狠地顶了起来，又狠狠地摔在地上，四蹄朝天，反复几次，狮子的生命也葬送在了野牛的牛角下。</span></p><p style=\"text-align:center\"><span style=\"font-size:19px;font-family:仿宋\"><img src=\"/uploads/ueditor/image/20201220/1608475664117522.png\" title=\"猎物\" alt=\"猎物\"/><br/></span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20201220/1608475685542786.png\" title=\"猎物\" alt=\"猎物\"/></p><p><span style=\"font-size:19px;font-family:仿宋\"></span><br/></p><p style=\"text-indent:37px\"><span style=\"font-size:19px;font-family:仿宋\">纵观狮子的一生，其成长之路也极其不易，为了生存，总是伤痕累累。他们的每一次捕猎行动都存在风险，但他们从来都不会因为这些危险的存在而放弃捕猎，因为，他们明白，如果不去捕猎，就无法继续生存。要想活着，就要努力的捕猎，只有有足够的猎物，他们才能填饱肚子，才能繁衍生息。勇敢的狮子们毅然决然的选择捕猎，选择冒险，选择机会。</span></p><p style=\"text-align:center\"><span style=\"font-size:19px;font-family:仿宋\"><img src=\"/uploads/ueditor/image/20201220/1608475716117053.png\" title=\"猎物\" alt=\"猎物\"/></span></p><p style=\"text-indent:37px\"><span style=\"font-size:19px;font-family:仿宋\">再回到我们人类的现实生活中，作为目前地球上最高等的动物，虽然在体力上无法与一些大型动物相比，但人类拥有敏捷的思维，无穷的智慧，拥有主宰自然的力量，正是具有这么多品质，人类才在地球上脱颖而出，成为地球的主人。然而，这个世界是公平的，拥有主宰地球的能力，就要比其他动物付出更多的努力。狮子，仅仅为了温饱还那么拼命的捕猎，而我们人类，为了更好的生存，为了成为主宰地球的主人，更应该努力的拼搏，去努力的学习，赚取更多的智慧。</span></p><p><span style=\"font-size:19px;font-family:仿宋\">&nbsp;&nbsp;&nbsp; 从个人身上来讲，也要有狮子的勇敢，生活中不怕挫折，纵然失败多次，也要坚强的生活，因为不努力，不会有任何成功的希望，只有努力奋斗，才会得到丰富的资源，才会有提升自我的机会。狮子为了混口饭吃都那么拼命，作为地球的主人，我们又有什么理由不去奋斗呢？</span></p>', '原创', '/uploads/202012/20/201220104717237.png', 'https://lirongyaoper.com/xianyansuiyu/50.html', '', 1, 1, 10, 0, 0, 1, 0, 6, 0),
(51, 7, 1, 'lirongyaoper', '轩鸿青', '犯错', '#000000', 1609947734, 1609948112, '', '原谅别人便是放过自己。', 2365, '<p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">在上海的一家餐馆里，负责为我们上莱的那位女侍，年轻得像是树上的一片嫩叶。</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">她捧上蒸鱼时，盘子倾斜。腥膻的鱼汁鲁鲁莽莽地直淋而下，泼洒在我搁于椅子的皮包上。我本能地跳了起来，阴霾的脸，变成欲雨的天。</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">可是，我还没有发作，我亲爱的女儿便以旋风般的速度站了起来，快步走到女侍身旁，露出了极为温柔的笑脸，拍了拍她的肩膀，说：“不碍事，没关系。”</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">女侍如受惊的小犬，手足无措地看着我的皮包，嗫嚅地说：“我，我去拿布来抹……”</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">万万想不到，女儿居然说道：“没事，回家洗洗就干净了。你去做事吧，真的，没关系的，不必放在心上。”</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">女儿的口气是那么的柔和，倒好似做错事的人是她。</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">我瞪着女儿，觉得自己像一只气球，气装得过满，要爆炸却又爆不了，不免辛苦。</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">女儿平静地看着我，在餐馆明亮的灯火下，我清清楚楚地看到，她大大的眸子里，竟然镀着一层薄薄的泪光。</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">当天晚上，返回旅馆之后，母女俩齐齐躺在床上，她这才亮出了葫芦里所卖的药：</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">女儿伦敦求学三年，为了训练她的独立性，我和先生在大学的假期里不让她回家，我们要她自行策划背包旅行，也希望她在英国试试兼职打工的滋味儿。</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">活泼外向的女儿，在家里十指不沾阳春水，粗工细活都轮不到她，然而来到人生地不熟的英国，却选择当女侍来体验生活。</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">第一天上工，便闯祸了。</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">她被分配到厨房去清洗酒杯，那些透亮细致的高脚玻璃杯，一只只薄如蝉翼，只要力道稍稍重一点，便会分崩离析，化成一堆晶亮的碎片。</span></p><p style=\"text-align:center\"><span style=\"color:#3F3F3F;letter-spacing:1px\"><img src=\"/uploads/ueditor/image/20210106/1609947996243047.gif\" title=\"犯错\" alt=\"犯错\"/></span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">女儿战战兢兢，如履薄冰，好不容易将那一大堆好似一辈子也洗不完的酒杯洗干净了，正松了一口气时，没有想到身子一歪，一个踉跄，撞倒了杯子，杯子应声倒地，“哐啷、哐啷”连续不断的一串串清脆响声过后，酒杯全化成了地上闪闪烁烁的玻璃碎片。</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><strong><span style=\"font-family: 宋体;color:#3F3F3F;letter-spacing:1px\">“妈妈，那一刻，我真有堕入地狱的感觉。”女儿的声音还残存着些许惊悸。</span></strong></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">“可是，您知道领班有什么反应吗？她不慌不忙地走了过来，搂住了我。说：亲爱的，你没事吧？</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">接着，又转过头去吩咐其他员工：赶快把碎片打扫干净吧！</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><strong><span style=\"font-family: 宋体;color:#3F3F3F;letter-spacing:1px\">对我，她连一字半句责备的话都没有!”</span></strong></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">又有一次，女儿在倒酒时，不小心把鲜红如血的葡萄酒倒在顾客乳白色的衣裙上，好似刻意为她在衣裙上栽种了一季残缺的九重葛。</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">原以为顾客会大发雷霆，没想到她反而倒过来安慰女儿，说：<strong style=\"max-width:100%;box-sizing: border-box !important;overflow-wrap: break-word !important\"><span style=\"font-family:宋体\">“没关系，酒渍嘛，不难洗。”</span></strong></span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">说着，站起来，轻轻拍拍女儿的肩膀，便静悄悄地走进了洗手间，不张扬，更不叫嚣，把眼前这只惊弓之鸟安抚成梁上的小燕子。</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">女儿的声音，充满了感情：<strong style=\"max-width:100%;box-sizing: border-box !important;overflow-wrap: break-word !important\"><span style=\"font-family:宋体\">“妈妈，既然别人能原谅我的过失，您就把其他犯错的人当成是您的女儿，原谅她们吧!”</span></strong></span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">此刻，在这静谧的夜里，我眼眶全湿。</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><strong><span style=\"font-family: 宋体;color:black;letter-spacing:1px\">原谅别人便是放过自己。</span></strong></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">这个故事，读了一遍眼角有泪，再读一遍，依然有泪珠滑落 ...</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">我想此刻，你的内心也无法平静吧 ...</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><span style=\"color:#3F3F3F;letter-spacing:1px\">检视一下自己平日的言行，原来还有这么大的提升空间 ...</span></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><strong><span style=\"font-family: 宋体;color:black;letter-spacing:1px\">原来，善意可以如此美妙 ...</span></strong></p><p style=\"margin-top:0;margin-right:8px;margin-bottom:0;margin-left: 8px;text-align:justify;text-justify:inter-ideograph;text-indent:34px;background:white\"><strong><span style=\"font-family: 宋体;color:black;letter-spacing:1px\">原来，善意可以如此接力般地传递 ...</span></strong></p><p style=\"margin: 0px 8px; text-align: justify; background: white; text-indent: 0em;\"><strong><span style=\"font-family: 宋体;color:black;letter-spacing:1px\"></span></strong></p><hr/><p style=\"margin: 0px 8px; text-align: justify; background: white; text-indent: 0em;\">注：<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 12px; letter-spacing: 0.544px; text-align: center; background-color: rgb(255, 255, 255);\">作者：尤今</span><strong><span style=\"font-family: 宋体;color:black;letter-spacing:1px\"></span></strong><br/></p><p><br/></p>', '转载', '/uploads/202101/06/210106114312566.gif', 'https://lirongyaoper.com/xianyansuiyu/51.html', '', 1, 1, 10, 0, 0, 1, 0, 2, 6),
(52, 21, 1, 'lirongyaoper', '轩鸿青', '你', '', 1620747507, 1620748012, '', '一条路，一直走下去。', 2514, '<p style=\"text-align: center;\">日盼夜念，只因你在心间</p><p style=\"text-align: center;\">往来无时，怨道阻且长</p><p style=\"text-align: center;\">每次匆匆邂逅</p><p style=\"text-align: center;\">惊喜和欢乐便充满心中</p><p style=\"text-align: center;\">青青绿水 蓝蓝白天</p><p style=\"text-align: center;\">愿你身后洒阳光，眼前遍地花</p><p><br/></p><p style=\"text-align: center;\">春来绿两岸，冬到万山白</p><p style=\"text-align: center;\">四季交替 岁月轮回</p><p style=\"text-align: center;\">有你，我们的世界才会徇烂多姿</p><p style=\"text-align: center;\">我们一起</p><p style=\"text-align: center;\">携手走向幸福的天地</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210511/1620747646207330.jpg\" title=\"你\" alt=\"你\"/></p>', '原创', '/uploads/202105/11/210511114019511.png', 'https://lirongyaoper.com/gujianqingshen/52.html', '', 1, 1, 10, 0, 0, 1, 0, 8, 0),
(53, 14, 1, 'lirongyaoper', '轩鸿青', '愿世间如您们所愿，医食无忧---缅怀英雄', '', 1621782183, 1621783486, '', '一稻济天下，肝胆两昆仑——愿世间如你们所愿：医食无忧！', 2552, '<p style=\"text-align: center;\"><strong>2021年5月22日，对于每一个国人来说，都是一个无法忘记，无比悲痛的日子！这一天，我们痛失了两位国之栋梁。</strong><br/></p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210523/1621783043185613.jpg\" title=\"愿世间如您们所愿，医食无忧---缅怀英雄\" alt=\"愿世间如您们所愿，医食无忧---缅怀英雄\"/></p><p style=\"text-align: center;\"><strong>2021年5月22日13时02分“中国肝胆外科之父”吴孟超于上海逝世享年99岁</strong></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20210523/1621783211104485.jpg\" title=\"愿世间如您们所愿，医食无忧---缅怀英雄\" alt=\"愿世间如您们所愿，医食无忧---缅怀英雄\"/></p><p style=\"text-align: center;\"><strong>2021年5月22日13时07分“杂交水稻之父”袁隆平于长沙逝世享年91岁</strong></p><p><strong><br/></strong></p>', '原创', '/uploads/202105/23/210523111307549.png', 'https://lirongyaoper.com/fengyunbianhuan/53.html', '', 1, 1, 10, 0, 0, 1, 0, 2, 0),
(54, 7, 1, 'lirongyaoper', '轩鸿青', '祝贺中国共产党建党100周年', '', 1625155665, 1625155812, '', '百年历史，百年波澜。没有共产党，就没有新中国。', 2260, '<p style=\"text-indent: 2em;\">百年历史，百年波澜。没有共产党，就没有新中国。</p><p style=\"text-indent: 2em;\">从建党的开天辟地，到新中国成立的改天换地，到改革开放的翻天覆地，再到党的十八大以来党和国家事业取得历史性成就、发生历史性变革，根本原因就在于我们党始终坚守了为中国人民谋幸福、为中华民族谋复兴的初心和使命。</p><p style=\"text-indent: 2em;\">幸庆自己生在中国，生在一个伟大而温暖的国度。在这里，没有战争的迫害，没有饥饿的苦恼，有的是幸福、安心。为自己生在这样的一个国家中感到无比的自豪和骄傲。</p><p style=\"text-indent: 2em;\">百年的奋斗，我国在多个领域实现了从无到有，从小到大，从零到壹，从弱到强的伟大成就。中国共产党领导全国人民推翻了三座大山，创建了新中国，从此结束了任人宰割的黑暗历史！新中国成立后，中国共产党砥砺前行，奋发图强，带领我们在各个领域攻坚克难，突破自我，面向未来，走向高精尖，打造中国标准。正是有中国共产党的领导，我们的国家才有如此的繁华盛世。说实话，我没能见证中国共产党成长、奋斗的前70年，但在这短短的30年间，中国取得的伟大成就令世界震惊，令我们自豪。北斗成功组网，国人从此不再“迷路”，空间站的建立，我们在太空也有了一个温暖的家；航空母舰的下水，中国海军也慢慢走向深蓝。祖国大地上的各类基础建设的完善，大大缩短国人之间的距离…………，正是这些伟大成就的实现，中国人民才稳稳的站在世界民族之林，才有了掷地有声的话语权。然而，这些成就的取得，归根结底，一百年来，我们取得的一切成就，是中国共产党人，中国人民，中华民族团结奋斗的结果。</p><p style=\"text-indent: 2em;\">今天，我听到最自豪，最感动的一段话是，中国人民从来没有欺负、压迫、奴役过其他国家人民，过去没有，现在没有，将来也不会有。中国人民也绝不允许任何外来势力欺负、压迫、奴役我们，谁妄想这样干，必将在14亿多中国人民用血肉筑成的钢铁长城面前碰的头破血流。是的，那些任人宰割、任人打压的黑暗日子，对于广大中国同胞来说，再也一去不复返了。生于华夏，何其幸哉，再也没有外来势力敢于挑衅、欺负我们了，我们在祖国母亲的怀抱中，茁壮成长！</p><p style=\"text-indent: 2em;\">未来，正如习近平主席所说，中国共产党和中国人民将在自己选择的道路上昂首阔步走下去，把中国发展进步的命运牢牢掌握在自己手中。全面建成社会主义现代化强国的目标一定能够实现，中华民族伟大复兴的中国梦一定能够实现。</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210702/1625155793141566.jpg\" title=\"祝贺中国共产党建党100周年\" alt=\"祝贺中国共产党建党100周年\"/></p>', '原创', '/uploads/202107/02/210702120935341.jpg', 'https://lirongyaoper.com/xianyansuiyu/54.html', '', 1, 1, 10, 0, 0, 1, 0, 3, 0),
(55, 7, 1, 'lirongyaoper', '轩鸿青', '保护环境，守护家园', '#FF0000', 1628252951, 1628253413, '', '青山绿山就是金山银山', 1730, '<p><br/></p><p style=\"text-indent:28px\">说句实话，从小到大我还没怎么在意过我们赖以生存的地球环境。大气污染、温室效应的出现也没有引起我足够多的关注。</p><p style=\"text-indent:28px\">只是记得小时候跟着爸爸妈妈或者奶奶出去玩耍的时候能有机会看到蔚蓝的天空；在冬天的时候村子的水塘能结很厚的一层冰，我们一群调皮的小孩最喜欢在冰面上溜冰，摔跤；而且冬天的雪也非常多，非常大。</p><p style=\"text-indent:28px\">慢慢的我发现，蓝天白云的日子比以往逐渐的减少了，取而代之的是雾蒙蒙的天气变得越来越多了；冬天水塘里的冰也变薄了，以至于再也见不到调皮的小朋友在冰面上嬉戏玩耍了；貌似冬天的大雪也越来越少了，甚至有好几年都没有看到过真正的雪景啦。</p><p style=\"text-indent:28px\">从我记事到现在差不多有二十五六年了，世界的气候在悄无声息的发生着变化，朝着糟糕的情况逐渐的发展。然而，这种变化对我的影响就像温水煮青蛙的感觉一样，未能引起我的注意。</p><p style=\"text-indent:28px\">直到最近身边发生的特大暴雨事件才让我意识到环境的重要性。</p><p>&nbsp; &nbsp; &nbsp; 有关报道如下：2021年7月17日以来，河南出现持续性强降水天气，全省大部出现暴雨、大暴雨，强降水主要集中在西部、北部和中部地区，郑州、焦作、新乡等10地市出现特大暴雨。据河南省水利厅消息，2021年7月18日8时至20日12时，河南全省降雨量超400毫米站点43处，超300毫米站点154处，超200毫米站点467处，超100毫米站点1426处。最大点雨量郑州市荥阳环翠峪雨量站551毫米、巩义市李家门外雨量站493毫米、峡峪雨量站491毫米。&nbsp;据郑州气象消息：2021年7月20日08时至17时，郑州市出现大暴雨，局部特大暴雨。最大降水量出现在二七区的尖岗水库438.0毫米。据中央气象台消息：2021年7月20日16-17时，郑州一小时降雨量达到201.9毫米！”2021年7月21日7时，据河南省委宣传部消息，7月18日18时至21日0时，郑州出现罕见持续强降水天气过程，全市普降大暴雨、特大暴雨，累积平均降水量449毫米。这一连串的数据足以可以告诉我们这次暴雨到底有多大！据相关资料报道，此次降雨过程已远超有气象记录以来的历史极值，堪称千年一遇。同时，此次暴雨过程也给郑州、新乡等受灾地区造成了巨大的生命财产损失。据官方部门统计，截至8月2日12时，郑州市遇难292人，失踪47人。河南省因灾遇难302人，50人失踪。其中，郑州市遇难292人，失踪47人；新乡市遇难7人，失踪3人；平顶山市遇难2人；漯河市遇难1人。</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20210806/1628253156116110.png\" title=\"保护环境，守护家园\" alt=\"保护环境，守护家园\"/></p><p style=\"text-indent:28px\">一连串的伤亡数字让我们触目惊心。成千上亿的财产损失让我们无比痛心。在大自然面前，人类是多么的渺小。我们要心怀敬畏，在合理发展的同时，首先要保守好我们赖以生存的自然环境，只有在一个理想的自然环境里，人类才能安心的生产与发展。我们人类要学会与自然和谐共处，学会感恩，学会回馈。在发展的同时，我们要努力控制大气污染，阻止温室效应的进展，提倡绿色、 和平的向前发展方式。</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20210806/1628253253199220.png\" title=\"保护环境，守护家园\" alt=\"保护环境，守护家园\"/></p><p style=\"text-indent: 28px;\">正如我们的习主席所提倡的那样，青山绿山就是金山银山，我们每一个人都要守护好自己的家园，守护好属于我们的金山银山。</p>', '原创', '/uploads/202108/06/210806083014349.png', 'https://lirongyaoper.com/xianyansuiyu/55.html', '1,5', 1, 1, 1, 0, 0, 1, 0, 1, 0),
(56, 13, 1, 'lirongyaoper', '轩鸿青', '相伴而来的兄弟俩', '', 1628438634, 1628438942, '兄弟情', '兄弟之间，不分你我，无论得失', 2525, '<p style=\"text-indent: 2em;\"><span style=\"font-size:19px;font-family:宋体\">说来也是，关于我和弟弟童年的记忆，除了脑海中的点点滴滴，就只剩一张早已褪色的照片了。现在这张照片成了我珍贵的宝贝，永远珍藏在我的相册里，同时也通过现在技术制作成电子版资料，永久保存。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size:19px;font-family:宋体\">我和弟弟相差一岁多点，我俩共同生活在贫苦的农村十几年，同样的经历，同样的悲欢。一路走来，我们很少争吵，却总是互爱。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size:19px;font-family:宋体\">父母为了让我们相互照应，让我们一起读书。小学坐落在我们村的西北角，离家并不是很远，平时我们兄弟俩一起上下学，一路上，也让很多村里的人羡慕不已。团结、友爱是被老乡们说的最多的了吧。小学的年纪应该是最淘气的时段吧，小朋友之间无缘无故的争吵、打架时有发生。由于我比较老实的缘故，总是被人欺负，每每这时，我弟就成了我的保护伞，别人看到我俩在一起，也不敢再继续下去了。听我妈妈说，有一次别人把我鼻子打出血，我弟看情况不对，一路跑着哭着来到爸妈面前，告诉爸妈我被别人打了。</span></p><p style=\"text-indent: 2em; text-align: center;\"><span style=\"font-size:19px;font-family:宋体\"><img src=\"/uploads/ueditor/image/20210809/1628438925752779.png\" title=\"相伴而来的兄弟俩\" alt=\"相伴而来的兄弟俩\"/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size:19px;font-family:宋体\">记得有一次，我去村里的代销点买盐，回来的路上被邻居家的一条大狗盯上了，本来生性胆小，我看到狗总是躲的远远的。看到大狗离我越来越近，我越来越怕，就不自主的跑了起来，可狗仗人势，有它主人在一旁，再加上它看我怕它，这个大狗一直的追我。正当我觉得马上快被这疯狗咬到的时候，弟弟见状，迅速的拿起身旁的扫帚，加速冲过来，赶走了那只可恶的大狗。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size:19px;font-family:宋体\">大概在我十二三岁的时候，因为生病住进医院，老家就剩下弟弟和年近70岁的奶奶。那个时候家里还养了好几头大猪、几只养，喂了一头母牛。父母陪我来城里看病，家里的生活就落在奶奶和弟弟的肩上了。除了做饭外，家里喂养的猪、牛、羊都需要食物，这期间弟弟担起了这么重的家务。可想，对于一个十来岁的小孩，对于一个还不怎么懂事的小孩来说，该是多么的艰难与无助吧。而且，当地的乡下治安条件不太好，夜间经常有偷牛偷啥的，每天夜里，弟弟总会按照爸爸交代的方案给牛舍做好安防。我痊愈出院回到家中，妈妈看到家里的情况，看到弟弟后又高兴又心疼，高兴的是，家中一切安好，养的猪又肥又大，心疼的是，因为这一段的劳累加上营养不良，弟弟比以前瘦了很多，身上的衣服又脏又臭。说句实话，那个时候我不知道什么是感动，只知道见到多日不见的弟弟亲切了很多很多。这么多年来，每每想起，我都感觉弟弟太了不起了，为了我的健康，弟弟在本该玩耍的年纪里承担了家中的重任。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size:19px;font-family:宋体\">当然，有时，我们兄弟俩也会有矛盾，有分歧。有件是，至今我都在后悔和自责。记得刚读初中，我们俩寄宿于县城的一所初中，每次休息回家，爸妈总是给我们一样多的钱。到了学校，有时我们会为谁话的多点、谁花的少点而计较。有一次甚至因为弟弟多吃点我的菜而与弟弟发生争吵。发生这样的事，现在想想非常后悔，后悔自己的无知与自私。如果换成现在的思想，就是我不吃，也得让给弟弟吃，可那个时候，却做了一个每每想起都会后悔的傻事。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size:19px;font-family:宋体\">儿时早已过去，弟弟已成家立业，我也很快要成家立业，以后，兄弟俩共同走的路还很多很长。我相信，从此，我们兄弟之间，不分你我，无论得失，会一直互助互爱的走下去。</span></p>', '原创', '/uploads/202108/09/210809120623560.png', 'https://lirongyaoper.com/babaizhijiao/56.html', '', 1, 1, 10, 0, 0, 1, 0, 6, 1),
(57, 14, 1, 'lirongyaoper', '轩鸿青', '老黄牛', '', 1629374774, 1629375154, '', '拉了一生的犁，完成了艰巨而光荣的使命。', 2220, '<p style=\"text-indent: 2em;\">从我记事起，家里就有一头很大的黄牛，听父母说，这头牛是我出生那年从我舅姥家里领来的，它和我一年出生，和我一样大。它陪伴我成长，我陪伴它变老。</p><p style=\"text-indent: 2em;\">在农村，养牛的目的，要么是让他替人类出力干活，要么是养大后挣钱，作为一家的经济来源。当然，我家这头牛也是如此命运，身负重任。</p><p style=\"text-indent: 2em;\">我小时候的农业机械化、现代化还是很落后的，耕地基本靠牛，因为没有现在这样那样的除草剂，有时甚至除草也需要牛的帮助。在我有记忆以来，我家的那头牛还算“幸运”，因为老爸很早就买了一台拖拉机，平时耕地，施肥之类的重活都可以利用机器来干了。所有，家里的那头牛很少被我爸用于耕地。</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20210819/1629375068108821.png\" title=\"老黄牛\" alt=\"老黄牛\"/></p><p style=\"text-indent: 2em;\">但是随着农作物的生长，田地里的杂草也争先恐后的生长起来，仿佛要和庄稼一争高低。几亩地的杂草，如果靠人用锄头一点一点的去除，好家伙，非得把人累死、热死不行。这个时候，老黄牛就派上用场了。每年的这个季节，爸爸妈妈就会带着我，牵着老黄牛下地了，当然啦，我猜老黄牛应该和我一样，肯定是不愿意下地干活的。我在田地里唯一的作用应该也是比较重要的作用就是牵着我家的牛引导他沿着庄稼沟奋力的前进，再前进。其实它也会感觉到累，有时走着走着就会停住，任凭后面抚犁的爸爸一声大，一声小的吆喝着，如果还不走，爸爸就会用鞭子打它一下，这时它就像受了惊的小孩似的，加速往前冲，生怕再挨打。其实牛还是很有灵性的，当干活到烈日当头，每次往家的反方向作业的时候，它就非常不情愿，有时干脆就停下来或者卧倒在地；每次往家的方向行走的时候，它就特别兴奋，总以为干完这趟就可以回家了，这时，你就不用怎么吆喝它，它就像刚来时那样，充满力量。</p><p style=\"text-indent: 2em;\">就这样，反反复复的几个春秋，我离开老家去县城求学了。而我家的那头老黄牛，还在周而复始的帮家里干活。好在随着农业的机械化程度提高，随着家庭经济的提升，田地里的活不需要牛的帮助了。不过，这个时候我家的牛也变老了。</p><p style=\"text-indent: 2em;\">当然，正如前面所说，农村里养牛，除了帮助家里干活，挣钱也是一个非常重要的目的。我家的牛也不例外。它是一头母牛，我的印象中，每年它总会生下一头小牛犊，然后我们会把这头小牛犊养大，大概养七八个月的时候，爸妈就会把它卖掉，补给家用，听父母说，卖一头牛犊，还不少钱呢。卖过牛犊之后的几天，就觉得家里像丢了一个活宝一样，再也看不到时而奔跑，时候跳跃的活泼可爱的牛犊了，再加上老牛不停的呼唤声，那时的我每每看到这场景，内心不由得伤感起来。</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20210819/1629375092934333.png\" title=\"老黄牛\" alt=\"老黄牛\"/></p><p style=\"text-indent: 2em;\">就这样日复一日，年复一年，我渐渐长大，它慢慢变老。直到有一天，它再也不能像以往一样正常受孕了，也就意味着它再也不能为我们剩下牛犊啦。记得那个时候的我大概有十七八岁，老牛也有十七八岁的高龄了。不能为我们生下牛犊换钱了，再加上随着农业现代化的不断发展，田地里也很少有用到牛的地方了。丢失了这两点，对于农家来说，也丢了养牛的价值了，甚至来说，养牛成了家里的一个负担。</p><p style=\"text-indent: 2em;\">一大早，父亲就把我叫醒，要我和他一块把家里的老黄牛赶到县城的生畜市场上。一路上我们走走停停，多有不舍，却万般无奈。偶尔看看牛的双眼，虽不语，却饱含泪水。当父亲把手中的牵引绳递到牛贩子手里的时候，只听到老黄牛一声闷叫，从此，它再也不属于我们家的了。我再也不敢看它一眼，眼睛盯着前方，此时，一阵狂风吹过，瞬间乌云密布…………</p>', '原创', '/uploads/202108/19/210819080934649.png', 'https://lirongyaoper.com/fengyunbianhuan/57.html', '3,5', 1, 1, 10, 0, 0, 1, 0, 3, 3),
(58, 19, 1, 'lirongyaoper', '轩鸿青', 'Linux磁盘挂载', '', 1630154866, 1630155555, '', '本文详细介绍了linux磁盘挂载操作。', 2359, '<p style=\"text-align: center;\">本文中的磁盘/dev/sdb为笔者测试服务器上的命名，在您的服务器中可能是/dev/xdb、/dev/vdb、/dev/xvdb等等。请根据实际情况进行修改</p><p style=\"text-align: center;\">1、创建挂载目录（www为宝塔默认安装目录）</p><p style=\"text-align: center;\">code:mkdir -p /www</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20210828/1630155030111453.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">2、确认是否没有分区的磁盘，如下图，没有分区的磁盘是/dev/sdb，在您的服务器中可能是/dev/vdb，请注意按照实际名称修改</p><p style=\"text-align: center;\">code:fdisk -l</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210828/1630155039186790.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">3、为磁盘分区，若已分区，可跳过</p><p style=\"text-align: center;\">code:fdisk /dev/sdb</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210828/1630155047483346.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">4、输入n开始创建分区</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210828/1630155062146154.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">5、输入p创建主分区</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210828/1630155073663974.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">6、选择分区号 输入&quot;1&quot;</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210828/1630155083109285.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">7、输入分区开始位置，直接回车</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210828/1630155094438930.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">8、输入分区结束位置，直接回车</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210828/1630155103463544.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">9、输入wq 回车退出</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210828/1630155113117083.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">10、检查是否分区成功（带有sdb1/vdb1/xvb1说明成功）</p><p style=\"text-align: center;\">code:fdisk -l</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210828/1630155123197582.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">11、格式化分区，这里输入看到的磁盘加分区号 如下图为/dev/sdb1 已格式化的可跳过</p><p style=\"text-align: center;\">code:mkfs.ext4 /dev/sdb1</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210828/1630155132195969.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">12、将分区挂载信息添加到配置文件/etc/fstab中，实现开机/重启自动挂载</p><p style=\"text-align: center;\">code:echo &quot;/dev/sdb1 /www ext4 defaults 0 0&quot; &gt;&gt; /etc/fstab</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20210828/1630155143148456.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">13、重新挂载所有分区</p><p style=\"text-align: center;\">code:mount -a</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20210828/1630155152207545.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">14、检查是否挂载成功</p><p style=\"text-align: center;\">code:df -h</p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20210828/1630155160882414.png\" title=\"Linux磁盘挂载\" alt=\"Linux磁盘挂载\"/></p><p style=\"text-align: center;\">自此，linux磁盘挂载过程结束。</p><p>注：本文转载自：<a href=\"https://www.bt.cn/bbs/thread-50002-1-1.html\" target=\"_blank\" textvalue=\"宝塔论坛\">宝塔论坛</a></p><p><br/></p>', '转载', '/uploads/202108/28/210828084929366.png', 'https://lirongyaoper.com/caozuoxitong/58.html', '', 1, 1, 10, 0, 0, 1, 0, 1, 0),
(60, 21, 1, 'lirongyaoper', '轩鸿青', '新起点，新征程', '', 1651593081, 1651593485, '', '浮世三千吾爱有三，日 、月 、卿 ，日为朝，月为暮，卿为朝朝暮暮', 1789, '<p style=\"text-indent:32px;text-autospace:ideograph-numeric\"><span style=\";font-family:楷体;font-size:16px\"><span style=\"font-family:楷体\">时间如白驹过隙，转眼间我已三十而立。在这个年龄段，身边的大部分同伴都已成家立业。因为学业的原因，我的步伐好像比别人慢了半拍，不过终会赶上来。爱情、面包可能会迟到，但不会缺席。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric\"><span style=\";font-family:楷体;font-size:16px\"><span style=\"font-family:楷体\">经过一二十年的寒窗苦读，我于老家的市级单位找了一份工作。按照家乡的风俗，子女工作后，父母都会把自己子女的婚姻大事提上日程。每次调休回到老家，父母总会雷打不动的关心我的终身大事，诸如</span><span style=\"font-family:楷体\">“与对象处的怎么样？得赶快考虑婚期的事啊！”之类的语句总会不同的萦绕在我的耳边。如果我不回答或者敷衍，他们便会“变本加厉”的在身边不停的问话。就这样让本想卸下工作包袱回老家放松身心的我感到“一丝疲惫”。</span></span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20220503/1651593406297221.png\" title=\"新起点，新征程\" alt=\"新起点，新征程\"/></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric\"><span style=\";font-family:楷体;font-size:16px\"><span style=\"font-family:楷体\"></span></span><br/></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric\"><span style=\";font-family:楷体;font-size:16px\"><span style=\"font-family:楷体\">好在事随人愿，我和媳妇儿的婚期也如期的提上了日程，开启了婚前的准备工作。因为工作繁忙等原因，置办婚礼的过程与媳妇儿也出现过些许矛盾。媳妇儿喜欢春天的百花争艳，希望于春天拍摄婚纱，而我却认为时间还早而无动于衷，就这样错过了繁花似錦的春天，也错过了郁郁葱葱的夏天，简单的拍了婚纱。说实在的这件事我还真得给媳妇儿说句对不起，违背了心愿，错失了美好，留下了遗憾。</span></span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20220503/1651593440139370.png\" title=\"新起点，新征程\" alt=\"新起点，新征程\"/></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric\"><span style=\";font-family:楷体;font-size:16px\"><span style=\"font-family:楷体\"></span></span><br/></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric\"><span style=\";font-family:楷体;font-size:16px\"><span style=\"font-family:楷体\">因为疫情原因，原本于年前举办的婚礼推到了年后，</span><span style=\"font-family:楷体\">2022年2月19日我们于老家的小院举办了一场简约的婚礼。这一天，对我们俩来说简约而不简单，意义非凡。比不上装扮缤纷的大型室内婚礼现场，却一样充满着欢乐和祝福。来自双方父母、亲人、亲朋好友以及邻里乡亲的真诚祝福着实让我感动，带着他们的祝福，去寻找属于我们的幸福。更重要的是，从这一天开始便开启了属于我们两个一起的幸福生活。从此，我是她的一只手，她也是我的一只手，我们肩并肩，一起走向明天。从这刻起，我们彼此也多了一份责任，多了一份彼此照顾、相互促进的一份责任。面对前路的风风雨雨，我们不再独自一人，往后余生，我们一起遮风挡雨，一起期待雨后的彩虹。</span></span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20220503/1651593457173359.png\" title=\"新起点，新征程\" alt=\"新起点，新征程\"/></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric\"><span style=\";font-family:楷体;font-size:16px\"><span style=\"font-family:楷体\"></span></span><br/></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric\"><span style=\";font-family:楷体;font-size:16px\"><span style=\"font-family:楷体\">三十年来，感谢父母的无私付出，是母亲的双手为我铺平了前进的道路，是父亲的肩膀托起了我的明天。没有他们日复一日、年复一年的默默耕耘就没有我今天的幸福生活。布满老茧的双手、日渐压弯的脊梁，这些留在父母身上的烙印，也深深的刻在了我的心里。三十年来，也感谢弟弟的温暖陪伴，在最弱小的年纪里，弟弟是站在我身后的坚强后盾，我们携手面对困难、跨越困境。如今我们已各自成家，但我们仍初心不变，肩并肩一起作战。同时，感谢一路走来的各位兄弟朋友，有了你们的陪伴，我的生活才充满了欢声笑语。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric\"><span style=\";font-family:楷体;font-size:16px\"><span style=\"font-family:楷体\">新起点，新征程，我们携手，坚定前进。</span></span></p><p><br/></p>', '原创', '/uploads/202205/03/220503115612227.png', 'https://lirongyaoper.com/gujianqingshen/60.html', '1,3', 1, 1, 1, 0, 0, 1, 0, 7, 0);
INSERT INTO `lry_article` (`id`, `catid`, `userid`, `username`, `nickname`, `title`, `color`, `inputtime`, `updatetime`, `keywords`, `description`, `click`, `content`, `copyfrom`, `thumb`, `url`, `flag`, `status`, `issystem`, `listorder`, `groupids_view`, `readpoint`, `paytype`, `is_push`, `up`, `down`) VALUES
(59, 19, 1, 'lirongyaoper', '轩鸿青', 'U盘启动快捷键', '', 1644420646, 1651424798, '', '开机出现主板画面时，按下快捷键后将会进入优先启动设置界面，里面会有出现个选项，咱们通过键盘方向键的“上下”，选择自己的U盘设备，即可设置U盘启动优先。', 2259, '<p style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; padding: 0px; text-align: left;\"><strong><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;电脑主板&nbsp; boot</span></span></strong></p><table cellspacing=\"0\"><tbody><tr class=\"firstRow\"><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-width: 1px; border-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">华硕主板&nbsp;F8 </span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-width: 1px; border-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">技嘉主板F12</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">微星主板&nbsp;F</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">11</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">映泰主板F9</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">梅捷主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">ESC或F12</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext; word-break: break-all;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">七彩虹主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">ESC或F11</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">华擎主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">F11</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext; word-break: break-all;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">斯巴达卡主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">ESC</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">昂达主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">F11</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">双敏主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">ESC</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">翔升主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">F10</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">精英主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">ESC或F11</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">冠盟主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">F11或F12</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">富士康主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">ESC或F12</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">顶星主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">F11或F12</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">铭瑄主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">ESC</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">盈通主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">F8</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext; word-break: break-all;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">捷波主板</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">ESC</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">Intel主板F12</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">杰微主板ESC或F8</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">致铭主板F12</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">磐英主板ESC</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">磐正主板ESC</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;冠铭主板F9</span></p></td></tr></tbody></table><p><span style=\"text-align: center;\"></span></p><div style=\"text-align: start;\"><strong><span style=\"font-family: 宋体; color: rgb(51, 51, 51); letter-spacing: 0px; background: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 笔记本电脑</span></strong></div><p></p><table cellspacing=\"0\"><tbody><tr class=\"firstRow\"><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-width: 1px; border-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">联想笔记本&nbsp;F12</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-width: 1px; border-color: windowtext; word-break: break-all;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">宏基笔记本&nbsp;F12</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">华硕笔记本&nbsp;ESC</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext; word-break: break-all;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">惠普笔记本F9</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">联想Thinkpad&nbsp;F12&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">戴尔笔记本&nbsp;F12</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">神舟笔记本&nbsp;F12&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">东芝笔记本&nbsp;F12</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">三星笔记本&nbsp;F12&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">IBM笔记本&nbsp;F12</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">富士通笔记本&nbsp;F12</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext; word-break: break-all;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">海尔笔记本&nbsp;F12</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">方正笔记本&nbsp;F12</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">清华同方笔记本&nbsp;F12</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">微星笔记本&nbsp;F11</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext; word-break: break-all;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">明基笔记本&nbsp;F9</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">技嘉笔记本&nbsp;F12</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext; word-break: break-all;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">Gateway笔记本&nbsp;F12</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">eMachines笔记本&nbsp;F12</span><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext; word-break: break-all;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">索尼笔记本&nbsp;ESC</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"letter-spacing: 0px; font-size: 16px; background: rgb(255, 255, 255);\">苹果笔记本&nbsp;开机长按option键</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><br/></td></tr></tbody></table><p><span style=\"text-align: center;\"></span></p><div style=\"text-align: start;\"><strong><span style=\"font-family: 宋体; color: rgb(51, 51, 51); letter-spacing: 0px; background: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;品牌台式电脑</span></strong></div><p></p><table cellspacing=\"0\"><tbody><tr class=\"firstRow\"><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-width: 1px; border-color: windowtext;\"><p><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">联想台式电脑</span>&nbsp;F12</span><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-width: 1px; border-color: windowtext; word-break: break-all;\"><p><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">惠普台式电脑&nbsp;F12</span></span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">宏基台式电脑</span>&nbsp;F12</span><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\">&nbsp;</span><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">&nbsp;</span></span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">戴尔台式电脑</span>&nbsp;ESC</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">神舟台式电脑</span>&nbsp;F12&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext; word-break: break-all;\"><p><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">华硕台式电脑</span>&nbsp;F8</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">方正台式电脑</span>&nbsp;F12</span><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\">&nbsp;&nbsp;&nbsp;&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext; word-break: break-all;\"><p><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">清华同方台式电脑</span>&nbsp;F12</span></p></td></tr><tr><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">海尔台式电脑</span></span><span style=\"font-family: 宋体;letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">&nbsp;</span></span><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">F12</span></span><span style=\"font-family: 宋体;letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">&nbsp;</span></span><span style=\"font-family: 宋体;letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\">&nbsp;</span></p></td><td width=\"284\" valign=\"top\" style=\"padding: 0px 7px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext; word-break: break-all;\"><p><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">明基台式电脑</span></span><span style=\"font-family: 宋体;letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">&nbsp;</span></span><span style=\"font-family: 宋体;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px;background: rgb(255, 255, 255)\"><span style=\"font-family:宋体\">F8</span></span></p></td></tr></tbody></table><p><span style=\";font-family:宋体;font-size:16px\">&nbsp;</span></p><p><br/></p>', '原创', '', 'https://lirongyaoper.com/caozuoxitong/59.html', '', 1, 1, 10, 0, 0, 1, 0, 5, 0);
INSERT INTO `lry_article` (`id`, `catid`, `userid`, `username`, `nickname`, `title`, `color`, `inputtime`, `updatetime`, `keywords`, `description`, `click`, `content`, `copyfrom`, `thumb`, `url`, `flag`, `status`, `issystem`, `listorder`, `groupids_view`, `readpoint`, `paytype`, `is_push`, `up`, `down`) VALUES
(61, 10, 1, 'lirongyaoper', '解放军第951医院 刘国才', '读懂肺功能', '', 1652281364, 1652281770, '', '肺功能是常见又十分重要的一项检查，在临床中有重要的意义。', 1735, '<p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">肺功能是常见又十分重要的一项检查，在临床中有重要的意义。肺功能可以揭示的内容是十分丰富的，绝不仅仅限于出报告的医生在下面写的几行结论。因此会自己阅读报告单是一项重要技能。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">然而面对报告单上满篇的英文缩写和数字，很多人望而却步。不仅其他科室的医生不会看，有些专科医生对于肺功能的指标也存在着错误理解。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">今天我简要的介绍一下肺功能的各项检测指标及临床意义，帮助大家入门肺功能检查。</span></p><p style=\"margin: 20px 0px 0px; text-indent: 0px; padding: 0px; line-height: 29px; text-align: center;\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">Part 1&nbsp; 准备篇</span></strong></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">这部分有很多的概念、术语、缩写，比较枯燥，但是这是读懂肺功能的基础，请大家耐着性子看完，如果没有记住可以随时翻过来复习。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">肺功能检查内容包括肺容积、通气、换气、气道反应性测定等项目。肺容积是肺功能检查的基础。可以将肺容积分为四种基础肺容积</span><span style=\"font-family:微软雅黑\">(lung volume)，及将肺容积进行组合而成得到的四种肺容量(lung capacity)。如下图，左边标注的是不可拆分的基础肺容积，右边标注的是将肺容积进行组合而成得到的四种肺容量。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;text-align:center;line-height:29px\"><img src=\"/uploads/ueditor/image/20220511/1652281530182891.png\" title=\"读懂肺功能\" alt=\"读懂肺功能\"/></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">注释：</span></strong><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">VT，tide volume，潮气容积</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">ERV，expiratory reserve volume，补呼气容积</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">IRV，inspiratory reserve volume，补呼气容积</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">RV，residual volume，残气容积</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">IC，inspiratory capacity，深吸气量</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">VC，vital capacity，肺活量</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">FRC，functional residual capacity，功能残气量</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">TLC，total lung capacity</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">上面提供了</span><span style=\"font-family:微软雅黑\">8个容积/容量的缩写和英文全称，是为了让大家通过英文全称更好的理解和记忆缩写的含义，因为全是两三个字母的缩写放在一起真的让人很头痛。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">中文习惯上也将某某</span><span style=\"font-family:微软雅黑\">“容积”说成某某“量”，但是英文缩写分得很清楚，记住带“V”的是基础的不可再分的，带“C”的表示组合而来的容量。另外expiratory和inspiratory分别表示呼气和吸气，在后面的曝光率也很高，所以一定记住缩写中间带“E”的表示呼气，缩写中间带“I”的表示吸气。</span></span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20220511/1652281576368392.png\" title=\"读懂肺功能\" alt=\"读懂肺功能\"/></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">F-V曲线图，根据用力呼气/吸气时气体流量(Flow，F，各种书籍指南里都称为流量，个人觉得称为“流速”更符合汉语习惯)随着肺容积(Volume，V)而绘制的关系图。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">上面表示用力呼气曲线，有人称为</span><span style=\"font-family:微软雅黑\">MEFV(maximal expiratory F-V)，下面的曲线表示吸气(MIFV，maximal inspiratory F-V)。这两个简称不用理会，放在这里是怕大家在专业的文章里遇到这两个词给整懵了。只要记住上面是呼气、下面是吸气就可以了。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;text-align:center;line-height:29px\"><img src=\"/uploads/ueditor/image/20220511/1652281588353585.png\" title=\"读懂肺功能\" alt=\"读懂肺功能\"/></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">V-T曲线，根据用力呼气时肺容积(Volume，V)随着时间(T)的变化而绘制。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">下面介绍一些看报告时经常会用到的其他指标：</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">FVC（forced VC）：</span></strong><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">用力肺活量，表示用最大力气、最快速度呼出的全部气量。相对的可以把上面的</span><span style=\"font-family:微软雅黑\">VC称为sVC(slow VC)。一般情况下FVC=VC，但是在阻塞性肺疾病比较严重的时候，用力呼气会导致小气道提前关闭，因此会出现FVC＜VC的情况。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">FEV1：</span></strong><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">1秒量，最大吸气到TLC位后，开始用力呼气第1秒内的呼出气量。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">FEV1/FVC：</span></strong><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">简称</span><span style=\"font-family:微软雅黑\">1秒率，有的报告上用FEV1%或FEV1%F表示。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">PEF（peak expiratory flow）：</span></strong><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">峰值呼气流速，表示用力呼气最快的速度。如果你已经了解了</span><span style=\"font-family:微软雅黑\">E和F含义，那么这里只要知道P=peak就永远不会忘记PEF的含义了。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">FEF25（forced EF25）：</span></strong><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">表示用力呼出</span><span style=\"font-family:微软雅黑\">25%肺活量的呼气流速。那么把E换成I表示吸气，把25换成其他数字代表的意义就很容易理解了。FEF25、FEF50、FEF75，有的报告单上表示为MEF75、MEF50、MEF25，过去还曾分别被称为V75、V50、V25。大家遇到了知道是一个东西就好了。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">MMEF（=MMF，maximal mid EF）：</span></strong><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">也可以表示为</span><span style=\"font-family:微软雅黑\">MMEF75/25或FEF25%~75%，表示用力呼出25%~75%肺活量时的平均呼气流速。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">MVV：</span></strong><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">最大自主通气量，表示</span><span style=\"font-family:微软雅黑\">1分钟内的最大通气量，通常是测试15秒然后换算成1分钟得来的。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;text-align:center;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">Part 2&nbsp; &nbsp;实战篇</span></strong></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">看了那么多指标、缩写，终于可以实战了。我们先来看一张报告单。每家医院报告的项目种类、所采用的缩写名称可能有所不同，但是差别不大，经过上面的学习应该可以看懂任何一家医院的报告。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">第一列是检测的各个指标的缩写，主要的指标已经讲过了（没有提到的也可以根据前面提供的英文全称推断出来）</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">第二列是指标的预测值；</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">第三列是实际测量值；</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">第四列是实测值占预测值的百分比。因为肺功能是与患者的年龄、性别、身高、体重相关的，单独给出一个指标的实测值是很难进行判断的，大部分指标需要根据其占预测值的百分比来进行判断。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\";font-family:宋体;font-size:16px\">&nbsp;</span></p><p><span style=\";font-family:宋体;font-size:16px\">&nbsp;</span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20220511/1652281599226320.png\" title=\"读懂肺功能\" alt=\"读懂肺功能\"/></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">Step 1&nbsp; |&nbsp;怎么判断有没有限制性通气障碍？</span></strong></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">看</span><span style=\"font-family:微软雅黑\">TLC和VC（简单肺功能测试是不含TLC的，这时候可以看VC、FVC），如果＜80%预计值，提示存在限制性通气障碍。此时1秒率多正常，或升高。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">Step 2&nbsp; |&nbsp;怎么判断有没有阻塞性通气障碍？</span></strong></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">看</span><span style=\"font-family:微软雅黑\">1秒率，推荐以FEV1/FVC≥92%预计值为正常。如果＜92%预计值，提示存在阻塞性通气障碍。但是某些医院并没有报告1秒率的预计值，只报告了固定值。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">研究显示</span><span style=\"font-family:微软雅黑\">1秒率随着年龄增长而逐渐下降，小儿在90%以上甚至可达100%；健康年轻人多在85%以上；进入老年后下降速度减慢趋于稳定，平均多在80%以上。GOLD规范中慢阻肺的诊断标准为 FEV1/FVC &lt; 70%固定值，由于GOLD影响深远，很多单位也以FEV1/FVC &lt; 70%固定值作为阻塞性通气障碍的诊断标准，这是很不可取的，会在年轻人中造成漏诊。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">如果</span><span style=\"font-family:微软雅黑\">TLC、VC和1秒率都有下降，那么就考虑为混合型通气功能障碍。各类型通气障碍的鉴别见下表。另外也可以通过V-T曲线和F-V曲线进行判断。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">各类型通气功能障碍的判断及鉴别</span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20220511/1652281611359394.png\" title=\"读懂肺功能\" alt=\"读懂肺功能\"/></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">Step 3 |&nbsp; 如何判断肺通气功能障碍的程度？</span></strong></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">这个很简单，多数指南均推荐不论阻塞性、限制性或混合性通气障碍，均按照</span><span style=\"font-family:微软雅黑\">FEV1占预计值%来判断。复杂的是，不同指南给出的分级标准不一致，见下表。</span></span></p><p><span style=\";font-family:Calibri;font-size:14px\">&nbsp;</span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20220511/1652281620211672.png\" title=\"读懂肺功能\" alt=\"读懂肺功能\"/></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">不同医院出的报告采用的标准可能不同，其中三分法简单、实用，且与肺换气功能障碍的分级标准一致，建议采用。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">Step 4&nbsp; |&nbsp;是否存在小气道功能障碍？</span></strong></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">小气道功能障碍可以反应早期气道阻塞。在病变早期临床尚无症状、体征，</span><span style=\"font-family:微软雅黑\">FVC、FEV1、1秒率尚在正常范围时，MMEF、FEF50、FEF75就可以显著下降。当这3个指标中有2个指标低于最低限值，可判断为小气道功能障碍。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">如何根据指标对小气道功能障碍分级呢？</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">一般没必要分级，如果一定要分呢，可以参考上面的三分法。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">另外值得注意的是小气道功能障碍是早期的表现，如果指标已经构成限制性或阻塞性通气障碍了，就没有必要再诊断小气道功能障碍了。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">Step 5&nbsp; |&nbsp;阻塞性肺气肿怎么判断？</span></strong></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">RV/TLC，残气量与肺总量比值，简称残总比，可以对阻塞性肺气肿的程度作出判断。</span></p><table cellspacing=\"0\"><tbody><tr class=\"firstRow\"><td width=\"284\" valign=\"center\" style=\"padding: 0px 7px; border-left: none; border-right: none; border-top-width: 1px; border-top-color: windowtext; border-bottom-width: 1px; border-bottom-color: windowtext;\"><br/></td><td width=\"284\" valign=\"center\" style=\"padding: 0px 7px; border-left: none; border-right: none; border-top-width: 1px; border-top-color: windowtext; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;text-align:center;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">RV/TLC（%）</span></p></td></tr><tr><td width=\"284\" valign=\"center\" style=\"padding: 0px 7px; border-width: initial; border-style: none; border-color: initial;\"><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;text-align:center;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">无肺气肿</span></p></td><td width=\"284\" valign=\"center\" style=\"padding: 0px 7px; border-width: initial; border-style: none; border-color: initial;\"><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;text-align:center;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">≤35</span></p></td></tr><tr><td width=\"284\" valign=\"center\" style=\"padding: 0px 7px; border-width: initial; border-style: none; border-color: initial;\"><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;text-align:center;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">轻度肺气肿</span></p></td><td width=\"284\" valign=\"center\" style=\"padding: 0px 7px; border-width: initial; border-style: none; border-color: initial;\"><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;text-align:center;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">36~45</span></p></td></tr><tr><td width=\"284\" valign=\"center\" style=\"padding: 0px 7px; border-width: initial; border-style: none; border-color: initial;\"><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;text-align:center;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">中度肺气肿</span></p></td><td width=\"284\" valign=\"center\" style=\"padding: 0px 7px; border-width: initial; border-style: none; border-color: initial;\"><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;text-align:center;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">46</span><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">~55</span></p></td></tr><tr><td width=\"284\" valign=\"center\" style=\"padding: 0px 7px; border-left: none; border-right: none; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;text-align:center;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">重度肺气肿</span></p></td><td width=\"284\" valign=\"center\" style=\"padding: 0px 7px; border-left: none; border-right: none; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;\"><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;text-align:center;line-height:29px\"><span style=\"font-family: Arial;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:Arial\">≥</span></span><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">56</span></p></td></tr></tbody></table><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">Step 6&nbsp; |&nbsp;换气功能障碍怎么看？</span></strong></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">DLCO，肺一氧化碳弥散量，是反映换气功能的主要指标。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">DLCO＜80%预计值，考虑存在换气障碍。怎么根据DLCO对弥散功能障碍分级呢？同样，参考上面的三分法。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">Step 7&nbsp; |&nbsp;气道反应性怎么评估？</span></strong></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">气道反应性可以通过支气管激发试验、舒张试验、</span><span style=\"font-family:微软雅黑\">PEF变异率来反应。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">激发试验：</span></strong><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">FEV1较用药前下降≥20%时，可判断为激发试验阳性；若吸入最大浓度后，仍未达上述标准，则为激发试验阴性。阳性表明患者气道呈高反应性，有助于对哮喘的诊疗。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">舒张试验：</span></strong><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">用药后</span><span style=\"font-family:微软雅黑\">FVC或FEV1较用药前增12% 或以上，且绝对值增加＞200 mL则为阳性。阳性提示患者的气道呈高反应性，同时也提示气流受限是因气道平滑肌痉挛所致，经用舒张药物治疗可以缓解，且对所用药物敏感。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">PEFR，即PEF变异率：昼夜变异率＞10%，或周变异率＞20%，提示存在气道高反应性。由于需要反复监测PEF，是不会体现在单次肺功能报告单中的。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">注</span> <span style=\"font-family:微软雅黑\">意！</span></span></strong></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\"><span style=\"font-family:微软雅黑\">气道反应性测定主要用于支气管哮喘的诊断和鉴别诊断，但是气道高反应性</span><span style=\"font-family:微软雅黑\">≠哮喘。临床上有人认为舒张试验阳性即可诊断为哮喘，舒张试验阴性则是 COPD，这种看法是不对的。</span></span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">因为许多其他疾病，如变应性鼻炎、慢性支气管炎、病毒性上呼吸道感染、支气管扩张症、长期吸烟等也可能出现气道高反应性，表现为支气管激发试验阳性。其区别是阳性时吸入激发药物的累积剂量或浓度较高，而哮喘患者则较低，且激发阳性时会出现明显的喘息、胸闷等症状。</span></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><strong><span style=\"font-family: 微软雅黑;color: rgb(51, 51, 51);letter-spacing: 0;font-size: 16px\">Step 8&nbsp; |&nbsp;如何用肺功能指导手术治疗？</span></strong></p><p style=\"margin-top:20px;margin-right:0;margin-bottom:0;margin-left:0;text-indent:0;padding:0 0 0 0 ;line-height:29px\"><span style=\"font-family: 微软雅黑;color: rgb(32, 32, 32);letter-spacing: 0;font-size: 16px\">MVV，最大自主通气量，是常规肺功能参数中判断肺储备功能的最可靠指标。一般认为MVV＞70%预计值，手术是安全的；69%~50%可以考虑；49%~30%应尽量避免；＜30%应视为手术禁忌症。</span></p><p><br/></p>', '转载', '/uploads/202205/11/220511110518259.jpg', 'https://lirongyaoper.com/xuewuzhijing/61.html', '', 1, 1, 10, 0, 0, 1, 0, 6, 0),
(64, 9, 1, 'lirongyaoper', '轩鸿青', '关于肺动脉、肺静脉、气管权重的开放及使用简易说明', '', 1753108516, 1753138559, '', '对于胸外科医生而言，术前详细、认真的阅片对手术方案的规划至关重要。如果能快速、准确的对肺血管、气管进行三维重建，对于肺结节或肿瘤位置的判断将风更加便捷，特别是对小结节术前制定解剖型肺段切除提供一定的帮助。  周口市中心医院  胸外科  李荣耀 lryhdf@163.com', 25, '<p><br/></p><h2 style=\"color: #3498db; border-bottom: 1px solid #eee; padding-bottom: 5px; margin-top: 30px;\">硬件支持（以英特尔CPU为例）</h2><table style=\"width: 100%; border-collapse: collapse; margin: 20px 0;\"><tbody><tr class=\"firstRow\"><th style=\"border: 1px solid #ddd; padding: 8px; text-align: left; background-color: #f2f2f2;\">名称</th><th style=\"border: 1px solid #ddd; padding: 8px; text-align: left; background-color: #f2f2f2;\">型号</th></tr><tr><td style=\"border: 1px solid #ddd; padding: 8px; text-align: left;\">处理器（CPU）</td><td style=\"border: 1px solid #ddd; padding: 8px; text-align: left;\">i5 13600k或以上</td></tr><tr><td style=\"border: 1px solid #ddd; padding: 8px; text-align: left;\">内存</td><td style=\"border: 1px solid #ddd; padding: 8px; text-align: left;\">48G或以上</td></tr><tr><td style=\"border: 1px solid #ddd; padding: 8px; text-align: left;\">图形显示卡（GPU）</td><td style=\"border: 1px solid #ddd; padding: 8px; text-align: left;\">nvidia 4070ti Super 或以上，显存不少于16G</td></tr><tr><td style=\"border: 1px solid #ddd; padding: 8px; text-align: left;\">主板</td><td style=\"border: 1px solid #ddd; padding: 8px; text-align: left;\">供电能力满足要求（主板御三家：华硕、微星、技嘉）</td></tr><tr><td style=\"border: 1px solid #ddd; padding: 8px; text-align: left;\">电源</td><td style=\"border: 1px solid #ddd; padding: 8px; text-align: left;\">建议不低于800w</td></tr></tbody></table><h2 style=\"color: #3498db; border-bottom: 1px solid #eee; padding-bottom: 5px; margin-top: 30px;\">环境搭建</h2><h3 style=\"color: #2980b9;\">系统要求</h3><ol style=\"margin: 10px 0; padding-left: 20px;\" class=\" list-paddingleft-2\"><li><p>Linux系统(推荐)，较常用的桌面linux系统多为Ubuntu系统，最新长期支持版本24.04</p></li><li><p>window系统，如window10, window11。win7及win8可能不再兼容。</p></li></ol><h3 style=\"color: #2980b9;\">安装与图形显卡相对应的最新显卡驱动</h3><p style=\"margin: 10px 0;\">Nvidia显卡驱动官方网站：<a href=\"https://www.nvidia.cn/geforce/drivers/\" target=\"_blank\" style=\"color: #2980b9; text-decoration: none;\">下载最新版官方 GeForce 驱动程序</a></p><h3 style=\"color: #2980b9;\">安装cuda及cuDNN</h3><h4 style=\"margin: 15px 0 5px 0;\">cuda 官网</h4><p style=\"margin: 10px 0;\">官方网址：<a href=\"https://developer.nvidia.com/cuda-toolkit\" target=\"_blank\" style=\"color: #2980b9; text-decoration: none;\">https://developer.nvidia.com/cuda-toolkit</a></p><p style=\"margin: 10px 0;\"><strong>作用</strong>: CUDA 是 NVIDIA 推出的并行计算平台和编程模型，用于加速 GPU 计算任务（如深度学习、科学计算等）。</p><p style=\"margin: 10px 0;\"><strong>操作步骤</strong>:</p><ol type=\"a\" style=\"margin: 10px 0; padding-left: 20px;\" class=\" list-paddingleft-2\"><li><p>选择适合你的操作系统（如 Linux/x86_64）。</p></li><li><p>根据显卡驱动版本选择对应的 CUDA 版本（需与驱动兼容）。</p></li><li><p>下载安装包（推荐使用 runfile 或 deb 格式）。</p></li></ol><div style=\"background-color: #e7f4ff; border-left: 4px solid #3498db; padding: 10px 15px; margin: 15px 0;\"><strong>注意：</strong>Nvidia GeForce RTX 50 Series 显卡cuda版本 &gt;= 12.8</div><h4 style=\"margin: 15px 0 5px 0;\">cuDNN 官网</h4><p style=\"margin: 10px 0;\"><strong>官网地址</strong>: <a href=\"https://developer.nvidia.com/cudnn\" target=\"_blank\" style=\"color: #2980b9; text-decoration: none;\">https://developer.nvidia.com/cudnn</a></p><p style=\"margin: 10px 0;\"><strong>作用</strong>: cuDNN 是 NVIDIA 针对深度神经网络优化的 GPU 加速库，需与 CUDA 配合使用。</p><p style=\"margin: 10px 0;\"><strong>操作步骤</strong>:</p><ol type=\"i\" style=\"margin: 10px 0; padding-left: 20px;\" class=\" list-paddingleft-2\"><li><p>注册/登录 NVIDIA 开发者账号（免费）。</p></li><li><p>选择与已安装 CUDA 版本兼容的 cuDNN 版本（例如 CUDA 12.x → cuDNN 8.9.x）。</p></li><li><p>下载对应系统的安装包（如 Local Installer for Linux）。</p></li></ol><h4 style=\"margin: 15px 0 5px 0;\">注意事项</h4><ol style=\"margin: 10px 0; padding-left: 20px;\" class=\" list-paddingleft-2\"><li><p><strong>版本兼容性</strong>:</p><p style=\"margin: 5px 0;\">CUDA 版本需与 NVIDIA 显卡驱动兼容（可通过 nvidia-smi 查看驱动支持的最高 CUDA 版本）。</p><p style=\"margin: 5px 0;\">cuDNN 版本必须与 CUDA 版本严格匹配（详见官网文档）。</p></li><li><p><strong>安装建议</strong>:</p><p style=\"margin: 5px 0;\">推荐使用官方文档指导的安装方式：<a href=\"https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html\" target=\"_blank\" style=\"color: #2980b9; text-decoration: none;\">CUDA 安装指南</a>、<a href=\"https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html\" target=\"_blank\" style=\"color: #2980b9; text-decoration: none;\">cuDNN 安装指南</a>。</p></li><li><p><strong>验证安装</strong>:</p><p style=\"margin: 5px 0;\">CUDA: 运行 nvcc -V 查看版本。</p><p style=\"margin: 5px 0;\">cuDNN: 检查头文件和库是否成功安装（如 cudnn_version.h）。</p></li></ol><h3 style=\"color: #2980b9;\">安装python虚拟环境(Anaconda)</h3><p style=\"margin: 10px 0;\">推荐使用Anaconda创建和管理Python虚拟环境</p><p style=\"margin: 10px 0;\">官方网址：<a href=\"https://www.anaconda.com/download\" target=\"_blank\" style=\"color: #2980b9; text-decoration: none;\">https://www.anaconda.com/download</a></p><h4 style=\"margin: 15px 0 5px 0;\">Conda 安装与初始化</h4><p style=\"margin: 10px 0;\"><strong>安装</strong></p><pre style=\"background-color: #f5f5f5; padding: 15px; border-radius: 5px; overflow-x: auto; margin: 10px 0;\">#&nbsp;下载&nbsp;Miniconda&nbsp;(推荐)\r\nwget&nbsp;https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh\r\n\r\n#&nbsp;安装\r\nbash&nbsp;Miniconda3-latest-Linux-x86_64.sh\r\n\r\n#&nbsp;或者安装&nbsp;Anaconda\r\nwget&nbsp;https://repo.anaconda.com/archive/Anaconda3-2023.03-Linux-x86_64.sh\r\nbash&nbsp;Anaconda3-2023.03-Linux-x86_64.sh</pre><p style=\"margin: 10px 0;\"><strong>初始化Conda</strong></p><pre style=\"background-color: #f5f5f5; padding: 15px; border-radius: 5px; overflow-x: auto; margin: 10px 0;\">#&nbsp;初始化&nbsp;conda&nbsp;(添加到PATH)\r\nconda&nbsp;init\r\n\r\n#&nbsp;初始化特定shell&nbsp;(如bash,&nbsp;zsh)\r\nconda&nbsp;init&nbsp;bash&nbsp;#Ubuntu系统推荐\r\nconda&nbsp;init&nbsp;zsh\r\n\r\n#&nbsp;应用更改\r\nsource&nbsp;~/.bashrc&nbsp;#&nbsp;或&nbsp;source&nbsp;~/.zshrc</pre><p style=\"margin: 10px 0;\"><strong>关闭默认的base环境</strong></p><p style=\"margin: 10px 0;\">安装成功后打开终端一般默认进入conda的base环境，而我们通常不会这么做，建议关闭。</p><pre style=\"background-color: #f5f5f5; padding: 15px; border-radius: 5px; overflow-x: auto; margin: 10px 0;\">#&nbsp;禁止自动激活base环境\r\nconda&nbsp;config&nbsp;--set&nbsp;auto_activate_base&nbsp;false</pre><p style=\"margin: 10px 0;\"><strong>python环境的基本操作</strong></p><pre style=\"background-color: #f5f5f5; padding: 15px; border-radius: 5px; overflow-x: auto; margin: 10px 0;\">#&nbsp;创建新环境\r\nconda&nbsp;create&nbsp;-n&nbsp;myenv&nbsp;python=3.9\r\n\r\n#&nbsp;克隆环境\r\nconda&nbsp;create&nbsp;--name&nbsp;myclone&nbsp;--clone&nbsp;myenv\r\n\r\n#&nbsp;激活环境\r\nconda&nbsp;activate&nbsp;myenv\r\n\r\n#&nbsp;退出环境\r\nconda&nbsp;deactivate\r\n\r\n#&nbsp;列出所有环境\r\nconda&nbsp;env&nbsp;list\r\n\r\n#&nbsp;删除环境\r\nconda&nbsp;env&nbsp;remove&nbsp;-n&nbsp;myenv\r\n\r\n#&nbsp;导出环境配置\r\nconda&nbsp;env&nbsp;export&nbsp;&gt;&nbsp;environment.yml\r\n\r\n#&nbsp;从文件创建环境\r\nconda&nbsp;env&nbsp;create&nbsp;-f&nbsp;environment.yml</pre><h3 style=\"color: #2980b9;\">安装Pytorch</h3><p style=\"margin: 10px 0;\">官方网址：<a href=\"https://pytorch.org/get-started/locally/\" target=\"_blank\" style=\"color: #2980b9; text-decoration: none;\">https://pytorch.org/get-started/locally/</a></p><p><img src=\"/uploads/ueditor/image/20250722/feidongmai01.png\" alt=\"Pytorch安装选项\" style=\"width: 100%; max-width: 800px; display: block; margin: 20px auto; box-shadow: 0 0 5px rgba(0,0,0,0.2);\"/></p><p style=\"margin: 10px 0;\">参照上图，根据自己的系统,计算机硬件，勾选符合要去的Command。比如我的操作系统为Ubuntu24.04，显卡驱动所支持的cuda最高版本为12.9，使用的语言为python，根据自己的选项，生成用于终端的安装命令。</p><pre style=\"background-color: #f5f5f5; padding: 15px; border-radius: 5px; overflow-x: auto; margin: 10px 0;\">pip&nbsp;install&nbsp;torch&nbsp;torchvision&nbsp;torchaudio&nbsp;--index-url&nbsp;https://download.pytorch.org/whl/cu128</pre><p style=\"margin: 10px 0;\"><strong>验证：</strong></p><p><img src=\"/uploads/ueditor/image/20250722/feidongmai02.png\" alt=\"Pytorch验证\" style=\"width: 100%; max-width: 800px; display: block; margin: 20px auto; box-shadow: 0 0 5px rgba(0,0,0,0.2);\"/></p><h3 style=\"color: #2980b9;\">安装nnUNetV2</h3><p style=\"margin: 10px 0;\">安装方法请根据官方提供的安装方法。具体见：<a href=\"https://github.com/MIC-DKFZ/nnUNet\" target=\"_blank\" style=\"color: #2980b9; text-decoration: none;\">https://github.com/MIC-DKFZ/nnUNet</a></p><p style=\"margin: 10px 0;\">推荐如下安装方式：</p><pre style=\"background-color: #f5f5f5; padding: 15px; border-radius: 5px; overflow-x: auto; margin: 10px 0;\">git&nbsp;clone&nbsp;https://github.com/MIC-DKFZ/nnUNet.git\r\ncd&nbsp;nnUNet\r\npip&nbsp;install&nbsp;-e&nbsp;.</pre><h2 style=\"color: #3498db; border-bottom: 1px solid #eee; padding-bottom: 5px; margin-top: 30px;\">权重部署</h2><ol style=\"margin: 10px 0; padding-left: 20px;\" class=\" list-paddingleft-2\"><li><p>创建好存放模型的文件夹。注意必须符合nnUNet的严格要求。以Ubuntu为例</p><pre style=\"background-color: #f5f5f5; padding: 15px; border-radius: 5px; overflow-x: auto; margin: 10px 0;\">sudo&nbsp;mkdir&nbsp;-p&nbsp;/root/nnunet/nnUNet_raw/\r\nsudo&nbsp;mkdir&nbsp;-p&nbsp;/root/nnumet/nnUNet_preprocessed/\r\nsudo&nbsp;mkdir&nbsp;-p&nbsp;/root/nnumet/results/</pre></li><li><p>添加环境变量</p><p style=\"margin: 5px 0;\">Ubuntu系统编辑&quot;.bashrc&quot;,添加如下环境变量</p><pre style=\"background-color: #f5f5f5; padding: 15px; border-radius: 5px; overflow-x: auto; margin: 10px 0;\">export&nbsp;nnUNet_raw=&quot;/root/nnunet/nnUNet_raw/&quot;\r\nexport&nbsp;nnUNet_preprocessed=&quot;/root/nnumet/nnUNet_preprocessed/&quot;\r\nexport&nbsp;nnUNet_results=&quot;/root/nnumet/results/&quot;</pre></li><li><p>将下载好的权重解压到&quot;/root/nnunet/nnUNet_results &quot;文件夹内，自此模型部署完成。</p></li></ol><h2 style=\"color: #3498db; border-bottom: 1px solid #eee; padding-bottom: 5px; margin-top: 30px;\">推理</h2><ol style=\"margin: 10px 0; padding-left: 20px;\" class=\" list-paddingleft-2\"><li><p>最好在某一可读写文件夹内创建三个文件夹。用于推理过程中的输入和输出。文件夹命名方面无特殊要求。比如我创建的：</p><pre style=\"background-color: #f5f5f5; padding: 15px; border-radius: 5px; overflow-x: auto; margin: 10px 0;\">mkdir&nbsp;-p&nbsp;/data/input/\r\nmkdir&nbsp;-p&nbsp;/data/out_cascade/\r\nmkdir&nbsp;-p&nbsp;/data/output</pre></li><li><p>推理代码</p><p style=\"margin: 5px 0;\"><strong>3d级联推理</strong></p><pre style=\"background-color: #f5f5f5; padding: 15px; border-radius: 5px; overflow-x: auto; margin: 10px 0;\">nnUNetv2_predict&nbsp;-d&nbsp;Dataset001_Lung&nbsp;-i&nbsp;/data/input/&nbsp;-o&nbsp;/data/out_cascade/&nbsp;-f&nbsp;0&nbsp;1&nbsp;2&nbsp;3&nbsp;4&nbsp;-tr&nbsp;nnUNetTrainer&nbsp;-c&nbsp;3d_lowres&nbsp;-p&nbsp;nnUNetResEncUNetLPlans&nbsp;&amp;&amp;&nbsp;nnUNetv2_predict&nbsp;-d&nbsp;Dataset001_Lung&nbsp;-i&nbsp;/data/input/&nbsp;-o&nbsp;/data/output/&nbsp;-c&nbsp;3d_cascade_fullres&nbsp;-tr&nbsp;nnUNetTrainer&nbsp;-p&nbsp;nnUNetResEncUNetLPlans&nbsp;-prev_stage_predictions&nbsp;/data/out_cascade/</pre><p style=\"margin: 5px 0;\"><strong>3d_fullres推理</strong></p><pre style=\"background-color: #f5f5f5; padding: 15px; border-radius: 5px; overflow-x: auto; margin: 10px 0;\">nnUNetv2_predict&nbsp;-d&nbsp;Dataset001_Lung&nbsp;-i&nbsp;/data/input/&nbsp;-o&nbsp;/data/output&nbsp;-f&nbsp;0&nbsp;1&nbsp;2&nbsp;3&nbsp;4&nbsp;-tr&nbsp;nnUNetTrainer&nbsp;-c&nbsp;3d_fullres&nbsp;-p&nbsp;nnUNetResEncUNetLPlans</pre></li></ol><h2 style=\"color: #3498db; border-bottom: 1px solid #eee; padding-bottom: 5px; margin-top: 30px;\">权重分享</h2><ol style=\"margin: 10px 0; padding-left: 20px;\" class=\" list-paddingleft-2\"><li><p><strong>权重的索取</strong></p><p style=\"margin: 5px 0;\">该权重开源，免费，为作者个人通过大量数据训练而成，如有需要，请联系作者本人，联系方式：<a href=\"mailto:lryhdf@163.com\" style=\"color: #2980b9; text-decoration: none;\">lryhdf@163.com</a>。</p></li><li><p><strong>权重的使用原则</strong></p><p style=\"margin: 5px 0;\">该权重虽免费，开源，任何使用者不得以此为基础用于商业目的。</p><p style=\"margin: 5px 0;\">任何使用者都必须知道该权重的作者，任何使用者再次分享与他人的时候都必须携带权重作者的联系信息。（周口市中心医院 心胸外科 李荣耀 <a href=\"mailto:lryhdf@163.com\" style=\"color: #2980b9; text-decoration: none;\">lryhdf@163.com</a>）。如果该全权重对作者有些许帮助，还请使用者通过邮件方式对作者表示感谢。</p></li><li><p><strong>免责声明</strong></p><p style=\"margin: 5px 0;\">限于用于该权重训练的数据有限，作者经济承担能力有限，权重在推理中尚不完全准确，建议同仁在术前规划过程中仅作参考。本权重作者不对可能的误差负责。</p></li></ol><h2 style=\"color: #3498db; border-bottom: 1px solid #eee; padding-bottom: 5px; margin-top: 30px;\">效果展示</h2><div style=\"display: flex; flex-wrap: wrap; justify-content: space-around; margin: 20px 0;\"><img src=\"/uploads/ueditor/image/20250722/feidongmai03.png\" alt=\"效果展示1\" style=\"max-width: 45%; height: auto; margin: 10px; box-shadow: 0 0 5px rgba(0,0,0,0.2);\"/> &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"/uploads/ueditor/image/20250722/feidongmai04.png\" alt=\"效果展示2\" style=\"max-width: 45%; height: auto; margin: 10px; box-shadow: 0 0 5px rgba(0,0,0,0.2);\"/></div><p><img src=\"/uploads/ueditor/image/20250722/feidongmai05.png\" alt=\"效果展示3\" style=\"width: 100%; max-width: 800px; display: block; margin: 20px auto; box-shadow: 0 0 5px rgba(0,0,0,0.2);\"/> &nbsp; &nbsp;<img src=\"/uploads/ueditor/image/20250722/feidongmai06.png\" alt=\"效果展示4\" style=\"width: 100%; max-width: 800px; display: block; margin: 20px auto; box-shadow: 0 0 5px rgba(0,0,0,0.2);\"/> &nbsp; &nbsp;<img src=\"/uploads/ueditor/image/20250722/feidongmai07.png\" alt=\"效果展示5\" style=\"width: 100%; max-width: 800px; display: block; margin: 20px auto; box-shadow: 0 0 5px rgba(0,0,0,0.2);\"/> &nbsp; &nbsp;<img src=\"/uploads/ueditor/image/20250722/feidongmai08.png\" alt=\"效果展示6\" style=\"width: 100%; max-width: 800px; display: block; margin: 20px auto; box-shadow: 0 0 5px rgba(0,0,0,0.2);\"/></p>', '原版', '/uploads/202507/22/250722065111907.png', 'https://lirongyaoper.com/yixuejishu/64.html', '', 1, 1, 10, 0, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lry_attachment`
--

CREATE TABLE `lry_attachment` (
  `id` int UNSIGNED NOT NULL,
  `siteid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `module` char(30) NOT NULL DEFAULT '',
  `contentid` varchar(20) NOT NULL DEFAULT '',
  `originname` varchar(50) NOT NULL DEFAULT '',
  `filename` varchar(50) NOT NULL DEFAULT '',
  `filepath` char(200) NOT NULL DEFAULT '',
  `filesize` int UNSIGNED NOT NULL DEFAULT '0',
  `fileext` char(10) NOT NULL DEFAULT '',
  `isimage` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `downloads` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `uploadtime` int UNSIGNED NOT NULL DEFAULT '0',
  `uploadip` char(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_attachment`
--

INSERT INTO `lry_attachment` (`id`, `siteid`, `module`, `contentid`, `originname`, `filename`, `filepath`, `filesize`, `fileext`, `isimage`, `downloads`, `userid`, `username`, `uploadtime`, `uploadip`) VALUES
(1, 0, 'banner', '', '190513034418633.jpg', '190513034418633.jpg', '/uploads/201905/13/', 452870, 'jpg', 1, 0, 1, 'lirongyaoper', 1557733458, '122.206.190.18'),
(2, 0, 'banner', '', '190513034448632.jpg', '190513034448632.jpg', '/uploads/201905/13/', 442964, 'jpg', 1, 0, 1, 'lirongyaoper', 1557733488, '122.206.190.18'),
(3, 0, 'banner', '', '190513034518316.jpg', '190513034518316.jpg', '/uploads/201905/13/', 467496, 'jpg', 1, 0, 1, 'lirongyaoper', 1557733518, '122.206.190.18'),
(4, 0, 'banner', '', '190513034548545.jpg', '190513034548545.jpg', '/uploads/201905/13/', 452343, 'jpg', 1, 0, 1, 'lirongyaoper', 1557733548, '122.206.190.18'),
(5, 0, 'banner', '', '190513034617199.jpg', '190513034617199.jpg', '/uploads/201905/13/', 410524, 'jpg', 1, 0, 1, 'lirongyaoper', 1557733577, '122.206.190.18'),
(6, 0, 'lry_admin_center', '', '190513034718364.jpg', '190513034718364.jpg', '/uploads/201905/13/', 520404, 'jpg', 1, 0, 1, 'lirongyaoper', 1557733638, '122.206.190.18'),
(7, 0, 'lry_admin_center', '', '190513034718364.jpg', '190513034752309.jpg', '/uploads/201905/13/', 226381, 'jpg', 1, 0, 1, 'lirongyaoper', 1557733672, '122.206.190.18'),
(8, 0, 'lry_admin_center', '', '190515095828281.jpg', '190515095828281.jpg', '/uploads/201905/15/', 200835, 'jpg', 1, 0, 1, 'lirongyaoper', 1557885508, '122.206.190.16'),
(9, 0, 'forum', '', 'history.csv', '190517052544910.csv', '/uploads/201905/17/', 2364, 'csv', 0, 0, 1, 'lirongyaoper', 1558085144, '122.206.190.89'),
(10, 0, 'lry_admin_center', '', '09.jpg', '190521121809507.jpg', '/uploads/201905/21/', 20272, 'jpg', 1, 0, 1, 'lirongyaoper', 1558412289, '122.206.190.30'),
(11, 0, 'lry_admin_center', '', '微信图片_20190521123834.jpg', '190521123856840.jpg', '/uploads/201905/21/', 40583, 'jpg', 1, 0, 1, 'lirongyaoper', 1558413536, '122.206.190.30'),
(12, 0, 'lry_admin_center', '', 'nopic.jpg', '190601055350246.jpg', '/uploads/201906/01/', 20272, 'jpg', 1, 0, 1, 'lirongyaoper', 1559382830, '122.206.190.109'),
(13, 0, 'lry_admin_center', '', 'thumb.jpg', '190619055253858.jpg', '/uploads/201906/19/', 6288, 'jpg', 1, 0, 1, 'lirongyaoper', 1560937973, '122.206.190.82'),
(14, 0, 'lry_admin_center', '', 'chaofan .jpg', '190829082325470.jpg', '/uploads/201908/29/', 105494, 'jpg', 1, 0, 1, 'lirongyaoper', 1567081405, '115.51.9.204'),
(15, 0, 'lry_admin_center', '', 'chaofan.jpg', '190919094030818.jpg', '/uploads/201909/19/', 808657, 'jpg', 1, 0, 1, 'lirongyaoper', 1568900430, '115.51.8.172'),
(16, 0, 'lry_admin_center', '', '12.jpg', '190925043246126.jpg', '/uploads/201909/25/', 1664422, 'jpg', 1, 0, 1, 'lirongyaoper', 1569400366, '115.51.9.68'),
(17, 0, 'lry_admin_center', '', '09.jpg', '191014100649650.jpg', '/uploads/201910/14/', 32975, 'jpg', 1, 0, 1, 'lirongyaoper', 1571062009, '115.51.8.108'),
(18, 0, 'lry_admin_center', '', '01.jpg', '191014101216366.jpg', '/uploads/201910/14/', 74889, 'jpg', 1, 0, 1, 'lirongyaoper', 1571062336, '115.51.8.108'),
(19, 0, 'index', '', '001.png', '1575725866727144.png', '/uploads/ueditor/image/20191207/', 432047, 'png', 1, 0, 1, 'lirongyaoper', 1575725866, '115.51.8.254'),
(20, 0, 'index', '', '003.png', '1575725929385589.png', '/uploads/ueditor/image/20191207/', 471132, 'png', 1, 0, 1, 'lirongyaoper', 1575725929, '115.51.8.254'),
(21, 0, 'index', '', '002.png', '1575725973446164.png', '/uploads/ueditor/image/20191207/', 201882, 'png', 1, 0, 1, 'lirongyaoper', 1575725973, '115.51.8.254'),
(22, 0, 'index', '', '004.png', '1575725984293747.png', '/uploads/ueditor/image/20191207/', 251425, 'png', 1, 0, 1, 'lirongyaoper', 1575725984, '115.51.8.254'),
(23, 0, 'lry_admin_center', '', '0.jpeg', '191209023947151.jpeg', '/uploads/201912/09/', 174329, 'jpeg', 1, 0, 1, 'lirongyaoper', 1575873587, '115.51.8.195'),
(24, 0, 'index', '', '临床肿瘤学.png', '1576244856940467.png', '/uploads/ueditor/image/20191213/', 266887, 'png', 1, 0, 1, 'lirongyaoper', 1576244856, '115.51.9.175'),
(25, 0, 'index', '', '临床肿瘤学.png', '1576245025480147.png', '/uploads/ueditor/image/20191213/', 266887, 'png', 1, 0, 1, 'lirongyaoper', 1576245025, '115.51.9.175'),
(26, 0, 'index', '', '临床肿瘤学.png', '1576245160430943.png', '/uploads/ueditor/image/20191213/', 266887, 'png', 1, 0, 1, 'lirongyaoper', 1576245160, '115.51.9.175'),
(27, 0, 'lry_admin_center', '', '微信图片_20191215215150.jpg', '191215095302596.jpg', '/uploads/201912/15/', 141164, 'jpg', 1, 0, 1, 'lirongyaoper', 1576417982, '115.51.11.38'),
(28, 0, 'index', '', '微信截图_20191220232815.png', '1576855947328264.png', '/uploads/ueditor/image/20191220/', 435135, 'png', 1, 0, 1, 'lirongyaoper', 1576855947, '115.51.9.118'),
(29, 0, 'index', '', '162780048207340.jpg', '1576855960347437.jpg', '/uploads/ueditor/image/20191220/', 476608, 'jpg', 1, 0, 1, 'lirongyaoper', 1576855960, '115.51.9.118'),
(30, 0, 'index', '', 'wps.jpg', '1577441525129987.jpg', '/uploads/ueditor/image/20191227/', 50853, 'jpg', 1, 0, 1, 'lirongyaoper', 1577441525, '115.51.8.245'),
(31, 0, 'lry_admin_center', '', '微信截图_20191230222314.png', '191230103842313.png', '/uploads/201912/30/', 268757, 'png', 1, 0, 1, 'lirongyaoper', 1577716722, '115.51.8.175'),
(32, 0, 'index', '', '微信图片_20191230221233.png', '1577716833628457.png', '/uploads/ueditor/image/20191230/', 981200, 'png', 1, 0, 1, 'lirongyaoper', 1577716833, '115.51.8.175'),
(33, 0, 'lry_admin_center', '', '191230103842313.png', '200106101355518.png', '/uploads/202001/06/', 268757, 'png', 1, 0, 1, 'lirongyaoper', 1578320035, '115.51.10.59'),
(34, 0, 'lry_admin_center', '', '202001090001.png', '200109104825976.png', '/uploads/202001/09/', 662499, 'png', 1, 0, 1, 'lirongyaoper', 1578581305, '115.51.9.89'),
(35, 0, 'lry_admin_center', '', 'rongyao.png', '200914112524868.png', '/uploads/202009/14/', 827787, 'png', 1, 0, 1, 'lirongyaoper', 1600097124, '115.51.9.213'),
(36, 0, 'admin', '', '200914112524868.png', '200914112557605.png', '/uploads/202009/14/', 823593, 'png', 1, 0, 1, 'lirongyaoper', 1600097157, '115.51.9.213'),
(37, 0, 'index', '', '水电解质酸解.png', '1600273035528916.png', '/uploads/ueditor/image/20200917/', 258790, 'png', 1, 0, 1, 'lirongyaoper', 1600273035, '115.51.11.157'),
(38, 0, 'lry_admin_center', '', 'qiuijng3.jpg', '200917093033729.jpg', '/uploads/202009/17/', 156622, 'jpg', 1, 0, 1, 'lirongyaoper', 1600349433, '115.51.10.107'),
(39, 0, 'index', '', 'qiujing2.jpg', '1600349785187697.jpg', '/uploads/ueditor/image/20200917/', 32627, 'jpg', 1, 0, 1, 'lirongyaoper', 1600349785, '115.51.10.107'),
(40, 0, 'index', '', 'qiujing.jpg', '1600349785195795.jpg', '/uploads/ueditor/image/20200917/', 206859, 'jpg', 1, 0, 1, 'lirongyaoper', 1600349785, '115.51.10.107'),
(41, 0, 'index', '', '动脉血气分析.png', '1600350224200314.png', '/uploads/ueditor/image/20200917/', 97182, 'png', 1, 0, 1, 'lirongyaoper', 1600350224, '115.51.10.107'),
(42, 0, 'lry_admin_center', '', 'ziyou2.jpg', '200918031420924.jpg', '/uploads/202009/18/', 17725, 'jpg', 1, 0, 1, 'lirongyaoper', 1600413260, '115.51.11.59'),
(43, 0, 'index', '', 'ziyou1.jpg', '1600413477128824.jpg', '/uploads/ueditor/image/20200918/', 170870, 'jpg', 1, 0, 1, 'lirongyaoper', 1600413477, '115.51.11.59'),
(44, 0, 'index', '', 'ziyou3.jpg', '1600413530504042.jpg', '/uploads/ueditor/image/20200918/', 22069, 'jpg', 1, 0, 1, 'lirongyaoper', 1600413530, '115.51.11.59'),
(45, 0, 'lry_admin_center', '', 'timg.jpg', '200921090527407.jpg', '/uploads/202009/21/', 114984, 'jpg', 1, 0, 1, 'lirongyaoper', 1600693527, '115.51.11.0'),
(46, 0, 'index', '', '9c46f777jw1f88fj0l74zj218g0qo42y.jpg', '1600693543201223.jpg', '/uploads/ueditor/image/20200921/', 31983, 'jpg', 1, 0, 1, 'lirongyaoper', 1600693543, '115.51.11.0'),
(47, 0, 'index', '', 'idata.png', '1601958493662715.png', '/uploads/ueditor/image/20201006/', 26290, 'png', 1, 0, 1, 'lirongyaoper', 1601958493, '115.51.8.238'),
(48, 0, 'index', '', '图片.png', '1601958729159500.png', '/uploads/ueditor/image/20201006/', 61484, 'png', 1, 0, 1, 'lirongyaoper', 1601958729, '115.51.8.238'),
(49, 0, 'lry_admin_center', '', 'chenboshisuoluetu.png', '201008103046837.png', '/uploads/202010/08/', 224659, 'png', 1, 0, 1, 'lirongyaoper', 1602167446, '115.51.8.251'),
(50, 0, 'index', '', 'chenboshi.jpg', '1602167475138455.jpg', '/uploads/ueditor/image/20201008/', 391905, 'jpg', 1, 0, 1, 'lirongyaoper', 1602167475, '115.51.8.251'),
(51, 0, 'lry_admin_center', '', 'jia.png', '201017113126677.png', '/uploads/202010/17/', 341307, 'png', 1, 0, 1, 'lirongyaoper', 1602948686, '115.51.8.173'),
(52, 0, 'index', '', '20201017_2325.png', '1602948704162226.png', '/uploads/ueditor/image/20201017/', 442459, 'png', 1, 0, 1, 'lirongyaoper', 1602948704, '115.51.8.173'),
(53, 0, 'index', '', '1.png', '1603024305780161.png', '/uploads/ueditor/image/20201018/', 24638, 'png', 1, 0, 1, 'lirongyaoper', 1603024305, '115.51.11.20'),
(54, 0, 'index', '', '2.png', '1603024316151041.png', '/uploads/ueditor/image/20201018/', 35892, 'png', 1, 0, 1, 'lirongyaoper', 1603024316, '115.51.11.20'),
(55, 0, 'index', '', '3.png', '1603024323133751.png', '/uploads/ueditor/image/20201018/', 45993, 'png', 1, 0, 1, 'lirongyaoper', 1603024323, '115.51.11.20'),
(56, 0, 'index', '', 'strstr.png', '1603031039114412.png', '/uploads/ueditor/image/20201018/', 44497, 'png', 1, 0, 1, 'lirongyaoper', 1603031039, '115.51.11.20'),
(57, 0, 'index', '', 'strrchr.png', '1603031054112765.png', '/uploads/ueditor/image/20201018/', 43840, 'png', 1, 0, 1, 'lirongyaoper', 1603031054, '115.51.11.20'),
(58, 0, 'index', '', 'strpos.png', '1603031071124044.png', '/uploads/ueditor/image/20201018/', 85264, 'png', 1, 0, 1, 'lirongyaoper', 1603031071, '115.51.11.20'),
(59, 0, 'index', '', 'strrpos.png', '1603031107836824.png', '/uploads/ueditor/image/20201018/', 85856, 'png', 1, 0, 1, 'lirongyaoper', 1603031107, '115.51.11.20'),
(60, 0, 'index', '', 'strrpos.png', '1603031406407679.png', '/uploads/ueditor/image/20201018/', 85856, 'png', 1, 0, 1, 'lirongyaoper', 1603031406, '115.51.11.20'),
(61, 0, 'index', '', '01.png', '1603539914997498.png', '/uploads/ueditor/image/20201024/', 4081, 'png', 1, 0, 1, 'lirongyaoper', 1603539914, '115.51.11.45'),
(62, 0, 'index', '', '02.png', '1603539936736826.png', '/uploads/ueditor/image/20201024/', 13583, 'png', 1, 0, 1, 'lirongyaoper', 1603539936, '115.51.11.45'),
(63, 0, 'index', '', '03.png', '1603539950188650.png', '/uploads/ueditor/image/20201024/', 13265, 'png', 1, 0, 1, 'lirongyaoper', 1603539950, '115.51.11.45'),
(64, 0, 'index', '', '04.png', '1603539984987569.png', '/uploads/ueditor/image/20201024/', 17866, 'png', 1, 0, 1, 'lirongyaoper', 1603539984, '115.51.11.45'),
(65, 0, 'index', '', '05.png', '1603539995292554.png', '/uploads/ueditor/image/20201024/', 11551, 'png', 1, 0, 1, 'lirongyaoper', 1603539995, '115.51.11.45'),
(66, 0, 'index', '', '20201103_2138.png', '1604583372150776.png', '/uploads/ueditor/image/20201105/', 127685, 'png', 1, 0, 1, 'lirongyaoper', 1604583372, '115.51.10.157'),
(67, 0, 'index', '', 'jia.png', '1604583390184689.png', '/uploads/ueditor/image/20201105/', 207487, 'png', 1, 0, 1, 'lirongyaoper', 1604583390, '115.51.10.157'),
(68, 0, 'lry_admin_center', '', '1111111.png', '201125115419821.png', '/uploads/202011/25/', 72192, 'png', 1, 0, 1, 'lirongyaoper', 1606319659, '115.51.10.179'),
(69, 0, 'index', '', '001.png', '1607358313187664.png', '/uploads/ueditor/image/20201208/', 223044, 'png', 1, 0, 1, 'lirongyaoper', 1607358313, '115.51.8.150'),
(70, 0, 'index', '', '001.png', '1607358355789799.png', '/uploads/ueditor/image/20201208/', 223044, 'png', 1, 0, 1, 'lirongyaoper', 1607358355, '115.51.8.150'),
(71, 0, 'index', '', '002.png', '1607358456107434.png', '/uploads/ueditor/image/20201208/', 49201, 'png', 1, 0, 1, 'lirongyaoper', 1607358456, '115.51.8.150'),
(72, 0, 'index', '', '003.png', '1607358501876024.png', '/uploads/ueditor/image/20201208/', 73075, 'png', 1, 0, 1, 'lirongyaoper', 1607358501, '115.51.8.150'),
(73, 0, 'lry_admin_center', '', '333、.png', '201212102830781.png', '/uploads/202012/12/', 158454, 'png', 1, 0, 1, 'lirongyaoper', 1607783310, '115.51.11.212'),
(74, 0, 'lry_admin_center', '', 'bulie00.png', '201220104717237.png', '/uploads/202012/20/', 56767, 'png', 1, 0, 1, 'lirongyaoper', 1608475637, '115.51.10.67'),
(75, 0, 'index', '', 'bulie01.png', '1608475664117522.png', '/uploads/ueditor/image/20201220/', 550378, 'png', 1, 0, 1, 'lirongyaoper', 1608475664, '115.51.10.67'),
(76, 0, 'index', '', 'bulie02.png', '1608475685542786.png', '/uploads/ueditor/image/20201220/', 872971, 'png', 1, 0, 1, 'lirongyaoper', 1608475685, '115.51.10.67'),
(77, 0, 'index', '', 'bulie03.png', '1608475716117053.png', '/uploads/ueditor/image/20201220/', 771290, 'png', 1, 0, 1, 'lirongyaoper', 1608475716, '115.51.10.67'),
(78, 0, 'lry_admin_center', '', '11111111111111.gif', '210106114312566.gif', '/uploads/202101/06/', 718475, 'gif', 1, 0, 1, 'lirongyaoper', 1609947792, '115.51.9.210'),
(79, 0, 'index', '', '22222222222222222222222222.gif', '1609947996243047.gif', '/uploads/ueditor/image/20210106/', 229607, 'gif', 1, 0, 1, 'lirongyaoper', 1609947996, '115.51.9.210'),
(80, 0, 'index', '', 'simayi.jpg', '1612013903172991.jpg', '/uploads/ueditor/image/20210130/', 136772, 'jpg', 1, 0, 1, 'lirongyaoper', 1612013903, '115.51.11.59'),
(81, 0, 'lry_admin_center', '', 'fengmian.png', '210511114019511.png', '/uploads/202105/11/', 397781, 'png', 1, 0, 1, 'lirongyaoper', 1620747619, '115.51.11.12'),
(82, 0, 'index', '', 'xiujuan.jpg', '1620747646207330.jpg', '/uploads/ueditor/image/20210511/', 556341, 'jpg', 1, 0, 1, 'lirongyaoper', 1620747646, '115.51.11.12'),
(83, 0, 'lry_admin_center', '', 'yuanlaomenglao.png', '210523111307549.png', '/uploads/202105/23/', 149448, 'png', 1, 0, 1, 'lirongyaoper', 1621782787, '115.51.8.180'),
(84, 0, 'index', '', 'wumengchao_01.jpg', '1621783043185613.jpg', '/uploads/ueditor/image/20210523/', 30383, 'jpg', 1, 0, 1, 'lirongyaoper', 1621783043, '115.51.8.180'),
(85, 0, 'index', '', 'yuanlongping_01.jpg', '1621783211104485.jpg', '/uploads/ueditor/image/20210523/', 70894, 'jpg', 1, 0, 1, 'lirongyaoper', 1621783211, '115.51.8.180'),
(86, 0, 'banner', '', 'zhongyizuopin.jpg', '210622110955217.jpg', '/uploads/202106/22/', 217192, 'jpg', 1, 0, 1, 'lirongyaoper', 1624374595, '115.51.9.11'),
(87, 0, 'lry_admin_center', '', '建党100.jpg', '210702120935341.jpg', '/uploads/202107/02/', 113619, 'jpg', 1, 0, 1, 'lirongyaoper', 1625155775, '115.51.9.30'),
(88, 0, 'index', '', '建党100-01.jpg', '1625155793141566.jpg', '/uploads/ueditor/image/20210702/', 48190, 'jpg', 1, 0, 1, 'lirongyaoper', 1625155793, '115.51.9.30'),
(89, 0, 'adver', '', 'lirongyaoper.png', '210801120045269.png', '/uploads/202108/01/', 1117550, 'png', 1, 0, 1, 'lirongyaoper', 1627747245, '115.51.11.206'),
(90, 0, 'lry_admin_center', '', 'fm.png', '210806083014349.png', '/uploads/202108/06/', 297304, 'png', 1, 0, 1, 'lirongyaoper', 1628253014, '115.51.9.75'),
(91, 0, 'index', '', '001.png', '1628253156116110.png', '/uploads/ueditor/image/20210806/', 644196, 'png', 1, 0, 1, 'lirongyaoper', 1628253156, '115.51.9.75'),
(92, 0, 'index', '', '002.png', '1628253253199220.png', '/uploads/ueditor/image/20210806/', 331049, 'png', 1, 0, 1, 'lirongyaoper', 1628253253, '115.51.9.75'),
(93, 0, 'lry_admin_center', '', 'brother_fengmian.png', '210809120623560.png', '/uploads/202108/09/', 70996, 'png', 1, 0, 1, 'lirongyaoper', 1628438783, '115.51.11.107'),
(94, 0, 'index', '', 'brother.png', '1628438925752779.png', '/uploads/ueditor/image/20210809/', 818489, 'png', 1, 0, 1, 'lirongyaoper', 1628438925, '115.51.11.107'),
(95, 0, 'lry_admin_center', '', '20210819002fengmain.png', '210819080934649.png', '/uploads/202108/19/', 44428, 'png', 1, 0, 1, 'lirongyaoper', 1629374974, '39.149.90.202'),
(96, 0, 'index', '', '20210819005.png', '1629375068108821.png', '/uploads/ueditor/image/20210819/', 569372, 'png', 1, 0, 1, 'lirongyaoper', 1629375068, '39.149.90.202'),
(97, 0, 'index', '', '20210819006.png', '1629375092934333.png', '/uploads/ueditor/image/20210819/', 2007493, 'png', 1, 0, 1, 'lirongyaoper', 1629375092, '39.149.90.202'),
(98, 0, 'lry_admin_center', '', 'fengmian.png', '210828084929366.png', '/uploads/202108/28/', 49274, 'png', 1, 0, 1, 'lirongyaoper', 1630154969, '39.149.90.175'),
(99, 0, 'index', '', '01.png', '1630155030111453.png', '/uploads/ueditor/image/20210828/', 2286, 'png', 1, 0, 1, 'lirongyaoper', 1630155030, '39.149.90.175'),
(100, 0, 'index', '', '02.png', '1630155039186790.png', '/uploads/ueditor/image/20210828/', 62896, 'png', 1, 0, 1, 'lirongyaoper', 1630155039, '39.149.90.175'),
(101, 0, 'index', '', '03.png', '1630155047483346.png', '/uploads/ueditor/image/20210828/', 16614, 'png', 1, 0, 1, 'lirongyaoper', 1630155047, '39.149.90.175'),
(102, 0, 'index', '', '04.png', '1630155062146154.png', '/uploads/ueditor/image/20210828/', 5035, 'png', 1, 0, 1, 'lirongyaoper', 1630155062, '39.149.90.175'),
(103, 0, 'index', '', '05.png', '1630155073663974.png', '/uploads/ueditor/image/20210828/', 1443, 'png', 1, 0, 1, 'lirongyaoper', 1630155073, '39.149.90.175'),
(104, 0, 'index', '', '06.png', '1630155083109285.png', '/uploads/ueditor/image/20210828/', 2255, 'png', 1, 0, 1, 'lirongyaoper', 1630155083, '39.149.90.175'),
(105, 0, 'index', '', '07.png', '1630155094438930.png', '/uploads/ueditor/image/20210828/', 2795, 'png', 1, 0, 1, 'lirongyaoper', 1630155094, '39.149.90.175'),
(106, 0, 'index', '', '08.png', '1630155103463544.png', '/uploads/ueditor/image/20210828/', 3802, 'png', 1, 0, 1, 'lirongyaoper', 1630155103, '39.149.90.175'),
(107, 0, 'index', '', '09.png', '1630155113117083.png', '/uploads/ueditor/image/20210828/', 19677, 'png', 1, 0, 1, 'lirongyaoper', 1630155113, '39.149.90.175'),
(108, 0, 'index', '', '10.png', '1630155123197582.png', '/uploads/ueditor/image/20210828/', 53943, 'png', 1, 0, 1, 'lirongyaoper', 1630155123, '39.149.90.175'),
(109, 0, 'index', '', '11.png', '1630155132195969.png', '/uploads/ueditor/image/20210828/', 44924, 'png', 1, 0, 1, 'lirongyaoper', 1630155132, '39.149.90.175'),
(110, 0, 'index', '', '12.png', '1630155143148456.png', '/uploads/ueditor/image/20210828/', 5875, 'png', 1, 0, 1, 'lirongyaoper', 1630155143, '39.149.90.175'),
(111, 0, 'index', '', '13.png', '1630155152207545.png', '/uploads/ueditor/image/20210828/', 2299, 'png', 1, 0, 1, 'lirongyaoper', 1630155152, '39.149.90.175'),
(112, 0, 'index', '', '14.png', '1630155160882414.png', '/uploads/ueditor/image/20210828/', 25880, 'png', 1, 0, 1, 'lirongyaoper', 1630155160, '39.149.90.175'),
(113, 0, 'lry_admin_center', '', 'suoluetu.png', '220503115612227.png', '/uploads/202205/03/', 75952, 'png', 1, 0, 1, 'lirongyaoper', 1651593372, '223.91.37.139'),
(114, 0, 'index', '', 'heying.png', '1651593406297221.png', '/uploads/ueditor/image/20220503/', 307980, 'png', 1, 0, 1, 'lirongyaoper', 1651593406, '223.91.37.139'),
(115, 0, 'index', '', 'heying02.png', '1651593440139370.png', '/uploads/ueditor/image/20220503/', 703788, 'png', 1, 0, 1, 'lirongyaoper', 1651593440, '223.91.37.139'),
(116, 0, 'index', '', 'xiujuan.png', '1651593457173359.png', '/uploads/ueditor/image/20220503/', 736631, 'png', 1, 0, 1, 'lirongyaoper', 1651593457, '223.91.37.139'),
(117, 0, 'lry_admin_center', '', 'slt.jpg', '220511110518259.jpg', '/uploads/202205/11/', 9824, 'jpg', 1, 0, 1, 'lirongyaoper', 1652281518, '39.149.90.135'),
(118, 0, 'index', '', '001.png', '1652281530182891.png', '/uploads/ueditor/image/20220511/', 40961, 'png', 1, 0, 1, 'lirongyaoper', 1652281530, '39.149.90.135'),
(119, 0, 'index', '', '002.png', '1652281576368392.png', '/uploads/ueditor/image/20220511/', 12020, 'png', 1, 0, 1, 'lirongyaoper', 1652281576, '39.149.90.135'),
(120, 0, 'index', '', '003.png', '1652281588353585.png', '/uploads/ueditor/image/20220511/', 46982, 'png', 1, 0, 1, 'lirongyaoper', 1652281588, '39.149.90.135'),
(121, 0, 'index', '', '004.png', '1652281599226320.png', '/uploads/ueditor/image/20220511/', 250343, 'png', 1, 0, 1, 'lirongyaoper', 1652281599, '39.149.90.135'),
(122, 0, 'index', '', '005.png', '1652281611359394.png', '/uploads/ueditor/image/20220511/', 103768, 'png', 1, 0, 1, 'lirongyaoper', 1652281611, '39.149.90.135'),
(123, 0, 'index', '', '006.png', '1652281620211672.png', '/uploads/ueditor/image/20220511/', 71958, 'png', 1, 0, 1, 'lirongyaoper', 1652281620, '39.149.90.135'),
(124, 0, 'lry_admin_center', '', 'thum_feidongmai.png', '250722065111907.png', '/uploads/202507/22/', 196320, 'png', 1, 0, 1, 'lirongyaoper', 1753138271, '115.51.62.231');

-- --------------------------------------------------------

--
-- Table structure for table `lry_banner`
--

CREATE TABLE `lry_banner` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(150) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `listorder` smallint UNSIGNED NOT NULL DEFAULT '0',
  `typeid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '1显示0隐藏'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_banner`
--

INSERT INTO `lry_banner` (`id`, `title`, `image`, `url`, `introduce`, `inputtime`, `listorder`, `typeid`, `status`) VALUES
(1, '荣耀之家', '/uploads/201905/13/190513034418633.jpg', 'https://lirongyaoper.com/forum/', '', 1557733461, 0, 2, 1),
(3, '忠义作品（1）', '/uploads/201905/13/190513034718364.jpg', 'https://lirongyaoper.com/', '', 1557733520, 1, 1, 1),
(4, '忠义作品（3）', '/uploads/201905/13/190513034548545.jpg', 'https://lirongyaoper.com/', '', 1557733550, 3, 1, 1),
(5, '忠义作品（2）', '/uploads/201905/13/190513034617199.jpg', 'https://lirongyaoper.com/', '', 1557733579, 2, 1, 1),
(6, '忠义作品（4）', '/uploads/201905/13/210622110955217.jpg', 'https://lirongyaoper.com', '', 1624374767, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lry_banner_type`
--

CREATE TABLE `lry_banner_type` (
  `tid` int UNSIGNED NOT NULL,
  `name` char(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_banner_type`
--

INSERT INTO `lry_banner_type` (`tid`, `name`) VALUES
(1, '忠义作品'),
(2, '荣耀展示');

-- --------------------------------------------------------

--
-- Table structure for table `lry_category`
--

CREATE TABLE `lry_category` (
  `catid` smallint NOT NULL COMMENT '栏目ID',
  `siteid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `catname` varchar(60) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `modelid` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '模型id',
  `parentid` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '父级id',
  `arrparentid` varchar(255) NOT NULL DEFAULT '' COMMENT '父级路径',
  `arrchildid` mediumtext NOT NULL COMMENT '子栏目id集合',
  `catdir` varchar(50) NOT NULL DEFAULT '' COMMENT '栏目目录',
  `catimg` varchar(150) NOT NULL DEFAULT '' COMMENT '栏目图片',
  `type` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '栏目类型:0普通栏目1单页2外部链接',
  `listorder` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '栏目排序',
  `target` char(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `member_publish` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否会员投稿',
  `display` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '在导航显示',
  `pclink` varchar(100) NOT NULL DEFAULT '' COMMENT '电脑版地址',
  `domain` varchar(100) NOT NULL DEFAULT '' COMMENT '绑定域名',
  `entitle` varchar(80) NOT NULL DEFAULT '' COMMENT '英文标题',
  `subtitle` varchar(60) NOT NULL DEFAULT '' COMMENT '副标题',
  `mobname` varchar(50) NOT NULL DEFAULT '' COMMENT '手机版名称',
  `category_template` varchar(30) NOT NULL DEFAULT '' COMMENT '频道页模板',
  `list_template` varchar(30) NOT NULL DEFAULT '' COMMENT '列表页模板',
  `show_template` varchar(30) NOT NULL DEFAULT '' COMMENT '内容页模板',
  `seo_title` varchar(100) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(200) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `seo_description` varchar(250) NOT NULL DEFAULT '' COMMENT 'SEO描述'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_category`
--

INSERT INTO `lry_category` (`catid`, `siteid`, `catname`, `modelid`, `parentid`, `arrparentid`, `arrchildid`, `catdir`, `catimg`, `type`, `listorder`, `target`, `member_publish`, `display`, `pclink`, `domain`, `entitle`, `subtitle`, `mobname`, `category_template`, `list_template`, `show_template`, `seo_title`, `seo_keywords`, `seo_description`) VALUES
(12, 0, '点滴生活', 1, 0, '0', '12,13,14,21,22', 'diandishenghuo', '', 0, 0, '_self', 0, 1, 'https://lirongyaoper.com/diandishenghuo/', '', '', '', '点滴生活', 'category_article', 'list_article', 'show_article', '', '', ''),
(13, 0, '八拜之交', 1, 12, '0,12', '13', 'babaizhijiao', '', 0, 1, '_self', 0, 1, 'https://lirongyaoper.com/babaizhijiao/', '', '', '', '八拜之交', 'category_article', 'list_article', 'show_article', '', '', ''),
(14, 0, '风云变幻', 1, 12, '0,12', '14', 'fengyunbianhuan', '', 0, 2, '_self', 0, 1, 'https://lirongyaoper.com/fengyunbianhuan/', '', '', '', '风云变幻', 'category_article', 'list_article', 'show_article', '', '', ''),
(6, 0, '医学园地', 1, 0, '0', '6,9,10,16', 'yixueyuandi', '', 0, 1, '_self', 0, 1, 'https://lirongyaoper.com/yixueyuandi/', '', '', '', '医学园地', 'category_article', 'list_article', 'show_article', '', '', ''),
(7, 0, '闲言碎语', 1, 0, '0', '7', 'xianyansuiyu', '', 0, 3, '_self', 0, 1, 'https://lirongyaoper.com/xianyansuiyu/', '', '', '', '闲言碎语', 'category_article', 'list_article', 'show_article', '', '', ''),
(8, 0, '关于自己', 0, 0, '0', '8', 'guanyuziji', '', 1, 4, '_self', 0, 1, 'https://lirongyaoper.com/guanyuziji/', '', '', '', '关于自己', 'category_page', '', '', '', '', ''),
(9, 0, '医学技术', 1, 6, '0,6', '9', 'yixuejishu', '', 0, 0, '_self', 0, 1, 'https://lirongyaoper.com/yixuejishu/', '', '', '', '医学技术', 'category_article', 'list_article', 'show_article', '', '', ''),
(10, 0, '学无止境', 1, 6, '0,6', '10', 'xuewuzhijing', '', 0, 0, '_self', 0, 1, 'https://lirongyaoper.com/xuewuzhijing/', '', '', '', '学无止境', 'category_article', 'list_article', 'show_article', '', '', ''),
(11, 0, '志趣人生', 1, 0, '0', '11,17,18,19,20', 'zhiqurensheng', '', 0, 2, '_self', 0, 1, 'https://lirongyaoper.com/zhiqurensheng/', '', '', '', '志趣人生', 'category_article', 'list_article', 'show_article', '', '', ''),
(16, 0, '科普健康', 1, 6, '0,6', '16', 'kepujiankang', '', 0, 0, '_self', 0, 1, 'https://lirongyaoper.com/kepujiankang/', '', '', '', '科普健康', 'category_article', 'list_article', 'show_article', '', '', ''),
(17, 0, 'PHP相关', 1, 11, '0,11', '17', 'phpxiangguan', '', 0, 0, '_self', 0, 1, 'https://lirongyaoper.com/phpxiangguan/', '', '', '', 'PHP相关', 'category_article', 'list_article', 'show_article', '', '', ''),
(18, 0, '算法数据', 1, 11, '0,11', '18', 'suanfashuju', '', 0, 0, '_self', 0, 1, 'https://lirongyaoper.com/suanfashuju/', '', '', '', '算法数据', 'category_article', 'list_article', 'show_article', '', '', ''),
(19, 0, '操作系统', 1, 11, '0,11', '19', 'caozuoxitong', '', 0, 0, '_self', 0, 1, 'https://lirongyaoper.com/caozuoxitong/', '', '', '', '操作系统', 'category_article', 'list_article', 'show_article', '', '', ''),
(20, 0, '使用工具', 1, 11, '0,11', '20', 'shiyonggongju', '', 0, 0, '_self', 0, 1, 'https://lirongyaoper.com/shiyonggongju/', '', '', '', '使用工具', 'category_article', 'list_article', 'show_article', '', '', ''),
(22, 0, '养育之恩', 1, 12, '0,12', '22', 'yangyuzhien', '', 0, 0, '_self', 0, 1, 'https://lirongyaoper.com/yangyuzhien/', '', '', '', '养育之恩', 'category_article', 'list_article', 'show_article', '', '', ''),
(21, 0, '故剑情深', 1, 12, '0,12', '21', 'gujianqingshen', '', 0, 0, '_self', 0, 1, 'https://lirongyaoper.com/gujianqingshen/', '', '', '', '故剑情深', 'category_article', 'list_article', 'show_article', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lry_collection_content`
--

CREATE TABLE `lry_collection_content` (
  `id` int UNSIGNED NOT NULL,
  `nodeid` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:未采集,1:已采集,2:已导入',
  `url` char(255) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_collection_node`
--

CREATE TABLE `lry_collection_node` (
  `nodeid` smallint UNSIGNED NOT NULL COMMENT '采集节点ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '节点名称',
  `lastdate` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后采集时间',
  `sourcecharset` varchar(8) NOT NULL DEFAULT '' COMMENT '采集点字符集',
  `sourcetype` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '网址类型:1序列网址,2单页',
  `urlpage` text NOT NULL COMMENT '采集地址',
  `pagesize_start` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '页码开始',
  `pagesize_end` mediumint UNSIGNED NOT NULL DEFAULT '0' COMMENT '页码结束',
  `par_num` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '每次增加数',
  `url_contain` char(100) NOT NULL DEFAULT '' COMMENT '网址中必须包含',
  `url_except` char(100) NOT NULL DEFAULT '' COMMENT '网址中不能包含',
  `url_start` char(100) NOT NULL DEFAULT '' COMMENT '网址开始',
  `url_end` char(100) NOT NULL DEFAULT '' COMMENT '网址结束',
  `title_rule` char(100) NOT NULL DEFAULT '' COMMENT '标题采集规则',
  `title_html_rule` text NOT NULL COMMENT '标题过滤规则',
  `time_rule` char(100) NOT NULL DEFAULT '' COMMENT '时间采集规则',
  `time_html_rule` text COMMENT '时间过滤规则',
  `content_rule` char(100) NOT NULL DEFAULT '' COMMENT '内容采集规则',
  `content_html_rule` text COMMENT '内容过滤规则',
  `down_attachment` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否下载图片',
  `watermark` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '图片加水印',
  `coll_order` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '导入顺序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_comment`
--

CREATE TABLE `lry_comment` (
  `id` int UNSIGNED NOT NULL,
  `siteid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `commentid` char(30) NOT NULL DEFAULT '',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `userpic` varchar(100) NOT NULL DEFAULT '',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评论状态{0:未审核,1:通过审核}',
  `reply` mediumint UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为回复'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_comment`
--

INSERT INTO `lry_comment` (`id`, `siteid`, `commentid`, `userid`, `username`, `userpic`, `inputtime`, `ip`, `content`, `status`, `reply`) VALUES
(1, 0, '1_7_16', 2, 'qinxingsong123', 'https://lirongyaoper.com/common/static/images/default.gif', 1559052945, '59.109.118.226', '兄弟一路艰辛，终于守得云开见月明，祝耀哥此后前程锦绣，再创辉煌！', 1, 0),
(3, 0, '1_7_16', 1, 'lirongyaoper', '/uploads/201905/14/190514045743848.jpg', 1559056654, '122.206.190.109', '<span class=\"original_comment\"><a href=\"javascript:void(0);\" class=\"user_name\" rel=\"nofollow\">qinxingsong123</a> : 兄弟一路艰辛，终于守得云开见月明，祝耀哥此后前程锦绣，再创辉煌！ </span><a href=\"javascript:void(0);\" class=\"user_name\" rel=\"nofollow\">lirongyaoper</a>：好的，我们一起努力', 1, 1),
(7, 0, '1_13_21', 0, '荣耀历程--一个有激情，有梦想，不断探索未知世界的热血青年网', '', 1572362697, '111.196.243.148', '666666\r\n', 1, 0),
(8, 0, '1_7_30', 0, '荣耀历程--一个有激情，有梦想，不断探索未知世界的热血青年网', '', 1583155220, '125.42.166.163', '哈哈  翻看微信收藏翻到了你的博客  制作的很棒哦  ', 1, 0),
(9, 0, '1_13_21', 0, '网友', '', 1601732608, '115.51.10.4', '情深义重', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lry_comment_data`
--

CREATE TABLE `lry_comment_data` (
  `commentid` char(30) NOT NULL DEFAULT '',
  `siteid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` char(255) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `total` int UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `modelid` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_comment_data`
--

INSERT INTO `lry_comment_data` (`commentid`, `siteid`, `title`, `url`, `total`, `catid`, `modelid`) VALUES
('1_7_16', 0, '毕业季的告白', 'https://lirongyaoper.com/xianyansuiyu/16.html', 4, 7, 1),
('1_13_21', 0, '落地兄', 'https://lirongyaoper.com/jiayushijie/21.html', 2, 13, 1),
('1_7_30', 0, '别在最好的年纪，活得太安逸', '/xianyansuiyu/30.html', 1, 7, 1),
('1_7_33', 0, '放弃“梦想”，追逐远方', '/xianyansuiyu/33.html', 0, 7, 1),
('1_21_60', 0, '新起点，新征程', 'https://lirongyaoper.com/gujianqingshen/60.html', 0, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lry_config`
--

CREATE TABLE `lry_config` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '配置说明',
  `value` text NOT NULL COMMENT '配置值',
  `fieldtype` varchar(20) NOT NULL DEFAULT '' COMMENT '字段类型',
  `setting` text COMMENT '字段设置',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_config`
--

INSERT INTO `lry_config` (`id`, `name`, `type`, `title`, `value`, `fieldtype`, `setting`, `status`) VALUES
(1, 'site_name', 0, '站点名称', '荣耀历程--一个有激情，有梦想，不断探索未知世界的热血青年', '', '', 1),
(2, 'site_url', 0, '站点根网址', 'https://lirongyaoper.com/', '', '', 1),
(3, 'site_keyword', 0, '站点关键字', '个人博客,精彩人生', '', '', 1),
(4, 'site_description', 0, '站点描述', '这是来自一个编程爱好者的个人博客，他热爱生活，热爱工作与学习，愿陪大家一起走过每一个春夏秋冬！', '', '', 1),
(5, 'site_copyright', 0, '版权信息', '版权归属 荣耀小科技 © 2014-2026', '', '', 1),
(6, 'site_filing', 0, '站点备案号', '豫ICP备17033830号-1', '', '', 1),
(7, 'site_code', 0, '统计代码', '', '', '', 1),
(8, 'site_theme', 0, '站点模板主题', 'rongyao', '', '', 1),
(9, 'site_logo', 0, '站点logo', '', '', '', 1),
(10, 'url_mode', 0, '前台URL模式', '1', '', '', 1),
(11, 'is_words', 0, '是否开启前端留言功能', '1', '', '', 1),
(12, 'upload_maxsize', 0, '文件上传最大限制', '2048', '', '', 1),
(13, 'upload_types', 0, '允许上传附件类型', 'zip|rar|ppt|doc|xls', '', '', 1),
(14, 'upload_image_types', 0, '允许上传图片类型', 'png|jpg|jpeg|gif', '', '', 1),
(15, 'watermark_enable', 0, '是否开启图片水印', '1', '', '', 1),
(16, 'watermark_name', 0, '水印图片名称', 'mark.png', '', '', 1),
(17, 'watermark_position', 0, '水印的位置', '7', '', '', 1),
(18, 'mail_server', 1, 'SMTP服务器', 'ssl://smtp.163.com', '', '', 1),
(19, 'mail_port', 1, 'SMTP服务器端口', '465', '', '', 1),
(20, 'mail_from', 1, 'SMTP服务器的用户邮箱', 'lirongyaoper@163.com', '', '', 1),
(21, 'mail_auth', 1, 'AUTH LOGIN验证', '1', '', '', 1),
(22, 'mail_user', 1, 'SMTP服务器的用户帐号', 'lirongyaoper@163.com', '', '', 1),
(23, 'mail_pass', 1, 'SMTP服务器的用户密码', 'RUj8fgZHNpxQFGxy', '', '', 1),
(24, 'mail_inbox', 1, '收件邮箱地址', 'lirongyaoper@163.com', '', '', 1),
(25, 'admin_log', 2, '启用后台管理操作日志', '0', '', '', 1),
(26, 'admin_prohibit_ip', 2, '禁止登录后台的IP', '95.72.*.*,46.161.11.199', '', '', 1),
(27, 'prohibit_words', 2, '屏蔽词', '她妈|它妈|他妈|你妈|去死|贱人', '', '', 1),
(28, 'comment_check', 2, '是否开启评论审核', '1', '', '', 1),
(29, 'comment_tourist', 2, '是否允许游客评论', '0', '', '', 1),
(30, 'is_link', 2, '允许用户申请友情链接', '1', '', '', 1),
(31, 'member_register', 3, '是否开启会员注册', '1', '', '', 1),
(32, 'member_email', 3, '新会员注册是否需要邮件验证', '1', '', '', 1),
(33, 'member_check', 3, '新会员注册是否需要管理员审核', '1', '', '', 1),
(34, 'member_point', 3, '新会员默认积分', '20', '', '', 1),
(35, 'member_yzm', 3, '是否开启会员登录验证码', '0', '', '', 1),
(36, 'rmb_point_rate', 3, '1元人民币购买积分数量', '10', '', '', 1),
(37, 'login_point', 3, '每日登录奖励积分', '1', '', '', 1),
(38, 'comment_point', 3, '发布评论奖励积分', '1', '', '', 1),
(39, 'publish_point', 3, '投稿奖励积分', '3', '', '', 1),
(40, 'qq_app_id', 3, 'QQ App ID', '101905949', '', '', 1),
(41, 'qq_app_key', 3, 'QQ App key', 'ad5393b046c2cd323c8581734e505c9f', '', '', 1),
(42, 'weibo_key', 4, '微博登录App Key', '', '', '', 1),
(43, 'weibo_secret', 4, '微博登录App Secret', '', '', '', 1),
(44, 'wx_appid', 4, '微信开发者ID', 'wx5a85749dffa38259', '', '', 1),
(45, 'wx_secret', 4, '微信开发者密码', '8e2ebe8e3f72039d7344e6ea52e4ddbc', '', '', 1),
(46, 'wx_token', 4, '微信Token签名', 'tlbra8x474k', '', '', 1),
(47, 'wx_encodingaeskey', 4, '微信EncodingAESKey', 'HkMrjxv5ih3mNujRPh7uGhyMIpMcug8qAwGTuSTDsgX', '', '', 1),
(48, 'wx_relation_model', 4, '微信关联模型', 'article', '', '', 1),
(49, 'baidu_push_token', 0, '百度推送token', '', '', '', 1),
(50, 'thumb_width', 2, '缩略图默认宽度', '500', '', '', 1),
(51, 'thumb_height', 2, '缩略图默认高度', '300', '', '', 1),
(52, 'site_seo_division', 0, '站点标题分隔符', '_', '', '', 1),
(53, 'keyword_link', 2, '是否启用关键字替换', '0', '', '', 1),
(54, 'keyword_replacenum', 2, '关键字替换次数', '1', '', '', 1),
(55, 'error_log_save', 2, '是否保存系统错误日志', '1', '', '', 1),
(56, 'comment_code', 2, '是否开启评论验证码', '0', '', '', 1),
(57, 'site_wap_open', 0, '是否启用手机站点', '0', '', '', 1),
(58, 'site_wap_theme', 0, 'WAP端模板风格', 'default', '', '', 1),
(59, 'member_theme', 3, '会员中心模板风格', 'default', '', '', 1),
(60, 'att_relation_content', 1, '是否开启内容附件关联', '0', '', '', 1),
(61, 'site_seo_suffix', 0, '站点SEO后缀', '', '', '', 1),
(62, 'site_security_number', 0, '公安备案号', '', '', ' ', 1),
(63, 'words_code', 3, '是否开启留言验证码', '1', '', '', 1),
(64, 'watermark_minwidth', 2, '添加水印最小宽度', '300', '', '', 1),
(65, 'watermark_minheight', 2, '添加水印最小高度', '300', '', '', 1),
(66, 'auto_down_imag', 2, '自动下载远程图片', '1', '', '', 1),
(67, 'down_ignore_domain', 2, '下载远程图片忽略的域名', '', '', '', 1),
(68, 'content_click_random', 2, '内容默认点击量', '1', '', '', 1),
(69, 'blacklist_ip', 3, ' 前端IP黑名单', '', '', '', 1),
(70, 'advertise', 99, '首页广告位', '免费又好用的CMS建站系统，就选RyPHP!', 'textarea', '', 1),
(71, 'about', 99, '作者微信', '/uploads/201905/21/190521123856840.jpg', 'image', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lry_download`
--

CREATE TABLE `lry_download` (
  `id` int UNSIGNED NOT NULL,
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(180) NOT NULL DEFAULT '',
  `color` char(9) NOT NULL DEFAULT '',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int UNSIGNED NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `click` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `copyfrom` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(150) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `flag` varchar(12) NOT NULL DEFAULT '' COMMENT '1置顶,2头条,3特荐,4推荐,5热点,6幻灯,7跳转',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `issystem` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `listorder` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `groupids_view` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `readpoint` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '阅读收费',
  `paytype` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '收费类型',
  `is_push` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否百度推送',
  `down_url` varchar(200) NOT NULL DEFAULT '' COMMENT '下载地址',
  `copytype` varchar(30) NOT NULL DEFAULT '' COMMENT '授权形式',
  `systems` varchar(100) NOT NULL DEFAULT '' COMMENT '平台',
  `language` varchar(30) NOT NULL DEFAULT '' COMMENT '语言',
  `version` varchar(30) NOT NULL DEFAULT '' COMMENT '版本',
  `filesize` varchar(10) NOT NULL DEFAULT '' COMMENT '文件大小',
  `classtype` varchar(30) NOT NULL DEFAULT '' COMMENT '软件类型',
  `stars` varchar(10) NOT NULL DEFAULT '' COMMENT '评分等级'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_favorite`
--

CREATE TABLE `lry_favorite` (
  `id` int UNSIGNED NOT NULL,
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL DEFAULT '',
  `url` char(100) NOT NULL DEFAULT '',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_favorite`
--

INSERT INTO `lry_favorite` (`id`, `userid`, `title`, `url`, `inputtime`) VALUES
(1, 1, '南阳', 'https://lirongyaoper.com/forum/index/show/id/22.html', 1559484139),
(2, 3, '南阳', 'https://lirongyaoper.com/forum/index/show/id/22.html', 1559518079),
(3, 1, '荣耀', 'https://lirongyaoper.com/forum/index/show/id/15.html', 1559969326),
(4, 1, '临床肿瘤学', 'https://lirongyaoper.com/forum/index/show/id/29.html', 1576245120);

-- --------------------------------------------------------

--
-- Table structure for table `lry_forum_attitude`
--

CREATE TABLE `lry_forum_attitude` (
  `id` int UNSIGNED NOT NULL,
  `forumid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '帖子id',
  `commentid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论id',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `type` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1顶0踩',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='论坛顶踩表';

-- --------------------------------------------------------

--
-- Table structure for table `lry_forum_comment`
--

CREATE TABLE `lry_forum_comment` (
  `id` int UNSIGNED NOT NULL,
  `forumid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '帖子id',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `userpic` varchar(100) NOT NULL DEFAULT '',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评论状态{0:未审核,1:通过审核}',
  `reply` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为回复',
  `praise` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='论坛帖子评论';

--
-- Dumping data for table `lry_forum_comment`
--

INSERT INTO `lry_forum_comment` (`id`, `forumid`, `userid`, `username`, `userpic`, `inputtime`, `ip`, `content`, `status`, `reply`, `praise`) VALUES
(3, 22, 1, 'lirongyaoper', '/uploads/201905/14/190514045743848.jpg', 1558348644, '106.34.46.6', '兄弟，目标可，梦想大;小南阳，大作为！', 1, 0, 0),
(6, 22, 1, 'lirongyaoper', '/uploads/201905/14/190514045743848.jpg', 1599999842, '115.51.11.73', '超帆兄，加油', 1, 0, 3),
(8, 10, 27, 'cxjlt', '', 1600440418, '115.51.9.194', '祝福，', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lry_forum_config`
--

CREATE TABLE `lry_forum_config` (
  `id` mediumint UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '配置名称',
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '配置说明',
  `value` text NOT NULL COMMENT '配置值',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='论坛配置表';

--
-- Dumping data for table `lry_forum_config`
--

INSERT INTO `lry_forum_config` (`id`, `name`, `title`, `value`, `status`) VALUES
(1, 'bbs_name', '论坛名称', '荣耀论坛', 1),
(2, 'bbs_keyword', '论坛关键字', '荣耀论坛，一个温馨而有爱的家', 1),
(3, 'bbs_description', '论坛描述', '', 1),
(4, 'posts_open', '帖子开关', '1', 1),
(5, 'posts_day_limit', '每个用户每日发帖数量', '10', 1),
(6, 'posts_point', '发帖奖励积分', '3', 1),
(7, 'posts_check', '发帖是否审核', '0', 1),
(8, 'posts_comment_check', '帖子评论是否审核', '0', 1),
(9, 'posts_comment_limit', '帖子评论间隔时间限制', '10', 1),
(10, 'posts_comment_point', '帖子评论奖励积分', '1', 1),
(11, 'posts_comment_point_limit', '帖子评论每日奖励次数', '5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lry_forum_plate`
--

CREATE TABLE `lry_forum_plate` (
  `plate_id` tinyint UNSIGNED NOT NULL,
  `plate_name` varchar(60) NOT NULL DEFAULT '' COMMENT '板块名称',
  `listorder` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序',
  `groupids_view` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `groupids_add` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '发布权限',
  `keywords` varchar(120) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(200) NOT NULL DEFAULT '' COMMENT '描述'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='论坛板块表';

--
-- Dumping data for table `lry_forum_plate`
--

INSERT INTO `lry_forum_plate` (`plate_id`, `plate_name`, `listorder`, `groupids_view`, `groupids_add`, `keywords`, `description`) VALUES
(1, '胡说八道', 0, 0, 0, '', '在这里，在法律允许的范围内，我们可以畅所欲言！'),
(2, '医学园地', 0, 0, 0, '', '作为医生，我们是专业的！'),
(3, '编程世界', 0, 0, 0, '', '编程的世界里，我们一起成长……'),
(4, '问题求助', 0, 0, 0, '', ''),
(5, '资源共享', 0, 0, 0, '', '我们分享珍贵、好用的软件或者电影资源'),
(6, '感悟感知', 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lry_forum_post`
--

CREATE TABLE `lry_forum_post` (
  `id` int UNSIGNED NOT NULL,
  `plate_id` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '板块ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int UNSIGNED DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `click` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '1正常0隐藏',
  `attachment` varchar(150) NOT NULL DEFAULT '' COMMENT '附件',
  `point` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '下载收费',
  `paytype` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1积分,2金钱',
  `tags` varchar(15) NOT NULL DEFAULT '' COMMENT '1置顶2精帖3推荐',
  `is_comment` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否允许评论',
  `comment` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论次数',
  `praise` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '赞次数',
  `tread` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '踩次数',
  `groupids_view` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `content` text COMMENT '内容'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='论坛帖子表';

--
-- Dumping data for table `lry_forum_post`
--

INSERT INTO `lry_forum_post` (`id`, `plate_id`, `title`, `userid`, `username`, `inputtime`, `updatetime`, `keywords`, `ip`, `click`, `status`, `attachment`, `point`, `paytype`, `tags`, `is_comment`, `comment`, `praise`, `tread`, `groupids_view`, `content`) VALUES
(22, 1, '南阳', 3, 'huchaofan', 1558346315, 1558346315, '南阳市第一人民医院', '122.206.190.59', 2504, 1, '', 0, 1, '', 1, 2, 0, 0, 0, '<p>6月份回去上班，努力工作，泡妞、学习两不误<br/></p>'),
(10, 1, '大家好，这是第一条论坛', 1, 'lirongyaoper', 1557824794, 1557824794, '', '122.206.190.16', 1820, 1, '', 0, 1, '1', 1, 1, 0, 0, 0, '<p>亲爱的朋友们，荣耀论坛与今天正式上线啦，欢迎大家的光临。在这里，我们可以畅所欲言，也可以吐露心声。如果您遇到一些问题，可以发帖到上面，朋友们看到后会帮您想办法、出主意；如果您有啥不开心的事儿，也可以在这里诉说，大家一块陪您度过那些难过的时光；当然，如果您乐意，开心的事儿也尽情分享，大伙儿一起为您送上祝福！</p>'),
(15, 1, '荣耀', 5, 'Thebest23', 1558343620, 1558343620, '宿舍', '117.136.44.154', 1687, 1, '', 0, 1, '', 1, 0, 0, 0, 0, '<p>武磊官宣加盟西班牙人队，在得知消息的第一时间之后，球迷们考虑的可能就是武磊在西班牙人队能够有怎样的地位和上场时间了。</p><p><br/></p><p>关于武磊的实力如何，分析其实比较多，能否适应欧洲节奏等等问题我们本篇文章都不考虑。本文将尽量站在西班牙人队的视角，排除武磊的国籍对我们的判断影响，去分析西班牙人队是否真的需要在前锋位置上引入武磊。</p>'),
(27, 5, '万能办公软件', 1, 'lirongyaoper', 1560265717, 1560265717, '', '122.206.190.7', 1856, 1, '', 0, 1, '', 1, 0, 0, 0, 0, '<h2>小小工具箱，几乎满足各种办公需求</h2><p>包含60+个无任何广告及插件的办公小工具，所有的小工具无需安装，直接加载启动，从此省去到处寻找工具、安装及卸载的麻烦。<span style=\"color:#f58c5d; font-weight:bold\">本软件完全免费，无论个人还是企业，无需注册无VIP。</span></p><p><span style=\"color:#f58c5d; font-weight:bold\"></span></p><div class=\"home-fea-content\"><h2>1.格式转换工具套件</h2><p>包含一系列万能格式转换工具，支持所有视频、音频、图片、文档等类型的格式转换。</p></div><p><span style=\"color:#f58c5d; font-weight:bold\"></span></p><div class=\"home-fea-content\"><h2>2.图片编辑工具套件</h2><p>本套件包含了办公常用的图片编辑或处理小工具。</p></div><div class=\"home-fea-content\"><h2>3.识别工具套件</h2><p>包括图像识别工具、PDF文档识别工具、屏幕识别工具等。</p></div><div class=\"home-fea-content\"><h2>4.屏幕录制工具套件</h2><p>满足录制网络课程、操作教程、游戏讲解等，适合个人、商务、教育各行业屏幕录制需要。</p></div><div class=\"home-fea-content\"><h2>5.文件处理工具套件</h2><p>整合一系列好用的文件处理工具：文件急速复制工具，校验工具，数据恢复工具和文件比较工具。</p></div><div class=\"home-fea-content\"><h2>6.阅读器</h2><p>本套件包含图片查看器、PDF阅读器等工具，支持对图像/文件内容进行简单编辑，方便标记，是办公的好助手。</p></div><div class=\"home-fea-content\"><h2>7.教学办公工具套件</h2><p>它是教师和演讲者的好帮手，使电脑屏幕直接成为一块可任意书写的黑板，适用于视频录制、文稿演示时的标记、涂鸦等。</p></div><div class=\"home-fea-content\"><h2>8.系统安全工具套件</h2><p>检测硬盘，U盘，存储卡及其它可移动磁盘的读取及写入速率；清除上网记录和系统垃圾；快速整理磁盘、文件夹；以及保护电脑免受病毒感染。</p></div><p><br/></p><p>下载链接：<a href=\"https://pan.baidu.com/s/1JBtohCHW2RNP06AG5aag3g\" _src=\"https://pan.baidu.com/s/1JBtohCHW2RNP06AG5aag3g\">https://pan.baidu.com/s/1JBtohCHW2RNP06AG5aag3g</a> 密码： gcik</p><p><span style=\"font-size: 24px;\"><strong>具体功能详看</strong></span><a href=\"http://www.wofficebox.com/product-features/\" target=\"_blank\" style=\"font-size: 24px; text-decoration: underline;\"><span style=\"font-size: 24px;\"><strong>更多功能</strong></span></a><br/></p>'),
(28, 2, '临床医师必备顶级工具书丨《实用内科学》《实用外科学》最新版', 1, 'lirongyaoper', 1575726159, 1575726159, '内外科工具书', '115.51.8.254', 2193, 1, '', 0, 1, '', 1, 0, 0, 0, 0, '<p>《实用内科学》首版自1952年出版，至今已有65年的历史，是国内公认的内科学经典著作，系统、权威、科学、实用，为我国临床医生必备的重要工具书，始终坚持每四年修订一版，目前已修订至第15版。本书是新中国成立以来国内影响较大和版次较多的大型临床医学专著，是中国医学界一部畅销65年不衰的传世精品专著，是中国内科学专业发展的见证者、记录者，有着深厚的历史积淀，为培养、造就我国几代临床医师作出了不可磨灭的贡献。<span style=\"color: rgb(192, 0, 0);\"><strong><span style=\"font-size: 18px;\">下载链接：https://pan.baidu.com/s/1gyYpjbIKYCmjwHlxGkUBjQ <br/>提取码：3mci</span></strong></span></p><p><span style=\"max-width: 100%;font-size: 15px;box-sizing: border-box !important;overflow-wrap: break-word !important;\">《实用外科学上下册》复旦大学上海医学院外科学各临床专业教授共同执笔编写的一部综合性临床外科学高级参考书。自1992年首版问世以来已有25年的历史。《实用外科学》（第4版）仍以实用性为写作指导思想，撰写宗旨是注重临床实践、注重实际需要和注重工作实用。本书所述的理念及观点反映了近2～3年内国内外学者的共识，在介绍诊断和治疗方面，汇集了当前国内各主要教学医院所普遍采用的方法及手段，作者还总结在长期临床工作中已得到验证的成熟经验，供读者借鉴。</span><span style=\"font-size: 18px; color: rgb(192, 0, 0);\"><strong>下载链接：https://pan.baidu.com/s/1KJRxd7QXeu9BNlxJWucwzw <br/>提取码：ch7n</strong></span></p><p><img src=\"/uploads/ueditor/image/20191207/1575725866727144.png\" title=\"临床医师必备顶级工具书丨《实用内科学》《实用外科学》最新版\" alt=\"临床医师必备顶级工具书丨《实用内科学》《实用外科学》最新版\"/><img src=\"/uploads/ueditor/image/20191207/1575725929385589.png\" title=\"临床医师必备顶级工具书丨《实用内科学》《实用外科学》最新版\" alt=\"临床医师必备顶级工具书丨《实用内科学》《实用外科学》最新版\"/><img src=\"/uploads/ueditor/image/20191207/1575725973446164.png\" title=\"临床医师必备顶级工具书丨《实用内科学》《实用外科学》最新版\" alt=\"临床医师必备顶级工具书丨《实用内科学》《实用外科学》最新版\"/><img src=\"/uploads/ueditor/image/20191207/1575725984293747.png\" title=\"临床医师必备顶级工具书丨《实用内科学》《实用外科学》最新版\" alt=\"临床医师必备顶级工具书丨《实用内科学》《实用外科学》最新版\"/></p><p><br/></p><p><br/></p>'),
(29, 2, '临床肿瘤学', 1, 'lirongyaoper', 1576244880, 1576245174, '肿瘤学 第5版', '115.51.9.175', 2052, 1, '', 0, 1, '', 1, 0, 0, 0, 0, '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本书是一部国际经典的肿瘤专业参考书，对肿瘤的*新研究和临床应用现状进行了详细阐述。全书分三大部分，DI一部分主要着眼于临床肿瘤学的科学基础，对癌症的生物学、发生和诊断、癌症的预防和治疗及癌症的相关研究进展进行了详细的介绍；第二部分对癌症治疗和治疗中的问题、代谢及癌症副综合征、癌症局部效应和转移、癌症治疗导致的并发症、癌症特殊人群等各种问题进行了系统讲解；第三部分是各论，详细讲解全身各种肿瘤的诊断、治疗。本书强调多学科综合治疗的理念，适合肿瘤科及临床各相关学科医生及肿瘤学研究人员阅读学习，是肿瘤学专业人员必备的参考书。</p><p><img src=\"/uploads/ueditor/image/20191213/1576245160430943.png\" title=\"临床肿瘤学\" alt=\"临床肿瘤学\"/></p><p>高清电子版链接：<a href=\"https://pan.baidu.com/s/1aBQ8VjD2K5fGDzLNjrJQFg\" _src=\"https://pan.baidu.com/s/1aBQ8VjD2K5fGDzLNjrJQFg\">https://pan.baidu.com/s/1aBQ8VjD2K5fGDzLNjrJQFg</a><br/></p><p>提取码：oz2h</p><p><br/></p>'),
(30, 5, 'Photoshop 2020', 1, 'lirongyaoper', 1576507459, 1576507459, 'ps最新版', '115.51.8.81', 1800, 1, '', 0, 1, '', 1, 0, 0, 0, 0, '<p>【软件简介】：Photoshop主要处理以像素所构成的数字图像。使用其众多的编修与绘图工具，可以有效地进行图片编辑工作。PS有很多功能，在图像、图形、文字、视频、出版等各方面都有涉及。<br/>【Photoshop 2020新增功能】： 1、ipad和云文档 2、预设改进 3、新对象选择工具 4、转换行为一致 5、改进的属性面板 6、智能对到图层 7、增强的转换变形。</p><p>【软件下载链接】：链接：https://pan.baidu.com/s/1-70D43r1ClSSxzji-d1ROw 提取码：sk1k</p>'),
(31, 2, '古德曼 吉尔曼治疗学的药理学基础 第12版_（美）布鲁顿主编 金有豫，李大魁主译_2016年', 1, 'lirongyaoper', 1576856063, 1576856063, '', '115.51.9.118', 3128, 1, '', 0, 1, '', 1, 0, 0, 0, 0, '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本书英文原版由美国McGraw-Hill公司邀请国际著名药理学家Joel　G.　Hardman和Lee　E.　Limbird主编，来自<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%93%88%E4%BD%9B\">哈佛</a>、霍普金斯等几十所美国著名医学院和药学院的90多位资深教授参与了编写。自1941年首次出版以来，至今已历经九次改版，在国际上享有很高的知名度。中文版由我国著名药理学家金有豫教授主持翻译，译者来自国内各大医药院校。</p><p><img src=\"/uploads/ueditor/image/20191220/1576855947328264.png\" title=\"古德曼 吉尔曼治疗学的药理学基础 第12版_（美）布鲁顿主编 金有豫，李大魁主译_2016年\" alt=\"古德曼 吉尔曼治疗学的药理学基础 第12版_（美）布鲁顿主编 金有豫，李大魁主译_2016年\"/></p><p>&nbsp;&nbsp; &nbsp;&nbsp; 全书分16篇共68章，分别对药理研究和治疗原理，拟神经递质和作用于受体的药物、作用于中枢神经系统的药物、抗炎症药物、心血管肾病药物、治疗胃肠道疾病的药物、抗寄生虫药物、抗生素、微生素、抗肿瘤药物、调节免疫功能的药物以及治疗血液病、内分泌疾病、皮肤病、眼科疾病药物的化学结构、药理作用机制、生物代谢、常用剂型的药效动力学、治疗效果、适应证和禁忌证、毒副作用进行了全面系统的总结，详细地介绍了药理学研究的现状和最新理论，各章还对药理学研究的未来进行了展望，并有专门的章节介绍基因研究和毒理学研究的现状。</p><p><br/></p><p>下载链接：链接：<strong><span style=\"color: rgb(255, 0, 0);\"><em>https://pan.baidu.com/s/1IzDoYZwMO6qLRjJ69lzx0w</em></span></strong><span style=\"color: rgb(255, 0, 0);\"><em>&nbsp;</em></span>&nbsp; 提取码：<strong><span style=\"color: rgb(255, 0, 0);\">xu6q</span></strong></p>'),
(32, 5, '专业版wps', 1, 'lirongyaoper', 1577441656, 1577441656, 'wps', '115.51.8.245', 1926, 1, '', 0, 1, '', 1, 0, 0, 0, 0, '<p>这是一款适用于手机（安卓）的专业版wps软件。功能强大，无广告。</p><p>软件链接：<a href=\"https://pan.baidu.com/s/1Jj0qD-xkGDo-MTIghI2Qsg\" target=\"_blank\">wps专业版</a> &nbsp; 提取码：hq52</p><p>安装步骤：1.安装后首次打开软的时候会提示“免费试用30天”，此时你点击 “ 产品密匙激活”输入密钥就可以了。</p><p>专业版激活码：694BF YUDBG EAR69 BPRGB ATQXH</p><p>功能如下：<img src=\"/uploads/ueditor/image/20191227/1577441525129987.jpg\" title=\"专业版wps\" alt=\"专业版wps\"/></p>'),
(33, 1, '有一种悲哀--叫做医生', 1, 'lirongyaoper', 1599666201, 1599666201, '', '127.0.0.1', 1541, 1, '', 0, 1, '', 1, 0, 0, 0, 0, '<p>&nbsp;&nbsp;&nbsp;&nbsp;保护好了别人的健康，自己却伤痕累累<br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;江湖本善，人性险恶<br/></p>'),
(34, 2, '水、电解质和酸碱平衡紊乱：临床评估与管理（原书第2版）', 1, 'lirongyaoper', 1600273410, 1600273410, '', '115.51.11.157', 2090, 1, '', 0, 1, '', 1, 0, 0, 0, 0, '<p><img src=\"/uploads/ueditor/image/20200917/1600273035528916.png\" title=\"水、电解质和酸碱平衡紊乱：临床评估与管理（原书第2版）\" alt=\"水、电解质和酸碱平衡紊乱：临床评估与管理（原书第2版）\"/></p><p><br/></p><p>&nbsp; &nbsp; &nbsp; <a href=\"https://pan.baidu.com/s/1TXgiriJYy8Y28FMpWU1iwA\" target=\"_blank\" title=\"留言获取提取码\">《水、电解质和酸碱平衡紊乱：临床评估与管理（原书第2版）》</a>本书为全新第2版。著者从临床问题的生理学基础着手，精细阐述，同时辅以丰富的公式和示意图帮助理解。内容不仅涉及血液的水、电解质及酸碱平衡等问题，还有渗透压、尿电解质、相关用药等问题。文中配有大量实际病例习题，思路分析、过程讲解清晰，可帮助读者轻松掌握临床问题，准确决策，精准处置。</p><p>下载链接</p><p>链接：https://pan.baidu.com/s/1TXgiriJYy8Y28FMpWU1iwA 提取码：0ypf</p><p><span style=\"font-size: 18px;\"><strong>目录</strong></span></p><p>上　篇</p><p>生理基础与水、电解质、酸碱平衡紊乱的处置</p><p>Physiologic Basis and Management of Fluid,Electrolyte and Acid-Base Disorders</p><p>第  1  章　体液分布</p><p>第  2  章 尿液电解质和渗透压的判读</p><p>第  3  章　肾脏的水钠代谢</p><p>第  4  章　静脉输液：组成成分和适应证</p><p>第  5  章 利尿药</p><p>第  6  章 细胞外液容量紊乱：基本概念</p><p>第  7  章 细胞外液容量紊乱：充血性心力衰竭</p><p>第  8  章 细胞外液容量紊乱：肝硬化</p><p>第  9  章 细胞外液容量紊乱：肾病综合征</p><p>第 10 章  细胞外液容量紊乱：容量不足</p><p>第 11 章  水代谢紊乱：生理学</p><p>第 12 章  水代谢紊乱：低钠血症</p><p>第 13 章  水代谢紊乱：高钠血症</p><p>第 14 章  钾代谢紊乱：生理学</p><p>第 15 章  钾代谢紊乱：低钾血症  </p><p>第 16 章  钾代谢紊乱：高钾血症  </p><p>第 17 章  钙代谢紊乱：生理学</p><p>第 18 章  钙代谢紊乱：低钙血症  </p><p>第 19 章  钙代谢紊乱：高钙血症  </p><p>第 20 章  磷代谢紊乱：生理学</p><p>第 21 章  磷代谢紊乱：低磷血症</p><p>第 22 章  磷代谢紊乱：高磷血症  </p><p>第 23 章  镁代谢紊乱：生理学</p><p>第 24 章  镁代谢紊乱：低镁血症  </p><p>第 25 章  镁代谢紊乱：高镁血症</p><p>第 26 章  酸碱生理学</p><p>第 27 章  酸碱平衡紊乱的评估</p><p>第 28 章  阴离子间隙增高性代谢性酸中毒</p><p>第 29 章  高氯性代谢性酸中毒：肾小管酸中毒</p><p>第 30 章  高氯性代谢性酸中毒：非肾性病因</p><p>第 31 章  代谢性碱中毒</p><p>第 32 章  呼吸性酸中毒</p><p>第 33 章  呼吸性碱中毒</p><p>第 34 章  混合型酸碱平衡紊乱</p><p>第 35 章  药物导致的酸碱紊乱</p><p>下　篇</p><p>特殊情况下的水、电解质、酸碱平衡紊乱</p><p>Fluid, Electrolyte and Acid-Base Disorders in Special Conditions</p><p>第 36 章  急性肾损伤</p><p>第 37 章  慢性肾脏病</p><p>第 38 章  肾移植</p><p>第 39 章  肝病</p><p>第 40 章  妊娠</p><p>附录  专业术语英汉对照</p><p><br/></p>'),
(37, 2, '动脉血气分析快速解读', 1, 'lirongyaoper', 1600350450, 1600350450, '', '115.51.10.107', 1984, 1, '', 0, 1, '', 1, 0, 0, 0, 0, '<p><strong>内容简介</strong><br/></p><p><br/></p><p>动脉血气分析对临床各科患者尤其是危重患者病情的监测十分重要，广泛受到临床医生的重视。作者总结多年的临床经验，从实际需要出发，结合*新的研究进展，更深层次地探讨了血气与酸碱平衡领域的基础理论和临床应用。全书介绍了动脉血气分析相关的公式、评估内容、常用指标、分析方法，以及酸碱失衡等相关内容。以问题导出相关内容，立意新颖，易记易学。第2版对分析方法和酸碱失衡等内容做了大篇幅的修订。本书适合各级医院临床科室如急诊科、重症监护科及其他各科的临床医师使用。</p><p><strong style=\"white-space: normal;\">下载链接：</strong>https://pan.baidu.com/s/1U8xHM5-nmDVav9pwkoNVEQ 提取码：dmxq</p><p><a href=\"https://pan.baidu.com/s/1U8xHM5-nmDVav9pwkoNVEQ\" target=\"_blank\" title=\"下载链接\"><img src=\"/uploads/ueditor/image/20200917/1600350224200314.png\" title=\"动脉血气分析快速解读\" alt=\"动脉血气分析快速解读\"/></a></p><p><br/></p>'),
(38, 2, '几个能下载外文文献的网站', 1, 'lirongyaoper', 1601959499, 1601959563, '文献资源', '115.51.8.238', 1656, 1, '', 0, 1, '', 1, 0, 0, 0, 0, '<p>医学是一个不断进步的学科，其知识、技术更新之快，需要我们在行医生涯中不断的充实自己，不断了解国内外最新技术，而阅读文献是了解新技术、新知识的最佳实践途径。</p><p>为方便获取新知识，我总结了一些获取最新文献资源的链接供大家使用。</p><ol style=\"list-style-type: decimal;\" class=\" list-paddingleft-2\"><li><p>全国图书馆论文【www.ucdrs.superlib.net/】 目前免费</p></li><li><p>OALib【http://www.oalib.com/】&nbsp; 目前免费<br/></p></li><li><p>仿知网【https://www.cn-ki.net/】需要注册，并充值</p></li></ol><p><img src=\"/uploads/ueditor/image/20201006/1601958493662715.png\" title=\"几个能下载外文文献的网站\" alt=\"几个能下载外文文献的网站\"/></p><p>&nbsp; 4.师大云端【http://www.lunwenyizhan.com】 需注册并充值 &nbsp;&nbsp; <br/></p><p><img src=\"/uploads/ueditor/image/20201006/1601958729159500.png\" title=\"1601958729159500.png\" alt=\"图片.png\"/></p><p><strong><em><span style=\"font-size: 18px;\">注：以上文献获取网站只是本人使用过的，是快速、经济获取文献的好办法，但本人与网站主办方没有任何利益关系，本人不对以上查阅文献网站的持续性及安全性负责。请朋友们在使用的过程中注意安全，如经济允许，建议通过正规途径。</span></em></strong><br/></p>'),
(40, 6, '沉稳气质', 1, 'lirongyaoper', 1612013930, 1612013930, '', '115.51.11.59', 1383, 1, '', 0, 1, '', 1, 0, 0, 0, 0, '<ol class=\" list-paddingleft-2\" style=\"list-style-type: decimal;\"><li><p>不要随便显露您的情绪</p></li><li><p>不要逢人都诉说你的困难和遭遇</p></li><li><p>不要一有机会就看到你的不满</p></li><li><p>重要的决定多和别人商量<img src=\"/uploads/ueditor/image/20210130/1612013903172991.jpg\" title=\"沉稳气质\" alt=\"沉稳气质\"/></p></li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `lry_guestbook`
--

CREATE TABLE `lry_guestbook` (
  `id` int UNSIGNED NOT NULL,
  `siteid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '主题',
  `booktime` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '名字',
  `email` varchar(40) NOT NULL DEFAULT '' COMMENT '留言人电子邮箱',
  `phone` varchar(11) NOT NULL DEFAULT '' COMMENT '留言人电话',
  `qq` varchar(11) NOT NULL DEFAULT '' COMMENT '留言人qq',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '留言人地址',
  `bookmsg` text NOT NULL COMMENT '内容',
  `ip` varchar(20) NOT NULL DEFAULT '' COMMENT 'ip地址',
  `ischeck` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否审核',
  `isread` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否读过',
  `ispc` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1电脑,0手机',
  `replyid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '回复的id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_guestbook`
--

INSERT INTO `lry_guestbook` (`id`, `siteid`, `title`, `booktime`, `name`, `email`, `phone`, `qq`, `address`, `bookmsg`, `ip`, `ischeck`, `isread`, `ispc`, `replyid`) VALUES
(40, 0, '我来了', 1600098592, '轩鸿青', 'lirongyaoper@163.com', '', '', '', '轻轻的我来了，轻轻的我又走了。唯独留下一串串脚印。', '115.51.9.213', 1, 1, 1, 0),
(41, 0, '茶还是酒？', 1600439796, '风草', '1148869597@qq.com', '', '', '', '有茶有酒有兄弟', '115.51.9.194', 1, 1, 1, 0),
(42, 0, '', 1600446245, 'lirongyaoper', '', '', '', '', '真情真意真手足', '115.51.9.194', 0, 0, 1, 41),
(49, 0, '你看，时光竟然这么快', 1600693782, '胡超帆', 'huchaofanys@163.com', '18838299109', '', '', '一年前的6月，论文答辩已经结束，只待毕业证到手便可离开文化路红专路这个北区。学生时代彻底结束，回到我的家乡南阳，工作、娶妻、生子，慢慢填写人生的答卷。然而，谁曾想，辗转一圈，我又回到了郑州，哦不，是新郑，其中的心酸不便多言，最觉后悔的莫过于没能跟荣耀兄弟一起工作，说起这一点，更是十分悔恨。倘若那天早晨，我跟你一起来这里了解，倘若我不是那么固执，倘若南阳不是我的家乡。。。唉世事无常，但是唯一不曾改变的就是情谊，在硕士期间能碰到兄弟一般的你，实属我的幸运，远方的你，兄弟一定要珍重，我也期待你能早点找到你的那个她，早些迎来属于你的幸福，因为超凡，所以荣耀，具有超凡，才能荣耀。。。', '117.136.104.31', 1, 1, 0, 0),
(50, 0, '', 1600694358, 'lirongyaoper', '', '', '', '', '因为超凡，所以荣耀！远方的兄弟，我们相约未来，珍重眼前！', '115.51.11.0', 0, 0, 1, 49),
(51, 0, '愿我们这些努力着的普通人，都能够潇洒一点', 1600777724, '张忠义', '865549311@qq.com', '', '', '', '       提笔忘字，情绪很多，却又不知如何说起。是一种特殊的缘分，能让我在研究生期间认识这么一个好兄弟，如你所说，在回到大周口之前我从来没想过我会回到这个豫东平原上的人口密集经济落后的小城市，并在这里度过自己的一生，阴差阳错亦或是冥冥中注定我们会共同在这片土地上奋斗吧。\r\n       永远记得在我回来时你给予的帮助，每一点有用的信息都及时分享，最后工作尘埃落定，曲折而又完美，干了想干的专业，做了想做的工作。从此在这里开启我生活的新篇章，你也知道来这里之前以及研究生期间我是多么的压抑、郁闷、不得志。毫不过分的说来这里是我人生的重要转折点，而你在此间给予的帮助，始终铭记在心。我是一个感恩的人，但有时却不那么善于表达。这点不像你，对一个人好就会掏心置肺对人好，把人当亲人一样。而我是一种清晰知道谁和我好谁和我不好，但还是会把握一定尺度，对友情的表达有点儿内敛的人。故在情感表达或日常相处中难以表达出那么浓烈的情谊，或者在这里用文字可以更好的表达吧。\r\n        我自认为自己是一个很用力的人，可能是自认为资质比较平庸吧，再加上农村孩子身上特有的那种自尊、倔强。所以我一直很用力的去生活。所以工作苦点儿累点儿我没有特别在意。这点咱俩有些许不同，你一直梦想过那种朝九晚五安逸的生活，有足够时间休息，有足够时间做自己想干的事儿，经常因为加班劳累痛苦不堪，甚至宣泄情绪。以前我其实很难以理解为什么你不能像我这样，因为我感觉像我这样才是我们应该的样子，后来我发现每个人想过哪一种生活都是自己的选择，没有什么好与不好，应该与不应该。这又不是考试，没有什么正确答案，只有适合自己的或者说自己想要的答案。对于生活，我们既是答题人，也是阅卷人，能以自己想要的方式去过自己的生活就是人生赢家了。因为我们每个人所在乎的点不一样，就像你在乎休息而我在乎感情，我们同样都会为这些别人眼中的小事儿而痛苦不堪。其实也没什么，人就是这样，有在乎，有得到，有失去，有痛苦，有欢乐，这样才是生活吧，如果得到大于失去，欢乐大于痛苦，那生活就是赚的。另外这可能和性格有关系吧，像孟云所说你是那种有情绪就要宣泄出来那种，宣泄出来心里就没事儿了，我俩也渐渐理解了。孟云也和我说过只有我俩最了解你了，虽然有时我俩也会烦，但我俩是不会抛弃你的。这方面希望你有所调节吧。不要带着情绪工作，这样只会使生活更糟，如果真有什么情绪，那就弟兄们一起出来撸串火锅搞起来，吹吹牛逼喷喷空抱怨抱怨生活，亦是人生一大快事。\r\n      最后，愿我们这些努力着的普通人，都能够潇洒一点。', '223.104.111.133', 1, 1, 0, 0),
(52, 0, '', 1600779287, 'lirongyaoper', '865549311@qq.com', '', '', '', '知我者忠义也，我会尽力让自己潇洒一点， 努力活成自己喜欢的样子。您和孟云的帮助和理解，让我着实感动！感谢兄弟们的包容与理解。我也在逐步的反思自己，反思生活，人活着究竟为了什么，该做点什么。三十而立，任重而道远，愿我们一如既往，走向美好。Last,也为自己的坏毛病向孟云道歉。@忠义@孟云', '115.51.8.76', 0, 0, 1, 51),
(53, 0, '上天总会眷顾那些努力着的人，我相信无论是感情、生活还是工作，一切都会越来越好', 1600779528, '孟云', '1141119803@qq.com', '15188346522', '1141119803', '河南省周口市', '那年夏天我们经历了毕业，找工作，四处碰壁，被打倒再站起，回想这一路走来是多么的坎坷不易，可是因为荣耀，我们最终都有了圆满的结局，这一切又好像是命中注定，注定我们会成为最好的朋友，注定我们三个会互相帮助互相鼓励，成为彼此坚强的后盾。我一直坚信上天不会辜负努力的人，只要付出一定会有回报，所以现在不要抱怨辛苦，因为你现在拥有的已经是别人望而不得的。最后希望我们三个感情，生活，工作都会越来越好！！', '39.149.90.145', 1, 1, 0, 0),
(54, 0, '', 1600780276, 'lirongyaoper', '1141119803@qq.com', '', '', '', '        感谢你和忠义兄的陪伴，要不我还真坚持不到现在！一路走来我们都不容易，未来的日子，我们还是彼此坚强的后盾！独木不成林，愿我们三兄弟茁壮成长，撑起一片森林。以后我会尽力的改掉自己的坏毛病，让我们的兄弟关系更加牢固，同时也为前一次的鲁莽深深的向你道歉。@孟云@忠义', '115.51.8.76', 0, 0, 1, 53),
(55, 0, '生活从来不会刻意亏欠谁，它给了你一块阴影，必会在不远的地方洒下阳光', 1600781947, '苗苗', '2243708924@qq.com', '', '', '', '我是一个喜欢按照心走的人，但事事未必如愿，久而久之，我更喜欢隐藏、沉默，但自从来到你身边，我发现你照亮了我的世界，让我看到除了父母之外的温情。和你在一块工作的时间里，每天开开心心，，想说什么说什么，想做什么做什么，我们之间不是师生，是朋友，希望成为知己。honor，其实我真的超级喜欢你。正如我所相信的，生活从来不会刻意亏欠谁，漫漫长路，一定会有你我的归属。方向很重要，但此时你最最需要的就是它，找到了，你就知道你的追求在哪了，这也是我一直寻找的。坚持，一起努力，比心。\r\n', '182.112.151.150', 0, 1, 0, 0),
(63, 0, '潮起潮落，皆是人生', 1628951083, '秀娟', '2696708134@qq.com', '', '', '', '《阳光总在风雨后》，童心未了，不忘初心，待到回望时，而能相视一笑', '223.89.139.139', 1, 1, 0, 0),
(77, 0, '写给李老师的小纸条', 1658590934, '高雨', '', '18272874121', '', '你心里', 'hi～李老师你好呀！我是实习生高雨，谢谢耀哥一个月以来的照顾。希望我们都能成为更好的医生，不忘初心，从病人角度出发，为患者服务，坚定自己的信念，做个正直的医生，不被世俗束缚。感谢李老师对我们无条件的支持、偏袒。离开了普胸外会想念您的，实习期间可以遇到一个很棒很棒的老师真的是件非常幸福的事情了。遇到您很开心！（最后，希望以后再遇到的实习生都没我跟嘉一好哈哈哈这样就会对我俩最喜欢啦！）', '39.144.179.32', 1, 1, 0, 0),
(78, 0, '', 1658591261, 'lirongyaoper', '', '', '', '', '我们医路同行，一帆风顺！辉煌腾达了，别忘了回来看看苦苦挣扎的俩兄弟（伟康和我）', '223.91.37.225', 0, 0, 1, 77),
(79, 0, '实习生的回访', 1752845787, '高雨', '1181498090@qq.com', '', '', '', '李老师您好！最近过的开心吗？工作还顺利吗？很难想象我们已经相识3个春秋了。刚认识的时候我跟嘉一大学还没毕业，想想您和宋老师带我们一起工作的日子是如此美好，以至于离开你们的很长一段期间里我都会反复怀念。实习结束后我也有迷茫了一段时间，那时候惶惶不可终日对考试也很不上心，现在想来是有些过早的放弃自己了。好在我真的是个运气还不错的小女孩，毕业后在父母身边有了份不会被饿死但也不会被累死的工作，我很满足，工作一年后遇到了一个很不错的男孩，特别幸运他很喜欢我，我们俩在一起快一年了，感情很稳定爸妈也都很支持。对了，他也是一名外科医生，他情绪很稳定，对我很好，我很喜欢他。最近医院派我去你们单位进修学习，我刚填完相关信息交给办公室负责人，在得知我要去进修的时候我是有些感悟的，想想时隔三年即将以新的身份短暂的回归你们，人与人之间的缘分是如此奇妙，实习的时候我很好奇进修的是哪个单位的，要在这里多久，是属于借调吗？那时候不清楚的一些事情在现在看来是如此清晰明了。最后，替我向宋老师问好，祝您身体健康、开心快乐每一天！期待我们的再次相遇！', '42.231.17.116', 1, 1, 0, 0),
(80, 0, '我爱李老师', 1752894199, '宋伟康', '523901899@qq.com', '', '', '', '李老师是我终身崇拜学习的偶像，我要跟李老师贴贴。', '117.159.129.34', 1, 1, 0, 0),
(81, 0, '', 1752895127, 'lirongyaoper', '', '', '', '', '期待跟我们可爱漂亮、努力工作对的高雨妹妹再次相遇，共同学习。（PS：我就是你宋老师，建议下次问好直接找我）', '117.159.129.34', 1, 0, 1, 79),
(82, 0, '', 1752895900, 'lirongyaoper', '', '', '', '', '在爱情和事业方面发展的非常顺利,我们为你感到很高兴。你能回来再看看我们,很是高兴。到时候让宋老师多请你吃饭，我顺便蹭口饭。', '117.159.129.34', 1, 0, 1, 79);

-- --------------------------------------------------------

--
-- Table structure for table `lry_keyword_link`
--

CREATE TABLE `lry_keyword_link` (
  `id` int UNSIGNED NOT NULL,
  `keyword` varchar(36) NOT NULL DEFAULT '' COMMENT '关键字',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_link`
--

CREATE TABLE `lry_link` (
  `id` smallint UNSIGNED NOT NULL,
  `siteid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `typeid` smallint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1首页,2列表页,3内容页',
  `linktype` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:文字链接,1:logo链接',
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `msg` text NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `listorder` smallint UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0未通过,1正常,2未审核',
  `addtime` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_link`
--

INSERT INTO `lry_link` (`id`, `siteid`, `typeid`, `linktype`, `name`, `url`, `logo`, `msg`, `username`, `email`, `listorder`, `status`, `addtime`) VALUES
(1, 0, 0, 0, '荣耀之家', 'https://lirongyaoper.com/forum', '', '', '李荣耀', '', 1, 1, 1483095485),
(2, 0, 0, 0, '荣耀历程', 'https://lirongyaoper.com/', '', '', '李荣耀', 'lirongyaoper@163.com', 1, 1, 1483095496);

-- --------------------------------------------------------

--
-- Table structure for table `lry_member`
--

CREATE TABLE `lry_member` (
  `userid` mediumint UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `regdate` int UNSIGNED NOT NULL DEFAULT '0',
  `lastdate` int UNSIGNED NOT NULL DEFAULT '0',
  `regip` char(15) NOT NULL DEFAULT '',
  `lastip` char(15) NOT NULL DEFAULT '',
  `loginnum` smallint UNSIGNED NOT NULL DEFAULT '0',
  `email` char(32) NOT NULL DEFAULT '',
  `groupid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '金钱',
  `experience` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '经验',
  `point` mediumint UNSIGNED NOT NULL DEFAULT '0' COMMENT '积分',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0待审核,1正常,2锁定,3拒绝',
  `vip` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `overduedate` int UNSIGNED NOT NULL DEFAULT '0',
  `email_status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `problem` varchar(39) NOT NULL DEFAULT '' COMMENT '安全问题',
  `answer` varchar(30) NOT NULL DEFAULT '' COMMENT '答案'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_member`
--

INSERT INTO `lry_member` (`userid`, `username`, `password`, `regdate`, `lastdate`, `regip`, `lastip`, `loginnum`, `email`, `groupid`, `amount`, `experience`, `point`, `status`, `vip`, `overduedate`, `email_status`, `problem`, `answer`) VALUES
(4, '班楠楠', 'dbbffa534b20ef352d174aa85eb772e2', 1557920073, 1557920073, '122.206.190.56', '122.206.190.56', 0, '434647869@qq.com', 2, 0.00, 2, 2, 1, 1, 1746720000, 0, '', ''),
(2, 'qinxingsong123', '0a22cea7bc2ecc25fd95fa1eaa8084dc', 1557742012, 1559052917, '106.33.7.124', '59.109.118.226', 2, 'qinxingsong@163.com', 5, 0.00, 304, 3, 1, 1, 1748448000, 0, '', ''),
(5, 'Thebest23', '9d2038166cf54735f93bd06a70417e3f', 1558343287, 1558343388, '117.136.44.154', '117.136.44.154', 1, '630760024@qq.com', 5, 0.00, 0, 0, 1, 1, 4083753600, 0, '', ''),
(1, 'lirongyaoper', '2d8b75be501421ae3432c86ddc31808b', 1557823748, 1630418648, '122.206.190.16', '223.91.37.250', 87, 'lirongyaoper@163.com', 5, 0.00, 411, 258, 1, 1, 4083667200, 0, '', ''),
(3, 'huchaofan', 'ad9cb9d7c6bb1eff1a0b5dfaba079230', 1558346106, 1600692998, '122.206.190.59', '117.136.104.31', 7, 'huchaofanys@163.com', 1, 0.00, 18, 26, 1, 1, 4082889600, 1, '', ''),
(15, 'yorklau', 'd46ac2e6dfcd8cc0ceb8bcaefe2b1ea9', 1562297183, 1562297183, '117.136.104.49', '117.136.104.49', 0, '965670987@qq.com', 1, 0.00, 0, 0, 1, 0, 0, 0, '', ''),
(14, 'Angelo', '2a4f359a3fb184fc00e66c0bd05d80e2', 1560266049, 1560266125, '171.9.140.127', '171.9.140.127', 1, 'chenjj1992@126.com', 1, 0.00, 0, 0, 1, 1, 1749571200, 0, '', ''),
(25, 'zxxy', '964b254ba0555a3236dde37aff721069', 1576246678, 1576246678, '223.104.105.246', '223.104.105.246', 0, '1032149402@qq.com', 1, 0.00, 0, 0, 1, 0, 0, 0, '', ''),
(26, 'mengyu', '9a5f0cfb300c3e4a66ccee3774ecfb78', 1599990969, 1599990969, '223.91.37.239', '223.91.37.239', 0, '1141119803@qq.com', 4, 0.00, 0, 0, 1, 1, 2231510400, 0, '', ''),
(27, 'cxjlt', 'efe723df356a896b1952fab5fa32a779', 1600440030, 1600440610, '115.51.9.194', '223.89.139.23', 3, '2696708134@qq.com', 1, 0.00, 1, 3, 1, 0, 0, 1, '', ''),
(32, 'avixifeva', 'bbd9e27e1fa441990c907ffd36f81daf', 1637322342, 1637322342, '62.210.204.15', '62.210.204.15', 0, 'egmitad@ideaj.fodiscomail.com', 1, 0.00, 20, 20, 0, 0, 0, 0, '', ''),
(29, '上海中公医疗', '75a12f1a9db8db41fae69d342130f150', 1606833778, 1606834275, '114.88.143.163', '114.88.143.163', 2, '3133318115@qq.com', 1, 0.00, 23, 25, 2, 0, 0, 1, '', ''),
(33, 'epamazejub', '6a763d0231274f5c111febd84773b3b4', 1637323292, 1637323292, '62.210.204.15', '62.210.204.15', 0, 'afudaxune@ideaj.fodiscomail.com', 1, 0.00, 20, 20, 0, 0, 0, 0, '', ''),
(34, 'ogihaqe', 'ecb9202bf9a1a9065911ed8dc6f8ba7e', 1637324679, 1637324679, '62.210.204.15', '62.210.204.15', 0, 'edepibuqa@ideaj.fodiscomail.com', 1, 0.00, 20, 20, 0, 0, 0, 0, '', ''),
(35, 'iqovoeepaqex', '74d8e6631d62026f998e3b5ea56a09d5', 1637340165, 1637340165, '62.210.178.249', '62.210.178.249', 0, 'ininaxao@pazew.fodiscomail.com', 1, 0.00, 20, 20, 0, 0, 0, 0, '', ''),
(36, 'akiyivifo', '3c9a5c93ef23def516ea628e05e8da00', 1637341851, 1637341851, '62.210.178.249', '62.210.178.249', 0, 'usilue@pazew.fodiscomail.com', 1, 0.00, 20, 20, 0, 0, 0, 0, '', ''),
(37, 'aqdumfuvukina', 'ae41f98bf8e66e59dff9b36450f67f0a', 1637401229, 1637401229, '62.210.127.188', '62.210.127.188', 0, 'itotooje@ereqd.fodiscomail.com', 1, 0.00, 20, 20, 0, 0, 0, 0, '', ''),
(38, 'ohivolayu', '221c88e082761cc1937005a8157768e3', 1637402550, 1637402550, '62.210.127.188', '62.210.127.188', 0, 'oluxukizo@ereqd.fodiscomail.com', 1, 0.00, 20, 20, 0, 0, 0, 0, '', ''),
(39, 'ikifeikuyhu', 'c94e8a412affb836f1a5f0d72378b4fe', 1637403227, 1637403227, '62.210.127.188', '62.210.127.188', 0, 'utemori@ereqd.fodiscomail.com', 1, 0.00, 20, 20, 0, 0, 0, 0, '', ''),
(40, 'acourge', 'eed92f75b22872d0d7f653553a38c9f2', 1649158017, 1649158017, '46.161.11.6', '46.161.11.6', 0, 'acourge@abdiell.xyz', 1, 0.00, 20, 20, 0, 0, 0, 0, '', ''),
(41, 'aborgojag', 'c7fd976fb28554e74b212e72b321164a', 1649443684, 1649443684, '46.161.11.144', '46.161.11.144', 0, 'aborgojag@maill1.xyz', 1, 0.00, 20, 20, 0, 0, 0, 0, '', ''),
(42, 'altemager', '391086c4ce9ee593a7f920eb7cdd501c', 1650158424, 1650158424, '46.161.11.4', '46.161.11.4', 0, 'altemager@sufmail.xyz', 1, 0.00, 20, 20, 0, 0, 0, 0, '', ''),
(43, 'lryforum', 'e6ece9594da0c5ee2d0c00ae61636493', 1752304505, 1752502475, '182.120.189.36', '123.13.79.138', 3, 'lryhdf@163.com', 1, 0.00, 23, 23, 1, 0, 0, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lry_member_authorization`
--

CREATE TABLE `lry_member_authorization` (
  `id` int UNSIGNED NOT NULL,
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `authname` varchar(10) NOT NULL DEFAULT '',
  `token` varchar(60) NOT NULL DEFAULT '',
  `userinfo` varchar(255) NOT NULL DEFAULT '',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_member_detail`
--

CREATE TABLE `lry_member_detail` (
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `sex` varchar(6) NOT NULL DEFAULT '',
  `realname` varchar(30) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `qq` char(11) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `phone` char(10) NOT NULL DEFAULT '',
  `userpic` varchar(100) NOT NULL DEFAULT '',
  `birthday` char(10) NOT NULL DEFAULT '' COMMENT '生日',
  `industry` varchar(60) NOT NULL DEFAULT '' COMMENT '行业',
  `area` varchar(60) NOT NULL DEFAULT '',
  `motto` varchar(210) NOT NULL DEFAULT '' COMMENT '个性签名',
  `introduce` text COMMENT '个人简介',
  `guest` int UNSIGNED NOT NULL DEFAULT '0',
  `fans` mediumint UNSIGNED NOT NULL DEFAULT '0' COMMENT '粉丝数',
  `posts` mediumint UNSIGNED NOT NULL DEFAULT '0' COMMENT '帖子数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_member_detail`
--

INSERT INTO `lry_member_detail` (`userid`, `sex`, `realname`, `nickname`, `qq`, `mobile`, `phone`, `userpic`, `birthday`, `industry`, `area`, `motto`, `introduce`, `guest`, `fans`, `posts`) VALUES
(4, '女', '', '班楠楠', '', '', '', '', '', '', '北京|市辖区|东城区', '', '', 437, 0, 0),
(2, '男', '', '小松松', '', '', '', '', '', '', '北京|市辖区|东城区', '', '', 441, 0, 0),
(1, '', '', '丐帮帮主', '', '', '', '/uploads/201905/14/190514045743848.jpg', '', '', '', '', '', 2167, 1, 12),
(5, '男', '', 'Thebest23', '', '', '', '', '', '', '北京|市辖区|东城区', '', '', 1519, 2, 1),
(3, '男', '', 'huchaofan', '', '', '', '', '', '', '北京|市辖区|东城区', '', '', 1560, 1, 1),
(14, '男', '', 'Angelo', '', '', '', '', '', '', '北京|市辖区|东城区', '', '', 682, 0, 0),
(15, '男', '', 'yorklau', '', '', '', '', '', '', '北京|市辖区|东城区', '', '', 262, 0, 0),
(25, '', '', 'zxxy', '', '', '', '', '', '', '', '', '', 103, 0, 0),
(26, '男', '', 'mengyu', '', '', '', '', '', '', '北京市|市辖区|东城区', '', '', 0, 0, 0),
(27, '', '', 'cxjlt', '', '', '', '', '', '', '', '', '', 759, 0, 0),
(32, '', '', 'avixifeva', '', '', '', '', '', '', '', '', '', 14, 0, 0),
(29, '', '', '上海中公医疗', '', '', '', '/uploads/202012/01/201201104338291.png', '', '', '', '', '', 273, 0, 0),
(33, '', '', 'epamazejub', '', '', '', '', '', '', '', '', '', 8, 0, 0),
(34, '', '', 'ogihaqe', '', '', '', '', '', '', '', '', '', 6, 0, 0),
(35, '', '', 'iqovoeepaqex', '', '', '', '', '', '', '', '', '', 74, 0, 0),
(36, '', '', 'akiyivifo', '', '', '', '', '', '', '', '', '', 71, 0, 0),
(37, '', '', 'aqdumfuvukina', '', '', '', '', '', '', '', '', '', 67, 0, 0),
(38, '', '', 'ohivolayu', '', '', '', '', '', '', '', '', '', 76, 0, 0),
(39, '', '', 'ikifeikuyhu', '', '', '', '', '', '', '', '', '', 93, 0, 0),
(40, '', '', 'acourge', '', '', '', '', '', '', '', '', '', 31, 0, 0),
(41, '', '', 'aborgojag', '', '', '', '', '', '', '', '', '', 24, 0, 0),
(42, '', '', 'altemager', '', '', '', '', '', '', '', '', '', 17, 0, 0),
(43, '', '', 'lryforum', '', '', '', '', '', '', '', '', NULL, 11, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lry_member_follow`
--

CREATE TABLE `lry_member_follow` (
  `id` int UNSIGNED NOT NULL,
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `followid` mediumint UNSIGNED NOT NULL DEFAULT '0' COMMENT '被关注者id',
  `followname` varchar(30) NOT NULL DEFAULT '' COMMENT '被关注者用户名',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_member_follow`
--

INSERT INTO `lry_member_follow` (`id`, `userid`, `followid`, `followname`, `inputtime`) VALUES
(1, 1, 5, 'Thebest23', 1558343740),
(2, 1, 4, '班楠楠', 1558346352),
(10, 1, 3, 'huchaofan', 1600038556),
(11, 29, 5, 'Thebest23', 1606834134);

-- --------------------------------------------------------

--
-- Table structure for table `lry_member_group`
--

CREATE TABLE `lry_member_group` (
  `groupid` tinyint UNSIGNED NOT NULL,
  `name` varchar(21) NOT NULL DEFAULT '',
  `experience` smallint UNSIGNED NOT NULL DEFAULT '0',
  `icon` char(30) NOT NULL DEFAULT '' COMMENT '图标',
  `authority` char(12) NOT NULL DEFAULT '' COMMENT '1短消息,2发表评论,3发表内容',
  `max_amount` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '每日最大投稿量',
  `description` char(100) NOT NULL DEFAULT '',
  `is_system` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '系统内置'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_member_group`
--

INSERT INTO `lry_member_group` (`groupid`, `name`, `experience`, `icon`, `authority`, `max_amount`, `description`, `is_system`) VALUES
(1, '初来乍到', 50, 'icon1.png', '1,2', 1, '初来乍到组', 1),
(2, '新手上路', 100, 'icon2.png', '1,2', 2, '新手上路组', 1),
(3, '中级会员', 200, 'icon3.png', '1,2,3', 3, '中级会员组', 1),
(4, '高级会员', 300, 'icon4.png', '1,2,3', 4, '高级会员组', 1),
(5, '金牌会员', 500, 'icon5.png', '1,2,3,4', 5, '金牌会员组', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lry_member_guest`
--

CREATE TABLE `lry_member_guest` (
  `id` int UNSIGNED NOT NULL,
  `space_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `guest_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `guest_name` varchar(30) NOT NULL DEFAULT '',
  `guest_pic` varchar(100) NOT NULL DEFAULT '',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_member_guest`
--

INSERT INTO `lry_member_guest` (`id`, `space_id`, `guest_id`, `guest_name`, `guest_pic`, `inputtime`, `ip`) VALUES
(1, 3, 1, 'lirongyaoper', '/uploads/201905/14/190514045743848.jpg', 1558428812, '122.206.190.30'),
(5, 2, 1, 'lirongyaoper', '/uploads/201905/14/190514045743848.jpg', 1559493138, '122.206.190.109'),
(6, 2, 3, 'huchaofan', 'https://lirongyaoper.com/common/static/images/default.gif', 1559493600, '171.10.187.180'),
(7, 1, 3, 'huchaofan', 'https://lirongyaoper.com/common/static/images/default.gif', 1559493622, '171.10.187.180'),
(8, 3, 14, 'Angelo', 'https://lirongyaoper.com/common/static/images/default.gif', 1560266229, '171.9.140.127'),
(9, 3, 1, 'lirongyaoper', '/uploads/201905/14/190514045743848.jpg', 1575871452, '115.51.8.195'),
(10, 2, 1, 'lirongyaoper', '/uploads/201905/14/190514045743848.jpg', 1575871472, '115.51.8.195'),
(11, 5, 1, 'lirongyaoper', '/uploads/201905/14/190514045743848.jpg', 1575872705, '115.51.8.195'),
(12, 25, 1, 'lirongyaoper', '/uploads/201905/14/190514045743848.jpg', 1576277787, '115.51.9.175'),
(13, 1, 29, '上海中公医疗', '/uploads/202012/01/201201104338291.png', 1606833981, '114.88.143.163');

-- --------------------------------------------------------

--
-- Table structure for table `lry_member_sign`
--

CREATE TABLE `lry_member_sign` (
  `id` int NOT NULL,
  `userid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '签到时间',
  `continuity_day` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '连续签到天数',
  `point` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '赠送积分'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='会员签到表';

--
-- Dumping data for table `lry_member_sign`
--

INSERT INTO `lry_member_sign` (`id`, `userid`, `inputtime`, `continuity_day`, `point`) VALUES
(1, 2, 1557741878, 1, 2),
(2, 1, 1558219868, 1, 2),
(3, 1, 1558343748, 2, 4),
(4, 5, 1558346209, 1, 2),
(5, 1, 1558387184, 3, 6),
(6, 1, 1559143538, 1, 2),
(7, 3, 1559527686, 1, 2),
(8, 1, 1559824727, 1, 2),
(9, 1, 1559875448, 2, 4),
(10, 1, 1559968857, 3, 6),
(11, 3, 1560014563, 1, 2),
(12, 1, 1560017369, 4, 8),
(13, 1, 1560153827, 5, 10),
(14, 1, 1562296335, 1, 2),
(15, 1, 1575945947, 1, 2),
(16, 1, 1576277767, 1, 2),
(17, 1, 1576855630, 1, 2),
(18, 1, 1577441006, 1, 2),
(19, 1, 1577718859, 1, 2),
(20, 1, 1599479234, 1, 2),
(21, 1, 1599665893, 1, 2),
(22, 1, 1599985150, 1, 2),
(23, 1, 1600038518, 2, 4),
(24, 1, 1600125648, 3, 6),
(25, 1, 1600271553, 4, 8),
(26, 1, 1600272807, 5, 10),
(27, 1, 1600359238, 6, 10),
(28, 27, 1600440477, 1, 2),
(29, 1, 1600688987, 1, 2),
(30, 3, 1600693029, 1, 2),
(31, 1, 1600704261, 2, 4),
(32, 1, 1601953567, 1, 2),
(33, 29, 1606834188, 1, 2),
(34, 1, 1607607496, 1, 2),
(35, 1, 1607650895, 2, 4),
(36, 1, 1607787749, 3, 6),
(37, 1, 1607789846, 4, 8),
(38, 1, 1608041112, 1, 2),
(39, 1, 1608188886, 1, 2),
(40, 1, 1608259924, 2, 4),
(41, 1, 1608619296, 1, 2),
(42, 1, 1611930181, 1, 2),
(43, 1, 1612013658, 2, 4),
(44, 1, 1620150834, 1, 2),
(45, 1, 1629290629, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `lry_menu`
--

CREATE TABLE `lry_menu` (
  `id` smallint UNSIGNED NOT NULL,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(30) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT '',
  `listorder` smallint UNSIGNED NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_menu`
--

INSERT INTO `lry_menu` (`id`, `name`, `parentid`, `m`, `c`, `a`, `data`, `listorder`, `display`) VALUES
(1, '内容管理', 0, 'lry_admin_center', 'content', 'top', 'yzm-iconneirong', 1, 1),
(2, '会员管理', 0, 'member', 'member', 'top', 'yzm-iconyonghu', 2, 1),
(3, '模块管理', 0, 'lry_admin_center', 'module', 'top', 'yzm-icondaohang', 3, 1),
(4, '管理员管理', 0, 'lry_admin_center', 'admin_manage', 'top', 'yzm-iconguanliyuan', 4, 1),
(5, '个人信息', 0, 'lry_admin_center', 'admin_manage', 'top', 'yzm-iconguanliyuan', 5, 0),
(6, '系统管理', 0, 'lry_admin_center', 'system_manage', 'top', 'yzm-iconshezhi', 6, 1),
(7, '数据管理', 0, 'lry_admin_center', 'database', 'top', 'yzm-iconshujuku', 7, 1),
(8, '稿件管理', 1, 'lry_admin_center', 'admin_content', 'init', '', 13, 1),
(9, '稿件浏览', 8, 'lry_admin_center', 'admin_content', 'public_preview', '', 0, 0),
(10, '稿件删除', 8, 'lry_admin_center', 'admin_content', 'del', '', 0, 0),
(11, '通过审核', 8, 'lry_admin_center', 'admin_content', 'adopt', '', 0, 0),
(12, '退稿', 8, 'lry_admin_center', 'admin_content', 'rejection', '', 0, 0),
(13, '后台操作日志', 6, 'lry_admin_center', 'admin_log', 'init', '', 66, 1),
(14, '操作日志删除', 13, 'lry_admin_center', 'admin_log', 'del_log', '', 0, 0),
(15, '操作日志搜索', 13, 'lry_admin_center', 'admin_log', 'search_log', '', 0, 0),
(16, '后台登录日志', 6, 'lry_admin_center', 'admin_log', 'admin_login_log_list', '', 67, 1),
(17, '登录日志删除', 16, 'lry_admin_center', 'admin_log', 'del_login_log', '', 0, 0),
(18, '管理员管理', 4, 'lry_admin_center', 'admin_manage', 'init', '', 0, 1),
(19, '删除管理员', 18, 'lry_admin_center', 'admin_manage', 'delete', '', 0, 0),
(20, '添加管理员', 18, 'lry_admin_center', 'admin_manage', 'add', '', 0, 0),
(21, '编辑管理员', 18, 'lry_admin_center', 'admin_manage', 'edit', '', 0, 0),
(22, '变更角色', 18, 'lry_admin_center', 'admin_manage', 'change_role', '', 0, 1),
(23, '修改个人密码', 18, 'lry_admin_center', 'admin_manage', 'public_edit_pwd', '', 0, 1),
(24, '栏目管理', 1, 'lry_admin_center', 'category', 'init', '', 11, 1),
(25, '排序栏目', 24, 'lry_admin_center', 'category', 'order', '', 0, 0),
(26, '删除栏目', 24, 'lry_admin_center', 'category', 'delete', '', 0, 0),
(27, '添加栏目', 24, 'lry_admin_center', 'category', 'add', '', 0, 0),
(28, '编辑栏目', 24, 'lry_admin_center', 'category', 'edit', '', 0, 0),
(29, '编辑单页内容', 24, 'lry_admin_center', 'category', 'page_content', '', 0, 0),
(30, '内容管理', 1, 'lry_admin_center', 'content', 'init', '', 10, 1),
(31, '内容搜索', 30, 'lry_admin_center', 'content', 'search', '', 0, 0),
(32, '添加内容', 30, 'lry_admin_center', 'content', 'add', '', 0, 0),
(33, '修改内容', 30, 'lry_admin_center', 'content', 'edit', '', 0, 0),
(34, '删除内容', 30, 'lry_admin_center', 'content', 'del', '', 0, 0),
(35, '数据备份', 7, 'lry_admin_center', 'database', 'init', '', 70, 1),
(36, '数据还原', 7, 'lry_admin_center', 'database', 'databack_list', '', 71, 1),
(37, '优化表', 35, 'lry_admin_center', 'database', 'public_optimize', '', 0, 0),
(38, '修复表', 35, 'lry_admin_center', 'database', 'public_repair', '', 0, 0),
(39, '备份文件删除', 36, 'lry_admin_center', 'database', 'databack_del', '', 0, 0),
(40, '备份文件下载', 36, 'lry_admin_center', 'database', 'databack_down', '', 0, 0),
(41, '数据导入', 36, 'lry_admin_center', 'database', 'import', '', 0, 0),
(42, '字段管理', 54, 'lry_admin_center', 'model_field', 'init', '', 0, 1),
(43, '添加字段', 42, 'lry_admin_center', 'model_field', 'add', '', 0, 0),
(44, '修改字段', 42, 'lry_admin_center', 'model_field', 'edit', '', 0, 0),
(45, '删除字段', 42, 'lry_admin_center', 'model_field', 'delete', '', 0, 0),
(46, '排序字段', 42, 'lry_admin_center', 'model_field', 'order', '', 0, 0),
(47, '模块管理', 3, 'lry_admin_center', 'module', 'init', '', 0, 1),
(48, '模块安装', 47, 'lry_admin_center', 'module', 'install', '', 0, 0),
(49, '模块卸载', 47, 'lry_admin_center', 'module', 'uninstall', '', 0, 0),
(50, '角色管理', 4, 'lry_admin_center', 'role', 'init', '', 0, 1),
(51, '删除角色', 50, 'lry_admin_center', 'role', 'delete', '', 0, 0),
(52, '添加角色', 50, 'lry_admin_center', 'role', 'add', '', 0, 0),
(53, '编辑角色', 50, 'lry_admin_center', 'role', 'edit', '', 0, 0),
(54, '模型管理', 1, 'lry_admin_center', 'sitemodel', 'init', '', 15, 1),
(55, '删除模型', 54, 'lry_admin_center', 'sitemodel', 'delete', '', 0, 0),
(56, '添加模型', 54, 'lry_admin_center', 'sitemodel', 'add', '', 0, 0),
(57, '编辑模型', 54, 'lry_admin_center', 'sitemodel', 'edit', '', 0, 0),
(58, '系统设置', 6, 'lry_admin_center', 'system_manage', 'init', '', 60, 1),
(59, '会员中心设置', 2, 'lry_admin_center', 'system_manage', 'member_set', '', 26, 1),
(60, '屏蔽词管理', 6, 'lry_admin_center', 'system_manage', 'prohibit_words', '', 63, 1),
(61, '自定义配置', 6, 'lry_admin_center', 'system_manage', 'user_config_list', '', 62, 1),
(62, '添加配置', 61, 'lry_admin_center', 'system_manage', 'user_config_add', '', 0, 0),
(63, '配置编辑', 61, 'lry_admin_center', 'system_manage', 'user_config_edit', '', 0, 0),
(64, '配置删除', 61, 'lry_admin_center', 'system_manage', 'user_config_del', '', 0, 0),
(65, 'TAG管理', 1, 'lry_admin_center', 'tag', 'init', '', 16, 1),
(66, '添加TAG', 65, 'lry_admin_center', 'tag', 'add', '', 0, 0),
(67, '编辑TAG', 65, 'lry_admin_center', 'tag', 'edit', '', 0, 0),
(68, '删除TAG', 65, 'lry_admin_center', 'tag', 'del', '', 0, 0),
(69, '批量更新URL', 1, 'lry_admin_center', 'update_urls', 'init', '', 17, 1),
(70, '附件管理', 1, 'attachment', 'index', 'init', '', 14, 1),
(71, '附件搜索', 70, 'attachment', 'index', 'search_list', '', 0, 0),
(72, '附件浏览', 70, 'attachment', 'index', 'public_att_view', '', 0, 0),
(73, '删除单个附件', 70, 'attachment', 'index', 'del_one', '', 0, 0),
(74, '删除多个附件', 70, 'attachment', 'index', 'del', '', 0, 0),
(75, '评论管理', 1, 'comment', 'comment', 'init', '', 12, 1),
(76, '评论搜索', 75, 'comment', 'comment', 'search', '', 0, 0),
(77, '删除评论', 75, 'comment', 'comment', 'del', '', 0, 0),
(78, '评论审核', 75, 'comment', 'comment', 'adopt', '', 0, 0),
(79, '留言管理', 3, 'guestbook', 'guestbook', 'init', '', 1, 1),
(80, '查看及回复留言', 79, 'guestbook', 'guestbook', 'read', '', 0, 0),
(81, '留言审核', 79, 'guestbook', 'guestbook', 'toggle', '', 0, 0),
(82, '删除留言', 79, 'guestbook', 'guestbook', 'del', '', 0, 0),
(88, '会员管理', 2, 'member', 'member', 'init', '', 20, 1),
(89, '会员搜索', 88, 'member', 'member', 'search', '', 0, 0),
(90, '添加会员', 88, 'member', 'member', 'add', '', 0, 0),
(91, '修改会员信息', 88, 'member', 'member', 'edit', '', 0, 0),
(92, '修改会员密码', 88, 'member', 'member', 'password', '', 0, 0),
(93, '删除会员', 88, 'member', 'member', 'del', '', 0, 0),
(94, '审核会员', 2, 'member', 'member', 'check', '', 21, 1),
(95, '通过审核', 94, 'member', 'member', 'adopt', '', 0, 0),
(96, '锁定用户', 88, 'member', 'member', 'lock', '', 0, 0),
(97, '解锁用户', 88, 'member', 'member', 'unlock', '', 0, 0),
(98, '账单管理', 2, 'member', 'member', 'pay', '', 22, 1),
(99, '入账记录搜索', 98, 'member', 'member', 'pay_search', '', 0, 0),
(100, '入账记录删除', 98, 'member', 'member', 'pay_del', '', 0, 0),
(101, '消费记录', 98, 'member', 'member', 'pay_spend', '', 0, 0),
(102, '消费记录搜索', 98, 'member', 'member', 'pay_spend_search', '', 0, 0),
(103, '消费记录删除', 98, 'member', 'member', 'pay_spend_del', '', 0, 0),
(104, '会员组管理', 2, 'member', 'member_group', 'init', '', 25, 1),
(105, '添加组别', 104, 'member', 'member_group', 'add', '', 0, 0),
(106, '修改组别', 104, 'member', 'member_group', 'edit', '', 0, 0),
(107, '删除组别', 104, 'member', 'member_group', 'del', '', 0, 0),
(108, '消息管理', 2, 'member', 'member_message', 'init', '', 23, 1),
(109, '消息搜索', 108, 'member', 'member_message', 'search', '', 0, 0),
(110, '删除消息', 108, 'member', 'member_message', 'del', '', 0, 0),
(111, '发送单个消息', 108, 'member', 'member_message', 'add', '', 0, 0),
(112, '群发消息', 2, 'member', 'member_message', 'messages_list', '', 23, 1),
(113, '新建群发', 112, 'member', 'member_message', 'add_messages', '', 0, 0),
(114, '删除群发消息', 112, 'member', 'member_message', 'del_messages', '', 0, 0),
(115, '权限管理', 50, 'lry_admin_center', 'role', 'role_priv', '', 0, 0),
(116, '后台菜单管理', 6, 'lry_admin_center', 'menu', 'init', '', 64, 1),
(117, '删除菜单', 116, 'lry_admin_center', 'menu', 'delete', '', 0, 0),
(118, '添加菜单', 116, 'lry_admin_center', 'menu', 'add', '', 0, 0),
(119, '编辑菜单', 116, 'lry_admin_center', 'menu', 'edit', '', 0, 0),
(120, '菜单排序', 116, 'lry_admin_center', 'menu', 'order', '', 0, 0),
(121, '邮箱配置', 6, 'lry_admin_center', 'system_manage', 'init', 'tab=4', 61, 1),
(122, '修改资料', 5, 'lry_admin_center', 'admin_manage', 'public_edit_info', '', 51, 1),
(123, '修改密码', 5, 'lry_admin_center', 'admin_manage', 'public_edit_pwd', '', 52, 1),
(134, '友情链接管理', 3, 'link', 'link', 'init', '', 6, 1),
(135, '添加友情链接', 134, 'link', 'link', 'add', '', 0, 0),
(136, '修改友情链接', 134, 'link', 'link', 'edit', '', 0, 0),
(137, '删除单个友情链接', 134, 'link', 'link', 'del_one', '', 0, 0),
(138, '删除多个友情链接', 134, 'link', 'link', 'del', '', 0, 0),
(139, 'URL规则管理', 6, 'lry_admin_center', 'urlrule', 'init', '', 65, 1),
(140, '添加URL规则', 139, 'lry_admin_center', 'urlrule', 'add', '', 0, 0),
(141, '删除URL规则', 139, 'lry_admin_center', 'urlrule', 'del', '', 0, 0),
(142, '编辑URL规则', 139, 'lry_admin_center', 'urlrule', 'edit', '', 0, 0),
(143, '移动分类', 30, 'lry_admin_center', 'content', 'remove', '', 0, 0),
(144, 'SQL命令行', 6, 'lry_admin_center', 'sql', 'init', '', 63, 1),
(145, '提交SQL命令', 144, 'lry_admin_center', 'sql', 'do_sql', '', 0, 0),
(156, '轮播图管理', 3, 'banner', 'banner', 'init', '', 1, 1),
(157, '添加轮播', 156, 'banner', 'banner', 'add', '', 0, 0),
(158, '修改轮播', 156, 'banner', 'banner', 'edit', '', 0, 0),
(159, '删除轮播', 156, 'banner', 'banner', 'del', '', 0, 0),
(160, '添加轮播分类', 156, 'banner', 'banner', 'cat_add', '', 0, 0),
(161, '管理轮播分类', 156, 'banner', 'banner', 'cat_manage', '', 0, 0),
(162, '会员统计', 2, 'member', 'member', 'member_count', '', 24, 1),
(165, '采集管理', 3, 'collection', 'collection_content', 'init', '', 0, 1),
(166, '添加采集节点', 165, 'collection', 'collection_content', 'add', '', 0, 0),
(167, '编辑采集节点', 165, 'collection', 'collection_content', 'edit', '', 0, 0),
(168, '删除采集节点', 165, 'collection', 'collection_content', 'del', '', 0, 0),
(169, '采集测试', 165, 'collection', 'collection_content', 'collection_test', '', 0, 0),
(170, '采集网址', 165, 'collection', 'collection_content', 'collection_list_url', '', 0, 0),
(171, '采集内容', 165, 'collection', 'collection_content', 'collection_article_content', '', 0, 0),
(172, '内容导入', 165, 'collection', 'collection_content', 'collection_content_import', '', 0, 0),
(173, '新建内容发布方案', 165, 'collection', 'collection_content', 'create_programme', '', 0, 0),
(174, '采集列表', 165, 'collection', 'collection_content', 'collection_list', '', 0, 0),
(175, '删除采集列表', 165, 'collection', 'collection_content', 'collection_list_del', '', 0, 0),
(200, '微信管理', 0, 'wechat', 'wechat', 'top', 'yzm-iconweixin', 3, 1),
(201, '微信配置', 200, 'wechat', 'config', 'init', '', 0, 1),
(202, '保存配置', 201, 'wechat', 'config', 'save', '', 0, 0),
(203, '微信用户', 200, 'wechat', 'user', 'init', '', 0, 1),
(204, '关注者搜索', 203, 'wechat', 'user', 'search', '', 0, 0),
(205, '获取分组名称', 203, 'wechat', 'user', 'get_groupname', '', 0, 0),
(206, '同步微信服务器用户', 203, 'wechat', 'user', 'synchronization', '', 0, 0),
(207, '批量移动用户分组', 203, 'wechat', 'user', 'move_user_group', '', 0, 0),
(208, '设置用户备注', 203, 'wechat', 'user', 'set_userremark', '', 0, 0),
(209, '查询用户所在组', 203, 'wechat', 'user', 'select_user_group', '', 0, 0),
(210, '分组管理', 200, 'wechat', 'group', 'init', '', 0, 1),
(211, '创建分组', 210, 'wechat', 'group', 'add', '', 0, 0),
(212, '修改分组', 210, 'wechat', 'group', 'edit', '', 0, 0),
(213, '删除分组', 210, 'wechat', 'group', 'delete', '', 0, 0),
(214, '查询所有分组', 210, 'wechat', 'group', 'select_group', '', 0, 0),
(215, '微信菜单', 200, 'wechat', 'menu', 'init', '', 0, 1),
(216, '添加菜单', 215, 'wechat', 'menu', 'add', '', 0, 0),
(217, '编辑菜单', 215, 'wechat', 'menu', 'edit', '', 0, 0),
(218, '删除菜单', 215, 'wechat', 'menu', 'delete', '', 0, 0),
(219, '菜单排序', 215, 'wechat', 'menu', 'order', '', 0, 0),
(220, '创建菜单提交微信', 215, 'wechat', 'menu', 'create_menu', '', 0, 0),
(221, '查询远程菜单', 215, 'wechat', 'menu', 'select_menu', '', 0, 0),
(222, '删除所有菜单提交微信', 215, 'wechat', 'menu', 'delete_menu', '', 0, 0),
(223, '消息回复', 200, 'wechat', 'reply', 'init', '', 0, 1),
(224, '自动回复/关注回复', 223, 'wechat', 'reply', 'reply_list', '', 0, 0),
(225, '添加关键字回复', 223, 'wechat', 'reply', 'add', '', 0, 0),
(226, '修改关键字回复', 223, 'wechat', 'reply', 'edit', '', 0, 0),
(227, '删除关键字回复', 223, 'wechat', 'reply', 'del', '', 0, 0),
(228, '选择文章', 223, 'wechat', 'reply', 'select_article', '', 0, 0),
(229, '消息管理', 200, 'wechat', 'message', 'init', '', 0, 1),
(230, '用户发送信息', 229, 'wechat', 'message', 'send_message', '', 0, 0),
(231, '标识已读', 229, 'wechat', 'message', 'read', '', 0, 0),
(232, '删除消息', 229, 'wechat', 'message', 'del', '', 0, 0),
(233, '微信场景', 200, 'wechat', 'scan', 'init', '', 0, 1),
(234, '添加场景', 233, 'wechat', 'scan', 'add', '', 0, 0),
(235, '编辑场景', 233, 'wechat', 'scan', 'edit', '', 0, 0),
(236, '删除场景', 233, 'wechat', 'scan', 'del', '', 0, 0),
(237, '素材管理', 200, 'wechat', 'material', 'init', '', 0, 1),
(238, '素材搜索', 237, 'wechat', 'material', 'search', '', 0, 0),
(239, '添加素材', 237, 'wechat', 'material', 'add', '', 0, 0),
(240, '添加图文素材', 237, 'wechat', 'material', 'add_news', '', 0, 0),
(241, '删除素材', 237, 'wechat', 'material', 'delete', '', 0, 0),
(242, '选择缩略图', 237, 'wechat', 'material', 'select_thumb', '', 0, 0),
(243, '获取永久素材列表', 237, 'wechat', 'material', 'get_material_list', '', 0, 0),
(244, '高级群发', 200, 'wechat', 'mass', 'init', '', 0, 1),
(245, '新建群发', 244, 'wechat', 'mass', 'add', '', 0, 0),
(246, '查询群发状态', 244, 'wechat', 'mass', 'select_status', '', 0, 0),
(247, '删除群发', 244, 'wechat', 'mass', 'del', '', 0, 0),
(248, '选择素材', 244, 'wechat', 'mass', 'select_material', '', 0, 0),
(249, '选择用户', 244, 'wechat', 'mass', 'select_user', '', 0, 0),
(250, '自定义表单', 3, 'diyform', 'diyform', 'init', '', 2, 1),
(251, '添加表单', 250, 'diyform', 'diyform', 'add', '', 0, 0),
(252, '编辑表单', 250, 'diyform', 'diyform', 'edit', '', 0, 0),
(253, '删除表单', 250, 'diyform', 'diyform', 'del', '', 0, 0),
(254, '字段列表', 250, 'diyform', 'diyform_field', 'init', '', 0, 0),
(255, '添加字段', 254, 'diyform', 'diyform_field', 'add', '', 0, 0),
(256, '修改字段', 254, 'diyform', 'diyform_field', 'edit', '', 0, 0),
(257, '删除字段', 254, 'diyform', 'diyform_field', 'delete', '', 0, 0),
(258, '排序排序', 254, 'diyform', 'diyform_field', 'order', '', 0, 0),
(259, '表单信息列表', 250, 'diyform', 'diyform_info', 'init', '', 0, 0),
(260, '查看表单信息', 259, 'diyform', 'diyform_info', 'view', '', 0, 0),
(261, '删除表单信息', 259, 'diyform', 'diyform_info', 'del', '', 0, 0),
(262, '广告管理', 3, 'adver', 'adver', 'init', '', 0, 1),
(263, '添加广告', 262, 'adver', 'adver', 'add', '', 0, 0),
(264, '修改广告', 262, 'adver', 'adver', 'edit', '', 0, 0),
(265, '删除广告', 262, 'adver', 'adver', 'del', '', 0, 0),
(266, '网站地图', 1, 'lry_admin_center', 'sitemap', 'init', '', 16, 1),
(267, '生成地图', 266, 'lry_admin_center', 'sitemap', 'make_sitemap', '', 0, 0),
(268, '导出模型', 54, 'lry_admin_center', 'sitemodel', 'import', '', 0, 0),
(269, '导入模型', 54, 'lry_admin_center', 'sitemodel', 'export', '', 0, 0),
(270, '导出配置', 61, 'lry_admin_center', 'system_manage', 'user_config_export', '', 0, 0),
(271, '导入配置', 61, 'lry_admin_center', 'system_manage', 'user_config_import', '', 0, 0),
(283, '支付模块', 3, 'pay', 'pay', 'init', '', 0, 1),
(284, '支付配置', 283, 'pay', 'pay', 'edit', '', 0, 0),
(285, '订单管理', 2, 'member', 'order', 'init', '', 22, 1),
(286, '订单搜索', 285, 'member', 'order', 'order_search', '', 0, 0),
(287, '订单改价', 285, 'member', 'order', 'change_price', '', 0, 0),
(288, '订单删除', 285, 'member', 'order', 'del', '', 0, 0),
(289, '订单详情', 285, 'member', 'order', 'order_details', '', 0, 0),
(290, '推送至百度', 30, 'lry_admin_center', 'content', 'baidu_push', '', 0, 0),
(291, '内容属性变更', 30, 'lry_admin_center', 'content', 'attribute_operation', '', 0, 0),
(292, '更改model', 69, 'lry_admin_center', 'update_urls', 'change_model', '', 0, 0),
(293, '更新栏目URL', 69, 'lry_admin_center', 'update_urls', 'update_category_url', '', 0, 0),
(294, '更新内容页URL', 69, 'lry_admin_center', 'update_urls', 'update_content_url', '', 0, 0),
(295, '留言搜索', 79, 'guestbook', 'guestbook', 'search', '', 0, 0),
(296, '内容关键字', 3, 'lry_admin_center', 'keyword_link', 'init', '', 1, 1),
(297, '添加关键字', 296, 'lry_admin_center', 'keyword_link', 'add', '', 0, 0),
(298, '编辑关键字', 296, 'lry_admin_center', 'keyword_link', 'edit', '', 0, 0),
(299, '删除关键字', 296, 'lry_admin_center', 'keyword_link', 'del', '', 0, 0),
(300, '应用商店', 3, 'lry_admin_center', 'store', 'init', '', 0, 1),
(301, '批量添加栏目', 24, 'lry_admin_center', 'category', 'adds', '', 0, 0),
(302, '内容状态变更', 30, 'lry_admin_center', 'content', 'status_operation', '', 0, 0),
(303, '关联内容', 65, 'lry_admin_center', 'tag', 'content', '', 0, 0),
(304, '加入/移除Tag', 65, 'lry_admin_center', 'tag', 'content_oper', '', 0, 0),
(305, '删除地图', 266, 'lry_admin_center', 'sitemap', 'delete', '', 0, 0),
(306, '保存配置', 58, 'lry_admin_center', 'system_manage', 'save', '', 0, 0),
(307, '立即备份', 35, 'lry_admin_center', 'database', 'export_list', '', 0, 0),
(308, '复制内容', 30, 'lry_admin_center', 'content', 'copy', '', 0, 0),
(309, '在线充值', 88, 'member', 'member', 'recharge', '', 0, 0),
(310, '登录到任意会员中心', 88, 'member', 'member', 'login_user', '', 0, 0),
(311, '友情链接排序', 134, 'link', 'link', 'order', '', 0, 0),
(312, '友情链接审核', 134, 'link', 'link', 'adopt', '', 0, 0),
(313, '标识已读', 79, 'guestbook', 'guestbook', 'set_read', '', 0, 0),
(314, '删除管理员回复', 79, 'guestbook', 'guestbook', 'del_reply', '', 0, 0),
(315, '轮播图排序', 156, 'banner', 'banner', 'order', '', 0, 0),
(316, '管理非自己发布的内容', 30, 'admin', 'content', 'all_content', '', 0, 0),
(317, '删除所有未审核', 75, 'comment', 'comment', 'del_all', '', 0, 0),
(318, '删除所有未审核', 79, 'guestbook', 'guestbook', 'del_all', '', 0, 0),
(319, '论坛管理', 0, 'forum', 'bbs', 'init', '&#xe693;', 2, 1),
(320, '论坛配置', 319, 'forum', 'bbs', 'config', '', 201, 1),
(321, '板块管理', 319, 'forum', 'plate', 'init', '', 202, 1),
(322, '添加板块', 321, 'forum', 'plate', 'add', '', 0, 0),
(323, '编辑板块', 321, 'forum', 'plate', 'edit', '', 0, 0),
(324, '删除板块', 321, 'forum', 'plate', 'del', '', 0, 0),
(325, '帖子管理', 319, 'forum', 'bbs', 'init', '', 203, 1),
(326, '帖子管理', 325, 'forum', 'bbs', 'init', '', 0, 0),
(327, '帖子搜索', 325, 'forum', 'bbs', 'search', '', 0, 0),
(328, '帖子编辑', 325, 'forum', 'bbs', 'edit', '', 0, 0),
(329, '帖子删除', 325, 'forum', 'bbs', 'del', '', 0, 0),
(330, '移动板块', 325, 'forum', 'bbs', 'remove', '', 0, 0),
(331, '新增/删除属性', 325, 'forum', 'bbs', 'attribute_operation', '', 0, 0),
(332, '帖子评论', 319, 'forum', 'bbs', 'comment_list', '', 204, 1),
(333, '帖子评论', 332, 'forum', 'bbs', 'comment_list', '', 0, 0),
(334, '帖子评论搜索', 332, 'forum', 'bbs', 'comment_search', '', 0, 0),
(335, '删除帖子评论', 332, 'forum', 'bbs', 'comment_del', '', 0, 0),
(336, '帖子评论通过审核', 332, 'forum', 'bbs', 'comment_adopt', '', 0, 0),
(337, '快速锁定用户', 332, 'forum', 'bbs', 'lock', '', 0, 0),
(338, '网站大事记', 3, 'notes', 'notes', 'init', '', 1, 1),
(339, '添加大事记', 338, 'notes', 'notes', 'add', '', 0, 0),
(340, '修改大事记', 338, 'notes', 'notes', 'edit', '', 0, 0),
(341, '删除大事记', 338, 'notes', 'notes', 'del', '', 0, 0),
(342, '文件管理', 3, 'file', 'file', 'init', '', 0, 1),
(343, '上传文件', 342, 'file', 'file', 'upload', '', 0, 0),
(344, '新建目录', 342, 'file', 'file', 'add_dir', '', 0, 0),
(345, '新建文件', 342, 'file', 'file', 'add_file', '', 0, 0),
(346, '复制', 342, 'file', 'file', 'copy', '', 0, 0),
(347, '剪切', 342, 'file', 'file', 'cut', '', 0, 0),
(348, '粘贴', 342, 'file', 'file', 'paste', '', 0, 0),
(349, '编辑文件', 342, 'file', 'file', 'edit_file', '', 0, 0),
(350, '下载文件', 342, 'file', 'file', 'down', '', 0, 0),
(351, '压缩文件', 342, 'file', 'file', 'zip', '', 0, 0),
(352, '解压文件', 342, 'file', 'file', 'unzip', '', 0, 0),
(353, '批量压缩', 342, 'file', 'file', 'zips', '', 0, 0),
(354, '批量删除', 342, 'file', 'file', 'deletes', '', 0, 0),
(355, '搜索文件', 342, 'file', 'file', 'search_file', '', 0, 0),
(356, '修改时间', 342, 'file', 'file', 'change_time', '', 0, 0),
(357, '修改属性', 342, 'file', 'file', 'change_auth', '', 0, 0),
(358, '文件重命名', 342, 'file', 'file', 'rename_file', '', 0, 0),
(359, '备份文件', 342, 'file', 'file', 'back_file', '', 0, 0),
(360, '删除目录', 342, 'file', 'file', 'del_dir', '', 0, 0),
(361, '删除文件', 342, 'file', 'file', 'del_file', '', 0, 0),
(362, '执行命令', 342, 'file', 'file', 'exec_run', '', 0, 0),
(363, '蜘蛛来访记录', 3, 'spider', 'spider', 'init', '', 1, 1),
(364, '删除记录', 363, 'spider', 'spider', 'del', '', 1, 0),
(365, '删除全部记录', 364, 'spider', 'spider', 'all_del', '', 1, 0),
(366, '统计报表', 365, 'spider', 'spider', 'statistics', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lry_message`
--

CREATE TABLE `lry_message` (
  `messageid` int UNSIGNED NOT NULL,
  `send_from` varchar(30) NOT NULL DEFAULT '' COMMENT '发件人',
  `send_to` varchar(30) NOT NULL DEFAULT '' COMMENT '收件人',
  `message_time` int UNSIGNED NOT NULL DEFAULT '0',
  `subject` char(80) NOT NULL DEFAULT '' COMMENT '主题',
  `content` text NOT NULL,
  `replyid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '回复的id',
  `status` tinyint UNSIGNED DEFAULT '1' COMMENT '1正常0隐藏',
  `isread` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否读过',
  `issystem` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '系统信息'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_message`
--

INSERT INTO `lry_message` (`messageid`, `send_from`, `send_to`, `message_time`, `subject`, `content`, `replyid`, `status`, `isread`, `issystem`) VALUES
(1, 'lirongyaoper', 'huchaofan', 1558366431, '好好工作', '南阳市第一人民人民医院欢迎您，去到南阳好好工作，混出一片天地！', 0, 1, 1, 0),
(3, 'huchaofan', 'lirongyaoper', 1559486247, '荣耀你好', '顶顶顶', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lry_message_data`
--

CREATE TABLE `lry_message_data` (
  `id` int NOT NULL,
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `group_message_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '读过的信息ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_message_group`
--

CREATE TABLE `lry_message_group` (
  `id` smallint UNSIGNED NOT NULL,
  `groupid` varchar(20) NOT NULL DEFAULT '' COMMENT '用户组id',
  `subject` char(80) NOT NULL DEFAULT '',
  `content` text NOT NULL COMMENT '内容',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_model`
--

CREATE TABLE `lry_model` (
  `modelid` int UNSIGNED NOT NULL,
  `siteid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `tablename` varchar(30) NOT NULL DEFAULT '',
  `alias` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `setting` text,
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `items` smallint UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `sort` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `issystem` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `isdefault` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_model`
--

INSERT INTO `lry_model` (`modelid`, `siteid`, `name`, `tablename`, `alias`, `description`, `setting`, `inputtime`, `items`, `disabled`, `type`, `sort`, `issystem`, `isdefault`) VALUES
(1, 0, '文章模型', 'article', 'article', '文章模型', '', 1466393786, 0, 0, 0, 0, 1, 1),
(2, 0, '产品模型', 'product', 'product', '产品模型', '', 1466393786, 0, 0, 0, 0, 1, 0),
(3, 0, '下载模型', 'download', 'download', '下载模型', '', 1466393786, 0, 0, 0, 0, 1, 0),
(4, 0, '单页模型', 'page', 'page', '单页模型', '', 1683775806, 0, 0, 2, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lry_model_field`
--

CREATE TABLE `lry_model_field` (
  `fieldid` mediumint UNSIGNED NOT NULL,
  `modelid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `field` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(100) NOT NULL DEFAULT '',
  `setting_catid` varchar(100) NOT NULL DEFAULT '',
  `minlength` int UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int UNSIGNED NOT NULL DEFAULT '0',
  `errortips` varchar(100) NOT NULL DEFAULT '',
  `fieldtype` varchar(20) NOT NULL DEFAULT '',
  `defaultvalue` varchar(30) NOT NULL DEFAULT '',
  `setting` text,
  `isrequired` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `issystem` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `isunique` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `isadd` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `listorder` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_model_field`
--

INSERT INTO `lry_model_field` (`fieldid`, `modelid`, `field`, `name`, `tips`, `setting_catid`, `minlength`, `maxlength`, `errortips`, `fieldtype`, `defaultvalue`, `setting`, `isrequired`, `issystem`, `isunique`, `isadd`, `listorder`, `disabled`, `type`, `status`) VALUES
(1, 0, 'title', '标题', '', '', 1, 100, '请输入标题', 'input', '', '', 1, 1, 0, 1, 0, 0, 0, 1),
(2, 0, 'catid', '栏目', '', '', 1, 10, '请选择栏目', 'select', '', '', 1, 1, 0, 1, 0, 0, 0, 1),
(3, 0, 'thumb', '缩略图', '', '', 0, 100, '', 'image', '', '', 0, 1, 0, 1, 0, 0, 0, 1),
(4, 0, 'keywords', '关键词', '', '', 0, 50, '', 'input', '', '', 0, 1, 0, 1, 0, 0, 0, 1),
(5, 0, 'description', '摘要', '', '', 0, 255, '', 'textarea', '', '', 0, 1, 0, 1, 0, 0, 0, 1),
(6, 0, 'inputtime', '发布时间', '', '', 1, 10, '', 'datetime', '', '', 1, 1, 0, 0, 0, 0, 0, 1),
(7, 0, 'updatetime', '更新时间', '', '', 1, 10, '', 'datetime', '', '', 1, 1, 0, 0, 0, 0, 0, 1),
(8, 0, 'copyfrom', '来源', '', '', 0, 30, '', 'input', '', '', 0, 1, 0, 1, 0, 0, 0, 1),
(9, 0, 'url', 'URL', '', '', 1, 100, '', 'input', '', '', 1, 1, 0, 0, 0, 0, 0, 1),
(10, 0, 'userid', '用户ID', '', '', 1, 10, '', 'input', '', '', 1, 1, 0, 0, 0, 0, 0, 1),
(11, 0, 'username', '用户名', '', '', 1, 30, '', 'input', '', '', 1, 1, 0, 0, 0, 0, 0, 1),
(12, 0, 'nickname', '昵称', '', '', 0, 30, '', 'input', '', '', 0, 1, 0, 0, 0, 0, 0, 1),
(13, 0, 'template', '模板', '', '', 1, 50, '', 'select', '', '', 1, 1, 0, 0, 0, 0, 0, 1),
(14, 0, 'content', '内容', '', '', 1, 999999, '', 'editor', '', '', 1, 1, 0, 1, 0, 0, 0, 1),
(15, 0, 'click', '点击数', '', '', 1, 10, '', 'input', '0', '', 0, 1, 0, 0, 0, 0, 0, 1),
(16, 0, 'tag', 'TAG', '', '', 0, 50, '', 'checkbox', '', '', 0, 1, 0, 0, 0, 0, 0, 1),
(17, 0, 'readpoint', '阅读收费', '', '', 1, 5, '', 'input', '0', '', 0, 1, 0, 0, 0, 0, 0, 1),
(18, 0, 'groupids_view', '阅读权限', '', '', 1, 10, '', 'checkbox', '1', '', 0, 1, 0, 0, 0, 0, 0, 1),
(19, 0, 'status', '状态', '', '', 1, 2, '', 'checkbox', '', '', 1, 1, 0, 0, 0, 0, 0, 1),
(20, 0, 'flag', '属性', '', '', 1, 16, '', 'checkbox', '', '', 1, 1, 0, 0, 0, 0, 0, 1),
(21, 0, 'listorder', '排序', '', '', 1, 5, '', 'input', '1', '', 1, 1, 0, 0, 0, 0, 0, 1),
(22, 2, 'brand', '品牌', '', '', 0, 30, '', 'input', '', '', 0, 0, 0, 1, 1, 0, 0, 1),
(23, 2, 'standard', '型号', '', '', 0, 30, '', 'input', '', '', 0, 0, 0, 1, 1, 0, 0, 1),
(24, 2, 'yieldly', '产地', '', '', 0, 50, '', 'input', '', '', 0, 0, 0, 1, 1, 0, 0, 1),
(25, 2, 'pictures', '产品图集', '', '', 0, 1000, '', 'images', '', '', 0, 0, 0, 1, 1, 0, 0, 1),
(26, 2, 'price', '单价', '请输入单价', '', 1, 10, '单价不能为空', 'decimal', '', '', 1, 0, 0, 1, 1, 0, 0, 1),
(27, 2, 'unit', '价格单位', '', '', 1, 10, '', 'select', '', '{\"0\":\"件\",\"1\":\"斤\",\"2\":\"KG\",\"3\":\"吨\",\"4\":\"套\"}', 1, 0, 0, 1, 1, 0, 0, 1),
(28, 2, 'stock', '库存', '库存量必须为数字', '', 1, 5, '库存不能为空', 'number', '99999', '', 1, 0, 0, 1, 1, 0, 0, 1),
(29, 3, 'down_url', '下载地址', '', '', 1, 100, '下载地址不能为空', 'attachment', '', '', 1, 0, 0, 1, 1, 0, 0, 1),
(30, 3, 'copytype', '授权形式', '', '', 0, 20, '', 'select', '', '{\"0\":\"免费版\",\"1\":\"正式版\",\"2\":\"共享版\",\"3\":\"试用版\",\"4\":\"演示版\",\"5\":\"注册版\",\"6\":\"破解版\"}', 0, 0, 0, 1, 1, 0, 0, 1),
(31, 3, 'systems', '平台', '', '', 1, 30, '', 'select', '', '{\"0\":\"Windows\",\"1\":\"Linux\",\"2\":\"MacOS\"}', 1, 0, 0, 1, 1, 0, 0, 1),
(32, 3, 'language', '语言', '', '', 0, 20, '', 'select', '', '{\"0\":\"简体中文\",\"1\":\"繁体中文\",\"2\":\"英文\",\"3\":\"多国语言\",\"4\":\"其他语言\"}', 0, 0, 0, 1, 1, 0, 0, 1),
(33, 3, 'version', '版本', '', '', 1, 15, '版本号不能为空', 'input', '', '', 1, 0, 0, 1, 1, 0, 0, 1),
(34, 3, 'filesize', '文件大小', '只输入数字即可，单位是字节', '', 0, 10, '', 'input', '', '', 0, 0, 0, 1, 1, 0, 0, 1),
(35, 3, 'classtype', '软件类型', '', '', 1, 30, '', 'radio', '', '{\"0\":\"国产软件\",\"1\":\"国外软件\",\"2\":\"汉化补丁\",\"3\":\"程序源码\",\"4\":\"其他\"}', 1, 0, 0, 1, 1, 0, 0, 1),
(36, 3, 'stars', '评分等级', '', '', 0, 20, '', 'radio', '', '{\"0\":\"1:1星\",\"1\":\"2:2星\",\"2\":\"3:3星\",\"3\":\"4:4星\",\"4\":\"5:5星\"}', 0, 0, 0, 1, 1, 0, 0, 1),
(37, 4, 'introduce', '单页介绍', '', '0', 0, 100, '', 'textarea', '', '', 0, 0, 0, 0, 1, 0, 0, 1),
(38, 1, 'up', '顶', '', '', 0, 100, '', 'number', '0', '0', 0, 0, 0, 1, 0, 0, 1, 0),
(39, 1, 'down', '踩', '', '', 0, 100, '', 'number', '0', '0', 0, 0, 0, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lry_module`
--

CREATE TABLE `lry_module` (
  `module` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `iscore` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `version` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `setting` text,
  `listorder` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `installdate` date NOT NULL DEFAULT '2016-01-01',
  `updatedate` date NOT NULL DEFAULT '2016-01-01'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_module`
--

INSERT INTO `lry_module` (`module`, `name`, `iscore`, `version`, `description`, `setting`, `listorder`, `disabled`, `installdate`, `updatedate`) VALUES
('lry_admin_center', '后台模块', 1, '1.0', '后台模块', '', 0, 0, '2016-08-27', '2016-08-27'),
('index', '前台模块', 1, '1.0', '前台模块', '', 0, 0, '2016-09-21', '2016-09-21'),
('api', '接口模块', 1, '1.0', '为整个系统提供接口', '', 0, 0, '2016-08-28', '2016-08-28'),
('install', '安装模块', 1, '1.0', 'CMS安装模块', '', 0, 0, '2016-10-28', '2016-10-28'),
('attachment', '附件模块', 1, '1.0', '附件模块', '', 0, 0, '2016-10-10', '2016-10-10'),
('member', '会员模块', 1, '1.0', '会员模块', '', 0, 0, '2016-09-21', '2016-09-21'),
('guestbook', '留言模块', 1, '1.0', '留言板模块', '', 0, 0, '2016-10-25', '2016-10-25'),
('search', '搜索模块', 1, '1.0', '搜索模块', '', 0, 0, '2016-11-21', '2016-11-21'),
('link', '友情链接', 0, '1.0', '友情链接模块', '', 0, 0, '2016-12-11', '2016-09-28'),
('comment', '评论模块', 1, '1.0', '全站评论', '', 0, 0, '2017-01-05', '2017-01-05'),
('mobile', '手机模块', 1, '1.0', '手机模块', '', 0, 0, '2017-04-05', '2017-04-05'),
('banner', '轮播图管理', 0, '1.0', '轮播图管理模块', '', 0, 0, '2017-05-12', '2017-05-12'),
('collection', '采集模块', 1, '1.0', '采集模块', '', 0, 0, '2017-08-16', '2017-08-16'),
('wechat', '微信模块', 1, '1.0', '微信模块', '', 0, 0, '2017-11-03', '2017-11-03'),
('diyform', '自定义表单模块', 1, '1.0', '自定义表单模块', '', 0, 0, '2018-01-15', '2018-01-15'),
('adver', '广告管理', 0, '1.0', '广告管理模块', '', 0, 0, '2018-01-18', '2018-01-18'),
('pay', '支付模块', 1, '1.0', '支付模块', '', 0, 0, '2018-07-03', '2018-07-03'),
('forum', '荣耀论坛', 0, '1.0', '荣耀论坛模块', '', 0, 0, '2019-05-13', '2018-07-26'),
('vcount', '站点统计模块', 0, '1.0', '站点统计模块', '', 0, 0, '2020-09-06', '2019-06-21'),
('notes', '网站大事记', 0, '1.0', '网站大事记模块', '', 0, 0, '2025-07-18', '2025-05-30'),
('file', '文件管理', 0, '2.0', '文件管理模块', '', 0, 0, '2025-07-18', '2024-08-02'),
('spider', '蜘蛛访问记录模块', 0, '2.0', '蜘蛛访问记录模块', '', 0, 0, '2025-07-19', '2025-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `lry_notes`
--

CREATE TABLE `lry_notes` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `year` smallint UNSIGNED NOT NULL DEFAULT '0',
  `time` int UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `details` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='大事记表' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lry_notes`
--

INSERT INTO `lry_notes` (`id`, `title`, `year`, `time`, `image`, `details`) VALUES
(1, '着手布局网站', 2019, 1563465600, '', ''),
(2, '网站正式上架', 2020, 1577894400, '', ''),
(3, '工信部备案成功', 2020, 1581004800, '', ''),
(4, '公安部备案成功', 2020, 1599926400, '', ''),
(5, '全站启用https安全传输协议', 2021, 1617638400, '', ''),
(6, '脱离集成的LNMP，采用原生态LNMP自行搭建WEB服务端', 2023, 1686153600, '', '完全剥离市面上集成的LNMP  WEB服务端，比如宝塔，全面采用linux +nginx + mysql +php原生态搭建');

-- --------------------------------------------------------

--
-- Table structure for table `lry_order`
--

CREATE TABLE `lry_order` (
  `id` int UNSIGNED NOT NULL,
  `order_sn` char(18) NOT NULL DEFAULT '' COMMENT '订单号',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '订单状态0未付款1已付款',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `addtime` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '下单时间',
  `paytime` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '支付时间',
  `paytype` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '支付方式1支付宝2微信',
  `transaction` varchar(32) NOT NULL DEFAULT '' COMMENT '第三方交易单号',
  `money` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `quantity` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '数量',
  `type` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1积分,2金钱',
  `ip` char(15) NOT NULL DEFAULT '',
  `desc` varchar(250) NOT NULL DEFAULT '' COMMENT '备注'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='订单表';

-- --------------------------------------------------------

--
-- Table structure for table `lry_page`
--

CREATE TABLE `lry_page` (
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(160) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `updatetime` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_page`
--

INSERT INTO `lry_page` (`catid`, `title`, `introduce`, `content`, `updatetime`) VALUES
(8, '关于自己', '本页是自我介绍页面', '<p>至于自己的个人属性（性别、年龄、貌相等）问题，请自行百度。故主要从以下四方面介绍一下自己。</p><p><strong>生活</strong></p><p>&nbsp; 本人热爱生活、有健康的生活方式，合理的作息安排，一方面会为拥有舒适、自在的高质量生活状态而努力，另一方面我拒绝为了所谓的生活而拼命的工作，致使生活质量严重下降，得不偿失。我喜欢<span style=\"font-size: 18px;\"><strong><span style=\"color: rgb(227, 108, 9);\">8小时工作制</span></strong></span>，但是选择了医学专业可能事与愿违。</p><p><strong>工作</strong></p><p>&nbsp; 从事“伟大”的医学事业，为大家的健康保驾护航，说实在的，医学本身并没有错，错就错在自己在高考的时候脑子进水了。高强度工作、无休止的怨言、难以养家糊口的薪水，当然不限于以上原因，我渐渐对自己的医学职业所产生了恐惧，正如鲁迅先生所讲，医学医身不医心，只可惜面对现实，我们无能为力，期待那么一天，我有从医的那份神圣感。</p><p><strong>爱好</strong></p><p>&nbsp; 大家能看到此页，或许你们会问我，这是什么东东，网站？空间？怎么制作的？哈哈，的确这就是我自己独立搭建的个人博客网站，以前，我很羡慕那些搞开发、搞编程的人，很想拥有自己的网站，在自己网站上天马行空、为所欲为。或许这种原因激发了我的特殊爱好——搞编程，写代码。买了一些书，学了这方面的一些知识，慢慢的懂得了编程语言的语法和规则，不知不觉中搭建出了这个小网站，不过还是很有成就感的。</p><p><strong>擅长</strong></p><p>&nbsp; 生活中的各种家具和用品，总有坏的时候，此时弃之可惜，有一颗好奇心，喜欢捣鼓，有自己的工具箱，小到接线，大到门窗、家电维修，基本都能做好。</p><p><br/></p><p>&nbsp; 为不浪费朋友的时间、缓解朋友的视疲劳，不再多说。不详之处，可百度、可@Me。只要您高兴，啥都不是事儿！<span style=\"color: rgb(255, 0, 0);\"><strong>祝愉快、祝幸福！求赞、求祝福！</strong></span></p><p><span style=\"color: rgb(255, 0, 0);\"><strong><br/></strong></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: 24px;\"><strong><font color=\"#ff0000\"><span style=\"color: rgb(0, 0, 0);\">本人人生准则</span></font></strong></span></p><p></p><p style=\"text-align: center;\"><strong>保护生命安全，保持身体健康</strong></p><p style=\"text-align: center;\"><strong>孝敬父母，关爱家人 &nbsp;</strong></p><p style=\"text-align: center;\"><strong>从不低头，也不自大</strong></p><p style=\"text-align: center;\"><strong>再苦再难，也要坚强</strong></p><p style=\"text-align: center;\"><strong>真诚、友好、善良、负责任</strong></p><p><font color=\"#ff0000\"><b><br/></b></font><br/></p><p><br/></p>', 1628338963);

-- --------------------------------------------------------

--
-- Table structure for table `lry_pay`
--

CREATE TABLE `lry_pay` (
  `id` mediumint UNSIGNED NOT NULL,
  `trade_sn` char(18) NOT NULL DEFAULT '' COMMENT '订单号',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `money` char(8) NOT NULL DEFAULT '' COMMENT '金钱或积分的量',
  `creat_time` int UNSIGNED NOT NULL DEFAULT '0',
  `msg` varchar(30) NOT NULL DEFAULT '' COMMENT '类型说明',
  `type` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1积分,2金钱',
  `ip` char(15) NOT NULL DEFAULT '',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '1成功,0失败',
  `remarks` varchar(250) NOT NULL DEFAULT '' COMMENT '备注说明',
  `adminnote` varchar(30) NOT NULL DEFAULT '' COMMENT '如是后台操作,管理员姓名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_pay`
--

INSERT INTO `lry_pay` (`id`, `trade_sn`, `userid`, `username`, `money`, `creat_time`, `msg`, `type`, `ip`, `status`, `remarks`, `adminnote`) VALUES
(1, '201905131804384168', 1, 'love_xujx', '2', 1557741878, '每日签到', 1, '117.136.5.41', 1, '连续签到1天', ''),
(2, '201905141543060556', 3, 'cs001', '3', 1557819786, '发表帖子', 1, '122.206.190.16', 1, 'ID:8', ''),
(3, '201905141613335116', 3, 'cs001', '3', 1557821613, '发表帖子', 1, '122.206.190.16', 1, 'ID:9', ''),
(4, '201905141656218360', 4, 'lirongyaoper', '1', 1557824181, '每日登陆', 1, '122.206.190.16', 1, '', ''),
(5, '201905141706348044', 4, 'lirongyaoper', '3', 1557824794, '发表帖子', 1, '122.206.190.16', 1, 'ID:10', ''),
(6, '201905171725060968', 4, 'lirongyaoper', '1', 1558085106, '每日登陆', 1, '122.206.190.89', 1, '', ''),
(7, '201905182330347406', 4, 'lirongyaoper', '1', 1558193434, '每日登陆', 1, '1.196.181.162', 1, '', ''),
(8, '201905190651088918', 4, 'lirongyaoper', '2', 1558219868, '每日签到', 1, '1.196.181.162', 1, '连续签到1天', ''),
(9, '201905191523426595', 4, 'lirongyaoper', '1', 1558250622, '每日登陆', 1, '122.206.190.112', 1, '', ''),
(10, '201905191646555447', 2, 'qinxingsong123', '1', 1558255615, '每日登陆', 1, '59.109.118.29', 1, '', ''),
(11, '201905201715233566', 4, 'lirongyaoper', '1', 1558343723, '每日登陆', 1, '122.206.190.59', 1, '', ''),
(12, '201905201715485880', 4, 'lirongyaoper', '4', 1558343748, '每日签到', 1, '122.206.190.59', 1, '连续签到2天', ''),
(13, '201905201741199089', 4, 'lirongyaoper', '3', 1558345279, '发表帖子', 1, '122.206.190.59', 1, 'ID:19', ''),
(14, '201905201746329223', 4, 'lirongyaoper', '3', 1558345592, '发表帖子', 1, '122.206.190.59', 1, 'ID:20', ''),
(15, '201905201748470169', 4, 'lirongyaoper', '3', 1558345727, '发表帖子', 1, '106.34.46.6', 1, 'ID:21', ''),
(16, '201905201756496595', 8, 'huchaofan', '2', 1558346209, '每日签到', 1, '122.206.190.59', 1, '连续签到1天', ''),
(17, '201905201758352543', 8, 'huchaofan', '3', 1558346315, '发表帖子', 1, '122.206.190.59', 1, 'ID:22', ''),
(18, '201905210519449693', 4, 'lirongyaoper', '6', 1558387184, '每日签到', 1, '106.33.15.107', 1, '连续签到3天', ''),
(19, '201905211653004036', 1, 'lirongyaoper', '1', 1558428780, '每日登陆', 1, '122.206.190.30', 1, '', ''),
(20, '201905282215171007', 2, 'qinxingsong123', '1', 1559052917, '每日登陆', 1, '59.109.118.226', 1, '', ''),
(21, '201905282215451664', 2, 'qinxingsong123', '1', 1559052945, '发布评论', 1, '59.109.118.226', 1, '自动获取', ''),
(22, '201905282258408465', 4, '班楠楠', '1', 1559055520, '发布评论', 1, '171.10.4.219', 1, '自动获取', ''),
(23, '201905282317128393', 1, 'lirongyaoper', '1', 1559056632, '每日登陆', 1, '122.206.190.109', 1, '', ''),
(24, '201905282317341919', 1, 'lirongyaoper', '1', 1559056654, '发布评论', 1, '122.206.190.109', 1, '自动获取', ''),
(25, '201905282321551278', 4, '班楠楠', '1', 1559056915, '发布评论', 1, '171.10.4.219', 1, '自动获取', ''),
(26, '201905282330330708', 1, 'lirongyaoper', '1', 1559057433, '发布评论', 1, '122.206.190.109', 1, '自动获取', ''),
(27, '201905291732228485', 1, 'lirongyaoper', '1', 1559122342, '每日登陆', 1, '106.34.69.185', 1, '', ''),
(28, '201905291732336777', 1, 'lirongyaoper', '1', 1559122353, '发布评论', 1, '106.34.69.185', 1, '自动获取', ''),
(29, '201905292325380864', 1, 'lirongyaoper', '2', 1559143538, '每日签到', 1, '106.34.69.185', 1, '连续签到1天', ''),
(30, '201906022154503392', 1, 'lirongyaoper', '1', 1559483690, '每日登陆', 1, '122.206.190.109', 1, '', ''),
(31, '201906022235324911', 3, 'huchaofan', '1', 1559486132, '每日登陆', 1, '106.34.74.105', 1, '', ''),
(32, '201906030023408406', 1, 'lirongyaoper', '1', 1559492620, '每日登陆', 1, '122.206.190.109', 1, '', ''),
(33, '201906031008067417', 3, 'huchaofan', '2', 1559527686, '每日签到', 1, '106.33.14.17', 1, '连续签到1天', ''),
(34, '201906041428342516', 1, 'lirongyaoper', '1', 1559629714, '每日登陆', 1, '106.34.114.188', 1, '', ''),
(35, '201906062038476107', 1, 'lirongyaoper', '2', 1559824727, '每日签到', 1, '171.10.179.230', 1, '连续签到1天', ''),
(36, '201906071031300406', 1, 'lirongyaoper', '1', 1559874690, '每日登陆', 1, '122.206.190.111', 1, '', ''),
(37, '201906071044084311', 1, 'lirongyaoper', '4', 1559875448, '每日签到', 1, '122.206.190.111', 1, '连续签到2天', ''),
(38, '201906081240574924', 1, 'lirongyaoper', '6', 1559968857, '每日签到', 1, '106.34.193.19', 1, '连续签到3天', ''),
(39, '201906090120071705', 3, 'huchaofan', '1', 1560014407, '每日登陆', 1, '223.91.63.117', 1, '', ''),
(40, '201906090121096411', 1, 'lirongyaoper', '1', 1560014469, '每日登陆', 1, '223.91.63.117', 1, '', ''),
(41, '201906090122440952', 3, 'huchaofan', '2', 1560014563, '每日签到', 1, '223.91.63.117', 1, '连续签到1天', ''),
(42, '201906090123350735', 3, 'huchaofan', '3', 1560014615, '发表帖子', 1, '223.91.63.117', 1, 'ID:23', ''),
(43, '201906090209297414', 1, 'lirongyaoper', '8', 1560017369, '每日签到', 1, '223.91.63.117', 1, '连续签到4天', ''),
(44, '201906092108473173', 3, 'huchaofan', '3', 1560085727, '发表帖子', 1, '122.206.190.59', 1, 'ID:24', ''),
(45, '201906092131154488', 3, 'huchaofan', '3', 1560087075, '发表帖子', 1, '122.206.190.59', 1, 'ID:25', ''),
(46, '201906092151194999', 3, 'huchaofan', '3', 1560088279, '发表帖子', 1, '122.206.190.59', 1, 'ID:26', ''),
(47, '201906101603477729', 1, 'lirongyaoper', '10', 1560153827, '每日签到', 1, '106.34.152.126', 1, '连续签到5天', ''),
(48, '201906112252500415', 1, 'lirongyaoper', '1', 1560264770, '每日登陆', 1, '122.206.190.7', 1, '', ''),
(49, '201906112308374399', 1, 'lirongyaoper', '3', 1560265717, '发表帖子', 1, '122.206.190.7', 1, 'ID:27', ''),
(50, '201906131516339303', 1, 'lirongyaoper', '1', 1560410193, '每日登陆', 1, '122.206.190.125', 1, '', ''),
(51, '201906222247469811', 1, 'lirongyaoper', '1', 1561214866, '每日登陆', 1, '122.206.190.59', 1, '', ''),
(52, '201907051112150153', 1, 'lirongyaoper', '2', 1562296335, '每日签到', 1, '182.112.147.161', 1, '连续签到1天', ''),
(53, '201907051134105970', 1, 'lirongyaoper', '1', 1562297650, '每日登陆', 1, '182.112.147.161', 1, '', ''),
(54, '201907051344285033', 18, 'jack', '1', 1562305468, '评论奖励', 1, '182.112.147.161', 1, '论坛评论ID:22', ''),
(55, '201907051345058951', 18, 'jack', '1', 1562305505, '评论奖励', 1, '182.112.147.161', 1, '论坛评论ID:22', ''),
(56, '201912072130066446', 1, 'lirongyaoper', '1', 1575725406, '每日登陆', 1, '115.51.8.254', 1, '', ''),
(57, '201912072142390709', 1, 'lirongyaoper', '3', 1575726159, '发表帖子', 1, '115.51.8.254', 1, 'ID:28', ''),
(58, '201912101045430313', 1, 'lirongyaoper', '1', 1575945943, '每日登陆', 1, '171.9.146.161', 1, '', ''),
(59, '201912101045472589', 1, 'lirongyaoper', '2', 1575945947, '每日签到', 1, '171.9.146.161', 1, '连续签到1天', ''),
(60, '201912132148000045', 1, 'lirongyaoper', '3', 1576244880, '发表帖子', 1, '115.51.9.175', 1, 'ID:29', ''),
(61, '201912140656024848', 1, 'lirongyaoper', '1', 1576277762, '每日登陆', 1, '115.51.9.175', 1, '', ''),
(62, '201912140656077665', 1, 'lirongyaoper', '2', 1576277767, '每日签到', 1, '115.51.9.175', 1, '连续签到1天', ''),
(63, '201912162239378256', 1, 'lirongyaoper', '1', 1576507177, '每日登陆', 1, '115.51.8.81', 1, '', ''),
(64, '201912162244195047', 1, 'lirongyaoper', '3', 1576507459, '发表帖子', 1, '115.51.8.81', 1, 'ID:30', ''),
(65, '201912202326511578', 1, 'lirongyaoper', '1', 1576855611, '每日登陆', 1, '115.51.9.118', 1, '', ''),
(66, '201912202327102426', 1, 'lirongyaoper', '2', 1576855630, '每日签到', 1, '115.51.9.118', 1, '连续签到1天', ''),
(67, '201912202334233976', 1, 'lirongyaoper', '3', 1576856063, '发表帖子', 1, '115.51.9.118', 1, 'ID:31', ''),
(68, '201912271737171860', 1, 'lirongyaoper', '1', 1577439437, '每日登陆', 1, '115.51.8.245', 1, '', ''),
(69, '201912271803269561', 1, 'lirongyaoper', '2', 1577441006, '每日签到', 1, '115.51.8.245', 1, '连续签到1天', ''),
(70, '201912271814165760', 1, 'lirongyaoper', '3', 1577441656, '发表帖子', 1, '115.51.8.245', 1, 'ID:32', ''),
(71, '201912302314195535', 1, 'lirongyaoper', '2', 1577718859, '每日签到', 1, '115.51.8.175', 1, '连续签到1天', ''),
(72, '202001052337076564', 1, 'lirongyaoper', '1', 1578238627, '每日登陆', 1, '171.10.150.170', 1, '', ''),
(73, '202009060038443864', 1, 'lirongyaoper', '1', 1599323924, '每日登录', 1, '127.0.0.1', 1, '', ''),
(74, '202009071947078736', 1, 'lirongyaoper', '1', 1599479227, '每日登录', 1, '127.0.0.1', 1, '', ''),
(75, '202009071947146377', 1, 'lirongyaoper', '2', 1599479234, '每日签到', 1, '127.0.0.1', 1, '连续签到1天', ''),
(76, '202009092338101281', 1, 'lirongyaoper', '1', 1599665889, '每日登录', 1, '127.0.0.1', 1, '', ''),
(77, '202009092338135963', 1, 'lirongyaoper', '2', 1599665893, '每日签到', 1, '127.0.0.1', 1, '连续签到1天', ''),
(78, '202009092343218775', 1, 'lirongyaoper', '3', 1599666201, '发表帖子', 1, '127.0.0.1', 1, 'ID:33', ''),
(79, '202009131619067969', 1, 'lirongyaoper', '1', 1599985146, '每日登录', 1, '39.144.1.231', 1, '', ''),
(80, '202009131619109868', 1, 'lirongyaoper', '2', 1599985150, '每日签到', 1, '39.144.1.231', 1, '连续签到1天', ''),
(81, '202009132024022032', 1, 'lirongyaoper', '1', 1599999842, '评论奖励', 1, '115.51.11.73', 1, '论坛评论ID:22', ''),
(82, '202009140708389345', 1, 'lirongyaoper', '4', 1600038518, '每日签到', 1, '115.51.11.73', 1, '连续签到2天', ''),
(83, '202009142315074410', 1, 'lirongyaoper', '1', 1600096507, '每日登录', 1, '115.51.9.213', 1, '', ''),
(84, '202009150720371123', 1, 'lirongyaoper', '1', 1600125637, '每日登录', 1, '117.132.191.184', 1, '', ''),
(85, '202009150720480851', 1, 'lirongyaoper', '6', 1600125648, '每日签到', 1, '117.132.191.184', 1, '连续签到3天', ''),
(86, '202009162352300334', 1, 'lirongyaoper', '1', 1600271550, '每日登录', 1, '115.51.11.157', 1, '', ''),
(87, '202009162352337650', 1, 'lirongyaoper', '8', 1600271553, '每日签到', 1, '115.51.11.157', 1, '连续签到4天', ''),
(88, '202009170013279349', 1, 'lirongyaoper', '10', 1600272807, '每日签到', 1, '115.51.11.157', 1, '连续签到5天', ''),
(89, '202009170023308407', 1, 'lirongyaoper', '3', 1600273410, '发表帖子', 1, '115.51.11.157', 1, 'ID:34', ''),
(90, '202009170032343343', 1, 'lirongyaoper', '1', 1600273954, '评论奖励', 1, '115.51.11.157', 1, '论坛评论ID:34', ''),
(91, '202009170045467649', 1, 'lirongyaoper', '3', 1600274746, '发表帖子', 1, '115.51.11.157', 1, 'ID:35', ''),
(92, '202009170048357527', 1, 'lirongyaoper', '3', 1600274915, '发表帖子', 1, '115.51.11.157', 1, 'ID:36', ''),
(93, '202009172142005192', 1, 'lirongyaoper', '1', 1600350120, '每日登录', 1, '115.51.10.107', 1, '', ''),
(94, '202009172147307362', 1, 'lirongyaoper', '3', 1600350450, '发表帖子', 1, '115.51.10.107', 1, 'ID:37', ''),
(95, '202009180013582554', 1, 'lirongyaoper', '10', 1600359238, '每日签到', 1, '115.51.10.107', 1, '连续签到6天', ''),
(96, '202009182218554638', 1, 'lirongyaoper', '1', 1600438735, '每日登录', 1, '115.51.9.194', 1, '', ''),
(97, '202009182246589557', 27, 'cxjlt', '1', 1600440418, '评论奖励', 1, '115.51.9.194', 1, '论坛评论ID:10', ''),
(98, '202009182247575914', 27, 'cxjlt', '2', 1600440477, '每日签到', 1, '115.51.9.194', 1, '连续签到1天', ''),
(99, '202009211949444878', 1, 'lirongyaoper', '1', 1600688984, '每日登录', 1, '115.51.11.0', 1, '', ''),
(100, '202009211949473713', 1, 'lirongyaoper', '2', 1600688987, '每日签到', 1, '115.51.11.0', 1, '连续签到1天', ''),
(101, '202009212056380795', 3, 'huchaofan', '1', 1600692998, '每日登录', 1, '117.136.104.31', 1, '', ''),
(102, '202009212057098834', 3, 'huchaofan', '2', 1600693029, '每日签到', 1, '117.136.104.31', 1, '连续签到1天', ''),
(103, '202009220003465209', 1, 'lirongyaoper', '1', 1600704226, '每日登录', 1, '115.51.11.0', 1, '', ''),
(104, '202009220004217353', 1, 'lirongyaoper', '4', 1600704261, '每日签到', 1, '115.51.11.0', 1, '连续签到2天', ''),
(105, '202010061105566948', 1, 'lirongyaoper', '1', 1601953556, '每日登录', 1, '115.51.8.238', 1, '', ''),
(106, '202010061106071626', 1, 'lirongyaoper', '2', 1601953567, '每日签到', 1, '115.51.8.238', 1, '连续签到1天', ''),
(107, '202010061244598478', 1, 'lirongyaoper', '3', 1601959499, '发表帖子', 1, '115.51.8.238', 1, 'ID:38', ''),
(108, '202012012249485424', 29, '上海中公医疗', '2', 1606834188, '每日签到', 1, '114.88.143.163', 1, '连续签到1天', ''),
(109, '202012012253454876', 29, '上海中公医疗', '3', 1606834425, '发表帖子', 1, '114.88.143.163', 1, 'ID:39', ''),
(110, '202012102138131678', 1, 'lirongyaoper', '1', 1607607493, '每日登录', 1, '115.51.10.118', 1, '', ''),
(111, '202012102138165809', 1, 'lirongyaoper', '2', 1607607496, '每日签到', 1, '115.51.10.118', 1, '连续签到1天', ''),
(112, '202012110827245291', 1, 'lirongyaoper', '1', 1607646444, '每日登录', 1, '39.144.11.63', 1, '', ''),
(113, '202012110941350137', 1, 'lirongyaoper', '4', 1607650895, '每日签到', 1, '115.51.10.29', 1, '连续签到2天', ''),
(114, '202012122342053255', 1, 'lirongyaoper', '1', 1607787725, '每日登录', 1, '115.51.11.212', 1, '', ''),
(115, '202012122342291563', 1, 'lirongyaoper', '6', 1607787749, '每日签到', 1, '115.51.11.212', 1, '连续签到3天', ''),
(116, '202012130016427744', 1, 'lirongyaoper', '1', 1607789802, '每日登录', 1, '115.51.11.212', 1, '', ''),
(117, '202012130017263452', 1, 'lirongyaoper', '8', 1607789846, '每日签到', 1, '115.51.11.212', 1, '连续签到4天', ''),
(118, '202012152205126914', 1, 'lirongyaoper', '2', 1608041112, '每日签到', 1, '115.51.9.192', 1, '连续签到1天', ''),
(119, '202012171507580044', 1, 'lirongyaoper', '1', 1608188878, '每日登录', 1, '39.144.13.230', 1, '', ''),
(120, '202012171508069068', 1, 'lirongyaoper', '2', 1608188886, '每日签到', 1, '39.144.13.230', 1, '连续签到1天', ''),
(121, '202012181052049831', 1, 'lirongyaoper', '4', 1608259924, '每日签到', 1, '115.51.11.93', 1, '连续签到2天', ''),
(122, '202012212318370144', 1, 'lirongyaoper', '1', 1608563917, '每日登录', 1, '115.51.8.44', 1, '', ''),
(123, '202012221441365510', 1, 'lirongyaoper', '2', 1608619296, '每日签到', 1, '39.144.3.39', 1, '连续签到1天', ''),
(124, '202101270033011769', 1, 'lirongyaoper', '1', 1611678781, '每日登录', 1, '115.51.8.171', 1, '', ''),
(125, '202101292222548838', 1, 'lirongyaoper', '1', 1611930174, '每日登录', 1, '115.51.11.8', 1, '', ''),
(126, '202101292223014131', 1, 'lirongyaoper', '2', 1611930181, '每日签到', 1, '115.51.11.8', 1, '连续签到1天', ''),
(127, '202101302134161843', 1, 'lirongyaoper', '1', 1612013656, '每日登录', 1, '115.51.11.59', 1, '', ''),
(128, '202101302134188852', 1, 'lirongyaoper', '4', 1612013658, '每日签到', 1, '115.51.11.59', 1, '连续签到2天', ''),
(129, '202101302138506969', 1, 'lirongyaoper', '3', 1612013930, '发表帖子', 1, '115.51.11.59', 1, 'ID:40', ''),
(130, '202105030322144362', 1, 'lirongyaoper', '1', 1619983334, '每日登录', 1, '115.51.11.135', 1, '', ''),
(131, '202105050153510360', 1, 'lirongyaoper', '1', 1620150831, '每日登录', 1, '115.51.9.145', 1, '', ''),
(132, '202105050153543057', 1, 'lirongyaoper', '2', 1620150834, '每日签到', 1, '115.51.9.145', 1, '连续签到1天', ''),
(133, '202106061115183992', 1, 'lirongyaoper', '1', 1622949318, '每日登录', 1, '61.158.152.29', 1, '', ''),
(134, '202107312340405441', 1, 'lirongyaoper', '1', 1627746040, '每日登录', 1, '115.51.11.206', 1, '', ''),
(135, '202108112140543928', 1, 'lirongyaoper', '1', 1628689254, '每日登录', 1, '115.51.10.238', 1, '', ''),
(136, '202108132211121649', 1, 'lirongyaoper', '1', 1628863872, '每日登录', 1, '115.51.8.120', 1, '', ''),
(137, '202108182043437651', 1, 'lirongyaoper', '1', 1629290623, '每日登录', 1, '223.91.37.218', 1, '', ''),
(138, '202108182043498606', 1, 'lirongyaoper', '2', 1629290629, '每日签到', 1, '223.91.37.218', 1, '连续签到1天', ''),
(139, '202108202230494525', 1, 'lirongyaoper', '1', 1629469849, '每日登录', 1, '223.91.37.198', 1, '', ''),
(140, '202108312204081764', 1, 'lirongyaoper', '1', 1630418648, '每日登录', 1, '223.91.37.250', 1, '', ''),
(141, '202507121818090497', 43, 'lryforum', '1', 1752315489, '发布评论', 1, '42.227.0.186', 1, '自动获取', ''),
(142, '202507142214354552', 43, 'lryforum', '1', 1752502475, '每日登录', 1, '123.13.79.138', 1, '', ''),
(143, '202507142214555592', 43, 'lryforum', '1', 1752502495, '发布评论', 1, '123.13.79.138', 1, '自动获取', '');

-- --------------------------------------------------------

--
-- Table structure for table `lry_pay_mode`
--

CREATE TABLE `lry_pay_mode` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `logo` varchar(100) NOT NULL DEFAULT '',
  `desc` varchar(250) NOT NULL DEFAULT '',
  `config` text,
  `enabled` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(60) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '' COMMENT '支付调用方法',
  `template` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_pay_mode`
--

INSERT INTO `lry_pay_mode` (`id`, `name`, `logo`, `desc`, `config`, `enabled`, `author`, `version`, `action`, `template`) VALUES
(1, '支付宝', 'alipay.png', '支付宝新版在线支付插件，要求PHP版本>=5.5', '{\"app_id\":\"\",\"merchant_private_key\":\"\",\"alipay_public_key\":\"\"}', 0, '袁志蒙', '1.0', 'alipay', 'alipay'),
(2, '微信', 'wechat.png', '微信支付提供公众号支付、APP支付、扫码支付、刷卡支付等支付方式。', '{\\\"app_id\\\":\\\"\\\",\\\"app_secret\\\":\\\"\\\",\\\"mch_id\\\":\\\"\\\",\\\"key\\\":\\\"\\\"}', 1, '袁志蒙', '1.0', 'wechat', 'wechat');

-- --------------------------------------------------------

--
-- Table structure for table `lry_pay_spend`
--

CREATE TABLE `lry_pay_spend` (
  `id` mediumint UNSIGNED NOT NULL,
  `trade_sn` char(18) NOT NULL DEFAULT '' COMMENT '订单号',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `money` char(8) NOT NULL DEFAULT '' COMMENT '金钱或积分的量',
  `creat_time` int UNSIGNED NOT NULL DEFAULT '0',
  `msg` varchar(30) NOT NULL DEFAULT '' COMMENT '类型说明',
  `type` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1积分,2金钱',
  `ip` char(15) NOT NULL DEFAULT '',
  `remarks` varchar(250) NOT NULL DEFAULT '' COMMENT '备注说明'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_product`
--

CREATE TABLE `lry_product` (
  `id` int UNSIGNED NOT NULL,
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(180) NOT NULL DEFAULT '',
  `color` char(9) NOT NULL DEFAULT '',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int UNSIGNED NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `click` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `copyfrom` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(150) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `flag` varchar(12) NOT NULL DEFAULT '' COMMENT '1置顶,2头条,3特荐,4推荐,5热点,6幻灯,7跳转',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `issystem` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `listorder` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `groupids_view` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `readpoint` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '阅读收费',
  `paytype` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '收费类型',
  `is_push` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否百度推送',
  `brand` varchar(50) NOT NULL DEFAULT '' COMMENT '品牌',
  `standard` varchar(100) NOT NULL DEFAULT '' COMMENT '型号',
  `yieldly` varchar(100) NOT NULL DEFAULT '' COMMENT '产地',
  `pictures` text COMMENT '产品图集',
  `price` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '单价',
  `unit` varchar(30) NOT NULL DEFAULT '' COMMENT '价格单位',
  `stock` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '库存'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_spider_log`
--

CREATE TABLE `lry_spider_log` (
  `id` int UNSIGNED NOT NULL,
  `spider` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '蜘蛛',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `addtime` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='蜘蛛访问日志';

--
-- Dumping data for table `lry_spider_log`
--

INSERT INTO `lry_spider_log` (`id`, `spider`, `ip`, `url`, `referer`, `addtime`) VALUES
(1, 8, '223.109.252.198', 'https://www.lirongyaoper.com/', '', 1752937605),
(2, 2, '192.178.4.103', 'https://lirongyaoper.com/fengyunbianhuan/57.html', '', 1752942572),
(3, 11, '110.249.202.105', 'https://www.lirongyaoper.com/?post=2', '', 1752942823),
(4, 3, '42.236.12.224', 'https://lirongyaoper.com/', 'https://lirongyaoper.com', 1752946581),
(5, 3, '42.236.17.254', 'https://lirongyaoper.com/', 'https://lirongyaoper.com/', 1752946585),
(6, 1, '116.179.32.88', 'https://www.lirongyaoper.com/diandishenghuo/', '', 1752949225),
(7, 8, '223.109.255.167', 'https://lirongyaoper.com/xianyansuiyu/55.html', '', 1752951979),
(8, 1, '220.181.108.110', 'https://lirongyaoper.com/xianyansuiyu/5.html', '', 1752952377),
(9, 1, '116.179.32.163', 'https://lirongyaoper.com/', '', 1752952377),
(10, 1, '220.181.108.159', 'https://lirongyaoper.com/xianyansuiyu/23.html', '', 1752952577),
(11, 1, '220.181.108.155', 'https://lirongyaoper.com/xianyansuiyu/5.html', '', 1752952577),
(12, 1, '116.179.32.80', 'https://lirongyaoper.com/zhiqurensheng/', '', 1752952577),
(13, 1, '220.181.108.102', 'https://lirongyaoper.com/xuewuzhijing/10.html', '', 1752952577),
(14, 8, '180.102.110.161', 'https://www.lirongyaoper.com/caozuoxitong/59.html', '', 1752955598),
(15, 1, '116.179.32.32', 'https://lirongyaoper.com/diandishenghuo/', '', 1752958186),
(16, 1, '220.181.108.104', 'https://www.lirongyaoper.com/?p=648', '', 1752960628),
(17, 1, '116.179.32.137', 'https://lirongyaoper.com/?author=1', '', 1752971641),
(18, 4, '106.8.139.223', 'https://lirongyaoper.com/', '', 1752972548),
(19, 4, '106.8.131.147', 'https://www.lirongyaoper.com/', '', 1752972548),
(20, 1, '220.181.108.80', 'https://www.lirongyaoper.com/guanyuziji/', '', 1752973395),
(21, 11, '110.249.201.31', 'https://www.lirongyaoper.com/?post=4', '', 1752975105),
(22, 11, '110.249.202.160', 'https://www.lirongyaoper.com/?record=201810', '', 1752975812),
(23, 2, '66.249.64.224', 'https://www.lirongyaoper.com/xuewuzhijing/9.html', '', 1752984456),
(24, 8, '112.86.225.31', 'https://lirongyaoper.com/', '', 1752986131),
(25, 8, '223.109.252.170', 'https://lirongyaoper.com/', '', 1752986399),
(26, 8, '121.229.156.98', 'https://www.lirongyaoper.com/', '', 1752986642),
(27, 8, '223.109.255.143', 'https://www.lirongyaoper.com/', '', 1752986980),
(28, 1, '220.181.108.155', 'https://lirongyaoper.com/xianyansuiyu/16.html', '', 1752988910),
(29, 2, '192.178.4.101', 'https://lirongyaoper.com/', '', 1752989859),
(30, 8, '112.86.225.165', 'https://lirongyaoper.com/', '', 1752994658),
(31, 8, '121.229.156.123', 'https://lirongyaoper.com/', '', 1752997617),
(32, 8, '223.109.252.201', 'https://www.lirongyaoper.com/', '', 1752997902),
(33, 8, '223.109.252.251', 'https://www.lirongyaoper.com/', '', 1752998300),
(34, 4, '116.132.136.185', 'https://lirongyaoper.com/guanyuziji/', '', 1752998684),
(35, 4, '116.132.255.169', 'https://lirongyaoper.com/fengyunbianhuan/57.html', '', 1752998686),
(36, 4, '123.182.50.48', 'https://www.lirongyaoper.com/notes/index/timeline.html', '', 1752998716),
(37, 4, '123.182.51.239', 'https://lirongyaoper.com/xianyansuiyu/50.html', '', 1752998803),
(38, 8, '112.86.225.210', 'https://lirongyaoper.com/', '', 1753006628),
(39, 8, '223.109.252.242', 'https://lirongyaoper.com/', '', 1753006853),
(40, 2, '66.249.64.225', 'https://www.lirongyaoper.com/xuewuzhijing/', '', 1753007371),
(41, 8, '121.229.156.28', 'https://www.lirongyaoper.com/', '', 1753007446),
(42, 11, '110.249.202.8', 'https://www.lirongyaoper.com/', '', 1753009048),
(43, 8, '121.229.156.104', 'https://www.lirongyaoper.com/', '', 1753009503),
(44, 2, '192.178.4.102', 'https://lirongyaoper.com/xianyansuiyu/32.html', '', 1753018171),
(45, 11, '110.249.202.240', 'https://www.lirongyaoper.com/', '', 1753019109),
(46, 1, '116.179.32.235', 'https://www.lirongyaoper.com/xianyansuiyu/31.html', '', 1753021038),
(47, 1, '220.181.108.94', 'https://lirongyaoper.com/index/index/init.html', '', 1753021540),
(48, 8, '121.229.156.105', 'https://lirongyaoper.com/', '', 1753022603),
(49, 1, '220.181.108.91', 'https://lirongyaoper.com/?record=20181105', '', 1753023030),
(50, 3, '42.236.17.94', 'https://www.lirongyaoper.com/', 'https://www.lirongyaoper.com/', 1753023329),
(51, 11, '110.249.202.114', 'https://www.lirongyaoper.com/', '', 1753025861),
(52, 1, '116.179.32.41', 'https://lirongyaoper.com/fengyunbianhuan/', '', 1753026320),
(53, 8, '180.102.110.139', 'https://lirongyaoper.com/', '', 1753030721),
(54, 8, '121.229.156.11', 'https://www.lirongyaoper.com/', '', 1753033170),
(55, 3, '42.236.12.198', 'https://lirongyaoper.com/', 'https://lirongyaoper.com', 1753033198),
(56, 3, '42.236.17.57', 'https://lirongyaoper.com/', 'https://lirongyaoper.com/', 1753033199),
(57, 1, '116.179.32.235', 'https://lirongyaoper.com/caozuoxitong/', '', 1753033993),
(58, 8, '223.109.252.209', 'https://www.lirongyaoper.com/', '', 1753034051),
(59, 5, '40.77.167.2', 'https://www.lirongyaoper.com/xianyansuiyu/list_2.html', '', 1753053095),
(60, 11, '110.249.202.162', 'https://www.lirongyaoper.com/zhiqurensheng/', '', 1753065105),
(61, 11, '110.249.201.101', 'https://www.lirongyaoper.com/?author=1', '', 1753066999),
(62, 8, '112.86.225.167', 'https://www.lirongyaoper.com/', '', 1753069529),
(63, 8, '180.102.110.149', 'https://lirongyaoper.com/', '', 1753071037),
(64, 8, '112.86.225.22', 'https://www.lirongyaoper.com/', '', 1753071600),
(65, 8, '112.86.225.171', 'https://lirongyaoper.com/', '', 1753071973),
(66, 11, '111.225.149.176', 'https://www.lirongyaoper.com/', '', 1753072619),
(67, 8, '112.86.225.105', 'https://lirongyaoper.com/', '', 1753079151),
(68, 8, '121.229.156.106', 'https://www.lirongyaoper.com/', '', 1753079745),
(69, 8, '223.109.252.188', 'https://www.lirongyaoper.com/', '', 1753079916),
(70, 8, '112.86.225.190', 'https://lirongyaoper.com/', '', 1753081810),
(71, 4, '124.239.12.135', 'https://lirongyaoper.com/xuewuzhijing/61.html', '', 1753085187),
(72, 2, '66.249.64.225', 'https://www.lirongyaoper.com/gujianqingshen/', '', 1753085743),
(73, 11, '110.249.201.89', 'https://www.lirongyaoper.com/', '', 1753087391),
(74, 5, '52.167.144.168', 'https://www.lirongyaoper.com/caozuoxitong/', '', 1753088833),
(75, 11, '110.249.201.22', 'https://www.lirongyaoper.com/phpxiangguan/', '', 1753091426),
(76, 8, '112.86.225.50', 'https://lirongyaoper.com/', '', 1753093472),
(77, 8, '112.86.225.171', 'https://lirongyaoper.com/', '', 1753094324),
(78, 8, '121.229.156.26', 'https://www.lirongyaoper.com/', '', 1753096110),
(79, 8, '112.86.225.249', 'https://www.lirongyaoper.com/', '', 1753106149),
(80, 11, '110.249.201.81', 'https://www.lirongyaoper.com/', '', 1753106827),
(81, 11, '110.249.202.108', 'https://www.lirongyaoper.com/?p=71', '', 1753107901),
(82, 11, '110.249.202.183', 'https://www.lirongyaoper.com/', '', 1753108977),
(83, 1, '220.181.108.146', 'https://www.lirongyaoper.com/zhiqurensheng/', '', 1753117232),
(84, 11, '110.249.202.229', 'https://www.lirongyaoper.com/yixinyiyi/', '', 1753118646),
(85, 5, '52.167.144.158', 'https://www.lirongyaoper.com/xuewuzhijing/9.html', '', 1753122845),
(86, 8, '112.86.225.157', 'https://lirongyaoper.com/', '', 1753123336),
(87, 8, '223.109.252.179', 'https://www.lirongyaoper.com/', '', 1753124192),
(88, 2, '66.249.65.195', 'https://lirongyaoper.com/xianyansuiyu/34.html', '', 1753124292),
(89, 1, '220.181.108.110', 'https://www.lirongyaoper.com/xianyansuiyu/', '', 1753125071),
(90, 8, '121.229.156.21', 'https://lirongyaoper.com/', '', 1753125905),
(91, 8, '112.86.225.173', 'https://www.lirongyaoper.com/', '', 1753126818),
(92, 1, '220.181.108.166', 'https://lirongyaoper.com/xianyansuiyu/30.html', '', 1753137571),
(93, 3, '42.236.17.53', 'https://lirongyaoper.com/', 'https://lirongyaoper.com', 1753141628),
(94, 3, '42.236.17.235', 'https://lirongyaoper.com/', 'https://lirongyaoper.com/', 1753141630),
(95, 1, '116.179.32.44', 'https://www.lirongyaoper.com/shiyonggongju/', '', 1753146199),
(96, 8, '223.109.252.185', 'https://www.lirongyaoper.com/guestbook/index/init.html', '', 1753148108),
(97, 8, '223.109.255.171', 'https://lirongyaoper.com/', '', 1753150687),
(98, 8, '223.109.255.155', 'https://lirongyaoper.com/', '', 1753150940),
(99, 1, '116.179.32.223', 'https://www.lirongyaoper.com/xuewuzhijing/9.html', '', 1753151000),
(100, 8, '112.86.225.102', 'https://www.lirongyaoper.com/', '', 1753151363),
(101, 8, '112.86.225.190', 'https://www.lirongyaoper.com/', '', 1753151602),
(102, 1, '183.129.153.150', 'https://www.lirongyaoper.com/', 'https://www.baidu.com', 1753153394),
(103, 1, '183.129.153.150', 'https://www.lirongyaoper.com/', 'https://www.baidu.com', 1753153401),
(104, 11, '110.249.201.25', 'https://www.lirongyaoper.com/', '', 1753154891),
(105, 1, '220.181.108.104', 'https://lirongyaoper.com/phpxiangguan/list_1.html', '', 1753155171),
(106, 8, '223.109.252.208', 'https://www.lirongyaoper.com/fengyunbianhuan/17.html', '', 1753155176),
(107, 1, '116.179.32.148', 'https://www.lirongyaoper.com/xuewuzhijing/9.html', '', 1753155800),
(108, 1, '116.179.32.46', 'https://www.lirongyaoper.com/xianyansuiyu/34.html', '', 1753158200),
(109, 1, '116.179.32.35', 'https://www.lirongyaoper.com/phpxiangguan/35.html', '', 1753160600),
(110, 5, '40.77.167.79', 'https://www.lirongyaoper.com/xianyansuiyu/', '', 1753161536),
(111, 1, '220.181.108.91', 'https://lirongyaoper.com/xuewuzhijing/list_1.html', '', 1753162371),
(112, 2, '66.249.74.1', 'https://www.lirongyaoper.com/fengyunbianhuan/', '', 1753162609),
(113, 2, '66.249.74.2', 'https://www.lirongyaoper.com/babaizhijiao/', '', 1753162790),
(114, 8, '180.102.110.163', 'https://lirongyaoper.com/', '', 1753165307),
(115, 8, '223.109.252.144', 'https://www.lirongyaoper.com/', '', 1753165779),
(116, 8, '112.86.225.117', 'https://www.lirongyaoper.com/', '', 1753166131),
(117, 8, '112.86.225.176', 'https://lirongyaoper.com/', '', 1753167703),
(118, 11, '110.249.201.106', 'https://www.lirongyaoper.com/?post=4', '', 1753168878),
(119, 2, '66.249.74.1', 'https://www.lirongyaoper.com/gujianqingshen/52.html', '', 1753170288),
(120, 2, '66.249.65.193', 'https://lirongyaoper.com/yixuejiankang/', '', 1753175751),
(121, 8, '223.109.255.150', 'https://www.lirongyaoper.com/shiyonggongju/', '', 1753177823),
(122, 1, '116.179.32.133', 'https://lirongyaoper.com/fengyunbianhuan/list_1.html', '', 1753177971),
(123, 8, '223.109.252.199', 'https://lirongyaoper.com/', '', 1753179397),
(124, 8, '112.86.225.237', 'https://lirongyaoper.com/', '', 1753179752),
(125, 8, '112.86.225.177', 'https://www.lirongyaoper.com/', '', 1753180390),
(126, 8, '112.86.225.23', 'https://www.lirongyaoper.com/', '', 1753182311),
(127, 1, '116.179.32.42', 'https://lirongyaoper.com/babaizhijiao/21.html', '', 1753182706),
(128, 11, '110.249.202.149', 'https://www.lirongyaoper.com/', '', 1753184002),
(129, 2, '66.249.65.193', 'https://lirongyaoper.com/xianyansuiyu/54.html', '', 1753184208),
(130, 1, '220.181.108.90', 'https://lirongyaoper.com/xianyansuiyu/33.html', '', 1753185042),
(131, 1, '220.181.108.80', 'https://lirongyaoper.com/yixinyiyi/64.html', '', 1753187377),
(132, 1, '220.181.108.113', 'https://lirongyaoper.com/yixinyiyi/list_1.html', '', 1753187377),
(133, 1, '220.181.108.105', 'https://lirongyaoper.com/caozuoxitong/', '', 1753187377),
(134, 1, '116.179.32.150', 'https://lirongyaoper.com/phpxiangguan/45.html', '', 1753187377),
(135, 11, '110.249.201.46', 'https://www.lirongyaoper.com/babaizhijiao/', '', 1753187449),
(136, 2, '66.249.65.195', 'https://lirongyaoper.com/suanfashuju/', '', 1753187573),
(137, 1, '220.181.108.80', 'https://lirongyaoper.com/yixuejiankang/', '', 1753187577),
(138, 1, '220.181.108.146', 'https://lirongyaoper.com/xianyansuiyu/46.html', '', 1753187577),
(139, 1, '220.181.108.91', 'https://lirongyaoper.com/babaizhijiao/22.html', '', 1753187577),
(140, 1, '220.181.108.145', 'https://lirongyaoper.com/babaizhijiao/36.html', '', 1753187577),
(141, 1, '116.179.32.199', 'https://www.lirongyaoper.com/fengyunbianhuan/', '', 1753190154),
(142, 1, '220.181.108.91', 'https://lirongyaoper.com/kepujiankang/', '', 1753190161),
(143, 1, '220.181.108.110', 'https://lirongyaoper.com/yixuejishu/', '', 1753190161),
(144, 2, '66.249.74.1', 'https://www.lirongyaoper.com/caozuoxitong/59.html', '', 1753190572),
(145, 8, '112.86.225.230', 'https://lirongyaoper.com/', '', 1753195730),
(146, 11, '110.249.201.29', 'https://www.lirongyaoper.com/', '', 1753197873),
(147, 8, '223.109.252.166', 'https://www.lirongyaoper.com/', '', 1753198131),
(148, 3, '42.236.12.243', 'https://lirongyaoper.com/', 'https://lirongyaoper.com', 1753205830),
(149, 3, '42.236.17.69', 'https://lirongyaoper.com/', 'https://lirongyaoper.com/', 1753205832),
(150, 8, '112.86.225.118', 'https://lirongyaoper.com/', '', 1753207303),
(151, 8, '112.86.225.182', 'https://www.lirongyaoper.com/', '', 1753212524),
(152, 1, '220.181.108.167', 'https://lirongyaoper.com/', '', 1753213429),
(153, 5, '40.77.167.28', 'https://www.lirongyaoper.com/suanfashuju/', '', 1753218828),
(154, 11, '110.249.201.112', 'https://www.lirongyaoper.com/', '', 1753226972),
(155, 2, '66.249.64.165', 'https://lirongyaoper.com/', '', 1753227409),
(156, 2, '66.249.64.64', 'https://www.lirongyaoper.com/caozuoxitong/58.html', '', 1753233056),
(157, 2, '66.249.64.75', 'https://www.lirongyaoper.com/shiyonggongju/', '', 1753233596),
(158, 2, '66.249.64.166', 'https://lirongyaoper.com/fengyunbianhuan/7.html', '', 1753234493),
(159, 2, '66.249.64.166', 'https://lirongyaoper.com/xianyansuiyu/28.html', '', 1753235033),
(160, 2, '66.249.64.167', 'https://lirongyaoper.com/phpxiangguan/40.html', '', 1753235573),
(161, 2, '66.249.64.166', 'https://lirongyaoper.com/xianyansuiyu/50.html', '', 1753236233),
(162, 2, '66.249.64.165', 'https://lirongyaoper.com/babaizhijiao/21.html', '', 1753236653),
(163, 2, '66.249.64.166', 'https://lirongyaoper.com/xuewuzhijing/9.html', '', 1753237193),
(164, 1, '116.179.32.197', 'https://lirongyaoper.com/phpxiangguan/42.html', '', 1753246771),
(165, 2, '66.249.64.165', 'https://lirongyaoper.com/gujianqingshen/52.html', '', 1753247723),
(166, 2, '66.249.64.64', 'https://www.lirongyaoper.com/xuewuzhijing/61.html', '', 1753248398),
(167, 2, '66.249.64.76', 'https://www.lirongyaoper.com/phpxiangguan/41.html', '', 1753249808),
(168, 8, '112.86.225.76', 'https://lirongyaoper.com/', '', 1753251219),
(169, 8, '121.229.156.102', 'https://lirongyaoper.com/', '', 1753251428),
(170, 8, '112.86.225.237', 'https://www.lirongyaoper.com/', '', 1753251856),
(171, 11, '111.225.149.7', 'https://www.lirongyaoper.com/', '', 1753251905),
(172, 8, '112.86.225.41', 'https://www.lirongyaoper.com/', '', 1753251927),
(173, 11, '110.249.202.27', 'https://www.lirongyaoper.com/xianyansuiyu/list_2.html', '', 1753253029),
(174, 2, '66.249.64.64', 'https://www.lirongyaoper.com/xianyansuiyu/16.html', '', 1753253123),
(175, 11, '110.249.201.245', 'https://www.lirongyaoper.com/', '', 1753257592),
(176, 11, '110.249.202.78', 'https://www.lirongyaoper.com/zhiqurensheng/', '', 1753258029),
(177, 1, '116.179.32.132', 'https://lirongyaoper.com/phpxiangguan/38.html', '', 1753258544),
(178, 8, '223.109.252.179', 'https://www.lirongyaoper.com/', '', 1753262805),
(179, 1, '220.181.108.93', 'https://www.lirongyaoper.com/xianyansuiyu/30.html', '', 1753264052),
(180, 8, '112.86.225.93', 'https://lirongyaoper.com/', '', 1753264381),
(181, 8, '223.109.255.165', 'https://lirongyaoper.com/', '', 1753264642),
(182, 2, '66.249.64.76', 'https://www.lirongyaoper.com/yixueyuandi/', '', 1753264796),
(183, 8, '112.86.225.29', 'https://www.lirongyaoper.com/', '', 1753265124),
(184, 11, '110.249.201.28', 'https://www.lirongyaoper.com/?paged=2', '', 1753267044),
(185, 1, '116.179.32.18', 'https://www.lirongyaoper.com/xianyansuiyu/49.html', '', 1753268852),
(186, 8, '112.86.225.100', 'https://www.lirongyaoper.com/', '', 1753272993),
(187, 11, '111.225.148.132', 'https://www.lirongyaoper.com/caozuoxitong/', '', 1753274403),
(188, 8, '223.109.252.254', 'https://lirongyaoper.com/', '', 1753274561),
(189, 8, '121.229.156.82', 'https://lirongyaoper.com/', '', 1753274688),
(190, 11, '110.249.202.224', 'https://www.lirongyaoper.com/', '', 1753275311),
(191, 8, '223.109.255.148', 'https://www.lirongyaoper.com/', '', 1753275390),
(192, 1, '116.179.32.151', 'https://lirongyaoper.com/gujianqingshen/60.html', '', 1753280000),
(193, 8, '223.109.252.244', 'https://lirongyaoper.com/', '', 1753281670),
(194, 11, '110.249.202.244', 'https://www.lirongyaoper.com/', '', 1753281817),
(195, 8, '180.102.110.169', 'https://lirongyaoper.com/', '', 1753281913),
(196, 1, '220.181.108.103', 'https://lirongyaoper.com/phpxiangguan/45.html', '', 1753283600),
(197, 8, '223.109.252.239', 'https://www.lirongyaoper.com/', '', 1753284380),
(198, 8, '121.229.156.59', 'https://www.lirongyaoper.com/', '', 1753284645),
(199, 2, '66.249.74.15', 'https://www.lirongyaoper.com/gujianqingshen/52.html', '', 1753286215),
(200, 8, '112.86.225.243', 'https://lirongyaoper.com/index/index/dashiji.html', '', 1753288020),
(201, 2, '66.249.74.2', 'https://www.lirongyaoper.com/xuewuzhijing/9.html', '', 1753290598),
(202, 1, '220.181.108.92', 'https://lirongyaoper.com/xianyansuiyu/55.html', '', 1753290953),
(203, 8, '112.86.225.241', 'https://www.lirongyaoper.com/index/index/dashiji.html', '', 1753290955),
(204, 5, '40.77.167.30', 'https://www.lirongyaoper.com/?p=1177', '', 1753290987),
(205, 2, '66.249.74.15', 'https://www.lirongyaoper.com/xianyansuiyu/51.html', '', 1753293297),
(206, 1, '116.179.32.134', 'https://lirongyaoper.com/gujianqingshen/52.html', '', 1753294553),
(207, 2, '66.249.74.1', 'https://www.lirongyaoper.com/xuewuzhijing/', '', 1753295997),
(208, 1, '220.181.108.149', 'https://lirongyaoper.com/phpxiangguan/40.html', '', 1753298154),
(209, 1, '116.179.32.232', 'https://lirongyaoper.com/phpxiangguan/35.html', '', 1753298154),
(210, 1, '220.181.108.101', 'https://lirongyaoper.com/yixuejishu/64.html', '', 1753298354),
(211, 1, '220.181.108.92', 'https://lirongyaoper.com/xianyansuiyu/49.html', '', 1753299578),
(212, 3, '42.236.17.103', 'https://lirongyaoper.com/', 'https://lirongyaoper.com', 1753301842),
(213, 3, '42.236.12.242', 'https://lirongyaoper.com/', 'https://lirongyaoper.com/', 1753301847),
(214, 11, '110.249.202.42', 'https://www.lirongyaoper.com/', '', 1753309472),
(215, 1, '220.181.108.81', 'https://www.lirongyaoper.com/xuewuzhijing/9.html', '', 1753319712),
(216, 11, '110.249.201.158', 'https://www.lirongyaoper.com/', '', 1753323809),
(217, 1, '220.181.108.101', 'https://www.lirongyaoper.com/yixueyuandi/', '', 1753326358),
(218, 1, '116.179.32.37', 'https://lirongyaoper.com/kepujiankang/29.html', '', 1753326364),
(219, 1, '116.179.32.172', 'https://www.lirongyaoper.com/phpxiangguan/43.html', '', 1753333004),
(220, 2, '66.249.74.15', 'https://www.lirongyaoper.com/xianyansuiyu/', '', 1753334221),
(221, 1, '220.181.108.94', 'https://lirongyaoper.com/phpxiangguan/39.html', '', 1753335489),
(222, 8, '112.86.225.16', 'https://lirongyaoper.com/', '', 1753337767),
(223, 8, '112.86.225.244', 'https://lirongyaoper.com/', '', 1753340497),
(224, 8, '112.86.225.117', 'https://www.lirongyaoper.com/', '', 1753341032),
(225, 8, '112.86.225.210', 'https://www.lirongyaoper.com/', '', 1753341052),
(226, 2, '66.249.65.195', 'https://lirongyaoper.com/fengyunbianhuan/57.html', '', 1753345021),
(227, 11, '110.249.202.7', 'https://lirongyaoper.com/kepujiankang/', '', 1753348956),
(228, 8, '223.109.252.187', 'https://lirongyaoper.com/', '', 1753349080),
(229, 8, '112.86.225.143', 'https://lirongyaoper.com/', '', 1753349360),
(230, 1, '220.181.108.146', 'https://www.lirongyaoper.com/xuewuzhijing/10.html', '', 1753349450),
(231, 11, '110.249.202.180', 'https://www.lirongyaoper.com/', '', 1753349855),
(232, 8, '223.109.252.184', 'https://www.lirongyaoper.com/', '', 1753350036),
(233, 1, '220.181.108.177', 'https://lirongyaoper.com/yangyuzhien/', '', 1753350413),
(234, 8, '121.229.156.46', 'https://www.lirongyaoper.com/', '', 1753352758),
(235, 11, '110.249.202.77', 'https://www.lirongyaoper.com/?post=4', '', 1753357297),
(236, 2, '66.249.74.15', 'https://www.lirongyaoper.com/xianyansuiyu/50.html', '', 1753357861),
(237, 11, '111.225.148.15', 'https://www.lirongyaoper.com/', '', 1753358639),
(238, 3, '42.236.17.247', 'https://www.lirongyaoper.com/', 'https://www.lirongyaoper.com/', 1753358946),
(239, 8, '223.109.252.246', 'https://lirongyaoper.com/', '', 1753360317),
(240, 8, '121.229.156.92', 'https://www.lirongyaoper.com/', '', 1753361100),
(241, 8, '112.86.225.250', 'https://lirongyaoper.com/', '', 1753362794),
(242, 2, '66.249.72.8', 'https://www.lirongyaoper.com/', '', 1753362927),
(243, 8, '223.109.252.210', 'https://www.lirongyaoper.com/', '', 1753363069),
(244, 11, '110.249.201.206', 'https://www.lirongyaoper.com/', '', 1753368393),
(245, 8, '121.229.156.61', 'https://lirongyaoper.com/', '', 1753371660);

-- --------------------------------------------------------

--
-- Table structure for table `lry_tag`
--

CREATE TABLE `lry_tag` (
  `id` int UNSIGNED NOT NULL,
  `siteid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `tag` varchar(30) NOT NULL DEFAULT '',
  `total` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `click` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(100) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(200) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `seo_description` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_tag`
--

INSERT INTO `lry_tag` (`id`, `siteid`, `catid`, `tag`, `total`, `click`, `seo_title`, `seo_keywords`, `seo_description`, `inputtime`) VALUES
(3, 0, 0, '旅游', 1, 1409, '', '', '', 1559381647),
(2, 0, 0, '毕业季', 5, 1556, '', '', '', 1558880224),
(4, 0, 0, '公众人物', 2, 1234, '', '', '', 1560938455),
(5, 0, 0, '兄弟情', 4, 1412, '', '', '', 1567081984),
(6, 0, 0, 'php', 8, 1480, '', '', '', 1576312879),
(7, 0, 0, 'linux', 0, 912, '', '', '', 1576312888),
(8, 0, 0, 'python', 0, 967, '', '', '', 1576312911),
(9, 0, 7, '精美转载', 1, 1435, '', '', '', 1600097376);

-- --------------------------------------------------------

--
-- Table structure for table `lry_tag_content`
--

CREATE TABLE `lry_tag_content` (
  `siteid` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `modelid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `aid` int UNSIGNED NOT NULL DEFAULT '0',
  `tagid` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lry_tag_content`
--

INSERT INTO `lry_tag_content` (`siteid`, `modelid`, `catid`, `aid`, `tagid`) VALUES
(0, 1, 14, 17, 3),
(0, 1, 7, 20, 4),
(0, 1, 13, 21, 5),
(0, 1, 7, 16, 2),
(0, 1, 13, 22, 5),
(0, 1, 17, 27, 6),
(0, 1, 7, 31, 9),
(0, 1, 17, 35, 6),
(0, 1, 13, 36, 5),
(0, 1, 17, 38, 6),
(0, 1, 17, 40, 6),
(0, 1, 17, 41, 6),
(0, 1, 17, 42, 6),
(0, 1, 17, 44, 6),
(0, 1, 17, 45, 6),
(0, 1, 13, 56, 5);

-- --------------------------------------------------------

--
-- Table structure for table `lry_urlrule`
--

CREATE TABLE `lry_urlrule` (
  `urlruleid` smallint UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `urlrule` varchar(100) NOT NULL DEFAULT '' COMMENT 'URL规则',
  `route` varchar(100) NOT NULL DEFAULT '' COMMENT '指向的路由',
  `listorder` tinyint UNSIGNED NOT NULL DEFAULT '50' COMMENT '优先级排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_view_count`
--

CREATE TABLE `lry_view_count` (
  `id` int UNSIGNED NOT NULL,
  `count` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '总访问',
  `today` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT '今日访问',
  `updatetime` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='站点浏览统计';

--
-- Dumping data for table `lry_view_count`
--

INSERT INTO `lry_view_count` (`id`, `count`, `today`, `updatetime`) VALUES
(1, 21987, 158, 1753371123);

-- --------------------------------------------------------

--
-- Table structure for table `lry_view_log`
--

CREATE TABLE `lry_view_log` (
  `id` int UNSIGNED NOT NULL,
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `referer` varchar(200) NOT NULL DEFAULT '' COMMENT '来源',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '访问url',
  `user_agent` varchar(255) NOT NULL DEFAULT '' COMMENT '用户代理'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='站点浏览记录';

--
-- Dumping data for table `lry_view_log`
--

INSERT INTO `lry_view_log` (`id`, `inputtime`, `ip`, `referer`, `url`, `user_agent`) VALUES
(1, 1752843103, '180.163.29.103', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(2, 1752843103, '42.231.17.116', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.61(0x18003d2c) NetType/WIFI Language/zh_CN'),
(3, 1752843106, '42.231.17.116', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.61(0x18003d2c) NetType/WIFI Language/zh_CN'),
(4, 1752843119, '42.231.17.116', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.61(0x18003d2c) NetType/WIFI Language/zh_CN'),
(5, 1752843214, '42.231.17.116', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.61(0x18003d2c) NetType/WIFI Language/zh_CN'),
(6, 1752843339, '42.231.17.116', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.61(0x18003d2c) NetType/WIFI Language/zh_CN'),
(7, 1752843367, '42.231.17.116', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.61(0x18003d2c) NetType/WIFI Language/zh_CN'),
(8, 1752843399, '42.231.17.116', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.61(0x18003d2c) NetType/WIFI Language/zh_CN'),
(9, 1752843497, '42.231.17.116', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.61(0x18003d2c) NetType/WIFI Language/zh_CN'),
(10, 1752843510, '42.231.17.116', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.61(0x18003d2c) NetType/WIFI Language/zh_CN'),
(11, 1752844280, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(12, 1752844289, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(13, 1752844362, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(14, 1752844363, '123.13.72.236', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(15, 1752845792, '42.231.17.116', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.61(0x18003d2c) NetType/WIFI Language/zh_CN'),
(16, 1752846458, '110.249.201.227', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(17, 1752847182, '123.13.72.236', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(18, 1752851624, '116.179.37.49', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(19, 1752852399, '52.80.45.242', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.8611.1220 Mobile Safari/537.36'),
(20, 1752854891, '66.249.72.6', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 15; Pixel 9 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.7103.61 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'),
(21, 1752855128, '116.179.37.158', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(22, 1752860331, '223.109.252.179', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Sogou web spider/4.0(+http://www.sogou.com/docs/help/webmasters.htm#07)'),
(23, 1752874406, '113.215.189.101', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/134.0.6998.35 Safari/537.36'),
(24, 1752874482, '66.249.64.225', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 13; Pixel 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.7151.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'),
(25, 1752881459, '123.13.72.236', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(26, 1752881492, '182.120.188.45', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(27, 1752881937, '182.120.188.45', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(28, 1752881945, '182.120.188.45', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(29, 1752882185, '112.86.225.165', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Sogou web spider/4.0(+http://www.sogou.com/docs/help/webmasters.htm#07)'),
(30, 1752882203, '182.120.188.45', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(31, 1752885516, '113.215.189.91', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/134.0.6998.35 Safari/537.36'),
(32, 1752886288, '116.179.37.210', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(33, 1752886743, '119.184.87.191', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.6671.1750 Mobile Safari/537.36'),
(34, 1752888907, '111.225.148.172', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(35, 1752891561, '116.179.37.154', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(36, 1752893612, '182.120.189.152', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(37, 1752893617, '182.120.189.152', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(38, 1752893678, '182.120.189.152', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile MicroMe...'),
(39, 1752893976, '223.104.110.106', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/4G Language/zh_CN'),
(40, 1752894121, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(41, 1752894141, '182.120.189.152', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile MicroMe...'),
(42, 1752894204, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(43, 1752894246, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(44, 1752894247, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(45, 1752894255, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(46, 1752894289, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(47, 1752894405, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(48, 1752894414, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(49, 1752894420, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(50, 1752894434, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(51, 1752894439, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(52, 1752895129, '110.249.201.223', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(53, 1752895168, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(54, 1752895181, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(55, 1752895208, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(56, 1752895230, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(57, 1752895332, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(58, 1752895373, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/WIFI Language/zh_CN'),
(59, 1752895455, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(60, 1752895503, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(61, 1752895671, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.60(0x18003c32) NetType/4G Language/zh_CN'),
(62, 1752895941, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(63, 1752895986, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(64, 1752896033, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(65, 1752896053, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(66, 1752903626, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(67, 1752903907, '66.249.64.234', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Mobile/15E148 Safari/605....'),
(68, 1752904039, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(69, 1752904050, '27.115.124.118', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 11; V2055A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36'),
(70, 1752904050, '27.115.124.53', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 10; HUAWEI P30 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36'),
(71, 1752904051, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(72, 1752904058, '123.6.49.50', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 11; CPH2185) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36'),
(73, 1752904058, '27.115.124.101', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 10; HUAWEI P30 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36'),
(74, 1752904058, '123.6.49.50', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 10; HUAWEI P30 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36'),
(75, 1752904063, '27.115.124.70', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 11; CPH2185) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36'),
(76, 1752904065, '123.6.49.15', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 10; HUAWEI P30 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36'),
(77, 1752904087, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(78, 1752904091, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(79, 1752904093, '123.6.49.12', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 11; CPH2185) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36'),
(80, 1752904105, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(81, 1752904107, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(82, 1752904111, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(83, 1752904113, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(84, 1752904120, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(85, 1752904129, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(86, 1752904146, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(87, 1752904148, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(88, 1752904163, '27.115.124.70', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 11; V2055A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36'),
(89, 1752904184, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(90, 1752904187, '27.115.124.118', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 10; HUAWEI P30 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36'),
(91, 1752904188, '123.6.49.47', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 11; V2055A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36'),
(92, 1752904203, '27.115.124.45', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 11; CPH2185) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36'),
(93, 1752904247, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(94, 1752904272, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(95, 1752904273, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(96, 1752904274, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(97, 1752904276, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(98, 1752904291, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(99, 1752904292, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(100, 1752904293, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(101, 1752904294, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(102, 1752904294, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(103, 1752908581, '113.215.189.124', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/134.0.6998.35 Safari/537.36'),
(104, 1752912162, '182.120.188.186', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(105, 1752912167, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(106, 1752912172, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(107, 1752912175, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(108, 1752912178, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(109, 1752912180, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(110, 1752912182, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(111, 1752912187, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(112, 1752912191, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(113, 1752912210, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(114, 1752912331, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(115, 1752912389, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(116, 1752915840, '182.120.188.186', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(117, 1752915843, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(118, 1752915876, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(119, 1752916703, '182.120.188.186', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(120, 1752925447, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(121, 1752925448, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(122, 1752925460, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(123, 1752925485, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(124, 1752925507, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(125, 1752931778, '66.249.64.224', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.7151.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'),
(126, 1752933215, '110.249.202.54', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(127, 1752933759, '205.169.39.57', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36'),
(128, 1752935435, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(129, 1752935446, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(130, 1752935447, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(131, 1752935451, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(132, 1752935492, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(133, 1752935493, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(134, 1752935496, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(135, 1752937164, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(136, 1752937170, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(137, 1752937181, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(138, 1752940823, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(139, 1752940826, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(140, 1752942823, '110.249.202.105', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(141, 1752943712, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(142, 1752943732, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(143, 1752943747, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(144, 1752943783, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(145, 1752943796, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(146, 1752943805, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(147, 1752943810, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(148, 1752943857, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(149, 1752943859, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(150, 1752943944, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(151, 1752943947, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(152, 1752943966, '42.236.10.98', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36'),
(153, 1752943973, '42.236.10.110', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36'),
(154, 1752944781, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(155, 1752944805, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(156, 1752945363, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(157, 1752945366, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(158, 1752947521, '17.241.227.99', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)'),
(159, 1752949225, '116.179.37.179', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(160, 1752952377, '116.179.37.53', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(161, 1752953005, '106.75.64.250', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Go-http-client/1.1'),
(162, 1752966156, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(163, 1752966212, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(164, 1752966213, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(165, 1752966252, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(166, 1752966254, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(167, 1752966257, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(168, 1752966258, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(169, 1752966386, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(170, 1752966396, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(171, 1752966408, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(172, 1752966435, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(173, 1752966437, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(174, 1752966444, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(175, 1752966523, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(176, 1752966548, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(177, 1752966659, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(178, 1752966809, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(179, 1752966816, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(180, 1752966872, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(181, 1752966902, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(182, 1752966915, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(183, 1752966940, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(184, 1752967248, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(185, 1752967496, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(186, 1752967512, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(187, 1752968726, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(188, 1752968747, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(189, 1752968772, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(190, 1752968924, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(191, 1752969032, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(192, 1752969191, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(193, 1752969240, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(194, 1752969242, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(195, 1752969299, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(196, 1752969330, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(197, 1752969333, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(198, 1752972028, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(199, 1752972064, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(200, 1752972079, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(201, 1752972270, '170.106.11.141', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1'),
(202, 1752972274, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(203, 1752972290, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(204, 1752973395, '116.179.37.136', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(205, 1752975105, '110.249.201.31', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(206, 1752975813, '110.249.202.160', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(207, 1752976628, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(208, 1752976642, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(209, 1752976645, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(210, 1752977330, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(211, 1752977580, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(212, 1752977603, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(213, 1752977604, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(214, 1752977663, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(215, 1752977750, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(216, 1752977837, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(217, 1752977877, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(218, 1752978009, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(219, 1752978030, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(220, 1752978043, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(221, 1752978048, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(222, 1752978051, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(223, 1752978068, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(224, 1752978069, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(225, 1752978070, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(226, 1752978071, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(227, 1752978072, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(228, 1752978072, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(229, 1752978073, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(230, 1752978074, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(231, 1752978074, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(232, 1752978075, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(233, 1752978075, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(234, 1752978075, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(235, 1752978083, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(236, 1752978119, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(237, 1752978178, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(238, 1752978189, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(239, 1752978490, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(240, 1752978495, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(241, 1752978549, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(242, 1752978553, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(243, 1752978749, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(244, 1752979182, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(245, 1752979923, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(246, 1752981014, '182.120.189.99', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(247, 1752981027, '182.120.189.99', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(248, 1752982661, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0');
INSERT INTO `lry_view_log` (`id`, `inputtime`, `ip`, `referer`, `url`, `user_agent`) VALUES
(249, 1752982686, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(250, 1752987997, '43.131.32.36', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1'),
(251, 1752988910, '116.179.37.103', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(252, 1752998685, '116.132.254.64', '', 'https://lirongyaoper.com/vcount/view/count.html', 'YisouSpider'),
(253, 1752998687, '123.182.49.90', '', 'https://lirongyaoper.com/vcount/view/count.html', 'YisouSpider'),
(254, 1752998716, '106.8.137.225', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'YisouSpider'),
(255, 1752998803, '124.239.12.57', '', 'https://lirongyaoper.com/vcount/view/count.html', 'YisouSpider'),
(256, 1753004543, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile HuaweiBrowser/5.1.5.352'),
(257, 1753009049, '110.249.202.8', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(258, 1753011845, '180.101.81.26', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 6.0.1; SOV33 Build/35.0.D.0.326) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.91 Mobile Safari/537.36'),
(259, 1753019109, '110.249.202.240', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(260, 1753019547, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(261, 1753019551, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(262, 1753019637, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(263, 1753019880, '123.13.72.236', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(264, 1753021039, '116.179.37.145', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(265, 1753021540, '116.179.37.112', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(266, 1753025696, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(267, 1753025717, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(268, 1753025815, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(269, 1753025818, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(270, 1753025862, '110.249.202.114', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(271, 1753027882, '123.13.72.236', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(272, 1753027887, '123.13.72.236', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(273, 1753028794, '182.120.189.158', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(274, 1753029184, '182.120.189.158', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(275, 1753029189, '182.120.189.158', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(276, 1753029206, '182.120.189.158', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(277, 1753029207, '182.120.189.158', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(278, 1753029264, '182.120.189.158', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(279, 1753058896, '182.120.189.104', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(280, 1753058928, '182.120.189.104', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(281, 1753065106, '110.249.202.162', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(282, 1753067000, '110.249.201.101', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(283, 1753072619, '111.225.149.176', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(284, 1753085200, '106.8.138.69', '', 'https://lirongyaoper.com/vcount/view/count.html', 'YisouSpider'),
(285, 1753087391, '110.249.201.89', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(286, 1753091426, '110.249.201.22', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(287, 1753091487, '119.28.101.51', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux i686 on x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060 Safari/537.36'),
(288, 1753106827, '110.249.201.81', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(289, 1753107700, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(290, 1753107705, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(291, 1753107902, '110.249.202.108', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(292, 1753108137, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(293, 1753108828, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(294, 1753108830, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(295, 1753108839, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(296, 1753108848, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(297, 1753108977, '110.249.202.183', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(298, 1753117232, '116.179.37.104', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(299, 1753118646, '110.249.202.229', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(300, 1753122859, '52.167.144.191', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36'),
(301, 1753130298, '202.8.41.19', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)'),
(302, 1753137571, '116.179.37.42', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(303, 1753138282, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(304, 1753138291, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(305, 1753138304, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(306, 1753138306, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(307, 1753138309, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(308, 1753138312, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(309, 1753138315, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(310, 1753138332, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(311, 1753138333, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(312, 1753138335, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(313, 1753138336, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(314, 1753138337, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(315, 1753138341, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(316, 1753138384, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(317, 1753138437, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(318, 1753138438, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(319, 1753138505, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(320, 1753138507, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(321, 1753138563, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(322, 1753138564, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(323, 1753138618, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(324, 1753138657, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(325, 1753138762, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(326, 1753138763, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(327, 1753138764, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(328, 1753138771, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(329, 1753139466, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(330, 1753139480, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(331, 1753141735, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(332, 1753141747, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
(333, 1753146200, '116.179.37.22', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(334, 1753151552, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(335, 1753151647, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(336, 1753151647, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(337, 1753151648, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(338, 1753151650, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(339, 1753151664, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(340, 1753153497, '113.215.188.188', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/134.0.6998.35 Safari/537.36'),
(341, 1753154143, '71.132.43.3', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 10; HD1900 Build/QKQ1.190716.003; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/75.0.3770.156...'),
(342, 1753154891, '110.249.201.25', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(343, 1753154895, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(344, 1753158946, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(345, 1753159707, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(346, 1753159713, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(347, 1753159811, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(348, 1753159830, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(349, 1753159873, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(350, 1753159979, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 NetType/WIFI MicroMessenger/7.0.20.1781(0x6700143B) WindowsWechat(0x63090a13) UnifiedPCLinuxWechat(0xf274010b) XWEB/11459 Flue'),
(351, 1753160371, '223.104.85.171', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 14; V2055A Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/138.0.7204.63...'),
(352, 1753160556, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Phone; OpenHarmony 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36  ArkWeb/4.1.6.1 Mobile MicroMe...'),
(353, 1753162371, '116.179.37.10', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(354, 1753167125, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(355, 1753167142, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(356, 1753167145, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(357, 1753168878, '110.249.201.106', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(358, 1753178659, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(359, 1753178670, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(360, 1753178724, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(361, 1753178735, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(362, 1753179184, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(363, 1753179190, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(364, 1753179194, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(365, 1753179198, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(366, 1753179348, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(367, 1753179349, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(368, 1753180296, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(369, 1753180300, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(370, 1753180302, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(371, 1753180305, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(372, 1753180306, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(373, 1753180306, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(374, 1753180306, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(375, 1753180315, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(376, 1753180316, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(377, 1753180317, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(378, 1753180319, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(379, 1753180322, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(380, 1753180457, '36.155.132.139', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 6.0.1; SOV33 Build/35.0.D.0.326) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.91 Mobile Safari/537.36'),
(381, 1753184003, '110.249.202.149', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(382, 1753185042, '116.179.37.89', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(383, 1753187450, '110.249.201.46', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(384, 1753187960, '27.159.75.50', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 10; Mobile; rv:89.0) Gecko/89.0 Firefox/89.0'),
(385, 1753187985, '27.159.75.50', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 10; Mobile; rv:89.0) Gecko/89.0 Firefox/89.0'),
(386, 1753189448, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(387, 1753189454, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(388, 1753189455, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(389, 1753189458, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(390, 1753189464, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(391, 1753189493, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(392, 1753189501, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(393, 1753189504, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(394, 1753189542, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(395, 1753189545, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(396, 1753189548, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(397, 1753189553, '115.51.62.231', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(398, 1753190155, '116.179.37.185', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(399, 1753195177, '27.159.75.50', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) FxiOS/35.0 Mobile/15E148 Safari/605.1.15'),
(400, 1753195201, '27.159.75.50', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) FxiOS/35.0 Mobile/15E148 Safari/605.1.15'),
(401, 1753196993, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(402, 1753196994, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(403, 1753196997, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(404, 1753196999, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(405, 1753197874, '110.249.201.29', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(406, 1753207406, '111.45.2.198', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 6.0.1; SOV33 Build/35.0.D.0.326) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.91 Mobile Safari/537.36'),
(407, 1753207570, '36.155.132.144', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 6.0.1; SOV33 Build/35.0.D.0.326) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.91 Mobile Safari/537.36'),
(408, 1753213429, '116.179.37.147', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(409, 1753224602, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(410, 1753224609, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(411, 1753224620, '115.51.62.231', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(412, 1753226973, '110.249.201.112', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(413, 1753228207, '182.120.188.28', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(414, 1753237289, '72.145.152.30', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.92 Safari/537.36'),
(415, 1753239059, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(416, 1753239543, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(417, 1753246771, '116.179.37.66', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(418, 1753248138, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(419, 1753251905, '111.225.149.7', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(420, 1753253029, '110.249.202.27', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(421, 1753257592, '110.249.201.245', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(422, 1753258029, '110.249.202.78', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(423, 1753258411, '182.120.188.253', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Android 12; Mobile; rv:140.0) Gecko/140.0 Firefox/140.0'),
(424, 1753264053, '116.179.37.206', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(425, 1753267044, '110.249.201.28', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(426, 1753268170, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(427, 1753268198, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(428, 1753268201, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(429, 1753268210, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(430, 1753268219, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(431, 1753268221, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(432, 1753268246, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(433, 1753268254, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(434, 1753268280, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(435, 1753268290, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(436, 1753274403, '111.225.148.132', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(437, 1753275312, '110.249.202.224', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(438, 1753280000, '116.179.37.12', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(439, 1753281817, '110.249.202.244', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(440, 1753284834, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(441, 1753284853, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(442, 1753284858, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(443, 1753284867, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(444, 1753284871, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(445, 1753284895, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(446, 1753284900, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(447, 1753284904, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(448, 1753285130, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(449, 1753285151, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(450, 1753285284, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(451, 1753285307, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(452, 1753285349, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(453, 1753285357, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(454, 1753285360, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(455, 1753285362, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(456, 1753285372, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(457, 1753285375, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(458, 1753285378, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(459, 1753285380, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(460, 1753285384, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(461, 1753285425, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(462, 1753285430, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(463, 1753285445, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(464, 1753285963, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(465, 1753285966, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(466, 1753285976, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(467, 1753285982, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(468, 1753285986, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(469, 1753285991, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(470, 1753286242, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(471, 1753286247, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(472, 1753286252, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(473, 1753286254, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(474, 1753286258, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(475, 1753286274, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(476, 1753286285, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(477, 1753286288, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(478, 1753286295, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(479, 1753286296, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(480, 1753286297, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(481, 1753286298, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(482, 1753286308, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(483, 1753286409, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(484, 1753286413, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(485, 1753286421, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(486, 1753286426, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(487, 1753286583, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(488, 1753286590, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(489, 1753286592, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(490, 1753286599, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(491, 1753287229, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(492, 1753287236, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(493, 1753287240, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(494, 1753287243, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(495, 1753287268, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(496, 1753287271, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(497, 1753287275, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(498, 1753287278, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(499, 1753287280, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(500, 1753287281, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(501, 1753287282, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(502, 1753287324, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(503, 1753287447, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(504, 1753287453, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(505, 1753287458, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(506, 1753287465, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(507, 1753287468, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(508, 1753287481, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(509, 1753287524, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(510, 1753287596, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(511, 1753287663, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(512, 1753287675, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(513, 1753287867, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(514, 1753287892, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(515, 1753288285, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(516, 1753288298, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(517, 1753288305, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(518, 1753288308, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0');
INSERT INTO `lry_view_log` (`id`, `inputtime`, `ip`, `referer`, `url`, `user_agent`) VALUES
(519, 1753288310, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(520, 1753288311, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(521, 1753288312, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(522, 1753288313, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(523, 1753288317, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(524, 1753288319, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(525, 1753288320, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(526, 1753288320, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(527, 1753288321, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(528, 1753288324, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(529, 1753288326, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(530, 1753288327, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(531, 1753288329, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(532, 1753288329, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(533, 1753288330, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(534, 1753288331, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(535, 1753288333, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(536, 1753288333, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(537, 1753288335, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(538, 1753288336, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(539, 1753288336, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(540, 1753288338, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(541, 1753288442, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(542, 1753288447, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(543, 1753288455, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(544, 1753288466, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(545, 1753288489, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(546, 1753288490, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(547, 1753289047, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(548, 1753289062, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(549, 1753289072, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(550, 1753289082, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(551, 1753289083, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(552, 1753289084, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(553, 1753289085, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(554, 1753289086, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(555, 1753289086, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(556, 1753289088, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(557, 1753289090, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(558, 1753289090, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(559, 1753289091, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(560, 1753289092, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(561, 1753289093, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(562, 1753289094, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(563, 1753289096, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(564, 1753289131, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(565, 1753289135, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(566, 1753289138, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(567, 1753289211, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(568, 1753289485, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(569, 1753289494, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(570, 1753289496, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(571, 1753289499, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(572, 1753289500, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(573, 1753289501, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(574, 1753289504, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(575, 1753289521, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0'),
(576, 1753290155, '117.159.129.34', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(577, 1753290185, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(578, 1753290204, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(579, 1753290216, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(580, 1753290225, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(581, 1753290295, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(582, 1753290303, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(583, 1753290316, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(584, 1753290321, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(585, 1753290332, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(586, 1753309472, '110.249.202.42', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(587, 1753309543, '117.159.129.34', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(588, 1753314856, '36.155.132.161', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 6.0.1; SOV33 Build/35.0.D.0.326) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.91 Mobile Safari/537.36'),
(589, 1753319712, '116.179.37.73', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(590, 1753323809, '110.249.201.158', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(591, 1753326364, '116.179.37.123', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(592, 1753342027, '27.159.75.50', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 7.0; SM-G950U Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.6998.35 Mobile Safari/537.36'),
(593, 1753343857, '52.80.22.143', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.8547.1049 Mobile Safari/537.36'),
(594, 1753346212, '36.155.132.152', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 6.0.1; SOV33 Build/35.0.D.0.326) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.91 Mobile Safari/537.36'),
(595, 1753348708, '54.36.149.81', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)'),
(596, 1753348956, '110.249.202.7', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(597, 1753349451, '116.179.37.58', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(598, 1753349855, '110.249.202.180', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(599, 1753350413, '116.179.37.155', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)'),
(600, 1753357298, '110.249.202.77', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(601, 1753358639, '111.225.148.15', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(602, 1753365635, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(603, 1753365647, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(604, 1753365656, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(605, 1753366877, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(606, 1753368394, '110.249.201.206', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; https://zhanzhang.toutiao.com/)'),
(607, 1753369679, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(608, 1753369688, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(609, 1753369692, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(610, 1753369708, '27.115.124.118', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 11; V2055A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36'),
(611, 1753369718, '123.6.49.50', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 10; HUAWEI P30 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36'),
(612, 1753369719, '123.6.49.50', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 11; V2055A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36'),
(613, 1753369720, '123.6.49.47', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 11; V2055A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36'),
(614, 1753369786, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(615, 1753369789, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(616, 1753369790, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(617, 1753369793, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(618, 1753369794, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(619, 1753369796, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(620, 1753369797, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(621, 1753369798, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(622, 1753369799, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(623, 1753369961, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(624, 1753370092, '54.223.87.178', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.3678.1527 Mobile Safari/537.36'),
(625, 1753371028, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(626, 1753371029, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(627, 1753371030, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(628, 1753371041, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(629, 1753371099, '115.52.118.68', '', 'https://www.lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(630, 1753371105, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(631, 1753371107, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(632, 1753371108, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0'),
(633, 1753371115, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(634, 1753371116, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(635, 1753371118, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(636, 1753371119, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(637, 1753371120, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(638, 1753371121, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(639, 1753371122, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'),
(640, 1753371123, '115.52.118.68', '', 'https://lirongyaoper.com/vcount/view/count.html', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `lry_wechat_auto_reply`
--

CREATE TABLE `lry_wechat_auto_reply` (
  `id` mediumint NOT NULL,
  `type` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1关键字回复2自动回复3关注回复',
  `keyword` varchar(64) NOT NULL DEFAULT '' COMMENT '关键字回复的关键字',
  `keyword_type` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1完全匹配0模糊匹配',
  `relation_id` varchar(15) NOT NULL DEFAULT '' COMMENT '图文回复的关联内容ID',
  `content` text NOT NULL COMMENT '文本回复的内容'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_wechat_group`
--

CREATE TABLE `lry_wechat_group` (
  `id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `count` mediumint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_wechat_mass`
--

CREATE TABLE `lry_wechat_mass` (
  `id` int UNSIGNED NOT NULL,
  `message_type` char(6) NOT NULL DEFAULT '' COMMENT '消息类型',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0通过openid群发1通过分组群发2全部',
  `media_id` varchar(200) NOT NULL DEFAULT '',
  `msg_id` varchar(10) NOT NULL DEFAULT '',
  `msg_data_id` varchar(10) NOT NULL DEFAULT '' COMMENT '图文消息的数据ID',
  `receive` varchar(255) NOT NULL DEFAULT '' COMMENT '按组群发为组id，否则为openid列表',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '1任务提交成功2群发已结束',
  `masstime` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '发送时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_wechat_media`
--

CREATE TABLE `lry_wechat_media` (
  `id` int NOT NULL,
  `originname` varchar(50) NOT NULL DEFAULT '',
  `filename` varchar(50) NOT NULL DEFAULT '',
  `filepath` char(200) NOT NULL DEFAULT '',
  `type` char(6) NOT NULL DEFAULT '',
  `media_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0临时素材,1永久素材',
  `media_id` varchar(200) NOT NULL DEFAULT '',
  `created_at` int UNSIGNED NOT NULL DEFAULT '0',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '永久素材的图片url/图文素材标题'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_wechat_menu`
--

CREATE TABLE `lry_wechat_menu` (
  `id` mediumint NOT NULL,
  `parentid` mediumint NOT NULL DEFAULT '0',
  `name` varchar(48) NOT NULL DEFAULT '',
  `type` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1关键字2跳转',
  `keyword` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `event` varchar(64) NOT NULL DEFAULT '',
  `listorder` mediumint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_wechat_message`
--

CREATE TABLE `lry_wechat_message` (
  `id` int UNSIGNED NOT NULL,
  `openid` char(100) NOT NULL DEFAULT '',
  `issystem` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为系统回复',
  `inputtime` int UNSIGNED NOT NULL DEFAULT '0',
  `msgtype` varchar(32) NOT NULL DEFAULT '' COMMENT '消息类型',
  `isread` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '1已读0未读',
  `content` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_wechat_scan`
--

CREATE TABLE `lry_wechat_scan` (
  `id` int NOT NULL,
  `scan` varchar(65) NOT NULL DEFAULT '' COMMENT '场景',
  `type` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0永久,1临时',
  `expire_time` char(7) NOT NULL DEFAULT '0' COMMENT '二维码有效时间',
  `ticket` varchar(150) NOT NULL DEFAULT '',
  `remarks` varchar(255) NOT NULL DEFAULT '' COMMENT '场景备注'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lry_wechat_user`
--

CREATE TABLE `lry_wechat_user` (
  `wechatid` int UNSIGNED NOT NULL,
  `openid` char(100) NOT NULL DEFAULT '',
  `groupid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `subscribe` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1关注0取消',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `sex` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `city` char(50) NOT NULL DEFAULT '',
  `province` char(50) NOT NULL DEFAULT '',
  `country` char(50) NOT NULL DEFAULT '',
  `headimgurl` char(255) NOT NULL DEFAULT '',
  `subscribe_time` int UNSIGNED NOT NULL DEFAULT '0',
  `remark` varchar(50) NOT NULL DEFAULT '',
  `scan` varchar(30) NOT NULL DEFAULT '' COMMENT '来源场景'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lry_admin`
--
ALTER TABLE `lry_admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `lry_admin_log`
--
ALTER TABLE `lry_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logtime` (`logtime`),
  ADD KEY `adminid` (`adminid`);

--
-- Indexes for table `lry_admin_login_log`
--
ALTER TABLE `lry_admin_login_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_index` (`adminname`,`loginresult`);

--
-- Indexes for table `lry_admin_role`
--
ALTER TABLE `lry_admin_role`
  ADD PRIMARY KEY (`roleid`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `lry_admin_role_priv`
--
ALTER TABLE `lry_admin_role_priv`
  ADD KEY `roleid` (`roleid`,`m`,`c`,`a`);

--
-- Indexes for table `lry_adver`
--
ALTER TABLE `lry_adver`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `lry_all_content`
--
ALTER TABLE `lry_all_content`
  ADD PRIMARY KEY (`allid`),
  ADD KEY `userid_index` (`userid`,`issystem`,`status`),
  ADD KEY `modelid_index` (`modelid`,`id`),
  ADD KEY `status` (`siteid`,`status`),
  ADD KEY `issystem` (`siteid`,`issystem`);

--
-- Indexes for table `lry_article`
--
ALTER TABLE `lry_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`),
  ADD KEY `catid` (`status`,`catid`),
  ADD KEY `userid` (`status`,`userid`);

--
-- Indexes for table `lry_attachment`
--
ALTER TABLE `lry_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siteid` (`siteid`),
  ADD KEY `userid_index` (`userid`),
  ADD KEY `contentid` (`contentid`);

--
-- Indexes for table `lry_banner`
--
ALTER TABLE `lry_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `typeid` (`typeid`);

--
-- Indexes for table `lry_banner_type`
--
ALTER TABLE `lry_banner_type`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `lry_category`
--
ALTER TABLE `lry_category`
  ADD PRIMARY KEY (`catid`),
  ADD KEY `siteid` (`siteid`),
  ADD KEY `modelid` (`modelid`);

--
-- Indexes for table `lry_collection_content`
--
ALTER TABLE `lry_collection_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nodeid` (`nodeid`),
  ADD KEY `status` (`status`),
  ADD KEY `url` (`url`);

--
-- Indexes for table `lry_collection_node`
--
ALTER TABLE `lry_collection_node`
  ADD PRIMARY KEY (`nodeid`);

--
-- Indexes for table `lry_comment`
--
ALTER TABLE `lry_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siteid` (`siteid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `commentid` (`commentid`,`status`);

--
-- Indexes for table `lry_comment_data`
--
ALTER TABLE `lry_comment_data`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `lry_config`
--
ALTER TABLE `lry_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `lry_download`
--
ALTER TABLE `lry_download`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`),
  ADD KEY `catid` (`status`,`catid`),
  ADD KEY `userid` (`status`,`userid`);

--
-- Indexes for table `lry_favorite`
--
ALTER TABLE `lry_favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `lry_forum_attitude`
--
ALTER TABLE `lry_forum_attitude`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commentid` (`commentid`,`userid`),
  ADD KEY `forumid` (`forumid`,`userid`);

--
-- Indexes for table `lry_forum_comment`
--
ALTER TABLE `lry_forum_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forumid` (`forumid`,`status`);

--
-- Indexes for table `lry_forum_config`
--
ALTER TABLE `lry_forum_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lry_forum_plate`
--
ALTER TABLE `lry_forum_plate`
  ADD PRIMARY KEY (`plate_id`);

--
-- Indexes for table `lry_forum_post`
--
ALTER TABLE `lry_forum_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plate_id` (`plate_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lry_guestbook`
--
ALTER TABLE `lry_guestbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_booktime` (`booktime`),
  ADD KEY `index_replyid` (`replyid`),
  ADD KEY `index_ischeck` (`siteid`,`ischeck`);

--
-- Indexes for table `lry_keyword_link`
--
ALTER TABLE `lry_keyword_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lry_link`
--
ALTER TABLE `lry_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siteid` (`siteid`,`status`);

--
-- Indexes for table `lry_member`
--
ALTER TABLE `lry_member`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `lry_member_authorization`
--
ALTER TABLE `lry_member_authorization`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authindex` (`authname`,`token`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `lry_member_detail`
--
ALTER TABLE `lry_member_detail`
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `lry_member_follow`
--
ALTER TABLE `lry_member_follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `lry_member_group`
--
ALTER TABLE `lry_member_group`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `lry_member_guest`
--
ALTER TABLE `lry_member_guest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `space_id` (`space_id`);

--
-- Indexes for table `lry_member_sign`
--
ALTER TABLE `lry_member_sign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `lry_menu`
--
ALTER TABLE `lry_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listorder` (`listorder`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `module` (`m`,`c`,`a`);

--
-- Indexes for table `lry_message`
--
ALTER TABLE `lry_message`
  ADD PRIMARY KEY (`messageid`),
  ADD KEY `replyid` (`replyid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lry_message_data`
--
ALTER TABLE `lry_message_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message` (`userid`,`group_message_id`);

--
-- Indexes for table `lry_message_group`
--
ALTER TABLE `lry_message_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lry_model`
--
ALTER TABLE `lry_model`
  ADD PRIMARY KEY (`modelid`),
  ADD KEY `siteid` (`siteid`,`type`);

--
-- Indexes for table `lry_model_field`
--
ALTER TABLE `lry_model_field`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `modelid` (`modelid`,`disabled`),
  ADD KEY `field` (`field`,`modelid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lry_module`
--
ALTER TABLE `lry_module`
  ADD PRIMARY KEY (`module`);

--
-- Indexes for table `lry_notes`
--
ALTER TABLE `lry_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `year` (`year`);

--
-- Indexes for table `lry_order`
--
ALTER TABLE `lry_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `order_sn` (`order_sn`),
  ADD KEY `status` (`status`,`type`);

--
-- Indexes for table `lry_page`
--
ALTER TABLE `lry_page`
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `lry_pay`
--
ALTER TABLE `lry_pay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `trade_sn` (`trade_sn`);

--
-- Indexes for table `lry_pay_mode`
--
ALTER TABLE `lry_pay_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lry_pay_spend`
--
ALTER TABLE `lry_pay_spend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `trade_sn` (`trade_sn`);

--
-- Indexes for table `lry_product`
--
ALTER TABLE `lry_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`),
  ADD KEY `catid` (`status`,`catid`),
  ADD KEY `userid` (`status`,`userid`);

--
-- Indexes for table `lry_spider_log`
--
ALTER TABLE `lry_spider_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spider` (`spider`),
  ADD KEY `url` (`url`),
  ADD KEY `addtime` (`addtime`);

--
-- Indexes for table `lry_tag`
--
ALTER TABLE `lry_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siteid_catid` (`siteid`,`catid`),
  ADD KEY `siteid_tag` (`siteid`,`tag`);

--
-- Indexes for table `lry_tag_content`
--
ALTER TABLE `lry_tag_content`
  ADD KEY `tag_index` (`modelid`,`aid`),
  ADD KEY `tagid_index` (`siteid`,`tagid`);

--
-- Indexes for table `lry_urlrule`
--
ALTER TABLE `lry_urlrule`
  ADD PRIMARY KEY (`urlruleid`);

--
-- Indexes for table `lry_view_count`
--
ALTER TABLE `lry_view_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lry_view_log`
--
ALTER TABLE `lry_view_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `lry_wechat_auto_reply`
--
ALTER TABLE `lry_wechat_auto_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_index` (`type`);

--
-- Indexes for table `lry_wechat_group`
--
ALTER TABLE `lry_wechat_group`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `lry_wechat_mass`
--
ALTER TABLE `lry_wechat_mass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lry_wechat_media`
--
ALTER TABLE `lry_wechat_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lry_wechat_menu`
--
ALTER TABLE `lry_wechat_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `listorder` (`listorder`);

--
-- Indexes for table `lry_wechat_message`
--
ALTER TABLE `lry_wechat_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `openid` (`openid`),
  ADD KEY `issystem` (`issystem`);

--
-- Indexes for table `lry_wechat_scan`
--
ALTER TABLE `lry_wechat_scan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lry_wechat_user`
--
ALTER TABLE `lry_wechat_user`
  ADD PRIMARY KEY (`wechatid`),
  ADD UNIQUE KEY `openid` (`openid`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `subscribe` (`subscribe`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lry_admin`
--
ALTER TABLE `lry_admin`
  MODIFY `adminid` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lry_admin_log`
--
ALTER TABLE `lry_admin_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_admin_login_log`
--
ALTER TABLE `lry_admin_login_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `lry_admin_role`
--
ALTER TABLE `lry_admin_role`
  MODIFY `roleid` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lry_adver`
--
ALTER TABLE `lry_adver`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lry_all_content`
--
ALTER TABLE `lry_all_content`
  MODIFY `allid` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `lry_article`
--
ALTER TABLE `lry_article`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `lry_attachment`
--
ALTER TABLE `lry_attachment`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `lry_banner`
--
ALTER TABLE `lry_banner`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lry_banner_type`
--
ALTER TABLE `lry_banner_type`
  MODIFY `tid` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lry_category`
--
ALTER TABLE `lry_category`
  MODIFY `catid` smallint NOT NULL AUTO_INCREMENT COMMENT '栏目ID', AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lry_collection_content`
--
ALTER TABLE `lry_collection_content`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_collection_node`
--
ALTER TABLE `lry_collection_node`
  MODIFY `nodeid` smallint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '采集节点ID';

--
-- AUTO_INCREMENT for table `lry_comment`
--
ALTER TABLE `lry_comment`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lry_config`
--
ALTER TABLE `lry_config`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `lry_download`
--
ALTER TABLE `lry_download`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_favorite`
--
ALTER TABLE `lry_favorite`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lry_forum_attitude`
--
ALTER TABLE `lry_forum_attitude`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_forum_comment`
--
ALTER TABLE `lry_forum_comment`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lry_forum_config`
--
ALTER TABLE `lry_forum_config`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lry_forum_plate`
--
ALTER TABLE `lry_forum_plate`
  MODIFY `plate_id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lry_forum_post`
--
ALTER TABLE `lry_forum_post`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `lry_guestbook`
--
ALTER TABLE `lry_guestbook`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `lry_keyword_link`
--
ALTER TABLE `lry_keyword_link`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_link`
--
ALTER TABLE `lry_link`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lry_member`
--
ALTER TABLE `lry_member`
  MODIFY `userid` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `lry_member_authorization`
--
ALTER TABLE `lry_member_authorization`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_member_follow`
--
ALTER TABLE `lry_member_follow`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lry_member_group`
--
ALTER TABLE `lry_member_group`
  MODIFY `groupid` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lry_member_guest`
--
ALTER TABLE `lry_member_guest`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lry_member_sign`
--
ALTER TABLE `lry_member_sign`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `lry_menu`
--
ALTER TABLE `lry_menu`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `lry_message`
--
ALTER TABLE `lry_message`
  MODIFY `messageid` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lry_message_data`
--
ALTER TABLE `lry_message_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_message_group`
--
ALTER TABLE `lry_message_group`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_model`
--
ALTER TABLE `lry_model`
  MODIFY `modelid` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lry_model_field`
--
ALTER TABLE `lry_model_field`
  MODIFY `fieldid` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `lry_notes`
--
ALTER TABLE `lry_notes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lry_order`
--
ALTER TABLE `lry_order`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_pay`
--
ALTER TABLE `lry_pay`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `lry_pay_mode`
--
ALTER TABLE `lry_pay_mode`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lry_pay_spend`
--
ALTER TABLE `lry_pay_spend`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_product`
--
ALTER TABLE `lry_product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_spider_log`
--
ALTER TABLE `lry_spider_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `lry_tag`
--
ALTER TABLE `lry_tag`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lry_urlrule`
--
ALTER TABLE `lry_urlrule`
  MODIFY `urlruleid` smallint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_view_count`
--
ALTER TABLE `lry_view_count`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lry_view_log`
--
ALTER TABLE `lry_view_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;

--
-- AUTO_INCREMENT for table `lry_wechat_auto_reply`
--
ALTER TABLE `lry_wechat_auto_reply`
  MODIFY `id` mediumint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_wechat_mass`
--
ALTER TABLE `lry_wechat_mass`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_wechat_media`
--
ALTER TABLE `lry_wechat_media`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_wechat_menu`
--
ALTER TABLE `lry_wechat_menu`
  MODIFY `id` mediumint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_wechat_message`
--
ALTER TABLE `lry_wechat_message`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_wechat_scan`
--
ALTER TABLE `lry_wechat_scan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lry_wechat_user`
--
ALTER TABLE `lry_wechat_user`
  MODIFY `wechatid` int UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
