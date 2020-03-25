-- -----------------------------------------------
-- Export file for user ELADMIN_BASE           --
-- Created by XiaofengG on 2020/3/19, 11:40:52 --
-- -----------------------------------------------

 
create table COLUMN_CONFIG
(
  id              VARCHAR(32) not null,
  table_name      VARCHAR(255),
  column_name     VARCHAR(255),
  column_type     VARCHAR(255),
  dict_name       VARCHAR(255),
  extra           VARCHAR(255),
  form_show       CHAR(1),
  form_type       VARCHAR(255),
  key_type        VARCHAR(255),
  list_show       CHAR(1),
  not_null        CHAR(1),
  query_type      VARCHAR(255),
  remark          VARCHAR(255),
  date_annotation VARCHAR(255)
) ;
alter table COLUMN_CONFIG comment  = '代码生成字段信息存储';
alter table COLUMN_CONFIG
  add constraint COLUMN_CONFIG_PK primary key (ID);

 
create table DEPT
(
  id          VARCHAR(32) not null,
  name        VARCHAR(255) not null,
  pid         VARCHAR(32) not null,
  enabled     CHAR(1) not null,
  create_time DATE
)
;
alter table DEPT  
MODIFY column  id VARCHAR(32) comment  'ID',
MODIFY column  name VARCHAR(255)
  comment  '名称',
MODIFY column  pid VARCHAR(32)
  comment  '上级部门',
MODIFY column  enabled CHAR(1)
  comment  '状态',
MODIFY column create_time DATE
  comment  '创建日期';
alter table DEPT
  add constraint DEPT_PK primary key (ID);

 
create table DICT
(
  id          VARCHAR(32) not null,
  name        VARCHAR(255) not null,
  remark      VARCHAR(255),
  create_time DATE
)
;
alter table DICT 
  comment = '数据字典',
MODIFY column   name VARCHAR(32)
  comment '字典名称',
MODIFY column  remark VARCHAR(255)
  comment   '描述',
MODIFY column  create_time VARCHAR(255)
  comment  '创建日期';
alter table DICT
  add constraint DICT_PK primary key (ID);

 
create table DICT_DETAIL
(
  id          VARCHAR(32) not null,
  label       VARCHAR(255) not null,
  value       VARCHAR(255) not null,
  sort        VARCHAR(255),
  dict_id     VARCHAR(32),
  create_time DATE
)
;
alter table DICT_DETAIL
  comment = '数据字典详情',
MODIFY column  label  VARCHAR(255)
  comment   '字典标签',
MODIFY column   value VARCHAR(255)
  comment   '字典值',
MODIFY column  sort VARCHAR(5)
  comment   '排序',
MODIFY column  dict_id VARCHAR(32)
  comment   '字典id',
MODIFY column  create_time date
  comment   '创建日期';
alter table DICT_DETAIL
  add constraint DICT_DETAIL_PK primary key (ID);

 
create table EL_USER
(
  id                       VARCHAR(32) not null,
  avatar                   VARCHAR(32),
  email                    VARCHAR(255),
  enabled                  CHAR(1),
  password                 VARCHAR(255),
  username                 VARCHAR(255),
  dept_id                  VARCHAR(32),
  phone                    VARCHAR(255),
  job_id                   VARCHAR(32),
  create_time              DATE,
  last_password_reset_time DATE,
  nick_name                VARCHAR(255),
  sex                      VARCHAR(255)
)
;
alter table EL_USER
  comment = '系统用户',
MODIFY column  id VARCHAR(32)
  comment 'ID',
MODIFY column  avatar VARCHAR(32) 
  comment   '头像',
MODIFY column  email VARCHAR(255)
  comment   '邮箱',
MODIFY column  enabled CHAR(1)
  comment   '状态：1启用、0禁用',
MODIFY column  password VARCHAR(255)
  comment   '密码',
MODIFY column  username VARCHAR(255)
  comment   '用户名',
MODIFY column  dept_id VARCHAR(32)
  comment   '部门名称',
MODIFY column  phone VARCHAR(255)
  comment  '手机号码',
MODIFY column  job_id VARCHAR(32)
  comment   '岗位名称',
MODIFY column  create_time date
  comment   '创建日期',
MODIFY column  last_password_reset_time date
  comment   '最后修改密码的日期';
