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

 Date: 19/03/2020 16:22:36
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

SET FOREIGN_KEY_CHECKS = 1;
