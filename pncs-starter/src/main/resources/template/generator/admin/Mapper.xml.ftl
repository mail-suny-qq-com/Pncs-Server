<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="${package}.mapper.${className}Mapper">
	
	<!--表名 -->
	<sql id="tableName">
		${tableName}
	</sql>
	
	<!-- 字段 -->
	<sql id="Field">
		<#list columns as field>
			<#if field_has_next>
				${field.columnName},
			<#else>	
				${field.columnName}
			</#if>
		</#list>
	</sql>
	
	<!-- 字段值 -->
	<sql id="FieldValue">
		<#list columns as field>
			<#if field_has_next>
				${r"#{"}${field.changeColumnName}${r"}"},
			<#else>
				${r"#{"}${field.changeColumnName}${r"}"}
			</#if>	
		</#list>
	</sql>

    <!-- 分页查询${remark}-查询列信息 -->
    <select id="findForList" parameterType="Map"
            resultType="${package}.model.${className}">
        SELECT
        <include refid="Field"></include>
        FROM
        <include refid="tableName"></include>
        WHERE 1=1
		<#list columns as field>
			<if test="variables.${field.changeColumnName} != null and variables.${field.changeColumnName} != ''">
                AND ${field.columnName}
                <choose>
                    <when test="variables.operators.${field.changeColumnName} != null and variables.operators.${field.changeColumnName} != '' ">${r"${"}variables.operators.${field.changeColumnName}${r"}"}</when>
                    <otherwise> = </otherwise>
                </choose>
				${r"#{"}variables.${field.changeColumnName}${r"}"}
            </if>
		</#list>
    </select>
</mapper>