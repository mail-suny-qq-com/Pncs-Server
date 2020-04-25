SET DEFINE OFF;
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('102', '0', '删除', '97', 999, 
    '0', '0', 'deployHistory:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('103', '0', '服务器新增', '92', 999, 
    '0', '0', 'serverDeploy:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('104', '0', '服务器编辑', '92', 999, 
    '0', '0', 'serverDeploy:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('105', '0', '服务器删除', '92', 999, 
    '0', '0', 'serverDeploy:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('106', '0', '应用新增', '93', 999, 
    '0', '0', 'app:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('107', '0', '应用编辑', '93', 999, 
    '0', '0', 'app:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('108', '0', '应用删除', '93', 999, 
    '0', '0', 'app:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('109', '0', '部署新增', '94', 999, 
    '0', '0', 'deploy:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('11', '0', '图标库', 'components/icons/index', '10', 
    51, 'icon', 'icon', '0', '0', 
    'Icons', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('110', '0', '部署编辑', '94', 999, 
    '0', '0', 'deploy:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('111', '0', '部署删除', '94', 999, 
    '0', '0', 'deploy:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('112', '0', '数据库新增', '98', 999, 
    '0', '0', 'database:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('113', '0', '数据库编辑', '98', 999, 
    '0', '0', 'database:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('114', '0', '数据库删除', '98', 999, 
    '0', '0', 'database:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('116', '0', '生成预览', 'generator/preview', '36', 
    999, 'java', 'generator/preview/:tableName', '1', '1', 
    'Preview', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('14', '0', '邮件工具', 'tools/email/index', '36', 
    35, 'email', 'email', '0', '0', 
    'Email', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('15', '0', '富文本', 'components/Editor', '10', 
    52, 'fw', 'tinymce', '0', '0', 
    'Editor', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('18', '0', '存储管理', 'tools/storage/local/index', '36', 
    34, 'qiniu', 'localStorage', '0', '0', 
    'localStorage', 'storage:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('2', '0', '用户管理', 'system/user/index', '1', 
    2, 'peoples', 'user', '0', '0', 
    'User', 'user:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('21', '0', '多级菜单', '0', 900, 
    'menu', 'nested', '0', '1', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    TYPE)
 Values
   ('22', '0', '二级菜单1', 'nested/menu1/index', '21', 
    999, 'menu', 'menu1', '0', '0', 
    1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    TYPE)
 Values
   ('23', '0', '二级菜单2', 'nested/menu2/index', '21', 
    999, 'menu', 'menu2', '0', '0', 
    1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    TYPE)
 Values
   ('24', '0', '三级菜单1', 'nested/menu1/menu1-1', '22', 
    999, 'menu', 'menu1-1', '0', '0', 
    1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    TYPE)
 Values
   ('27', '0', '三级菜单2', 'nested/menu1/menu1-2', '22', 
    999, 'menu', 'menu1-2', '0', '0', 
    1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('28', '0', '定时任务', 'system/timing/index', '36', 
    31, 'timing', 'timing', '0', '0', 
    'Timing', 'timing:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('3', '0', '角色管理', 'system/role/index', '1', 
    3, 'role', 'role', '0', '0', 
    'Role', 'roles:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('30', '0', '代码生成', 'generator/index', '36', 
    32, 'dev', 'generator', '1', '0', 
    'GeneratorIndex', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('32', '0', '异常日志', 'monitor/log/errorLog', '6', 
    12, 'error', 'errorLog', '0', '0', 
    'ErrorLog', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('33', '0', 'Markdown', 'components/MarkDown', '10', 
    53, 'markdown', 'markdown', '0', '0', 
    'Markdown', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('34', '0', 'Yaml编辑器', 'components/YamlEdit', '10', 
    54, 'dev', 'yaml', '0', '0', 
    'YamlEdit', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('35', '0', '机构管理', 'system/dept/index', '1', 
    6, 'dept', 'dept', '0', '0', 
    'Dept', 'dept:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('36', '0', '系统工具', '0', 30, 
    'sys-tools', 'sys-tools', '0', '0', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('38', '0', '接口文档', 'tools/swagger/index', '36', 
    36, 'swagger', 'swagger2', '0', '0', 
    'Swagger', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('39', '0', '字典管理', 'system/dict/index', '1', 
    8, 'dictionary', 'dict', '0', '0', 
    'Dict', 'dict:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('402809817119cd64017119eb790f0001', '0', '指标管理', '0', 2, 
    'chart', 'indicators', '0', '0', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817119cd64017119edeeb10004', '0', '参数管理', 'indicators/parameter/index', '402809817119cd64017119eb790f0001', 
    1, 'dept', 'indicators/parameter', '0', '0', 
    'parameter', 'parameter:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('4028098171345b4301713484d14900b5', '0', '数据源管理', 'indicators/datasource/index', '402809817119cd64017119eb790f0001', 
    2, 'database', 'datasource', '0', '0', 
    'DataSource', 'datasource:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134f0faef00b5', '0', '基础指标', 'indicators/indicator/base', '402809817119cd64017119eb790f0001', 
    4, 'list', 'baseIndicator', '0', '0', 
    'baseIndicator', 'baseIndicator:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134f330ee00c2', '0', '维度管理', 'indicators/dimension/index', '402809817119cd64017119eb790f0001', 
    3, 'dept', 'dimension', '0', '0', 
    'dimension', 'dimension:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134f48dcf00c5', '0', '衍生指标', 'indicators/indicator/index', '402809817119cd64017119eb790f0001', 
    5, 'nested', 'derive', '0', '0', 
    'derive', 'derive:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134f6d9a600ce', '0', '定性指标', 'indicators/indicator/index', '402809817119cd64017119eb790f0001', 
    6, 'people', 'quality', '0', '0', 
    'quality', 'quality:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134f8067500d1', '0', '指标补录', 'indicators/manual/index', '402809817119cd64017119eb790f0001', 
    8, 'edit', 'manual', '0', '0', 
    'manual', 'manual:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134f918fb00d6', '0', '指标查询', 'indicators/indicator/index', '402809817119cd64017119eb790f0001', 
    7, 'search', 'query', '0', '0', 
    'query', 'query:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134fa7dc300dd', '0', '结果查询', 'indicators/result/index', '402809817119cd64017119eb790f0001', 
    10, 'menu', 'result', '0', '0', 
    'result', 'result:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('4028098171729db7017172a0ccf50003', '0', '数据连接', 'smartbi/database', '40288681717253090171725545dc0002', 
    1, 'database', '/smartbi/database', '0', '0', 
    'SmartbiDataBase', 'database:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817172a481017172c5e6020004', '0', '数据准备', 'smartbi/dataprovider', '40288681717253090171725545dc0002', 
    2, 'source', '/smartbi/dataprovider', '0', '0', 
    'dataprovider', 'dataprovide:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('1', '0', '系统管理', '0', 1, 
    'system', 'system', '0', '0', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('10', '0', '组件管理', '0', 50, 
    'zujian', 'components', '0', '0', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817172a481017172c77dcd000a', '0', '分析展现', 'smartbi/analysis', '40288681717253090171725545dc0002', 
    3, 'chart', '/smartbi/analysis', '0', '0', 
    'analysis', 'analysis:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817172a481017172c8a2a90015', '0', '资源发布', 'smartbi/publish', '40288681717253090171725545dc0002', 
    4, 'deploy', '/smartbi/publish', '0', '0', 
    'publish', 'publish:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817172a4810171764d2678001d', '0', '预览门户', 'smartbi/dataportal', '40288681717253090171725545dc0002', 
    5, 'web', '/smartbi/dataportal', '0', '0', 
    'SmartbiDataPort', 'dataportal:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('40288681717253090171725545dc0002', '0', '自助分析', '0', 4, 
    'database', 'smartbi', '0', '0', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('41', '0', '在线用户', 'monitor/online/index', '6', 
    10, 'Steve-Jobs', 'online', '0', '0', 
    'OnlineUser', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('44', '0', '用户新增', '2', 2, 
    '0', '0', 'user:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('45', '0', '用户编辑', '2', 3, 
    '0', '0', 'user:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('46', '0', '用户删除', '2', 4, 
    '0', '0', 'user:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('48', '0', '角色创建', '3', 2, 
    '0', '0', 'roles:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('49', '0', '角色修改', '3', 3, 
    '0', '0', 'roles:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('5', '0', '菜单管理', 'system/menu/index', '1', 
    5, 'menu', 'menu', '0', '0', 
    'Menu', 'menu:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('50', '0', '角色删除', '3', 4, 
    '0', '0', 'roles:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('52', '0', '菜单新增', '5', 2, 
    '0', '0', 'menu:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('53', '0', '菜单编辑', '5', 3, 
    '0', '0', 'menu:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('54', '0', '菜单删除', '5', 4, 
    '0', '0', 'menu:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('56', '0', '部门新增', '35', 2, 
    '0', '0', 'dept:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('57', '0', '部门编辑', '35', 3, 
    '0', '0', 'dept:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('58', '0', '部门删除', '35', 4, 
    '0', '0', 'dept:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('6', '0', '系统监控', '0', 10, 
    'monitor', 'monitor', '0', '0', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('64', '0', '字典新增', '39', 2, 
    '0', '0', 'dict:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('65', '0', '字典编辑', '39', 3, 
    '0', '0', 'dict:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('66', '0', '字典删除', '39', 4, 
    '0', '0', 'dict:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('7', '0', '操作日志', 'monitor/log/index', '6', 
    11, 'log', 'logs', '0', '0', 
    'Log', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('73', '0', '任务新增', '28', 2, 
    '0', '0', 'timing:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('74', '0', '任务编辑', '28', 3, 
    '0', '0', 'timing:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('75', '0', '任务删除', '28', 4, 
    '0', '0', 'timing:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('77', '0', '上传文件', '18', 2, 
    '0', '0', 'storage:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('78', '0', '文件编辑', '18', 3, 
    '0', '0', 'storage:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('79', '0', '文件删除', '18', 4, 
    '0', '0', 'storage:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('80', '0', '服务监控', 'monitor/server/index', '6', 
    14, 'codeConsole', 'server', '0', '0', 
    'ServerMonitor', 'server:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('82', '0', '生成配置', 'generator/config', '36', 
    33, 'dev', 'generator/config/:tableName', '1', '1', 
    'GeneratorConfig', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('83', '0', '图表库', 'components/Echarts', '10', 
    50, 'chart', 'echarts', '1', '0', 
    'Echarts', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('8b81e48170c86fc60170c889d3d90009', '0', '权限管理', 'system/authMgt/index', '1', 
    999, 'app', 'authMgt', '0', '0', 
    'authMgt', 'menus', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('9', '0', 'SQL监控', 'monitor/sql/index', '6', 
    18, 'sqlMonitor', 'druid', '0', '0', 
    'Sql', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, COMPONENT_NAME, 
    TYPE)
 Values
   ('90', '0', '运维管理', '0', 20, 
    'mnt', 'mnt', '0', '0', 'Mnt', 
    1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('92', '0', '服务器', 'mnt/server/index', '90', 
    22, 'server', 'mnt/serverDeploy', '0', '0', 
    'ServerDeploy', 'serverDeploy:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('93', '0', '应用管理', 'mnt/app/index', '90', 
    23, 'app', 'mnt/app', '0', '0', 
    'App', 'app:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('94', '0', '部署管理', 'mnt/deploy/index', '90', 
    24, 'deploy', 'mnt/deploy', '0', '0', 
    'Deploy', 'deploy:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('97', '0', '部署备份', 'mnt/deployHistory/index', '90', 
    25, 'backup', 'mnt/deployHistory', '0', '0', 
    'DeployHistory', 'deployHistory:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('98', '0', '数据库管理', 'mnt/database/index', '90', 
    26, 'database', 'mnt/database', '0', '0', 
    'Database', 'database:list', 1);
COMMIT;
