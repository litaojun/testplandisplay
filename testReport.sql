/*
Navicat MySQL Data Transfer

Source Server         : uop-dev
Source Server Version : 50717
Source Host           : uop-dev-wx.cmcutmukkzyn.rds.cn-north-1.amazonaws.com.cn:3306
Source Database       : ltjtest

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-04-28 14:29:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `test_case_record`
-- ----------------------------
DROP TABLE IF EXISTS `test_case_record`;
CREATE TABLE `test_case_record` (
  `classname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `interfacename` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `testcaseid` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `testpoint` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `plan_id` int(10) DEFAULT NULL,
  `result_sign` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL,
  `errordes` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `plan_id` (`plan_id`),
  CONSTRAINT `plan_id` FOREIGN KEY (`plan_id`) REFERENCES `test_plan` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of test_case_record
-- ----------------------------

-- ----------------------------
-- Table structure for `test_plan`
-- ----------------------------
DROP TABLE IF EXISTS `test_plan`;
CREATE TABLE `test_plan` (
  `plantime` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `projectname` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



-- ----------------------------
-- Table structure for `test_run_config`
-- ----------------------------
DROP TABLE IF EXISTS `test_run_config`;
CREATE TABLE `test_run_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `projectname` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `runtype` int(2) NOT NULL,
  `runcmd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of test_run_config
-- ----------------------------
INSERT INTO `test_run_config` VALUES ('1', 'steam���ӽ���', '1', 'run.sh');

-- ----------------------------
-- Table structure for `test_run_process`
-- ----------------------------
DROP TABLE IF EXISTS `test_run_process`;
CREATE TABLE `test_run_process` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `starttime` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `endtime` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `projectname` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of test_run_process
-- ----------------------------
