/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : crm

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 06/07/2021 11:42:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_activity
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity`;
CREATE TABLE `tbl_activity`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `startDate` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endDate` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_activity
-- ----------------------------
INSERT INTO `tbl_activity` VALUES ('1ccbd185fb424e66a5bbc5d72d130052', '40f6cdea0bd34aceb77492a1656d9fb3', '谷歌', '2021-01-04', '2021-01-29', '大大大飒飒萨达', '大 啊啊 啊 啊', '2021-01-14 22:14:30', '张三', '2021-01-14 22:17:00', '张三');
INSERT INTO `tbl_activity` VALUES ('28257acef3734a56a8af1a439a309cbb', '40f6cdea0bd34aceb77492a1656d9fb3', 'dasdadad', '2021-01-13', '2021-01-19', 'sdasdads', 'adsadsadsa', '2021-01-14 22:05:22', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('a8df1208137d469aa9f91ea752de399b', '40f6cdea0bd34aceb77492a1656d9fb3', 'asasasas', '2021-01-12', '2021-01-14', 'assdad', 'adadsa', '2021-01-14 15:12:48', '张三', '2021-01-14 21:56:10', '张三');
INSERT INTO `tbl_activity` VALUES ('c299639988ce4ad2848ad5726eb3bee6', '40f6cdea0bd34aceb77492a1656d9fb3', '百度推广abc', '2021-01-07', '2021-01-13', '1000', '2222', '2021-01-13 21:17:35', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('d319458281134e3b8f1c9f3a1b2fc6f1', '40f6cdea0bd34aceb77492a1656d9fb3', '百度推广', '2021-01-07', '2021-01-13', '1000', '2222', '2021-01-13 21:17:32', '张三', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_activity_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity_remark`;
CREATE TABLE `tbl_activity_remark`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `noteContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editFlag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0表示未修改，1表示已修改',
  `activityId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_activity_remark
-- ----------------------------
INSERT INTO `tbl_activity_remark` VALUES ('10f8ab0a710a4b1287ec1778ac56945c', '我有一只小毛驴,我从来也不骑1', '2021-01-16 00:05:38', '张三', '2021-01-17 13:06:03', '张三', '1', '1ccbd185fb424e66a5bbc5d72d130052');
INSERT INTO `tbl_activity_remark` VALUES ('5c955d2255d446c79ea583d42445e5d5', 'hahaha', '2021-01-15 23:34:18', '张三', '2021-01-16 22:45:36', '张三', '1', '1ccbd185fb424e66a5bbc5d72d130052');
INSERT INTO `tbl_activity_remark` VALUES ('d319458281134e3b8f1c9f3a1b2fc6f1', '备注1（属于百度推广abc）', '2021-01-13 20:17:32', '张三', NULL, NULL, '0', 'c299639988ce4ad2848ad5726eb3bee6');

-- ----------------------------
-- Table structure for tbl_clue
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue`;
CREATE TABLE `tbl_clue`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `appellation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `owner` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contactSummary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextContactTime` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_clue
-- ----------------------------
INSERT INTO `tbl_clue` VALUES ('bdf447a2cfd6493fa8de6b918a5bdf29', '王健林', '先生', '40f6cdea0bd34aceb77492a1656d9fb3', '万达集团', 'CEO', 'wjl@wd.com', '25456215', 'www.wd.com', '13584596548', '将来联系', '公开媒介', '张三', '2021-01-16 20:21:36', NULL, NULL, '123', '123', '2021-01-31', '123');

-- ----------------------------
-- Table structure for tbl_clue_activity_relation
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue_activity_relation`;
CREATE TABLE `tbl_clue_activity_relation`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clueId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activityId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_clue_activity_relation
-- ----------------------------
INSERT INTO `tbl_clue_activity_relation` VALUES ('f3e425e2cbf648ed8bb6077b9c12825d', 'bdf447a2cfd6493fa8de6b918a5bdf29', 'd319458281134e3b8f1c9f3a1b2fc6f1');

-- ----------------------------
-- Table structure for tbl_clue_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue_remark`;
CREATE TABLE `tbl_clue_remark`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `noteContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editFlag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clueId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_clue_remark
-- ----------------------------
INSERT INTO `tbl_clue_remark` VALUES ('bdf447a2cfd6493fa8de6b918a5bdf2d', '备注4（属于王）', NULL, NULL, NULL, NULL, NULL, 'bdf447a2cfd6493fa8de6b918a5bdf29');

-- ----------------------------
-- Table structure for tbl_contacts
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts`;
CREATE TABLE `tbl_contacts`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customerId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `appellation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birth` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contactSummary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextContactTime` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_contacts
-- ----------------------------
INSERT INTO `tbl_contacts` VALUES ('45560b1f4585478494de18c6d0400bd8', '40f6cdea0bd34aceb77492a1656d9fb3', '员工介绍', 'e163df1311d743e5bbad43520b51e527', '马云', '先生', 'ma@alibaba.com', '13952846984', 'CEO', NULL, '张三', '2021-01-19 20:37:35', NULL, NULL, '线索123', '纪要123', '2021-01-25', '地址123');

-- ----------------------------
-- Table structure for tbl_contacts_activity_relation
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts_activity_relation`;
CREATE TABLE `tbl_contacts_activity_relation`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contactsId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activityId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_contacts_activity_relation
-- ----------------------------
INSERT INTO `tbl_contacts_activity_relation` VALUES ('00db81a7d49f47c9ad91c8640bd197ed', '45560b1f4585478494de18c6d0400bd8', '1ccbd185fb424e66a5bbc5d72d130052');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('a231d7ffdd1e46ceb85dec3136d2b11a', '45560b1f4585478494de18c6d0400bd8', '28257acef3734a56a8af1a439a309cbb');

-- ----------------------------
-- Table structure for tbl_contacts_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts_remark`;
CREATE TABLE `tbl_contacts_remark`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `noteContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editFlag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contactsId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_contacts_remark
-- ----------------------------
INSERT INTO `tbl_contacts_remark` VALUES ('55a03e67b19448919c29051714e821d8', '备注1（属于马云）', '张三', '2021-01-19 20:37:35', NULL, NULL, '0', '45560b1f4585478494de18c6d0400bd8');
INSERT INTO `tbl_contacts_remark` VALUES ('b36d65a72dba426fbb7efe83981f9095', '备注2（属于马云）', '张三', '2021-01-19 20:37:35', NULL, NULL, '0', '45560b1f4585478494de18c6d0400bd8');
INSERT INTO `tbl_contacts_remark` VALUES ('dd20efe8c7f74195875780046e7dc9c4', '备注3（属于马云）', '张三', '2021-01-19 20:37:35', NULL, NULL, '0', '45560b1f4585478494de18c6d0400bd8');

-- ----------------------------
-- Table structure for tbl_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contactSummary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextContactTime` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------
INSERT INTO `tbl_customer` VALUES ('4d589b6f485b4f62ab2c81f7153a11ff', '40f6cdea0bd34aceb77492a1656d9fb3', '', NULL, NULL, '张三', '2021-01-20 14:40:18', NULL, NULL, '纪要456', '2021-02-06', NULL, NULL);
INSERT INTO `tbl_customer` VALUES ('98f5e0c282b3469eaa8575fd8838e181', '40f6cdea0bd34aceb77492a1656d9fb3', '百度集团', NULL, NULL, '张三', '2021-01-20 14:43:23', NULL, NULL, '大大大', '2021-01-20', NULL, NULL);
INSERT INTO `tbl_customer` VALUES ('c807d3b7ae3046999aace931991e7821', '40f6cdea0bd34aceb77492a1656d9fb3', '阿里巴巴1', NULL, NULL, '张三', '2021-01-20 14:29:16', NULL, NULL, '纪要123', '2021-01-31', NULL, NULL);
INSERT INTO `tbl_customer` VALUES ('e163df1311d743e5bbad43520b51e527', '40f6cdea0bd34aceb77492a1656d9fb3', '阿里巴巴', 'www.alibaba.com', '25658934', '张三', '2021-01-19 20:37:35', NULL, NULL, '纪要123', '2021-01-25', '线索123', '地址123');
INSERT INTO `tbl_customer` VALUES ('e163df1311d743e5bbad43520b51e529', NULL, '阿里巴巴2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_customer_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer_remark`;
CREATE TABLE `tbl_customer_remark`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `noteContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editFlag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customerId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_customer_remark
-- ----------------------------
INSERT INTO `tbl_customer_remark` VALUES ('128338e8709944b794cc3aa6cd9ce8f4', '备注2（属于马云）', '张三', '2021-01-19 20:37:35', NULL, NULL, '0', 'e163df1311d743e5bbad43520b51e527');
INSERT INTO `tbl_customer_remark` VALUES ('6766644a8471477d9fcb4885bd34da3d', '备注1（属于马云）', '张三', '2021-01-19 20:37:35', NULL, NULL, '0', 'e163df1311d743e5bbad43520b51e527');
INSERT INTO `tbl_customer_remark` VALUES ('c4b5a1e2ccdb4ae3a56ec7efc5c5ed3f', '备注3（属于马云）', '张三', '2021-01-19 20:37:35', NULL, NULL, '0', 'e163df1311d743e5bbad43520b51e527');

-- ----------------------------
-- Table structure for tbl_dic_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_type`;
CREATE TABLE `tbl_dic_type`  (
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编码是主键，不能为空，不能含有中文。',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dic_type
-- ----------------------------
INSERT INTO `tbl_dic_type` VALUES ('appellation', '称呼', '');
INSERT INTO `tbl_dic_type` VALUES ('clueState', '线索状态', '');
INSERT INTO `tbl_dic_type` VALUES ('returnPriority', '回访优先级', '');
INSERT INTO `tbl_dic_type` VALUES ('returnState', '回访状态', '');
INSERT INTO `tbl_dic_type` VALUES ('source', '来源', '');
INSERT INTO `tbl_dic_type` VALUES ('stage', '阶段', '');
INSERT INTO `tbl_dic_type` VALUES ('transactionType', '交易类型', '');

-- ----------------------------
-- Table structure for tbl_dic_value
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_value`;
CREATE TABLE `tbl_dic_value`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键，采用UUID',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '不能为空，并且要求同一个字典类型下字典值不能重复，具有唯一性。',
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可以为空',
  `orderNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可以为空，但不为空的时候，要求必须是正整数',
  `typeCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dic_value
-- ----------------------------
INSERT INTO `tbl_dic_value` VALUES ('06e3cbdf10a44eca8511dddfc6896c55', '虚假线索', '虚假线索', '4', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('0fe33840c6d84bf78df55d49b169a894', '销售邮件', '销售邮件', '8', 'source');
INSERT INTO `tbl_dic_value` VALUES ('12302fd42bd349c1bb768b19600e6b20', '交易会', '交易会', '11', 'source');
INSERT INTO `tbl_dic_value` VALUES ('1615f0bb3e604552a86cde9a2ad45bea', '最高', '最高', '2', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('176039d2a90e4b1a81c5ab8707268636', '教授', '教授', '5', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('1e0bd307e6ee425599327447f8387285', '将来联系', '将来联系', '2', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('2173663b40b949ce928db92607b5fe57', '丢失线索', '丢失线索', '5', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('2876690b7e744333b7f1867102f91153', '未启动', '未启动', '1', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('29805c804dd94974b568cfc9017b2e4c', '07成交', '07成交', '7', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('310e6a49bd8a4962b3f95a1d92eb76f4', '试图联系', '试图联系', '1', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('31539e7ed8c848fc913e1c2c93d76fd1', '博士', '博士', '4', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('37ef211719134b009e10b7108194cf46', '01资质审查', '01资质审查', '1', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('391807b5324d4f16bd58c882750ee632', '08丢失的线索', '08丢失的线索', '8', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('3a39605d67da48f2a3ef52e19d243953', '聊天', '聊天', '14', 'source');
INSERT INTO `tbl_dic_value` VALUES ('474ab93e2e114816abf3ffc596b19131', '低', '低', '3', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('48512bfed26145d4a38d3616e2d2cf79', '广告', '广告', '1', 'source');
INSERT INTO `tbl_dic_value` VALUES ('4d03a42898684135809d380597ed3268', '合作伙伴研讨会', '合作伙伴研讨会', '9', 'source');
INSERT INTO `tbl_dic_value` VALUES ('59795c49896947e1ab61b7312bd0597c', '先生', '先生', '1', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('5c6e9e10ca414bd499c07b886f86202a', '高', '高', '1', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('67165c27076e4c8599f42de57850e39c', '夫人', '夫人', '2', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('68a1b1e814d5497a999b8f1298ace62b', '09因竞争丢失关闭', '09因竞争丢失关闭', '9', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('6b86f215e69f4dbd8a2daa22efccf0cf', 'web调研', 'web调研', '13', 'source');
INSERT INTO `tbl_dic_value` VALUES ('72f13af8f5d34134b5b3f42c5d477510', '合作伙伴', '合作伙伴', '6', 'source');
INSERT INTO `tbl_dic_value` VALUES ('7c07db3146794c60bf975749952176df', '未联系', '未联系', '6', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('86c56aca9eef49058145ec20d5466c17', '内部研讨会', '内部研讨会', '10', 'source');
INSERT INTO `tbl_dic_value` VALUES ('9095bda1f9c34f098d5b92fb870eba17', '进行中', '进行中', '3', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('954b410341e7433faa468d3c4f7cf0d2', '已有业务', '已有业务', '1', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('966170ead6fa481284b7d21f90364984', '已联系', '已联系', '3', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('96b03f65dec748caa3f0b6284b19ef2f', '推迟', '推迟', '2', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('97d1128f70294f0aac49e996ced28c8a', '新业务', '新业务', '2', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('9ca96290352c40688de6596596565c12', '完成', '完成', '4', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('9e6d6e15232549af853e22e703f3e015', '需要条件', '需要条件', '7', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('9ff57750fac04f15b10ce1bbb5bb8bab', '02需求分析', '02需求分析', '2', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('a70dc4b4523040c696f4421462be8b2f', '等待某人', '等待某人', '5', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('a83e75ced129421dbf11fab1f05cf8b4', '推销电话', '推销电话', '2', 'source');
INSERT INTO `tbl_dic_value` VALUES ('ab8472aab5de4ae9b388b2f1409441c1', '常规', '常规', '5', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('ab8c2a3dc05f4e3dbc7a0405f721b040', '05提案/报价', '05提案/报价', '5', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('b924d911426f4bc5ae3876038bc7e0ad', 'web下载', 'web下载', '12', 'source');
INSERT INTO `tbl_dic_value` VALUES ('c13ad8f9e2f74d5aa84697bb243be3bb', '03价值建议', '03价值建议', '3', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('c83c0be184bc40708fd7b361b6f36345', '最低', '最低', '4', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('db867ea866bc44678ac20c8a4a8bfefb', '员工介绍', '员工介绍', '3', 'source');
INSERT INTO `tbl_dic_value` VALUES ('e44be1d99158476e8e44778ed36f4355', '04确定决策者', '04确定决策者', '4', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('e5f383d2622b4fc0959f4fe131dafc80', '女士', '女士', '3', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('e81577d9458f4e4192a44650a3a3692b', '06谈判/复审', '06谈判/复审', '6', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('fb65d7fdb9c6483db02713e6bc05dd19', '在线商场', '在线商场', '5', 'source');
INSERT INTO `tbl_dic_value` VALUES ('fd677cc3b5d047d994e16f6ece4d3d45', '公开媒介', '公开媒介', '7', 'source');
INSERT INTO `tbl_dic_value` VALUES ('ff802a03ccea4ded8731427055681d48', '外部介绍', '外部介绍', '4', 'source');

-- ----------------------------
-- Table structure for tbl_tran
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran`;
CREATE TABLE `tbl_tran`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expectedDate` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customerId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activityId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contactsId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contactSummary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextContactTime` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_tran
-- ----------------------------
INSERT INTO `tbl_tran` VALUES ('4704cf374a324532a92c7a5011a06a0c', '40f6cdea0bd34aceb77492a1656d9fb3', '1000000', '一百万交易', '2021-02-06', '4d589b6f485b4f62ab2c81f7153a11ff', '06谈判/复审', '新业务', '公开媒介', 'c299639988ce4ad2848ad5726eb3bee6', '45560b1f4585478494de18c6d0400bd8', '张三', '2021-01-20 14:40:18', NULL, NULL, '描述456', '纪要456', '2021-02-06');
INSERT INTO `tbl_tran` VALUES ('8f18eb683bda4ba3b53937aac136028f', '40f6cdea0bd34aceb77492a1656d9fb3', '12222', '交易123', '2021-01-31', 'c807d3b7ae3046999aace931991e7821', '04确定决策者', '已有业务', '在线商场', 'c299639988ce4ad2848ad5726eb3bee6', '45560b1f4585478494de18c6d0400bd8', '张三', '2021-01-20 14:39:26', '张三', '2021-01-20 23:01:26', '描述123', '纪要123', '2021-01-31');
INSERT INTO `tbl_tran` VALUES ('951896c852de4271bd5085559b47e88c', '40f6cdea0bd34aceb77492a1656d9fb3', '999999', '列文虎克', '2021-01-20', '98f5e0c282b3469eaa8575fd8838e181', '03价值建议', '已有业务', '内部研讨会', 'c299639988ce4ad2848ad5726eb3bee6', '45560b1f4585478494de18c6d0400bd8', '张三', '2021-01-20 14:43:23', NULL, NULL, '大大', '大大大', '2021-01-20');

-- ----------------------------
-- Table structure for tbl_tran_history
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran_history`;
CREATE TABLE `tbl_tran_history`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expectedDate` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tranId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_tran_history
-- ----------------------------
INSERT INTO `tbl_tran_history` VALUES ('0ac26f612c8f4b86ab11041cb8ebc6fc', NULL, '12222', '2021-01-31', '2021-01-20 21:01:29', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('0db5c770d1084ccd8a34bfb5ae544f09', NULL, '12222', '2021-01-31', '2021-01-20 21:01:38', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('12677345324d4b289802a6b573ca245a', NULL, '12222', '2021-01-31', '2021-01-20 21:02:11', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('1c23046753a14cfc89dbd8d3d06dd2a9', NULL, '12222', '2021-01-31', '2021-01-20 20:39:53', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('2c18ce2dda8d43218d405658aa4abfaa', '06谈判/复审', '1000000', '2021-02-06', '2021-01-20 14:40:18', '张三', '4704cf374a324532a92c7a5011a06a0c');
INSERT INTO `tbl_tran_history` VALUES ('31733a6b205745f18090905d92d2a189', NULL, '12222', '2021-01-31', '2021-01-20 21:01:54', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('335a7e91ec8d4889b5888ba51c13a137', NULL, '12222', '2021-01-31', '2021-01-20 21:02:16', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('366b39567b2548c59a6e3da381e7e833', NULL, '12222', '2021-01-31', '2021-01-20 18:17:49', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('40297da883bc4bc8a0ba7ceeb59346a4', NULL, '12222', '2021-01-31', '2021-01-20 18:14:52', NULL, '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('5cdc37e124894c8c8a6d9d6a1db092a3', NULL, '12222', '2021-01-31', '2021-01-20 18:19:10', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('5ec533274be24cc1b96ec69288ca8ccc', NULL, '12222', '2021-01-31', '2021-01-20 21:01:37', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('637302dbfdc245818e1b4c807d4f33dc', NULL, '12222', '2021-01-31', '2021-01-20 21:01:39', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('640077a5ec9f48a2ac4934b119850a0c', NULL, '12222', '2021-01-31', '2021-01-20 18:15:11', NULL, '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('6ccdebaffc234c32ae9aa9c639f14cf6', NULL, '12222', '2021-01-31', '2021-01-20 21:01:41', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('77c81eac612d469e8cb4eae67fc0ee7a', NULL, '12222', '2021-01-31', '2021-01-20 20:40:49', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('81ab1a5acaff4c37a21e9744d2bc6132', NULL, '12222', '2021-01-31', '2021-01-20 20:40:53', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('8205f787043440b38cbc495f2c27a328', NULL, '12222', '2021-01-31', '2021-01-20 21:01:40', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('8372b4400418422bb605e5e0a50a4727', NULL, '12222', '2021-01-31', '2021-01-20 21:01:34', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('8553589c2b2b4d8ea757373bf6927fe9', NULL, '12222', '2021-01-31', '2021-01-20 21:01:51', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('8791c20050f44b8eb83de1fb5d68a558', NULL, '12222', '2021-01-31', '2021-01-20 23:01:25', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('89ea893f39814820bd246a7b9b21254f', NULL, '12222', '2021-01-31', '2021-01-20 21:01:32', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('93c776974690433ab60c4abbc28b037b', NULL, '12222', '2021-01-31', '2021-01-20 23:01:26', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('9a098f5b33664eb6bed20a0d7480dc5b', NULL, '12222', '2021-01-31', '2021-01-20 18:14:50', NULL, '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('9fda03853bc646b3b677f1c7e5faec5e', NULL, '12222', '2021-01-31', '2021-01-20 21:01:30', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('a709d1434cf948e689bd21fc5a338b26', NULL, '12222', '2021-01-31', '2021-01-20 21:01:53', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('a7c2224210b24d848d25075ca2a29b8e', NULL, '12222', '2021-01-31', '2021-01-20 23:01:25', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('a7c8e9b4cd544bda9fa68dcc8059df03', NULL, '12222', '2021-01-31', '2021-01-20 20:40:57', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('b1e46e071ae148b49c53b7499a518eca', NULL, '12222', '2021-01-31', '2021-01-20 18:14:35', NULL, '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('c2f3ee3f541849ffa272fd4f15115ebd', NULL, '12222', '2021-01-31', '2021-01-20 21:01:28', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('c35da22ae6264965a46ad5aa5e6a05ae', NULL, '12222', '2021-01-31', '2021-01-20 21:01:50', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('c3b762990dbe41b39998f80b84ab6db4', NULL, '12222', '2021-01-31', '2021-01-20 18:14:51', NULL, '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('ca44a03c8a8c4757839875666b08f80c', NULL, '12222', '2021-01-31', '2021-01-20 18:14:45', NULL, '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('cdf6fdcbf8eb4e9285abfa73cf9d286e', NULL, '12222', '2021-01-31', '2021-01-20 18:14:41', NULL, '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('d201fcc06f334d1e9c15dd046244f267', NULL, '12222', '2021-01-31', '2021-01-20 21:01:33', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('d26a90e344444711a0e00b49ba2e5d9a', '04确定决策者', '12222', '2021-01-31', '2021-01-20 14:39:26', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('d7bbbc9297c5411ebda6ecdb37881a39', NULL, '12222', '2021-01-31', '2021-01-20 21:01:36', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('dcafe25848f040bd8add60d16ee02694', NULL, '12222', '2021-01-31', '2021-01-20 18:17:46', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('e3a882084c154efaaf2fdac70c16c0b2', NULL, '12222', '2021-01-31', '2021-01-20 21:02:17', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('e54b19206487424596c7309598b3bad2', NULL, '12222', '2021-01-31', '2021-01-20 21:02:13', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('edc43c905ebc4d5e8ecc3052e4b97622', '03价值建议', '999999', '2021-01-20', '2021-01-20 14:43:23', '张三', '951896c852de4271bd5085559b47e88c');
INSERT INTO `tbl_tran_history` VALUES ('ee2d9e60cd1a46a9af2699816d31b41d', NULL, '12222', '2021-01-31', '2021-01-20 21:01:31', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('f3027b6b4f5449cda501748b92175b27', NULL, '12222', '2021-01-31', '2021-01-20 23:01:23', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('f60df0ef49b847948fd874101f3796a6', NULL, '12222', '2021-01-31', '2021-01-20 23:01:24', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('f685a1e6981447369e8da77976b09435', NULL, '12222', '2021-01-31', '2021-01-20 21:01:35', '张三', '8f18eb683bda4ba3b53937aac136028f');
INSERT INTO `tbl_tran_history` VALUES ('fe8c27c16aa345ccb9b657c6edf9a252', NULL, '12222', '2021-01-31', '2021-01-20 18:14:49', NULL, '8f18eb683bda4ba3b53937aac136028f');

-- ----------------------------
-- Table structure for tbl_tran_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran_remark`;
CREATE TABLE `tbl_tran_remark`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `noteContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editFlag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tranId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_tran_remark
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid\r\n            ',
  `loginAct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginPwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码不能采用明文存储，采用密文，MD5加密之后的数据',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expireTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '失效时间为空的时候表示永不失效，失效时间为2018-10-10 10:10:10，则表示在该时间之前该账户可用。',
  `lockState` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '锁定状态为空时表示启用，为0时表示锁定，为1时表示启用。',
  `deptno` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `allowIps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '允许访问的IP为空时表示IP地址永不受限，允许访问的IP可以是一个，也可以是多个，当多个IP地址的时候，采用半角逗号分隔。允许IP是192.168.100.2，表示该用户只能在IP地址为192.168.100.2的机器上使用。',
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('06f5fc056eac41558a964f96daa7f27c', 'ls', '李四', '202cb962ac59075b964b07152d234b70', 'ls@163.com', '2018-11-27 21:50:05', '1', 'A001', '192.168.1.1', '2018-11-22 12:11:40', '李四', NULL, NULL);
INSERT INTO `tbl_user` VALUES ('40f6cdea0bd34aceb77492a1656d9fb3', 'zs', '张三', '202cb962ac59075b964b07152d234b70', 'zs@qq.com', '2021-11-30 23:50:55', '1', 'A001', '192.168.1.1,192.168.1.2,127.0.0.1', '2018-11-22 11:37:34', '张三', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
