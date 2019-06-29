/*
Navicat MySQL Data Transfer

Source Server         : 192.168.75.128
Source Server Version : 50644
Source Host           : 192.168.75.128:3306
Source Database       : demo2

Target Server Type    : MYSQL
Target Server Version : 50644
File Encoding         : 65001

Date: 2019-06-29 17:56:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for t_logger
-- ----------------------------
DROP TABLE IF EXISTS `t_logger`;
CREATE TABLE `t_logger` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `unit_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `app_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_logger
-- ----------------------------
INSERT INTO `t_logger` VALUES ('1', '2faf6eb7712537', '63861ab62c3ec363bc3427ef234d10bc', 'Transaction', 'business code error', '2019-06-29 15:27:23 720', 'demo2:8087');
INSERT INTO `t_logger` VALUES ('2', '2faf8542412537', '63861ab62c3ec363bc3427ef234d10bc', 'Transaction', 'business code error', '2019-06-29 15:29:10 012', 'demo2:8087');
INSERT INTO `t_logger` VALUES ('3', '2fafe037f11537', '63861ab62c3ec363bc3427ef234d10bc', 'Transaction', 'business code error', '2019-06-29 15:35:24 929', 'demo2:8087');
INSERT INTO `t_logger` VALUES ('4', '2fb01da6c16537', '63861ab62c3ec363bc3427ef234d10bc', 'Transaction', 'business code error', '2019-06-29 15:39:37 281', 'demo2:8087');
INSERT INTO `t_logger` VALUES ('5', '2fb02c1de16537', '63861ab62c3ec363bc3427ef234d10bc', 'Transaction', 'business code error', '2019-06-29 15:40:35 038', 'demo2:8087');
INSERT INTO `t_logger` VALUES ('6', '2fb0632f715537', '63861ab62c3ec363bc3427ef234d10bc', 'Transaction', 'business code error', '2019-06-29 15:44:04 526', 'demo2:8087');
INSERT INTO `t_logger` VALUES ('7', '2fb0c31a11a537', '63861ab62c3ec363bc3427ef234d10bc', 'Transaction', 'business code error', '2019-06-29 15:50:37 916', 'demo2:8087');
INSERT INTO `t_logger` VALUES ('8', '2fb0eb61f1b537', '63861ab62c3ec363bc3427ef234d10bc', 'Transaction', 'business code error', '2019-06-29 15:53:21 165', 'demo2:8087');