alter table EL_USER
  add constraint USER_PK primary key (ID);
 
create table EMAIL_CONFIG
(
  id        decimal(19),
  from_user VARCHAR(255),
  host      VARCHAR(255),
  pass      VARCHAR(255),
  port      VARCHAR(255),
  user_name VARCHAR(255)
)
;
alter table EMAIL_CONFIG
  comment = '邮箱配置',
MODIFY column  id decimal(19)
  comment   'ID',
MODIFY column  from_user VARCHAR(255)
  comment   '收件人',
MODIFY column  host VARCHAR(255)
  comment   '邮件服务器SMTP地址',
MODIFY column  pass VARCHAR(255)
  comment  '密码', 
MODIFY column  port VARCHAR(5)
  comment   '端口',
MODIFY column  user_name VARCHAR(255)
  comment   '发件者用户名';
alter table EMAIL_CONFIG
  add constraint EMAIL_CONFIG_PK primary key (ID);

 
create table GEN_CONFIG
(
  id          VARCHAR(32) not null,
  table_name  VARCHAR(255),
  author      VARCHAR(255),
  cover       CHAR(1),
  module_name VARCHAR(255),
  pack        VARCHAR(255),
  path        VARCHAR(255),
  api_path    VARCHAR(255),
  prefix      VARCHAR(255),
  api_alias   VARCHAR(255)
)
;
alter table GEN_CONFIG
  comment = '代码生成器配置',
MODIFY column  id  VARCHAR(32)
  comment   'ID',
MODIFY column  table_name VARCHAR(255)
  comment  '表名',
MODIFY column  author VARCHAR(255)
  comment  '作者',
MODIFY column  cover CHAR(1)
  comment  '是否覆盖',
MODIFY column  module_name VARCHAR(255)
  comment  '模块名称',
MODIFY column  pack VARCHAR(255)
  comment  '至于哪个包下',
MODIFY column  path VARCHAR(255)
  comment  '前端代码生成的路径',
MODIFY column  api_path VARCHAR(255)
  comment  '前端Api文件路径',
MODIFY column  prefix VARCHAR(255)
  comment  '表前缀',
MODIFY column  api_alias VARCHAR(255)
  comment  '接口名称';
alter table GEN_CONFIG
  add constraint GEN_CONFIG_PK primary key (ID);

 
create table GEN_TEST_MYBATIS 
(
  id          VARCHAR(32) not null,
  org_name    VARCHAR(128),
  org_level   INTEGER,
  org_type    CHAR(2),
  org_total   decimal(20,5),
  create_date DATE
) 

 
create table LOCAL_STORAGE
(
  id             VARCHAR(32) not null,
  real_name      VARCHAR(255),
  name           VARCHAR(255),
  suffix         VARCHAR(255),
  path           VARCHAR(255),
  type           VARCHAR(255),
  file_size      VARCHAR(100),
  operate        VARCHAR(255),
  create_time    DATE,
  portal_visible VARCHAR(10)
)
;
alter table LOCAL_STORAGE
  comment = '本地存储',
MODIFY column  real_name VARCHAR(255)
  comment   '文件真实的名称',
MODIFY column  name VARCHAR(255)
  comment  '文件名',
MODIFY column  suffix VARCHAR(255)
  comment   '后缀',
MODIFY column  path VARCHAR(255)
  comment   '路径',
MODIFY column  type VARCHAR(255)
  comment   '类型',
MODIFY column  file_size VARCHAR(100)
  comment   '大小',
MODIFY column  operate VARCHAR(255)
  comment   '操作人',
MODIFY column  create_time date
  comment   '创建日期';
alter table LOCAL_STORAGE
  add constraint LOCAL_STORAGE_PK primary key (ID);
 
create table LOG
(
  id               VARCHAR(32) not null,
  create_time      DATE,
  description      VARCHAR(255),
  exception_detail text,
  log_type         VARCHAR(255),
  method           VARCHAR(255),
  params           text,
  request_ip       VARCHAR(255),
  time             decimal(19),
  username         VARCHAR(255),
  address          VARCHAR(255),
  browser          VARCHAR(255)
)
;
alter table LOG
  comment = '系统日志';
alter table LOG
  add constraint LOG_PK primary key (ID);

 
