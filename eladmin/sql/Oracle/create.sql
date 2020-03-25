-------------------------------------------------
-- Export file for user ELADMIN_BASE           --
-- Created by XiaofengG on 2020/3/19, 11:40:52 --
-------------------------------------------------

set define off
spool create.log

prompt
prompt Creating table COLUMN_CONFIG
prompt ============================
prompt
create table COLUMN_CONFIG
(
  id              VARCHAR2(32) not null,
  table_name      VARCHAR2(255),
  column_name     VARCHAR2(255),
  column_type     VARCHAR2(255),
  dict_name       VARCHAR2(255),
  extra           VARCHAR2(255),
  form_show       CHAR(1),
  form_type       VARCHAR2(255),
  key_type        VARCHAR2(255),
  list_show       CHAR(1),
  not_null        CHAR(1),
  query_type      VARCHAR2(255),
  remark          VARCHAR2(255),
  date_annotation VARCHAR2(255)
)
;
comment on table COLUMN_CONFIG
  is '代码生成字段信息存储';
alter table COLUMN_CONFIG
  add constraint COLUMN_CONFIG_PK primary key (ID);

prompt
prompt Creating table DEPT
prompt ===================
prompt
create table DEPT
(
  id          VARCHAR2(32) not null,
  name        VARCHAR2(255) not null,
  pid         VARCHAR2(32) not null,
  enabled     CHAR(1) not null,
  create_time DATE
)
;
comment on table DEPT
  is '部门';
comment on column DEPT.id
  is 'ID';
comment on column DEPT.name
  is '名称';
comment on column DEPT.pid
  is '上级部门';
comment on column DEPT.enabled
  is '状态';
comment on column DEPT.create_time
  is '创建日期';
alter table DEPT
  add constraint DEPT_PK primary key (ID);

prompt
prompt Creating table DICT
prompt ===================
prompt
create table DICT
(
  id          VARCHAR2(32) not null,
  name        VARCHAR2(255) not null,
  remark      VARCHAR2(255),
  create_time DATE
)
;
comment on table DICT
  is '数据字典';
comment on column DICT.name
  is '字典名称';
comment on column DICT.remark
  is '描述';
comment on column DICT.create_time
  is '创建日期';
alter table DICT
  add constraint DICT_PK primary key (ID);

prompt
prompt Creating table DICT_DETAIL
prompt ==========================
prompt
create table DICT_DETAIL
(
  id          VARCHAR2(32) not null,
  label       VARCHAR2(255) not null,
  value       VARCHAR2(255) not null,
  sort        VARCHAR2(255),
  dict_id     VARCHAR2(32),
  create_time DATE
)
;
comment on table DICT_DETAIL
  is '数据字典详情';
comment on column DICT_DETAIL.label
  is '字典标签';
comment on column DICT_DETAIL.value
  is '字典值';
comment on column DICT_DETAIL.sort
  is '排序';
comment on column DICT_DETAIL.dict_id
  is '字典id';
comment on column DICT_DETAIL.create_time
  is '创建日期';
alter table DICT_DETAIL
  add constraint DICT_DETAIL_PK primary key (ID);

prompt
prompt Creating table EL_USER
prompt ======================
prompt
create table EL_USER
(
  id                       VARCHAR2(32) not null,
  avatar                   VARCHAR2(32),
  email                    VARCHAR2(255),
  enabled                  CHAR(1),
  password                 VARCHAR2(255),
  username                 VARCHAR2(255),
  dept_id                  VARCHAR2(32),
  phone                    VARCHAR2(255),
  job_id                   VARCHAR2(32),
  create_time              DATE,
  last_password_reset_time DATE,
  nick_name                VARCHAR2(255),
  sex                      VARCHAR2(255)
)
;
comment on table EL_USER
  is '系统用户';
comment on column EL_USER.id
  is 'ID';
comment on column EL_USER.avatar
  is '头像';
comment on column EL_USER.email
  is '邮箱';
