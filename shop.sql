/*
Navicat MySQL Data Transfer

Source Server         : jsp
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-06-14 16:01:02
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `count`
-- ----------------------------
DROP TABLE IF EXISTS `count`;
CREATE TABLE `count` (
  `idcount` varchar(99) NOT NULL,
  PRIMARY KEY (`idcount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of count
-- ----------------------------
INSERT INTO count VALUES ('180');

-- ----------------------------
-- Table structure for `favorite`
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
  `m_account` varchar(99) NOT NULL,
  `p_id` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`m_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favorite
-- ----------------------------
INSERT INTO favorite VALUES ('', '6');
INSERT INTO favorite VALUES ('a', '1');

-- ----------------------------
-- Table structure for `indexmess`
-- ----------------------------
DROP TABLE IF EXISTS `indexmess`;
CREATE TABLE `indexmess` (
  `fullname` varchar(99) NOT NULL,
  `message` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`fullname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexmess
-- ----------------------------
INSERT INTO indexmess VALUES ('123', '123');
INSERT INTO indexmess VALUES ('13', '12213');
INSERT INTO indexmess VALUES ('midas', '12213');
INSERT INTO indexmess VALUES ('xxx', 'xxx');
INSERT INTO indexmess VALUES ('yanMing', '87');
INSERT INTO indexmess VALUES ('zxc', 'xxx');
INSERT INTO indexmess VALUES ('蹦蹦跳跳', '蹦跳');

-- ----------------------------
-- Table structure for `list_shopping`
-- ----------------------------
DROP TABLE IF EXISTS `list_shopping`;
CREATE TABLE `list_shopping` (
  `l_id` int(99) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `p_id` varchar(99) DEFAULT NULL,
  `m_account` varchar(99) DEFAULT NULL,
  `l_number` varchar(99) DEFAULT NULL,
  `l_totalprice` varchar(99) DEFAULT NULL,
  `stars` varchar(99) DEFAULT NULL,
  `message` varchar(99) DEFAULT NULL,
  `l_name` varchar(99) DEFAULT NULL,
  `l_email` varchar(255) DEFAULT NULL,
  `l_address` varchar(99) DEFAULT NULL,
  `l_country` varchar(255) DEFAULT NULL,
  `l_cellphone` varchar(99) DEFAULT NULL,
  `l_payment` varchar(255) DEFAULT NULL,
  `l_idd` varchar(99) DEFAULT NULL,
  `l_memo` varchar(255) DEFAULT NULL,
  `l_boolean` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=583 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list_shopping
-- ----------------------------
INSERT INTO list_shopping VALUES ('1', '2019-06-13 19:35:54', '11', 'aa', '3', null, null, '11', 'ym', null, '77', null, '77', null, null, null, '1');
INSERT INTO list_shopping VALUES ('2', '2019-06-13 18:04:44', 'null', 'a', '3', null, null, '好好吃', 'midas', null, 'null', null, 'null', null, null, null, '1');
INSERT INTO list_shopping VALUES ('3', '2019-06-13 18:04:44', 'null', 'null', '1', null, null, '好好吃', '帥哥', null, 'null', null, 'null', null, null, null, '1');
INSERT INTO list_shopping VALUES ('4', '2019-06-13 17:30:49', 'null', '4', '4', null, null, 'null', 'null', null, '4', null, '4', null, null, null, '1');
INSERT INTO list_shopping VALUES ('5', '2019-06-13 18:04:44', '5', 'a', '2', null, null, '5', '5', null, 'null', null, 'null', null, null, null, '1');
INSERT INTO list_shopping VALUES ('87', '2019-06-13 19:36:08', null, '', '87', null, null, null, null, null, '', null, '', null, null, null, null);
INSERT INTO list_shopping VALUES ('556', '2019-06-13 18:04:55', '8', 'aa', '3', null, null, '11', '11', null, 'null', null, 'null', null, null, null, '1');
INSERT INTO list_shopping VALUES ('557', '2019-06-13 18:04:44', '25', 'a', '4', null, null, '888', '888', null, 'null', null, 'null', null, null, null, '1');
INSERT INTO list_shopping VALUES ('563', '2019-06-13 18:04:44', 'null', 'null', 'null', null, null, 'null', '呵呵喝', 'midas112800@gmail.com', '0', '0', '國家', '到貨付款', null, '', '1');
INSERT INTO list_shopping VALUES ('564', '2019-06-13 18:04:44', 'null', 'null', 'null', null, null, 'null', '呵呵喝', 'midas112800@gmail.com', '0', '0', '國家', '到貨付款', null, '', '1');
INSERT INTO list_shopping VALUES ('565', '2019-06-13 18:04:44', 'null', 'null', 'null', null, null, 'null', '呵呵喝', 'midas112800@gmail.com', '0', '0', '國家', '到貨付款', '19679', '', '1');
INSERT INTO list_shopping VALUES ('566', '2019-06-13 18:04:44', 'null', 'null', 'null', null, null, 'null', '呵呵喝', 'midas112800@gmail.com', '0', '0', '國家', '到貨付款', '56275', '', '1');
INSERT INTO list_shopping VALUES ('567', '2019-06-13 18:04:44', 'null', 'null', 'null', null, null, 'null', '呵呵喝null', 'midas112800@gmail.com', '0', '0', '國家', '到貨付款', '57841', '', '1');
INSERT INTO list_shopping VALUES ('568', '2019-06-13 18:04:44', 'null', 'null', 'null', null, null, 'null', '呵呵喝null', 'midas112800@gmail.com', '0', '0', '國家', '到貨付款', '88677', '', '1');
INSERT INTO list_shopping VALUES ('569', '2019-06-13 18:04:44', 'null', 'null', 'null', null, null, 'null', '呵呵喝null', 'midas112800@gmail.com', '0', '0', '國家', '到貨付款', '83087', '', '1');
INSERT INTO list_shopping VALUES ('570', '2019-06-13 18:04:44', 'null', 'null', 'null', null, null, 'null', '呵呵喝null', 'midas112800@gmail.com', '0', '0', '國家', '到貨付款', '84595', '', '1');
INSERT INTO list_shopping VALUES ('571', '2019-06-14 14:10:06', '1', 'null', '3', null, '3', '太棒了!!!!', '呵呵喝', 'midas112800@gmail.com', '台北市信義區101大樓99樓', 'Taiwan', '0920123446', '信用卡', '96523', '我好帥', '1');
INSERT INTO list_shopping VALUES ('572', '2019-06-14 14:10:56', '1', 'nulla', '3', null, '3', '沒吃過這麼讚的', '呵呵喝', 'midas112800@gmail.com', '台北市信義區101大樓99樓', 'Taiwan', '0920123446', '信用卡', '54310', '我好帥', '1');
INSERT INTO list_shopping VALUES ('574', '2019-06-14 14:11:03', '1', 'a', '1', '58', null, null, '123@gmail.comnull', 'null', 'null', '國家', 'null', '到貨付款', '41397', '', '1');
INSERT INTO list_shopping VALUES ('575', '2019-06-14 14:10:26', '1', 'a', '1', '58', null, '好好吃呀呀咿呀', '呵呵喝', 'midas112800@gmail.com', '0', '國家', '0', '到貨付款', '94830', '', '1');
INSERT INTO list_shopping VALUES ('580', '2019-06-14 14:10:29', '12', 'a', '2', '200', null, '', '呵呵喝', 'midas112800@gmail.com', '0', '國家', '0', '到貨付款', '96042', '', '1');
INSERT INTO list_shopping VALUES ('581', '2019-06-14 13:58:47', 'null', null, null, null, null, '123', '123', null, null, null, null, null, null, null, null);
INSERT INTO list_shopping VALUES ('582', '2019-06-14 15:56:13', '23', 'a', '2', '160', null, null, '呵呵喝', 'midas112800@gmail.com', '0', '國家', '0', '到貨付款', '59674', '', '0');

-- ----------------------------
-- Table structure for `love`
-- ----------------------------
DROP TABLE IF EXISTS `love`;
CREATE TABLE `love` (
  `love_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(11) DEFAULT NULL,
  `m_account` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`love_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of love
-- ----------------------------
INSERT INTO love VALUES ('1', '6', 'a');
INSERT INTO love VALUES ('13', '10', 'a');
INSERT INTO love VALUES ('14', '17', 'a');
INSERT INTO love VALUES ('15', '15', 'a');
INSERT INTO love VALUES ('16', '1', 'a');
INSERT INTO love VALUES ('17', '1', 'a');
INSERT INTO love VALUES ('18', '1', '123@gmail.com');
INSERT INTO love VALUES ('19', '12', '123@gmail.com');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `m_id` int(99) NOT NULL AUTO_INCREMENT,
  `m_account` varchar(99) DEFAULT NULL,
  `m_password` varchar(99) DEFAULT NULL,
  `m_firstname` varchar(99) DEFAULT NULL,
  `m_lastname` varchar(99) DEFAULT NULL,
  `m_address` varchar(99) DEFAULT NULL,
  `m_email` varchar(99) DEFAULT NULL,
  `m_level` varchar(99) DEFAULT NULL,
  `m_head` varchar(99) DEFAULT NULL,
  `m_tel` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO member VALUES ('1', 'a', 'b', '呵呵', '喝', '0', 'midas112800@gmail.com', '0', '一般會員', '0');
INSERT INTO member VALUES ('2', 'y', 'm', 'ym', '0', '0', '0', '1', '管理者', '0');
INSERT INTO member VALUES ('4', 'midas', '1', 'midas', null, null, null, '0', '一般會員', null);
INSERT INTO member VALUES ('5', '123@gmail.com', '123', '123@gmail.com', 'null', 'null', 'null', '0', '一般會員', 'null');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `p_id` int(99) NOT NULL AUTO_INCREMENT,
  `p_class` varchar(255) DEFAULT NULL,
  `p_name` varchar(99) DEFAULT NULL,
  `p_stock` varchar(99) DEFAULT NULL,
  `p_price` varchar(99) DEFAULT NULL,
  `p_originprice` varchar(99) DEFAULT NULL,
  `p_discount` varchar(99) DEFAULT NULL,
  `p_image` varchar(99) DEFAULT NULL,
  `p_strcss` varchar(99) DEFAULT NULL,
  `p_strhot` varchar(99) DEFAULT NULL,
  `p_text` varchar(99) DEFAULT NULL,
  `p_textarea` varchar(99) DEFAULT NULL,
  `p_hot` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8889 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO product VALUES ('1', '1', '紐西蘭鮮奶巧克力', '90', '58', '100', '20', 'assets\\images\\desert\\chocolate_ita.png', 'sale-label pro-label', 'hot', '簡單介紹', '紐西蘭牛奶遠近馳名，沒想到調味乳也不遑多讓，這款Lewis road creamery的巧克力調味乳，十分香濃。\r\n', '13');
INSERT INTO product VALUES ('2', '1', '頂級巧克力餅乾', '100', '80', '150', '20', 'assets\\images\\desert\\chocolate_truffle.png', ' ', '', '簡單介紹', '14朵細緻碎花，圈出宛如皇冠般的優美造型，頂著白色巧克力頭紗，裹糖就像寶石般閃耀發光，猶如每位新娘的高貴美麗。\r\n', '20');
INSERT INTO product VALUES ('3', '1', '黃金薑黃餅乾', '100', '100', '250', '20', 'assets\\images\\desert\\christmas_gingerbread.png', 'sale-label pro-label', 'hot', '簡單介紹', '想來點清爽又不想花太多時間？簡單的烤餅乾很適合你。出爐後再隨意灑上一些薑黃粉風味就能更升級！(忘記不了大一的薑黃餅乾嗎)。\r\n', '10');
INSERT INTO product VALUES ('4', '1', '甜心甜甜圈', '100', '58', '100', '20', 'assets\\images\\desert\\donuts.png', 'new-label pro-label ', 'new', '簡單介紹', '最經典的甜甜圈外型，細緻的糖霜更增添麵團蓬鬆的美味口感，老少咸宜最愛的絕佳風味。\r\n', '0');
INSERT INTO product VALUES ('5', '1', '蜂蜜鬆餅', '100', '80', '150', '20', 'assets\\images\\desert\\hotcake.png', '', ' ', '簡單介紹', '剛烘烤出的鬆餅淋上一點蜂蜜並撒上細細糖粉，甜蜜蜜的滋味加上厚實的奶香蛋香，雖然平凡卻是溫暖的幸福味道。\r\n', '3');
INSERT INTO product VALUES ('6', '0', '日式傳統麻糬', '100', '100', '250', '20', 'assets\\images\\desert\\kashiwamochi.png', 'sale-label pro-label', ' hot', '簡單介紹', '採用最高級品質的糯米和艾草所煉製成，帶有淡淡青草香味的香Q外皮。\r\n', '0');
INSERT INTO product VALUES ('7', '1', '好吃馬卡龍', '100', '58', '100', '20', 'assets\\images\\desert\\macaroon.png', 'sale-label pro-label', 'hot', '簡單介紹', '兩片蛋白餅有著極薄的外層、內裡軟糯黏牙、充滿了杏仁香氣，再加上中間果香豐富的甘納許⋯⋯在放入口中的那個瞬間，我第一次明白馬卡龍顛倒眾生的魅力之處。(又稱少女的酥胸)。', '0');
INSERT INTO product VALUES ('8', '0', '日式糰子', '100', '80', '150', '20', 'assets\\images\\desert\\odango.png', ' ', ' ', '簡單介紹', '還記得幾年前以超可愛的姿態風靡台灣的日本卡通角色「丸子三兄弟」嗎？其實在日本是稱作「團子」，到了台灣就變成「丸子」。\r\n', '6');
INSERT INTO product VALUES ('9', '0', '日式仙貝', '100', '100', '250', '20', 'assets\\images\\desert\\osenbei.png', ' ', ' ', '簡單介紹', '雪の宿是日本最受歡迎的仙貝之一，因為雪這個字所以正如所見，仙貝上面有一些白色的粉末，那些是糖霜，鹹口味的仙貝和糖混合得恰到好處。\r\n', '10');
INSERT INTO product VALUES ('10', '0', '少女聖代冰淇淋', '100', '58', '100', '20', 'assets\\images\\desert\\parfeit.png', 'new-label pro-label', ' new', '簡單介紹', '一款由9種不同口味冰淇淋球組成，先是在底盤上鋪滿玉米脆片，再繞著大碗周邊分別擺上冰淇淋球，將餅乾條插入冰淇淋球的隙縫，擠上鮮奶油後，插上一串串棉花糖，光看製作過程，就讓許多人少女心爆發！\r\n', '0');
INSERT INTO product VALUES ('11', '1', '焦糖布丁', '100', '80', '150', '20', 'assets\\images\\desert\\purin.png', ' ', ' ', '簡單介紹', '極其纖薄的一層焦糖，加上現做現噴，焦糖的火熱口感總能對比出蛋奶的冰涼，實為入口的最好境界。\r\n', '0');
INSERT INTO product VALUES ('12', '1', '極鮮水果蛋糕', '98', '100', '250', '20', 'assets\\images\\desert\\shortcake.png', 'new-label pro-label ', 'new', '簡單介紹', '水果蛋糕一直是健康美味，裸蛋糕也是火爆的像流行一樣擦肩而過。\r\n', '101');
INSERT INTO product VALUES ('13', '1', '香草白冰淇淋', '100', '58', '100', '20', 'assets\\images\\desert\\softcream.png', '  ', ' ', '簡單介紹', '「香草」+「水果」=NEW STYLE\r\n', '13');
INSERT INTO product VALUES ('14', '0', '日式紅豆鯛魚燒', '100', '80', '150', '20', 'assets\\images\\desert\\taiyaki.png', 'new-label pro-label ', 'new', '簡單介紹', '源自日本東京，以麵粉、砂糖、牛奶與小蘇打為材料，所作成的形狀像鯛魚的和果子，衍生自今川燒。\r\n', '0');
INSERT INTO product VALUES ('15', '2', '濃郁的咖喱飯', '100', '100', '250', '20', 'assets\\images\\dish\\curryrice.png', ' ', ' ', '簡單介紹', '金黃色的歐姆蛋、薑黃飯 ，淋上香濃帶點微辣的咖哩醬一起吃，真是太幸福了！\r\n', '8');
INSERT INTO product VALUES ('16', '2', '中華鮮肉餃子', '100', '58', '100', '20', 'assets\\images\\dish\\gyouza.png', 'new-label pro-label ', 'sale', '簡單介紹', '過了冬至，白晝一天比一天長，陽氣回升！是一個節氣循環的開始，是吉日，應該吃吃傳統的中華鮮肉餃子，從養生走起。\r\n', '0');
INSERT INTO product VALUES ('17', '2', '柴魚味噌湯', '100', '80', '150', '20', 'assets\\images\\dish\\misoshiru.png', ' ', ' ', '簡單介紹', '美味的關鍵就是要準備「日式高湯」，日文叫「dashi」，這個淡淡的昆布柴魚高湯就是味噌湯好喝的關鍵！\r\n', '5');
INSERT INTO product VALUES ('18', '2', '溫暖的關東煮', '100', '100', '250', '20', 'assets\\images\\dish\\oden.png', '  ', ' ', '簡單介紹', '關東煮的好壞就在它那超透的滷蘿蔔，無論冷熱吃都超好吃!\r\n', '54');
INSERT INTO product VALUES ('19', '2', '溫暖的梅子粥', '100', '58', '100', '20', 'assets\\images\\dish\\okayu.png', ' ', ' ', '簡單介紹', '梅子，不僅具有引人垂涎三尺的本領,其在抑止細菌，淨化血液等功效，加在粥裡入口即化。\r\n', '0');
INSERT INTO product VALUES ('20', '2', '茄汁蛋包飯', '100', '80', '150', '20', 'assets\\images\\dish\\omuraisu.png', ' ', ' ', '簡單介紹', '紅紅的番茄醬加在剛出爐熱呼呼的飯上，那酸甜的滋味加強了我想吃飯的慾望。\r\n', '25');
INSERT INTO product VALUES ('21', '2', '三角御飯糰', '100', '100', '250', '20', 'assets\\images\\dish\\onigiri.png', null, ' ', '簡單介紹', '野餐最適合的食物之一，但要拿捏好它的分量實在不容易，立體的稱為粽子，而平面的我們稱它為三角御飯糰。\r\n', '0');
INSERT INTO product VALUES ('22', '1', '細皮嫩肉棒', '100', '58', '100', '20', 'assets\\images\\dish\\oniku.png', 'sale-label pro-label', 'hot', '簡單介紹', '現在發現細皮嫩肉棒已經普及到各種菜餚當中，涼拌、煎炒、烹炸做法也很多樣，成為餐桌上的一道美味菜餚。\r\n', '3');
INSERT INTO product VALUES ('23', '2', '霸王壽司', '98', '80', '150', '20', 'assets\\images\\dish\\osushi.png', 'sale-label pro-label', ' hot', '簡單介紹', '一捲上桌除了份量超級飽足外，鹹酥加上清甜的創意口味，意外虜獲了大人小孩的胃\r\n', '101');
INSERT INTO product VALUES ('24', '1', '濃郁起司披薩', '100', '100', '250', '20', 'assets\\images\\dish\\pizza.png', null, ' ', '簡單介紹', '純手工拍製麵皮，外圈包裹由香濃滑順鮮奶製作而成的莫札瑞拉起司條，一口咬下濃郁起司香味在嘴裡化開。\r\n', '0');
INSERT INTO product VALUES ('25', '2', '霸王豚骨拉麵', '100', '58', '100', '20', 'assets\\images\\dish\\ramen.png', 'sale-label pro-label', 'hot', '簡單介紹', '乳白的湯頭附上日式拉麵應有的半蛋和海苔，他店的大碗是我這的小碗呢，要吃就是要霸氣的霸王拉麵。\r\n', '4');
INSERT INTO product VALUES ('26', '2', '長卷醋飯壽司', '100', '80', '150', '20', 'assets\\images\\dish\\setsubun_ehomaki.png', null, ' ', '簡單介紹', '將白飯加入醋、糖和鹽巴調製而成的「醋飯」則是日式料理的靈魂，無論是握壽司、散壽司還是海鮮丼飯，醋飯的好壞完全掌握了料理是否好吃的關係。\r\n', '0');
INSERT INTO product VALUES ('27', '2', '冰玉涼麵', '100', '100', '250', '20', 'assets\\images\\dish\\soba.png', null, ' ', '簡單介紹', '有別於一般涼麵的極脆涼麵，特色在於清爽的細麵加了新鮮檸檬，多了份清香和爽口。\r\n', '0');
INSERT INTO product VALUES ('878', '', '787', '7878', '', '7878', '', '', null, null, null, null, null);

-- ----------------------------
-- Table structure for `shopping_cart`
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `s_id` int(99) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(99) DEFAULT NULL,
  `amount` varchar(99) DEFAULT NULL,
  `m_account` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO shopping_cart VALUES ('20', '5', '3', '');
