/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : db_shlib

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 11/30/2017 21:34:49 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `tb_bookcase`
-- ----------------------------
DROP TABLE IF EXISTS `tb_bookcase`;
CREATE TABLE `tb_bookcase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `Column_3` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='书架表';

-- ----------------------------
--  Records of `tb_bookcase`
-- ----------------------------
BEGIN;
INSERT INTO `tb_bookcase` VALUES ('2', '书架A1', null), ('3', '书架A2', null), ('4', '书架A3', null), ('5', '书架A4', null), ('6', '书架A5', null), ('7', '书架A6', null), ('8', '书架B1', null), ('9', '书架B2', null), ('10', '书架B3', null), ('11', '书架B4', null), ('12', '书架B5', null), ('13', '书架B6', null), ('14', '书架B7', null), ('15', '书架B8', null), ('16', '书架C1', null), ('17', '书架C2', null), ('18', '书架C3', null), ('19', '书架C4', null), ('20', '书架C5', null), ('21', '书架C6', null), ('22', '书架C7', null), ('23', '书架C8', null), ('24', '书架D1', null), ('25', '书架D2', null), ('26', '书架D3', null), ('27', '书架D4', null), ('28', '书架D5', null), ('29', '书架D6', null), ('30', '书架E1', null), ('31', '书架E2', null), ('32', '书架E3', null), ('33', '书架E4', null), ('34', '书架E5', null), ('35', '书架E6', null);
COMMIT;

-- ----------------------------
--  Table structure for `tb_bookinfo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_bookinfo`;
CREATE TABLE `tb_bookinfo` (
  `barcode` varchar(30) DEFAULT NULL,
  `bookname` varchar(70) DEFAULT NULL,
  `typeid` int(10) unsigned DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `translator` varchar(30) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `page` int(10) unsigned DEFAULT NULL,
  `bookcase` int(10) unsigned DEFAULT NULL,
  `inTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `del` tinyint(1) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='图书具体信息';

-- ----------------------------
--  Records of `tb_bookinfo`
-- ----------------------------
BEGIN;
INSERT INTO `tb_bookinfo` VALUES ('111111', '喜洋洋与灰太狼', '2', '未登记', '未登记', '1', '104.00', '204', '2', '2017-10-13', 'tsoft', '0', '1'), ('2017092570', '狼和小羊', '2', '弗兰克-保姆', '吕明', '1', '16.80', '204', '3', '2017-10-13', 'tsoft', '0', '2'), ('11111199', '木偶奇遇记', '2', '(芬兰)约莉娅-沃瑞', '未登记', '1', '15.80', '58', '3', '2017-10-13', 'tsoft', '0', '3'), ('9787530754818', '白鸽子的梦', '2', '', null, '2', '9.00', null, '4', null, null, '0', '4'), ('9771005272006', '知音漫客09.12(87期)', '2', '', null, '2', '13.80', null, '6', null, null, '0', '5'), ('9787539736143', '虹猫仗剑走天涯（9）', '2', '', null, '2', '6.30', null, '5', null, null, '0', '6'), ('9787807317142', '孩子的第一套心灵成长百科我爱我的宠物朋友(精)', '2', '', null, '2', '6.20', null, '6', null, null, '0', '7'), ('9787534259661', '升级版冒险小虎队：了不起的囚徒&鲨鱼13小时', '2', '托马斯.布热齐纳', null, '2', '39.90', null, '6', null, null, '0', '8'), ('9787531551485', '儿童成长必备知识丛书.猜谜语', '2', '赵文涛', null, '2', '10.00', null, '6', null, null, '0', '9'), ('9787545007633', '二年级语文(上)-配套人民教育出版社实验教科书-小学教材全解-全彩学案版', '2', '薛金星. 主编', null, '2', '24.80', null, '6', null, null, '0', '10'), ('9787500778493', '实验班提优训练：4年级英语（下）PEP', '2', '', null, '2', '13.80', null, '6', null, null, '0', '11'), ('9787502438593', '暂无数据', '1', '暂无数据', null, '2', '0.00', null, '3', null, 'tsoft', '0', '12'), ('2017092568', '好词好句好段', '1', '', '', '2', '16.80', '0', '2', '2017-10-13', 'tsoft', '0', '13');
COMMIT;