comment on column EL_USER.enabled
  is '状态：1启用、0禁用';
comment on column EL_USER.password
  is '密码';
comment on column EL_USER.username
  is '用户名';
comment on column EL_USER.dept_id
  is '部门名称';
comment on column EL_USER.phone
  is '手机号码';
comment on column EL_USER.job_id
  is '岗位名称';
comment on column EL_USER.create_time
  is '创建日期';
comment on column EL_USER.last_password_reset_time
  is '最后修改密码的日期';
alter table EL_USER
  add constraint USER_PK primary key (ID);

prompt
prompt Creating table EMAIL_CONFIG
prompt ===========================
prompt
create table EMAIL_CONFIG
(
  id        NUMBER(19) not null,
  from_user VARCHAR2(255),
  host      VARCHAR2(255),
  pass      VARCHAR2(255),
  port      VARCHAR2(255),
  user_name VARCHAR2(255)
)
;
comment on table EMAIL_CONFIG
  is '邮箱配置';
comment on column EMAIL_CONFIG.id
  is 'ID';
comment on column EMAIL_CONFIG.from_user
  is '收件人';
comment on column EMAIL_CONFIG.host
  is '邮件服务器SMTP地址';
comment on column EMAIL_CONFIG.pass
  is '密码';
comment on column EMAIL_CONFIG.port
  is '端口';
comment on column EMAIL_CONFIG.user_name
  is '发件者用户名';
alter table EMAIL_CONFIG
  add constraint EMAIL_CONFIG_PK primary key (ID);

prompt
prompt Creating table GEN_CONFIG
prompt =========================
prompt
create table GEN_CONFIG
(
  id          VARCHAR2(32) not null,
  table_name  VARCHAR2(255),
  author      VARCHAR2(255),
  cover       CHAR(1),
  module_name VARCHAR2(255),
  pack        VARCHAR2(255),
  path        VARCHAR2(255),
  api_path    VARCHAR2(255),
  prefix      VARCHAR2(255),
  api_alias   VARCHAR2(255)
)
;
comment on table GEN_CONFIG
  is '代码生成器配置';
comment on column GEN_CONFIG.id
  is 'ID';
comment on column GEN_CONFIG.table_name
  is '表名';
comment on column GEN_CONFIG.author
  is '作者';
comment on column GEN_CONFIG.cover
  is '是否覆盖';
comment on column GEN_CONFIG.module_name
  is '模块名称';
comment on column GEN_CONFIG.pack
  is '至于哪个包下';
comment on column GEN_CONFIG.path
  is '前端代码生成的路径';
comment on column GEN_CONFIG.api_path
  is '前端Api文件路径';
comment on column GEN_CONFIG.prefix
  is '表前缀';
comment on column GEN_CONFIG.api_alias
  is '接口名称';
alter table GEN_CONFIG
  add constraint GEN_CONFIG_PK primary key (ID);

prompt
prompt Creating table GEN_TEST_MYBATIS
prompt ===============================
prompt
create table GEN_TEST_MYBATIS
(
  id          VARCHAR2(32) not null,
  org_name    VARCHAR2(128),
  org_level   INTEGER,
  org_type    CHAR(2),
  org_total   NUMBER(20,5),
  create_date DATE
)
;
comment on column GEN_TEST_MYBATIS.id
  is '机构号';
comment on column GEN_TEST_MYBATIS.org_name
  is '机构名称';
comment on column GEN_TEST_MYBATIS.org_level
  is '机构级别';
comment on column GEN_TEST_MYBATIS.org_type
  is '机构类型';
comment on column GEN_TEST_MYBATIS.org_total
  is '存款总额';
comment on column GEN_TEST_MYBATIS.create_date
  is '成立日期';
alter table GEN_TEST_MYBATIS
  add constraint GEN_TEST_MYBATIS_PK primary key (ID);

