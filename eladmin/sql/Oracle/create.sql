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
  is '���������ֶ���Ϣ�洢';
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
  is '����';
comment on column DEPT.id
  is 'ID';
comment on column DEPT.name
  is '����';
comment on column DEPT.pid
  is '�ϼ�����';
comment on column DEPT.enabled
  is '״̬';
comment on column DEPT.create_time
  is '��������';
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
  is '�����ֵ�';
comment on column DICT.name
  is '�ֵ�����';
comment on column DICT.remark
  is '����';
comment on column DICT.create_time
  is '��������';
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
  is '�����ֵ�����';
comment on column DICT_DETAIL.label
  is '�ֵ��ǩ';
comment on column DICT_DETAIL.value
  is '�ֵ�ֵ';
comment on column DICT_DETAIL.sort
  is '����';
comment on column DICT_DETAIL.dict_id
  is '�ֵ�id';
comment on column DICT_DETAIL.create_time
  is '��������';
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
  is 'ϵͳ�û�';
comment on column EL_USER.id
  is 'ID';
comment on column EL_USER.avatar
  is 'ͷ��';
comment on column EL_USER.email
  is '����';
comment on column EL_USER.enabled
  is '״̬��1���á�0����';
comment on column EL_USER.password
  is '����';
comment on column EL_USER.username
  is '�û���';
comment on column EL_USER.dept_id
  is '��������';
comment on column EL_USER.phone
  is '�ֻ�����';
comment on column EL_USER.job_id
  is '��λ����';
comment on column EL_USER.create_time
  is '��������';
comment on column EL_USER.last_password_reset_time
  is '����޸����������';
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
  is '��������';
comment on column EMAIL_CONFIG.id
  is 'ID';
comment on column EMAIL_CONFIG.from_user
  is '�ռ���';
comment on column EMAIL_CONFIG.host
  is '�ʼ�������SMTP��ַ';
comment on column EMAIL_CONFIG.pass
  is '����';
comment on column EMAIL_CONFIG.port
  is '�˿�';
comment on column EMAIL_CONFIG.user_name
  is '�������û���';
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
  is '��������������';
comment on column GEN_CONFIG.id
  is 'ID';
comment on column GEN_CONFIG.table_name
  is '����';
comment on column GEN_CONFIG.author
  is '����';
comment on column GEN_CONFIG.cover
  is '�Ƿ񸲸�';
comment on column GEN_CONFIG.module_name
  is 'ģ������';
comment on column GEN_CONFIG.pack
  is '�����ĸ�����';
comment on column GEN_CONFIG.path
  is 'ǰ�˴������ɵ�·��';
comment on column GEN_CONFIG.api_path
  is 'ǰ��Api�ļ�·��';
comment on column GEN_CONFIG.prefix
  is '��ǰ׺';
comment on column GEN_CONFIG.api_alias
  is '�ӿ�����';
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
  is '������';
comment on column GEN_TEST_MYBATIS.org_name
  is '��������';
comment on column GEN_TEST_MYBATIS.org_level
  is '��������';
comment on column GEN_TEST_MYBATIS.org_type
  is '��������';
comment on column GEN_TEST_MYBATIS.org_total
  is '����ܶ�';
comment on column GEN_TEST_MYBATIS.create_date
  is '��������';
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
  is '���ش洢';
comment on column LOCAL_STORAGE.real_name
  is '�ļ���ʵ������';
comment on column LOCAL_STORAGE.name
  is '�ļ���';
comment on column LOCAL_STORAGE.suffix
  is '��׺';
comment on column LOCAL_STORAGE.path
  is '·��';
comment on column LOCAL_STORAGE.type
  is '����';
comment on column LOCAL_STORAGE.file_size
  is '��С';
comment on column LOCAL_STORAGE.operate
  is '������';
comment on column LOCAL_STORAGE.create_time
  is '��������';
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
  is 'ϵͳ��־';
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
  is 'ϵͳ�˵�';
comment on column MENU.id
  is 'ID';
comment on column MENU.i_frame
  is '�Ƿ�����';
comment on column MENU.name
  is '�˵�����';
comment on column MENU.component
  is '���';
comment on column MENU.pid
  is '�ϼ��˵�ID';
comment on column MENU.sort
  is '����';
comment on column MENU.icon
  is 'ͼ��';
comment on column MENU.path
  is '���ӵ�ַ';
comment on column MENU.cache
  is '����';
comment on column MENU.hidden
  is '����';
comment on column MENU.component_name
  is '�������';
comment on column MENU.create_time
  is '��������';
comment on column MENU.permission
  is 'Ȩ��';
comment on column MENU.type
  is '����';
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
  is 'Ӧ�ù���';
comment on column MNT_APP.id
  is 'Ӧ��ID';
comment on column MNT_APP.name
  is 'Ӧ������';
comment on column MNT_APP.upload_path
  is '�ϴ�Ŀ¼';