create table MENU
(
  id             VARCHAR(32) not null,
  i_frame        CHAR(1),
  name           VARCHAR(255),
  component      VARCHAR(255),
  pid            VARCHAR(32) not null,
  sort           decimal(19),
  icon           VARCHAR(255),
  path           VARCHAR(255),
  cache          CHAR(1) default '0',
  hidden         CHAR(1) default '0',
  component_name VARCHAR(20) default '-',
  create_time    DATE,
  permission     VARCHAR(255),
  type           decimal(10)
)
;
alter table MENU
  comment = '系统菜单',
MODIFY column  id VARCHAR(32)
  comment 'ID',
MODIFY column  i_frame CHAR(1)
  comment  '是否外链',
MODIFY column  name VARCHAR(255)
  comment   '菜单名称',
MODIFY column  component VARCHAR(255)
  comment '组件',
MODIFY column  pid VARCHAR(32)
  comment '上级菜单ID',
MODIFY column  sort decimal(19)
  comment '排序',
MODIFY column  icon VARCHAR(255)
  comment '图标',
MODIFY column  path VARCHAR(255)
  comment '链接地址',
MODIFY column  cache CHAR(1) default '0'
  comment '缓存',
MODIFY column  hidden CHAR(1) default '0'
  comment '隐藏',
MODIFY column  component_name VARCHAR(20)
  comment '组件名称',
MODIFY column  create_time date
  comment '创建日期',
MODIFY column  permission VARCHAR(20)
  comment '权限',
MODIFY column  type decimal(10)
  comment '类型';
alter table MENU
  add constraint MENU_PK primary key (ID);

 
create table MNT_APP
(
  id            VARCHAR(32) not null,
  name          VARCHAR(255),
  upload_path   VARCHAR(255),
  deploy_path   VARCHAR(255),
  backup_path   VARCHAR(255),
  port          decimal(10),
  start_script  VARCHAR(4000),
  deploy_script VARCHAR(4000),
  create_time   DATE
)
;
alter table MNT_APP
  comment = '应用管理',
MODIFY column id VARCHAR(32)
  comment  '应用ID',
MODIFY column name VARCHAR(255)
  comment   '应用名称',
MODIFY column upload_path VARCHAR(255)
  comment  '上传目录',
MODIFY column deploy_path VARCHAR(255)
  comment   '部署路径',
MODIFY column backup_path VARCHAR(255)
  comment  '备份路径',
MODIFY column port decimal(10)
  comment  '应用端口',
MODIFY column start_script VARCHAR(4000)
  comment  '启动脚本',
MODIFY column deploy_script VARCHAR(4000)
  comment  '部署脚本',
MODIFY column create_time date
  comment  '创建日期';
alter table MNT_APP
  add constraint MNT_APP_PK primary key (ID);

 
create table MNT_DATABASE
(
  id          VARCHAR(255) not null,
  name        VARCHAR(255) not null,
  jdbc_url    VARCHAR(255) not null,
  user_name   VARCHAR(255) not null,
  pwd         VARCHAR(255) not null,
  create_time DATE
)
;
alter table MNT_DATABASE
  comment = '数据库管理',
MODIFY column  id VARCHAR(32)
  comment   '编号',
MODIFY column  name VARCHAR(255)
  comment   '名称',
MODIFY column  jdbc_url VARCHAR(255)
  comment   'jdbc连接',
MODIFY column  user_name VARCHAR(32)
  comment   '账号',
MODIFY column  pwd VARCHAR(255)
  comment   '密码';
alter table MNT_DATABASE
  add constraint MNT_DATABASE_PK primary key (ID);

 
create table MNT_DEPLOY
(
  id          VARCHAR(32) not null,
  app_id      VARCHAR(32),
  create_time DATE
)
;
alter table MNT_DEPLOY
  comment   '部署管理',
MODIFY column   id VARCHAR(32)
  comment   '编号',
MODIFY column app_id VARCHAR(32)
  comment   '应用编号';
alter table MNT_DEPLOY
  add constraint MNT_DEPLOY_PK primary key (ID);

 
create table MNT_DEPLOY_HisTORY
(
  id          VARCHAR(50) not null,
  app_name    VARCHAR(255) not null,
  deploy_date DATE not null,
  deploy_user VARCHAR(50) not null,
  ip          VARCHAR(20) not null,
  deploy_id   VARCHAR(32)
)
;
alter table MNT_DEPLOY_HisTORY
  comment = '部署历史管理',
