prompt PL/SQL Developer import file
prompt Created on 2020年3月19日 by XiaofengG
set feedback off
set define off
prompt Disabling triggers for COLUMN_CONFIG...
alter table COLUMN_CONFIG disable all triggers;
prompt Disabling triggers for DEPT...
alter table DEPT disable all triggers;
prompt Disabling triggers for DICT...
alter table DICT disable all triggers;
prompt Disabling triggers for DICT_DETAIL...
alter table DICT_DETAIL disable all triggers;
prompt Disabling triggers for EL_USER...
alter table EL_USER disable all triggers;
prompt Disabling triggers for EMAIL_CONFIG...
alter table EMAIL_CONFIG disable all triggers;
prompt Disabling triggers for GEN_CONFIG...
alter table GEN_CONFIG disable all triggers;
prompt Disabling triggers for GEN_TEST_MYBATIS...
alter table GEN_TEST_MYBATIS disable all triggers;
prompt Disabling triggers for LOCAL_STORAGE...
alter table LOCAL_STORAGE disable all triggers;
prompt Disabling triggers for MENU...
alter table MENU disable all triggers;
prompt Disabling triggers for MNT_APP...
alter table MNT_APP disable all triggers;
prompt Disabling triggers for MNT_DATABASE...
alter table MNT_DATABASE disable all triggers;
prompt Disabling triggers for MNT_DEPLOY...
alter table MNT_DEPLOY disable all triggers;
prompt Disabling triggers for MNT_DEPLOY_HISTORY...
alter table MNT_DEPLOY_HISTORY disable all triggers;
prompt Disabling triggers for MNT_DEPLOY_SERVER...
alter table MNT_DEPLOY_SERVER disable all triggers;
prompt Disabling triggers for MNT_SERVER...
alter table MNT_SERVER disable all triggers;
prompt Disabling triggers for MONITOR_SERVER...
alter table MONITOR_SERVER disable all triggers;
prompt Disabling triggers for OBJECT_MENUS...
alter table OBJECT_MENUS disable all triggers;
prompt Disabling triggers for QUARTZ_JOB...
alter table QUARTZ_JOB disable all triggers;
prompt Disabling triggers for ROLE...
alter table ROLE disable all triggers;
prompt Disabling triggers for ROLES_DEPTS...
alter table ROLES_DEPTS disable all triggers;
prompt Disabling triggers for ROLES_MENUS...
alter table ROLES_MENUS disable all triggers;
prompt Disabling triggers for USERS_ROLES...
alter table USERS_ROLES disable all triggers;
prompt Disabling triggers for USER_AVATAR...
alter table USER_AVATAR disable all triggers;
prompt Disabling triggers for VISITS...
alter table VISITS disable all triggers;
prompt Loading COLUMN_CONFIG...
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3d006a016f3d03ec340009', 'PICTURE', 'MD5CODE', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '文件的MD5值', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3fc366016f3fcd4ff00021', 'ALIPAY_CONFIG', 'SYS_SERVICE_PROVIDER_ID', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '商户号', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f401e00016f401f3b5c0003', 'DICT_DETAIL', 'VALUE', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '字典值', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f424b35016f425385860013', 'GEN_TEST_MYBATIS', 'ORG_NO', 'VARCHAR2', null, null, '1', 'Input', 'PRI', '1', '1', 'Like', '机构号', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f451886016f451d7ee00006', 'GEN_TEST', 'ID', 'VARCHAR2', null, null, '1', null, 'PRI', '1', '0', null, '机构号', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3d006a016f3d03ebf50000', 'PICTURE', 'ID', 'VARCHAR2', null, null, '1', null, 'PRI', '1', '0', null, 'ID', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3d006a016f3d03ec270001', 'PICTURE', 'CREATE_TIME', 'DATE', null, null, '1', null, null, '1', '0', null, '涓婁紶鏃ユ湡', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3d006a016f3d03ec2b0002', 'PICTURE', 'DELETE_URL', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '鍒犻櫎鐨刄RL', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3d006a016f3d03ec2c0003', 'PICTURE', 'FILENAME', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '鍥剧墖鍚嶇О', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3d006a016f3d03ec300004', 'PICTURE', 'HEIGHT', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '鍥剧墖楂樺害', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3d006a016f3d03ec300005', 'PICTURE', 'PICTURE_SIZE', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '鍥剧墖澶у皬', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3d006a016f3d03ec310006', 'PICTURE', 'URL', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '鍥剧墖鍦板潃', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3d006a016f3d03ec330007', 'PICTURE', 'USERNAME', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '鐢ㄦ埛鍚嶇О', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3d006a016f3d03ec340008', 'PICTURE', 'WIDTH', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '鍥剧墖瀹藉害', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3fc366016f3fcd4fe20016', 'ALIPAY_CONFIG', 'ID', 'VARCHAR2', null, null, '1', null, 'PRI', '1', '0', null, '涓婚敭', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3fc366016f3fcd4fe30017', 'ALIPAY_CONFIG', 'APP_ID', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '搴旂敤ID', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3fc366016f3fcd4fed0018', 'ALIPAY_CONFIG', 'CHARSET', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '缂栫爜', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3fc366016f3fcd4fed0019', 'ALIPAY_CONFIG', 'FORMAT', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '绫诲瀷 鍥哄畾鏍煎紡json', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3fc366016f3fcd4fed001a', 'ALIPAY_CONFIG', 'GATEWAY_URL', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '缃戝叧鍦板潃', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3fc366016f3fcd4fee001b', 'ALIPAY_CONFIG', 'NOTIFY_URL', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '寮傛鍥炶皟', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3fc366016f3fcd4fef001c', 'ALIPAY_CONFIG', 'PRIVATE_KEY', 'CLOB', null, null, '1', null, null, '1', '0', null, '绉侀挜', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3fc366016f3fcd4fef001d', 'ALIPAY_CONFIG', 'PUBLIC_KEY', 'CLOB', null, null, '1', null, null, '1', '0', null, '鍏挜', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3fc366016f3fcd4ff0001e', 'ALIPAY_CONFIG', 'RETURN_URL', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '鍥炶皟鍦板潃', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3fc366016f3fcd4ff00020', 'ALIPAY_CONFIG', 'SIGN_TYPE', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '绛惧悕鏂瑰紡', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f401e00016f401f3b290001', 'DICT_DETAIL', 'ID', 'VARCHAR2', null, null, '1', null, 'PRI', '1', '0', null, null, null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f401e00016f401f3b5b0002', 'DICT_DETAIL', 'LABEL', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '瀛楀吀鏍囩', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f401e00016f401f3b5d0004', 'DICT_DETAIL', 'SORT', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '鎺掑簭', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f401e00016f401f3b5d0005', 'DICT_DETAIL', 'DICT_ID', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '瀛楀吀id', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f401e00016f401f3b5f0006', 'DICT_DETAIL', 'CREATE_TIME', 'DATE', null, null, '1', null, null, '1', '0', null, '鍒涘缓鏃ユ湡', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f424b35016f425385980014', 'GEN_TEST_MYBATIS', 'ORG_NAME', 'VARCHAR2', null, null, '1', 'Input', null, '1', '1', 'Like', '鏈烘瀯鍚嶇О', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f424b35016f4253859b0015', 'GEN_TEST_MYBATIS', 'ORG_LEVEL', 'NUMBER', null, null, '1', 'Input', null, '1', '1', null, '鏈烘瀯绾у埆', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f424b35016f4253859b0016', 'GEN_TEST_MYBATIS', 'ORG_TYPE', 'CHAR', 'dept_type', null, '1', 'Select', null, '1', '1', null, '鏈烘瀯绫诲瀷', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f424b35016f4253859b0017', 'GEN_TEST_MYBATIS', 'ORG_TOTAL', 'NUMBER', null, null, '1', 'Input', null, '1', '1', null, '瀛樻鎬婚', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f424b35016f4253859c0018', 'GEN_TEST_MYBATIS', 'CREATE_DATE', 'DATE', null, null, '1', 'Date', null, '1', '1', null, '鎴愮珛鏃ユ湡', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('1', 'gen_test', 'id', 'int', null, 'auto_increment', '0', null, 'PRI', '0', '1', null, 'ID', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('2', 'gen_test', 'sex', 'int', null, null, '1', null, null, '1', '0', 'NotNull', '鎬у埆', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('3', 'gen_test', 'create_time', 'datetime', null, null, '0', null, null, '1', '0', 'BetWeen', null, null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3ffacd016f4003e8eb000a', 'GEN_TEST', 'ORG_NAME', 'VARCHAR2', null, null, '1', 'Input', null, '1', '1', '=', '鏈烘瀯鍚嶇О', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3ffacd016f4003e8ec000b', 'GEN_TEST', 'ORG_LEVEL', 'NUMBER', null, null, '1', 'Input', null, '1', '1', '=', '鏈烘瀯绾у埆', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3ffacd016f4003e8ed000c', 'GEN_TEST', 'ORG_TYPE', 'CHAR', 'dept_type', null, '1', 'Select', null, '1', '1', '=', '鏈烘瀯绫诲瀷', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3ffacd016f4003e8ed000d', 'GEN_TEST', 'ORG_TOTAL', 'NUMBER', null, null, '1', null, null, '1', '0', '>=', '瀛樻鎬婚', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e4816f3ffacd016f4003e8ed000e', 'GEN_TEST', 'CREATE_DATE', 'DATE', null, null, '1', 'Date', null, '1', '0', '=', '鎴愮珛鏃ユ湡', 'CreationTimestamp');
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e48170f0b8160170f0be6d100009', 'ROLE', 'ID', 'VARCHAR2', null, null, '1', null, 'PRI', '1', '0', null, 'ID', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e48170f0b8160170f0be6d10000a', 'ROLE', 'NAME', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '名称', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e48170f0b8160170f0be6d10000b', 'ROLE', 'REMARK', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '备注', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e48170f0b8160170f0be6d12000c', 'ROLE', 'DATA_SCOPE', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '数据权限', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e48170f0b8160170f0be6d12000d', 'ROLE', 'ROLE_LEVEL', 'NUMBER', null, null, '1', null, null, '1', '0', null, '角色级别', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e48170f0b8160170f0be6d12000e', 'ROLE', 'CREATE_TIME', 'DATE', null, null, '1', null, null, '1', '0', null, '创建日期', null);
insert into COLUMN_CONFIG (id, table_name, column_name, column_type, dict_name, extra, form_show, form_type, key_type, list_show, not_null, query_type, remark, date_annotation)
values ('8b81e48170f0b8160170f0be6d12000f', 'ROLE', 'PERMISSION', 'VARCHAR2', null, null, '1', null, null, '1', '0', null, '功能权限', null);
commit;
prompt 49 records loaded
prompt Loading DEPT...
insert into DEPT (id, name, pid, enabled, create_time)
values ('2', '研发部', '7', '1', to_date('25-03-2019 09:15:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into DEPT (id, name, pid, enabled, create_time)
values ('5', '运维部', '7', '0', to_date('25-03-2019 09:20:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into DEPT (id, name, pid, enabled, create_time)
values ('6', '测试部', '8', '1', to_date('25-03-2019 09:52:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into DEPT (id, name, pid, enabled, create_time)
values ('11', '人事部', '8', '1', to_date('25-03-2019 11:07:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into DEPT (id, name, pid, enabled, create_time)
values ('8b81e4816f453895016f453e249a0041', '测试部', '1', '1', to_date('27-12-2019 10:44:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into DEPT (id, name, pid, enabled, create_time)
values ('1', 'EL-ADMIN', '0', '1', to_date('01-03-2019 12:07:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into DEPT (id, name, pid, enabled, create_time)
values ('7', '鍗庡崡鍒嗛儴', '1', '1', to_date('25-03-2019 11:04:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into DEPT (id, name, pid, enabled, create_time)
values ('8', '鍗庡寳鍒嗛儴', '1', '1', to_date('25-03-2019 11:04:53', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 8 records loaded
prompt Loading DICT...
insert into DICT (id, name, remark, create_time)
values ('8b81e4816f3ffacd016f400499fa0013', 'dept_type', '机构类型', to_date('26-12-2019 10:24:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into DICT (id, name, remark, create_time)
values ('1', 'user_status', '用户状态', to_date('27-10-2019 20:31:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into DICT (id, name, remark, create_time)
values ('4', 'dept_status', '部门状态', to_date('27-10-2019 20:31:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into DICT (id, name, remark, create_time)
values ('5', 'job_status', '岗位状态', to_date('27-10-2019 20:31:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into DICT (id, name, remark, create_time)
values ('6', 'password', null, null);
commit;
prompt 5 records loaded
prompt Loading DICT_DETAIL...
insert into DICT_DETAIL (id, label, value, sort, dict_id, create_time)
values ('8b81e4816f400cba016f400e89fb0000', '总行', '01', '1', '8b81e4816f3ffacd016f400499fa0013', to_date('26-12-2019 10:34:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into DICT_DETAIL (id, label, value, sort, dict_id, create_time)
values ('8b81e4816f400cba016f400eea930006', '支行', '03', '999', '8b81e4816f3ffacd016f400499fa0013', to_date('26-12-2019 10:35:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into DICT_DETAIL (id, label, value, sort, dict_id, create_time)
values ('1', '激活', 'true', '1', '1', null);
insert into DICT_DETAIL (id, label, value, sort, dict_id, create_time)
values ('2', '禁用', 'false', '2', '1', null);
insert into DICT_DETAIL (id, label, value, sort, dict_id, create_time)
values ('3', '启用', 'true', '1', '4', null);
insert into DICT_DETAIL (id, label, value, sort, dict_id, create_time)
values ('4', '停用', 'false', '2', '4', null);
insert into DICT_DETAIL (id, label, value, sort, dict_id, create_time)
values ('5', '启用', 'true', '1', '5', null);
insert into DICT_DETAIL (id, label, value, sort, dict_id, create_time)
values ('6', '停用', 'false', '2', '5', null);
insert into DICT_DETAIL (id, label, value, sort, dict_id, create_time)
values ('8b81e4816f400cba016f400eccb80003', '分行', '02', '999', '8b81e4816f3ffacd016f400499fa0013', to_date('26-12-2019 10:35:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into DICT_DETAIL (id, label, value, sort, dict_id, create_time)
values ('11', '密码', '123456', '1', '6', null);
commit;
prompt 10 records loaded
prompt Loading EL_USER...
insert into EL_USER (id, avatar, email, enabled, password, username, dept_id, phone, job_id, create_time, last_password_reset_time, nick_name, sex)
values ('1', null, 'zhengjie@tom.com', '1', '$2a$10$fP.426qKaTmix50Oln8L.uav55gELhAd0Eg66Av4oG86u8km7D/Ky', 'admin', '2', '18888888888', '11', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), '管理员', '男');
insert into EL_USER (id, avatar, email, enabled, password, username, dept_id, phone, job_id, create_time, last_password_reset_time, nick_name, sex)
values ('3', null, 'test@eladmin.net', '1', '$2a$10$HhxyGZy.ulf3RvAwaHUGb.k.2i9PBpv4YbLMJWp8pES7pPhTyRCF.', 'test', '2', '17777777777', '12', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), '测试1', '男');
insert into EL_USER (id, avatar, email, enabled, password, username, dept_id, phone, job_id, create_time, last_password_reset_time, nick_name, sex)
values ('8b81e4816f453895016f453d5e910034', null, '188@qq.com', '1', '$2a$10$4AD2rqKtw3B4SkmMOPTFmuDoW7VMCnCsJ1a0sFyE6oF2oW2MDWGui', 'test2', '1', '18888888888', '8b81e4816f453895016f453cd6320028', to_date('27-12-2019 10:44:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), '测试2', '男');
commit;
prompt 3 records loaded
prompt Loading EMAIL_CONFIG...
prompt Table is empty
prompt Loading GEN_CONFIG...
insert into GEN_CONFIG (id, table_name, author, cover, module_name, pack, path, api_path, prefix, api_alias)
values ('8b81e4816f424b35016f4254fff1001a', 'GEN_TEST_MYBATIS', 'sss', '0', 'eladmin-test-mybatis', 'me.zhengjie', 'genTestMybatis', 'genTestMybatis\', null, 'genTestMybatis');
insert into GEN_CONFIG (id, table_name, author, cover, module_name, pack, path, api_path, prefix, api_alias)
values ('3', 'gen_test', 'Zheng Jie', '1', 'eladmin-system', 'me.zhengjie.gen', 'E:\\workspace\\me\\front\\eladmin-web\\src\\views\\gen', 'E:\\workspace\\me\\front\\eladmin-web\\src\\api', null, '测试生成');
insert into GEN_CONFIG (id, table_name, author, cover, module_name, pack, path, api_path, prefix, api_alias)
values ('8b81e4816f401e00016f40e13cb9000b', 'GEN_TEST', 'XiaofengG', '0', 'eladmin-test', 'me.zhengjie', 'test', 'test\', null, 'genTest');
insert into GEN_CONFIG (id, table_name, author, cover, module_name, pack, path, api_path, prefix, api_alias)
values ('8b81e48170f0b8160170f0bf500c0010', 'ROLE', 'test', '0', 'eladmin-system', 'me.zhengjie.modules.system', 'role', 'role\', null, 'role');
commit;
prompt 4 records loaded
prompt Loading GEN_TEST_MYBATIS...
insert into GEN_TEST_MYBATIS (id, org_name, org_level, org_type, org_total, create_date)
values ('1', 'xx总行', 1, '01', 2222222, to_date('27-12-2019 10:40:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into GEN_TEST_MYBATIS (id, org_name, org_level, org_type, org_total, create_date)
values ('2', '2', 2, '02', 222, to_date('19-03-2020 11:38:21', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 2 records loaded
prompt Loading LOCAL_STORAGE...
insert into LOCAL_STORAGE (id, real_name, name, suffix, path, type, file_size, operate, create_time, portal_visible)
values ('8b81e4816f453895016f45401791004c', 'krb5-20191227104705861.conf', 'xxx', 'conf', 'C:\eladmin\file\其他\krb5-20191227104705861.conf', '其他', '428B   ', 'admin', to_date('27-12-2019 10:47:05', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into LOCAL_STORAGE (id, real_name, name, suffix, path, type, file_size, operate, create_time, portal_visible)
values ('8b81e48170e244980170e25bcfb1002c', 'tnsnames-20200316040032615.ora', 'tnsnames.ora', 'ora', 'D:\eladmin-files\file\其他\tnsnames-20200316040032615.ora', '其他', '331B   ', 'admin', to_date('16-03-2020 16:00:32', 'dd-mm-yyyy hh24:mi:ss'), '0');
commit;
prompt 2 records loaded
prompt Loading MENU...
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('8b81e48170c86fc60170c889d3d90009', '0', '权限管理', 'system/authMgt/index', '1', 999, 'app', 'authMgt', '0', '0', 'authMgt', to_date('11-03-2020 15:40:40', 'dd-mm-yyyy hh24:mi:ss'), 'menus', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('1', '0', '系统管理', null, '0', 1, 'system', 'system', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 0);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('2', '0', '用户管理', 'system/user/index', '1', 2, 'peoples', 'user', '0', '0', 'User', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'user:list', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('3', '0', '角色管理', 'system/role/index', '1', 3, 'role', 'role', '0', '0', 'Role', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'roles:list', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('5', '0', '菜单管理', 'system/menu/index', '1', 5, 'menu', 'menu', '0', '0', 'Menu', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'menu:list', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('6', '0', '系统监控', null, '0', 10, 'monitor', 'monitor', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 0);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('7', '0', '操作日志', 'monitor/log/index', '6', 11, 'log', 'logs', '0', '0', 'Log', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('9', '0', 'SQL监控', 'monitor/sql/index', '6', 18, 'sqlMonitor', 'druid', '0', '0', 'Sql', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('10', '0', '组件管理', null, '0', 50, 'zujian', 'components', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 0);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('11', '0', '图标库', 'components/icons/index', '10', 51, 'icon', 'icon', '0', '0', 'Icons', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('14', '0', '邮件工具', 'tools/email/index', '36', 35, 'email', 'email', '0', '0', 'Email', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('15', '0', '富文本', 'components/Editor', '10', 52, 'fw', 'tinymce', '0', '0', 'Editor', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('18', '0', '存储管理', 'tools/storage/local/index', '36', 34, 'qiniu', 'localStorage', '0', '0', 'localStorage', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'storage:list', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('21', '0', '多级菜单', null, '0', 900, 'menu', 'nested', '0', '1', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 0);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('22', '0', '二级菜单1', 'nested/menu1/index', '21', 999, 'menu', 'menu1', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('23', '0', '二级菜单2', 'nested/menu2/index', '21', 999, 'menu', 'menu2', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('24', '0', '三级菜单1', 'nested/menu1/menu1-1', '22', 999, 'menu', 'menu1-1', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('27', '0', '三级菜单2', 'nested/menu1/menu1-2', '22', 999, 'menu', 'menu1-2', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('28', '0', '定时任务', 'system/timing/index', '36', 31, 'timing', 'timing', '0', '0', 'Timing', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'timing:list', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('30', '0', '代码生成', 'generator/index', '36', 32, 'dev', 'generator', '1', '0', 'GeneratorIndex', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('32', '0', '异常日志', 'monitor/log/errorLog', '6', 12, 'error', 'errorLog', '0', '0', 'ErrorLog', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('33', '0', 'Markdown', 'components/MarkDown', '10', 53, 'markdown', 'markdown', '0', '0', 'Markdown', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('34', '0', 'Yaml编辑器', 'components/YamlEdit', '10', 54, 'dev', 'yaml', '0', '0', 'YamlEdit', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('35', '0', '部门管理', 'system/dept/index', '1', 6, 'dept', 'dept', '0', '0', 'Dept', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'dept:list', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('36', '0', '系统工具', null, '0', 30, 'sys-tools', 'sys-tools', '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 0);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('38', '0', '接口文档', 'tools/swagger/index', '36', 36, 'swagger', 'swagger2', '0', '0', 'Swagger', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('39', '0', '字典管理', 'system/dict/index', '1', 8, 'dictionary', 'dict', '0', '0', 'Dict', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'dict:list', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('41', '0', '在线用户', 'monitor/online/index', '6', 10, 'Steve-Jobs', 'online', '0', '0', 'OnlineUser', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('44', '0', '用户新增', null, '2', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'user:add', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('45', '0', '用户编辑', null, '2', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'user:edit', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('46', '0', '用户删除', null, '2', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'user:del', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('48', '0', '角色创建', null, '3', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'roles:add', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('49', '0', '角色修改', null, '3', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'roles:edit', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('50', '0', '角色删除', null, '3', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'roles:del', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('52', '0', '菜单新增', null, '5', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'menu:add', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('53', '0', '菜单编辑', null, '5', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'menu:edit', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('54', '0', '菜单删除', null, '5', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'menu:del', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('56', '0', '部门新增', null, '35', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'dept:add', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('57', '0', '部门编辑', null, '35', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'dept:edit', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('58', '0', '部门删除', null, '35', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'dept:del', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('64', '0', '字典新增', null, '39', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'dict:add', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('65', '0', '字典编辑', null, '39', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'dict:edit', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('66', '0', '字典删除', null, '39', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'dict:del', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('73', '0', '任务新增', null, '28', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'timing:add', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('74', '0', '任务编辑', null, '28', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'timing:edit', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('75', '0', '任务删除', null, '28', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'timing:del', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('77', '0', '上传文件', null, '18', 2, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'storage:add', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('78', '0', '文件编辑', null, '18', 3, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'storage:edit', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('79', '0', '文件删除', null, '18', 4, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'storage:del', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('80', '0', '服务监控', 'monitor/server/index', '6', 14, 'codeConsole', 'server', '0', '0', 'ServerMonitor', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'server:list', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('82', '0', '生成配置', 'generator/config', '36', 33, 'dev', 'generator/config/:tableName', '1', '1', 'GeneratorConfig', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('83', '0', '图表库', 'components/Echarts', '10', 50, 'chart', 'echarts', '1', '0', 'Echarts', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('90', '0', '运维管理', null, '0', 20, 'mnt', 'mnt', '0', '0', 'Mnt', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('92', '0', '服务器', 'mnt/server/index', '90', 22, 'server', 'mnt/serverDeploy', '0', '0', 'ServerDeploy', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'serverDeploy:list', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('93', '0', '应用管理', 'mnt/app/index', '90', 23, 'app', 'mnt/app', '0', '0', 'App', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'app:list', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('94', '0', '部署管理', 'mnt/deploy/index', '90', 24, 'deploy', 'mnt/deploy', '0', '0', 'Deploy', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'deploy:list', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('97', '0', '部署备份', 'mnt/deployHistory/index', '90', 25, 'backup', 'mnt/deployHistory', '0', '0', 'DeployHistory', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'deployHistory:list', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('98', '0', '数据库管理', 'mnt/database/index', '90', 26, 'database', 'mnt/database', '0', '0', 'Database', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'database:list', 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('102', '0', '删除', null, '97', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'deployHistory:del', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('103', '0', '服务器新增', null, '92', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'serverDeploy:add', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('104', '0', '服务器编辑', null, '92', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'serverDeploy:edit', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('105', '0', '服务器删除', null, '92', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'serverDeploy:del', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('106', '0', '应用新增', null, '93', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'app:add', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('107', '0', '应用编辑', null, '93', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'app:edit', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('108', '0', '应用删除', null, '93', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'app:del', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('109', '0', '部署新增', null, '94', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'deploy:add', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('110', '0', '部署编辑', null, '94', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'deploy:edit', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('111', '0', '部署删除', null, '94', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'deploy:del', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('112', '0', '数据库新增', null, '98', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'database:add', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('113', '0', '数据库编辑', null, '98', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'database:edit', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('114', '0', '数据库删除', null, '98', 999, null, null, '0', '0', null, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'database:del', 2);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('116', '0', '生成预览', 'generator/preview', '36', 999, 'java', 'generator/preview/:tableName', '1', '1', 'Preview', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), null, 1);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('8b81e48170f0cdfa0170f0d026ad0001', '0', '测试菜单', null, '0', 2, 'chain', 'testMybatis', '0', '0', null, to_date('19-03-2020 11:22:18', 'dd-mm-yyyy hh24:mi:ss'), null, 0);
insert into MENU (id, i_frame, name, component, pid, sort, icon, path, cache, hidden, component_name, create_time, permission, type)
values ('8b81e48170f0cdfa0170f0d269e90009', '0', 'mybatis测试', 'testMybatis/genTestMybatis/index', '8b81e48170f0cdfa0170f0d026ad0001', 999, 'dev', 'testMybatis', '0', '0', 'GenTestMybatis', to_date('19-03-2020 11:24:46', 'dd-mm-yyyy hh24:mi:ss'), 'genTestMybatis', 1);
commit;
prompt 74 records loaded
prompt Loading MNT_APP...
insert into MNT_APP (id, name, upload_path, deploy_path, backup_path, port, start_script, deploy_script, create_time)
values ('1', 'eladmin-monitor-2.4.jar', '/opt/upload', '/opt/monitor', '/opt/backup', 8777, 'cd /opt/monitor\nnohup java -jar eladmin-monitor-2.4.jar >nohup.out 2> &', 'mv -f /opt/upload/eladmin-monitor-2.4.jar /opt/monitor\ncd /opt/monitor\nnohup java -jar eladmin-monitor-2.4.jar >nohup.out 2> &', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into MNT_APP (id, name, upload_path, deploy_path, backup_path, port, start_script, deploy_script, create_time)
values ('2', 'eladmin-system-2.3.jar', '/opt/upload', '/opt/eladmin', '/opt/backup/eladmin', 8000, 'cd /opt/eladmin\nnohup java -jar eladmin-system-2.3.jar --spring.profiles.active=prod >nohup.out 2> &', 'mv -f /opt/upload/eladmin-system-2.3.jar /opt/eladmin/\ncd /opt/eladmin\nnohup java -jar eladmin-system-2.3.jar --spring.profiles.active=prod >nohup.out 2> &', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 2 records loaded
prompt Loading MNT_DATABASE...
insert into MNT_DATABASE (id, name, jdbc_url, user_name, pwd, create_time)
values ('c4109eefc5724c65857ca9dd2690e0dd', 'mysql@eladmin', 'jdbc:mysql://11.1.100.2:3306/eladmin?serverTimezone=Asia/Shanghai&characterEncoding=utf8&useSSL=false', 'root', 'root', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into MNT_DATABASE (id, name, jdbc_url, user_name, pwd, create_time)
values ('b48b3435493546fbbb2a47118c2c1f15', 'oracle@portal', 'jdbc:oracle:thin:@23.1.3.164:1521:orcl', 'portal', 'portal', to_date('27-12-2019 11:12:49', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 2 records loaded
prompt Loading MNT_DEPLOY...
insert into MNT_DEPLOY (id, app_id, create_time)
values ('3', '1', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into MNT_DEPLOY (id, app_id, create_time)
values ('6', '2', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 2 records loaded
prompt Loading MNT_DEPLOY_HISTORY...
insert into MNT_DEPLOY_HISTORY (id, app_name, deploy_date, deploy_user, ip, deploy_id)
values ('4ee0edd1f3b648a396280a542d72c121', 'eladmin-monitor-2.4.jar', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'admin', '132.232.129.20', '3');
insert into MNT_DEPLOY_HISTORY (id, app_name, deploy_date, deploy_user, ip, deploy_id)
values ('4fd432a128c947ccae55316b3d5dcd7', 'eladmin-monitor-2.4.jar', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'admin', '132.232.129.20', '3');
insert into MNT_DEPLOY_HISTORY (id, app_name, deploy_date, deploy_user, ip, deploy_id)
values ('cfda21f48da341b396657af94554c890', 'eladmin-monitor-2.4.jar', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'admin', '132.232.129.20', '3');
commit;
prompt 3 records loaded
prompt Loading MNT_DEPLOY_SERVER...
insert into MNT_DEPLOY_SERVER (deploy_id, server_id)
values ('3', '1');
insert into MNT_DEPLOY_SERVER (deploy_id, server_id)
values ('6', '1');
commit;
prompt 2 records loaded
prompt Loading MNT_SERVER...
insert into MNT_SERVER (id, account, ip, name, password, port, create_time)
values ('1', 'root', '132.232.129.20', '腾讯云', 'Dqjdda1996.', 8013, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 1 records loaded
prompt Loading MONITOR_SERVER...
insert into MONITOR_SERVER (id, cpu_core, cpu_rate, disk_total, disk_used, mem_total, mem_used, name, port, sort, state, swap_total, swap_used, address)
values ('1', 8, .05924018, 465.12402, 91.66521, 7.849415, 7.6052284, '本地', 8777, 999, '0', 14.599415, 11.263367, 'localhost');
commit;
prompt 1 records loaded
prompt Loading OBJECT_MENUS...
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '1');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '2');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '44');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '45');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '46');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '3');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '48');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '49');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '50');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '5');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '52');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '53');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '54');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '35');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '56');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '57');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '58');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '39');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '64');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '65');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '66');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '8b81e48170c86fc60170c889d3d90009');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '8b81e48170f0cdfa0170f0d026ad0001');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '8b81e48170f0cdfa0170f0d269e90009');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '6');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '41');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '7');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '32');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '80');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '9');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '90');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '92');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '103');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '105');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '104');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '93');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '106');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '108');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '107');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '94');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '109');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '111');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '110');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '97');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '102');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '98');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '112');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '114');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '113');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '36');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '28');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '73');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '74');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '75');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '30');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '82');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '18');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '77');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '78');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '79');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '14');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '38');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '116');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '10');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '83');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '11');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '15');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '33');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '34');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '21');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '23');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '22');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '27');
insert into OBJECT_MENUS (object_type, object_id, menu_id)
values ('user', '1', '24');
commit;
prompt 74 records loaded
prompt Loading QUARTZ_JOB...
insert into QUARTZ_JOB (id, bean_name, cron_expression, is_pause, job_name, method_name, params, remark, create_time)
values ('1', 'visitsTask', '0 0 0 * * ?', '0', '更新访客记录', 'run', null, '每日0点创建新的访客记录', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into QUARTZ_JOB (id, bean_name, cron_expression, is_pause, job_name, method_name, params, remark, create_time)
values ('2', 'testTask', '0/5 * * * * ?', '1', '测试1', 'run1', 'test', '带参测试，多参使用json', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into QUARTZ_JOB (id, bean_name, cron_expression, is_pause, job_name, method_name, params, remark, create_time)
values ('3', 'testTask', '0/5 * * * * ?', '1', '测试', 'run', null, '不带参测试', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
prompt Loading ROLE...
insert into ROLE (id, name, remark, data_scope, role_level, create_time, permission)
values ('1', '超级管理员', '-', '全部', 1, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'admin');
insert into ROLE (id, name, remark, data_scope, role_level, create_time, permission)
values ('2', '普通用户', '-', '本级', 2, to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), 'common');
insert into ROLE (id, name, remark, data_scope, role_level, create_time, permission)
values ('8b81e4816f453895016f453da17b0039', '测试角色', null, '全部', 3, to_date('27-12-2019 10:44:24', 'dd-mm-yyyy hh24:mi:ss'), '2');
commit;
prompt 3 records loaded
prompt Loading ROLES_DEPTS...
prompt Table is empty
prompt Loading ROLES_MENUS...
insert into ROLES_MENUS (menu_id, role_id)
values ('1', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('1', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('1', '8b81e4816f453895016f453da17b0039');
insert into ROLES_MENUS (menu_id, role_id)
values ('10', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('10', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('10', '8b81e4816f453895016f453da17b0039');
insert into ROLES_MENUS (menu_id, role_id)
values ('11', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('11', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('116', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('14', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('14', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('15', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('15', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('18', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('18', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('2', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('2', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('21', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('21', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('21', '8b81e4816f453895016f453da17b0039');
insert into ROLES_MENUS (menu_id, role_id)
values ('22', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('23', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('23', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('24', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('24', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('27', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('27', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('28', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('28', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('3', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('3', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('30', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('30', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('32', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('33', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('33', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('34', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('34', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('35', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('35', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('36', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('36', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('36', '8b81e4816f453895016f453da17b0039');
insert into ROLES_MENUS (menu_id, role_id)
values ('38', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('38', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('39', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('39', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('41', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('44', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('44', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('45', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('46', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('48', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('48', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('49', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('49', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('5', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('5', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('50', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('50', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('52', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('53', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('54', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('56', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('57', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('58', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('6', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('6', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('6', '8b81e4816f453895016f453da17b0039');
insert into ROLES_MENUS (menu_id, role_id)
values ('64', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('65', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('66', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('7', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('73', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('74', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('75', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('77', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('77', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('78', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('78', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('79', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('79', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('80', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('82', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('83', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('9', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('9', '2');
insert into ROLES_MENUS (menu_id, role_id)
values ('90', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('90', '8b81e4816f453895016f453da17b0039');
insert into ROLES_MENUS (menu_id, role_id)
values ('92', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('93', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('94', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('97', '1');
insert into ROLES_MENUS (menu_id, role_id)
values ('98', '1');
commit;
prompt 94 records loaded
prompt Loading USERS_ROLES...
insert into USERS_ROLES (user_id, role_id)
values ('1', '1');
insert into USERS_ROLES (user_id, role_id)
values ('3', '2');
insert into USERS_ROLES (user_id, role_id)
values ('8b81e4816f453895016f453d5e910034', '1');
commit;
prompt 3 records loaded
prompt Loading USER_AVATAR...
prompt Table is empty
prompt Loading VISITS...
insert into VISITS (id, create_time, visits_date, ip_counts, pv_counts, week_day)
values ('8b81e48170e244980170e412c66f004c', to_date('17-03-2020', 'dd-mm-yyyy'), '2020-03-17', 1, 10, '周二');
insert into VISITS (id, create_time, visits_date, ip_counts, pv_counts, week_day)
values ('8b81e48170e244980170e93922640069', to_date('18-03-2020', 'dd-mm-yyyy'), '2020-03-18', 0, 1, '周三');
insert into VISITS (id, create_time, visits_date, ip_counts, pv_counts, week_day)
values ('1', to_date('25-12-2019 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), '2019-12-25', 0, 3, 'Wed');
insert into VISITS (id, create_time, visits_date, ip_counts, pv_counts, week_day)
values ('8b81e4816f424b35016f42efa8fb001b', to_date('27-12-2019', 'dd-mm-yyyy'), '2019-12-27', 2, 6, 'Fri');
insert into VISITS (id, create_time, visits_date, ip_counts, pv_counts, week_day)
values ('8b81e4816f3d0969016f3dc94c770003', to_date('26-12-2019', 'dd-mm-yyyy'), '2019-12-26', 1, 7, 'Thu');
insert into VISITS (id, create_time, visits_date, ip_counts, pv_counts, week_day)
values ('8b81e48170c84d0e0170c84d66d00000', to_date('11-03-2020 14:34:40', 'dd-mm-yyyy hh24:mi:ss'), '2020-03-11', 2, 14, '周三');
insert into VISITS (id, create_time, visits_date, ip_counts, pv_counts, week_day)
values ('8b81e48170cdfba50170cdfbe1000000', to_date('12-03-2020 17:03:21', 'dd-mm-yyyy hh24:mi:ss'), '2020-03-12', 1, 4, '周四');
insert into VISITS (id, create_time, visits_date, ip_counts, pv_counts, week_day)
values ('8b81e48170ce069a0170d9c610a3000f', to_date('15-03-2020 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '2020-03-15', 0, 0, '周日');
insert into VISITS (id, create_time, visits_date, ip_counts, pv_counts, week_day)
values ('8b81e48170ce069a0170deec6d5a0011', to_date('16-03-2020 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '2020-03-16', 1, 4, '周一');
insert into VISITS (id, create_time, visits_date, ip_counts, pv_counts, week_day)
values ('8b81e48170ce069a0170cf795469000b', to_date('13-03-2020', 'dd-mm-yyyy'), '2020-03-13', 0, 0, '周五');
insert into VISITS (id, create_time, visits_date, ip_counts, pv_counts, week_day)
values ('8b81e48170ce069a0170d49fb31a000d', to_date('14-03-2020', 'dd-mm-yyyy'), '2020-03-14', 0, 0, '周六');
insert into VISITS (id, create_time, visits_date, ip_counts, pv_counts, week_day)
values ('8b81e48170f05fea0170f06043a30000', to_date('19-03-2020 09:20:05', 'dd-mm-yyyy hh24:mi:ss'), '2020-03-19', 1, 4, '周四');
commit;
prompt 12 records loaded
prompt Enabling triggers for COLUMN_CONFIG...
alter table COLUMN_CONFIG enable all triggers;
prompt Enabling triggers for DEPT...
alter table DEPT enable all triggers;
prompt Enabling triggers for DICT...
alter table DICT enable all triggers;
prompt Enabling triggers for DICT_DETAIL...
alter table DICT_DETAIL enable all triggers;
prompt Enabling triggers for EL_USER...
alter table EL_USER enable all triggers;
prompt Enabling triggers for EMAIL_CONFIG...
alter table EMAIL_CONFIG enable all triggers;
prompt Enabling triggers for GEN_CONFIG...
alter table GEN_CONFIG enable all triggers;
prompt Enabling triggers for GEN_TEST_MYBATIS...
alter table GEN_TEST_MYBATIS enable all triggers;
prompt Enabling triggers for LOCAL_STORAGE...
alter table LOCAL_STORAGE enable all triggers;
prompt Enabling triggers for MENU...
alter table MENU enable all triggers;
prompt Enabling triggers for MNT_APP...
alter table MNT_APP enable all triggers;
prompt Enabling triggers for MNT_DATABASE...
alter table MNT_DATABASE enable all triggers;
prompt Enabling triggers for MNT_DEPLOY...
alter table MNT_DEPLOY enable all triggers;
prompt Enabling triggers for MNT_DEPLOY_HISTORY...
alter table MNT_DEPLOY_HISTORY enable all triggers;
prompt Enabling triggers for MNT_DEPLOY_SERVER...
alter table MNT_DEPLOY_SERVER enable all triggers;
prompt Enabling triggers for MNT_SERVER...
alter table MNT_SERVER enable all triggers;
prompt Enabling triggers for MONITOR_SERVER...
alter table MONITOR_SERVER enable all triggers;
prompt Enabling triggers for OBJECT_MENUS...
alter table OBJECT_MENUS enable all triggers;
prompt Enabling triggers for QUARTZ_JOB...
alter table QUARTZ_JOB enable all triggers;
prompt Enabling triggers for ROLE...
alter table ROLE enable all triggers;
prompt Enabling triggers for ROLES_DEPTS...
alter table ROLES_DEPTS enable all triggers;
prompt Enabling triggers for ROLES_MENUS...
alter table ROLES_MENUS enable all triggers;
prompt Enabling triggers for USERS_ROLES...
alter table USERS_ROLES enable all triggers;
prompt Enabling triggers for USER_AVATAR...
alter table USER_AVATAR enable all triggers;
prompt Enabling triggers for VISITS...
alter table VISITS enable all triggers;
set feedback on
set define on
prompt Done.
