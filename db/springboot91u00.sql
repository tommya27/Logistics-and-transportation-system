/*
 Navicat Premium Data Transfer

 Source Server         : local_mysql
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : springboot91u00

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 18/10/2023 17:49:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cheliangxinxi
-- ----------------------------
DROP TABLE IF EXISTS `cheliangxinxi`;
CREATE TABLE `cheliangxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `cheliangbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆编号',
  `cheliangmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆名称',
  `cheliangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆类型',
  `cheliangwenjian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sijixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lianxifangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xinxibeizhu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `wuliugongsi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `cheliangbianhao`(`cheliangbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车辆信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cheliangxinxi
-- ----------------------------
INSERT INTO `cheliangxinxi` VALUES (41, '2024-12-31 10:07:03', '车辆编号1', '车辆名称1', '车辆类型1', '', '司机姓名1', '13823888881', '信息备注1', '物流公司1');
INSERT INTO `cheliangxinxi` VALUES (42, '2024-12-31 10:07:03', '车辆编号2', '车辆名称2', '车辆类型2', '', '司机姓名2', '13823888882', '信息备注2', '物流公司2');
INSERT INTO `cheliangxinxi` VALUES (43, '2024-12-31 10:07:03', '车辆编号3', '车辆名称3', '车辆类型3', '', '司机姓名3', '13823888883', '信息备注3', '物流公司3');
INSERT INTO `cheliangxinxi` VALUES (44, '2024-12-31 10:07:03', '车辆编号4', '车辆名称4', '车辆类型4', '', '司机姓名4', '13823888884', '信息备注4', '物流公司4');
INSERT INTO `cheliangxinxi` VALUES (45, '2024-12-31 10:07:03', '车辆编号5', '车辆名称5', '车辆类型5', '', '司机姓名5', '13823888885', '信息备注5', '物流公司5');
INSERT INTO `cheliangxinxi` VALUES (46, '2024-12-31 10:07:03', '车辆编号6', '车辆名称6', '车辆类型6', '', '司机姓名6', '13823888886', '信息备注6', '物流公司6');
INSERT INTO `cheliangxinxi` VALUES (47, '2024-12-31 10:07:03', '车辆编号7', '车辆名称7', '车辆类型7', '', '司机姓名7', '13823888887', '信息备注7', '物流公司7');
INSERT INTO `cheliangxinxi` VALUES (48, '2024-12-31 10:07:03', '车辆编号8', '车辆名称8', '车辆类型8', '', '司机姓名8', '13823888888', '信息备注8', '物流公司8');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for gonggaoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `gonggaoxinxi`;
CREATE TABLE `gonggaoxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型',
  `gonggaotupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告图片',
  `gonggaoneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公告内容',
  `faburiqi` date NULL DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gonggaoxinxi
-- ----------------------------
INSERT INTO `gonggaoxinxi` VALUES (11, '2024-12-31 10:07:03', '公告标题1', '资讯', 'upload/gonggaoxinxi_gonggaotupian1.jpg', '公告内容1', '2024-12-31');
INSERT INTO `gonggaoxinxi` VALUES (12, '2024-12-31 10:07:03', '公告标题2', '资讯', 'upload/gonggaoxinxi_gonggaotupian2.jpg', '公告内容2', '2024-12-31');
INSERT INTO `gonggaoxinxi` VALUES (13, '2024-12-31 10:07:03', '公告标题3', '资讯', 'upload/gonggaoxinxi_gonggaotupian3.jpg', '公告内容3', '2024-12-31');
INSERT INTO `gonggaoxinxi` VALUES (14, '2024-12-31 10:07:03', '公告标题4', '资讯', 'upload/gonggaoxinxi_gonggaotupian4.jpg', '公告内容4', '2024-12-31');
INSERT INTO `gonggaoxinxi` VALUES (15, '2024-12-31 10:07:03', '公告标题5', '资讯', 'upload/gonggaoxinxi_gonggaotupian5.jpg', '公告内容5', '2024-12-31');
INSERT INTO `gonggaoxinxi` VALUES (16, '2024-12-31 10:07:03', '公告标题6', '资讯', 'upload/gonggaoxinxi_gonggaotupian6.jpg', '公告内容6', '2024-12-31');
INSERT INTO `gonggaoxinxi` VALUES (17, '2024-12-31 10:07:03', '公告标题7', '资讯', 'upload/gonggaoxinxi_gonggaotupian7.jpg', '公告内容7', '2024-12-31');
INSERT INTO `gonggaoxinxi` VALUES (18, '2024-12-31 10:07:03', '公告标题8', '资讯', 'upload/gonggaoxinxi_gonggaotupian8.jpg', '公告内容8', '2024-12-31');

-- ----------------------------
-- Table structure for jiankongxinxi
-- ----------------------------
DROP TABLE IF EXISTS `jiankongxinxi`;
CREATE TABLE `jiankongxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `jiankongbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '监控编号',
  `jiankongweizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '监控位置',
  `jiankongshipin` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '监控视频',
  `jiankongshijian` datetime(0) NULL DEFAULT NULL,
  `xinxibeizhu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `wuliugongsi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `jiankongbianhao`(`jiankongbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '监控信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiankongxinxi
-- ----------------------------
INSERT INTO `jiankongxinxi` VALUES (51, '2024-12-31 10:07:03', '1111111111', '停车场', '', '2024-12-31 10:07:03', '信息备注1', '物流公司1');
INSERT INTO `jiankongxinxi` VALUES (52, '2024-12-31 10:07:03', '2222222222', '停车场', '', '2024-12-31 10:07:03', '信息备注2', '物流公司2');
INSERT INTO `jiankongxinxi` VALUES (53, '2024-12-31 10:07:03', '3333333333', '停车场', '', '2024-12-31 10:07:03', '信息备注3', '物流公司3');
INSERT INTO `jiankongxinxi` VALUES (54, '2024-12-31 10:07:03', '4444444444', '停车场', '', '2024-12-31 10:07:03', '信息备注4', '物流公司4');
INSERT INTO `jiankongxinxi` VALUES (55, '2024-12-31 10:07:03', '5555555555', '停车场', '', '2024-12-31 10:07:03', '信息备注5', '物流公司5');
INSERT INTO `jiankongxinxi` VALUES (56, '2024-12-31 10:07:03', '6666666666', '停车场', '', '2024-12-31 10:07:03', '信息备注6', '物流公司6');
INSERT INTO `jiankongxinxi` VALUES (57, '2024-12-31 10:07:03', '7777777777', '停车场', '', '2024-12-31 10:07:03', '信息备注7', '物流公司7');
INSERT INTO `jiankongxinxi` VALUES (58, '2024-12-31 10:07:03', '8888888888', '停车场', '', '2024-12-31 10:07:03', '信息备注8', '物流公司8');

-- ----------------------------
-- Table structure for jijiandingdan
-- ----------------------------
DROP TABLE IF EXISTS `jijiandingdan`;
CREATE TABLE `jijiandingdan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `shoujianren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收件人',
  `shoujiandianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收件电话',
  `shoujiandizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wuliugongsi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `xiadanshijian` date NULL DEFAULT NULL COMMENT '下单时间',
  `kuaidizhuangtai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快递状态',
  `xinxibeizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '信息备注',
  `shangmenquhuo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dingdanbianhao`(`dingdanbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '寄件订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jijiandingdan
-- ----------------------------
INSERT INTO `jijiandingdan` VALUES (61, '2024-12-31 10:07:03', '1111111111', '用户名1', '13823888881', '收件人1', '13823888881', '收件地址1', '物流公司1', '2024-12-31', '已发货', '信息备注1', '是', '是', '');
INSERT INTO `jijiandingdan` VALUES (62, '2024-12-31 10:07:03', '2222222222', '用户名2', '13823888882', '收件人2', '13823888882', '收件地址2', '物流公司2', '2024-12-31', '已发货', '信息备注2', '是', '是', '');
INSERT INTO `jijiandingdan` VALUES (63, '2024-12-31 10:07:03', '3333333333', '用户名3', '13823888883', '收件人3', '13823888883', '收件地址3', '物流公司3', '2024-12-31', '已发货', '信息备注3', '是', '是', '');
INSERT INTO `jijiandingdan` VALUES (64, '2024-12-31 10:07:03', '4444444444', '用户名4', '13823888884', '收件人4', '13823888884', '收件地址4', '物流公司4', '2024-12-31', '已发货', '信息备注4', '是', '是', '');
INSERT INTO `jijiandingdan` VALUES (65, '2024-12-31 10:07:03', '5555555555', '用户名5', '13823888885', '收件人5', '13823888885', '收件地址5', '物流公司5', '2024-12-31', '已发货', '信息备注5', '是', '是', '');
INSERT INTO `jijiandingdan` VALUES (66, '2024-12-31 10:07:03', '6666666666', '用户名6', '13823888886', '收件人6', '13823888886', '收件地址6', '物流公司6', '2024-12-31', '已发货', '信息备注6', '是', '是', '');
INSERT INTO `jijiandingdan` VALUES (67, '2024-12-31 10:07:03', '7777777777', '用户名7', '13823888887', '收件人7', '13823888887', '收件地址7', '物流公司7', '2024-12-31', '已发货', '信息备注7', '是', '是', '');
INSERT INTO `jijiandingdan` VALUES (68, '2024-12-31 10:07:03', '8888888888', '用户名8', '13823888888', '收件人8', '13823888888', '收件地址8', '物流公司8', '2024-12-31', '已发货', '信息备注8', '是', '是', '');

-- ----------------------------
-- Table structure for jijianjindu
-- ----------------------------
DROP TABLE IF EXISTS `jijianjindu`;
CREATE TABLE `jijianjindu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `shoujianren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人',
  `shoujiandianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件电话',
  `shoujiandizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pingjiazhuangtai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价状态',
  `wuliugongsi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `fachuriqi` datetime(0) NULL DEFAULT NULL COMMENT '发出日期',
  `dingdanwenjian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yunfei` int(11) NOT NULL COMMENT '运费',
  `yunshujindu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运输进度',
  `cheliangxinxi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '寄件进度' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jijianjindu
-- ----------------------------
INSERT INTO `jijianjindu` VALUES (71, '2024-12-31 10:07:03', '订单编号1', '用户名1', '收件人1', '13823888881', '收件地址1', '已评价', '物流公司1', '2024-12-31 10:07:03', '', 1, '运输中', '车辆信息1', '未支付');
INSERT INTO `jijianjindu` VALUES (72, '2024-12-31 10:07:03', '订单编号2', '用户名2', '收件人2', '13823888882', '收件地址2', '已评价', '物流公司2', '2024-12-31 10:07:03', '', 2, '运输中', '车辆信息2', '未支付');
INSERT INTO `jijianjindu` VALUES (73, '2024-12-31 10:07:03', '订单编号3', '用户名3', '收件人3', '13823888883', '收件地址3', '已评价', '物流公司3', '2024-12-31 10:07:03', '', 3, '运输中', '车辆信息3', '未支付');
INSERT INTO `jijianjindu` VALUES (74, '2024-12-31 10:07:03', '订单编号4', '用户名4', '收件人4', '13823888884', '收件地址4', '已评价', '物流公司4', '2024-12-31 10:07:03', '', 4, '运输中', '车辆信息4', '未支付');
INSERT INTO `jijianjindu` VALUES (75, '2024-12-31 10:07:03', '订单编号5', '用户名5', '收件人5', '13823888885', '收件地址5', '已评价', '物流公司5', '2024-12-31 10:07:03', '', 5, '运输中', '车辆信息5', '未支付');
INSERT INTO `jijianjindu` VALUES (76, '2024-12-31 10:07:03', '订单编号6', '用户名6', '收件人6', '13823888886', '收件地址6', '已评价', '物流公司6', '2024-12-31 10:07:03', '', 6, '运输中', '车辆信息6', '未支付');
INSERT INTO `jijianjindu` VALUES (77, '2024-12-31 10:07:03', '订单编号7', '用户名7', '收件人7', '13823888887', '收件地址7', '已评价', '物流公司7', '2024-12-31 10:07:03', '', 7, '运输中', '车辆信息7', '未支付');
INSERT INTO `jijianjindu` VALUES (78, '2024-12-31 10:07:03', '订单编号8', '用户名8', '收件人8', '13823888888', '收件地址8', '已评价', '物流公司8', '2024-12-31 10:07:03', '', 8, '运输中', '车辆信息8', '未支付');

-- ----------------------------
-- Table structure for pingjiajilu
-- ----------------------------
DROP TABLE IF EXISTS `pingjiajilu`;
CREATE TABLE `pingjiajilu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `shoujianren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人',
  `shoujiandianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件电话',
  `wuliugongsi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `wuliupingfen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物流评分',
  `pingjianeirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评价内容',
  `pingjiariqi` date NULL DEFAULT NULL COMMENT '评价日期',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评价记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pingjiajilu
-- ----------------------------
INSERT INTO `pingjiajilu` VALUES (91, '2024-12-31 10:07:03', '订单编号1', '用户名1', '收件人1', '13823888881', '物流公司1', '★', '评价内容1', '2024-12-31', '是', '');
INSERT INTO `pingjiajilu` VALUES (92, '2024-12-31 10:07:03', '订单编号2', '用户名2', '收件人2', '13823888882', '物流公司2', '★', '评价内容2', '2024-12-31', '是', '');
INSERT INTO `pingjiajilu` VALUES (93, '2024-12-31 10:07:03', '订单编号3', '用户名3', '收件人3', '13823888883', '物流公司3', '★', '评价内容3', '2024-12-31', '是', '');
INSERT INTO `pingjiajilu` VALUES (94, '2024-12-31 10:07:03', '订单编号4', '用户名4', '收件人4', '13823888884', '物流公司4', '★', '评价内容4', '2024-12-31', '是', '');
INSERT INTO `pingjiajilu` VALUES (95, '2024-12-31 10:07:03', '订单编号5', '用户名5', '收件人5', '13823888885', '物流公司5', '★', '评价内容5', '2024-12-31', '是', '');
INSERT INTO `pingjiajilu` VALUES (96, '2024-12-31 10:07:03', '订单编号6', '用户名6', '收件人6', '13823888886', '物流公司6', '★', '评价内容6', '2024-12-31', '是', '');
INSERT INTO `pingjiajilu` VALUES (97, '2024-12-31 10:07:03', '订单编号7', '用户名7', '收件人7', '13823888887', '物流公司7', '★', '评价内容7', '2024-12-31', '是', '');
INSERT INTO `pingjiajilu` VALUES (98, '2024-12-31 10:07:03', '订单编号8', '用户名8', '收件人8', '13823888888', '物流公司8', '★', '评价内容8', '2024-12-31', '是', '');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', '9d7wvi81yeb5nf6ko0fnhahyexohhxho', '2024-12-31 10:07:03', '2024-12-31 18:46:41');
INSERT INTO `token` VALUES (2, 21, '用户名1', 'yonghu', '用户', '97t4hh2lqsz355wji4r0jw0cowvraefq', '2024-12-31 17:44:34', '2024-12-31 18:44:34');
INSERT INTO `token` VALUES (3, 31, '物流公司1', 'wuliugongsi', '物流公司', 'ocjjg2j57uvfh501r4yucb8rku91y79p', '2024-12-31 17:45:36', '2024-12-31 18:45:37');

-- ----------------------------
-- Table structure for tuihuojilu
-- ----------------------------
DROP TABLE IF EXISTS `tuihuojilu`;
CREATE TABLE `tuihuojilu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `shoujianren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人',
  `shoujiandianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shoujiandizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tuihuoyuanyin` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tuihuoshijian` datetime(0) NULL DEFAULT NULL,
  `wuliugongsi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crossuserid` bigint(20) NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) NULL DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '退货记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tuihuojilu
-- ----------------------------
INSERT INTO `tuihuojilu` VALUES (81, '2024-12-31 10:07:03', '订单编号1', '用户名1', '收件人1', '13823888881', '收件地址1', '退货原因1', '2024-12-31 10:07:03', '物流公司1', '13823888881', 1, 1, '是', '');
INSERT INTO `tuihuojilu` VALUES (82, '2024-12-31 10:07:03', '订单编号2', '用户名2', '收件人2', '13823888882', '收件地址2', '退货原因2', '2024-12-31 10:07:03', '物流公司2', '13823888882', 2, 2, '是', '');
INSERT INTO `tuihuojilu` VALUES (83, '2024-12-31 10:07:03', '订单编号3', '用户名3', '收件人3', '13823888883', '收件地址3', '退货原因3', '2024-12-31 10:07:03', '物流公司3', '13823888883', 3, 3, '是', '');
INSERT INTO `tuihuojilu` VALUES (84, '2024-12-31 10:07:03', '订单编号4', '用户名4', '收件人4', '13823888884', '收件地址4', '退货原因4', '2024-12-31 10:07:03', '物流公司4', '13823888884', 4, 4, '是', '');
INSERT INTO `tuihuojilu` VALUES (85, '2024-12-31 10:07:03', '订单编号5', '用户名5', '收件人5', '13823888885', '收件地址5', '退货原因5', '2024-12-31 10:07:03', '物流公司5', '13823888885', 5, 5, '是', '');
INSERT INTO `tuihuojilu` VALUES (86, '2024-12-31 10:07:03', '订单编号6', '用户名6', '收件人6', '13823888886', '收件地址6', '退货原因6', '2024-12-31 10:07:03', '物流公司6', '13823888886', 6, 6, '是', '');
INSERT INTO `tuihuojilu` VALUES (87, '2024-12-31 10:07:03', '订单编号7', '用户名7', '收件人7', '13823888887', '收件地址7', '退货原因7', '2024-12-31 10:07:03', '物流公司7', '13823888887', 7, 7, '是', '');
INSERT INTO `tuihuojilu` VALUES (88, '2024-12-31 10:07:03', '订单编号8', '用户名8', '收件人8', '13823888888', '收件地址8', '退货原因8', '2024-12-31 10:07:03', '物流公司8', '13823888888', 8, 8, '是', '');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2024-12-31 10:07:03');

-- ----------------------------
-- Table structure for wuliugongsi
-- ----------------------------
DROP TABLE IF EXISTS `wuliugongsi`;
CREATE TABLE `wuliugongsi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `wuliugongsi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物流公司',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lianxiren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `lianxidizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `jijiandanjia` int(11) NULL DEFAULT NULL COMMENT '寄件单价',
  `shoufeishuoming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收费说明',
  `wangdianxinxi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `wuliugongsi`(`wuliugongsi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物流公司' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wuliugongsi
-- ----------------------------
INSERT INTO `wuliugongsi` VALUES (31, '2024-12-31 10:07:03', '物流公司1', 'e10adc3949ba59abbe56e057f20f883e', '联系人1', '联系地址1', '13823888881', 1, '收费说明1', '网点信息1');
INSERT INTO `wuliugongsi` VALUES (32, '2024-12-31 10:07:03', '物流公司2', 'e10adc3949ba59abbe56e057f20f883e', '联系人2', '联系地址2', '13823888882', 2, '收费说明2', '网点信息2');
INSERT INTO `wuliugongsi` VALUES (33, '2024-12-31 10:07:03', '物流公司3', 'e10adc3949ba59abbe56e057f20f883e', '联系人3', '联系地址3', '13823888883', 3, '收费说明3', '网点信息3');
INSERT INTO `wuliugongsi` VALUES (34, '2024-12-31 10:07:03', '物流公司4', 'e10adc3949ba59abbe56e057f20f883e', '联系人4', '联系地址4', '13823888884', 4, '收费说明4', '网点信息4');
INSERT INTO `wuliugongsi` VALUES (35, '2024-12-31 10:07:03', '物流公司5', 'e10adc3949ba59abbe56e057f20f883e', '联系人5', '联系地址5', '13823888885', 5, '收费说明5', '网点信息5');
INSERT INTO `wuliugongsi` VALUES (36, '2024-12-31 10:07:03', '物流公司6', 'e10adc3949ba59abbe56e057f20f883e', '联系人6', '联系地址6', '13823888886', 6, '收费说明6', '网点信息6');
INSERT INTO `wuliugongsi` VALUES (37, '2024-12-31 10:07:03', '物流公司7', 'e10adc3949ba59abbe56e057f20f883e', '联系人7', '联系地址7', '13823888887', 7, '收费说明7', '网点信息7');
INSERT INTO `wuliugongsi` VALUES (38, '2024-12-31 10:07:03', '物流公司8', 'e10adc3949ba59abbe56e057f20f883e', '联系人8', '联系地址8', '13823888888', 8, '收费说明8', '网点信息8');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `shenfen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (21, '2024-12-31 10:07:03', '用户名1', 'e10adc3949ba59abbe56e057f20f883e', '姓名1', '男', 'upload/yonghu_touxiang1.jpg', '个人', '13823888881');
INSERT INTO `yonghu` VALUES (22, '2024-12-31 10:07:03', '用户名2', 'e10adc3949ba59abbe56e057f20f883e', '姓名2', '男', 'upload/yonghu_touxiang2.jpg', '个人', '13823888882');
INSERT INTO `yonghu` VALUES (23, '2024-12-31 10:07:03', '用户名3', 'e10adc3949ba59abbe56e057f20f883e', '姓名3', '男', 'upload/yonghu_touxiang3.jpg', '个人', '13823888883');
INSERT INTO `yonghu` VALUES (24, '2024-12-31 10:07:03', '用户名4', 'e10adc3949ba59abbe56e057f20f883e', '姓名4', '男', 'upload/yonghu_touxiang4.jpg', '个人', '13823888884');
INSERT INTO `yonghu` VALUES (25, '2024-12-31 10:07:03', '用户名5', 'e10adc3949ba59abbe56e057f20f883e', '姓名5', '男', 'upload/yonghu_touxiang5.jpg', '个人', '13823888885');
INSERT INTO `yonghu` VALUES (26, '2024-12-31 10:07:03', '用户名6', 'e10adc3949ba59abbe56e057f20f883e', '姓名6', '男', 'upload/yonghu_touxiang6.jpg', '个人', '13823888886');
INSERT INTO `yonghu` VALUES (27, '2024-12-31 10:07:03', '用户名7', 'e10adc3949ba59abbe56e057f20f883e', '姓名7', '男', 'upload/yonghu_touxiang7.jpg', '个人', '13823888887');
INSERT INTO `yonghu` VALUES (28, '2024-12-31 10:07:03', '用户名8', 'e10adc3949ba59abbe56e057f20f883e', '姓名8', '男', 'upload/yonghu_touxiang8.jpg', '个人', '13823888888');

SET FOREIGN_KEY_CHECKS = 1;
