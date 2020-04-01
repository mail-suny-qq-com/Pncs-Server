-- 建表脚本-Mysql
-- 数据源表
CREATE TABLE IND_DATASOURCE(
ID  VARCHAR(32) NOT NULL  COMMENT '数据源ID',
DATASOURCE_NAME  VARCHAR(50) COMMENT '数据源名称',
DATASOURCE_TYPE  VARCHAR(32) COMMENT '数据库类型',
DATASOURCE_SCHEMA  VARCHAR(50) COMMENT '数据库SCHEMA',
DATASOURCE_DRIVER  VARCHAR(100) COMMENT '数据库驱动',
DATASOURCE_URL  VARCHAR(200) COMMENT '连接URL',
DATASOURCE_USER  VARCHAR(50) COMMENT '用户名',
DATASOURCE_PASSWORD  VARCHAR(100) COMMENT '密码',
DATASOURCE_DESC  VARCHAR(100) COMMENT '描述',
CRT_USER_CODE  VARCHAR(32) COMMENT '创建用户',
CRT_ORG_CODE  VARCHAR(32) COMMENT '创建机构',
CRT_DATE  TIMESTAMP COMMENT '创建时间',
UPD_USER_CODE  VARCHAR(32) COMMENT '修改用户',
UPD_ORG_CODE  VARCHAR(32) COMMENT '修改机构',
UPD_DATE  TIMESTAMP COMMENT '修改时间',
 PRIMARY KEY (ID)
)
 COMMENT = '应用层-数据源表';

-- 指标分类表
CREATE TABLE IND_CATEGORY(
ID  VARCHAR(32) NOT NULL  COMMENT '分类ID',
CATEGORY_TYPE  VARCHAR(5) COMMENT '分类模块',
CATEGORY_NAME  VARCHAR(100) COMMENT '分类名称',
CATEGORY_DESC  VARCHAR(255) COMMENT '分类描述',
PARENT_ID  VARCHAR(32) COMMENT '父节点',
CRT_USER_CODE  VARCHAR(32) COMMENT '创建人',
CRT_ORG_CODE  VARCHAR(32) COMMENT '创建机构',
CRT_DATE  TIMESTAMP COMMENT '创建日期',
UPD_USER_CODE  VARCHAR(32) COMMENT '修改人',
UPD_ORG_CODE  VARCHAR(32) COMMENT '修改机构',
UPD_DATE  TIMESTAMP COMMENT '修改日期',
LEGAL_ORG  VARCHAR(32) COMMENT '法人行社号',
 PRIMARY KEY (ID)
)
 COMMENT = '应用层-指标分类表';

-- 指标参数表
CREATE TABLE IND_PARAMETER(
ID  VARCHAR(32) NOT NULL  COMMENT '参数ID',
CATEGORY_ID  VARCHAR(32) COMMENT '参数类型',
PARM_CODE  VARCHAR(32) COMMENT '参数编号',
PARM_NAME  VARCHAR(256) COMMENT '参数名称',
PARM_TYPE  VARCHAR(20) COMMENT '参数值类型',
PARM_VALUE  VARCHAR(256) COMMENT '参数值',
PARM_DESC  VARCHAR(512) COMMENT '参数描述',
STATUS  VARCHAR(5) COMMENT '状态(1-启用，0-停用)',
CRT_USER_CODE  VARCHAR(32) COMMENT '创建人',
CRT_ORG_CODE  VARCHAR(32) COMMENT '创建机构',
CRT_DATE  TIMESTAMP COMMENT '创建日期',
UPD_USER_CODE  VARCHAR(32) COMMENT '修改人',
UPD_ORG_CODE  VARCHAR(32) COMMENT '修改机构',
UPD_DATE  TIMESTAMP COMMENT '修改日期',
 PRIMARY KEY (ID)
)
 COMMENT = '应用层-指标参数表';