prompt
prompt Creating table LOCAL_STORAGE
prompt ============================
prompt
create table LOCAL_STORAGE
(
  id             VARCHAR2(32) not null,
  real_name      VARCHAR2(255),
  name           VARCHAR2(255),
  suffix         VARCHAR2(255),
  path           VARCHAR2(255),
  type           VARCHAR2(255),
  file_size      VARCHAR2(100),
  operate        VARCHAR2(255),
  create_time    DATE,
  portal_visible VARCHAR2(10)
)
;
comment on table LOCAL_STORAGE
  is '本地存储';
comment on column LOCAL_STORAGE.real_name
  is '文件真实的名称';
comment on column LOCAL_STORAGE.name
  is '文件名';
comment on column LOCAL_STORAGE.suffix
  is '后缀';
comment on column LOCAL_STORAGE.path
  is '路径';
comment on column LOCAL_STORAGE.type
  is '类型';
comment on column LOCAL_STORAGE.file_size
  is '大小';
comment on column LOCAL_STORAGE.operate
  is '操作人';
comment on column LOCAL_STORAGE.create_time
  is '创建日期';
alter table LOCAL_STORAGE
  add constraint LOCAL_STORAGE_PK primary key (ID);

prompt
prompt Creating table LOG
prompt ==================
prompt
create table LOG
(
  id               VARCHAR2(32) not null,
  create_time      DATE,
  description      VARCHAR2(255),
  exception_detail CLOB,
  log_type         VARCHAR2(255),
  method           VARCHAR2(255),
  params           CLOB,
  request_ip       VARCHAR2(255),
  time             NUMBER(19),
  username         VARCHAR2(255),
  address          VARCHAR2(255),
  browser          VARCHAR2(255)
)
;
comment on table LOG
  is '系统日志';
alter table LOG
  add constraint LOG_PK primary key (ID);

prompt
prompt Creating table MENU
prompt ===================
prompt
create table MENU
(
  id             VARCHAR2(32) not null,
  i_frame        CHAR(1),
  name           VARCHAR2(255),
  component      VARCHAR2(255),
  pid            VARCHAR2(32) not null,
  sort           NUMBER(19),
  icon           VARCHAR2(255),
  path           VARCHAR2(255),
  cache          CHAR(1) default '0',
  hidden         CHAR(1) default '0',
  component_name VARCHAR2(20) default '-',
  create_time    DATE,
  permission     VARCHAR2(255),
  type           NUMBER(10)
)
;
comment on table MENU
  is '系统菜单';
comment on column MENU.id
  is 'ID';
comment on column MENU.i_frame
  is '是否外链';
comment on column MENU.name
  is '菜单名称';
comment on column MENU.component
  is '组件';
comment on column MENU.pid
  is '上级菜单ID';
comment on column MENU.sort
  is '排序';
comment on column MENU.icon
  is '图标';
comment on column MENU.path
  is '链接地址';
comment on column MENU.cache
  is '缓存';
comment on column MENU.hidden
  is '隐藏';
comment on column MENU.component_name
  is '组件名称';
comment on column MENU.create_time
  is '创建日期';
comment on column MENU.permission
  is '权限';
comment on column MENU.type
  is '类型';
alter table MENU
  add constraint MENU_PK primary key (ID);

prompt
prompt Creating table MNT_APP
prompt ======================
prompt
create table MNT_APP
(
  id            VARCHAR2(32) not null,
  name          VARCHAR2(255),
  upload_path   VARCHAR2(255),
  deploy_path   VARCHAR2(255),
  backup_path   VARCHAR2(255),
  port          NUMBER(10),
  start_script  VARCHAR2(4000),
  deploy_script VARCHAR2(4000),
  create_time   DATE
)
;
comment on table MNT_APP
  is '应用管理';
comment on column MNT_APP.id
  is '应用ID';
comment on column MNT_APP.name
  is '应用名称';
comment on column MNT_APP.upload_path
  is '上传目录';
