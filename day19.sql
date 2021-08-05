/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : day19

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2021-08-05 09:41:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(16) NOT NULL,
  `ugender` varchar(8) DEFAULT NULL,
  `uage` int(11) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `uqq` varchar(32) DEFAULT NULL,
  `uemail` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `user_address_fk` (`address`),
  CONSTRAINT `user_address_fk` FOREIGN KEY (`address`) REFERENCES `user_address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张三', '男', '12', '1', '13768282404', null);
INSERT INTO `user` VALUES ('2', '李四', '女', '22', '2', '2145213975', null);
INSERT INTO `user` VALUES ('3', '王五', '男', '18', '3', null, 'wang@163.com');
INSERT INTO `user` VALUES ('4', '牛六', '女', '9', '4', null, 'niu@163.com');
INSERT INTO `user` VALUES ('5', '赵七', '男', '34', '5', '5466313587', null);
INSERT INTO `user` VALUES ('6', '张三', '男', '12', '1', '13768282404', null);
INSERT INTO `user` VALUES ('7', '李四', '女', '22', '2', '2145213975', null);
INSERT INTO `user` VALUES ('8', '王五', '男', '18', '3', null, 'wang@163.com');
INSERT INTO `user` VALUES ('9', '牛六', '女', '9', '4', null, 'niu@163.com');
INSERT INTO `user` VALUES ('10', '赵七', '男', '34', '5', '5466313587', null);
INSERT INTO `user` VALUES ('11', '张三', '男', '12', '1', '13768282404', null);
INSERT INTO `user` VALUES ('12', '李四', '女', '22', '2', '2145213975', null);
INSERT INTO `user` VALUES ('13', '王五', '男', '18', '3', null, 'wang@163.com');
INSERT INTO `user` VALUES ('14', '牛六', '女', '9', '4', null, 'niu@163.com');
INSERT INTO `user` VALUES ('15', '赵七', '男', '34', '5', '5466313587', null);
INSERT INTO `user` VALUES ('16', '张三', '男', '12', '1', '13768282404', null);
INSERT INTO `user` VALUES ('17', '李四', '女', '22', '2', '2145213975', null);
INSERT INTO `user` VALUES ('18', '王五', '男', '18', '3', null, 'wang@163.com');
INSERT INTO `user` VALUES ('19', '牛六', '女', '9', '4', null, 'niu@163.com');
INSERT INTO `user` VALUES ('20', '赵七', '男', '34', '5', '5466313587', null);
INSERT INTO `user` VALUES ('21', '张三', '男', '12', '1', '13768282404', null);
INSERT INTO `user` VALUES ('22', '李四', '女', '22', '2', '2145213975', null);
INSERT INTO `user` VALUES ('23', '王五', '男', '18', '3', null, 'wang@163.com');
INSERT INTO `user` VALUES ('24', '牛六', '女', '9', '4', null, 'niu@163.com');
INSERT INTO `user` VALUES ('25', '赵七', '男', '34', '5', '5466313587', null);
INSERT INTO `user` VALUES ('26', '张三', '男', '12', '1', '13768282404', null);
INSERT INTO `user` VALUES ('27', '李四', '女', '22', '2', '2145213975', null);
INSERT INTO `user` VALUES ('28', '王五', '男', '18', '3', null, 'wang@163.com');
INSERT INTO `user` VALUES ('29', '牛六', '女', '9', '4', null, 'niu@163.com');
INSERT INTO `user` VALUES ('30', '赵七', '男', '34', '5', '5466313587', null);
INSERT INTO `user` VALUES ('31', '张三', '男', '12', '1', '13768282404', null);
INSERT INTO `user` VALUES ('32', '李四', '女', '22', '2', '2145213975', null);
INSERT INTO `user` VALUES ('33', '王五', '男', '18', '3', null, 'wang@163.com');
INSERT INTO `user` VALUES ('34', '牛六', '女', '9', '4', null, 'niu@163.com');
INSERT INTO `user` VALUES ('35', '赵七', '男', '34', '5', '5466313587', null);
INSERT INTO `user` VALUES ('36', '张三', '男', '12', '1', '13768282404', null);
INSERT INTO `user` VALUES ('37', '李四', '女', '22', '2', '2145213975', null);
INSERT INTO `user` VALUES ('38', '王五', '男', '18', '3', null, 'wang@163.com');
INSERT INTO `user` VALUES ('39', '牛六', '女', '9', '4', null, 'niu@163.com');
INSERT INTO `user` VALUES ('40', '赵七', '男', '34', '5', '5466313587', null);
INSERT INTO `user` VALUES ('41', '张三', '男', '12', '1', '13768282404', null);
INSERT INTO `user` VALUES ('42', '李四', '女', '22', '2', '2145213975', null);
INSERT INTO `user` VALUES ('43', '王五', '男', '18', '3', null, 'wang@163.com');
INSERT INTO `user` VALUES ('44', '牛六', '女', '9', '4', null, 'niu@163.com');
INSERT INTO `user` VALUES ('45', '赵七', '男', '34', '5', '5466313587', null);
INSERT INTO `user` VALUES ('46', '张三', '男', '12', '1', '13768282404', null);
INSERT INTO `user` VALUES ('47', '李四', '女', '22', '2', '2145213975', null);
INSERT INTO `user` VALUES ('48', '王五', '男', '18', '3', null, 'wang@163.com');
INSERT INTO `user` VALUES ('49', '牛六', '女', '9', '4', null, 'niu@163.com');
INSERT INTO `user` VALUES ('50', '赵七', '男', '34', '5', '5466313587', null);
INSERT INTO `user` VALUES ('51', '张三', '男', '12', '1', '13768282404', null);
INSERT INTO `user` VALUES ('52', '李四', '女', '22', '2', '2145213975', null);
INSERT INTO `user` VALUES ('55', '赵七', '男', '34', '5', '5466313587', null);
INSERT INTO `user` VALUES ('60', '赵七', '男', '34', '5', '5466313587', null);
INSERT INTO `user` VALUES ('61', '伟大的不可战胜的自然之王', '男', '66', '1', '123456789', 'WANG@163.com');
INSERT INTO `user` VALUES ('62', '伟大的不可战胜的自然之王', '男', '99', '10', '12345678', 'WANG@163.com');
INSERT INTO `user` VALUES ('63', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('64', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('65', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('66', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('67', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('68', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('69', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('70', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('71', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('72', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('73', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('74', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('75', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('76', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('77', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('78', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('79', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('80', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('81', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('82', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('83', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('84', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('85', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('86', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('87', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('88', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('89', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('90', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('91', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('92', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('93', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('94', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('95', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('96', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('97', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('98', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('99', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('100', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('101', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('102', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('103', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('104', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('105', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('106', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('107', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('108', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('109', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('110', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('111', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('112', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('113', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('114', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('115', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('116', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('117', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('118', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('119', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('120', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('121', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('122', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('123', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('124', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('125', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('126', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('127', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('128', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('129', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('130', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('131', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('132', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('133', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('134', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('135', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('136', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('137', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('138', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('139', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('140', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('141', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('142', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('143', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('144', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('145', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('146', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('147', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('148', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('149', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('150', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('151', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('152', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('153', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('154', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('155', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('156', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('157', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('158', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('159', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('160', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('161', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('162', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('163', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('164', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('165', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('166', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('167', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('168', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('169', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('170', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('171', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('172', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('173', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('174', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('175', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('176', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('177', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('178', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('179', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('180', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('181', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('182', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('183', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('184', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('185', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('186', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('187', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('188', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('189', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('190', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('191', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('192', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('193', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('194', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('195', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('196', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('197', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('198', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('199', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('200', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('201', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('202', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('203', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('204', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('205', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('206', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');
INSERT INTO `user` VALUES ('207', '第五轻柔', '男', '36', '9', '31252143', 'wu@163.com');
INSERT INTO `user` VALUES ('208', '楚阳', '男', '36', '7', '31252143', 'chuyang@163.com');
INSERT INTO `user` VALUES ('209', '莫轻舞', '女', '14', '11', '31252143', 'mowu@163.com');
INSERT INTO `user` VALUES ('210', '正义', '女', '18', '8', '31252143', 'zengyi@163.com');
INSERT INTO `user` VALUES ('211', '倒吊人', '男', '36', '12', '31252143', 'daodiao@163.com');
INSERT INTO `user` VALUES ('212', '太阳', '男', '36', '2', '31252143', 'taiyang@163.com');

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES ('1', '北京');
INSERT INTO `user_address` VALUES ('2', '上海');
INSERT INTO `user_address` VALUES ('3', '广东');
INSERT INTO `user_address` VALUES ('4', '四川');
INSERT INTO `user_address` VALUES ('5', '天津');
INSERT INTO `user_address` VALUES ('6', '河南');
INSERT INTO `user_address` VALUES ('7', '河北');
INSERT INTO `user_address` VALUES ('8', '浙江');
INSERT INTO `user_address` VALUES ('9', '江苏');
INSERT INTO `user_address` VALUES ('10', '广西');
INSERT INTO `user_address` VALUES ('11', '湖南');
INSERT INTO `user_address` VALUES ('12', '云南');

-- ----------------------------
-- Table structure for user_date
-- ----------------------------
DROP TABLE IF EXISTS `user_date`;
CREATE TABLE `user_date` (
  `did` int(11) NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`did`),
  UNIQUE KEY `username` (`username`),
  CONSTRAINT `user_date_fk` FOREIGN KEY (`did`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_date
-- ----------------------------
INSERT INTO `user_date` VALUES ('1', 'zhangsan', '123456');
INSERT INTO `user_date` VALUES ('2', 'lisi', '123');
INSERT INTO `user_date` VALUES ('3', 'wangwu', '123');
INSERT INTO `user_date` VALUES ('4', 'niuliu', '123');
INSERT INTO `user_date` VALUES ('5', 'zhaoqi', '123456');
INSERT INTO `user_date` VALUES ('6', 'zhangsan2', '123456');
