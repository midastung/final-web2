/*
Navicat MySQL Data Transfer

Source Server         : jsp
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-06-09 03:03:39
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `count`
-- ----------------------------
DROP TABLE IF EXISTS `count`;
CREATE TABLE `count` (
  `idcount` int(11) NOT NULL,
  PRIMARY KEY (`idcount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of count
-- ----------------------------
INSERT INTO count VALUES ('23');

-- ----------------------------
-- Table structure for `indexmess`
-- ----------------------------
DROP TABLE IF EXISTS `indexmess`;
CREATE TABLE `indexmess` (
  `fullname` varchar(99) NOT NULL,
  `message` varchar(99) NOT NULL,
  PRIMARY KEY (`fullname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexmess
-- ----------------------------
INSERT INTO indexmess VALUES ('123', '123');
INSERT INTO indexmess VALUES ('13', '12213');
INSERT INTO indexmess VALUES ('midas', '12213');
INSERT INTO indexmess VALUES ('xxx', 'xxx');
INSERT INTO indexmess VALUES ('zxc', 'xxx');

-- ----------------------------
-- Table structure for `list_shopping`
-- ----------------------------
DROP TABLE IF EXISTS `list_shopping`;
CREATE TABLE `list_shopping` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `p_id` int(11) DEFAULT NULL,
  `l_number` int(11) DEFAULT NULL,
  `m_account` varchar(45) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `l_address` varchar(45) DEFAULT NULL,
  `l_cellphone` varchar(45) DEFAULT NULL,
  `l_idd` int(11) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list_shopping
-- ----------------------------
INSERT INTO list_shopping VALUES ('1', '2019-06-08 22:59:01', null, null, null, '12213', null, 'midas', null, null, null);
INSERT INTO list_shopping VALUES ('2', '2019-06-08 22:59:15', null, null, null, '123', null, 'midas', null, null, null);
INSERT INTO list_shopping VALUES ('3', '2019-06-08 23:02:55', null, null, null, '好好吃', null, 'midas', null, null, null);
INSERT INTO list_shopping VALUES ('4', '2019-06-08 23:03:06', null, null, null, '好好吃', null, '帥哥', null, null, null);
INSERT INTO list_shopping VALUES ('5', '2019-06-08 23:03:43', '1', null, null, '好好吃', null, '帥哥', null, null, null);
INSERT INTO list_shopping VALUES ('6', '2019-06-08 23:04:03', '1', null, null, '123', null, '帥哥', null, null, null);
INSERT INTO list_shopping VALUES ('7', '2019-06-08 23:06:27', '1', null, null, '讚讚', null, '帥哥2號', null, null, null);
INSERT INTO list_shopping VALUES ('8', '2019-06-08 23:07:10', '1', null, null, '讚讚123', null, '帥哥2號', null, null, null);

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `m_account` varchar(45) NOT NULL,
  `m_password` varchar(45) DEFAULT NULL,
  `m_firstname` varchar(45) DEFAULT NULL,
  `m_lastname` varchar(45) DEFAULT NULL,
  `m_address` varchar(45) DEFAULT NULL,
  `m_Email` varchar(100) DEFAULT NULL,
  `m_level` varchar(45) DEFAULT NULL,
  `m_head` varchar(45) DEFAULT NULL,
  `m_tel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`m_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO member VALUES ('1', '2', '1', null, null, null, '0', '一般會員', null);
INSERT INTO member VALUES ('a', 'b', '肥宅鈞', null, null, null, '0', '一般會員', null);
INSERT INTO member VALUES ('y', 'm', 'ym', '', '', '', '1', '管理者', '');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_class` varchar(45) DEFAULT NULL,
  `p_name` varchar(45) DEFAULT NULL,
  `p_stock` int(11) DEFAULT NULL,
  `p_price` int(11) DEFAULT NULL,
  `p_originprice` int(11) DEFAULT NULL,
  `p_discount` int(11) DEFAULT NULL,
  `p_image` varchar(100) NOT NULL,
  `p_strcss` varchar(20) DEFAULT NULL,
  `p_strhot` varchar(20) DEFAULT NULL,
  `p_text` varchar(200) DEFAULT NULL,
  `p_textarea` varchar(200) DEFAULT NULL,
  `p_hot` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO product VALUES ('1', '1', '紐西蘭鮮奶巧克力', '100', '58', '100', '20', 'assets\\images\\desert\\chocolate_ita.png', 'sale-label pro-label', 'hot', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('2', '1', '頂級巧克力餅乾', '100', '80', '150', '20', 'assets\\images\\desert\\chocolate_truffle.png', ' ', '', '簡單介紹', '複雜介紹', '20');
INSERT INTO product VALUES ('3', '1', '黃金薑黃餅乾', '100', '100', '250', '20', 'assets\\images\\desert\\christmas_gingerbread.png', 'sale-label pro-label', 'hot', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('4', '1', '甜心甜甜圈', '100', '58', '100', '20', 'assets\\images\\desert\\donuts.png', 'new-label pro-label ', 'new', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('5', '1', '蜂蜜鬆餅', '100', '80', '150', '20', 'assets\\images\\desert\\hotcake.png', '', ' ', '簡單介紹', '複雜介紹', '3');
INSERT INTO product VALUES ('6', '0', '日式傳統麻糬', '100', '100', '250', '20', 'assets\\images\\desert\\kashiwamochi.png', 'sale-label pro-label', ' hot', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('7', '1', '好吃馬卡龍', '100', '58', '100', '20', 'assets\\images\\desert\\macaroon.png', 'sale-label pro-label', 'hot', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('8', '0', '日式糰子', '100', '80', '150', '20', 'assets\\images\\desert\\odango.png', ' ', ' ', '簡單介紹', '複雜介紹', '6');
INSERT INTO product VALUES ('9', '0', '日式仙貝', '100', '100', '250', '20', 'assets\\images\\desert\\osenbei.png', ' ', ' ', '簡單介紹', '複雜介紹', '10');
INSERT INTO product VALUES ('10', '0', '少女聖代冰淇淋', '100', '58', '100', '20', 'assets\\images\\desert\\parfeit.png', 'new-label pro-label', ' new', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('11', '1', '焦糖布丁', '100', '80', '150', '20', 'assets\\images\\desert\\purin.png', ' ', ' ', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('12', '1', '極鮮水果蛋糕', '100', '100', '250', '20', 'assets\\images\\desert\\shortcake.png', 'new-label pro-label ', 'new', '簡單介紹', '複雜介紹', '99');
INSERT INTO product VALUES ('13', '1', '香草白冰淇淋', '100', '58', '100', '20', 'assets\\images\\desert\\softcream.png', '  ', ' ', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('14', '0', '日式紅豆鯛魚燒', '100', '80', '150', '20', 'assets\\images\\desert\\taiyaki.png', 'new-label pro-label ', 'new', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('15', '2', '濃郁的咖喱飯', '100', '100', '250', '20', 'assets\\images\\dish\\curryrice.png', ' ', ' ', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('16', '2', '中華鮮肉餃子', '100', '58', '100', '20', 'assets\\images\\dish\\gyouza.png', 'new-label pro-label ', 'sale', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('17', '2', '柴魚味噌湯', '100', '80', '150', '20', 'assets\\images\\dish\\misoshiru.png', ' ', ' ', '簡單介紹', '複雜介紹', '5');
INSERT INTO product VALUES ('18', '2', '溫暖的關東煮', '100', '100', '250', '20', 'assets\\images\\dish\\oden.png', '  ', ' ', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('19', '2', '溫暖的梅子粥', '100', '58', '100', '20', 'assets\\images\\dish\\okayu.png', ' ', ' ', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('20', '2', '茄汁蛋包飯', '100', '80', '150', '20', 'assets\\images\\dish\\omuraisu.png', ' ', ' ', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('21', '2', '三角御飯糰', '100', '100', '250', '20', 'assets\\images\\dish\\onigiri.png', null, ' ', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('22', '1', '細皮嫩肉棒', '100', '58', '100', '20', 'assets\\images\\dish\\oniku.png', 'sale-label pro-label', 'hot', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('23', '2', '霸王壽司', '100', '80', '150', '20', 'assets\\images\\dish\\osushi.png', 'sale-label pro-label', ' hot', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('24', '1', '濃郁起司披薩', '100', '100', '250', '20', 'assets\\images\\dish\\pizza.png', null, ' ', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('25', '2', '霸王豚骨拉麵', '100', '58', '100', '20', 'assets\\images\\dish\\ramen.png', 'sale-label pro-label', 'hot', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('26', '2', '長卷醋飯壽司', '100', '80', '150', '20', 'assets\\images\\dish\\setsubun_ehomaki.png', null, ' ', '簡單介紹', '複雜介紹', null);
INSERT INTO product VALUES ('27', '2', '冰玉涼麵', '100', '100', '250', '20', 'assets\\images\\dish\\soba.png', null, ' ', '簡單介紹', '複雜介紹', null);

-- ----------------------------
-- Table structure for `shopping_cart`
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(45) DEFAULT NULL,
  `s_number` varchar(45) DEFAULT NULL,
  `m_account` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
