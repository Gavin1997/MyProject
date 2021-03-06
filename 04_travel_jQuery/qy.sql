-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-10-28 10:02:27
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qy`
--

-- --------------------------------------------------------

--
-- 表的结构 `product_comment`
--

DROP TABLE IF EXISTS `product_comment`;
CREATE TABLE `product_comment` (
  `com_id` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `content` varchar(256) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `tid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product_comment`
--

INSERT INTO `product_comment` (`com_id`, `uname`, `content`, `ctime`, `tid`) VALUES
(99, 'dangdang', '当当', '2018-10-21 19:35:29', 4),
(100, 'dangdang', '我第二次评论', '2018-10-21 19:38:23', 4),
(101, 'dangdang', '我的心好冷', '2018-10-21 19:43:13', 4),
(102, 'dangdang', '鼓捣鼓捣', '2018-10-21 19:44:03', 4),
(103, 'dangdang', '发发发', '2018-10-21 19:46:53', 4),
(104, 'dangdang', '发发发', '2018-10-21 19:47:08', 4),
(105, 'dangdang', '回复回复', '2018-10-21 19:48:54', 4),
(106, 'dangdang', '我的心', '2018-10-21 20:16:51', 4),
(107, 'dangdang', '1111', '2018-10-21 20:17:38', 4),
(108, 'dangdang', '111', '2018-10-21 20:17:59', 4),
(109, 'dangdang', '哈哈哈', '2018-10-21 20:19:33', 4),
(110, 'dangdang', '哈哈哈哈', '2018-10-21 20:19:45', 4),
(111, 'dangdang', '哈哈哈 傻媳妇', '2018-10-21 20:28:29', 4),
(112, 'dangdang', '辅导费', '2018-10-21 21:35:38', 4),
(113, 'dangdang', '更多', '2018-10-21 22:04:21', 4),
(114, 'dangdang', '鼓捣鼓捣', '2018-10-21 22:04:25', 4),
(115, 'dangdang', '高大哥大哥', '2018-10-21 22:04:28', 4),
(116, 'dangdang', '鼓捣鼓捣', '2018-10-21 22:04:31', 4),
(117, 'dangdang', '高大哥大哥的', '2018-10-21 22:04:34', 4),
(118, 'dangdang', '高大哥大哥的', '2018-10-21 22:04:36', 4),
(119, 'dangdang', '高大哥大哥的', '2018-10-21 22:04:39', 4),
(120, 'dangdang', '高大哥大哥的', '2018-10-21 22:04:42', 4),
(121, 'dangdang', '这个是第10个商品的评论', '2018-10-22 00:15:11', 10),
(122, 'dangdang', '哈哈哈', '2018-10-22 01:01:25', 16),
(123, 'dangdang', '哈哈', '2018-10-22 22:30:50', 7),
(124, 'dangdang', '啥子意思', '2018-10-22 22:30:58', 7),
(125, 'dangdang', '第一个[]评论', '2018-10-22 22:31:23', 4),
(126, 'dangdang', '好好', '2018-10-22 22:31:46', 4),
(127, 'dangdang', '高大哥大哥的', '2018-10-22 22:34:30', 4),
(128, 'dangdang', '123123', '2018-10-22 22:41:59', 4),
(129, 'dangdang', '大大大', '2018-10-22 22:46:47', 4),
(130, 'dangdang', '更多高大哥大哥的', '2018-10-22 22:47:12', 4),
(131, 'dangdang', '方式发顺丰', '2018-10-22 23:12:47', 4),
(132, 'dangdang', '发送方式发顺丰', '2018-10-22 23:13:07', 4),
(133, 'dangdang', '发送方式发顺丰凡啊', '2018-10-22 23:13:26', 4),
(134, 'dangdang', '再试一次', '2018-10-22 23:17:52', 4),
(135, 'dangdang', '法法', '2018-10-22 23:18:12', 4),
(136, 'dangdang', '发发发发发', '2018-10-22 23:18:27', 4),
(137, 'dangdang', '发发发发', '2018-10-22 23:18:47', 4),
(138, 'dangdang', '发送的方式', '2018-10-22 23:19:03', 4),
(139, 'dangdang', '发发发', '2018-10-22 23:19:14', 4),
(140, 'dangdang', '放松放松', '2018-10-22 23:19:20', 4),
(141, 'dangdang', '方式发顺丰', '2018-10-22 23:19:49', 4),
(142, 'dangdang', '烦死烦死烦死', '2018-10-22 23:20:23', 4),
(143, 'dangdang', '烦死烦死烦死', '2018-10-22 23:20:40', 4),
(144, 'dangdang', '发发发', '2018-10-22 23:23:27', 4),
(145, 'dangdang', '这样试一试', '2018-10-22 23:23:55', 4),
(146, 'dangdang', '我爱我的小媳妇儿,因为她很可爱', '2018-10-22 23:26:22', 4),
(147, 'dangdang', '方法', '2018-10-25 23:41:09', 41);

-- --------------------------------------------------------

--
-- 表的结构 `qy_collection`
--

DROP TABLE IF EXISTS `qy_collection`;
CREATE TABLE `qy_collection` (
  `cid` int(11) NOT NULL,
  `uname` varchar(48) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `old_price` int(11) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `md_pic` varchar(256) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qy_collection`
--

INSERT INTO `qy_collection` (`cid`, `uname`, `title`, `subtitle`, `price`, `old_price`, `sold_count`, `md_pic`, `uid`, `tid`) VALUES
(85, 'dangdang', '[中秋/国庆特惠]北京出发欧洲多地往返10-11天含税机票(双点往返+多航班可选)', '赠送当地项目', 1999, 1999, 1800, 'http://127.0.0.1:3000/img/product/md/1F/2/5577c8f5a5596.jpg', 2, 4),
(86, 'dangdang', '[中秋/国庆特惠]北京出发欧洲多地往返10-11天含税机票(双点往返+多航班可选)', '赠送当地项目', 3999, 3999, 1000, 'http://127.0.0.1:3000/img/product/md/1F/2/5577c8f5a5596.jpg', 2, 5);

-- --------------------------------------------------------

--
-- 表的结构 `qy_index_carousel`
--

DROP TABLE IF EXISTS `qy_index_carousel`;
CREATE TABLE `qy_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qy_index_carousel`
--

INSERT INTO `qy_index_carousel` (`cid`, `img`, `title`, `href`) VALUES
(1, 'http://127.0.0.1:3000/img/carousel/20180913124911.jpg', '首页轮播商品1', 'http://127.0.0.1:3000/product_details.html?tid=1'),
(2, 'http://127.0.0.1:3000/img/carousel/2018-10-10_191122.png', '首页轮播商品2', 'http://127.0.0.1:3000/product_details.html?tid=20'),
(3, 'http://127.0.0.1:3000/img/carousel/2018-10-11_190218.png', '首页轮播商品3', 'http://127.0.0.1:3000/product_details.html?tid=32'),
(4, 'http://127.0.0.1:3000/img/carousel/2018-10-16_194344.png', '首页商品4', 'http://127.0.0.1:3000/product_details.html?tid=12');

-- --------------------------------------------------------

--
-- 表的结构 `qy_index_product`
--

