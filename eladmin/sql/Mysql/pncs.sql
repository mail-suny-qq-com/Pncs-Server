/*
 Navicat Premium Data Transfer

 Source Server         : sshs
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : 127.0.0.1:3306
 Source Schema         : pncs

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 19/03/2020 16:48:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for column_config
-- ----------------------------
DROP TABLE IF EXISTS `column_config`;
CREATE TABLE `column_config`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名',
  `column_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `dict_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典名',
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_show` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `list_show` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `not_null` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `query_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询类型',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `date_annotation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成字段信息存储1' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of column_config
-- ----------------------------
INSERT INTO `column_config` VALUES ('1', 'gen_test', 'id', 'int', NULL, 'auto_increment', '0', NULL, 'PRI', '0', '1', NULL, 'ID', NULL);
INSERT INTO `column_config` VALUES ('2', 'gen_test', 'sex', 'int', NULL, NULL, '1', NULL, NULL, '1', '0', 'NotNull', '鎬у埆', NULL);
INSERT INTO `column_config` VALUES ('3', 'gen_test', 'create_time', 'datetime', NULL, NULL, '0', NULL, NULL, '1', '0', 'BetWeen', NULL, NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3d006a016f3d03ebf50000', 'PICTURE', 'ID', 'VARCHAR2', NULL, NULL, '1', NULL, 'PRI', '1', '0', NULL, 'ID', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3d006a016f3d03ec270001', 'PICTURE', 'CREATE_TIME', 'DATE', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '涓婁紶鏃ユ湡', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3d006a016f3d03ec2b0002', 'PICTURE', 'DELETE_URL', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '鍒犻櫎鐨刄RL', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3d006a016f3d03ec2c0003', 'PICTURE', 'FILENAME', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '鍥剧墖鍚嶇О', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3d006a016f3d03ec300004', 'PICTURE', 'HEIGHT', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '鍥剧墖楂樺害', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3d006a016f3d03ec300005', 'PICTURE', 'PICTURE_SIZE', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '鍥剧墖澶у皬', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3d006a016f3d03ec310006', 'PICTURE', 'URL', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '鍥剧墖鍦板潃', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3d006a016f3d03ec330007', 'PICTURE', 'USERNAME', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '鐢ㄦ埛鍚嶇О', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3d006a016f3d03ec340008', 'PICTURE', 'WIDTH', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '鍥剧墖瀹藉害', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3d006a016f3d03ec340009', 'PICTURE', 'MD5CODE', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '文件的MD5值', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3fc366016f3fcd4fe20016', 'ALIPAY_CONFIG', 'ID', 'VARCHAR2', NULL, NULL, '1', NULL, 'PRI', '1', '0', NULL, '涓婚敭', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3fc366016f3fcd4fe30017', 'ALIPAY_CONFIG', 'APP_ID', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '搴旂敤ID', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3fc366016f3fcd4fed0018', 'ALIPAY_CONFIG', 'CHARSET', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '缂栫爜', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3fc366016f3fcd4fed0019', 'ALIPAY_CONFIG', 'FORMAT', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '绫诲瀷 鍥哄畾鏍煎紡json', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3fc366016f3fcd4fed001a', 'ALIPAY_CONFIG', 'GATEWAY_URL', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '缃戝叧鍦板潃', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3fc366016f3fcd4fee001b', 'ALIPAY_CONFIG', 'NOTIFY_URL', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '寮傛鍥炶皟', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3fc366016f3fcd4fef001c', 'ALIPAY_CONFIG', 'PRIVATE_KEY', 'CLOB', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '绉侀挜', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3fc366016f3fcd4fef001d', 'ALIPAY_CONFIG', 'PUBLIC_KEY', 'CLOB', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '鍏挜', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3fc366016f3fcd4ff0001e', 'ALIPAY_CONFIG', 'RETURN_URL', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '鍥炶皟鍦板潃', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3fc366016f3fcd4ff00020', 'ALIPAY_CONFIG', 'SIGN_TYPE', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '绛惧悕鏂瑰紡', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3fc366016f3fcd4ff00021', 'ALIPAY_CONFIG', 'SYS_SERVICE_PROVIDER_ID', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '商户号', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3ffacd016f4003e8eb000a', 'GEN_TEST', 'ORG_NAME', 'VARCHAR2', NULL, NULL, '1', 'Input', NULL, '1', '1', '=', '鏈烘瀯鍚嶇О', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3ffacd016f4003e8ec000b', 'GEN_TEST', 'ORG_LEVEL', 'NUMBER', NULL, NULL, '1', 'Input', NULL, '1', '1', '=', '鏈烘瀯绾у埆', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3ffacd016f4003e8ed000c', 'GEN_TEST', 'ORG_TYPE', 'CHAR', 'dept_type', NULL, '1', 'Select', NULL, '1', '1', '=', '鏈烘瀯绫诲瀷', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3ffacd016f4003e8ed000d', 'GEN_TEST', 'ORG_TOTAL', 'NUMBER', NULL, NULL, '1', NULL, NULL, '1', '0', '>=', '瀛樻鎬婚', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f3ffacd016f4003e8ed000e', 'GEN_TEST', 'CREATE_DATE', 'DATE', NULL, NULL, '1', 'Date', NULL, '1', '0', '=', '鎴愮珛鏃ユ湡', 'CreationTimestamp');
INSERT INTO `column_config` VALUES ('8b81e4816f401e00016f401f3b290001', 'DICT_DETAIL', 'ID', 'VARCHAR2', NULL, NULL, '1', NULL, 'PRI', '1', '0', NULL, NULL, NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f401e00016f401f3b5b0002', 'DICT_DETAIL', 'LABEL', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '瀛楀吀鏍囩', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f401e00016f401f3b5c0003', 'DICT_DETAIL', 'VALUE', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '字典值', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f401e00016f401f3b5d0004', 'DICT_DETAIL', 'SORT', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '鎺掑簭', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f401e00016f401f3b5d0005', 'DICT_DETAIL', 'DICT_ID', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '瀛楀吀id', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f401e00016f401f3b5f0006', 'DICT_DETAIL', 'CREATE_TIME', 'DATE', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '鍒涘缓鏃ユ湡', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f424b35016f425385860013', 'GEN_TEST_MYBATIS', 'ORG_NO', 'VARCHAR2', NULL, NULL, '1', 'Input', 'PRI', '1', '1', 'Like', '机构号', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f424b35016f425385980014', 'GEN_TEST_MYBATIS', 'ORG_NAME', 'VARCHAR2', NULL, NULL, '1', 'Input', NULL, '1', '1', 'Like', '鏈烘瀯鍚嶇О', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f424b35016f4253859b0015', 'GEN_TEST_MYBATIS', 'ORG_LEVEL', 'NUMBER', NULL, NULL, '1', 'Input', NULL, '1', '1', NULL, '鏈烘瀯绾у埆', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f424b35016f4253859b0016', 'GEN_TEST_MYBATIS', 'ORG_TYPE', 'CHAR', 'dept_type', NULL, '1', 'Select', NULL, '1', '1', NULL, '鏈烘瀯绫诲瀷', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f424b35016f4253859b0017', 'GEN_TEST_MYBATIS', 'ORG_TOTAL', 'NUMBER', NULL, NULL, '1', 'Input', NULL, '1', '1', NULL, '瀛樻鎬婚', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f424b35016f4253859c0018', 'GEN_TEST_MYBATIS', 'CREATE_DATE', 'DATE', NULL, NULL, '1', 'Date', NULL, '1', '1', NULL, '鎴愮珛鏃ユ湡', NULL);
INSERT INTO `column_config` VALUES ('8b81e4816f451886016f451d7ee00006', 'GEN_TEST', 'ID', 'VARCHAR2', NULL, NULL, '1', NULL, 'PRI', '1', '0', NULL, '机构号', NULL);
INSERT INTO `column_config` VALUES ('8b81e48170f0b8160170f0be6d100009', 'ROLE', 'ID', 'VARCHAR2', NULL, NULL, '1', NULL, 'PRI', '1', '0', NULL, 'ID', NULL);
INSERT INTO `column_config` VALUES ('8b81e48170f0b8160170f0be6d10000a', 'ROLE', 'NAME', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '名称', NULL);
INSERT INTO `column_config` VALUES ('8b81e48170f0b8160170f0be6d10000b', 'ROLE', 'REMARK', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '备注', NULL);
INSERT INTO `column_config` VALUES ('8b81e48170f0b8160170f0be6d12000c', 'ROLE', 'DATA_SCOPE', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '数据权限', NULL);
INSERT INTO `column_config` VALUES ('8b81e48170f0b8160170f0be6d12000d', 'ROLE', 'ROLE_LEVEL', 'NUMBER', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '角色级别', NULL);
INSERT INTO `column_config` VALUES ('8b81e48170f0b8160170f0be6d12000e', 'ROLE', 'CREATE_TIME', 'DATE', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '创建日期', NULL);
INSERT INTO `column_config` VALUES ('8b81e48170f0b8160170f0be6d12000f', 'ROLE', 'PERMISSION', 'VARCHAR2', NULL, NULL, '1', NULL, NULL, '1', '0', NULL, '功能权限', NULL);

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `pid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级部门',
  `enabled` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `create_time` date NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', 'EL-ADMIN', '0', '1', '2019-03-01');
INSERT INTO `dept` VALUES ('11', '人事部', '8', '1', '2019-03-25');
INSERT INTO `dept` VALUES ('2', '研发部', '7', '1', '2019-03-25');
INSERT INTO `dept` VALUES ('5', '运维部', '7', '0', '2019-03-25');
INSERT INTO `dept` VALUES ('6', '测试部', '8', '1', '2019-03-25');
INSERT INTO `dept` VALUES ('7', '鍗庡崡鍒嗛儴', '1', '1', '2019-03-25');
INSERT INTO `dept` VALUES ('8', '鍗庡寳鍒嗛儴', '1', '1', '2019-03-25');
INSERT INTO `dept` VALUES ('8b81e4816f453895016f453e249a0041', '测试部', '1', '1', '2019-12-27');

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES ('1', 'user_status', '用户状态', '2019-10-27 20:31:36');
INSERT INTO `dict` VALUES ('4', 'dept_status', '部门状态', '2019-10-27 20:31:36');
INSERT INTO `dict` VALUES ('5', 'job_status', '岗位状态', '2019-10-27 20:31:36');
INSERT INTO `dict` VALUES ('6', 'password', NULL, NULL);
INSERT INTO `dict` VALUES ('8b81e4816f3ffacd016f400499fa0013', 'dept_type', '机构类型', '2019-12-26 10:24:01');

-- ----------------------------
-- Table structure for dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `dict_detail`;
CREATE TABLE `dict_detail`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典标签',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典值',
  `sort` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序',
  `dict_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典id',
  `create_time` date NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dict_detail
-- ----------------------------
INSERT INTO `dict_detail` VALUES ('1', '激活', 'true', '1', '1', NULL);
INSERT INTO `dict_detail` VALUES ('11', '密码', '123456', '1', '6', NULL);
INSERT INTO `dict_detail` VALUES ('2', '禁用', 'false', '2', '1', NULL);
INSERT INTO `dict_detail` VALUES ('3', '启用', 'true', '1', '4', NULL);
INSERT INTO `dict_detail` VALUES ('4', '停用', 'false', '2', '4', NULL);
INSERT INTO `dict_detail` VALUES ('5', '启用', 'true', '1', '5', NULL);
INSERT INTO `dict_detail` VALUES ('6', '停用', 'false', '2', '5', NULL);
INSERT INTO `dict_detail` VALUES ('8b81e4816f400cba016f400e89fb0000', '总行', '01', '1', '8b81e4816f3ffacd016f400499fa0013', '2019-12-26');
INSERT INTO `dict_detail` VALUES ('8b81e4816f400cba016f400eccb80003', '分行', '02', '999', '8b81e4816f3ffacd016f400499fa0013', '2019-12-26');
INSERT INTO `dict_detail` VALUES ('8b81e4816f400cba016f400eea930006', '支行', '03', '999', '8b81e4816f3ffacd016f400499fa0013', '2019-12-26');

-- ----------------------------
-- Table structure for el_user
-- ----------------------------
DROP TABLE IF EXISTS `el_user`;
CREATE TABLE `el_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `avatar` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `enabled` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `dept_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `job_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `create_time` date NULL DEFAULT NULL COMMENT '创建日期',
  `last_password_reset_time` date NULL DEFAULT NULL COMMENT '最后修改密码的日期',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_user
-- ----------------------------
INSERT INTO `el_user` VALUES ('1', NULL, 'zhengjie@tom.com', '1', '$2a$10$fP.426qKaTmix50Oln8L.uav55gELhAd0Eg66Av4oG86u8km7D/Ky', 'admin', '2', '18888888888', '11', '2019-12-25', '2019-12-25', '管理员', '男');
INSERT INTO `el_user` VALUES ('3', NULL, 'test@eladmin.net', '1', '$2a$10$HhxyGZy.ulf3RvAwaHUGb.k.2i9PBpv4YbLMJWp8pES7pPhTyRCF.', 'test', '2', '17777777777', '12', '2019-12-25', '2019-12-25', '测试1', '男');
INSERT INTO `el_user` VALUES ('8b81e4816f453895016f453d5e910034', NULL, '188@qq.com', '1', '$2a$10$4AD2rqKtw3B4SkmMOPTFmuDoW7VMCnCsJ1a0sFyE6oF2oW2MDWGui', 'test2', '1', '18888888888', '8b81e4816f453895016f453cd6320028', '2019-12-27', '2019-12-25', '测试2', '男');

-- ----------------------------
-- Table structure for email_config
-- ----------------------------
DROP TABLE IF EXISTS `email_config`;
CREATE TABLE `email_config`  (
  `id` decimal(19, 0) NOT NULL COMMENT 'ID',
  `from_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮件服务器SMTP地址',
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `port` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '端口',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发件者用户名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '邮箱配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of email_config
-- ----------------------------

-- ----------------------------
-- Table structure for gen_config
-- ----------------------------
DROP TABLE IF EXISTS `gen_config`;
CREATE TABLE `gen_config`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `cover` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否覆盖',
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名称',
  `pack` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '至于哪个包下',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端代码生成的路径',
  `api_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端Api文件路径',
  `prefix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表前缀',
  `api_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接口名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成器配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_config
-- ----------------------------
INSERT INTO `gen_config` VALUES ('3', 'gen_test', 'Zheng Jie', '1', 'eladmin-system', 'me.zhengjie.gen', 'E:workspacemefronteladmin-websrcviewsgen', 'E:workspacemefronteladmin-websrcapi', NULL, '测试生成');
INSERT INTO `gen_config` VALUES ('8b81e4816f401e00016f40e13cb9000b', 'GEN_TEST', 'XiaofengG', '0', 'eladmin-test', 'me.zhengjie', 'test', 'test', NULL, 'genTest');
INSERT INTO `gen_config` VALUES ('8b81e4816f424b35016f4254fff1001a', 'GEN_TEST_MYBATIS', 'sss', '0', 'eladmin-test-mybatis', 'me.zhengjie', 'genTestMybatis', 'genTestMybatis', NULL, 'genTestMybatis');
INSERT INTO `gen_config` VALUES ('8b81e48170f0b8160170f0bf500c0010', 'ROLE', 'test', '0', 'eladmin-system', 'me.zhengjie.modules.system', 'role', 'role', NULL, 'role');

-- ----------------------------
-- Table structure for gen_test_mybatis
-- ----------------------------
DROP TABLE IF EXISTS `gen_test_mybatis`;
CREATE TABLE `gen_test_mybatis`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `org_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `org_level` int(11) NULL DEFAULT NULL,
  `org_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `org_total` decimal(20, 5) NULL DEFAULT NULL,
  `create_date` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_test_mybatis
-- ----------------------------
INSERT INTO `gen_test_mybatis` VALUES ('1', 'xx总行', 1, '01', 2222222.00000, '2019-12-27');
INSERT INTO `gen_test_mybatis` VALUES ('2', '2', 2, '02', 222.00000, '2020-03-19');

-- ----------------------------
-- Table structure for local_storage
-- ----------------------------
DROP TABLE IF EXISTS `local_storage`;
CREATE TABLE `local_storage`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件真实的名称',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后缀',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `file_size` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大小',
  `operate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `create_time` date NULL DEFAULT NULL COMMENT '创建日期',
  `portal_visible` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '本地存储' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of local_storage
-- ----------------------------
INSERT INTO `local_storage` VALUES ('8b81e4816f453895016f45401791004c', 'krb5-20191227104705861.conf', 'xxx', 'conf', 'C:eladminfile其他krb5-20191227104705861.conf', '其他', '428B   ', 'admin', '2019-12-27', NULL);
INSERT INTO `local_storage` VALUES ('8b81e48170e244980170e25bcfb1002c', 'tnsnames-20200316040032615.ora', 'tnsnames.ora', 'ora', 'D:eladmin-filesfile其他	nsnames-20200316040032615.ora', '其他', '331B   ', 'admin', '2020-03-16', '0');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` date NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `log_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` decimal(19, 0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `i_frame` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否外链',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `pid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级菜单ID',
  `sort` decimal(19, 0) NULL DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `cache` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '缓存',
  `hidden` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '隐藏',
  `component_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件名称',
  `create_time` date NULL DEFAULT NULL COMMENT '创建日期',
  `permission` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  `type` decimal(10, 0) NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', '系统管理', NULL, '0', 1, 'system', 'system', '0', '0', NULL, '2019-12-25', NULL, 0);
INSERT INTO `menu` VALUES ('10', '0', '组件管理', NULL, '0', 50, 'zujian', 'components', '0', '0', NULL, '2019-12-25', NULL, 0);
INSERT INTO `menu` VALUES ('102', '0', '删除', NULL, '97', 999, NULL, NULL, '0', '0', NULL, '2019-12-25', 'deployHistory:del', 2);
INSERT INTO `menu` VALUES ('103', '0', '服务器新增', NULL, '92', 999, NULL, NULL, '0', '0', NULL, '2019-12-25', 'serverDeploy:add', 2);
INSERT INTO `menu` VALUES ('104', '0', '服务器编辑', NULL, '92', 999, NULL, NULL, '0', '0', NULL, '2019-12-25', 'serverDeploy:edit', 2);
INSERT INTO `menu` VALUES ('105', '0', '服务器删除', NULL, '92', 999, NULL, NULL, '0', '0', NULL, '2019-12-25', 'serverDeploy:del', 2);
INSERT INTO `menu` VALUES ('106', '0', '应用新增', NULL, '93', 999, NULL, NULL, '0', '0', NULL, '2019-12-25', 'app:add', 2);
INSERT INTO `menu` VALUES ('107', '0', '应用编辑', NULL, '93', 999, NULL, NULL, '0', '0', NULL, '2019-12-25', 'app:edit', 2);
INSERT INTO `menu` VALUES ('108', '0', '应用删除', NULL, '93', 999, NULL, NULL, '0', '0', NULL, '2019-12-25', 'app:del', 2);
INSERT INTO `menu` VALUES ('109', '0', '部署新增', NULL, '94', 999, NULL, NULL, '0', '0', NULL, '2019-12-25', 'deploy:add', 2);
INSERT INTO `menu` VALUES ('11', '0', '图标库', 'components/icons/index', '10', 51, 'icon', 'icon', '0', '0', 'Icons', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('110', '0', '部署编辑', NULL, '94', 999, NULL, NULL, '0', '0', NULL, '2019-12-25', 'deploy:edit', 2);
INSERT INTO `menu` VALUES ('111', '0', '部署删除', NULL, '94', 999, NULL, NULL, '0', '0', NULL, '2019-12-25', 'deploy:del', 2);
INSERT INTO `menu` VALUES ('112', '0', '数据库新增', NULL, '98', 999, NULL, NULL, '0', '0', NULL, '2019-12-25', 'database:add', 2);
INSERT INTO `menu` VALUES ('113', '0', '数据库编辑', NULL, '98', 999, NULL, NULL, '0', '0', NULL, '2019-12-25', 'database:edit', 2);
INSERT INTO `menu` VALUES ('114', '0', '数据库删除', NULL, '98', 999, NULL, NULL, '0', '0', NULL, '2019-12-25', 'database:del', 2);
INSERT INTO `menu` VALUES ('116', '0', '生成预览', 'generator/preview', '36', 999, 'java', 'generator/preview/:tableName', '1', '1', 'Preview', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('14', '0', '邮件工具', 'tools/email/index', '36', 35, 'email', 'email', '0', '0', 'Email', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('15', '0', '富文本', 'components/Editor', '10', 52, 'fw', 'tinymce', '0', '0', 'Editor', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('18', '0', '存储管理', 'tools/storage/local/index', '36', 34, 'qiniu', 'localStorage', '0', '0', 'localStorage', '2019-12-25', 'storage:list', 1);
INSERT INTO `menu` VALUES ('2', '0', '用户管理', 'system/user/index', '1', 2, 'peoples', 'user', '0', '0', 'User', '2019-12-25', 'user:list', 1);
INSERT INTO `menu` VALUES ('21', '0', '多级菜单', NULL, '0', 900, 'menu', 'nested', '0', '1', NULL, '2019-12-25', NULL, 0);
INSERT INTO `menu` VALUES ('22', '0', '二级菜单1', 'nested/menu1/index', '21', 999, 'menu', 'menu1', '0', '0', NULL, '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('23', '0', '二级菜单2', 'nested/menu2/index', '21', 999, 'menu', 'menu2', '0', '0', NULL, '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('24', '0', '三级菜单1', 'nested/menu1/menu1-1', '22', 999, 'menu', 'menu1-1', '0', '0', NULL, '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('27', '0', '三级菜单2', 'nested/menu1/menu1-2', '22', 999, 'menu', 'menu1-2', '0', '0', NULL, '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('28', '0', '定时任务', 'system/timing/index', '36', 31, 'timing', 'timing', '0', '0', 'Timing', '2019-12-25', 'timing:list', 1);
INSERT INTO `menu` VALUES ('3', '0', '角色管理', 'system/role/index', '1', 3, 'role', 'role', '0', '0', 'Role', '2019-12-25', 'roles:list', 1);
INSERT INTO `menu` VALUES ('30', '0', '代码生成', 'generator/index', '36', 32, 'dev', 'generator', '1', '0', 'GeneratorIndex', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('32', '0', '异常日志', 'monitor/log/errorLog', '6', 12, 'error', 'errorLog', '0', '0', 'ErrorLog', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('33', '0', 'Markdown', 'components/MarkDown', '10', 53, 'markdown', 'markdown', '0', '0', 'Markdown', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('34', '0', 'Yaml编辑器', 'components/YamlEdit', '10', 54, 'dev', 'yaml', '0', '0', 'YamlEdit', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('35', '0', '部门管理', 'system/dept/index', '1', 6, 'dept', 'dept', '0', '0', 'Dept', '2019-12-25', 'dept:list', 1);
INSERT INTO `menu` VALUES ('36', '0', '系统工具', NULL, '0', 30, 'sys-tools', 'sys-tools', '0', '0', NULL, '2019-12-25', NULL, 0);
INSERT INTO `menu` VALUES ('38', '0', '接口文档', 'tools/swagger/index', '36', 36, 'swagger', 'swagger2', '0', '0', 'Swagger', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('39', '0', '字典管理', 'system/dict/index', '1', 8, 'dictionary', 'dict', '0', '0', 'Dict', '2019-12-25', 'dict:list', 1);
INSERT INTO `menu` VALUES ('41', '0', '在线用户', 'monitor/online/index', '6', 10, 'Steve-Jobs', 'online', '0', '0', 'OnlineUser', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('44', '0', '用户新增', NULL, '2', 2, NULL, NULL, '0', '0', NULL, '2019-12-25', 'user:add', 2);
INSERT INTO `menu` VALUES ('45', '0', '用户编辑', NULL, '2', 3, NULL, NULL, '0', '0', NULL, '2019-12-25', 'user:edit', 2);
INSERT INTO `menu` VALUES ('46', '0', '用户删除', NULL, '2', 4, NULL, NULL, '0', '0', NULL, '2019-12-25', 'user:del', 2);
INSERT INTO `menu` VALUES ('48', '0', '角色创建', NULL, '3', 2, NULL, NULL, '0', '0', NULL, '2019-12-25', 'roles:add', 2);
INSERT INTO `menu` VALUES ('49', '0', '角色修改', NULL, '3', 3, NULL, NULL, '0', '0', NULL, '2019-12-25', 'roles:edit', 2);
INSERT INTO `menu` VALUES ('5', '0', '菜单管理', 'system/menu/index', '1', 5, 'menu', 'menu', '0', '0', 'Menu', '2019-12-25', 'menu:list', 1);
INSERT INTO `menu` VALUES ('50', '0', '角色删除', NULL, '3', 4, NULL, NULL, '0', '0', NULL, '2019-12-25', 'roles:del', 2);
INSERT INTO `menu` VALUES ('52', '0', '菜单新增', NULL, '5', 2, NULL, NULL, '0', '0', NULL, '2019-12-25', 'menu:add', 2);
INSERT INTO `menu` VALUES ('53', '0', '菜单编辑', NULL, '5', 3, NULL, NULL, '0', '0', NULL, '2019-12-25', 'menu:edit', 2);
INSERT INTO `menu` VALUES ('54', '0', '菜单删除', NULL, '5', 4, NULL, NULL, '0', '0', NULL, '2019-12-25', 'menu:del', 2);
INSERT INTO `menu` VALUES ('56', '0', '部门新增', NULL, '35', 2, NULL, NULL, '0', '0', NULL, '2019-12-25', 'dept:add', 2);
INSERT INTO `menu` VALUES ('57', '0', '部门编辑', NULL, '35', 3, NULL, NULL, '0', '0', NULL, '2019-12-25', 'dept:edit', 2);
INSERT INTO `menu` VALUES ('58', '0', '部门删除', NULL, '35', 4, NULL, NULL, '0', '0', NULL, '2019-12-25', 'dept:del', 2);
INSERT INTO `menu` VALUES ('6', '0', '系统监控', NULL, '0', 10, 'monitor', 'monitor', '0', '0', NULL, '2019-12-25', NULL, 0);
INSERT INTO `menu` VALUES ('64', '0', '字典新增', NULL, '39', 2, NULL, NULL, '0', '0', NULL, '2019-12-25', 'dict:add', 2);
INSERT INTO `menu` VALUES ('65', '0', '字典编辑', NULL, '39', 3, NULL, NULL, '0', '0', NULL, '2019-12-25', 'dict:edit', 2);
INSERT INTO `menu` VALUES ('66', '0', '字典删除', NULL, '39', 4, NULL, NULL, '0', '0', NULL, '2019-12-25', 'dict:del', 2);
INSERT INTO `menu` VALUES ('7', '0', '操作日志', 'monitor/log/index', '6', 11, 'log', 'logs', '0', '0', 'Log', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('73', '0', '任务新增', NULL, '28', 2, NULL, NULL, '0', '0', NULL, '2019-12-25', 'timing:add', 2);
INSERT INTO `menu` VALUES ('74', '0', '任务编辑', NULL, '28', 3, NULL, NULL, '0', '0', NULL, '2019-12-25', 'timing:edit', 2);
INSERT INTO `menu` VALUES ('75', '0', '任务删除', NULL, '28', 4, NULL, NULL, '0', '0', NULL, '2019-12-25', 'timing:del', 2);
INSERT INTO `menu` VALUES ('77', '0', '上传文件', NULL, '18', 2, NULL, NULL, '0', '0', NULL, '2019-12-25', 'storage:add', 2);
INSERT INTO `menu` VALUES ('78', '0', '文件编辑', NULL, '18', 3, NULL, NULL, '0', '0', NULL, '2019-12-25', 'storage:edit', 2);
INSERT INTO `menu` VALUES ('79', '0', '文件删除', NULL, '18', 4, NULL, NULL, '0', '0', NULL, '2019-12-25', 'storage:del', 2);
INSERT INTO `menu` VALUES ('80', '0', '服务监控', 'monitor/server/index', '6', 14, 'codeConsole', 'server', '0', '0', 'ServerMonitor', '2019-12-25', 'server:list', 1);
INSERT INTO `menu` VALUES ('82', '0', '生成配置', 'generator/config', '36', 33, 'dev', 'generator/config/:tableName', '1', '1', 'GeneratorConfig', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('83', '0', '图表库', 'components/Echarts', '10', 50, 'chart', 'echarts', '1', '0', 'Echarts', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('8b81e48170c86fc60170c889d3d90009', '0', '权限管理', 'system/authMgt/index', '1', 999, 'app', 'authMgt', '0', '0', 'authMgt', '2020-03-11', 'menus', 1);
INSERT INTO `menu` VALUES ('8b81e48170f0cdfa0170f0d026ad0001', '0', '测试菜单', NULL, '0', 2, 'chain', 'testMybatis', '0', '0', NULL, '2020-03-19', NULL, 0);
INSERT INTO `menu` VALUES ('8b81e48170f0cdfa0170f0d269e90009', '0', 'mybatis测试', 'testMybatis/genTestMybatis/index', '8b81e48170f0cdfa0170f0d026ad0001', 999, 'dev', 'testMybatis', '0', '0', 'GenTestMybatis', '2020-03-19', 'genTestMybatis', 1);
INSERT INTO `menu` VALUES ('9', '0', 'SQL监控', 'monitor/sql/index', '6', 18, 'sqlMonitor', 'druid', '0', '0', 'Sql', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('90', '0', '运维管理', NULL, '0', 20, 'mnt', 'mnt', '0', '0', 'Mnt', '2019-12-25', NULL, 1);
INSERT INTO `menu` VALUES ('92', '0', '服务器', 'mnt/server/index', '90', 22, 'server', 'mnt/serverDeploy', '0', '0', 'ServerDeploy', '2019-12-25', 'serverDeploy:list', 1);
INSERT INTO `menu` VALUES ('93', '0', '应用管理', 'mnt/app/index', '90', 23, 'app', 'mnt/app', '0', '0', 'App', '2019-12-25', 'app:list', 1);
INSERT INTO `menu` VALUES ('94', '0', '部署管理', 'mnt/deploy/index', '90', 24, 'deploy', 'mnt/deploy', '0', '0', 'Deploy', '2019-12-25', 'deploy:list', 1);
INSERT INTO `menu` VALUES ('97', '0', '部署备份', 'mnt/deployHistory/index', '90', 25, 'backup', 'mnt/deployHistory', '0', '0', 'DeployHistory', '2019-12-25', 'deployHistory:list', 1);
INSERT INTO `menu` VALUES ('98', '0', '数据库管理', 'mnt/database/index', '90', 26, 'database', 'mnt/database', '0', '0', 'Database', '2019-12-25', 'database:list', 1);

-- ----------------------------
-- Table structure for mnt_app
-- ----------------------------
DROP TABLE IF EXISTS `mnt_app`;
CREATE TABLE `mnt_app`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用名称',
  `upload_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传目录',
  `deploy_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部署路径',
  `backup_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备份路径',
  `port` decimal(10, 0) NULL DEFAULT NULL COMMENT '应用端口',
  `start_script` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '启动脚本',
  `deploy_script` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部署脚本',
  `create_time` date NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应用管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mnt_app
-- ----------------------------
INSERT INTO `mnt_app` VALUES ('1', 'eladmin-monitor-2.4.jar', '/opt/upload', '/opt/monitor', '/opt/backup', 8777, 'cd /opt/monitor\nnohup java -jar eladmin-monitor-2.4.jar >nohup.out 2> &', 'mv -f /opt/upload/eladmin-monitor-2.4.jar /opt/monitor\ncd /opt/monitor\nnohup java -jar eladmin-monitor-2.4.jar >nohup.out 2> &', '2019-12-25');
INSERT INTO `mnt_app` VALUES ('2', 'eladmin-system-2.3.jar', '/opt/upload', '/opt/eladmin', '/opt/backup/eladmin', 8000, 'cd /opt/eladmin\nnohup java -jar eladmin-system-2.3.jar --spring.profiles.active=prod >nohup.out 2> &', 'mv -f /opt/upload/eladmin-system-2.3.jar /opt/eladmin/\ncd /opt/eladmin\nnohup java -jar eladmin-system-2.3.jar --spring.profiles.active=prod >nohup.out 2> &', '2019-12-25');

-- ----------------------------
-- Table structure for mnt_database
-- ----------------------------
DROP TABLE IF EXISTS `mnt_database`;
CREATE TABLE `mnt_database`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `jdbc_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'jdbc连接',
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mnt_database
-- ----------------------------
INSERT INTO `mnt_database` VALUES ('b48b3435493546fbbb2a47118c2c1f15', 'oracle@portal', 'jdbc:oracle:thin:@23.1.3.164:1521:orcl', 'portal', 'portal', '2019-12-27');
INSERT INTO `mnt_database` VALUES ('c4109eefc5724c65857ca9dd2690e0dd', 'mysql@eladmin', 'jdbc:mysql://11.1.100.2:3306/eladmin?serverTimezone=Asia/Shanghai&characterEncoding=utf8&useSSL=false', 'root', 'root', '2019-12-25');

-- ----------------------------
-- Table structure for mnt_deploy
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy`;
CREATE TABLE `mnt_deploy`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `app_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用编号',
  `create_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部署管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mnt_deploy
-- ----------------------------
INSERT INTO `mnt_deploy` VALUES ('3', '1', '2019-12-25');
INSERT INTO `mnt_deploy` VALUES ('6', '2', '2019-12-25');

-- ----------------------------
-- Table structure for mnt_deploy_history
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_history`;
CREATE TABLE `mnt_deploy_history`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `app_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用名称',
  `deploy_date` date NULL DEFAULT NULL COMMENT '部署日期',
  `deploy_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部署用户',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务器IP',
  `deploy_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部署编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部署历史管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mnt_deploy_history
-- ----------------------------
INSERT INTO `mnt_deploy_history` VALUES ('4ee0edd1f3b648a396280a542d72c121', 'eladmin-monitor-2.4.jar', '2019-12-25', 'admin', '132.232.129.20', '3');
INSERT INTO `mnt_deploy_history` VALUES ('4fd432a128c947ccae55316b3d5dcd7', 'eladmin-monitor-2.4.jar', '2019-12-25', 'admin', '132.232.129.20', '3');
INSERT INTO `mnt_deploy_history` VALUES ('cfda21f48da341b396657af94554c890', 'eladmin-monitor-2.4.jar', '2019-12-25', 'admin', '132.232.129.20', '3');

-- ----------------------------
-- Table structure for mnt_deploy_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_server`;
CREATE TABLE `mnt_deploy_server`  (
  `deploy_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `server_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`deploy_id`, `server_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应用与服务器关联' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mnt_deploy_server
-- ----------------------------
INSERT INTO `mnt_deploy_server` VALUES ('3', '1');
INSERT INTO `mnt_deploy_server` VALUES ('6', '1');

-- ----------------------------
-- Table structure for mnt_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_server`;
CREATE TABLE `mnt_server`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'IP地址',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `port` decimal(10, 0) NULL DEFAULT NULL COMMENT '端口',
  `create_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '服务器管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mnt_server
-- ----------------------------
INSERT INTO `mnt_server` VALUES ('1', 'root', '132.232.129.20', '腾讯云', 'Dqjdda1996.', 8013, '2019-12-25');

-- ----------------------------
-- Table structure for monitor_server
-- ----------------------------
DROP TABLE IF EXISTS `monitor_server`;
CREATE TABLE `monitor_server`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cpu_core` decimal(10, 0) NULL DEFAULT NULL COMMENT 'CPU内核数',
  `cpu_rate` float NULL DEFAULT NULL COMMENT 'CPU使用率',
  `disk_total` float NULL DEFAULT NULL COMMENT '磁盘总量',
  `disk_used` float NULL DEFAULT NULL COMMENT '磁盘使用量',
  `mem_total` float NULL DEFAULT NULL COMMENT '内存总数',
  `mem_used` float NULL DEFAULT NULL COMMENT '内存使用量',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `port` decimal(10, 0) NULL DEFAULT NULL COMMENT '访问端口',
  `sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '排序',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `swap_total` float NULL DEFAULT NULL COMMENT '交换区总量',
  `swap_used` float NULL DEFAULT NULL COMMENT '交换区使用量',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '服务监控' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of monitor_server
-- ----------------------------
INSERT INTO `monitor_server` VALUES ('1', 8, 0.0592402, 465.124, 91.6652, 7.84941, 7.60523, '本地', 8777, 999, '0', 14.5994, 11.2634, 'localhost');

-- ----------------------------
-- Table structure for object_menus
-- ----------------------------
DROP TABLE IF EXISTS `object_menus`;
CREATE TABLE `object_menus`  (
  `object_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of object_menus
-- ----------------------------
INSERT INTO `object_menus` VALUES ('user', '1', '1');
INSERT INTO `object_menus` VALUES ('user', '1', '2');
INSERT INTO `object_menus` VALUES ('user', '1', '44');
INSERT INTO `object_menus` VALUES ('user', '1', '45');
INSERT INTO `object_menus` VALUES ('user', '1', '46');
INSERT INTO `object_menus` VALUES ('user', '1', '3');
INSERT INTO `object_menus` VALUES ('user', '1', '48');
INSERT INTO `object_menus` VALUES ('user', '1', '49');
INSERT INTO `object_menus` VALUES ('user', '1', '50');
INSERT INTO `object_menus` VALUES ('user', '1', '5');
INSERT INTO `object_menus` VALUES ('user', '1', '52');
INSERT INTO `object_menus` VALUES ('user', '1', '53');
INSERT INTO `object_menus` VALUES ('user', '1', '54');
INSERT INTO `object_menus` VALUES ('user', '1', '35');
INSERT INTO `object_menus` VALUES ('user', '1', '56');
INSERT INTO `object_menus` VALUES ('user', '1', '57');
INSERT INTO `object_menus` VALUES ('user', '1', '58');
INSERT INTO `object_menus` VALUES ('user', '1', '39');
INSERT INTO `object_menus` VALUES ('user', '1', '64');
INSERT INTO `object_menus` VALUES ('user', '1', '65');
INSERT INTO `object_menus` VALUES ('user', '1', '66');
INSERT INTO `object_menus` VALUES ('user', '1', '8b81e48170c86fc60170c889d3d90009');
INSERT INTO `object_menus` VALUES ('user', '1', '8b81e48170f0cdfa0170f0d026ad0001');
INSERT INTO `object_menus` VALUES ('user', '1', '8b81e48170f0cdfa0170f0d269e90009');
INSERT INTO `object_menus` VALUES ('user', '1', '6');
INSERT INTO `object_menus` VALUES ('user', '1', '41');
INSERT INTO `object_menus` VALUES ('user', '1', '7');
INSERT INTO `object_menus` VALUES ('user', '1', '32');
INSERT INTO `object_menus` VALUES ('user', '1', '80');
INSERT INTO `object_menus` VALUES ('user', '1', '9');
INSERT INTO `object_menus` VALUES ('user', '1', '90');
INSERT INTO `object_menus` VALUES ('user', '1', '92');
INSERT INTO `object_menus` VALUES ('user', '1', '103');
INSERT INTO `object_menus` VALUES ('user', '1', '105');
INSERT INTO `object_menus` VALUES ('user', '1', '104');
INSERT INTO `object_menus` VALUES ('user', '1', '93');
INSERT INTO `object_menus` VALUES ('user', '1', '106');
INSERT INTO `object_menus` VALUES ('user', '1', '108');
INSERT INTO `object_menus` VALUES ('user', '1', '107');
INSERT INTO `object_menus` VALUES ('user', '1', '94');
INSERT INTO `object_menus` VALUES ('user', '1', '109');
INSERT INTO `object_menus` VALUES ('user', '1', '111');
INSERT INTO `object_menus` VALUES ('user', '1', '110');
INSERT INTO `object_menus` VALUES ('user', '1', '97');
INSERT INTO `object_menus` VALUES ('user', '1', '102');
INSERT INTO `object_menus` VALUES ('user', '1', '98');
INSERT INTO `object_menus` VALUES ('user', '1', '112');
INSERT INTO `object_menus` VALUES ('user', '1', '114');
INSERT INTO `object_menus` VALUES ('user', '1', '113');
INSERT INTO `object_menus` VALUES ('user', '1', '36');
INSERT INTO `object_menus` VALUES ('user', '1', '28');
INSERT INTO `object_menus` VALUES ('user', '1', '73');
INSERT INTO `object_menus` VALUES ('user', '1', '74');
INSERT INTO `object_menus` VALUES ('user', '1', '75');
INSERT INTO `object_menus` VALUES ('user', '1', '30');
INSERT INTO `object_menus` VALUES ('user', '1', '82');
INSERT INTO `object_menus` VALUES ('user', '1', '18');
INSERT INTO `object_menus` VALUES ('user', '1', '77');
INSERT INTO `object_menus` VALUES ('user', '1', '78');
INSERT INTO `object_menus` VALUES ('user', '1', '79');
INSERT INTO `object_menus` VALUES ('user', '1', '14');
INSERT INTO `object_menus` VALUES ('user', '1', '38');
INSERT INTO `object_menus` VALUES ('user', '1', '116');
INSERT INTO `object_menus` VALUES ('user', '1', '10');
INSERT INTO `object_menus` VALUES ('user', '1', '83');
INSERT INTO `object_menus` VALUES ('user', '1', '11');
INSERT INTO `object_menus` VALUES ('user', '1', '15');
INSERT INTO `object_menus` VALUES ('user', '1', '33');
INSERT INTO `object_menus` VALUES ('user', '1', '34');
INSERT INTO `object_menus` VALUES ('user', '1', '21');
INSERT INTO `object_menus` VALUES ('user', '1', '23');
INSERT INTO `object_menus` VALUES ('user', '1', '22');
INSERT INTO `object_menus` VALUES ('user', '1', '27');
INSERT INTO `object_menus` VALUES ('user', '1', '24');

-- ----------------------------
-- Table structure for quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `quartz_job`;
CREATE TABLE `quartz_job`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Spring Bean名称',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron 表达式',
  `is_pause` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态：1暂停、0启用',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` date NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quartz_job
-- ----------------------------
INSERT INTO `quartz_job` VALUES ('1', 'visitsTask', '0 0 0 * * ?', '0', '更新访客记录', 'run', NULL, '每日0点创建新的访客记录', '2019-12-25');
INSERT INTO `quartz_job` VALUES ('2', 'testTask', '0/5 * * * * ?', '1', '测试1', 'run1', 'test', '带参测试，多参使用json', '2019-12-25');
INSERT INTO `quartz_job` VALUES ('3', 'testTask', '0/5 * * * * ?', '1', '测试', 'run', NULL, '不带参测试', '2019-12-25');

-- ----------------------------
-- Table structure for quartz_log
-- ----------------------------
DROP TABLE IF EXISTS `quartz_log`;
CREATE TABLE `quartz_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `baen_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` date NULL DEFAULT NULL,
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_success` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quartz_log
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `data_scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据权限',
  `role_level` decimal(10, 0) NULL DEFAULT NULL COMMENT '角色级别',
  `create_time` date NULL DEFAULT NULL COMMENT '创建日期',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '功能权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '-', '全部', 1, '2019-12-25', 'admin');
INSERT INTO `role` VALUES ('2', '普通用户', '-', '本级', 2, '2019-12-25', 'common');
INSERT INTO `role` VALUES ('8b81e4816f453895016f453da17b0039', '测试角色', NULL, '全部', 3, '2019-12-27', '2');

-- ----------------------------
-- Table structure for roles_depts
-- ----------------------------
DROP TABLE IF EXISTS `roles_depts`;
CREATE TABLE `roles_depts`  (
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色部门关联' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles_depts
-- ----------------------------

-- ----------------------------
-- Table structure for roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `roles_menus`;
CREATE TABLE `roles_menus`  (
  `menu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单ID',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单关联' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles_menus
-- ----------------------------
INSERT INTO `roles_menus` VALUES ('1', '1');
INSERT INTO `roles_menus` VALUES ('1', '2');
INSERT INTO `roles_menus` VALUES ('1', '8b81e4816f453895016f453da17b0039');
INSERT INTO `roles_menus` VALUES ('10', '1');
INSERT INTO `roles_menus` VALUES ('10', '2');
INSERT INTO `roles_menus` VALUES ('10', '8b81e4816f453895016f453da17b0039');
INSERT INTO `roles_menus` VALUES ('11', '1');
INSERT INTO `roles_menus` VALUES ('11', '2');
INSERT INTO `roles_menus` VALUES ('116', '1');
INSERT INTO `roles_menus` VALUES ('14', '1');
INSERT INTO `roles_menus` VALUES ('14', '2');
INSERT INTO `roles_menus` VALUES ('15', '1');
INSERT INTO `roles_menus` VALUES ('15', '2');
INSERT INTO `roles_menus` VALUES ('18', '1');
INSERT INTO `roles_menus` VALUES ('18', '2');
INSERT INTO `roles_menus` VALUES ('2', '1');
INSERT INTO `roles_menus` VALUES ('2', '2');
INSERT INTO `roles_menus` VALUES ('21', '1');
INSERT INTO `roles_menus` VALUES ('21', '2');
INSERT INTO `roles_menus` VALUES ('21', '8b81e4816f453895016f453da17b0039');
INSERT INTO `roles_menus` VALUES ('22', '1');
INSERT INTO `roles_menus` VALUES ('23', '1');
INSERT INTO `roles_menus` VALUES ('23', '2');
INSERT INTO `roles_menus` VALUES ('24', '1');
INSERT INTO `roles_menus` VALUES ('24', '2');
INSERT INTO `roles_menus` VALUES ('27', '1');
INSERT INTO `roles_menus` VALUES ('27', '2');
INSERT INTO `roles_menus` VALUES ('28', '1');
INSERT INTO `roles_menus` VALUES ('28', '2');
INSERT INTO `roles_menus` VALUES ('3', '1');
INSERT INTO `roles_menus` VALUES ('3', '2');
INSERT INTO `roles_menus` VALUES ('30', '1');
INSERT INTO `roles_menus` VALUES ('30', '2');
INSERT INTO `roles_menus` VALUES ('32', '1');
INSERT INTO `roles_menus` VALUES ('33', '1');
INSERT INTO `roles_menus` VALUES ('33', '2');
INSERT INTO `roles_menus` VALUES ('34', '1');
INSERT INTO `roles_menus` VALUES ('34', '2');
INSERT INTO `roles_menus` VALUES ('35', '1');
INSERT INTO `roles_menus` VALUES ('35', '2');
INSERT INTO `roles_menus` VALUES ('36', '1');
INSERT INTO `roles_menus` VALUES ('36', '2');
INSERT INTO `roles_menus` VALUES ('36', '8b81e4816f453895016f453da17b0039');
INSERT INTO `roles_menus` VALUES ('38', '1');
INSERT INTO `roles_menus` VALUES ('38', '2');
INSERT INTO `roles_menus` VALUES ('39', '1');
INSERT INTO `roles_menus` VALUES ('39', '2');
INSERT INTO `roles_menus` VALUES ('41', '1');
INSERT INTO `roles_menus` VALUES ('44', '1');
INSERT INTO `roles_menus` VALUES ('44', '2');
INSERT INTO `roles_menus` VALUES ('45', '1');
INSERT INTO `roles_menus` VALUES ('46', '1');
INSERT INTO `roles_menus` VALUES ('48', '1');
INSERT INTO `roles_menus` VALUES ('48', '2');
INSERT INTO `roles_menus` VALUES ('49', '1');
INSERT INTO `roles_menus` VALUES ('49', '2');
INSERT INTO `roles_menus` VALUES ('5', '1');
INSERT INTO `roles_menus` VALUES ('5', '2');
INSERT INTO `roles_menus` VALUES ('50', '1');
INSERT INTO `roles_menus` VALUES ('50', '2');
INSERT INTO `roles_menus` VALUES ('52', '1');
INSERT INTO `roles_menus` VALUES ('53', '1');
INSERT INTO `roles_menus` VALUES ('54', '1');
INSERT INTO `roles_menus` VALUES ('56', '1');
INSERT INTO `roles_menus` VALUES ('57', '1');
INSERT INTO `roles_menus` VALUES ('58', '1');
INSERT INTO `roles_menus` VALUES ('6', '1');
INSERT INTO `roles_menus` VALUES ('6', '2');
INSERT INTO `roles_menus` VALUES ('6', '8b81e4816f453895016f453da17b0039');
INSERT INTO `roles_menus` VALUES ('64', '1');
INSERT INTO `roles_menus` VALUES ('65', '1');
INSERT INTO `roles_menus` VALUES ('66', '1');
INSERT INTO `roles_menus` VALUES ('7', '1');
INSERT INTO `roles_menus` VALUES ('73', '1');
INSERT INTO `roles_menus` VALUES ('74', '1');
INSERT INTO `roles_menus` VALUES ('75', '1');
INSERT INTO `roles_menus` VALUES ('77', '1');
INSERT INTO `roles_menus` VALUES ('77', '2');
INSERT INTO `roles_menus` VALUES ('78', '1');
INSERT INTO `roles_menus` VALUES ('78', '2');
INSERT INTO `roles_menus` VALUES ('79', '1');
INSERT INTO `roles_menus` VALUES ('79', '2');
INSERT INTO `roles_menus` VALUES ('80', '1');
INSERT INTO `roles_menus` VALUES ('82', '1');
INSERT INTO `roles_menus` VALUES ('83', '1');
INSERT INTO `roles_menus` VALUES ('9', '1');
INSERT INTO `roles_menus` VALUES ('9', '2');
INSERT INTO `roles_menus` VALUES ('90', '1');
INSERT INTO `roles_menus` VALUES ('90', '8b81e4816f453895016f453da17b0039');
INSERT INTO `roles_menus` VALUES ('92', '1');
INSERT INTO `roles_menus` VALUES ('93', '1');
INSERT INTO `roles_menus` VALUES ('94', '1');
INSERT INTO `roles_menus` VALUES ('97', '1');
INSERT INTO `roles_menus` VALUES ('98', '1');

-- ----------------------------
-- Table structure for user_avatar
-- ----------------------------
DROP TABLE IF EXISTS `user_avatar`;
CREATE TABLE `user_avatar`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实文件名',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `avatar_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大小',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户头像' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_avatar
-- ----------------------------

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles`  (
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关联' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES ('1', '1');
INSERT INTO `users_roles` VALUES ('3', '2');
INSERT INTO `users_roles` VALUES ('8b81e4816f453895016f453d5e910034', '1');

-- ----------------------------
-- Table structure for visits
-- ----------------------------
DROP TABLE IF EXISTS `visits`;
CREATE TABLE `visits`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` date NULL DEFAULT NULL,
  `visits_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_counts` decimal(19, 0) NULL DEFAULT NULL,
  `pv_counts` decimal(19, 0) NULL DEFAULT NULL,
  `week_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '访客记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visits
-- ----------------------------
INSERT INTO `visits` VALUES ('1', '2019-12-25', '2019-12-25', 0, 3, 'Wed');
INSERT INTO `visits` VALUES ('8b81e4816f3d0969016f3dc94c770003', '2019-12-26', '2019-12-26', 1, 7, 'Thu');
INSERT INTO `visits` VALUES ('8b81e4816f424b35016f42efa8fb001b', '2019-12-27', '2019-12-27', 2, 6, 'Fri');
INSERT INTO `visits` VALUES ('8b81e48170c84d0e0170c84d66d00000', '2020-03-11', '2020-03-11', 2, 14, '周三');
INSERT INTO `visits` VALUES ('8b81e48170cdfba50170cdfbe1000000', '2020-03-12', '2020-03-12', 1, 4, '周四');
INSERT INTO `visits` VALUES ('8b81e48170ce069a0170cf795469000b', '2020-03-13', '2020-03-13', 0, 0, '周五');
INSERT INTO `visits` VALUES ('8b81e48170ce069a0170d49fb31a000d', '2020-03-14', '2020-03-14', 0, 0, '周六');
INSERT INTO `visits` VALUES ('8b81e48170ce069a0170d9c610a3000f', '2020-03-15', '2020-03-15', 0, 0, '周日');
INSERT INTO `visits` VALUES ('8b81e48170ce069a0170deec6d5a0011', '2020-03-16', '2020-03-16', 1, 4, '周一');
INSERT INTO `visits` VALUES ('8b81e48170e244980170e412c66f004c', '2020-03-17', '2020-03-17', 1, 10, '周二');
INSERT INTO `visits` VALUES ('8b81e48170e244980170e93922640069', '2020-03-18', '2020-03-18', 0, 1, '周三');
INSERT INTO `visits` VALUES ('8b81e48170f05fea0170f06043a30000', '2020-03-19', '2020-03-19', 1, 4, '周四');

SET FOREIGN_KEY_CHECKS = 1;
