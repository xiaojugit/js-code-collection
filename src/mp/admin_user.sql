/*
 Navicat Premium Data Transfer

 Source Server         : 47.97.90.246
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : 127.0.0.1:3306
 Source Schema         : 90249

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 23/04/2020 09:04:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `SEX` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '性别',
  `TELEPHONE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `RANK` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人员职级',
  `CARD_NO` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `STATE` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `PASSWORD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `AVATAR` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像URL',
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES (1, 'system', '2', '15927446025', '1', '420986199403107899', '1', '$2a$10$2oi7CQlKW.D3rjR1SbIHWetnn8VwvxrtIJReZNYuGU7DOIcmZRGf2', 'http://www.baidu.com', '2019-12-14 10:55:17', '王大陆');

-- ----------------------------
-- Table structure for article_manage
-- ----------------------------
DROP TABLE IF EXISTS `article_manage`;
CREATE TABLE `article_manage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `is_use` tinyint(2) NULL DEFAULT NULL COMMENT '0表示使用，1表示删除',
  `summary` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '概述',
  `style_type` int(2) NULL DEFAULT NULL COMMENT '2,大图，1，小图',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_manage
-- ----------------------------
INSERT INTO `article_manage` VALUES (7, '春季清洗保养活动正在进行', 'http://xiaoshanlongxin.com/admin/images/20200318/20200318090506.png', '<p>疫情无情、人有情肺炎病毒给我们生活，工作带来了极大的不便。复工开始了你办公室的空调经过冬季的使用，也吸收的大量的细菌和灰尘。为了感恩回馈新老客户的厚爱和支持，公司对萧山范围内办公、居家中央空调清洗活动现在开始所有清洗按8折收费，需要的朋友可以联系82584680或82173359进行咨询。活动还在进行中，每天前五名打进电话要求清洗的家庭用户享受6折优惠。</p>', '2020-03-18 09:07:32', NULL, 0, '本次折扣时间至2020年6月1日结束每天前5名线上报修享受6折优惠', 2);
INSERT INTO `article_manage` VALUES (8, '公司简介', 'http://xiaoshanlongxin.com/admin/images/20200328/20200328170756.png', '<h2><span style=\"font-weight: bold;\">杭州萧山隆鑫家电成立于2014年,又于2018年成立了杭州佳徳暖通工程有限公司主营美的中央空调、美的家用空气能、美的商用中央热水、大金中央空调，.日立中央空调安装、维修清洗保养等业务。公司有专业技术人员4人、空调专业安装人员12人，空调专业维修人员10人。本单位本着顾客第一的服务宗旨，客户满意100分的服务目标，为广大家庭商业中央空调客户的安装、维修、维护提供了专业优质的服务。是杭州美的暖通设备销售有限公司，青岛日立海信中央空调营销股份有限公司授权的专业安装、维修服务中心。2015年成为青岛日立海信中央空调营销股份有限公司授权的指定服务商，2016年成为美的中央空调指定统一安装网点。和杭州萧山多家经销商及代理商提供安装、维护、维修一条龙服务公司真诚期待你的合作，服务电话0571-82584680,0571-82173359服务监督电话1333615932</span></h2>', '2020-03-28 17:27:11', NULL, 0, '杭州萧山隆鑫专业中央空调，中央热水是萧山区美的，日立中央空调指定的专业售后服务网点', 2);

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典code',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典翻译',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属字典类别',
  `type_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类别名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES (1, '0', '家电维修', '1', '维修类别');
INSERT INTO `dict` VALUES (2, '1', '家电清洗', '1', '维修类别');
INSERT INTO `dict` VALUES (3, '2', '家电拆装', '1', '维修类别');
INSERT INTO `dict` VALUES (4, '0', '生活服务', '2', '服务类别');

-- ----------------------------
-- Table structure for litemall_user
-- ----------------------------
DROP TABLE IF EXISTS `litemall_user`;
CREATE TABLE `litemall_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名称',
  `password` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户密码',
  `gender` tinyint(3) NOT NULL DEFAULT 0 COMMENT '性别：0 未知， 1男， 1 女',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT '最近一次登录时间',
  `last_login_ip` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最近一次登录IP地址',
  `user_level` tinyint(3) NULL DEFAULT 0 COMMENT '0 普通用户，1 VIP用户，2 高级VIP用户',
  `nickname` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称或网络名称',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户手机号码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户头像图片',
  `weixin_openid` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '微信登录openid',
  `session_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '微信登录会话KEY',
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0 可用, 1 禁用, 2 注销',
  `add_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of litemall_user
-- ----------------------------
INSERT INTO `litemall_user` VALUES (1, 'zhourui', '$2a$10$6OEzV7mz2NHeOZgN9718t.GI.9pjnEYZbSVYdgk6Q997JO3jwgcAa', 0, NULL, '2019-12-01 14:06:20', '0:0:0:0:0:0:0:1', 0, 'zhourui', '15927446024', 'https://yanxuan.nosdn.127.net/80841d741d7fa3073e0ae27bf487339f.jpg?imageView&quality=90&thumbnail=64x64', '', '', 0, '2019-11-27 14:55:04', '2019-12-01 14:06:20', 0);
INSERT INTO `litemall_user` VALUES (2, 'oc-dd5ciwYLkBtZyINu5CLvlFyGk', 'oc-dd5ciwYLkBtZyINu5CLvlFyGk', 0, NULL, '2020-04-06 21:17:58', '172.16.22.102', 0, '', '', '', 'oc-dd5ciwYLkBtZyINu5CLvlFyGk', 'kfc3rPr1H//tUx+TRp72qA==', 0, '2020-03-07 15:30:32', '2020-04-06 21:17:58', 0);
INSERT INTO `litemall_user` VALUES (3, 'oc-dd5QjrjfOAAjxswnTXZ6M0d08', 'oc-dd5QjrjfOAAjxswnTXZ6M0d08', 0, NULL, '2020-03-07 15:43:51', '172.16.22.102', 0, '', '', '', 'oc-dd5QjrjfOAAjxswnTXZ6M0d08', 'N0+Inp3auoy+dtWqqKwf0w==', 0, '2020-03-07 15:43:51', '2020-03-07 15:43:51', 0);
INSERT INTO `litemall_user` VALUES (4, 'oc-dd5dl7yjQWYtGdLFgcoqGpL8s', 'oc-dd5dl7yjQWYtGdLFgcoqGpL8s', 0, NULL, '2020-03-07 15:43:51', '172.16.22.102', 0, '', '', '', 'oc-dd5dl7yjQWYtGdLFgcoqGpL8s', 'daq3/hAeEgj6CAiIUGhpuQ==', 0, '2020-03-07 15:43:51', '2020-03-07 15:43:51', 0);
INSERT INTO `litemall_user` VALUES (5, 'oc-dd5az6b9ETDPLFSJcEtutZleI', 'oc-dd5az6b9ETDPLFSJcEtutZleI', 0, NULL, '2020-03-31 20:08:29', '172.16.22.102', 0, '', '', '', 'oc-dd5az6b9ETDPLFSJcEtutZleI', 'YY165LMbGI7688kPHUkJ/A==', 0, '2020-03-07 18:17:11', '2020-03-31 20:08:29', 0);
INSERT INTO `litemall_user` VALUES (6, 'oc-dd5aI627QdhCH5JsDB9_eoxqQ', 'oc-dd5aI627QdhCH5JsDB9_eoxqQ', 0, NULL, '2020-03-17 12:44:21', '172.16.22.102', 0, '', '', '', 'oc-dd5aI627QdhCH5JsDB9_eoxqQ', 'kiS3rRoNBQd8POGHv2aCvA==', 0, '2020-03-17 12:44:21', '2020-03-17 12:44:21', 0);
INSERT INTO `litemall_user` VALUES (7, 'oc-dd5cNr1-OF-lKO2SmjbBuZin0', 'oc-dd5cNr1-OF-lKO2SmjbBuZin0', 0, NULL, '2020-03-17 12:44:21', '172.16.22.102', 0, '', '', '', 'oc-dd5cNr1-OF-lKO2SmjbBuZin0', 'AUHe7vQ19NnDlvjgwOdvaA==', 0, '2020-03-17 12:44:21', '2020-03-17 12:44:21', 0);
INSERT INTO `litemall_user` VALUES (8, 'oc-dd5ZWO89PKBGLuBH9O3idb2wc', 'oc-dd5ZWO89PKBGLuBH9O3idb2wc', 0, NULL, '2020-03-17 15:06:01', '172.16.22.102', 0, '', '', '', 'oc-dd5ZWO89PKBGLuBH9O3idb2wc', 'udOllNxCqvGMJ8hSvzfi3Q==', 0, '2020-03-17 15:06:01', '2020-03-17 15:06:01', 0);
INSERT INTO `litemall_user` VALUES (9, 'oc-dd5QPFAwDKFAA5QYwd1vAdaAA', 'oc-dd5QPFAwDKFAA5QYwd1vAdaAA', 0, NULL, '2020-04-18 07:47:20', '172.16.22.102', 0, '', '', '', 'oc-dd5QPFAwDKFAA5QYwd1vAdaAA', 'ZI2eEXY0bqnmWasTQnKeSw==', 0, '2020-03-17 18:24:15', '2020-04-18 07:47:20', 0);
INSERT INTO `litemall_user` VALUES (10, 'oc-dd5QZVIHmXp3_qJAqL7qrlcek', 'oc-dd5QZVIHmXp3_qJAqL7qrlcek', 0, NULL, '2020-03-18 07:31:43', '172.16.22.102', 0, '', '', '', 'oc-dd5QZVIHmXp3_qJAqL7qrlcek', '3xTlTPozJ41PBg/zyIVSZg==', 0, '2020-03-18 07:31:43', '2020-03-18 07:31:43', 0);
INSERT INTO `litemall_user` VALUES (11, 'oc-dd5aCiXv6DNb50tyyPyBcqvsY', 'oc-dd5aCiXv6DNb50tyyPyBcqvsY', 0, NULL, '2020-03-18 10:16:01', '172.16.22.102', 0, '', '', '', 'oc-dd5aCiXv6DNb50tyyPyBcqvsY', '1FVK4LEdolzNZdAWlstokw==', 0, '2020-03-18 10:16:01', '2020-03-18 10:16:01', 0);
INSERT INTO `litemall_user` VALUES (12, 'oc-dd5Z2RNEC_imutRM9Ui_oKeZY', 'oc-dd5Z2RNEC_imutRM9Ui_oKeZY', 0, NULL, '2020-03-18 10:24:02', '172.16.22.102', 0, '', '', '', 'oc-dd5Z2RNEC_imutRM9Ui_oKeZY', 'GhrtDxJ99PcpT7g+nWCSbA==', 0, '2020-03-18 10:24:02', '2020-03-18 10:24:02', 0);
INSERT INTO `litemall_user` VALUES (13, 'oc-dd5THQwDDv5eGnJujutYMeA8M', 'oc-dd5THQwDDv5eGnJujutYMeA8M', 0, NULL, '2020-03-18 14:07:45', '172.16.22.102', 0, '', '', '', 'oc-dd5THQwDDv5eGnJujutYMeA8M', 'yc1pNauSPUaYTnlvIhte4A==', 0, '2020-03-18 14:07:45', '2020-03-18 14:07:45', 0);
INSERT INTO `litemall_user` VALUES (14, 'oc-dd5XORoBlZO6nBYCtCpd6pIZk', 'oc-dd5XORoBlZO6nBYCtCpd6pIZk', 0, NULL, '2020-03-21 03:54:50', '172.16.22.102', 0, '', '', '', 'oc-dd5XORoBlZO6nBYCtCpd6pIZk', 'tWrZUgmp6xUZPMBNUZ5TIw==', 0, '2020-03-21 03:54:50', '2020-03-21 03:54:50', 0);
INSERT INTO `litemall_user` VALUES (15, 'oc-dd5cX_dS4p1VMvnB3rQN23XuQ', 'oc-dd5cX_dS4p1VMvnB3rQN23XuQ', 0, NULL, '2020-03-22 14:20:04', '172.16.22.102', 0, '', '', '', 'oc-dd5cX_dS4p1VMvnB3rQN23XuQ', 'hWdt/5+TA+rmo9E4yy6SFg==', 0, '2020-03-22 14:20:04', '2020-03-22 14:20:04', 0);
INSERT INTO `litemall_user` VALUES (16, 'oc-dd5cdKMDLJjTpHNeiOL328aO0', 'oc-dd5cdKMDLJjTpHNeiOL328aO0', 0, NULL, '2020-03-23 00:06:43', '172.16.22.102', 0, '', '', '', 'oc-dd5cdKMDLJjTpHNeiOL328aO0', '/FyTkZj29GtQGR4Mmnu1vw==', 0, '2020-03-23 00:06:43', '2020-03-23 00:06:43', 0);
INSERT INTO `litemall_user` VALUES (17, 'oc-dd5WsjEZDQ0DxUWFVsIuDI2eg', 'oc-dd5WsjEZDQ0DxUWFVsIuDI2eg', 0, NULL, '2020-04-02 19:33:59', '172.16.22.102', 0, '', '', '', 'oc-dd5WsjEZDQ0DxUWFVsIuDI2eg', 'QHOcTe2mnKENMRgxa9ipkw==', 0, '2020-03-28 09:46:03', '2020-04-02 19:33:59', 0);
INSERT INTO `litemall_user` VALUES (18, 'oc-dd5VEXp3dCPFQEtFVSjd1-L3o', 'oc-dd5VEXp3dCPFQEtFVSjd1-L3o', 0, NULL, '2020-03-28 18:51:26', '172.16.22.102', 0, '', '', '', 'oc-dd5VEXp3dCPFQEtFVSjd1-L3o', '6W315DQaMt9avzByYJxwXQ==', 0, '2020-03-28 18:51:26', '2020-03-28 18:51:26', 0);
INSERT INTO `litemall_user` VALUES (19, 'oc-dd5ZFCY431u1n0SSDxQDXBNMA', 'oc-dd5ZFCY431u1n0SSDxQDXBNMA', 0, NULL, '2020-03-30 14:44:18', '172.16.22.102', 0, '', '', '', 'oc-dd5ZFCY431u1n0SSDxQDXBNMA', 'zCIMAuy5Vh36e2IXQGnpuA==', 0, '2020-03-30 14:44:19', '2020-03-30 14:44:19', 0);
INSERT INTO `litemall_user` VALUES (20, 'oc-dd5X-Zfstl99pbnOirlUBbAsU', 'oc-dd5X-Zfstl99pbnOirlUBbAsU', 0, NULL, '2020-03-30 21:30:19', '172.16.22.102', 0, '', '', '', 'oc-dd5X-Zfstl99pbnOirlUBbAsU', 'mtXa2OB5p+BlK/+XdmdZmg==', 0, '2020-03-30 21:30:19', '2020-03-30 21:30:19', 0);
INSERT INTO `litemall_user` VALUES (21, 'oc-dd5e-JBrL-5jOLkh5_9D9hcDs', 'oc-dd5e-JBrL-5jOLkh5_9D9hcDs', 0, NULL, '2020-03-30 21:30:19', '172.16.22.102', 0, '', '', '', 'oc-dd5e-JBrL-5jOLkh5_9D9hcDs', 'CUM2mJpSe2NuFLSjpSmLOA==', 0, '2020-03-30 21:30:19', '2020-03-30 21:30:19', 0);
INSERT INTO `litemall_user` VALUES (22, 'oc-dd5XQ57j6cwSqwiV8BcZGqvII', 'oc-dd5XQ57j6cwSqwiV8BcZGqvII', 0, NULL, '2020-03-30 22:19:51', '172.16.22.102', 0, '', '', '', 'oc-dd5XQ57j6cwSqwiV8BcZGqvII', 'nkJ1CmbnYsYLA4emdAQrMA==', 0, '2020-03-30 22:19:51', '2020-03-30 22:19:51', 0);
INSERT INTO `litemall_user` VALUES (23, 'oc-dd5SzUqquIWJKDr0M563eNK8Q', 'oc-dd5SzUqquIWJKDr0M563eNK8Q', 0, NULL, '2020-03-31 11:40:25', '172.16.22.102', 0, '', '', '', 'oc-dd5SzUqquIWJKDr0M563eNK8Q', 'ZDZviUuUpEquc+koKqV/UA==', 0, '2020-03-31 11:40:25', '2020-03-31 11:40:25', 0);
INSERT INTO `litemall_user` VALUES (24, 'oc-dd5VrbgEOYkW1mKSF8inoZZQg', 'oc-dd5VrbgEOYkW1mKSF8inoZZQg', 0, NULL, '2020-04-01 17:18:35', '172.16.22.102', 0, '', '', '', 'oc-dd5VrbgEOYkW1mKSF8inoZZQg', '9ZTbu9PtA4vcE8/1qAlB+Q==', 0, '2020-04-01 17:18:35', '2020-04-01 17:18:35', 0);
INSERT INTO `litemall_user` VALUES (25, 'oc-dd5c2nEoCmlSBD2SgkcsF9AiE', 'oc-dd5c2nEoCmlSBD2SgkcsF9AiE', 0, NULL, '2020-04-05 00:12:22', '172.16.22.102', 0, '', '', '', 'oc-dd5c2nEoCmlSBD2SgkcsF9AiE', 'szU/75vk8uSe7rNr5D81yw==', 0, '2020-04-05 00:12:22', '2020-04-05 00:12:22', 0);
INSERT INTO `litemall_user` VALUES (26, 'oc-dd5Vxew6HvekpXoavVxilOU_g', 'oc-dd5Vxew6HvekpXoavVxilOU_g', 0, NULL, '2020-04-09 20:49:22', '172.16.22.102', 0, '', '', '', 'oc-dd5Vxew6HvekpXoavVxilOU_g', 'SjUR8N7alBNsBOtjThZvdQ==', 0, '2020-04-05 16:03:51', '2020-04-09 20:49:22', 0);
INSERT INTO `litemall_user` VALUES (27, 'oc-dd5UNlldOMMsJ9BZD8eH9BkBA', 'oc-dd5UNlldOMMsJ9BZD8eH9BkBA', 0, NULL, '2020-04-06 16:06:49', '172.16.22.102', 0, '', '', '', 'oc-dd5UNlldOMMsJ9BZD8eH9BkBA', 'Yq9pVpkkJxcad25wfIaV8A==', 0, '2020-04-06 16:06:49', '2020-04-06 16:06:49', 0);
INSERT INTO `litemall_user` VALUES (28, 'oc-dd5Q5euPJ5gU35ynGrYYUn7uE', 'oc-dd5Q5euPJ5gU35ynGrYYUn7uE', 0, NULL, '2020-04-07 00:18:56', '172.16.22.102', 0, '', '', '', 'oc-dd5Q5euPJ5gU35ynGrYYUn7uE', 'uYi+WqwvualV19tkXhhbgg==', 0, '2020-04-07 00:18:56', '2020-04-07 00:18:56', 0);
INSERT INTO `litemall_user` VALUES (29, 'oc-dd5YO_oRIXRsvR1HbHpdLa-YI', 'oc-dd5YO_oRIXRsvR1HbHpdLa-YI', 0, NULL, '2020-04-07 00:19:13', '172.16.22.102', 0, '', '', '', 'oc-dd5YO_oRIXRsvR1HbHpdLa-YI', 'nItXuggj7J9g2vBt1l3T1A==', 0, '2020-04-07 00:19:13', '2020-04-07 00:19:13', 0);
INSERT INTO `litemall_user` VALUES (30, 'oc-dd5UePs3eRZjTviiT2DX9mH9Q', 'oc-dd5UePs3eRZjTviiT2DX9mH9Q', 0, NULL, '2020-04-07 00:19:17', '172.16.22.102', 0, '', '', '', 'oc-dd5UePs3eRZjTviiT2DX9mH9Q', 'h7ppCHpzBYRVukc0Iol+ug==', 0, '2020-04-07 00:19:17', '2020-04-07 00:19:17', 0);
INSERT INTO `litemall_user` VALUES (31, 'oc-dd5bpnzGEvoe6LgEpGXRUJLuU', 'oc-dd5bpnzGEvoe6LgEpGXRUJLuU', 0, NULL, '2020-04-07 00:19:41', '172.16.22.102', 0, '', '', '', 'oc-dd5bpnzGEvoe6LgEpGXRUJLuU', 'sA/UQlTASSgYHIpYMWWWWQ==', 0, '2020-04-07 00:19:41', '2020-04-07 00:19:41', 0);
INSERT INTO `litemall_user` VALUES (32, 'oc-dd5VaJPzH0wxp_adq5WqYHxE8', 'oc-dd5VaJPzH0wxp_adq5WqYHxE8', 0, NULL, '2020-04-07 00:20:51', '172.16.22.102', 0, '', '', '', 'oc-dd5VaJPzH0wxp_adq5WqYHxE8', '8P/aFZqa0nhNdwuN95Rqkg==', 0, '2020-04-07 00:20:51', '2020-04-07 00:20:51', 0);
INSERT INTO `litemall_user` VALUES (33, 'oc-dd5QZVB3wxJAj1JBQH9IKZdTU', 'oc-dd5QZVB3wxJAj1JBQH9IKZdTU', 0, NULL, '2020-04-07 00:50:40', '172.16.22.102', 0, '', '', '', 'oc-dd5QZVB3wxJAj1JBQH9IKZdTU', 'yhWmEc4OoxQYXZWBApdOKA==', 0, '2020-04-07 00:21:19', '2020-04-07 00:50:40', 0);
INSERT INTO `litemall_user` VALUES (34, 'oc-dd5UrfCKQ3XCrg9r0wvnbypEY', 'oc-dd5UrfCKQ3XCrg9r0wvnbypEY', 0, NULL, '2020-04-07 00:21:52', '172.16.22.102', 0, '', '', '', 'oc-dd5UrfCKQ3XCrg9r0wvnbypEY', '1gEC+pXiax+i1YCrKfFRnw==', 0, '2020-04-07 00:21:52', '2020-04-07 00:21:52', 0);
INSERT INTO `litemall_user` VALUES (35, 'oc-dd5V1iKq_hkPqfm2Vzlcq3qfk', 'oc-dd5V1iKq_hkPqfm2Vzlcq3qfk', 0, NULL, '2020-04-07 00:22:58', '172.16.22.102', 0, '', '', '', 'oc-dd5V1iKq_hkPqfm2Vzlcq3qfk', 'RQcu7+qIhAa/N9MLy7Altg==', 0, '2020-04-07 00:22:58', '2020-04-07 00:22:58', 0);
INSERT INTO `litemall_user` VALUES (36, 'oc-dd5dkelI_TQnTTSshQiWNK-Zw', 'oc-dd5dkelI_TQnTTSshQiWNK-Zw', 0, NULL, '2020-04-07 00:23:26', '172.16.22.102', 0, '', '', '', 'oc-dd5dkelI_TQnTTSshQiWNK-Zw', 'pqhL8xQspNJ898pK0ZY/2Q==', 0, '2020-04-07 00:23:26', '2020-04-07 00:23:26', 0);
INSERT INTO `litemall_user` VALUES (37, 'oc-dd5UMpgrUZUW-7wfvKzSUa3_I', 'oc-dd5UMpgrUZUW-7wfvKzSUa3_I', 0, NULL, '2020-04-07 00:24:57', '172.16.22.102', 0, '', '', '', 'oc-dd5UMpgrUZUW-7wfvKzSUa3_I', 'PToiAy8oa/QxfIkc1I2VPw==', 0, '2020-04-07 00:24:57', '2020-04-07 00:24:57', 0);
INSERT INTO `litemall_user` VALUES (38, 'oc-dd5bwhS-dXRikiCpUSkv5iwWA', 'oc-dd5bwhS-dXRikiCpUSkv5iwWA', 0, NULL, '2020-04-07 00:26:00', '172.16.22.102', 0, '', '', '', 'oc-dd5bwhS-dXRikiCpUSkv5iwWA', 'wzmtCfRTmWZKv4pgA0Xlsg==', 0, '2020-04-07 00:26:00', '2020-04-07 00:26:00', 0);
INSERT INTO `litemall_user` VALUES (39, 'oc-dd5Rc7MwPCjfJi4kRMl-XmzhA', 'oc-dd5Rc7MwPCjfJi4kRMl-XmzhA', 0, NULL, '2020-04-07 00:29:43', '172.16.22.102', 0, '', '', '', 'oc-dd5Rc7MwPCjfJi4kRMl-XmzhA', 'Bf24Wj5TWN4H4tgHe5iR3w==', 0, '2020-04-07 00:29:43', '2020-04-07 00:29:43', 0);
INSERT INTO `litemall_user` VALUES (40, 'oc-dd5RoQBBRZx0_dSofBhE7MEtg', 'oc-dd5RoQBBRZx0_dSofBhE7MEtg', 0, NULL, '2020-04-07 00:31:28', '172.16.22.102', 0, '', '', '', 'oc-dd5RoQBBRZx0_dSofBhE7MEtg', '+un0s8QVZHxmBUbj0URxoQ==', 0, '2020-04-07 00:31:28', '2020-04-07 00:31:28', 0);
INSERT INTO `litemall_user` VALUES (41, 'oc-dd5WparDDmuzDLN--5jxhE29Q', 'oc-dd5WparDDmuzDLN--5jxhE29Q', 0, NULL, '2020-04-07 00:34:47', '172.16.22.102', 0, '', '', '', 'oc-dd5WparDDmuzDLN--5jxhE29Q', 'N8djwNq73P1FZhxtZXEgfg==', 0, '2020-04-07 00:34:08', '2020-04-07 00:34:47', 0);
INSERT INTO `litemall_user` VALUES (42, 'oc-dd5eqbRCj9jA1NpvBdWAdARno', 'oc-dd5eqbRCj9jA1NpvBdWAdARno', 0, NULL, '2020-04-07 00:40:35', '172.16.22.102', 0, '', '', '', 'oc-dd5eqbRCj9jA1NpvBdWAdARno', 'pzG2ZiX8bcRIu1MNyDKRKg==', 0, '2020-04-07 00:40:35', '2020-04-07 00:40:35', 0);
INSERT INTO `litemall_user` VALUES (43, 'oc-dd5YE6kZ7QulSwX_yeXagSejs', 'oc-dd5YE6kZ7QulSwX_yeXagSejs', 0, NULL, '2020-04-08 11:01:08', '172.16.22.102', 0, '', '', '', 'oc-dd5YE6kZ7QulSwX_yeXagSejs', 'tFP+vu54TSpyg585z0TdQg==', 0, '2020-04-08 11:01:08', '2020-04-08 11:01:08', 0);
INSERT INTO `litemall_user` VALUES (44, 'oc-dd5cojnxVE-cCumj7nA-nzIcc', 'oc-dd5cojnxVE-cCumj7nA-nzIcc', 0, NULL, '2020-04-08 11:04:52', '172.16.22.102', 0, '', '', '', 'oc-dd5cojnxVE-cCumj7nA-nzIcc', 'IoiVmubLkKDi9C7v4pa8Xg==', 0, '2020-04-08 11:04:52', '2020-04-08 11:04:52', 0);
INSERT INTO `litemall_user` VALUES (45, 'oc-dd5Ypoxnq0z-3HO0-UXvGLjRc', 'oc-dd5Ypoxnq0z-3HO0-UXvGLjRc', 0, NULL, '2020-04-08 11:49:32', '172.16.22.102', 0, '', '', '', 'oc-dd5Ypoxnq0z-3HO0-UXvGLjRc', 'W9ZmSw2qnjSW67/4+ajEaQ==', 0, '2020-04-08 11:49:32', '2020-04-08 11:49:32', 0);
INSERT INTO `litemall_user` VALUES (46, 'oc-dd5aV8JlMgg0X_AGIF2IENq88', 'oc-dd5aV8JlMgg0X_AGIF2IENq88', 0, NULL, '2020-04-09 08:21:22', '172.16.22.102', 0, '', '', '', 'oc-dd5aV8JlMgg0X_AGIF2IENq88', '8g0ysLDWa+xFF9wRKWX1OQ==', 0, '2020-04-08 12:25:48', '2020-04-09 08:21:22', 0);
INSERT INTO `litemall_user` VALUES (47, 'oc-dd5QVaDTqOmd3UJIILhCjLb4A', 'oc-dd5QVaDTqOmd3UJIILhCjLb4A', 0, NULL, '2020-04-08 12:46:27', '172.16.22.102', 0, '', '', '', 'oc-dd5QVaDTqOmd3UJIILhCjLb4A', 'HmnK+dJMHn7F0kABIyLAqA==', 0, '2020-04-08 12:46:27', '2020-04-08 12:46:27', 0);
INSERT INTO `litemall_user` VALUES (48, 'oc-dd5YwKG7IxlrOpYyoCbc8dod8', 'oc-dd5YwKG7IxlrOpYyoCbc8dod8', 0, NULL, '2020-04-08 12:49:43', '172.16.22.102', 0, '', '', '', 'oc-dd5YwKG7IxlrOpYyoCbc8dod8', 'xP04MdjUp68nn9EZ9thENg==', 0, '2020-04-08 12:49:43', '2020-04-08 12:49:43', 0);
INSERT INTO `litemall_user` VALUES (49, 'oc-dd5UZLu8RKfCEdW_jDQFy1myY', 'oc-dd5UZLu8RKfCEdW_jDQFy1myY', 0, NULL, '2020-04-08 12:54:37', '172.16.22.102', 0, '', '', '', 'oc-dd5UZLu8RKfCEdW_jDQFy1myY', 'eywvVYDd4Dk+G5rUVV04Mg==', 0, '2020-04-08 12:54:31', '2020-04-08 12:54:37', 0);
INSERT INTO `litemall_user` VALUES (50, 'oc-dd5ZChRwdhOKwH04pNpLdJczw', 'oc-dd5ZChRwdhOKwH04pNpLdJczw', 0, NULL, '2020-04-08 13:09:34', '172.16.22.102', 0, '', '', '', 'oc-dd5ZChRwdhOKwH04pNpLdJczw', 'zbRK7jlDjqah/1JpIVFxPQ==', 0, '2020-04-08 12:55:24', '2020-04-08 13:09:34', 0);
INSERT INTO `litemall_user` VALUES (51, 'oc-dd5QpFzc2Urto1KscCygdPwl0', 'oc-dd5QpFzc2Urto1KscCygdPwl0', 0, NULL, '2020-04-08 13:12:16', '172.16.22.102', 0, '', '', '', 'oc-dd5QpFzc2Urto1KscCygdPwl0', '1N32zg1Q5A++quy2hAJXBw==', 0, '2020-04-08 13:12:16', '2020-04-08 13:12:16', 0);
INSERT INTO `litemall_user` VALUES (52, 'oc-dd5cRbU3EpDpYQbkNQjKoIVxg', 'oc-dd5cRbU3EpDpYQbkNQjKoIVxg', 0, NULL, '2020-04-08 15:02:41', '172.16.22.102', 0, '', '', '', 'oc-dd5cRbU3EpDpYQbkNQjKoIVxg', 'XCoZZyyXKs9ZLJljp+flFQ==', 0, '2020-04-08 15:02:41', '2020-04-08 15:02:41', 0);
INSERT INTO `litemall_user` VALUES (53, 'oc-dd5cBqL62YKH_5BxaI-TMMEjA', 'oc-dd5cBqL62YKH_5BxaI-TMMEjA', 0, NULL, '2020-04-10 18:12:44', '172.16.22.102', 0, '', '', '', 'oc-dd5cBqL62YKH_5BxaI-TMMEjA', 'g2EwOf+ih5t0FxSSPrRPmQ==', 0, '2020-04-08 15:15:18', '2020-04-10 18:12:44', 0);
INSERT INTO `litemall_user` VALUES (54, 'oc-dd5Yuxp8qoYuPsWtcdJo7Ieks', 'oc-dd5Yuxp8qoYuPsWtcdJo7Ieks', 0, NULL, '2020-04-08 15:27:07', '172.16.22.102', 0, '', '', '', 'oc-dd5Yuxp8qoYuPsWtcdJo7Ieks', 'NHUK5Mt6GR/EdXtr5zeEUQ==', 0, '2020-04-08 15:27:07', '2020-04-08 15:27:07', 0);
INSERT INTO `litemall_user` VALUES (55, 'oc-dd5Zx2fyaFVf2ZeTe5cu0WBUU', 'oc-dd5Zx2fyaFVf2ZeTe5cu0WBUU', 0, NULL, '2020-04-08 16:10:14', '172.16.22.102', 0, '', '', '', 'oc-dd5Zx2fyaFVf2ZeTe5cu0WBUU', 'MGP/rYRO927cGdaIYzwdwA==', 0, '2020-04-08 16:10:14', '2020-04-08 16:10:14', 0);
INSERT INTO `litemall_user` VALUES (56, 'oc-dd5cAsHqhi3J3WCjFXZpYixL8', 'oc-dd5cAsHqhi3J3WCjFXZpYixL8', 0, NULL, '2020-04-08 16:16:51', '172.16.22.102', 0, '', '', '', 'oc-dd5cAsHqhi3J3WCjFXZpYixL8', '/vDMyGKLGLMcqQsRINeXEw==', 0, '2020-04-08 16:16:51', '2020-04-08 16:16:51', 0);
INSERT INTO `litemall_user` VALUES (57, 'oc-dd5ZNOvav6DRuGUs94nZbmpmk', 'oc-dd5ZNOvav6DRuGUs94nZbmpmk', 0, NULL, '2020-04-12 11:32:49', '172.16.22.102', 0, '', '', '', 'oc-dd5ZNOvav6DRuGUs94nZbmpmk', 'oWMLwsLWMgGzo9+6LwzkEw==', 0, '2020-04-08 18:51:43', '2020-04-12 11:32:49', 0);
INSERT INTO `litemall_user` VALUES (58, 'oc-dd5RwV0s9kivvAyv_M-Am0QTc', 'oc-dd5RwV0s9kivvAyv_M-Am0QTc', 0, NULL, '2020-04-08 19:51:07', '172.16.22.102', 0, '', '', '', 'oc-dd5RwV0s9kivvAyv_M-Am0QTc', 'c4tf5My4OWzOaFNNNsKTmQ==', 0, '2020-04-08 19:51:00', '2020-04-08 19:51:07', 0);
INSERT INTO `litemall_user` VALUES (59, 'oc-dd5RtXApEE_8vmytJGLZQPYxM', 'oc-dd5RtXApEE_8vmytJGLZQPYxM', 0, NULL, '2020-04-09 01:42:48', '172.16.22.102', 0, '', '', '', 'oc-dd5RtXApEE_8vmytJGLZQPYxM', 'n7N0PVDeE3CZwcWJGtazjw==', 0, '2020-04-08 20:10:06', '2020-04-09 01:42:48', 0);
INSERT INTO `litemall_user` VALUES (60, 'oc-dd5cHImbQ8iqZaa7V88PYDyKA', 'oc-dd5cHImbQ8iqZaa7V88PYDyKA', 0, NULL, '2020-04-09 17:02:49', '172.16.22.102', 0, '', '', '', 'oc-dd5cHImbQ8iqZaa7V88PYDyKA', 'Tdy9zPvRxeQsDPKIP8h0BQ==', 0, '2020-04-08 21:05:44', '2020-04-09 17:02:49', 0);
INSERT INTO `litemall_user` VALUES (61, 'oc-dd5fIK40AntgTDBCzeTiJaFXg', 'oc-dd5fIK40AntgTDBCzeTiJaFXg', 0, NULL, '2020-04-08 22:23:26', '172.16.22.102', 0, '', '', '', 'oc-dd5fIK40AntgTDBCzeTiJaFXg', 'DlX2lxF/Ie0P8GBr8dNTwA==', 0, '2020-04-08 22:23:26', '2020-04-08 22:23:26', 0);
INSERT INTO `litemall_user` VALUES (62, 'oc-dd5d3wQj18A41EhyX7j1P-pUM', 'oc-dd5d3wQj18A41EhyX7j1P-pUM', 0, NULL, '2020-04-08 22:48:13', '172.16.22.102', 0, '', '', '', 'oc-dd5d3wQj18A41EhyX7j1P-pUM', '3sRks2lBORdgr+ilF8VKfg==', 0, '2020-04-08 22:48:13', '2020-04-08 22:48:13', 0);
INSERT INTO `litemall_user` VALUES (63, 'oc-dd5TVZLgaWVb-QQCaIaWZS_t8', 'oc-dd5TVZLgaWVb-QQCaIaWZS_t8', 0, NULL, '2020-04-10 13:44:44', '172.16.22.102', 0, '', '', '', 'oc-dd5TVZLgaWVb-QQCaIaWZS_t8', 'pdFjtvLJbmBZSWse0uY/Sg==', 0, '2020-04-08 22:52:16', '2020-04-10 13:44:44', 0);
INSERT INTO `litemall_user` VALUES (64, 'oc-dd5YO2b4sJNW70QU2pover8hg', 'oc-dd5YO2b4sJNW70QU2pover8hg', 0, NULL, '2020-04-08 23:48:35', '172.16.22.102', 0, '', '', '', 'oc-dd5YO2b4sJNW70QU2pover8hg', 'AWA15TMGqHMyfA1EzPo07w==', 0, '2020-04-08 23:29:08', '2020-04-08 23:48:35', 0);
INSERT INTO `litemall_user` VALUES (65, 'oc-dd5cJx99PkdWzEZfXjVEXE5xM', 'oc-dd5cJx99PkdWzEZfXjVEXE5xM', 0, NULL, '2020-04-08 23:36:44', '172.16.22.102', 0, '', '', '', 'oc-dd5cJx99PkdWzEZfXjVEXE5xM', 'KfbSIHIj1gph51fzhPeGbw==', 0, '2020-04-08 23:36:44', '2020-04-08 23:36:44', 0);
INSERT INTO `litemall_user` VALUES (66, 'oc-dd5Vmyj_LkITNz2lev7_kTfio', 'oc-dd5Vmyj_LkITNz2lev7_kTfio', 0, NULL, '2020-04-08 23:50:18', '172.16.22.102', 0, '', '', '', 'oc-dd5Vmyj_LkITNz2lev7_kTfio', 'j0HMP6ft3A5xI3o8VDsNFg==', 0, '2020-04-08 23:50:18', '2020-04-08 23:50:18', 0);
INSERT INTO `litemall_user` VALUES (67, 'oc-dd5SxQoyE4veiNTeL7awU2jsA', 'oc-dd5SxQoyE4veiNTeL7awU2jsA', 0, NULL, '2020-04-09 00:07:40', '172.16.22.102', 0, '', '', '', 'oc-dd5SxQoyE4veiNTeL7awU2jsA', 'HSdyX6yz2fWFxghp9+IBlw==', 0, '2020-04-09 00:07:40', '2020-04-09 00:07:40', 0);
INSERT INTO `litemall_user` VALUES (68, 'oc-dd5dFr_zCz4wgaX3tDDWhAH5Q', 'oc-dd5dFr_zCz4wgaX3tDDWhAH5Q', 0, NULL, '2020-04-09 11:58:05', '172.16.22.102', 0, '', '', '', 'oc-dd5dFr_zCz4wgaX3tDDWhAH5Q', 'X+Mif3xGD9cSSrR7MIedSA==', 0, '2020-04-09 00:28:26', '2020-04-09 11:58:05', 0);
INSERT INTO `litemall_user` VALUES (69, 'oc-dd5au371cNB8YeRbj0HTKLN0Q', 'oc-dd5au371cNB8YeRbj0HTKLN0Q', 0, NULL, '2020-04-09 00:54:16', '172.16.22.102', 0, '', '', '', 'oc-dd5au371cNB8YeRbj0HTKLN0Q', 'MzBdaQzaHBDVPMs2irasLw==', 0, '2020-04-09 00:54:16', '2020-04-09 00:54:16', 0);
INSERT INTO `litemall_user` VALUES (70, 'oc-dd5Vt1z5zwu0i84cOxGUbX8ao', 'oc-dd5Vt1z5zwu0i84cOxGUbX8ao', 0, NULL, '2020-04-10 20:27:09', '172.16.22.102', 0, '', '', '', 'oc-dd5Vt1z5zwu0i84cOxGUbX8ao', 'fgJwr+nFgTXyQtIrNOcGSA==', 0, '2020-04-09 01:48:39', '2020-04-10 20:27:09', 0);
INSERT INTO `litemall_user` VALUES (71, 'oc-dd5a9Olw6Z5DeQ8v73umjGC58', 'oc-dd5a9Olw6Z5DeQ8v73umjGC58', 0, NULL, '2020-04-10 12:20:29', '172.16.22.102', 0, '', '', '', 'oc-dd5a9Olw6Z5DeQ8v73umjGC58', 'YkcKlC2nnTAMHZE9+EtTQw==', 0, '2020-04-09 02:08:37', '2020-04-10 12:20:29', 0);
INSERT INTO `litemall_user` VALUES (72, 'oc-dd5QIOqZNZXUK_rpI9MuBQwtY', 'oc-dd5QIOqZNZXUK_rpI9MuBQwtY', 0, NULL, '2020-04-09 02:20:32', '172.16.22.102', 0, '', '', '', 'oc-dd5QIOqZNZXUK_rpI9MuBQwtY', 'mBXirhOas75GiELt7OHe/g==', 0, '2020-04-09 02:20:32', '2020-04-09 02:20:32', 0);
INSERT INTO `litemall_user` VALUES (73, 'oc-dd5T2LHXti-jaGlKR52WXLh-I', 'oc-dd5T2LHXti-jaGlKR52WXLh-I', 0, NULL, '2020-04-09 03:03:47', '172.16.22.102', 0, '', '', '', 'oc-dd5T2LHXti-jaGlKR52WXLh-I', 'a4PeHiEmphmd9My2SGxfiQ==', 0, '2020-04-09 03:03:41', '2020-04-09 03:03:47', 0);
INSERT INTO `litemall_user` VALUES (74, 'oc-dd5fQf7Yilh9uoE5nntq-aHgA', 'oc-dd5fQf7Yilh9uoE5nntq-aHgA', 0, NULL, '2020-04-09 05:00:56', '172.16.22.102', 0, '', '', '', 'oc-dd5fQf7Yilh9uoE5nntq-aHgA', 'OEgQU9ovEe0Cz043+ZAaOw==', 0, '2020-04-09 05:00:50', '2020-04-09 05:00:56', 0);
INSERT INTO `litemall_user` VALUES (75, 'oc-dd5bf1T5xiC2yZewViLWm4gDs', 'oc-dd5bf1T5xiC2yZewViLWm4gDs', 0, NULL, '2020-04-09 06:24:37', '172.16.22.102', 0, '', '', '', 'oc-dd5bf1T5xiC2yZewViLWm4gDs', 'jPcUHYFfRhiTHceni8G5iw==', 0, '2020-04-09 06:24:31', '2020-04-09 06:24:37', 0);
INSERT INTO `litemall_user` VALUES (76, 'oc-dd5bvdR8AB17mjv2-53hBLx7Q', 'oc-dd5bvdR8AB17mjv2-53hBLx7Q', 0, NULL, '2020-04-09 07:09:13', '172.16.22.102', 0, '', '', '', 'oc-dd5bvdR8AB17mjv2-53hBLx7Q', 'kBz578Sf5TsLwvhvHDlKbg==', 0, '2020-04-09 07:09:13', '2020-04-09 07:09:13', 0);
INSERT INTO `litemall_user` VALUES (77, 'oc-dd5VecqVoM4BJUAk2bZsMlxuA', 'oc-dd5VecqVoM4BJUAk2bZsMlxuA', 0, NULL, '2020-04-09 10:25:35', '172.16.22.102', 0, '', '', '', 'oc-dd5VecqVoM4BJUAk2bZsMlxuA', '8wabwHpTbvPaZDu4Dbw5ZQ==', 0, '2020-04-09 10:25:32', '2020-04-09 10:25:35', 0);
INSERT INTO `litemall_user` VALUES (78, 'oc-dd5Un7UiujIMnClPulSIfVLgw', 'oc-dd5Un7UiujIMnClPulSIfVLgw', 0, NULL, '2020-04-09 10:58:49', '172.16.22.102', 0, '', '', '', 'oc-dd5Un7UiujIMnClPulSIfVLgw', 'mLYe9MEqGdNWMJZuWabcvw==', 0, '2020-04-09 10:58:49', '2020-04-09 10:58:49', 0);
INSERT INTO `litemall_user` VALUES (79, 'oc-dd5cTpFHvhsdyoLmv2_cJ_aHY', 'oc-dd5cTpFHvhsdyoLmv2_cJ_aHY', 0, NULL, '2020-04-09 12:09:18', '172.16.22.102', 0, '', '', '', 'oc-dd5cTpFHvhsdyoLmv2_cJ_aHY', 'yRxTpsJsyG8UMFTHkF2X+g==', 0, '2020-04-09 12:09:18', '2020-04-09 12:09:18', 0);
INSERT INTO `litemall_user` VALUES (80, 'oc-dd5aKLbf3DBmV054QRvAGJvlE', 'oc-dd5aKLbf3DBmV054QRvAGJvlE', 0, NULL, '2020-04-09 12:23:56', '172.16.22.102', 0, '', '', '', 'oc-dd5aKLbf3DBmV054QRvAGJvlE', '/GrOQIXbaVTVh9WkxGxfjg==', 0, '2020-04-09 12:23:56', '2020-04-09 12:23:56', 0);
INSERT INTO `litemall_user` VALUES (81, 'oc-dd5Wf9qCwx1hLjPyCBsFlBhjs', 'oc-dd5Wf9qCwx1hLjPyCBsFlBhjs', 0, NULL, '2020-04-09 18:38:24', '172.16.22.102', 0, '', '', '', 'oc-dd5Wf9qCwx1hLjPyCBsFlBhjs', 'zqNF5M/ZzZvpzsiSzKsb/A==', 0, '2020-04-09 12:45:32', '2020-04-09 18:38:24', 0);
INSERT INTO `litemall_user` VALUES (82, 'oc-dd5fXeL9DJLQBhny-goFPPoYc', 'oc-dd5fXeL9DJLQBhny-goFPPoYc', 0, NULL, '2020-04-09 14:00:30', '172.16.22.102', 0, '', '', '', 'oc-dd5fXeL9DJLQBhny-goFPPoYc', 'ufwCFnaZ7ij6VXuvxH0Biw==', 0, '2020-04-09 14:00:30', '2020-04-09 14:00:30', 0);
INSERT INTO `litemall_user` VALUES (83, 'oc-dd5XQLJyezoy1Ro0WGxxNU8kY', 'oc-dd5XQLJyezoy1Ro0WGxxNU8kY', 0, NULL, '2020-04-09 15:45:09', '172.16.22.102', 0, '', '', '', 'oc-dd5XQLJyezoy1Ro0WGxxNU8kY', 'Mav3BLNykWhF6h3Zq0kb9g==', 0, '2020-04-09 15:45:04', '2020-04-09 15:45:09', 0);
INSERT INTO `litemall_user` VALUES (84, 'oc-dd5Rmr-Hi1py1E83ZuxzXLB5E', 'oc-dd5Rmr-Hi1py1E83ZuxzXLB5E', 0, NULL, '2020-04-09 17:12:16', '172.16.22.102', 0, '', '', '', 'oc-dd5Rmr-Hi1py1E83ZuxzXLB5E', 'Av5W3br8jezSsVhD3t1UzA==', 0, '2020-04-09 17:12:16', '2020-04-09 17:12:16', 0);
INSERT INTO `litemall_user` VALUES (85, 'oc-dd5RkT5PdTVPobiHvgF5vtwqo', 'oc-dd5RkT5PdTVPobiHvgF5vtwqo', 0, NULL, '2020-04-09 17:42:33', '172.16.22.102', 0, '', '', '', 'oc-dd5RkT5PdTVPobiHvgF5vtwqo', 'A5YjeHyZu4+LVvrlQZZAdA==', 0, '2020-04-09 17:42:33', '2020-04-09 17:42:33', 0);
INSERT INTO `litemall_user` VALUES (86, 'oc-dd5XlQubvIX0Ze0aAWUKVjN78', 'oc-dd5XlQubvIX0Ze0aAWUKVjN78', 0, NULL, '2020-04-09 19:09:28', '172.16.22.102', 0, '', '', '', 'oc-dd5XlQubvIX0Ze0aAWUKVjN78', 'LtkPRyrXMbYqnIhzmj7bbw==', 0, '2020-04-09 19:08:57', '2020-04-09 19:09:28', 0);
INSERT INTO `litemall_user` VALUES (87, 'oc-dd5c77YfHtnsC-IQeswEfP6EQ', 'oc-dd5c77YfHtnsC-IQeswEfP6EQ', 0, NULL, '2020-04-09 20:41:28', '172.16.22.102', 0, '', '', '', 'oc-dd5c77YfHtnsC-IQeswEfP6EQ', 'yB1ZmYalmw4EGoMCXRCqXQ==', 0, '2020-04-09 20:41:28', '2020-04-09 20:41:28', 0);
INSERT INTO `litemall_user` VALUES (88, 'oc-dd5cLeiVAytHB6ZkoaIz128NQ', 'oc-dd5cLeiVAytHB6ZkoaIz128NQ', 0, NULL, '2020-04-09 23:39:02', '172.16.22.102', 0, '', '', '', 'oc-dd5cLeiVAytHB6ZkoaIz128NQ', 'T5bHafCS/McK9xk3gV8G9w==', 0, '2020-04-09 23:38:54', '2020-04-09 23:39:02', 0);
INSERT INTO `litemall_user` VALUES (89, 'oc-dd5VHTXRZoT7xIgnIqTMxHEng', 'oc-dd5VHTXRZoT7xIgnIqTMxHEng', 0, NULL, '2020-04-10 00:06:01', '172.16.22.102', 0, '', '', '', 'oc-dd5VHTXRZoT7xIgnIqTMxHEng', 'tYN8YSFe1x7uoTVBdQ6BEQ==', 0, '2020-04-10 00:05:54', '2020-04-10 00:06:01', 0);
INSERT INTO `litemall_user` VALUES (90, 'oc-dd5SDc_EX-hX16evDYutUML8Y', 'oc-dd5SDc_EX-hX16evDYutUML8Y', 0, NULL, '2020-04-12 03:37:04', '172.16.22.102', 0, '', '', '', 'oc-dd5SDc_EX-hX16evDYutUML8Y', '1x11ExDev/R+ifbbYGrkcw==', 0, '2020-04-10 00:17:25', '2020-04-12 03:37:04', 0);
INSERT INTO `litemall_user` VALUES (91, 'oc-dd5dyfO7xcvbQldQLvZzcE7OE', 'oc-dd5dyfO7xcvbQldQLvZzcE7OE', 0, NULL, '2020-04-10 01:52:17', '172.16.22.102', 0, '', '', '', 'oc-dd5dyfO7xcvbQldQLvZzcE7OE', 'H8SX0XA0e0x2uJXgB7+sMQ==', 0, '2020-04-10 01:52:11', '2020-04-10 01:52:17', 0);
INSERT INTO `litemall_user` VALUES (92, 'oc-dd5az1PCviF6FJPEG_IzZuZRw', 'oc-dd5az1PCviF6FJPEG_IzZuZRw', 0, NULL, '2020-04-10 06:17:21', '172.16.22.102', 0, '', '', '', 'oc-dd5az1PCviF6FJPEG_IzZuZRw', 'IBIcusyIwd3XnJDtRaRcXA==', 0, '2020-04-10 06:17:21', '2020-04-10 06:17:21', 0);
INSERT INTO `litemall_user` VALUES (93, 'oc-dd5WIS3ns0L_UvDF_8waFGto4', 'oc-dd5WIS3ns0L_UvDF_8waFGto4', 0, NULL, '2020-04-10 06:26:37', '172.16.22.102', 0, '', '', '', 'oc-dd5WIS3ns0L_UvDF_8waFGto4', 'fKSyYq84b+aGkwIa50kU/g==', 0, '2020-04-10 06:26:37', '2020-04-10 06:26:37', 0);
INSERT INTO `litemall_user` VALUES (94, 'oc-dd5XbqjIWlvYFr7jGeSsCnu_4', 'oc-dd5XbqjIWlvYFr7jGeSsCnu_4', 0, NULL, '2020-04-10 07:37:32', '172.16.22.102', 0, '', '', '', 'oc-dd5XbqjIWlvYFr7jGeSsCnu_4', 'zJE72obaL9R2yTbj06TrJA==', 0, '2020-04-10 07:37:28', '2020-04-10 07:37:32', 0);
INSERT INTO `litemall_user` VALUES (95, 'oc-dd5YyZ0k5X_lCEWCP957fOcEc', 'oc-dd5YyZ0k5X_lCEWCP957fOcEc', 0, NULL, '2020-04-15 00:30:19', '172.16.22.102', 0, '', '', '', 'oc-dd5YyZ0k5X_lCEWCP957fOcEc', 'vhCIUxEhynrOHN6Ft/rCcQ==', 0, '2020-04-10 10:33:33', '2020-04-15 00:30:19', 0);
INSERT INTO `litemall_user` VALUES (96, 'oc-dd5VM7h1oPwTg--nF4uAVNzpA', 'oc-dd5VM7h1oPwTg--nF4uAVNzpA', 0, NULL, '2020-04-10 12:09:42', '172.16.22.102', 0, '', '', '', 'oc-dd5VM7h1oPwTg--nF4uAVNzpA', 'Har4T/6as18NQ7b3qe6ytA==', 0, '2020-04-10 12:09:42', '2020-04-10 12:09:42', 0);
INSERT INTO `litemall_user` VALUES (97, 'oc-dd5fn_xG-N9UEAOaBt9ng6Wgo', 'oc-dd5fn_xG-N9UEAOaBt9ng6Wgo', 0, NULL, '2020-04-10 12:29:02', '172.16.22.102', 0, '', '', '', 'oc-dd5fn_xG-N9UEAOaBt9ng6Wgo', 'tsglc9FdHEfuMU2b+a2LFA==', 0, '2020-04-10 12:29:02', '2020-04-10 12:29:02', 0);
INSERT INTO `litemall_user` VALUES (98, 'oc-dd5UCuunodcFhS8VtehJwBX6Y', 'oc-dd5UCuunodcFhS8VtehJwBX6Y', 0, NULL, '2020-04-10 12:47:51', '172.16.22.102', 0, '', '', '', 'oc-dd5UCuunodcFhS8VtehJwBX6Y', 'enaWZW61XJ4nQqGVVJ4ZeA==', 0, '2020-04-10 12:47:51', '2020-04-10 12:47:51', 0);
INSERT INTO `litemall_user` VALUES (99, 'oc-dd5bZ6YLV6JzhR0EtKOM4CaUM', 'oc-dd5bZ6YLV6JzhR0EtKOM4CaUM', 0, NULL, '2020-04-10 15:02:40', '172.16.22.102', 0, '', '', '', 'oc-dd5bZ6YLV6JzhR0EtKOM4CaUM', 'k8SOFsZWiY5H1fPsZ4gVfA==', 0, '2020-04-10 15:02:40', '2020-04-10 15:02:40', 0);
INSERT INTO `litemall_user` VALUES (100, 'oc-dd5YaE011Z_BugfRxcnTA8Wb8', 'oc-dd5YaE011Z_BugfRxcnTA8Wb8', 0, NULL, '2020-04-10 15:07:50', '172.16.22.102', 0, '', '', '', 'oc-dd5YaE011Z_BugfRxcnTA8Wb8', '6ngOLbOTyJJVe8i9PM6omw==', 0, '2020-04-10 15:07:17', '2020-04-10 15:07:50', 0);
INSERT INTO `litemall_user` VALUES (101, 'oc-dd5eH79ZzTaRPWC_kvVOqQeJk', 'oc-dd5eH79ZzTaRPWC_kvVOqQeJk', 0, NULL, '2020-04-10 15:19:47', '172.16.22.102', 0, '', '', '', 'oc-dd5eH79ZzTaRPWC_kvVOqQeJk', 'sHBGWip2eNQoFZvnI5lYkQ==', 0, '2020-04-10 15:19:40', '2020-04-10 15:19:47', 0);
INSERT INTO `litemall_user` VALUES (102, 'oc-dd5V8YbsDQKeIocI4V0KKp7xE', 'oc-dd5V8YbsDQKeIocI4V0KKp7xE', 0, NULL, '2020-04-10 15:56:35', '172.16.22.102', 0, '', '', '', 'oc-dd5V8YbsDQKeIocI4V0KKp7xE', 'V4aEzAg3GpknjgcBu4VfkQ==', 0, '2020-04-10 15:56:35', '2020-04-10 15:56:35', 0);
INSERT INTO `litemall_user` VALUES (103, 'oc-dd5S4tCOyfZJaAu8AFIQ_kaLQ', 'oc-dd5S4tCOyfZJaAu8AFIQ_kaLQ', 0, NULL, '2020-04-10 17:00:51', '172.16.22.102', 0, '', '', '', 'oc-dd5S4tCOyfZJaAu8AFIQ_kaLQ', 'VBx0uj+uHQVDU1aGxT9vjQ==', 0, '2020-04-10 17:00:51', '2020-04-10 17:00:51', 0);
INSERT INTO `litemall_user` VALUES (104, 'oc-dd5SddpRSnu2Rx4aILWDaw7j8', 'oc-dd5SddpRSnu2Rx4aILWDaw7j8', 0, NULL, '2020-04-10 18:16:02', '172.16.22.102', 0, '', '', '', 'oc-dd5SddpRSnu2Rx4aILWDaw7j8', '1hNYr4ggJz6ig5ZZ7SYEwQ==', 0, '2020-04-10 18:16:02', '2020-04-10 18:16:02', 0);
INSERT INTO `litemall_user` VALUES (105, 'oc-dd5R8CKBeTR-t38U-D5Q8MpVU', 'oc-dd5R8CKBeTR-t38U-D5Q8MpVU', 0, NULL, '2020-04-10 18:33:05', '172.16.22.102', 0, '', '', '', 'oc-dd5R8CKBeTR-t38U-D5Q8MpVU', '73WHWku6cVrPJklUO7P30A==', 0, '2020-04-10 18:33:05', '2020-04-10 18:33:05', 0);
INSERT INTO `litemall_user` VALUES (106, 'oc-dd5czfchQZ1xdQwWFU8ddEYGQ', 'oc-dd5czfchQZ1xdQwWFU8ddEYGQ', 0, NULL, '2020-04-10 18:33:38', '172.16.22.102', 0, '', '', '', 'oc-dd5czfchQZ1xdQwWFU8ddEYGQ', '+KxS3zEFKZqf1Bp+c5bO+w==', 0, '2020-04-10 18:33:31', '2020-04-10 18:33:38', 0);
INSERT INTO `litemall_user` VALUES (107, 'oc-dd5WQNzR1_ju14bb7yScNvO58', 'oc-dd5WQNzR1_ju14bb7yScNvO58', 0, NULL, '2020-04-10 19:39:48', '172.16.22.102', 0, '', '', '', 'oc-dd5WQNzR1_ju14bb7yScNvO58', 'bellSgXd7Hc7dCcpxcKUEA==', 0, '2020-04-10 19:39:48', '2020-04-10 19:39:48', 0);
INSERT INTO `litemall_user` VALUES (108, 'oc-dd5UbAMyPfVJZJ5TFtBzsssm0', 'oc-dd5UbAMyPfVJZJ5TFtBzsssm0', 0, NULL, '2020-04-10 19:58:39', '172.16.22.102', 0, '', '', '', 'oc-dd5UbAMyPfVJZJ5TFtBzsssm0', 'dez/5lKiWSCmcUrFi98mkw==', 0, '2020-04-10 19:58:39', '2020-04-10 19:58:39', 0);
INSERT INTO `litemall_user` VALUES (109, 'oc-dd5XECsBVeStiU3OLlaQojumM', 'oc-dd5XECsBVeStiU3OLlaQojumM', 0, NULL, '2020-04-10 23:03:30', '172.16.22.102', 0, '', '', '', 'oc-dd5XECsBVeStiU3OLlaQojumM', 'fRfODztpkOBvMmNL8tg9sQ==', 0, '2020-04-10 23:02:53', '2020-04-10 23:03:30', 0);
INSERT INTO `litemall_user` VALUES (110, 'oc-dd5Rm5fOt4qNVnkgiXRf85mow', 'oc-dd5Rm5fOt4qNVnkgiXRf85mow', 0, NULL, '2020-04-10 23:25:17', '172.16.22.102', 0, '', '', '', 'oc-dd5Rm5fOt4qNVnkgiXRf85mow', 'DPyDb0Ku9GRpuQfD2hhMkw==', 0, '2020-04-10 23:25:10', '2020-04-10 23:25:17', 0);
INSERT INTO `litemall_user` VALUES (111, 'oc-dd5eBvld7tQr8eaVNWL97x5dk', 'oc-dd5eBvld7tQr8eaVNWL97x5dk', 0, NULL, '2020-04-11 04:39:30', '172.16.22.102', 0, '', '', '', 'oc-dd5eBvld7tQr8eaVNWL97x5dk', 'DxkEjV6vQUhw3XP67WZzPA==', 0, '2020-04-11 04:39:26', '2020-04-11 04:39:30', 0);
INSERT INTO `litemall_user` VALUES (112, 'oc-dd5SkMxM3uJU7XUvpkcmxjad8', 'oc-dd5SkMxM3uJU7XUvpkcmxjad8', 0, NULL, '2020-04-11 09:47:11', '172.16.22.102', 0, '', '', '', 'oc-dd5SkMxM3uJU7XUvpkcmxjad8', '8WBprGA4Nyemq2lztdaFDQ==', 0, '2020-04-11 09:46:40', '2020-04-11 09:47:11', 0);
INSERT INTO `litemall_user` VALUES (113, 'oc-dd5YEOZqfTIuF28oLa0julI0U', 'oc-dd5YEOZqfTIuF28oLa0julI0U', 0, NULL, '2020-04-11 14:25:16', '172.16.22.102', 0, '', '', '', 'oc-dd5YEOZqfTIuF28oLa0julI0U', 'v2rkKZp+1UW3kX3gGjkI/A==', 0, '2020-04-11 14:25:16', '2020-04-11 14:25:16', 0);
INSERT INTO `litemall_user` VALUES (114, 'oc-dd5SnE9rUy99FOw2UnLOxuQMY', 'oc-dd5SnE9rUy99FOw2UnLOxuQMY', 0, NULL, '2020-04-12 03:28:58', '172.16.22.102', 0, '', '', '', 'oc-dd5SnE9rUy99FOw2UnLOxuQMY', 'vhwZCfuKCPIz6Kv2gMzxIw==', 0, '2020-04-12 03:28:54', '2020-04-12 03:28:58', 0);
INSERT INTO `litemall_user` VALUES (115, 'oc-dd5WaIugAcwzX4FoTRMEMX8gY', 'oc-dd5WaIugAcwzX4FoTRMEMX8gY', 0, NULL, '2020-04-17 11:57:45', '172.16.22.102', 0, '', '', '', 'oc-dd5WaIugAcwzX4FoTRMEMX8gY', 'jzv60NZXPpZV5/OfQ2z34Q==', 0, '2020-04-16 07:50:36', '2020-04-17 11:57:45', 0);
INSERT INTO `litemall_user` VALUES (116, 'oc-dd5b7fcgyxLR4Fm_k1009TIF8', 'oc-dd5b7fcgyxLR4Fm_k1009TIF8', 0, NULL, '2020-04-17 18:12:51', '172.16.22.102', 0, '', '', '', 'oc-dd5b7fcgyxLR4Fm_k1009TIF8', '1ooAc0NnPZBa+hw9IUW1gA==', 0, '2020-04-17 18:12:51', '2020-04-17 18:12:51', 0);
INSERT INTO `litemall_user` VALUES (117, 'oc-dd5f151EJGJCr_-HEXu0n-ixs', 'oc-dd5f151EJGJCr_-HEXu0n-ixs', 0, NULL, '2020-04-18 09:48:49', '172.16.22.102', 0, '', '', '', 'oc-dd5f151EJGJCr_-HEXu0n-ixs', '7DI9m8UqGndbKlncFN0aCA==', 0, '2020-04-18 09:48:49', '2020-04-18 09:48:49', 0);
INSERT INTO `litemall_user` VALUES (118, 'oc-dd5b4Ck72yCxJQRbGmwwOXfOo', 'oc-dd5b4Ck72yCxJQRbGmwwOXfOo', 0, NULL, '2020-04-23 00:34:17', '172.16.22.102', 0, '', '', '', 'oc-dd5b4Ck72yCxJQRbGmwwOXfOo', 'ym+ZjV8zI154v6OnRQqasw==', 0, '2020-04-23 00:34:17', '2020-04-23 00:34:17', 0);
INSERT INTO `litemall_user` VALUES (119, 'oc-dd5cY7LDOStZWngi4Cr5_HpSE', 'oc-dd5cY7LDOStZWngi4Cr5_HpSE', 0, NULL, '2020-04-23 00:36:41', '172.16.22.102', 0, '', '', '', 'oc-dd5cY7LDOStZWngi4Cr5_HpSE', 'jOTExaebg03/HfFv6FgNkQ==', 0, '2020-04-23 00:36:41', '2020-04-23 00:36:41', 0);
INSERT INTO `litemall_user` VALUES (120, 'oc-dd5fbCfFCMdEB4Ec3JIFSkHsQ', 'oc-dd5fbCfFCMdEB4Ec3JIFSkHsQ', 0, NULL, '2020-04-23 00:39:37', '172.16.22.102', 0, '', '', '', 'oc-dd5fbCfFCMdEB4Ec3JIFSkHsQ', '6hweRPAj41BAYej27PyMNQ==', 0, '2020-04-23 00:39:37', '2020-04-23 00:39:37', 0);
INSERT INTO `litemall_user` VALUES (121, 'oc-dd5UvDz83Zt7QVBYVDLA2lG2c', 'oc-dd5UvDz83Zt7QVBYVDLA2lG2c', 0, NULL, '2020-04-23 00:44:37', '172.16.22.102', 0, '', '', '', 'oc-dd5UvDz83Zt7QVBYVDLA2lG2c', 'WIS7Vz0LXs+V3+cc8yrUoA==', 0, '2020-04-23 00:44:37', '2020-04-23 00:44:37', 0);
INSERT INTO `litemall_user` VALUES (122, 'oc-dd5crsEhYaPhzzMjJ5ZfY4360', 'oc-dd5crsEhYaPhzzMjJ5ZfY4360', 0, NULL, '2020-04-23 00:46:48', '172.16.22.102', 0, '', '', '', 'oc-dd5crsEhYaPhzzMjJ5ZfY4360', 'N7+PhzWTAfqRWDmI9X9ZQw==', 0, '2020-04-23 00:46:46', '2020-04-23 00:46:48', 0);
INSERT INTO `litemall_user` VALUES (123, 'oc-dd5bAO0gwhSAovXRIKh7IruLw', 'oc-dd5bAO0gwhSAovXRIKh7IruLw', 0, NULL, '2020-04-23 02:23:22', '172.16.22.102', 0, '', '', '', 'oc-dd5bAO0gwhSAovXRIKh7IruLw', 'l2hQ5uX0Mh9O0X8mwVwt3g==', 0, '2020-04-23 02:23:22', '2020-04-23 02:23:22', 0);

-- ----------------------------
-- Table structure for pic_manage
-- ----------------------------
DROP TABLE IF EXISTS `pic_manage`;
CREATE TABLE `pic_manage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pic_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片类型',
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `is_use` tinyint(2) NULL DEFAULT NULL COMMENT '0表示使用，1表示删除',
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pic_manage
-- ----------------------------
INSERT INTO `pic_manage` VALUES (37, 'http://xiaoshanlongxin.com/admin/images/20200318/20200318091730.png', '2', '预约页轮播图', 0, '2020-03-18 09:17:30', NULL);
INSERT INTO `pic_manage` VALUES (38, 'http://xiaoshanlongxin.com/admin/images/20200318/20200318091800.png', '2', '预约页轮播图', 0, '2020-03-18 09:18:00', NULL);
INSERT INTO `pic_manage` VALUES (40, 'http://xiaoshanlongxin.com/admin/images/20200318/20200318091923.png', '2', '预约页轮播图', 0, '2020-03-18 09:19:23', NULL);
INSERT INTO `pic_manage` VALUES (43, 'http://xiaoshanlongxin.com/admin/images/20200327/20200327102652.png', '2', '预约页轮播图', 0, '2020-03-27 10:26:52', NULL);
INSERT INTO `pic_manage` VALUES (44, 'http://xiaoshanlongxin.com/admin/images/20200327/20200327102713.png', '2', '预约页轮播图', 0, '2020-03-27 10:27:13', NULL);
INSERT INTO `pic_manage` VALUES (48, 'http://xiaoshanlongxin.com/admin/images/20200328/20200328170255.png', '1', '首页轮播图', 0, '2020-03-28 17:02:55', NULL);
INSERT INTO `pic_manage` VALUES (50, 'http://xiaoshanlongxin.com/admin/images/20200417/20200417154414.png', '1', '首页轮播图', 0, '2020-04-17 15:44:14', NULL);
INSERT INTO `pic_manage` VALUES (53, 'http://xiaoshanlongxin.com/admin/images/20200417/20200417155402.png', '2', '预约页轮播图', 0, '2020-04-17 15:54:02', NULL);
INSERT INTO `pic_manage` VALUES (54, 'http://xiaoshanlongxin.com/admin/images/20200417/20200417155440.png', '2', '预约页轮播图', 0, '2020-04-17 15:54:40', NULL);
INSERT INTO `pic_manage` VALUES (55, 'http://xiaoshanlongxin.com/admin/images/20200417/20200417163528.png', '1', '首页轮播图', 0, '2020-04-17 16:35:28', NULL);
INSERT INTO `pic_manage` VALUES (56, 'http://xiaoshanlongxin.com/admin/images/20200417/20200417163603.png', '1', '首页轮播图', 0, '2020-04-17 16:36:03', NULL);

-- ----------------------------
-- Table structure for repair_order
-- ----------------------------
DROP TABLE IF EXISTS `repair_order`;
CREATE TABLE `repair_order`  (
  `id` varchar(20) CHARACTER SET sjis COLLATE sjis_japanese_ci NOT NULL COMMENT '维修单据(唯一单号)',
  `custom_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户姓名',
  `custom_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户电话',
  `repair_time` datetime NULL DEFAULT NULL COMMENT '维修时间',
  `work_type` tinyint(2) NULL DEFAULT NULL COMMENT '维修类别(0家电维修,1家电清洗,2家电拆装)',
  `destroy_pic` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '损坏部分照片',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `status` int(4) NULL DEFAULT NULL COMMENT '0未处理，1进行中，2已完成，3已取消',
  `address` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of repair_order
-- ----------------------------
INSERT INTO `repair_order` VALUES ('20191201000002', '刘备', '15927446987', '2019-12-01 14:04:15', 1, 'http://www.baidu.com', '手套', 'oc-dd5az6b9ETDPLFSJcEtutZleI', 2, NULL);
INSERT INTO `repair_order` VALUES ('20191201000003', '张飞', '15927446987', '2019-12-01 14:04:15', 1, 'http://www.baidu.com', '手套', 'oc-dd5az6b9ETDPLFSJcEtutZleI', 2, NULL);
INSERT INTO `repair_order` VALUES ('20200307000005', '周锐', '15927446024', '2020-04-07 18:30:07', 1, NULL, '测试', 'oc-dd5az6b9ETDPLFSJcEtutZleI', 2, '萧山');
INSERT INTO `repair_order` VALUES ('20200307000006', '典韦', '13586798523', '2020-03-08 18:32:18', 1, NULL, '测试', 'oc-dd5ciwYLkBtZyINu5CLvlFyGk', 2, '魏');
INSERT INTO `repair_order` VALUES ('20200307000007', '周锐', '15927446023', '2020-04-07 19:08:45', 1, 'http://xiaoshanlongxin.com/api/images/20200307/20200307190913.jpg', '测试', 'oc-dd5az6b9ETDPLFSJcEtutZleI', 2, '萧山');
INSERT INTO `repair_order` VALUES ('20200307000008', '庞太师', '15236988563', '2020-03-08 19:25:17', 1, 'http://xiaoshanlongxin.com/api/images/20200307/20200307192608.jpg', '测试一下', 'oc-dd5ciwYLkBtZyINu5CLvlFyGk', 2, '大宋');
INSERT INTO `repair_order` VALUES ('20200315000009', '王小二', '15863256563', '2020-03-16 15:58:28', 1, 'http://xiaoshanlongxin.com/api/images/20200315/20200315155949.jpg', '测试测试', 'oc-dd5ciwYLkBtZyINu5CLvlFyGk', 2, '牛栏山');
INSERT INTO `repair_order` VALUES ('20200317000010', '测试', '158123456', '2020-03-18 18:15:24', 2, 'http://xiaoshanlongxin.com/api/images/20200317/20200317193407.jpg', '测试', 'oc-dd5ciwYLkBtZyINu5CLvlFyGk', 2, '测试');
INSERT INTO `repair_order` VALUES ('20200317000011', '陈浩', '13336155932', NULL, 2, '', '尽快上门', 'oc-dd5QPFAwDKFAA5QYwd1vAdaAA', 2, '萧山区新塘街道紫霞新村19号');
INSERT INTO `repair_order` VALUES ('20200416000012', '孟宜良', '18969979725', '2020-04-16 14:46:57', 1, 'http://xiaoshanlongxin.com/api/images/20200416/20200416114903.jpg', '达不到温度停机，外机后面这个天气有冰，刚处理不到半月', 'oc-dd5WaIugAcwzX4FoTRMEMX8gY', 3, '杭州萧山区滨水名庭小区6幢');
INSERT INTO `repair_order` VALUES ('20200416000013', '孟宜良', '18969979725', '2020-04-16 14:46:57', 1, 'http://xiaoshanlongxin.com/api/images/20200416/20200416115229.jpg', '达不到温度停机，外机后面这个天气有冰，刚处理不到半月', 'oc-dd5WaIugAcwzX4FoTRMEMX8gY', 3, '杭州萧山区滨水名庭小区6幢');

-- ----------------------------
-- Table structure for worker
-- ----------------------------
DROP TABLE IF EXISTS `worker`;
CREATE TABLE `worker`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `worker_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工人姓名',
  `worker_photo` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工人照片',
  `worker_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工人工号',
  `worker_type` tinyint(2) NULL DEFAULT NULL COMMENT '工人种类(0维修,1清洗,2拆装)',
  `worker_service_type` tinyint(2) NULL DEFAULT NULL COMMENT '工人服务类别(0生活服务)',
  `worker_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工人联系电话',
  `worker_email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工人邮箱',
  `worker_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工人地址',
  `worker_wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工人维修',
  `worker_card` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工人名片',
  `worker_brief` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工人简介(关于我)',
  `is_work` tinyint(2) NULL DEFAULT NULL COMMENT '是否在岗(0在岗,1离职)',
  `stars` int(11) NULL DEFAULT NULL COMMENT '工人投票星数',
  `birthday` datetime NULL DEFAULT NULL COMMENT '生日',
  `working_time` datetime NULL DEFAULT NULL COMMENT '入职时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of worker
-- ----------------------------
INSERT INTO `worker` VALUES (1, '陈辉洋', 'http://xiaoshanlongxin.com/admin/images/20200402/20200402183501.png', '9527', NULL, 0, '13958327342', NULL, '萧山区新塘街道坂里瞳', NULL, NULL, NULL, 0, 6, '1997-02-22 00:00:00', '2017-01-01 00:00:00');
INSERT INTO `worker` VALUES (2, '王凯旋', 'http://xiaoshanlongxin.com/admin/images/20200318/20200318080338.png', '410482199510165934', NULL, 0, '17629666279', NULL, '萧山区新塘街道桥南沈76号', NULL, NULL, NULL, 0, 10, '1995-10-16 00:00:00', '2017-01-01 00:00:00');
INSERT INTO `worker` VALUES (3, '刘壮', 'http://xiaoshanlongxin.com/admin/images/20200318/20200318075740.png', '411527200004087010', NULL, 0, '17682484834', NULL, '萧城厢街道山区汪家弄', NULL, NULL, NULL, 0, NULL, '2000-04-08 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `worker` VALUES (4, '赵俊峰', 'http://xiaoshanlongxin.com/admin/images/20200318/20200318080131.png', '411527198908237018', NULL, 0, '18757137066', NULL, '萧山区新塘街道涝湖村', NULL, NULL, NULL, 0, NULL, '1989-08-23 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `worker` VALUES (5, '范中侠', 'http://xiaoshanlongxin.com/admin/images/20200318/20200318081305.png', '341221199206048150', NULL, 0, '13735449328', NULL, '萧山区新塘街道浙东村', NULL, NULL, NULL, 0, NULL, '1992-06-04 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `worker` VALUES (6, '陶迅', 'http://xiaoshanlongxin.com/admin/images/20200318/20200318081600.png', '341622199705218212', NULL, 0, '15990003500', NULL, '萧山区新塘街道五联村', NULL, NULL, NULL, 0, NULL, '1997-05-21 00:00:00', '2015-01-01 00:00:00');
INSERT INTO `worker` VALUES (7, '李龙', 'http://xiaoshanlongxin.com/admin/images/20200318/20200318081835.png', '371322198912302737', NULL, 0, '15990059856', NULL, '萧山区新塘街道广泽小区', NULL, NULL, NULL, 0, NULL, '1989-12-30 00:00:00', '2013-01-01 00:00:00');
INSERT INTO `worker` VALUES (9, '张鉴', 'http://xiaoshanlongxin.com/admin/images/20200402/20200402182320.png', '411527199401107550', NULL, 0, '15558145513', NULL, '新塘街道紫霞村76号', NULL, NULL, NULL, 0, NULL, '1994-01-10 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `worker` VALUES (10, '孙辉', 'http://xiaoshanlongxin.com/admin/images/20200402/20200402182736.png', '411527198606137513', NULL, 0, '15658022813', NULL, '新塘街道西许村', NULL, NULL, NULL, 0, NULL, '1986-06-13 00:00:00', '2014-01-01 00:00:00');
INSERT INTO `worker` VALUES (11, '杜豪', 'http://xiaoshanlongxin.com/admin/images/20200402/20200402183428.png', '411527199702106551', NULL, 0, '18505818570', NULL, '新塘街道朱家坛', NULL, NULL, NULL, 0, NULL, '1997-02-10 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `worker` VALUES (12, '段前堂', 'http://xiaoshanlongxin.com/admin/images/20200402/20200402183820.png', '341221199001155796', NULL, 0, '13958042728', NULL, '新塘街道霞江村', NULL, NULL, NULL, 0, NULL, '1990-01-15 00:00:00', '2016-01-01 00:00:00');
INSERT INTO `worker` VALUES (13, '杜康', 'http://xiaoshanlongxin.com/admin/images/20200402/20200402184203.png', '411527199303046512', NULL, 0, '13586740554', NULL, '新塘街道坂里瞳', NULL, NULL, NULL, 0, NULL, '1993-03-04 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `worker` VALUES (14, '任远东', 'http://xiaoshanlongxin.com/admin/images/20200402/20200402184753.png', '41152719960807651X', NULL, 0, '13777357021', NULL, '新塘街道涝湖村', NULL, NULL, NULL, 0, NULL, '1996-08-07 00:00:00', '2018-01-01 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