-- ----------------------------
--  Table structure for `tb_booktype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_booktype`;
CREATE TABLE `tb_booktype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) DEFAULT NULL,
  `days` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='图书类型';

-- ----------------------------
--  Records of `tb_booktype`
-- ----------------------------
BEGIN;
INSERT INTO `tb_booktype` VALUES ('1', '学习辅导', '30'), ('2', '课外读物(书本)', '7');
COMMIT;

-- ----------------------------
--  Table structure for `tb_borrow`
-- ----------------------------
DROP TABLE IF EXISTS `tb_borrow`;
CREATE TABLE `tb_borrow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(10) unsigned DEFAULT NULL,
  `bookid` int(10) DEFAULT NULL,
  `borrowTime` date DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `ifback` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tb_borrow`
-- ----------------------------
BEGIN;
INSERT INTO `tb_borrow` VALUES ('1', '3', '2', '2017-10-13', '2017-10-20', 'tsoft', '1');
COMMIT;

-- ----------------------------
--  Table structure for `tb_giveback`
-- ----------------------------
DROP TABLE IF EXISTS `tb_giveback`;
CREATE TABLE `tb_giveback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tb_giveback`
-- ----------------------------
BEGIN;
INSERT INTO `tb_giveback` VALUES ('1', '3', '2', '2017-10-13', 'tsoft');
COMMIT;

-- ----------------------------
--  Table structure for `tb_library`
-- ----------------------------
DROP TABLE IF EXISTS `tb_library`;
CREATE TABLE `tb_library` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `libraryname` varchar(50) DEFAULT NULL,
  `curator` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `introduce` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='图书馆信息表';

-- ----------------------------
--  Records of `tb_library`
-- ----------------------------
BEGIN;
INSERT INTO `tb_library` VALUES ('1', '双河小学图书馆', '公子小白', '15655832788', 'ccs', '850078615@qq.com', 'http://www.**.com', '2017-09-22', '双河');
COMMIT;

-- ----------------------------
--  Table structure for `tb_manager`
-- ----------------------------
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `PWD` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
--  Records of `tb_manager`
-- ----------------------------
BEGIN;
INSERT INTO `tb_manager` VALUES ('1', 'tsoft', '111'), ('2', 'admin', '111'), ('3', 'xiaobai', 'xiaobai'), ('4', '龚啊', '11');
COMMIT;

-- ----------------------------
--  Table structure for `tb_parameter`
-- ----------------------------
DROP TABLE IF EXISTS `tb_parameter`;
CREATE TABLE `tb_parameter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cost` int(10) unsigned DEFAULT NULL,
  `validity` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tb_parameter`
-- ----------------------------
BEGIN;
INSERT INTO `tb_parameter` VALUES ('1', '10', '120');
COMMIT;