comment on column MNT_APP.deploy_path
  is '部署路径';
comment on column MNT_APP.backup_path
  is '备份路径';
comment on column MNT_APP.port
  is '应用端口';
comment on column MNT_APP.start_script
  is '启动脚本';
comment on column MNT_APP.deploy_script
  is '部署脚本';
comment on column MNT_APP.create_time
  is '创建日期';
alter table MNT_APP
  add constraint MNT_APP_PK primary key (ID);

prompt
prompt Creating table MNT_DATABASE
prompt ===========================
prompt
create table MNT_DATABASE
(
  id          VARCHAR2(255) not null,
  name        VARCHAR2(255) not null,
  jdbc_url    VARCHAR2(255) not null,
  user_name   VARCHAR2(255) not null,
  pwd         VARCHAR2(255) not null,
  create_time DATE
)
;
comment on table MNT_DATABASE
  is '数据库管理';
comment on column MNT_DATABASE.id
  is '编号';
comment on column MNT_DATABASE.name
  is '名称';
comment on column MNT_DATABASE.jdbc_url
  is 'jdbc连接';
comment on column MNT_DATABASE.user_name
  is '账号';
comment on column MNT_DATABASE.pwd
  is '密码';
alter table MNT_DATABASE
  add constraint MNT_DATABASE_PK primary key (ID);

prompt
prompt Creating table MNT_DEPLOY
prompt =========================
prompt
create table MNT_DEPLOY
(
  id          VARCHAR2(32) not null,
  app_id      VARCHAR2(32),
  create_time DATE
)
;
comment on table MNT_DEPLOY
  is '部署管理';
comment on column MNT_DEPLOY.id
  is '编号';
comment on column MNT_DEPLOY.app_id
  is '应用编号';
alter table MNT_DEPLOY
  add constraint MNT_DEPLOY_PK primary key (ID);

prompt
prompt Creating table MNT_DEPLOY_HISTORY
prompt =================================
prompt
create table MNT_DEPLOY_HISTORY
(
  id          VARCHAR2(50) not null,
  app_name    VARCHAR2(255) not null,
  deploy_date DATE not null,
  deploy_user VARCHAR2(50) not null,
  ip          VARCHAR2(20) not null,
  deploy_id   VARCHAR2(32)
)
;
comment on table MNT_DEPLOY_HISTORY
  is '部署历史管理';
comment on column MNT_DEPLOY_HISTORY.id
  is '编号';
comment on column MNT_DEPLOY_HISTORY.app_name
  is '应用名称';
comment on column MNT_DEPLOY_HISTORY.deploy_date
  is '部署日期';
comment on column MNT_DEPLOY_HISTORY.deploy_user
  is '部署用户';
comment on column MNT_DEPLOY_HISTORY.ip
  is '服务器IP';
comment on column MNT_DEPLOY_HISTORY.deploy_id
  is '部署编号';
alter table MNT_DEPLOY_HISTORY
  add constraint MNT_DEPLOY_HISTORY_PK primary key (ID);

prompt
prompt Creating table MNT_DEPLOY_SERVER
prompt ================================
prompt
create table MNT_DEPLOY_SERVER
(
  deploy_id VARCHAR2(32) not null,
  server_id VARCHAR2(32) not null
)
;
comment on table MNT_DEPLOY_SERVER
  is '应用与服务器关联';
alter table MNT_DEPLOY_SERVER
  add constraint MNT_DEPLOY_SERVER_PK primary key (DEPLOY_ID, SERVER_ID);

prompt
prompt Creating table MNT_SERVER
prompt =========================
prompt
create table MNT_SERVER
(
  id          VARCHAR2(32) not null,
  account     VARCHAR2(255),
  ip          VARCHAR2(255),
  name        VARCHAR2(255),
  password    VARCHAR2(255),
  port        NUMBER(10),
  create_time DATE
)
;
comment on table MNT_SERVER
  is '服务器管理';