MODIFY column id VARCHAR(32)
  comment   '编号',
MODIFY column app_name  VARCHAR(255)
  comment   '应用名称',
MODIFY column deploy_date date
  comment   '部署日期',
MODIFY column deploy_user VARCHAR(32)
  comment   '部署用户',
MODIFY column ip VARCHAR(20)
  comment   '服务器IP',
MODIFY column deploy_id VARCHAR(32)
  comment  '部署编号';
alter table MNT_DEPLOY_HisTORY
  add constraint MNT_DEPLOY_HisTORY_PK primary key (ID);

 
create table MNT_DEPLOY_SERVER
(
  deploy_id VARCHAR(32) not null,
  server_id VARCHAR(32) not null
)
;
alter table MNT_DEPLOY_SERVER
  comment = '应用与服务器关联';
alter table MNT_DEPLOY_SERVER
  add constraint MNT_DEPLOY_SERVER_PK primary key (DEPLOY_ID, SERVER_ID);

 
create table MNT_SERVER
(
  id          VARCHAR(32) not null,
  account     VARCHAR(255),
  ip          VARCHAR(255),
  name        VARCHAR(255),
  password    VARCHAR(255),
  port        decimal(10),
  create_time DATE
)
;
alter table MNT_SERVER
  comment = '服务器管理',
MODIFY column  id VARCHAR(32)
  comment   'IP地址',
MODIFY column  account VARCHAR(255)
  comment   '账号',
MODIFY column  ip VARCHAR(255)
  comment   'IP地址',
MODIFY column  name VARCHAR(255)
  comment   '名称',
MODIFY column  password VARCHAR(255)
  comment  '密码',
MODIFY column  port decimal(10)
  comment  '端口';
alter table MNT_SERVER
  add constraint MNT_SERVER_PK primary key (ID);

 
create table MONITOR_SERVER
(
  id         VARCHAR(32) not null,
  cpu_core   int(10),
  cpu_rate   FLOAT,
  disk_total FLOAT,
  disk_used  FLOAT,
  mem_total  FLOAT,
  mem_used   FLOAT,
  name       VARCHAR(255),
  port       decimal(10),
  sort       decimal(10),
  state      VARCHAR(255),
  swap_total FLOAT,
  swap_used  FLOAT,
  address    VARCHAR(255) not null
)
;
alter table MONITOR_SERVER
  comment = '服务监控',
MODIFY column  cpu_core decimal(10)
  comment  'CPU内核数',
MODIFY column  cpu_rate FLOAT
  comment  'CPU使用率',
MODIFY column  disk_total FLOAT
  comment  '磁盘总量',
MODIFY column  disk_used FLOAT
  comment  '磁盘使用量',
MODIFY column  mem_total FLOAT
  comment  '内存总数',
MODIFY column  mem_used FLOAT
  comment  '内存使用量',
MODIFY column  name VARCHAR(255)
  comment  '名称', 
MODIFY column  port decimal(10)
  comment  '访问端口',
MODIFY column  sort decimal(10)
  comment  '排序',
MODIFY column  state VARCHAR(255)
  comment  '状态',
MODIFY column  swap_total  FLOAT
  comment  '交换区总量',
MODIFY column  swap_used FLOAT
  comment  '交换区使用量',
MODIFY column  address VARCHAR(255)
  comment  '服务地址';
alter table MONITOR_SERVER
  add constraint MONITOR_SERVER_PK primary key (ID);

 
create table OBJECT_MENUS
(
  object_type VARCHAR(32),
  object_id   VARCHAR(32),
  menu_id     VARCHAR(32)
)
;

 
create table QUARTZ_JOB
(
  id              VARCHAR(32) not null,
  bean_name       VARCHAR(255),
  cron_expression VARCHAR(255),
  is_pause        CHAR(1),
  job_name        VARCHAR(255),
  method_name     VARCHAR(255),
  params          VARCHAR(255),
  remark          VARCHAR(255),
  create_time     DATE
)
;
alter table QUARTZ_JOB
  comment = '定时任务',
MODIFY column  id VARCHAR(32)
  comment  'ID',
MODIFY column  bean_name VARCHAR(255)
  comment  'Spring Bean名称',
MODIFY column  cron_expression VARCHAR(255)
  comment  'cron 表达式',
