
insert into SYS_DEPT (id, name, pid, enabled, create_time)
values ('2', '研发部', '7', '1', to_date('25-03-2019 09:15:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DEPT (id, name, pid, enabled, create_time)
values ('5', '运维部', '7', '0', to_date('25-03-2019 09:20:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DEPT (id, name, pid, enabled, create_time)
values ('6', '测试部', '8', '1', to_date('25-03-2019 09:52:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DEPT (id, name, pid, enabled, create_time)
values ('11', '人事部', '8', '1', to_date('25-03-2019 11:07:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DEPT (id, name, pid, enabled, create_time)
values ('8b81e4816f453895016f453e249a0041', '测试部', '1', '1', to_date('27-12-2019 10:44:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DEPT (id, name, pid, enabled, create_time)
values ('1', 'EL-ADMIN', '0', '1', to_date('01-03-2019 12:07:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DEPT (id, name, pid, enabled, create_time)
values ('7', '鍗庡崡鍒嗛儴', '1', '1', to_date('25-03-2019 11:04:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DEPT (id, name, pid, enabled, create_time)
values ('8', '鍗庡寳鍒嗛儴', '1', '1', to_date('25-03-2019 11:04:53', 'dd-mm-yyyy hh24:mi:ss'));
commit;
insert into SYS_DICT (id, name, remark, create_time)
values ('8b81e4816f3ffacd016f400499fa0013', 'SYS_DEPT_type', '机构类型', to_date('26-12-2019 10:24:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (id, name, remark, create_time)
values ('1', 'user_status', '用户状态', to_date('27-10-2019 20:31:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (id, name, remark, create_time)
values ('4', 'SYS_DEPT_status', '部门状态', to_date('27-10-2019 20:31:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (id, name, remark, create_time)
values ('5', 'job_status', '岗位状态', to_date('27-10-2019 20:31:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (id, name, remark, create_time)
values ('6', 'password', null, null);
commit;
insert into SYS_DICT_DETAIL (id, label, value, sort, SYS_DICT_id, create_time)
values ('8b81e4816f400cba016f400e89fb0000', '总行', '01', '1', '8b81e4816f3ffacd016f400499fa0013', to_date('26-12-2019 10:34:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_DETAIL (id, label, value, sort, SYS_DICT_id, create_time)
values ('8b81e4816f400cba016f400eea930006', '支行', '03', '999', '8b81e4816f3ffacd016f400499fa0013', to_date('26-12-2019 10:35:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_DETAIL (id, label, value, sort, SYS_DICT_id, create_time)
values ('1', '激活', 'true', '1', '1', null);
insert into SYS_DICT_DETAIL (id, label, value, sort, SYS_DICT_id, create_time)
values ('2', '禁用', 'false', '2', '1', null);
insert into SYS_DICT_DETAIL (id, label, value, sort, SYS_DICT_id, create_time)
values ('3', '启用', 'true', '1', '4', null);
insert into SYS_DICT_DETAIL (id, label, value, sort, SYS_DICT_id, create_time)
values ('4', '停用', 'false', '2', '4', null);
insert into SYS_DICT_DETAIL (id, label, value, sort, SYS_DICT_id, create_time)
values ('5', '启用', 'true', '1', '5', null);
insert into SYS_DICT_DETAIL (id, label, value, sort, SYS_DICT_id, create_time)
values ('6', '停用', 'false', '2', '5', null);
insert into SYS_DICT_DETAIL (id, label, value, sort, SYS_DICT_id, create_time)
values ('8b81e4816f400cba016f400eccb80003', '分行', '02', '999', '8b81e4816f3ffacd016f400499fa0013', to_date('26-12-2019 10:35:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_DETAIL (id, label, value, sort, SYS_DICT_id, create_time)
values ('11', '密码', '123456', '1', '6', null);
commit;
insert into EL_USER (id, avatar, email, enabled, password, username, SYS_DEPT_id, phone, job_id, create_time, last_password_reset_time, nick_name, sex)
values ('1', null, 'zhengjie@tom.com', '1', '$2a$10$fP.426qKaTmix50Oln8L.uav55gELhAd0Eg66Av4oG86u8km7D/Ky', 'admin', '2', '18888888888', '11', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), '管理员', '男');
insert into EL_USER (id, avatar, email, enabled, password, username, SYS_DEPT_id, phone, job_id, create_time, last_password_reset_time, nick_name, sex)
values ('3', null, 'test@eladmin.net', '1', '$2a$10$HhxyGZy.ulf3RvAwaHUGb.k.2i9PBpv4YbLMJWp8pES7pPhTyRCF.', 'test', '2', '17777777777', '12', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), '测试1', '男');
insert into EL_USER (id, avatar, email, enabled, password, username, SYS_DEPT_id, phone, job_id, create_time, last_password_reset_time, nick_name, sex)
values ('8b81e4816f453895016f453d5e910034', null, '188@qq.com', '1', '$2a$10$4AD2rqKtw3B4SkmMOPTFmuDoW7VMCnCsJ1a0sFyE6oF2oW2MDWGui', 'test2', '1', '18888888888', '8b81e4816f453895016f453cd6320028', to_date('27-12-2019 10:44:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), '测试2', '男');
commit; 
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('8b81e48170c86fc60170c889d3d90009', '0', '权限管理', 'system/authMgt/index', '1', 999, 'app', 'authMgt', '0', '0', 'authMgt', to_date('11-03-2020 15:40:40', 'dd-mm-yyyy hh24:mi:ss'), 'SYS_MENUs', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('1', '0', '系统管理', null, '0', 1, 'system', 'system', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 0);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('2', '0', '用户管理', 'system/user/index', '1', 2, 'peoples', 'user', '0', '0', 'User', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'user:list', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('3', '0', '角色管理', 'system/role/index', '1', 3, 'role', 'role', '0', '0', 'Role', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'roles:list', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('5', '0', '菜单管理', 'system/SYS_MENU/index', '1', 5, 'SYS_MENU', 'SYS_MENU', '0', '0', 'SYS_MENU', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'SYS_MENU:list', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('6', '0', '系统监控', null, '0', 10, 'monitor', 'monitor', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 0);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('7', '0', '操作日志', 'monitor/log/index', '6', 11, 'log', 'logs', '0', '0', 'Log', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('9', '0', 'SQL监控', 'monitor/sql/index', '6', 18, 'sqlMonitor', 'druid', '0', '0', 'Sql', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('10', '0', '组件管理', null, '0', 50, 'zujian', 'components', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 0);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('11', '0', '图标库', 'components/icons/index', '10', 51, 'icon', 'icon', '0', '0', 'Icons', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('14', '0', '邮件工具', 'tools/email/index', '36', 35, 'email', 'email', '0', '0', 'Email', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('15', '0', '富文本', 'components/Editor', '10', 52, 'fw', 'tinymce', '0', '0', 'Editor', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('18', '0', '存储管理', 'tools/storage/local/index', '36', 34, 'qiniu', 'localStorage', '0', '0', 'localStorage', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'storage:list', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('21', '0', '多级菜单', null, '0', 900, 'SYS_MENU', 'nested', '0', '1', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 0);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('22', '0', '二级菜单1', 'nested/SYS_MENU1/index', '21', 999, 'SYS_MENU', 'SYS_MENU1', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('23', '0', '二级菜单2', 'nested/SYS_MENU2/index', '21', 999, 'SYS_MENU', 'SYS_MENU2', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('24', '0', '三级菜单1', 'nested/SYS_MENU1/SYS_MENU1-1', '22', 999, 'SYS_MENU', 'SYS_MENU1-1', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('27', '0', '三级菜单2', 'nested/SYS_MENU1/SYS_MENU1-2', '22', 999, 'SYS_MENU', 'SYS_MENU1-2', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('28', '0', '定时任务', 'system/timing/index', '36', 31, 'timing', 'timing', '0', '0', 'Timing', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'timing:list', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('30', '0', '代码生成', 'generator/index', '36', 32, 'dev', 'generator', '1', '0', 'GeneratorIndex', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('32', '0', '异常日志', 'monitor/log/errorLog', '6', 12, 'error', 'errorLog', '0', '0', 'ErrorLog', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('33', '0', 'Markdown', 'components/MarkDown', '10', 53, 'markdown', 'markdown', '0', '0', 'Markdown', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('34', '0', 'Yaml编辑器', 'components/YamlEdit', '10', 54, 'dev', 'yaml', '0', '0', 'YamlEdit', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('35', '0', '部门管理', 'system/SYS_DEPT/index', '1', 6, 'SYS_DEPT', 'SYS_DEPT', '0', '0', 'SYS_DEPT', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'SYS_DEPT:list', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('36', '0', '系统工具', null, '0', 30, 'sys-tools', 'sys-tools', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 0);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('38', '0', '接口文档', 'tools/swagger/index', '36', 36, 'swagger', 'swagger2', '0', '0', 'Swagger', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('39', '0', '字典管理', 'system/SYS_DICT/index', '1', 8, 'SYS_DICTionary', 'SYS_DICT', '0', '0', 'SYS_DICT', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'SYS_DICT:list', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('41', '0', '在线用户', 'monitor/online/index', '6', 10, 'Steve-Jobs', 'online', '0', '0', 'OnlineUser', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('44', '0', '用户新增', null, '2', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'user:add', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('45', '0', '用户编辑', null, '2', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'user:edit', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('46', '0', '用户删除', null, '2', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'user:del', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('48', '0', '角色创建', null, '3', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'roles:add', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('49', '0', '角色修改', null, '3', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'roles:edit', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('50', '0', '角色删除', null, '3', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'roles:del', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('52', '0', '菜单新增', null, '5', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'SYS_MENU:add', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('53', '0', '菜单编辑', null, '5', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'SYS_MENU:edit', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('54', '0', '菜单删除', null, '5', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'SYS_MENU:del', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('56', '0', '部门新增', null, '35', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'SYS_DEPT:add', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('57', '0', '部门编辑', null, '35', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'SYS_DEPT:edit', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('58', '0', '部门删除', null, '35', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'SYS_DEPT:del', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('64', '0', '字典新增', null, '39', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'SYS_DICT:add', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('65', '0', '字典编辑', null, '39', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'SYS_DICT:edit', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('66', '0', '字典删除', null, '39', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'SYS_DICT:del', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('73', '0', '任务新增', null, '28', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'timing:add', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('74', '0', '任务编辑', null, '28', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'timing:edit', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('75', '0', '任务删除', null, '28', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'timing:del', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('77', '0', '上传文件', null, '18', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'storage:add', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('78', '0', '文件编辑', null, '18', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'storage:edit', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('79', '0', '文件删除', null, '18', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'storage:del', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('80', '0', '服务监控', 'monitor/server/index', '6', 14, 'codeConsole', 'server', '0', '0', 'ServerMonitor', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'server:list', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('82', '0', '生成配置', 'generator/config', '36', 33, 'dev', 'generator/config/:tableName', '1', '1', 'GeneratorConfig', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('83', '0', '图表库', 'components/Echarts', '10', 50, 'chart', 'echarts', '1', '0', 'Echarts', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('90', '0', '运维管理', null, '0', 20, 'mnt', 'mnt', '0', '0', 'Mnt', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('92', '0', '服务器', 'mnt/server/index', '90', 22, 'server', 'mnt/serverDeploy', '0', '0', 'ServerDeploy', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'serverDeploy:list', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('93', '0', '应用管理', 'mnt/app/index', '90', 23, 'app', 'mnt/app', '0', '0', 'App', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'app:list', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('94', '0', '部署管理', 'mnt/deploy/index', '90', 24, 'deploy', 'mnt/deploy', '0', '0', 'Deploy', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'deploy:list', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('97', '0', '部署备份', 'mnt/deployHistory/index', '90', 25, 'backup', 'mnt/deployHistory', '0', '0', 'DeployHistory', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'deployHistory:list', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('98', '0', '数据库管理', 'mnt/database/index', '90', 26, 'database', 'mnt/database', '0', '0', 'Database', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'database:list', 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('102', '0', '删除', null, '97', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'deployHistory:del', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('103', '0', '服务器新增', null, '92', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'serverDeploy:add', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('104', '0', '服务器编辑', null, '92', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'serverDeploy:edit', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('105', '0', '服务器删除', null, '92', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'serverDeploy:del', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('106', '0', '应用新增', null, '93', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'app:add', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('107', '0', '应用编辑', null, '93', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'app:edit', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('108', '0', '应用删除', null, '93', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'app:del', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('109', '0', '部署新增', null, '94', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'deploy:add', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('110', '0', '部署编辑', null, '94', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'deploy:edit', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('111', '0', '部署删除', null, '94', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'deploy:del', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('112', '0', '数据库新增', null, '98', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'database:add', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('113', '0', '数据库编辑', null, '98', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'database:edit', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('114', '0', '数据库删除', null, '98', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'database:del', 2);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('116', '0', '生成预览', 'generator/preview', '36', 999, 'java', 'generator/preview/:tableName', '1', '1', 'Preview', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('8b81e48170f0cdfa0170f0d026ad0001', '0', '测试菜单', null, '0', 2, 'chain', 'testMybatis', '0', '0', null, to_date('19-03-2020 11:22:18', 'dd-mm-yyyy hh24:mi:ss'), null, 0);
insert into SYS_MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('8b81e48170f0cdfa0170f0d269e90009', '0', 'mybatis测试', 'testMybatis/genTestMybatis/index', '8b81e48170f0cdfa0170f0d026ad0001', 999, 'dev', 'testMybatis', '0', '0', 'GenTestMybatis', to_date('19-03-2020 11:24:46', 'dd-mm-yyyy hh24:mi:ss'), 'genTestMybatis', 1);
commit;
insert into MNT_APP (id, name, upload_path, deploy_path, backup_path, port, start_script, deploy_script, create_time)
values ('1', 'eladmin-monitor-2.4.jar', '/opt/upload', '/opt/monitor', '/opt/backup', 8777, 'cd /opt/monitor\nnohup java -jar eladmin-monitor-2.4.jar >nohup.out 2> &', 'mv -f /opt/upload/eladmin-monitor-2.4.jar /opt/monitor\ncd /opt/monitor\nnohup java -jar eladmin-monitor-2.4.jar >nohup.out 2> &', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into MNT_APP (id, name, upload_path, deploy_path, backup_path, port, start_script, deploy_script, create_time)
values ('2', 'eladmin-system-2.3.jar', '/opt/upload', '/opt/eladmin', '/opt/backup/eladmin', 8000, 'cd /opt/eladmin\nnohup java -jar eladmin-system-2.3.jar --spring.profiles.active=prod >nohup.out 2> &', 'mv -f /opt/upload/eladmin-system-2.3.jar /opt/eladmin/\ncd /opt/eladmin\nnohup java -jar eladmin-system-2.3.jar --spring.profiles.active=prod >nohup.out 2> &', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
commit;
insert into MNT_DATABASE (id, name, jdbc_url, user_name, pwd, create_time)
values ('c4109eefc5724c65857ca9dd2690e0dd', 'mysql@eladmin', 'jdbc:mysql://11.1.100.2:3306/eladmin?serverTimezone=Asia/Shanghai&characterEncoding=utf8&useSSL=false', 'root', 'root', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into MNT_DATABASE (id, name, jdbc_url, user_name, pwd, create_time)
values ('b48b3435493546fbbb2a47118c2c1f15', 'oracle@portal', 'jdbc:oracle:thin:@23.1.3.164:1521:orcl', 'portal', 'portal', to_date('27-12-2019 11:12:49', 'dd-mm-yyyy hh24:mi:ss'));
commit;
insert into MNT_DEPLOY (id, app_id, create_time)
values ('3', '1', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into MNT_DEPLOY (id, app_id, create_time)
values ('6', '2', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
commit; 
insert into SYS_MONITOR_SERVER (id, cpu_core, cpu_rate, disk_total, disk_used, mem_total, mem_used, name, port, sort, state, swap_total, swap_used, address)
values ('1', 8, .05924018, 465.12402, 91.66521, 7.849415, 7.6052284, '本地', 8777, 999, '0', 14.599415, 11.263367, 'localhost');
commit;
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '1');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '2');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '44');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '45');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '46');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '3');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '48');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '49');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '50');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '5');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '52');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '53');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '54');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '35');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '56');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '57');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '58');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '39');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '64');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '65');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '66');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '8b81e48170c86fc60170c889d3d90009');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '8b81e48170f0cdfa0170f0d026ad0001');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '8b81e48170f0cdfa0170f0d269e90009');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '6');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '41');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '7');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '32');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '80');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '9');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '90');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '92');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '103');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '105');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '104');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '93');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '106');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '108');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '107');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '94');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '109');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '111');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '110');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '97');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '102');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '98');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '112');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '114');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '113');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '36');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '28');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '73');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '74');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '75');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '30');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '82');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '18');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '77');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '78');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '79');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '14');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '38');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '116');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '10');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '83');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '11');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '15');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '33');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '34');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '21');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '23');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '22');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '27');
insert into SYS_OBJECT_SYS_MENU (object_type, object_id, SYS_MENU_id)
values ('user', '1', '24');
commit;
insert into SYS_QUARTZ_JOB (id, bean_name, cron_expression, is_pause, job_name, method_name, params, remark, create_time)
values ('1', 'SYS_VISITSTask', '0 0 0 * * ?', '0', '更新访客记录', 'run', null, '每日0点创建新的访客记录', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_QUARTZ_JOB (id, bean_name, cron_expression, is_pause, job_name, method_name, params, remark, create_time)
values ('2', 'testTask', '0/5 * * * * ?', '1', '测试1', 'run1', 'test', '带参测试，多参使用json', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_QUARTZ_JOB (id, bean_name, cron_expression, is_pause, job_name, method_name, params, remark, create_time)
values ('3', 'testTask', '0/5 * * * * ?', '1', '测试', 'run', null, '不带参测试', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
commit;
insert into SYS_ROLE (id, name, remark, data_scope, role_level, create_time, permission)
values ('1', '超级管理员', '-', '全部', 1, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'admin');
insert into SYS_ROLE (id, name, remark, data_scope, role_level, create_time, permission)
values ('2', '普通用户', '-', '本级', 2, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'common');
insert into SYS_ROLE (id, name, remark, data_scope, role_level, create_time, permission)
values ('8b81e4816f453895016f453da17b0039', '测试角色', null, '全部', 3, to_date('27-12-2019 10:44:24', 'dd-mm-yyyy hh24:mi:ss'), '2');
commit;
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('1', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('1', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('1', '8b81e4816f453895016f453da17b0039');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('10', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('10', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('10', '8b81e4816f453895016f453da17b0039');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('11', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('11', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('116', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('14', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('14', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('15', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('15', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('18', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('18', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('2', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('2', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('21', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('21', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('21', '8b81e4816f453895016f453da17b0039');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('22', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('23', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('23', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('24', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('24', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('27', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('27', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('28', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('28', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('3', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('3', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('30', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('30', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('32', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('33', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('33', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('34', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('34', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('35', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('35', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('36', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('36', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('36', '8b81e4816f453895016f453da17b0039');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('38', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('38', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('39', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('39', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('41', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('44', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('44', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('45', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('46', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('48', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('48', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('49', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('49', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('5', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('5', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('50', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('50', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('52', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('53', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('54', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('56', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('57', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('58', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('6', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('6', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('6', '8b81e4816f453895016f453da17b0039');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('64', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('65', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('66', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('7', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('73', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('74', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('75', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('77', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('77', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('78', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('78', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('79', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('79', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('80', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('82', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('83', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('9', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('9', '2');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('90', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('90', '8b81e4816f453895016f453da17b0039');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('92', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('93', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('94', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('97', '1');
insert into SYS_ROLE_SYS_MENU (SYS_MENU_id, role_id)
values ('98', '1');
commit;
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '1');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3', '2');
insert into SYS_USER_ROLE (user_id, role_id)
values ('8b81e4816f453895016f453d5e910034', '1');
commit; 
insert into SYS_VISITS (id, create_time, SYS_VISITS_date, ip_counts, pv_counts, week_day)
values ('8b81e48170e244980170e412c66f004c', to_date('17-03-2020', 'dd-mm-yyyy'), '2020-03-17', 1, 10, '周二');
insert into SYS_VISITS (id, create_time, SYS_VISITS_date, ip_counts, pv_counts, week_day)
values ('8b81e48170e244980170e93922640069', to_date('18-03-2020', 'dd-mm-yyyy'), '2020-03-18', 0, 1, '周三');
insert into SYS_VISITS (id, create_time, SYS_VISITS_date, ip_counts, pv_counts, week_day)
values ('1', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), '2019-12-25', 0, 3, 'Wed');
insert into SYS_VISITS (id, create_time, SYS_VISITS_date, ip_counts, pv_counts, week_day)
values ('8b81e4816f424b35016f42efa8fb001b', to_date('27-12-2019', 'dd-mm-yyyy'), '2019-12-27', 2, 6, 'Fri');
insert into SYS_VISITS (id, create_time, SYS_VISITS_date, ip_counts, pv_counts, week_day)
values ('8b81e4816f3d0969016f3dc94c770003', to_date('26-12-2019', 'dd-mm-yyyy'), '2019-12-26', 1, 7, 'Thu');
insert into SYS_VISITS (id, create_time, SYS_VISITS_date, ip_counts, pv_counts, week_day)
values ('8b81e48170c84d0e0170c84d66d00000', to_date('11-03-2020 14:34:40', 'dd-mm-yyyy hh24:mi:ss'), '2020-03-11', 2, 14, '周三');
insert into SYS_VISITS (id, create_time, SYS_VISITS_date, ip_counts, pv_counts, week_day)
values ('8b81e48170cdfba50170cdfbe1000000', to_date('12-03-2020 17:03:21', 'dd-mm-yyyy hh24:mi:ss'), '2020-03-12', 1, 4, '周四');
insert into SYS_VISITS (id, create_time, SYS_VISITS_date, ip_counts, pv_counts, week_day)
values ('8b81e48170ce069a0170d9c610a3000f', to_date('15-03-2020 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '2020-03-15', 0, 0, '周日');
insert into SYS_VISITS (id, create_time, SYS_VISITS_date, ip_counts, pv_counts, week_day)
values ('8b81e48170ce069a0170deec6d5a0011', to_date('16-03-2020 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '2020-03-16', 1, 4, '周一');
insert into SYS_VISITS (id, create_time, SYS_VISITS_date, ip_counts, pv_counts, week_day)
values ('8b81e48170ce069a0170cf795469000b', to_date('13-03-2020', 'dd-mm-yyyy'), '2020-03-13', 0, 0, '周五');
insert into SYS_VISITS (id, create_time, SYS_VISITS_date, ip_counts, pv_counts, week_day)
values ('8b81e48170ce069a0170d49fb31a000d', to_date('14-03-2020', 'dd-mm-yyyy'), '2020-03-14', 0, 0, '周六');
insert into SYS_VISITS (id, create_time, SYS_VISITS_date, ip_counts, pv_counts, week_day)
values ('8b81e48170f05fea0170f06043a30000', to_date('19-03-2020 09:20:05', 'dd-mm-yyyy hh24:mi:ss'), '2020-03-19', 1, 4, '周四');
commit; 
