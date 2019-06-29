/*
Navicat MySQL Data Transfer

Source Server         : 192.168.75.128
Source Server Version : 50644
Source Host           : 192.168.75.128:3306
Source Database       : demo1

Target Server Type    : MYSQL
Target Server Version : 50644
File Encoding         : 65001

Date: 2019-06-29 17:56:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------

-- ----------------------------
-- Table structure for t_logger
-- ----------------------------
DROP TABLE IF EXISTS `t_logger`;
CREATE TABLE `t_logger` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(64) NOT NULL,
  `unit_id` varchar(32) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `content` varchar(1024) NOT NULL,
  `create_time` varchar(30) NOT NULL,
  `app_name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_logger
-- ----------------------------
INSERT INTO `t_logger` VALUES ('1', '2ebb061be6c537', '0443daeec94e20f3838daad7c7fc14fe', 'Transaction', 'business code error', '2019-06-26 16:16:01 916', 'txlcn-demo-spring-service-a:12011');
INSERT INTO `t_logger` VALUES ('2', '2ebb7bc216c537', '0443daeec94e20f3838daad7c7fc14fe', 'Transaction', 'business code error', '2019-06-26 16:24:02 091', 'txlcn-demo-spring-service-a:12011');
INSERT INTO `t_logger` VALUES ('3', '2ebbb1ba96d537', '0443daeec94e20f3838daad7c7fc14fe', 'Transaction', 'business code error', '2019-06-26 16:28:01 289', 'txlcn-demo-spring-service-a:12011');
INSERT INTO `t_logger` VALUES ('4', '2ebbf9a986d537', '0443daeec94e20f3838daad7c7fc14fe', 'Transaction', 'business code error', '2019-06-26 16:32:56 246', 'txlcn-demo-spring-service-a:12011');
INSERT INTO `t_logger` VALUES ('5', '2ebd9bff82537', '0443daeec94e20f3838daad7c7fc14fe', 'Transaction', 'business code error', '2019-06-26 17:01:10 846', 'txlcn-demo-spring-service-a:12011');
INSERT INTO `t_logger` VALUES ('6', 'non', 'non', '2f5dab8c02537', '8e30827dd1239f2df1d00315c63e36fe', '2019-06-28 15:38:31 202', 'demo1:8009');
INSERT INTO `t_logger` VALUES ('7', 'non', 'non', '2f5dcc1002537', '8e30827dd1239f2df1d00315c63e36fe', '2019-06-28 15:40:58 249', 'demo1:8009');
INSERT INTO `t_logger` VALUES ('8', '2fae87005e537', '8e30827dd1239f2df1d00315c63e36fe', 'Transaction', 'business code error', '2019-06-29 15:11:34 196', 'demo1:8009');
INSERT INTO `t_logger` VALUES ('9', '2fae9181be537', '8e30827dd1239f2df1d00315c63e36fe', 'Transaction', 'business code error', '2019-06-29 15:12:33 583', 'demo1:8009');
INSERT INTO `t_logger` VALUES ('10', '2faf6eb7712537', '8e30827dd1239f2df1d00315c63e36fe', 'Transaction', 'business code error', '2019-06-29 15:27:23 857', 'demo1:8009');
INSERT INTO `t_logger` VALUES ('11', '2fafe037f11537', '8e30827dd1239f2df1d00315c63e36fe', 'Transaction', 'business code error', '2019-06-29 15:35:25 053', 'demo1:8009');
INSERT INTO `t_logger` VALUES ('12', '2fb01da6c16537', '8e30827dd1239f2df1d00315c63e36fe', 'Transaction', 'business code error', '2019-06-29 15:39:37 486', 'demo1:8009');
INSERT INTO `t_logger` VALUES ('13', '2fb0632f715537', '8e30827dd1239f2df1d00315c63e36fe', 'Transaction', 'business code error', '2019-06-29 15:44:04 536', 'demo1:8009');
INSERT INTO `t_logger` VALUES ('14', '2fb0c31a11a537', '8e30827dd1239f2df1d00315c63e36fe', 'Transaction', 'business code error', '2019-06-29 15:50:37 946', 'demo1:8009');
INSERT INTO `t_logger` VALUES ('15', '2fb0eb61f1b537', '8e30827dd1239f2df1d00315c63e36fe', 'Transaction', 'business code error', '2019-06-29 15:53:21 197', 'demo1:8009');
INSERT INTO `t_logger` VALUES ('16', '2fb10383c1b537', '8e30827dd1239f2df1d00315c63e36fe', 'Transaction', 'business code error', '2019-06-29 15:55:01 410', 'demo1:8009');