comment on column MNT_SERVER.id
  is 'IP地址';
comment on column MNT_SERVER.account
  is '账号';
comment on column MNT_SERVER.ip
  is 'IP地址';
comment on column MNT_SERVER.name
  is '名称';
comment on column MNT_SERVER.password
  is '密码';
comment on column MNT_SERVER.port
  is '端口';
alter table MNT_SERVER
  add constraint MNT_SERVER_PK primary key (ID);

prompt
prompt Creating table MONITOR_SERVER
prompt =============================
prompt
create table MONITOR_SERVER
(
  id         VARCHAR2(32) not null,
  cpu_core   NUMBER(10),
  cpu_rate   FLOAT,
  disk_total FLOAT,
  disk_used  FLOAT,
  mem_total  FLOAT,
  mem_used   FLOAT,
  name       VARCHAR2(255),
  port       NUMBER(10),
  sort       NUMBER(10),
  state      VARCHAR2(255),
  swap_total FLOAT,
  swap_used  FLOAT,
  address    VARCHAR2(255) not null
)
;
comment on table MONITOR_SERVER
  is '服务监控';
comment on column MONITOR_SERVER.cpu_core
  is 'CPU内核数';
comment on column MONITOR_SERVER.cpu_rate
  is 'CPU使用率';
comment on column MONITOR_SERVER.disk_total
  is '磁盘总量';
comment on column MONITOR_SERVER.disk_used
  is '磁盘使用量';
comment on column MONITOR_SERVER.mem_total
  is '内存总数';
comment on column MONITOR_SERVER.mem_used
  is '内存使用量';
comment on column MONITOR_SERVER.name
  is '名称';
comment on column MONITOR_SERVER.port
  is '访问端口';
comment on column MONITOR_SERVER.sort
  is '排序';
comment on column MONITOR_SERVER.state
  is '状态';
comment on column MONITOR_SERVER.swap_total
  is '交换区总量';
comment on column MONITOR_SERVER.swap_used
  is '交换区使用量';
comment on column MONITOR_SERVER.address
  is '服务地址';
alter table MONITOR_SERVER
  add constraint MONITOR_SERVER_PK primary key (ID);

prompt
prompt Creating table OBJECT_MENUS
prompt ===========================
prompt
create table OBJECT_MENUS
(
  object_type VARCHAR2(32),
  object_id   VARCHAR2(32),
  menu_id     VARCHAR2(32)
)
;

prompt
prompt Creating table QUARTZ_JOB
prompt =========================
prompt
create table QUARTZ_JOB
(
  id              VARCHAR2(32) not null,
  bean_name       VARCHAR2(255),
  cron_expression VARCHAR2(255),
  is_pause        CHAR(1),
  job_name        VARCHAR2(255),
  method_name     VARCHAR2(255),
  params          VARCHAR2(255),
  remark          VARCHAR2(255),
  create_time     DATE
)
;
comment on table QUARTZ_JOB
  is '定时任务';
comment on column QUARTZ_JOB.id
  is 'ID';
comment on column QUARTZ_JOB.bean_name
  is 'Spring Bean名称';
comment on column QUARTZ_JOB.cron_expression
  is 'cron 表达式';
comment on column QUARTZ_JOB.is_pause
  is '状态：1暂停、0启用';
comment on column QUARTZ_JOB.job_name
  is '任务名称';
comment on column QUARTZ_JOB.method_name
  is '方法名称';
comment on column QUARTZ_JOB.params
  is '参数';
comment on column QUARTZ_JOB.remark
  is '备注';
comment on column QUARTZ_JOB.create_time
  is '创建日期';
alter table QUARTZ_JOB
  add constraint QUARTZ_JOB_PK primary key (ID);