MODIFY column  is_pause char(1)
  comment  '状态：1暂停、0启用',
MODIFY column  job_name VARCHAR(255)
  comment  '任务名称',
MODIFY column  method_name VARCHAR(255)
  comment  '方法名称',
MODIFY column  params VARCHAR(255)
  comment  '参数',
MODIFY column  remark VARCHAR(255)
  comment  '备注',
MODIFY column  create_time date
  comment  '创建日期';
alter table QUARTZ_JOB
  add constraint QUARTZ_JOB_PK primary key (ID);

 
create table QUARTZ_LOG
(
  id               VARCHAR(32) not null,
  baen_name        VARCHAR(255),
  create_time      DATE,
  cron_expression  VARCHAR(255),
  exception_detail text,
  is_success       CHAR(1),
  job_name         VARCHAR(255),
  method_name      VARCHAR(255),
  params           VARCHAR(255),
  time             decimal(19)
)
;
alter table QUARTZ_LOG
  comment = '定时任务日志';
alter table QUARTZ_LOG
  add constraint QUARTZ_LOG_PK primary key (ID);

 
create table ROLE
(
  id          VARCHAR(32) not null,
  name        VARCHAR(255) not null,
  remark      VARCHAR(255),
  data_scope  VARCHAR(255),
  role_level  decimal(10),
  create_time DATE,
  permission  VARCHAR(255)
)
;
alter table ROLE
  comment = '角色表',
MODIFY column  id VARCHAR(32)
  comment   'ID',
MODIFY column  name VARCHAR(255)
  comment   '名称',
MODIFY column  remark VARCHAR(255)
  comment   '备注',
MODIFY column  data_scope VARCHAR(255)
  comment  '数据权限',
MODIFY column  role_level decimal(10)
  comment   '角色级别',
MODIFY column  create_time date
  comment   '创建日期',
MODIFY column  permission VARCHAR(255)
  comment  '功能权限';
alter table ROLE
  add constraint ROLE_PK primary key (ID);


create table ROLES_DEPTS
(
  role_id VARCHAR(32) not null,
  dept_id VARCHAR(32) not null
)
;
alter table ROLES_DEPTS
  comment = '角色部门关联';
alter table ROLES_DEPTS
  add constraint ROLES_DEPTS_PK primary key (ROLE_ID, DEPT_ID);

 
create table ROLES_MENUS
(
  menu_id VARCHAR(32) not null,
  role_id VARCHAR(32) not null
)
;
alter table ROLES_MENUS
  comment = '角色菜单关联',
MODIFY column   menu_id VARCHAR(32)
  comment   '菜单ID',
MODIFY column   role_id VARCHAR(32)
  comment  '角色ID';
alter table ROLES_MENUS
  add constraint ROLES_MENUS_PK primary key (MENU_ID, ROLE_ID);

 
create table USERS_ROLES
(
  user_id VARCHAR(32) not null,
  role_id VARCHAR(32) not null
)
;
alter table USERS_ROLES
  comment = '用户角色关联',
MODIFY column   user_id VARCHAR(32)
  comment '用户ID',
MODIFY column  role_id VARCHAR(32)
  comment   '角色ID';
alter table USERS_ROLES
  add constraint USERS_ROLES_PK primary key (USER_ID, ROLE_ID);

 
create table USER_AVATAR
(
  id          VARCHAR(32) not null,
  real_name   VARCHAR(255),
  path        VARCHAR(255),
  avatar_size VARCHAR(255),
  create_time DATE
)
;
alter table USER_AVATAR
  comment = '系统用户头像',
MODIFY column  real_name VARCHAR(255)
  comment   '真实文件名',
MODIFY column  path VARCHAR(255)
  comment   '路径',
MODIFY column  avatar_size VARCHAR(255)
  comment   '大小',
MODIFY column  create_time date 
  comment   '创建时间';
alter table USER_AVATAR
  add constraint USER_AVATAR_PK primary key (ID);

 
create table VisITS
(
  id          VARCHAR(32) not null,
  create_time DATE,
  visits_date VARCHAR(255),
  ip_counts   decimal(19),
  pv_counts   decimal(19),
  week_day    VARCHAR(255)
)
;
alter table VisITS
  comment = '访客记录';
alter table VisITS
  add constraint VisITS_PK primary key (ID);
