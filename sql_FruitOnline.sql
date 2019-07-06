/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.104_33061
Source Server Version : 50722
Source Host           : 192.168.0.104:3306
Source Database       : duck_test

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-06-26 16:27:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bill_info
-- ----------------------------
DROP TABLE IF EXISTS `bill_info`;
CREATE TABLE `bill_info` (
`bill_id`  int(20) NOT NULL ,
`user_id`  int(20) NOT NULL ,
`bill_value`  decimal(8,2) NOT NULL ,
`bill_address`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`bill_time`  date NOT NULL ,
`send_time`  date NULL DEFAULT NULL ,
`get_time`  date NULL DEFAULT NULL ,
PRIMARY KEY (`bill_id`),
FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FAK_ID` (`user_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of bill_info
-- ----------------------------
BEGIN;
INSERT INTO `bill_info` VALUES ('1', '6', '16.00', '南开大学津南校区5D宿舍116', '2018-08-30', '2018-08-30', '2018-08-30'), ('2', '4', '19.00', '南开大学津南校区5D宿舍116', '2018-08-30', '2018-08-30', '2018-08-30'), ('4', '6', '16.00', '南开大学津南校区5D宿舍116', '2018-08-30', '2018-08-30', '2018-08-30'), ('5', '5', '18.00', '南开大学津南校区5D宿舍116', '2018-08-30', '2018-08-30', '2018-08-30'), ('6', '4', '19.00', '南开大学津南校区5D宿舍116', '2018-08-30', '2018-08-30', '2018-08-30'), ('7', '5', '14.00', '南开大学津南校区5D宿舍116', '2018-08-30', '2018-08-30', '2018-08-30'), ('8', '6', '15.00', '南开大学津南校区5D宿舍116', '2018-08-30', '2018-08-30', '2018-08-30'), ('9', '6', '16.00', '南开大学津南校区5D宿舍116', '2018-08-30', '2018-08-30', '2018-08-30');
COMMIT;

-- ----------------------------
-- Table structure for bill_list
-- ----------------------------
DROP TABLE IF EXISTS `bill_list`;
CREATE TABLE `bill_list` (
`user_id`  int(20) NOT NULL ,
`user_state`  int(11) NOT NULL ,
`bill_state`  int(11) NOT NULL ,
PRIMARY KEY (`user_id`),
FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of bill_list
-- ----------------------------
BEGIN;
INSERT INTO `bill_list` VALUES ('4', '2', '1'), ('5', '2', '1'), ('6', '2', '1'), ('7', '2', '1');
COMMIT;

-- ----------------------------
-- Table structure for bill_pro
-- ----------------------------
DROP TABLE IF EXISTS `bill_pro`;
CREATE TABLE `bill_pro` (
`pro_id`  int(20) NOT NULL AUTO_INCREMENT ,
`user_id`  int(20) NOT NULL ,
`bill_id`  int(20) NOT NULL ,
`amount`  decimal(8,2) NOT NULL ,
`pro_price`  decimal(8,2) NOT NULL ,
`pro_value`  decimal(8,2) NOT NULL ,
`pro_name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`pro_id`),
FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`bill_id`) REFERENCES `bill_info` (`bill_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `Fok_ID` (`bill_id`) USING BTREE ,
INDEX `FDDK_ID` (`user_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of bill_pro
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cart_info
-- ----------------------------
DROP TABLE IF EXISTS `cart_info`;
CREATE TABLE `cart_info` (
`cart_id`  int(20) NOT NULL AUTO_INCREMENT ,
`user_id`  int(20) NOT NULL ,
`cart_value`  decimal(20,2) NULL DEFAULT NULL ,
PRIMARY KEY (`cart_id`),
FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FHK_ID` (`user_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=11

;

-- ----------------------------
-- Records of cart_info
-- ----------------------------
BEGIN;
INSERT INTO `cart_info` VALUES ('1', '1', '3.50'), ('2', '3', '34.50'), ('3', '4', '33.50'), ('4', '1', '39.50'), ('5', '1', '38.50'), ('6', '1', '5.50'), ('9', '1', '51.50'), ('10', '1', '13.50');
COMMIT;

-- ----------------------------
-- Table structure for cart_pro
-- ----------------------------
DROP TABLE IF EXISTS `cart_pro`;
CREATE TABLE `cart_pro` (
`user_id`  int(20) NOT NULL ,
`pro_id`  int(20) NOT NULL AUTO_INCREMENT ,
`cart_id`  int(20) NOT NULL ,
`amount`  decimal(8,2) NOT NULL ,
`pro_price`  decimal(8,2) NOT NULL ,
`pro_value`  decimal(8,2) NOT NULL ,
`pro_name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`pro_info`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`pro_image`  varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`pro_id`),
FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`cart_id`) REFERENCES `cart_info` (`cart_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FJK_ID` (`user_id`) USING BTREE ,
INDEX `FKE_ID` (`cart_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=117

;

-- ----------------------------
-- Records of cart_pro
-- ----------------------------
BEGIN;
INSERT INTO `cart_pro` VALUES ('1', '105', '1', '1.00', '4.05', '4.05', 'apple', 'Apple', 'images/product/06.jpg'), ('1', '116', '1', '1.00', '3.20', '3.20', 'salad', 'Salad', 'images/product/01.jpg');
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
`pro_buyin`  decimal(20,2) NULL DEFAULT NULL ,
`pro_soldout`  decimal(20,2) NULL DEFAULT NULL ,
`pro_id`  int(20) NOT NULL AUTO_INCREMENT ,
`pro_likey`  int(20) NOT NULL ,
`total_amount`  decimal(8,2) NULL DEFAULT NULL ,
`pro_info`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`pro_price`  decimal(8,2) NOT NULL ,
`pro_name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`pro_image`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`pro_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=125

;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` VALUES ('0.00', '0.00', '0', '0', '10000.00', 'Salad', '3.20', 'salad', 'images/product/01.jpg'), ('0.00', '0.00', '101', '0', '10000.00', 'Onion', '3.20', 'onion', 'images/product/02.jpg'), ('0.00', '0.00', '102', '0', '10000.00', 'Bean', '3.50', 'bean', 'images/product/03.jpg'), ('0.00', '0.00', '103', '0', '10000.00', 'Lemon', '1.08', 'lemon', 'images/product/04.jpg'), ('0.00', '0.00', '104', '0', '10000.00', 'Spinach', '2.26', 'spinach', 'images/product/05.jpg'), ('0.00', '0.00', '105', '0', '10000.00', 'Apple', '4.05', 'apple', 'images/product/06.jpg'), ('0.00', '0.00', '106', '0', '10000.00', 'Broccoli', '3.88', 'broccoli', 'images/product/07.jpg'), ('0.00', '0.00', '107', '0', '10000.00', 'Brasil', '1.55', 'brasil', 'images/product/08.jpg'), ('0.00', '0.00', '108', '0', '10000.00', 'Pear', '4.80', 'pear', 'images/product/09.jpg'), ('0.00', '0.00', '122', '0', '10000.00', 'Tomato', '2.32', 'tomato', 'images/product/010.jpg'), ('0.00', '0.00', '123', '0', '10000.00', 'Bittermelon', '5.20', 'bittermelon', 'images/product/011.jpg'), ('0.00', '0.00', '124', '0', '10000.00', 'Cucumber', '3.45', 'cucumber', 'images/product/012.jpg');
COMMIT;

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
`user_id`  int(20) NOT NULL ,
`pro_id`  int(20) NOT NULL ,
`nickname`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`review`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`review_time`  date NOT NULL ,
`review_id`  int(20) NOT NULL AUTO_INCREMENT ,
PRIMARY KEY (`review_id`),
FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FFK_ID` (`user_id`) USING BTREE ,
INDEX `FGK_ID` (`pro_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of review
-- ----------------------------
BEGIN;
INSERT INTO `review` VALUES ('1', '105', 'Mark Hunt', 'This is an apple', '2018-08-25', '1'), ('2', '105', null, 'This is an apple', '2018-08-31', '2');
COMMIT;

-- ----------------------------
-- Table structure for user_addr
-- ----------------------------
DROP TABLE IF EXISTS `user_addr`;
CREATE TABLE `user_addr` (
`user_id`  int(20) NOT NULL ,
`address_id`  int(20) NOT NULL ,
`address`  varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`phone`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`user_name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`address_id`),
FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FDK_ID` (`user_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of user_addr
-- ----------------------------
BEGIN;
INSERT INTO `user_addr` VALUES ('1', '1', 'TianJinTianJinNanKaiNankai Uni', '1822236666', 'liusunhe'), ('38', '38', 'TianJinTianJinNanKaihahah', '123', 'guoweiRealName'), ('39', '39', 'BeiJingBeiJingNanKai222222', '123', 'bo'), ('41', '41', 'TianJinTianJinHePingNKU', '182233', 'liusunhe'), ('42', '42', 'TianJinTianJinNanKaitest', '123', 'test');
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
`user_id`  int(20) NOT NULL AUTO_INCREMENT ,
`user_account`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user_pwd`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user_gender`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user_phone`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user_address`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user_name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user_birth`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user_photo`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user_nickname`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user_email`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user_age`  int(20) NULL DEFAULT NULL ,
PRIMARY KEY (`user_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=44

;

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES ('1', '111@mail.com', '1111', 'male', '182223', null, '&#21016;&#23385;&#21644;', '199811', null, 'lsunkok', '123@mail.com', null), ('2', '222@mail.com', '222', null, null, null, null, null, null, null, null, null), ('3', 'hahahha@mail.com', '333', null, null, null, null, null, null, null, null, null), ('4', '333@mail.com', '111', null, null, null, null, null, null, null, null, null), ('5', '333@mail.com', '111', null, null, null, null, null, null, null, null, null), ('6', null, null, null, '13559461312', null, 'linchen', null, null, null, '384984001@qq.com', null), ('7', null, null, null, '13559461312', null, 'linchen', null, null, null, '384984001@qq.com', null), ('35', null, null, null, '13559461312', null, 'linchen', null, null, null, '384984001@qq.com', null), ('38', 'test1@mail.com', '222', 'female', '123', null, 'guoweiRealName', '199811', null, 'guowei', '123@mail.com', null), ('39', 'test2@mail.com', '2222', 'male', '123', null, 'zhangbo', '199811', null, 'bo', '123@mail.com', null), ('40', 'test3@mail.com', '1111', null, null, null, null, null, null, null, null, null), ('41', 'test4@mail.com', 'fizp1872', 'male', '123', null, 'realname', '200011', null, 'nickname', '123@mail.com', null), ('42', 'test5@mail.com', '1111', null, null, null, null, null, null, null, null, null), ('43', 'test6@mail.com', 'fizp1872', null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
-- Table structure for user_security
-- ----------------------------
DROP TABLE IF EXISTS `user_security`;
CREATE TABLE `user_security` (
`user_id`  int(20) NOT NULL ,
`sec_id`  int(50) NOT NULL ,
`sec_question`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`sec_answer`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`suspension`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`sec_question2`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`sec_answer2`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`sec_id`),
FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FSK_ID` (`user_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of user_security
-- ----------------------------
BEGIN;
INSERT INTO `user_security` VALUES ('1', '1', 'What is your favorite color?', 'RED', null, 'Where is your home?', 'ZH'), ('39', '39', 'What is your favorite color?', 'red', null, 'Where is your home?', 'mars'), ('41', '41', 'What is your favorite color?', 'RED', null, 'Where is your home?', 'ZhuHai'), ('1', '42', 'What is your favorite color?', 'red', null, 'Where is your home?', 'mars'), ('3', '43', 'What is your favorite color?', 'red', null, 'Where is your home?', 'mars'), ('4', '44', 'What is your favorite color?', 'red', null, 'Where is your home?', 'mars');
COMMIT;

-- ----------------------------
-- Table structure for wish_list
-- ----------------------------
DROP TABLE IF EXISTS `wish_list`;
CREATE TABLE `wish_list` (
`user_id`  int(20) NULL DEFAULT NULL ,
`wish_id`  int(20) NOT NULL AUTO_INCREMENT ,
`wish_value`  decimal(8,2) NULL DEFAULT NULL ,
PRIMARY KEY (`wish_id`),
FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FLK_ID` (`user_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of wish_list
-- ----------------------------
BEGIN;
INSERT INTO `wish_list` VALUES ('1', '1', null);
COMMIT;

-- ----------------------------
-- Table structure for wish_pro
-- ----------------------------
DROP TABLE IF EXISTS `wish_pro`;
CREATE TABLE `wish_pro` (
`user_id`  int(20) NOT NULL ,
`pro_id`  int(20) NOT NULL AUTO_INCREMENT ,
`wish_id`  int(20) NOT NULL ,
`amount`  decimal(8,2) NOT NULL ,
`pro_name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`pro_value`  decimal(8,2) NOT NULL ,
`pro_price`  decimal(8,2) NOT NULL ,
`pro_info`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`pro_image`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`pro_id`),
FOREIGN KEY (`wish_id`) REFERENCES `wish_list` (`wish_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FKQ_ID` (`wish_id`) USING BTREE ,
INDEX `FKW_ID` (`user_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=116

;

-- ----------------------------
-- Records of wish_pro
-- ----------------------------
BEGIN;
INSERT INTO `wish_pro` VALUES ('1', '105', '1', '1.00', 'apple', '4.05', '4.05', 'Apple', 'images/product/06.jpg'), ('1', '115', '1', '1.00', 'salad', '3.20', '3.20', 'Salad', 'images/product/01.jpg');
COMMIT;

-- ----------------------------
-- Auto increment value for bill_pro
-- ----------------------------
ALTER TABLE `bill_pro` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for cart_info
-- ----------------------------
ALTER TABLE `cart_info` AUTO_INCREMENT=11;

-- ----------------------------
-- Auto increment value for cart_pro
-- ----------------------------
ALTER TABLE `cart_pro` AUTO_INCREMENT=117;

-- ----------------------------
-- Auto increment value for product
-- ----------------------------
ALTER TABLE `product` AUTO_INCREMENT=125;

-- ----------------------------
-- Auto increment value for review
-- ----------------------------
ALTER TABLE `review` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for user_info
-- ----------------------------
ALTER TABLE `user_info` AUTO_INCREMENT=44;

-- ----------------------------
-- Auto increment value for wish_list
-- ----------------------------
ALTER TABLE `wish_list` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for wish_pro
-- ----------------------------
ALTER TABLE `wish_pro` AUTO_INCREMENT=116;