-- 维度定义表
CREATE TABLE IND_DIMENSION(
ID  VARCHAR(32) NOT NULL  COMMENT '维度ID',
DIM_CODE  VARCHAR(32) COMMENT '维度编号',
DATASOURCE_ID  VARCHAR(32) COMMENT '数据源ID(预留)',
DIM_NAME  VARCHAR(5) COMMENT '维度名称',
TABLE_NAME  VARCHAR(100) COMMENT '维表表名称',
NAME_COLUMN  VARCHAR(512) COMMENT '维度显示字段(可多字段逗号隔开)',
NAME_COLUMN_DESC  VARCHAR(512) COMMENT '维度显示字段描述(可多字段逗号隔开)',
CODE_COLUMN  VARCHAR(32) COMMENT '代码字段(用户管理指标对象)',
CODE_COLUMN_DESC  VARCHAR(32) COMMENT '代码字段描述',
PID  VARCHAR(32) COMMENT '父ID(预留)',
LEVEL  VARCHAR(5) COMMENT '级别(预留)',
ALIAS  VARCHAR(32) COMMENT '别名',
PK_FLAG  VARCHAR(5) COMMENT '主键标志',
CRT_USER_CODE  VARCHAR(32) COMMENT '创建人',
CRT_ORG_CODE  VARCHAR(32) COMMENT '创建机构',
CRT_DATE  TIMESTAMP COMMENT '创建日期',
UPD_USER_CODE  VARCHAR(32) COMMENT '修改人',
UPD_ORG_CODE  VARCHAR(32) COMMENT '修改机构',
UPD_DATE  TIMESTAMP COMMENT '修改日期',
 PRIMARY KEY (ID)
)
 COMMENT = '应用层-维度定义表';

-- 指标基本信息表
CREATE TABLE IND_INDICATOR_INFO(
ID  VARCHAR(32) NOT NULL  COMMENT '指标ID',
IE_CODE  VARCHAR(32) NOT NULL  COMMENT '指标编号',
IE_NAME  VARCHAR(100) COMMENT '指标名称',
CATEGORY_ID  VARCHAR(32) COMMENT '指标分类ID(树状)',
IE_PROP  VARCHAR(5) COMMENT '指标类别(1-财务类，2-经营类...)',
IE_TYPE  VARCHAR(5) COMMENT '指标类型(0-手工指标，1-基础指标，2-衍生指标，3-定性指标)',
IE_DESC  VARCHAR(255) COMMENT '指标描述',
IE_RULE  VARCHAR(512) COMMENT '指标业务规则',
IE_DEFAULT_VALUE  DECIMAL(24,6) COMMENT '默认值',
IE_METHOD  VARCHAR(5) COMMENT '取值方式( 衍生指标时：1-四则运算，2-复杂SQL，3-限制，4-EXCEL公式)',
CALC_FREQ  VARCHAR(5) COMMENT '计算频度(D-天，M-月，Q-季度，Y-年)',
STATUS  VARCHAR(5) COMMENT '指标状态（0-已创建，1-已提交，2-已审批）',
IE_DATA_UNIT  VARCHAR(5) COMMENT '指标单位(1-元，2-分，3-个……)',
IE_LEVEL  DECIMAL(5) COMMENT '指标层级(根据依赖关系确定层级，基础指标为0)',
START_DATE  TIMESTAMP COMMENT '生效日期',
END_DATE  TIMESTAMP COMMENT '失效日期',
RETENTION  VARCHAR(32) COMMENT '结果保留期限（1,Y）',
PROCESS_INSTANCE_ID  VARCHAR(32) COMMENT '审核流程ID',
MANAGE_DEPT  VARCHAR(32) COMMENT '管理部门(解释部门)',
CRT_USER_CODE  VARCHAR(32) COMMENT '创建人',
CRT_ORG_CODE  VARCHAR(32) COMMENT '创建机构',
CRT_DATE  TIMESTAMP COMMENT '创建日期',
UPD_USER_CODE  VARCHAR(32) COMMENT '修改人',
UPD_ORG_CODE  VARCHAR(32) COMMENT '修改机构',
UPD_DATE  TIMESTAMP COMMENT '修改日期',
 PRIMARY KEY (ID)
)
 COMMENT = '应用层-指标基本信息表';

-- 基础指标计算规则表
CREATE TABLE IND_BASE_RULE(
ID  VARCHAR(32) NOT NULL  COMMENT '规则ID',
IE_CODE  VARCHAR(32) COMMENT '指标编号',
STATUS  VARCHAR(5) COMMENT '状态(1-启用，0-禁用)',
DATA_SOURCE  VARCHAR(32) COMMENT '数据源(默认本库)',
EXPRESSION  VARCHAR(100) COMMENT '取数表达式',
DATA_TABLE  VARCHAR(60) COMMENT '取数表名',
PERIOD_CODE  VARCHAR(60) COMMENT '考核期/数据日期(对应的后台字段)',
RULE_DESC  VARCHAR(512) COMMENT '规则说明',
ANALYSABLE  VARCHAR(5) COMMENT '是否可分析',
CRT_USER_CODE  VARCHAR(32) COMMENT '创建用户',
CRT_ORG_CODE  VARCHAR(32) COMMENT '创建机构',
CRT_DATE  TIMESTAMP COMMENT '创建时间',
UPD_USER_CODE  VARCHAR(32) COMMENT '修改用户',
UPD_ORG_CODE  VARCHAR(32) COMMENT '修改机构',
UPD_DATE  TIMESTAMP COMMENT '修改时间',
 PRIMARY KEY (ID)
)
 COMMENT = '应用层-基础指标规则表';

