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
