SET DEFINE OFF;
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('102', '0', 'ɾ��', '97', 999, 
    '0', '0', 'deployHistory:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('103', '0', '����������', '92', 999, 
    '0', '0', 'serverDeploy:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('104', '0', '�������༭', '92', 999, 
    '0', '0', 'serverDeploy:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('105', '0', '������ɾ��', '92', 999, 
    '0', '0', 'serverDeploy:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('106', '0', 'Ӧ������', '93', 999, 
    '0', '0', 'app:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('107', '0', 'Ӧ�ñ༭', '93', 999, 
    '0', '0', 'app:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('108', '0', 'Ӧ��ɾ��', '93', 999, 
    '0', '0', 'app:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('109', '0', '��������', '94', 999, 
    '0', '0', 'deploy:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('11', '0', 'ͼ���', 'components/icons/index', '10', 
    51, 'icon', 'icon', '0', '0', 
    'Icons', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('110', '0', '����༭', '94', 999, 
    '0', '0', 'deploy:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('111', '0', '����ɾ��', '94', 999, 
    '0', '0', 'deploy:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('112', '0', '���ݿ�����', '98', 999, 
    '0', '0', 'database:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('113', '0', '���ݿ�༭', '98', 999, 
    '0', '0', 'database:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('114', '0', '���ݿ�ɾ��', '98', 999, 
    '0', '0', 'database:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('116', '0', '����Ԥ��', 'generator/preview', '36', 
    999, 'java', 'generator/preview/:tableName', '1', '1', 
    'Preview', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('14', '0', '�ʼ�����', 'tools/email/index', '36', 
    35, 'email', 'email', '0', '0', 
    'Email', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('15', '0', '���ı�', 'components/Editor', '10', 
    52, 'fw', 'tinymce', '0', '0', 
    'Editor', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('18', '0', '�洢����', 'tools/storage/local/index', '36', 
    34, 'qiniu', 'localStorage', '0', '0', 
    'localStorage', 'storage:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('2', '0', '�û�����', 'system/user/index', '1', 
    2, 'peoples', 'user', '0', '0', 
    'User', 'user:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('21', '0', '�༶�˵�', '0', 900, 
    'menu', 'nested', '0', '1', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    TYPE)
 Values
   ('22', '0', '�����˵�1', 'nested/menu1/index', '21', 
    999, 'menu', 'menu1', '0', '0', 
    1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    TYPE)
 Values
   ('23', '0', '�����˵�2', 'nested/menu2/index', '21', 
    999, 'menu', 'menu2', '0', '0', 
    1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    TYPE)
 Values
   ('24', '0', '�����˵�1', 'nested/menu1/menu1-1', '22', 
    999, 'menu', 'menu1-1', '0', '0', 
    1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    TYPE)
 Values
   ('27', '0', '�����˵�2', 'nested/menu1/menu1-2', '22', 
    999, 'menu', 'menu1-2', '0', '0', 
    1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('28', '0', '��ʱ����', 'system/timing/index', '36', 
    31, 'timing', 'timing', '0', '0', 
    'Timing', 'timing:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('3', '0', '��ɫ����', 'system/role/index', '1', 
    3, 'role', 'role', '0', '0', 
    'Role', 'roles:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('30', '0', '��������', 'generator/index', '36', 
    32, 'dev', 'generator', '1', '0', 
    'GeneratorIndex', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('32', '0', '�쳣��־', 'monitor/log/errorLog', '6', 
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
   ('34', '0', 'Yaml�༭��', 'components/YamlEdit', '10', 
    54, 'dev', 'yaml', '0', '0', 
    'YamlEdit', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('35', '0', '��������', 'system/dept/index', '1', 
    6, 'dept', 'dept', '0', '0', 
    'Dept', 'dept:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('36', '0', 'ϵͳ����', '0', 30, 
    'sys-tools', 'sys-tools', '0', '0', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('38', '0', '�ӿ��ĵ�', 'tools/swagger/index', '36', 
    36, 'swagger', 'swagger2', '0', '0', 
    'Swagger', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('39', '0', '�ֵ����', 'system/dict/index', '1', 
    8, 'dictionary', 'dict', '0', '0', 
    'Dict', 'dict:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('402809817119cd64017119eb790f0001', '0', 'ָ�����', '0', 2, 
    'chart', 'indicators', '0', '0', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817119cd64017119edeeb10004', '0', '��������', 'indicators/parameter/index', '402809817119cd64017119eb790f0001', 
    1, 'dept', 'indicators/parameter', '0', '0', 
    'parameter', 'parameter:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('4028098171345b4301713484d14900b5', '0', '����Դ����', 'indicators/datasource/index', '402809817119cd64017119eb790f0001', 
    2, 'database', 'datasource', '0', '0', 
    'DataSource', 'datasource:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134f0faef00b5', '0', '����ָ��', 'indicators/indicator/base', '402809817119cd64017119eb790f0001', 
    4, 'list', 'baseIndicator', '0', '0', 
    'baseIndicator', 'baseIndicator:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134f330ee00c2', '0', 'ά�ȹ���', 'indicators/dimension/index', '402809817119cd64017119eb790f0001', 
    3, 'dept', 'dimension', '0', '0', 
    'dimension', 'dimension:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134f48dcf00c5', '0', '����ָ��', 'indicators/indicator/index', '402809817119cd64017119eb790f0001', 
    5, 'nested', 'derive', '0', '0', 
    'derive', 'derive:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134f6d9a600ce', '0', '����ָ��', 'indicators/indicator/index', '402809817119cd64017119eb790f0001', 
    6, 'people', 'quality', '0', '0', 
    'quality', 'quality:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134f8067500d1', '0', 'ָ�겹¼', 'indicators/manual/index', '402809817119cd64017119eb790f0001', 
    8, 'edit', 'manual', '0', '0', 
    'manual', 'manual:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134f918fb00d6', '0', 'ָ���ѯ', 'indicators/indicator/index', '402809817119cd64017119eb790f0001', 
    7, 'search', 'query', '0', '0', 
    'query', 'query:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817134c8f9017134fa7dc300dd', '0', '�����ѯ', 'indicators/result/index', '402809817119cd64017119eb790f0001', 
    10, 'menu', 'result', '0', '0', 
    'result', 'result:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('4028098171729db7017172a0ccf50003', '0', '��������', 'smartbi/database', '40288681717253090171725545dc0002', 
    1, 'database', '/smartbi/database', '0', '0', 
    'SmartbiDataBase', 'database:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817172a481017172c5e6020004', '0', '����׼��', 'smartbi/dataprovider', '40288681717253090171725545dc0002', 
    2, 'source', '/smartbi/dataprovider', '0', '0', 
    'dataprovider', 'dataprovide:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('1', '0', 'ϵͳ����', '0', 1, 
    'system', 'system', '0', '0', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('10', '0', '�������', '0', 50, 
    'zujian', 'components', '0', '0', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817172a481017172c77dcd000a', '0', '����չ��', 'smartbi/analysis', '40288681717253090171725545dc0002', 
    3, 'chart', '/smartbi/analysis', '0', '0', 
    'analysis', 'analysis:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817172a481017172c8a2a90015', '0', '��Դ����', 'smartbi/publish', '40288681717253090171725545dc0002', 
    4, 'deploy', '/smartbi/publish', '0', '0', 
    'publish', 'publish:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('402809817172a4810171764d2678001d', '0', 'Ԥ���Ż�', 'smartbi/dataportal', '40288681717253090171725545dc0002', 
    5, 'web', '/smartbi/dataportal', '0', '0', 
    'SmartbiDataPort', 'dataportal:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('40288681717253090171725545dc0002', '0', '��������', '0', 4, 
    'database', 'smartbi', '0', '0', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('41', '0', '�����û�', 'monitor/online/index', '6', 
    10, 'Steve-Jobs', 'online', '0', '0', 
    'OnlineUser', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('44', '0', '�û�����', '2', 2, 
    '0', '0', 'user:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('45', '0', '�û��༭', '2', 3, 
    '0', '0', 'user:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('46', '0', '�û�ɾ��', '2', 4, 
    '0', '0', 'user:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('48', '0', '��ɫ����', '3', 2, 
    '0', '0', 'roles:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('49', '0', '��ɫ�޸�', '3', 3, 
    '0', '0', 'roles:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('5', '0', '�˵�����', 'system/menu/index', '1', 
    5, 'menu', 'menu', '0', '0', 
    'Menu', 'menu:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('50', '0', '��ɫɾ��', '3', 4, 
    '0', '0', 'roles:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('52', '0', '�˵�����', '5', 2, 
    '0', '0', 'menu:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('53', '0', '�˵��༭', '5', 3, 
    '0', '0', 'menu:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('54', '0', '�˵�ɾ��', '5', 4, 
    '0', '0', 'menu:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('56', '0', '��������', '35', 2, 
    '0', '0', 'dept:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('57', '0', '���ű༭', '35', 3, 
    '0', '0', 'dept:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('58', '0', '����ɾ��', '35', 4, 
    '0', '0', 'dept:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, TYPE)
 Values
   ('6', '0', 'ϵͳ���', '0', 10, 
    'monitor', 'monitor', '0', '0', 0);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('64', '0', '�ֵ�����', '39', 2, 
    '0', '0', 'dict:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('65', '0', '�ֵ�༭', '39', 3, 
    '0', '0', 'dict:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('66', '0', '�ֵ�ɾ��', '39', 4, 
    '0', '0', 'dict:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('7', '0', '������־', 'monitor/log/index', '6', 
    11, 'log', 'logs', '0', '0', 
    'Log', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('73', '0', '��������', '28', 2, 
    '0', '0', 'timing:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('74', '0', '����༭', '28', 3, 
    '0', '0', 'timing:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('75', '0', '����ɾ��', '28', 4, 
    '0', '0', 'timing:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('77', '0', '�ϴ��ļ�', '18', 2, 
    '0', '0', 'storage:add', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('78', '0', '�ļ��༭', '18', 3, 
    '0', '0', 'storage:edit', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    CACHE, HIDDEN, PERMISSION, TYPE)
 Values
   ('79', '0', '�ļ�ɾ��', '18', 4, 
    '0', '0', 'storage:del', 2);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('80', '0', '������', 'monitor/server/index', '6', 
    14, 'codeConsole', 'server', '0', '0', 
    'ServerMonitor', 'server:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('82', '0', '��������', 'generator/config', '36', 
    33, 'dev', 'generator/config/:tableName', '1', '1', 
    'GeneratorConfig', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('83', '0', 'ͼ���', 'components/Echarts', '10', 
    50, 'chart', 'echarts', '1', '0', 
    'Echarts', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('8b81e48170c86fc60170c889d3d90009', '0', 'Ȩ�޹���', 'system/authMgt/index', '1', 
    999, 'app', 'authMgt', '0', '0', 
    'authMgt', 'menus', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, TYPE)
 Values
   ('9', '0', 'SQL���', 'monitor/sql/index', '6', 
    18, 'sqlMonitor', 'druid', '0', '0', 
    'Sql', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, PID, SORT, 
    ICON, PATH, CACHE, HIDDEN, COMPONENT_NAME, 
    TYPE)
 Values
   ('90', '0', '��ά����', '0', 20, 
    'mnt', 'mnt', '0', '0', 'Mnt', 
    1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('92', '0', '������', 'mnt/server/index', '90', 
    22, 'server', 'mnt/serverDeploy', '0', '0', 
    'ServerDeploy', 'serverDeploy:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('93', '0', 'Ӧ�ù���', 'mnt/app/index', '90', 
    23, 'app', 'mnt/app', '0', '0', 
    'App', 'app:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('94', '0', '�������', 'mnt/deploy/index', '90', 
    24, 'deploy', 'mnt/deploy', '0', '0', 
    'Deploy', 'deploy:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('97', '0', '���𱸷�', 'mnt/deployHistory/index', '90', 
    25, 'backup', 'mnt/deployHistory', '0', '0', 
    'DeployHistory', 'deployHistory:list', 1);
Insert into SYS_MENU
   (ID, I_FRAME, NAME, COMPONENT, PID, 
    SORT, ICON, PATH, CACHE, HIDDEN, 
    COMPONENT_NAME, PERMISSION, TYPE)
 Values
   ('98', '0', '���ݿ����', 'mnt/database/index', '90', 
    26, 'database', 'mnt/database', '0', '0', 
    'Database', 'database:list', 1);
COMMIT;
