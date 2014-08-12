/*
Navicat MySQL Data Transfer

Source Server         : mysql_root
Source Server Version : 50619
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2014-08-12 22:00:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `base_fields`
-- ----------------------------
DROP TABLE IF EXISTS `base_fields`;
CREATE TABLE `base_fields` (
  `FIELD_ID` varchar(255) DEFAULT NULL,
  `FIELD` varchar(255) DEFAULT NULL,
  `FIELD_NAME` varchar(255) DEFAULT NULL,
  `VALUE_FIELD` varchar(255) DEFAULT NULL,
  `DISPLAY_FIELD` varchar(255) DEFAULT NULL,
  `ENABLED` decimal(10,0) DEFAULT NULL,
  `SORT` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `base_modules`
-- ----------------------------
DROP TABLE IF EXISTS `base_modules`;
CREATE TABLE `base_modules` (
  `MODULE_ID` decimal(10,0) DEFAULT NULL,
  `MODULE_NAME` varchar(255) DEFAULT NULL,
  `MODULE_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` decimal(10,0) DEFAULT NULL,
  `LEAF` decimal(10,0) DEFAULT NULL,
  `EXPANDED` decimal(10,0) DEFAULT NULL,
  `DISPLAY_INDEX` decimal(10,0) DEFAULT NULL,
  `IS_DISPLAY` decimal(10,0) DEFAULT NULL,
  `EN_MODULE_NAME` varchar(255) DEFAULT NULL,
  `ICON_CSS` varchar(255) DEFAULT NULL,
  `INFORMATION` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_modules
-- ----------------------------

-- ----------------------------
-- Table structure for `base_role_module`
-- ----------------------------
DROP TABLE IF EXISTS `base_role_module`;
CREATE TABLE `base_role_module` (
  `ROLE_MODULE_ID` decimal(10,0) DEFAULT NULL,
  `ROLE_ID` varchar(255) DEFAULT NULL,
  `MODULE_ID` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_role_module
-- ----------------------------

-- ----------------------------
-- Table structure for `base_roles`
-- ----------------------------
DROP TABLE IF EXISTS `base_roles`;
CREATE TABLE `base_roles` (
  `ROLE_ID` varchar(255) DEFAULT NULL,
  `ROLE_NAME` varchar(255) DEFAULT NULL,
  `ROLE_DESC` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_roles
-- ----------------------------

-- ----------------------------
-- Table structure for `base_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `base_user_role`;
CREATE TABLE `base_user_role` (
  `USER_ROLE_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for `base_users`
-- ----------------------------
DROP TABLE IF EXISTS `base_users`;
CREATE TABLE `base_users` (
  `USER_ID` varchar(255) DEFAULT NULL,
  `ACCOUNT` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `REAL_NAME` varchar(255) DEFAULT NULL,
  `SEX` decimal(10,0) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE` varchar(255) DEFAULT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `ERROR_COUNT` decimal(10,0) DEFAULT NULL,
  `LAST_LOGIN_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `LAST_LOGIN_IP` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_users
-- ----------------------------
INSERT INTO `base_users` VALUES ('111111', '111111', '207493c0e09c00a079b4cfba32a79602', null, null, null, null, null, '0', '2014-08-12 21:50:21', '127.0.0.1', null);