-- 基础指标附加规则表
CREATE TABLE IND_BASE_RULE_FILTER(
ID  VARCHAR(32) NOT NULL  COMMENT '指标规则ID',
IE_CODE  VARCHAR(32) COMMENT '指标编号',
EXP_SEQ  DECIMAL(5) COMMENT '表达式序号',
EXP_PREFIX  VARCHAR(50) COMMENT '表达式前缀',
EXP_NAME  VARCHAR(100) COMMENT '表达式名称',
EXP_SYMBOL  VARCHAR(20) COMMENT '运算符',
EXP_VALUE  VARCHAR(300) COMMENT '表达式值',
EXP_POSTFIX  VARCHAR(50) COMMENT '表达式后缀',
EXP_VALUE_DESC  VARCHAR(255) COMMENT '表达式值描述',
CRT_USER_CODE  VARCHAR(32) COMMENT '创建人',
CRT_ORG_CODE  VARCHAR(32) COMMENT '创建机构',
CRT_DATE  TIMESTAMP COMMENT '创建日期',
UPD_USER_CODE  VARCHAR(32) COMMENT '修改人',
UPD_ORG_CODE  VARCHAR(32) COMMENT '修改机构',
UPD_DATE  TIMESTAMP COMMENT '修改日期',
 PRIMARY KEY (ID)
)
 COMMENT = '应用层-基础指标附加规则表';

-- 指标维度关系表
CREATE TABLE IND_DIM_RELATION(
ID  VARCHAR(32) NOT NULL  COMMENT '关系ID',
RULE_ID  VARCHAR(32) COMMENT '规则ID',
IE_CODE  VARCHAR(32) COMMENT '指标编号',
DIM_CODE  DECIMAL(5) COMMENT '维度编号',
IS_MAIN  VARCHAR(5) COMMENT '主维度(分析指标用)',
TABLE_COLUMN  VARCHAR(50) COMMENT '数据表字段',
DIM_COLUMN  VARCHAR(50) COMMENT '维度对应字段',
REMARK  VARCHAR(255) COMMENT '备注',
DIM_SEQ  DECIMAL(5) COMMENT '序号',
CRT_USER_CODE  VARCHAR(32) COMMENT '创建人',
CRT_ORG_CODE  VARCHAR(32) COMMENT '创建机构',
CRT_DATE  TIMESTAMP COMMENT '创建日期',
UPD_USER_CODE  VARCHAR(32) COMMENT '修改人',
UPD_ORG_CODE  VARCHAR(32) COMMENT '修改机构',
UPD_DATE  TIMESTAMP COMMENT '修改日期',
 PRIMARY KEY (ID)
)
 COMMENT = '应用层-指标维度关系表';

-- 衍生指标计算规则表
CREATE TABLE IND_DERIVE_RULE(
ID  VARCHAR(32) NOT NULL  COMMENT '规则ID',
IE_CODE  VARCHAR(32) COMMENT '指标编号',
STATUS  VARCHAR(5) COMMENT '状态(1-启用，0-禁用)',
RULE_TYPE  VARCHAR(60) COMMENT '规则类型(1-四则运算，2-SQL公式，3-限制，4-EXCEL公式)',
CALC_RULE  VARCHAR(1000) COMMENT '计算规则(四则公式/SQL公式/EXCEL公式)',
RULE_DESC  VARCHAR(1000) COMMENT '规则说明',
CRT_USER_CODE  VARCHAR(32) COMMENT '创建用户',
CRT_ORG_CODE  VARCHAR(32) COMMENT '创建机构',
CRT_DATE  TIMESTAMP COMMENT '创建时间',
UPD_USER_CODE  VARCHAR(32) COMMENT '修改用户',
UPD_ORG_CODE  VARCHAR(32) COMMENT '修改机构',
UPD_DATE  TIMESTAMP COMMENT '修改时间',
 PRIMARY KEY (ID)
)
 COMMENT = '应用层-衍生指标计算规则表';

