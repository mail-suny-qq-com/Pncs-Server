-- 建表脚本-Oracle
-- 数据源表
CREATE TABLE IND_DATASOURCE(
  ID  VARCHAR2(32) NOT NULL,
  DATASOURCE_NAME  VARCHAR2(50),
  DATASOURCE_TYPE  VARCHAR2(32),
  DATASOURCE_SCHEMA  VARCHAR2(50),
  DATASOURCE_DRIVER  VARCHAR2(100),
  DATASOURCE_URL  VARCHAR2(200),
  DATASOURCE_USER  VARCHAR2(50),
  DATASOURCE_PASSWORD  VARCHAR2(100),
  DATASOURCE_DESC  VARCHAR2(100),
  CRT_USER_CODE  VARCHAR2(32),
  CRT_ORG_CODE  VARCHAR2(32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2(32),
  UPD_ORG_CODE  VARCHAR2(32),
  UPD_DATE  DATE,
  TENANT  VARCHAR2(32),
CONSTRAINT IND_DATASOURCE PRIMARY KEY (ID)
);
 COMMENT ON TABLE IND_DATASOURCE IS '应用层-数据源表';
 COMMENT ON COLUMN IND_DATASOURCE.ID IS  '数据源ID';
COMMENT ON COLUMN IND_DATASOURCE.DATASOURCE_NAME IS  '数据源名称';
COMMENT ON COLUMN IND_DATASOURCE.DATASOURCE_TYPE IS  '数据库类型';
COMMENT ON COLUMN IND_DATASOURCE.DATASOURCE_SCHEMA IS  '数据库SCHEMA';
COMMENT ON COLUMN IND_DATASOURCE.DATASOURCE_DRIVER IS  '数据库驱动';
COMMENT ON COLUMN IND_DATASOURCE.DATASOURCE_URL IS  '连接URL';
COMMENT ON COLUMN IND_DATASOURCE.DATASOURCE_USER IS  '用户名';
COMMENT ON COLUMN IND_DATASOURCE.DATASOURCE_PASSWORD IS  '密码';
COMMENT ON COLUMN IND_DATASOURCE.DATASOURCE_DESC IS  '描述';
COMMENT ON COLUMN IND_DATASOURCE.CRT_USER_CODE IS  '创建用户';
COMMENT ON COLUMN IND_DATASOURCE.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN IND_DATASOURCE.CRT_DATE IS  '创建时间';
COMMENT ON COLUMN IND_DATASOURCE.UPD_USER_CODE IS  '修改用户';
COMMENT ON COLUMN IND_DATASOURCE.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN IND_DATASOURCE.UPD_DATE IS  '修改时间';
COMMENT ON COLUMN IND_DATASOURCE.TENANT IS  '租户';

-- 指标分类表
CREATE TABLE IND_CATEGORY(
  ID  VARCHAR2(32) NOT NULL,
  CATEGORY_TYPE  VARCHAR2(5),
  CATEGORY_NAME  VARCHAR2(100),
  CATEGORY_DESC  VARCHAR2(255),
  PARENT_ID  VARCHAR2(32),
  CRT_USER_CODE  VARCHAR2(32),
  CRT_ORG_CODE  VARCHAR2(32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2(32),
  UPD_ORG_CODE  VARCHAR2(32),
  UPD_DATE  DATE,
  TENANT  VARCHAR2(32),
CONSTRAINT IND_CATEGORY PRIMARY KEY (ID)
);
 COMMENT ON TABLE IND_CATEGORY IS '应用层-指标分类表';
 COMMENT ON COLUMN IND_CATEGORY.ID IS  '分类ID';
COMMENT ON COLUMN IND_CATEGORY.CATEGORY_TYPE IS  '分类模块';
COMMENT ON COLUMN IND_CATEGORY.CATEGORY_NAME IS  '分类名称';
COMMENT ON COLUMN IND_CATEGORY.CATEGORY_DESC IS  '分类描述';
COMMENT ON COLUMN IND_CATEGORY.PARENT_ID IS  '父节点';
COMMENT ON COLUMN IND_CATEGORY.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN IND_CATEGORY.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN IND_CATEGORY.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN IND_CATEGORY.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN IND_CATEGORY.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN IND_CATEGORY.UPD_DATE IS  '修改日期';
COMMENT ON COLUMN IND_CATEGORY.TENANT IS  '租户';

-- 指标参数表
CREATE TABLE IND_PARAMETER(
  ID  VARCHAR2(32) NOT NULL,
  CATEGORY_ID  VARCHAR2(32),
  PARM_CODE  VARCHAR2(32),
  PARM_NAME  VARCHAR2(256),
  PARM_TYPE  VARCHAR2(20),
  PARM_VALUE  VARCHAR2(256),
  PARM_DESC  VARCHAR2(512),
  STATUS  VARCHAR2(5),
  CRT_USER_CODE  VARCHAR2(32),
  CRT_ORG_CODE  VARCHAR2(32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2(32),
  UPD_ORG_CODE  VARCHAR2(32),
  UPD_DATE  DATE,
  TENANT  VARCHAR2(32),
CONSTRAINT IND_PARAMETER PRIMARY KEY (ID)
);
 COMMENT ON TABLE IND_PARAMETER IS '应用层-指标参数表';
 COMMENT ON COLUMN IND_PARAMETER.ID IS  '参数ID';
COMMENT ON COLUMN IND_PARAMETER.CATEGORY_ID IS  '参数类型';
COMMENT ON COLUMN IND_PARAMETER.PARM_CODE IS  '参数编号';
COMMENT ON COLUMN IND_PARAMETER.PARM_NAME IS  '参数名称';
COMMENT ON COLUMN IND_PARAMETER.PARM_TYPE IS  '参数值类型';
COMMENT ON COLUMN IND_PARAMETER.PARM_VALUE IS  '参数值';
COMMENT ON COLUMN IND_PARAMETER.PARM_DESC IS  '参数描述';
COMMENT ON COLUMN IND_PARAMETER.STATUS IS  '状态(1-启用，0-停用)';
COMMENT ON COLUMN IND_PARAMETER.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN IND_PARAMETER.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN IND_PARAMETER.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN IND_PARAMETER.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN IND_PARAMETER.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN IND_PARAMETER.UPD_DATE IS  '修改日期';
COMMENT ON COLUMN IND_PARAMETER.TENANT IS  '租户';

-- 维度定义表
CREATE TABLE IND_DIMENSION(
  ID  VARCHAR2(32) NOT NULL,
  DIM_CODE  VARCHAR2(32),
  DATASOURCE_ID  VARCHAR2(32),
  DIM_NAME  VARCHAR2(5),
  TABLE_NAME  VARCHAR2(100),
  NAME_COLUMN  VARCHAR2(512),
  NAME_COLUMN_DESC  VARCHAR2(512),
  CODE_COLUMN  VARCHAR2(32),
  CODE_COLUMN_DESC  VARCHAR2(32),
  PID  VARCHAR2(32),
  LEVEL  VARCHAR2(5),
  ALIAS  VARCHAR2(32),
  PK_FLAG  VARCHAR2(5),
  CRT_USER_CODE  VARCHAR2(32),
  CRT_ORG_CODE  VARCHAR2(32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2(32),
  UPD_ORG_CODE  VARCHAR2(32),
  UPD_DATE  DATE,
  TENANT  VARCHAR2(32),
CONSTRAINT IND_DIMENSION PRIMARY KEY (ID)
);
 COMMENT ON TABLE IND_DIMENSION IS '应用层-维度定义表';
 COMMENT ON COLUMN IND_DIMENSION.ID IS  '维度ID';
COMMENT ON COLUMN IND_DIMENSION.DIM_CODE IS  '维度编号';
COMMENT ON COLUMN IND_DIMENSION.DATASOURCE_ID IS  '数据源ID(预留)';
COMMENT ON COLUMN IND_DIMENSION.DIM_NAME IS  '维度名称';
COMMENT ON COLUMN IND_DIMENSION.TABLE_NAME IS  '维表表名称';
COMMENT ON COLUMN IND_DIMENSION.NAME_COLUMN IS  '维度显示字段(可多字段逗号隔开)';
COMMENT ON COLUMN IND_DIMENSION.NAME_COLUMN_DESC IS  '维度显示字段描述(可多字段逗号隔开)';
COMMENT ON COLUMN IND_DIMENSION.CODE_COLUMN IS  '代码字段(用户管理指标对象)';
COMMENT ON COLUMN IND_DIMENSION.CODE_COLUMN_DESC IS  '代码字段描述';
COMMENT ON COLUMN IND_DIMENSION.PID IS  '父ID(预留)';
COMMENT ON COLUMN IND_DIMENSION.LEVEL IS  '级别(预留)';
COMMENT ON COLUMN IND_DIMENSION.ALIAS IS  '别名';
COMMENT ON COLUMN IND_DIMENSION.PK_FLAG IS  '主键标志';
COMMENT ON COLUMN IND_DIMENSION.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN IND_DIMENSION.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN IND_DIMENSION.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN IND_DIMENSION.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN IND_DIMENSION.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN IND_DIMENSION.UPD_DATE IS  '修改日期';
COMMENT ON COLUMN IND_DIMENSION.TENANT IS  '租户';

-- 指标基本信息表
CREATE TABLE IND_INDICATOR_INFO(
  ID  VARCHAR2(32) NOT NULL,
  IE_CODE  VARCHAR2(32) NOT NULL,
  IE_NAME  VARCHAR2(100),
  CATEGORY_ID  VARCHAR2(32),
  IE_PROP  VARCHAR2(5),
  IE_TYPE  VARCHAR2(5),
  IE_DESC  VARCHAR2(255),
  IE_RULE  VARCHAR2(512),
  IE_DEFAULT_VALUE  DECIMAL(24,6),
  IE_METHOD  VARCHAR2(5),
  CALC_FREQ  VARCHAR2(5),
  STATUS  VARCHAR2(5),
  IE_DATA_UNIT  VARCHAR2(5),
  IE_LEVEL  DECIMAL(5),
  START_DATE  DATE,
  END_DATE  DATE,
  RETENTION  VARCHAR2(32),
  PROCESS_INSTANCE_ID  VARCHAR2(32),
  MANAGE_DEPT  VARCHAR2(32),
  CRT_USER_CODE  VARCHAR2(32),
  CRT_ORG_CODE  VARCHAR2(32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2(32),
  UPD_ORG_CODE  VARCHAR2(32),
  UPD_DATE  DATE,
  TENANT  VARCHAR2(32),
CONSTRAINT IND_INDICATOR_INFO PRIMARY KEY (ID)
);
 COMMENT ON TABLE IND_INDICATOR_INFO IS '应用层-指标基本信息表';
 COMMENT ON COLUMN IND_INDICATOR_INFO.ID IS  '指标ID';
COMMENT ON COLUMN IND_INDICATOR_INFO.IE_CODE IS  '指标编号';
COMMENT ON COLUMN IND_INDICATOR_INFO.IE_NAME IS  '指标名称';
COMMENT ON COLUMN IND_INDICATOR_INFO.CATEGORY_ID IS  '指标分类ID(树状)';
COMMENT ON COLUMN IND_INDICATOR_INFO.IE_PROP IS  '指标类别(1-财务类，2-经营类...)';
COMMENT ON COLUMN IND_INDICATOR_INFO.IE_TYPE IS  '指标类型(0-手工指标，1-基础指标，2-衍生指标，3-定性指标)';
COMMENT ON COLUMN IND_INDICATOR_INFO.IE_DESC IS  '指标描述';
COMMENT ON COLUMN IND_INDICATOR_INFO.IE_RULE IS  '指标业务规则';
COMMENT ON COLUMN IND_INDICATOR_INFO.IE_DEFAULT_VALUE IS  '默认值';
COMMENT ON COLUMN IND_INDICATOR_INFO.IE_METHOD IS  '取值方式( 衍生指标时：1-四则运算，2-复杂SQL，3-限制，4-EXCEL公式)';
COMMENT ON COLUMN IND_INDICATOR_INFO.CALC_FREQ IS  '计算频度(D-天，M-月，Q-季度，Y-年)';
COMMENT ON COLUMN IND_INDICATOR_INFO.STATUS IS  '指标状态（0-已创建，1-已提交，2-已审批）';
COMMENT ON COLUMN IND_INDICATOR_INFO.IE_DATA_UNIT IS  '指标单位(1-元，2-分，3-个……)';
COMMENT ON COLUMN IND_INDICATOR_INFO.IE_LEVEL IS  '指标层级(根据依赖关系确定层级，基础指标为0)';
COMMENT ON COLUMN IND_INDICATOR_INFO.START_DATE IS  '生效日期';
COMMENT ON COLUMN IND_INDICATOR_INFO.END_DATE IS  '失效日期';
COMMENT ON COLUMN IND_INDICATOR_INFO.RETENTION IS  '结果保留期限（1,Y）';
COMMENT ON COLUMN IND_INDICATOR_INFO.PROCESS_INSTANCE_ID IS  '审核流程ID';
COMMENT ON COLUMN IND_INDICATOR_INFO.MANAGE_DEPT IS  '管理部门(解释部门)';
COMMENT ON COLUMN IND_INDICATOR_INFO.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN IND_INDICATOR_INFO.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN IND_INDICATOR_INFO.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN IND_INDICATOR_INFO.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN IND_INDICATOR_INFO.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN IND_INDICATOR_INFO.UPD_DATE IS  '修改日期';
COMMENT ON COLUMN IND_INDICATOR_INFO.TENANT IS  '租户';

-- 基础指标计算规则表
CREATE TABLE IND_BASE_RULE(
  ID  VARCHAR2(32) NOT NULL,
  IE_CODE  VARCHAR2(32),
  STATUS  VARCHAR2(5),
  DATA_SOURCE  VARCHAR2(32),
  EXPRESSION  VARCHAR2(100),
  DATA_TABLE  VARCHAR2(60),
  PERIOD_CODE  VARCHAR2(60),
  RULE_DESC  VARCHAR2(512),
  ANALYSABLE  VARCHAR2(5),
  CRT_USER_CODE  VARCHAR2(32),
  CRT_ORG_CODE  VARCHAR2(32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2(32),
  UPD_ORG_CODE  VARCHAR2(32),
  UPD_DATE  DATE,
  TENANT  VARCHAR2(32),
CONSTRAINT IND_BASE_RULE PRIMARY KEY (ID)
);
 COMMENT ON TABLE IND_BASE_RULE IS '应用层-基础指标规则表';
 COMMENT ON COLUMN IND_BASE_RULE.ID IS  '规则ID';
COMMENT ON COLUMN IND_BASE_RULE.IE_CODE IS  '指标编号';
COMMENT ON COLUMN IND_BASE_RULE.STATUS IS  '状态(1-启用，0-禁用)';
COMMENT ON COLUMN IND_BASE_RULE.DATA_SOURCE IS  '数据源(默认本库)';
COMMENT ON COLUMN IND_BASE_RULE.EXPRESSION IS  '取数表达式';
COMMENT ON COLUMN IND_BASE_RULE.DATA_TABLE IS  '取数表名';
COMMENT ON COLUMN IND_BASE_RULE.PERIOD_CODE IS  '考核期/数据日期(对应的后台字段)';
COMMENT ON COLUMN IND_BASE_RULE.RULE_DESC IS  '规则说明';
COMMENT ON COLUMN IND_BASE_RULE.ANALYSABLE IS  '是否可分析';
COMMENT ON COLUMN IND_BASE_RULE.CRT_USER_CODE IS  '创建用户';
COMMENT ON COLUMN IND_BASE_RULE.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN IND_BASE_RULE.CRT_DATE IS  '创建时间';
COMMENT ON COLUMN IND_BASE_RULE.UPD_USER_CODE IS  '修改用户';
COMMENT ON COLUMN IND_BASE_RULE.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN IND_BASE_RULE.UPD_DATE IS  '修改时间';
COMMENT ON COLUMN IND_BASE_RULE.TENANT IS  '租户';

-- 基础指标附加规则表
CREATE TABLE IND_BASE_RULE_FILTER(
  ID  VARCHAR2(32) NOT NULL,
  IE_CODE  VARCHAR2(32),
  EXP_SEQ  DECIMAL(5),
  EXP_PREFIX  VARCHAR2(50),
  EXP_NAME  VARCHAR2(100),
  EXP_SYMBOL  VARCHAR2(20),
  EXP_VALUE  VARCHAR2(300),
  EXP_POSTFIX  VARCHAR2(50),
  EXP_VALUE_DESC  VARCHAR2(255),
  CRT_USER_CODE  VARCHAR2(32),
  CRT_ORG_CODE  VARCHAR2(32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2(32),
  UPD_ORG_CODE  VARCHAR2(32),
  UPD_DATE  DATE,
  TENANT  VARCHAR2(32),
CONSTRAINT IND_BASE_RULE_FILTER PRIMARY KEY (ID)
);
 COMMENT ON TABLE IND_BASE_RULE_FILTER IS '应用层-基础指标附加规则表';
 COMMENT ON COLUMN IND_BASE_RULE_FILTER.ID IS  '指标规则ID';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.IE_CODE IS  '指标编号';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.EXP_SEQ IS  '表达式序号';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.EXP_PREFIX IS  '表达式前缀';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.EXP_NAME IS  '表达式名称';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.EXP_SYMBOL IS  '运算符';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.EXP_VALUE IS  '表达式值';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.EXP_POSTFIX IS  '表达式后缀';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.EXP_VALUE_DESC IS  '表达式值描述';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.UPD_DATE IS  '修改日期';
COMMENT ON COLUMN IND_BASE_RULE_FILTER.TENANT IS  '租户';

-- 指标维度关系表
CREATE TABLE IND_DIM_RELATION(
  ID  VARCHAR2(32) NOT NULL,
  RULE_ID  VARCHAR2(32),
  IE_CODE  VARCHAR2(32),
  DIM_CODE  DECIMAL(5),
  IS_MAIN  VARCHAR2(5),
  TABLE_COLUMN  VARCHAR2(50),
  DIM_COLUMN  VARCHAR2(50),
  REMARK  VARCHAR2(255),
  DIM_SEQ  DECIMAL(5),
  CRT_USER_CODE  VARCHAR2(32),
  CRT_ORG_CODE  VARCHAR2(32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2(32),
  UPD_ORG_CODE  VARCHAR2(32),
  UPD_DATE  DATE,
  TENANT  VARCHAR2(32),
CONSTRAINT IND_DIM_RELATION PRIMARY KEY (ID)
);
 COMMENT ON TABLE IND_DIM_RELATION IS '应用层-指标维度关系表';
 COMMENT ON COLUMN IND_DIM_RELATION.ID IS  '关系ID';
COMMENT ON COLUMN IND_DIM_RELATION.RULE_ID IS  '规则ID';
COMMENT ON COLUMN IND_DIM_RELATION.IE_CODE IS  '指标编号';
COMMENT ON COLUMN IND_DIM_RELATION.DIM_CODE IS  '维度编号';
COMMENT ON COLUMN IND_DIM_RELATION.IS_MAIN IS  '主维度(分析指标用)';
COMMENT ON COLUMN IND_DIM_RELATION.TABLE_COLUMN IS  '数据表字段';
COMMENT ON COLUMN IND_DIM_RELATION.DIM_COLUMN IS  '维度对应字段';
COMMENT ON COLUMN IND_DIM_RELATION.REMARK IS  '备注';
COMMENT ON COLUMN IND_DIM_RELATION.DIM_SEQ IS  '序号';
COMMENT ON COLUMN IND_DIM_RELATION.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN IND_DIM_RELATION.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN IND_DIM_RELATION.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN IND_DIM_RELATION.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN IND_DIM_RELATION.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN IND_DIM_RELATION.UPD_DATE IS  '修改日期';
COMMENT ON COLUMN IND_DIM_RELATION.TENANT IS  '租户';

-- 衍生指标计算规则表
CREATE TABLE IND_DERIVE_RULE(
  ID  VARCHAR2(32) NOT NULL,
  IE_CODE  VARCHAR2(32),
  STATUS  VARCHAR2(5),
  RULE_TYPE  VARCHAR2(60),
  CALC_RULE  VARCHAR2(1000),
  RULE_DESC  VARCHAR2(1000),
  CRT_USER_CODE  VARCHAR2(32),
  CRT_ORG_CODE  VARCHAR2(32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2(32),
  UPD_ORG_CODE  VARCHAR2(32),
  UPD_DATE  DATE,
  TENANT  VARCHAR2(32),
CONSTRAINT IND_DERIVE_RULE PRIMARY KEY (ID)
);
 COMMENT ON TABLE IND_DERIVE_RULE IS '应用层-衍生指标计算规则表';
 COMMENT ON COLUMN IND_DERIVE_RULE.ID IS  '规则ID';
COMMENT ON COLUMN IND_DERIVE_RULE.IE_CODE IS  '指标编号';
COMMENT ON COLUMN IND_DERIVE_RULE.STATUS IS  '状态(1-启用，0-禁用)';
COMMENT ON COLUMN IND_DERIVE_RULE.RULE_TYPE IS  '规则类型(1-四则运算，2-SQL公式，3-限制，4-EXCEL公式)';
COMMENT ON COLUMN IND_DERIVE_RULE.CALC_RULE IS  '计算规则(四则公式/SQL公式/EXCEL公式)';
COMMENT ON COLUMN IND_DERIVE_RULE.RULE_DESC IS  '规则说明';
COMMENT ON COLUMN IND_DERIVE_RULE.CRT_USER_CODE IS  '创建用户';
COMMENT ON COLUMN IND_DERIVE_RULE.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN IND_DERIVE_RULE.CRT_DATE IS  '创建时间';
COMMENT ON COLUMN IND_DERIVE_RULE.UPD_USER_CODE IS  '修改用户';
COMMENT ON COLUMN IND_DERIVE_RULE.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN IND_DERIVE_RULE.UPD_DATE IS  '修改时间';
COMMENT ON COLUMN IND_DERIVE_RULE.TENANT IS  '租户';

-- 衍生指标依赖关系表
CREATE TABLE IND_DERIVE_RULE_DEPENDENCE(
  ID  VARCHAR2(32) NOT NULL,
  RULE_ID  VARCHAR2(32),
  IE_CODE  VARCHAR2(32),
  DEPEND_TYPE  VARCHAR2(5),
  DEPEND_CODE  VARCHAR2(32),
  DATA_FLAG  VARCHAR2(5),
  VALUE_FLAG  VARCHAR2(5),
  CRT_USER_CODE  VARCHAR2(32),
  CRT_ORG_CODE  VARCHAR2(32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2(32),
  UPD_ORG_CODE  VARCHAR2(32),
  UPD_DATE  DATE,
  TENANT  VARCHAR2(32),
CONSTRAINT IND_DERIVE_RULE_DEPENDENCE PRIMARY KEY (ID)
);
 COMMENT ON TABLE IND_DERIVE_RULE_DEPENDENCE IS '应用层-衍生指标依赖关系表';
 COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.ID IS  '依赖ID';
COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.RULE_ID IS  '规则ID';
COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.IE_CODE IS  '指标编号';
COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.DEPEND_TYPE IS  '依赖指标类型(1-基础，2-衍生指标，3-参数)';
COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.DEPEND_CODE IS  '依赖指标编号';
COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.DATA_FLAG IS  '数据标志（备用，0-自身，1-父级，9-全辖）';
COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.VALUE_FLAG IS  '值标志(0-指标值,1-计划值，2-调整值，3-原始值)';
COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.CRT_USER_CODE IS  '创建用户';
COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.CRT_DATE IS  '创建时间';
COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.UPD_USER_CODE IS  '修改用户';
COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.UPD_DATE IS  '修改时间';
COMMENT ON COLUMN IND_DERIVE_RULE_DEPENDENCE.TENANT IS  '租户';

-- 指标补录表
CREATE TABLE IND_INDICATOR_MANUAL(
  ID  VARCHAR2(32) NOT NULL,
  IE_CODE  VARCHAR2(32),
  IE_NAME  VARCHAR2(100),
  IE_TYPE  VARCHAR2(5),
  IE_VALUE  DECIMAL,
  IE_PLAN_VALUE  DECIMAL,
  PERIOD_CODE  VARCHAR2(32),
  OBJECT_CODE  VARCHAR2(32),
  OBJECT_TYPE  VARCHAR2(5),
  STATUS  VARCHAR2(5),
  PROCESS_INSTANCE_ID  VARCHAR2(32),
  RETENTION  VARCHAR2(32),
  CRT_USER_CODE  VARCHAR2(32),
  CRT_ORG_CODE  VARCHAR2(32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2(32),
  UPD_ORG_CODE  VARCHAR2(32),
  UPD_DATE  DATE,
  TENANT  VARCHAR2(32),
CONSTRAINT IND_INDICATOR_MANUAL PRIMARY KEY (ID)
);
 COMMENT ON TABLE IND_INDICATOR_MANUAL IS '应用层-指标补录表';
 COMMENT ON COLUMN IND_INDICATOR_MANUAL.ID IS  '补录ID';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.IE_CODE IS  '指标编号';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.IE_NAME IS  '指标名称';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.IE_TYPE IS  '指标类型';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.IE_VALUE IS  '指标结果';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.IE_PLAN_VALUE IS  '指标计划值';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.PERIOD_CODE IS  '计算周期';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.OBJECT_CODE IS  '对象编号';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.OBJECT_TYPE IS  '对象类别(维度ID)';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.STATUS IS  '状态';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.PROCESS_INSTANCE_ID IS  '审核流程ID';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.RETENTION IS  '结果保留期限（1,Y）';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.CRT_USER_CODE IS  '创建用户';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.CRT_DATE IS  '创建时间';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.UPD_USER_CODE IS  '修改用户';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.UPD_DATE IS  '修改时间';
COMMENT ON COLUMN IND_INDICATOR_MANUAL.TENANT IS  '租户';

-- 指标结果表
CREATE TABLE IND_INDICATOR_RESULT(
  ID  VARCHAR2(32) NOT NULL,
  IE_ID  VARCHAR2(32),
  IE_CODE  VARCHAR2(32),
  IE_NAME  VARCHAR2(100),
  IE_TYPE  VARCHAR2(5),
  IE_RULE  VARCHAR2(512),
  IE_VALUE  DECIMAL,
  IE_ADJUST_VALUE  DECIMAL,
  IE_PLAN_VALUE  DECIMAL,
  PERIOD_CODE  VARCHAR2(32),
  OBJECT_CODE  VARCHAR2(32),
  OBJECT_TYPE  VARCHAR2(5),
  STATUS  VARCHAR2(5),
  PROCESS_INSTANCE_ID  VARCHAR2(32),
  RETENTION  VARCHAR2(32),
  CRT_USER_CODE  VARCHAR2(32),
  CRT_ORG_CODE  VARCHAR2(32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2(32),
  UPD_ORG_CODE  VARCHAR2(32),
  UPD_DATE  DATE,
  TENANT  VARCHAR2(32),
CONSTRAINT IND_INDICATOR_RESULT PRIMARY KEY (ID)
);
 COMMENT ON TABLE IND_INDICATOR_RESULT IS '应用层-指标结果表';
 COMMENT ON COLUMN IND_INDICATOR_RESULT.ID IS  '结果ID';
COMMENT ON COLUMN IND_INDICATOR_RESULT.IE_ID IS  '指标ID';
COMMENT ON COLUMN IND_INDICATOR_RESULT.IE_CODE IS  '指标编号';
COMMENT ON COLUMN IND_INDICATOR_RESULT.IE_NAME IS  '指标名称';
COMMENT ON COLUMN IND_INDICATOR_RESULT.IE_TYPE IS  '指标类型';
COMMENT ON COLUMN IND_INDICATOR_RESULT.IE_RULE IS  '指标规则(备查)';
COMMENT ON COLUMN IND_INDICATOR_RESULT.IE_VALUE IS  '指标计算结果';
COMMENT ON COLUMN IND_INDICATOR_RESULT.IE_ADJUST_VALUE IS  '指标手工调整结果';
COMMENT ON COLUMN IND_INDICATOR_RESULT.IE_PLAN_VALUE IS  '指标计划值';
COMMENT ON COLUMN IND_INDICATOR_RESULT.PERIOD_CODE IS  '计算周期';
COMMENT ON COLUMN IND_INDICATOR_RESULT.OBJECT_CODE IS  '对象编号';
COMMENT ON COLUMN IND_INDICATOR_RESULT.OBJECT_TYPE IS  '对象类别(维度ID)';
COMMENT ON COLUMN IND_INDICATOR_RESULT.STATUS IS  '状态';
COMMENT ON COLUMN IND_INDICATOR_RESULT.PROCESS_INSTANCE_ID IS  '审核流程ID';
COMMENT ON COLUMN IND_INDICATOR_RESULT.RETENTION IS  '结果保留期限（1,Y）';
COMMENT ON COLUMN IND_INDICATOR_RESULT.CRT_USER_CODE IS  '创建用户';
COMMENT ON COLUMN IND_INDICATOR_RESULT.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN IND_INDICATOR_RESULT.CRT_DATE IS  '创建时间';
COMMENT ON COLUMN IND_INDICATOR_RESULT.UPD_USER_CODE IS  '修改用户';
COMMENT ON COLUMN IND_INDICATOR_RESULT.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN IND_INDICATOR_RESULT.UPD_DATE IS  '修改时间';
COMMENT ON COLUMN IND_INDICATOR_RESULT.TENANT IS  '租户';