-- ----------------------------
--  Table structure for `tb_publishing`
-- ----------------------------
DROP TABLE IF EXISTS `tb_publishing`;
CREATE TABLE `tb_publishing` (
  `ISBN` varchar(20) DEFAULT NULL,
  `pubname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='出版社信息表';

-- ----------------------------
--  Records of `tb_publishing`
-- ----------------------------
BEGIN;
INSERT INTO `tb_publishing` VALUES ('1', '清华大学出版社'), ('2', '人民邮电出版社');
COMMIT;

-- ----------------------------
--  Table structure for `tb_purview`
-- ----------------------------
DROP TABLE IF EXISTS `tb_purview`;
CREATE TABLE `tb_purview` (
  `id` int(11) NOT NULL,
  `sysset` tinyint(1) DEFAULT '0',
  `readerset` tinyint(1) DEFAULT '0',
  `bookset` tinyint(1) DEFAULT '0',
  `borrowback` tinyint(1) DEFAULT '0',
  `sysquery` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
--  Records of `tb_purview`
-- ----------------------------
BEGIN;
INSERT INTO `tb_purview` VALUES ('1', '1', '1', '1', '1', '1'), ('3', '1', '1', '1', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `tb_reader`
-- ----------------------------
DROP TABLE IF EXISTS `tb_reader`;
CREATE TABLE `tb_reader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `vocation` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `paperType` varchar(10) DEFAULT NULL,
  `paperNO` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `remark` text,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='读者表';

-- ----------------------------
--  Records of `tb_reader`
-- ----------------------------
BEGIN;
INSERT INTO `tb_reader` VALUES ('4', '阿库么你作', '女', '004', null, null, '学生证', '004', '1', null, null, null, null, '1'), ('5', '阿库么你作', '女', '005', null, null, '学生证', '005', '1', null, null, null, null, '1'), ('6', '勒古么子作', '女', '006', null, null, '学生证', '006', '1', null, null, null, null, '1'), ('7', '勒古么比惹', '男', '007', null, null, '学生证', '007', '1', null, null, null, null, '1'), ('8', '沙成才', '男', '008', null, null, '学生证', '008', '1', null, null, null, null, '1'), ('9', '约则古日', '男', '009', null, null, '学生证', '009', '1', null, null, null, null, '1'), ('10', '吉俉么而作', '女', '0010', null, null, '学生证', '0010', '1', null, null, null, null, '1'), ('11', '古木子过', '女', '0011', null, null, '学生证', '0011', '1', null, null, null, null, '1'), ('12', '哈马日作', '女', '0012', null, null, '学生证', '0012', '1', null, null, null, null, '1'), ('13', '曲木么科外', '女', '0013', null, null, '学生证', '0013', '1', null, null, null, null, '1'), ('14', '吉俉么力作', '女', '0014', null, null, '学生证', '0014', '1', null, null, null, null, '1'), ('15', '吉尔么惹火', '女', '0015', null, null, '学生证', '0015', '1', null, null, null, null, '1'), ('16', '赤赫尔布', '男', '0016', null, null, '学生证', '0016', '1', null, null, null, null, '1'), ('17', '子聪', '男', '0017', null, null, '学生证', '0017', '1', null, null, null, null, '1'), ('18', '日色', '男', '0018', null, null, '学生证', '0018', '1', null, null, null, null, '1'), ('19', '史聪', '男', '0019', null, null, '学生证', '0019', '1', null, null, null, null, '1'), ('20', '啦夫', '男', '0020', null, null, '学生证', '0020', '1', null, null, null, null, '1'), ('21', '惹拉', '女', '0021', null, null, '学生证', '0021', '1', null, null, null, null, '1'), ('22', '龙杰', '男', '0022', null, null, '学生证', '0022', '1', null, null, null, null, '1'), ('23', '拉尔', '男', '0023', null, null, '学生证', '0023', '1', null, null, null, null, '1'), ('24', '生么', '女', '0024', null, null, '学生证', '0024', '1', null, null, null, null, '1'), ('25', '比拉', '男', '0025', null, null, '学生证', '0025', '1', null, null, null, null, '1'), ('26', '沙做', '女', '0026', null, null, '学生证', '0026', '1', null, null, null, null, '1'), ('27', '生杰', '男', '0027', null, null, '学生证', '0027', '1', null, null, null, null, '1'), ('28', '比各', '女', '0028', null, null, '学生证', '0028', '1', null, null, null, null, '1'), ('29', '惹作', '女', '0029', null, null, '学生证', '0029', '1', null, null, null, null, '1'), ('30', '子作', '女', '0030', null, null, '学生证', '0030', '2', null, null, null, null, '1'), ('31', '而吉', '男', '0031', null, null, '学生证', '0031', '2', null, null, null, null, '1'), ('32', '有鬼', '男', '0032', null, null, '学生证', '0032', '2', null, null, null, null, '1'), ('33', '次子', '男', '0033', null, null, '学生证', '0033', '2', null, null, null, null, '1'), ('34', '子沙', '男', '0034', null, null, '学生证', '0034', '1', null, null, null, null, '1'), ('35', '而曲', '男', '0035', null, null, '学生证', '0035', '2', null, null, null, null, '1'), ('36', '次杰', '男', '0036', null, null, '学生证', '0036', '2', null, null, null, null, '1'), ('37', '惹子', '女', '0037', null, null, '学生证', '0037', '2', null, null, null, null, '1'), ('38', '拉作', '女', '0038', null, null, '学生证', '0038', '2', null, null, null, null, '1'), ('39', '日内', '女', '0039', null, null, '学生证', '0039', '2', null, null, null, null, '1'), ('40', '子外', '女', '0040', null, null, '学生证', '0040', '2', null, null, null, null, '1'), ('41', '拉呷', '男', '0041', null, null, '学生证', '0041', '2', null, null, null, null, '1'), ('42', '立杆', '女', '0042', null, null, '学生证', '0042', '2', null, null, null, null, '1'), ('43', '文杰', '男', '0043', null, null, '学生证', '0043', '2', null, null, null, null, '1'), ('44', '拉体', '男', '0044', null, null, '学生证', '0044', '2', null, null, null, null, '1'), ('45', '子歪', '女', '0045', null, null, '学生证', '0045', '2', null, null, null, null, '1'), ('46', '而作', '女', '0046', null, null, '学生证', '0046', '2', null, null, null, null, '1'), ('47', '子扎', '女', '0047', null, null, '学生证', '0047', '2', null, null, null, null, '1'), ('48', '吉尔', '男', '0048', null, null, '学生证', '0048', '2', null, null, null, null, '1'), ('49', '小英', '女', '0049', null, null, '学生证', '0049', '1', null, null, null, null, '1'), ('50', '日夫', '男', '0050', null, null, '学生证', '0050', '2', null, null, null, null, '1'), ('51', '小方', '男', '0051', null, null, '学生证', '0051', '1', null, null, null, null, '1'), ('52', '惹各', '女', '0052', null, null, '学生证', '0052', '2', null, null, null, null, '1'), ('53', '小三', '男', '0053', null, null, '学生证', '0053', '3', null, null, null, null, '1'), ('54', '扯鬼', '男', '0054', null, null, '学生证', '0054', '3', null, null, null, null, '1'), ('55', '你干', '男', '0055', null, null, '学生证', '0055', '3', null, null, null, null, '1'), ('56', '木星', '男', '0056', null, null, '学生证', '0056', '3', null, null, null, null, '1'), ('57', '木日', '男', '0057', null, null, '学生证', '0057', '3', null, null, null, null, '1'), ('58', '有而', '男', '0058', null, null, '学生证', '0058', '3', null, null, null, null, '1'), ('59', '次华', '男', '0059', null, null, '学生证', '0059', '3', null, null, null, null, '1'), ('60', '龙其', '男', '0060', null, null, '学生证', '0060', '3', null, null, null, null, '1'), ('61', '而鬼', '男', '0061', null, null, '学生证', '0061', '3', null, null, null, null, '1'), ('62', '小杰', '男', '0062', null, null, '学生证', '0062', '3', null, null, null, null, '1'), ('63', '五鬼', '男', '0063', null, null, '学生证', '0063', '3', null, null, null, null, '1'), ('64', '你王', '女', '0064', null, null, '学生证', '0064', '3', null, null, null, null, '1'), ('65', '小花', '女', '0065', null, null, '学生证', '0065', '3', null, null, null, null, '1'), ('66', '日扎', '女', '0066', null, null, '学生证', '0066', '3', null, null, null, null, '1'), ('67', '有个', '女', '0067', null, null, '学生证', '0067', '3', null, null, null, null, '1'), ('68', '百花', '女', '0068', null, null, '学生证', '0068', '3', null, null, null, null, '1'), ('69', '小明', '女', '0069', null, null, '学生证', '0069', '3', null, null, null, null, '1'), ('70', '科外', '女', '0070', null, null, '学生证', '0070', '3', null, null, null, null, '1'), ('71', '史扎', '女', '0071', null, null, '学生证', '0071', '3', null, null, null, null, '1'), ('72', '土拉', '男', '0072', null, null, '学生证', '0072', '4', null, null, null, null, '1'), ('73', '日呷', '男', '0073', null, null, '学生证', '0073', '4', null, null, null, null, '1'), ('74', '依华', '男', '0074', null, null, '学生证', '0074', '4', null, null, null, null, '1'), ('75', '日鬼', '男', '0075', null, null, '学生证', '0075', '4', null, null, null, null, '1'), ('76', '色吾', '男', '0076', null, null, '学生证', '0076', '4', null, null, null, null, '1'), ('77', '子呷', '男', '0077', null, null, '学生证', '0077', '4', null, null, null, null, '1'), ('78', '有合', '女', '0078', null, null, '学生证', '0078', '4', null, null, null, null, '1'), ('79', '阿木', '女', '0079', null, null, '学生证', '0079', '4', null, null, null, null, '1'), ('80', '日干', '女', '0080', null, null, '学生证', '0080', '4', null, null, null, null, '1'), ('81', '比和', '女', '0081', null, null, '学生证', '0081', '4', null, null, null, null, '1'), ('82', '惹合', '女', '0082', null, null, '学生证', '0082', '4', null, null, null, null, '1'), ('83', '你火', '女', '0083', null, null, '学生证', '0083', '4', null, null, null, null, '1'), ('84', '有合', '男', '0084', null, null, '学生证', '0084', '5', null, null, null, null, '1'), ('85', '日布', '男', '0085', null, null, '学生证', '0085', '5', null, null, null, null, '1'), ('86', '尔日', '男', '0086', null, null, '学生证', '0086', '5', null, null, null, null, '1'), ('87', '吾鬼', '男', '0087', null, null, '学生证', '0087', '5', null, null, null, null, '1'), ('88', '小安', '男', '0088', null, null, '学生证', '0088', '5', null, null, null, null, '1'), ('89', '有聪', '男', '0089', null, null, '学生证', '0089', '5', null, null, null, null, '1'), ('90', '尔牛', '女', '0090', null, null, '学生证', '0090', '5', null, null, null, null, '1'), ('91', '日扎', '女', '0091', null, null, '学生证', '0091', '5', null, null, null, null, '1'), ('92', '子外', '女', '0092', null, null, '学生证', '0092', '5', null, null, null, null, '1'), ('93', '子洛', '女', '0093', null, null, '学生证', '0093', '5', null, null, null, null, '1'), ('94', '惹呷', '女', '0094', null, null, '学生证', '0094', '5', null, null, null, null, '1'), ('95', '子作', '女', '0095', null, null, '学生证', '0095', '5', null, null, null, null, '1'), ('96', '史呷', '男', '0096', null, null, '学生证', '0096', '5', null, null, null, null, '1'), ('97', '而聪', '男', '0097', null, null, '学生证', '0097', '5', null, null, null, null, '1'), ('98', '王罗', '男', '0098', null, null, '学生证', '0098', '5', null, null, null, null, '1'), ('99', '日和', '男', '0099', null, null, '学生证', '0099', '5', null, null, null, null, '1'), ('100', '子鬼', '男', '00100', null, null, '学生证', '00100', '5', null, null, null, null, '1'), ('101', '惹合', '女', '00101', null, null, '学生证', '00101', '5', null, null, null, null, '1'), ('102', '惹作', '女', '00102', null, null, '学生证', '00102', '5', null, null, null, null, '1'), ('103', '惹洛', '女', '00103', null, null, '学生证', '00103', '5', null, null, null, null, '1'), ('104', '里各', '女', '00104', null, null, '学生证', '00104', '5', null, null, null, null, '1'), ('105', '而黑', '男', '00105', null, null, '学生证', '00105', '5', null, null, null, null, '1'), ('106', '日聪', '男', '00106', null, null, '学生证', '00106', '5', null, null, null, null, '1'), ('107', '日而', '男', '00107', null, null, '学生证', '00107', '5', null, null, null, null, '1'), ('108', '小成', '男', '00108', null, null, '学生证', '00108', '5', null, null, null, null, '1'), ('109', '有呷', '男', '00109', null, null, '学生证', '00109', '5', null, null, null, null, '1'), ('110', '车合', '女', '00110', null, null, '学生证', '00110', '5', null, null, null, null, '1');
COMMIT;

-- ----------------------------
--  Table structure for `tb_readertype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_readertype`;
CREATE TABLE `tb_readertype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='读者类型表';

-- ----------------------------
--  Records of `tb_readertype`
-- ----------------------------
BEGIN;
INSERT INTO `tb_readertype` VALUES ('1', '学生', '3'), ('2', '教师', '4'), ('3', '其他人员', '3');
COMMIT;

-- ----------------------------
--  Procedure structure for `new_procedure`
-- ----------------------------
DROP PROCEDURE IF EXISTS `new_procedure`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`()
BEGIN
	declare v_finished integer default 0;
	declare v_barcode,v_paperNO varchar(100) default '';
    declare v_id integer default 0;
    
	declare reader_cursor cursor for select id from db_shlib.tb_reader;
    declare continue handler for not found set v_finished =1;
    open reader_cursor;

	loop_single:Loop
    fetch reader_cursor into v_id;
    select v_id;
    if v_finished = 1 then
    leave loop_single;
    end if;
UPDATE db_shlib.tb_reader 
SET 
    barcode = CONCAT('00', id),
    paperNO = CONCAT('00', id)
WHERE
    id = v_id;
    end loop loop_single;
close reader_cursor;



END
 ;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