prompt
prompt Creating table QUARTZ_LOG
prompt =========================
prompt
create table QUARTZ_LOG
(
  id               VARCHAR2(32) not null,
  baen_name        VARCHAR2(255),
  create_time      DATE,
  cron_expression  VARCHAR2(255),
  exception_detail CLOB,
  is_success       CHAR(1),
  job_name         VARCHAR2(255),
  method_name      VARCHAR2(255),
  params           VARCHAR2(255),
  time             NUMBER(19)
)
;
comment on table QUARTZ_LOG
  is '定时任务日志';
alter table QUARTZ_LOG
  add constraint QUARTZ_LOG_PK primary key (ID);

prompt
prompt Creating table ROLE
prompt ===================
prompt
create table ROLE
(
  id          VARCHAR2(32) not null,
  name        VARCHAR2(255) not null,
  remark      VARCHAR2(255),
  data_scope  VARCHAR2(255),
  role_level  NUMBER(10),
  create_time DATE,
  permission  VARCHAR2(255)
)
;
comment on table ROLE
  is '角色表';
comment on column ROLE.id
  is 'ID';
comment on column ROLE.name
  is '名称';
comment on column ROLE.remark
  is '备注';
comment on column ROLE.data_scope
  is '数据权限';
comment on column ROLE.role_level
  is '角色级别';
comment on column ROLE.create_time
  is '创建日期';
comment on column ROLE.permission
  is '功能权限';
alter table ROLE
  add constraint ROLE_PK primary key (ID);

prompt
prompt Creating table ROLES_DEPTS
prompt ==========================
prompt
create table ROLES_DEPTS
(
  role_id VARCHAR2(32) not null,
  dept_id VARCHAR2(32) not null
)
;
comment on table ROLES_DEPTS
  is '角色部门关联';
alter table ROLES_DEPTS
  add constraint ROLES_DEPTS_PK primary key (ROLE_ID, DEPT_ID);

prompt
prompt Creating table ROLES_MENUS
prompt ==========================
prompt
create table ROLES_MENUS
(
  menu_id VARCHAR2(32) not null,
  role_id VARCHAR2(32) not null
)
;
comment on table ROLES_MENUS
  is '角色菜单关联';
comment on column ROLES_MENUS.menu_id
  is '菜单ID';
comment on column ROLES_MENUS.role_id
  is '角色ID';
alter table ROLES_MENUS
  add constraint ROLES_MENUS_PK primary key (MENU_ID, ROLE_ID);

prompt
prompt Creating table USERS_ROLES
prompt ==========================
prompt
create table USERS_ROLES
(
  user_id VARCHAR2(32) not null,
  role_id VARCHAR2(32) not null
)
;
comment on table USERS_ROLES
  is '用户角色关联';
comment on column USERS_ROLES.user_id
  is '用户ID';
comment on column USERS_ROLES.role_id
  is '角色ID';
alter table USERS_ROLES
  add constraint USERS_ROLES_PK primary key (USER_ID, ROLE_ID);

prompt
prompt Creating table USER_AVATAR
prompt ==========================
prompt
create table USER_AVATAR
(
  id          VARCHAR2(32) not null,
  real_name   VARCHAR2(255),
  path        VARCHAR2(255),
  avatar_size VARCHAR2(255),
  create_time DATE
)
;
comment on table USER_AVATAR
  is '系统用户头像';
comment on column USER_AVATAR.real_name
  is '真实文件名';
comment on column USER_AVATAR.path
  is '路径';
comment on column USER_AVATAR.avatar_size
  is '大小';
comment on column USER_AVATAR.create_time
  is '创建时间';
alter table USER_AVATAR
  add constraint USER_AVATAR_PK primary key (ID);

prompt
prompt Creating table VISITS
prompt =====================
prompt
create table VISITS
(
  id          VARCHAR2(32) not null,
  create_time DATE,
  visits_date VARCHAR2(255),
  ip_counts   NUMBER(19),
  pv_counts   NUMBER(19),
  week_day    VARCHAR2(255)
)
;
comment on table VISITS
  is '访客记录';
alter table VISITS
  add constraint VISITS_PK primary key (ID);


spool off