comment on column MNT_APP.deploy_path
  is '����·��';
comment on column MNT_APP.backup_path
  is '����·��';
comment on column MNT_APP.port
  is 'Ӧ�ö˿�';
comment on column MNT_APP.start_script
  is '�����ű�';
comment on column MNT_APP.deploy_script
  is '����ű�';
comment on column MNT_APP.create_time
  is '��������';
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
  is '���ݿ����';
comment on column MNT_DATABASE.id
  is '���';
comment on column MNT_DATABASE.name
  is '����';
comment on column MNT_DATABASE.jdbc_url
  is 'jdbc����';
comment on column MNT_DATABASE.user_name
  is '�˺�';
comment on column MNT_DATABASE.pwd
  is '����';
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
  is '�������';
comment on column MNT_DEPLOY.id
  is '���';
comment on column MNT_DEPLOY.app_id
  is 'Ӧ�ñ��';
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
  is '������ʷ����';
comment on column MNT_DEPLOY_HISTORY.id
  is '���';
comment on column MNT_DEPLOY_HISTORY.app_name
  is 'Ӧ������';
comment on column MNT_DEPLOY_HISTORY.deploy_date
  is '��������';
comment on column MNT_DEPLOY_HISTORY.deploy_user
  is '�����û�';
comment on column MNT_DEPLOY_HISTORY.ip
  is '������IP';
comment on column MNT_DEPLOY_HISTORY.deploy_id
  is '������';
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
  is 'Ӧ�������������';
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
  is '����������';
comment on column MNT_SERVER.id
  is 'IP��ַ';
comment on column MNT_SERVER.account
  is '�˺�';
comment on column MNT_SERVER.ip
  is 'IP��ַ';
comment on column MNT_SERVER.name
  is '����';
comment on column MNT_SERVER.password
  is '����';
comment on column MNT_SERVER.port
  is '�˿�';
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
  is '������';
comment on column MONITOR_SERVER.cpu_core
  is 'CPU�ں���';
comment on column MONITOR_SERVER.cpu_rate
  is 'CPUʹ����';
comment on column MONITOR_SERVER.disk_total
  is '��������';
comment on column MONITOR_SERVER.disk_used
  is '����ʹ����';
comment on column MONITOR_SERVER.mem_total
  is '�ڴ�����';
comment on column MONITOR_SERVER.mem_used
  is '�ڴ�ʹ����';
comment on column MONITOR_SERVER.name
  is '����';
comment on column MONITOR_SERVER.port
  is '���ʶ˿�';
comment on column MONITOR_SERVER.sort
  is '����';
comment on column MONITOR_SERVER.state
  is '״̬';
comment on column MONITOR_SERVER.swap_total
  is '����������';
comment on column MONITOR_SERVER.swap_used
  is '������ʹ����';
comment on column MONITOR_SERVER.address
  is '�����ַ';
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
  is '��ʱ����';
comment on column QUARTZ_JOB.id
  is 'ID';
comment on column QUARTZ_JOB.bean_name
  is 'Spring Bean����';
comment on column QUARTZ_JOB.cron_expression
  is 'cron ���ʽ';
comment on column QUARTZ_JOB.is_pause
  is '״̬��1��ͣ��0����';
comment on column QUARTZ_JOB.job_name
  is '��������';
comment on column QUARTZ_JOB.method_name
  is '��������';
comment on column QUARTZ_JOB.params
  is '����';
comment on column QUARTZ_JOB.remark
  is '��ע';
comment on column QUARTZ_JOB.create_time
  is '��������';
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
  is '��ʱ������־';
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
  is '��ɫ��';
comment on column ROLE.id
  is 'ID';
comment on column ROLE.name
  is '����';
comment on column ROLE.remark
  is '��ע';
comment on column ROLE.data_scope
  is '����Ȩ��';
comment on column ROLE.role_level
  is '��ɫ����';
comment on column ROLE.create_time
  is '��������';
comment on column ROLE.permission
  is '����Ȩ��';
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
  is '��ɫ���Ź���';
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
  is '��ɫ�˵�����';
comment on column ROLES_MENUS.menu_id
  is '�˵�ID';
comment on column ROLES_MENUS.role_id
  is '��ɫID';
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
  is '�û���ɫ����';
comment on column USERS_ROLES.user_id
  is '�û�ID';
comment on column USERS_ROLES.role_id
  is '��ɫID';
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
  is 'ϵͳ�û�ͷ��';
comment on column USER_AVATAR.real_name
  is '��ʵ�ļ���';
comment on column USER_AVATAR.path
  is '·��';
comment on column USER_AVATAR.avatar_size
  is '��С';
comment on column USER_AVATAR.create_time
  is '����ʱ��';
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
  is '�ÿͼ�¼';
alter table VISITS
  add constraint VISITS_PK primary key (ID);


spool off
