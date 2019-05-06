/*
 Navicat Premium Data Transfer

 Source Server         : King
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : financing

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 06/05/2019 09:34:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for payin
-- ----------------------------
DROP TABLE IF EXISTS `payin`;
CREATE TABLE `payin`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `payInName` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `payInMoney` double(7, 2) DEFAULT NULL,
  `payInDate` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for payout
-- ----------------------------
DROP TABLE IF EXISTS `payout`;
CREATE TABLE `payout`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `payOutName` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `payOutMoney` double(7, 2) DEFAULT NULL,
  `payOutDate` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payout
-- ----------------------------
INSERT INTO `payout` VALUES (1, '吃早餐12', 2.60, '2019-01-10', 52);
INSERT INTO `payout` VALUES (3, '购物', 208.30, '2019-01-09', 50);
INSERT INTO `payout` VALUES (4, '吃晚饭', 12.00, '2009-08-27', 50);
INSERT INTO `payout` VALUES (16, '吃中饭', 34.00, '2009-01-10', 50);
INSERT INTO `payout` VALUES (17, '吃中饭', 25.00, '2019-01-10', 50);
INSERT INTO `payout` VALUES (18, '吃中饭', 23.00, '2019-01-10', 50);
INSERT INTO `payout` VALUES (19, '吃中饭', 34.00, '2019-01-10', 50);
INSERT INTO `payout` VALUES (20, '吃中饭', 23.00, '2019-01-11', 50);
INSERT INTO `payout` VALUES (21, '吃中饭', 25.00, '2019-01-10', 50);
INSERT INTO `payout` VALUES (22, '吃中饭', 23.00, '2019-01-10', 50);
INSERT INTO `payout` VALUES (23, '吃中饭', 23.00, '2019-01-12', 50);
INSERT INTO `payout` VALUES (24, '吃盒饭', 14.00, '2019-01-30', 50);
INSERT INTO `payout` VALUES (25, '吃盒饭', 12.00, '2019-01-12', 50);
INSERT INTO `payout` VALUES (26, '吃盒饭', 12.00, '2019-01-12', 50);
INSERT INTO `payout` VALUES (27, '吃盒饭', 12.00, '2019-01-12', 50);
INSERT INTO `payout` VALUES (28, '吃盒饭', 12.00, '2019-01-12', 50);
INSERT INTO `payout` VALUES (29, '吃中饭', 23.00, '2019-01-10', 52);
INSERT INTO `payout` VALUES (31, '吃中饭', 23.00, '2019-01-10', 52);
INSERT INTO `payout` VALUES (32, '吃晚饭', 23.00, '2019-01-10', 52);
INSERT INTO `payout` VALUES (33, '吃晚饭', 23.00, '2019-01-10', 52);
INSERT INTO `payout` VALUES (34, '吃晚饭', 23.00, '2019-01-10', 52);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `quanxian` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'xiaolu', '123', 0);
INSERT INTO `user` VALUES (2, 'admin', 'admin', 1);
INSERT INTO `user` VALUES (3, 'james', '12345', NULL);

SET FOREIGN_KEY_CHECKS = 1;