-- 衍生指标依赖关系表
CREATE TABLE IND_DERIVE_RULE_DEPENDENCE(
ID  VARCHAR(32) NOT NULL  COMMENT '依赖ID',
RULE_ID  VARCHAR(32) COMMENT '规则ID',
IE_CODE  VARCHAR(32) COMMENT '指标编号',
DEPEND_TYPE  VARCHAR(5) COMMENT '依赖指标类型(1-基础，2-衍生指标，3-参数)',
DEPEND_CODE  VARCHAR(32) COMMENT '依赖指标编号',
DATA_FLAG  VARCHAR(5) COMMENT '数据标志（备用，0-自身，1-父级，9-全辖）',
VALUE_FLAG  VARCHAR(5) COMMENT '值标志(0-指标值,1-计划值，2-调整值，3-原始值)',
CRT_USER_CODE  VARCHAR(32) COMMENT '创建用户',
CRT_ORG_CODE  VARCHAR(32) COMMENT '创建机构',
CRT_DATE  TIMESTAMP COMMENT '创建时间',
UPD_USER_CODE  VARCHAR(32) COMMENT '修改用户',
UPD_ORG_CODE  VARCHAR(32) COMMENT '修改机构',
UPD_DATE  TIMESTAMP COMMENT '修改时间',
 PRIMARY KEY (ID)
)
 COMMENT = '应用层-衍生指标依赖关系表';

-- 指标补录表
CREATE TABLE IND_INDICATOR_MANUAL(
ID  VARCHAR(32) NOT NULL  COMMENT '补录ID',
IE_CODE  VARCHAR(32) COMMENT '指标编号',
IE_NAME  VARCHAR(100) COMMENT '指标名称',
IE_TYPE  VARCHAR(5) COMMENT '指标类型',
IE_VALUE  DECIMAL COMMENT '指标结果',
IE_PLAN_VALUE  DECIMAL COMMENT '指标计划值',
PERIOD_CODE  VARCHAR(32) COMMENT '计算周期',
OBJECT_CODE  VARCHAR(32) COMMENT '对象编号',
OBJECT_TYPE  VARCHAR(5) COMMENT '对象类别(维度ID)',
STATUS  VARCHAR(5) COMMENT '状态',
PROCESS_INSTANCE_ID  VARCHAR(32) COMMENT '审核流程ID',
RETENTION  VARCHAR(32) COMMENT '结果保留期限（1,Y）',
CRT_USER_CODE  VARCHAR(32) COMMENT '创建用户',
CRT_ORG_CODE  VARCHAR(32) COMMENT '创建机构',
CRT_DATE  TIMESTAMP COMMENT '创建时间',
UPD_USER_CODE  VARCHAR(32) COMMENT '修改用户',
UPD_ORG_CODE  VARCHAR(32) COMMENT '修改机构',
UPD_DATE  TIMESTAMP COMMENT '修改时间',
 PRIMARY KEY (ID)
)
 COMMENT = '应用层-指标补录表';

-- 指标结果表
CREATE TABLE IND_INDICATOR_RESULT(
ID  VARCHAR(32) NOT NULL  COMMENT '结果ID',
IE_ID  VARCHAR(32) COMMENT '指标ID',
IE_CODE  VARCHAR(32) COMMENT '指标编号',
IE_NAME  VARCHAR(100) COMMENT '指标名称',
IE_TYPE  VARCHAR(5) COMMENT '指标类型',
IE_RULE  VARCHAR(512) COMMENT '指标规则(备查)',
IE_VALUE  DECIMAL COMMENT '指标计算结果',
IE_ADJUST_VALUE  DECIMAL COMMENT '指标手工调整结果',
IE_PLAN_VALUE  DECIMAL COMMENT '指标计划值',
PERIOD_CODE  VARCHAR(32) COMMENT '计算周期',
OBJECT_CODE  VARCHAR(32) COMMENT '对象编号',
OBJECT_TYPE  VARCHAR(5) COMMENT '对象类别(维度ID)',
STATUS  VARCHAR(5) COMMENT '状态',
PROCESS_INSTANCE_ID  VARCHAR(32) COMMENT '审核流程ID',
RETENTION  VARCHAR(32) COMMENT '结果保留期限（1,Y）',
CRT_USER_CODE  VARCHAR(32) COMMENT '创建用户',
CRT_ORG_CODE  VARCHAR(32) COMMENT '创建机构',
CRT_DATE  TIMESTAMP COMMENT '创建时间',
UPD_USER_CODE  VARCHAR(32) COMMENT '修改用户',
UPD_ORG_CODE  VARCHAR(32) COMMENT '修改机构',
UPD_DATE  TIMESTAMP COMMENT '修改时间',
 PRIMARY KEY (ID)
)
 COMMENT = '应用层-指标结果表';


