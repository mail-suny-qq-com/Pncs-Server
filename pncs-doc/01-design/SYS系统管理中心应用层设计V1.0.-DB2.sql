-- 建表脚本-DB2
-- 系统用户表
CREATE TABLE SYS_USER(
  ID  VARCHAR(32) NOT NULL,
  AVATAR  VARCHAR(32),
  EMAIL  VARCHAR(255),
  ENABLED  CHAR(1),
  PASSWORD  VARCHAR(255),
  USERNAME  VARCHAR(255),
  DEPT_ID  VARCHAR(32),
  PHONE  VARCHAR(255),
  JOB_ID  VARCHAR(32),
  CREATE_TIME  TIMESTAMP,
  LAST_PASSWORD_RESET_TIME  TIMESTAMP,
  NICK_NAME  VARCHAR(255),
  SEX  VARCHAR(255),
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_USER PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_USER IS '应用层-系统用户表';
 COMMENT ON SYS_USER(
ID IS  'ID',
AVATAR IS  '头像',
EMAIL IS  '邮箱',
ENABLED IS  '状态：1启用、0禁用',
PASSWORD IS  '密码',
USERNAME IS  '用户名',
DEPT_ID IS  '部门名称',
PHONE IS  '手机号码',
JOB_ID IS  '岗位名称',
CREATE_TIME IS  '创建日期',
LAST_PASSWORD_RESET_TIME IS  '最后修改密码的日期',
NICK_NAME IS  '',
SEX IS  '',
CRT_USER_CODE IS  '创建人',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建日期',
UPD_USER_CODE IS  '修改人',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改日期',
TENANT IS  '租户'
);
COMMIT;
-- 部门信息表
CREATE TABLE SYS_DEPT(
  ID  VARCHAR(32) NOT NULL,
  NAME  VARCHAR(255),
  PID  VARCHAR(32),
  ENABLED  CHAR(1),
  CREATE_TIME  TIMESTAMP,
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_DEPT PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_DEPT IS '应用层-部门信息表';
 COMMENT ON SYS_DEPT(
ID IS  'ID',
NAME IS  '名称',
PID IS  '上级部门',
ENABLED IS  '状态',
CREATE_TIME IS  '创建日期',
CRT_USER_CODE IS  '创建人',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建日期',
UPD_USER_CODE IS  '修改人',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改日期',
TENANT IS  '租户'
);
COMMIT;
-- 角色表
CREATE TABLE SYS_ROLE(
  ID  VARCHAR(32) NOT NULL,
  NAME  VARCHAR(255),
  REMARK  VARCHAR(255),
  DATA_SCOPE  VARCHAR(255),
  ROLE_LEVEL  DECIMAL(10,0),
  CREATE_TIME  TIMESTAMP,
  PERMISSION  VARCHAR(255),
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_ROLE PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_ROLE IS '应用层-角色表';
 COMMENT ON SYS_ROLE(
ID IS  'ID',
NAME IS  '名称',
REMARK IS  '备注',
DATA_SCOPE IS  '数据权限',
ROLE_LEVEL IS  '角色级别',
CREATE_TIME IS  '创建日期',
PERMISSION IS  '功能权限',
CRT_USER_CODE IS  '创建人',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建日期',
UPD_USER_CODE IS  '修改人',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改日期',
TENANT IS  '租户'
);
COMMIT;
-- 用户角色关联表
CREATE TABLE SYS_USER_ROLE(
  ID  VARCHAR(32) NOT NULL,
  USER_ID  VARCHAR(32),
  ROLE_ID  VARCHAR(32),
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_USER_ROLE PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_USER_ROLE IS '应用层-用户角色关联表';
 COMMENT ON SYS_USER_ROLE(
ID IS  '主键ID',
USER_ID IS  '用户ID',
ROLE_ID IS  '角色ID',
CRT_USER_CODE IS  '创建用户',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建时间',
UPD_USER_CODE IS  '修改用户',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改时间',
TENANT IS  '租户'
);
COMMIT;
-- 角色部门关联表
CREATE TABLE SYS_ROLE_DEPT(
  ID  VARCHAR(32) NOT NULL,
  ROLE_ID  VARCHAR(32) NOT NULL,
  DEPT_ID  VARCHAR(32) NOT NULL,
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_ROLE_DEPT PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_ROLE_DEPT IS '应用层-角色部门关联表';
 COMMENT ON SYS_ROLE_DEPT(
ID IS  '依赖ID',
ROLE_ID IS  '角色ID',
DEPT_ID IS  '部门ID',
CRT_USER_CODE IS  '创建用户',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建时间',
UPD_USER_CODE IS  '修改用户',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改时间',
TENANT IS  '租户'
);
COMMIT;
-- 系统菜单表
CREATE TABLE SYS_MENU(
  ID  VARCHAR(32) NOT NULL,
  I_FRAME  CHAR(1),
  NAME  VARCHAR(255),
  COMPONENT  VARCHAR(255),
  PID  VARCHAR(32),
  SORT  DECIMAL(19,0),
  ICON  VARCHAR(255),
  PATH  VARCHAR(255),
  CACHE  CHAR(1),
  HIDDEN  CHAR(1),
  COMPONENT_NAME  VARCHAR(20),
  CREATE_TIME  TIMESTAMP,
  PERMISSION  VARCHAR(20),
  TYPE  DECIMAL(10,0),
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_MENU PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_MENU IS '应用层-系统菜单表';
 COMMENT ON SYS_MENU(
ID IS  'ID',
I_FRAME IS  '是否外链',
NAME IS  '菜单名称',
COMPONENT IS  '组件',
PID IS  '上级菜单ID',
SORT IS  '排序',
ICON IS  '图标',
PATH IS  '链接地址',
CACHE IS  '缓存',
HIDDEN IS  '隐藏',
COMPONENT_NAME IS  '组件名称',
CREATE_TIME IS  '创建日期',
PERMISSION IS  '权限',
TYPE IS  '类型',
CRT_USER_CODE IS  '创建人',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建日期',
UPD_USER_CODE IS  '修改人',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改日期',
TENANT IS  '租户'
);
COMMIT;
-- 对象菜单关联表
CREATE TABLE SYS_OBJECT_MENU(
  ID  VARCHAR(32) NOT NULL,
  OBJECT_TYPE  VARCHAR(32),
  OBJECT_ID  VARCHAR(32),
  MENU_ID  VARCHAR(32),
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_OBJECT_MENU PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_OBJECT_MENU IS '应用层-对象菜单关联表';
 COMMENT ON SYS_OBJECT_MENU(
ID IS  '结果ID',
OBJECT_TYPE IS  '类型（dept-部门，role-角色，user-用户）',
OBJECT_ID IS  '对象ID',
MENU_ID IS  '菜单ID',
CRT_USER_CODE IS  '创建用户',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建时间',
UPD_USER_CODE IS  '修改用户',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改时间',
TENANT IS  '租户'
);
COMMIT;
-- 数据字典表
CREATE TABLE SYS_DICT(
  ID  VARCHAR(32) NOT NULL,
  DICT_NAME  VARCHAR(100),
  NAME  VARCHAR(32),
  DICT_CODE  VARCHAR(100),
  REMARK  VARCHAR(255),
  DESCRIPTION  VARCHAR(255),
  DEL_FLAG  DECIMAL(1),
  CREATE_BY  VARCHAR(32),
  CREATE_TIME  TIMESTAMP,
  UPDATE_BY  VARCHAR(32),
  UPDATE_TIME  TIMESTAMP,
  TYPE  DECIMAL(1),
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_DICT PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_DICT IS '应用层-数据字典表';
 COMMENT ON SYS_DICT(
ID IS  '主键ID',
DICT_NAME IS  '字典名称',
NAME IS  '字典名称',
DICT_CODE IS  '字典编码',
REMARK IS  '描述',
DESCRIPTION IS  '描述',
DEL_FLAG IS  '删除状态',
CREATE_BY IS  '创建人',
CREATE_TIME IS  '创建时间',
UPDATE_BY IS  '更新人',
UPDATE_TIME IS  '更新时间',
TYPE IS  '字典类型0为string,1为number',
CRT_USER_CODE IS  '创建人',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建日期',
UPD_USER_CODE IS  '修改人',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改日期',
TENANT IS  '租户'
);
COMMIT;
-- 数据字典详情表
CREATE TABLE SYS_DICT_DETAIL(
  ID  VARCHAR(32) NOT NULL,
  LABEL  VARCHAR(255),
  VALUE  VARCHAR(255),
  SORT  VARCHAR(5),
  DICT_ID  VARCHAR(32),
  CREATE_TIME  TIMESTAMP,
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_DICT_DETAIL PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_DICT_DETAIL IS '应用层-数据字典详情表';
 COMMENT ON SYS_DICT_DETAIL(
ID IS  '主键ID',
LABEL IS  '字典标签',
VALUE IS  '字典值',
SORT IS  '排序',
DICT_ID IS  '字典id',
CREATE_TIME IS  '创建日期',
CRT_USER_CODE IS  '创建人',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建日期',
UPD_USER_CODE IS  '修改人',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改日期',
TENANT IS  '租户'
);
COMMIT;
-- 岗位表
CREATE TABLE SYS_JOB(
  ID  VARCHAR(32) NOT NULL,
  NAME  VARCHAR(255),
  ENABLED  CHAR(1),
  SORT  DECIMAL(19,0),
  DEPT_ID  VARCHAR(32),
  CREATE_TIME  TIMESTAMP,
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_JOB PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_JOB IS '应用层-岗位表';
 COMMENT ON SYS_JOB(
ID IS  'ID',
NAME IS  '岗位名称',
ENABLED IS  '岗位状态',
SORT IS  '岗位排序',
DEPT_ID IS  '部门ID',
CREATE_TIME IS  '创建日期',
CRT_USER_CODE IS  '创建用户',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建时间',
UPD_USER_CODE IS  '修改用户',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改时间',
TENANT IS  '租户'
);
COMMIT;
-- 系统日志表
CREATE TABLE SYS_LOG(
  ID  VARCHAR(32) NOT NULL,
  CREATE_TIME  TIMESTAMP,
  DESCRIPTION  VARCHAR(255),
  EXCEPTION_DETAIL  CLOB,
  LOG_TYPE  VARCHAR(255),
  METHOD  VARCHAR(255),
  PARAMS  CLOB,
  REQUEST_IP  VARCHAR(255),
  TIME  DECIMAL(19,0),
  USERNAME  VARCHAR(255),
  ADDRESS  VARCHAR(255),
  BROWSER  VARCHAR(255),
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_LOG PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_LOG IS '应用层-系统日志表';
 COMMENT ON SYS_LOG(
ID IS  '主键ID',
CREATE_TIME IS  '时间',
DESCRIPTION IS  '描述',
EXCEPTION_DETAIL IS  '异常',
LOG_TYPE IS  '类型',
METHOD IS  '方法',
PARAMS IS  '参数',
REQUEST_IP IS  'IP',
TIME IS  '耗时',
USERNAME IS  '用户',
ADDRESS IS  '地址',
BROWSER IS  '浏览器',
CRT_USER_CODE IS  '创建用户',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建时间',
UPD_USER_CODE IS  '修改用户',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改时间',
TENANT IS  '租户'
);
COMMIT;
-- 角色菜单关联表
CREATE TABLE SYS_ROLE_MENU(
  ID  VARCHAR(32) NOT NULL,
  MENU_ID  VARCHAR(32),
  ROLE_ID  VARCHAR(32),
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_ROLE_MENU PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_ROLE_MENU IS '应用层-角色菜单关联表';
 COMMENT ON SYS_ROLE_MENU(
ID IS  '主键ID',
MENU_ID IS  '菜单ID',
ROLE_ID IS  '角色ID',
CRT_USER_CODE IS  '创建用户',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建时间',
UPD_USER_CODE IS  '修改用户',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改时间',
TENANT IS  '租户'
);
COMMIT;
-- 访客记录表
CREATE TABLE SYS_VISITS(
  ID  VARCHAR(32) NOT NULL,
  CREATE_TIME  TIMESTAMP,
  VISITS_DATE  VARCHAR(255),
  IP_COUNTS  DECIMAL(19,0),
  PV_COUNTS  DECIMAL(19,0),
  WEEK_DAY  VARCHAR(255),
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_VISITS PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_VISITS IS '应用层-访客记录';
 COMMENT ON SYS_VISITS(
ID IS  '主键',
CREATE_TIME IS  '创建时间',
VISITS_DATE IS  '访问时间',
IP_COUNTS IS  'IP数',
PV_COUNTS IS  'PV数',
WEEK_DAY IS  '周次',
CRT_USER_CODE IS  '创建用户',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建时间',
UPD_USER_CODE IS  '修改用户',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改时间',
TENANT IS  '租户'
);
COMMIT;
-- 代码生成器配置表
CREATE TABLE SYS_GEN_CONFIG(
  ID  VARCHAR(32) NOT NULL,
  TABLE_NAME  VARCHAR(255),
  AUTHOR  VARCHAR(255),
  COVER  CHAR(1),
  MODULE_NAME  VARCHAR(255),
  PACK  VARCHAR(255),
  PATH  VARCHAR(255),
  API_PATH  VARCHAR(255),
  PREFIX  VARCHAR(255),
  API_ALIAS  VARCHAR(255),
  REMARK  VARCHAR(255),
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_GEN_CONFIG PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_GEN_CONFIG IS '应用层-代码生成器配置表';
 COMMENT ON SYS_GEN_CONFIG(
ID IS  'ID',
TABLE_NAME IS  '表名',
AUTHOR IS  '作者',
COVER IS  '是否覆盖',
MODULE_NAME IS  '模块名称',
PACK IS  '至于哪个包下',
PATH IS  '前端代码生成的路径',
API_PATH IS  '前端Api文件路径',
PREFIX IS  '表前缀',
API_ALIAS IS  '接口名称',
REMARK IS  '表描述',
CRT_USER_CODE IS  '创建用户',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建时间',
UPD_USER_CODE IS  '修改用户',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改时间',
TENANT IS  '租户'
);
COMMIT;
-- 代码生成字段信息存储表
CREATE TABLE SYS_GEN_COLUMN_CONFIG(
  ID  VARCHAR(32) NOT NULL,
  TABLE_NAME  VARCHAR(255),
  COLUMN_NAME  VARCHAR(255),
  COLUMN_TYPE  VARCHAR(255),
  DICT_NAME  VARCHAR(255),
  EXTRA  VARCHAR(255),
  FORM_SHOW  CHAR(1),
  FORM_TYPE  VARCHAR(255),
  KEY_TYPE  VARCHAR(255),
  LIST_SHOW  CHAR(1),
  NOT_NULL  CHAR(1),
  QUERY_TYPE  VARCHAR(255),
  REMARK  VARCHAR(255),
  DATE_ANNOTATION  VARCHAR(255),
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_GEN_COLUMN_CONFIG PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_GEN_COLUMN_CONFIG IS '应用层-代码生成字段信息存储表';
 COMMENT ON SYS_GEN_COLUMN_CONFIG(
ID IS  'ID',
TABLE_NAME IS  '表名',
COLUMN_NAME IS  '列名',
COLUMN_TYPE IS  '列类型',
DICT_NAME IS  '字典名',
EXTRA IS  '附加信息',
FORM_SHOW IS  '表单显示',
FORM_TYPE IS  '表单类型',
KEY_TYPE IS  '主键类型',
LIST_SHOW IS  '列表显示',
NOT_NULL IS  '非空',
QUERY_TYPE IS  '查询类型',
REMARK IS  '备注',
DATE_ANNOTATION IS  '日期注解',
CRT_USER_CODE IS  '创建用户',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建时间',
UPD_USER_CODE IS  '修改用户',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改时间',
TENANT IS  '租户'
);
COMMIT;
-- 定时任务表
CREATE TABLE SYS_QUARTZ_JOB(
  ID  VARCHAR(32) NOT NULL,
  BEAN_NAME  VARCHAR(255),
  CRON_EXPRESSION  VARCHAR(255),
  IS_PAUSE  CHAR(1),
  JOB_NAME  VARCHAR(255),
  METHOD_NAME  VARCHAR(255),
  PARAMS  VARCHAR(255),
  REMARK  VARCHAR(255),
  CREATE_TIME  TIMESTAMP,
  DATE_ANNOTATION  VARCHAR(255),
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_QUARTZ_JOB PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_QUARTZ_JOB IS '应用层-定时任务表';
 COMMENT ON SYS_QUARTZ_JOB(
ID IS  'ID',
BEAN_NAME IS  'Spring Bean名称',
CRON_EXPRESSION IS  'cron 表达式',
IS_PAUSE IS  '状态：1暂停、0启用',
JOB_NAME IS  '任务名称',
METHOD_NAME IS  '方法名称',
PARAMS IS  '参数',
REMARK IS  '备注',
CREATE_TIME IS  '创建日期',
DATE_ANNOTATION IS  '',
CRT_USER_CODE IS  '创建用户',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建时间',
UPD_USER_CODE IS  '修改用户',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改时间',
TENANT IS  '租户'
);
COMMIT;
-- 定时任务日志表
CREATE TABLE SYS_QUARTZ_LOG(
  ID  VARCHAR(32) NOT NULL,
  BAEN_NAME  VARCHAR(255),
  CREATE_TIME  TIMESTAMP,
  CRON_EXPRESSION  VARCHAR(255),
  EXCEPTION_DETAIL  CLOB,
  IS_SUCCESS  CHAR(1),
  JOB_NAME  VARCHAR(255),
  METHOD_NAME  VARCHAR(255),
  PARAMS  VARCHAR(255),
  TIME  DECIMAL(19,0),
  CRT_USER_CODE  VARCHAR(32),
  CRT_ORG_CODE  VARCHAR(32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR(32),
  UPD_ORG_CODE  VARCHAR(32),
  UPD_DATE  TIMESTAMP,
  TENANT  VARCHAR(32),
CONSTRAINT SYS_QUARTZ_LOG PRIMARY KEY (ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE SYS_QUARTZ_LOG IS '应用层-定时任务日志表';
 COMMENT ON SYS_QUARTZ_LOG(
ID IS  '主键',
BAEN_NAME IS  '类名',
CREATE_TIME IS  '创建时间',
CRON_EXPRESSION IS  '定时任务表达式',
EXCEPTION_DETAIL IS  '异常信息',
IS_SUCCESS IS  '成功标志',
JOB_NAME IS  '任务名称',
METHOD_NAME IS  '方法名',
PARAMS IS  '参数',
TIME IS  '时间',
CRT_USER_CODE IS  '创建用户',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建时间',
UPD_USER_CODE IS  '修改用户',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改时间',
TENANT IS  '租户'
);
COMMIT;