DROP TABLE IF EXISTS `qy_index_product`;
CREATE TABLE `qy_index_product` (
  `qid` int(11) NOT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qy_index_product`
--

INSERT INTO `qy_index_product` (`qid`, `details`, `pic`, `price`, `href`, `seq_recommended`, `tid`) VALUES
(1, '[国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店住宿+可加购20元拼车接机服务))', 'http://127.0.0.1:3000/img/1F/552f2cb41463c.jpg', '499', 'http://127.0.0.1:3000/product_details.html?tid=1', 1, 1),
(2, '[中秋/国庆特惠]北京出发欧洲多地往返10-11天含税机票(双点往返+多航班可选)', 'http://127.0.0.1:3000/img/1F/FjUwL8KpDf7TAvM1FsKrFiGCHWz_.jpg', '1999', 'product_details.html?tid=4', 2, 4),
(3, '[全年爆款][国庆][枫叶季]天津直飞大阪/东京6天往返含税机票(可选两点往返)', 'http://127.0.0.1:3000/img/1F/FsYmHfBwGcJZpp-4brJ9_ZxWAOsk.jpg', '1288', 'product_details.html?tid=7', 3, 7),
(4, '成都/重庆直飞清迈5-7天往返含税机票(自主航班+全年特惠中)', 'http://127.0.0.1:3000/img/1F/55d3f15c06bf0.jpg', '1099', 'product_details.html?tid=10', 4, 10),
(5, '【10月14日秒杀】【省钱神器】全日本JR Pass周游券(7/14/21日可选)', 'http://127.0.0.1:3000/img/1F/15259390915266.jpg', '1799', 'product_details.html?tid=13', 5, 13),
(6, '【秒杀】布里斯班/黄金海岸摩顿岛天阁露玛野生海豚岛度假村', 'http://127.0.0.1:3000/img/1F/14543178368797.jpg', '705', 'product_details.html?tid=16', 6, 16),
(7, '澳大利亚凯恩斯Downunder鱼鹰号大堡礁浮潜/深潜+直升飞机(凯恩斯出发)', 'http://127.0.0.1:3000/img/1F/14467923084610.jpg', '842', 'product_details.html?tid=19', 7, 19),
(8, '【VIP插队/免排队】日本大阪环球影城快速票', 'http://127.0.0.1:3000/img/1F/14713415918995.jpg', '91', 'product_details.html?tid=22', 8, 22),
(9, '[国庆][枫叶季预售]上海直飞日本大阪5-7天往返含税机票(可选含近铁周游2日券/首晚市区酒店+早去晚回/午去午回航班套餐)', 'http://127.0.0.1:3000/img/2F/FpWltpBLmViTT78QT8xprHdNLDMC.jpg', '1799', 'product_details.html?tid=25', 9, 25),
(10, '[个人/家庭亲子]北京直飞美国/加拿大多地3-30天往返含税机票(拒签全退,全国联运,可A进B出,五星海航,赠送机服务)', 'http://127.0.0.1:3000/img/2F/150535718553807212647029247696.jpg', '3399', 'product_details.html?tid=28', 10, 28),
(11, '上海/杭州/南京直飞东京+大阪6-8天自由行（天天出发+优质航空+星级酒店+赠送出境旅游保险+不走回头路）', 'http://127.0.0.1:3000/img/2F/552f7aaa79eeb.jpg', '5099', 'product_details.html?tid=31', 11, 31),
(12, '[国庆][中秋]上海/南京直飞丽江5天往返含税机票（特价机票+优质航空+20KG托运+度假优选）', 'http://127.0.0.1:3000/img/2F/55d3efbfe2cb2.jpg', '6199', 'product_details.html?tid=34', 12, 34),
(13, '广州/深圳往返沙巴5/6天自由行（可安排仙本那邦邦岛卡帕莱度假村等+可单卖机票+赠酒店往返接送机+赠当地电话卡+全程四星酒店+多酒店升级+丰盛早餐）可预订仙本那', 'http://127.0.0.1:3000/img/2F/FnfjbT7lkcLJEASNiAQYJKaXpKOf.jpg', '4499', 'product_details.html?tid=37', 13, 37),
(14, '[国庆]北京/天津直飞日本东京/大阪/东阪/冲绳/北海道4-8天往返含税机票', 'http://127.0.0.1:3000/img/2F/14105187861872.jpg', '1488', 'product_details.html?tid=40', 14, 40),
(15, '【秒杀8.8大促大阪专属福袋】】【打卡必玩】日本大阪环球影城入园电子票', 'http://127.0.0.1:3000/img/3F/14491343424708.jpg', '480', 'product_details.html?tid=43', 15, 43),
(16, '【10月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票', 'http://127.0.0.1:3000/img/3F/151358585488407518508896561411.jpg', '100', 'product_details.html?tid=46', 16, 46),
(17, '【10月13日秒杀】日本关西地区JR Kansai WIDE Area Pass广域铁路周游(5日券,顺丰包邮)', 'http://127.0.0.1:3000/img/3F/14422177585931.jpg', '534', 'product_details.html?tid=49', 17, 49),
(18, '【10月13日秒杀】日本JR北海道hokkaido rail pass周游券(3/4/5/7日可选)', 'http://127.0.0.1:3000/img/3F/14422178162559.jpg', '1012', 'product_details.html?tid=52', 18, 52),
(19, '【省钱神器】日本关西周游卡KANSAI THRU PASS(2日券/3日券)', 'http://127.0.0.1:3000/img/3F/14410968959037.jpg', '125', 'product_details.html?tid=55', 19, 55),
(20, '【10月2日秒杀】【省钱c畅玩】全日本JR Pass周游券', 'http://127.0.0.1:3000/img/3F/15259390915266.jpg', '1799', 'product_details.html?tid=58', 20, 58),
(21, '【最世界一日游】百年京都——禅意古都的维新之路', 'http://127.0.0.1:3000/img/4F/15312949094364.jpg', '1799', 'product_details.html?tid=61', 21, 61),
(22, '【City Walk】京都深度入门—探秘祇园东山半日游', 'http://127.0.0.1:3000/img/4F/15154223274760.jpg', '248', 'product_details.html?tid=64', 22, 64),
(23, '泰国清迈-凡中文泰餐厨艺学校', 'http://127.0.0.1:3000/img/4F/15141912399049.jpg', '60', 'product_details.html?lid=67', 23, 67),
(24, '【City Walk】 日本桥-穿街走巷看东京,感受大城市的市井人情', 'http://127.0.0.1:3000/img/4F/14925686681041.jpg', '248', 'product_details.html?tid=70', 24, 70),
(25, '【最世界一日游】京都岚山香风—竹林和温泉的纯净空气之旅（含午餐）', 'http://127.0.0.1:3000/img/4F/14652257921193.jpg', '698', 'product_details.html?tid=73', 25, 73),
(26, '【City Walk】“大村庄”里的菜市场 - 巴塞罗那半日行', 'http://127.0.0.1:3000/img/4F/14467036423512.jpg', '248', 'product_details.html?tid=77', 26, 77),
(27, '上海/南京/成都直飞普吉岛5晚6/7天半自助游礼包（无购物-1/2天自由活动/风帆游艇出海鸡蛋+珊瑚双岛游', 'http://127.0.0.1:3000/img/5F/15136729151740034250255343091895.jpg', '1199', 'product_details.html?tid=80', 27, 80),
(28, '北京出发美国西海岸+国家公园8日半自助游（大峡谷/马蹄湾/羚羊谷/66号公路', 'http://127.0.0.1:3000/img/5F/FgRqn1zszBgM3hWbCQyimdJejLIi.jpg', '7999', 'product_details.html?tid=83', 28, 83),
(29, '上海往返巴厘岛6天4晚半自助游（2晚花园泳池别墅+2晚海边5星Sakala全套房酒店或同级+银快号出海+阿勇河探秘+无购物含WiFi', 'http://127.0.0.1:3000/img/5F/FnbwnJLmBGXjH6zyXyp1mPZAVXev.jpg', '5249', 'product_details.html?tid=86', 29, 86),
(30, '成都直飞日本名古屋-大阪-京都-箱根-东京6天5晚半自助游（东京一天自由活动，早去晚回，全程升级俩晚希尔顿或同级，至少一晚日式温泉', 'http://127.0.0.1:3000/img/5F/FrwxrlrT7FCCB9ssZxDXNMcI1DmN.jpg', '4999', 'product_details.html?tid=88', 30, 88),
(31, '天津直飞芽庄5-7天半自助游（优质越南航空/1-2天自由行/赠送京津往返接送大巴/赠送意外险/市区游）', 'http://127.0.0.1:3000/img/5F/15232433616585.jpg', '999', 'product_details.html?tid=91', 31, 91),
(32, '北京直飞巴厘岛7天5晚半自助游（纯玩无购物含WIFI+希尔顿洲际同级+独栋泳池别墅+蓝梦出海含海底漫步+定制牛人种珊瑚）', 'http://127.0.0.1:3000/img/5F/FnQ39_T9XNGF03HhlIRlLlJjyeBX.jpg', '7299', 'product_details.html?tid=94', 32, 94);

-- --------------------------------------------------------

--
-- 表的结构 `qy_news`
--

DROP TABLE IF EXISTS `qy_news`;
CREATE TABLE `qy_news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `click` int(11) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qy_news`
--

INSERT INTO `qy_news` (`id`, `title`, `content`, `click`, `img_url`, `price`, `ctime`) VALUES
(1, '中国驻美大使：中美关系何去何从，再一次需要做出历史性选择', '新华社华盛顿9月27日消息，中国驻美国大使崔天凯27日表示，中美关系何去何从，再一次需要做出历史性的选择。中方致力于同美方共同秉持不冲突不对抗、相互尊重、合作共赢的理念，期待美方同样做出正确选择。\r\n中国驻美大使馆当晚举行国庆招待会。崔天凯在致辞中说，当今世界正经历百年未有之大变局。作为联合国安理会两个常任理事国和世界上最大的两个经济体，中美关系何去何从，再一次需要做出历史性的选择。\r\n崔天凯说，这个选择事关两国各界利益，特别是事关两国青年一代的前途和命运。他说，中方的选择已经明确。中方致力于同美方共同秉持不冲突不对抗、相互尊重、合作共赢的理念，增进互信，扩大合作，以建设性方式解决分歧，建立健康稳定、持续发展的中美关系，造福两国人民和整个人类社会。我们期待美方同样做出正确的选择。', 100, 'http://127.0.0.1:3000/img/banner1.png', '0.00', '2018-09-25 18:58:47'),
(2, '国务院教督办约谈“问题营养餐”负责人：严肃追责，绝不姑息', '554645646456456发发卡机饭卡就会发狂', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(3, '123', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(4, '124', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(5, '125', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(6, '126', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(7, '127', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(8, '128', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(9, '129', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(10, '1210', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(11, '1211', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(12, '1212', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(13, '1213', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(14, '1214', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(15, '1215', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(16, '1216', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:47'),
(17, '1217', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:48'),
(18, '1218', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:48'),
(19, '1219', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:48'),
(20, '1220', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:48'),
(21, '1221', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:48'),
(22, '1233', '123', 0, 'http://127.0.0.1:3000/banner1.png', '0.00', '2018-09-25 18:58:48');

-- --------------------------------------------------------

--
-- 表的结构 `qy_product_family`
--

DROP TABLE IF EXISTS `qy_product_family`;
CREATE TABLE `qy_product_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qy_product_family`
--

INSERT INTO `qy_product_family` (`fid`, `fname`) VALUES
(1, '限时特卖'),
(2, '机酒自由行'),
(3, '当地玩乐'),
(4, '最世界,深度旅行'),
(5, '跟团/半自助游');

-- --------------------------------------------------------

--
-- 表的结构 `qy_product_pic`
--

DROP TABLE IF EXISTS `qy_product_pic`;
CREATE TABLE `qy_product_pic` (
  `pid` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qy_product_pic`
--

INSERT INTO `qy_product_pic` (`pid`, `product_id`, `sm`, `md`) VALUES
(1, 1, 'http://127.0.0.1:3000/img/product/sm/1F/1/552f2cb41463c.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/552f2cb41463c.jpg'),
(2, 1, 'http://127.0.0.1:3000/img/product/sm/1F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/14107610654728.jpg'),
(3, 1, 'http://127.0.0.1:3000/img/product/sm/1F/1/14467923084610.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/14467923084610.jpg'),
(4, 1, 'http://127.0.0.1:3000/img/product/sm/1F/1/552f2bf02d1ff.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/552f2bf02d1ff.jpg'),
(5, 1, 'http://127.0.0.1:3000/img/product/sm/1F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/5604b30ac5f7d.jpg'),
(6, 1, 'http://127.0.0.1:3000/img/product/sm/1F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(7, 1, 'http://127.0.0.1:3000/img/product/sm/1F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(8, 2, 'http://127.0.0.1:3000/img/product/sm/1F/1/552f2cb41463c.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/552f2cb41463c.jpg'),
(9, 2, 'http://127.0.0.1:3000/img/product/sm/1F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/14107610654728.jpg'),
(10, 2, 'http://127.0.0.1:3000/img/product/sm/1F/1/14467923084610.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/14467923084610.jpg'),
(11, 2, 'http://127.0.0.1:3000/img/product/sm/1F/1/552f2bf02d1ff.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/552f2bf02d1ff.jpg'),
(12, 2, 'http://127.0.0.1:3000/img/product/sm/1F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/5604b30ac5f7d.jpg'),
(13, 2, 'http://127.0.0.1:3000/img/product/sm/1F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(14, 2, 'http://127.0.0.1:3000/img/product/sm/1F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(15, 3, 'http://127.0.0.1:3000/img/product/sm/1F/1/552f2cb41463c.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/552f2cb41463c.jpg'),
(16, 3, 'http://127.0.0.1:3000/img/product/sm/1F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/14107610654728.jpg'),
(17, 3, 'http://127.0.0.1:3000/img/product/sm/1F/1/14467923084610.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/14467923084610.jpg'),
(18, 3, 'http://127.0.0.1:3000/img/product/sm/1F/1/552f2bf02d1ff.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/552f2bf02d1ff.jpg'),
(19, 3, 'http://127.0.0.1:3000/img/product/sm/1F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/5604b30ac5f7d.jpg'),
(20, 3, 'http://127.0.0.1:3000/img/product/sm/1F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(21, 3, 'http://127.0.0.1:3000/img/product/sm/1F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/1F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(22, 4, 'http://127.0.0.1:3000/img/product/sm/1F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/5577c8f5a5596.jpg'),
(23, 4, 'http://127.0.0.1:3000/img/product/sm/1F/2/150842479370409276086876883869.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/150842479370409276086876883869.jpg'),
(24, 4, 'http://127.0.0.1:3000/img/product/sm/1F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/1508424833357046127682544933757.jpg'),
(25, 4, 'http://127.0.0.1:3000/img/product/sm/1F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/1508424956580014973516592110703.jpg'),
(26, 4, 'http://127.0.0.1:3000/img/product/sm/1F/2/15259390915266.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/15259390915266.jpg'),
(27, 4, 'http://127.0.0.1:3000/img/product/sm/1F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/15324000459305.jpg'),
(28, 4, 'http://127.0.0.1:3000/img/product/sm/1F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(29, 5, 'http://127.0.0.1:3000/img/product/sm/1F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/5577c8f5a5596.jpg'),
(30, 5, 'http://127.0.0.1:3000/img/product/sm/1F/2/150842479370409276086876883869.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/150842479370409276086876883869.jpg'),
(31, 5, 'http://127.0.0.1:3000/img/product/sm/1F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/1508424833357046127682544933757.jpg'),
(32, 5, 'http://127.0.0.1:3000/img/product/sm/1F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/1508424956580014973516592110703.jpg'),
(33, 5, 'http://127.0.0.1:3000/img/product/sm/1F/2/15259390915266.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/15259390915266.jpg'),
(34, 5, 'http://127.0.0.1:3000/img/product/sm/1F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/15324000459305.jpg'),
(35, 5, 'http://127.0.0.1:3000/img/product/sm/1F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(36, 6, 'http://127.0.0.1:3000/img/product/sm/1F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/5577c8f5a5596.jpg'),
(37, 6, 'http://127.0.0.1:3000/img/product/sm/1F/2/150842479370409276086876883869.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/150842479370409276086876883869.jpg'),
(38, 6, 'http://127.0.0.1:3000/img/product/sm/1F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/1508424833357046127682544933757.jpg'),
(39, 6, 'http://127.0.0.1:3000/img/product/sm/1F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/1508424956580014973516592110703.jpg'),
(40, 6, 'http://127.0.0.1:3000/img/product/sm/1F/2/15259390915266.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/15259390915266.jpg'),
(41, 6, 'http://127.0.0.1:3000/img/product/sm/1F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/15324000459305.jpg'),
(42, 6, 'http://127.0.0.1:3000/img/product/sm/1F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/1F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(43, 7, 'http://127.0.0.1:3000/img/product/sm/1F/3/FsYmHfBwGcJZpp-4brJ9_ZxWAOsk.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/FsYmHfBwGcJZpp-4brJ9_ZxWAOsk.jpg'),
(44, 7, 'http://127.0.0.1:3000/img/product/sm/1F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/552f7ac7df666.jpg'),
(45, 7, 'http://127.0.0.1:3000/img/product/sm/1F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/552f7f07dc881.jpg'),
(46, 7, 'http://127.0.0.1:3000/img/product/sm/1F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/552f83b1940ea.jpg'),
(47, 7, 'http://127.0.0.1:3000/img/product/sm/1F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/552f88726118b.jpg'),
(48, 7, 'http://127.0.0.1:3000/img/product/sm/1F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/5735a68a0986b.jpg'),
(49, 7, 'http://127.0.0.1:3000/img/product/sm/1F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/576268351bcd7.jpg'),
(50, 8, 'http://127.0.0.1:3000/img/product/sm/1F/3/FsYmHfBwGcJZpp-4brJ9_ZxWAOsk.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/FsYmHfBwGcJZpp-4brJ9_ZxWAOsk.jpg'),
(51, 8, 'http://127.0.0.1:3000/img/product/sm/1F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/552f7ac7df666.jpg'),
(52, 8, 'http://127.0.0.1:3000/img/product/sm/1F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/552f7f07dc881.jpg'),
(53, 8, 'http://127.0.0.1:3000/img/product/sm/1F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/552f83b1940ea.jpg'),
(54, 8, 'http://127.0.0.1:3000/img/product/sm/1F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/552f88726118b.jpg'),
(55, 8, 'http://127.0.0.1:3000/img/product/sm/1F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/5735a68a0986b.jpg'),
(56, 8, 'http://127.0.0.1:3000/img/product/sm/1F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/576268351bcd7.jpg'),
(57, 9, 'http://127.0.0.1:3000/img/product/sm/1F/3/FsYmHfBwGcJZpp-4brJ9_ZxWAOsk.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/FsYmHfBwGcJZpp-4brJ9_ZxWAOsk.jpg'),
(58, 9, 'http://127.0.0.1:3000/img/product/sm/1F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/552f7ac7df666.jpg'),
(59, 9, 'http://127.0.0.1:3000/img/product/sm/1F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/552f7f07dc881.jpg'),
(60, 9, 'http://127.0.0.1:3000/img/product/sm/1F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/552f83b1940ea.jpg'),
(61, 9, 'http://127.0.0.1:3000/img/product/sm/1F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/552f88726118b.jpg'),
(62, 9, 'http://127.0.0.1:3000/img/product/sm/1F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/5735a68a0986b.jpg'),
(63, 9, 'http://127.0.0.1:3000/img/product/sm/1F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/1F/3/576268351bcd7.jpg'),
(64, 10, 'http://127.0.0.1:3000/img/product/sm/1F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/1419561768.jpg'),
(65, 10, 'http://127.0.0.1:3000/img/product/sm/1F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/1504686236912036578738978690484.jpg'),
(66, 10, 'http://127.0.0.1:3000/img/product/sm/1F/4/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/552f7ac7df666.jpg'),
(67, 10, 'http://127.0.0.1:3000/img/product/sm/1F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/552f800edb21c.jpg'),
(68, 10, 'http://127.0.0.1:3000/img/product/sm/1F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/552f8034d06f2.jpg'),
(69, 10, 'http://127.0.0.1:3000/img/product/sm/1F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/5735a67edb8da.jpg'),
(70, 10, 'http://127.0.0.1:3000/img/product/sm/1F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(71, 11, 'http://127.0.0.1:3000/img/product/sm/1F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/1419561768.jpg'),
(72, 11, 'http://127.0.0.1:3000/img/product/sm/1F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/1504686236912036578738978690484.jpg'),
(73, 11, 'http://127.0.0.1:3000/img/product/sm/1F/4/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/552f7ac7df666.jpg'),
(74, 11, 'http://127.0.0.1:3000/img/product/sm/1F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/552f800edb21c.jpg'),
(75, 11, 'http://127.0.0.1:3000/img/product/sm/1F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/552f8034d06f2.jpg'),
(76, 11, 'http://127.0.0.1:3000/img/product/sm/1F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/5735a67edb8da.jpg'),
(77, 11, 'http://127.0.0.1:3000/img/product/sm/1F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(78, 12, 'http://127.0.0.1:3000/img/product/sm/1F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/1419561768.jpg'),
(79, 12, 'http://127.0.0.1:3000/img/product/sm/1F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/1504686236912036578738978690484.jpg'),
(80, 12, 'http://127.0.0.1:3000/img/product/sm/1F/4/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/552f7ac7df666.jpg'),
(81, 12, 'http://127.0.0.1:3000/img/product/sm/1F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/552f800edb21c.jpg'),
(82, 12, 'http://127.0.0.1:3000/img/product/sm/1F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/552f8034d06f2.jpg'),
(83, 12, 'http://127.0.0.1:3000/img/product/sm/1F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/5735a67edb8da.jpg'),
(84, 12, 'http://127.0.0.1:3000/img/product/sm/1F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/1F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(85, 13, 'http://127.0.0.1:3000/img/product/sm/1F/5/15259390915266.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/15259390915266.jpg'),
(86, 13, 'http://127.0.0.1:3000/img/product/sm/1F/5/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/1419561755.jpg'),
(87, 13, 'http://127.0.0.1:3000/img/product/sm/1F/5/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/1419561768.jpg'),
(88, 13, 'http://127.0.0.1:3000/img/product/sm/1F/5/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/15221309025905.jpg'),
(89, 13, 'http://127.0.0.1:3000/img/product/sm/1F/5/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/552f88726118b.jpg'),
(90, 13, 'http://127.0.0.1:3000/img/product/sm/1F/5/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/55d3f13e71ae9.jpg'),
(91, 13, 'http://127.0.0.1:3000/img/product/sm/1F/5/580587c702998.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/580587c702998.jpg'),
(92, 14, 'http://127.0.0.1:3000/img/product/sm/1F/5/15259390915266.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/15259390915266.jpg'),
(93, 14, 'http://127.0.0.1:3000/img/product/sm/1F/5/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/1419561755.jpg'),
(94, 14, 'http://127.0.0.1:3000/img/product/sm/1F/5/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/1419561768.jpg'),
(95, 14, 'http://127.0.0.1:3000/img/product/sm/1F/5/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/15221309025905.jpg'),
(96, 14, 'http://127.0.0.1:3000/img/product/sm/1F/5/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/552f88726118b.jpg'),
(97, 14, 'http://127.0.0.1:3000/img/product/sm/1F/5/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/55d3f13e71ae9.jpg'),
(98, 14, 'http://127.0.0.1:3000/img/product/sm/1F/5/580587c702998.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/580587c702998.jpg'),
(99, 15, 'http://127.0.0.1:3000/img/product/sm/1F/5/15259390915266.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/15259390915266.jpg'),
(100, 15, 'http://127.0.0.1:3000/img/product/sm/1F/5/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/1419561755.jpg'),
(101, 15, 'http://127.0.0.1:3000/img/product/sm/1F/5/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/1419561768.jpg'),
(102, 15, 'http://127.0.0.1:3000/img/product/sm/1F/5/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/15221309025905.jpg'),
(103, 15, 'http://127.0.0.1:3000/img/product/sm/1F/5/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/552f88726118b.jpg'),
(104, 15, 'http://127.0.0.1:3000/img/product/sm/1F/5/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/55d3f13e71ae9.jpg'),
(105, 15, 'http://127.0.0.1:3000/img/product/sm/1F/5/580587c702998.jpg', 'http://127.0.0.1:3000/img/product/md/1F/5/580587c702998.jpg'),
(106, 16, 'http://127.0.0.1:3000/img/product/sm/1F/6/14543178368797.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/14543178368797.jpg'),
(107, 16, 'http://127.0.0.1:3000/img/product/sm/1F/6/15066722574954.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/15066722574954.jpg'),
(108, 16, 'http://127.0.0.1:3000/img/product/sm/1F/6/15066745745250.png', 'http://127.0.0.1:3000/img/product/md/1F/6/15066745745250.png'),
(109, 16, 'http://127.0.0.1:3000/img/product/sm/1F/6/15066746689974.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/15066746689974.jpg'),
(110, 16, 'http://127.0.0.1:3000/img/product/sm/1F/6/150769885026306645975767814922.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/150769885026306645975767814922.jpg'),
(111, 16, 'http://127.0.0.1:3000/img/product/sm/1F/6/1507698856363038719667427372606.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/1507698856363038719667427372606.jpg'),
(112, 16, 'http://127.0.0.1:3000/img/product/sm/1F/6/15076988592590862145534231628.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/15076988592590862145534231628.jpg'),
(113, 17, 'http://127.0.0.1:3000/img/product/sm/1F/6/14543178368797.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/14543178368797.jpg'),
(114, 17, 'http://127.0.0.1:3000/img/product/sm/1F/6/15066722574954.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/15066722574954.jpg'),
(115, 17, 'http://127.0.0.1:3000/img/product/sm/1F/6/15066745745250.png', 'http://127.0.0.1:3000/img/product/md/1F/6/15066745745250.png'),
(116, 17, 'http://127.0.0.1:3000/img/product/sm/1F/6/15066746689974.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/15066746689974.jpg'),
(117, 17, 'http://127.0.0.1:3000/img/product/sm/1F/6/150769885026306645975767814922.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/150769885026306645975767814922.jpg'),
(118, 17, 'http://127.0.0.1:3000/img/product/sm/1F/6/1507698856363038719667427372606.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/1507698856363038719667427372606.jpg'),
(119, 17, 'http://127.0.0.1:3000/img/product/sm/1F/6/15076988592590862145534231628.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/15076988592590862145534231628.jpg'),
(120, 18, 'http://127.0.0.1:3000/img/product/sm/1F/6/14543178368797.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/14543178368797.jpg'),
(121, 18, 'http://127.0.0.1:3000/img/product/sm/1F/6/15066722574954.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/15066722574954.jpg'),
(122, 18, 'http://127.0.0.1:3000/img/product/sm/1F/6/15066745745250.png', 'http://127.0.0.1:3000/img/product/md/1F/6/15066745745250.png'),
(123, 18, 'http://127.0.0.1:3000/img/product/sm/1F/6/15066746689974.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/15066746689974.jpg'),
(124, 18, 'http://127.0.0.1:3000/img/product/sm/1F/6/150769885026306645975767814922.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/150769885026306645975767814922.jpg'),
(125, 18, 'http://127.0.0.1:3000/img/product/sm/1F/6/1507698856363038719667427372606.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/1507698856363038719667427372606.jpg'),
(126, 18, 'http://127.0.0.1:3000/img/product/sm/1F/6/15076988592590862145534231628.jpg', 'http://127.0.0.1:3000/img/product/md/1F/6/15076988592590862145534231628.jpg'),
(127, 19, 'http://127.0.0.1:3000/img/product/sm/1F/7/14467923084610.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/14467923084610.jpg'),
(128, 19, 'http://127.0.0.1:3000/img/product/sm/1F/7/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/14105132434818.jpg'),
(129, 19, 'http://127.0.0.1:3000/img/product/sm/1F/7/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/5549cf9faf3a7.jpg'),
(130, 19, 'http://127.0.0.1:3000/img/product/sm/1F/7/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(131, 19, 'http://127.0.0.1:3000/img/product/sm/1F/7/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(132, 19, 'http://127.0.0.1:3000/img/product/sm/1F/7/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(133, 19, 'http://127.0.0.1:3000/img/product/sm/1F/7/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(134, 20, 'http://127.0.0.1:3000/img/product/sm/1F/7/14467923084610.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/14467923084610.jpg'),
(135, 20, 'http://127.0.0.1:3000/img/product/sm/1F/7/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/14105132434818.jpg'),
(136, 20, 'http://127.0.0.1:3000/img/product/sm/1F/7/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/5549cf9faf3a7.jpg'),
(137, 20, 'http://127.0.0.1:3000/img/product/sm/1F/7/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(138, 20, 'http://127.0.0.1:3000/img/product/sm/1F/7/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(139, 20, 'http://127.0.0.1:3000/img/product/sm/1F/7/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(140, 20, 'http://127.0.0.1:3000/img/product/sm/1F/7/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(141, 21, 'http://127.0.0.1:3000/img/product/sm/1F/7/14467923084610.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/14467923084610.jpg'),
(142, 21, 'http://127.0.0.1:3000/img/product/sm/1F/7/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/14105132434818.jpg'),
(143, 21, 'http://127.0.0.1:3000/img/product/sm/1F/7/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/5549cf9faf3a7.jpg'),
(144, 21, 'http://127.0.0.1:3000/img/product/sm/1F/7/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(145, 21, 'http://127.0.0.1:3000/img/product/sm/1F/7/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(146, 21, 'http://127.0.0.1:3000/img/product/sm/1F/7/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(147, 21, 'http://127.0.0.1:3000/img/product/sm/1F/7/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/1F/7/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(148, 22, 'http://127.0.0.1:3000/img/product/sm/1F/8/14713415918995.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/14713415918995.jpg'),
(149, 22, 'http://127.0.0.1:3000/img/product/sm/1F/8/14405844286514.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/14405844286514.jpg'),
(150, 22, 'http://127.0.0.1:3000/img/product/sm/1F/8/14491343424708.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/14491343424708.jpg'),
(151, 22, 'http://127.0.0.1:3000/img/product/sm/1F/8/14702050098591 .jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/14702050098591.png'),
(152, 22, 'http://127.0.0.1:3000/img/product/sm/1F/8/15014958925563.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/15014958925563.jpg'),
(153, 22, 'http://127.0.0.1:3000/img/product/sm/1F/8/Flqjik3t2kT_mwPeOr9Pw6K6lquL.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/Flqjik3t2kT_mwPeOr9Pw6K6lquL.jpg'),
(154, 22, 'http://127.0.0.1:3000/img/product/sm/1F/8/FqhQPPGWraRFQd6Gb5CJl9Nhmgzr.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/FqhQPPGWraRFQd6Gb5CJl9Nhmgzr.jpg'),
(155, 23, 'http://127.0.0.1:3000/img/product/sm/1F/8/14713415918995.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/14713415918995.jpg'),
(156, 23, 'http://127.0.0.1:3000/img/product/sm/1F/8/14405844286514.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/14405844286514.jpg'),
(157, 23, 'http://127.0.0.1:3000/img/product/sm/1F/8/14491343424708.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/14491343424708.jpg'),
(158, 23, 'http://127.0.0.1:3000/img/product/sm/1F/814702050098591 .jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/14702050098591.png'),
(159, 23, 'http://127.0.0.1:3000/img/product/sm/1F/8/15014958925563.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/15014958925563.jpg'),
(160, 23, 'http://127.0.0.1:3000/img/product/sm/1F/8/Flqjik3t2kT_mwPeOr9Pw6K6lquL.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/Flqjik3t2kT_mwPeOr9Pw6K6lquL.jpg'),
(161, 23, 'http://127.0.0.1:3000/img/product/sm/1F/8/FqhQPPGWraRFQd6Gb5CJl9Nhmgzr.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/FqhQPPGWraRFQd6Gb5CJl9Nhmgzr.jpg'),
(162, 24, 'http://127.0.0.1:3000/img/product/sm/1F/8/14713415918995.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/14713415918995.jpg'),
(163, 24, 'http://127.0.0.1:3000/img/product/sm/1F/8/14405844286514.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/14405844286514.jpg'),
(164, 24, 'http://127.0.0.1:3000/img/product/sm/1F/8/14491343424708.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/14491343424708.jpg'),
(165, 24, 'http://127.0.0.1:3000/img/product/sm/1F/814702050098591 .jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/14702050098591.png'),
(166, 24, 'http://127.0.0.1:3000/img/product/sm/1F/8/15014958925563.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/15014958925563.jpg'),
(167, 24, 'http://127.0.0.1:3000/img/product/sm/1F/8/Flqjik3t2kT_mwPeOr9Pw6K6lquL.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/Flqjik3t2kT_mwPeOr9Pw6K6lquL.jpg'),
(168, 24, 'http://127.0.0.1:3000/img/product/sm/1F/8/FqhQPPGWraRFQd6Gb5CJl9Nhmgzr.jpg', 'http://127.0.0.1:3000/img/product/md/1F/8/FqhQPPGWraRFQd6Gb5CJl9Nhmgzr.jpg'),
(169, 25, 'http://127.0.0.1:3000/img/product/sm/2F/1/FpWltpBLmViTT78QT8xprHdNLDMC.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/FpWltpBLmViTT78QT8xprHdNLDMC.jpg'),
(170, 25, 'http://127.0.0.1:3000/img/product/sm/2F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/14107610654728.jpg'),
(171, 25, 'http://127.0.0.1:3000/img/product/sm/2F/1/552f2bf02d1ff.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/552f2bf02d1ff.jpg'),
(172, 25, 'http://127.0.0.1:3000/img/product/sm/2F/1/552f77f938c45.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/552f77f938c45.jpg'),
(173, 25, 'http://127.0.0.1:3000/img/product/sm/2F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/5604b30ac5f7d.jpg'),
(174, 25, 'http://127.0.0.1:3000/img/product/sm/2F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(175, 25, 'http://127.0.0.1:3000/img/product/sm/2F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(176, 25, 'http://127.0.0.1:3000/img/product/sm/2F/1/FpWltpBLmViTT78QT8xprHdNLDMC.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/FpWltpBLmViTT78QT8xprHdNLDMC.jpg'),
(177, 26, 'http://127.0.0.1:3000/img/product/sm/2F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/14107610654728.jpg'),
(178, 26, 'http://127.0.0.1:3000/img/product/sm/2F/1/552f2bf02d1ff.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/552f2bf02d1ff.jpg'),
(179, 26, 'http://127.0.0.1:3000/img/product/sm/2F/1/552f77f938c45.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/552f77f938c45.jpg'),
(180, 26, 'http://127.0.0.1:3000/img/product/sm/2F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/5604b30ac5f7d.jpg'),
(181, 26, 'http://127.0.0.1:3000/img/product/sm/2F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(182, 26, 'http://127.0.0.1:3000/img/product/sm/2F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(183, 27, 'http://127.0.0.1:3000/img/product/sm/2F/1/FpWltpBLmViTT78QT8xprHdNLDMC.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/FpWltpBLmViTT78QT8xprHdNLDMC.jpg'),
(184, 27, 'http://127.0.0.1:3000/img/product/sm/2F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/14107610654728.jpg'),
(185, 27, 'http://127.0.0.1:3000/img/product/sm/2F/1/552f2bf02d1ff.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/552f2bf02d1ff.jpg'),
(186, 27, 'http://127.0.0.1:3000/img/product/sm/2F/1/552f77f938c45.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/552f77f938c45.jpg'),
(187, 27, 'http://127.0.0.1:3000/img/product/sm/2F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/5604b30ac5f7d.jpg'),
(188, 27, 'http://127.0.0.1:3000/img/product/sm/2F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(189, 27, 'http://127.0.0.1:3000/img/product/sm/2F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/2F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(190, 28, 'http://127.0.0.1:3000/img/product/sm/2F/2/150535718553807212647029247696.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/150535718553807212647029247696.jpg'),
(191, 28, 'http://127.0.0.1:3000/img/product/sm/2F/2/150842479370409276086876883869.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/150842479370409276086876883869.jpg'),
(192, 28, 'http://127.0.0.1:3000/img/product/sm/2F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/1508424833357046127682544933757.jpg'),
(193, 28, 'http://127.0.0.1:3000/img/product/sm/2F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/1508424956580014973516592110703.jpg'),
(194, 28, 'http://127.0.0.1:3000/img/product/sm/2F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/15324000459305.jpg'),
(195, 28, 'http://127.0.0.1:3000/img/product/sm/2F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/5577c8f5a5596.jpg'),
(196, 28, 'http://127.0.0.1:3000/img/product/sm/2F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(197, 29, 'http://127.0.0.1:3000/img/product/sm/2F/2/150535718553807212647029247696.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/150535718553807212647029247696.jpg'),
(198, 29, 'http://127.0.0.1:3000/img/product/sm/2F/2/150842479370409276086876883869.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/150842479370409276086876883869.jpg'),
(199, 29, 'http://127.0.0.1:3000/img/product/sm/2F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/1508424833357046127682544933757.jpg'),
(200, 29, 'http://127.0.0.1:3000/img/product/sm/2F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/1508424956580014973516592110703.jpg'),
(201, 29, 'http://127.0.0.1:3000/img/product/sm/2F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/15324000459305.jpg'),
(202, 29, 'http://127.0.0.1:3000/img/product/sm/2F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/5577c8f5a5596.jpg'),
(203, 29, 'http://127.0.0.1:3000/img/product/sm/2F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(204, 30, 'http://127.0.0.1:3000/img/product/sm/2F/2/150535718553807212647029247696.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/150535718553807212647029247696.jpg'),
(205, 30, 'http://127.0.0.1:3000/img/product/sm/2F/2/150842479370409276086876883869.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/150842479370409276086876883869.jpg'),
(206, 30, 'http://127.0.0.1:3000/img/product/sm/2F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/1508424833357046127682544933757.jpg'),
(207, 30, 'http://127.0.0.1:3000/img/product/sm/2F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/1508424956580014973516592110703.jpg'),
(208, 30, 'http://127.0.0.1:3000/img/product/sm/2F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/15324000459305.jpg'),
(209, 30, 'http://127.0.0.1:3000/img/product/sm/2F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/5577c8f5a5596.jpg'),
(210, 30, 'http://127.0.0.1:3000/img/product/sm/2F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/2F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(211, 31, 'http://127.0.0.1:3000/img/product/sm/2F/3/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/1504686236912036578738978690484.jpg'),
(212, 31, 'http://127.0.0.1:3000/img/product/sm/2F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/552f7ac7df666.jpg'),
(213, 31, 'http://127.0.0.1:3000/img/product/sm/2F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/552f7f07dc881.jpg'),
(214, 31, 'http://127.0.0.1:3000/img/product/sm/2F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/552f83b1940ea.jpg'),
(215, 31, 'http://127.0.0.1:3000/img/product/sm/2F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/552f88726118b.jpg'),
(216, 31, 'http://127.0.0.1:3000/img/product/sm/2F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/5735a68a0986b.jpg'),
(217, 31, 'http://127.0.0.1:3000/img/product/sm/2F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/576268351bcd7.jpg'),
(218, 32, 'http://127.0.0.1:3000/img/product/sm/2F/3/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/1504686236912036578738978690484.jpg'),
(219, 32, 'http://127.0.0.1:3000/img/product/sm/2F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/552f7ac7df666.jpg'),
(220, 32, 'http://127.0.0.1:3000/img/product/sm/2F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/552f7f07dc881.jpg'),
(221, 32, 'http://127.0.0.1:3000/img/product/sm/2F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/552f83b1940ea.jpg'),
(222, 32, 'http://127.0.0.1:3000/img/product/sm/2F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/552f88726118b.jpg'),
(223, 32, 'http://127.0.0.1:3000/img/product/sm/2F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/5735a68a0986b.jpg'),
(224, 32, 'http://127.0.0.1:3000/img/product/sm/2F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/576268351bcd7.jpg'),
(225, 33, 'http://127.0.0.1:3000/img/product/sm/2F/3/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/1504686236912036578738978690484.jpg'),
(226, 33, 'http://127.0.0.1:3000/img/product/sm/2F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/552f7ac7df666.jpg'),
(227, 33, 'http://127.0.0.1:3000/img/product/sm/2F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/552f7f07dc881.jpg'),
(228, 33, 'http://127.0.0.1:3000/img/product/sm/2F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/552f83b1940ea.jpg'),
(229, 33, 'http://127.0.0.1:3000/img/product/sm/2F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/552f88726118b.jpg'),
(230, 33, 'http://127.0.0.1:3000/img/product/sm/2F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/5735a68a0986b.jpg'),
(231, 33, 'http://127.0.0.1:3000/img/product/sm/2F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/2F/3/576268351bcd7.jpg'),
(232, 34, 'http://127.0.0.1:3000/img/product/sm/2F/4/Fm2coJd2XGICzYfKK4wjHrFFjbiT.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/Fm2coJd2XGICzYfKK4wjHrFFjbiT.jpg'),
(233, 34, 'http://127.0.0.1:3000/img/product/sm/2F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/1419561768.jpg'),
(234, 34, 'http://127.0.0.1:3000/img/product/sm/2F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/1504686236912036578738978690484.jpg'),
(235, 34, 'http://127.0.0.1:3000/img/product/sm/2F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/552f800edb21c.jpg'),
(236, 34, 'http://127.0.0.1:3000/img/product/sm/2F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/552f8034d06f2.jpg'),
(237, 34, 'http://127.0.0.1:3000/img/product/sm/2F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/5735a67edb8da.jpg'),
(238, 34, 'http://127.0.0.1:3000/img/product/sm/2F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(239, 35, 'http://127.0.0.1:3000/img/product/sm/2F/4/Fm2coJd2XGICzYfKK4wjHrFFjbiT.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/Fm2coJd2XGICzYfKK4wjHrFFjbiT.jpg'),
(240, 35, 'http://127.0.0.1:3000/img/product/sm/2F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/1419561768.jpg'),
(241, 35, 'http://127.0.0.1:3000/img/product/sm/2F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/1504686236912036578738978690484.jpg'),
(242, 35, 'http://127.0.0.1:3000/img/product/sm/2F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/552f800edb21c.jpg'),
(243, 35, 'http://127.0.0.1:3000/img/product/sm/2F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/552f8034d06f2.jpg'),
(244, 35, 'http://127.0.0.1:3000/img/product/sm/2F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/5735a67edb8da.jpg'),
(245, 35, 'http://127.0.0.1:3000/img/product/sm/2F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(246, 36, 'http://127.0.0.1:3000/img/product/sm/2F/4/Fm2coJd2XGICzYfKK4wjHrFFjbiT.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/Fm2coJd2XGICzYfKK4wjHrFFjbiT.jpg'),
(247, 36, 'http://127.0.0.1:3000/img/product/sm/2F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/1419561768.jpg'),
(248, 36, 'http://127.0.0.1:3000/img/product/sm/2F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/1504686236912036578738978690484.jpg'),
(249, 36, 'http://127.0.0.1:3000/img/product/sm/2F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/552f800edb21c.jpg'),
(250, 36, 'http://127.0.0.1:3000/img/product/sm/2F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/552f8034d06f2.jpg'),
(251, 36, 'http://127.0.0.1:3000/img/product/sm/2F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/5735a67edb8da.jpg'),
(252, 36, 'http://127.0.0.1:3000/img/product/sm/2F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/2F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(253, 37, 'http://127.0.0.1:3000/img/product/sm/2F/5/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/14105132434818.jpg'),
(254, 37, 'http://127.0.0.1:3000/img/product/sm/2F/5/15318155967097.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/15318155967097.jpg'),
(255, 37, 'http://127.0.0.1:3000/img/product/sm/2F/5/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/5549cf9faf3a7.jpg'),
(256, 37, 'http://127.0.0.1:3000/img/product/sm/2F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(257, 37, 'http://127.0.0.1:3000/img/product/sm/2F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(258, 37, 'http://127.0.0.1:3000/img/product/sm/2F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(259, 37, 'http://127.0.0.1:3000/img/product/sm/2F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(260, 38, 'http://127.0.0.1:3000/img/product/sm/2F/5/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/14105132434818.jpg'),
(261, 38, 'http://127.0.0.1:3000/img/product/sm/2F/5/15318155967097.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/15318155967097.jpg'),
(262, 38, 'http://127.0.0.1:3000/img/product/sm/2F/5/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/5549cf9faf3a7.jpg'),
(263, 38, 'http://127.0.0.1:3000/img/product/sm/2F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(264, 38, 'http://127.0.0.1:3000/img/product/sm/2F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(265, 38, 'http://127.0.0.1:3000/img/product/sm/2F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(266, 38, 'http://127.0.0.1:3000/img/product/sm/2F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(267, 39, 'http://127.0.0.1:3000/img/product/sm/2F/5/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/14105132434818.jpg'),
(268, 39, 'http://127.0.0.1:3000/img/product/sm/2F/5/15318155967097.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/15318155967097.jpg'),
(269, 39, 'http://127.0.0.1:3000/img/product/sm/2F/5/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/5549cf9faf3a7.jpg'),
(270, 39, 'http://127.0.0.1:3000/img/product/sm/2F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(271, 39, 'http://127.0.0.1:3000/img/product/sm/2F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(272, 39, 'http://127.0.0.1:3000/img/product/sm/2F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(273, 39, 'http://127.0.0.1:3000/img/product/sm/2F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/2F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(274, 40, 'http://127.0.0.1:3000/img/product/sm/2F/6/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/1419561755.jpg'),
(275, 40, 'http://127.0.0.1:3000/img/product/sm/2F/6/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/1419561768.jpg'),
(276, 40, 'http://127.0.0.1:3000/img/product/sm/2F/6/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/15221309025905.jpg'),
(277, 40, 'http://127.0.0.1:3000/img/product/sm/2F/6/15259390915266.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/15259390915266.jpg'),
(278, 40, 'http://127.0.0.1:3000/img/product/sm/2F/6/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/552f88726118b.jpg'),
(279, 40, 'http://127.0.0.1:3000/img/product/sm/2F/6/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/55d3f13e71ae9.jpg'),
(280, 40, 'http://127.0.0.1:3000/img/product/sm/2F/6/580587c702998.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/580587c702998.jpg'),
(281, 41, 'http://127.0.0.1:3000/img/product/sm/2F/6/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/1419561755.jpg'),
(282, 41, 'http://127.0.0.1:3000/img/product/sm/2F/6/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/1419561768.jpg'),
(283, 41, 'http://127.0.0.1:3000/img/product/sm/2F/6/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/15221309025905.jpg'),
(284, 41, 'http://127.0.0.1:3000/img/product/sm/2F/6/15259390915266.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/15259390915266.jpg'),
(285, 41, 'http://127.0.0.1:3000/img/product/sm/2F/6/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/552f88726118b.jpg'),
(286, 41, 'http://127.0.0.1:3000/img/product/sm/2F/6/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/55d3f13e71ae9.jpg'),
(287, 41, 'http://127.0.0.1:3000/img/product/sm/2F/6/580587c702998.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/580587c702998.jpg'),
(288, 42, 'http://127.0.0.1:3000/img/product/sm/2F/6/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/1419561755.jpg'),
(289, 42, 'http://127.0.0.1:3000/img/product/sm/2F/6/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/1419561768.jpg'),
(290, 42, 'http://127.0.0.1:3000/img/product/sm/2F/6/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/15221309025905.jpg'),
(291, 42, 'http://127.0.0.1:3000/img/product/sm/2F/6/15259390915266.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/15259390915266.jpg'),
(292, 42, 'http://127.0.0.1:3000/img/product/sm/2F/6/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/552f88726118b.jpg'),
(293, 42, 'http://127.0.0.1:3000/img/product/sm/2F/6/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/55d3f13e71ae9.jpg'),
(294, 42, 'http://127.0.0.1:3000/img/product/sm/2F/6/580587c702998.jpg', 'http://127.0.0.1:3000/img/product/md/2F/6/580587c702998.jpg'),
(295, 43, 'http://127.0.0.1:3000/img/product/sm/3F/1/14491343424708.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/14491343424708.jpg'),
(296, 43, 'http://127.0.0.1:3000/img/product/sm/3F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/14107610654728.jpg'),
(297, 43, 'http://127.0.0.1:3000/img/product/sm/3F/1/552f2bf02d1ff.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/552f2bf02d1ff.jpg'),
(298, 43, 'http://127.0.0.1:3000/img/product/sm/3F/1/552f77f938c45.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/552f77f938c45.jpg'),
(299, 43, 'http://127.0.0.1:3000/img/product/sm/3F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/5604b30ac5f7d.jpg'),
(300, 43, 'http://127.0.0.1:3000/img/product/sm/3F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(301, 43, 'http://127.0.0.1:3000/img/product/sm/3F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(302, 44, 'http://127.0.0.1:3000/img/product/sm/3F/1/14491343424708.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/14491343424708.jpg'),
(303, 44, 'http://127.0.0.1:3000/img/product/sm/3F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/14107610654728.jpg'),
(304, 44, 'http://127.0.0.1:3000/img/product/sm/3F/1/552f2bf02d1ff.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/552f2bf02d1ff.jpg'),
(305, 44, 'http://127.0.0.1:3000/img/product/sm/3F/1/552f77f938c45.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/552f77f938c45.jpg'),
(306, 44, 'http://127.0.0.1:3000/img/product/sm/3F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/5604b30ac5f7d.jpg'),
(307, 44, 'http://127.0.0.1:3000/img/product/sm/3F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(308, 44, 'http://127.0.0.1:3000/img/product/sm/3F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(309, 45, 'http://127.0.0.1:3000/img/product/sm/3F/1/14491343424708.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/14491343424708.jpg'),
(310, 45, 'http://127.0.0.1:3000/img/product/sm/3F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/14107610654728.jpg'),
(311, 45, 'http://127.0.0.1:3000/img/product/sm/3F/1/552f2bf02d1ff.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/552f2bf02d1ff.jpg'),
(312, 45, 'http://127.0.0.1:3000/img/product/sm/3F/1/552f77f938c45.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/552f77f938c45.jpg'),
(313, 45, 'http://127.0.0.1:3000/img/product/sm/3F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/5604b30ac5f7d.jpg'),
(314, 45, 'http://127.0.0.1:3000/img/product/sm/3F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(315, 45, 'http://127.0.0.1:3000/img/product/sm/3F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/3F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(316, 46, 'http://127.0.0.1:3000/img/product/sm/3F/2/151358585488407518508896561411.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/151358585488407518508896561411.jpg'),
(317, 46, 'http://127.0.0.1:3000/img/product/sm/3F/2/150535718553807212647029247696.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/150535718553807212647029247696.jpg'),
(318, 46, 'http://127.0.0.1:3000/img/product/sm/3F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/1508424833357046127682544933757.jpg'),
(319, 46, 'http://127.0.0.1:3000/img/product/sm/3F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/1508424956580014973516592110703.jpg'),
(320, 46, 'http://127.0.0.1:3000/img/product/sm/3F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/15324000459305.jpg'),
(321, 46, 'http://127.0.0.1:3000/img/product/sm/3F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/5577c8f5a5596.jpg'),
(322, 46, 'http://127.0.0.1:3000/img/product/sm/3F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(323, 47, 'http://127.0.0.1:3000/img/product/sm/3F/2/151358585488407518508896561411.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/151358585488407518508896561411.jpg'),
(324, 47, 'http://127.0.0.1:3000/img/product/sm/3F/2/150535718553807212647029247696.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/150535718553807212647029247696.jpg'),
(325, 47, 'http://127.0.0.1:3000/img/product/sm/3F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/1508424833357046127682544933757.jpg'),
(326, 47, 'http://127.0.0.1:3000/img/product/sm/3F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/1508424956580014973516592110703.jpg'),
(327, 47, 'http://127.0.0.1:3000/img/product/sm/3F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/15324000459305.jpg'),
(328, 47, 'http://127.0.0.1:3000/img/product/sm/3F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/5577c8f5a5596.jpg'),
(329, 47, 'http://127.0.0.1:3000/img/product/sm/3F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(330, 48, 'http://127.0.0.1:3000/img/product/sm/3F/2/151358585488407518508896561411.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/151358585488407518508896561411.jpg'),
(331, 48, 'http://127.0.0.1:3000/img/product/sm/3F/2/150535718553807212647029247696.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/150535718553807212647029247696.jpg'),
(332, 48, 'http://127.0.0.1:3000/img/product/sm/3F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/1508424833357046127682544933757.jpg'),
(333, 48, 'http://127.0.0.1:3000/img/product/sm/3F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/1508424956580014973516592110703.jpg'),
(334, 48, 'http://127.0.0.1:3000/img/product/sm/3F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/15324000459305.jpg'),
(335, 48, 'http://127.0.0.1:3000/img/product/sm/3F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/5577c8f5a5596.jpg'),
(336, 48, 'http://127.0.0.1:3000/img/product/sm/3F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/3F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(337, 49, 'http://127.0.0.1:3000/img/product/sm/3F/3/14484473165660.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/14484473165660.jpg'),
(338, 49, 'http://127.0.0.1:3000/img/product/sm/3F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/552f7ac7df666.jpg'),
(339, 49, 'http://127.0.0.1:3000/img/product/sm/3F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/552f7f07dc881.jpg'),
(340, 49, 'http://127.0.0.1:3000/img/product/sm/3F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/552f83b1940ea.jpg'),
(341, 49, 'http://127.0.0.1:3000/img/product/sm/3F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/552f88726118b.jpg');
INSERT INTO `qy_product_pic` (`pid`, `product_id`, `sm`, `md`) VALUES
(342, 49, 'http://127.0.0.1:3000/img/product/sm/3F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/5735a68a0986b.jpg'),
(343, 49, 'http://127.0.0.1:3000/img/product/sm/3F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/576268351bcd7.jpg'),
(344, 50, 'http://127.0.0.1:3000/img/product/sm/3F/3/14484473165660.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/14484473165660.jpg'),
(345, 50, 'http://127.0.0.1:3000/img/product/sm/3F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/552f7ac7df666.jpg'),
(346, 50, 'http://127.0.0.1:3000/img/product/sm/3F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/552f7f07dc881.jpg'),
(347, 50, 'http://127.0.0.1:3000/img/product/sm/3F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/552f83b1940ea.jpg'),
(348, 50, 'http://127.0.0.1:3000/img/product/sm/3F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/552f88726118b.jpg'),
(349, 50, 'http://127.0.0.1:3000/img/product/sm/3F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/5735a68a0986b.jpg'),
(350, 50, 'http://127.0.0.1:3000/img/product/sm/3F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/576268351bcd7.jpg'),
(351, 51, 'http://127.0.0.1:3000/img/product/sm/3F/3/14484473165660.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/14484473165660.jpg'),
(352, 51, 'http://127.0.0.1:3000/img/product/sm/3F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/552f7ac7df666.jpg'),
(353, 51, 'http://127.0.0.1:3000/img/product/sm/3F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/552f7f07dc881.jpg'),
(354, 51, 'http://127.0.0.1:3000/img/product/sm/3F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/552f83b1940ea.jpg'),
(355, 51, 'http://127.0.0.1:3000/img/product/sm/3F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/552f88726118b.jpg'),
(356, 51, 'http://127.0.0.1:3000/img/product/sm/3F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/5735a68a0986b.jpg'),
(357, 51, 'http://127.0.0.1:3000/img/product/sm/3F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/3F/3/576268351bcd7.jpg'),
(358, 52, 'http://127.0.0.1:3000/img/product/sm/3F/4/14422178162559.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/14422178162559.jpg'),
(359, 52, 'http://127.0.0.1:3000/img/product/sm/3F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/1419561768.jpg'),
(360, 52, 'http://127.0.0.1:3000/img/product/sm/3F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/1504686236912036578738978690484.jpg'),
(361, 52, 'http://127.0.0.1:3000/img/product/sm/3F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/552f800edb21c.jpg'),
(362, 52, 'http://127.0.0.1:3000/img/product/sm/3F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/552f8034d06f2.jpg'),
(363, 52, 'http://127.0.0.1:3000/img/product/sm/3F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/5735a67edb8da.jpg'),
(364, 52, 'http://127.0.0.1:3000/img/product/sm/3F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(365, 53, 'http://127.0.0.1:3000/img/product/sm/3F/4/14422178162559.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/14422178162559.jpg'),
(366, 53, 'http://127.0.0.1:3000/img/product/sm/3F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/1419561768.jpg'),
(367, 53, 'http://127.0.0.1:3000/img/product/sm/3F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/1504686236912036578738978690484.jpg'),
(368, 53, 'http://127.0.0.1:3000/img/product/sm/3F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/552f800edb21c.jpg'),
(369, 53, 'http://127.0.0.1:3000/img/product/sm/3F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/552f8034d06f2.jpg'),
(370, 53, 'http://127.0.0.1:3000/img/product/sm/3F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/5735a67edb8da.jpg'),
(371, 53, 'http://127.0.0.1:3000/img/product/sm/3F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(372, 54, 'http://127.0.0.1:3000/img/product/sm/3F/4/14422178162559.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/14422178162559.jpg'),
(373, 54, 'http://127.0.0.1:3000/img/product/sm/3F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/1419561768.jpg'),
(374, 54, 'http://127.0.0.1:3000/img/product/sm/3F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/1504686236912036578738978690484.jpg'),
(375, 54, 'http://127.0.0.1:3000/img/product/sm/3F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/552f800edb21c.jpg'),
(376, 54, 'http://127.0.0.1:3000/img/product/sm/3F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/552f8034d06f2.jpg'),
(377, 54, 'http://127.0.0.1:3000/img/product/sm/3F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/5735a67edb8da.jpg'),
(378, 54, 'http://127.0.0.1:3000/img/product/sm/3F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/3F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(379, 55, 'http://127.0.0.1:3000/img/product/sm/3F/5/14410968959037.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/14410968959037.jpg'),
(380, 55, 'http://127.0.0.1:3000/img/product/sm/3F/5/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/14105132434818.jpg'),
(381, 55, 'http://127.0.0.1:3000/img/product/sm/3F/5/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/5549cf9faf3a7.jpg'),
(382, 55, 'http://127.0.0.1:3000/img/product/sm/3F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(383, 55, 'http://127.0.0.1:3000/img/product/sm/3F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(384, 55, 'http://127.0.0.1:3000/img/product/sm/3F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(385, 55, 'http://127.0.0.1:3000/img/product/sm/3F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(386, 56, 'http://127.0.0.1:3000/img/product/sm/3F/5/14410968959037.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/14410968959037.jpg'),
(387, 56, 'http://127.0.0.1:3000/img/product/sm/3F/5/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/14105132434818.jpg'),
(388, 56, 'http://127.0.0.1:3000/img/product/sm/3F/5/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/5549cf9faf3a7.jpg'),
(389, 56, 'http://127.0.0.1:3000/img/product/sm/3F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(390, 56, 'http://127.0.0.1:3000/img/product/sm/3F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(391, 56, 'http://127.0.0.1:3000/img/product/sm/3F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(392, 56, 'http://127.0.0.1:3000/img/product/sm/3F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(393, 57, 'http://127.0.0.1:3000/img/product/sm/3F/5/14410968959037.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/14410968959037.jpg'),
(394, 57, 'http://127.0.0.1:3000/img/product/sm/3F/5/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/14105132434818.jpg'),
(395, 57, 'http://127.0.0.1:3000/img/product/sm/3F/5/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/5549cf9faf3a7.jpg'),
(396, 57, 'http://127.0.0.1:3000/img/product/sm/3F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(397, 57, 'http://127.0.0.1:3000/img/product/sm/3F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(398, 57, 'http://127.0.0.1:3000/img/product/sm/3F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(399, 57, 'http://127.0.0.1:3000/img/product/sm/3F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/3F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(400, 58, 'http://127.0.0.1:3000/img/product/sm/3F/6/15259390915266.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/15259390915266.jpg'),
(401, 58, 'http://127.0.0.1:3000/img/product/sm/3F/6/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/1419561755.jpg'),
(402, 58, 'http://127.0.0.1:3000/img/product/sm/3F/6//1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/1419561768.jpg'),
(403, 58, 'http://127.0.0.1:3000/img/product/sm/3F/6/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/15221309025905.jpg'),
(404, 58, 'http://127.0.0.1:3000/img/product/sm/3F/6/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/552f88726118b.jpg'),
(405, 58, 'http://127.0.0.1:3000/img/product/sm/3F/6/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/55d3f13e71ae9.jpg'),
(406, 58, 'http://127.0.0.1:3000/img/product/sm/3F/6/580587c702998.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/580587c702998.jpg'),
(407, 59, 'http://127.0.0.1:3000/img/product/sm/3F/6/15259390915266.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/15259390915266.jpg'),
(408, 59, 'http://127.0.0.1:3000/img/product/sm/3F/6/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/1419561755.jpg'),
(409, 59, 'http://127.0.0.1:3000/img/product/sm/3F/6//1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/1419561768.jpg'),
(410, 59, 'http://127.0.0.1:3000/img/product/sm/3F/6/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/15221309025905.jpg'),
(411, 59, 'http://127.0.0.1:3000/img/product/sm/3F/6/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/552f88726118b.jpg'),
(412, 59, 'http://127.0.0.1:3000/img/product/sm/3F/6/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/55d3f13e71ae9.jpg'),
(413, 59, 'http://127.0.0.1:3000/img/product/sm/3F/6/580587c702998.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/580587c702998.jpg'),
(414, 59, 'http://127.0.0.1:3000/img/product/sm/3F/6/15259390915266.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/15259390915266.jpg'),
(415, 60, 'http://127.0.0.1:3000/img/product/sm/3F/6/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/1419561755.jpg'),
(416, 60, 'http://127.0.0.1:3000/img/product/sm/3F/6//1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/1419561768.jpg'),
(417, 60, 'http://127.0.0.1:3000/img/product/sm/3F/6/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/15221309025905.jpg'),
(418, 60, 'http://127.0.0.1:3000/img/product/sm/3F/6/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/552f88726118b.jpg'),
(419, 60, 'http://127.0.0.1:3000/img/product/sm/3F/6/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/55d3f13e71ae9.jpg'),
(420, 60, 'http://127.0.0.1:3000/img/product/sm/3F/6/580587c702998.jpg', 'http://127.0.0.1:3000/img/product/md/3F/6/580587c702998.jpg'),
(421, 61, 'http://127.0.0.1:3000/img/product/sm/4F/1/15312949094364.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/15312949094364.jpg'),
(422, 61, 'http://127.0.0.1:3000/img/product/sm/4F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/14107610654728.jpg'),
(423, 61, 'http://127.0.0.1:3000/img/product/sm/4F/1/14491343424708.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/14491343424708.jpg'),
(424, 61, 'http://127.0.0.1:3000/img/product/sm/4F/1/552f77f938c45.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/552f77f938c45.jpg'),
(425, 61, 'http://127.0.0.1:3000/img/product/sm/4F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/5604b30ac5f7d.jpg'),
(426, 61, 'http://127.0.0.1:3000/img/product/sm/4F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(427, 61, 'http://127.0.0.1:3000/img/product/sm/4F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(428, 62, 'http://127.0.0.1:3000/img/product/sm/4F/1/15312949094364.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/15312949094364.jpg'),
(429, 62, 'http://127.0.0.1:3000/img/product/sm/4F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/14107610654728.jpg'),
(430, 62, 'http://127.0.0.1:3000/img/product/sm/4F/1/14491343424708.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/14491343424708.jpg'),
(431, 62, 'http://127.0.0.1:3000/img/product/sm/4F/1/552f77f938c45.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/552f77f938c45.jpg'),
(432, 62, 'http://127.0.0.1:3000/img/product/sm/4F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/5604b30ac5f7d.jpg'),
(433, 62, 'http://127.0.0.1:3000/img/product/sm/4F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(434, 62, 'http://127.0.0.1:3000/img/product/sm/4F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(435, 63, 'http://127.0.0.1:3000/img/product/sm/4F/1/15312949094364.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/15312949094364.jpg'),
(436, 63, 'http://127.0.0.1:3000/img/product/sm/4F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/14107610654728.jpg'),
(437, 63, 'http://127.0.0.1:3000/img/product/sm/4F/1/14491343424708.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/14491343424708.jpg'),
(438, 63, 'http://127.0.0.1:3000/img/product/sm/4F/1/552f77f938c45.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/552f77f938c45.jpg'),
(439, 63, 'http://127.0.0.1:3000/img/product/sm/4F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/5604b30ac5f7d.jpg'),
(440, 63, 'http://127.0.0.1:3000/img/product/sm/4F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(441, 63, 'http://127.0.0.1:3000/img/product/sm/4F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/4F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(442, 64, 'http://127.0.0.1:3000/img/product/sm/4F/2/14954439942646.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/14954439942646.jpg'),
(443, 64, 'http://127.0.0.1:3000/img/product/sm/4F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/1508424833357046127682544933757.jpg'),
(444, 64, 'http://127.0.0.1:3000/img/product/sm/4F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/1508424956580014973516592110703.jpg'),
(445, 64, 'http://127.0.0.1:3000/img/product/sm/4F/2/151358585488407518508896561411.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/151358585488407518508896561411.jpg'),
(446, 64, 'http://127.0.0.1:3000/img/product/sm/4F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/15324000459305.jpg'),
(447, 64, 'http://127.0.0.1:3000/img/product/sm/4F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/5577c8f5a5596.jpg'),
(448, 64, 'http://127.0.0.1:3000/img/product/sm/4F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(449, 65, 'http://127.0.0.1:3000/img/product/sm/4F/2/14954439942646.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/14954439942646.jpg'),
(450, 65, 'http://127.0.0.1:3000/img/product/sm/4F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/1508424833357046127682544933757.jpg'),
(451, 65, 'http://127.0.0.1:3000/img/product/sm/4F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/1508424956580014973516592110703.jpg'),
(452, 65, 'http://127.0.0.1:3000/img/product/sm/4F/2/151358585488407518508896561411.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/151358585488407518508896561411.jpg'),
(453, 65, 'http://127.0.0.1:3000/img/product/sm/4F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/15324000459305.jpg'),
(454, 65, 'http://127.0.0.1:3000/img/product/sm/4F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/5577c8f5a5596.jpg'),
(455, 65, 'http://127.0.0.1:3000/img/product/sm/4F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(456, 66, 'http://127.0.0.1:3000/img/product/sm/4F/2/14954439942646.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/14954439942646.jpg'),
(457, 66, 'http://127.0.0.1:3000/img/product/sm/4F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/1508424833357046127682544933757.jpg'),
(458, 66, 'http://127.0.0.1:3000/img/product/sm/4F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/1508424956580014973516592110703.jpg'),
(459, 66, 'http://127.0.0.1:3000/img/product/sm/4F/2/151358585488407518508896561411.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/151358585488407518508896561411.jpg'),
(460, 66, 'http://127.0.0.1:3000/img/product/sm/4F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/15324000459305.jpg'),
(461, 66, 'http://127.0.0.1:3000/img/product/sm/4F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/5577c8f5a5596.jpg'),
(462, 66, 'http://127.0.0.1:3000/img/product/sm/4F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/4F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(463, 67, 'http://127.0.0.1:3000/img/product/sm/4F/3/FvRuA1ApPY8SCmy5DxieAxq9hDZg.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/FvRuA1ApPY8SCmy5DxieAxq9hDZg.jpg'),
(464, 67, 'http://127.0.0.1:3000/img/product/sm/4F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/552f7ac7df666.jpg'),
(465, 67, 'http://127.0.0.1:3000/img/product/sm/4F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/552f7f07dc881.jpg'),
(466, 67, 'http://127.0.0.1:3000/img/product/sm/4F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/552f83b1940ea.jpg'),
(467, 67, 'http://127.0.0.1:3000/img/product/sm/4F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/552f88726118b.jpg'),
(468, 67, 'http://127.0.0.1:3000/img/product/sm/4F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/5735a68a0986b.jpg'),
(469, 67, 'http://127.0.0.1:3000/img/product/sm/4F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/576268351bcd7.jpg'),
(470, 68, 'http://127.0.0.1:3000/img/product/sm/4F/3/FvRuA1ApPY8SCmy5DxieAxq9hDZg.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/FvRuA1ApPY8SCmy5DxieAxq9hDZg.jpg'),
(471, 68, 'http://127.0.0.1:3000/img/product/sm/4F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/552f7ac7df666.jpg'),
(472, 68, 'http://127.0.0.1:3000/img/product/sm/4F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/552f7f07dc881.jpg'),
(473, 68, 'http://127.0.0.1:3000/img/product/sm/4F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/552f83b1940ea.jpg'),
(474, 68, 'http://127.0.0.1:3000/img/product/sm/4F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/552f88726118b.jpg'),
(475, 68, 'http://127.0.0.1:3000/img/product/sm/4F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/5735a68a0986b.jpg'),
(476, 68, 'http://127.0.0.1:3000/img/product/sm/4F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/576268351bcd7.jpg'),
(477, 69, 'http://127.0.0.1:3000/img/product/sm/4F/3/FvRuA1ApPY8SCmy5DxieAxq9hDZg.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/FvRuA1ApPY8SCmy5DxieAxq9hDZg.jpg'),
(478, 69, 'http://127.0.0.1:3000/img/product/sm/4F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/552f7ac7df666.jpg'),
(479, 69, 'http://127.0.0.1:3000/img/product/sm/4F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/552f7f07dc881.jpg'),
(480, 69, 'http://127.0.0.1:3000/img/product/sm/4F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/552f83b1940ea.jpg'),
(481, 69, 'http://127.0.0.1:3000/img/product/sm/4F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/552f88726118b.jpg'),
(482, 69, 'http://127.0.0.1:3000/img/product/sm/4F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/5735a68a0986b.jpg'),
(483, 69, 'http://127.0.0.1:3000/img/product/sm/4F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/4F/3/576268351bcd7.jpg'),
(484, 70, 'http://127.0.0.1:3000/img/product/sm/4F/4/14925686681041.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/14925686681041.jpg'),
(485, 70, 'http://127.0.0.1:3000/img/product/sm/4F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/1419561768.jpg'),
(486, 70, 'http://127.0.0.1:3000/img/product/sm/4F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/1504686236912036578738978690484.jpg'),
(487, 70, 'http://127.0.0.1:3000/img/product/sm/4F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/552f800edb21c.jpg'),
(488, 70, 'http://127.0.0.1:3000/img/product/sm/4F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/552f8034d06f2.jpg'),
(489, 70, 'http://127.0.0.1:3000/img/product/sm/4F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/5735a67edb8da.jpg'),
(490, 70, 'http://127.0.0.1:3000/img/product/sm/4F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(491, 71, 'http://127.0.0.1:3000/img/product/sm/4F/4/14925686681041.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/14925686681041.jpg'),
(492, 71, 'http://127.0.0.1:3000/img/product/sm/4F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/1419561768.jpg'),
(493, 71, 'http://127.0.0.1:3000/img/product/sm/4F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/1504686236912036578738978690484.jpg'),
(494, 71, 'http://127.0.0.1:3000/img/product/sm/4F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/552f800edb21c.jpg'),
(495, 71, 'http://127.0.0.1:3000/img/product/sm/4F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/552f8034d06f2.jpg'),
(496, 71, 'http://127.0.0.1:3000/img/product/sm/4F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/5735a67edb8da.jpg'),
(497, 71, 'http://127.0.0.1:3000/img/product/sm/4F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(498, 72, 'http://127.0.0.1:3000/img/product/sm/4F/4/14925686681041.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/14925686681041.jpg'),
(499, 72, 'http://127.0.0.1:3000/img/product/sm/4F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/1419561768.jpg'),
(500, 72, 'http://127.0.0.1:3000/img/product/sm/4F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/1504686236912036578738978690484.jpg'),
(501, 72, 'http://127.0.0.1:3000/img/product/sm/4F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/552f800edb21c.jpg'),
(502, 72, 'http://127.0.0.1:3000/img/product/sm/4F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/552f8034d06f2.jpg'),
(503, 72, 'http://127.0.0.1:3000/img/product/sm/4F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/5735a67edb8da.jpg'),
(504, 72, 'http://127.0.0.1:3000/img/product/sm/4F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/4F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(505, 73, 'http://127.0.0.1:3000/img/product/sm/4F/5/14652257921193.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/14652257921193.jpg'),
(506, 73, 'http://127.0.0.1:3000/img/product/sm/4F/5/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/14105132434818.jpg'),
(507, 73, 'http://127.0.0.1:3000/img/product/sm/4F/5/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/5549cf9faf3a7.jpg'),
(508, 73, 'http://127.0.0.1:3000/img/product/sm/4F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(509, 73, 'http://127.0.0.1:3000/img/product/sm/4F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(510, 73, 'http://127.0.0.1:3000/img/product/sm/4F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(511, 73, 'http://127.0.0.1:3000/img/product/sm/4F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(512, 74, 'http://127.0.0.1:3000/img/product/sm/4F/5/14652257921193.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/14652257921193.jpg'),
(513, 74, 'http://127.0.0.1:3000/img/product/sm/4F/5/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/14105132434818.jpg'),
(514, 74, 'http://127.0.0.1:3000/img/product/sm/4F/5/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/5549cf9faf3a7.jpg'),
(515, 74, 'http://127.0.0.1:3000/img/product/sm/4F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(516, 74, 'http://127.0.0.1:3000/img/product/sm/4F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(517, 74, 'http://127.0.0.1:3000/img/product/sm/4F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(518, 74, 'http://127.0.0.1:3000/img/product/sm/4F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(519, 75, 'http://127.0.0.1:3000/img/product/sm/4F/5/14652257921193.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/14652257921193.jpg'),
(520, 75, 'http://127.0.0.1:3000/img/product/sm/4F/5/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/14105132434818.jpg'),
(521, 75, 'http://127.0.0.1:3000/img/product/sm/4F/5/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/5549cf9faf3a7.jpg'),
(522, 75, 'http://127.0.0.1:3000/img/product/sm/4F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(523, 75, 'http://127.0.0.1:3000/img/product/sm/4F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(524, 75, 'http://127.0.0.1:3000/img/product/sm/4F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(525, 75, 'http://127.0.0.1:3000/img/product/sm/4F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/4F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(526, 76, 'http://127.0.0.1:3000/img/product/sm/4F/6/14467036423512.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/14467036423512.jpg'),
(527, 76, 'http://127.0.0.1:3000/img/product/sm/4F/6/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/1419561755.jpg'),
(528, 76, 'http://127.0.0.1:3000/img/product/sm/4F/6/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/1419561768.jpg'),
(529, 76, 'http://127.0.0.1:3000/img/product/sm/4F/6/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/15221309025905.jpg'),
(530, 76, 'http://127.0.0.1:3000/img/product/sm/4F/6/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/552f88726118b.jpg'),
(531, 76, 'http://127.0.0.1:3000/img/product/sm/4F/6/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/55d3f13e71ae9.jpg'),
(532, 76, 'http://127.0.0.1:3000/img/product/sm/4F/6/580587c702998.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/580587c702998.jpg'),
(533, 77, 'http://127.0.0.1:3000/img/product/sm/4F/6/14467036423512.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/14467036423512.jpg'),
(534, 77, 'http://127.0.0.1:3000/img/product/sm/4F/6/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/1419561755.jpg'),
(535, 77, 'http://127.0.0.1:3000/img/product/sm/4F/6/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/1419561768.jpg'),
(536, 77, 'http://127.0.0.1:3000/img/product/sm/4F/6/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/15221309025905.jpg'),
(537, 77, 'http://127.0.0.1:3000/img/product/sm/4F/6/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/552f88726118b.jpg'),
(538, 77, 'http://127.0.0.1:3000/img/product/sm/4F/6/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/55d3f13e71ae9.jpg'),
(539, 77, 'http://127.0.0.1:3000/img/product/sm/4F/6/580587c702998.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/580587c702998.jpg'),
(540, 78, 'http://127.0.0.1:3000/img/product/sm/4F/6/14467036423512.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/14467036423512.jpg'),
(541, 78, 'http://127.0.0.1:3000/img/product/sm/4F/6/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/1419561755.jpg'),
(542, 78, 'http://127.0.0.1:3000/img/product/sm/4F/6/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/1419561768.jpg'),
(543, 78, 'http://127.0.0.1:3000/img/product/sm/4F/6/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/15221309025905.jpg'),
(544, 78, 'http://127.0.0.1:3000/img/product/sm/4F/6/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/552f88726118b.jpg'),
(545, 78, 'http://127.0.0.1:3000/img/product/sm/4F/6/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/55d3f13e71ae9.jpg'),
(546, 78, 'http://127.0.0.1:3000/img/product/sm/4F/6/580587c702998.jpg', 'http://127.0.0.1:3000/img/product/md/4F/6/580587c702998.jpg'),
(547, 79, 'http://127.0.0.1:3000/img/product/sm/5F/1/15136729151740034250255343091895.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/15136729151740034250255343091895.jpg'),
(548, 79, 'http://127.0.0.1:3000/img/product/sm/5F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md//5F/1/14107610654728.jpg'),
(549, 79, 'http://127.0.0.1:3000/img/product/sm/5F/1/14491343424708.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/14491343424708.jpg'),
(550, 79, 'http://127.0.0.1:3000/img/product/sm/5F/1/552f77f938c45.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/552f77f938c45.jpg'),
(551, 79, 'http://127.0.0.1:3000/img/product/sm/5F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/5604b30ac5f7d.jpg'),
(552, 79, 'http://127.0.0.1:3000/img/product/sm/5F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(553, 79, 'http://127.0.0.1:3000/img/product/sm/5F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(554, 80, 'http://127.0.0.1:3000/img/product/sm/5F/1/15136729151740034250255343091895.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/15136729151740034250255343091895.jpg'),
(555, 80, 'http://127.0.0.1:3000/img/product/sm/5F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md//5F/1/14107610654728.jpg'),
(556, 80, 'http://127.0.0.1:3000/img/product/sm/5F/1/14491343424708.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/14491343424708.jpg'),
(557, 80, 'http://127.0.0.1:3000/img/product/sm/5F/1/552f77f938c45.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/552f77f938c45.jpg'),
(558, 80, 'http://127.0.0.1:3000/img/product/sm/5F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/5604b30ac5f7d.jpg'),
(559, 80, 'http://127.0.0.1:3000/img/product/sm/5F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(560, 80, 'http://127.0.0.1:3000/img/product/sm/5F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(561, 81, 'http://127.0.0.1:3000/img/product/sm/5F/1/15136729151740034250255343091895.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/15136729151740034250255343091895.jpg'),
(562, 81, 'http://127.0.0.1:3000/img/product/sm/5F/1/14107610654728.jpg', 'http://127.0.0.1:3000/img/product/md//5F/1/14107610654728.jpg'),
(563, 81, 'http://127.0.0.1:3000/img/product/sm/5F/1/14491343424708.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/14491343424708.jpg'),
(564, 81, 'http://127.0.0.1:3000/img/product/sm/5F/1/552f77f938c45.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/552f77f938c45.jpg'),
(565, 81, 'http://127.0.0.1:3000/img/product/sm/5F/1/5604b30ac5f7d.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/5604b30ac5f7d.jpg'),
(566, 81, 'http://127.0.0.1:3000/img/product/sm/5F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(567, 81, 'http://127.0.0.1:3000/img/product/sm/5F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/5F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(568, 82, 'http://127.0.0.1:3000/img/product/sm/5F/2/FgRqn1zszBgM3hWbCQyimdJejLIi.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/FgRqn1zszBgM3hWbCQyimdJejLIi.jpg'),
(569, 82, 'http://127.0.0.1:3000/img/product/sm/5F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/1508424833357046127682544933757.jpg'),
(570, 82, 'http://127.0.0.1:3000/img/product/sm/5F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/1508424956580014973516592110703.jpg'),
(571, 82, 'http://127.0.0.1:3000/img/product/sm/5F/2/15154223274760.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/15154223274760.jpg'),
(572, 82, 'http://127.0.0.1:3000/img/product/sm/5F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/15324000459305.jpg'),
(573, 82, 'http://127.0.0.1:3000/img/product/sm/5F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/5577c8f5a5596.jpg'),
(574, 82, 'http://127.0.0.1:3000/img/product/sm/5F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(575, 83, 'http://127.0.0.1:3000/img/product/sm/5F/2/FgRqn1zszBgM3hWbCQyimdJejLIi.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/FgRqn1zszBgM3hWbCQyimdJejLIi.jpg'),
(576, 83, 'http://127.0.0.1:3000/img/product/sm/5F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/1508424833357046127682544933757.jpg'),
(577, 83, 'http://127.0.0.1:3000/img/product/sm/5F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/1508424956580014973516592110703.jpg'),
(578, 83, 'http://127.0.0.1:3000/img/product/sm/5F/2/15154223274760.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/15154223274760.jpg'),
(579, 83, 'http://127.0.0.1:3000/img/product/sm/5F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/15324000459305.jpg'),
(580, 83, 'http://127.0.0.1:3000/img/product/sm/5F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/5577c8f5a5596.jpg'),
(581, 83, 'http://127.0.0.1:3000/img/product/sm/5F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(582, 84, 'http://127.0.0.1:3000/img/product/sm/5F/2/FgRqn1zszBgM3hWbCQyimdJejLIi.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/FgRqn1zszBgM3hWbCQyimdJejLIi.jpg'),
(583, 84, 'http://127.0.0.1:3000/img/product/sm/5F/2/1508424833357046127682544933757.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/1508424833357046127682544933757.jpg'),
(584, 84, 'http://127.0.0.1:3000/img/product/sm/5F/2/1508424956580014973516592110703.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/1508424956580014973516592110703.jpg'),
(585, 84, 'http://127.0.0.1:3000/img/product/sm/5F/2/15154223274760.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/15154223274760.jpg'),
(586, 84, 'http://127.0.0.1:3000/img/product/sm/5F/2/15324000459305.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/15324000459305.jpg'),
(587, 84, 'http://127.0.0.1:3000/img/product/sm/5F/2/5577c8f5a5596.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/5577c8f5a5596.jpg'),
(588, 84, 'http://127.0.0.1:3000/img/product/sm/5F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg', 'http://127.0.0.1:3000/img/product/md/5F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(589, 85, 'http://127.0.0.1:3000/img/product/sm/5F/3/FnbwnJLmBGXjH6zyXyp1mPZAVXev.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/FnbwnJLmBGXjH6zyXyp1mPZAVXev.jpg'),
(590, 85, 'http://127.0.0.1:3000/img/product/sm/5F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/552f7ac7df666.jpg'),
(591, 85, 'http://127.0.0.1:3000/img/product/sm/5F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/552f7f07dc881.jpg'),
(592, 85, 'http://127.0.0.1:3000/img/product/sm/5F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/552f83b1940ea.jpg'),
(593, 85, 'http://127.0.0.1:3000/img/product/sm/5F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/552f88726118b.jpg'),
(594, 85, 'http://127.0.0.1:3000/img/product/sm/5F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/5735a68a0986b.jpg'),
(595, 85, 'http://127.0.0.1:3000/img/product/sm/5F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/576268351bcd7.jpg'),
(596, 86, 'http://127.0.0.1:3000/img/product/sm/5F/3/FnbwnJLmBGXjH6zyXyp1mPZAVXev.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/FnbwnJLmBGXjH6zyXyp1mPZAVXev.jpg'),
(597, 86, 'http://127.0.0.1:3000/img/product/sm/5F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/552f7ac7df666.jpg'),
(598, 86, 'http://127.0.0.1:3000/img/product/sm/5F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/552f7f07dc881.jpg'),
(599, 86, 'http://127.0.0.1:3000/img/product/sm/5F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/552f83b1940ea.jpg'),
(600, 86, 'http://127.0.0.1:3000/img/product/sm/5F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/552f88726118b.jpg'),
(601, 86, 'http://127.0.0.1:3000/img/product/sm/5F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/5735a68a0986b.jpg'),
(602, 86, 'http://127.0.0.1:3000/img/product/sm/5F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/576268351bcd7.jpg'),
(603, 87, 'http://127.0.0.1:3000/img/product/sm/5F/3/FnbwnJLmBGXjH6zyXyp1mPZAVXev.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/FnbwnJLmBGXjH6zyXyp1mPZAVXev.jpg'),
(604, 87, 'http://127.0.0.1:3000/img/product/sm/5F/3/552f7ac7df666.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/552f7ac7df666.jpg'),
(605, 87, 'http://127.0.0.1:3000/img/product/sm/5F/3/552f7f07dc881.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/552f7f07dc881.jpg'),
(606, 87, 'http://127.0.0.1:3000/img/product/sm/5F/3/552f83b1940ea.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/552f83b1940ea.jpg'),
(607, 87, 'http://127.0.0.1:3000/img/product/sm/5F/3/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/552f88726118b.jpg'),
(608, 87, 'http://127.0.0.1:3000/img/product/sm/5F/3/5735a68a0986b.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/5735a68a0986b.jpg'),
(609, 87, 'http://127.0.0.1:3000/img/product/sm/5F/3/576268351bcd7.jpg', 'http://127.0.0.1:3000/img/product/md/5F/3/576268351bcd7.jpg'),
(610, 88, 'http://127.0.0.1:3000/img/product/sm/5F/4/FrwxrlrT7FCCB9ssZxDXNMcI1DmN.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/FrwxrlrT7FCCB9ssZxDXNMcI1DmN.jpg'),
(611, 88, 'http://127.0.0.1:3000/img/product/sm/5F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/1419561768.jpg'),
(612, 88, 'http://127.0.0.1:3000/img/product/sm/5F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/1504686236912036578738978690484.jpg'),
(613, 88, 'http://127.0.0.1:3000/img/product/sm/5F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/552f800edb21c.jpg'),
(614, 88, 'http://127.0.0.1:3000/img/product/sm/5F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/552f8034d06f2.jpg'),
(615, 88, 'http://127.0.0.1:3000/img/product/sm/5F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/5735a67edb8da.jpg'),
(616, 88, 'http://127.0.0.1:3000/img/product/sm/5F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(617, 89, 'http://127.0.0.1:3000/img/product/sm/5F/4/FrwxrlrT7FCCB9ssZxDXNMcI1DmN.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/FrwxrlrT7FCCB9ssZxDXNMcI1DmN.jpg'),
(618, 89, 'http://127.0.0.1:3000/img/product/sm/5F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/1419561768.jpg'),
(619, 89, 'http://127.0.0.1:3000/img/product/sm/5F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/1504686236912036578738978690484.jpg'),
(620, 89, 'http://127.0.0.1:3000/img/product/sm/5F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/552f800edb21c.jpg'),
(621, 89, 'http://127.0.0.1:3000/img/product/sm/5F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/552f8034d06f2.jpg'),
(622, 89, 'http://127.0.0.1:3000/img/product/sm/5F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/5735a67edb8da.jpg'),
(623, 89, 'http://127.0.0.1:3000/img/product/sm/5F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(624, 90, 'http://127.0.0.1:3000/img/product/sm/5F/4/FrwxrlrT7FCCB9ssZxDXNMcI1DmN.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/FrwxrlrT7FCCB9ssZxDXNMcI1DmN.jpg'),
(625, 90, 'http://127.0.0.1:3000/img/product/sm/5F/4/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/1419561768.jpg'),
(626, 90, 'http://127.0.0.1:3000/img/product/sm/5F/4/1504686236912036578738978690484.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/1504686236912036578738978690484.jpg'),
(627, 90, 'http://127.0.0.1:3000/img/product/sm/5F/4/552f800edb21c.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/552f800edb21c.jpg'),
(628, 90, 'http://127.0.0.1:3000/img/product/sm/5F/4/552f8034d06f2.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/552f8034d06f2.jpg'),
(629, 90, 'http://127.0.0.1:3000/img/product/sm/5F/4/5735a67edb8da.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/5735a67edb8da.jpg'),
(630, 90, 'http://127.0.0.1:3000/img/product/sm/5F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg', 'http://127.0.0.1:3000/img/product/md/5F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(631, 91, 'http://127.0.0.1:3000/img/product/sm/5F/5/15232433616585.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/15232433616585.jpg'),
(632, 91, 'http://127.0.0.1:3000/img/product/sm/5F/5/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/14105132434818.jpg'),
(633, 91, 'http://127.0.0.1:3000/img/product/sm/5F/5/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/5549cf9faf3a7.jpg'),
(634, 91, 'http://127.0.0.1:3000/img/product/sm/5F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(635, 91, 'http://127.0.0.1:3000/img/product/sm/5F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(636, 91, 'http://127.0.0.1:3000/img/product/sm/5F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(637, 91, 'http://127.0.0.1:3000/img/product/sm/5F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(638, 92, 'http://127.0.0.1:3000/img/product/sm/5F/5/15232433616585.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/15232433616585.jpg'),
(639, 92, 'http://127.0.0.1:3000/img/product/sm/5F/5/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/14105132434818.jpg'),
(640, 92, 'http://127.0.0.1:3000/img/product/sm/5F/5/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/5549cf9faf3a7.jpg'),
(641, 92, 'http://127.0.0.1:3000/img/product/sm/5F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(642, 92, 'http://127.0.0.1:3000/img/product/sm/5F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(643, 92, 'http://127.0.0.1:3000/img/product/sm/5F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(644, 92, 'http://127.0.0.1:3000/img/product/sm/5F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(645, 93, 'http://127.0.0.1:3000/img/product/sm/5F/5/15232433616585.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/15232433616585.jpg'),
(646, 93, 'http://127.0.0.1:3000/img/product/sm/5F/5/14105132434818.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/14105132434818.jpg'),
(647, 93, 'http://127.0.0.1:3000/img/product/sm/5F/5/5549cf9faf3a7.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/5549cf9faf3a7.jpg'),
(648, 93, 'http://127.0.0.1:3000/img/product/sm/5F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(649, 93, 'http://127.0.0.1:3000/img/product/sm/5F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(650, 93, 'http://127.0.0.1:3000/img/product/sm/5F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(651, 93, 'http://127.0.0.1:3000/img/product/sm/5F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg', 'http://127.0.0.1:3000/img/product/md/5F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(652, 94, 'http://127.0.0.1:3000/img/product/sm/5F/6/FnQ39_T9XNGF03HhlIRlLlJjyeBX.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/FnQ39_T9XNGF03HhlIRlLlJjyeBX.jpg'),
(653, 94, 'http://127.0.0.1:3000/img/product/sm/5F/6/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/1419561755.jpg'),
(654, 94, 'http://127.0.0.1:3000/img/product/sm/5F/6/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/1419561768.jpg'),
(655, 94, 'http://127.0.0.1:3000/img/product/sm/5F/6/14467036423512.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/14467036423512.jpg'),
(656, 94, 'http://127.0.0.1:3000/img/product/sm/5F/6/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/15221309025905.jpg'),
(657, 94, 'http://127.0.0.1:3000/img/product/sm/5F/6/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/552f88726118b.jpg'),
(658, 94, 'http://127.0.0.1:3000/img/product/sm/5F/6/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/55d3f13e71ae9.jpg'),
(659, 95, 'http://127.0.0.1:3000/img/product/sm/5F/6/FnQ39_T9XNGF03HhlIRlLlJjyeBX.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/FnQ39_T9XNGF03HhlIRlLlJjyeBX.jpg'),
(660, 95, 'http://127.0.0.1:3000/img/product/sm/5F/6/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/1419561755.jpg'),
(661, 95, 'http://127.0.0.1:3000/img/product/sm/5F/6/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/1419561768.jpg'),
(662, 95, 'http://127.0.0.1:3000/img/product/sm/5F/6/14467036423512.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/14467036423512.jpg'),
(663, 95, 'http://127.0.0.1:3000/img/product/sm/5F/6/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/15221309025905.jpg'),
(664, 95, 'http://127.0.0.1:3000/img/product/sm/5F/6/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/552f88726118b.jpg'),
(665, 95, 'http://127.0.0.1:3000/img/product/sm/5F/6/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/55d3f13e71ae9.jpg'),
(666, 96, 'http://127.0.0.1:3000/img/product/sm/5F/6/FnQ39_T9XNGF03HhlIRlLlJjyeBX.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/FnQ39_T9XNGF03HhlIRlLlJjyeBX.jpg'),
(667, 96, 'http://127.0.0.1:3000/img/product/sm/5F/6/1419561755.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/1419561755.jpg'),
(668, 96, 'http://127.0.0.1:3000/img/product/sm/5F/6/1419561768.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/1419561768.jpg'),
(669, 96, 'http://127.0.0.1:3000/img/product/sm/5F/6/14467036423512.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/14467036423512.jpg'),
(670, 96, 'http://127.0.0.1:3000/img/product/sm/5F/6/15221309025905.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/15221309025905.jpg'),
(671, 96, 'http://127.0.0.1:3000/img/product/sm/5F/6/552f88726118b.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/552f88726118b.jpg'),
(672, 96, 'http://127.0.0.1:3000/img/product/sm/5F/6/55d3f13e71ae9.jpg', 'http://127.0.0.1:3000/img/product/md/5F/6/55d3f13e71ae9.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `qy_travel_product`
--

DROP TABLE IF EXISTS `qy_travel_product`;
CREATE TABLE `qy_travel_product` (
  `tid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `old_price` int(11) NOT NULL,
  `promise` varchar(128) DEFAULT NULL,
  `prompt` varchar(128) DEFAULT NULL,
  `category` varchar(64) DEFAULT NULL,
  `departure` varchar(64) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL,
  `product_number` int(11) DEFAULT NULL,
  `lg_pic` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qy_travel_product`
--

INSERT INTO `qy_travel_product` (`tid`, `family_id`, `title`, `subtitle`, `price`, `old_price`, `promise`, `prompt`, `category`, `departure`, `sold_count`, `is_onsale`, `product_number`, `lg_pic`) VALUES
(1, 1, '[国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店住宿+可加购20元拼车接机服务))', '赠送当地项目', '499', 599, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行\r\n3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '甲米7天5晚奥南宜比思商品酒店(近海滩+室外游泳池)', '上海', 1000, 1, 82088, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_230828.png'),
(2, 1, '[国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店住宿+可加购20元拼车接机服务))', '赠送当地项目', '899', 999, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行\r\n3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '甲米6天4晚精致特色酒店', '成都', 1800, 1, 82089, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_230828.png'),
(3, 1, '[国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店住宿+可加购20元拼车接机服务))', '赠送当地项目', '599', 699, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行\r\n3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【亲子首选】五星索菲特独家村住宿', '杭州', 1100, 1, 82090, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_230828.png'),
(4, 2, '[中秋/国庆特惠]北京出发欧洲多地往返10-11天含税机票(双点往返+多航班可选)', '赠送当地项目', '1999', 2099, '1、直飞航班：直飞目的地，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行\r\n3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '美国加州风光享受阳光沙滩', '北京', 1800, 1, 82091, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_115217.png'),
(5, 2, '[中秋/国庆特惠]北京出发欧洲多地往返10-11天含税机票(双点往返+多航班可选)', '赠送当地项目', '3999', 4999, '1、直飞航班：直飞目的地，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行\r\n3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '凌晨四点的洛杉矶', '成都', 1000, 1, 82092, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_115217.png'),
(6, 2, '[中秋/国庆特惠]北京出发欧洲多地往返10-11天含税机票(双点往返+多航班可选)', '赠送当地项目', '2999', 3000, '1、直飞航班：直飞目的地，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行\r\n3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '浪漫的土耳其之旅,热气球', '上海', 800, 1, 82093, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_115217.png'),
(7, 3, '[全年爆款][国庆][枫叶季]天津直飞大阪/东京6天往返含税机票(可选两点往返)', '赠送当地项目', '1288', 1300, '1、直飞航班：直飞目的地，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行\r\n3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '[秒杀]北京-阪进东出(CA161/CA422/CA184)', '北京', 600, 1, 82094, 'http://127.0.0.1:3000/img/product/lg/1F/w1.jpg'),
(8, 3, '[全年爆款][国庆][枫叶季]天津直飞大阪/东京6天往返含税机票(可选两点往返)', '赠送当地项目', '999', 1000, '1、直飞航班：直飞目的地，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行\r\n3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '北京出发5-10天,2人起订赠5天Wifi', '北京', 590, 1, 82095, 'http://127.0.0.1:3000/img/product/lg/1F/w1.jpg'),
(9, 3, '[全年爆款][国庆][枫叶季]天津直飞大阪/东京6天往返含税机票(可选两点往返)', '赠送当地项目', '1588', 1688, '1、直飞航班：直飞目的地，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行\r\n3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '天津-冲绳5-10天,2人起订赠5天Wifi', '天津', 600, 1, 82096, 'http://127.0.0.1:3000/img/product/lg/1F/w1.jpg'),
(10, 4, '成都/重庆直飞清迈5-7天往返含税机票(自主航班+全年特惠中)', '赠送当地项目', '1099', 1288, '1、直飞航班，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行\r\n3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '成都 清迈5天4晚川航', '成都', 1100, 0, 82097, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_115055.png'),
(11, 4, '成都/重庆直飞清迈5-7天往返含税机票(自主航班+全年特惠中)', '赠送当地项目', '1599', 3688, '1、直飞航班，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行\r\n3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '重庆 清迈7天6晚山东航空', '重庆', 900, 0, 82098, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_115055.png'),
(12, 4, '成都/重庆直飞清迈5-7天往返含税机票(自主航班+全年特惠中)', '赠送当地项目', '1399', 3688, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '成都 清迈6天5晚川航', '成都', 800, 0, 82099, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_115055.png'),
(13, 5, '【10月14日秒杀】【省钱神器】全日本JR Pass周游券', '赠送当地项目', '1799', 3688, '1、直飞航班，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '7日票', '成都', 200, 1, 82100, 'http://127.0.0.1:3000/img/product/lg/1F/w4.jpg'),
(14, 5, '【10月14日秒杀】【省钱神器】全日本JR Pass周游券', '赠送当地项目', '1399', 3688, '1、直飞航班，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '14日票', '北京', 500, 1, 82101, 'http://127.0.0.1:3000/img/product/lg/1F/w4.jpg'),
(15, 5, '【10月14日秒杀】【省钱神器】全日本JR Pass周游券', '赠送当地项目', '1299', 3688, '1、直飞航班，一站直达，省去转机时间\r\n2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【秒杀】7日成人票普通席', '上海', 300, 1, 82102, 'http://127.0.0.1:3000/img/product/lg/1F/w4.jpg'),
(16, 6, '【秒杀】布里斯班/黄金海岸摩顿岛天阁露玛野生海豚岛度假村', '赠送当地项目', '705', 3688, '1、直飞航班，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '亲手喂食海豚之旅Dolphin Feeding', '成都', 150, 1, 82013, 'http://127.0.0.1:3000/img/product/lg/1F/w1080.jpg'),
(17, 6, '【秒杀】布里斯班/黄金海岸摩顿岛天阁露玛野生海豚岛度假村', '赠送当地项目', '605', 3688, '1、直飞航班，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '观喂食', '重庆', 300, 1, 82014, 'http://127.0.0.1:3000/img/product/lg/1F/w1080.jpg'),
(18, 6, '【秒杀】布里斯班/黄金海岸摩顿岛天阁露玛野生海豚岛度假村', '赠送当地项目', '505', 3688, '1、直飞航班，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '黄金海岸接驳', '丽江', 100, 1, 82105, 'http://127.0.0.1:3000/img/product/lg/1F/w1080.jpg'),
(19, 7, '澳大利亚凯恩斯Downunder鱼鹰号大堡礁浮潜/深潜+直升飞机(凯恩斯出发)', '赠送当地项目', '842', 3688, '1、直飞航班，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '太阳恋人号双礁一日游一船去船回', '成都', 3000, 1, 82106, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_114518.png'),
(20, 7, '澳大利亚凯恩斯Downunder鱼鹰号大堡礁浮潜/深潜+直升飞机(凯恩斯出发)', '赠送当地项目', '882', 3688, '1、直飞航班，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '太阳恋人号外礁一日游(船+飞)', '北京', 2000, 0, 82107, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_114518.png'),
(21, 7, '澳大利亚凯恩斯Downunder鱼鹰号大堡礁浮潜/深潜+直升飞机(凯恩斯出发)', '赠送当地项目', '992', 3688, '1、直飞航班，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '可选平台活动', '沈阳', 2800, 1, 82108, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_114518.png'),
(22, 8, '【VIP插队/免排队】日本大阪环球影城快速票', '赠送当地项目', '91', 3688, '1、直飞航班，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '阿倍野Harukas+VIP通道+(成人)环球入园门票', '成都', 600, 1, 82109, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_114638.png'),
(23, 8, '【VIP插队/免排队】日本大阪环球影城快速票', '赠送当地项目', '81', 3688, '1、直飞航班，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '阿倍野Harukas+大阪环球影城VIP通道', '南京', 1100, 1, 82110, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_114638.png'),
(24, 8, '【VIP插队/免排队】日本大阪环球影城快速票', '赠送当地项目', '102', 3688, '1、直飞航班，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '大阪阿倍野Harukas占展望台', '杭州', 800, 1, 82111, 'http://127.0.0.1:3000/img/product/lg/1F/2018-09-16_114638.png'),
(25, 9, '[国庆][枫叶季预售]上海直飞日本大阪5-7天往返含税机票(可选含近铁周游2日券/首晚市区酒店+早去晚回/午去午回航班套餐)', '赠送当地项目', '1799', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【国庆特惠】上海直飞日本6天往返', '成都', 800, 1, 82112, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224222.png'),
(26, 9, '[国庆][枫叶季预售]上海直飞日本大阪5-7天往返含税机票(可选含近铁周游2日券/首晚市区酒店+早去晚回/午去午回航班套餐)', '赠送当地项目', '1699', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '大阪畅玩', '上海', 1500, 1, 82113, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224222.png'),
(27, 9, '[国庆][枫叶季预售]上海直飞日本大阪5-7天往返含税机票(可选含近铁周游2日券/首晚市区酒店+早去晚回/午去午回航班套餐)', '赠送当地项目', '1599', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '5-7天自由行', '杭州', 600, 1, 82114, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224222.png'),
(28, 10, '[个人/家庭亲子]北京直飞美国/加拿大多地3-30天往返含税机票(拒签全退,全国联运,可A进B出,五星海航,赠送机服务)', '赠送当地项目', '3399', 3688, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '直飞美国-波士顿)', '成都', 800, 1, 82115, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224325.png'),
(29, 10, '[个人/家庭亲子]北京直飞美国/加拿大多地3-30天往返含税机票(拒签全退,全国联运,可A进B出,五星海航,赠送机服务)', '赠送当地项目', '3599', 3688, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '直飞美国-芝加哥', '北京', 300, 1, 82116, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224325.png'),
(30, 10, '[个人/家庭亲子]北京直飞美国/加拿大多地3-30天往返含税机票(拒签全退,全国联运,可A进B出,五星海航,赠送机服务)', '赠送当地项目', '3699', 3688, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '直飞加拿大-卡尔加里', '长春', 200, 1, 82117, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224325.png'),
(31, 11, '上海/杭州/南京直飞东京+大阪6-8天自由行（天天出发+优质航空+星级酒店+赠送出境旅游保险+不走回头路）', '赠送当地项目', '5099', 3688, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '上海-大阪', '成都', 555, 1, 82118, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224633.png'),
(32, 11, '上海/杭州/南京直飞东京+大阪6-8天自由行（天天出发+优质航空+星级酒店+赠送出境旅游保险+不走回头路）', '赠送当地项目', '5299', 3688, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '上海-东京', '上海', 666, 1, 82119, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224633.png'),
(33, 11, '上海/杭州/南京直飞东京+大阪6-8天自由行（天天出发+优质航空+星级酒店+赠送出境旅游保险+不走回头路）', '赠送当地项目', '5899', 3688, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '杭州/南京-东京-大阪', '重庆', 777, 1, 82120, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224633.png'),
(34, 12, '[国庆][中秋]上海/南京直飞丽江5天往返含税机票（特价机票+优质航空+20KG托运+度假优选）', '赠送当地项目', '6199', 3688, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '丽江一地5天4晚自由行', '成都', 645, 1, 82121, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224757.png'),
(35, 12, '[国庆][中秋]上海/南京直飞丽江5天往返含税机票（特价机票+优质航空+20KG托运+度假优选）', '赠送当地项目', '6399', 3688, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '丽江泸沽湖5天自由行', '北京', 842, 1, 82122, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224757.png'),
(36, 12, '[国庆][中秋]上海/南京直飞丽江5天往返含税机票（特价机票+优质航空+20KG托运+度假优选）', '赠送当地项目', '6599', 3688, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '丽江大理5天4晚自由行', '上海', 355, 1, 82123, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224757.png'),
(37, 13, '广州/深圳往返沙巴5/6天自由行（可安排仙本那邦邦岛卡帕莱度假村等+可单卖机票+赠酒店往返接送机+赠当地电话卡+全程四星酒店+多酒店升级+丰盛早餐）可预订仙本那', '赠送当地项目', '4499', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【国庆特惠】上海直飞普吉6天往返（春秋航空)', '成都', 999, 1, 82124, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224841.png'),
(38, 13, '广州/深圳往返沙巴5/6天自由行（可安排仙本那邦邦岛卡帕莱度假村等+可单卖机票+赠酒店往返接送机+赠当地电话卡+全程四星酒店+多酒店升级+丰盛早餐）可预订仙本那', '赠送当地项目', '4599', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【国庆特惠】上海直飞普吉6天往返（春秋航空)', '成都', 1012, 1, 82125, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224841.png'),
(39, 13, '广州/深圳往返沙巴5/6天自由行（可安排仙本那邦邦岛卡帕莱度假村等+可单卖机票+赠酒店往返接送机+赠当地电话卡+全程四星酒店+多酒店升级+丰盛早餐）可预订仙本那', '赠送当地项目', '4699', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【国庆特惠】上海直飞普吉6天往返（春秋航空)', '成都', 3547, 1, 82126, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_224841.png'),
(40, 14, '[国庆]北京/天津直飞日本东京/大阪/东阪/冲绳/北海道4-8天往返含税机票', '赠送当地项目', '1388', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '直飞特惠 东京+大阪', '上海', 199, 1, 8217, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_233819.png'),
(41, 14, '[国庆]北京/天津直飞日本东京/大阪/东阪/冲绳/北海道4-8天往返含税机票', '赠送当地项目', '1288', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '北京直飞大阪', '北京', 289, 1, 82128, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_233819.png'),
(42, 14, '[国庆]北京/天津直飞日本东京/大阪/东阪/冲绳/北海道4-8天往返含税机票', '赠送当地项目', '1188', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '特色七日游 成都出发', '成都', 349, 0, 82129, 'http://127.0.0.1:3000/img/product/lg/2F/2018-10-07_233819.png'),
(43, 15, '【秒杀8.8大促大阪专属福袋】】【打卡必玩】日本大阪环球影城入园电子票', '赠送当地项目', '480', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '全玩无排队VIP', '上海', 1822, 1, 82130, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_225051.png'),
(44, 15, '【秒杀8.8大促大阪专属福袋】】【打卡必玩】日本大阪环球影城入园电子票', '赠送当地项目', '520', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '环球影城门票', '北京', 1922, 1, 82131, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_225051.png'),
(45, 15, '【秒杀8.8大促大阪专属福袋】】【打卡必玩】日本大阪环球影城入园电子票', '赠送当地项目', '620', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '体验好莱坞电影的魅力', '成都', 1622, 1, 82132, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_225051.png'),
(46, 16, '【10月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票', '赠送当地项目', '100', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【实体票】1日成人价(18岁及以上)', '成都', 456, 1, 82133, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_225215.png'),
(47, 16, '【10月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票', '赠送当地项目', '120', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【实体票】全场畅玩', '北京', 588, 1, 82134, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_225215.png'),
(48, 16, '【10月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票', '赠送当地项目', '150', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【实体票】童话世界', '杭州', 681, 1, 82135, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_225215.png'),
(49, 17, '【10月13日秒杀】日本关西地区JR Kansai WIDE Area Pass广域铁路周游(5日券,顺丰包邮)', '赠送当地项目', '534', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '关西体验', '成都', 123, 1, 82136, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_225800.png'),
(50, 17, '【10月13日秒杀】日本关西地区JR Kansai WIDE Area Pass广域铁路周游(5日券,顺丰包邮)', '赠送当地项目', '688', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '自由行体会当地大的风情', '北京', 113, 1, 82137, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_225800.png'),
(51, 17, '【10月13日秒杀】日本关西地区JR Kansai WIDE Area Pass广域铁路周游(5日券,顺丰包邮)', '赠送当地项目', '789', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '成人5日劵', '杭州', 253, 1, 82138, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_225800.png'),
(52, 18, '【10月13日秒杀】日本JR北海道hokkaido rail pass周游券(3/4/5/7日可选)', '赠送当地项目', '1012', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【国庆特惠】上海直飞普吉6天往返（春秋航空)', '成都', 1024, 1, 82139, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_225928.png'),
(53, 18, '【10月13日秒杀】日本JR北海道hokkaido rail pass周游券(3/4/5/7日可选)', '赠送当地项目', '1112', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【国庆特惠】上海直飞普吉6天往返（春秋航空)', '北京', 888, 1, 82140, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_225928.png'),
(54, 18, '【10月13日秒杀】日本JR北海道hokkaido rail pass周游券(3/4/5/7日可选)', '赠送当地项目', '1812', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【国庆特惠】上海直飞普吉6天往返（春秋航空)', '上海', 652, 1, 82141, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_225928.png'),
(55, 19, '【省钱神器】日本关西周游卡KANSAI THRU PASS(2日券/3日券)', '赠送当地项目', '125', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '机场自取-2日券', '成都', 222, 1, 82142, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_230017.png'),
(56, 19, '【省钱神器】日本关西周游卡KANSAI THRU PASS(2日券/3日券)', '赠送当地项目', '155', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '机场自取-3日券', '杭州', 333, 1, 82143, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_230017.png'),
(57, 19, '【省钱神器】日本关西周游卡KANSAI THRU PASS(2日券/3日券)', '赠送当地项目', '405', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【中通包邮】实体票+赠官方手册', '北京', 444, 1, 82144, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_230017.png'),
(58, 20, '【10月2日秒杀】【省钱c畅玩】全日本JR Pass周游券', '赠送当地项目', '1799', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '【国庆特惠】直飞日本', '成都', 1203, 1, 82145, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_230108.png'),
(59, 20, '【10月2日秒杀】【省钱c畅玩】全日本JR Pass周游券', '赠送当地项目', '799', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '14日票', '北京', 321, 1, 82146, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_230108.png'),
(60, 20, '【10月2日秒杀】【省钱c畅玩】全日本JR Pass周游券', '赠送当地项目', '899', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '7日票', '杭州', 456, 1, 82147, 'http://127.0.0.1:3000/img/product/lg/3F/2018-10-07_230108.png'),
(61, 21, '【最世界一日游】百年京都——禅意古都的维新之路', '赠送当地项目', '1799', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '百年京都——禅意古都的维新之路', '成都', 345, 1, 82148, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230230.png'),
(62, 21, '【最世界一日游】百年京都——禅意古都的维新之路', '赠送当地项目', '1999', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '一日游 深度体验', '北京', 555, 1, 82149, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230230.png'),
(63, 21, '【最世界一日游】百年京都——禅意古都的维新之路', '赠送当地项目', '2999', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '慢行慢看', '杭州', 665, 1, 82150, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230230.png'),
(64, 22, '【City Walk】京都深度入门—探秘祇园东山半日游', '赠送当地项目', '248', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '上午出发', '成都', 356, 1, 82151, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230359.png'),
(65, 22, '【City Walk】京都深度入门—探秘祇园东山半日游', '赠送当地项目', '348', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '下午出发[期间限定]', '北京', 256, 1, 82152, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230359.png'),
(66, 22, '【City Walk】京都深度入门—探秘祇园东山半日游', '赠送当地项目', '548', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '探秘祇园东山', '成都', 356, 1, 82153, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230359.png'),
(67, 23, '泰国清迈-凡中文泰餐厨艺学校', '赠送当地项目', '60', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '上午班制作（9：30-13：00）', '成都', 178, 1, 82154, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230546.png'),
(68, 23, '泰国清迈-凡中文泰餐厨艺学校', '赠送当地项目', '80', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '上午班陪同（可参与制作）', '北京', 278, 1, 82155, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230546.png'),
(69, 23, '泰国清迈-凡中文泰餐厨艺学校', '赠送当地项目', '100', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '亲手制作泰国菜', '杭州', 89, 1, 82156, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230546.png'),
(70, 24, '【City Walk】 日本桥-穿街走巷看东京,感受大城市的市井人情', '赠送当地项目', '248', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '日本桥-穿街走巷看东京,感受大城市的市井人情', '成都', 789, 1, 82157, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230639.png'),
(71, 24, '【City Walk】 日本桥-穿街走巷看东京,感受大城市的市井人情', '赠送当地项目', '238', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '成人价', '北京', 889, 1, 82158, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230639.png'),
(72, 24, '【City Walk】 日本桥-穿街走巷看东,感受大城市的市井人情', '赠送当地项目', '218', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '日本桥深度体验', '杭州', 999, 1, 82159, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230639.png'),
(73, 25, '【最世界一日游】京都岚山香风—竹林和温泉的纯净空气之旅（含午餐）', '赠送当地项目', '698', 3688, '1、岚山不止有古风的竹林，更有犹如世外仙境的私家山庄2、像当地人一样游览岚山，亲手制作香包送给重要的人，3、再泡上一汤天然温泉，才算到过岚山。', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '京都岚山香风', '成都', 678, 1, 82160, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230806.png'),
(74, 25, '【最世界一日游】京都岚山香风—竹林和温泉的纯净空气之旅（含午餐）', '赠送当地项目', '778', 3688, '1、岚山不止有古风的竹林，更有犹如世外仙境的私家山庄2、像当地人一样游览岚山，亲手制作香包送给重要的人，3、再泡上一汤天然温泉，才算到过岚山。', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '成人价', '北京', 778, 1, 82161, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230806.png'),
(75, 25, '【最世界一日游】京都岚山香风—竹林和温泉的纯净空气之旅（含午餐）', '赠送当地项目', '888', 3688, '1、岚山不止有古风的竹林，更有犹如世外仙境的私家山庄2、像当地人一样游览岚山，亲手制作香包送给重要的人，3、再泡上一汤天然温泉，才算到过岚山。', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '温泉和竹林', '杭州', 658, 1, 82162, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230806.png'),
(76, 26, '【City Walk】“大村庄”里的菜市场 - 巴塞罗那半日行', '赠送当地项目', '248', 3688, '1、在Barcelona逛菜市场，探寻海鲜饭的奥秘和西班牙料理的源头2、没有华人的“中国城”，它又怎样影响了蓝色毕加索？3、Xiao说：除了足球和高迪，巴塞罗那还有什么？还有生活，', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '巴塞罗那-深度体验半日行', '成都', 255, 1, 82163, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230900.png'),
(77, 26, '【City Walk】“大村庄”里的菜市场 - 巴塞罗那半日行', '赠送当地项目', '448', 3688, '1、在Barcelona逛菜市场，探寻海鲜饭的奥秘和西班牙料理的源头2、没有华人的“中国城”，它又怎样影响了蓝色毕加索？3、Xiao说：除了足球和高迪，巴塞罗那还有什么？还有生活，', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '成人价', '北京', 255, 1, 82164, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230900.png'),
(78, 26, '【City Walk】“大村庄”里的菜市场 - 巴塞罗那半日行', '赠送当地项目', '348', 3688, '1、在Barcelona逛菜市场，探寻海鲜饭的奥秘和西班牙料理的源头2、没有华人的“中国城”，它又怎样影响了蓝色毕加索？\r\n3、Xiao说：除了足球和高迪，巴塞罗那还有什么？还有生活，', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '大村庄的不同风情', '上海', 255, 1, 82165, 'http://127.0.0.1:3000/img/product/lg/4F/2018-10-07_230900.png'),
(79, 27, '上海/南京/成都直飞普吉岛5晚6/7天半自助游礼包（无购物-1/2天自由活动/风帆游艇出海鸡蛋+珊瑚双岛游', '赠送当地项目', '1199', 3688, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '一天自由+鸡蛋+珊瑚岛双岛记+2晚国际五星酒店', '成都', 1255, 1, 82166, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_230947.png'),
(80, 27, '上海/南京/成都直飞普吉岛5晚6/7天半自助游礼包（无购物-1/2天自由活动/风帆游艇出海鸡蛋+珊瑚双岛游', '赠送当地项目', '1299', 3688, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '一天半自由+海盗船出海巡游+全程国际五星', '上海', 1555, 1, 82167, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_230947.png'),
(81, 27, '上海/南京/成都直飞普吉岛5晚6/7天半自助游礼包（无购物-1/2天自由活动/风帆游艇出海鸡蛋+珊瑚双岛游', '赠送当地项目', '1499', 3688, '1、直飞航班：直飞普吉岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '无购物无自费+2天自由活动+4晚国五酒店', '南京', 1655, 1, 82168, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_230947.png'),
(82, 28, '北京出发美国西海岸+国家公园8日半自助游（大峡谷/马蹄湾/羚羊谷/66号公路', '赠送当地项目', '7999', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：可以帮助办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '双人起购6晚8日游', '成都', 1233, 1, 82169, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231102.png'),
(83, 28, '北京出发美国西海岸+国家公园8日半自助游（大峡谷/马蹄湾/羚羊谷/66号公路', '赠送当地项目', '8299', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：可以帮助办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '体验地道西部牛仔风', '北京', 933, 1, 82170, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231102.png'),
(84, 28, '北京出发美国西海岸+国家公园8日半自助游（大峡谷/马蹄湾/羚羊谷/66号公路', '赠送当地项目', '8199', 3688, '1、直飞航班：直飞当地，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：可以帮助办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '美丽的加州风光', '上海', 1133, 1, 82171, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231102.png'),
(85, 29, '上海往返巴厘岛6天4晚半自助游（2晚花园泳池别墅+2晚海边5星Sakala全套房酒店或同级+银快号出海+阿勇河探秘+无购物含WiFi', '赠送当地项目', '5249', 3688, '1、直飞航班：直飞巴厘岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '银快号出海+阿勇河探秘', '成都', 922, 1, 82172, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231147.png'),
(86, 29, '上海往返巴厘岛6天4晚半自助游（2晚花园泳池别墅+2晚海边5星Sakala全套房酒店或同级+银快号出海+阿勇河探秘+无购物含WiFi', '赠送当地项目', '5349', 3688, '1、直飞航班：直飞巴厘岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '2晚海边5星Sakala全套房酒店或同级', '北京', 1122, 1, 82173, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231147.png'),
(87, 29, '上海往返巴厘岛6天4晚半自助游（2晚花园泳池别墅+2晚海边5星Sakala全套房酒店或同级+银快号出海+阿勇河探秘+无购物含WiFi', '赠送当地项目', '5549', 3688, '1、直飞航班：直飞巴厘岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '深度体验6日5晚', '上海', 822, 1, 82174, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231147.png'),
(88, 30, '成都直飞日本名古屋-大阪-京都-箱根-东京6天5晚半自助游（东京一天自由活动，早去晚回，全程升级俩晚希尔顿或同级，至少一晚日式温泉', '赠送当地项目', '4999', 3688, '用餐安排：日式烤肉、京豆腐料理、海鲜锅、温泉餐等住宿安排：全程精选日本当地舒适酒店及一晚温泉酒店行程安排：北京直飞日本，早去晚回，五星航空公司-阿提哈德航空公司游玩安排：东京一天自由活动（10人以上含接送）\r\n物安排：东京银座、大阪心斋桥、奥特莱斯，让您尽', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '成都出发6天5晚', '成都', 1225, 1, 82175, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231237.png'),
(89, 30, '成都直飞日本名古屋-大阪-京都-箱根-东京6天5晚半自助游（东京一天自由活动，早去晚回，全程升级俩晚希尔顿或同级，至少一晚日式温泉', '赠送当地项目', '5299', 3688, '用餐安排：日式烤肉、京豆腐料理、海鲜锅、温泉餐等住宿安排：全程精选日本当地舒适酒店及一晚温泉酒店行程安排：北京直飞日本，早去晚回，五星航空公司-阿提哈德航空公司游玩安排：东京一天自由活动（10人以上含接送）\r\n物安排：东京银座、大阪心斋桥、奥特莱斯，让您尽', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '北京--大阪--京都', '北京', 1325, 1, 82176, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231237.png'),
(90, 30, '成都直飞日本名古屋-大阪-京都-箱根-东京6天5晚半自助游（东京一天自由活动，早去晚回，全程升级俩晚希尔顿或同级，至少一晚日式温泉', '赠送当地项目', '5189', 3688, '用餐安排：日式烤肉、京豆腐料理、海鲜锅、温泉餐等住宿安排：全程精选日本当地舒适酒店及一晚温泉酒店行程安排：北京直飞日本，早去晚回，五星航空公司-阿提哈德航空公司游玩安排：东京一天自由活动（10人以上含接送）\r\n物安排：东京银座、大阪心斋桥、奥特莱斯，让您尽', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '杭州出发深度体验6天', '杭州', 1425, 1, 82177, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231237.png'),
(91, 31, '天津直飞芽庄5-7天半自助游（优质越南航空/1-2天自由行/赠送京津往返接送大巴/赠送意外险/市区游）', '赠送当地项目', '999', 3688, '1、直飞航班：直飞芽庄，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '天津飞芽庄一地(越南航空)', '天津', 120, 1, 82178, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231326.png'),
(92, 31, '天津直飞芽庄5-7天半自助游（优质越南航空/1-2天自由行/赠送京津往返接送大巴/赠送意外险/市区游）', '赠送当地项目', '1099', 3688, '1、直飞航班：直飞芽庄，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '芽庄6天半自由行深度体验', '成都', 220, 1, 82179, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231326.png'),
(93, 31, '天津直飞芽庄5-7天半自助游（优质越南航空/1-2天自由行/赠送京津往返接送大巴/赠送意外险/市区游）', '赠送当地项目', '1199', 3688, '1、直飞航班：直飞芽庄，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：当地可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '可升级洲际/喜来登/珍珠岛/阿米亚娜酒店', '杭州', 320, 1, 82180, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231326.png'),
(94, 32, '北京直飞巴厘岛7天5晚半自助游（纯玩无购物含WIFI+希尔顿洲际同级+独栋泳池别墅+蓝梦出海含海底漫步+定制牛人种珊瑚', '赠送当地项目', '7299', 3688, '1、直飞航班：直飞巴厘岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '北京直飞7天-纯玩无购物含WIFI', '北京', 888, 1, 82181, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231430.png'),
(95, 32, '北京直飞巴厘岛7天5晚半自助游（纯玩无购物含WIFI+希尔顿洲际同级+独栋泳池别墅+蓝梦出海含海底漫步+定制牛人种珊瑚', '赠送当地项目', '7599', 3688, '1、直飞航班：直飞巴厘岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '蓝梦出海含海底漫步+定制牛人种珊瑚', '成都', 898, 1, 82182, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231430.png'),
(96, 32, '北京直飞巴厘岛7天5晚半自助游（纯玩无购物含WIFI+希尔顿洲际同级+独栋泳池别墅+蓝梦出海含海底漫步+定制牛人种珊瑚', '赠送当地项目', '6999', 3688, '1、直飞航班：直飞巴厘岛，一站直达，省去转机时间2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发', '多程机票需按行程顺序完全使用，往返程机票无法单独使用回程', '深度体验巴厘岛', '杭州', 999, 1, 82183, 'http://127.0.0.1:3000/img/product/lg/5F/2018-10-07_231430.png');

-- --------------------------------------------------------

--
-- 表的结构 `qy_user`
--

DROP TABLE IF EXISTS `qy_user`;
CREATE TABLE `qy_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qy_user`
--

INSERT INTO `qy_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `user_name`, `gender`) VALUES
(1, 'dingding', '123456', 'ding@qq.com', '13501234567', '丁伟', 1),
(2, 'dangdang', '123456', 'dang@qq.com', '13501234568', '林当', 1),
(3, 'doudou', '123456', 'dou@qq.com', '13501234569', '窦志强', 1),
(4, 'yaya', '123456', 'ya@qq.com', '13501234560', '秦小雅', 0),
(5, 'Joanna', '970925G', '574931609@qq.com', '13076064035', '程子轩', 0),
(6, 'weiwei', '123456789', NULL, '123456456', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_comment`
--
ALTER TABLE `product_comment`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `qy_collection`
--
ALTER TABLE `qy_collection`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `qy_index_product`
--
ALTER TABLE `qy_index_product`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `qy_news`
--
ALTER TABLE `qy_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qy_product_family`
--
ALTER TABLE `qy_product_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `qy_product_pic`
--
ALTER TABLE `qy_product_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `qy_travel_product`
--
ALTER TABLE `qy_travel_product`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `qy_user`
--
ALTER TABLE `qy_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `product_comment`
--
ALTER TABLE `product_comment`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- 使用表AUTO_INCREMENT `qy_collection`
--
ALTER TABLE `qy_collection`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- 使用表AUTO_INCREMENT `qy_index_product`
--
ALTER TABLE `qy_index_product`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- 使用表AUTO_INCREMENT `qy_news`
--
ALTER TABLE `qy_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用表AUTO_INCREMENT `qy_product_family`
--
ALTER TABLE `qy_product_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `qy_product_pic`
--
ALTER TABLE `qy_product_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=673;
--
-- 使用表AUTO_INCREMENT `qy_travel_product`
--
ALTER TABLE `qy_travel_product`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- 使用表AUTO_INCREMENT `qy_user`
--
ALTER TABLE `qy_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
