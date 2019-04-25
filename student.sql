/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2019-04-25 15:25:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `birDate` varchar(255) DEFAULT NULL,
  `gender` int(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2', '12341234', '412341', '412341');
INSERT INTO `student` VALUES ('3', '2314123', '12341234', '12332451');
INSERT INTO `student` VALUES ('4', '132421', '32412', '23141234');
INSERT INTO `student` VALUES ('5', '23141', '321412', '3241');
INSERT INTO `student` VALUES ('6', '324122314', '321412231', '412124');
INSERT INTO `student` VALUES ('7', '12341', '314231', '431245');
INSERT INTO `student` VALUES ('8', '12341', '314231', '431245');
INSERT INTO `student` VALUES ('9', '869', '8790', '324');
